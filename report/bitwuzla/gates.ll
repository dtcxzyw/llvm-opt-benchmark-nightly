Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/gates?download=true
inline.NumInlined: 429
inline.NumDeleted: 144
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN7CaDiCaL8Internal9is_clauseEPNS_6ClauseERKSt6vectorIiSaIiEE:bb.a
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit.us

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit.us: ; preds = %.lr.ph.i.i.i.us, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit.us.loopexit.split.loop.exit96, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit.us.loopexit.split.loop.exit98, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit.us.loopexit.split.loop.exit100, %._crit_edge._crit_edge57.i.i.i.us, %._crit_edge._crit_edge.i.i.i.us, %bb.i
  %.sroa.08.0.in.sroa.speculated.i.i.i.us = phi ptr [ %.sroa.032.1.i.i.i.us, %._crit_edge._crit_edge.i.i.i.us ], [ %spec.select.i.i.i.us, %._crit_edge._crit_edge57.i.i.i.us ], [ %scevgep.i.i.i, %bb.i ], [ %i.ay, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit.us.loopexit.split.loop.exit98 ], [ %i.ax, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit.us.loopexit.split.loop.exit96 ], [ %i.az, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit.us.loopexit.split.loop.exit100 ], [ %.sroa.032.051.i.i.i.us, %.lr.ph.i.i.i.us ]
  %i.ba = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i.us, %i.e
  br i1 %i.ba, label %.thread, label %bb.k

bb.k:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit.us
  %.not39.not.us = icmp slt i32 %.02761.us, %i.k
  %i.bb = add nsw i32 %.02761.us, 1               ; 2 uses
  br i1 %.not39.not.us, label %.thread43.us, label %.thread

