Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/propsvec?download=true
inline.NumInlined: 10
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UPVecToUTrie2Context = type { ptr, i32, i32, i32 }

; Function Attrs: mustprogress uwtable
define noundef ptr @upvec_open_78(i32 noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !11
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %0, 1
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %1, align 4, !tbaa !11
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.d = add nuw nsw i32 %0, 2                    ; 4 uses
  %i.e = tail call noalias dereferenceable_or_null(32) ptr @uprv_malloc_78(i64 noundef 32) #10 ; 8 uses
  %i.f = shl nuw nsw i32 %i.d, 14
  %i.g = zext nneg i32 %i.f to i64
  %i.h = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.g) #10 ; 7 uses
  %i.i = icmp eq ptr %i.e, null
  %i.j = icmp eq ptr %i.h, null
  %or.cond = select i1 %i.i, i1 true, i1 %i.j
  br i1 %or.cond, label %bb.e, label %.loopexit.loopexit

bb.e:                                             ; preds = %bb.d
  tail call void @uprv_free_78(ptr noundef %i.e)
  tail call void @uprv_free_78(ptr noundef %i.h)
  store i32 7, ptr %1, align 4, !tbaa !11
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store ptr %i.h, ptr %i.e, align 8, !tbaa !15
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 %i.d, ptr %i.l, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 4096, ptr %i.m, align 4, !tbaa !17
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i32 3, ptr %i.n, align 8, !tbaa !18
  %i.o = mul nuw nsw i32 %i.d, 12
  %i.p = zext nneg i32 %i.o to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.h, i8 0, i64 %i.p, i1 false)
  store i32 0, ptr %i.h, align 4, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 1114112, ptr %i.q, align 4, !tbaa !19
  %i.r = zext nneg i32 %i.d to i64                ; 2 uses
  %.035 = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.r ; 3 uses
  store i32 1114112, ptr %.035, align 4, !tbaa !19
  %i.s = getelementptr inbounds nuw i8, ptr %.035, i64 4
  store i32 1114113, ptr %i.s, align 4, !tbaa !19
  %.035.1 = getelementptr inbounds nuw [4 x i8], ptr %.035, i64 %i.r ; 2 uses
  store i32 1114113, ptr %.035.1, align 4, !tbaa !19
  %i.t = getelementptr inbounds nuw i8, ptr %.035.1, i64 4
  store i32 1114114, ptr %i.t, align 4, !tbaa !19
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.a, %bb.e, %bb.c
  %.036 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.e ], [ %i.e, %.loopexit.loopexit ]
  ret ptr %.036
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: allocsize(0)
declare noalias ptr @uprv_malloc_78(i64 noundef) local_unnamed_addr #2

