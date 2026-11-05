Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/gsubgpos-context?download=true
inline.NumInlined: 448
inline.NumDeleted: 318
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN5graph7graph_t8new_nodeEPcS1_ = comdat any

$_ZN5graph5GSTAR12find_lookupsIN2OT6Layout10SmallTypesEEEvRNS_7graph_tER12hb_hashmap_tIjPNS_6LookupELb0EE = comdat any

$_ZN12hb_hashmap_tIjPN5graph6LookupELb0EE13set_with_hashIRKjRS2_EEbOT_jOT0_b = comdat any

$_ZN12hb_hashmap_tIjPN5graph6LookupELb0EE5allocEj = comdat any

$_ZN12hb_hashmap_tIjPN5graph6LookupELb0EE13set_with_hashIjS2_EEbOT_jOT0_b = comdat any

$_ZN11hb_vector_tIPcLb0EE5allocEjb = comdat any

$_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE11resize_fullEibb = comdat any

$_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE13shrink_vectorEj = comdat any

$_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE12_malloc_moveEj = comdat any

$_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev = comdat any

$_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_ = comdat any

$_ZN11hb_vector_tIjLb0EE5allocEjb = comdat any

@_hb_NullPool = external hidden local_unnamed_addr constant [80 x i64], align 16
@_hb_CrapPool = external hidden local_unnamed_addr global [80 x i64], align 16
@__const._ZN12hb_hashmap_tIjPN5graph6LookupELb0EE9prime_forEj.prime_mod = private unnamed_addr constant [32 x i32] [i32 1, i32 2, i32 3, i32 7, i32 13, i32 31, i32 61, i32 127, i32 251, i32 509, i32 1021, i32 2039, i32 4093, i32 8191, i32 16381, i32 32749, i32 65521, i32 131071, i32 262139, i32 524287, i32 1048573, i32 2097143, i32 4194301, i32 8388593, i32 16777213, i32 33554393, i32 67108859, i32 134217689, i32 268435399, i32 536870909, i32 1073741789, i32 2147483647], align 16

@_ZN5graph24gsubgpos_graph_context_tC1EjRNS_7graph_tE = hidden unnamed_addr alias void (ptr, i32, ptr), ptr @_ZN5graph24gsubgpos_graph_context_tC2EjRNS_7graph_tE

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN5graph24gsubgpos_graph_context_tC2EjRNS_7graph_tE(ptr noundef nonnull align 8 dereferenceable(168) initializes((0, 4), (8, 20)) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 align 2 {
bb.a:
  store i32 %1, ptr %0, align 8, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !101
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 0, ptr %i.b, align 8, !tbaa !102
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store atomic i32 1, ptr %i.c monotonic, align 8
  store atomic i8 1, ptr %i.d monotonic, align 4
  store atomic ptr null, ptr %i.e monotonic, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %i.f, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 42
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr null, ptr %i.h, align 8, !tbaa !28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.g, i8 0, i64 18, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  store atomic i32 1, ptr %i.i monotonic, align 8
  store atomic i8 1, ptr %i.j monotonic, align 4
  store atomic ptr null, ptr %i.k monotonic, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 1, ptr %i.l, align 8, !tbaa !29
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 90
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr null, ptr %i.n, align 8, !tbaa !30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.m, i8 0, i64 18, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128
  store atomic i32 1, ptr %i.o monotonic, align 8
  store atomic i8 1, ptr %i.p monotonic, align 4
  store atomic ptr null, ptr %i.q monotonic, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 1, ptr %i.r, align 8, !tbaa !103
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 138
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr null, ptr %i.t, align 8, !tbaa !104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.s, i8 0, i64 18, i1 false)
  switch i32 %1, label %_ZN5graph5GSTAR14graph_to_gstarERNS_7graph_tE.exit.thread [
    i32 1196643650, label %bb.b
    i32 1196445523, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 3 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !33
  %.not.i.not.i.i.i = icmp eq i32 %i.v, 0
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8
  %.0.i.i.i.i = select i1 %.not.i.not.i.i.i, ptr @_hb_NullPool, ptr %i.x, !prof !34
  %i.y = load i32, ptr %.0.i.i.i.i, align 4, !tbaa !35 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !38
  %.not.i.i.i = icmp ult i32 %i.y, %i.aa
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = zext i32 %i.y to i64
  %i.ae = getelementptr inbounds nuw [216 x i8], ptr %i.ac, i64 %i.ad
  %.0.i.i.i = select i1 %.not.i.i.i, ptr %i.ae, ptr @_hb_NullPool, !prof !39 ; 2 uses
  %i.af = load ptr, ptr %.0.i.i.i, align 8, !tbaa !56 ; 8 uses
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %_ZN5graph5GSTAR14graph_to_gstarERNS_7graph_tE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !57
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 2 uses
  %i.al = icmp ult i64 %i.ak, 4
  br i1 %i.al, label %_ZN5graph5GSTAR14graph_to_gstarERNS_7graph_tE.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !58
  %i.am = load i16, ptr %i.af, align 1, !tbaa !60
  %cond.i.i.i = icmp eq i16 %i.am, 256
  br i1 %cond.i.i.i, label %_ZN5graph5GSTAR8sanitizeERKNS_7graph_t8vertex_tE.exit.i, label %bb.e

_ZN5graph5GSTAR8sanitizeERKNS_7graph_t8vertex_tE.exit.i: ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !58
  %i.an = load i32, ptr %i.af, align 1
  %i.ao = tail call noundef i32 @llvm.bswap.i32(i32 %i.an)
  %i.ap = icmp ugt i32 %i.ao, 65536
  %i.aq = select i1 %i.ap, i64 14, i64 10
  %.not11.i = icmp ult i64 %i.ak, %i.aq
  br i1 %.not11.i, label %_ZN5graph5GSTAR14graph_to_gstarERNS_7graph_tE.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN5graph5GSTAR8sanitizeERKNS_7graph_t8vertex_tE.exit.i, %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !58
  %i.ar = load i16, ptr %i.af, align 1, !tbaa !60
  %cond.i = icmp eq i16 %i.ar, 256
  br i1 %cond.i, label %_ZN5graph5GSTAR12find_lookupsERNS_7graph_tER12hb_hashmap_tIjPNS_6LookupELb0EE.exit, label %_ZN5graph5GSTAR12find_lookupsERNS_7graph_tER12hb_hashmap_tIjPNS_6LookupELb0EE.exit.thread

_ZN5graph5GSTAR12find_lookupsERNS_7graph_tER12hb_hashmap_tIjPNS_6LookupELb0EE.exit.thread: ; preds = %bb.e
  %i.as = load i32, ptr %i.u, align 4, !tbaa !33
  %.not.i.not.i.i14 = icmp eq i32 %i.as, 0
  %i.at = load ptr, ptr %i.w, align 8
  %.0.i.i.i1015 = select i1 %.not.i.not.i.i14, ptr @_hb_NullPool, ptr %i.at, !prof !34
  %i.au = load i32, ptr %.0.i.i.i1015, align 4, !tbaa !35
  br label %_ZNK5graph5GSTAR28get_lookup_list_field_offsetEv.exit.i

_ZN5graph5GSTAR12find_lookupsERNS_7graph_tER12hb_hashmap_tIjPNS_6LookupELb0EE.exit: ; preds = %bb.e
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !61, !nonnull !62, !align !63
  tail call void @_ZN5graph5GSTAR12find_lookupsIN2OT6Layout10SmallTypesEEEvRNS_7graph_tER12hb_hashmap_tIjPNS_6LookupELb0EE(ptr noundef nonnull align 1 dereferenceable(14) %i.af, ptr noundef nonnull align 8 dereferenceable(88) %i.av, ptr noundef nonnull align 8 dereferenceable(48) %i.c)
  %.pr = load i16, ptr %i.af, align 1, !tbaa !60
  %i.aw = load i32, ptr %i.u, align 4, !tbaa !33
  %.not.i.not.i.i = icmp eq i32 %i.aw, 0
  %i.ax = load ptr, ptr %i.w, align 8
  %.0.i.i.i10 = select i1 %.not.i.not.i.i, ptr @_hb_NullPool, ptr %i.ax, !prof !34
  %i.ay = load i32, ptr %.0.i.i.i10, align 4, !tbaa !35 ; 2 uses
  %cond.i.i = icmp eq i16 %.pr, 256
  br i1 %cond.i.i, label %bb.f, label %_ZNK5graph5GSTAR28get_lookup_list_field_offsetEv.exit.i

bb.f:                                             ; preds = %_ZN5graph5GSTAR12find_lookupsERNS_7graph_tER12hb_hashmap_tIjPNS_6LookupELb0EE.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !58
  %i.az = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  br label %_ZNK5graph5GSTAR28get_lookup_list_field_offsetEv.exit.i

_ZNK5graph5GSTAR28get_lookup_list_field_offsetEv.exit.i: ; preds = %_ZN5graph5GSTAR12find_lookupsERNS_7graph_tER12hb_hashmap_tIjPNS_6LookupELb0EE.exit.thread, %bb.f, %_ZN5graph5GSTAR12find_lookupsERNS_7graph_tER12hb_hashmap_tIjPNS_6LookupELb0EE.exit
  %i.ba = phi i32 [ %i.ay, %bb.f ], [ %i.ay, %_ZN5graph5GSTAR12find_lookupsERNS_7graph_tER12hb_hashmap_tIjPNS_6LookupELb0EE.exit ], [ %i.au, %_ZN5graph5GSTAR12find_lookupsERNS_7graph_tER12hb_hashmap_tIjPNS_6LookupELb0EE.exit.thread ] ; 2 uses
  %.0.i.i = phi ptr [ %i.az, %bb.f ], [ null, %_ZN5graph5GSTAR12find_lookupsERNS_7graph_tER12hb_hashmap_tIjPNS_6LookupELb0EE.exit ], [ null, %_ZN5graph5GSTAR12find_lookupsERNS_7graph_tER12hb_hashmap_tIjPNS_6LookupELb0EE.exit.thread ] ; 3 uses
  %i.bb = load i32, ptr %i.z, align 4, !tbaa !38
  %.not.i.i.i.i = icmp ult i32 %i.ba, %i.bb
  %i.bc = load ptr, ptr %i.ab, align 8
  %i.bd = zext i32 %i.ba to i64
  %i.be = getelementptr inbounds nuw [216 x i8], ptr %i.bc, i64 %i.bd
  %.0.i.i.i.i11 = select i1 %.not.i.i.i.i, ptr %i.be, ptr @_hb_NullPool, !prof !39 ; 4 uses
  %i.bf = load ptr, ptr %.0.i.i.i.i11, align 8, !tbaa !64 ; 2 uses
  %i.bg = icmp uge ptr %.0.i.i, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i11, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  %.not.i.i = icmp ult ptr %.0.i.i, %i.bi
  %or.cond.i.i = select i1 %i.bg, i1 %.not.i.i, i1 false
  br i1 %or.cond.i.i, label %bb.g, label %_ZN5graph5GSTAR21get_lookup_list_indexERNS_7graph_tE.exit

bb.g:                                             ; preds = %_ZNK5graph5GSTAR28get_lookup_list_field_offsetEv.exit.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i11, i64 20
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !65 ; 2 uses
  %.not2427.not.i.i = icmp eq i32 %i.bk, 0
  br i1 %.not2427.not.i.i, label %_ZN5graph5GSTAR21get_lookup_list_indexERNS_7graph_tE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i11, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !66
  %wide.trip.count.i.i = zext i32 %i.bk to i64
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN5graph5GSTAR21get_lookup_list_indexERNS_7graph_tE.exit, label %bb.i, !llvm.loop !0

bb.i:                                             ; preds = %bb.h, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.h ] ; 2 uses
  %i.bn = getelementptr inbounds nuw [12 x i8], ptr %i.bm, i64 %indvars.iv.i.i ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !69
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bq
  %.not23.not.i.i = icmp eq ptr %.0.i.i, %i.br
  br i1 %.not23.not.i.i, label %.thread.i.i, label %bb.h

.thread.i.i:                                      ; preds = %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !70
  br label %_ZN5graph5GSTAR21get_lookup_list_indexERNS_7graph_tE.exit

_ZN5graph5GSTAR21get_lookup_list_indexERNS_7graph_tE.exit: ; preds = %bb.h, %_ZNK5graph5GSTAR28get_lookup_list_field_offsetEv.exit.i, %bb.g, %.thread.i.i
  %.4.i.i = phi i32 [ -1, %_ZNK5graph5GSTAR28get_lookup_list_field_offsetEv.exit.i ], [ %i.bt, %.thread.i.i ], [ -1, %bb.g ], [ -1, %bb.h ]
  store i32 %.4.i.i, ptr %i.b, align 8, !tbaa !102
  br label %_ZN5graph5GSTAR14graph_to_gstarERNS_7graph_tE.exit.thread

_ZN5graph5GSTAR14graph_to_gstarERNS_7graph_tE.exit.thread: ; preds = %bb.c, %bb.b, %_ZN5graph5GSTAR8sanitizeERKNS_7graph_t8vertex_tE.exit.i, %_ZN5graph5GSTAR21get_lookup_list_indexERNS_7graph_tE.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN5graph24gsubgpos_graph_context_t11create_nodeEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 2 uses
  %i.b = tail call ptr @hb_calloc(i64 noundef 1, i64 noundef %i.a) #9 ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !61, !nonnull !62, !align !63 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 76 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !74   ; 3 uses
  %i.h = load i32, ptr %i.e, align 8, !tbaa !75
  %.not.i.i.i = icmp slt i32 %i.g, %i.h
  br i1 %.not.i.i.i, label %.critedge.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = add i32 %i.g, 1
  %i.j = tail call noundef zeroext i1 @_ZN11hb_vector_tIPcLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i32 noundef %i.i, i1 noundef zeroext false)
  br i1 %i.j, label %..critedge_crit_edge.i.i.i, label %bb.d, !prof !39

