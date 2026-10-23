Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/gates?download=true
inline.NumInlined: 429
inline.NumDeleted: 144
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN7CaDiCaL8Internal9is_clauseEPNS_6ClauseERKSt6vectorIiSaIiEE:bb.a
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
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !13 ; 2 uses
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
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !17
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
  %i.y = load ptr, ptr %.sroa.029.045, align 8, !tbaa !21 ; 2 uses
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
  %i.b = load i32, ptr %i.a, align 8, !tbaa !192
  %.not = icmp eq i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i8, ptr %i.c, align 4, !range !163
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond = select i1 %.not, i1 true, i1 %i.e
  br i1 %or.cond, label %bb.am, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !165
  %i.h = sext i32 %2 to i64
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !9
  %.not53 = icmp eq i8 %i.j, 0
  br i1 %.not53, label %bb.c, label %bb.am

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 9 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 11 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !19
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %bb.d, label %bb.am

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 2 uses
  %i.q = tail call noundef i32 @llvm.abs.i32(i32 %2, i1 true)
  %i.r = tail call noundef i32 @llvm.fshl.i32(i32 %i.q, i32 %2, i32 1)
  %i.s = zext i32 %i.r to i64
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !13
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.s ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !19   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !19   ; 2 uses
  %.not112134 = icmp eq ptr %i.v, %i.x
  br i1 %.not112134, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %.lr.ph137

.lr.ph137:                                        ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 3452
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph137, %.critedge
  %4 = phi ptr [ null, %.lr.ph137 ], [ %7, %.critedge ] ; 3 uses
  %i.ac = phi ptr [ null, %.lr.ph137 ], [ %i.he, %.critedge ] ; 3 uses
  %i.ad = phi ptr [ null, %.lr.ph137 ], [ %i.hf, %.critedge ] ; 3 uses
  %i.ae = phi ptr [ null, %.lr.ph137 ], [ %i.hg, %.critedge ] ; 4 uses
  %.sroa.099.0135 = phi ptr [ %i.v, %.lr.ph137 ], [ %i.hh, %.critedge ] ; 2 uses
  %i.af = load ptr, ptr %.sroa.099.0135, align 8, !tbaa !21 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = and i32 %i.ah, 16
  %.not.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit.i, label %.critedge

_ZNSt6vectorIiSaIiEE5clearEv.exit.i:              ; preds = %bb.e
  %.not.i.i.i = icmp eq ptr %i.ad, %i.ae
  %spec.store.select = select i1 %.not.i.i.i, ptr %i.ad, ptr %i.ae ; 3 uses
  store ptr %spec.store.select, ptr %i.y, align 8, !tbaa !169
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !8  ; 2 uses
  %i.am = sext i32 %i.al to i64
  %.idx.i = shl nsw i64 %i.am, 2
  %i.an = getelementptr inbounds i8, ptr %i.aj, i64 %.idx.i
  %.not1517.i = icmp eq i32 %i.al, 0
  br i1 %.not1517.i, label %_ZN7CaDiCaL8Internal10get_clauseEPNS_6ClauseERSt6vectorIiSaIiEE.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit.i, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i
  %i.ao = phi ptr [ %i.bo, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i ], [ %4, %_ZNSt6vectorIiSaIiEE5clearEv.exit.i ] ; 4 uses
  %i.ap = phi ptr [ %i.bp, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i ], [ %i.ac, %_ZNSt6vectorIiSaIiEE5clearEv.exit.i ] ; 4 uses
  %i.aq = phi ptr [ %i.bq, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i ], [ %i.ae, %_ZNSt6vectorIiSaIiEE5clearEv.exit.i ] ; 6 uses
  %i.ar = phi ptr [ %i.br, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i ], [ %spec.store.select, %_ZNSt6vectorIiSaIiEE5clearEv.exit.i ] ; 4 uses
  %.018.i = phi ptr [ %i.bs, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i ], [ %i.aj, %_ZNSt6vectorIiSaIiEE5clearEv.exit.i ] ; 3 uses
  %i.as = load i32, ptr %.018.i, align 4, !tbaa !8 ; 2 uses
  %i.at = load ptr, ptr %i.f, align 8, !tbaa !165
  %i.au = sext i32 %i.as to i64
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !9
  %.not16.i = icmp eq i8 %i.aw, 0
  br i1 %.not16.i, label %bb.f, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i

