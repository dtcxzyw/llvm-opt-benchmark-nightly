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
  store i32 0, ptr %i.a, align 8, !tbaa !9
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
  store i32 0, ptr %5, align 4, !tbaa !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 6 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !9    ; 2 uses
  %.not158 = icmp eq i32 %i.d, 8
  br i1 %.not158, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.f = icmp eq i32 %4, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 11 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %i.r = phi i32 [ %i.d, %.lr.ph ], [ %6, %.backedge ] ; 5 uses
  %.0103159 = phi ptr [ %2, %.lr.ph ], [ %.4107.jt0, %.backedge ] ; 6 uses
  %i.s = load i64, ptr %i.e, align 8, !tbaa !21   ; 5 uses
  %i.t = icmp eq i32 %i.r, 9
  br i1 %i.t, label %.thread151, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = icmp eq i64 %i.s, %1
  %or.cond = and i1 %i.f, %i.u
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 2, ptr %5, align 4, !tbaa !4
  br label %.thread151

bb.e:                                             ; preds = %bb.c
  %i.v = and i32 %i.r, -2
  %switch = icmp eq i32 %i.v, 6
  br i1 %switch, label %bb.v, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load i64, ptr %3, align 8, !tbaa !20     ; 2 uses
  %i.x = icmp eq i64 %i.w, %i.b
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 3, ptr %5, align 4, !tbaa !4
  br label %.thread151

bb.h:                                             ; preds = %bb.f
  %i.y = add i64 %i.w, 1
  store i64 %i.y, ptr %3, align 8, !tbaa !20
  %i.z = getelementptr inbounds nuw i8, ptr %.0103159, i64 1
  %i.aa = load i8, ptr %.0103159, align 1, !tbaa !8 ; 13 uses
  switch i32 %i.r, label %.thread174 [
    i32 0, label %bb.i
    i32 1, label %bb.n
    i32 2, label %bb.o
    i32 3, label %bb.p
    i32 4, label %bb.q
    i32 5, label %bb.s
  ]

bb.i:                                             ; preds = %bb.h
  store i8 %i.aa, ptr %i.k, align 4, !tbaa !22
  %i.ab = zext i8 %i.aa to i32
  %i.ac = icmp eq i8 %i.aa, 0
  br i1 %i.ac, label %.thread174, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = icmp sgt i8 %i.aa, -1
  br i1 %i.ad, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ae = icmp samesign ugt i8 %i.aa, 2
  br i1 %i.ae, label %.thread174, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.l, align 4, !tbaa !23
  br label %.thread174

bb.m:                                             ; preds = %bb.j
  %i.af = shl nuw nsw i32 %i.ab, 16
  %i.ag = and i32 %i.af, 2031616
  store i32 %i.ag, ptr %i.l, align 4, !tbaa !23
  br label %.thread174

bb.n:                                             ; preds = %bb.h
  %i.ah = zext i8 %i.aa to i32
  %i.ai = shl nuw nsw i32 %i.ah, 8
  %i.aj = load i32, ptr %i.l, align 4, !tbaa !23
  %i.ak = or i32 %i.aj, %i.ai
  store i32 %i.ak, ptr %i.l, align 4, !tbaa !23
  br label %.thread174

bb.o:                                             ; preds = %bb.h
  %i.al = zext i8 %i.aa to i32
  %i.am = load i32, ptr %i.l, align 4, !tbaa !23
  %i.an = or i32 %i.am, %i.al
  %i.ao = add i32 %i.an, 1
  store i32 %i.ao, ptr %i.l, align 4, !tbaa !23
  %i.ap = load i8, ptr %i.k, align 4, !tbaa !22
  %i.aq = icmp sgt i8 %i.ap, -1
  %i.ar = select i1 %i.aq, i32 6, i32 3
  br label %.thread174

bb.p:                                             ; preds = %bb.h
  %i.as = zext i8 %i.aa to i32
  %i.at = shl nuw nsw i32 %i.as, 8
  store i32 %i.at, ptr %i.j, align 8, !tbaa !24
  br label %.thread174

