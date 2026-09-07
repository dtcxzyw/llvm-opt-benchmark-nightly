Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/RegexMatchCache?download=true
inline.NumInlined: 9173
inline.NumDeleted: 3340
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_ZN5boost13re_detail_50015mem_block_cacheD2Ev:bb.a
bb.b:                                             ; preds = %bb.a
  %i.b = load atomic ptr, ptr %0 seq_cst, align 8
  tail call void @_ZdlPv(ptr noundef %i.b) #40
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load atomic ptr, ptr %i.c seq_cst, align 8
  %.not.1 = icmp eq ptr %i.d, null
  br i1 %.not.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load atomic ptr, ptr %i.c seq_cst, align 8
  tail call void @_ZdlPv(ptr noundef %i.e) #40
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load atomic ptr, ptr %i.f seq_cst, align 8
  %.not.2 = icmp eq ptr %i.g, null
  br i1 %.not.2, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = load atomic ptr, ptr %i.f seq_cst, align 8
  tail call void @_ZdlPv(ptr noundef %i.h) #40
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = load atomic ptr, ptr %i.i seq_cst, align 8
  %.not.3 = icmp eq ptr %i.j, null
  br i1 %.not.3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = load atomic ptr, ptr %i.i seq_cst, align 8
  tail call void @_ZdlPv(ptr noundef %i.k) #40
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load atomic ptr, ptr %i.l seq_cst, align 8
  %.not.4 = icmp eq ptr %i.m, null
  br i1 %.not.4, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = load atomic ptr, ptr %i.l seq_cst, align 8
  tail call void @_ZdlPv(ptr noundef %i.n) #40
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.p = load atomic ptr, ptr %i.o seq_cst, align 8
  %.not.5 = icmp eq ptr %i.p, null
  br i1 %.not.5, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.q = load atomic ptr, ptr %i.o seq_cst, align 8
  tail call void @_ZdlPv(ptr noundef %i.q) #40
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.s = load atomic ptr, ptr %i.r seq_cst, align 8
  %.not.6 = icmp eq ptr %i.s, null
  br i1 %.not.6, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.t = load atomic ptr, ptr %i.r seq_cst, align 8
  tail call void @_ZdlPv(ptr noundef %i.t) #40
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.v = load atomic ptr, ptr %i.u seq_cst, align 8
  %.not.7 = icmp eq ptr %i.v, null
  br i1 %.not.7, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.w = load atomic ptr, ptr %i.u seq_cst, align 8
  tail call void @_ZdlPv(ptr noundef %i.w) #40
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.y = load atomic ptr, ptr %i.x seq_cst, align 8
  %.not.8 = icmp eq ptr %i.y, null
  br i1 %.not.8, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.z = load atomic ptr, ptr %i.x seq_cst, align 8
  tail call void @_ZdlPv(ptr noundef %i.z) #40
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ab = load atomic ptr, ptr %i.aa seq_cst, align 8
  %.not.9 = icmp eq ptr %i.ab, null
  br i1 %.not.9, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ac = load atomic ptr, ptr %i.aa seq_cst, align 8
  tail call void @_ZdlPv(ptr noundef %i.ac) #40
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ae = load atomic ptr, ptr %i.ad seq_cst, align 8
  %.not.10 = icmp eq ptr %i.ae, null
  br i1 %.not.10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.af = load atomic ptr, ptr %i.ad seq_cst, align 8
  tail call void @_ZdlPv(ptr noundef %i.af) #40
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ah = load atomic ptr, ptr %i.ag seq_cst, align 8
  %.not.11 = icmp eq ptr %i.ah, null
  br i1 %.not.11, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ai = load atomic ptr, ptr %i.ag seq_cst, align 8
  tail call void @_ZdlPv(ptr noundef %i.ai) #40
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ak = load atomic ptr, ptr %i.aj seq_cst, align 8
  %.not.12 = icmp eq ptr %i.ak, null
  br i1 %.not.12, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.al = load atomic ptr, ptr %i.aj seq_cst, align 8
  tail call void @_ZdlPv(ptr noundef %i.al) #40
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.an = load atomic ptr, ptr %i.am seq_cst, align 8
  %.not.13 = icmp eq ptr %i.an, null
  br i1 %.not.13, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ao = load atomic ptr, ptr %i.am seq_cst, align 8
  tail call void @_ZdlPv(ptr noundef %i.ao) #40
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.aq = load atomic ptr, ptr %i.ap seq_cst, align 8
  %.not.14 = icmp eq ptr %i.aq, null
  br i1 %.not.14, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ar = load atomic ptr, ptr %i.ap seq_cst, align 8
  tail call void @_ZdlPv(ptr noundef %i.ar) #40
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.at = load atomic ptr, ptr %i.as seq_cst, align 8
  %.not.15 = icmp eq ptr %i.at, null
  br i1 %.not.15, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.au = load atomic ptr, ptr %i.as seq_cst, align 8
  tail call void @_ZdlPv(ptr noundef %i.au) #40
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS4_S6_EEmRKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(17) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPN5boost9sub_matchIPKcEES4_EvT_S6_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20174
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20228 ; 14 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 24
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.4.8.copyload = load ptr, ptr %3, align 8 ; 15 uses
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.9.8.copyload = load ptr, ptr %.sroa.9.8..sroa_idx, align 8 ; 15 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.j = load i8, ptr %i.i, align 8, !tbaa !20227, !range !20060, !noundef !1339 ; 15 uses
  %i.k = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.l = sub i64 %i.f, %i.k                       ; 3 uses
  %i.m = sdiv exact i64 %i.l, 24                  ; 3 uses
  %i.n = icmp ugt i64 %i.m, %2
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.idx = mul i64 %2, -24                         ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %i.d, i64 %.idx ; 3 uses
  %i.p = icmp eq i64 %.idx, 0
  br i1 %i.p, label %_ZSt22__uninitialized_move_aIPN5boost9sub_matchIPKcEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i ], [ %i.d, %bb.d ] ; 3 uses
  %.sroa.08.011.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i ], [ %i.o, %bb.d ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(17) %.sroa.08.011.i.i.i.i.i, i64 16, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i, i64 16
  %i.s = load i8, ptr %i.r, align 8, !tbaa !20227, !range !20060, !noundef !1339
  store i8 %i.s, ptr %i.q, align 8, !tbaa !20227
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 24
  %i.v = icmp eq ptr %i.t, %i.d
  br i1 %i.v, label %_ZSt22__uninitialized_move_aIPN5boost9sub_matchIPKcEES5_SaIS4_EET0_T_S8_S7_RT1_.exit.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !21087

_ZSt22__uninitialized_move_aIPN5boost9sub_matchIPKcEES5_SaIS4_EET0_T_S8_S7_RT1_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !20228
  br label %_ZSt22__uninitialized_move_aIPN5boost9sub_matchIPKcEES5_SaIS4_EET0_T_S8_S7_RT1_.exit

_ZSt22__uninitialized_move_aIPN5boost9sub_matchIPKcEES5_SaIS4_EET0_T_S8_S7_RT1_.exit: ; preds = %_ZSt22__uninitialized_move_aIPN5boost9sub_matchIPKcEES5_SaIS4_EET0_T_S8_S7_RT1_.exit.loopexit, %bb.d
  %i.w = phi ptr [ %.pre, %_ZSt22__uninitialized_move_aIPN5boost9sub_matchIPKcEES5_SaIS4_EET0_T_S8_S7_RT1_.exit.loopexit ], [ %i.d, %bb.d ]
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %2
  store ptr %i.x, ptr %i.c, align 8, !tbaa !20228
  %i.y = ptrtoint ptr %i.o to i64
  %i.z = sub i64 %i.y, %i.k                       ; 2 uses
  %i.aa = icmp sgt i64 %i.z, 0
  br i1 %i.aa, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt13move_backwardIPN5boost9sub_matchIPKcEES5_ET0_T_S7_S6_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZSt22__uninitialized_move_aIPN5boost9sub_matchIPKcEES5_SaIS4_EET0_T_S8_S7_RT1_.exit
  %i.ab = udiv exact i64 %i.z, 24
  br label %.lr.ph.i.i.i.i.i69

.lr.ph.i.i.i.i.i69:                               ; preds = %.lr.ph.i.i.i.i.i69, %.lr.ph.preheader.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.ai, %.lr.ph.i.i.i.i.i69 ], [ %i.ab, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i69 ], [ %i.d, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.078.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i69 ], [ %i.o, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24 ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24 ; 2 uses
  %i.ae = load <2 x ptr>, ptr %i.ac, align 8, !tbaa !19794
  store <2 x ptr> %i.ae, ptr %i.ad, align 8, !tbaa !19794
  %i.af = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !20227, !range !20060, !noundef !1339
  %i.ah = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8
  store i8 %i.ag, ptr %i.ah, align 8, !tbaa !20227
  %i.ai = add nsw i64 %.010.i.i.i.i.i, -1
  %i.aj = icmp samesign ugt i64 %.010.i.i.i.i.i, 1
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i69, label %_ZSt13move_backwardIPN5boost9sub_matchIPKcEES5_ET0_T_S7_S6_.exit, !llvm.loop !21088

_ZSt13move_backwardIPN5boost9sub_matchIPKcEES5_ET0_T_S7_S6_.exit: ; preds = %.lr.ph.i.i.i.i.i69, %_ZSt22__uninitialized_move_aIPN5boost9sub_matchIPKcEES5_SaIS4_EET0_T_S8_S7_RT1_.exit
  %.idx114 = mul nuw nsw i64 %2, 24               ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %.idx114
  %i.al = add nsw i64 %.idx114, -24               ; 2 uses
  %i.am = udiv i64 %i.al, 24
  %i.an = add nuw nsw i64 %i.am, 1
  %xtraiter139 = and i64 %i.an, 7                 ; 2 uses
  %lcmp.mod140.not = icmp eq i64 %xtraiter139, 0
  br i1 %lcmp.mod140.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %_ZSt13move_backwardIPN5boost9sub_matchIPKcEES5_ET0_T_S7_S6_.exit, %.lr.ph.i.i.i.prol
  %.06.i.i.i.prol = phi ptr [ %i.aq, %.lr.ph.i.i.i.prol ], [ %1, %_ZSt13move_backwardIPN5boost9sub_matchIPKcEES5_ET0_T_S7_S6_.exit ] ; 4 uses
  %prol.iter141 = phi i64 [ %prol.iter141.next, %.lr.ph.i.i.i.prol ], [ 0, %_ZSt13move_backwardIPN5boost9sub_matchIPKcEES5_ET0_T_S7_S6_.exit ]
  store ptr %.sroa.4.8.copyload, ptr %.06.i.i.i.prol, align 8, !tbaa !20225
  %i.ao = getelementptr inbounds nuw i8, ptr %.06.i.i.i.prol, i64 8
  store ptr %.sroa.9.8.copyload, ptr %i.ao, align 8, !tbaa !20226
  %i.ap = getelementptr inbounds nuw i8, ptr %.06.i.i.i.prol, i64 16
  store i8 %i.j, ptr %i.ap, align 8, !tbaa !20227
  %i.aq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.prol, i64 24 ; 2 uses
  %prol.iter141.next = add i64 %prol.iter141, 1   ; 2 uses
  %prol.iter141.cmp.not = icmp eq i64 %prol.iter141.next, %xtraiter139
  br i1 %prol.iter141.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !21089

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %_ZSt13move_backwardIPN5boost9sub_matchIPKcEES5_ET0_T_S7_S6_.exit
  %.06.i.i.i.unr = phi ptr [ %1, %_ZSt13move_backwardIPN5boost9sub_matchIPKcEES5_ET0_T_S7_S6_.exit ], [ %i.aq, %.lr.ph.i.i.i.prol ]
  %i.ar = icmp ult i64 %i.al, 168
  br i1 %i.ar, label %_ZSt4fillIPN5boost9sub_matchIPKcEES4_EvT_S6_RKT0_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i ], [ %.06.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 25 uses
  store ptr %.sroa.4.8.copyload, ptr %.06.i.i.i, align 8, !tbaa !20225
  %i.as = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  store ptr %.sroa.9.8.copyload, ptr %i.as, align 8, !tbaa !20226
  %i.at = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 16
  store i8 %i.j, ptr %i.at, align 8, !tbaa !20227
  %i.au = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 24
  store ptr %.sroa.4.8.copyload, ptr %i.au, align 8, !tbaa !20225
  %i.av = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 32
  store ptr %.sroa.9.8.copyload, ptr %i.av, align 8, !tbaa !20226
  %i.aw = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 40
  store i8 %i.j, ptr %i.aw, align 8, !tbaa !20227
  %i.ax = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 48
  store ptr %.sroa.4.8.copyload, ptr %i.ax, align 8, !tbaa !20225
  %i.ay = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 56
  store ptr %.sroa.9.8.copyload, ptr %i.ay, align 8, !tbaa !20226
  %i.az = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 64
  store i8 %i.j, ptr %i.az, align 8, !tbaa !20227
  %i.ba = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 72
  store ptr %.sroa.4.8.copyload, ptr %i.ba, align 8, !tbaa !20225
  %i.bb = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 80
  store ptr %.sroa.9.8.copyload, ptr %i.bb, align 8, !tbaa !20226
  %i.bc = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 88
  store i8 %i.j, ptr %i.bc, align 8, !tbaa !20227
  %i.bd = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 96
  store ptr %.sroa.4.8.copyload, ptr %i.bd, align 8, !tbaa !20225
  %i.be = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 104
  store ptr %.sroa.9.8.copyload, ptr %i.be, align 8, !tbaa !20226
  %i.bf = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 112
  store i8 %i.j, ptr %i.bf, align 8, !tbaa !20227
  %i.bg = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 120
  store ptr %.sroa.4.8.copyload, ptr %i.bg, align 8, !tbaa !20225
  %i.bh = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 128
  store ptr %.sroa.9.8.copyload, ptr %i.bh, align 8, !tbaa !20226
  %i.bi = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 136
  store i8 %i.j, ptr %i.bi, align 8, !tbaa !20227
  %i.bj = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 144
  store ptr %.sroa.4.8.copyload, ptr %i.bj, align 8, !tbaa !20225
  %i.bk = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 152
  store ptr %.sroa.9.8.copyload, ptr %i.bk, align 8, !tbaa !20226
  %i.bl = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 160
  store i8 %i.j, ptr %i.bl, align 8, !tbaa !20227
  %i.bm = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 168
  store ptr %.sroa.4.8.copyload, ptr %i.bm, align 8, !tbaa !20225
  %i.bn = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 176
  store ptr %.sroa.9.8.copyload, ptr %i.bn, align 8, !tbaa !20226
  %i.bo = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 184
  store i8 %i.j, ptr %i.bo, align 8, !tbaa !20227
  %i.bp = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 192 ; 2 uses
  %.not.i.i.i.7 = icmp eq ptr %i.bp, %i.ak
  br i1 %.not.i.i.i.7, label %_ZSt4fillIPN5boost9sub_matchIPKcEES4_EvT_S6_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !754

bb.e:                                             ; preds = %bb.c
  %i.bq = sub nuw i64 %2, %i.m                    ; 4 uses
  %.not12.i.i.i.i = icmp eq i64 %i.bq, 0
  br i1 %.not12.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPN5boost9sub_matchIPKcEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %xtraiter = and i64 %i.bq, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.014.i.i.i.i.prol = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.prol ], [ %i.d, %.lr.ph.i.i.i.i.preheader ] ; 4 uses
  %.01113.i.i.i.i.prol = phi i64 [ %i.bs, %.lr.ph.i.i.i.i.prol ], [ %i.bq, %.lr.ph.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  store ptr %.sroa.4.8.copyload, ptr %.014.i.i.i.i.prol, align 8
  %.sroa.9.8..014.i.i.i.i.sroa_idx.prol = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.prol, i64 8
  store ptr %.sroa.9.8.copyload, ptr %.sroa.9.8..014.i.i.i.i.sroa_idx.prol, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.prol, i64 16
  store i8 %i.j, ptr %i.br, align 8, !tbaa !20227
  %i.bs = add i64 %.01113.i.i.i.i.prol, -1        ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.prol, i64 24 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !21090

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.lcssa138.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.preheader ], [ %i.bt, %.lr.ph.i.i.i.i.prol ]
  %.014.i.i.i.i.unr = phi ptr [ %i.d, %.lr.ph.i.i.i.i.preheader ], [ %i.bt, %.lr.ph.i.i.i.i.prol ]
  %.01113.i.i.i.i.unr = phi i64 [ %i.bq, %.lr.ph.i.i.i.i.preheader ], [ %i.bs, %.lr.ph.i.i.i.i.prol ]
  %4 = sub i64 %i.m, %2
  %5 = icmp ugt i64 %4, -4
  br i1 %5, label %_ZSt24__uninitialized_fill_n_aIPN5boost9sub_matchIPKcEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.cc, %.lr.ph.i.i.i.i ], [ %.014.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 13 uses
  %.01113.i.i.i.i = phi i64 [ %i.cb, %.lr.ph.i.i.i.i ], [ %.01113.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  store ptr %.sroa.4.8.copyload, ptr %.014.i.i.i.i, align 8
  %.sroa.9.8..014.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 8
  store ptr %.sroa.9.8.copyload, ptr %.sroa.9.8..014.i.i.i.i.sroa_idx, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 16
  store i8 %i.j, ptr %i.bu, align 8, !tbaa !20227
  %i.bv = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 24
  store ptr %.sroa.4.8.copyload, ptr %i.bv, align 8
  %.sroa.9.8..014.i.i.i.i.sroa_idx.1 = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  store ptr %.sroa.9.8.copyload, ptr %.sroa.9.8..014.i.i.i.i.sroa_idx.1, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 40
  store i8 %i.j, ptr %i.bw, align 8, !tbaa !20227
  %i.bx = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 48
  store ptr %.sroa.4.8.copyload, ptr %i.bx, align 8
  %.sroa.9.8..014.i.i.i.i.sroa_idx.2 = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 56
  store ptr %.sroa.9.8.copyload, ptr %.sroa.9.8..014.i.i.i.i.sroa_idx.2, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 64
  store i8 %i.j, ptr %i.by, align 8, !tbaa !20227
  %i.bz = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 72
  store ptr %.sroa.4.8.copyload, ptr %i.bz, align 8
  %.sroa.9.8..014.i.i.i.i.sroa_idx.3 = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 80
  store ptr %.sroa.9.8.copyload, ptr %.sroa.9.8..014.i.i.i.i.sroa_idx.3, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 88
  store i8 %i.j, ptr %i.ca, align 8, !tbaa !20227
  %i.cb = add i64 %.01113.i.i.i.i, -4             ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i.3 = icmp eq i64 %i.cb, 0
  br i1 %.not.i.i.i.i.3, label %_ZSt24__uninitialized_fill_n_aIPN5boost9sub_matchIPKcEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !21091

_ZSt24__uninitialized_fill_n_aIPN5boost9sub_matchIPKcEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.e
  %i.cd = phi ptr [ %i.d, %bb.e ], [ %.lcssa138.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %i.cc, %.lr.ph.i.i.i.i ] ; 3 uses
  store ptr %i.cd, ptr %i.c, align 8, !tbaa !20228
  %i.ce = icmp eq ptr %1, %i.d
  br i1 %i.ce, label %_ZSt22__uninitialized_move_aIPN5boost9sub_matchIPKcEES5_SaIS4_EET0_T_S8_S7_RT1_.exit74.thread, label %.lr.ph.i.i.i.i.i70

_ZSt22__uninitialized_move_aIPN5boost9sub_matchIPKcEES5_SaIS4_EET0_T_S8_S7_RT1_.exit74.thread: ; preds = %_ZSt24__uninitialized_fill_n_aIPN5boost9sub_matchIPKcEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.l
  store ptr %i.cf, ptr %i.c, align 8, !tbaa !20228
  br label %_ZSt4fillIPN5boost9sub_matchIPKcEES4_EvT_S6_RKT0_.exit

.lr.ph.i.i.i.i.i70:                               ; preds = %_ZSt24__uninitialized_fill_n_aIPN5boost9sub_matchIPKcEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit, %.lr.ph.i.i.i.i.i70
  %.012.i.i.i.i.i71 = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i70 ], [ %i.cd, %_ZSt24__uninitialized_fill_n_aIPN5boost9sub_matchIPKcEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit ] ; 3 uses
  %.sroa.08.011.i.i.i.i.i72 = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i70 ], [ %1, %_ZSt24__uninitialized_fill_n_aIPN5boost9sub_matchIPKcEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.012.i.i.i.i.i71, ptr noundef nonnull align 8 dereferenceable(17) %.sroa.08.011.i.i.i.i.i72, i64 16, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i71, i64 16
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i72, i64 16
  %i.ci = load i8, ptr %i.ch, align 8, !tbaa !20227, !range !20060, !noundef !1339
  store i8 %i.ci, ptr %i.cg, align 8, !tbaa !20227
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i72, i64 24 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i71, i64 24
  %i.cl = icmp eq ptr %i.cj, %i.d
  br i1 %i.cl, label %.lr.ph.i.i.i76, label %.lr.ph.i.i.i.i.i70, !llvm.loop !21087

.lr.ph.i.i.i76:                                   ; preds = %.lr.ph.i.i.i.i.i70
  %i.cm = load ptr, ptr %i.c, align 8, !tbaa !20228
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.l
  store ptr %i.cn, ptr %i.c, align 8, !tbaa !20228
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i.i76
  %.06.i.i.i80 = phi ptr [ %1, %.lr.ph.i.i.i76 ], [ %i.cq, %bb.f ] ; 4 uses
  store ptr %.sroa.4.8.copyload, ptr %.06.i.i.i80, align 8, !tbaa !20225
  %i.co = getelementptr inbounds nuw i8, ptr %.06.i.i.i80, i64 8
  store ptr %.sroa.9.8.copyload, ptr %i.co, align 8, !tbaa !20226
  %i.cp = getelementptr inbounds nuw i8, ptr %.06.i.i.i80, i64 16
  store i8 %i.j, ptr %i.cp, align 8, !tbaa !20227
  %i.cq = getelementptr inbounds nuw i8, ptr %.06.i.i.i80, i64 24 ; 2 uses
  %.not.i.i.i81 = icmp eq ptr %i.cq, %i.d
  br i1 %.not.i.i.i81, label %_ZSt4fillIPN5boost9sub_matchIPKcEES4_EvT_S6_RKT0_.exit, label %bb.f, !llvm.loop !754

bb.g:                                             ; preds = %bb.b
  %i.cr = load ptr, ptr %0, align 8, !tbaa !20173 ; 5 uses
  %i.cs = ptrtoint ptr %i.cr to i64               ; 3 uses
  %i.ct = sub i64 %i.f, %i.cs
  %i.cu = sdiv exact i64 %i.ct, 24                ; 4 uses
  %i.cv = sub nsw i64 384307168202282325, %i.cu
  %i.cw = icmp ult i64 %i.cv, %2
  br i1 %i.cw, label %bb.h, label %_ZNKSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE12_M_check_lenEmS3_.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.271) #43
  unreachable

_ZNKSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE12_M_check_lenEmS3_.exit: ; preds = %bb.g
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.cu, i64 %2)
  %i.cx = add nsw i64 %.sroa.speculated.i, %i.cu  ; 2 uses
  %i.cy = icmp ult i64 %i.cx, %i.cu
  %i.cz = tail call i64 @llvm.umin.i64(i64 %i.cx, i64 384307168202282325)
  %i.da = select i1 %i.cy, i64 384307168202282325, i64 %i.cz ; 3 uses
  %i.db = ptrtoint ptr %1 to i64
  %i.dc = sub i64 %i.db, %i.cs
  %.not.i = icmp eq i64 %i.da, 0
  br i1 %.not.i, label %.lr.ph.i.i.i.i84, label %bb.i

bb.i:                                             ; preds = %_ZNKSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE12_M_check_lenEmS3_.exit
  %i.dd = mul nuw nsw i64 %i.da, 24
  %i.de = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dd) #44
  br label %.lr.ph.i.i.i.i84

.lr.ph.i.i.i.i84:                                 ; preds = %bb.i, %_ZNKSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE12_M_check_lenEmS3_.exit
  %i.df = phi ptr [ %i.de, %bb.i ], [ null, %_ZNKSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE12_M_check_lenEmS3_.exit ] ; 5 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dc ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.di = load i8, ptr %i.dh, align 8, !tbaa !20227, !range !20060, !noundef !1339 ; 5 uses
  %xtraiter142 = and i64 %2, 3                    ; 2 uses
  %lcmp.mod143.not = icmp eq i64 %xtraiter142, 0
  br i1 %lcmp.mod143.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i.i.i.i84, %.prol.preheader
  %.014.i.i.i.i85.prol = phi ptr [ %i.dl, %.prol.preheader ], [ %i.dg, %.lr.ph.i.i.i.i84 ] ; 3 uses
  %.01113.i.i.i.i86.prol = phi i64 [ %i.dk, %.prol.preheader ], [ %2, %.lr.ph.i.i.i.i84 ]
  %prol.iter144 = phi i64 [ %prol.iter144.next, %.prol.preheader ], [ 0, %.lr.ph.i.i.i.i84 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.014.i.i.i.i85.prol, ptr noundef nonnull align 8 dereferenceable(17) %3, i64 16, i1 false)
  %i.dj = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i85.prol, i64 16
  store i8 %i.di, ptr %i.dj, align 8, !tbaa !20227
  %i.dk = add i64 %.01113.i.i.i.i86.prol, -1      ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i85.prol, i64 24 ; 2 uses
  %prol.iter144.next = add i64 %prol.iter144, 1   ; 2 uses
  %prol.iter144.cmp.not = icmp eq i64 %prol.iter144.next, %xtraiter142
  br i1 %prol.iter144.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !21092

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i.i.i.i84
  %.014.i.i.i.i85.unr = phi ptr [ %i.dg, %.lr.ph.i.i.i.i84 ], [ %i.dl, %.prol.preheader ]
  %.01113.i.i.i.i86.unr = phi i64 [ %2, %.lr.ph.i.i.i.i84 ], [ %i.dk, %.prol.preheader ]
  %i.dm = icmp ult i64 %2, 4
  br i1 %i.dm, label %_ZSt24__uninitialized_fill_n_aIPN5boost9sub_matchIPKcEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit89, label %.lr.ph.i.i.i.i84.new

