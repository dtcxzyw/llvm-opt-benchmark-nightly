Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cadical_vivify?download=true
inline.NumInlined: 2075
inline.NumDeleted: 718
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN7CaDiCaL8Internal27vivify_prioritize_leftoversEcmRSt6vectorIPNS_6ClauseESaIS3_EE:bb.a
  %.pre24 = load ptr, ptr %3, align 8, !tbaa !214 ; 2 uses
  %.pre27 = ptrtoint ptr %.pre23 to i64
  %.pre28 = ptrtoint ptr %.pre24 to i64           ; 2 uses
  %.pre30 = sub i64 %.pre27, %.pre28
  %.pre32 = ashr exact i64 %.pre30, 3
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %.thread18
  %.pre-phi33 = phi i64 [ %i.q, %._crit_edge ], [ %.pre32, %.thread18 ] ; 3 uses
  %.pre-phi29 = phi i64 [ %i.o, %._crit_edge ], [ %.pre28, %.thread18 ] ; 3 uses
  %i.ae = phi ptr [ %i.i, %._crit_edge ], [ %.pre24, %.thread18 ] ; 4 uses
  %i.af = phi ptr [ %i.j, %._crit_edge ], [ %.pre23, %.thread18 ] ; 3 uses
  %i.ag = phi i64 [ %i.m, %._crit_edge ], [ %i.u, %.thread18 ] ; 4 uses
  %i.ah = phi ptr [ %i.b, %._crit_edge ], [ %i.v, %.thread18 ] ; 6 uses
  %i.ai = icmp ugt i64 %i.ag, %.pre-phi33
  br i1 %i.ai, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aj = sub nuw nsw i64 %i.ag, %.pre-phi33
  tail call void @_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.aj)
  %.pre25 = load ptr, ptr %3, align 8, !tbaa !214 ; 2 uses
  %.pre26 = load ptr, ptr %i.ah, align 8, !tbaa !213
  %.pre34 = ptrtoint ptr %.pre25 to i64
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE6resizeEm.exit

bb.e:                                             ; preds = %bb.c
  %i.ak = icmp ult i64 %i.ag, %.pre-phi33
  br i1 %i.ak, label %bb.f, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE6resizeEm.exit

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ag ; 3 uses
  %.not.i.i = icmp eq ptr %i.af, %i.al
  br i1 %.not.i.i, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE6resizeEm.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.al, ptr %i.ah, align 8, !tbaa !213
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE6resizeEm.exit

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE6resizeEm.exit: ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %.thread, %._crit_edge
  %.pre-phi35 = phi i64 [ %.pre-phi29, %bb.g ], [ %.pre-phi29, %bb.f ], [ %.pre-phi29, %bb.e ], [ %.pre34, %bb.d ], [ %i.z, %.thread ], [ %i.o, %._crit_edge ] ; 4 uses
  %i.am = phi ptr [ %i.al, %bb.g ], [ %i.af, %bb.f ], [ %i.af, %bb.e ], [ %.pre26, %bb.d ], [ %i.w, %.thread ], [ %i.j, %._crit_edge ] ; 2 uses
  %i.an = phi ptr [ %i.ae, %bb.g ], [ %i.ae, %bb.f ], [ %i.ae, %bb.e ], [ %.pre25, %bb.d ], [ %i.x, %.thread ], [ %i.i, %._crit_edge ] ; 2 uses
  %i.ao = phi ptr [ %i.ah, %bb.g ], [ %i.ah, %bb.f ], [ %i.ah, %bb.e ], [ %i.ah, %bb.d ], [ %i.v, %.thread ], [ %i.b, %._crit_edge ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !217
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = sub i64 %i.ar, %.pre-phi35
  %i.at = ptrtoint ptr %i.am to i64
  %i.au = sub i64 %i.at, %.pre-phi35              ; 4 uses
  %i.av = icmp ugt i64 %i.as, %i.au
  br i1 %i.av, label %bb.h, label %_ZN7CaDiCaL13shrink_vectorIPNS_6ClauseEEEvRSt6vectorIT_SaIS4_EE.exit

bb.h:                                             ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE6resizeEm.exit
  %.not.i.i.i.i.i = icmp eq ptr %i.am, %i.an
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EEC2EmRKS3_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = icmp ugt i64 %i.au, 9223372036854775800
  br i1 %i.aw, label %bb.j, label %_ZNSt15__new_allocatorIPN7CaDiCaL6ClauseEE8allocateEmPKv.exit.i.i.i.i.i, !prof !218

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #18
  unreachable

_ZNSt15__new_allocatorIPN7CaDiCaL6ClauseEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.i
  %i.ax = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.au) #19
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !215 ; 2 uses
  %.pre7.i = load ptr, ptr %i.ao, align 8, !tbaa !215
  %.pre10.i = ptrtoint ptr %.pre7.i to i64
  %.pre11.i = ptrtoint ptr %.pre.i to i64
  br label %_ZNSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EEC2EmRKS3_.exit.i.i

_ZNSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EEC2EmRKS3_.exit.i.i: ; preds = %_ZNSt15__new_allocatorIPN7CaDiCaL6ClauseEE8allocateEmPKv.exit.i.i.i.i.i, %bb.h
  %.pre-phi12.i = phi i64 [ %.pre11.i, %_ZNSt15__new_allocatorIPN7CaDiCaL6ClauseEE8allocateEmPKv.exit.i.i.i.i.i ], [ %.pre-phi35, %bb.h ] ; 2 uses
  %.pre-phi.i = phi i64 [ %.pre10.i, %_ZNSt15__new_allocatorIPN7CaDiCaL6ClauseEE8allocateEmPKv.exit.i.i.i.i.i ], [ %.pre-phi35, %bb.h ]
  %i.ay = phi ptr [ %.pre.i, %_ZNSt15__new_allocatorIPN7CaDiCaL6ClauseEE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.an, %bb.h ] ; 4 uses
  %i.az = phi ptr [ %i.ax, %_ZNSt15__new_allocatorIPN7CaDiCaL6ClauseEE8allocateEmPKv.exit.i.i.i.i.i ], [ null, %bb.h ] ; 7 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.au ; 2 uses
  %i.bb = sub i64 %.pre-phi.i, %.pre-phi12.i      ; 4 uses
  %i.bc = icmp sgt i64 %i.bb, 8
  br i1 %i.bc, label %bb.k, label %bb.l, !prof !219

bb.k:                                             ; preds = %_ZNSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EEC2EmRKS3_.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.az, ptr align 8 %i.ay, i64 %i.bb, i1 false)
  %.pre8.i = load ptr, ptr %i.ap, align 8, !tbaa !217
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EEC2ERKS4_.exit.i

bb.l:                                             ; preds = %_ZNSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EEC2EmRKS3_.exit.i.i
  %i.bd = icmp eq i64 %i.bb, 8
  %.pre9.i = load ptr, ptr %i.ap, align 8, !tbaa !217 ; 2 uses
  br i1 %i.bd, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EEC2ERKS4_.exit.thread.i, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EEC2ERKS4_.exit.i

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EEC2ERKS4_.exit.thread.i: ; preds = %bb.l
  %i.be = load ptr, ptr %i.ay, align 8, !tbaa !205
  store ptr %i.be, ptr %i.az, align 8, !tbaa !205
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %i.az, ptr %3, align 8, !tbaa !214
  store ptr %i.bf, ptr %i.ao, align 8, !tbaa !213
  store ptr %i.ba, ptr %i.ap, align 8, !tbaa !217
  br label %bb.m

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EEC2ERKS4_.exit.i: ; preds = %bb.l, %bb.k
  %i.bg = phi ptr [ %.pre8.i, %bb.k ], [ %.pre9.i, %bb.l ]
  %i.bh = getelementptr inbounds i8, ptr %i.az, i64 %i.bb
  store ptr %i.az, ptr %3, align 8, !tbaa !214
  store ptr %i.bh, ptr %i.ao, align 8, !tbaa !213
  store ptr %i.ba, ptr %i.ap, align 8, !tbaa !217
  %.not.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i.i, label %_ZN7CaDiCaL13shrink_vectorIPNS_6ClauseEEEvRSt6vectorIT_SaIS4_EE.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EEC2ERKS4_.exit.i, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EEC2ERKS4_.exit.thread.i
  %i.bi = phi ptr [ %.pre9.i, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EEC2ERKS4_.exit.thread.i ], [ %i.bg, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EEC2ERKS4_.exit.i ]
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = sub i64 %i.bj, %.pre-phi12.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bk) #20
  br label %_ZN7CaDiCaL13shrink_vectorIPNS_6ClauseEEEvRSt6vectorIT_SaIS4_EE.exit

_ZN7CaDiCaL13shrink_vectorIPNS_6ClauseEEEvRSt6vectorIT_SaIS4_EE.exit: ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE6resizeEm.exit, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EEC2ERKS4_.exit.i, %bb.m
  ret void
}