bb.q:                                             ; preds = %bb.h
  %i.au = zext i8 %i.aa to i32
  %i.av = load i32, ptr %i.j, align 8, !tbaa !24
  %i.aw = or i32 %i.av, %i.au
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr %i.j, align 8, !tbaa !24
  %i.ay = load i8, ptr %i.k, align 4, !tbaa !22
  %i.az = and i8 %i.ay, 64
  %.not.i = icmp eq i8 %i.az, 0
  br i1 %.not.i, label %bb.r, label %.thread174

bb.r:                                             ; preds = %bb.q
  %i.ba = load i32, ptr %i.i, align 8, !tbaa !19
  %.not37.i = icmp eq i32 %i.ba, 0
  %i.bb = select i1 %.not37.i, i32 6, i32 9
  br label %.thread174

bb.s:                                             ; preds = %bb.h
  %i.bc = icmp ugt i8 %i.aa, -32
  br i1 %i.bc, label %.thread174, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bd = urem i8 %i.aa, 9
  %i.be = zext nneg i8 %i.bd to i32               ; 2 uses
  %i.bf = udiv i8 %i.aa, 9
  %i.bg = udiv i8 %i.aa, 45
  %.zext.i = zext nneg i8 %i.bg to i32
  store i32 %.zext.i, ptr %i.g, align 8, !tbaa !25
  %i.bh = urem i8 %i.bf, 5
  %.zext39.i = zext nneg i8 %i.bh to i32          ; 2 uses
  %i.bi = add nuw nsw i32 %.zext39.i, %i.be
  %i.bj = icmp samesign ugt i32 %i.bi, 4
  br i1 %i.bj, label %.thread174, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i32 %i.be, ptr %0, align 8, !tbaa !26
  store i32 %.zext39.i, ptr %i.h, align 4, !tbaa !27
  store i32 0, ptr %i.i, align 8, !tbaa !19
  br label %.thread174

.thread174:                                       ; preds = %bb.h, %bb.i, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u
  %.1.i = phi i32 [ 9, %bb.t ], [ 5, %bb.q ], [ 8, %bb.i ], [ 9, %bb.k ], [ 2, %bb.n ], [ %i.ar, %bb.o ], [ 4, %bb.p ], [ 1, %bb.l ], [ 1, %bb.m ], [ %i.bb, %bb.r ], [ 6, %bb.u ], [ 9, %bb.s ], [ 9, %bb.h ]
  store i32 %.1.i, ptr %i.c, align 8, !tbaa !9
  br label %.backedge, !llvm.loop !28

bb.v:                                             ; preds = %bb.e
  %i.bk = sub i64 %1, %i.s                        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.bl = load i64, ptr %3, align 8, !tbaa !20    ; 2 uses
  %i.bm = sub i64 %i.b, %i.bl                     ; 3 uses
  store i64 %i.bm, ptr %i.a, align 8, !tbaa !20
  %i.bn = load i32, ptr %i.l, align 4, !tbaa !23
  %i.bo = zext i32 %i.bn to i64                   ; 2 uses
  %.not126 = icmp uge i64 %i.bk, %i.bo
  %spec.select = zext i1 %.not126 to i32
  %spec.select134 = call i64 @llvm.umin.i64(i64 %i.bk, i64 %i.bo) ; 4 uses
  %i.bp = load i8, ptr %i.k, align 4, !tbaa !22   ; 3 uses
  %i.bq = icmp sgt i8 %i.bp, -1
  br i1 %i.bq, label %bb.w, label %bb.ai

bb.w:                                             ; preds = %bb.v
  %i.br = icmp eq i64 %i.bl, %i.b
  br i1 %i.br, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 3, ptr %5, align 4, !tbaa !4
  br label %bb.aw

bb.y:                                             ; preds = %bb.w
  %i.bs = icmp eq i32 %i.r, 6
  br i1 %i.bs, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.bt = icmp eq i8 %i.bp, 1                     ; 2 uses
  %i.bu = zext i1 %i.bt to i32
  br i1 %i.bt, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 1, ptr %i.n, align 4, !tbaa !18
  store i32 1, ptr %i.i, align 8, !tbaa !19
  br label %.thread