bb.f:                                             ; preds = %.lr.ph.i
  %.not.i.i = icmp eq ptr %i.ar, %i.ap
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %i.as, ptr %i.ar, align 4, !tbaa !8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 4 ; 2 uses
  store ptr %i.ax, ptr %i.y, align 8, !tbaa !169
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ay = ptrtoint ptr %i.ap to i64
  %i.az = ptrtoint ptr %i.aq to i64
  %i.ba = sub i64 %i.ay, %i.az                    ; 5 uses
  %i.bb = icmp eq i64 %i.ba, 9223372036854775804
  br i1 %i.bb, label %bb.i, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #12
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.i
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.h
  %i.bc = ashr exact i64 %i.ba, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bc, i64 1)
  %i.bd = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bc ; 2 uses
  %i.be = icmp ult i64 %i.bd, %i.bc
  %i.bf = tail call i64 @llvm.umin.i64(i64 %i.bd, i64 2305843009213693951)
  %i.bg = select i1 %i.be, i64 2305843009213693951, i64 %i.bf ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bg, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bh = shl nuw nsw i64 %i.bg, 2
  %i.bi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bh) #13
          to label %.noexc64 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 6 uses

.noexc64:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 %i.ba ; 2 uses
  %i.bk = load i32, ptr %.018.i, align 4, !tbaa !8
  store i32 %i.bk, ptr %i.bj, align 4, !tbaa !8
  %i.bl = icmp sgt i64 %i.ba, 0
  br i1 %i.bl, label %bb.j, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.j:                                             ; preds = %.noexc64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bi, ptr align 4 %i.aq, i64 %i.ba, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.j, %.noexc64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 4 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.aq) #14
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.k, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.bi, ptr %3, align 8, !tbaa !171
  store ptr %i.bm, ptr %i.y, align 8, !tbaa !169
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.bg ; 2 uses
  store ptr %i.bn, ptr %i.z, align 8, !tbaa !170
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i