.thread43.us:                                     ; preds = %bb.k, %bb.d
  %.22946.us = phi i32 [ %.02761.us, %bb.d ], [ %i.bb, %bb.k ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.02663.us, i64 4 ; 2 uses
  %.not37.us = icmp eq ptr %i.bc, %i.q
  br i1 %.not37.us, label %.thread, label %bb.d

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.bd = ashr exact i64 %.fr, 2
  %i.be = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph.split, %.thread43
  %.02663 = phi ptr [ %i.o, %.lr.ph.split ], [ %i.bs, %.thread43 ] ; 2 uses
  %.02761 = phi i32 [ 0, %.lr.ph.split ], [ %.22946, %.thread43 ] ; 5 uses
  %i.bf = load i32, ptr %.02663, align 4, !tbaa !8 ; 4 uses
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds i8, ptr %i.s, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !9
  %.not38 = icmp eq i8 %i.bi, 0
  br i1 %.not38, label %._crit_edge.i.i.i, label %.thread43

._crit_edge.i.i.i:                                ; preds = %bb.l
  switch i64 %i.bd, label %.thread [
    i64 3, label %bb.m
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

bb.m:                                             ; preds = %._crit_edge.i.i.i
  %i.bj = load i32, ptr %i.f, align 4, !tbaa !8
  %i.bk = icmp eq i32 %i.bj, %i.bf
  br i1 %i.bk, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit, label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %bb.m, %._crit_edge.i.i.i
  %.sroa.032.1.i.i.i = phi ptr [ %i.f, %._crit_edge.i.i.i ], [ %i.be, %bb.m ] ; 3 uses
  %i.bl = load i32, ptr %.sroa.032.1.i.i.i, align 4, !tbaa !8
  %i.bm = icmp eq i32 %i.bl, %i.bf
  br i1 %i.bm, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit, label %bb.n

bb.n:                                             ; preds = %._crit_edge._crit_edge.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 4
  br label %._crit_edge._crit_edge57.i.i.i

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.n
  %.sroa.032.2.i.i.i = phi ptr [ %i.bn, %bb.n ], [ %i.f, %._crit_edge.i.i.i ] ; 2 uses
  %i.bo = load i32, ptr %.sroa.032.2.i.i.i, align 4, !tbaa !8
  %i.bp = icmp eq i32 %i.bo, %i.bf
  %spec.select.i.i.i = select i1 %i.bp, ptr %.sroa.032.2.i.i.i, ptr %i.e
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit: ; preds = %bb.m, %._crit_edge._crit_edge.i.i.i, %._crit_edge._crit_edge57.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %spec.select.i.i.i, %._crit_edge._crit_edge57.i.i.i ], [ %i.f, %bb.m ]
  %i.bq = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i, %i.e
  br i1 %i.bq, label %.thread, label %bb.o

bb.o:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit
  %.not39.not = icmp slt i32 %.02761, %i.k
  %i.br = add nsw i32 %.02761, 1                  ; 2 uses
  br i1 %.not39.not, label %.thread43, label %.thread

.thread43:                                        ; preds = %bb.o, %bb.l
  %.22946 = phi i32 [ %.02761, %bb.l ], [ %i.br, %bb.o ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.02663, i64 4 ; 2 uses
  %.not37 = icmp eq ptr %i.bs, %i.q
  br i1 %.not37, label %.thread, label %bb.l

.thread:                                          ; preds = %.thread43, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit, %bb.o, %._crit_edge.i.i.i, %.thread43.us, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit.us, %bb.k, %._crit_edge.loopexit.i.i.i.us, %bb.c
  %.not37.lcssa = phi i1 [ true, %bb.c ], [ false, %._crit_edge.loopexit.i.i.i.us ], [ false, %bb.k ], [ false, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit.us ], [ true, %.thread43.us ], [ false, %._crit_edge.i.i.i ], [ false, %bb.o ], [ false, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit ], [ true, %.thread43 ]
  %.330 = phi i32 [ 0, %bb.c ], [ %.02761.us, %._crit_edge.loopexit.i.i.i.us ], [ %i.bb, %bb.k ], [ %.02761.us, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit.us ], [ %.22946.us, %.thread43.us ], [ %.02761, %._crit_edge.i.i.i ], [ %i.br, %bb.o ], [ %.02761, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit ], [ %.22946, %.thread43 ]
  %i.bt = icmp eq i32 %.330, %i.k
  %.4 = select i1 %.not37.lcssa, i1 %i.bt, i1 false
  br label %bb.p

bb.p:                                             ; preds = %.thread, %bb.b, %bb.a
  %.6 = phi i1 [ false, %bb.a ], [ %.4, %.thread ], [ false, %bb.b ]
  ret i1 %.6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZN7CaDiCaL8Internal11find_clauseERKSt6vectorIiSaIiEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(7288) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !176    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !176  ; 2 uses
  %.not3840 = icmp eq ptr %i.a, %i.c
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 832
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !10 ; 2 uses
  br i1 %.not3840, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.023.lcssa = phi i32 [ 0, %bb.a ], [ %spec.select36, %.lr.ph ] ; 2 uses
  %i.d = tail call noundef i32 @llvm.abs.i32(i32 %.023.lcssa, i1 true)
  %i.e = tail call noundef i32 @llvm.fshl.i32(i32 %i.d, i32 %.023.lcssa, i32 1)
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %i.f ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !19   ; 2 uses
  %.not3944 = icmp eq ptr %i.h, %i.j
  br i1 %.not3944, label %._crit_edge48, label %.lr.ph47

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.02143 = phi i64 [ %spec.select37, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %.02342 = phi i32 [ %spec.select36, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %.sroa.033.041 = phi ptr [ %i.w, %.lr.ph ], [ %i.a, %bb.a ] ; 2 uses
  %i.k = load i32, ptr %.sroa.033.041, align 4, !tbaa !8 ; 3 uses
  %i.l = tail call noundef i32 @llvm.abs.i32(i32 %i.k, i1 true)
  %i.m = tail call noundef i32 @llvm.fshl.i32(i32 %i.l, i32 %i.k, i32 1)
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !14
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !18
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 3                   ; 2 uses
  %.not = icmp eq i32 %.02342, 0
  %.not28 = icmp ult i64 %i.v, %.02143
  %or.cond = select i1 %.not, i1 true, i1 %.not28 ; 2 uses
  %spec.select36 = select i1 %or.cond, i32 %i.k, i32 %.02342 ; 2 uses
  %spec.select37 = select i1 %or.cond, i64 %i.v, i64 %.02143
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.033.041, i64 4 ; 2 uses
  %.not38 = icmp eq ptr %i.w, %i.c
  br i1 %.not38, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph47
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.029.045, i64 8 ; 2 uses
  %.not39 = icmp eq ptr %i.x, %i.j
  br i1 %.not39, label %._crit_edge48, label %.lr.ph47

.lr.ph47:                                         ; preds = %._crit_edge, %bb.b
  %.sroa.029.045 = phi ptr [ %i.x, %bb.b ], [ %i.h, %._crit_edge ] ; 2 uses
  %i.y = load ptr, ptr %.sroa.029.045, align 8, !tbaa !20 ; 2 uses
  %i.z = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal9is_clauseEPNS_6ClauseERKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(7288) %0, ptr noundef %i.y, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.z, label %._crit_edge48, label %bb.b

._crit_edge48:                                    ; preds = %.lr.ph47, %bb.b, %._crit_edge
  %spec.select = phi ptr [ null, %._crit_edge ], [ null, %bb.b ], [ %i.y, %.lr.ph47 ]
  ret ptr %spec.select
}

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8Internal13find_xor_gateERNS_10EliminatorEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(7288) %0, ptr noundef nonnull align 8 dereferenceable(192) %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.20", align 8    ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3456
  %i.b = load i32, ptr %i.a, align 8, !tbaa !188
  %.not = icmp eq i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i8, ptr %i.c, align 4, !range !163
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond = select i1 %.not, i1 true, i1 %i.e
  br i1 %or.cond, label %bb.ar, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !165
  %i.h = sext i32 %2 to i64
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !9
  %.not53 = icmp eq i8 %i.j, 0
  br i1 %.not53, label %bb.c, label %bb.ar

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 9 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 11 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !19
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %bb.d, label %bb.ar

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 2 uses
  %i.q = tail call noundef i32 @llvm.abs.i32(i32 %2, i1 true)
  %i.r = tail call noundef i32 @llvm.fshl.i32(i32 %i.q, i32 %2, i32 1)
  %i.s = zext i32 %i.r to i64
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !10
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.s ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !19   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !19   ; 2 uses
  %.not112151 = icmp eq ptr %i.v, %i.x
  br i1 %.not112151, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %.lr.ph154

.lr.ph154:                                        ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 3452
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph154, %.critedge
  %i.ac = phi ptr [ null, %.lr.ph154 ], [ %i.hd, %.critedge ] ; 2 uses
  %.promoted = phi ptr [ null, %.lr.ph154 ], [ %.promoted190, %.critedge ] ; 3 uses
  %i.ad = phi ptr [ null, %.lr.ph154 ], [ %i.he, %.critedge ] ; 3 uses
  %.promoted146 = phi ptr [ null, %.lr.ph154 ], [ %i.hf, %.critedge ] ; 5 uses
  %.sroa.099.0152 = phi ptr [ %i.v, %.lr.ph154 ], [ %i.hg, %.critedge ] ; 2 uses
  %i.ae = load ptr, ptr %.sroa.099.0152, align 8, !tbaa !20 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = and i32 %i.ag, 16
  %.not.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit.i, label %.critedge

_ZNSt6vectorIiSaIiEE5clearEv.exit.i:              ; preds = %bb.e
  %.not.i.i.i = icmp eq ptr %i.ad, %.promoted146
  %spec.store.select = select i1 %.not.i.i.i, ptr %i.ad, ptr %.promoted146 ; 4 uses
  store ptr %spec.store.select, ptr %i.y, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !8  ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %.idx.i = shl nsw i64 %i.al, 2
  %i.am = getelementptr inbounds i8, ptr %i.ai, i64 %.idx.i
  %.not1517.i = icmp eq i32 %i.ak, 0
  br i1 %.not1517.i, label %_ZN7CaDiCaL8Internal10get_clauseEPNS_6ClauseERSt6vectorIiSaIiEE.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit.i, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i
  %4 = phi ptr [ %5, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i ], [ %.promoted146, %_ZNSt6vectorIiSaIiEE5clearEv.exit.i ] ; 4 uses
  %i.an = phi ptr [ %i.bn, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i ], [ %spec.store.select, %_ZNSt6vectorIiSaIiEE5clearEv.exit.i ]
  %i.ao = phi ptr [ %i.bo, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i ], [ %.promoted, %_ZNSt6vectorIiSaIiEE5clearEv.exit.i ] ; 4 uses
  %i.ap = phi ptr [ %i.bp, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i ], [ %.promoted146, %_ZNSt6vectorIiSaIiEE5clearEv.exit.i ] ; 6 uses
  %i.aq = phi ptr [ %i.bq, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i ], [ %spec.store.select, %_ZNSt6vectorIiSaIiEE5clearEv.exit.i ] ; 4 uses
  %.018.i = phi ptr [ %i.br, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i ], [ %i.ai, %_ZNSt6vectorIiSaIiEE5clearEv.exit.i ] ; 3 uses
  %i.ar = load i32, ptr %.018.i, align 4, !tbaa !8 ; 2 uses
  %i.as = load ptr, ptr %i.f, align 8, !tbaa !165
  %i.at = sext i32 %i.ar to i64
  %i.au = getelementptr inbounds i8, ptr %i.as, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !9
  %.not16.i = icmp eq i8 %i.av, 0
  br i1 %.not16.i, label %bb.f, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i

bb.f:                                             ; preds = %.lr.ph.i
  %.not.i.i = icmp eq ptr %i.aq, %i.ao
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %i.ar, ptr %i.aq, align 4, !tbaa !8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 4 ; 2 uses
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ax = ptrtoint ptr %i.ao to i64
  %i.ay = ptrtoint ptr %i.ap to i64
  %i.az = sub i64 %i.ax, %i.ay                    ; 5 uses
  %i.ba = icmp eq i64 %i.az, 9223372036854775804
  br i1 %i.ba, label %bb.i, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #12
          to label %.noexc unwind label %.loopexit.split-lp117

.noexc:                                           ; preds = %bb.i
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.h
  %i.bb = ashr exact i64 %i.az, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bb, i64 1)
  %i.bc = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bb ; 2 uses
  %i.bd = icmp ult i64 %i.bc, %i.bb
  %i.be = tail call i64 @llvm.umin.i64(i64 %i.bc, i64 2305843009213693951)
  %i.bf = select i1 %i.bd, i64 2305843009213693951, i64 %i.be ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bf, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bg = shl nuw nsw i64 %i.bf, 2
  %i.bh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #13
          to label %.noexc64 unwind label %.loopexit116 ; 5 uses

.noexc64:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 %i.az ; 2 uses
  %i.bj = load i32, ptr %.018.i, align 4, !tbaa !8
  store i32 %i.bj, ptr %i.bi, align 4, !tbaa !8
  %i.bk = icmp sgt i64 %i.az, 0
  br i1 %i.bk, label %bb.j, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.j:                                             ; preds = %.noexc64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bh, ptr align 4 %i.ap, i64 %i.az, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.j, %.noexc64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 4 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.ap) #14
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.k, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bf
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i

_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i:        ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.g, %.lr.ph.i
  %5 = phi ptr [ %i.bh, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %4, %bb.g ], [ %4, %.lr.ph.i ] ; 3 uses
  %i.bn = phi ptr [ %i.bl, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.aw, %bb.g ], [ %i.an, %.lr.ph.i ] ; 3 uses
  %i.bo = phi ptr [ %i.bm, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.ao, %bb.g ], [ %i.ao, %.lr.ph.i ] ; 3 uses
  %i.bp = phi ptr [ %i.bh, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.ap, %bb.g ], [ %i.ap, %.lr.ph.i ]
  %i.bq = phi ptr [ %i.bl, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.aw, %bb.g ], [ %i.aq, %.lr.ph.i ]
  %i.br = getelementptr inbounds nuw i8, ptr %.018.i, i64 4 ; 2 uses
  %.not15.i = icmp eq ptr %i.br, %i.am
  br i1 %.not15.i, label %_ZN7CaDiCaL8Internal10get_clauseEPNS_6ClauseERSt6vectorIiSaIiEE.exit.thread.loopexit, label %.lr.ph.i

.loopexit116:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit118 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

.loopexit.split-lp117:                            ; preds = %bb.i
  %lpad.loopexit.split-lp119 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

_ZN7CaDiCaL8Internal10get_clauseEPNS_6ClauseERSt6vectorIiSaIiEE.exit.thread.loopexit: ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i
  store ptr %i.bo, ptr %i.z, align 8
  store ptr %i.bn, ptr %i.y, align 8
  store ptr %5, ptr %3, align 8
  br label %_ZN7CaDiCaL8Internal10get_clauseEPNS_6ClauseERSt6vectorIiSaIiEE.exit.thread

_ZN7CaDiCaL8Internal10get_clauseEPNS_6ClauseERSt6vectorIiSaIiEE.exit.thread: ; preds = %_ZN7CaDiCaL8Internal10get_clauseEPNS_6ClauseERSt6vectorIiSaIiEE.exit.thread.loopexit, %_ZNSt6vectorIiSaIiEE5clearEv.exit.i
  %.pre195 = phi ptr [ %5, %_ZN7CaDiCaL8Internal10get_clauseEPNS_6ClauseERSt6vectorIiSaIiEE.exit.thread.loopexit ], [ %i.ac, %_ZNSt6vectorIiSaIiEE5clearEv.exit.i ] ; 21 uses
  %i.bs = phi ptr [ %i.bn, %_ZN7CaDiCaL8Internal10get_clauseEPNS_6ClauseERSt6vectorIiSaIiEE.exit.thread.loopexit ], [ %spec.store.select, %_ZNSt6vectorIiSaIiEE5clearEv.exit.i ] ; 7 uses
  %.promoted191 = phi ptr [ %i.bo, %_ZN7CaDiCaL8Internal10get_clauseEPNS_6ClauseERSt6vectorIiSaIiEE.exit.thread.loopexit ], [ %.promoted, %_ZNSt6vectorIiSaIiEE5clearEv.exit.i ] ; 4 uses
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %.pre195 to i64
  %i.bv = sub i64 %i.bt, %i.bu                    ; 3 uses
  %i.bw = lshr exact i64 %i.bv, 2                 ; 3 uses
  %i.bx = trunc i64 %i.bw to i32                  ; 2 uses
  %i.by = add nsw i32 %i.bx, -1                   ; 2 uses
  %i.bz = icmp slt i32 %i.bx, 3
  br i1 %i.bz, label %.critedge, label %bb.l

bb.l:                                             ; preds = %_ZN7CaDiCaL8Internal10get_clauseEPNS_6ClauseERSt6vectorIiSaIiEE.exit.thread
  %i.ca = load i32, ptr %i.aa, align 4, !tbaa !189
  %i.cb = icmp sgt i32 %i.by, %i.ca
  br i1 %i.cb, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %notmask = shl nsw i32 -1, %i.by
  %i.cc = xor i32 %notmask, -1
  %.not3840.i = icmp eq ptr %.pre195, %i.bs
  %i.cd = and i64 %i.bv, 8589934588
  %i.ce = icmp eq i64 %i.cd, 4
  %unroll_iter = and i64 %i.bw, 2147483646
  %i.cf = and i64 %i.bv, 4
  %lcmp.mod.not = icmp eq i64 %i.cf, 0
  %lcmp.mod317 = trunc i64 %i.bw to i1
  br label %bb.n

bb.n:                                             ; preds = %bb.ab, %bb.m
  %.039 = phi i32 [ %i.cc, %bb.m ], [ %i.fd, %bb.ab ] ; 2 uses
  %.038 = phi i32 [ 0, %bb.m ], [ %i.cg, %bb.ab ] ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %.1 = phi i32 [ %.038, %bb.n ], [ %i.cg, %bb.o ]
  %i.cg = add i32 %.1, 1                          ; 5 uses
  %i.ch = lshr i32 %i.cg, 16
  %i.ci = xor i32 %i.ch, %i.cg                    ; 2 uses
  %i.cj = lshr i32 %i.ci, 8
  %i.ck = xor i32 %i.cj, %i.ci                    ; 2 uses
  %i.cl = lshr i32 %i.ck, 4
  %i.cm = xor i32 %i.cl, %i.ck                    ; 2 uses
  %i.cn = lshr i32 %i.cm, 2
  %i.co = xor i32 %i.cn, %i.cm                    ; 2 uses
  %i.cp = lshr i32 %i.co, 1
  %i.cq = xor i32 %i.cp, %i.co
  %i.cr = trunc i32 %i.cq to i1
  br i1 %i.cr, label %bb.o, label %.lr.ph, !llvm.loop !190

.lr.ph:                                           ; preds = %bb.o
  %i.cs = xor i32 %i.cg, %.038                    ; 3 uses
  br i1 %i.ce, label %.epil.preheader, label %.lr.ph.new

._crit_edge.unr-lcssa:                            ; preds = %bb.u
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod317)
  %i.ct = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.cu = shl nuw i32 1, %i.ct
  %i.cv = and i32 %i.cu, %i.cs
  %.not61.epil = icmp eq i32 %i.cv, 0
  br i1 %.not61.epil, label %._crit_edge, label %bb.p