declare void @_ZN7CaDiCaL8Internal13clear_watchesEv(ptr noundef nonnull align 8 dereferenceable(7296)) local_unnamed_addr #3

declare void @_ZN7CaDiCaL8Internal15connect_watchesEb(ptr noundef nonnull align 8 dereferenceable(7296), i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL8Internal12vivify_roundERNS_8VivifierEl(ptr noundef nonnull align 8 dereferenceable(7296) %0, ptr noundef nonnull align 8 dereferenceable(224) %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [2 x i32], align 8                ; 5 uses
  %3 = alloca %"struct.CaDiCaL::vivify_ref", align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 6 uses
  %i.c = load i8, ptr %i.b, align 4, !tbaa !258, !range !210, !noundef !211
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 7272 ; 4 uses
  %i.f = load volatile i8, ptr %i.e, align 8, !tbaa !259, !range !210, !noundef !211
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3208 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3212 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !260  ; 3 uses
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = add nsw i32 %i.j, -1
  store i32 %i.k, ptr %i.i, align 4, !tbaa !260
  %i.l = icmp eq i32 %i.j, 1
  br i1 %i.l, label %.sink.split.i, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 7264 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !261
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 400
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !280  ; 3 uses
  %.not3.i = icmp eq ptr %i.p, null
  br i1 %.not3.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load i32, ptr %i.h, align 8, !tbaa !281  ; 2 uses
  %i.r = add nsw i32 %i.q, -1
  store i32 %i.r, ptr %i.h, align 8, !tbaa !281
  %.not4.i = icmp eq i32 %i.q, 0
  br i1 %.not4.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4416
  %i.t = load i32, ptr %i.s, align 8, !tbaa !282
  store i32 %i.t, ptr %i.h, align 8, !tbaa !281
  %i.u = load ptr, ptr %i.p, align 8, !tbaa !284
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.p) #21, !inline_history !3
  br i1 %i.x, label %.sink.split.i, label %bb.h

.sink.split.i:                                    ; preds = %bb.g, %bb.d
  store volatile i8 1, ptr %i.e, align 8, !tbaa !259
  br label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.z = load i32, ptr %i.y, align 8, !tbaa !244  ; 3 uses
  %i.aa = icmp ult i32 %i.z, 3
  %switch.idx.cast.i = zext i32 %i.z to i64
  %switch.idx.mult.i = shl nuw nsw i64 %switch.idx.cast.i, 3
  %switch.offset.i = add nuw nsw i64 %switch.idx.mult.i, 120
  %.sink.i = select i1 %i.aa, i64 %switch.offset.i, i64 144
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %.sink.i
  %.0.i104 = load ptr, ptr %i.ab, align 8, !tbaa !285, !nonnull !211, !align !254 ; 13 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i104, i64 8 ; 8 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !213 ; 6 uses
  %i.ae = load ptr, ptr %.0.i104, align 8, !tbaa !214 ; 4 uses
  %i.af = ptrtoint ptr %i.ad to i64               ; 3 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 4 uses
  %i.ai = ashr exact i64 %i.ah, 3                 ; 5 uses
  %i.aj = add nsw i64 %i.ai, 1                    ; 2 uses
  %.not = icmp eq i32 %i.z, 3
  br i1 %.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 5024
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !246
  %i.am = sdiv i64 %i.al, 10
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 5016
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !286
  %i.ap = icmp slt i64 %i.am, %i.ao
  br i1 %i.ap, label %bb.j, label %bb.ak

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !287 ; 2 uses
  %i.as = load ptr, ptr %1, align 8, !tbaa !288   ; 5 uses
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = sdiv exact i64 %i.av, 40                ; 3 uses
  %i.ax = icmp ugt i64 %i.ai, %i.aw
  br i1 %i.ax, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ay = sub nuw nsw i64 %i.ai, %i.aw
  tail call void @_ZNSt6vectorIN7CaDiCaL10vivify_refESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ay)
  %.pre188.pre = load ptr, ptr %1, align 8, !tbaa !289
  br label %_ZNSt6vectorIN7CaDiCaL10vivify_refESaIS1_EE6resizeEm.exit

bb.l:                                             ; preds = %bb.j
  %i.az = icmp ult i64 %i.ai, %i.aw
  br i1 %i.az, label %bb.m, label %_ZNSt6vectorIN7CaDiCaL10vivify_refESaIS1_EE6resizeEm.exit

bb.m:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw [40 x i8], ptr %i.as, i64 %i.ai ; 2 uses
  %.not.i.i = icmp eq ptr %i.ar, %i.ba
  br i1 %.not.i.i, label %_ZNSt6vectorIN7CaDiCaL10vivify_refESaIS1_EE6resizeEm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr %i.ba, ptr %i.aq, align 8, !tbaa !287
  br label %_ZNSt6vectorIN7CaDiCaL10vivify_refESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN7CaDiCaL10vivify_refESaIS1_EE6resizeEm.exit: ; preds = %bb.k, %bb.l, %bb.m, %bb.n
  %.pre188 = phi ptr [ %.pre188.pre, %bb.k ], [ %i.as, %bb.l ], [ %i.as, %bb.m ], [ %i.as, %bb.n ] ; 2 uses
  %i.bb = load ptr, ptr %.0.i104, align 8, !tbaa !215 ; 2 uses
  %.not7.i = icmp eq ptr %i.bb, %i.ad
  br i1 %.not7.i, label %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS1_IPNS2_10vivify_refES6_ISA_SaISA_EEEEZNS2_8Internal12vivify_roundERNS2_8VivifierElE3$_0ET0_T_SK_SJ_T1_.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIN7CaDiCaL10vivify_refESaIS1_EE6resizeEm.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %"_ZZN7CaDiCaL8Internal12vivify_roundERNS_8VivifierElENK3$_0clEPNS_6ClauseE.exit.i", %.lr.ph.i
  %.sroa.04.09.i = phi ptr [ %i.bb, %.lr.ph.i ], [ %i.dp, %"_ZZN7CaDiCaL8Internal12vivify_roundERNS_8VivifierElENK3$_0clEPNS_6ClauseE.exit.i" ] ; 2 uses
  %.sroa.01.08.i = phi ptr [ %.pre188, %.lr.ph.i ], [ %i.dq, %"_ZZN7CaDiCaL8Internal12vivify_roundERNS_8VivifierElENK3$_0clEPNS_6ClauseE.exit.i" ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.bg = load ptr, ptr %.sroa.04.09.i, align 8, !tbaa !205 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !375)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !376)
  store ptr %i.bg, ptr %i.bc, align 8, !tbaa !249, !alias.scope !377
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !182, !noalias !377 ; 3 uses
  %i.bj = sext i32 %i.bi to i64                   ; 2 uses
  store i64 %i.bj, ptr %i.bd, align 8, !tbaa !250, !alias.scope !377
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, i8 0, i64 16, i1 false), !tbaa !198, !alias.scope !377
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bl = load i32, ptr %i.bk, align 8, !noalias !377
  %i.bm = lshr i32 %i.bl, 21
  %i.bn = trunc i32 %i.bm to i8
  %i.bo = and i8 %i.bn, 1
  store i8 %i.bo, ptr %3, align 8, !tbaa !251, !alias.scope !377
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21, !noalias !377
  store i64 0, ptr %i.a, align 8, !noalias !377
  %.not63.i.i.i = icmp eq i32 %i.bi, 0
  br i1 %.not63.i.i.i, label %"_ZZN7CaDiCaL8Internal12vivify_roundERNS_8VivifierElENK3$_0clEPNS_6ClauseE.exit.i", label %.lr.ph59.preheader.i.i.i

.lr.ph59.preheader.i.i.i:                         ; preds = %bb.o
  %.sroa.speculated.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.bi, i32 2)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bg, i64 24 ; 4 uses
  %.idx.i.i.i = shl nsw i64 %i.bj, 2              ; 2 uses
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 %.idx.i.i.i
  %i.br = zext i32 %.sroa.speculated.i.i.i to i64
  %i.bs = add nsw i64 %.idx.i.i.i, -4             ; 3 uses
  %i.bt = lshr exact i64 %i.bs, 2
  %i.bu = add nuw nsw i64 %i.bt, 1                ; 2 uses
  %i.bv = icmp eq i64 %i.bs, 0
  %unroll_iter = and i64 %i.bu, 9223372036854775806
  %i.bw = and i64 %i.bs, 4
  %lcmp.mod.not.not = icmp eq i64 %i.bw, 0
  %lcmp.mod269 = trunc i64 %i.bu to i1
  br label %.lr.ph59.i.i.i

.lr.ph59.i.i.i:                                   ; preds = %._crit_edge60.i.i.i, %.lr.ph59.preheader.i.i.i
  %indvars.iv72.i.i.i = phi i64 [ 0, %.lr.ph59.preheader.i.i.i ], [ %indvars.iv.next73.i.i.i, %._crit_edge60.i.i.i ] ; 5 uses
  %.not4652.i.i.i = icmp eq i64 %indvars.iv72.i.i.i, 0
  br i1 %.not4652.i.i.i, label %.lr.ph59.split.us.i.i.i, label %.lr.ph.i.i.i