_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i:        ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.g, %.lr.ph.i
  %i.bo = phi ptr [ %i.bi, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.ao, %bb.g ], [ %i.ao, %.lr.ph.i ] ; 2 uses
  %i.bp = phi ptr [ %i.bn, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.ap, %bb.g ], [ %i.ap, %.lr.ph.i ] ; 2 uses
  %i.bq = phi ptr [ %i.bi, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.aq, %bb.g ], [ %i.aq, %.lr.ph.i ]
  %i.br = phi ptr [ %i.bm, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.ax, %bb.g ], [ %i.ar, %.lr.ph.i ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.018.i, i64 4 ; 2 uses
  %.not15.i = icmp eq ptr %i.bs, %i.an
  br i1 %.not15.i, label %_ZN7CaDiCaL8Internal10get_clauseEPNS_6ClauseERSt6vectorIiSaIiEE.exit.thread, label %.lr.ph.i

_ZN7CaDiCaL8Internal10get_clauseEPNS_6ClauseERSt6vectorIiSaIiEE.exit.thread: ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i, %_ZNSt6vectorIiSaIiEE5clearEv.exit.i
  %i.bt = phi ptr [ %4, %_ZNSt6vectorIiSaIiEE5clearEv.exit.i ], [ %i.bo, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i ] ; 21 uses
  %i.bu = phi ptr [ %spec.store.select, %_ZNSt6vectorIiSaIiEE5clearEv.exit.i ], [ %i.br, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i ] ; 7 uses
  %i.bv = phi ptr [ %i.ac, %_ZNSt6vectorIiSaIiEE5clearEv.exit.i ], [ %i.bp, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i ] ; 4 uses
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx                    ; 3 uses
  %i.bz = lshr exact i64 %i.by, 2                 ; 3 uses
  %i.ca = trunc i64 %i.bz to i32                  ; 2 uses
  %i.cb = add nsw i32 %i.ca, -1                   ; 2 uses
  %i.cc = icmp slt i32 %i.ca, 3
  br i1 %i.cc, label %.critedge, label %bb.l

bb.l:                                             ; preds = %_ZN7CaDiCaL8Internal10get_clauseEPNS_6ClauseERSt6vectorIiSaIiEE.exit.thread
  %i.cd = load i32, ptr %i.aa, align 4, !tbaa !193
  %i.ce = icmp sgt i32 %i.cb, %i.cd
  br i1 %i.ce, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %notmask = shl nsw i32 -1, %i.cb
  %i.cf = xor i32 %notmask, -1
  %.not3840.i = icmp eq ptr %i.bt, %i.bu
  %i.cg = and i64 %i.by, 8589934588
  %i.ch = icmp eq i64 %i.cg, 4
  %unroll_iter = and i64 %i.bz, 2147483646
  %i.ci = and i64 %i.by, 4
  %lcmp.mod.not = icmp eq i64 %i.ci, 0
  %lcmp.mod288 = trunc i64 %i.bz to i1
  br label %bb.n

bb.n:                                             ; preds = %bb.aa, %bb.m
  %.039 = phi i32 [ %i.cf, %bb.m ], [ %i.fg, %bb.aa ] ; 2 uses
  %.038 = phi i32 [ 0, %bb.m ], [ %i.cj, %bb.aa ] ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %.1 = phi i32 [ %.038, %bb.n ], [ %i.cj, %bb.o ]
  %i.cj = add i32 %.1, 1                          ; 5 uses
  %i.ck = lshr i32 %i.cj, 16
  %i.cl = xor i32 %i.ck, %i.cj                    ; 2 uses
  %i.cm = lshr i32 %i.cl, 8
  %i.cn = xor i32 %i.cm, %i.cl                    ; 2 uses
  %i.co = lshr i32 %i.cn, 4
  %i.cp = xor i32 %i.co, %i.cn                    ; 2 uses
  %i.cq = lshr i32 %i.cp, 2
  %i.cr = xor i32 %i.cq, %i.cp                    ; 2 uses
  %i.cs = lshr i32 %i.cr, 1
  %i.ct = xor i32 %i.cs, %i.cr
  %i.cu = trunc i32 %i.ct to i1
  br i1 %i.cu, label %bb.o, label %.lr.ph, !llvm.loop !188

.lr.ph:                                           ; preds = %bb.o
  %i.cv = xor i32 %i.cj, %.038                    ; 3 uses
  br i1 %i.ch, label %.epil.preheader, label %.lr.ph.new

._crit_edge.unr-lcssa:                            ; preds = %bb.u
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod288)
  %i.cw = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.cx = shl nuw i32 1, %i.cw
  %i.cy = and i32 %i.cx, %i.cv
  %.not61.epil = icmp eq i32 %i.cy, 0
  br i1 %.not61.epil, label %._crit_edge, label %bb.p

bb.p:                                             ; preds = %.epil.preheader
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv.epil.init ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !8
  %i.db = sub nsw i32 0, %i.da
  store i32 %i.db, ptr %i.cz, align 4, !tbaa !8
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %bb.p, %._crit_edge.unr-lcssa
  %.pre.i = load ptr, ptr %i.p, align 8, !tbaa !13 ; 2 uses
  br i1 %.not3840.i, label %._crit_edge.i, label %.lr.ph.i65

._crit_edge.i:                                    ; preds = %.lr.ph.i65, %._crit_edge
  %.023.lcssa.i = phi i32 [ 0, %._crit_edge ], [ %spec.select36.i, %.lr.ph.i65 ] ; 2 uses
  %i.dc = tail call noundef i32 @llvm.abs.i32(i32 %.023.lcssa.i, i1 true)
  %i.dd = tail call noundef i32 @llvm.fshl.i32(i32 %i.dc, i32 %.023.lcssa.i, i32 1)
  %i.de = zext i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [24 x i8], ptr %.pre.i, i64 %i.de ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !19 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !19 ; 2 uses
  %.not3944.i = icmp eq ptr %i.dg, %i.di
  br i1 %.not3944.i, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit, label %.lr.ph47.i