bb.p:                                             ; preds = %.epil.preheader
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %.pre195, i64 %indvars.iv.epil.init ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !8
  %i.cy = sub nsw i32 0, %i.cx
  store i32 %i.cy, ptr %i.cw, align 4, !tbaa !8
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %bb.p, %._crit_edge.unr-lcssa
  %.pre.i = load ptr, ptr %i.p, align 8, !tbaa !10 ; 2 uses
  br i1 %.not3840.i, label %._crit_edge.i, label %.lr.ph.i65

._crit_edge.i:                                    ; preds = %.lr.ph.i65, %._crit_edge
  %.023.lcssa.i = phi i32 [ 0, %._crit_edge ], [ %spec.select36.i, %.lr.ph.i65 ] ; 2 uses
  %i.cz = tail call noundef i32 @llvm.abs.i32(i32 %.023.lcssa.i, i1 true)
  %i.da = tail call noundef i32 @llvm.fshl.i32(i32 %i.cz, i32 %.023.lcssa.i, i32 1)
  %i.db = zext i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw [24 x i8], ptr %.pre.i, i64 %i.db ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !19 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !19 ; 2 uses
  %.not3944.i = icmp eq ptr %i.dd, %i.df
  br i1 %.not3944.i, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit, label %.lr.ph47.i