.lr.ph.i.i.i.i84.new:                             ; preds = %.prol.loopexit, %.lr.ph.i.i.i.i84.new
  %.014.i.i.i.i85 = phi ptr [ %i.dv, %.lr.ph.i.i.i.i84.new ], [ %.014.i.i.i.i85.unr, %.prol.loopexit ] ; 9 uses
  %.01113.i.i.i.i86 = phi i64 [ %i.du, %.lr.ph.i.i.i.i84.new ], [ %.01113.i.i.i.i86.unr, %.prol.loopexit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.014.i.i.i.i85, ptr noundef nonnull align 8 dereferenceable(17) %3, i64 16, i1 false)
  %i.dn = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i85, i64 16
  store i8 %i.di, ptr %i.dn, align 8, !tbaa !20227
  %i.do = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i85, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.do, ptr noundef nonnull align 8 dereferenceable(17) %3, i64 16, i1 false)
  %i.dp = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i85, i64 40
  store i8 %i.di, ptr %i.dp, align 8, !tbaa !20227
  %i.dq = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i85, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.dq, ptr noundef nonnull align 8 dereferenceable(17) %3, i64 16, i1 false)
  %i.dr = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i85, i64 64
  store i8 %i.di, ptr %i.dr, align 8, !tbaa !20227
  %i.ds = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i85, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.ds, ptr noundef nonnull align 8 dereferenceable(17) %3, i64 16, i1 false)
  %i.dt = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i85, i64 88
  store i8 %i.di, ptr %i.dt, align 8, !tbaa !20227
  %i.du = add i64 %.01113.i.i.i.i86, -4           ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i85, i64 96
  %.not.i.i.i.i87.3 = icmp eq i64 %i.du, 0
  br i1 %.not.i.i.i.i87.3, label %_ZSt24__uninitialized_fill_n_aIPN5boost9sub_matchIPKcEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit89, label %.lr.ph.i.i.i.i84.new, !llvm.loop !21091