.lr.ph59.split.us.i.i.i:                          ; preds = %.lr.ph59.i.i.i
  %i.bx = load ptr, ptr %i.bf, align 8, !tbaa !202, !noalias !377 ; 3 uses
  br i1 %i.bv, label %.epil.preheader, label %.lr.ph59.split.us.i.i.i.new

.lr.ph59.split.us.i.i.i.new:                      ; preds = %.lr.ph59.split.us.i.i.i, %.lr.ph59.split.us.i.i.i.new
  %.03457.us.i.i.i = phi ptr [ %i.cn, %.lr.ph59.split.us.i.i.i.new ], [ %i.bp, %.lr.ph59.split.us.i.i.i ] ; 3 uses
  %.03556.us.i.i.i = phi i64 [ %.150.us.i.i.i.1, %.lr.ph59.split.us.i.i.i.new ], [ 0, %.lr.ph59.split.us.i.i.i ]
  %.03655.us.i.i.i = phi i32 [ %.137.us.i.i.i.1, %.lr.ph59.split.us.i.i.i.new ], [ 0, %.lr.ph59.split.us.i.i.i ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph59.split.us.i.i.i.new ], [ 0, %.lr.ph59.split.us.i.i.i ]
  %i.by = load i32, ptr %.03457.us.i.i.i, align 4, !tbaa !182, !noalias !377 ; 3 uses
  %i.bz = tail call noundef i32 @llvm.abs.i32(i32 %i.by, i1 true)
  %i.ca = tail call noundef i32 @llvm.fshl.i32(i32 %i.bz, i32 %i.by, i32 1)
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.cb
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !198, !noalias !377 ; 2 uses
  %i.ce = and i64 %.03556.us.i.i.i, 4294967295    ; 2 uses
  %.not47.us.i.i.i = icmp sgt i64 %i.cd, %i.ce
  %.137.us.i.i.i = select i1 %.not47.us.i.i.i, i32 %i.by, i32 %.03655.us.i.i.i
  %.150.us.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.cd, i64 %i.ce)
  %i.cf = getelementptr inbounds nuw i8, ptr %.03457.us.i.i.i, i64 4
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !182, !noalias !377 ; 3 uses
  %i.ch = tail call noundef i32 @llvm.abs.i32(i32 %i.cg, i1 true)
  %i.ci = tail call noundef i32 @llvm.fshl.i32(i32 %i.ch, i32 %i.cg, i32 1)
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.cj
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !198, !noalias !377 ; 2 uses
  %i.cm = and i64 %.150.us.i.i.i, 4294967295      ; 2 uses
  %.not47.us.i.i.i.1 = icmp sgt i64 %i.cl, %i.cm
  %.137.us.i.i.i.1 = select i1 %.not47.us.i.i.i.1, i32 %i.cg, i32 %.137.us.i.i.i ; 3 uses
  %.150.us.i.i.i.1 = tail call i64 @llvm.smax.i64(i64 %i.cl, i64 %i.cm) ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.03457.us.i.i.i, i64 8 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge60.loopexit.i.i.i.unr-lcssa, label %.lr.ph59.split.us.i.i.i.new

._crit_edge60.loopexit.i.i.i.unr-lcssa:           ; preds = %.lr.ph59.split.us.i.i.i.new
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %._crit_edge60.loopexit.i.i.i

.epil.preheader:                                  ; preds = %._crit_edge60.loopexit.i.i.i.unr-lcssa, %.lr.ph59.split.us.i.i.i
  %.03457.us.i.i.i.epil.init = phi ptr [ %i.bp, %.lr.ph59.split.us.i.i.i ], [ %i.cn, %._crit_edge60.loopexit.i.i.i.unr-lcssa ]
  %.03556.us.i.i.i.epil.init = phi i64 [ 0, %.lr.ph59.split.us.i.i.i ], [ %.150.us.i.i.i.1, %._crit_edge60.loopexit.i.i.i.unr-lcssa ]
  %.03655.us.i.i.i.epil.init = phi i32 [ 0, %.lr.ph59.split.us.i.i.i ], [ %.137.us.i.i.i.1, %._crit_edge60.loopexit.i.i.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod269)
  %i.co = load i32, ptr %.03457.us.i.i.i.epil.init, align 4, !tbaa !182, !noalias !377 ; 3 uses
  %i.cp = tail call noundef i32 @llvm.abs.i32(i32 %i.co, i1 true)
  %i.cq = tail call noundef i32 @llvm.fshl.i32(i32 %i.cp, i32 %i.co, i32 1)
  %i.cr = zext i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.cr
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !198, !noalias !377 ; 2 uses
  %i.cu = and i64 %.03556.us.i.i.i.epil.init, 4294967295 ; 2 uses
  %.not47.us.i.i.i.epil = icmp sgt i64 %i.ct, %i.cu
  %.137.us.i.i.i.epil = select i1 %.not47.us.i.i.i.epil, i32 %i.co, i32 %.03655.us.i.i.i.epil.init
  %.150.us.i.i.i.epil = tail call i64 @llvm.smax.i64(i64 %i.ct, i64 %i.cu)
  br label %._crit_edge60.loopexit.i.i.i

._crit_edge60.loopexit.i.i.i:                     ; preds = %._crit_edge60.loopexit.i.i.i.unr-lcssa, %.epil.preheader
  %.137.us.i.i.i.lcssa = phi i32 [ %.137.us.i.i.i.1, %._crit_edge60.loopexit.i.i.i.unr-lcssa ], [ %.137.us.i.i.i.epil, %.epil.preheader ]
  %.150.us.i.i.i.lcssa = phi i64 [ %.150.us.i.i.i.1, %._crit_edge60.loopexit.i.i.i.unr-lcssa ], [ %.150.us.i.i.i.epil, %.epil.preheader ]
  %.1.us.i.i.i = trunc i64 %.150.us.i.i.i.lcssa to i32
  br label %._crit_edge60.i.i.i

._crit_edge60.i.i.i:                              ; preds = %.loopexit.i.i.i, %._crit_edge60.loopexit.i.i.i
  %.us-phi.i.i.i = phi i32 [ %.137.us.i.i.i.lcssa, %._crit_edge60.loopexit.i.i.i ], [ %.339.i.i.i, %.loopexit.i.i.i ] ; 3 uses
  %.us-phi62.i.i.i = phi i32 [ %.1.us.i.i.i, %._crit_edge60.loopexit.i.i.i ], [ %.3.i.i.i, %.loopexit.i.i.i ]
  %i.cv = zext i32 %.us-phi62.i.i.i to i64
  %i.cw = shl nuw i64 %i.cv, 32
  %i.cx = tail call noundef i32 @llvm.abs.i32(i32 %.us-phi.i.i.i, i1 true)
  %i.cy = tail call noundef i32 @llvm.fshl.i32(i32 %i.cx, i32 %.us-phi.i.i.i, i32 1)
  %i.cz = zext i32 %i.cy to i64
  %i.da = or disjoint i64 %i.cw, %i.cz
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv72.i.i.i
  store i64 %i.da, ptr %i.db, align 8, !tbaa !198, !alias.scope !377
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv72.i.i.i
  store i32 %.us-phi.i.i.i, ptr %i.dc, align 4, !tbaa !182, !noalias !377
  %indvars.iv.next73.i.i.i = add nuw nsw i64 %indvars.iv72.i.i.i, 1 ; 2 uses
  %.not.i.i.i = icmp eq i64 %indvars.iv.next73.i.i.i, %i.br
  br i1 %.not.i.i.i, label %"_ZZN7CaDiCaL8Internal12vivify_roundERNS_8VivifierElENK3$_0clEPNS_6ClauseE.exit.i", label %.lr.ph59.i.i.i, !llvm.loop !1

.lr.ph.i.i.i:                                     ; preds = %.lr.ph59.i.i.i, %.loopexit.i.i.i
  %.03457.i.i.i = phi ptr [ %i.do, %.loopexit.i.i.i ], [ %i.bp, %.lr.ph59.i.i.i ] ; 2 uses
  %.03556.i.i.i = phi i32 [ %.3.i.i.i, %.loopexit.i.i.i ], [ 0, %.lr.ph59.i.i.i ] ; 2 uses
  %.03655.i.i.i = phi i32 [ %.339.i.i.i, %.loopexit.i.i.i ], [ 0, %.lr.ph59.i.i.i ] ; 2 uses
  %i.dd = load i32, ptr %.03457.i.i.i, align 4, !tbaa !182, !noalias !377 ; 4 uses
  br label %bb.q

bb.p:                                             ; preds = %bb.q
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.not46.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %indvars.iv72.i.i.i
  br i1 %.not46.i.i.i, label %._crit_edge.i.i.i, label %bb.q, !llvm.loop !2