.lr.ph.i65:                                       ; preds = %._crit_edge, %.lr.ph.i65
  %.02143.i = phi i64 [ %spec.select37.i, %.lr.ph.i65 ], [ 0, %._crit_edge ] ; 2 uses
  %.02342.i = phi i32 [ %spec.select36.i, %.lr.ph.i65 ], [ 0, %._crit_edge ] ; 2 uses
  %.sroa.033.041.i = phi ptr [ %i.ds, %.lr.ph.i65 ], [ %.pre195, %._crit_edge ] ; 2 uses
  %i.dg = load i32, ptr %.sroa.033.041.i, align 4, !tbaa !8 ; 3 uses
  %i.dh = tail call noundef i32 @llvm.abs.i32(i32 %i.dg, i1 true)
  %i.di = tail call noundef i32 @llvm.fshl.i32(i32 %i.dh, i32 %i.dg, i32 1)
  %i.dj = zext i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [24 x i8], ptr %.pre.i, i64 %i.dj ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !14
  %i.dn = load ptr, ptr %i.dk, align 8, !tbaa !18
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = sub i64 %i.do, %i.dp
  %i.dr = ashr exact i64 %i.dq, 3                 ; 2 uses
  %.not.i66 = icmp eq i32 %.02342.i, 0
  %.not28.i = icmp ult i64 %i.dr, %.02143.i
  %or.cond.i = select i1 %.not.i66, i1 true, i1 %.not28.i ; 2 uses
  %spec.select36.i = select i1 %or.cond.i, i32 %i.dg, i32 %.02342.i ; 2 uses
  %spec.select37.i = select i1 %or.cond.i, i64 %i.dr, i64 %.02143.i
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.033.041.i, i64 4 ; 2 uses
  %.not38.i = icmp eq ptr %i.ds, %i.bs
  br i1 %.not38.i, label %._crit_edge.i, label %.lr.ph.i65

