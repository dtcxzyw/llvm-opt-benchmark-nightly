Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/base64?download=true
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@Base64 = internal constant [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\00", align 16

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden i32 @hwloc_encode_to_base64(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i64 %1, 2
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.04255 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.04454 = phi ptr [ %i.t, %bb.b ], [ %0, %bb.a ] ; 4 uses
  %.04653 = phi i64 [ %i.s, %bb.b ], [ %1, %bb.a ]
  %i.b = add i64 %.04255, 4                       ; 3 uses
  %i.c = icmp ugt i64 %i.b, %3
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = getelementptr inbounds nuw i8, ptr %.04454, i64 2
  %i.e = load i8, ptr %i.d, align 1, !tbaa !11    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.04454, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !11    ; 2 uses
  %i.h = load i8, ptr %.04454, align 1, !tbaa !11 ; 2 uses
  %i.i = and i8 %i.e, 63
  %i.j = shl i8 %i.g, 2
  %i.k = and i8 %i.j, 60
  %i.l = lshr i8 %i.e, 6
  %i.m = or disjoint i8 %i.l, %i.k
  %i.n = shl i8 %i.h, 4
  %i.o = and i8 %i.n, 48
  %i.p = lshr i8 %i.g, 4
  %i.q = or disjoint i8 %i.p, %i.o
  %i.r = lshr i8 %i.h, 2
  %i.s = add i64 %.04653, -3                      ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.04454, i64 3 ; 2 uses
  %i.u = zext nneg i8 %i.r to i64
  %i.v = getelementptr inbounds nuw i8, ptr @Base64, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !11
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 %.04255 ; 4 uses
  store i8 %i.w, ptr %i.x, align 1, !tbaa !11
  %i.y = zext nneg i8 %i.q to i64
  %i.z = getelementptr inbounds nuw i8, ptr @Base64, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !11
  %i.ab = getelementptr i8, ptr %i.x, i64 1
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !11
  %i.ac = zext nneg i8 %i.m to i64
  %i.ad = getelementptr inbounds nuw i8, ptr @Base64, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !11
  %i.af = getelementptr i8, ptr %i.x, i64 2
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !11
  %i.ag = zext nneg i8 %i.i to i64
  %i.ah = getelementptr inbounds nuw i8, ptr @Base64, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !11
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 3
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !11
  %i.ak = icmp ugt i64 %i.s, 2
  br i1 %i.ak, label %.lr.ph, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.046.lcssa = phi i64 [ %1, %bb.a ], [ %i.s, %bb.b ] ; 3 uses
  %.044.lcssa = phi ptr [ %0, %bb.a ], [ %i.t, %bb.b ] ; 2 uses
  %.042.lcssa = phi i64 [ 0, %bb.a ], [ %i.b, %bb.b ] ; 4 uses
  %.not = icmp eq i64 %.046.lcssa, 0
  br i1 %.not, label %bb.g, label %iter.check.new

iter.check.new:                                   ; preds = %._crit_edge
  %i.al = load i8, ptr %.044.lcssa, align 1, !tbaa !11 ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %.046.lcssa, 1
  br i1 %niter.ncmp.3.not, label %.loopexit96, label %bb.c

bb.c:                                             ; preds = %iter.check.new
  %i.am = getelementptr inbounds nuw i8, ptr %.044.lcssa, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !11
  br label %.loopexit96

.loopexit96:                                      ; preds = %bb.c, %iter.check.new
  %.sroa.5.0 = phi i8 [ 0, %iter.check.new ], [ %i.an, %bb.c ] ; 2 uses
  %i.ao = shl i8 %.sroa.5.0, 2
  %i.ap = and i8 %i.ao, 60
  %i.aq = add i64 %.042.lcssa, 4                  ; 2 uses
  %i.ar = icmp ugt i64 %i.aq, %3
  br i1 %i.ar, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.loopexit96
  %i.as = shl i8 %i.al, 4
  %i.at = and i8 %i.as, 48
  %i.au = lshr i8 %.sroa.5.0, 4
  %i.av = or disjoint i8 %i.at, %i.au
  %i.aw = lshr i8 %i.al, 2
  %i.ax = zext nneg i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr @Base64, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !11
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 %.042.lcssa ; 3 uses
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !11
  %i.bb = zext nneg i8 %i.av to i64
  %i.bc = getelementptr inbounds nuw i8, ptr @Base64, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !11
  %i.be = getelementptr i8, ptr %i.ba, i64 1
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !11
  %i.bf = icmp eq i64 %.046.lcssa, 1
  br i1 %i.bf, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bg = zext nneg i8 %i.ap to i64
  %i.bh = getelementptr inbounds nuw i8, ptr @Base64, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 4, !tbaa !11
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sink = phi i8 [ %i.bi, %bb.e ], [ 61, %bb.d ]
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 %.042.lcssa
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  store i8 %.sink, ptr %i.bk, align 1, !tbaa !11
  %i.bl = getelementptr i8, ptr %i.ba, i64 3
  store i8 61, ptr %i.bl, align 1, !tbaa !11
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  %.2 = phi i64 [ %i.aq, %bb.f ], [ %.042.lcssa, %._crit_edge ] ; 3 uses
  %.not48 = icmp ult i64 %.2, %3
  br i1 %.not48, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 %.2
  store i8 0, ptr %i.bm, align 1, !tbaa !11
  %i.bn = trunc i64 %.2 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.g, %.loopexit96, %bb.h
  %.043 = phi i32 [ %i.bn, %bb.h ], [ -1, %bb.g ], [ -1, %.loopexit96 ], [ -1, %.lr.ph ]
  ret i32 %.043
}

; Function Attrs: nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @hwloc_decode_from_base64(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %.not74 = icmp eq ptr %1, null                  ; 5 uses
  br label %.outer.outer

.outer.outer:                                     ; preds = %.outer.outer.backedge, %bb.a
  %.060.ph.ph = phi ptr [ %0, %bb.a ], [ %i.d, %.outer.outer.backedge ]
  %.057.ph.ph = phi i32 [ 0, %bb.a ], [ %.057.ph.ph.be, %.outer.outer.backedge ] ; 9 uses
  %.not83.ph = phi i1 [ true, %bb.a ], [ %.not83.ph.be, %.outer.outer.backedge ]
  %.055.ph.ph = phi i32 [ 0, %bb.a ], [ %.055.ph.ph.be, %.outer.outer.backedge ]
  %i.a = zext i32 %.057.ph.ph to i64              ; 2 uses
  %.not82 = icmp ugt i64 %2, %i.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %i.a
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %.outer.outer
  %.060.ph = phi ptr [ %.060.ph.ph, %.outer.outer ], [ %i.d, %.outer.backedge ]
  %.not83 = phi i1 [ %.not83.ph, %.outer.outer ], [ false, %.outer.backedge ]
  %.055.ph = phi i32 [ %.055.ph.ph, %.outer.outer ], [ 1, %.outer.backedge ] ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.outer, %bb.c
  %.060 = phi ptr [ %i.d, %bb.c ], [ %.060.ph, %.outer ] ; 3 uses
  %i.c = load i8, ptr %.060, align 1, !tbaa !11   ; 4 uses
  %cond = icmp eq i8 %i.c, 0
  br i1 %cond, label %bb.aa, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.060, i64 1 ; 4 uses
  %i.e = tail call ptr @__ctype_b_loc() #4
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19   ; 3 uses
  %i.g = sext i8 %i.c to i64
  %i.h = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !21
  %i.j = and i16 %i.i, 8192
  %.not73 = icmp eq i16 %i.j, 0
  br i1 %.not73, label %bb.d, label %bb.b, !llvm.loop !14

bb.d:                                             ; preds = %bb.c
  %cond92 = icmp eq i8 %i.c, 61
  br i1 %cond92, label %bb.t, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = sext i8 %i.c to i32
  %memchr = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @Base64, i32 %i.k, i64 65) ; 5 uses
  %i.l = icmp eq ptr %memchr, null
  br i1 %i.l, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  switch i32 %.055.ph, label %.unreachabledefault [
    i32 0, label %bb.g
    i32 1, label %bb.j
    i32 2, label %bb.m
    i32 3, label %bb.p
  ]

bb.g:                                             ; preds = %bb.f
  br i1 %.not74, label %.outer.backedge, label %bb.h

.outer.backedge:                                  ; preds = %bb.g, %bb.i
  br label %.outer, !llvm.loop !14

bb.h:                                             ; preds = %bb.g
  br i1 %.not82, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.m = ptrtoint ptr %memchr to i64
  %i.n = trunc i64 %i.m to i8
  %i.o = sub i8 %i.n, ptrtoint (ptr @Base64 to i8)
  %i.p = shl i8 %i.o, 2
  store i8 %i.p, ptr %i.b, align 1, !tbaa !11
  br label %.outer.backedge

bb.j:                                             ; preds = %bb.f
  %.pre = add i32 %.057.ph.ph, 1                  ; 3 uses
  br i1 %.not74, label %.outer.outer.backedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = zext i32 %.pre to i64                    ; 2 uses
  %.not79 = icmp ugt i64 %2, %i.q
  br i1 %.not79, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k
  %i.r = ptrtoint ptr %memchr to i64              ; 2 uses
  %i.s = sub i64 %i.r, ptrtoint (ptr @Base64 to i64)
  %i.t = lshr i64 %i.s, 4
  %i.u = zext i32 %.057.ph.ph to i64
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %i.u ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !11
  %i.x = trunc i64 %i.t to i8
  %i.y = or i8 %i.w, %i.x
  store i8 %i.y, ptr %i.v, align 1, !tbaa !11
  %.tr80 = trunc i64 %i.r to i8
  %i.z = shl i8 %.tr80, 4
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %i.q
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !11
  br label %.outer.outer.backedge

bb.m:                                             ; preds = %bb.f
  %.pre148 = add i32 %.057.ph.ph, 1               ; 3 uses
  br i1 %.not74, label %.outer.outer.backedge, label %bb.n

.outer.outer.backedge:                            ; preds = %bb.m, %bb.j, %bb.o, %bb.l, %bb.s
  %.057.ph.ph.be = phi i32 [ %i.at, %bb.s ], [ %.pre, %bb.l ], [ %.pre148, %bb.o ], [ %.pre, %bb.j ], [ %.pre148, %bb.m ]
  %.not83.ph.be = phi i1 [ true, %bb.s ], [ false, %bb.l ], [ false, %bb.o ], [ false, %bb.j ], [ false, %bb.m ]
  %.055.ph.ph.be = phi i32 [ 0, %bb.s ], [ 2, %bb.l ], [ 3, %bb.o ], [ 2, %bb.j ], [ 3, %bb.m ]
  br label %.outer.outer, !llvm.loop !14

bb.n:                                             ; preds = %bb.m
  %i.ab = zext i32 %.pre148 to i64                ; 2 uses
  %.not77 = icmp ugt i64 %2, %i.ab
  br i1 %.not77, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %bb.n
  %i.ac = ptrtoint ptr %memchr to i64             ; 2 uses
  %i.ad = sub i64 %i.ac, ptrtoint (ptr @Base64 to i64)
  %i.ae = lshr i64 %i.ad, 2
  %i.af = zext i32 %.057.ph.ph to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %i.af ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !11
  %i.ai = trunc i64 %i.ae to i8
  %i.aj = or i8 %i.ah, %i.ai
  store i8 %i.aj, ptr %i.ag, align 1, !tbaa !11
  %.tr = trunc i64 %i.ac to i8
  %i.ak = shl i8 %.tr, 6
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 %i.ab
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !11
  br label %.outer.outer.backedge

bb.p:                                             ; preds = %bb.f
  br i1 %.not74, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = zext i32 %.057.ph.ph to i64             ; 2 uses
  %.not75 = icmp ugt i64 %2, %i.am
  br i1 %.not75, label %bb.r, label %.loopexit

bb.r:                                             ; preds = %bb.q
  %i.an = ptrtoint ptr %memchr to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 %i.am ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !11
  %i.aq = trunc i64 %i.an to i8
  %i.ar = sub i8 %i.aq, ptrtoint (ptr @Base64 to i8)
  %i.as = or i8 %i.ap, %i.ar
  store i8 %i.as, ptr %i.ao, align 1, !tbaa !11
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  %i.at = add i32 %.057.ph.ph, 1
  br label %.outer.outer.backedge

.unreachabledefault:                              ; preds = %bb.f
  unreachable

bb.t:                                             ; preds = %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %.060, i64 2 ; 2 uses
  %i.av = load i8, ptr %i.d, align 1, !tbaa !11   ; 2 uses
  %i.aw = sext i8 %i.av to i32                    ; 2 uses
  switch i32 %.055.ph, label %.unreachabledefault91 [
    i32 0, label %.loopexit
    i32 1, label %.loopexit
    i32 2, label %.preheader
    i32 3, label %bb.x
  ]

.preheader:                                       ; preds = %bb.t
  %cond93118 = icmp eq i8 %i.av, 0
  br i1 %cond93118, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.u
  %.0120 = phi i32 [ %i.bd, %bb.u ], [ %i.aw, %.preheader ] ; 2 uses
  %.161119 = phi ptr [ %i.bb, %bb.u ], [ %i.au, %.preheader ] ; 4 uses
  %i.ax = sext i32 %.0120 to i64
  %i.ay = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.ax
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !21
  %i.ba = and i16 %i.az, 8192
  %.not85 = icmp eq i16 %i.ba, 0
  br i1 %.not85, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph
  %i.bb = getelementptr inbounds nuw i8, ptr %.161119, i64 1
  %i.bc = load i8, ptr %.161119, align 1, !tbaa !11 ; 2 uses
  %i.bd = sext i8 %i.bc to i32
  %cond93 = icmp eq i8 %i.bc, 0
  br i1 %cond93, label %.loopexit, label %.lr.ph, !llvm.loop !15

bb.v:                                             ; preds = %.lr.ph
  %.not86 = icmp eq i32 %.0120, 61
  br i1 %.not86, label %bb.w, label %.loopexit

bb.w:                                             ; preds = %bb.v
  %i.be = getelementptr inbounds nuw i8, ptr %.161119, i64 1
  %i.bf = load i8, ptr %.161119, align 1, !tbaa !11
  %i.bg = sext i8 %i.bf to i32
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.t
  %.262 = phi ptr [ %i.be, %bb.w ], [ %i.au, %bb.t ]
  %.1 = phi i32 [ %i.bg, %bb.w ], [ %i.aw, %bb.t ] ; 2 uses
  %.not87121 = icmp eq i32 %.1, 0
  br i1 %.not87121, label %._crit_edge, label %.lr.ph124

.lr.ph124:                                        ; preds = %bb.x, %bb.y
  %.2123 = phi i32 [ %i.bn, %bb.y ], [ %.1, %bb.x ]
  %.3122 = phi ptr [ %i.bl, %bb.y ], [ %.262, %bb.x ] ; 2 uses
  %i.bh = sext i32 %.2123 to i64
  %i.bi = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.bh
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !21
  %i.bk = and i16 %i.bj, 8192
  %.not90 = icmp eq i16 %i.bk, 0
  br i1 %.not90, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %.lr.ph124
  %i.bl = getelementptr inbounds nuw i8, ptr %.3122, i64 1
  %i.bm = load i8, ptr %.3122, align 1, !tbaa !11 ; 2 uses
  %i.bn = sext i8 %i.bm to i32
  %.not87 = icmp eq i8 %i.bm, 0
  br i1 %.not87, label %._crit_edge, label %.lr.ph124, !llvm.loop !16

._crit_edge:                                      ; preds = %bb.y, %bb.x
  br i1 %.not74, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %._crit_edge
  %i.bo = zext i32 %.057.ph.ph to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !11
  %.not89 = icmp eq i8 %i.bq, 0
  br i1 %.not89, label %bb.ab, label %.loopexit

bb.aa:                                            ; preds = %bb.b
  br i1 %.not83, label %bb.ab, label %.loopexit

.unreachabledefault91:                            ; preds = %bb.t
  unreachable

bb.ab:                                            ; preds = %bb.aa, %bb.z, %._crit_edge
  br label %.loopexit

.loopexit:                                        ; preds = %bb.h, %bb.e, %bb.q, %bb.n, %bb.k, %bb.u, %.lr.ph124, %.preheader, %bb.aa, %bb.z, %bb.v, %bb.t, %bb.t, %bb.ab
  %.059 = phi i32 [ %.057.ph.ph, %bb.ab ], [ -1, %.preheader ], [ -1, %bb.t ], [ -1, %bb.v ], [ -1, %bb.aa ], [ -1, %bb.z ], [ -1, %.lr.ph124 ], [ -1, %bb.t ], [ -1, %bb.u ], [ -1, %bb.k ], [ -1, %bb.n ], [ -1, %bb.q ], [ -1, %bb.e ], [ -1, %bb.h ]
  ret i32 %.059
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #3

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #4 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!7, !7, i64 0}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !12}
!17 = !{!"any pointer", !7, i64 0}
!18 = !{!"p1 short", !17, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"short", !7, i64 0}
!21 = !{!20, !20, i64 0}
end_hunk_0