bb.q:                                             ; preds = %bb.p, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.p ] ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.i.i
  %i.df = load i32, ptr %i.de, align 4, !tbaa !182, !noalias !377
  %i.dg = icmp eq i32 %i.df, %i.dd
  br i1 %i.dg, label %.loopexit.i.i.i, label %bb.p

._crit_edge.i.i.i:                                ; preds = %bb.p
  %i.dh = tail call noundef i32 @llvm.abs.i32(i32 %i.dd, i1 true)
  %i.di = tail call noundef i32 @llvm.fshl.i32(i32 %i.dh, i32 %i.dd, i32 1)
end_hunk_0
begin_hunk_1_@_ZN7CaDiCaL8Internal12vivify_roundERNS_8VivifierEl:bb.a

bb.ah:                                            ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS2_23vivify_refcount_smallerEEvT_SA_T0_.exit
  %.not.i.i114.1 = icmp eq ptr %i.ga, %i.fz
  br i1 %.not.i.i114.1, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS2_23vivify_refcount_smallerEEvT_SA_T0_.exit.1, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gh = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ge, i1 true)
  %i.gi = shl nuw nsw i64 %i.gh, 1
  %i.gj = xor i64 %i.gi, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterINS2_23vivify_refcount_smallerEEEEvT_SD_T0_T1_(ptr %i.ga, ptr %i.fz, i64 noundef %i.gj, i32 0)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_23vivify_refcount_smallerEEEEvT_SD_T0_(ptr %i.ga, ptr %i.fz, i32 0)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS2_23vivify_refcount_smallerEEvT_SA_T0_.exit.1

bb.aj:                                            ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS2_23vivify_refcount_smallerEEvT_SA_T0_.exit
  tail call void @_ZN7CaDiCaL5rsortIN9__gnu_cxx17__normal_iteratorIPNS_10vivify_refESt6vectorIS3_SaIS3_EEEENS_20vivify_refcount_rankEEEvT_SA_T0_(ptr %i.ga, ptr %i.fz, i32 0)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS2_23vivify_refcount_smallerEEvT_SA_T0_.exit.1

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS2_23vivify_refcount_smallerEEvT_SA_T0_.exit.1: ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.gk = load ptr, ptr %1, align 8, !tbaa !289   ; 6 uses
  %i.gl = load ptr, ptr %i.aq, align 8, !tbaa !289 ; 6 uses
  %i.gm = ptrtoint ptr %i.gl to i64               ; 3 uses
  %i.gn = ptrtoint ptr %i.gk to i64
  %i.go = sub i64 %i.gm, %i.gn                    ; 2 uses
  %i.gp = sdiv exact i64 %i.go, 40
  %i.gq = ashr i64 %i.gp, 2                       ; 3 uses
  %i.gr = icmp sgt i64 %i.gq, 0
  br i1 %i.gr, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

bb.ak:                                            ; preds = %bb.i
  %i.gs = ashr i64 %i.ah, 5                       ; 2 uses
  %i.gt = icmp sgt i64 %i.gs, 0
  br i1 %i.gt, label %.lr.ph.preheader.i.i.i.i125, label %._crit_edge.i.i.i.i115

.lr.ph.preheader.i.i.i.i125:                      ; preds = %bb.ak
  %i.gu = and i64 %i.ah, -32
  %scevgep.i.i.i.i126 = getelementptr i8, ptr %i.ae, i64 %i.gu ; 2 uses
  br label %.lr.ph.i.i.i.i127

.lr.ph.i.i.i.i127:                                ; preds = %bb.ao, %.lr.ph.preheader.i.i.i.i125
  %.057.i.i.i.i = phi i64 [ %i.hl, %bb.ao ], [ %i.gs, %.lr.ph.preheader.i.i.i.i125 ] ; 2 uses
  %.sroa.037.056.i.i.i.i = phi ptr [ %i.hk, %bb.ao ], [ %i.ae, %.lr.ph.preheader.i.i.i.i125 ] ; 9 uses
  %i.gv = load ptr, ptr %.sroa.037.056.i.i.i.i, align 8, !tbaa !205
  %i.gw = getelementptr i8, ptr %i.gv, i64 8
  %.val.i.i.i.i.i = load i32, ptr %i.gw, align 8
  %i.gx = and i32 %.val.i.i.i.i.i, 2097152
  %.not.i.i.not.i.i.i.i = icmp eq i32 %i.gx, 0
  br i1 %.not.i.i.not.i.i.i.i, label %bb.al, label %"_ZSt13__find_if_notIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS2_8Internal12vivify_roundERNS2_8VivifierElE3$_3EEET_SH_SH_T0_.exit.i.i"

bb.al:                                            ; preds = %.lr.ph.i.i.i.i127
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.037.056.i.i.i.i, i64 8
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !205
  %i.ha = getelementptr i8, ptr %i.gz, i64 8
  %.val.i16.i.i.i.i = load i32, ptr %i.ha, align 8
  %i.hb = and i32 %.val.i16.i.i.i.i, 2097152
  %.not.i.i17.not.i.i.i.i = icmp eq i32 %i.hb, 0
  br i1 %.not.i.i17.not.i.i.i.i, label %bb.am, label %"_ZSt13__find_if_notIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS2_8Internal12vivify_roundERNS2_8VivifierElE3$_3EEET_SH_SH_T0_.exit.i.i.loopexit.split.loop.exit"

bb.am:                                            ; preds = %bb.al
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.037.056.i.i.i.i, i64 16
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !205
  %i.he = getelementptr i8, ptr %i.hd, i64 8
  %.val.i18.i.i.i.i = load i32, ptr %i.he, align 8
  %i.hf = and i32 %.val.i18.i.i.i.i, 2097152
  %.not.i.i19.not.i.i.i.i = icmp eq i32 %i.hf, 0
  br i1 %.not.i.i19.not.i.i.i.i, label %bb.an, label %"_ZSt13__find_if_notIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS2_8Internal12vivify_roundERNS2_8VivifierElE3$_3EEET_SH_SH_T0_.exit.i.i.loopexit.split.loop.exit235"

bb.an:                                            ; preds = %bb.am
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.037.056.i.i.i.i, i64 24
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !205
  %i.hi = getelementptr i8, ptr %i.hh, i64 8
  %.val.i20.i.i.i.i = load i32, ptr %i.hi, align 8
  %i.hj = and i32 %.val.i20.i.i.i.i, 2097152
  %.not.i.i21.not.i.i.i.i = icmp eq i32 %i.hj, 0
  br i1 %.not.i.i21.not.i.i.i.i, label %bb.ao, label %"_ZSt13__find_if_notIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS2_8Internal12vivify_roundERNS2_8VivifierElE3$_3EEET_SH_SH_T0_.exit.i.i.loopexit.split.loop.exit237"

bb.ao:                                            ; preds = %bb.an
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.037.056.i.i.i.i, i64 32
  %i.hl = add nsw i64 %.057.i.i.i.i, -1
  %i.hm = icmp sgt i64 %.057.i.i.i.i, 1
  br i1 %i.hm, label %.lr.ph.i.i.i.i127, label %._crit_edge.loopexit.i.i.i.i128, !llvm.loop !373

._crit_edge.loopexit.i.i.i.i128:                  ; preds = %bb.ao
  %.pre.i.i.i.i129 = ptrtoint ptr %scevgep.i.i.i.i126 to i64
  %.pre62.i.i.i.i = sub i64 %i.af, %.pre.i.i.i.i129
  br label %._crit_edge.i.i.i.i115

._crit_edge.i.i.i.i115:                           ; preds = %._crit_edge.loopexit.i.i.i.i128, %bb.ak
  %.pre-phi63.i.i.i.i = phi i64 [ %.pre62.i.i.i.i, %._crit_edge.loopexit.i.i.i.i128 ], [ %i.ah, %bb.ak ]
  %.sroa.037.0.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i126, %._crit_edge.loopexit.i.i.i.i128 ], [ %i.ae, %bb.ak ] ; 5 uses
  %i.hn = ashr exact i64 %.pre-phi63.i.i.i.i, 3
  switch i64 %i.hn, label %_ZNSt6vectorIN7CaDiCaL10vivify_refESaIS1_EE5clearEv.exit [
    i64 3, label %bb.ap
    i64 2, label %bb.ar
    i64 1, label %bb.at
  ]

bb.ap:                                            ; preds = %._crit_edge.i.i.i.i115
  %i.ho = load ptr, ptr %.sroa.037.0.lcssa.i.i.i.i, align 8, !tbaa !205
  %i.hp = getelementptr i8, ptr %i.ho, i64 8
  %.val.i22.i.i.i.i = load i32, ptr %i.hp, align 8
  %i.hq = and i32 %.val.i22.i.i.i.i, 2097152
  %.not.i.i23.not.i.i.i.i = icmp eq i32 %i.hq, 0
  br i1 %.not.i.i23.not.i.i.i.i, label %bb.aq, label %"_ZSt13__find_if_notIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS2_8Internal12vivify_roundERNS2_8VivifierElE3$_3EEET_SH_SH_T0_.exit.i.i"