bb.ab:                                            ; preds = %bb.z
  %i.bv = load i32, ptr %i.m, align 8, !tbaa !17
  %.not133 = icmp eq i32 %i.bv, 0
  br i1 %.not133, label %.thread, label %bb.aw

.thread:                                          ; preds = %bb.aa, %bb.ab
  store i32 0, ptr %i.m, align 8, !tbaa !17
  call void @LzmaDec_InitDicAndState(ptr noundef nonnull %0, i32 noundef %i.bu, i32 noundef 0) #4
  %.pre163 = load i64, ptr %i.a, align 8, !tbaa !20
  br label %bb.ac

bb.ac:                                            ; preds = %.thread, %bb.y
  %i.bw = phi i64 [ %.pre163, %.thread ], [ %i.bm, %bb.y ] ; 2 uses
  %i.bx = icmp ugt i64 %i.bw, %spec.select134
  br i1 %i.bx, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i64 %spec.select134, ptr %i.a, align 8, !tbaa !20
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.by = phi i64 [ %spec.select134, %bb.ad ], [ %i.bw, %bb.ac ] ; 5 uses
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %bb.aw, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ca = load ptr, ptr %i.o, align 8, !tbaa !30
  %i.cb = load i64, ptr %i.e, align 8, !tbaa !31
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cc, ptr noundef nonnull readonly align 1 dereferenceable(1) %.0103159, i64 range(i64 1, 0) %i.by, i1 false)
  %i.cd = load i64, ptr %i.e, align 8, !tbaa !31
  %i.ce = add i64 %i.cd, %i.by
  store i64 %i.ce, ptr %i.e, align 8, !tbaa !31
  %i.cf = load i32, ptr %i.p, align 4, !tbaa !32
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %bb.ag, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.af
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !33
  br label %LzmaDec_UpdateWithUncompressed.exit

bb.ag:                                            ; preds = %bb.af
  %i.ch = load i32, ptr %i.q, align 4, !tbaa !34  ; 2 uses
  %i.ci = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !33 ; 3 uses
  %i.cj = sub i32 %i.ch, %i.ci
  %i.ck = zext i32 %i.cj to i64
  %.not.i136 = icmp samesign ult i64 %i.by, %i.ck
  br i1 %.not.i136, label %LzmaDec_UpdateWithUncompressed.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store i32 %i.ch, ptr %i.p, align 4, !tbaa !32
  br label %LzmaDec_UpdateWithUncompressed.exit

LzmaDec_UpdateWithUncompressed.exit:              ; preds = %._crit_edge.i, %bb.ag, %bb.ah
  %i.cl = phi i32 [ %.pre.i, %._crit_edge.i ], [ %i.ci, %bb.ah ], [ %i.ci, %bb.ag ]
  %i.cm = trunc nuw i64 %i.by to i32
  %i.cn = add i32 %i.cl, %i.cm
  store i32 %i.cn, ptr %.phi.trans.insert.i, align 8, !tbaa !33
  %i.co = load i64, ptr %i.a, align 8, !tbaa !20  ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.0103159, i64 %i.co
  %i.cq = load i64, ptr %3, align 8, !tbaa !20
  %i.cr = add i64 %i.cq, %i.co
  store i64 %i.cr, ptr %3, align 8, !tbaa !20
  %i.cs = trunc i64 %i.co to i32                  ; 2 uses
  %i.ct = load i32, ptr %i.l, align 4, !tbaa !23  ; 2 uses
  %i.cu = sub i32 %i.ct, %i.cs
  store i32 %i.cu, ptr %i.l, align 4, !tbaa !23
  %i.cv = icmp eq i32 %i.ct, %i.cs
  %i.cw = select i1 %i.cv, i32 0, i32 7
  store i32 %i.cw, ptr %i.c, align 8, !tbaa !9
  br label %.thread180