bb.q:                                             ; preds = %.lr.ph47.i
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.029.045.i, i64 8 ; 2 uses
  %.not39.i = icmp eq ptr %i.dt, %i.df
  br i1 %.not39.i, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit, label %.lr.ph47.i

.lr.ph47.i:                                       ; preds = %._crit_edge.i, %bb.q
  %.sroa.029.045.i = phi ptr [ %i.dt, %bb.q ], [ %i.dd, %._crit_edge.i ] ; 2 uses
  %i.du = load ptr, ptr %.sroa.029.045.i, align 8, !tbaa !20 ; 4 uses
  %i.dv = call noundef zeroext i1 @_ZN7CaDiCaL8Internal9is_clauseEPNS_6ClauseERKSt6vectorIiSaIiEE(ptr noundef nonnull readonly align 8 dereferenceable(7288) %0, ptr noundef %i.du, ptr noundef nonnull readonly align 8 dereferenceable(24) %3)
  br i1 %i.dv, label %_ZN7CaDiCaL8Internal11find_clauseERKSt6vectorIiSaIiEE.exit, label %bb.q

.lr.ph.new:                                       ; preds = %.lr.ph, %bb.u
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %bb.u ], [ 0, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %bb.u ], [ 0, %.lr.ph ]
  %i.dw = trunc nuw nsw i64 %indvars.iv to i32
  %i.dx = shl nuw i32 1, %i.dw
  %i.dy = and i32 %i.dx, %i.cs
  %.not61 = icmp eq i32 %i.dy, 0
  br i1 %.not61, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.new
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %.pre195, i64 %indvars.iv ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !8
  %i.eb = sub nsw i32 0, %i.ea
  store i32 %i.eb, ptr %i.dz, align 4, !tbaa !8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.new
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ec = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.ed = shl nuw i32 1, %i.ec
  %i.ee = and i32 %i.ed, %i.cs
  %.not61.1 = icmp eq i32 %i.ee, 0
  br i1 %.not61.1, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %.pre195, i64 %indvars.iv.next ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !8
  %i.eh = sub nsw i32 0, %i.eg
  store i32 %i.eh, ptr %i.ef, align 4, !tbaa !8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph.new, !llvm.loop !191

_ZN7CaDiCaL8Internal11find_clauseERKSt6vectorIiSaIiEE.exit: ; preds = %.lr.ph47.i
  %.not54 = icmp eq ptr %i.du, null
  br i1 %.not54, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit, label %bb.v

.loopexit:                                        ; preds = %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

.loopexit.split-lp:                               ; preds = %bb.y
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.v:                                             ; preds = %_ZN7CaDiCaL8Internal11find_clauseERKSt6vectorIiSaIiEE.exit
  %i.ei = load ptr, ptr %i.m, align 8, !tbaa !14  ; 4 uses
  %i.ej = load ptr, ptr %i.ab, align 8, !tbaa !178 ; 2 uses
  %.not.i67 = icmp eq ptr %i.ei, %i.ej
  br i1 %.not.i67, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store ptr %i.du, ptr %i.ei, align 8, !tbaa !20
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 8 ; 2 uses
  store ptr %i.ek, ptr %i.m, align 8, !tbaa !14
  br label %bb.ab

bb.x:                                             ; preds = %bb.v
  %i.el = load ptr, ptr %i.k, align 8, !tbaa !18  ; 4 uses
  %i.em = ptrtoint ptr %i.ei to i64
  %i.en = ptrtoint ptr %i.el to i64
  %i.eo = sub i64 %i.em, %i.en                    ; 5 uses
  %i.ep = icmp eq i64 %i.eo, 9223372036854775800
  br i1 %i.ep, label %bb.y, label %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.y:                                             ; preds = %bb.x
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #12
          to label %.noexc69 unwind label %.loopexit.split-lp

.noexc69:                                         ; preds = %bb.y
  unreachable

