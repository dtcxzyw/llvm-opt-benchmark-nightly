Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/d7-cntrl?download=true
inline.NumInlined: 10
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Exp_ = type { i32, i32, i32, i32, ptr }

@cond_pcend = dso_local local_unnamed_addr global i32 0, align 4
@cond_e = dso_local local_unnamed_addr global ptr null, align 8
@cond_e2 = dso_local local_unnamed_addr global ptr null, align 8
@cond_donestkptr = dso_local local_unnamed_addr global ptr null, align 8
@cond_stkptr = dso_local local_unnamed_addr global ptr null, align 8
@currpc = external local_unnamed_addr global i32, align 4
@stkptr = external local_unnamed_addr global ptr, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [13 x i8] c"doif1 error\0A\00", align 1
@ch = external local_unnamed_addr global i32, align 4
@bufflength = external local_unnamed_addr global i32, align 4
@inbuff = external local_unnamed_addr global ptr, align 8
@donestkptr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"Error cond\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Can't not a non-boolean\0A\00", align 1
@std_exps = external global [0 x %struct.Exp_], align 8

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 2) i32 @_Z5doif1P9Classfile(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = load i32, ptr @currpc, align 4, !tbaa !7
  %i.c = add i32 %i.b, -1                         ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.d = load ptr, ptr @stkptr, align 8, !tbaa !11
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -8 ; 2 uses
  store ptr %i.e, ptr @stkptr, align 8, !tbaa !11
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13   ; 6 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !13
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !22
  switch i32 %i.i, label %bb.n [
    i32 12, label %bb.b
    i32 10, label %bb.e
    i32 4, label %bb.h
    i32 8, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 12 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !23
  %.not17 = icmp eq i32 %i.k, 26
  br i1 %.not17, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr @stderr, align 8, !tbaa !25
  %fwrite18 = tail call i64 @fwrite(ptr nonnull @.str, i64 12, i64 1, ptr %i.l) #8 ; 0 uses
  br label %bb.o

bb.d:                                             ; preds = %bb.b
  %i.m = load i32, ptr @ch, align 4, !tbaa !7
  %i.n = add nsw i32 %i.m, -125
  store i32 %i.n, ptr %i.j, align 4, !tbaa !23
  store i32 10, ptr %i.h, align 8, !tbaa !22
  br label %bb.n

bb.e:                                             ; preds = %bb.a
  %i.o = load i32, ptr @ch, align 4, !tbaa !7
  %i.p = icmp eq i32 %i.o, 153
  br i1 %i.p, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.q = call noundef i32 @_Z6notexpPP3Exp(ptr noundef nonnull %i.a)
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr @stderr, align 8, !tbaa !25
  %fwrite = call i64 @fwrite(ptr nonnull @.str, i64 12, i64 1, ptr %i.r) #8 ; 0 uses
  br label %bb.o

bb.h:                                             ; preds = %bb.a
  %i.s = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #9 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 1, ptr %i.t, align 8, !tbaa !26
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i32 %i.c, ptr %i.u, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 %i.c, ptr %i.v, align 4, !tbaa !28
  store ptr getelementptr inbounds nuw (i8, ptr @std_exps, i64 48), ptr %i.s, align 8, !tbaa !16
  %i.w = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #9 ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.y = load i32, ptr %i.x, align 8, !tbaa !27
  %i.z = load i32, ptr @ch, align 4, !tbaa !7
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i32 1, ptr %i.aa, align 8, !tbaa !26
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 %i.c, ptr %i.ab, align 4, !tbaa !28
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i32 %i.y, ptr %i.ac, align 8, !tbaa !27
  %i.ad = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #9
          to label %bb.i unwind label %bb.j       ; 5 uses

bb.i:                                             ; preds = %bb.h
  %i.ae = add nsw i32 %i.z, -125
  store i32 0, ptr %i.ad, align 8, !tbaa !29
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store i32 4, ptr %i.af, align 4, !tbaa !30
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i32 10, ptr %i.ag, align 8, !tbaa !22
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 %i.ae, ptr %i.ah, align 4, !tbaa !23
  store ptr %i.ad, ptr %i.w, align 8, !tbaa !16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr %i.f, ptr %i.ai, align 8, !tbaa !31
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store ptr %i.s, ptr %i.aj, align 8, !tbaa !32
  store ptr %i.w, ptr %i.a, align 8, !tbaa !13
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.k:                                             ; preds = %bb.a
  %i.al = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #9 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i32 1, ptr %i.am, align 8, !tbaa !26
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i32 %i.c, ptr %i.an, align 8, !tbaa !27
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  store i32 %i.c, ptr %i.ao, align 4, !tbaa !28
  store ptr @std_exps, ptr %i.al, align 8, !tbaa !16
  %i.ap = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #9 ; 8 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !27
  %i.as = load i32, ptr @ch, align 4, !tbaa !7
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i32 1, ptr %i.at, align 8, !tbaa !26
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  store i32 %i.c, ptr %i.au, align 4, !tbaa !28
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i32 %i.ar, ptr %i.av, align 8, !tbaa !27
  %i.aw = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #9
          to label %bb.l unwind label %bb.m       ; 5 uses

bb.l:                                             ; preds = %bb.k
  %i.ax = add nsw i32 %i.as, -170
  store i32 0, ptr %i.aw, align 8, !tbaa !29
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  store i32 4, ptr %i.ay, align 4, !tbaa !30
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i32 10, ptr %i.az, align 8, !tbaa !22
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  store i32 %i.ax, ptr %i.ba, align 4, !tbaa !23
  store ptr %i.aw, ptr %i.ap, align 8, !tbaa !16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store ptr %i.f, ptr %i.bb, align 8, !tbaa !31
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  store ptr %i.al, ptr %i.bc, align 8, !tbaa !32
  store ptr %i.ap, ptr %i.a, align 8, !tbaa !13
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.n:                                             ; preds = %bb.a, %bb.e, %bb.f, %bb.l, %bb.i, %bb.d
  %i.be = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #9 ; 7 uses
  %i.bf = load ptr, ptr %i.a, align 8, !tbaa !13  ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !27
  %i.bi = load i32, ptr @currpc, align 4, !tbaa !7
  %i.bj = add i32 %i.bi, 2
  store i32 %i.bj, ptr @currpc, align 4, !tbaa !7
  %i.bk = load i32, ptr @bufflength, align 4, !tbaa !7
  %i.bl = add nsw i32 %i.bk, -2
  store i32 %i.bl, ptr @bufflength, align 4, !tbaa !7
  %i.bm = load ptr, ptr @inbuff, align 8, !tbaa !34 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 2
  store ptr %i.bn, ptr @inbuff, align 8, !tbaa !34
  %1 = load i8, ptr %i.bm, align 1, !tbaa !35
  %2 = zext i8 %1 to i16
  %3 = shl nuw i16 %2, 8
  %4 = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  %5 = load i8, ptr %4, align 1, !tbaa !35
  %6 = zext i8 %5 to i16
  %7 = or disjoint i16 %3, %6
  %i.bo = sext i16 %7 to i32
  %i.bp = add i32 %i.c, %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i32 1, ptr %i.bq, align 8, !tbaa !26
  %i.br = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  store i32 %i.c, ptr %i.br, align 4, !tbaa !28
  %i.bs = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i32 %i.bh, ptr %i.bs, align 8, !tbaa !27
  store ptr getelementptr inbounds nuw (i8, ptr @std_exps, i64 408), ptr %i.be, align 8, !tbaa !16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store ptr %i.bf, ptr %i.bt, align 8, !tbaa !31
  %i.bu = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  store i32 %i.bp, ptr %i.bu, align 8, !tbaa !35
  %i.bv = load ptr, ptr @donestkptr, align 8, !tbaa !11 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr %i.bw, ptr @donestkptr, align 8, !tbaa !11
  store ptr %i.be, ptr %i.bv, align 8, !tbaa !13
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.g, %bb.c
  %.015 = phi i32 [ 0, %bb.n ], [ 1, %bb.c ], [ 1, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.015

bb.p:                                             ; preds = %bb.m, %bb.j
  %.sink = phi ptr [ %i.ap, %bb.m ], [ %i.w, %bb.j ]
  %.pn = phi { ptr, i32 } [ %i.bd, %bb.m ], [ %i.ak, %bb.j ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink, i64 noundef 64) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef i32 @_Z6notexpPP3Exp(ptr noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z5doif2P9Classfile(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr @currpc, align 4, !tbaa !7
  %i.b = add i32 %i.a, -1                         ; 3 uses
  %i.c = load ptr, ptr @stkptr, align 8, !tbaa !11 ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13   ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %i.c, i64 -16 ; 2 uses
  store ptr %i.f, ptr @stkptr, align 8, !tbaa !11
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !13   ; 2 uses
  %i.h = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #9 ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !27
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !27
  %. = tail call i32 @llvm.umin.i32(i32 %i.j, i32 %i.l)
  %i.m = load i32, ptr @ch, align 4, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 1, ptr %i.n, align 8, !tbaa !26
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 %i.b, ptr %i.o, align 4, !tbaa !28
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i32 %., ptr %i.p, align 8, !tbaa !27
  %i.q = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #9
          to label %bb.b unwind label %bb.c       ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.r = add nsw i32 %i.m, -159
  %i.s = srem i32 %i.r, 6
  %i.t = add nsw i32 %i.s, 28
  store i32 0, ptr %i.q, align 8, !tbaa !29
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store i32 4, ptr %i.u, align 4, !tbaa !30
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i32 10, ptr %i.v, align 8, !tbaa !22
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 %i.t, ptr %i.w, align 4, !tbaa !23
  store ptr %i.q, ptr %i.h, align 8, !tbaa !16
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.g, ptr %i.x, align 8, !tbaa !31
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr %i.e, ptr %i.y, align 8, !tbaa !32
  %i.z = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #9 ; 7 uses
  %i.aa = load i32, ptr %i.p, align 8, !tbaa !27
  %i.ab = load i32, ptr @currpc, align 4, !tbaa !7
  %i.ac = add i32 %i.ab, 2
  store i32 %i.ac, ptr @currpc, align 4, !tbaa !7
  %i.ad = load i32, ptr @bufflength, align 4, !tbaa !7
  %i.ae = add nsw i32 %i.ad, -2
  store i32 %i.ae, ptr @bufflength, align 4, !tbaa !7
  %i.af = load ptr, ptr @inbuff, align 8, !tbaa !34 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  store ptr %i.ag, ptr @inbuff, align 8, !tbaa !34
  %1 = load i8, ptr %i.af, align 1, !tbaa !35
  %2 = zext i8 %1 to i16
  %3 = shl nuw i16 %2, 8
  %4 = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %5 = load i8, ptr %4, align 1, !tbaa !35
  %6 = zext i8 %5 to i16
  %7 = or disjoint i16 %3, %6
  %i.ah = sext i16 %7 to i32
  %i.ai = add i32 %i.b, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i32 1, ptr %i.aj, align 8, !tbaa !26
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  store i32 %i.b, ptr %i.ak, align 4, !tbaa !28
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i32 %i.aa, ptr %i.al, align 8, !tbaa !27
  store ptr getelementptr inbounds nuw (i8, ptr @std_exps, i64 408), ptr %i.z, align 8, !tbaa !16
  %i.am = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store ptr %i.h, ptr %i.am, align 8, !tbaa !31
  %i.an = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  store i32 %i.ai, ptr %i.an, align 8, !tbaa !35
  %i.ao = load ptr, ptr @donestkptr, align 8, !tbaa !11 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.ap, ptr @donestkptr, align 8, !tbaa !11
  store ptr %i.z, ptr %i.ao, align 8, !tbaa !13
  ret i32 0

bb.c:                                             ; preds = %bb.a
  %i.aq = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 64) #10
  resume { ptr, i32 } %i.aq
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z5docmpP9Classfile(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr @currpc, align 4, !tbaa !7
  %i.b = add i32 %i.a, -1
  %i.c = load ptr, ptr @stkptr, align 8, !tbaa !11 ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8 ; 2 uses
  store ptr %i.d, ptr @stkptr, align 8, !tbaa !11
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13   ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %i.c, i64 -16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !13   ; 2 uses
  %i.h = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #9 ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !27
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !27
  %. = tail call i32 @llvm.umin.i32(i32 %i.j, i32 %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 1, ptr %i.m, align 8, !tbaa !26
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 %i.b, ptr %i.n, align 4, !tbaa !28
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i32 %., ptr %i.o, align 8, !tbaa !27
  %i.p = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #9
          to label %bb.b unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %bb.a
  store <4 x i32> <i32 0, i32 4, i32 12, i32 26>, ptr %i.p, align 8, !tbaa !35
  store ptr %i.p, ptr %i.h, align 8, !tbaa !16
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.g, ptr %i.q, align 8, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr %i.e, ptr %i.r, align 8, !tbaa !32
  %i.s = load ptr, ptr @stkptr, align 8, !tbaa !11
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -8
  store ptr %i.h, ptr %i.t, align 8, !tbaa !13
  ret i32 0

bb.c:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 64) #10
  resume { ptr, i32 } %i.u
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 2) i32 @_Z17finishconditionalP9Classfile(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @stkptr, align 8, !tbaa !11 ; 2 uses
  %i.b = load ptr, ptr @cond_stkptr, align 8, !tbaa !11
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @donestkptr, align 8, !tbaa !11
  %i.d = load ptr, ptr @cond_donestkptr, align 8, !tbaa !11
  %.not5 = icmp eq ptr %i.c, %i.d
  br i1 %.not5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !25
  %fwrite7 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 11, i64 1, ptr %i.e) #8 ; 0 uses
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.f = load ptr, ptr @cond_e, align 8, !tbaa !13 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.h, ptr %i.f, align 8, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !31   ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !16   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 12 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !23   ; 2 uses
  %i.n = add i32 %i.m, -34
  %or.cond = icmp ult i32 %i.n, -6
  br i1 %or.cond, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !22
  %.not6 = icmp eq i32 %i.p, 10
  br i1 %.not6, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr @stderr, align 8, !tbaa !25
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.2, i64 24, i64 1, ptr %i.q) #8 ; 0 uses
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.r = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #9 ; 8 uses
  %i.s = load i32, ptr @currpc, align 4, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.u = load i32, ptr %i.t, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 1, ptr %i.v, align 8, !tbaa !26
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 %i.s, ptr %i.w, align 4, !tbaa !28
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i32 %i.u, ptr %i.x, align 8, !tbaa !27
  %i.y = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #9
          to label %bb.h unwind label %bb.i       ; 2 uses

bb.h:                                             ; preds = %bb.g
  store <4 x i32> <i32 0, i32 2, i32 10, i32 34>, ptr %i.y, align 8, !tbaa !35
  store ptr %i.y, ptr %i.r, align 8, !tbaa !16
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.j, ptr %i.z, align 8, !tbaa !31
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr null, ptr %i.aa, align 8, !tbaa !32
  %i.ab = load ptr, ptr @cond_e, align 8, !tbaa !13 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr %i.r, ptr %i.ac, align 8, !tbaa !31
  %.pre = load ptr, ptr @stkptr, align 8, !tbaa !11
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 64) #10
  resume { ptr, i32 } %i.ad

bb.j:                                             ; preds = %bb.d
  %i.ae = xor i32 %i.m, 1
  store i32 %i.ae, ptr %i.l, align 4, !tbaa !7
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %i.af = phi ptr [ %i.a, %bb.j ], [ %.pre, %bb.h ]
  %i.ag = phi ptr [ %i.f, %bb.j ], [ %i.ab, %bb.h ] ; 3 uses
  %i.ah = load ptr, ptr @cond_e2, align 8, !tbaa !13
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !32
  %i.aj = getelementptr inbounds i8, ptr %i.af, i64 -8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !13
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !35
  store ptr %i.ag, ptr %i.aj, align 8, !tbaa !13
  store i32 -1, ptr @cond_pcend, align 4, !tbaa !7
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ 1, %bb.f ], [ 0, %bb.k ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { cold }
attributes #9 = { builtin allocsize(0) }
attributes #10 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!"any p2 pointer", !8, i64 0}
!10 = !{!"p2 _ZTS3Exp", !9, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"p1 _ZTS3Exp", !8, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"p1 _ZTS4Exp_", !8, i64 0}
!15 = !{!"_ZTS3Exp", !14, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !12, i64 24, !12, i64 32, !5, i64 40, !5, i64 48, !5, i64 56}
!16 = !{!15, !14, i64 0}
!17 = !{!"_ZTS7Exptype", !5, i64 0}
!18 = !{!"_ZTS4Type", !5, i64 0}
!19 = !{!"_ZTS2Op", !5, i64 0}
!20 = !{!"p1 _ZTS2Id", !8, i64 0}
!21 = !{!"_ZTS4Exp_", !6, i64 0, !17, i64 4, !18, i64 8, !19, i64 12, !20, i64 16}
!22 = !{!21, !18, i64 8}
!23 = !{!21, !19, i64 12}
!24 = !{!"p1 _ZTS8_IO_FILE", !8, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!15, !6, i64 8}
!27 = !{!15, !6, i64 16}
!28 = !{!15, !6, i64 12}
!29 = !{!21, !6, i64 0}
!30 = !{!21, !17, i64 4}
!31 = !{!15, !12, i64 24}
!32 = !{!15, !12, i64 32}
!33 = !{!"p1 omnipotent char", !8, i64 0}
!34 = !{!33, !33, i64 0}
!35 = !{!5, !5, i64 0}
end_hunk_0
