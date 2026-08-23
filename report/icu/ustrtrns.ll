Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/ustrtrns?download=true
inline.NumInlined: 9
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c" 000000000000\1000\00", align 1

; Function Attrs: mustprogress uwtable
define noundef ptr @u_strFromUTF32WithSub_78(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef readonly captures(address) %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef writeonly captures(address_is_null) %6, ptr noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %7, align 4, !tbaa !8
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.ab

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %3, null                     ; 2 uses
  %i.d = icmp ne i32 %4, 0
  %or.cond = and i1 %i.c, %i.d
  %i.e = icmp slt i32 %4, -1
  %or.cond3 = or i1 %i.e, %or.cond
  %i.f = icmp slt i32 %1, 0
  %or.cond5 = or i1 %i.f, %or.cond3
  br i1 %or.cond5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq ptr %0, null                     ; 2 uses
  %i.h = icmp ne i32 %1, 0
  %or.cond7 = and i1 %i.g, %i.h
  %i.i = icmp sgt i32 %5, 1114111
  %or.cond9 = or i1 %or.cond7, %i.i
  %i.j = and i32 %5, -2048
  %i.k = icmp eq i32 %i.j, 55296
  %or.cond116 = or i1 %or.cond9, %i.k
  br i1 %or.cond116, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  store i32 1, ptr %7, align 4, !tbaa !8
  br label %bb.ab

bb.e:                                             ; preds = %bb.c
  %.not107 = icmp eq ptr %6, null                 ; 2 uses
  br i1 %.not107, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %6, align 4, !tbaa !10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.l = zext nneg i32 %1 to i64
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.l
  %i.n = select i1 %i.g, ptr null, ptr %i.m       ; 5 uses
  %i.o = icmp slt i32 %4, 0
  br i1 %i.o, label %.preheader, label %bb.k

.preheader:                                       ; preds = %bb.g
  %i.p = load i32, ptr %3, align 4, !tbaa !10     ; 2 uses
  %.not110134 = icmp eq i32 %i.p, 0
  br i1 %.not110134, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.j
  %indvar = phi i64 [ %indvar.next, %bb.j ], [ 0, %.preheader ] ; 2 uses
  %i.q = phi i32 [ %i.ac, %bb.j ], [ %i.p, %.preheader ] ; 3 uses
  %.086137 = phi i32 [ %.187, %bb.j ], [ 0, %.preheader ] ; 3 uses
  %.088136 = phi ptr [ %.189, %bb.j ], [ %0, %.preheader ] ; 5 uses
  %.097135 = phi ptr [ %i.x, %bb.j ], [ %3, %.preheader ] ; 2 uses
  %i.r = icmp ult i32 %i.q, 55296
  %i.s = and i32 %i.q, -8192
  %i.t = icmp eq i32 %i.s, 57344
  %or.cond118 = or i1 %i.r, %i.t
  br i1 %or.cond118, label %.critedge11, label %.critedge.preheader

.critedge.preheader:                              ; preds = %.lr.ph
  %i.u = shl i64 %indvar, 2
  %i.v = getelementptr i8, ptr %3, i64 %i.u
  %scevgep = getelementptr i8, ptr %i.v, i64 4    ; 2 uses
  %wcslen = tail call i64 @wcslen(ptr %scevgep)
  %i.w = shl i64 %wcslen, 2
  %scevgep180 = getelementptr i8, ptr %scevgep, i64 %i.w
  br label %.critedge119

.critedge11:                                      ; preds = %.lr.ph
  %i.x = getelementptr inbounds nuw i8, ptr %.097135, i64 4 ; 2 uses
  %i.y = icmp ult ptr %.088136, %i.n
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.critedge11
  %i.z = trunc nuw i32 %i.q to i16
  %i.aa = getelementptr inbounds nuw i8, ptr %.088136, i64 2
  store i16 %i.z, ptr %.088136, align 2, !tbaa !11
  br label %bb.j

bb.i:                                             ; preds = %.critedge11
  %i.ab = add nsw i32 %.086137, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.189 = phi ptr [ %i.aa, %bb.h ], [ %.088136, %bb.i ] ; 2 uses
  %.187 = phi i32 [ %.086137, %bb.h ], [ %i.ab, %bb.i ] ; 2 uses
  %i.ac = load i32, ptr %i.x, align 4, !tbaa !10  ; 2 uses
  %.not110 = icmp eq i32 %i.ac, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not110, label %._crit_edge, label %.lr.ph, !llvm.loop !13

bb.k:                                             ; preds = %bb.g
  %i.ad = zext nneg i32 %4 to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ad
  %i.af = select i1 %i.c, ptr null, ptr %i.ae
  br label %.critedge119

.critedge119:                                     ; preds = %.critedge.preheader, %bb.k
  %.198 = phi ptr [ %.097135, %.critedge.preheader ], [ %3, %bb.k ] ; 3 uses
  %.195 = phi ptr [ %scevgep180, %.critedge.preheader ], [ %i.af, %bb.k ] ; 3 uses
  %.290 = phi ptr [ %.088136, %.critedge.preheader ], [ %0, %bb.k ] ; 3 uses
  %.2 = phi i32 [ %.086137, %.critedge.preheader ], [ 0, %bb.k ] ; 3 uses
  %i.ag = icmp ult ptr %.198, %.195
  br i1 %i.ag, label %.lr.ph163, label %._crit_edge

.lr.ph163:                                        ; preds = %.critedge119
  %i.ah = icmp slt i32 %5, 0
  %i.ai = icmp ult i32 %5, 55296
  %i.aj = and i32 %5, -8192
  %or.cond13 = icmp eq i32 %i.aj, 57344
  %or.cond120 = or i1 %i.ai, %or.cond13
  br i1 %i.ah, label %.lr.ph163.split.us, label %.lr.ph163.split.preheader

.lr.ph163.split.preheader:                        ; preds = %.lr.ph163
  %8 = icmp ugt i32 %5, 65535
  br label %.lr.ph163.split

.lr.ph163.split.us:                               ; preds = %.lr.ph163, %bb.q
  %.3161.us = phi i32 [ %.4.us, %bb.q ], [ %.2, %.lr.ph163 ] ; 4 uses
  %.391160.us = phi ptr [ %.492.us, %bb.q ], [ %.290, %.lr.ph163 ] ; 9 uses
  %.299159.us = phi ptr [ %i.ak, %bb.q ], [ %.198, %.lr.ph163 ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.299159.us, i64 4 ; 2 uses
  %i.al = load i32, ptr %.299159.us, align 4, !tbaa !10 ; 6 uses
  %i.am = icmp ult i32 %i.al, 55296
  %i.an = and i32 %i.al, -8192
  %or.cond13140.us = icmp eq i32 %i.an, 57344
  %or.cond120141.us = or i1 %i.am, %or.cond13140.us
  br i1 %or.cond120141.us, label %bb.n, label %.lr.ph144.us

bb.l:                                             ; preds = %.split.us.us
  %i.ao = lshr i32 %i.al, 10
  %i.ap = trunc nuw nsw i32 %i.ao to i16
  %i.aq = add nuw nsw i16 %i.ap, -10304
  %i.ar = getelementptr inbounds nuw i8, ptr %.391160.us, i64 2
  store i16 %i.aq, ptr %.391160.us, align 2, !tbaa !11
  %i.as = trunc i32 %i.al to i16
  %i.at = and i16 %i.as, 1023
  %i.au = or disjoint i16 %i.at, -9216
  store i16 %i.au, ptr %i.ar, align 2, !tbaa !11
  br label %bb.q

bb.m:                                             ; preds = %.split.us.us
  %i.av = add nsw i32 %.3161.us, 2
  br label %bb.q

bb.n:                                             ; preds = %.lr.ph163.split.us
  %i.aw = icmp ult ptr %.391160.us, %i.n
  br i1 %i.aw, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = add nsw i32 %.3161.us, 1
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ay = trunc nuw i32 %i.al to i16
  %i.az = getelementptr inbounds nuw i8, ptr %.391160.us, i64 2
  store i16 %i.ay, ptr %.391160.us, align 2, !tbaa !11
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.m, %bb.l
  %.492.us = phi ptr [ %i.az, %bb.p ], [ %.391160.us, %bb.o ], [ %i.bc, %bb.l ], [ %.391160.us, %bb.m ] ; 2 uses
  %.4.us = phi i32 [ %.3161.us, %bb.p ], [ %i.ax, %bb.o ], [ %.3161.us, %bb.l ], [ %i.av, %bb.m ] ; 2 uses
  %i.ba = icmp ult ptr %i.ak, %.195
  br i1 %i.ba, label %.lr.ph163.split.us, label %._crit_edge, !llvm.loop !15

.lr.ph144.us:                                     ; preds = %.lr.ph163.split.us
  %i.bb = add i32 %i.al, -65536
  %or.cond15.us.us = icmp ult i32 %i.bb, 1048576
  br i1 %or.cond15.us.us, label %.split.us.us, label %.split149.us

.split.us.us:                                     ; preds = %.lr.ph144.us
  %.not113.us = icmp eq ptr %.391160.us, null
  %i.bc = getelementptr inbounds nuw i8, ptr %.391160.us, i64 4 ; 2 uses
  %.not114.us = icmp ugt ptr %i.bc, %i.n
  %or.cond121.us = select i1 %.not113.us, i1 true, i1 %.not114.us
  br i1 %or.cond121.us, label %bb.m, label %bb.l

.lr.ph163.split:                                  ; preds = %.lr.ph163.split.preheader, %bb.w
  %.0162 = phi i32 [ %.1125, %bb.w ], [ 0, %.lr.ph163.split.preheader ] ; 5 uses
  %.3161 = phi i32 [ %.4, %bb.w ], [ %.2, %.lr.ph163.split.preheader ] ; 4 uses
  %.391160 = phi ptr [ %.492, %bb.w ], [ %.290, %.lr.ph163.split.preheader ] ; 9 uses
  %.299159 = phi ptr [ %i.bd, %bb.w ], [ %.198, %.lr.ph163.split.preheader ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.299159, i64 4 ; 2 uses
  %i.be = load i32, ptr %.299159, align 4, !tbaa !10 ; 6 uses
  %i.bf = icmp ult i32 %i.be, 55296
  %i.bg = and i32 %i.be, -8192
  %or.cond13140 = icmp eq i32 %i.bg, 57344
  %or.cond120141 = or i1 %i.bf, %or.cond13140
  br i1 %or.cond120141, label %bb.r, label %.lr.ph144

.lr.ph144:                                        ; preds = %.lr.ph163.split
  %i.bh = add i32 %i.be, -65536
  %or.cond15.us152 = icmp ult i32 %i.bh, 1048576  ; 2 uses
  br i1 %or.cond120, label %.lr.ph144.split.split.us, label %.lr.ph144.split.split.preheader, !llvm.loop !16

.lr.ph144.split.split.preheader:                  ; preds = %.lr.ph144
  br i1 %or.cond15.us152, label %.split, label %.lr.ph144.split.split

.lr.ph144.split.split.us:                         ; preds = %.lr.ph144
  br i1 %or.cond15.us152, label %.split, label %._crit_edge.split.us

._crit_edge.split.us:                             ; preds = %.lr.ph144.split.split.us
  %i.bi = add nsw i32 %.0162, 1
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge.split.us, %.lr.ph163.split
  %.093.lcssa = phi i32 [ %5, %._crit_edge.split.us ], [ %i.be, %.lr.ph163.split ]
  %.1.lcssa = phi i32 [ %i.bi, %._crit_edge.split.us ], [ %.0162, %.lr.ph163.split ] ; 2 uses
  %i.bj = icmp ult ptr %.391160, %i.n
  br i1 %i.bj, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bk = trunc nuw i32 %.093.lcssa to i16
  %i.bl = getelementptr inbounds nuw i8, ptr %.391160, i64 2
  store i16 %i.bk, ptr %.391160, align 2, !tbaa !11
  br label %bb.w

bb.t:                                             ; preds = %bb.r
  %i.bm = add nsw i32 %.3161, 1
  br label %bb.w

.lr.ph144.split.split:                            ; preds = %.lr.ph144.split.split.preheader, %.lr.ph144.split.split
  %.1143.in = phi i32 [ %.1143, %.lr.ph144.split.split ], [ %.0162, %.lr.ph144.split.split.preheader ]
  %.1143 = add nsw i32 %.1143.in, 1               ; 2 uses
  br i1 %8, label %.split, label %.lr.ph144.split.split, !llvm.loop !17

.split:                                           ; preds = %.lr.ph144.split.split, %.lr.ph144.split.split.preheader, %.lr.ph144.split.split.us
  %.us-phi155 = phi i32 [ %i.be, %.lr.ph144.split.split.us ], [ %i.be, %.lr.ph144.split.split.preheader ], [ %5, %.lr.ph144.split.split ] ; 2 uses
  %.us-phi156 = phi i32 [ %.0162, %.lr.ph144.split.split.us ], [ %.0162, %.lr.ph144.split.split.preheader ], [ %.1143, %.lr.ph144.split.split ] ; 2 uses
  %.not113 = icmp eq ptr %.391160, null
  %i.bn = getelementptr inbounds nuw i8, ptr %.391160, i64 4 ; 2 uses
  %.not114 = icmp ugt ptr %i.bn, %i.n
  %or.cond121 = select i1 %.not113, i1 true, i1 %.not114
  br i1 %or.cond121, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.split
  %i.bo = lshr i32 %.us-phi155, 10
  %i.bp = trunc nuw nsw i32 %i.bo to i16
  %i.bq = add nuw nsw i16 %i.bp, -10304
  %i.br = getelementptr inbounds nuw i8, ptr %.391160, i64 2
  store i16 %i.bq, ptr %.391160, align 2, !tbaa !11
  %i.bs = trunc i32 %.us-phi155 to i16
  %i.bt = and i16 %i.bs, 1023
  %i.bu = or disjoint i16 %i.bt, -9216
  store i16 %i.bu, ptr %i.br, align 2, !tbaa !11
  br label %bb.w

bb.v:                                             ; preds = %.split
  %i.bv = add nsw i32 %.3161, 2
  br label %bb.w

.split149.us:                                     ; preds = %.lr.ph144.us
  store i32 10, ptr %7, align 4, !tbaa !8
  br label %bb.ab

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.s, %bb.t
  %.1125 = phi i32 [ %.1.lcssa, %bb.s ], [ %.1.lcssa, %bb.t ], [ %.us-phi156, %bb.u ], [ %.us-phi156, %bb.v ] ; 2 uses
  %.492 = phi ptr [ %i.bl, %bb.s ], [ %.391160, %bb.t ], [ %i.bn, %bb.u ], [ %.391160, %bb.v ] ; 2 uses
  %.4 = phi i32 [ %.3161, %bb.s ], [ %i.bm, %bb.t ], [ %.3161, %bb.u ], [ %i.bv, %bb.v ] ; 2 uses
  %i.bw = icmp ult ptr %i.bd, %.195
  br i1 %i.bw, label %.lr.ph163.split, label %._crit_edge, !llvm.loop !15

._crit_edge:                                      ; preds = %bb.j, %bb.w, %bb.q, %.preheader, %.critedge119
  %.391.lcssa = phi ptr [ %.290, %.critedge119 ], [ %.492, %bb.w ], [ %0, %.preheader ], [ %.492.us, %bb.q ], [ %.189, %bb.j ]
  %.3.lcssa = phi i32 [ %.2, %.critedge119 ], [ %.4, %bb.w ], [ 0, %.preheader ], [ %.4.us, %bb.q ], [ %.187, %bb.j ]
  %.0.lcssa = phi i32 [ 0, %.critedge119 ], [ %.1125, %bb.w ], [ 0, %.preheader ], [ 0, %bb.q ], [ 0, %bb.j ]
  %i.bx = ptrtoint ptr %.391.lcssa to i64
  %i.by = ptrtoint ptr %0 to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = lshr exact i64 %i.bz, 1
  %i.cb = trunc i64 %i.ca to i32
  %i.cc = add nsw i32 %.3.lcssa, %i.cb            ; 2 uses
  %.not112 = icmp eq ptr %2, null
  br i1 %.not112, label %bb.y, label %bb.x

bb.x:                                             ; preds = %._crit_edge
  store i32 %i.cc, ptr %2, align 4, !tbaa !10
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge
  br i1 %.not107, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i32 %.0.lcssa, ptr %6, align 4, !tbaa !10
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.cd = tail call i32 @u_terminateUChars_78(ptr noundef %0, i32 noundef %1, i32 noundef %i.cc, ptr noundef nonnull %7) ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.a, %bb.aa, %.split149.us, %bb.d
  %.096 = phi ptr [ %0, %bb.aa ], [ null, %bb.d ], [ null, %.split149.us ], [ null, %bb.a ]
  ret ptr %.096
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @u_terminateUChars_78(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define noundef ptr @u_strFromUTF32_78(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef readonly captures(address) %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @u_strFromUTF32WithSub_78(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef -1, ptr noundef null, ptr noundef %5)
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define noundef ptr @u_strToUTF32WithSub_78(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef readonly captures(address) %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef writeonly captures(address_is_null) %6, ptr noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %7, align 4, !tbaa !8
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.ae

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %3, null                     ; 2 uses
  %i.d = icmp ne i32 %4, 0
  %or.cond = and i1 %i.c, %i.d
  %i.e = icmp slt i32 %4, -1
  %or.cond3 = or i1 %i.e, %or.cond
  %i.f = icmp slt i32 %1, 0
  %or.cond5 = or i1 %i.f, %or.cond3
  br i1 %or.cond5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq ptr %0, null                     ; 2 uses
  %i.h = icmp ne i32 %1, 0
  %or.cond7 = and i1 %i.g, %i.h
  %i.i = icmp sgt i32 %5, 1114111
  %or.cond9 = or i1 %or.cond7, %i.i
  %i.j = and i32 %5, -2048
  %i.k = icmp eq i32 %i.j, 55296
  %or.cond104 = or i1 %or.cond9, %i.k
  br i1 %or.cond104, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  store i32 1, ptr %7, align 4, !tbaa !8
  br label %bb.ae

bb.e:                                             ; preds = %bb.c
  %.not96 = icmp eq ptr %6, null                  ; 2 uses
  br i1 %.not96, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %6, align 4, !tbaa !10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.l = zext nneg i32 %1 to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  %i.n = select i1 %i.g, ptr null, ptr %i.m       ; 3 uses
  %i.o = icmp slt i32 %4, 0
  br i1 %i.o, label %.preheader107, label %bb.k

.preheader107:                                    ; preds = %bb.g
  %i.p = load i16, ptr %3, align 2, !tbaa !11     ; 2 uses
  %i.q = zext i16 %i.p to i32                     ; 2 uses
  %.not99111 = icmp eq i16 %i.p, 0                ; 2 uses
  %i.r = and i32 %i.q, 63488
  %.not100112 = icmp eq i32 %i.r, 55296
  %or.cond105113 = or i1 %.not99111, %.not100112
  br i1 %or.cond105113, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader107, %bb.j
  %i.s = phi i32 [ %i.y, %bb.j ], [ %i.q, %.preheader107 ]
  %.073116 = phi i32 [ %.174, %bb.j ], [ 0, %.preheader107 ] ; 2 uses
  %.075115 = phi ptr [ %.176, %bb.j ], [ %0, %.preheader107 ] ; 4 uses
  %.084114 = phi ptr [ %i.t, %bb.j ], [ %3, %.preheader107 ]
  %i.t = getelementptr inbounds nuw i8, ptr %.084114, i64 2 ; 3 uses
  %i.u = icmp ult ptr %.075115, %i.n
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %.075115, i64 4
  store i32 %i.s, ptr %.075115, align 4, !tbaa !10
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.w = add nsw i32 %.073116, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.176 = phi ptr [ %i.v, %bb.h ], [ %.075115, %bb.i ] ; 2 uses
  %.174 = phi i32 [ %.073116, %bb.h ], [ %i.w, %bb.i ] ; 2 uses
  %i.x = load i16, ptr %i.t, align 2, !tbaa !11   ; 2 uses
  %i.y = zext i16 %i.x to i32                     ; 2 uses
  %.not99 = icmp eq i16 %i.x, 0                   ; 2 uses
  %i.z = and i32 %i.y, 63488
  %.not100 = icmp eq i32 %i.z, 55296
  %or.cond105 = or i1 %.not99, %.not100
  br i1 %or.cond105, label %.critedge, label %.lr.ph, !llvm.loop !19

.critedge:                                        ; preds = %bb.j, %.preheader107
  %.084.lcssa = phi ptr [ %3, %.preheader107 ], [ %i.t, %bb.j ] ; 2 uses
  %.075.lcssa = phi ptr [ %0, %.preheader107 ], [ %.176, %bb.j ] ; 2 uses
  %.073.lcssa = phi i32 [ 0, %.preheader107 ], [ %.174, %bb.j ] ; 2 uses
  %.not99.lcssa = phi i1 [ %.not99111, %.preheader107 ], [ %.not99, %bb.j ]
  br i1 %.not99.lcssa, label %._crit_edge, label %.preheader

.preheader:                                       ; preds = %.critedge, %.preheader
  %.081 = phi ptr [ %i.aa, %.preheader ], [ %.084.lcssa, %.critedge ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.081, i64 2 ; 3 uses
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !11
  %.not101 = icmp eq i16 %i.ab, 0
  br i1 %.not101, label %.loopexit, label %.preheader, !llvm.loop !20

bb.k:                                             ; preds = %bb.g
  %i.ac = zext nneg i32 %4 to i64
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.ac
  %i.ae = select i1 %i.c, ptr null, ptr %i.ad
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.k
  %.185 = phi ptr [ %3, %bb.k ], [ %.084.lcssa, %.preheader ] ; 3 uses
  %.182 = phi ptr [ %i.ae, %bb.k ], [ %i.aa, %.preheader ] ; 5 uses
  %.277 = phi ptr [ %0, %bb.k ], [ %.075.lcssa, %.preheader ] ; 3 uses
  %.2 = phi i32 [ 0, %bb.k ], [ %.073.lcssa, %.preheader ] ; 3 uses
  %i.af = icmp ult ptr %.185, %.182
  br i1 %i.af, label %.lr.ph124, label %._crit_edge

.lr.ph124:                                        ; preds = %.loopexit
  %i.ag = icmp slt i32 %5, 0
end_hunk_0