..critedge_crit_edge.i.i.i:                       ; preds = %bb.c
  %.pre.i.i.i = load i32, ptr %i.f, align 4, !tbaa !74
  br label %.critedge.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.k = load i64, ptr @_hb_NullPool, align 16
  store i64 %i.k, ptr @_hb_CrapPool, align 16
  br label %_ZN5graph24gsubgpos_graph_context_t10add_bufferEPc.exit

.critedge.i.i.i:                                  ; preds = %..critedge_crit_edge.i.i.i, %bb.b
  %i.l = phi i32 [ %.pre.i.i.i, %..critedge_crit_edge.i.i.i ], [ %i.g, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !76
  %i.o = add i32 %i.l, 1
  store i32 %i.o, ptr %i.f, align 4, !tbaa !74
  %i.p = zext i32 %i.l to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.p
  store ptr %i.b, ptr %i.q, align 8, !tbaa !105
  br label %_ZN5graph24gsubgpos_graph_context_t10add_bufferEPc.exit

_ZN5graph24gsubgpos_graph_context_t10add_bufferEPc.exit: ; preds = %bb.d, %.critedge.i.i.i
  %i.r = load i32, ptr %i.e, align 8, !tbaa !75
  %i.s = icmp sgt i32 %i.r, -1
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN5graph24gsubgpos_graph_context_t10add_bufferEPc.exit
  tail call void @hb_free(ptr noundef nonnull %i.b) #9
  br label %bb.g

bb.f:                                             ; preds = %_ZN5graph24gsubgpos_graph_context_t10add_bufferEPc.exit
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !61, !nonnull !62, !align !63
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.a
  %i.v = tail call noundef i32 @_ZN5graph7graph_t8new_nodeEPcS1_(ptr noundef nonnull align 8 dereferenceable(88) %i.t, ptr noundef nonnull %i.b, ptr noundef nonnull %i.u)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.e
  %.0 = phi i32 [ %i.v, %bb.f ], [ -1, %bb.e ], [ -1, %bb.a ]
  ret i32 %.0
}

declare ptr @hb_calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @hb_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN5graph7graph_t8new_nodeEPcS1_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !107  ; 2 uses
  %i.c = icmp ugt i32 %i.b, 799999
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 51 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !108, !range !77, !noundef !62
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %_ZN5graph7graph_t13check_successEb.exit

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.d, align 1, !tbaa !108
  br label %_ZN5graph7graph_t13check_successEb.exit

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 50
  store i8 1, ptr %i.g, align 2, !tbaa !109
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 49
  store i8 1, ptr %i.h, align 1, !tbaa !110
  %i.i = add nuw nsw i32 %i.b, 1
  %i.j = tail call noundef zeroext i1 @_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE11resize_fullEibb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.i, i1 noundef zeroext true, i1 noundef zeroext false)
  br i1 %i.j, label %bb.f, label %bb.e, !prof !39

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  %.pre = load i32, ptr %i.a, align 4, !tbaa !107
  %.pre11 = add i32 %.pre, -1
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE4pushEv.exit

bb.f:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !78
  %i.m = load i32, ptr %i.a, align 4, !tbaa !38
  %i.n = add i32 %i.m, -1                         ; 2 uses
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [216 x i8], ptr %i.l, i64 %i.o
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE4pushEv.exit

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE4pushEv.exit: ; preds = %bb.e, %bb.f
  %.pre-phi = phi i32 [ %.pre11, %bb.e ], [ %i.n, %bb.f ] ; 2 uses
  %.0.i = phi ptr [ @_hb_CrapPool, %bb.e ], [ %i.p, %bb.f ] ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !33   ; 3 uses
  %i.t = load i32, ptr %i.q, align 8, !tbaa !79
  %.not.i8 = icmp slt i32 %i.s, %i.t
  br i1 %.not.i8, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE4pushEv.exit
  %i.u = add i32 %i.s, 1
  %i.v = tail call noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i32 noundef %i.u, i1 noundef zeroext false)
  br i1 %i.v, label %..critedge_crit_edge.i, label %bb.h, !prof !39

..critedge_crit_edge.i:                           ; preds = %bb.g
  %.pre.i = load i32, ptr %i.r, align 4, !tbaa !33
  br label %.critedge.i

bb.h:                                             ; preds = %bb.g
  %i.w = load i32, ptr @_hb_NullPool, align 16
  store i32 %i.w, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit

.critedge.i:                                      ; preds = %..critedge_crit_edge.i, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE4pushEv.exit
  %i.x = phi i32 [ %.pre.i, %..critedge_crit_edge.i ], [ %i.s, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE4pushEv.exit ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !80
  %i.aa = add i32 %i.x, 1
  store i32 %i.aa, ptr %i.r, align 4, !tbaa !33
  %i.ab = zext i32 %i.x to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.ab
  store i32 %.pre-phi, ptr %i.ac, align 4, !tbaa !35
  br label %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit

_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit:  ; preds = %bb.h, %.critedge.i
  %i.ad = load i32, ptr %0, align 8, !tbaa !81
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %_ZN5graph7graph_t13check_successEb.exit, label %bb.i

bb.i:                                             ; preds = %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit
  %i.af = load i32, ptr %i.q, align 8, !tbaa !79
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %_ZN5graph7graph_t13check_successEb.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %1, ptr %.0.i, align 8, !tbaa !56
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store ptr %2, ptr %i.ah, align 8, !tbaa !57
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i, i64 56
  store i64 0, ptr %i.ai, align 8, !tbaa !111
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i, i64 64
  store i32 0, ptr %i.aj, align 8, !tbaa !112
  br label %_ZN5graph7graph_t13check_successEb.exit

_ZN5graph7graph_t13check_successEb.exit:          ; preds = %bb.j, %bb.i, %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit, %bb.c, %bb.b
  %.1 = phi i32 [ -1, %bb.c ], [ -1, %bb.b ], [ %.pre-phi, %bb.j ], [ -1, %bb.i ], [ -1, %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZN5graph24gsubgpos_graph_context_t21num_non_ext_subtablesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52
  %.val = load i32, ptr %i.a, align 4, !tbaa !82
  %i.b = add i32 %.val, 1                         ; 2 uses
  %.not15.i.i.i.i.i.i = icmp ult i32 %i.b, 2
  br i1 %.not15.i.i.i.i.i.i, label %._crit_edge, label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EdeEv.exit.i.us.i.i.i.i.i.preheader

_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EdeEv.exit.i.us.i.i.i.i.i.preheader: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val6 = load ptr, ptr %i.c, align 8, !tbaa !28
  br label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EdeEv.exit.i.us.i.i.i.i.i

_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EdeEv.exit.i.us.i.i.i.i.i: ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EdeEv.exit.i.us.i.i.i.i.i.preheader, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.us.i.i.i.i.i
  %.sroa.5.sroa.0.0.i.i = phi i32 [ %i.g, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.us.i.i.i.i.i ], [ %i.b, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EdeEv.exit.i.us.i.i.i.i.i.preheader ] ; 3 uses
  %.sroa.02.0.i.i = phi ptr [ %i.h, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.us.i.i.i.i.i ], [ %.val6, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EdeEv.exit.i.us.i.i.i.i.i.preheader ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i, i64 4
  %i.e = load i32, ptr %i.d, align 4, !noalias !125
  %i.f = trunc i32 %i.e to i1
  br i1 %i.f, label %"_ZNK9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK3$_8LPv0EEMS8_FRS6_vEL24hb_function_sortedness_t0ELSF_0EERK3$_9LSK_0ELSF_0EES6_E3endEv.exit", label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.us.i.i.i.i.i

_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.us.i.i.i.i.i: ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EdeEv.exit.i.us.i.i.i.i.i
  %i.g = add i32 %.sroa.5.sroa.0.0.i.i, -1        ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i, i64 16
  %i.i = icmp eq i32 %i.g, 0
  br i1 %i.i, label %._crit_edge, label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EdeEv.exit.i.us.i.i.i.i.i, !llvm.loop !123

"_ZNK9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK3$_8LPv0EEMS8_FRS6_vEL24hb_function_sortedness_t0ELSF_0EERK3$_9LSK_0ELSF_0EES6_E3endEv.exit": ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EdeEv.exit.i.us.i.i.i.i.i
  %i.j = zext i32 %.sroa.5.sroa.0.0.i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 4
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i, i64 %i.k
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.us.i.i.i.i.i, %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK3$_8LPv0EEMS8_FRS6_vEL24hb_function_sortedness_t0ELSF_0EERK3$_9LSK_0ELSF_0EES6_EppEv.exit", %bb.a
  %.0.lcssa = phi i32 [ %.1, %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK3$_8LPv0EEMS8_FRS6_vEL24hb_function_sortedness_t0ELSF_0EERK3$_9LSK_0ELSF_0EES6_EppEv.exit" ], [ 0, %bb.a ], [ 0, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.us.i.i.i.i.i ]
  ret i32 %.0.lcssa

.lr.ph:                                           ; preds = %"_ZNK9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK3$_8LPv0EEMS8_FRS6_vEL24hb_function_sortedness_t0ELSF_0EERK3$_9LSK_0ELSF_0EES6_E3endEv.exit", %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK3$_8LPv0EEMS8_FRS6_vEL24hb_function_sortedness_t0ELSF_0EERK3$_9LSK_0ELSF_0EES6_EppEv.exit"
  %.031 = phi i32 [ %.1, %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK3$_8LPv0EEMS8_FRS6_vEL24hb_function_sortedness_t0ELSF_0EERK3$_9LSK_0ELSF_0EES6_EppEv.exit" ], [ 0, %"_ZNK9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK3$_8LPv0EEMS8_FRS6_vEL24hb_function_sortedness_t0ELSF_0EERK3$_9LSK_0ELSF_0EES6_E3endEv.exit" ] ; 2 uses
  %.sroa.012.030 = phi ptr [ %.sroa.012.2, %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK3$_8LPv0EEMS8_FRS6_vEL24hb_function_sortedness_t0ELSF_0EERK3$_9LSK_0ELSF_0EES6_EppEv.exit" ], [ %.sroa.02.0.i.i, %"_ZNK9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK3$_8LPv0EEMS8_FRS6_vEL24hb_function_sortedness_t0ELSF_0EERK3$_9LSK_0ELSF_0EES6_E3endEv.exit" ] ; 4 uses
  %.sroa.713.029 = phi i32 [ %.sroa.713.2, %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK3$_8LPv0EEMS8_FRS6_vEL24hb_function_sortedness_t0ELSF_0EERK3$_9LSK_0ELSF_0EES6_EppEv.exit" ], [ %.sroa.5.sroa.0.0.i.i, %"_ZNK9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK3$_8LPv0EEMS8_FRS6_vEL24hb_function_sortedness_t0ELSF_0EERK3$_9LSK_0ELSF_0EES6_E3endEv.exit" ] ; 5 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %.sroa.713.029, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.b, label %"_ZN9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK3$_8LPv0EEMS8_FRS6_vEL24hb_function_sortedness_t0ELSF_0EERK3$_9LSK_0ELSF_0EES6_EdeEv.exit", !prof !34

bb.b:                                             ; preds = %.lr.ph
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(16) @_hb_NullPool, i64 16, i1 false)
  br label %"_ZN9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK3$_8LPv0EEMS8_FRS6_vEL24hb_function_sortedness_t0ELSF_0EERK3$_9LSK_0ELSF_0EES6_EdeEv.exit"

"_ZN9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK3$_8LPv0EEMS8_FRS6_vEL24hb_function_sortedness_t0ELSF_0EERK3$_9LSK_0ELSF_0EES6_EdeEv.exit": ; preds = %bb.b, %.lr.ph
  %.0.i.i.i.i.i.i.i.i = phi ptr [ @_hb_CrapPool, %bb.b ], [ %.sroa.012.030, %.lr.ph ]
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i, i64 8
  %.val1.i.i = load ptr, ptr %i.m, align 8, !tbaa !84 ; 2 uses
  %i.n = load i32, ptr %0, align 8, !tbaa !26     ; 2 uses
  %i.o = load i16, ptr %.val1.i.i, align 1, !tbaa !60
  %i.p = tail call noundef i16 @llvm.bswap.i16(i16 %i.o)
  %i.q = zext i16 %i.p to i32
  %switch.selectcmp.i.i = icmp eq i32 %i.n, 1196643650
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 7, i32 0
  %switch.selectcmp2.i.i = icmp eq i32 %i.n, 1196445523
  %switch.select3.i.i = select i1 %switch.selectcmp2.i.i, i32 9, i32 %switch.select.i.i
  %i.r = icmp eq i32 %switch.select3.i.i, %i.q
  br i1 %i.r, label %bb.d, label %bb.c

bb.c:                                             ; preds = %"_ZN9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK3$_8LPv0EEMS8_FRS6_vEL24hb_function_sortedness_t0ELSF_0EERK3$_9LSK_0ELSF_0EES6_EdeEv.exit"
  %i.s = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 4
  %i.t = load i16, ptr %i.s, align 1, !tbaa !60
  %i.u = tail call noundef i16 @llvm.bswap.i16(i16 %i.t)
  %i.v = zext i16 %i.u to i32
  %i.w = add i32 %.031, %i.v
  br label %bb.d

bb.d:                                             ; preds = %"_ZN9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK3$_8LPv0EEMS8_FRS6_vEL24hb_function_sortedness_t0ELSF_0EERK3$_9LSK_0ELSF_0EES6_EdeEv.exit", %bb.c
  %.1 = phi i32 [ %i.w, %bb.c ], [ %.031, %"_ZN9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK3$_8LPv0EEMS8_FRS6_vEL24hb_function_sortedness_t0ELSF_0EERK3$_9LSK_0ELSF_0EES6_EdeEv.exit" ] ; 2 uses
  %i.x = zext i32 %.sroa.713.029 to i64
  %i.y = shl nuw nsw i64 %i.x, 4
  %scevgep = getelementptr i8, ptr %.sroa.012.030, i64 %i.y
  %scevgep50 = getelementptr i8, ptr %.sroa.012.030, i64 16
  %i.z = add i32 %.sroa.713.029, -1
  %i.aa = zext i32 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, 4
  %scevgep51 = getelementptr i8, ptr %scevgep50, i64 %i.ab
  %.not.i.i.i.i.i.i.i.i1160 = icmp eq i32 %.sroa.713.029, 0
  br i1 %.not.i.i.i.i.i.i.i.i1160, label %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK3$_8LPv0EEMS8_FRS6_vEL24hb_function_sortedness_t0ELSF_0EERK3$_9LSK_0ELSF_0EES6_EppEv.exit", label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.i.i.i.i.i, !prof !126

bb.e:                                             ; preds = %"_ZNK4$_24clIRMN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEKFbvERS6_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSC_OSD_.exit.i.i.i.i.i.i"
  br label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.i.i.i.i.i, !llvm.loop !124

_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.i.i.i.i.i: ; preds = %bb.d, %bb.e
  %.sroa.012.162 = phi ptr [ %i.ad, %bb.e ], [ %.sroa.012.030, %bb.d ] ; 2 uses
  %.sroa.713.161 = phi i32 [ %i.ac, %bb.e ], [ %.sroa.713.029, %bb.d ]
  %i.ac = add i32 %.sroa.713.161, -1              ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i.i.i.i, label %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK3$_8LPv0EEMS8_FRS6_vEL24hb_function_sortedness_t0ELSF_0EERK3$_9LSK_0ELSF_0EES6_EppEv.exit", label %"_ZNK4$_24clIRMN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEKFbvERS6_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSC_OSD_.exit.i.i.i.i.i.i"

"_ZNK4$_24clIRMN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEKFbvERS6_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSC_OSD_.exit.i.i.i.i.i.i": ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.012.162, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.012.162, i64 20
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = trunc i32 %i.af to i1
  br i1 %i.ag, label %"_ZNK4$_24clIRMN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEKFbvERS6_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSC_OSD_.exit.i.i.i.i.i.i._ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK3$_8LPv0EEMS8_FRS6_vEL24hb_function_sortedness_t0ELSF_0EERK3$_9LSK_0ELSF_0EES6_EppEv.exit_crit_edge", label %bb.e, !llvm.loop !124

"_ZNK4$_24clIRMN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEKFbvERS6_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSC_OSD_.exit.i.i.i.i.i.i._ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK3$_8LPv0EEMS8_FRS6_vEL24hb_function_sortedness_t0ELSF_0EERK3$_9LSK_0ELSF_0EES6_EppEv.exit_crit_edge": ; preds = %"_ZNK4$_24clIRMN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEKFbvERS6_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSC_OSD_.exit.i.i.i.i.i.i"
  br label %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK3$_8LPv0EEMS8_FRS6_vEL24hb_function_sortedness_t0ELSF_0EERK3$_9LSK_0ELSF_0EES6_EppEv.exit", !llvm.loop !124

"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK3$_8LPv0EEMS8_FRS6_vEL24hb_function_sortedness_t0ELSF_0EERK3$_9LSK_0ELSF_0EES6_EppEv.exit": ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.i.i.i.i.i, %"_ZNK4$_24clIRMN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEKFbvERS6_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSC_OSD_.exit.i.i.i.i.i.i._ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK3$_8LPv0EEMS8_FRS6_vEL24hb_function_sortedness_t0ELSF_0EERK3$_9LSK_0ELSF_0EES6_EppEv.exit_crit_edge", %bb.d
  %.sroa.713.2 = phi i32 [ 0, %bb.d ], [ %i.ac, %"_ZNK4$_24clIRMN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEKFbvERS6_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSC_OSD_.exit.i.i.i.i.i.i._ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK3$_8LPv0EEMS8_FRS6_vEL24hb_function_sortedness_t0ELSF_0EERK3$_9LSK_0ELSF_0EES6_EppEv.exit_crit_edge" ], [ 0, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.012.2 = phi ptr [ %scevgep, %bb.d ], [ %i.ad, %"_ZNK4$_24clIRMN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEKFbvERS6_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSC_OSD_.exit.i.i.i.i.i.i._ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK3$_8LPv0EEMS8_FRS6_vEL24hb_function_sortedness_t0ELSF_0EERK3$_9LSK_0ELSF_0EES6_EppEv.exit_crit_edge" ], [ %scevgep51, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.i.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i = icmp ne ptr %.sroa.012.2, %i.l
  %i.ah = icmp ne i32 %.sroa.713.2, 0
  %i.ai = or i1 %i.ah, %.not.i.i.i.i
  br i1 %i.ai, label %.lr.ph, label %._crit_edge
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5graph5GSTAR12find_lookupsIN2OT6Layout10SmallTypesEEEvRNS_7graph_tER12hb_hashmap_tIjPNS_6LookupELb0EE(ptr noundef nonnull align 1 dereferenceable(14) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !33
  %.not.i.not.i.i = icmp eq i32 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  %.0.i.i.i = select i1 %.not.i.not.i.i, ptr @_hb_NullPool, ptr %i.f, !prof !34
  %i.g = load i32, ptr %.0.i.i.i, align 4, !tbaa !35 ; 2 uses
  %i.h = load i16, ptr %0, align 1, !tbaa !60
  %cond.i.i = icmp eq i16 %i.h, 256
  br i1 %cond.i.i, label %bb.b, label %_ZNK5graph5GSTAR28get_lookup_list_field_offsetEv.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !58
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZNK5graph5GSTAR28get_lookup_list_field_offsetEv.exit.i

_ZNK5graph5GSTAR28get_lookup_list_field_offsetEv.exit.i: ; preds = %bb.b, %bb.a
  %.0.i.i = phi ptr [ %i.i, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !38   ; 2 uses
  %.not.i.i.i.i = icmp ult i32 %i.g, %i.k
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = zext i32 %i.g to i64
  %i.o = getelementptr inbounds nuw [216 x i8], ptr %i.m, i64 %i.n
  %.0.i.i.i.i = select i1 %.not.i.i.i.i, ptr %i.o, ptr @_hb_NullPool, !prof !39 ; 4 uses
  %i.p = load ptr, ptr %.0.i.i.i.i, align 8, !tbaa !64 ; 2 uses
  %i.q = icmp uge ptr %.0.i.i, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  %.not.i.i = icmp ult ptr %.0.i.i, %i.s
  %or.cond.i.i = select i1 %i.q, i1 %.not.i.i, i1 false
  br i1 %or.cond.i.i, label %bb.c, label %_ZN5graph5GSTAR21get_lookup_list_indexERNS_7graph_tE.exit

bb.c:                                             ; preds = %_ZNK5graph5GSTAR28get_lookup_list_field_offsetEv.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 20
  %i.u = load i32, ptr %i.t, align 4, !tbaa !65   ; 2 uses
  %.not2427.not.i.i = icmp eq i32 %i.u, 0
  br i1 %.not2427.not.i.i, label %_ZN5graph5GSTAR21get_lookup_list_indexERNS_7graph_tE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !66
  %wide.trip.count.i.i = zext i32 %i.u to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN5graph5GSTAR21get_lookup_list_indexERNS_7graph_tE.exit, label %bb.e, !llvm.loop !0

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.d ] ; 2 uses
  %i.x = getelementptr inbounds nuw [12 x i8], ptr %i.w, i64 %indvars.iv.i.i ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !69
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.aa
  %.not23.not.i.i = icmp eq ptr %.0.i.i, %i.ab
  br i1 %.not23.not.i.i, label %.thread.i.i, label %bb.d

.thread.i.i:                                      ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !70
  br label %_ZN5graph5GSTAR21get_lookup_list_indexERNS_7graph_tE.exit

_ZN5graph5GSTAR21get_lookup_list_indexERNS_7graph_tE.exit: ; preds = %bb.d, %_ZNK5graph5GSTAR28get_lookup_list_field_offsetEv.exit.i, %bb.c, %.thread.i.i
  %.4.i.i = phi i32 [ -1, %_ZNK5graph5GSTAR28get_lookup_list_field_offsetEv.exit.i ], [ %i.ad, %.thread.i.i ], [ -1, %bb.c ], [ -1, %bb.d ] ; 3 uses
  %.not.i.i20 = icmp ult i32 %.4.i.i, %i.k        ; 2 uses
  %i.ae = zext i32 %.4.i.i to i64                 ; 2 uses
  %i.af = getelementptr inbounds nuw [216 x i8], ptr %i.m, i64 %i.ae ; 2 uses
  %.0.i.i21 = select i1 %.not.i.i20, ptr %i.af, ptr @_hb_NullPool, !prof !39
  %i.ag = load ptr, ptr %.0.i.i21, align 8, !tbaa !64 ; 4 uses
  %.not = icmp eq ptr %i.ag, null
  br i1 %.not, label %_ZNK5graph10LookupListIN2OT6Layout10SmallTypesEE8sanitizeERKNS_7graph_t8vertex_tE.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZN5graph5GSTAR21get_lookup_list_indexERNS_7graph_tE.exit
  br i1 %.not.i.i20, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit, label %bb.g, !prof !39

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit: ; preds = %bb.f, %bb.g
  %.0.i = phi ptr [ @_hb_CrapPool, %bb.g ], [ %i.af, %bb.f ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !57
  %i.aj = load ptr, ptr %.0.i, align 8, !tbaa !56
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al                    ; 2 uses
  %i.an = icmp ult i64 %i.am, 2
  br i1 %i.an, label %_ZNK5graph10LookupListIN2OT6Layout10SmallTypesEE8sanitizeERKNS_7graph_t8vertex_tE.exit.thread, label %_ZNK5graph10LookupListIN2OT6Layout10SmallTypesEE8sanitizeERKNS_7graph_t8vertex_tE.exit

_ZNK5graph10LookupListIN2OT6Layout10SmallTypesEE8sanitizeERKNS_7graph_t8vertex_tE.exit: ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !58
  %i.ao = load i16, ptr %i.ag, align 1, !tbaa !60 ; 2 uses
  %i.ap = tail call noundef i16 @llvm.bswap.i16(i16 %i.ao)
  %i.aq = zext i16 %i.ap to i64
  %i.ar = shl nuw nsw i64 %i.aq, 1
  %.not35 = icmp ult i64 %i.am, %i.ar
  %.not41 = icmp eq i16 %i.ao, 0
  %or.cond = or i1 %.not35, %.not41
  br i1 %or.cond, label %_ZNK5graph10LookupListIN2OT6Layout10SmallTypesEE8sanitizeERKNS_7graph_t8vertex_tE.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK5graph10LookupListIN2OT6Layout10SmallTypesEE8sanitizeERKNS_7graph_t8vertex_tE.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %_ZNK5graph6Lookup8sanitizeERKNS_7graph_t8vertex_tE.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK5graph6Lookup8sanitizeERKNS_7graph_t8vertex_tE.exit.thread ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv ; 3 uses
  %i.au = load i32, ptr %i.j, align 4, !tbaa !38  ; 2 uses
  %.not.i.i.i = icmp ult i32 %.4.i.i, %i.au
  %i.av = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.aw = getelementptr inbounds nuw [216 x i8], ptr %i.av, i64 %i.ae
  %.0.i.i.i23 = select i1 %.not.i.i.i, ptr %i.aw, ptr @_hb_NullPool, !prof !39 ; 4 uses
  %i.ax = load ptr, ptr %.0.i.i.i23, align 8, !tbaa !64 ; 2 uses
  %i.ay = icmp uge ptr %i.at, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i.i.i23, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  %.not.i24 = icmp ult ptr %i.at, %i.ba
  %or.cond.i = select i1 %i.ay, i1 %.not.i24, i1 false
  br i1 %or.cond.i, label %bb.i, label %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit

bb.i:                                             ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i.i.i23, i64 20
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !65 ; 2 uses
  %.not2427.not.i = icmp eq i32 %i.bc, 0
  br i1 %.not2427.not.i, label %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.i.i.i23, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !66
  %wide.trip.count.i = zext i32 %i.bc to i64
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit, label %bb.k, !llvm.loop !0

bb.k:                                             ; preds = %bb.j, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.j ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [12 x i8], ptr %i.be, i64 %indvars.iv.i ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !69
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bi
  %.not23.not.i = icmp eq ptr %i.at, %i.bj
  br i1 %.not23.not.i, label %.thread.i, label %bb.j

.thread.i:                                        ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !70
  br label %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit

_ZNK5graph7graph_t16index_for_offsetEjPKv.exit:   ; preds = %bb.j, %bb.h, %bb.i, %.thread.i
  %.4.i = phi i32 [ -1, %bb.h ], [ %i.bl, %.thread.i ], [ -1, %bb.i ], [ -1, %bb.j ] ; 3 uses
  store i32 %.4.i, ptr %i.a, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %.not.i.i25 = icmp ult i32 %.4.i, %i.au         ; 2 uses
  %i.bm = zext i32 %.4.i to i64
  %i.bn = getelementptr inbounds nuw [216 x i8], ptr %i.av, i64 %i.bm ; 2 uses
  %.0.i.i26 = select i1 %.not.i.i25, ptr %i.bn, ptr @_hb_NullPool, !prof !39
  %i.bo = load ptr, ptr %.0.i.i26, align 8, !tbaa !64 ; 4 uses
  store ptr %i.bo, ptr %i.b, align 8, !tbaa !84
  %.not19 = icmp eq ptr %i.bo, null
  br i1 %.not19, label %_ZNK5graph6Lookup8sanitizeERKNS_7graph_t8vertex_tE.exit.thread, label %bb.l

bb.l:                                             ; preds = %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit
  br i1 %.not.i.i25, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit29, label %bb.m, !prof !39

bb.m:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit29

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit29: ; preds = %bb.l, %bb.m
  %.0.i28 = phi ptr [ @_hb_CrapPool, %bb.m ], [ %i.bn, %bb.l ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.i28, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !57
  %i.br = load ptr, ptr %.0.i28, align 8, !tbaa !56
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt                    ; 2 uses
  %i.bv = icmp ult i64 %i.bu, 6
  br i1 %i.bv, label %_ZNK5graph6Lookup8sanitizeERKNS_7graph_t8vertex_tE.exit.thread, label %_ZNK5graph6Lookup8sanitizeERKNS_7graph_t8vertex_tE.exit

_ZNK5graph6Lookup8sanitizeERKNS_7graph_t8vertex_tE.exit: ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit29
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !58
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bx = load i16, ptr %i.bw, align 1, !tbaa !60
  %i.by = call noundef i16 @llvm.bswap.i16(i16 %i.bx)
  %i.bz = zext i16 %i.by to i64
  %i.ca = shl nuw nsw i64 %i.bz, 1
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bo, i64 2
  %i.cc = load i16, ptr %i.cb, align 1, !tbaa !60
  %i.cd = and i16 %i.cc, 4096
  %.not.i.i30 = icmp eq i16 %i.cd, 0
  %.0.v.i.i = select i1 %.not.i.i30, i64 6, i64 8
  %.0.i.i31 = add nuw nsw i64 %.0.v.i.i, %i.ca
  %.not36 = icmp ult i64 %i.bu, %.0.i.i31
  br i1 %.not36, label %_ZNK5graph6Lookup8sanitizeERKNS_7graph_t8vertex_tE.exit.thread, label %bb.n

bb.n:                                             ; preds = %_ZNK5graph6Lookup8sanitizeERKNS_7graph_t8vertex_tE.exit
  %.val.i = load i32, ptr %i.a, align 4, !tbaa !35
  %i.ce = mul i32 %.val.i, -1640531535
  %i.cf = call noundef zeroext i1 @_ZN12hb_hashmap_tIjPN5graph6LookupELb0EE13set_with_hashIRKjRS2_EEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef %i.ce, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i1 noundef zeroext true) ; 0 uses
  br label %_ZNK5graph6Lookup8sanitizeERKNS_7graph_t8vertex_tE.exit.thread

_ZNK5graph6Lookup8sanitizeERKNS_7graph_t8vertex_tE.exit.thread: ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit29, %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit, %_ZNK5graph6Lookup8sanitizeERKNS_7graph_t8vertex_tE.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cg = load i16, ptr %i.ag, align 1, !tbaa !60
  %i.ch = call noundef i16 @llvm.bswap.i16(i16 %i.cg)
  %i.ci = zext i16 %i.ch to i64
  %i.cj = icmp samesign ult i64 %indvars.iv.next, %i.ci
  br i1 %i.cj, label %bb.h, label %_ZNK5graph10LookupListIN2OT6Layout10SmallTypesEE8sanitizeERKNS_7graph_t8vertex_tE.exit.thread, !llvm.loop !127

_ZNK5graph10LookupListIN2OT6Layout10SmallTypesEE8sanitizeERKNS_7graph_t8vertex_tE.exit.thread: ; preds = %_ZNK5graph6Lookup8sanitizeERKNS_7graph_t8vertex_tE.exit.thread, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit, %_ZN5graph5GSTAR21get_lookup_list_indexERNS_7graph_tE.exit, %_ZNK5graph10LookupListIN2OT6Layout10SmallTypesEE8sanitizeERKNS_7graph_t8vertex_tE.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN12hb_hashmap_tIjPN5graph6LookupELb0EE13set_with_hashIRKjRS2_EEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !27, !range !77, !noundef !62
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.k, !prof !39

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !85   ; 2 uses
  %i.f = lshr i32 %i.e, 1
  %i.g = add i32 %i.f, %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !82
  %.not34 = icmp ult i32 %i.g, %i.i
  br i1 %.not34, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIjPN5graph6LookupELb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef 0)
  br i1 %i.j, label %.critedge, label %bb.k, !prof !39

.critedge:                                        ; preds = %bb.b, %bb.c
  %i.k = and i32 %2, 1073741823                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !86
  %i.n = urem i32 %i.k, %i.m                      ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !28   ; 3 uses
  %i.q = zext nneg i32 %i.n to i64
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4              ; 2 uses
  %i.u = and i32 %i.t, 2
  %.not44 = icmp eq i32 %i.u, 0
  br i1 %.not44, label %.loopexit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge
  %i.v = load i32, ptr %1, align 4, !tbaa !35
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %i.w = phi i32 [ %i.t, %.lr.ph ], [ %i.aj, %bb.f ]
  %i.x = phi ptr [ %i.r, %.lr.ph ], [ %i.ah, %bb.f ]
  %.048 = phi i32 [ 0, %.lr.ph ], [ %i.ac, %bb.f ] ; 2 uses
  %.02946 = phi i32 [ %i.n, %.lr.ph ], [ %i.af, %bb.f ] ; 3 uses
  %.03045 = phi i32 [ -1, %.lr.ph ], [ %spec.select, %bb.f ] ; 3 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !35
  %i.z = icmp eq i32 %i.y, %i.v
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  br i1 %4, label %.loopexit, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.aa = trunc i32 %i.w to i1
  %i.ab = icmp ne i32 %.03045, -1
  %or.cond.not = select i1 %i.aa, i1 true, i1 %i.ab
  %spec.select = select i1 %or.cond.not, i32 %.03045, i32 %.02946 ; 2 uses
  %i.ac = add i32 %.048, 1                        ; 3 uses
  %i.ad = add i32 %i.ac, %.02946
  %i.ae = load i32, ptr %i.h, align 4, !tbaa !82
  %i.af = and i32 %i.ae, %i.ad                    ; 3 uses
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load i32, ptr %i.ai, align 4            ; 2 uses
  %i.ak = and i32 %i.aj, 2
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %.loopexit, label %bb.d, !llvm.loop !128

.loopexit:                                        ; preds = %bb.f, %bb.e
  %.03043 = phi i32 [ %.03045, %bb.e ], [ %spec.select, %bb.f ]
  %.02941 = phi i32 [ %.02946, %bb.e ], [ %i.af, %bb.f ]
  %.02839 = phi i32 [ %.048, %bb.e ], [ %i.ac, %bb.f ]
  %.03043.fr = freeze i32 %.03043                 ; 2 uses
  %i.al = icmp eq i32 %.03043.fr, -1
  %spec.select67 = select i1 %i.al, i32 %.02941, i32 %.03043.fr
  br label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.loopexit, %.critedge
  %.0283961 = phi i32 [ %.02839, %.loopexit ], [ 0, %.critedge ]
  %i.am = phi i32 [ %spec.select67, %.loopexit ], [ %i.n, %.critedge ]
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.an ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = and i32 %i.aq, 2
  %.not36 = icmp eq i32 %i.ar, 0
  br i1 %.not36, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.loopexit.thread
  %i.as = load i32, ptr %i.d, align 8, !tbaa !85
  %i.at = add i32 %i.as, -1
  store i32 %i.at, ptr %i.d, align 8, !tbaa !85
  %i.au = load i32, ptr %i.ap, align 4
  %i.av = and i32 %i.au, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !87
  %i.ay = sub i32 %i.ax, %i.av
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !87
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.loopexit.thread
  %i.az = load i32, ptr %1, align 4, !tbaa !35
  store i32 %i.az, ptr %i.ao, align 8, !tbaa !89
  %i.ba = load ptr, ptr %3, align 8, !tbaa !84
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !90
  %i.bc = shl nuw i32 %i.k, 2
  %i.bd = or disjoint i32 %i.bc, 3
  store i32 %i.bd, ptr %i.ap, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.bf = load <2 x i32>, ptr %i.be, align 4, !tbaa !35
  %i.bg = add <2 x i32> %i.bf, splat (i32 1)      ; 2 uses
  store <2 x i32> %i.bg, ptr %i.be, align 4, !tbaa !35
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !91
  %i.bj = zext i16 %i.bi to i32
  %i.bk = icmp ugt i32 %.0283961, %i.bj
  br i1 %i.bk, label %bb.i, label %bb.k, !prof !34

bb.i:                                             ; preds = %bb.h
  %i.bl = extractelement <2 x i32> %i.bg, i64 1
  %i.bm = shl i32 %i.bl, 3
  %i.bn = load i32, ptr %i.h, align 4, !tbaa !82  ; 2 uses
  %i.bo = icmp ugt i32 %i.bm, %i.bn
  br i1 %i.bo, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bp = add i32 %i.bn, -8
  %i.bq = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIjPN5graph6LookupELb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.bp) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.j, %bb.i, %bb.h, %bb.c, %bb.a
  %.132 = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ false, %bb.e ], [ true, %bb.j ], [ true, %bb.i ], [ true, %bb.h ]
  ret i1 %.132
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN12hb_hashmap_tIjPN5graph6LookupELb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !27, !range !77, !noundef !62
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.k, !prof !39

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i32 %1, 1
  %i.e = add i32 %i.d, %1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !82
  %i.h = icmp ult i32 %i.e, %i.g
  br i1 %i.h, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !87
  %.sroa.speculated35 = tail call i32 @llvm.umax.i32(i32 %i.j, i32 %1)
  %i.k = shl i32 %.sroa.speculated35, 1           ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.k, i32 4)
  %i.l = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.sroa.speculated, i1 true) ; 2 uses
  %narrow.i = sub nuw nsw i32 32, %i.l            ; 4 uses
  %i.m = shl nuw i32 1, %narrow.i                 ; 2 uses
  %i.n = zext i32 %i.m to i64
  %i.o = shl nuw nsw i64 %i.n, 4
  %i.p = tail call noundef ptr @hb_malloc(i64 noundef %i.o) #9 ; 3 uses
  %.not29.not = icmp eq ptr %i.p, null
  br i1 %.not29.not, label %bb.e, label %bb.f, !prof !34

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr %i.a, align 8, !tbaa !27
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %.not.i31 = icmp ugt i32 %i.k, 134217727
  br i1 %.not.i31, label %_ZL9hb_memsetPvij.exit, label %bb.g, !prof !34

bb.g:                                             ; preds = %bb.f
  %i.q = shl i32 16, %narrow.i
  %i.r = zext i32 %i.q to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.p, i8 0, i64 %i.r, i1 false)
  br label %_ZL9hb_memsetPvij.exit

_ZL9hb_memsetPvij.exit:                           ; preds = %bb.f, %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !82   ; 2 uses
  %.not.i32 = icmp eq i32 %i.t, 0
  %i.u = add i32 %i.t, 1
  %spec.select.i = select i1 %.not.i32, i32 0, i32 %i.u ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !28   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.x, align 8, !tbaa !85
  store i32 0, ptr %i.i, align 4, !tbaa !87
  %i.y = add i32 %i.m, -1
  store i32 %i.y, ptr %i.s, align 4, !tbaa !82
  %i.z = icmp eq i32 %i.l, 0
  br i1 %i.z, label %_ZN12hb_hashmap_tIjPN5graph6LookupELb0EE9prime_forEj.exit, label %bb.h, !prof !34

bb.h:                                             ; preds = %_ZL9hb_memsetPvij.exit
  %i.aa = zext nneg i32 %narrow.i to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN12hb_hashmap_tIjPN5graph6LookupELb0EE9prime_forEj.prime_mod, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !35
  br label %_ZN12hb_hashmap_tIjPN5graph6LookupELb0EE9prime_forEj.exit

_ZN12hb_hashmap_tIjPN5graph6LookupELb0EE9prime_forEj.exit: ; preds = %_ZL9hb_memsetPvij.exit, %bb.h
  %.0.i = phi i32 [ %i.ac, %bb.h ], [ 2147483647, %_ZL9hb_memsetPvij.exit ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.0.i, ptr %i.ad, align 8, !tbaa !86
  %.tr = trunc nuw nsw i32 %narrow.i to i16
  %i.ae = shl nuw nsw i16 %.tr, 1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i16 %i.ae, ptr %i.af, align 2, !tbaa !91
  store ptr %i.p, ptr %i.v, align 8, !tbaa !28
  %.not43 = icmp eq i32 %spec.select.i, 0
  br i1 %.not43, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN12hb_hashmap_tIjPN5graph6LookupELb0EE9prime_forEj.exit
  %wide.trip.count = zext i32 %spec.select.i to i64
  br label %.lr.ph

.preheader:                                       ; preds = %bb.j, %_ZN12hb_hashmap_tIjPN5graph6LookupELb0EE9prime_forEj.exit
  tail call void @hb_free(ptr noundef %i.w) #9
  br label %bb.k

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.j ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %indvars.iv ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = load i32, ptr %i.ah, align 4            ; 2 uses
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.ak = lshr i32 %i.ai, 2
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.am = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIjPN5graph6LookupELb0EE13set_with_hashIjS2_EEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.ag, i32 noundef %i.ak, ptr noundef nonnull align 8 dereferenceable(8) %i.al, i1 noundef zeroext true) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %.lr.ph, !llvm.loop !129

bb.k:                                             ; preds = %bb.e, %.preheader, %bb.c, %bb.a
  %.1 = phi i1 [ true, %bb.c ], [ false, %bb.a ], [ true, %.preheader ], [ false, %bb.e ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN12hb_hashmap_tIjPN5graph6LookupELb0EE13set_with_hashIjS2_EEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !27, !range !77, !noundef !62
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.k, !prof !39

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !85   ; 2 uses
  %i.f = lshr i32 %i.e, 1
  %i.g = add i32 %i.f, %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !82
  %.not34 = icmp ult i32 %i.g, %i.i
  br i1 %.not34, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIjPN5graph6LookupELb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef 0)
  br i1 %i.j, label %.critedge, label %bb.k, !prof !39

.critedge:                                        ; preds = %bb.b, %bb.c
  %i.k = and i32 %2, 1073741823                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !86
  %i.n = urem i32 %i.k, %i.m                      ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !28   ; 3 uses
  %i.q = zext nneg i32 %i.n to i64
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4              ; 2 uses
  %i.u = and i32 %i.t, 2
  %.not44 = icmp eq i32 %i.u, 0
  br i1 %.not44, label %.loopexit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge
  %i.v = load i32, ptr %1, align 4, !tbaa !35
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %i.w = phi i32 [ %i.t, %.lr.ph ], [ %i.aj, %bb.f ]
  %i.x = phi ptr [ %i.r, %.lr.ph ], [ %i.ah, %bb.f ]
  %.048 = phi i32 [ 0, %.lr.ph ], [ %i.ac, %bb.f ] ; 2 uses
  %.02946 = phi i32 [ %i.n, %.lr.ph ], [ %i.af, %bb.f ] ; 3 uses
  %.03045 = phi i32 [ -1, %.lr.ph ], [ %spec.select, %bb.f ] ; 3 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !35
  %i.z = icmp eq i32 %i.y, %i.v
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  br i1 %4, label %.loopexit, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.aa = trunc i32 %i.w to i1
  %i.ab = icmp ne i32 %.03045, -1
  %or.cond.not = select i1 %i.aa, i1 true, i1 %i.ab
  %spec.select = select i1 %or.cond.not, i32 %.03045, i32 %.02946 ; 2 uses
  %i.ac = add i32 %.048, 1                        ; 3 uses
  %i.ad = add i32 %i.ac, %.02946
  %i.ae = load i32, ptr %i.h, align 4, !tbaa !82
  %i.af = and i32 %i.ae, %i.ad                    ; 3 uses
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load i32, ptr %i.ai, align 4            ; 2 uses
  %i.ak = and i32 %i.aj, 2
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %.loopexit, label %bb.d, !llvm.loop !130

.loopexit:                                        ; preds = %bb.f, %bb.e
  %.03043 = phi i32 [ %.03045, %bb.e ], [ %spec.select, %bb.f ]
  %.02941 = phi i32 [ %.02946, %bb.e ], [ %i.af, %bb.f ]
  %.02839 = phi i32 [ %.048, %bb.e ], [ %i.ac, %bb.f ]
  %.03043.fr = freeze i32 %.03043                 ; 2 uses
  %i.al = icmp eq i32 %.03043.fr, -1
  %spec.select67 = select i1 %i.al, i32 %.02941, i32 %.03043.fr
  br label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.loopexit, %.critedge
  %.0283961 = phi i32 [ %.02839, %.loopexit ], [ 0, %.critedge ]
  %i.am = phi i32 [ %spec.select67, %.loopexit ], [ %i.n, %.critedge ]
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.an ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = and i32 %i.aq, 2
  %.not36 = icmp eq i32 %i.ar, 0
  br i1 %.not36, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.loopexit.thread
  %i.as = load i32, ptr %i.d, align 8, !tbaa !85
  %i.at = add i32 %i.as, -1
  store i32 %i.at, ptr %i.d, align 8, !tbaa !85
  %i.au = load i32, ptr %i.ap, align 4
  %i.av = and i32 %i.au, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !87
  %i.ay = sub i32 %i.ax, %i.av
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !87
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.loopexit.thread
  %i.az = load i32, ptr %1, align 4, !tbaa !35
  store i32 %i.az, ptr %i.ao, align 8, !tbaa !89
  %i.ba = load ptr, ptr %3, align 8, !tbaa !84
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !90
  %i.bc = shl nuw i32 %i.k, 2
  %i.bd = or disjoint i32 %i.bc, 3
  store i32 %i.bd, ptr %i.ap, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.bf = load <2 x i32>, ptr %i.be, align 4, !tbaa !35
  %i.bg = add <2 x i32> %i.bf, splat (i32 1)      ; 2 uses
  store <2 x i32> %i.bg, ptr %i.be, align 4, !tbaa !35
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !91
  %i.bj = zext i16 %i.bi to i32
  %i.bk = icmp ugt i32 %.0283961, %i.bj
  br i1 %i.bk, label %bb.i, label %bb.k, !prof !34

bb.i:                                             ; preds = %bb.h
  %i.bl = extractelement <2 x i32> %i.bg, i64 1
  %i.bm = shl i32 %i.bl, 3
  %i.bn = load i32, ptr %i.h, align 4, !tbaa !82  ; 2 uses
  %i.bo = icmp ugt i32 %i.bm, %i.bn
  br i1 %i.bo, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bp = add i32 %i.bn, -8
  %i.bq = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIjPN5graph6LookupELb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.bp) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.j, %bb.i, %bb.h, %bb.c, %bb.a
  %.132 = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ false, %bb.e ], [ true, %bb.j ], [ true, %bb.i ], [ true, %bb.h ]
  ret i1 %.132
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

declare ptr @hb_malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIPcLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !75     ; 7 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.n, label %bb.b, !prof !34

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !35
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.d) ; 3 uses
  %.not19 = icmp ugt i32 %.sroa.speculated, %i.a
  %i.e = lshr i32 %i.a, 2
  %.not20 = icmp ult i32 %.sroa.speculated, %i.e
  %or.cond = or i1 %.not19, %.not20
  br i1 %or.cond, label %.thread, label %bb.n

bb.d:                                             ; preds = %bb.b
  %.not = icmp ugt i32 %1, %i.a
  br i1 %.not, label %.preheader, label %bb.n, !prof !34

.preheader:                                       ; preds = %bb.d, %.preheader
  %.043 = phi i32 [ %i.h, %.preheader ], [ %i.a, %bb.d ] ; 2 uses
  %i.f = lshr i32 %.043, 1
  %i.g = add i32 %.043, 8
  %i.h = add i32 %i.g, %i.f                       ; 3 uses
  %i.i = icmp ugt i32 %1, %i.h
  br i1 %i.i, label %.preheader, label %.thread, !llvm.loop !131

.thread:                                          ; preds = %.preheader, %bb.c
  %.138 = phi i32 [ %.sroa.speculated, %bb.c ], [ %i.h, %.preheader ] ; 6 uses
  %i.j = icmp ugt i32 %.138, 536870911
  br i1 %i.j, label %.critedge, label %bb.e, !prof !34

.critedge:                                        ; preds = %.thread
  %i.k = xor i32 %i.a, -1
  br label %.sink.split

bb.e:                                             ; preds = %.thread
  %.not.i.i = icmp eq i32 %.138, 0
  %.not49 = icmp eq i32 %i.a, 0                   ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %.not49, label %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !76
  tail call void @hb_free(ptr noundef %i.m) #9
  br label %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !76   ; 2 uses
  br i1 %.not49, label %bb.i, label %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = shl nuw i32 %.138, 3
  %i.q = zext i32 %i.p to i64
  %i.r = tail call ptr @hb_malloc(i64 noundef %i.q) #9 ; 4 uses
  %.not10.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i, label %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53, label %bb.k, !prof !34

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !74   ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread, label %bb.l, !prof !34

bb.l:                                             ; preds = %bb.k
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !76
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr readonly align 1 %i.w, i64 range(i64 0, 34359738361) %i.v, i1 false), !alias.scope !135
  br label %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread

_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit: ; preds = %bb.h, %bb.i
  %i.x = phi ptr [ null, %bb.i ], [ %i.o, %bb.h ]
  %i.y = shl nuw i32 %.138, 3
  %i.z = zext i32 %i.y to i64
  %i.aa = tail call ptr @hb_realloc(ptr noundef %i.x, i64 noundef %i.z) #9 ; 2 uses
  %.not22 = icmp eq ptr %i.aa, null
  br i1 %.not22, label %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53, label %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread, !prof !92

_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53: ; preds = %bb.j, %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit
  %i.ab = load i32, ptr %0, align 8, !tbaa !75    ; 2 uses
  %.not23 = icmp ugt i32 %.138, %i.ab
  br i1 %.not23, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53
  %i.ac = xor i32 %i.ab, -1
  br label %.sink.split

_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread: ; preds = %bb.l, %bb.k, %bb.g, %bb.f, %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit
  %.1.i.i42 = phi ptr [ %i.aa, %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit ], [ null, %bb.f ], [ null, %bb.g ], [ %i.r, %bb.k ], [ %i.r, %bb.l ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.1.i.i42, ptr %i.ad, align 8, !tbaa !76
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread, %bb.m
  %.sink = phi i32 [ %i.ac, %bb.m ], [ %.138, %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread ], [ %i.k, %.critedge ]
  %.3.ph = phi i1 [ false, %bb.m ], [ true, %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread ], [ false, %.critedge ]
  store i32 %.sink, ptr %0, align 8, !tbaa !75
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.c, %bb.d, %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %bb.d ], [ true, %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53 ], [ %.3.ph, %.sink.split ]
  ret i1 %.3
}

