Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/PropIDUtils?download=true
inline.NumInlined: 41
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
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
  store i32 %i.f, ptr %i.g, align 4, !tbaa !9
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
  store <2 x i32> %i.q, ptr %i.j, align 4, !tbaa !9
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
  store <4 x i32> %i.ae, ptr %i.v, align 4, !tbaa !9
  %i.af = icmp ult i32 %0, -1610612736
  %i.ag = or disjoint i32 %i.u, 48
  %i.ah = add nuw nsw i32 %i.u, 55
  %i.ai = select i1 %i.af, i32 %i.ag, i32 %i.ah
  store i32 %i.ai, ptr %1, align 4, !tbaa !9
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 0, ptr %i.aj, align 4, !tbaa !9
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
  %i.c = alloca [16 x i32], align 16              ; 17 uses
  switch i32 %2, label %bb.ch [
    i32 10, label %bb.b
    i32 11, label %bb.b
    i32 12, label %bb.b
    i32 19, label %bb.h
    i32 9, label %bb.k
    i32 53, label %bb.ar
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.d = load i16, ptr %1, align 8, !tbaa !37
  %.not70 = icmp eq i16 %i.d, 64
  br i1 %.not70, label %bb.c, label %bb.ch

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %5 = load i32, ptr %i.f, align 4, !tbaa !38
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
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.l = call noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #11 ; 9 uses
  %i.m = ptrtoaddr ptr %i.l to i64
  %i.n = load i32, ptr %i.k, align 4, !tbaa !42
  %i.o = icmp sgt i32 %i.n, 0
  %.pre1.i = load i32, ptr %i.j, align 8, !tbaa !43 ; 5 uses
  br i1 %i.o, label %.preheader.i.i, label %_ZN11CStringBaseIwEC2Ev.exit

.preheader.i.i:                                   ; preds = %bb.e
  %i.p = icmp sgt i32 %.pre1.i, 0
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !44 ; 9 uses
  br i1 %i.p, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %.pre.i.i330 = ptrtoaddr ptr %.pre.i.i to i64
  %wide.trip.count.i.i = zext nneg i32 %.pre1.i to i64 ; 5 uses
  %min.iters.check333 = icmp ult i32 %.pre1.i, 8
  %i.q = sub i64 %.pre.i.i330, %i.m
  %diff.check331 = icmp ugt i64 %i.q, -32
  %or.cond = select i1 %min.iters.check333, i1 true, i1 %diff.check331
  br i1 %or.cond, label %scalar.ph332.preheader, label %vector.ph334

vector.ph334:                                     ; preds = %.lr.ph.i.i
  %n.vec335 = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  br label %vector.body336

vector.body336:                                   ; preds = %vector.body336, %vector.ph334
  %index337 = phi i64 [ 0, %vector.ph334 ], [ %index.next340, %vector.body336 ] ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %index337 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load338 = load <4 x i32>, ptr %i.r, align 4, !tbaa !9
  %wide.load339 = load <4 x i32>, ptr %i.s, align 4, !tbaa !9
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %index337 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <4 x i32> %wide.load338, ptr %i.t, align 4, !tbaa !9
  store <4 x i32> %wide.load339, ptr %i.u, align 4, !tbaa !9
  %index.next340 = add nuw i64 %index337, 8       ; 2 uses
  %i.v = icmp eq i64 %index.next340, %n.vec335
  br i1 %i.v, label %middle.block341, label %vector.body336, !llvm.loop !10

middle.block341:                                  ; preds = %vector.body336
  %cmp.n342 = icmp eq i64 %n.vec335, %wide.trip.count.i.i
  br i1 %cmp.n342, label %._crit_edge.thread.i.i, label %scalar.ph332.preheader

scalar.ph332.preheader:                           ; preds = %.lr.ph.i.i, %middle.block341
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec335, %middle.block341 ] ; 3 uses
  %xtraiter361 = and i64 %wide.trip.count.i.i, 3  ; 2 uses
  %lcmp.mod362.not = icmp eq i64 %xtraiter361, 0
  br i1 %lcmp.mod362.not, label %scalar.ph332.prol.loopexit, label %scalar.ph332.prol