end_hunk_0
begin_hunk_1_@_ZN7CaDiCaL8Internal13find_xor_gateERNS_10EliminatorEi:bb.a
  store ptr %i.fa, ptr %i.ab, align 8, !tbaa !178
  br label %bb.ab

bb.ab:                                            ; preds = %bb.w, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.fb = phi ptr [ %i.ej, %bb.w ], [ %i.fa, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ]
  %i.fc = phi ptr [ %i.ek, %bb.w ], [ %i.ez, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ]
  %i.fd = add i32 %.039, -1                       ; 2 uses
  %.not55 = icmp eq i32 %i.fd, 0
  br i1 %.not55, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit.thread106, label %bb.n, !llvm.loop !192

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit: ; preds = %._crit_edge.i, %_ZN7CaDiCaL8Internal11find_clauseERKSt6vectorIiSaIiEE.exit, %bb.q
  %.not56.not = icmp eq i32 %.039, 0
  br i1 %.not56.not, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit.thread106.loopexit161, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit
  %i.fe = load ptr, ptr %i.k, align 8, !tbaa !18  ; 2 uses
  %i.ff = load ptr, ptr %i.m, align 8, !tbaa !14
  %.not.i.i71 = icmp eq ptr %i.ff, %i.fe
  br i1 %.not.i.i71, label %.critedge, label %_ZSt8_DestroyIPPN7CaDiCaL6ClauseES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPPN7CaDiCaL6ClauseES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.ac
  store ptr %i.fe, ptr %i.m, align 8, !tbaa !14
  br label %.critedge

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit.thread106.loopexit161: ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !14
  %.pre192 = load ptr, ptr %i.ab, align 8, !tbaa !178
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit.thread106

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit.thread106: ; preds = %bb.ab, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit.thread106.loopexit161
  %i.fg = phi ptr [ %.pre192, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit.thread106.loopexit161 ], [ %i.fb, %bb.ab ] ; 2 uses
  %i.fh = phi ptr [ %.pre, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit.thread106.loopexit161 ], [ %i.fc, %bb.ab ] ; 3 uses
  %.not.i72 = icmp eq ptr %i.fh, %i.fg
  br i1 %.not.i72, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit.thread106
  store ptr %i.ae, ptr %i.fh, align 8, !tbaa !20
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8 ; 2 uses
  store ptr %i.fi, ptr %i.m, align 8, !tbaa !14
  %.pre193 = load ptr, ptr %i.k, align 8, !tbaa !19
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit81

bb.ae:                                            ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit.thread106
  %i.fj = load ptr, ptr %i.k, align 8, !tbaa !18  ; 4 uses
  %i.fk = ptrtoint ptr %i.fg to i64
  %i.fl = ptrtoint ptr %i.fj to i64
  %i.fm = sub i64 %i.fk, %i.fl                    ; 5 uses
  %i.fn = icmp eq i64 %i.fm, 9223372036854775800
  br i1 %i.fn, label %bb.af, label %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i73

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #12
          to label %.noexc79 unwind label %bb.ak

.noexc79:                                         ; preds = %bb.af
  unreachable

_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i73: ; preds = %bb.ae
  %i.fo = ashr exact i64 %i.fm, 3                 ; 3 uses
  %.sroa.speculated.i.i.i74 = tail call i64 @llvm.umax.i64(i64 %i.fo, i64 1)
  %i.fp = add nsw i64 %.sroa.speculated.i.i.i74, %i.fo ; 2 uses
  %i.fq = icmp ult i64 %i.fp, %i.fo
  %i.fr = tail call i64 @llvm.umin.i64(i64 %i.fp, i64 1152921504606846975)
  %i.fs = select i1 %i.fq, i64 1152921504606846975, i64 %i.fr ; 3 uses
  %.not.i.i.i75 = icmp ne i64 %i.fs, 0
  tail call void @llvm.assume(i1 %.not.i.i.i75)
  %i.ft = shl nuw nsw i64 %i.fs, 3
  %i.fu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ft) #13
          to label %.noexc80 unwind label %bb.ak  ; 5 uses

.noexc80:                                         ; preds = %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i73
  %i.fv = getelementptr inbounds i8, ptr %i.fu, i64 %i.fm ; 2 uses
  store ptr %i.ae, ptr %i.fv, align 8, !tbaa !20
  %i.fw = icmp sgt i64 %i.fm, 0
  br i1 %i.fw, label %bb.ag, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i76

bb.ag:                                            ; preds = %.noexc80
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fu, ptr align 8 %i.fj, i64 %i.fm, i1 false)
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i76

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i76: ; preds = %bb.ag, %.noexc80
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 8 ; 2 uses
  %.not.i17.i.i77 = icmp eq ptr %i.fj, null
  br i1 %.not.i17.i.i77, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i78, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i76
  tail call void @_ZdlPv(ptr noundef nonnull %i.fj) #14
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i78

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i78: ; preds = %bb.ah, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i76
  store ptr %i.fu, ptr %i.k, align 8, !tbaa !18
  store ptr %i.fx, ptr %i.m, align 8, !tbaa !14
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %i.fs
  store ptr %i.fy, ptr %i.ab, align 8, !tbaa !178
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit81

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit81: ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i78, %bb.ad
  %i.fz = phi ptr [ %i.fu, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i78 ], [ %.pre193, %bb.ad ] ; 5 uses
  %i.ga = phi ptr [ %i.fx, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i78 ], [ %i.fi, %bb.ad ] ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 4920 ; 2 uses
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !181
  %i.gd = add nsw i64 %i.gc, 1
  store i64 %i.gd, ptr %i.gb, align 8, !tbaa !181
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 4952 ; 2 uses
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !193
  %i.gg = add nsw i64 %i.gf, 1
  store i64 %i.gg, ptr %i.ge, align 8, !tbaa !193
  %.not113155 = icmp eq ptr %i.fz, %i.ga
  br i1 %.not113155, label %._crit_edge159, label %.lr.ph158