declare ptr @hb_realloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE11resize_fullEibb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread17, label %bb.b, !prof !34

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !81     ; 6 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread17, label %bb.c, !prof !34

bb.c:                                             ; preds = %bb.b
  br i1 %3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !35
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.e) ; 3 uses
  %.not19.i = icmp ugt i32 %.sroa.speculated.i, %i.b
  %i.f = lshr i32 %i.b, 2
  %.not20.i = icmp ult i32 %.sroa.speculated.i, %i.f
  %or.cond.i = or i1 %.not19.i, %.not20.i
  br i1 %or.cond.i, label %.thread.i, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread

bb.e:                                             ; preds = %bb.c
  %.not.i = icmp samesign ugt i32 %1, %i.b
  br i1 %.not.i, label %.preheader.i, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread, !prof !34

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.039.i = phi i32 [ %i.i, %.preheader.i ], [ %i.b, %bb.e ] ; 2 uses
  %i.g = lshr i32 %.039.i, 1
  %i.h = add nuw i32 %.039.i, 8
  %i.i = add nuw i32 %i.h, %i.g                   ; 3 uses
  %i.j = icmp ugt i32 %1, %i.i
  br i1 %i.j, label %.preheader.i, label %.thread.i, !llvm.loop !136

.thread.i:                                        ; preds = %.preheader.i, %bb.d
  %.138.i = phi i32 [ %.sroa.speculated.i, %bb.d ], [ %i.i, %.preheader.i ] ; 5 uses
  %i.k = icmp ugt i32 %.138.i, 19884107
  br i1 %i.k, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread20, label %bb.f, !prof !34

bb.f:                                             ; preds = %.thread.i
  %i.l = tail call noundef ptr @_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE12_malloc_moveEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %.138.i) ; 2 uses
  %.not21.i = icmp ne i32 %.138.i, 0
  %.not22.i = icmp eq ptr %i.l, null
  %spec.select.i = and i1 %.not21.i, %.not22.i
  br i1 %spec.select.i, label %bb.g, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit, !prof !34

bb.g:                                             ; preds = %bb.f
  %i.m = load i32, ptr %0, align 8, !tbaa !81     ; 2 uses
  %.not23.i = icmp ugt i32 %.138.i, %i.m
  br i1 %.not23.i, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread20, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread20: ; preds = %bb.g, %.thread.i
  %.sink.i.ph.in = phi i32 [ %i.b, %.thread.i ], [ %i.m, %bb.g ]
  %.sink.i.ph = xor i32 %.sink.i.ph.in, -1
  store i32 %.sink.i.ph, ptr %0, align 8, !tbaa !81
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread17

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit: ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.n, align 8, !tbaa !78
  store i32 %.138.i, ptr %0, align 8, !tbaa !81
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread: ; preds = %bb.g, %bb.e, %bb.d, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !38   ; 3 uses
  %i.q = icmp ugt i32 %1, %i.p
  br i1 %i.q, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread
  br i1 %2, label %.lr.ph.i, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit

.lr.ph.i:                                         ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i
  %i.s = phi i32 [ %i.p, %.lr.ph.i ], [ %i.al, %bb.i ]
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !78
  %i.u = zext nneg i32 %i.s to i64
  %i.v = getelementptr inbounds nuw [216 x i8], ptr %i.t, i64 %i.u ; 15 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 84
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.v, i8 0, i64 216, i1 false)
  store i32 -1, ptr %i.w, align 4, !tbaa !93
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 100
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 104
  store atomic i32 1, ptr %i.x monotonic, align 8
  store atomic i8 1, ptr %i.y monotonic, align 4
  store atomic ptr null, ptr %i.z monotonic, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 112
  store i8 1, ptr %i.aa, align 8, !tbaa !29
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 114
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 136
  store ptr null, ptr %i.ac, align 8, !tbaa !30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.ab, i8 0, i64 18, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 144
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 148
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 152
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 160
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 164
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 168
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 176
  store atomic i32 1, ptr %i.ad monotonic, align 8
  store atomic i8 1, ptr %i.ae monotonic, align 4
  store atomic ptr null, ptr %i.af monotonic, align 8
  store i8 1, ptr %i.ag, align 8, !tbaa !94
  store i32 0, ptr %i.ah, align 4, !tbaa !95
  store atomic i32 0, ptr %i.ai monotonic, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.aj, i8 0, i64 33, i1 false)
  %i.ak = load i32, ptr %i.o, align 4, !tbaa !38
  %i.al = add i32 %i.ak, 1                        ; 3 uses
  store i32 %i.al, ptr %i.o, align 4, !tbaa !38
  %i.am = icmp ult i32 %i.al, %1
  br i1 %i.am, label %bb.i, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit, !llvm.loop !137

bb.j:                                             ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread
  %i.an = icmp ult i32 %1, %i.p
  %or.cond = and i1 %2, %i.an
  br i1 %or.cond, label %bb.k, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE13shrink_vectorEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1)
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit: ; preds = %bb.i, %bb.j, %bb.k, %bb.h
  store i32 %1, ptr %i.o, align 4, !tbaa !38
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread17

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread17: ; preds = %bb.b, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread20, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread20 ], [ true, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit ], [ false, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE13shrink_vectorEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !38   ; 2 uses
  %i.c = sub i32 %i.b, %1                         ; 2 uses
  %.not5 = icmp eq i32 %i.c, 0
  br i1 %.not5, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !78
  %i.f = zext i32 %i.b to i64
  %i.g = getelementptr inbounds nuw [216 x i8], ptr %i.e, i64 %i.f
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN5graph7graph_t8vertex_tD2Ev.exit
  %.07 = phi ptr [ %i.i, %_ZN5graph7graph_t8vertex_tD2Ev.exit ], [ %i.g, %.lr.ph.preheader ] ; 11 uses
  %.046 = phi i32 [ %i.h, %_ZN5graph7graph_t8vertex_tD2Ev.exit ], [ %i.c, %.lr.ph.preheader ]
  %i.h = add i32 %.046, -1                        ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %.07, i64 -216
  %i.j = getelementptr inbounds i8, ptr %.07, i64 -72
  tail call void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.j) #9
  %i.k = getelementptr inbounds i8, ptr %.07, i64 -120
  store atomic i32 -57005, ptr %i.k monotonic, align 4
  %i.l = getelementptr inbounds i8, ptr %.07, i64 -112 ; 2 uses
  %i.m = load atomic ptr, ptr %i.l acquire, align 8 ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  tail call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(56) %i.m)
  %i.o = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.m) #9 ; 0 uses
  tail call void @hb_free(ptr noundef nonnull %i.m) #9
  store atomic ptr null, ptr %i.l monotonic, align 8
  br label %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i.i

_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i.i: ; preds = %bb.b, %.lr.ph
  %i.p = getelementptr inbounds i8, ptr %.07, i64 -80
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !30   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i, label %bb.c, !prof !34

bb.c:                                             ; preds = %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i.i
  tail call void @hb_free(ptr noundef nonnull %i.q) #9
  br label %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i

_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i:             ; preds = %bb.c, %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i.i
  %i.r = getelementptr inbounds i8, ptr %.07, i64 -184
  %i.s = load i32, ptr %i.r, align 8, !tbaa !96
  %i.t = add i32 %i.s, -1
  %spec.select.i.i.i.i.i = icmp ult i32 %i.t, -2
  br i1 %spec.select.i.i.i.i.i, label %bb.d, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit.i.i

bb.d:                                             ; preds = %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i
  %i.u = getelementptr inbounds i8, ptr %.07, i64 -180
  store i32 0, ptr %i.u, align 4, !tbaa !97
  %i.v = getelementptr inbounds i8, ptr %.07, i64 -176
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !98
  tail call void @hb_free(ptr noundef %i.w) #9
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit.i.i

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit.i.i: ; preds = %bb.d, %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i
  %i.x = getelementptr inbounds i8, ptr %.07, i64 -200
  %i.y = load i32, ptr %i.x, align 8, !tbaa !96
  %i.z = add i32 %i.y, -1
  %spec.select.i.i.i1.i.i = icmp ult i32 %i.z, -2
  br i1 %spec.select.i.i.i1.i.i, label %bb.e, label %_ZN5graph7graph_t8vertex_tD2Ev.exit

bb.e:                                             ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit.i.i
  %i.aa = getelementptr inbounds i8, ptr %.07, i64 -196
  store i32 0, ptr %i.aa, align 4, !tbaa !97
  %i.ab = getelementptr inbounds i8, ptr %.07, i64 -192
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !98
  tail call void @hb_free(ptr noundef %i.ac) #9
  br label %_ZN5graph7graph_t8vertex_tD2Ev.exit

_ZN5graph7graph_t8vertex_tD2Ev.exit:              ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit.i.i, %bb.e
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !138

._crit_edge:                                      ; preds = %_ZN5graph7graph_t8vertex_tD2Ev.exit, %bb.a
  store i32 %1, ptr %i.a, align 4, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE12_malloc_moveEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !81
  %i.b = add i32 %i.a, -1
  %spec.select.i = icmp ult i32 %i.b, -2
  br i1 %spec.select.i, label %.sink.split, label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.c = zext i32 %1 to i64
  %i.d = mul nuw nsw i64 %i.c, 216
  %i.e = tail call ptr @hb_malloc(i64 noundef %i.d) #9 ; 4 uses
  %.not16 = icmp eq ptr %i.e, null
  br i1 %.not16, label %bb.k, label %.preheader, !prof !34

.preheader:                                       ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !38
  %.not19 = icmp eq i32 %i.g, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN5graph7graph_t8vertex_tD2Ev.exit, %.preheader
  %i.i = load i32, ptr %0, align 8, !tbaa !81
  %i.j = add i32 %i.i, -1
  %spec.select.i17 = icmp ult i32 %i.j, -2
  br i1 %spec.select.i17, label %.sink.split, label %bb.k

bb.d:                                             ; preds = %.lr.ph, %_ZN5graph7graph_t8vertex_tD2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN5graph7graph_t8vertex_tD2Ev.exit ] ; 4 uses
  %i.k = getelementptr inbounds nuw [216 x i8], ptr %i.e, i64 %indvars.iv ; 28 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 84
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.k, i8 0, i64 216, i1 false)
  store i32 -1, ptr %i.n, align 4, !tbaa !93
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 100
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  store atomic i32 1, ptr %i.o monotonic, align 8
  store atomic i8 1, ptr %i.p monotonic, align 4
  store atomic ptr null, ptr %i.q monotonic, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  store i8 1, ptr %i.r, align 8, !tbaa !29
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 114 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 136 ; 2 uses
  store ptr null, ptr %i.t, align 8, !tbaa !30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.s, i8 0, i64 18, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 144
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 148
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 152
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 160 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 164
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 168
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 176
  store atomic i32 1, ptr %i.u monotonic, align 8
  store atomic i8 1, ptr %i.v monotonic, align 4
  store atomic ptr null, ptr %i.w monotonic, align 8
  store i8 1, ptr %i.x, align 8, !tbaa !94
  store i32 0, ptr %i.y, align 4, !tbaa !95
  store atomic i32 0, ptr %i.z monotonic, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.aa, i8 0, i64 33, i1 false)
  %i.ab = load ptr, ptr %i.h, align 8, !tbaa !78
  %i.ac = getelementptr inbounds nuw [216 x i8], ptr %i.ab, i64 %indvars.iv ; 17 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.k, ptr noundef nonnull align 8 dereferenceable(216) %i.ac, i64 16, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !35
  store i32 %i.ae, ptr %i.l, align 8, !tbaa !35
  store i32 0, ptr %i.ad, align 8, !tbaa !35
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 20 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 20 ; 2 uses
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !35
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !35
  store i32 %i.ai, ptr %i.af, align 4, !tbaa !35
  store i32 %i.ah, ptr %i.ag, align 4, !tbaa !35
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !140
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !140
  store ptr null, ptr %i.ak, align 8, !tbaa !140
  %i.am = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 32 ; 2 uses
  %i.ao = load i32, ptr %i.am, align 8, !tbaa !35
  %i.ap = load i32, ptr %i.an, align 8, !tbaa !35
  store i32 %i.ap, ptr %i.am, align 8, !tbaa !35
  store i32 %i.ao, ptr %i.an, align 8, !tbaa !35
  %i.aq = getelementptr inbounds nuw i8, ptr %i.k, i64 36 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 36 ; 2 uses
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !35
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !35
  store i32 %i.at, ptr %i.aq, align 4, !tbaa !35
  store i32 %i.as, ptr %i.ar, align 4, !tbaa !35
  %i.au = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ac, i64 40 ; 2 uses
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !140
  %i.ax = load <2 x ptr>, ptr %i.av, align 8, !tbaa !99
  store <2 x ptr> %i.ax, ptr %i.au, align 8, !tbaa !99
  store ptr %i.aw, ptr %i.av, align 8, !tbaa !140
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.m, ptr noundef nonnull align 8 dereferenceable(33) %i.ay, i64 33, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %i.ac, i64 112
  %i.ba = load i8, ptr %i.az, align 8, !range !77
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.e, label %_ZN12hb_hashmap_tIjjLb0EEaSEOS0_.exit.i, !prof !141

bb.e:                                             ; preds = %bb.d
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ac, i64 114 ; 2 uses
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !142
  store i16 %i.bd, ptr %i.s, align 2, !tbaa !142
  store i16 0, ptr %i.bc, align 2, !tbaa !142
  %i.be = getelementptr inbounds nuw i8, ptr %i.k, i64 116 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ac, i64 116 ; 2 uses
  %i.bg = load i32, ptr %i.be, align 4, !tbaa !35
  %i.bh = load i32, ptr %i.bf, align 4, !tbaa !35
  store i32 %i.bh, ptr %i.be, align 4, !tbaa !35
  store i32 %i.bg, ptr %i.bf, align 4, !tbaa !35
  %i.bi = getelementptr inbounds nuw i8, ptr %i.k, i64 120 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ac, i64 120 ; 2 uses
  %i.bk = load i32, ptr %i.bi, align 8, !tbaa !35
  %i.bl = load i32, ptr %i.bj, align 8, !tbaa !35
  store i32 %i.bl, ptr %i.bi, align 8, !tbaa !35
  store i32 %i.bk, ptr %i.bj, align 8, !tbaa !35
  %i.bm = getelementptr inbounds nuw i8, ptr %i.k, i64 124 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ac, i64 124 ; 2 uses
  %i.bo = load i32, ptr %i.bm, align 4, !tbaa !35
  %i.bp = load i32, ptr %i.bn, align 4, !tbaa !35
  store i32 %i.bp, ptr %i.bm, align 4, !tbaa !35
  store i32 %i.bo, ptr %i.bn, align 4, !tbaa !35
  %i.bq = getelementptr inbounds nuw i8, ptr %i.k, i64 128 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.ac, i64 128 ; 2 uses
  %i.bs = load i32, ptr %i.bq, align 8, !tbaa !35
  %i.bt = load i32, ptr %i.br, align 8, !tbaa !35
  store i32 %i.bt, ptr %i.bq, align 8, !tbaa !35
  store i32 %i.bs, ptr %i.br, align 8, !tbaa !35
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ac, i64 136 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !143
  store ptr %i.bv, ptr %i.t, align 8, !tbaa !143
  store ptr null, ptr %i.bu, align 8, !tbaa !143
  br label %_ZN12hb_hashmap_tIjjLb0EEaSEOS0_.exit.i

_ZN12hb_hashmap_tIjjLb0EEaSEOS0_.exit.i:          ; preds = %bb.e, %bb.d
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ac, i64 160 ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 8, !range !77
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.f, label %_ZN5graph7graph_t8vertex_taSEOS1_.exit, !prof !100

bb.f:                                             ; preds = %_ZN12hb_hashmap_tIjjLb0EEaSEOS0_.exit.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.k, i64 208
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ac, i64 208 ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 8, !tbaa !144, !range !77, !noundef !62
  store i8 %i.cb, ptr %i.bz, align 8, !tbaa !144
  store i8 0, ptr %i.ca, align 8, !tbaa !144
  tail call fastcc void @"_ZNK4$_11clI12hb_bit_set_tEEvRT_S3_"(ptr noundef nonnull align 8 dereferenceable(49) %i.x, ptr noundef nonnull align 8 dereferenceable(49) %i.bw)
  br label %_ZN5graph7graph_t8vertex_taSEOS1_.exit

