loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@Base64 = internal constant [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\00", align 16

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden i32 @hwloc_encode_to_base64(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i8], align 1                 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = icmp ugt i64 %1, 2
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.04255 = phi i64 [ %i.c, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.04454 = phi ptr [ %i.u, %bb.b ], [ %0, %bb.a ] ; 4 uses
  %.04653 = phi i64 [ %i.t, %bb.b ], [ %1, %bb.a ]
  %i.c = add i64 %.04255, 4                       ; 3 uses
  %i.d = icmp ugt i64 %i.c, %3
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.04454, i64 2
  %i.f = load i8, ptr %i.e, align 1, !tbaa !11    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.04454, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !11    ; 2 uses
  %i.i = load i8, ptr %.04454, align 1, !tbaa !11 ; 2 uses
  %i.j = and i8 %i.f, 63
  %i.k = shl i8 %i.h, 2
  %i.l = and i8 %i.k, 60
  %i.m = lshr i8 %i.f, 6
  %i.n = or disjoint i8 %i.m, %i.l
  %i.o = shl i8 %i.i, 4
  %i.p = and i8 %i.o, 48
  %i.q = lshr i8 %i.h, 4
  %i.r = or disjoint i8 %i.q, %i.p
  %i.s = lshr i8 %i.i, 2
  %i.t = add i64 %.04653, -3                      ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.04454, i64 3 ; 2 uses
  %i.v = zext nneg i8 %i.s to i64
  %i.w = getelementptr inbounds nuw i8, ptr @Base64, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !11
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 %.04255 ; 4 uses
  store i8 %i.x, ptr %i.y, align 1, !tbaa !11
  %i.z = zext nneg i8 %i.r to i64
  %i.aa = getelementptr inbounds nuw i8, ptr @Base64, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !11
  %i.ac = getelementptr i8, ptr %i.y, i64 1
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !11
  %i.ad = zext nneg i8 %i.n to i64
  %i.ae = getelementptr inbounds nuw i8, ptr @Base64, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !11
  %i.ag = getelementptr i8, ptr %i.y, i64 2
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !11
  %i.ah = zext nneg i8 %i.j to i64
  %i.ai = getelementptr inbounds nuw i8, ptr @Base64, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !11
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 3
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !11
  %i.al = icmp ugt i64 %i.t, 2
  br i1 %i.al, label %.lr.ph, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.046.lcssa = phi i64 [ %1, %bb.a ], [ %i.t, %bb.b ] ; 4 uses
  %.044.lcssa = phi ptr [ %0, %bb.a ], [ %i.u, %bb.b ] ; 2 uses
  %.042.lcssa = phi i64 [ 0, %bb.a ], [ %i.c, %bb.b ] ; 4 uses
  %.not = icmp eq i64 %.046.lcssa, 0
  br i1 %.not, label %bb.g, label %iter.check

iter.check:                                       ; preds = %._crit_edge
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  store i8 0, ptr %i.am, align 1, !tbaa !11
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  store i8 0, ptr %i.an, align 1, !tbaa !11
  store i8 0, ptr %i.a, align 1, !tbaa !11
  %i.ao = icmp ult i64 %.046.lcssa, 4
  br i1 %i.ao, label %.epil.preheader, label %iter.check.new

iter.check.new:                                   ; preds = %iter.check, %iter.check.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %iter.check.new ], [ 0, %iter.check ] ; 5 uses
  %.14563 = phi ptr [ %i.ba, %iter.check.new ], [ %.044.lcssa, %iter.check ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %iter.check.new ], [ 0, %iter.check ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.14563, i64 1
  %i.aq = load i8, ptr %.14563, align 1, !tbaa !11
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !11
  %i.as = getelementptr inbounds nuw i8, ptr %.14563, i64 2
  %i.at = load i8, ptr %i.ap, align 1, !tbaa !11
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  store i8 %i.at, ptr %i.av, align 1, !tbaa !11
  %i.aw = getelementptr inbounds nuw i8, ptr %.14563, i64 3
  %i.ax = load i8, ptr %i.as, align 1, !tbaa !11
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  store i8 %i.ax, ptr %i.az, align 1, !tbaa !11
  %i.ba = getelementptr inbounds nuw i8, ptr %.14563, i64 4 ; 2 uses
  %i.bb = load i8, ptr %i.aw, align 1, !tbaa !11
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 3
  store i8 %i.bb, ptr %i.bd, align 1, !tbaa !11
  %indvars.iv.next.3 = add i64 %indvars.iv, 4     ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, 0
  br i1 %niter.ncmp.3.not, label %.epil.preheader, label %iter.check.new, !llvm.loop !14

.epil.preheader:                                  ; preds = %iter.check.new, %iter.check
  %indvars.iv.epil.init = phi i64 [ 0, %iter.check ], [ %indvars.iv.next.3, %iter.check.new ]
  %.14563.epil.init = phi ptr [ %.044.lcssa, %iter.check ], [ %i.ba, %iter.check.new ]
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 2 uses
  %.14563.epil = phi ptr [ %.14563.epil.init, %.epil.preheader ], [ %i.be, %bb.c ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.be = getelementptr inbounds nuw i8, ptr %.14563.epil, i64 1
  %i.bf = load i8, ptr %.14563.epil, align 1, !tbaa !11
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.epil
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !11
  %indvars.iv.next.epil = add i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %.046.lcssa
  br i1 %epil.iter.cmp.not, label %.loopexit96, label %bb.c, !llvm.loop !16

.loopexit96:                                      ; preds = %bb.c
  %i.bh = load i8, ptr %i.an, align 1, !tbaa !11  ; 2 uses
  %i.bi = shl i8 %i.bh, 2
  %i.bj = and i8 %i.bi, 60
  %i.bk = load i8, ptr %i.am, align 1, !tbaa !11
  %i.bl = lshr i8 %i.bk, 6
  %i.bm = or disjoint i8 %i.bj, %i.bl
  %i.bn = add i64 %.042.lcssa, 4                  ; 2 uses
  %i.bo = icmp ugt i64 %i.bn, %3
  br i1 %i.bo, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.loopexit96
  %i.bp = load i8, ptr %i.a, align 1, !tbaa !11   ; 2 uses
  %i.bq = shl i8 %i.bp, 4
  %i.br = and i8 %i.bq, 48
  %i.bs = lshr i8 %i.bh, 4
  %i.bt = or disjoint i8 %i.br, %i.bs
  %i.bu = lshr i8 %i.bp, 2
  %i.bv = zext nneg i8 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr @Base64, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !11
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 %.042.lcssa ; 3 uses
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !11
  %i.bz = zext nneg i8 %i.bt to i64
  %i.ca = getelementptr inbounds nuw i8, ptr @Base64, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !11
  %i.cc = getelementptr i8, ptr %i.by, i64 1
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !11
  %i.cd = icmp eq i64 %.046.lcssa, 1
  br i1 %i.cd, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ce = zext nneg i8 %i.bm to i64
  %i.cf = getelementptr inbounds nuw i8, ptr @Base64, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !11
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sink = phi i8 [ %i.cg, %bb.e ], [ 61, %bb.d ]
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 %.042.lcssa
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 2
  store i8 %.sink, ptr %i.ci, align 1, !tbaa !11
  %i.cj = getelementptr i8, ptr %i.by, i64 3
  store i8 61, ptr %i.cj, align 1, !tbaa !11
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  %.2 = phi i64 [ %i.bn, %bb.f ], [ %.042.lcssa, %._crit_edge ] ; 3 uses
  %.not48 = icmp ult i64 %.2, %3
  br i1 %.not48, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 %.2
  store i8 0, ptr %i.ck, align 1, !tbaa !11
  %i.cl = trunc i64 %.2 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.g, %.loopexit96, %bb.h
  %.043 = phi i32 [ %i.cl, %bb.h ], [ -1, %bb.g ], [ -1, %.loopexit96 ], [ -1, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.043
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @hwloc_decode_from_base64(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #2 {
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
  %i.e = tail call ptr @__ctype_b_loc() #6
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18   ; 3 uses
  %i.g = sext i8 %i.c to i64
  %i.h = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !21
  %i.j = and i16 %i.i, 8192
  %.not73 = icmp eq i16 %i.j, 0
  br i1 %.not73, label %bb.d, label %bb.b, !llvm.loop !23

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
  br label %.outer, !llvm.loop !23

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
  br label %.outer.outer, !llvm.loop !23

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
end_hunk_0