.lr.ph.i65:                                       ; preds = %._crit_edge, %.lr.ph.i65
  %.02143.i = phi i64 [ %spec.select37.i, %.lr.ph.i65 ], [ 0, %._crit_edge ] ; 2 uses
  %.02342.i = phi i32 [ %spec.select36.i, %.lr.ph.i65 ], [ 0, %._crit_edge ] ; 2 uses
  %.sroa.033.041.i = phi ptr [ %i.dv, %.lr.ph.i65 ], [ %i.bt, %._crit_edge ] ; 2 uses
  %i.dj = load i32, ptr %.sroa.033.041.i, align 4, !tbaa !8 ; 3 uses
  %i.dk = tail call noundef i32 @llvm.abs.i32(i32 %i.dj, i1 true)
  %i.dl = tail call noundef i32 @llvm.fshl.i32(i32 %i.dk, i32 %i.dj, i32 1)
  %i.dm = zext i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [24 x i8], ptr %.pre.i, i64 %i.dm ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !17
  %i.dq = load ptr, ptr %i.dn, align 8, !tbaa !18
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = sub i64 %i.dr, %i.ds
  %i.du = ashr exact i64 %i.dt, 3                 ; 2 uses
  %.not.i66 = icmp eq i32 %.02342.i, 0
  %.not28.i = icmp ult i64 %i.du, %.02143.i
  %or.cond.i = select i1 %.not.i66, i1 true, i1 %.not28.i ; 2 uses
  %spec.select36.i = select i1 %or.cond.i, i32 %i.dj, i32 %.02342.i ; 2 uses
  %spec.select37.i = select i1 %or.cond.i, i64 %i.du, i64 %.02143.i
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.033.041.i, i64 4 ; 2 uses
  %.not38.i = icmp eq ptr %i.dv, %i.bu
  br i1 %.not38.i, label %._crit_edge.i, label %.lr.ph.i65

bb.q:                                             ; preds = %.lr.ph47.i
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.029.045.i, i64 8 ; 2 uses
  %.not39.i = icmp eq ptr %i.dw, %i.di
  br i1 %.not39.i, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit, label %.lr.ph47.i

.lr.ph47.i:                                       ; preds = %._crit_edge.i, %bb.q
  %.sroa.029.045.i = phi ptr [ %i.dw, %bb.q ], [ %i.dg, %._crit_edge.i ] ; 2 uses
  %i.dx = load ptr, ptr %.sroa.029.045.i, align 8, !tbaa !21 ; 4 uses
  %i.dy = call noundef zeroext i1 @_ZN7CaDiCaL8Internal9is_clauseEPNS_6ClauseERKSt6vectorIiSaIiEE(ptr noundef nonnull readonly align 8 dereferenceable(7288) %0, ptr noundef %i.dx, ptr noundef nonnull readonly align 8 dereferenceable(24) %3)
  br i1 %i.dy, label %_ZN7CaDiCaL8Internal11find_clauseERKSt6vectorIiSaIiEE.exit, label %bb.q

.lr.ph.new:                                       ; preds = %.lr.ph, %bb.u
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %bb.u ], [ 0, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %bb.u ], [ 0, %.lr.ph ]
  %i.dz = trunc nuw nsw i64 %indvars.iv to i32
  %i.ea = shl nuw i32 1, %i.dz
  %i.eb = and i32 %i.ea, %i.cv
  %.not61 = icmp eq i32 %i.eb, 0
  br i1 %.not61, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.new
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !8
  %i.ee = sub nsw i32 0, %i.ed
  store i32 %i.ee, ptr %i.ec, align 4, !tbaa !8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.new
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ef = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.eg = shl nuw i32 1, %i.ef
  %i.eh = and i32 %i.eg, %i.cv
  %.not61.1 = icmp eq i32 %i.eh, 0
  br i1 %.not61.1, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv.next ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !8
  %i.ek = sub nsw i32 0, %i.ej
  store i32 %i.ek, ptr %i.ei, align 4, !tbaa !8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph.new, !llvm.loop !189

_ZN7CaDiCaL8Internal11find_clauseERKSt6vectorIiSaIiEE.exit: ; preds = %.lr.ph47.i
  %.not54 = icmp eq ptr %i.dx, null
  br i1 %.not54, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit, label %bb.v