declare void @uprv_free_78(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @upvec_close_78(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  tail call void @uprv_free_78(ptr noundef %i.a)
  tail call void @uprv_free_78(ptr noundef nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @upvec_setValue_78(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %6, align 4, !tbaa !11
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %0, null
  %i.d = icmp slt i32 %1, 0
  %or.cond = or i1 %i.c, %i.d
  br i1 %or.cond, label %.critedge.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp sgt i32 %1, %2
  %i.f = icmp sgt i32 %2, 1114113
  %or.cond4 = or i1 %i.e, %i.f
  %i.g = icmp slt i32 %3, 0
  %or.cond6 = or i1 %or.cond4, %i.g
  br i1 %or.cond6, label %.critedge.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !16   ; 8 uses
  %i.j = add nsw i32 %i.i, -2
  %.not145 = icmp slt i32 %3, %i.j
  br i1 %.not145, label %bb.e, label %.critedge.sink.split

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i8, ptr %i.k, align 8, !tbaa !20
  %.not146 = icmp eq i8 %i.l, 0
  br i1 %.not146, label %bb.f, label %.critedge.sink.split

bb.f:                                             ; preds = %bb.e
  %i.m = add nuw nsw i32 %2, 1                    ; 3 uses
  %i.n = add nuw nsw i32 %3, 2                    ; 3 uses
  %i.o = and i32 %5, %4                           ; 4 uses
  %i.p = tail call fastcc noundef ptr @_ZL8_findRowP13UPropsVectorsi(ptr noundef nonnull %0, i32 noundef %1) ; 5 uses
  %i.q = tail call fastcc noundef ptr @_ZL8_findRowP13UPropsVectorsi(ptr noundef nonnull %0, i32 noundef %2) ; 5 uses
  %i.r = load i32, ptr %i.p, align 4, !tbaa !19
  %.not147 = icmp eq i32 %1, %i.r
  br i1 %.not147, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = zext nneg i32 %i.n to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !19
  %i.v = and i32 %i.u, %5
  %i.w = icmp ne i32 %i.o, %i.v
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.x = phi i1 [ false, %bb.f ], [ %i.w, %bb.g ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !19
  %.not148 = icmp eq i32 %i.m, %i.z
  br i1 %.not148, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = zext nneg i32 %i.n to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !19
  %i.ad = and i32 %i.ac, %5
  %i.ae = icmp ne i32 %i.o, %i.ad
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.af = phi i1 [ false, %bb.h ], [ %i.ae, %bb.i ] ; 3 uses
  %or.cond8 = select i1 %i.x, i1 true, i1 %i.af
  br i1 %or.cond8, label %bb.k, label %._crit_edge152

._crit_edge152:                                   ; preds = %bb.j
  %.pre153 = zext nneg i32 %i.i to i64
  br label %bb.v

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !18 ; 3 uses
  %i.ai = zext i1 %i.x to i32
  %i.aj = zext i1 %i.af to i32                    ; 2 uses
  %i.ak = add nuw nsw i32 %i.aj, %i.ai
  %i.al = add i32 %i.ak, %i.ah                    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !17 ; 3 uses
  %i.ao = icmp sgt i32 %i.al, %i.an
  br i1 %i.ao, label %bb.l, label %._crit_edge

._crit_edge:                                      ; preds = %bb.k
  %.pre = load ptr, ptr %0, align 8, !tbaa !15
  %.pre151 = zext nneg i32 %i.i to i64
  br label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.ap = icmp slt i32 %i.an, 65536
  br i1 %i.ap, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = icmp samesign ult i32 %i.an, 1114114
  br i1 %i.aq, label %bb.n, label %.critedge.sink.split

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0 = phi i32 [ 65536, %bb.l ], [ 1114114, %bb.m ] ; 2 uses
  %i.ar = shl i32 %i.i, 2
  %i.as = mul i32 %i.ar, %.0
  %7 = zext nneg i32 %i.as to i64
  %i.at = tail call noalias ptr @uprv_malloc_78(i64 noundef %7) #10 ; 6 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %.critedge.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = load ptr, ptr %0, align 8, !tbaa !15    ; 3 uses
  %i.aw = sext i32 %i.ah to i64
  %8 = zext nneg i32 %i.i to i64                  ; 2 uses
  %i.ax = shl nuw nsw i64 %8, 2
  %i.ay = mul i64 %i.ax, %i.aw
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.at, ptr align 4 %i.av, i64 %i.ay, i1 false)
  %i.az = ptrtoint ptr %i.p to i64
  %i.ba = ptrtoint ptr %i.av to i64               ; 2 uses
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = getelementptr inbounds i8, ptr %i.at, i64 %i.bb
  %i.bd = ptrtoint ptr %i.q to i64
  %i.be = sub i64 %i.bd, %i.ba
  %i.bf = getelementptr inbounds i8, ptr %i.at, i64 %i.be
  tail call void @uprv_free_78(ptr noundef %i.av)
  store ptr %i.at, ptr %0, align 8, !tbaa !15
  store i32 %.0, ptr %i.am, align 4, !tbaa !17
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge, %bb.o
  %.pre-phi = phi i64 [ %.pre151, %._crit_edge ], [ %8, %bb.o ] ; 6 uses
  %i.bg = phi ptr [ %.pre, %._crit_edge ], [ %i.at, %bb.o ]
  %.1134 = phi ptr [ %i.p, %._crit_edge ], [ %i.bc, %bb.o ] ; 5 uses
  %.1132 = phi ptr [ %i.q, %._crit_edge ], [ %i.bf, %bb.o ] ; 4 uses
  %i.bh = mul nsw i32 %i.ah, %i.i
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bi
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.1132, i64 %.pre-phi ; 3 uses
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm                    ; 2 uses
  %i.bo = lshr exact i64 %i.bn, 2
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = icmp sgt i32 %i.bp, 0
  br i1 %i.bq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.br = select i1 %i.x, i32 2, i32 1
  %i.bs = add nuw nsw i32 %i.br, %i.aj
  %i.bt = mul nsw i32 %i.bs, %i.i
  %9 = zext nneg i32 %i.bt to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %.1132, i64 %9
  %i.bv = and i64 %i.bn, 4294967295
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bu, ptr align 4 %i.bk, i64 %i.bv, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  store i32 %i.al, ptr %i.ag, align 8, !tbaa !18
  br i1 %i.x, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bw = ptrtoint ptr %.1132 to i64
  %i.bx = ptrtoint ptr %.1134 to i64
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = lshr exact i64 %i.by, 2
  %i.ca = trunc i64 %i.bz to i32
  %i.cb = add i32 %i.i, %i.ca
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %.1134, i64 %.pre-phi ; 3 uses
  %i.cd = sext i32 %i.cb to i64
  %i.ce = shl nsw i64 %i.cd, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.cc, ptr align 4 %.1134, i64 %i.ce, i1 false)
  store i32 %1, ptr %i.cc, align 4, !tbaa !19
  %i.cf = getelementptr inbounds nuw i8, ptr %.1134, i64 4
  store i32 %1, ptr %i.cf, align 4, !tbaa !19
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.2135 = phi ptr [ %i.cc, %bb.s ], [ %.1134, %bb.r ] ; 2 uses
  %.2 = phi ptr [ %i.bk, %bb.s ], [ %.1132, %bb.r ] ; 5 uses
  br i1 %i.af, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.2, i64 %.pre-phi ; 2 uses
  %i.ch = shl nuw nsw i64 %.pre-phi, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.cg, ptr align 4 %.2, i64 %i.ch, i1 false)
  store i32 %i.m, ptr %i.cg, align 4, !tbaa !19
  %i.ci = getelementptr inbounds nuw i8, ptr %.2, i64 4
  store i32 %i.m, ptr %i.ci, align 4, !tbaa !19
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge152, %bb.u, %bb.t
  %.pre-phi154 = phi i64 [ %.pre153, %._crit_edge152 ], [ %.pre-phi, %bb.u ], [ %.pre-phi, %bb.t ] ; 2 uses
  %.4137 = phi ptr [ %i.p, %._crit_edge152 ], [ %.2135, %bb.u ], [ %.2135, %bb.t ] ; 2 uses
  %.4 = phi ptr [ %i.q, %._crit_edge152 ], [ %.2, %bb.u ], [ %.2, %bb.t ] ; 3 uses
  %i.cj = load ptr, ptr %0, align 8, !tbaa !15
  %i.ck = ptrtoint ptr %.4 to i64
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = ashr exact i64 %i.cm, 2
  %i.co = sdiv i64 %i.cn, %.pre-phi154
  %i.cp = trunc i64 %i.co to i32
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.cp, ptr %i.cq, align 4, !tbaa !21
  %i.cr = zext nneg i32 %i.n to i64               ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %.4137, i64 %i.cr ; 3 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %.4, i64 %i.cr
  %i.cu = xor i32 %5, -1                          ; 2 uses
  %i.cv = load i32, ptr %i.cs, align 4, !tbaa !19
  %i.cw = and i32 %i.cv, %i.cu
  %i.cx = or disjoint i32 %i.cw, %i.o
  store i32 %i.cx, ptr %i.cs, align 4, !tbaa !19
  %i.cy = icmp eq ptr %.4137, %.4
  br i1 %i.cy, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.v, %.lr.ph
  %.5150 = phi ptr [ %i.cz, %.lr.ph ], [ %i.cs, %bb.v ]
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %.5150, i64 %.pre-phi154 ; 4 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !19
  %i.db = and i32 %i.da, %i.cu
  %i.dc = or disjoint i32 %i.db, %i.o
  store i32 %i.dc, ptr %i.cz, align 4, !tbaa !19
  %i.dd = icmp eq ptr %i.cz, %i.ct
  br i1 %i.dd, label %.critedge, label %.lr.ph, !llvm.loop !26

.critedge.sink.split:                             ; preds = %bb.n, %bb.m, %bb.e, %bb.b, %bb.c, %bb.d
  %.sink = phi i32 [ 5, %bb.m ], [ 30, %bb.e ], [ 1, %bb.b ], [ 1, %bb.d ], [ 1, %bb.c ], [ 7, %bb.n ]
  store i32 %.sink, ptr %6, align 4, !tbaa !11
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.critedge.sink.split, %bb.v, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef ptr @_ZL8_findRowP13UPropsVectorsi(ptr nofree noundef captures(none) %0, i32 noundef range(i32 0, -2147483648) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !16   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !18   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 7 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !21   ; 4 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !15     ; 5 uses
  %i.h = mul nsw i32 %i.f, %i.b
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.i ; 4 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !19
  %.not = icmp slt i32 %1, %i.k
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !19
  %i.n = icmp slt i32 %1, %i.m
  br i1 %i.n, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = sext i32 %i.b to i64                     ; 3 uses
  %i.p = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.o ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !19
  %i.s = icmp slt i32 %1, %i.r
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = add nsw i32 %i.f, 1
  store i32 %i.t, ptr %i.e, align 4, !tbaa !21
  br label %bb.q

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.o ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !19   ; 2 uses
  %i.x = icmp slt i32 %1, %i.w
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = add nsw i32 %i.f, 2
  store i32 %i.y, ptr %i.e, align 4, !tbaa !21
  br label %bb.q

bb.g:                                             ; preds = %bb.e
  %i.z = sub nsw i32 %1, %i.w
  %i.aa = icmp slt i32 %i.z, 10
  br i1 %i.aa, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.ab = add nsw i32 %i.f, 2
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %.062 = phi ptr [ %i.u, %bb.h ], [ %i.ad, %bb.i ]
  %.0 = phi i32 [ %i.ab, %bb.h ], [ %i.ac, %bb.i ]
  %i.ac = add nsw i32 %.0, 1                      ; 2 uses
  %i.ad = getelementptr inbounds [4 x i8], ptr %.062, i64 %i.o ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !19
  %.not66 = icmp slt i32 %1, %i.af
  br i1 %.not66, label %bb.j, label %bb.i, !llvm.loop !0

bb.j:                                             ; preds = %bb.i
  store i32 %i.ac, ptr %i.e, align 4, !tbaa !21
  br label %bb.q

bb.k:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !19
  %i.ai = icmp slt i32 %1, %i.ah
  br i1 %i.ai, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.e, align 4, !tbaa !21
  br label %bb.q

bb.m:                                             ; preds = %bb.k, %bb.g
  %i.aj = icmp sgt i32 %i.d, 1
  br i1 %i.aj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.m, %bb.p
  %.05972 = phi i32 [ %.1, %bb.p ], [ %i.d, %bb.m ] ; 2 uses
  %.06071 = phi i32 [ %.161, %bb.p ], [ 0, %bb.m ] ; 2 uses
  %i.ak = add nuw nsw i32 %.05972, %.06071
  %i.al = lshr i32 %i.ak, 1                       ; 4 uses
  %i.am = mul nsw i32 %i.al, %i.b
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.an ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !19
  %i.aq = icmp slt i32 %1, %i.ap
  br i1 %i.aq, label %bb.p, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !19
  %i.at = icmp slt i32 %1, %i.as
  br i1 %i.at, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 %i.al, ptr %i.e, align 4, !tbaa !21
  br label %bb.q

bb.p:                                             ; preds = %bb.n, %.lr.ph
  %.161 = phi i32 [ %.06071, %.lr.ph ], [ %i.al, %bb.n ] ; 3 uses
  %.1 = phi i32 [ %i.al, %.lr.ph ], [ %.05972, %bb.n ] ; 2 uses
  %i.au = add nsw i32 %.1, -1
  %i.av = icmp slt i32 %.161, %i.au
  br i1 %i.av, label %.lr.ph, label %._crit_edge, !llvm.loop !1

._crit_edge:                                      ; preds = %bb.p, %bb.m
  %.060.lcssa = phi i32 [ 0, %bb.m ], [ %.161, %bb.p ] ; 2 uses
  store i32 %.060.lcssa, ptr %i.e, align 4, !tbaa !21
  %i.aw = mul nsw i32 %.060.lcssa, %i.b
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.ax
  br label %bb.q

bb.q:                                             ; preds = %bb.b, %._crit_edge, %bb.o, %bb.l, %bb.j, %bb.f, %bb.d
  %.063 = phi ptr [ %i.g, %bb.l ], [ %i.p, %bb.d ], [ %i.u, %bb.f ], [ %i.ad, %bb.j ], [ %i.ao, %bb.o ], [ %i.ay, %._crit_edge ], [ %i.j, %bb.b ]
  ret ptr %.063
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @upvec_getValue_78(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !20
  %i.c = icmp ne i8 %i.b, 0
  %i.d = icmp ugt i32 %1, 1114113
  %or.cond3 = or i1 %i.d, %i.c
  %i.e = icmp slt i32 %2, 0
  %or.cond5 = or i1 %i.e, %or.cond3
  br i1 %or.cond5, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !16   ; 5 uses
  %i.h = add nsw i32 %i.g, -2
  %.not = icmp slt i32 %2, %i.h
  br i1 %.not, label %bb.c, label %bb.s

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !18   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 7 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !21   ; 4 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !15     ; 5 uses
  %i.n = mul nsw i32 %i.l, %i.g
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.o ; 4 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !19
  %.not.i = icmp slt i32 %1, %i.q
  br i1 %.not.i, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !19
  %i.t = icmp slt i32 %1, %i.s
  br i1 %i.t, label %_ZL8_findRowP13UPropsVectorsi.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %3 = zext nneg i32 %i.g to i64                  ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %3 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !19
  %i.x = icmp slt i32 %1, %i.w
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = add nsw i32 %i.l, 1
  store i32 %i.y, ptr %i.k, align 4, !tbaa !21
  br label %_ZL8_findRowP13UPropsVectorsi.exit

bb.g:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %3 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !19 ; 2 uses
  %i.ac = icmp slt i32 %1, %i.ab
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ad = add nsw i32 %i.l, 2
  store i32 %i.ad, ptr %i.k, align 4, !tbaa !21
  br label %_ZL8_findRowP13UPropsVectorsi.exit

bb.i:                                             ; preds = %bb.g
  %i.ae = sub nsw i32 %1, %i.ab
  %i.af = icmp slt i32 %i.ae, 10
  br i1 %i.af, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.ag = add nsw i32 %i.l, 2
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %.062.i = phi ptr [ %i.z, %bb.j ], [ %i.ai, %bb.k ]
  %.0.i = phi i32 [ %i.ag, %bb.j ], [ %i.ah, %bb.k ]
  %i.ah = add nsw i32 %.0.i, 1                    ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.062.i, i64 %3 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !19
  %.not66.i = icmp slt i32 %1, %i.ak
  br i1 %.not66.i, label %bb.l, label %bb.k, !llvm.loop !0

bb.l:                                             ; preds = %bb.k
  store i32 %i.ah, ptr %i.k, align 4, !tbaa !21
  br label %_ZL8_findRowP13UPropsVectorsi.exit

bb.m:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !19
  %i.an = icmp slt i32 %1, %i.am
  br i1 %i.an, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.k, align 4, !tbaa !21
  br label %_ZL8_findRowP13UPropsVectorsi.exit

bb.o:                                             ; preds = %bb.m, %bb.i
  %i.ao = icmp sgt i32 %i.j, 1
  br i1 %i.ao, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.o, %bb.r
  %.05972.i = phi i32 [ %.1.i, %bb.r ], [ %i.j, %bb.o ] ; 2 uses
  %.06071.i = phi i32 [ %.161.i, %bb.r ], [ 0, %bb.o ] ; 2 uses
  %i.ap = add nuw nsw i32 %.06071.i, %.05972.i
  %i.aq = lshr i32 %i.ap, 1                       ; 4 uses
  %i.ar = mul nuw nsw i32 %i.aq, %i.g
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.as ; 3 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !19
  %i.av = icmp slt i32 %1, %i.au
  br i1 %i.av, label %bb.r, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !19
  %i.ay = icmp slt i32 %1, %i.ax
  br i1 %i.ay, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 %i.aq, ptr %i.k, align 4, !tbaa !21
  br label %_ZL8_findRowP13UPropsVectorsi.exit

bb.r:                                             ; preds = %bb.p, %.lr.ph.i
  %.161.i = phi i32 [ %.06071.i, %.lr.ph.i ], [ %i.aq, %bb.p ] ; 3 uses
  %.1.i = phi i32 [ %i.aq, %.lr.ph.i ], [ %.05972.i, %bb.p ] ; 2 uses
  %i.az = add nsw i32 %.1.i, -1
  %i.ba = icmp slt i32 %.161.i, %i.az
  br i1 %i.ba, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1

._crit_edge.i:                                    ; preds = %bb.r, %bb.o
  %.060.lcssa.i = phi i32 [ 0, %bb.o ], [ %.161.i, %bb.r ] ; 2 uses
  store i32 %.060.lcssa.i, ptr %i.k, align 4, !tbaa !21
  %i.bb = mul nsw i32 %.060.lcssa.i, %i.g
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.bc
  br label %_ZL8_findRowP13UPropsVectorsi.exit

_ZL8_findRowP13UPropsVectorsi.exit:               ; preds = %bb.d, %bb.f, %bb.h, %bb.l, %bb.n, %bb.q, %._crit_edge.i
  %.063.i = phi ptr [ %i.m, %bb.n ], [ %i.u, %bb.f ], [ %i.z, %bb.h ], [ %i.ai, %bb.l ], [ %i.at, %bb.q ], [ %i.bd, %._crit_edge.i ], [ %i.p, %bb.d ]
  %i.be = zext nneg i32 %2 to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.063.i, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !19
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %bb.b, %_ZL8_findRowP13UPropsVectorsi.exit
  %.0 = phi i32 [ %i.bh, %_ZL8_findRowP13UPropsVectorsi.exit ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define ptr @upvec_getRow_78(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !20
  %i.c = icmp ne i8 %i.b, 0
  %i.d = icmp slt i32 %1, 0
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !18
  %.not = icmp slt i32 %1, %i.f
  br i1 %.not, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !16
  %i.i = load ptr, ptr %0, align 8, !tbaa !15
  %i.j = mul nsw i32 %i.h, %1
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.k ; 3 uses
  %.not19 = icmp eq ptr %2, null
  br i1 %.not19, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load i32, ptr %i.l, align 4, !tbaa !19
  store i32 %i.m, ptr %2, align 4, !tbaa !19
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not20 = icmp eq ptr %3, null
  br i1 %.not20, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !19
  %i.p = add nsw i32 %i.o, -1
  store i32 %i.p, ptr %3, align 4, !tbaa !19
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.b, %bb.g
  %.0 = phi ptr [ %i.q, %bb.g ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define void @upvec_compact_78(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !11
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %3, align 4, !tbaa !11
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !20
  %.not90 = icmp eq i8 %i.e, 0
  br i1 %.not90, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.d, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !18   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !16   ; 5 uses
  %i.j = add nsw i32 %i.i, -2                     ; 10 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !15
  %i.l = shl nsw i32 %i.i, 2
  tail call void @uprv_sortArray_78(ptr noundef %i.k, i32 noundef %i.g, i32 noundef %i.l, ptr noundef nonnull @_ZL17upvec_compareRowsPKvS0_S0_, ptr noundef nonnull %0, i8 noundef signext 0, ptr noundef nonnull %3)
  %i.m = load i32, ptr %3, align 4, !tbaa !11
  %i.n = icmp slt i32 %i.m, 1
  br i1 %i.n, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  %i.p = sub nsw i32 2, %i.i                      ; 4 uses
  %i.q = icmp sgt i32 %i.g, 0                     ; 2 uses
  %i.r = sext i32 %i.j to i64                     ; 2 uses
  %i.s = sub nsw i64 0, %i.r                      ; 2 uses
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.t = shl nsw i32 %i.j, 2
  %i.u = sext i32 %i.t to i64
  %i.v = sext i32 %i.i to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.l
  %.0104 = phi i32 [ %i.p, %.lr.ph ], [ %.1, %bb.l ] ; 3 uses
  %.082103 = phi i32 [ 0, %.lr.ph ], [ %i.ag, %bb.l ]
  %.084102 = phi ptr [ %i.o, %.lr.ph ], [ %i.af, %bb.l ] ; 5 uses
  %i.w = load i32, ptr %.084102, align 4, !tbaa !19 ; 3 uses
  %i.x = icmp slt i32 %.0104, 0
  br i1 %i.x, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %.084102, i64 8
  %i.z = getelementptr inbounds [4 x i8], ptr %.084102, i64 %i.s
  %bcmp97 = tail call i32 @bcmp(ptr nonnull %i.y, ptr nonnull %i.z, i64 %i.u)
  %.not95 = icmp eq i32 %bcmp97, 0
  br i1 %.not95, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aa = add nsw i32 %.0104, %i.j
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.1 = phi i32 [ %i.aa, %bb.i ], [ %.0104, %bb.h ] ; 3 uses
  %i.ab = icmp sgt i32 %i.w, 1114111
  br i1 %i.ab, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %.084102, i64 8
  tail call void %1(ptr noundef %2, i32 noundef %i.w, i32 noundef %i.w, i32 noundef %.1, ptr noundef nonnull %i.ac, i32 noundef %i.j, ptr noundef nonnull %3)
end_hunk_0