bb.aq:                                            ; preds = %bb.ap
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.037.0.lcssa.i.i.i.i, i64 8
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %._crit_edge.i.i.i.i115
  %.sroa.037.1.i.i.i.i = phi ptr [ %i.hr, %bb.aq ], [ %.sroa.037.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i115 ] ; 3 uses
  %i.hs = load ptr, ptr %.sroa.037.1.i.i.i.i, align 8, !tbaa !205
  %i.ht = getelementptr i8, ptr %i.hs, i64 8
  %.val.i24.i.i.i.i = load i32, ptr %i.ht, align 8
  %i.hu = and i32 %.val.i24.i.i.i.i, 2097152
  %.not.i.i25.not.i.i.i.i = icmp eq i32 %i.hu, 0
  br i1 %.not.i.i25.not.i.i.i.i, label %bb.as, label %"_ZSt13__find_if_notIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS2_8Internal12vivify_roundERNS2_8VivifierElE3$_3EEET_SH_SH_T0_.exit.i.i"

bb.as:                                            ; preds = %bb.ar
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.037.1.i.i.i.i, i64 8
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %._crit_edge.i.i.i.i115
  %.sroa.037.2.i.i.i.i = phi ptr [ %i.hv, %bb.as ], [ %.sroa.037.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i115 ] ; 2 uses
  %i.hw = load ptr, ptr %.sroa.037.2.i.i.i.i, align 8, !tbaa !205
  %i.hx = getelementptr i8, ptr %i.hw, i64 8
  %.val.i26.i.i.i.i = load i32, ptr %i.hx, align 8
  %i.hy = and i32 %.val.i26.i.i.i.i, 2097152
  %.not.i.i27.not.i.i.i.i = icmp eq i32 %i.hy, 0
  %spec.select.i.i.i.i116 = select i1 %.not.i.i27.not.i.i.i.i, ptr %i.ad, ptr %.sroa.037.2.i.i.i.i
  br label %"_ZSt13__find_if_notIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS2_8Internal12vivify_roundERNS2_8VivifierElE3$_3EEET_SH_SH_T0_.exit.i.i"

"_ZSt13__find_if_notIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS2_8Internal12vivify_roundERNS2_8VivifierElE3$_3EEET_SH_SH_T0_.exit.i.i.loopexit.split.loop.exit": ; preds = %bb.al
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.037.056.i.i.i.i, i64 8
  br label %"_ZSt13__find_if_notIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS2_8Internal12vivify_roundERNS2_8VivifierElE3$_3EEET_SH_SH_T0_.exit.i.i"

"_ZSt13__find_if_notIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS2_8Internal12vivify_roundERNS2_8VivifierElE3$_3EEET_SH_SH_T0_.exit.i.i.loopexit.split.loop.exit235": ; preds = %bb.am
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.037.056.i.i.i.i, i64 16
  br label %"_ZSt13__find_if_notIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS2_8Internal12vivify_roundERNS2_8VivifierElE3$_3EEET_SH_SH_T0_.exit.i.i"

"_ZSt13__find_if_notIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS2_8Internal12vivify_roundERNS2_8VivifierElE3$_3EEET_SH_SH_T0_.exit.i.i.loopexit.split.loop.exit237": ; preds = %bb.an
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.037.056.i.i.i.i, i64 24
  br label %"_ZSt13__find_if_notIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS2_8Internal12vivify_roundERNS2_8VivifierElE3$_3EEET_SH_SH_T0_.exit.i.i"

"_ZSt13__find_if_notIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS2_8Internal12vivify_roundERNS2_8VivifierElE3$_3EEET_SH_SH_T0_.exit.i.i": ; preds = %.lr.ph.i.i.i.i127, %"_ZSt13__find_if_notIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS2_8Internal12vivify_roundERNS2_8VivifierElE3$_3EEET_SH_SH_T0_.exit.i.i.loopexit.split.loop.exit", %"_ZSt13__find_if_notIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS2_8Internal12vivify_roundERNS2_8VivifierElE3$_3EEET_SH_SH_T0_.exit.i.i.loopexit.split.loop.exit235", %"_ZSt13__find_if_notIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS2_8Internal12vivify_roundERNS2_8VivifierElE3$_3EEET_SH_SH_T0_.exit.i.i.loopexit.split.loop.exit237", %bb.at, %bb.ar, %bb.ap
  %.sroa.08.0.in.sroa.speculated.i.i.i.i117 = phi ptr [ %.sroa.037.1.i.i.i.i, %bb.ar ], [ %spec.select.i.i.i.i116, %bb.at ], [ %.sroa.037.0.lcssa.i.i.i.i, %bb.ap ], [ %i.ib, %"_ZSt13__find_if_notIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS2_8Internal12vivify_roundERNS2_8VivifierElE3$_3EEET_SH_SH_T0_.exit.i.i.loopexit.split.loop.exit237" ], [ %i.ia, %"_ZSt13__find_if_notIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS2_8Internal12vivify_roundERNS2_8VivifierElE3$_3EEET_SH_SH_T0_.exit.i.i.loopexit.split.loop.exit235" ], [ %i.hz, %"_ZSt13__find_if_notIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS2_8Internal12vivify_roundERNS2_8VivifierElE3$_3EEET_SH_SH_T0_.exit.i.i.loopexit.split.loop.exit" ], [ %.sroa.037.056.i.i.i.i, %.lr.ph.i.i.i.i127 ] ; 3 uses
  %i.ic = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i117, %i.ad
  br i1 %i.ic, label %_ZNSt6vectorIN7CaDiCaL10vivify_refESaIS1_EE5clearEv.exit, label %bb.au

bb.au:                                            ; preds = %"_ZSt13__find_if_notIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS2_8Internal12vivify_roundERNS2_8VivifierElE3$_3EEET_SH_SH_T0_.exit.i.i"
  %i.id = ptrtoint ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i117 to i64
  %i.ie = sub i64 %i.af, %i.id
  %i.if = ashr exact i64 %i.ie, 3                 ; 3 uses
  %i.ig = icmp sgt i64 %i.if, 0
  br i1 %i.ig, label %.lr.ph.i.i14.i.i121, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit.i.i

.lr.ph.i.i14.i.i121:                              ; preds = %bb.au, %select.unfold.i.i.i.i124
  %.010.i.i.i.i122 = phi i64 [ %i.il, %select.unfold.i.i.i.i124 ], [ %i.if, %bb.au ] ; 4 uses
  %i.ih = shl nuw nsw i64 %.010.i.i.i.i122, 3
  %i.ii = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.ih, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #22 ; 2 uses
  %.not.i.i.i.i123 = icmp eq ptr %i.ii, null
  br i1 %.not.i.i.i.i123, label %select.unfold.i.i.i.i124, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit.i.i

select.unfold.i.i.i.i124:                         ; preds = %.lr.ph.i.i14.i.i121
  %i.ij = icmp eq i64 %.010.i.i.i.i122, 1
  %i.ik = add nuw nsw i64 %.010.i.i.i.i122, 1
  %i.il = lshr i64 %i.ik, 1
  br i1 %i.ij, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit.i.i, label %.lr.ph.i.i14.i.i121, !llvm.loop !4

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit.i.i: ; preds = %select.unfold.i.i.i.i124, %.lr.ph.i.i14.i.i121, %bb.au
  %.sroa.4.0.i.i118 = phi i64 [ 0, %bb.au ], [ %.010.i.i.i.i122, %.lr.ph.i.i14.i.i121 ], [ 0, %select.unfold.i.i.i.i124 ] ; 2 uses
  %.sroa.8.0.i.i119 = phi ptr [ null, %bb.au ], [ %i.ii, %.lr.ph.i.i14.i.i121 ], [ null, %select.unfold.i.i.i.i124 ] ; 2 uses
  %i.im = tail call fastcc ptr @"_ZSt27__stable_partition_adaptiveIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops10_Iter_predIZNS2_8Internal12vivify_roundERNS2_8VivifierElE3$_3EElET_SH_SH_T1_T2_T0_SJ_"(ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i117, ptr %i.ad, i64 noundef %i.if, ptr noundef %.sroa.8.0.i.i119, i64 noundef %.sroa.4.0.i.i118) ; 0 uses
  %i.in = shl nuw nsw i64 %.sroa.4.0.i.i118, 3
  tail call void @_ZdlPvm(ptr noundef %.sroa.8.0.i.i119, i64 noundef %i.in) #21
  br label %_ZNSt6vectorIN7CaDiCaL10vivify_refESaIS1_EE5clearEv.exit