bb.ai:                                            ; preds = %bb.v
  %i.cx = icmp eq i32 %i.r, 6
  br i1 %i.cx, label %bb.aj, label %bb.an

bb.aj:                                            ; preds = %bb.ai
  %i.cy = lshr i8 %i.bp, 5
  %i.cz = and i8 %i.cy, 3                         ; 2 uses
  %i.da = icmp eq i8 %i.cz, 3                     ; 2 uses
  %i.db = zext i1 %i.da to i32
  %i.dc = icmp ne i8 %i.cz, 0                     ; 2 uses
  %i.dd = zext i1 %i.dc to i32
  br i1 %i.da, label %.thread139, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.de = load i32, ptr %i.m, align 8, !tbaa !17
  %.not127 = icmp eq i32 %i.de, 0
  br i1 %.not127, label %bb.al, label %bb.aw

bb.al:                                            ; preds = %bb.ak
  br i1 %i.dc, label %.thread139, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.df = load i32, ptr %i.n, align 4, !tbaa !18
  %.not128 = icmp eq i32 %i.df, 0
  br i1 %.not128, label %.thread139, label %bb.aw

.thread139:                                       ; preds = %bb.aj, %bb.al, %bb.am
  call void @LzmaDec_InitDicAndState(ptr noundef nonnull %0, i32 noundef %i.db, i32 noundef %i.dd) #4
  store i32 0, ptr %i.m, align 8, !tbaa !17
  store i32 0, ptr %i.n, align 4, !tbaa !18
  store i32 7, ptr %i.c, align 8, !tbaa !9
  %.pre = load i64, ptr %i.a, align 8, !tbaa !20
  br label %bb.an

bb.an:                                            ; preds = %.thread139, %bb.ai
  %i.dg = phi i64 [ %.pre, %.thread139 ], [ %i.bm, %bb.ai ]
  %i.dh = load i32, ptr %i.j, align 8, !tbaa !24
  %i.di = zext i32 %i.dh to i64                   ; 2 uses
  %i.dj = icmp ugt i64 %i.dg, %i.di
  br i1 %i.dj, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store i64 %i.di, ptr %i.a, align 8, !tbaa !20
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.dk = add i64 %spec.select134, %i.s
  %i.dl = call i32 @LzmaDec_DecodeToDic(ptr noundef nonnull %0, i64 noundef %i.dk, ptr noundef %.0103159, ptr noundef nonnull %i.a, i32 noundef %spec.select, ptr noundef nonnull %5) #4 ; 2 uses
  %i.dm = load i64, ptr %i.a, align 8, !tbaa !20  ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.0103159, i64 %i.dm ; 2 uses
  %i.do = load i64, ptr %3, align 8, !tbaa !20
  %i.dp = add i64 %i.do, %i.dm
  store i64 %i.dp, ptr %3, align 8, !tbaa !20
  %i.dq = trunc i64 %i.dm to i32                  ; 2 uses
  %i.dr = load i32, ptr %i.j, align 8, !tbaa !24  ; 2 uses
  %i.ds = sub i32 %i.dr, %i.dq
  store i32 %i.ds, ptr %i.j, align 8, !tbaa !24
  %i.dt = load i64, ptr %i.e, align 8, !tbaa !21  ; 2 uses
  %.neg = sub i64 %i.s, %i.dt
  %.neg157 = trunc i64 %.neg to i32
  %i.du = load i32, ptr %i.l, align 4, !tbaa !23
  %i.dv = add i32 %i.du, %.neg157                 ; 2 uses
  store i32 %i.dv, ptr %i.l, align 4, !tbaa !23
  %.not129 = icmp eq i32 %i.dl, 0
  br i1 %.not129, label %bb.aq, label %bb.aw