_ZSt24__uninitialized_fill_n_aIPN5boost9sub_matchIPKcEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit89: ; preds = %.lr.ph.i.i.i.i84.new, %.prol.loopexit
  %.not13.i.i.i.i.i = icmp eq ptr %i.cr, %1
  br i1 %.not13.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9sub_matchIPKcEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i.i.i.i90

.lr.ph.i.i.i.i.i90:                               ; preds = %_ZSt24__uninitialized_fill_n_aIPN5boost9sub_matchIPKcEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit89, %.lr.ph.i.i.i.i.i90
  %.015.i.i.i.i.i = phi ptr [ %i.ea, %.lr.ph.i.i.i.i.i90 ], [ %i.df, %_ZSt24__uninitialized_fill_n_aIPN5boost9sub_matchIPKcEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit89 ] ; 3 uses
  %.01214.i.i.i.i.i = phi ptr [ %i.dz, %.lr.ph.i.i.i.i.i90 ], [ %i.cr, %_ZSt24__uninitialized_fill_n_aIPN5boost9sub_matchIPKcEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit89 ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.015.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(17) %.01214.i.i.i.i.i, i64 16, i1 false)
  %i.dw = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 16
  %i.dx = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 16
  %i.dy = load i8, ptr %i.dx, align 8, !tbaa !20227, !range !20060, !noundef !1339
  store i8 %i.dy, ptr %i.dw, align 8, !tbaa !20227
  %i.dz = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 24 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dz, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9sub_matchIPKcEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i.i.i.i90, !llvm.loop !21093