_ZNSt6vectorIN7CaDiCaL10vivify_refESaIS1_EE5clearEv.exit: ; preds = %"_ZSt16stable_partitionIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEEZNS2_8Internal12vivify_roundERNS2_8VivifierElE3$_1ET_SD_SD_T0_.exit", %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit.i.i, %"_ZSt13__find_if_notIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS2_8Internal12vivify_roundERNS2_8VivifierElE3$_3EEET_SH_SH_T0_.exit.i.i", %._crit_edge.i.i.i.i115, %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPN7CaDiCaL10vivify_refESt6vectorIS3_SaIS3_EEEENS1_IPPNS2_6ClauseES5_ISA_SaISA_EEEEZNS2_8Internal12vivify_roundERNS2_8VivifierElE3$_2ET0_T_SK_SJ_T1_.exit"
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 6120 ; 2 uses
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !216
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 6144 ; 2 uses
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !222
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 6184 ; 2 uses
  %i.it = load i64, ptr %i.is, align 8, !tbaa !221
  %i.iu = load ptr, ptr %i.ac, align 8, !tbaa !213
  %i.iv = load ptr, ptr %.0.i104, align 8, !tbaa !214
  %i.iw = ptrtoint ptr %i.iu to i64
  %i.ix = ptrtoint ptr %i.iv to i64
  %i.iy = sub i64 %i.iw, %i.ix
  %i.iz = ashr exact i64 %i.iy, 3
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 6112 ; 2 uses
  %i.jb = load i64, ptr %i.ja, align 8, !tbaa !379
  %i.jc = add nsw i64 %i.iz, %i.jb
  store i64 %i.jc, ptr %i.ja, align 8, !tbaa !379
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 4736 ; 3 uses
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !291
  %i.jf = sub nsw i64 %2, %i.je
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jg, i8 0, i64 16, i1 false)
  %i.jh = load i8, ptr %i.b, align 4, !tbaa !258, !range !210, !noundef !211
  %i.ji = trunc nuw i8 %i.jh to i1
  br i1 %i.ji, label %.thread, label %bb.av

.thread:                                          ; preds = %_ZNSt6vectorIN7CaDiCaL10vivify_refESaIS1_EE5clearEv.exit
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  store i64 %i.aj, ptr %4, align 8, !tbaa !380
  br label %.critedge

bb.av:                                            ; preds = %_ZNSt6vectorIN7CaDiCaL10vivify_refESaIS1_EE5clearEv.exit
  %i.jj = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(7296) %0) #21
  br i1 %i.jj, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  tail call void @_ZN7CaDiCaL8Internal18learn_empty_clauseEv(ptr noundef nonnull align 8 dereferenceable(7296) %0) #21
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.pr237 = load i8, ptr %i.b, align 4, !tbaa !258
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 8 uses
  store i64 %i.aj, ptr %i.jk, align 8, !tbaa !380
  %i.jl = trunc nuw i8 %.pr237 to i1
  br i1 %i.jl, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ax
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 4416
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 4516
  %i.jo = getelementptr inbounds nuw i8, ptr %.0.i104, i64 16 ; 3 uses
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit
  %.0173 = phi i32 [ 0, %.lr.ph ], [ %.1, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %i.jp = load volatile i8, ptr %i.e, align 8, !tbaa !259, !range !210, !noundef !211
  %i.jq = trunc nuw i8 %i.jp to i1
  br i1 %i.jq, label %.critedge, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.jr = load i32, ptr %i.i, align 4, !tbaa !260 ; 3 uses
  %.not.i130 = icmp eq i32 %i.jr, 0
  br i1 %.not.i130, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.js = add nsw i32 %i.jr, -1
  store i32 %i.js, ptr %i.i, align 4, !tbaa !260
  %i.jt = icmp eq i32 %i.jr, 1
  br i1 %i.jt, label %.sink.split.i134, label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.ju = load ptr, ptr %i.m, align 8, !tbaa !261
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 400
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !280 ; 3 uses
  %.not3.i131 = icmp eq ptr %i.jw, null
  br i1 %.not3.i131, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.jx = load i32, ptr %i.h, align 8, !tbaa !281 ; 2 uses
  %i.jy = add nsw i32 %i.jx, -1
  store i32 %i.jy, ptr %i.h, align 8, !tbaa !281
  %.not4.i132 = icmp eq i32 %i.jx, 0
  br i1 %.not4.i132, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.jz = load i32, ptr %i.jm, align 8, !tbaa !282
  store i32 %i.jz, ptr %i.h, align 8, !tbaa !281
  %i.ka = load ptr, ptr %i.jw, align 8, !tbaa !284
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 16
  %i.kc = load ptr, ptr %i.kb, align 8
  %i.kd = tail call noundef zeroext i1 %i.kc(ptr noundef nonnull align 8 dereferenceable(8) %i.jw) #21, !inline_history !3
  br i1 %i.kd, label %.sink.split.i134, label %bb.be

.sink.split.i134:                                 ; preds = %bb.bd, %bb.ba
  store volatile i8 1, ptr %i.e, align 8, !tbaa !259
  br label %.critedge

bb.be:                                            ; preds = %bb.bc, %bb.bb, %bb.bd
  %i.ke = load ptr, ptr %.0.i104, align 8, !tbaa !215
  %i.kf = load ptr, ptr %i.ac, align 8, !tbaa !215 ; 2 uses
  %i.kg = icmp eq ptr %i.ke, %i.kf
  br i1 %i.kg, label %.critedge, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.kh = load i64, ptr %i.jk, align 8, !tbaa !380
  %i.ki = icmp slt i64 %i.kh, %i.jf
  br i1 %i.ki, label %bb.bg, label %.critedge

bb.bg:                                            ; preds = %bb.bf
  %i.kj = getelementptr inbounds i8, ptr %i.kf, i64 -8 ; 2 uses
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !205 ; 5 uses
  store ptr %i.kj, ptr %i.ac, align 8, !tbaa !213
  %i.kl = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal13vivify_clauseERNS_8VivifierEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(7296) %0, ptr noundef nonnull align 8 dereferenceable(224) %1, ptr noundef %i.kk)
  br i1 %i.kl, label %bb.bh, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit

bb.bh:                                            ; preds = %bb.bg
  %i.km = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %i.kn = load i32, ptr %i.km, align 8
  %i.ko = and i32 %i.kn, 512
  %.not99 = icmp eq i32 %i.ko, 0
  br i1 %.not99, label %bb.bi, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit

bb.bi:                                            ; preds = %bb.bh
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kk, i64 16
  %i.kq = load i32, ptr %i.kp, align 8, !tbaa !182
  %i.kr = icmp sgt i32 %i.kq, 2
  br i1 %i.kr, label %bb.bj, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit

bb.bj:                                            ; preds = %bb.bi
  %i.ks = load i32, ptr %i.jn, align 4, !tbaa !381
  %i.kt = icmp slt i32 %.0173, %i.ks
  br i1 %i.kt, label %bb.bk, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit

bb.bk:                                            ; preds = %bb.bj
  %i.ku = add nsw i32 %.0173, 1                   ; 2 uses
  %i.kv = load ptr, ptr %i.ac, align 8, !tbaa !213 ; 4 uses
  %i.kw = load ptr, ptr %i.jo, align 8, !tbaa !217
  %.not.i136 = icmp eq ptr %i.kv, %i.kw
  br i1 %.not.i136, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  store ptr %i.kk, ptr %i.kv, align 8, !tbaa !205
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kv, i64 8
  store ptr %i.kx, ptr %i.ac, align 8, !tbaa !213
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit

bb.bm:                                            ; preds = %bb.bk
  %i.ky = load ptr, ptr %.0.i104, align 8, !tbaa !214 ; 4 uses
  %i.kz = ptrtoint ptr %i.kv to i64
  %i.la = ptrtoint ptr %i.ky to i64               ; 2 uses
  %i.lb = sub i64 %i.kz, %i.la                    ; 5 uses
  %i.lc = icmp eq i64 %i.lb, 9223372036854775800
  br i1 %i.lc, label %bb.bn, label %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.bn:                                            ; preds = %bb.bm
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #18
  unreachable

_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bm
  %i.ld = ashr exact i64 %i.lb, 3                 ; 3 uses
  %.sroa.speculated.i.i.i137 = tail call i64 @llvm.umax.i64(i64 %i.ld, i64 1)
  %i.le = add nsw i64 %.sroa.speculated.i.i.i137, %i.ld ; 2 uses
  %i.lf = icmp ult i64 %i.le, %i.ld
  %i.lg = tail call i64 @llvm.umin.i64(i64 %i.le, i64 1152921504606846975)
  %i.lh = select i1 %i.lf, i64 1152921504606846975, i64 %i.lg ; 3 uses
  %.not.i.i.i138 = icmp ne i64 %i.lh, 0
  tail call void @llvm.assume(i1 %.not.i.i.i138)
  %i.li = shl nuw nsw i64 %i.lh, 3
  %i.lj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.li) #19 ; 4 uses
  %i.lk = getelementptr inbounds i8, ptr %i.lj, i64 %i.lb ; 2 uses
  store ptr %i.kk, ptr %i.lk, align 8, !tbaa !205
  %i.ll = icmp sgt i64 %i.lb, 0
  br i1 %i.ll, label %bb.bo, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.bo:                                            ; preds = %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.lj, ptr align 8 %i.ky, i64 %i.lb, i1 false)
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.bo, %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lk, i64 8
  %.not.i17.i.i = icmp eq ptr %i.ky, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.bp