bb.aq:                                            ; preds = %bb.ap
  %i.dw = load i32, ptr %5, align 4, !tbaa !4     ; 3 uses
  %i.dx = icmp eq i32 %i.dw, 3
  br i1 %i.dx, label %bb.aw, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dy = icmp eq i64 %i.dm, 0
  %i.dz = icmp eq i64 %i.dt, %i.s
  %or.cond7 = select i1 %i.dy, i1 %i.dz, i1 false
  br i1 %or.cond7, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %.not130 = icmp eq i32 %i.dw, 4
  %.not131 = icmp eq i32 %i.dv, 0
  %or.cond155 = select i1 %.not130, i1 %.not131, i1 false
  %.not132 = icmp eq i32 %i.dr, %i.dq
  %or.cond156 = select i1 %or.cond155, i1 %.not132, i1 false
  br i1 %or.cond156, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  store i32 0, ptr %i.c, align 8, !tbaa !9
  %.pre162 = load i32, ptr %5, align 4, !tbaa !4
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.ar
  %i.ea = phi i32 [ %.pre162, %bb.at ], [ %i.dw, %bb.ar ]
  %i.eb = icmp eq i32 %i.ea, 4
  br i1 %i.eb, label %bb.av, label %.thread180

bb.av:                                            ; preds = %bb.au
  store i32 2, ptr %5, align 4, !tbaa !4
  br label %.thread180

