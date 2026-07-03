inline.NumInlined: 41
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.CStringBase = type { ptr, i32, i32 }
%struct._FILETIME = type { i32, i32 }

@_ZL11kPosixTypes = internal unnamed_addr constant [16 x i8] c"0pc3d5b7-9lBsDEF", align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_Z18ConvertUInt32ToHexjPw(i32 noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 36)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %0, 15                           ; 3 uses
  %i.b = lshr i32 %0, 4
  %i.c = icmp samesign ult i32 %i.a, 10
  %i.d = or disjoint i32 %i.a, 48
  %i.e = add nuw nsw i32 %i.a, 55
  %i.f = select i1 %i.c, i32 %i.d, i32 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i32 %i.f, ptr %i.g, align 4, !tbaa !8
  %i.h = lshr i32 %0, 8
  %i.i = lshr i32 %0, 12
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.k = insertelement <2 x i32> poison, i32 %i.h, i64 0
  %i.l = insertelement <2 x i32> %i.k, i32 %i.b, i64 1
  %i.m = and <2 x i32> %i.l, splat (i32 15)       ; 3 uses
  %i.n = icmp samesign ult <2 x i32> %i.m, splat (i32 10)
  %i.o = or disjoint <2 x i32> %i.m, splat (i32 48)
  %i.p = add nuw nsw <2 x i32> %i.m, splat (i32 55)
  %i.q = select <2 x i1> %i.n, <2 x i32> %i.o, <2 x i32> %i.p
  store <2 x i32> %i.q, ptr %i.j, align 4, !tbaa !8
  %i.r = lshr i32 %0, 16
  %i.s = lshr i32 %0, 20
  %i.t = lshr i32 %0, 24
  %i.u = lshr i32 %0, 28                          ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.w = insertelement <4 x i32> poison, i32 %i.t, i64 0
  %i.x = insertelement <4 x i32> %i.w, i32 %i.s, i64 1
  %i.y = insertelement <4 x i32> %i.x, i32 %i.r, i64 2
  %i.z = insertelement <4 x i32> %i.y, i32 %i.i, i64 3
  %i.aa = and <4 x i32> %i.z, splat (i32 15)      ; 3 uses
  %i.ab = icmp samesign ult <4 x i32> %i.aa, splat (i32 10)
  %i.ac = or disjoint <4 x i32> %i.aa, splat (i32 48)
  %i.ad = add nuw nsw <4 x i32> %i.aa, splat (i32 55)
  %i.ae = select <4 x i1> %i.ab, <4 x i32> %i.ac, <4 x i32> %i.ad
  store <4 x i32> %i.ae, ptr %i.v, align 4, !tbaa !8
  %i.af = icmp ult i32 %0, -1610612736
  %i.ag = or disjoint i32 %i.u, 48
  %i.ah = add nuw nsw i32 %i.u, 55
  %i.ai = select i1 %i.af, i32 %i.ag, i32 %i.ah
  store i32 %i.ai, ptr %1, align 4, !tbaa !8
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 0, ptr %i.aj, align 4, !tbaa !8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local void @_Z23ConvertPropertyToStringRK14tagPROPVARIANTjb(ptr dead_on_unwind noalias writable sret(%class.CStringBase) align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %struct._FILETIME, align 4          ; 4 uses
  %i.a = alloca [12 x i32], align 16              ; 9 uses
  %i.b = alloca [32 x i32], align 16              ; 20 uses
  %i.c = alloca [16 x i32], align 16              ; 18 uses
  switch i32 %2, label %bb.cf [
    i32 10, label %bb.b
    i32 11, label %bb.b
    i32 12, label %bb.b
    i32 19, label %bb.h
    i32 9, label %bb.j
    i32 53, label %bb.ap
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.d = load i16, ptr %1, align 8, !tbaa !10
  %.not70 = icmp eq i16 %i.d, 64
  br i1 %.not70, label %bb.c, label %bb.cf

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %5 = load i32, ptr %i.f, align 4, !tbaa !13
  %6 = icmp eq i32 %5, 0
  %i.g = load i32, ptr %i.e, align 8
  %i.h = icmp eq i32 %i.g, 0
  %or.cond73 = select i1 %6, i1 %i.h, i1 false
  br i1 %or.cond73, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = call i32 @FileTimeToLocalFileTime(ptr noundef nonnull %i.e, ptr noundef nonnull %4)
  %.not71 = icmp eq i32 %i.i, 0
  br i1 %.not71, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.k, align 8
  %i.l = call noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #11 ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !14
  store i32 0, ptr %i.l, align 4, !tbaa !8
  store i32 4, ptr %i.j, align 4, !tbaa !18
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @_Z23ConvertFileTimeToStringRK9_FILETIMEbb(ptr dead_on_unwind writable sret(%class.CStringBase) align 8 %0, ptr noundef nonnull align 4 dereferenceable(8) %4, i1 noundef zeroext true, i1 noundef zeroext %3)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.cg

bb.h:                                             ; preds = %bb.a
  %i.m = load i16, ptr %1, align 8, !tbaa !10
  %.not69 = icmp eq i16 %i.m, 19
  br i1 %.not69, label %bb.i, label %bb.cf

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !13   ; 9 uses
  %i.p = and i32 %i.o, 15                         ; 3 uses
  %i.q = icmp samesign ult i32 %i.p, 10
  %i.r = or disjoint i32 %i.p, 48
  %i.s = add nuw nsw i32 %i.p, 55
  %i.t = select i1 %i.q, i32 %i.r, i32 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i32 %i.t, ptr %i.u, align 4, !tbaa !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.w = lshr i32 %i.o, 4
  %i.x = lshr i32 %i.o, 8
  %i.y = insertelement <2 x i32> poison, i32 %i.x, i64 0
  %i.z = insertelement <2 x i32> %i.y, i32 %i.w, i64 1
  %i.aa = and <2 x i32> %i.z, splat (i32 15)      ; 3 uses
  %i.ab = icmp samesign ult <2 x i32> %i.aa, splat (i32 10)
  %i.ac = or disjoint <2 x i32> %i.aa, splat (i32 48)
  %i.ad = add nuw nsw <2 x i32> %i.aa, splat (i32 55)
  %i.ae = select <2 x i1> %i.ab, <2 x i32> %i.ac, <2 x i32> %i.ad
  store <2 x i32> %i.ae, ptr %i.v, align 4, !tbaa !8
  %i.af = lshr i32 %i.o, 28                       ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ah = lshr i32 %i.o, 12
  %i.ai = lshr i32 %i.o, 16
  %i.aj = lshr i32 %i.o, 20
  %i.ak = lshr i32 %i.o, 24
  %i.al = insertelement <4 x i32> poison, i32 %i.ak, i64 0
  %i.am = insertelement <4 x i32> %i.al, i32 %i.aj, i64 1
  %i.an = insertelement <4 x i32> %i.am, i32 %i.ai, i64 2
  %i.ao = insertelement <4 x i32> %i.an, i32 %i.ah, i64 3
  %i.ap = and <4 x i32> %i.ao, splat (i32 15)     ; 3 uses
  %i.aq = icmp samesign ult <4 x i32> %i.ap, splat (i32 10)
  %i.ar = or disjoint <4 x i32> %i.ap, splat (i32 48)
  %i.as = add nuw nsw <4 x i32> %i.ap, splat (i32 55)
  %i.at = select <4 x i1> %i.aq, <4 x i32> %i.ar, <4 x i32> %i.as
  store <4 x i32> %i.at, ptr %i.ag, align 4, !tbaa !8
  %i.au = icmp ult i32 %i.o, -1610612736
  %i.av = or disjoint i32 %i.af, 48
  %i.aw = add nuw nsw i32 %i.af, 55
  %i.ax = select i1 %i.au, i32 %i.av, i32 %i.aw
  store i32 %i.ax, ptr %i.a, align 16, !tbaa !8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 0, ptr %i.ay, align 16, !tbaa !8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %wcslen.i.i = call i64 @wcslen(ptr nonnull %i.a)
  %i.az = trunc i64 %wcslen.i.i to i32            ; 3 uses
  %i.ba = add nsw i32 %i.az, 1                    ; 3 uses
  %i.bb = icmp ne i32 %i.ba, 0
  tail call void @llvm.assume(i1 %i.bb)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bd = zext nneg i32 %i.ba to i64
  %i.be = icmp slt i32 %i.az, -1
  %i.bf = shl nuw nsw i64 %i.bd, 2
  %i.bg = select i1 %i.be, i64 -1, i64 %i.bf
  %i.bh = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bg) #11 ; 3 uses
  store ptr %i.bh, ptr %0, align 8, !tbaa !14
  store i32 0, ptr %i.bh, align 4, !tbaa !8
  store i32 %i.ba, ptr %i.bc, align 4, !tbaa !18
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %bb.i, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.bi, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.a, %bb.i ] ; 2 uses
  %.0.i.i = phi ptr [ %i.bk, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.bh, %bb.i ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  %i.bj = load i32, ptr %.04.i.i, align 4, !tbaa !8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store i32 %i.bj, ptr %.0.i.i, align 4, !tbaa !8
  %.not.i.i = icmp eq i32 %i.bj, 0
  br i1 %.not.i.i, label %_ZN11CStringBaseIwEC2EPKw.exit, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, !llvm.loop !19

_ZN11CStringBaseIwEC2EPKw.exit:                   ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.az, ptr %i.bl, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.cg

bb.j:                                             ; preds = %bb.a
  %i.bm = load i16, ptr %1, align 8, !tbaa !10
  %.not68 = icmp eq i16 %i.bm, 19
  br i1 %.not68, label %bb.k, label %bb.cf

bb.k:                                             ; preds = %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !13 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.bp = and i32 %i.bo, 1
  %.not171.a = icmp eq i32 %i.bp, 0
  br i1 %.not171.a, label %bb.m, label %bb.l

_ZN11CStringBaseIwE11SetCapacityEi.exit.i75:      ; preds = %bb.ao, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i75
  %.04.i.i76 = phi ptr [ %i.bq, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i75 ], [ %i.b, %bb.ao ] ; 2 uses
  %.0.i.i77 = phi ptr [ %i.bs, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i75 ], [ %i.ei, %bb.ao ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.04.i.i76, i64 4
  %i.br = load i32, ptr %.04.i.i76, align 4, !tbaa !8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.i.i77, i64 4
  store i32 %i.br, ptr %.0.i.i77, align 4, !tbaa !8
  %.not.i.i78 = icmp eq i32 %i.br, 0
  br i1 %.not.i.i78, label %_ZN11CStringBaseIwEC2EPKw.exit79, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i75, !llvm.loop !19

_ZN11CStringBaseIwEC2EPKw.exit79:                 ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i75
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.ea, ptr %i.bt, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  br label %bb.cg

bb.l:                                             ; preds = %bb.k
  store i32 82, ptr %i.b, align 16, !tbaa !8
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.152 = phi i32 [ 1, %bb.l ], [ 0, %bb.k ]      ; 3 uses
  %i.bu = and i32 %i.bo, 2
  %.not172.a = icmp eq i32 %i.bu, 0
  br i1 %.not172.a, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bv = add nuw nsw i32 %.152, 1
  %i.bw = zext nneg i32 %.152 to i64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bw
  store i32 72, ptr %i.bx, align 4, !tbaa !8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.152.1 = phi i32 [ %i.bv, %bb.n ], [ %.152, %bb.m ] ; 3 uses
  %i.by = and i32 %i.bo, 4
  %.not173.a = icmp eq i32 %i.by, 0
  br i1 %.not173.a, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bz = add nuw nsw i32 %.152.1, 1
  %i.ca = zext nneg i32 %.152.1 to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ca
  store i32 83, ptr %i.cb, align 4, !tbaa !8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.152.2 = phi i32 [ %i.bz, %bb.p ], [ %.152.1, %bb.o ] ; 3 uses
  %i.cc = and i32 %i.bo, 8
  %.not174.a = icmp eq i32 %i.cc, 0
  br i1 %.not174.a, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cd = add nuw nsw i32 %.152.2, 1
  %i.ce = zext nneg i32 %.152.2 to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ce
  store i32 56, ptr %i.cf, align 4, !tbaa !8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.152.3 = phi i32 [ %i.cd, %bb.r ], [ %.152.2, %bb.q ] ; 3 uses
  %i.cg = and i32 %i.bo, 16
  %.not175.a = icmp eq i32 %i.cg, 0
  br i1 %.not175.a, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ch = add nuw nsw i32 %.152.3, 1
  %i.ci = zext nneg i32 %.152.3 to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ci
  store i32 68, ptr %i.cj, align 4, !tbaa !8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.152.4 = phi i32 [ %i.ch, %bb.t ], [ %.152.3, %bb.s ] ; 3 uses
  %i.ck = and i32 %i.bo, 32
  %.not176.a = icmp eq i32 %i.ck, 0
  br i1 %.not176.a, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cl = add nuw nsw i32 %.152.4, 1
  %i.cm = zext nneg i32 %.152.4 to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.cm
  store i32 65, ptr %i.cn, align 4, !tbaa !8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.152.5 = phi i32 [ %i.cl, %bb.v ], [ %.152.4, %bb.u ] ; 3 uses
end_hunk_0