bb.bp:                                            ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  %i.ln = load ptr, ptr %i.jo, align 8, !tbaa !217
  %i.lo = ptrtoint ptr %i.ln to i64
  %i.lp = sub i64 %i.lo, %i.la
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ky, i64 noundef %i.lp) #20
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.bp, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.lj, ptr %.0.i104, align 8, !tbaa !214
  store ptr %i.lm, ptr %i.ac, align 8, !tbaa !213
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %i.lh
  store ptr %i.lq, ptr %i.jo, align 8, !tbaa !217
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.bl, %bb.bg, %bb.bh, %bb.bi, %bb.bj
  %.1 = phi i32 [ 0, %bb.bg ], [ 0, %bb.bj ], [ 0, %bb.bi ], [ 0, %bb.bh ], [ %i.ku, %bb.bl ], [ %i.ku, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ]
  %i.lr = load i8, ptr %i.b, align 4, !tbaa !258, !range !210, !noundef !211
  %i.ls = trunc nuw i8 %i.lr to i1
  br i1 %i.ls, label %.critedge, label %bb.ay, !llvm.loop !374

.critedge:                                        ; preds = %bb.bf, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit, %bb.be, %bb.ay, %.thread, %bb.ax, %.sink.split.i134
  %5 = phi ptr [ %4, %.thread ], [ %i.jk, %.sink.split.i134 ], [ %i.jk, %bb.ax ], [ %i.jk, %bb.ay ], [ %i.jk, %bb.be ], [ %i.jk, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit ], [ %i.jk, %bb.bf ]
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !179
  %.not100 = icmp eq i32 %i.lu, 0
  br i1 %.not100, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %.critedge
  tail call void @_ZN7CaDiCaL8Internal33backtrack_without_updating_phasesEi(ptr noundef nonnull align 8 dereferenceable(7296) %0, i32 noundef 0) #21
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %.critedge
  %i.lv = load i8, ptr %i.b, align 4, !tbaa !258, !range !210, !noundef !211
  %i.lw = trunc nuw i8 %i.lv to i1
  br i1 %i.lw, label %bb.by, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.lx = load ptr, ptr %i.ac, align 8, !tbaa !213 ; 3 uses
  %i.ly = load ptr, ptr %.0.i104, align 8, !tbaa !214 ; 4 uses
  %i.lz = icmp eq ptr %i.ly, %i.lx
  br i1 %i.lz, label %thread-pre-split, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ma = getelementptr inbounds i8, ptr %i.lx, i64 -8
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !205
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  %i.md = load i32, ptr %i.mc, align 8
  %i.me = and i32 %i.md, 2097152
  %.not101.not = icmp eq i32 %i.me, 0
  br i1 %.not101.not, label %.lr.ph179, label %thread-pre-split

.lr.ph179:                                        ; preds = %bb.bt, %.lr.ph179
  %.sroa.0141.0178 = phi ptr [ %i.mj, %.lr.ph179 ], [ %i.ly, %bb.bt ] ; 2 uses
  %i.mf = load ptr, ptr %.sroa.0141.0178, align 8, !tbaa !205
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 8 ; 2 uses
  %i.mh = load i32, ptr %i.mg, align 8
  %i.mi = or i32 %i.mh, 2097152
  store i32 %i.mi, ptr %i.mg, align 8
  %i.mj = getelementptr inbounds nuw i8, ptr %.sroa.0141.0178, i64 8 ; 2 uses
  %.not155 = icmp eq ptr %i.mj, %i.lx
  br i1 %.not155, label %thread-pre-split.loopexit, label %.lr.ph179

thread-pre-split.loopexit:                        ; preds = %.lr.ph179
  %.pr.pre = load ptr, ptr %.0.i104, align 8, !tbaa !214
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.bt, %thread-pre-split.loopexit, %bb.bs
  %i.mk = phi ptr [ %i.ly, %bb.bs ], [ %.pr.pre, %thread-pre-split.loopexit ], [ %i.ly, %bb.bt ] ; 4 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %.0.i104, i64 16
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !217 ; 2 uses
  %i.mn = ptrtoint ptr %i.mm to i64
  %i.mo = ptrtoint ptr %i.mk to i64
  %i.mp = sub i64 %i.mn, %i.mo
  %.not.i139 = icmp eq ptr %i.mm, %i.mk
  br i1 %.not.i139, label %_ZN7CaDiCaL12erase_vectorIPNS_6ClauseEEEvRSt6vectorIT_SaIS4_EE.exit, label %bb.bu

bb.bu:                                            ; preds = %thread-pre-split
  %.not.i.i.i.i140 = icmp eq ptr %i.mk, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0.i104, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i140, label %_ZN7CaDiCaL12erase_vectorIPNS_6ClauseEEEvRSt6vectorIT_SaIS4_EE.exit, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  tail call void @_ZdlPvm(ptr noundef nonnull %i.mk, i64 noundef %i.mp) #20
  br label %_ZN7CaDiCaL12erase_vectorIPNS_6ClauseEEEvRSt6vectorIT_SaIS4_EE.exit

_ZN7CaDiCaL12erase_vectorIPNS_6ClauseEEEvRSt6vectorIT_SaIS4_EE.exit: ; preds = %bb.bv, %bb.bu, %thread-pre-split
  %i.mq = load i8, ptr %i.b, align 4, !tbaa !258
  %i.mr = trunc nuw i8 %i.mq to i1
  br i1 %i.mr, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %_ZN7CaDiCaL12erase_vectorIPNS_6ClauseEEEvRSt6vectorIT_SaIS4_EE.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jg, i8 0, i64 16, i1 false)
  %i.ms = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(7296) %0) #21
  br i1 %i.ms, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  tail call void @_ZN7CaDiCaL8Internal18learn_empty_clauseEv(ptr noundef nonnull align 8 dereferenceable(7296) %0) #21
  br label %bb.by

bb.by:                                            ; preds = %bb.br, %bb.bw, %bb.bx, %_ZN7CaDiCaL12erase_vectorIPNS_6ClauseEEEvRSt6vectorIT_SaIS4_EE.exit
  %i.mt = load i64, ptr %i.io, align 8, !tbaa !216
  %i.mu = sub nsw i64 %i.mt, %i.ip                ; 2 uses
  %i.mv = load i64, ptr %i.iq, align 8, !tbaa !222
  %i.mw = sub nsw i64 %i.mv, %i.ir                ; 2 uses
  %i.mx = load i64, ptr %i.is, align 8, !tbaa !221
  %.neg = sub i64 %i.it, %i.mx
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 5608 ; 2 uses
  %i.mz = load i64, ptr %i.my, align 8, !tbaa !245
  %i.na = add nsw i64 %i.mz, %i.mu
  store i64 %i.na, ptr %i.my, align 8, !tbaa !245
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 5632 ; 2 uses
  %i.nc = load i64, ptr %i.nb, align 8, !tbaa !382
  %i.nd = add nsw i64 %i.nc, %i.mw
  store i64 %i.nd, ptr %i.nb, align 8, !tbaa !382
  %i.ne = load i64, ptr %5, align 8, !tbaa !380
  %i.nf = load i64, ptr %i.jd, align 8, !tbaa !291
  %i.ng = add nsw i64 %i.nf, %i.ne
  store i64 %i.ng, ptr %i.jd, align 8, !tbaa !291
  %i.nh = add nsw i64 %i.mw, %i.mu
  %.not102 = icmp eq i64 %i.nh, %.neg
  %i.ni = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.nj = load i8, ptr %i.ni, align 4, !tbaa !292
  %i.nk = zext i1 %.not102 to i32
  tail call void @_ZN7CaDiCaL8Internal6reportEci(ptr noundef nonnull align 8 dereferenceable(7296) %0, i8 noundef signext %i.nj, i32 noundef %i.nk) #21
  br label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit

_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit: ; preds = %.sink.split.i, %bb.b, %bb.a, %bb.by
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7CaDiCaL5rsortIN9__gnu_cxx17__normal_iteratorIPNS_10vivify_refESt6vectorIS3_SaIS3_EEEENS_23vivify_inversesize_rankEEEvT_SA_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca [256 x i64], align 16             ; 10 uses
  %2 = alloca %"class.std::vector.145", align 8   ; 7 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 3 uses
  %i.e = sdiv exact i64 %i.d, 40                  ; 7 uses
  %i.f = icmp ult i64 %i.e, 2
  br i1 %i.f, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.not106110 = icmp eq ptr %1, %0
  br label %bb.d

bb.c:                                             ; preds = %.loopexit108
  %i.h = icmp eq ptr %.sroa.095.2, %.sroa.099.3
  br i1 %i.h, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.c
  %xtraiter166 = and i64 %i.e, 1
  %unroll_iter170 = and i64 %i.e, -2
  br label %.preheader