bb.v:                                             ; preds = %_ZN7CaDiCaL8Internal11find_clauseERKSt6vectorIiSaIiEE.exit
  %i.el = load ptr, ptr %i.m, align 8, !tbaa !17  ; 4 uses
  %i.em = load ptr, ptr %i.ab, align 8, !tbaa !177 ; 2 uses
  %.not.i67 = icmp eq ptr %i.el, %i.em
  br i1 %.not.i67, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store ptr %i.dx, ptr %i.el, align 8, !tbaa !21
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 2 uses
  store ptr %i.en, ptr %i.m, align 8, !tbaa !17
  br label %bb.aa

bb.x:                                             ; preds = %bb.v
  %i.eo = load ptr, ptr %i.k, align 8, !tbaa !18  ; 4 uses
  %i.ep = ptrtoint ptr %i.el to i64
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = sub i64 %i.ep, %i.eq                    ; 5 uses
  %i.es = icmp eq i64 %i.er, 9223372036854775800
  br i1 %i.es, label %.invoke, label %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.x
  %i.et = ashr exact i64 %i.er, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.et, i64 1)
  %i.eu = add nsw i64 %.sroa.speculated.i.i.i, %i.et ; 2 uses
  %i.ev = icmp ult i64 %i.eu, %i.et
  %i.ew = tail call i64 @llvm.umin.i64(i64 %i.eu, i64 1152921504606846975)
  %i.ex = select i1 %i.ev, i64 1152921504606846975, i64 %i.ew ; 3 uses
  %.not.i.i.i68 = icmp ne i64 %i.ex, 0
  tail call void @llvm.assume(i1 %.not.i.i.i68)
  %i.ey = shl nuw nsw i64 %i.ex, 3
  %i.ez = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ey) #13
          to label %.noexc70 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 4 uses

.noexc70:                                         ; preds = %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.fa = getelementptr inbounds i8, ptr %i.ez, i64 %i.er ; 2 uses
  store ptr %i.dx, ptr %i.fa, align 8, !tbaa !21
  %i.fb = icmp sgt i64 %i.er, 0
  br i1 %i.fb, label %bb.y, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.y:                                             ; preds = %.noexc70
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ez, ptr align 8 %i.eo, i64 %i.er, i1 false)
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.y, %.noexc70
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.eo, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.eo) #14
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.z, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.ez, ptr %i.k, align 8, !tbaa !18
  store ptr %i.fc, ptr %i.m, align 8, !tbaa !17
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.ex ; 2 uses
  store ptr %i.fd, ptr %i.ab, align 8, !tbaa !177
  br label %bb.aa

bb.aa:                                            ; preds = %bb.w, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.fe = phi ptr [ %i.em, %bb.w ], [ %i.fd, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ]
  %i.ff = phi ptr [ %i.en, %bb.w ], [ %i.fc, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ]
  %i.fg = add i32 %.039, -1                       ; 2 uses
  %.not55 = icmp eq i32 %i.fg, 0
  br i1 %.not55, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit.thread106, label %bb.n, !llvm.loop !190

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit: ; preds = %._crit_edge.i, %_ZN7CaDiCaL8Internal11find_clauseERKSt6vectorIiSaIiEE.exit, %bb.q
  %.not56.not = icmp eq i32 %.039, 0
  br i1 %.not56.not, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit.thread106.loopexit147, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit
  %i.fh = load ptr, ptr %i.k, align 8, !tbaa !18  ; 2 uses
  %i.fi = load ptr, ptr %i.m, align 8, !tbaa !17
  %.not.i.i71 = icmp eq ptr %i.fi, %i.fh
  br i1 %.not.i.i71, label %.critedge, label %_ZSt8_DestroyIPPN7CaDiCaL6ClauseES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPPN7CaDiCaL6ClauseES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.ab
  store ptr %i.fh, ptr %i.m, align 8, !tbaa !17
  br label %.critedge

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit.thread106.loopexit147: ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !17
  %.pre163 = load ptr, ptr %i.ab, align 8, !tbaa !177
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit.thread106

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit.thread106: ; preds = %bb.aa, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit.thread106.loopexit147
  %i.fj = phi ptr [ %.pre163, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit.thread106.loopexit147 ], [ %i.fe, %bb.aa ] ; 2 uses
  %i.fk = phi ptr [ %.pre, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit.thread106.loopexit147 ], [ %i.ff, %bb.aa ] ; 3 uses
  %.not.i72 = icmp eq ptr %i.fk, %i.fj
  br i1 %.not.i72, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit.thread106
  store ptr %i.af, ptr %i.fk, align 8, !tbaa !21
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8 ; 2 uses
  store ptr %i.fl, ptr %i.m, align 8, !tbaa !17
  %.pre164 = load ptr, ptr %i.k, align 8, !tbaa !19
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit81