_ZN5graph7graph_t8vertex_taSEOS1_.exit:           ; preds = %_ZN12hb_hashmap_tIjjLb0EEaSEOS0_.exit.i, %bb.f
  %i.cc = load ptr, ptr %i.h, align 8, !tbaa !78
  %i.cd = getelementptr inbounds nuw [216 x i8], ptr %i.cc, i64 %indvars.iv ; 10 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 144
  tail call void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.ce) #9
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 96
  store atomic i32 -57005, ptr %i.cf monotonic, align 4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 104 ; 2 uses
  %i.ch = load atomic ptr, ptr %i.cg acquire, align 8 ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i.i, label %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN5graph7graph_t8vertex_taSEOS1_.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 40
  tail call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, ptr noundef nonnull align 8 dereferenceable(56) %i.ch)
  %i.cj = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.ch) #9 ; 0 uses
  tail call void @hb_free(ptr noundef nonnull %i.ch) #9
  store atomic ptr null, ptr %i.cg monotonic, align 8
  br label %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i.i

_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i.i: ; preds = %bb.g, %_ZN5graph7graph_t8vertex_taSEOS1_.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cd, i64 136
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !30 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i, label %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i, label %bb.h, !prof !34

bb.h:                                             ; preds = %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i.i
  tail call void @hb_free(ptr noundef nonnull %i.cl) #9
  br label %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i

_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i:             ; preds = %bb.h, %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !96
  %i.co = add i32 %i.cn, -1
  %spec.select.i.i.i.i.i = icmp ult i32 %i.co, -2
  br i1 %spec.select.i.i.i.i.i, label %bb.i, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit.i.i

bb.i:                                             ; preds = %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cd, i64 36
  store i32 0, ptr %i.cp, align 4, !tbaa !97
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !98
  tail call void @hb_free(ptr noundef %i.cr) #9
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit.i.i

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit.i.i: ; preds = %bb.i, %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !96
  %i.cu = add i32 %i.ct, -1
  %spec.select.i.i.i1.i.i = icmp ult i32 %i.cu, -2
  br i1 %spec.select.i.i.i1.i.i, label %bb.j, label %_ZN5graph7graph_t8vertex_tD2Ev.exit

bb.j:                                             ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cd, i64 20
  store i32 0, ptr %i.cv, align 4, !tbaa !97
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !98
  tail call void @hb_free(ptr noundef %i.cx) #9
  br label %_ZN5graph7graph_t8vertex_tD2Ev.exit

_ZN5graph7graph_t8vertex_tD2Ev.exit:              ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit.i.i, %bb.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cy = load i32, ptr %i.f, align 4, !tbaa !38
  %i.cz = zext i32 %i.cy to i64
  %i.da = icmp samesign ult i64 %indvars.iv.next, %i.cz
  br i1 %i.da, label %bb.d, label %._crit_edge, !llvm.loop !139

.sink.split:                                      ; preds = %._crit_edge, %bb.b
  %.013.ph = phi ptr [ null, %bb.b ], [ %i.e, %._crit_edge ]
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !78
  tail call void @hb_free(ptr noundef %i.dc) #9
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.c, %._crit_edge, %bb.b
  %.013 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %i.e, %._crit_edge ], [ %.013.ph, %.sink.split ]
  ret ptr %.013
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @"_ZNK4$_11clI12hb_bit_set_tEEvRT_S3_"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %1) unnamed_addr #7 align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !94, !range !77, !noundef !62
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr %1, align 8, !range !77
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = select i1 %i.b, i1 %i.d, i1 false, !prof !100
  br i1 %i.e, label %bb.b, label %_Z4swapR12hb_bit_set_tS0_.exit, !prof !100

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.h = load i32, ptr %i.f, align 4, !tbaa !35
  %i.i = load i32, ptr %i.g, align 4, !tbaa !35
  store i32 %i.i, ptr %i.f, align 4, !tbaa !35
  store i32 %i.h, ptr %i.g, align 4, !tbaa !35
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.j, align 8, !tbaa !35
  %i.l = load i32, ptr %i.k, align 8, !tbaa !35
  store i32 %i.l, ptr %i.j, align 8, !tbaa !35
  store i32 %.sroa.0.0.copyload.i.i.i, ptr %i.k, align 8, !tbaa !35
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.o = load i32, ptr %i.m, align 8, !tbaa !35
  %i.p = load i32, ptr %i.n, align 8, !tbaa !35
  store i32 %i.p, ptr %i.m, align 8, !tbaa !35
  store i32 %i.o, ptr %i.n, align 8, !tbaa !35
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.s = load i32, ptr %i.q, align 4, !tbaa !35
  %i.t = load i32, ptr %i.r, align 4, !tbaa !35
  store i32 %i.t, ptr %i.q, align 4, !tbaa !35
  store i32 %i.s, ptr %i.r, align 4, !tbaa !35
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !145
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !145
  store ptr %i.x, ptr %i.u, align 8, !tbaa !145
  store ptr %i.w, ptr %i.v, align 8, !tbaa !145
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.aa = load i32, ptr %i.y, align 8, !tbaa !35
  %i.ab = load i32, ptr %i.z, align 8, !tbaa !35
  store i32 %i.ab, ptr %i.y, align 8, !tbaa !35
  store i32 %i.aa, ptr %i.z, align 8, !tbaa !35
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !35
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !35
  store i32 %i.af, ptr %i.ac, align 4, !tbaa !35
  store i32 %i.ae, ptr %i.ad, align 4, !tbaa !35
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !146
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !146
  store ptr %i.aj, ptr %i.ag, align 8, !tbaa !146
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !146
  br label %_Z4swapR12hb_bit_set_tS0_.exit

_Z4swapR12hb_bit_set_tS0_.exit:                   ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store atomic i32 -57005, ptr %0 monotonic, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load atomic ptr, ptr %i.a acquire, align 8 ; 5 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZL14hb_object_finiI14hb_sparseset_tI23hb_bit_set_invertible_tEEvPT_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  tail call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.b)
  %i.d = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.b) #9 ; 0 uses
  tail call void @hb_free(ptr noundef nonnull %i.b) #9
  store atomic ptr null, ptr %i.a monotonic, align 8
  br label %_ZL14hb_object_finiI14hb_sparseset_tI23hb_bit_set_invertible_tEEvPT_.exit.i

_ZL14hb_object_finiI14hb_sparseset_tI23hb_bit_set_invertible_tEEvPT_.exit.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !147
  %i.g = add i32 %i.f, -1
  %spec.select.i.i.i.i.i = icmp ult i32 %i.g, -2
  br i1 %spec.select.i.i.i.i.i, label %bb.c, label %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE4finiEv.exit.i.i.i

bb.c:                                             ; preds = %_ZL14hb_object_finiI14hb_sparseset_tI23hb_bit_set_invertible_tEEvPT_.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.h, align 4, !tbaa !148
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !149
  tail call void @hb_free(ptr noundef %i.j) #9
  br label %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE4finiEv.exit.i.i.i

_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE4finiEv.exit.i.i.i: ; preds = %bb.c, %_ZL14hb_object_finiI14hb_sparseset_tI23hb_bit_set_invertible_tEEvPT_.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !150
  %i.m = add i32 %i.l, -1
  %spec.select.i.i1.i.i.i = icmp ult i32 %i.m, -2
  br i1 %spec.select.i.i1.i.i.i, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE4finiEv.exit, label %_ZN23hb_bit_set_invertible_tD2Ev.exit

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE4finiEv.exit: ; preds = %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE4finiEv.exit.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 0, ptr %i.n, align 4, !tbaa !151
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !152
  tail call void @hb_free(ptr noundef %i.p) #9
  %.pre = load i32, ptr %i.e, align 8, !tbaa !147
  %i.q = add i32 %.pre, -1
  %i.r = icmp ult i32 %i.q, -2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  br i1 %i.r, label %bb.d, label %_ZN23hb_bit_set_invertible_tD2Ev.exit

bb.d:                                             ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE4finiEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.s, align 4, !tbaa !148
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !149
  tail call void @hb_free(ptr noundef %i.u) #9
  br label %_ZN23hb_bit_set_invertible_tD2Ev.exit

_ZN23hb_bit_set_invertible_tD2Ev.exit:            ; preds = %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE4finiEv.exit.i.i.i, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE4finiEv.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !160
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 8, !tbaa !161
  %i.d = add i32 %i.c, -1
  %spec.select.i.i = icmp ult i32 %i.d, -2
  br i1 %spec.select.i.i, label %bb.c, label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4finiEv.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !162
  tail call void @hb_free(ptr noundef %i.f) #9
  br label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4finiEv.exit

_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4finiEv.exit: ; preds = %bb.b, %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.g = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %1) #9 ; 0 uses
  %i.h = load i32, ptr %i.a, align 4, !tbaa !160  ; 2 uses
  %.not59 = icmp eq i32 %i.h, 0
  br i1 %.not59, label %._crit_edge, label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4tailEv.exit.lr.ph

_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4tailEv.exit.lr.ph: ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv.exit

_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv.exit: ; preds = %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4tailEv.exit.lr.ph, %_ZN20hb_user_data_array_t19hb_user_data_item_t4finiEv.exit
  %i.j = phi i32 [ %i.h, %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4tailEv.exit.lr.ph ], [ %i.q, %_ZN20hb_user_data_array_t19hb_user_data_item_t4finiEv.exit ]
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !162
  %i.m = zext i32 %i.k to i64
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.m ; 2 uses
  %.sroa.3.0..0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..0.i.i.sroa_idx, align 8, !tbaa !99
  %.sroa.4.0..0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..0.i.i.sroa_idx, align 8, !tbaa !99 ; 2 uses
  store i32 %i.k, ptr %i.a, align 4, !tbaa !163, !noalias !164
  %i.o = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %1) #9 ; 0 uses
  %.not.i6 = icmp eq ptr %.sroa.4.0.copyload, null
  br i1 %.not.i6, label %_ZN20hb_user_data_array_t19hb_user_data_item_t4finiEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv.exit
  tail call void %.sroa.4.0.copyload(ptr noundef %.sroa.3.0.copyload) #9, !inline_history !155
  br label %_ZN20hb_user_data_array_t19hb_user_data_item_t4finiEv.exit

_ZN20hb_user_data_array_t19hb_user_data_item_t4finiEv.exit: ; preds = %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv.exit, %bb.e
  %i.p = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %1) #9 ; 0 uses
  %i.q = load i32, ptr %i.a, align 4, !tbaa !160  ; 2 uses
  %.not5 = icmp eq i32 %i.q, 0
  br i1 %.not5, label %._crit_edge, label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv.exit, !llvm.loop !156

._crit_edge:                                      ; preds = %_ZN20hb_user_data_array_t19hb_user_data_item_t4finiEv.exit, %bb.d
  %i.r = load i32, ptr %0, align 8, !tbaa !161
  %i.s = add i32 %i.r, -1
  %spec.select.i.i7 = icmp ult i32 %i.s, -2
  br i1 %spec.select.i.i7, label %bb.f, label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4finiEv.exit8

bb.f:                                             ; preds = %._crit_edge
  store i32 0, ptr %i.a, align 4, !tbaa !163
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !162
  tail call void @hb_free(ptr noundef %i.u) #9
  br label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4finiEv.exit8

_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4finiEv.exit8: ; preds = %._crit_edge, %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.v = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %1) #9 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4finiEv.exit8, %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4finiEv.exit
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !79     ; 7 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.n, label %bb.b, !prof !34

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !35
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.d) ; 3 uses
  %.not19 = icmp ugt i32 %.sroa.speculated, %i.a
  %i.e = lshr i32 %i.a, 2
  %.not20 = icmp ult i32 %.sroa.speculated, %i.e
  %or.cond = or i1 %.not19, %.not20
  br i1 %or.cond, label %.thread, label %bb.n

bb.d:                                             ; preds = %bb.b
  %.not = icmp ugt i32 %1, %i.a
  br i1 %.not, label %.preheader, label %bb.n, !prof !34

.preheader:                                       ; preds = %bb.d, %.preheader
  %.043 = phi i32 [ %i.h, %.preheader ], [ %i.a, %bb.d ] ; 2 uses
  %i.f = lshr i32 %.043, 1
  %i.g = add i32 %.043, 8
  %i.h = add i32 %i.g, %i.f                       ; 3 uses
  %i.i = icmp ugt i32 %1, %i.h
  br i1 %i.i, label %.preheader, label %.thread, !llvm.loop !165

.thread:                                          ; preds = %.preheader, %bb.c
  %.138 = phi i32 [ %.sroa.speculated, %bb.c ], [ %i.h, %.preheader ] ; 6 uses
  %i.j = icmp ugt i32 %.138, 1073741823
  br i1 %i.j, label %.critedge, label %bb.e, !prof !34

.critedge:                                        ; preds = %.thread
  %i.k = xor i32 %i.a, -1
  br label %.sink.split

bb.e:                                             ; preds = %.thread
  %.not.i.i = icmp eq i32 %.138, 0
  %.not49 = icmp eq i32 %i.a, 0                   ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %.not49, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !80
  tail call void @hb_free(ptr noundef %i.m) #9
  br label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !80   ; 2 uses
  br i1 %.not49, label %bb.i, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = shl nuw i32 %.138, 2
  %i.q = zext i32 %i.p to i64
  %i.r = tail call ptr @hb_malloc(i64 noundef %i.q) #9 ; 4 uses
  %.not10.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53, label %bb.k, !prof !34

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !33   ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread, label %bb.l, !prof !34