._crit_edge159.loopexit:                          ; preds = %bb.am
  %.pre194 = load ptr, ptr %i.k, align 8, !tbaa !19
  br label %._crit_edge159

._crit_edge159:                                   ; preds = %._crit_edge159.loopexit, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit81
  %i.gh = phi ptr [ %i.fz, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit81 ], [ %.pre194, %._crit_edge159.loopexit ] ; 2 uses
  %.sroa.092.0.lcssa = phi ptr [ %i.fz, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit81 ], [ %.sroa.092.1, %._crit_edge159.loopexit ] ; 2 uses
  %i.gi = ptrtoint ptr %.sroa.092.0.lcssa to i64
  %i.gj = ptrtoint ptr %i.gh to i64               ; 2 uses
  %i.gk = sub i64 %i.gi, %i.gj                    ; 2 uses
  %i.gl = ashr exact i64 %i.gk, 3                 ; 3 uses
  %i.gm = load ptr, ptr %i.m, align 8, !tbaa !14  ; 2 uses
  %i.gn = ptrtoint ptr %i.gm to i64
  %i.go = sub i64 %i.gn, %i.gj
  %i.gp = ashr exact i64 %i.go, 3                 ; 3 uses
  %i.gq = icmp ugt i64 %i.gl, %i.gp
  br i1 %i.gq, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %._crit_edge159
  %i.gr = sub nuw nsw i64 %i.gl, %i.gp
  invoke void @_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %i.gr)
          to label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE5clearEv.exit unwind label %bb.an

bb.aj:                                            ; preds = %._crit_edge159
  %i.gs = icmp uge i64 %i.gl, %i.gp
  %.not.i.i82 = icmp eq ptr %i.gm, %.sroa.092.0.lcssa
  %or.cond114 = or i1 %i.gs, %.not.i.i82
  br i1 %or.cond114, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE5clearEv.exit, label %_ZSt8_DestroyIPPN7CaDiCaL6ClauseES2_EvT_S4_RSaIT0_E.exit.i.i83

_ZSt8_DestroyIPPN7CaDiCaL6ClauseES2_EvT_S4_RSaIT0_E.exit.i.i83: ; preds = %bb.aj
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.gk
  store ptr %i.gt, ptr %i.m, align 8, !tbaa !14
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE5clearEv.exit

bb.ak:                                            ; preds = %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i73, %bb.af
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

.lr.ph158:                                        ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit81, %bb.am
  %.sroa.089.0157 = phi ptr [ %i.hb, %bb.am ], [ %i.fz, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit81 ] ; 2 uses
  %.sroa.092.0156 = phi ptr [ %.sroa.092.1, %bb.am ], [ %i.fz, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit81 ] ; 3 uses
  %i.gv = load ptr, ptr %.sroa.089.0157, align 8, !tbaa !20 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8 ; 2 uses
  %i.gx = load i32, ptr %i.gw, align 8            ; 2 uses
  %i.gy = and i32 %i.gx, 32
  %.not60 = icmp eq i32 %i.gy, 0
  br i1 %.not60, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.lr.ph158
  %i.gz = or disjoint i32 %i.gx, 32
  store i32 %i.gz, ptr %i.gw, align 8
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.092.0156, i64 8
  store ptr %i.gv, ptr %.sroa.092.0156, align 8, !tbaa !20
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph158, %bb.al
  %.sroa.092.1 = phi ptr [ %i.ha, %bb.al ], [ %.sroa.092.0156, %.lr.ph158 ] ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.089.0157, i64 8 ; 2 uses
  %.not113 = icmp eq ptr %i.hb, %i.ga
  br i1 %.not113, label %._crit_edge159.loopexit, label %.lr.ph158, !llvm.loop !194

bb.an:                                            ; preds = %bb.ai
  %i.hc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

.critedge:                                        ; preds = %bb.ac, %_ZSt8_DestroyIPPN7CaDiCaL6ClauseES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.e, %bb.l, %_ZN7CaDiCaL8Internal10get_clauseEPNS_6ClauseERSt6vectorIiSaIiEE.exit.thread
  %i.hd = phi ptr [ %.pre195, %bb.ac ], [ %.pre195, %_ZSt8_DestroyIPPN7CaDiCaL6ClauseES2_EvT_S4_RSaIT0_E.exit.i.i ], [ %i.ac, %bb.e ], [ %.pre195, %bb.l ], [ %.pre195, %_ZN7CaDiCaL8Internal10get_clauseEPNS_6ClauseERSt6vectorIiSaIiEE.exit.thread ] ; 2 uses
  %.promoted190 = phi ptr [ %.promoted191, %bb.ac ], [ %.promoted191, %_ZSt8_DestroyIPPN7CaDiCaL6ClauseES2_EvT_S4_RSaIT0_E.exit.i.i ], [ %.promoted, %bb.e ], [ %.promoted191, %bb.l ], [ %.promoted191, %_ZN7CaDiCaL8Internal10get_clauseEPNS_6ClauseERSt6vectorIiSaIiEE.exit.thread ]
  %i.he = phi ptr [ %i.bs, %bb.ac ], [ %i.bs, %_ZSt8_DestroyIPPN7CaDiCaL6ClauseES2_EvT_S4_RSaIT0_E.exit.i.i ], [ %i.ad, %bb.e ], [ %i.bs, %bb.l ], [ %i.bs, %_ZN7CaDiCaL8Internal10get_clauseEPNS_6ClauseERSt6vectorIiSaIiEE.exit.thread ]
  %i.hf = phi ptr [ %.pre195, %bb.ac ], [ %.pre195, %_ZSt8_DestroyIPPN7CaDiCaL6ClauseES2_EvT_S4_RSaIT0_E.exit.i.i ], [ %.promoted146, %bb.e ], [ %.pre195, %bb.l ], [ %.pre195, %_ZN7CaDiCaL8Internal10get_clauseEPNS_6ClauseERSt6vectorIiSaIiEE.exit.thread ]
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.099.0152, i64 8 ; 2 uses
  %.not112 = icmp eq ptr %i.hg, %i.x
  br i1 %.not112, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE5clearEv.exit, label %bb.e

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE5clearEv.exit: ; preds = %.critedge, %bb.aj, %bb.ai, %_ZSt8_DestroyIPPN7CaDiCaL6ClauseES2_EvT_S4_RSaIT0_E.exit.i.i83
  %i.hh = phi ptr [ %.pre195, %_ZSt8_DestroyIPPN7CaDiCaL6ClauseES2_EvT_S4_RSaIT0_E.exit.i.i83 ], [ %.pre195, %bb.ai ], [ %.pre195, %bb.aj ], [ %i.hd, %.critedge ] ; 2 uses
  %.not.i.i.i85 = icmp eq ptr %i.hh, null
  br i1 %.not.i.i.i85, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE5clearEv.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.hh) #14
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.d, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE5clearEv.exit, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %bb.ar