bb.ad:                                            ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit.thread106
  %i.fm = load ptr, ptr %i.k, align 8, !tbaa !18  ; 4 uses
  %i.fn = ptrtoint ptr %i.fj to i64
  %i.fo = ptrtoint ptr %i.fm to i64
  %i.fp = sub i64 %i.fn, %i.fo                    ; 5 uses
  %i.fq = icmp eq i64 %i.fp, 9223372036854775800
  br i1 %i.fq, label %.invoke, label %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i73

.invoke:                                          ; preds = %bb.x, %bb.ad
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #12
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i73: ; preds = %bb.ad
  %i.fr = ashr exact i64 %i.fp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i74 = tail call i64 @llvm.umax.i64(i64 %i.fr, i64 1)
  %i.fs = add nsw i64 %.sroa.speculated.i.i.i74, %i.fr ; 2 uses
  %i.ft = icmp ult i64 %i.fs, %i.fr
  %i.fu = tail call i64 @llvm.umin.i64(i64 %i.fs, i64 1152921504606846975)
  %i.fv = select i1 %i.ft, i64 1152921504606846975, i64 %i.fu ; 3 uses
  %.not.i.i.i75 = icmp ne i64 %i.fv, 0
  tail call void @llvm.assume(i1 %.not.i.i.i75)
  %i.fw = shl nuw nsw i64 %i.fv, 3
  %i.fx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fw) #13
          to label %.noexc80 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc80:                                         ; preds = %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i73
  %i.fy = getelementptr inbounds i8, ptr %i.fx, i64 %i.fp ; 2 uses
  store ptr %i.af, ptr %i.fy, align 8, !tbaa !21
  %i.fz = icmp sgt i64 %i.fp, 0
  br i1 %i.fz, label %bb.ae, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i76

bb.ae:                                            ; preds = %.noexc80
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fx, ptr align 8 %i.fm, i64 %i.fp, i1 false)
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i76

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i76: ; preds = %bb.ae, %.noexc80
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 8 ; 2 uses
  %.not.i17.i.i77 = icmp eq ptr %i.fm, null
  br i1 %.not.i17.i.i77, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i78, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i76
  tail call void @_ZdlPv(ptr noundef nonnull %i.fm) #14
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i78

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i78: ; preds = %bb.af, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i76
  store ptr %i.fx, ptr %i.k, align 8, !tbaa !18
  store ptr %i.ga, ptr %i.m, align 8, !tbaa !17
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.fv
  store ptr %i.gb, ptr %i.ab, align 8, !tbaa !177
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit81

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit81: ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i78, %bb.ac
  %i.gc = phi ptr [ %i.fx, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i78 ], [ %.pre164, %bb.ac ] ; 5 uses
  %i.gd = phi ptr [ %i.ga, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i78 ], [ %i.fl, %bb.ac ] ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 4920 ; 2 uses
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !178
  %i.gg = add nsw i64 %i.gf, 1
  store i64 %i.gg, ptr %i.ge, align 8, !tbaa !178
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 4952 ; 2 uses
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !194
  %i.gj = add nsw i64 %i.gi, 1
  store i64 %i.gj, ptr %i.gh, align 8, !tbaa !194
  %.not113138 = icmp eq ptr %i.gc, %i.gd
  br i1 %.not113138, label %._crit_edge142, label %.lr.ph141

._crit_edge142.loopexit:                          ; preds = %bb.aj
  %.pre165 = load ptr, ptr %i.k, align 8, !tbaa !19
  br label %._crit_edge142