bb.l:                                             ; preds = %bb.k
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 2
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !80
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr readonly align 1 %i.w, i64 range(i64 0, 34359738361) %i.v, i1 false), !alias.scope !169
  br label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit: ; preds = %bb.h, %bb.i
  %i.x = phi ptr [ null, %bb.i ], [ %i.o, %bb.h ]
  %i.y = shl nuw i32 %.138, 2
  %i.z = zext i32 %i.y to i64
  %i.aa = tail call ptr @hb_realloc(ptr noundef %i.x, i64 noundef %i.z) #9 ; 2 uses
  %.not22 = icmp eq ptr %i.aa, null
  br i1 %.not22, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread, !prof !92

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53: ; preds = %bb.j, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit
  %i.ab = load i32, ptr %0, align 8, !tbaa !79    ; 2 uses
  %.not23 = icmp ugt i32 %.138, %i.ab
  br i1 %.not23, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53
  %i.ac = xor i32 %i.ab, -1
  br label %.sink.split

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread: ; preds = %bb.l, %bb.k, %bb.g, %bb.f, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit
  %.1.i.i42 = phi ptr [ %i.aa, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit ], [ null, %bb.f ], [ null, %bb.g ], [ %i.r, %bb.k ], [ %i.r, %bb.l ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.1.i.i42, ptr %i.ad, align 8, !tbaa !80
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread, %bb.m
  %.sink = phi i32 [ %i.ac, %bb.m ], [ %.138, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread ], [ %i.k, %.critedge ]
  %.3.ph = phi i1 [ false, %bb.m ], [ true, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread ], [ false, %.critedge ]
  store i32 %.sink, ptr %0, align 8, !tbaa !79
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.c, %bb.d, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %bb.d ], [ true, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53 ], [ %.3.ph, %.sink.split ]
  ret i1 %.3
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !67}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTSN5graph7graph_tE", !9, i64 0}
!11 = !{!"_ZTS11hb_atomic_tIiE", !6, i64 0}
!12 = !{!"_ZTS20hb_reference_count_t", !11, i64 0}
!13 = !{!"bool", !5, i64 0}
!14 = !{!"_ZTS11hb_atomic_tIbE", !13, i64 0}
!15 = !{!"p1 _ZTS20hb_user_data_array_t", !9, i64 0}
!16 = !{!"_ZTS11hb_atomic_tIP20hb_user_data_array_tE", !15, i64 0}
!17 = !{!"_ZTS18hb_object_header_t", !12, i64 0, !14, i64 4, !16, i64 8}
!18 = !{!"short", !5, i64 0}
!19 = !{!"p1 _ZTSN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tE", !9, i64 0}
!20 = !{!"_ZTS12hb_hashmap_tIjPN5graph6LookupELb0EE", !17, i64 0, !13, i64 16, !18, i64 18, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !19, i64 40}
!21 = !{!"p1 _ZTSN12hb_hashmap_tIjjLb0EE6item_tE", !9, i64 0}
!22 = !{!"_ZTS12hb_hashmap_tIjjLb0EE", !17, i64 0, !13, i64 16, !18, i64 18, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !21, i64 40}
!23 = !{!"p1 _ZTSN12hb_hashmap_tIj11hb_vector_tIjLb0EELb0EE6item_tE", !9, i64 0}
!24 = !{!"_ZTS12hb_hashmap_tIj11hb_vector_tIjLb0EELb0EE", !17, i64 0, !13, i64 16, !18, i64 18, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !23, i64 40}
!25 = !{!"_ZTSN5graph24gsubgpos_graph_context_tE", !6, i64 0, !10, i64 8, !6, i64 16, !20, i64 24, !22, i64 72, !24, i64 120}
!26 = !{!25, !6, i64 0}
!27 = !{!20, !13, i64 16}
!28 = !{!20, !19, i64 40}
!29 = !{!22, !13, i64 16}
!30 = !{!22, !21, i64 40}
!31 = !{!"p1 int", !9, i64 0}
!32 = !{!"_ZTS11hb_vector_tIjLb0EE", !6, i64 0, !6, i64 4, !31, i64 8}
!33 = !{!32, !6, i64 4}
!34 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!35 = !{!6, !6, i64 0}
!36 = !{!"p1 _ZTSN5graph7graph_t8vertex_tE", !9, i64 0}
!37 = !{!"_ZTS11hb_vector_tIN5graph7graph_t8vertex_tELb0EE", !6, i64 0, !6, i64 4, !36, i64 8}
!38 = !{!37, !6, i64 4}
!39 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!40 = !{!"p1 omnipotent char", !9, i64 0}
!41 = !{!"p1 _ZTSN22hb_serialize_context_t8object_t6link_tE", !9, i64 0}
!42 = !{!"_ZTS11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE", !6, i64 0, !6, i64 4, !41, i64 8}
!43 = !{!"p1 _ZTSN22hb_serialize_context_t8object_tE", !9, i64 0}
!44 = !{!"_ZTSN22hb_serialize_context_t8object_tE", !40, i64 0, !40, i64 8, !42, i64 16, !42, i64 32, !43, i64 48}
!45 = !{!"long", !5, i64 0}
!46 = !{!"_ZTS11hb_atomic_tIjE", !6, i64 0}
!47 = !{!"p1 _ZTSN12hb_bit_set_t10page_map_tE", !9, i64 0}
!48 = !{!"_ZTS11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE", !6, i64 0, !6, i64 4, !47, i64 8}
!49 = !{!"p1 _ZTS13hb_bit_page_t", !9, i64 0}
!50 = !{!"_ZTS11hb_vector_tI13hb_bit_page_tLb0EE", !6, i64 0, !6, i64 4, !49, i64 8}
!51 = !{!"_ZTS12hb_bit_set_t", !13, i64 0, !6, i64 4, !46, i64 8, !48, i64 16, !50, i64 32}
!52 = !{!"_ZTS23hb_bit_set_invertible_t", !51, i64 0, !13, i64 48}
!53 = !{!"_ZTS14hb_sparseset_tI23hb_bit_set_invertible_tE", !17, i64 0, !52, i64 16}
!54 = !{!"_ZTS8hb_set_t", !53, i64 0}
!55 = !{!"_ZTSN5graph7graph_t8vertex_tE", !44, i64 0, !45, i64 56, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !13, i64 88, !22, i64 96, !54, i64 144}
!56 = !{!55, !40, i64 0}
!57 = !{!55, !40, i64 8}
!58 = !{i64 4062605}
!59 = !{!"_ZTS11hb_packed_tItE", !18, i64 0}
!60 = !{!59, !18, i64 0}
!61 = !{!25, !10, i64 8}
!62 = !{}
!63 = !{i64 8}
!64 = !{!44, !40, i64 0}
!65 = !{!44, !6, i64 20}
!66 = !{!44, !41, i64 24}
!67 = !{!"llvm.loop.mustprogress"}
!68 = !{!"_ZTSN22hb_serialize_context_t8object_t6link_tE", !6, i64 0, !6, i64 0, !6, i64 0, !6, i64 0, !6, i64 4, !6, i64 8}
!69 = !{!68, !6, i64 4}
!70 = !{!68, !6, i64 8}
!71 = !{!"any p2 pointer", !9, i64 0}
!72 = !{!"p2 omnipotent char", !71, i64 0}
!73 = !{!"_ZTS11hb_vector_tIPcLb0EE", !6, i64 0, !6, i64 4, !72, i64 8}
!74 = !{!73, !6, i64 4}
!75 = !{!73, !6, i64 0}
!76 = !{!73, !72, i64 8}
!77 = !{i8 0, i8 2}
!78 = !{!37, !36, i64 8}
!79 = !{!32, !6, i64 0}
!80 = !{!32, !31, i64 8}
!81 = !{!37, !6, i64 0}
!82 = !{!20, !6, i64 28}
!83 = !{!"p1 _ZTSN5graph6LookupE", !9, i64 0}
!84 = !{!83, !83, i64 0}
!85 = !{!20, !6, i64 24}
!86 = !{!20, !6, i64 32}
!87 = !{!20, !6, i64 20}
!88 = !{!"_ZTSN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tE", !6, i64 0, !6, i64 4, !6, i64 4, !6, i64 4, !83, i64 8}
!89 = !{!88, !6, i64 0}
!90 = !{!88, !83, i64 8}
!91 = !{!20, !18, i64 18}
!92 = !{!"branch_weights", !"expected", i32 1914245, i32 2145569403}
!93 = !{!55, !6, i64 84}
!94 = !{!51, !13, i64 0}
!95 = !{!51, !6, i64 4}
!96 = !{!42, !6, i64 0}
!97 = !{!42, !6, i64 4}
!98 = !{!42, !41, i64 8}
!99 = !{!9, !9, i64 0}
!100 = !{!"branch_weights", i32 1, i32 4001}
!101 = !{!10, !10, i64 0}
!102 = !{!25, !6, i64 16}
!103 = !{!24, !13, i64 16}
!104 = !{!24, !23, i64 40}
!105 = !{!40, !40, i64 0}
!106 = !{!"_ZTSN5graph7graph_tE", !37, i64 0, !32, i64 16, !32, i64 32, !13, i64 48, !13, i64 49, !13, i64 50, !13, i64 51, !32, i64 56, !73, i64 72}
!107 = !{!106, !6, i64 4}
!108 = !{!106, !13, i64 51}
!109 = !{!106, !13, i64 50}
!110 = !{!106, !13, i64 49}
!111 = !{!55, !45, i64 56}
!112 = !{!55, !6, i64 64}
!113 = distinct !{!113, i1 true, !"_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE6valuesEv"}
!114 = distinct !{!114, !113, !"_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE6valuesEv: argument 0"}
!115 = distinct !{!115, i1 true, !"_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE10values_refEv"}
!116 = distinct !{!116, !115, !"_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE10values_refEv: argument 0"}
!117 = distinct !{!117, i1 true, !"_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE10iter_itemsEv"}
!118 = distinct !{!118, !117, !"_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE10iter_itemsEv: argument 0"}
!119 = distinct !{!119, i1 true, !"_ZorI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEE24hb_filter_iter_factory_tIMS6_KFbvERK3$_8ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSG_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISG_Efp_EEEOSG_OSM_"}
!120 = distinct !{!120, !119, !"_ZorI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEE24hb_filter_iter_factory_tIMS6_KFbvERK3$_8ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSG_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISG_Efp_EEEOSG_OSM_: argument 0"}
!121 = distinct !{!121, i1 true, !"_ZN24hb_filter_iter_factory_tIMN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEKFbvERK3$_8EclI10hb_array_tIS5_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSG_6item_tEEE5valueEvE4typeELPv0EEE16hb_filter_iter_tISG_S7_SA_LDnEESG_"}
!122 = distinct !{!122, !121, !"_ZN24hb_filter_iter_factory_tIMN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEKFbvERK3$_8EclI10hb_array_tIS5_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSG_6item_tEEE5valueEvE4typeELPv0EEE16hb_filter_iter_tISG_S7_SA_LDnEESG_: argument 0"}
!123 = distinct !{!123, !67}
!124 = distinct !{!124, !67}
!125 = !{!122, !120, !118, !116, !114}
!126 = !{!"branch_weights", i32 1, i32 127}
!127 = distinct !{!127, !67}
!128 = distinct !{!128, !67}
!129 = distinct !{!129, !67}
!130 = distinct !{!130, !67}
!131 = distinct !{!131, !67}
!132 = distinct !{!132, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!133 = distinct !{!133, !132, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!134 = distinct !{!134, !132, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!135 = !{!134, !133}
!136 = distinct !{!136, !67}
!137 = distinct !{!137, !67}
!138 = distinct !{!138, !67}
!139 = distinct !{!139, !67}
!140 = !{!41, !41, i64 0}
!141 = !{!"branch_weights", i32 4000000, i32 4001}
!142 = !{!18, !18, i64 0}
!143 = !{!21, !21, i64 0}
!144 = !{!13, !13, i64 0}
!145 = !{!47, !47, i64 0}
!146 = !{!49, !49, i64 0}
!147 = !{!48, !6, i64 0}
!148 = !{!48, !6, i64 4}
!149 = !{!48, !47, i64 8}
!150 = !{!50, !6, i64 0}
!151 = !{!50, !6, i64 4}
!152 = !{!50, !49, i64 8}
!153 = distinct !{!153, i1 true, !"_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv"}
!154 = distinct !{!154, !153, !"_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv: argument 0"}
!155 = distinct !{null}
!156 = distinct !{!156, !67}
!157 = !{!"p1 _ZTSN20hb_user_data_array_t19hb_user_data_item_tE", !9, i64 0}
!158 = !{!"_ZTS11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE", !6, i64 0, !6, i64 4, !157, i64 8}
!159 = !{!"_ZTS17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE", !158, i64 0}
!160 = !{!159, !6, i64 4}
!161 = !{!158, !6, i64 0}
!162 = !{!158, !157, i64 8}
!163 = !{!158, !6, i64 4}
!164 = !{!154}
!165 = distinct !{!165, !67}
!166 = distinct !{!166, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!167 = distinct !{!167, !166, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!168 = distinct !{!168, !166, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!169 = !{!168, !167}
end_hunk_0