scalar.ph332.prol:                                ; preds = %scalar.ph332.preheader, %scalar.ph332.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %scalar.ph332.prol ], [ %indvars.iv.i.i.ph, %scalar.ph332.preheader ] ; 3 uses
  %prol.iter363 = phi i64 [ %prol.iter363.next, %scalar.ph332.prol ], [ 0, %scalar.ph332.preheader ]
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i.prol
  %i.x = load i32, ptr %i.w, align 4, !tbaa !9
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i.i.prol
  store i32 %i.x, ptr %i.y, align 4, !tbaa !9
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter363.next = add i64 %prol.iter363, 1   ; 2 uses
  %prol.iter363.cmp.not = icmp eq i64 %prol.iter363.next, %xtraiter361
  br i1 %prol.iter363.cmp.not, label %scalar.ph332.prol.loopexit, label %scalar.ph332.prol, !llvm.loop !11

scalar.ph332.prol.loopexit:                       ; preds = %scalar.ph332.prol, %scalar.ph332.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph332.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph332.prol ]
  %i.z = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.aa = icmp ugt i64 %i.z, -4
  br i1 %i.aa, label %._crit_edge.thread.i.i, label %scalar.ph332

._crit_edge.i.i:                                  ; preds = %.preheader.i.i
  %i.ab = icmp eq ptr %.pre.i.i, null
  br i1 %i.ab, label %_ZN11CStringBaseIwEC2Ev.exit, label %._crit_edge.thread.i.i

scalar.ph332:                                     ; preds = %scalar.ph332.prol.loopexit, %scalar.ph332
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %scalar.ph332 ], [ %indvars.iv.i.i.unr, %scalar.ph332.prol.loopexit ] ; 6 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !9
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i.i
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !9
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !9
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next.i.i
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !9
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.1
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !9
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next.i.i.1
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !9
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.2
  %i.am = load i32, ptr %i.al, align 4, !tbaa !9
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next.i.i.2
  store i32 %i.am, ptr %i.an, align 4, !tbaa !9
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.thread.i.i, label %scalar.ph332, !llvm.loop !12

._crit_edge.thread.i.i:                           ; preds = %scalar.ph332.prol.loopexit, %scalar.ph332, %middle.block341, %._crit_edge.i.i
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i) #12
  %.pre.i = load i32, ptr %i.j, align 8, !tbaa !43
  br label %_ZN11CStringBaseIwEC2Ev.exit

_ZN11CStringBaseIwEC2Ev.exit:                     ; preds = %bb.e, %._crit_edge.i.i, %._crit_edge.thread.i.i
  %i.ao = phi i32 [ %.pre1.i, %bb.e ], [ %.pre1.i, %._crit_edge.i.i ], [ %.pre.i, %._crit_edge.thread.i.i ]
  store ptr %i.l, ptr %0, align 8, !tbaa !44
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.ap
  store i32 0, ptr %i.aq, align 4, !tbaa !9
  store i32 4, ptr %i.k, align 4, !tbaa !42
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @_Z23ConvertFileTimeToStringRK9_FILETIMEbb(ptr dead_on_unwind writable sret(%class.CStringBase) align 8 %0, ptr noundef nonnull align 4 dereferenceable(8) %4, i1 noundef zeroext true, i1 noundef zeroext %3)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN11CStringBaseIwEC2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.ci