.thread180:                                       ; preds = %bb.av, %bb.au, %LzmaDec_UpdateWithUncompressed.exit
  %.3106.jt0 = phi ptr [ %i.cp, %LzmaDec_UpdateWithUncompressed.exit ], [ %i.dn, %bb.au ], [ %i.dn, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %.backedge

bb.aw:                                            ; preds = %bb.ab, %bb.ae, %bb.aq, %bb.as, %bb.ap, %bb.am, %bb.ak, %bb.x
  %.8.jt1 = phi i32 [ 0, %bb.x ], [ 1, %bb.as ], [ 0, %bb.aq ], [ 1, %bb.ak ], [ 1, %bb.am ], [ %i.dl, %bb.ap ], [ 1, %bb.ae ], [ 1, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %.thread151

.backedge:                                        ; preds = %.thread180, %.thread174
  %.4107.jt0 = phi ptr [ %.3106.jt0, %.thread180 ], [ %i.z, %.thread174 ]
  %6 = load i32, ptr %i.c, align 8, !tbaa !9      ; 2 uses
  %.not = icmp eq i32 %6, 8
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !28

._crit_edge:                                      ; preds = %.backedge, %bb.a
  store i32 1, ptr %5, align 4, !tbaa !4
  br label %.thread151

.thread151:                                       ; preds = %bb.b, %bb.aw, %bb.g, %bb.d, %._crit_edge
  %.10 = phi i32 [ 0, %bb.g ], [ 0, %._crit_edge ], [ 0, %bb.d ], [ %.8.jt1, %bb.aw ], [ 1, %bb.b ]
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
  %.047 = phi i64 [ %i.b, %bb.a ], [ %i.x, %bb.e ] ; 3 uses
  %.046 = phi i64 [ %i.c, %bb.a ], [ %i.z, %bb.e ] ; 2 uses
  %.044 = phi ptr [ %1, %bb.a ], [ %i.y, %bb.e ]  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i64 %.046, ptr %i.a, align 8, !tbaa !20
  %i.g = load i64, ptr %i.d, align 8, !tbaa !21   ; 2 uses
  %i.h = load i64, ptr %i.e, align 8, !tbaa !35   ; 3 uses
  %i.i = icmp eq i64 %i.g, %i.h
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %i.d, align 8, !tbaa !21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = phi i64 [ 0, %bb.c ], [ %i.g, %bb.b ]    ; 5 uses
  %i.k = sub i64 %i.h, %i.j
  %i.l = icmp ugt i64 %.047, %i.k                 ; 2 uses
  %i.m = add i64 %i.j, %.047
  %.045 = select i1 %i.l, i64 %i.h, i64 %i.m
  %.043 = select i1 %i.l, i32 0, i32 %5
  %i.n = call i32 @Lzma2Dec_DecodeToDic(ptr noundef nonnull %0, i64 noundef %.045, ptr noundef %.048, ptr noundef nonnull %i.a, i32 noundef %.043, ptr noundef %6) ; 2 uses
  %i.o = load i64, ptr %i.a, align 8, !tbaa !20   ; 3 uses
  %i.p = load i64, ptr %4, align 8, !tbaa !20
  %i.q = add i64 %i.p, %i.o
  store i64 %i.q, ptr %4, align 8, !tbaa !20
  %i.r = load i64, ptr %i.d, align 8, !tbaa !21   ; 2 uses
  %i.s = sub i64 %i.r, %i.j                       ; 4 uses
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !36
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.044, ptr align 1 %i.u, i64 %i.s, i1 false)
  %i.v = load i64, ptr %2, align 8, !tbaa !20
  %i.w = add i64 %i.v, %i.s
  store i64 %i.w, ptr %2, align 8, !tbaa !20
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.x = sub i64 %.047, %i.s                      ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.044, i64 %i.s
  %i.z = sub i64 %.046, %i.o
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
  store i32 0, ptr %6, align 4, !tbaa !4
  store ptr %0, ptr %i.d, align 8, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 56
  store i64 %i.b, ptr %i.f, align 8, !tbaa !35
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
  %.not33 = icmp eq i32 %i.q, 0
  br i1 %.not33, label %bb.e, label %Lzma2Dec_GetOldProps.exit

bb.e:                                             ; preds = %bb.d
  store i64 %i.c, ptr %3, align 8, !tbaa !20
  %i.r = call i32 @Lzma2Dec_DecodeToDic(ptr noundef nonnull %8, i64 noundef %i.b, ptr noundef %2, ptr noundef nonnull %3, i32 noundef %5, ptr noundef nonnull %6) ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.t = load i64, ptr %i.s, align 8, !tbaa !21
  store i64 %i.t, ptr %1, align 8, !tbaa !20
  %i.u = icmp eq i32 %i.r, 0
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = load i32, ptr %6, align 4, !tbaa !4
  %i.w = icmp eq i32 %i.v, 3
  %spec.select = select i1 %i.w, i32 6, i32 0
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.030 = phi i32 [ %i.r, %bb.e ], [ %spec.select, %bb.f ]
  call void @LzmaDec_FreeProbs(ptr noundef nonnull %8, ptr noundef %7) #4
  br label %Lzma2Dec_GetOldProps.exit

Lzma2Dec_GetOldProps.exit:                        ; preds = %bb.a, %bb.d, %bb.g
  %.2 = phi i32 [ %.030, %bb.g ], [ %i.q, %bb.d ], [ 4, %bb.a ]
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
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = !{!10, !5, i64 144}
!10 = !{!"", !11, i64 0, !5, i64 136, !5, i64 140, !5, i64 144, !6, i64 148, !5, i64 152, !5, i64 156, !5, i64 160}
!11 = !{!"", !12, i64 0, !13, i64 16, !15, i64 24, !15, i64 32, !5, i64 40, !5, i64 44, !16, i64 48, !16, i64 56, !5, i64 64, !5, i64 68, !5, i64 72, !6, i64 76, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !6, i64 112}
!12 = !{!"_CLzmaProps", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!13 = !{!"p1 short", !14, i64 0}
!14 = !{!"any pointer", !6, i64 0}
!15 = !{!"p1 omnipotent char", !14, i64 0}
!16 = !{!"long", !6, i64 0}
!17 = !{!10, !5, i64 152}
!18 = !{!10, !5, i64 156}
!19 = !{!10, !5, i64 160}
!20 = !{!16, !16, i64 0}
!21 = !{!10, !16, i64 48}
!22 = !{!10, !6, i64 148}
!23 = !{!10, !5, i64 140}
!24 = !{!10, !5, i64 136}
!25 = !{!10, !5, i64 8}
!26 = !{!10, !5, i64 0}
!27 = !{!10, !5, i64 4}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{!11, !15, i64 24}
!31 = !{!11, !16, i64 48}
!32 = !{!11, !5, i64 68}
!33 = !{!11, !5, i64 64}
!34 = !{!11, !5, i64 12}
!35 = !{!10, !16, i64 56}
!36 = !{!10, !15, i64 24}
end_hunk_0