._crit_edge142:                                   ; preds = %._crit_edge142.loopexit, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit81
  %i.gk = phi ptr [ %i.gc, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit81 ], [ %.pre165, %._crit_edge142.loopexit ] ; 2 uses
  %.sroa.092.0.lcssa = phi ptr [ %i.gc, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit81 ], [ %.sroa.092.1, %._crit_edge142.loopexit ] ; 2 uses
  %i.gl = ptrtoint ptr %.sroa.092.0.lcssa to i64
  %i.gm = ptrtoint ptr %i.gk to i64               ; 2 uses
  %i.gn = sub i64 %i.gl, %i.gm                    ; 2 uses
  %i.go = ashr exact i64 %i.gn, 3                 ; 3 uses
  %i.gp = load ptr, ptr %i.m, align 8, !tbaa !17  ; 2 uses
  %i.gq = ptrtoint ptr %i.gp to i64
  %i.gr = sub i64 %i.gq, %i.gm
  %i.gs = ashr exact i64 %i.gr, 3                 ; 3 uses
  %i.gt = icmp ugt i64 %i.go, %i.gs
  br i1 %i.gt, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %._crit_edge142
  %i.gu = sub nuw nsw i64 %i.go, %i.gs
  invoke void @_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %i.gu)
          to label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE5clearEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ah:                                            ; preds = %._crit_edge142
  %i.gv = icmp uge i64 %i.go, %i.gs
  %.not.i.i82 = icmp eq ptr %i.gp, %.sroa.092.0.lcssa
  %or.cond114 = or i1 %i.gv, %.not.i.i82
  br i1 %or.cond114, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE5clearEv.exit, label %_ZSt8_DestroyIPPN7CaDiCaL6ClauseES2_EvT_S4_RSaIT0_E.exit.i.i83

_ZSt8_DestroyIPPN7CaDiCaL6ClauseES2_EvT_S4_RSaIT0_E.exit.i.i83: ; preds = %bb.ah
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.gn
  store ptr %i.gw, ptr %i.m, align 8, !tbaa !17
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE5clearEv.exit