bb.ap:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit116, %.loopexit.split-lp117, %bb.an, %bb.ak
  %i.hi = phi ptr [ %4, %.loopexit.split-lp117 ], [ %.pre195, %bb.ak ], [ %.pre195, %bb.an ], [ %4, %.loopexit116 ], [ %.pre195, %.loopexit ], [ %.pre195, %.loopexit.split-lp ] ; 2 uses
  %.pn.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp119, %.loopexit.split-lp117 ], [ %i.gu, %bb.ak ], [ %i.hc, %bb.an ], [ %lpad.loopexit118, %.loopexit116 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i86 = icmp eq ptr %i.hi, null
  br i1 %.not.i.i.i86, label %_ZNSt6vectorIiSaIiEED2Ev.exit87, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  tail call void @_ZdlPv(ptr noundef nonnull %i.hi) #14
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit87

_ZNSt6vectorIiSaIiEED2Ev.exit87:                  ; preds = %bb.ap, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  resume { ptr, i32 } %.pn.pn.pn

bb.ar:                                            ; preds = %bb.c, %bb.b, %bb.a, %_ZNSt6vectorIiSaIiEED2Ev.exit
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8Internal17find_gate_clausesERNS_10EliminatorEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, ptr noundef nonnull align 8 dereferenceable(192) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3444
  %i.b = load i32, ptr %i.a, align 4, !tbaa !195
  %.not = icmp eq i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i8, ptr %i.c, align 4, !range !163
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond = select i1 %.not, i1 true, i1 %i.e
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !165
  %i.h = sext i32 %2 to i64
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !9
  %.not11 = icmp eq i8 %i.j, 0
  br i1 %.not11, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN7CaDiCaL8Internal16find_equivalenceERNS_10EliminatorEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, ptr noundef nonnull align 8 dereferenceable(192) %1, i32 noundef %2)
  tail call void @_ZN7CaDiCaL8Internal13find_and_gateERNS_10EliminatorEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, ptr noundef nonnull align 8 dereferenceable(192) %1, i32 noundef %2)
  %i.k = sub nsw i32 0, %2
  tail call void @_ZN7CaDiCaL8Internal13find_and_gateERNS_10EliminatorEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, ptr noundef nonnull align 8 dereferenceable(192) %1, i32 noundef %i.k)
  tail call void @_ZN7CaDiCaL8Internal17find_if_then_elseERNS_10EliminatorEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, ptr noundef nonnull align 8 dereferenceable(192) %1, i32 noundef %2)
  tail call void @_ZN7CaDiCaL8Internal13find_xor_gateERNS_10EliminatorEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, ptr noundef nonnull align 8 dereferenceable(192) %1, i32 noundef %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN7CaDiCaL8Internal19unmark_gate_clausesERNS_10EliminatorE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(7288) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(192) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 2 uses
  %.not8 = icmp eq ptr %i.b, %i.d
  br i1 %.not8, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE5clearEv.exit, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !18  ; 2 uses
  %.pre10 = load ptr, ptr %i.c, align 8, !tbaa !14
  %i.e = icmp eq ptr %.pre10, %.pre
  br i1 %i.e, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE5clearEv.exit, label %_ZSt8_DestroyIPPN7CaDiCaL6ClauseES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPPN7CaDiCaL6ClauseES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %._crit_edge
  store ptr %.pre, ptr %i.c, align 8, !tbaa !14
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE5clearEv.exit

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE5clearEv.exit: ; preds = %bb.a, %._crit_edge, %_ZSt8_DestroyIPPN7CaDiCaL6ClauseES2_EvT_S4_RSaIT0_E.exit.i.i
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.05.09 = phi ptr [ %i.j, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.f = load ptr, ptr %.sroa.05.09, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8
  %i.i = and i32 %i.h, -33
  store i32 %i.i, ptr %i.g, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.05.09, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.j, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !18     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !178
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.b, align 8, !tbaa !20
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !20
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !14
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #12
  unreachable

_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #13 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store ptr null, ptr %i.y, align 8, !tbaa !20
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !20
  br label %_ZSt27__uninitialized_default_n_aIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE13_M_deallocateEPS2_m.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #14
  br label %_ZNSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE13_M_deallocateEPS2_m.exit36

_ZNSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE13_M_deallocateEPS2_m.exit36: ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !18
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !14
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ae, ptr %i.h, align 8, !tbaa !178
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE13_M_deallocateEPS2_m.exit36, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9
end_hunk_1