_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9sub_matchIPKcEES5_SaIS4_EET0_T_S8_S7_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i90, %_ZSt24__uninitialized_fill_n_aIPN5boost9sub_matchIPKcEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit89
  %.0.lcssa.i.i.i.i.i91 = phi ptr [ %i.df, %_ZSt24__uninitialized_fill_n_aIPN5boost9sub_matchIPKcEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit89 ], [ %i.ea, %.lr.ph.i.i.i.i.i90 ]
  %i.eb = getelementptr inbounds nuw [24 x i8], ptr %.0.lcssa.i.i.i.i.i91, i64 %2 ; 2 uses
  %.not13.i.i.i.i.i92 = icmp eq ptr %1, %i.d
  br i1 %.not13.i.i.i.i.i92, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9sub_matchIPKcEES5_SaIS4_EET0_T_S8_S7_RT1_.exit98, label %.lr.ph.i.i.i.i.i93

.lr.ph.i.i.i.i.i93:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9sub_matchIPKcEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, %.lr.ph.i.i.i.i.i93
  %.015.i.i.i.i.i94 = phi ptr [ %i.eg, %.lr.ph.i.i.i.i.i93 ], [ %i.eb, %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9sub_matchIPKcEES5_SaIS4_EET0_T_S8_S7_RT1_.exit ] ; 3 uses
  %.01214.i.i.i.i.i95 = phi ptr [ %i.ef, %.lr.ph.i.i.i.i.i93 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9sub_matchIPKcEES5_SaIS4_EET0_T_S8_S7_RT1_.exit ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.015.i.i.i.i.i94, ptr noundef nonnull align 8 dereferenceable(17) %.01214.i.i.i.i.i95, i64 16, i1 false)
  %i.ec = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i94, i64 16
  %i.ed = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i95, i64 16
  %i.ee = load i8, ptr %i.ed, align 8, !tbaa !20227, !range !20060, !noundef !1339
  store i8 %i.ee, ptr %i.ec, align 8, !tbaa !20227
  %i.ef = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i95, i64 24 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i94, i64 24 ; 2 uses
  %.not.i.i.i.i.i96 = icmp eq ptr %i.ef, %i.d
  br i1 %.not.i.i.i.i.i96, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9sub_matchIPKcEES5_SaIS4_EET0_T_S8_S7_RT1_.exit98, label %.lr.ph.i.i.i.i.i93, !llvm.loop !21093

_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9sub_matchIPKcEES5_SaIS4_EET0_T_S8_S7_RT1_.exit98: ; preds = %.lr.ph.i.i.i.i.i93, %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9sub_matchIPKcEES5_SaIS4_EET0_T_S8_S7_RT1_.exit
  %.0.lcssa.i.i.i.i.i97 = phi ptr [ %i.eb, %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9sub_matchIPKcEES5_SaIS4_EET0_T_S8_S7_RT1_.exit ], [ %i.eg, %.lr.ph.i.i.i.i.i93 ]
  %.not.i99 = icmp eq ptr %i.cr, null
  br i1 %.not.i99, label %_ZNSt12_Vector_baseIN5boost9sub_matchIPKcEESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9sub_matchIPKcEES5_SaIS4_EET0_T_S8_S7_RT1_.exit98
  %i.eh = load ptr, ptr %i.a, align 8, !tbaa !20174
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = sub i64 %i.ei, %i.cs
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef %i.ej) #41
  br label %_ZNSt12_Vector_baseIN5boost9sub_matchIPKcEESaIS4_EE13_M_deallocateEPS4_m.exit
end_hunk_0