.lr.ph141:                                        ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit81, %bb.aj
  %.sroa.089.0140 = phi ptr [ %i.hd, %bb.aj ], [ %i.gc, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit81 ] ; 2 uses
  %.sroa.092.0139 = phi ptr [ %.sroa.092.1, %bb.aj ], [ %i.gc, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit81 ] ; 3 uses
  %i.gx = load ptr, ptr %.sroa.089.0140, align 8, !tbaa !21 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8 ; 2 uses
  %i.gz = load i32, ptr %i.gy, align 8            ; 2 uses
  %i.ha = and i32 %i.gz, 32
  %.not60 = icmp eq i32 %i.ha, 0
  br i1 %.not60, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.lr.ph141
  %i.hb = or disjoint i32 %i.gz, 32
  store i32 %i.hb, ptr %i.gy, align 8
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.092.0139, i64 8
  store ptr %i.gx, ptr %.sroa.092.0139, align 8, !tbaa !21
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph141, %bb.ai
  %.sroa.092.1 = phi ptr [ %i.hc, %bb.ai ], [ %.sroa.092.0139, %.lr.ph141 ] ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.089.0140, i64 8 ; 2 uses
  %.not113 = icmp eq ptr %i.hd, %i.gd
  br i1 %.not113, label %._crit_edge142.loopexit, label %.lr.ph141, !llvm.loop !191

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit144 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %bb.i, %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i73, %bb.ag
  %5 = phi ptr [ %i.ao, %bb.i ], [ %i.bt, %.invoke ], [ %i.bt, %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i73 ], [ %i.bt, %bb.ag ]
  %lpad.loopexit.split-lp145 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit
  %6 = phi ptr [ %i.bt, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %i.ao, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %5, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit144, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp145, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.not.i.i.i86 = icmp eq ptr %6, null
  br i1 %.not.i.i.i86, label %_ZNSt6vectorIiSaIiEED2Ev.exit87, label %bb.al

.critedge:                                        ; preds = %bb.ab, %_ZSt8_DestroyIPPN7CaDiCaL6ClauseES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.e, %bb.l, %_ZN7CaDiCaL8Internal10get_clauseEPNS_6ClauseERSt6vectorIiSaIiEE.exit.thread
  %7 = phi ptr [ %i.bt, %bb.ab ], [ %i.bt, %_ZSt8_DestroyIPPN7CaDiCaL6ClauseES2_EvT_S4_RSaIT0_E.exit.i.i ], [ %4, %bb.e ], [ %i.bt, %bb.l ], [ %i.bt, %_ZN7CaDiCaL8Internal10get_clauseEPNS_6ClauseERSt6vectorIiSaIiEE.exit.thread ] ; 2 uses
  %i.he = phi ptr [ %i.bv, %bb.ab ], [ %i.bv, %_ZSt8_DestroyIPPN7CaDiCaL6ClauseES2_EvT_S4_RSaIT0_E.exit.i.i ], [ %i.ac, %bb.e ], [ %i.bv, %bb.l ], [ %i.bv, %_ZN7CaDiCaL8Internal10get_clauseEPNS_6ClauseERSt6vectorIiSaIiEE.exit.thread ]
  %i.hf = phi ptr [ %i.bu, %bb.ab ], [ %i.bu, %_ZSt8_DestroyIPPN7CaDiCaL6ClauseES2_EvT_S4_RSaIT0_E.exit.i.i ], [ %i.ad, %bb.e ], [ %i.bu, %bb.l ], [ %i.bu, %_ZN7CaDiCaL8Internal10get_clauseEPNS_6ClauseERSt6vectorIiSaIiEE.exit.thread ]
  %i.hg = phi ptr [ %i.bt, %bb.ab ], [ %i.bt, %_ZSt8_DestroyIPPN7CaDiCaL6ClauseES2_EvT_S4_RSaIT0_E.exit.i.i ], [ %i.ae, %bb.e ], [ %i.bt, %bb.l ], [ %i.bt, %_ZN7CaDiCaL8Internal10get_clauseEPNS_6ClauseERSt6vectorIiSaIiEE.exit.thread ]
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.099.0135, i64 8 ; 2 uses
  %.not112 = icmp eq ptr %i.hh, %i.x
  br i1 %.not112, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE5clearEv.exit, label %bb.e

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE5clearEv.exit: ; preds = %.critedge, %bb.ah, %bb.ag, %_ZSt8_DestroyIPPN7CaDiCaL6ClauseES2_EvT_S4_RSaIT0_E.exit.i.i83
  %i.hi = phi ptr [ %i.bt, %_ZSt8_DestroyIPPN7CaDiCaL6ClauseES2_EvT_S4_RSaIT0_E.exit.i.i83 ], [ %i.bt, %bb.ag ], [ %i.bt, %bb.ah ], [ %7, %.critedge ] ; 2 uses
  %.not.i.i.i85 = icmp eq ptr %i.hi, null
  br i1 %.not.i.i.i85, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE5clearEv.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.hi) #14
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.d, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE5clearEv.exit, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %bb.am

bb.al:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp
  tail call void @_ZdlPv(ptr noundef nonnull %6) #14
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit87

_ZNSt6vectorIiSaIiEED2Ev.exit87:                  ; preds = %.loopexit.split-lp.loopexit.split-lp, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  resume { ptr, i32 } %lpad.phi

bb.am:                                            ; preds = %bb.c, %bb.b, %bb.a, %_ZNSt6vectorIiSaIiEED2Ev.exit
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
  %.pre10 = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.e = icmp eq ptr %.pre10, %.pre
  br i1 %i.e, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE5clearEv.exit, label %_ZSt8_DestroyIPPN7CaDiCaL6ClauseES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPPN7CaDiCaL6ClauseES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %._crit_edge
  store ptr %.pre, ptr %i.c, align 8, !tbaa !17
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE5clearEv.exit

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE5clearEv.exit: ; preds = %bb.a, %._crit_edge, %_ZSt8_DestroyIPPN7CaDiCaL6ClauseES2_EvT_S4_RSaIT0_E.exit.i.i
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.05.09 = phi ptr [ %i.j, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.f = load ptr, ptr %.sroa.05.09, align 8, !tbaa !21
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !18     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !177
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
  store ptr null, ptr %i.b, align 8, !tbaa !21
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !21
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !17
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
  store ptr null, ptr %i.y, align 8, !tbaa !21
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !21
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
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !17
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ae, ptr %i.h, align 8, !tbaa !177
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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_0
