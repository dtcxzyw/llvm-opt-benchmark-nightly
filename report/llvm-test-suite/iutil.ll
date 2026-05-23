inline.NumInlined: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @refcpy(ptr noundef writeonly captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not4 = icmp eq i32 %2, 0
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i32 %2, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.07.prol = phi i32 [ %i.a, %.lr.ph.prol ], [ %2, %.lr.ph.preheader ]
  %.026.prol = phi ptr [ %i.c, %.lr.ph.prol ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %.035.prol = phi ptr [ %i.b, %.lr.ph.prol ], [ %0, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.a = add i32 %.07.prol, -1                    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.035.prol, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.026.prol, i64 16 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.035.prol, ptr noundef nonnull align 8 dereferenceable(16) %.026.prol, i64 16, i1 false), !tbaa.struct !8
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !12

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.07.unr = phi i32 [ %2, %.lr.ph.preheader ], [ %i.a, %.lr.ph.prol ]
  %.026.unr = phi ptr [ %1, %.lr.ph.preheader ], [ %i.c, %.lr.ph.prol ]
  %.035.unr = phi ptr [ %0, %.lr.ph.preheader ], [ %i.b, %.lr.ph.prol ]
  %i.d = icmp ult i32 %2, 4
  br i1 %i.d, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.07 = phi i32 [ %i.k, %.lr.ph ], [ %.07.unr, %.lr.ph.prol.loopexit ]
  %.026 = phi ptr [ %i.m, %.lr.ph ], [ %.026.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.035 = phi ptr [ %i.l, %.lr.ph ], [ %.035.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.035, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %.026, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.035, ptr noundef nonnull align 8 dereferenceable(16) %.026, i64 16, i1 false), !tbaa.struct !8
  %i.g = getelementptr inbounds nuw i8, ptr %.035, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %.026, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !8
  %i.i = getelementptr inbounds nuw i8, ptr %.035, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %.026, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !8
  %i.k = add i32 %.07, -4                         ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.035, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %.026, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !8
  %.not.3 = icmp eq i32 %i.k, 0
  br i1 %.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !14

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @obj_eq(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.ref_s, align 8              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.c = lshr i16 %i.b, 2
  %i.d = and i16 %i.c, 63                         ; 2 uses
  %i.e = icmp samesign ugt i16 %i.d, 15
  %.053.sroa.gep = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.053.sroa.gep62 = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 2 uses
  %.053.sroa.gep63 = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %.054.sroa.gep124 = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 2 uses
  %narrow = select i1 %i.e, i16 9, i16 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i16, ptr %i.f, align 8, !tbaa !16   ; 5 uses
  %i.h = lshr i16 %i.g, 2
  %i.i = and i16 %i.h, 63                         ; 2 uses
  %i.j = icmp samesign ugt i16 %i.i, 15
  %narrow185 = select i1 %i.j, i16 9, i16 %i.i
  %.not = icmp eq i16 %narrow, %narrow185
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %3 = trunc i16 %i.b to i8
  %trunc = and i8 %3, -4
  %4 = add i8 %trunc, -20                         ; 2 uses
  %5 = tail call i8 @llvm.fshl.i8(i8 %4, i8 %4, i8 5)
  switch i8 %5, label %bb.ab [
    i8 0, label %bb.c
    i8 3, label %bb.e
    i8 1, label %bb.g
    i8 4, label %bb.h
  ]

bb.c:                                             ; preds = %bb.b
  %i.k = and i16 %i.g, 252
  %i.l = icmp eq i16 %i.k, 44
  br i1 %i.l, label %bb.d, label %bb.ab

bb.d:                                             ; preds = %bb.c
  %i.m = load float, ptr %1, align 8, !tbaa !9
  %i.n = load i64, ptr %0, align 8, !tbaa !9
  %i.o = sitofp i64 %i.n to float
  %i.p = fcmp oeq float %i.m, %i.o
  br label %bb.ab

bb.e:                                             ; preds = %bb.b
  %i.q = and i16 %i.g, 252
  %i.r = icmp eq i16 %i.q, 20
  br i1 %i.r, label %bb.f, label %bb.ab

bb.f:                                             ; preds = %bb.e
  %i.s = load i64, ptr %1, align 8, !tbaa !9
  %i.t = sitofp i64 %i.s to float
  %i.u = load float, ptr %0, align 8, !tbaa !9
  %i.v = fcmp oeq float %i.u, %i.t
  br label %bb.ab

bb.g:                                             ; preds = %bb.b
  %i.w = and i16 %i.g, 252
  %.not182 = icmp eq i16 %i.w, 52
  br i1 %.not182, label %.sink.split, label %bb.ab

bb.h:                                             ; preds = %bb.b
  %i.x = and i16 %i.g, 252
  %.not181 = icmp eq i16 %i.x, 28
  br i1 %.not181, label %.sink.split, label %bb.ab

.sink.split:                                      ; preds = %bb.h, %bb.g
  %.sink = phi ptr [ %0, %bb.g ], [ %1, %bb.h ]
  %.054.sroa.phi167.ph = phi ptr [ %.054.sroa.gep124, %bb.g ], [ %.053.sroa.gep62, %bb.h ]
  %.054.sroa.phi175.ph = phi ptr [ %1, %bb.g ], [ %2, %bb.h ]
  %.053.sroa.phi105.ph = phi ptr [ %.053.sroa.gep62, %bb.g ], [ %.053.sroa.gep63, %bb.h ]
  %.053.sroa.phi113.ph = phi ptr [ %2, %bb.g ], [ %0, %bb.h ]
  %.053.sroa.phi117.ph = phi ptr [ %.053.sroa.gep, %bb.g ], [ %i.a, %bb.h ]
  %i.y = call ptr @name_string_ref(ptr noundef nonnull %.sink, ptr noundef nonnull %2) #10 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.a
  %.054.sroa.phi167 = phi ptr [ %.054.sroa.gep124, %bb.a ], [ %.054.sroa.phi167.ph, %.sink.split ] ; 2 uses
  %.054.sroa.phi175 = phi ptr [ %1, %bb.a ], [ %.054.sroa.phi175.ph, %.sink.split ] ; 13 uses
  %.053.sroa.phi105 = phi ptr [ %.053.sroa.gep63, %bb.a ], [ %.053.sroa.phi105.ph, %.sink.split ] ; 2 uses
  %.053.sroa.phi113 = phi ptr [ %0, %bb.a ], [ %.053.sroa.phi113.ph, %.sink.split ] ; 13 uses
  %.053.sroa.phi117 = phi ptr [ %i.a, %bb.a ], [ %.053.sroa.phi117.ph, %.sink.split ]
  %i.z = load i16, ptr %.053.sroa.phi117, align 8, !tbaa !16 ; 2 uses
  %i.aa = and i16 %i.z, 192
  %.not183 = icmp eq i16 %i.aa, 0
  br i1 %.not183, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %6 = and i16 %i.z, 60
  %7 = sub i16 %6, 0                              ; 2 uses
  %8 = call i16 @llvm.fshl.i16(i16 %7, i16 %7, i16 14)
  switch i16 %8, label %default.unreachable [
    i16 0, label %bb.k
    i16 10, label %bb.k
    i16 1, label %bb.m
    i16 2, label %bb.n
    i16 3, label %bb.o
    i16 4, label %bb.p
    i16 5, label %bb.q
    i16 6, label %bb.ab
    i16 8, label %bb.ab
    i16 7, label %bb.r
    i16 9, label %.thread
    i16 11, label %bb.s
    i16 12, label %bb.t
    i16 13, label %bb.u
    i16 14, label %bb.x
    i16 15, label %bb.aa
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  %i.ab = load ptr, ptr %.053.sroa.phi113, align 8, !tbaa !9
  %i.ac = load ptr, ptr %.054.sroa.phi175, align 8, !tbaa !9
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %bb.l, label %bb.ab

bb.l:                                             ; preds = %bb.k
  %i.ae = load i16, ptr %.053.sroa.phi105, align 2, !tbaa !18
  %i.af = load i16, ptr %.054.sroa.phi167, align 2, !tbaa !18
  %i.ag = icmp eq i16 %i.ae, %i.af
  br label %bb.ab

bb.m:                                             ; preds = %bb.j
  %i.ah = load i16, ptr %.053.sroa.phi113, align 8, !tbaa !9
  %i.ai = load i16, ptr %.054.sroa.phi175, align 8, !tbaa !9
  %i.aj = icmp eq i16 %i.ah, %i.ai
  br label %bb.ab

bb.n:                                             ; preds = %bb.j
  %i.ak = load ptr, ptr %.053.sroa.phi113, align 8, !tbaa !9
  %i.al = load ptr, ptr %.054.sroa.phi175, align 8, !tbaa !9
  %i.am = icmp eq ptr %i.ak, %i.al
  br label %bb.ab

bb.o:                                             ; preds = %bb.j
  %i.an = load ptr, ptr %.053.sroa.phi113, align 8, !tbaa !9
  %i.ao = load ptr, ptr %.054.sroa.phi175, align 8, !tbaa !9
  %i.ap = icmp eq ptr %i.an, %i.ao
  br label %bb.ab

bb.p:                                             ; preds = %bb.j
  %i.aq = load ptr, ptr %.053.sroa.phi113, align 8, !tbaa !9
  %i.ar = load ptr, ptr %.054.sroa.phi175, align 8, !tbaa !9
  %i.as = icmp eq ptr %i.aq, %i.ar
  br label %bb.ab

bb.q:                                             ; preds = %bb.j
  %i.at = load i64, ptr %.053.sroa.phi113, align 8, !tbaa !9
  %i.au = load i64, ptr %.054.sroa.phi175, align 8, !tbaa !9
  %i.av = icmp eq i64 %i.at, %i.au
  br label %bb.ab

bb.r:                                             ; preds = %bb.j
  %i.aw = load ptr, ptr %.053.sroa.phi113, align 8, !tbaa !9
  %i.ax = load ptr, ptr %.054.sroa.phi175, align 8, !tbaa !9
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br label %bb.ab

.thread:                                          ; preds = %bb.i, %bb.j
  %i.az = load ptr, ptr %.053.sroa.phi113, align 8, !tbaa !9
  %i.ba = load ptr, ptr %.054.sroa.phi175, align 8, !tbaa !9
  %i.bb = icmp eq ptr %i.az, %i.ba
  br label %bb.ab

bb.s:                                             ; preds = %bb.j
  %i.bc = load float, ptr %.053.sroa.phi113, align 8, !tbaa !9
  %i.bd = load float, ptr %.054.sroa.phi175, align 8, !tbaa !9
  %i.be = fcmp oeq float %i.bc, %i.bd
  br label %bb.ab

bb.t:                                             ; preds = %bb.j
  %i.bf = load ptr, ptr %.053.sroa.phi113, align 8, !tbaa !9
  %i.bg = load ptr, ptr %.054.sroa.phi175, align 8, !tbaa !9
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br label %bb.ab

bb.u:                                             ; preds = %bb.j
  %i.bi = load i16, ptr %.053.sroa.phi105, align 2, !tbaa !18 ; 2 uses
  %i.bj = load i16, ptr %.054.sroa.phi167, align 2, !tbaa !18 ; 2 uses
  %i.bk = call i16 @llvm.umin.i16(i16 %i.bj, i16 %i.bi) ; 2 uses
  %.not.i188 = icmp eq i16 %i.bk, 0
  br i1 %.not.i188, label %bytes_compare.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.u
  %spec.select.i = zext i16 %i.bk to i32
  %i.bl = load ptr, ptr %.054.sroa.phi175, align 8, !tbaa !9
  %i.bm = load ptr, ptr %.053.sroa.phi113, align 8, !tbaa !9
  br label %bb.w

bb.v:                                             ; preds = %bb.w
  %i.bn = getelementptr inbounds nuw i8, ptr %.016.i191, i64 1
  %i.bo = getelementptr inbounds nuw i8, ptr %.017.i190, i64 1
  %i.bp = add nsw i32 %.1.i189, -1                ; 2 uses
  %.not.i = icmp eq i32 %i.bp, 0
  br i1 %.not.i, label %bytes_compare.exit, label %bb.w, !llvm.loop !19

bb.w:                                             ; preds = %.lr.ph, %bb.v
  %.016.i191 = phi ptr [ %i.bl, %.lr.ph ], [ %i.bn, %bb.v ] ; 2 uses
  %.017.i190 = phi ptr [ %i.bm, %.lr.ph ], [ %i.bo, %bb.v ] ; 2 uses
  %.1.i189 = phi i32 [ %spec.select.i, %.lr.ph ], [ %i.bp, %bb.v ]
  %i.bq = load i8, ptr %.017.i190, align 1, !tbaa !9
  %i.br = load i8, ptr %.016.i191, align 1, !tbaa !9
  %.not23.i = icmp eq i8 %i.bq, %i.br
  br i1 %.not23.i, label %bb.v, label %.bytes_compare.exit_crit_edge, !llvm.loop !19

.bytes_compare.exit_crit_edge:                    ; preds = %bb.w
  br label %bytes_compare.exit, !llvm.loop !19

bytes_compare.exit:                               ; preds = %bb.v, %.bytes_compare.exit_crit_edge, %bb.u
  %.not.i.lcssa = phi i1 [ false, %.bytes_compare.exit_crit_edge ], [ true, %bb.u ], [ true, %bb.v ]
  %.not184186 = icmp eq i16 %i.bi, %i.bj
  %.not184 = and i1 %.not.i.lcssa, %.not184186
  br label %bb.ab

bb.x:                                             ; preds = %bb.j
  %i.bs = load ptr, ptr %.053.sroa.phi113, align 8, !tbaa !9 ; 3 uses
  %i.bt = load ptr, ptr %.054.sroa.phi175, align 8, !tbaa !9 ; 3 uses
  %i.bu = load i16, ptr %i.bs, align 2, !tbaa !20
  %i.bv = load i16, ptr %i.bt, align 2, !tbaa !20
  %i.bw = icmp eq i16 %i.bu, %i.bv
  br i1 %i.bw, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 2
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !22
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 2
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !22
  %i.cb = icmp eq i16 %i.by, %i.ca
  br i1 %i.cb, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !23
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !23
  %i.cg = icmp eq i16 %i.cd, %i.cf
  br label %bb.ab

bb.aa:                                            ; preds = %bb.j
  %i.ch = load ptr, ptr %.053.sroa.phi113, align 8, !tbaa !9
  %i.ci = load ptr, ptr %.054.sroa.phi175, align 8, !tbaa !9
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br label %bb.ab

default.unreachable:                              ; preds = %bb.j
  unreachable

bb.ab:                                            ; preds = %bb.x, %bb.y, %bb.z, %bb.j, %bb.j, %bb.k, %bb.l, %bb.b, %bb.h, %bb.g, %bb.e, %bb.f, %bb.c, %bb.d, %bb.aa, %bytes_compare.exit, %bb.t, %bb.s, %.thread, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m
  %.0.shrunk = phi i1 [ false, %bb.h ], [ false, %bb.g ], [ %i.p, %bb.d ], [ %i.v, %bb.f ], [ %i.cg, %bb.z ], [ false, %bb.b ], [ %i.aj, %bb.m ], [ %i.am, %bb.n ], [ %i.ap, %bb.o ], [ %i.as, %bb.p ], [ %i.av, %bb.q ], [ %i.ag, %bb.l ], [ %i.ay, %bb.r ], [ %i.bb, %.thread ], [ %i.be, %bb.s ], [ %i.bh, %bb.t ], [ %.not184, %bytes_compare.exit ], [ true, %bb.j ], [ %i.cj, %bb.aa ], [ false, %bb.c ], [ false, %bb.e ], [ false, %bb.k ], [ true, %bb.j ], [ false, %bb.y ], [ false, %bb.x ]
  %.0 = zext i1 %.0.shrunk to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @name_string_ref(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i32 @bytes_compare(ptr noundef readonly captures(none) %0, i32 noundef %1, ptr noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #4 {
bb.a:
  %spec.select = tail call i32 @llvm.umin.i32(i32 %3, i32 %1) ; 2 uses
  %.not37 = icmp eq i32 %spec.select, 0
  br i1 %.not37, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.a = getelementptr inbounds nuw i8, ptr %.01640, i64 1
  %i.b = getelementptr inbounds nuw i8, ptr %.01739, i64 1
  %i.c = add i32 %.138, -1                        ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !19

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.01640 = phi ptr [ %i.a, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.01739 = phi ptr [ %i.b, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %.138 = phi i32 [ %i.c, %bb.b ], [ %spec.select, %bb.a ]
  %i.d = load i8, ptr %.01739, align 1, !tbaa !9  ; 2 uses
  %i.e = load i8, ptr %.01640, align 1, !tbaa !9  ; 2 uses
  %.not23 = icmp eq i8 %i.d, %i.e
  br i1 %.not23, label %bb.b, label %bb.c, !llvm.loop !19

bb.c:                                             ; preds = %.lr.ph
  %i.f = icmp ult i8 %i.d, %i.e
  %i.g = select i1 %i.f, i32 -1, i32 1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %bb.c
  %.not35 = phi i1 [ false, %bb.c ], [ true, %bb.a ], [ true, %bb.b ]
  %.019 = phi i32 [ %i.g, %bb.c ], [ undef, %bb.a ], [ undef, %bb.b ]
  %i.h = tail call i32 @llvm.ucmp.i32.i32(i32 %1, i32 %3)
  %.120 = select i1 %.not35, i32 %i.h, i32 %.019
  ret i32 %.120
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i32 @string_hash(ptr noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %.not7 = icmp eq i32 %1, 0
  br i1 %.not7, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i32 %1, 3                       ; 3 uses
  %i.a = icmp ult i32 %1, 4
  br i1 %i.a, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %1, -4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.059 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.u, %.lr.ph ]
  %.068 = phi ptr [ %0, %.lr.ph.preheader.new ], [ %i.r, %.lr.ph ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.b = mul i32 %.059, 19
  %i.c = getelementptr inbounds nuw i8, ptr %.068, i64 1
  %i.d = load i8, ptr %.068, align 1, !tbaa !9
  %i.e = zext i8 %i.d to i32
  %i.f = add i32 %i.b, %i.e
  %i.g = mul i32 %i.f, 19
  %i.h = getelementptr inbounds nuw i8, ptr %.068, i64 2
  %i.i = load i8, ptr %i.c, align 1, !tbaa !9
  %i.j = zext i8 %i.i to i32
  %i.k = add i32 %i.g, %i.j
  %i.l = mul i32 %i.k, 19
  %i.m = getelementptr inbounds nuw i8, ptr %.068, i64 3
  %i.n = load i8, ptr %i.h, align 1, !tbaa !9
  %i.o = zext i8 %i.n to i32
  %i.p = add i32 %i.l, %i.o
  %i.q = mul i32 %i.p, 19
  %i.r = getelementptr inbounds nuw i8, ptr %.068, i64 4 ; 2 uses
  %i.s = load i8, ptr %i.m, align 1, !tbaa !9
  %i.t = zext i8 %i.s to i32
  %i.u = add i32 %i.q, %i.t                       ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !24

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.059.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.u, %._crit_edge.loopexit.unr-lcssa ]
  %.068.epil.init = phi ptr [ %0, %.lr.ph.preheader ], [ %i.r, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod12 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod12)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.059.epil = phi i32 [ %i.z, %.lr.ph.epil ], [ %.059.epil.init, %.lr.ph.epil.preheader ]
  %.068.epil = phi ptr [ %i.w, %.lr.ph.epil ], [ %.068.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.v = mul i32 %.059.epil, 19
  %i.w = getelementptr inbounds nuw i8, ptr %.068.epil, i64 1
  %i.x = load i8, ptr %.068.epil, align 1, !tbaa !9
  %i.y = zext i8 %i.x to i32
  %i.z = add i32 %i.v, %i.y                       ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !25

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %.05.lcssa = phi i32 [ 0, %bb.a ], [ %i.u, %._crit_edge.loopexit.unr-lcssa ], [ %i.z, %.lr.ph.epil ]
  ret i32 %.05.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -25, 1) i32 @string_to_ref(ptr noundef readonly captures(none) %0, ptr noundef writeonly captures(none) %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #11 ; 3 uses
  %i.b = trunc i64 %i.a to i32
  %i.c = tail call ptr @alloc(i32 noundef %i.b, i32 noundef 1, ptr noundef %2) #10 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.a, 4294967295
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.c, ptr nonnull align 1 %0, i64 %i.e, i1 false)
  store ptr %i.c, ptr %1, align 8, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i16 822, ptr %i.f, align 8, !tbaa !16
  %i.g = trunc i64 %i.a to i16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i16 %i.g, ptr %i.h, align 2, !tbaa !18
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -25, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

declare ptr @alloc(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @ref_to_string(ptr noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !18   ; 2 uses
  %i.c = zext i16 %i.b to i32
  %i.d = add nuw nsw i32 %i.c, 1
  %i.e = tail call ptr @alloc(i32 noundef %i.d, i32 noundef 1, ptr noundef %1) #10 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !9
  %i.h = zext i16 %i.b to i64                     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.e, ptr align 1 %i.g, i64 %i.h, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.h
  store i8 0, ptr %i.i, align 1, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.e
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @num_params(ptr noundef readonly captures(none) %0, i32 noundef %1, ptr noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = add nsw i32 %1, -1                       ; 2 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.lr.ph.split.us.split.us, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph
  %i.c = zext nneg i32 %i.b to i64
  br label %.lr.ph.split.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph, %bb.c
  %i.d = phi i32 [ %i.j, %bb.c ], [ %i.b, %.lr.ph ] ; 2 uses
  %.022.us.us = phi i32 [ %.1.us.us, %bb.c ], [ 0, %.lr.ph ]
  %.01621.us.us = phi ptr [ %i.i, %bb.c ], [ %0, %.lr.ph ] ; 2 uses
  %i.e = shl i32 %.022.us.us, 1                   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.01621.us.us, i64 8
  %i.g = load i16, ptr %i.f, align 8, !tbaa !16
  %3 = trunc i16 %i.g to i8
  %trunc.us.us = and i8 %3, -4
  switch i8 %trunc.us.us, label %._crit_edge [
    i8 44, label %bb.c
    i8 20, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph.split.us.split.us
  %i.h = or disjoint i32 %i.e, 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.us.split.us, %bb.b
  %.1.us.us = phi i32 [ %i.h, %bb.b ], [ %i.e, %.lr.ph.split.us.split.us ] ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %.01621.us.us, i64 -16
  %i.j = add nsw i32 %i.d, -1
  %i.k = icmp sgt i32 %i.d, 0
  br i1 %i.k, label %.lr.ph.split.us.split.us, label %._crit_edge, !llvm.loop !26

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %bb.f
  %indvars.iv = phi i64 [ %i.c, %.lr.ph.split.split.preheader ], [ %indvars.iv.next, %bb.f ] ; 4 uses
  %.022 = phi i32 [ 0, %.lr.ph.split.split.preheader ], [ %.1, %bb.f ]
  %.01621 = phi ptr [ %0, %.lr.ph.split.split.preheader ], [ %i.u, %bb.f ] ; 4 uses
  %i.l = shl i32 %.022, 1                         ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.01621, i64 8
  %i.n = load i16, ptr %i.m, align 8, !tbaa !16
  %4 = trunc i16 %i.n to i8
  %trunc = and i8 %4, -4
  switch i8 %trunc, label %._crit_edge [
    i8 44, label %bb.d
    i8 20, label %bb.e
  ]

bb.d:                                             ; preds = %.lr.ph.split.split
  %i.o = load float, ptr %.01621, align 8, !tbaa !9
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  store float %i.o, ptr %i.p, align 4, !tbaa !27
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph.split.split
  %i.q = load i64, ptr %.01621, align 8, !tbaa !9
  %i.r = sitofp i64 %i.q to float
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  store float %i.r, ptr %i.s, align 4, !tbaa !27
  %i.t = or disjoint i32 %i.l, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.1 = phi i32 [ %i.l, %bb.d ], [ %i.t, %bb.e ]  ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %.01621, i64 -16
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.v = icmp sgt i64 %indvars.iv, 0
  br i1 %i.v, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !26

._crit_edge:                                      ; preds = %.lr.ph.split.split, %bb.f, %.lr.ph.split.us.split.us, %bb.c, %bb.a
  %.014 = phi i32 [ -20, %.lr.ph.split.us.split.us ], [ 0, %bb.a ], [ %.1.us.us, %bb.c ], [ %.1, %bb.f ], [ -20, %.lr.ph.split.split ]
  ret i32 %.014
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 -20, 1) i32 @real_param(ptr noundef readonly captures(none) %0, ptr noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !16
  %3 = trunc i16 %i.b to i8
  %trunc = and i8 %3, -4
  switch i8 %trunc, label %bb.j [
    i8 20, label %bb.b
    i8 44, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %0, align 8, !tbaa !9
  %i.d = sitofp i64 %i.c to float
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = load float, ptr %0, align 8, !tbaa !9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi float [ %i.d, %bb.b ], [ %i.e, %bb.c ] ; 5 uses
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = fpext float %.0 to double                ; 2 uses
  %i.g = fcmp olt float %.0, 0.000000e+00
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = fcmp olt double %i.f, -1.000000e-05
  br i1 %i.h, label %bb.j, label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.i = fcmp ogt float %.0, 1.000000e+00
  br i1 %i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.j = fcmp ogt double %i.f, 1.000010e+00
  br i1 %i.j, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.g, %bb.d
  %.1 = phi float [ %.0, %bb.d ], [ 0.000000e+00, %bb.f ], [ %.0, %bb.g ], [ 1.000000e+00, %bb.h ]
  store float %.1, ptr %1, align 4, !tbaa !27
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.f, %bb.a, %bb.i
  %.010 = phi i32 [ -15, %bb.f ], [ -20, %bb.a ], [ 0, %bb.i ], [ -15, %bb.h ]
  ret i32 %.010
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -20, 1) i32 @read_matrix(ptr noundef readonly captures(none) %0, ptr noundef captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %2 = trunc i16 %i.b to i8
  %trunc = and i8 %2, -4
  switch i8 %trunc, label %.loopexit [
    i8 0, label %bb.b
    i8 40, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.d = load i16, ptr %i.c, align 2, !tbaa !18
  %.not = icmp eq i16 %i.d, 6
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.e = and i16 %i.b, 512
  %.not17 = icmp eq i16 %i.e, 0
  br i1 %.not17, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %0, align 8, !tbaa !9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(96) %i.f, i64 96, i1 false), !tbaa.struct !29
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i16, ptr %i.g, align 8, !tbaa !16
  %3 = trunc i16 %i.h to i8
  %trunc18 = and i8 %3, -4
  switch i8 %trunc18, label %.loopexit [
    i8 20, label %bb.e
    i8 44, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.i = load i64, ptr %1, align 8, !tbaa !9
  %i.j = sitofp i64 %i.i to float
  store float %i.j, ptr %1, align 8, !tbaa !9
  store i16 44, ptr %i.g, align 8, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.l = load i16, ptr %i.k, align 8, !tbaa !16
  %4 = trunc i16 %i.l to i8
  %trunc18.1 = and i8 %4, -4
  switch i8 %trunc18.1, label %.loopexit [
    i8 20, label %bb.g
    i8 44, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !9
  %i.o = sitofp i64 %i.n to float
  store float %i.o, ptr %i.m, align 8, !tbaa !9
  store i16 44, ptr %i.k, align 8, !tbaa !16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.q = load i16, ptr %i.p, align 8, !tbaa !16
  %5 = trunc i16 %i.q to i8
  %trunc18.2 = and i8 %5, -4
  switch i8 %trunc18.2, label %.loopexit [
    i8 20, label %bb.i
    i8 44, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !9
  %i.t = sitofp i64 %i.s to float
  store float %i.t, ptr %i.r, align 8, !tbaa !9
  store i16 44, ptr %i.p, align 8, !tbaa !16
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.v = load i16, ptr %i.u, align 8, !tbaa !16
  %6 = trunc i16 %i.v to i8
  %trunc18.3 = and i8 %6, -4
  switch i8 %trunc18.3, label %.loopexit [
    i8 20, label %bb.k
    i8 44, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !9
  %i.y = sitofp i64 %i.x to float
  store float %i.y, ptr %i.w, align 8, !tbaa !9
  store i16 44, ptr %i.u, align 8, !tbaa !16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.aa = load i16, ptr %i.z, align 8, !tbaa !16
  %7 = trunc i16 %i.aa to i8
  %trunc18.4 = and i8 %7, -4
  switch i8 %trunc18.4, label %.loopexit [
    i8 20, label %bb.m
    i8 44, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !9
  %i.ad = sitofp i64 %i.ac to float
  store float %i.ad, ptr %i.ab, align 8, !tbaa !9
  store i16 44, ptr %i.z, align 8, !tbaa !16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.af = load i16, ptr %i.ae, align 8, !tbaa !16
  %8 = trunc i16 %i.af to i8
  %trunc18.5 = and i8 %8, -4
  switch i8 %trunc18.5, label %.loopexit [
    i8 20, label %bb.o
    i8 44, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !9
  %i.ai = sitofp i64 %i.ah to float
  store float %i.ai, ptr %i.ag, align 8, !tbaa !9
  store i16 44, ptr %i.ae, align 8, !tbaa !16
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.f, %bb.h, %bb.j, %bb.l, %bb.n, %bb.p, %bb.c, %bb.b, %bb.a
  %.1 = phi i32 [ -15, %bb.b ], [ -20, %bb.a ], [ -7, %bb.c ], [ 0, %bb.p ], [ -20, %bb.d ], [ -20, %bb.f ], [ -20, %bb.n ], [ -20, %bb.h ], [ -20, %bb.l ], [ -20, %bb.j ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -20, 1) i32 @write_matrix(ptr noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !16
  %i.c = zext i16 %i.b to i32                     ; 2 uses
  %i.d = and i32 %i.c, 252
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.f = load i16, ptr %i.e, align 2, !tbaa !18
  %.not12 = icmp eq i16 %i.f, 6
  br i1 %.not12, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.g = and i32 %i.c, 256
  %.not13 = icmp eq i32 %i.g, 0
  br i1 %.not13, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %0, align 8, !tbaa !9      ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.j = load i16, ptr %i.i, align 8, !tbaa !16
  %1 = trunc i16 %i.j to i8
  %trunc = and i8 %1, -4
  switch i8 %trunc, label %bb.e [
    i8 44, label %bb.f
    i8 20, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  store i64 0, ptr %i.h, align 8, !tbaa !9
  store i16 20, ptr %i.i, align 8, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.l = load i16, ptr %i.k, align 8, !tbaa !16
  %2 = trunc i16 %i.l to i8
  %trunc.1 = and i8 %2, -4
  switch i8 %trunc.1, label %bb.g [
    i8 44, label %bb.h
    i8 20, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 0, ptr %i.m, align 8, !tbaa !9
  store i16 20, ptr %i.k, align 8, !tbaa !16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 2 uses
  %i.o = load i16, ptr %i.n, align 8, !tbaa !16
  %3 = trunc i16 %i.o to i8
  %trunc.2 = and i8 %3, -4
  switch i8 %trunc.2, label %bb.i [
    i8 44, label %bb.j
    i8 20, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 0, ptr %i.p, align 8, !tbaa !9
  store i16 20, ptr %i.n, align 8, !tbaa !16
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 2 uses
  %i.r = load i16, ptr %i.q, align 8, !tbaa !16
  %4 = trunc i16 %i.r to i8
  %trunc.3 = and i8 %4, -4
  switch i8 %trunc.3, label %bb.k [
    i8 44, label %bb.l
    i8 20, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store i64 0, ptr %i.s, align 8, !tbaa !9
  store i16 20, ptr %i.q, align 8, !tbaa !16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 72 ; 2 uses
  %i.u = load i16, ptr %i.t, align 8, !tbaa !16
  %5 = trunc i16 %i.u to i8
  %trunc.4 = and i8 %5, -4
  switch i8 %trunc.4, label %bb.m [
    i8 44, label %bb.n
    i8 20, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store i64 0, ptr %i.v, align 8, !tbaa !9
  store i16 20, ptr %i.t, align 8, !tbaa !16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.l
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 88 ; 2 uses
  %i.x = load i16, ptr %i.w, align 8, !tbaa !16
  %6 = trunc i16 %i.x to i8
  %trunc.5 = and i8 %6, -4
  switch i8 %trunc.5, label %bb.o [
    i8 44, label %.loopexit
    i8 20, label %.loopexit
  ]

bb.o:                                             ; preds = %bb.n
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  store i64 0, ptr %i.y, align 8, !tbaa !9
  store i16 20, ptr %i.w, align 8, !tbaa !16
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %bb.n, %bb.o, %bb.c, %bb.b, %bb.a
  %.011 = phi i32 [ -15, %bb.b ], [ -20, %bb.a ], [ -7, %bb.c ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.n ]
  ret i32 %.011
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.fshl.i16(i16, i16, i16) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }

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
!8 = !{i64 0, i64 8, !9, i64 8, i64 2, !10, i64 10, i64 2, !10}
!9 = !{!6, !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"short", !6, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!17, !11, i64 8}
!17 = !{!"ref_s", !6, i64 0, !11, i64 8, !11, i64 10}
!18 = !{!17, !11, i64 10}
!19 = distinct !{!19, !15}
!20 = !{!21, !11, i64 0}
!21 = !{!"gs_color_s", !11, i64 0, !11, i64 2, !11, i64 4, !11, i64 6, !6, i64 8, !6, i64 9}
!22 = !{!21, !11, i64 2}
!23 = !{!21, !11, i64 4}
!24 = distinct !{!24, !15}
!25 = distinct !{!25, !13}
!26 = distinct !{!26, !15}
!27 = !{!28, !28, i64 0}
!28 = !{!"float", !6, i64 0}
!29 = !{i64 0, i64 4, !27, i64 8, i64 8, !30, i64 16, i64 4, !27, i64 24, i64 8, !30, i64 32, i64 4, !27, i64 40, i64 8, !30, i64 48, i64 4, !27, i64 56, i64 8, !30, i64 64, i64 4, !27, i64 72, i64 8, !30, i64 80, i64 4, !27, i64 88, i64 8, !30}
!30 = !{!31, !31, i64 0}
!31 = !{!"long", !6, i64 0}
end_hunk_0