bb.h:                                             ; preds = %bb.a
  %i.ar = load i16, ptr %1, align 8, !tbaa !37
  %.not69 = icmp eq i16 %i.ar, 19
  br i1 %.not69, label %bb.i, label %bb.ch

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load i32, ptr %i.as, align 8, !tbaa !38 ; 9 uses
  %i.au = and i32 %i.at, 15                       ; 3 uses
  %i.av = icmp samesign ult i32 %i.au, 10
  %i.aw = or disjoint i32 %i.au, 48
  %i.ax = add nuw nsw i32 %i.au, 55
  %i.ay = select i1 %i.av, i32 %i.aw, i32 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !9
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.bb = lshr i32 %i.at, 4
  %i.bc = lshr i32 %i.at, 8
  %i.bd = insertelement <2 x i32> poison, i32 %i.bc, i64 0
  %i.be = insertelement <2 x i32> %i.bd, i32 %i.bb, i64 1
  %i.bf = and <2 x i32> %i.be, splat (i32 15)     ; 3 uses
  %i.bg = icmp samesign ult <2 x i32> %i.bf, splat (i32 10)
  %i.bh = or disjoint <2 x i32> %i.bf, splat (i32 48)
  %i.bi = add nuw nsw <2 x i32> %i.bf, splat (i32 55)
  %i.bj = select <2 x i1> %i.bg, <2 x i32> %i.bh, <2 x i32> %i.bi
  store <2 x i32> %i.bj, ptr %i.ba, align 4, !tbaa !9
  %i.bk = lshr i32 %i.at, 28                      ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.bm = lshr i32 %i.at, 12
  %i.bn = lshr i32 %i.at, 16
  %i.bo = lshr i32 %i.at, 20
  %i.bp = lshr i32 %i.at, 24
  %i.bq = insertelement <4 x i32> poison, i32 %i.bp, i64 0
  %i.br = insertelement <4 x i32> %i.bq, i32 %i.bo, i64 1
  %i.bs = insertelement <4 x i32> %i.br, i32 %i.bn, i64 2
  %i.bt = insertelement <4 x i32> %i.bs, i32 %i.bm, i64 3
  %i.bu = and <4 x i32> %i.bt, splat (i32 15)     ; 3 uses
  %i.bv = icmp samesign ult <4 x i32> %i.bu, splat (i32 10)
  %i.bw = or disjoint <4 x i32> %i.bu, splat (i32 48)
  %i.bx = add nuw nsw <4 x i32> %i.bu, splat (i32 55)
  %i.by = select <4 x i1> %i.bv, <4 x i32> %i.bw, <4 x i32> %i.bx
  store <4 x i32> %i.by, ptr %i.bl, align 4, !tbaa !9
  %i.bz = icmp ult i32 %i.at, -1610612736
  %i.ca = or disjoint i32 %i.bk, 48
  %i.cb = add nuw nsw i32 %i.bk, 55
  %i.cc = select i1 %i.bz, i32 %i.ca, i32 %i.cb
  store i32 %i.cc, ptr %i.a, align 16, !tbaa !9
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 0, ptr %i.cd, align 16, !tbaa !9
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %wcslen.i.i = call i64 @wcslen(ptr nonnull %i.a)
  %i.cg = trunc i64 %wcslen.i.i to i32            ; 3 uses
  %i.ch = add nsw i32 %i.cg, 1                    ; 3 uses
  %i.ci = icmp ne i32 %i.ch, 0
  tail call void @llvm.assume(i1 %i.ci)
  %i.cj = zext nneg i32 %i.ch to i64
  %i.ck = icmp slt i32 %i.cg, -1
  %i.cl = shl nuw nsw i64 %i.cj, 2
  %i.cm = select i1 %i.ck, i64 -1, i64 %i.cl
  %i.cn = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cm) #11 ; 10 uses
  %i.co = ptrtoaddr ptr %i.cn to i64
  %i.cp = load i32, ptr %i.cf, align 4, !tbaa !42
  %i.cq = icmp sgt i32 %i.cp, 0
  %.pre4.i = load i32, ptr %i.ce, align 8, !tbaa !43 ; 5 uses
  br i1 %i.cq, label %.preheader.i.i72, label %bb.j

.preheader.i.i72:                                 ; preds = %bb.i
  %i.cr = icmp sgt i32 %.pre4.i, 0
  %.pre.i.i73 = load ptr, ptr %0, align 8, !tbaa !44 ; 9 uses
  br i1 %i.cr, label %.lr.ph.i.i77, label %._crit_edge.i.i74

.lr.ph.i.i77:                                     ; preds = %.preheader.i.i72
  %.pre.i.i73315 = ptrtoaddr ptr %.pre.i.i73 to i64
  %wide.trip.count.i.i78 = zext nneg i32 %.pre4.i to i64 ; 5 uses
  %min.iters.check318 = icmp ult i32 %.pre4.i, 8
  %i.cs = sub i64 %.pre.i.i73315, %i.co
end_hunk_0
