Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/Lzma2Dec?download=true
inline.NumInlined: 5
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.CLzma2Dec = type { %struct.CLzmaDec, i32, i32, i32, i8, i32, i32, i32 }
%struct.CLzmaDec = type { %struct._CLzmaProps, ptr, ptr, ptr, i32, i32, i64, i64, i32, i32, i32, [4 x i32], i32, i32, i32, i32, i32, [20 x i8] }
%struct._CLzmaProps = type { i32, i32, i32, i32 }

; Function Attrs: nounwind uwtable
define dso_local i32 @Lzma2Dec_AllocateProbs(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [5 x i8], align 1                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = zext i8 %1 to i32                        ; 2 uses
  %i.c = icmp ugt i8 %1, 40
  br i1 %i.c, label %Lzma2Dec_GetOldProps.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i8 %1, 40
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = and i32 %i.b, 1
  %i.f = or disjoint i32 %i.e, 2
  %i.g = lshr i32 %i.b, 1
  %i.h = add nuw nsw i32 %i.g, 11
  %i.i = shl nuw i32 %i.f, %i.h
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.j = phi i32 [ %i.i, %bb.c ], [ -1, %bb.b ]
  store i8 4, ptr %i.a, align 1, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i32 %i.j, ptr %i.k, align 1
  %i.l = call i32 @LzmaDec_AllocateProbs(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 5, ptr noundef %2) #4
  br label %Lzma2Dec_GetOldProps.exit

Lzma2Dec_GetOldProps.exit:                        ; preds = %bb.a, %bb.d
  %.1 = phi i32 [ %i.l, %bb.d ], [ 4, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @LzmaDec_AllocateProbs(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @Lzma2Dec_Allocate(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [5 x i8], align 1                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = zext i8 %1 to i32                        ; 2 uses
  %i.c = icmp ugt i8 %1, 40
  br i1 %i.c, label %Lzma2Dec_GetOldProps.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i8 %1, 40
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = and i32 %i.b, 1
  %i.f = or disjoint i32 %i.e, 2
  %i.g = lshr i32 %i.b, 1
  %i.h = add nuw nsw i32 %i.g, 11
  %i.i = shl nuw i32 %i.f, %i.h
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.j = phi i32 [ %i.i, %bb.c ], [ -1, %bb.b ]
  store i8 4, ptr %i.a, align 1, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i32 %i.j, ptr %i.k, align 1
  %i.l = call i32 @LzmaDec_Allocate(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 5, ptr noundef %2) #4
  br label %Lzma2Dec_GetOldProps.exit

Lzma2Dec_GetOldProps.exit:                        ; preds = %bb.a, %bb.d
  %.1 = phi i32 [ %i.l, %bb.d ], [ 4, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.1
}

declare i32 @LzmaDec_Allocate(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @Lzma2Dec_Init(ptr noundef initializes((144, 148), (152, 164)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 0, ptr %i.a, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 1, ptr %i.b, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 1, ptr %i.c, align 4, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 1, ptr %i.d, align 8, !tbaa !19
  tail call void @LzmaDec_Init(ptr noundef %0) #4
  ret void
}

declare void @LzmaDec_Init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @Lzma2Dec_DecodeToDic(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3, i32 noundef %4, ptr noundef initializes((0, 4)) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 11 uses
  %i.b = load i64, ptr %3, align 8, !tbaa !20     ; 3 uses
  store i64 0, ptr %3, align 8, !tbaa !20
  store i32 0, ptr %5, align 4, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 6 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !16   ; 2 uses
  %.not158 = icmp eq i32 %i.d, 8
  br i1 %.not158, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.f = icmp eq i32 %4, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 11 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %i.q = phi i32 [ %i.d, %.lr.ph ], [ %i.dx, %.backedge ] ; 5 uses
  %.0111159 = phi ptr [ %2, %.lr.ph ], [ %.4115.jt0, %.backedge ] ; 6 uses
  %i.r = load i64, ptr %i.e, align 8, !tbaa !21   ; 5 uses
  %i.s = icmp eq i32 %i.q, 9
  br i1 %i.s, label %.thread151, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = icmp eq i64 %i.r, %1
  %or.cond = and i1 %i.f, %i.t
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 2, ptr %5, align 4, !tbaa !7
  br label %.thread151

bb.e:                                             ; preds = %bb.c
  %i.u = and i32 %i.q, -2
  %switch = icmp eq i32 %i.u, 6
  br i1 %switch, label %bb.v, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i64, ptr %3, align 8, !tbaa !20     ; 2 uses
  %i.w = icmp eq i64 %i.v, %i.b
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 3, ptr %5, align 4, !tbaa !7
  br label %.thread151

bb.h:                                             ; preds = %bb.f
  %i.x = add i64 %i.v, 1
  store i64 %i.x, ptr %3, align 8, !tbaa !20
  %i.y = getelementptr inbounds nuw i8, ptr %.0111159, i64 1
  %i.z = load i8, ptr %.0111159, align 1, !tbaa !8 ; 13 uses
  switch i32 %i.q, label %Lzma2Dec_UpdateState.exit [
    i32 0, label %bb.i
    i32 1, label %bb.n
    i32 2, label %bb.o
    i32 3, label %bb.p
    i32 4, label %bb.q
    i32 5, label %bb.s
  ]

bb.i:                                             ; preds = %bb.h
  store i8 %i.z, ptr %i.j, align 4, !tbaa !25
  %i.aa = zext i8 %i.z to i32
  %i.ab = icmp eq i8 %i.z, 0
  br i1 %i.ab, label %Lzma2Dec_UpdateState.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = icmp sgt i8 %i.z, -1
  br i1 %i.ac, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ad = icmp samesign ugt i8 %i.z, 2
  br i1 %i.ad, label %Lzma2Dec_UpdateState.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.k, align 4, !tbaa !26
  br label %Lzma2Dec_UpdateState.exit

bb.m:                                             ; preds = %bb.j
  %i.ae = shl nuw nsw i32 %i.aa, 16
  %i.af = and i32 %i.ae, 2031616
  store i32 %i.af, ptr %i.k, align 4, !tbaa !26
  br label %Lzma2Dec_UpdateState.exit

bb.n:                                             ; preds = %bb.h
  %i.ag = zext i8 %i.z to i32
  %i.ah = shl nuw nsw i32 %i.ag, 8
  %i.ai = load i32, ptr %i.k, align 4, !tbaa !26
  %i.aj = or i32 %i.ai, %i.ah
  store i32 %i.aj, ptr %i.k, align 4, !tbaa !26
  br label %Lzma2Dec_UpdateState.exit

bb.o:                                             ; preds = %bb.h
  %i.ak = zext i8 %i.z to i32
  %i.al = load i32, ptr %i.k, align 4, !tbaa !26
  %i.am = or i32 %i.al, %i.ak
  %i.an = add i32 %i.am, 1
  store i32 %i.an, ptr %i.k, align 4, !tbaa !26
  %i.ao = load i8, ptr %i.j, align 4, !tbaa !25
  %i.ap = icmp sgt i8 %i.ao, -1
  %i.aq = select i1 %i.ap, i32 6, i32 3
  br label %Lzma2Dec_UpdateState.exit

bb.p:                                             ; preds = %bb.h
  %i.ar = zext i8 %i.z to i32
  %i.as = shl nuw nsw i32 %i.ar, 8
  store i32 %i.as, ptr %i.i, align 8, !tbaa !27
  br label %Lzma2Dec_UpdateState.exit

bb.q:                                             ; preds = %bb.h
  %i.at = zext i8 %i.z to i32
  %i.au = load i32, ptr %i.i, align 8, !tbaa !27
  %i.av = or i32 %i.au, %i.at
  %i.aw = add i32 %i.av, 1
  store i32 %i.aw, ptr %i.i, align 8, !tbaa !27
  %i.ax = load i8, ptr %i.j, align 4, !tbaa !25
  %i.ay = and i8 %i.ax, 64
  %.not.i = icmp eq i8 %i.ay, 0
  br i1 %.not.i, label %bb.r, label %Lzma2Dec_UpdateState.exit

bb.r:                                             ; preds = %bb.q
  %i.az = load i32, ptr %i.h, align 8, !tbaa !19
  %.not37.i = icmp eq i32 %i.az, 0
  %i.ba = select i1 %.not37.i, i32 6, i32 9
  br label %Lzma2Dec_UpdateState.exit

bb.s:                                             ; preds = %bb.h
  %i.bb = icmp ugt i8 %i.z, -32
  br i1 %i.bb, label %Lzma2Dec_UpdateState.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bc = udiv i8 %i.z, 9
  %i.bd = udiv i8 %i.z, 45
  %.zext.i = zext nneg i8 %i.bd to i32
  store i32 %.zext.i, ptr %i.g, align 8, !tbaa !28
  %6 = insertelement <2 x i8> poison, i8 %i.z, i64 0
  %7 = insertelement <2 x i8> %6, i8 %i.bc, i64 1
  %8 = urem <2 x i8> %7, <i8 9, i8 5>             ; 3 uses
  %9 = extractelement <2 x i8> %8, i64 0
  %10 = extractelement <2 x i8> %8, i64 1
  %narrow = add nuw nsw i8 %10, %9
  %i.be = icmp samesign ugt i8 %narrow, 4
  br i1 %i.be, label %Lzma2Dec_UpdateState.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %11 = zext nneg <2 x i8> %8 to <2 x i32>
  store <2 x i32> %11, ptr %0, align 8, !tbaa !7
  store i32 0, ptr %i.h, align 8, !tbaa !19
  br label %Lzma2Dec_UpdateState.exit

Lzma2Dec_UpdateState.exit:                        ; preds = %bb.h, %bb.i, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u
  %.1.i = phi i32 [ 9, %bb.t ], [ 5, %bb.q ], [ 8, %bb.i ], [ 9, %bb.k ], [ 2, %bb.n ], [ %i.aq, %bb.o ], [ 4, %bb.p ], [ 1, %bb.l ], [ 1, %bb.m ], [ %i.ba, %bb.r ], [ 6, %bb.u ], [ 9, %bb.s ], [ 9, %bb.h ]
  store i32 %.1.i, ptr %i.c, align 8, !tbaa !16
  br label %.backedge, !llvm.loop !24

bb.v:                                             ; preds = %bb.e
  %i.bf = sub i64 %1, %i.r                        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.bg = load i64, ptr %3, align 8, !tbaa !20    ; 2 uses
  %i.bh = sub i64 %i.b, %i.bg                     ; 3 uses
  store i64 %i.bh, ptr %i.a, align 8, !tbaa !20
  %i.bi = load i32, ptr %i.k, align 4, !tbaa !26
  %i.bj = zext i32 %i.bi to i64                   ; 2 uses
  %.not126 = icmp uge i64 %i.bf, %i.bj
  %spec.select = call i64 @llvm.umin.i64(i64 %i.bf, i64 %i.bj) ; 4 uses
  %spec.select134 = zext i1 %.not126 to i32
  %i.bk = load i8, ptr %i.j, align 4, !tbaa !25   ; 3 uses
  %i.bl = icmp sgt i8 %i.bk, -1
  br i1 %i.bl, label %bb.w, label %bb.ai

bb.w:                                             ; preds = %bb.v
  %i.bm = icmp eq i64 %i.bg, %i.b
  br i1 %i.bm, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 3, ptr %5, align 4, !tbaa !7
  br label %.loopexit

bb.y:                                             ; preds = %bb.w
  %i.bn = icmp eq i32 %i.q, 6
  br i1 %i.bn, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.bo = icmp eq i8 %i.bk, 1                     ; 2 uses
  %i.bp = zext i1 %i.bo to i32
  br i1 %i.bo, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 1, ptr %i.m, align 4, !tbaa !18
  store i32 1, ptr %i.h, align 8, !tbaa !19
  br label %.thread

bb.ab:                                            ; preds = %bb.z
  %i.bq = load i32, ptr %i.l, align 8, !tbaa !17
  %.not133 = icmp eq i32 %i.bq, 0
  br i1 %.not133, label %.thread, label %.loopexit

.thread:                                          ; preds = %bb.aa, %bb.ab
  store i32 0, ptr %i.l, align 8, !tbaa !17
  call void @LzmaDec_InitDicAndState(ptr noundef nonnull %0, i32 noundef %i.bp, i32 noundef 0) #4
  %.pre163 = load i64, ptr %i.a, align 8, !tbaa !20
  br label %bb.ac

bb.ac:                                            ; preds = %.thread, %bb.y
  %i.br = phi i64 [ %.pre163, %.thread ], [ %i.bh, %bb.y ] ; 2 uses
  %i.bs = icmp ugt i64 %i.br, %spec.select
  br i1 %i.bs, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i64 %spec.select, ptr %i.a, align 8, !tbaa !20
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.bt = phi i64 [ %spec.select, %bb.ad ], [ %i.br, %bb.ac ] ; 5 uses
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %.loopexit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bv = load ptr, ptr %i.n, align 8, !tbaa !30
  %i.bw = load i64, ptr %i.e, align 8, !tbaa !31
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bx, ptr noundef nonnull readonly align 1 dereferenceable(1) %.0111159, i64 range(i64 1, 0) %i.bt, i1 false)
  %i.by = load i64, ptr %i.e, align 8, !tbaa !31
  %i.bz = add i64 %i.by, %i.bt
  store i64 %i.bz, ptr %i.e, align 8, !tbaa !31
  %i.ca = load i32, ptr %i.o, align 4, !tbaa !32
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.ag, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.af
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !33
  br label %LzmaDec_UpdateWithUncompressed.exit

bb.ag:                                            ; preds = %bb.af
  %i.cc = load i32, ptr %i.p, align 4, !tbaa !34  ; 2 uses
  %i.cd = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !33 ; 3 uses
  %i.ce = sub i32 %i.cc, %i.cd
  %i.cf = zext i32 %i.ce to i64
  %.not.i136 = icmp samesign ult i64 %i.bt, %i.cf
  br i1 %.not.i136, label %LzmaDec_UpdateWithUncompressed.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store i32 %i.cc, ptr %i.o, align 4, !tbaa !32
  br label %LzmaDec_UpdateWithUncompressed.exit

LzmaDec_UpdateWithUncompressed.exit:              ; preds = %._crit_edge.i, %bb.ag, %bb.ah
  %i.cg = phi i32 [ %.pre.i, %._crit_edge.i ], [ %i.cd, %bb.ah ], [ %i.cd, %bb.ag ]
  %i.ch = trunc nuw i64 %i.bt to i32
  %i.ci = add i32 %i.cg, %i.ch
  store i32 %i.ci, ptr %.phi.trans.insert.i, align 8, !tbaa !33
  %i.cj = load i64, ptr %i.a, align 8, !tbaa !20  ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.0111159, i64 %i.cj
  %i.cl = load i64, ptr %3, align 8, !tbaa !20
  %i.cm = add i64 %i.cl, %i.cj
  store i64 %i.cm, ptr %3, align 8, !tbaa !20
  %i.cn = trunc i64 %i.cj to i32                  ; 2 uses
  %i.co = load i32, ptr %i.k, align 4, !tbaa !26  ; 2 uses
  %i.cp = sub i32 %i.co, %i.cn
  store i32 %i.cp, ptr %i.k, align 4, !tbaa !26
  %i.cq = icmp eq i32 %i.co, %i.cn
  %i.cr = select i1 %i.cq, i32 0, i32 7
  store i32 %i.cr, ptr %i.c, align 8, !tbaa !16
  br label %.thread144.jt0

bb.ai:                                            ; preds = %bb.v
  %i.cs = icmp eq i32 %i.q, 6
  br i1 %i.cs, label %bb.aj, label %bb.an

bb.aj:                                            ; preds = %bb.ai
  %i.ct = lshr i8 %i.bk, 5
  %i.cu = and i8 %i.ct, 3                         ; 2 uses
  %i.cv = icmp eq i8 %i.cu, 3                     ; 2 uses
  %i.cw = zext i1 %i.cv to i32
  %i.cx = icmp ne i8 %i.cu, 0                     ; 2 uses
  %i.cy = zext i1 %i.cx to i32
  br i1 %i.cv, label %.thread139, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cz = load i32, ptr %i.l, align 8, !tbaa !17
  %.not127 = icmp eq i32 %i.cz, 0
  br i1 %.not127, label %bb.al, label %.loopexit

bb.al:                                            ; preds = %bb.ak
  br i1 %i.cx, label %.thread139, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.da = load i32, ptr %i.m, align 4, !tbaa !18
  %.not128 = icmp eq i32 %i.da, 0
  br i1 %.not128, label %.thread139, label %.loopexit

.thread139:                                       ; preds = %bb.aj, %bb.al, %bb.am
  call void @LzmaDec_InitDicAndState(ptr noundef nonnull %0, i32 noundef %i.cw, i32 noundef %i.cy) #4
  store i32 0, ptr %i.l, align 8, !tbaa !17
  store i32 0, ptr %i.m, align 4, !tbaa !18
  store i32 7, ptr %i.c, align 8, !tbaa !16
  %.pre = load i64, ptr %i.a, align 8, !tbaa !20
  br label %bb.an

bb.an:                                            ; preds = %.thread139, %bb.ai
  %i.db = phi i64 [ %.pre, %.thread139 ], [ %i.bh, %bb.ai ]
  %i.dc = load i32, ptr %i.i, align 8, !tbaa !27
  %i.dd = zext i32 %i.dc to i64                   ; 2 uses
  %i.de = icmp ugt i64 %i.db, %i.dd
  br i1 %i.de, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store i64 %i.dd, ptr %i.a, align 8, !tbaa !20
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.df = add i64 %spec.select, %i.r
  %i.dg = call i32 @LzmaDec_DecodeToDic(ptr noundef nonnull %0, i64 noundef %i.df, ptr noundef %.0111159, ptr noundef nonnull %i.a, i32 noundef %spec.select134, ptr noundef nonnull %5) #4 ; 2 uses
  %i.dh = load i64, ptr %i.a, align 8, !tbaa !20  ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.0111159, i64 %i.dh ; 2 uses
  %i.dj = load i64, ptr %3, align 8, !tbaa !20
  %i.dk = add i64 %i.dj, %i.dh
  store i64 %i.dk, ptr %3, align 8, !tbaa !20
  %i.dl = trunc i64 %i.dh to i32                  ; 2 uses
  %i.dm = load i32, ptr %i.i, align 8, !tbaa !27  ; 2 uses
  %i.dn = sub i32 %i.dm, %i.dl
  store i32 %i.dn, ptr %i.i, align 8, !tbaa !27
  %i.do = load i64, ptr %i.e, align 8, !tbaa !21  ; 2 uses
  %.neg = sub i64 %i.r, %i.do
  %.neg157 = trunc i64 %.neg to i32
  %i.dp = load i32, ptr %i.k, align 4, !tbaa !26
  %i.dq = add i32 %i.dp, %.neg157                 ; 2 uses
  store i32 %i.dq, ptr %i.k, align 4, !tbaa !26
  %.not129 = icmp eq i32 %i.dg, 0
  br i1 %.not129, label %bb.aq, label %.loopexit

bb.aq:                                            ; preds = %bb.ap
  %i.dr = load i32, ptr %5, align 4, !tbaa !7     ; 3 uses
  %i.ds = icmp eq i32 %i.dr, 3
  br i1 %i.ds, label %.loopexit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dt = icmp eq i64 %i.dh, 0
  %i.du = icmp eq i64 %i.do, %i.r
  %or.cond7 = select i1 %i.dt, i1 %i.du, i1 false
  br i1 %or.cond7, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %.not130 = icmp eq i32 %i.dr, 4
  %.not131 = icmp eq i32 %i.dq, 0
  %or.cond155 = select i1 %.not130, i1 %.not131, i1 false
  %.not132 = icmp eq i32 %i.dm, %i.dl
  %or.cond156 = select i1 %or.cond155, i1 %.not132, i1 false
  br i1 %or.cond156, label %bb.at, label %.loopexit

bb.at:                                            ; preds = %bb.as
  store i32 0, ptr %i.c, align 8, !tbaa !16
  %.pre162 = load i32, ptr %5, align 4, !tbaa !7
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.ar
  %i.dv = phi i32 [ %.pre162, %bb.at ], [ %i.dr, %bb.ar ]
  %i.dw = icmp eq i32 %i.dv, 4
  br i1 %i.dw, label %bb.av, label %.thread144.jt0

bb.av:                                            ; preds = %bb.au
  store i32 2, ptr %5, align 4, !tbaa !7
  br label %.thread144.jt0

.thread144.jt0:                                   ; preds = %bb.av, %bb.au, %LzmaDec_UpdateWithUncompressed.exit
  %.3114.jt0 = phi ptr [ %i.ck, %LzmaDec_UpdateWithUncompressed.exit ], [ %i.di, %bb.au ], [ %i.di, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %.backedge

.loopexit:                                        ; preds = %bb.ab, %bb.ae, %bb.ak, %bb.am, %bb.ap, %bb.as, %bb.aq, %bb.x
  %.8.jt1 = phi i32 [ 0, %bb.x ], [ 1, %bb.am ], [ 1, %bb.ak ], [ 0, %bb.aq ], [ 1, %bb.as ], [ %i.dg, %bb.ap ], [ 1, %bb.ae ], [ 1, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %.thread151

.backedge:                                        ; preds = %.thread144.jt0, %Lzma2Dec_UpdateState.exit
  %.4115.jt0 = phi ptr [ %.3114.jt0, %.thread144.jt0 ], [ %i.y, %Lzma2Dec_UpdateState.exit ]
  %i.dx = load i32, ptr %i.c, align 8, !tbaa !16  ; 2 uses
  %.not = icmp eq i32 %i.dx, 8
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !24

._crit_edge:                                      ; preds = %.backedge, %bb.a
  store i32 1, ptr %5, align 4, !tbaa !7
  br label %.thread151

.thread151:                                       ; preds = %bb.b, %.loopexit, %bb.g, %bb.d, %._crit_edge
  %.10 = phi i32 [ 0, %bb.g ], [ 0, %._crit_edge ], [ 0, %bb.d ], [ %.8.jt1, %.loopexit ], [ 1, %bb.b ]
  ret i32 %.10
}

declare void @LzmaDec_InitDicAndState(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @LzmaDec_DecodeToDic(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @Lzma2Dec_DecodeToBuf(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr noundef %3, ptr nofree noundef captures(none) %4, i32 noundef %5, ptr noundef initializes((0, 4)) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load i64, ptr %2, align 8, !tbaa !20
  %i.c = load i64, ptr %4, align 8, !tbaa !20
  store i64 0, ptr %2, align 8, !tbaa !20
  store i64 0, ptr %4, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.048 = phi ptr [ %3, %bb.a ], [ %i.aa, %bb.e ] ; 2 uses
  %.047 = phi ptr [ %1, %bb.a ], [ %i.y, %bb.e ]  ; 2 uses
  %.045 = phi i64 [ %i.b, %bb.a ], [ %i.x, %bb.e ] ; 3 uses
  %.044 = phi i64 [ %i.c, %bb.a ], [ %i.z, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i64 %.044, ptr %i.a, align 8, !tbaa !20
  %i.g = load i64, ptr %i.d, align 8, !tbaa !21   ; 2 uses
  %i.h = load i64, ptr %i.e, align 8, !tbaa !22   ; 3 uses
  %i.i = icmp eq i64 %i.g, %i.h
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %i.d, align 8, !tbaa !21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = phi i64 [ 0, %bb.c ], [ %i.g, %bb.b ]    ; 5 uses
  %i.k = sub i64 %i.h, %i.j
  %i.l = icmp ugt i64 %.045, %i.k                 ; 2 uses
  %i.m = add i64 %i.j, %.045
  %.043 = select i1 %i.l, i64 %i.h, i64 %i.m
  %.042 = select i1 %i.l, i32 0, i32 %5
  %i.n = call i32 @Lzma2Dec_DecodeToDic(ptr noundef nonnull %0, i64 noundef %.043, ptr noundef %.048, ptr noundef nonnull %i.a, i32 noundef %.042, ptr noundef %6) ; 2 uses
  %i.o = load i64, ptr %i.a, align 8, !tbaa !20   ; 3 uses
  %i.p = load i64, ptr %4, align 8, !tbaa !20
  %i.q = add i64 %i.p, %i.o
  store i64 %i.q, ptr %4, align 8, !tbaa !20
  %i.r = load i64, ptr %i.d, align 8, !tbaa !21   ; 2 uses
  %i.s = sub i64 %i.r, %i.j                       ; 4 uses
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.047, ptr align 1 %i.u, i64 %i.s, i1 false)
  %i.v = load i64, ptr %2, align 8, !tbaa !20
  %i.w = add i64 %i.v, %i.s
  store i64 %i.w, ptr %2, align 8, !tbaa !20
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.x = sub i64 %.045, %i.s                      ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.047, i64 %i.s
  %i.z = sub i64 %.044, %i.o
  %i.aa = getelementptr inbounds nuw i8, ptr %.048, i64 %i.o
  %i.ab = icmp ne i64 %i.r, %i.j
  %i.ac = icmp ne i64 %i.x, 0
  %or.cond.not = select i1 %i.ab, i1 %i.ac, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br i1 %or.cond.not, label %bb.b, label %.loopexit

.loopexit:                                        ; preds = %bb.e, %.thread
  ret i32 %i.n
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @Lzma2Decode(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr nofree noundef captures(none) %3, i8 noundef zeroext %4, i32 noundef %5, ptr noundef initializes((0, 4)) %6, ptr noundef %7) local_unnamed_addr #0 {
bb.a:
  %8 = alloca %struct.CLzma2Dec, align 8          ; 9 uses
  %i.a = alloca [5 x i8], align 1                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #4
  %i.b = load i64, ptr %1, align 8, !tbaa !20     ; 2 uses
  %i.c = load i64, ptr %3, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 0, ptr %i.e, align 8
  store i64 0, ptr %3, align 8, !tbaa !20
  store i64 0, ptr %1, align 8, !tbaa !20
  store i32 0, ptr %6, align 4, !tbaa !7
  store ptr %0, ptr %i.d, align 8, !tbaa !23
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 56
  store i64 %i.b, ptr %i.f, align 8, !tbaa !22
  %i.g = zext i8 %4 to i32                        ; 2 uses
  %i.h = icmp ugt i8 %4, 40
  br i1 %i.h, label %Lzma2Dec_GetOldProps.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i8 %4, 40
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = and i32 %i.g, 1
  %i.k = or disjoint i32 %i.j, 2
  %i.l = lshr i32 %i.g, 1
  %i.m = add nuw nsw i32 %i.l, 11
  %i.n = shl nuw i32 %i.k, %i.m
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.o = phi i32 [ %i.n, %bb.c ], [ -1, %bb.b ]
  store i8 4, ptr %i.a, align 1, !tbaa !8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i32 %i.o, ptr %i.p, align 1
  %i.q = call i32 @LzmaDec_AllocateProbs(ptr noundef nonnull %8, ptr noundef nonnull %i.a, i32 noundef 5, ptr noundef %7) #4 ; 2 uses
  %.not34 = icmp eq i32 %i.q, 0
  br i1 %.not34, label %bb.e, label %Lzma2Dec_GetOldProps.exit

bb.e:                                             ; preds = %bb.d
  store i64 %i.c, ptr %3, align 8, !tbaa !20
  %i.r = call i32 @Lzma2Dec_DecodeToDic(ptr noundef nonnull %8, i64 noundef %i.b, ptr noundef %2, ptr noundef nonnull %3, i32 noundef %5, ptr noundef nonnull %6) ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.t = load i64, ptr %i.s, align 8, !tbaa !21
  store i64 %i.t, ptr %1, align 8, !tbaa !20
  %i.u = icmp eq i32 %i.r, 0
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = load i32, ptr %6, align 4, !tbaa !7
  %i.w = icmp eq i32 %i.v, 3
  %spec.select = select i1 %i.w, i32 6, i32 0
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.028 = phi i32 [ %i.r, %bb.e ], [ %spec.select, %bb.f ]
  call void @LzmaDec_FreeProbs(ptr noundef nonnull %8, ptr noundef %7) #4
  br label %Lzma2Dec_GetOldProps.exit

Lzma2Dec_GetOldProps.exit:                        ; preds = %bb.a, %bb.d, %bb.g
  %.2 = phi i32 [ %.028, %bb.g ], [ %i.q, %bb.d ], [ 4, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #4
  ret i32 %.2
}

declare void @LzmaDec_FreeProbs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!5, !5, i64 0}
!9 = !{!"_CLzmaProps", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 short", !10, i64 0}
!12 = !{!"p1 omnipotent char", !10, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"", !9, i64 0, !11, i64 16, !12, i64 24, !12, i64 32, !6, i64 40, !6, i64 44, !13, i64 48, !13, i64 56, !6, i64 64, !6, i64 68, !6, i64 72, !5, i64 76, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !5, i64 112}
!15 = !{!"", !14, i64 0, !6, i64 136, !6, i64 140, !6, i64 144, !5, i64 148, !6, i64 152, !6, i64 156, !6, i64 160}
!16 = !{!15, !6, i64 144}
!17 = !{!15, !6, i64 152}
!18 = !{!15, !6, i64 156}
!19 = !{!15, !6, i64 160}
!20 = !{!13, !13, i64 0}
!21 = !{!15, !13, i64 48}
!22 = !{!15, !13, i64 56}
!23 = !{!15, !12, i64 24}
!24 = distinct !{!24, !29}
!25 = !{!15, !5, i64 148}
!26 = !{!15, !6, i64 140}
!27 = !{!15, !6, i64 136}
!28 = !{!15, !6, i64 8}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{!14, !12, i64 24}
!31 = !{!14, !13, i64 48}
!32 = !{!14, !6, i64 68}
!33 = !{!14, !6, i64 64}
!34 = !{!14, !6, i64 12}
end_hunk_0