bb.d:                                             ; preds = %bb.b, %.loopexit108
  %i.i = phi ptr [ null, %bb.b ], [ %i.cm, %.loopexit108 ] ; 14 uses
  %i.j = phi ptr [ null, %bb.b ], [ %i.cn, %.loopexit108 ] ; 7 uses
  %.059137 = phi i1 [ false, %bb.b ], [ %.3, %.loopexit108 ] ; 5 uses
  %.062136 = phi i64 [ 0, %bb.b ], [ %.365, %.loopexit108 ] ; 5 uses
  %.070135 = phi i64 [ 0, %bb.b ], [ %i.co, %.loopexit108 ] ; 8 uses
  %.071134 = phi i64 [ 255, %bb.b ], [ %.172, %.loopexit108 ] ; 2 uses
  %.073133 = phi i64 [ 0, %bb.b ], [ %.174, %.loopexit108 ] ; 3 uses
  %.075132 = phi i1 [ false, %bb.b ], [ true, %.loopexit108 ] ; 4 uses
  %.079130 = phi i64 [ 255, %bb.b ], [ %i.cp, %.loopexit108 ] ; 3 uses
  %.080129 = phi i64 [ -1, %bb.b ], [ %.383, %.loopexit108 ] ; 5 uses
  %.sroa.095.0128 = phi ptr [ %0, %bb.b ], [ %.sroa.095.2, %.loopexit108 ] ; 8 uses
  %.sroa.099.0127 = phi ptr [ %1, %bb.b ], [ %.sroa.099.3, %.loopexit108 ] ; 5 uses
  br i1 %.075132, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = xor i64 %.062136, %.080129
  %i.l = and i64 %i.k, %.079130
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %.loopexit108, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.073133
  %i.o = sub nsw i64 %.071134, %.073133
  %i.p = shl nsw i64 %i.o, 3
  %i.q = add nsw i64 %i.p, 8
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.n, i8 0, i64 %i.q, i1 false)
  %i.r = getelementptr inbounds i8, ptr %.sroa.095.0128, i64 %i.d ; 2 uses
  br i1 %.not106110, label %._crit_edge.thread, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.s = trunc nuw i8 %.169 to i1                 ; 2 uses
  %i.t = lshr i64 %.282, %.070135
  %i.u = and i64 %i.t, 255                        ; 8 uses
  %i.v = lshr i64 %.264, %.070135
  %i.w = and i64 %i.v, 255                        ; 6 uses
  br i1 %.075132, label %bb.h, label %bb.g

._crit_edge.thread:                               ; preds = %bb.f
  %i.x = lshr i64 %.080129, %.070135
  %i.y = and i64 %i.x, 255
  %i.z = lshr i64 %.062136, %.070135
  %i.aa = and i64 %i.z, 255
  br label %.loopexit108

.lr.ph:                                           ; preds = %bb.f, %.lr.ph
  %.163115 = phi i64 [ %.264, %.lr.ph ], [ %.062136, %bb.f ]
  %.066114 = phi i64 [ %.167, %.lr.ph ], [ 0, %bb.f ] ; 2 uses
  %.068113 = phi i8 [ %.169, %.lr.ph ], [ 1, %bb.f ] ; 2 uses
  %.181112 = phi i64 [ %.282, %.lr.ph ], [ %.080129, %bb.f ]
  %.sroa.090.0111 = phi ptr [ %i.an, %.lr.ph ], [ %.sroa.095.0128, %bb.f ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.090.0111, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !250
  %i.ad = xor i64 %i.ac, -1                       ; 3 uses
  %i.ae = select i1 %.075132, i64 -1, i64 %i.ad
  %.282 = and i64 %i.ae, %.181112                 ; 6 uses
  %i.af = select i1 %.075132, i64 0, i64 %i.ad
  %.264 = or i64 %i.af, %.163115                  ; 6 uses
  %i.ag = lshr i64 %i.ad, %.070135
  %i.ah = and i64 %i.ag, 255                      ; 3 uses
  %i.ai = trunc nuw i8 %.068113 to i1
  %i.aj = icmp samesign ugt i64 %.066114, %i.ah
  %or.cond = select i1 %i.ai, i1 %i.aj, i1 false  ; 2 uses
  %.169 = select i1 %or.cond, i8 0, i8 %.068113   ; 2 uses
  %.167 = select i1 %or.cond, i64 %.066114, i64 %i.ah
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ah ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !198
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !198
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.090.0111, i64 40 ; 2 uses
  %.not106 = icmp eq ptr %i.an, %i.r
  br i1 %.not106, label %._crit_edge, label %.lr.ph, !llvm.loop !383

bb.g:                                             ; preds = %._crit_edge
  %i.ao = xor i64 %.264, %.282
  %i.ap = and i64 %i.ao, %.079130
  %i.aq = icmp eq i64 %i.ap, 0
  %or.cond105 = select i1 %i.aq, i1 true, i1 %i.s
  br i1 %or.cond105, label %.loopexit108, label %.preheader109

bb.h:                                             ; preds = %._crit_edge
  br i1 %i.s, label %.loopexit108, label %.preheader109

.preheader109:                                    ; preds = %bb.h, %bb.g
  %.not118 = icmp samesign ugt i64 %i.u, %i.w
  br i1 %.not118, label %._crit_edge122, label %.lr.ph121.preheader

.lr.ph121.preheader:                              ; preds = %.preheader109
  %i.ar = add nuw nsw i64 %i.w, 1
  %i.as = sub nuw nsw i64 %i.ar, %i.u             ; 2 uses
  %i.at = sub nuw nsw i64 %i.w, %i.u
  %xtraiter = and i64 %i.as, 3                    ; 3 uses
  %i.au = icmp samesign ult i64 %i.at, 3
  br i1 %i.au, label %.lr.ph121.epil.preheader, label %.lr.ph121.preheader.new

.lr.ph121.preheader.new:                          ; preds = %.lr.ph121.preheader
  %unroll_iter = and i64 %i.as, 508
  br label %.lr.ph121

._crit_edge122.loopexit.unr-lcssa:                ; preds = %.lr.ph121
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge122, label %.lr.ph121.epil.preheader

.lr.ph121.epil.preheader:                         ; preds = %._crit_edge122.loopexit.unr-lcssa, %.lr.ph121.preheader
  %.060120.epil.init = phi i64 [ %i.u, %.lr.ph121.preheader ], [ %i.bo, %._crit_edge122.loopexit.unr-lcssa ]
  %.061119.epil.init = phi i64 [ 0, %.lr.ph121.preheader ], [ %i.bn, %._crit_edge122.loopexit.unr-lcssa ]
  %lcmp.mod165 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod165)
  br label %.lr.ph121.epil

.lr.ph121.epil:                                   ; preds = %.lr.ph121.epil, %.lr.ph121.epil.preheader
  %.060120.epil = phi i64 [ %i.ay, %.lr.ph121.epil ], [ %.060120.epil.init, %.lr.ph121.epil.preheader ] ; 2 uses
  %.061119.epil = phi i64 [ %i.ax, %.lr.ph121.epil ], [ %.061119.epil.init, %.lr.ph121.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph121.epil ], [ 0, %.lr.ph121.epil.preheader ]
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.060120.epil ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !198
  store i64 %.061119.epil, ptr %i.av, align 8, !tbaa !198
  %i.ax = add i64 %i.aw, %.061119.epil
  %i.ay = add nuw nsw i64 %.060120.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge122, label %.lr.ph121.epil, !llvm.loop !384

._crit_edge122:                                   ; preds = %._crit_edge122.loopexit.unr-lcssa, %.lr.ph121.epil, %.preheader109
  br i1 %.059137, label %.lr.ph126.preheader, label %bb.i

.lr.ph121:                                        ; preds = %.lr.ph121, %.lr.ph121.preheader.new
  %.060120 = phi i64 [ %i.u, %.lr.ph121.preheader.new ], [ %i.bo, %.lr.ph121 ] ; 5 uses
  %.061119 = phi i64 [ 0, %.lr.ph121.preheader.new ], [ %i.bn, %.lr.ph121 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph121.preheader.new ], [ %niter.next.3, %.lr.ph121 ]
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.060120 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !198
  store i64 %.061119, ptr %i.az, align 8, !tbaa !198
  %i.bb = add i64 %i.ba, %.061119                 ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.060120
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !198
  store i64 %i.bb, ptr %i.bd, align 8, !tbaa !198
  %i.bf = add i64 %i.be, %i.bb                    ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.060120
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !198
  store i64 %i.bf, ptr %i.bh, align 8, !tbaa !198
  %i.bj = add i64 %i.bi, %i.bf                    ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.060120
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !198
  store i64 %i.bj, ptr %i.bl, align 8, !tbaa !198
  %i.bn = add i64 %i.bm, %i.bj                    ; 2 uses
  %i.bo = add nuw nsw i64 %.060120, 4             ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge122.loopexit.unr-lcssa, label %.lr.ph121, !llvm.loop !385

bb.i:                                             ; preds = %._crit_edge122
  %i.bp = load ptr, ptr %i.g, align 8, !tbaa !287 ; 2 uses
end_hunk_1
