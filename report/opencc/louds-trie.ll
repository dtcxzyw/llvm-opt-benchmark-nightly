Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencc/original/louds-trie?download=true
inline.NumInlined: 1936
inline.NumDeleted: 713
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZNK6marisa8grimoire4trie9LoudsTrie14reverse_lookupERNS_5AgentE:bb.a
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %.sink65, ptr %i.hh, align 8, !tbaa !65
  %i.hi = trunc i64 %i.hg to i32
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 %i.hi, ptr %i.hj, align 8, !tbaa !66
  %i.hk = load i64, ptr %i.a, align 8, !tbaa !253
  %i.hl = trunc i64 %i.hk to i32
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i32 %i.hl, ptr %i.hm, align 4, !tbaa !55
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZNSt12out_of_rangeC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt12out_of_rangeD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #4

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #7

declare noundef i64 @_ZNK6marisa8grimoire6vector9BitVector7select1Em(ptr noundef nonnull align 8 dereferenceable(208), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6marisa8grimoire4trie9LoudsTrie20common_prefix_searchERNS_5AgentE(ptr noundef nonnull align 8 dereferenceable(1136) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !115  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 60 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !129
  switch i32 %i.d, label %bb.b [
    i32 3, label %bb.k
    i32 1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i32 0, ptr %i.e, align 8, !tbaa !127
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  store i32 0, ptr %i.f, align 4, !tbaa !128
  store i32 1, ptr %i.c, align 4, !tbaa !129
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !89
  %i.i = load i64, ptr %i.h, align 8, !tbaa !54
  %i.j = and i64 %i.i, 1
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.l = load ptr, ptr %1, align 8, !tbaa !132
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.l, ptr %i.m, align 8, !tbaa !65
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 0, ptr %i.n, align 8, !tbaa !66
  %i.o = tail call noundef i64 @_ZNK6marisa8grimoire6vector9BitVector5rank1Em(ptr noundef nonnull align 8 dereferenceable(208) %i.k, i64 noundef 0)
  %i.p = trunc i64 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i32 %i.p, ptr %i.q, align 4, !tbaa !55
  br label %bb.k

bb.d:                                             ; preds = %bb.a, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 52 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 224
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %i.v = load i32, ptr %i.r, align 4, !tbaa !128
  %i.w = zext i32 %i.v to i64
  %i.x = load i64, ptr %i.s, align 8, !tbaa !131
  %i.y = icmp ugt i64 %i.x, %i.w
  br i1 %i.y, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.z = tail call noundef zeroext i1 @_ZNK6marisa8grimoire4trie9LoudsTrie10find_childERNS_5AgentE(ptr noundef nonnull align 8 dereferenceable(1136) %0, ptr noundef nonnull align 8 dereferenceable(48) %1)
  br i1 %i.z, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 3, ptr %i.c, align 4, !tbaa !129
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.aa = load i32, ptr %i.t, align 8, !tbaa !127
  %i.ab = zext i32 %i.aa to i64                   ; 3 uses
  %i.ac = lshr i64 %i.ab, 6
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !89
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ac
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !54
  %i.ag = and i64 %i.ab, 63
  %i.ah = shl nuw i64 1, %i.ag
  %i.ai = and i64 %i.ah, %i.af
  %.not23 = icmp eq i64 %i.ai, 0
  br i1 %.not23, label %bb.e, label %bb.i, !llvm.loop !259

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ak = load ptr, ptr %1, align 8, !tbaa !132
  %i.al = load i32, ptr %i.r, align 4, !tbaa !128
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.ak, ptr %i.am, align 8, !tbaa !65
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 %i.al, ptr %i.an, align 8, !tbaa !66
  %i.ao = tail call noundef i64 @_ZNK6marisa8grimoire6vector9BitVector5rank1Em(ptr noundef nonnull align 8 dereferenceable(208) %i.aj, i64 noundef %i.ab)
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !55
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  store i32 3, ptr %i.c, align 4, !tbaa !129
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.j, %bb.i, %bb.g, %bb.c
  %.0 = phi i1 [ false, %bb.j ], [ true, %bb.c ], [ true, %bb.i ], [ false, %bb.g ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6marisa8grimoire4trie9LoudsTrie17predictive_searchERNS_5AgentE(ptr noundef nonnull align 8 dereferenceable(1136) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !115  ; 22 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 60 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !129
  switch i32 %i.d, label %bb.b [
    i32 4, label %.thread
    i32 2, label %.critedge
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6marisa8grimoire4trie5State22predictive_search_initEv(ptr noundef nonnull align 8 dereferenceable(64) %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !128
  %i.h = zext i32 %i.g to i64
  %i.i = load i64, ptr %i.f, align 8, !tbaa !131
  %i.j = icmp ugt i64 %i.i, %i.h
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = tail call noundef zeroext i1 @_ZNK6marisa8grimoire4trie9LoudsTrie21predictive_find_childERNS_5AgentE(ptr noundef nonnull align 8 dereferenceable(1136) %0, ptr noundef nonnull align 8 dereferenceable(48) %1)
  br i1 %i.k, label %bb.c, label %bb.e, !llvm.loop !260

bb.e:                                             ; preds = %bb.d
  store i32 4, ptr %i.c, align 4, !tbaa !129
  br label %.thread

bb.f:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !127  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !139
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !138
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = trunc i64 %i.s to i32                    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !140  ; 10 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !141
  %.not.i = icmp eq ptr %i.w, %i.y
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %i.m, ptr %i.w, align 4, !tbaa !73
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store i32 0, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !73
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i32 %i.t, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !73
  %.sroa.10104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 -1, ptr %.sroa.10104.0..sroa_idx, align 4, !tbaa !73
  %.sroa.11107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i32 -1, ptr %.sroa.11107.0..sroa_idx, align 4, !tbaa !73
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 20
  store ptr %i.z, ptr %i.v, align 8, !tbaa !140
  br label %_ZNSt6vectorIN6marisa8grimoire4trie7HistoryESaIS3_EE9push_backERKS3_.exit

bb.h:                                             ; preds = %bb.f
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !142 ; 5 uses
  %i.ab = ptrtoint ptr %i.w to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 4 uses
  %i.ae = icmp eq i64 %i.ad, 9223372036854775800
  br i1 %i.ae, label %bb.i, label %_ZNKSt6vectorIN6marisa8grimoire4trie7HistoryESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #23
  unreachable

_ZNKSt6vectorIN6marisa8grimoire4trie7HistoryESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.af = sdiv exact i64 %i.ad, 20                ; 2 uses
  %mul2.i.i = shl nsw i64 %i.af, 1
  %2 = tail call i64 @llvm.umax.i64(i64 %mul2.i.i, i64 1) ; 2 uses
  %i.ag = icmp ult i64 %2, %i.af
  %i.ah = tail call i64 @llvm.umin.i64(i64 %2, i64 461168601842738790)
  %i.ai = select i1 %i.ag, i64 461168601842738790, i64 %i.ah ; 2 uses
  %i.aj = mul nuw nsw i64 %i.ai, 20
  %i.ak = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #22 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ad ; 5 uses
  store i32 %i.m, ptr %i.al, align 4, !tbaa !73
  %.sroa.7.0..sroa_idx100 = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  store i32 0, ptr %.sroa.7.0..sroa_idx100, align 4, !tbaa !73
  %.sroa.8.0..sroa_idx102 = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i32 %i.t, ptr %.sroa.8.0..sroa_idx102, align 4, !tbaa !73
  %.sroa.10104.0..sroa_idx105 = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  store i32 -1, ptr %.sroa.10104.0..sroa_idx105, align 4, !tbaa !73
  %.sroa.11107.0..sroa_idx108 = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i32 -1, ptr %.sroa.11107.0..sroa_idx108, align 4, !tbaa !73
  %.not10.i.i.i.i.i = icmp eq ptr %i.aa, %i.w
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6marisa8grimoire4trie7HistoryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN6marisa8grimoire4trie7HistoryESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i ], [ %i.ak, %_ZNKSt6vectorIN6marisa8grimoire4trie7HistoryESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i ], [ %i.aa, %_ZNKSt6vectorIN6marisa8grimoire4trie7HistoryESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(20) %.0911.i.i.i.i.i, i64 20, i1 false), !tbaa.struct !143, !alias.scope !268
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 20 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 20 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.am, %i.w
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6marisa8grimoire4trie7HistoryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !4

_ZNSt6vectorIN6marisa8grimoire4trie7HistoryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN6marisa8grimoire4trie7HistoryESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ak, %_ZNKSt6vectorIN6marisa8grimoire4trie7HistoryESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.an, %.lr.ph.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 20
  %.not.i23.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6marisa8grimoire4trie7HistoryESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN6marisa8grimoire4trie7HistoryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ad) #20
  br label %_ZNSt6vectorIN6marisa8grimoire4trie7HistoryESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN6marisa8grimoire4trie7HistoryESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorIN6marisa8grimoire4trie7HistoryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.ak, ptr %i.u, align 8, !tbaa !142
  store ptr %i.ao, ptr %i.v, align 8, !tbaa !140
  %i.ap = getelementptr inbounds nuw [20 x i8], ptr %i.ak, i64 %i.ai
  store ptr %i.ap, ptr %i.x, align 8, !tbaa !141
  br label %_ZNSt6vectorIN6marisa8grimoire4trie7HistoryESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIN6marisa8grimoire4trie7HistoryESaIS3_EE9push_backERKS3_.exit: ; preds = %bb.g, %_ZNSt6vectorIN6marisa8grimoire4trie7HistoryESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i32 1, ptr %i.aq, align 8, !tbaa !269
  %i.ar = load i32, ptr %i.l, align 8, !tbaa !127
  %i.as = zext i32 %i.ar to i64                   ; 3 uses
  %i.at = lshr i64 %i.as, 6
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !89
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.at
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !54
  %i.ay = and i64 %i.as, 63
  %i.az = shl nuw i64 1, %i.ay
  %i.ba = and i64 %i.az, %i.ax
  %.not = icmp eq i64 %i.ba, 0
  br i1 %.not, label %.critedge, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN6marisa8grimoire4trie7HistoryESaIS3_EE9push_backERKS3_.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bc = load ptr, ptr %i.b, align 8, !tbaa !138 ; 2 uses
  %i.bd = load ptr, ptr %i.n, align 8, !tbaa !139
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.bc to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.bc, ptr %i.bh, align 8, !tbaa !65
  %i.bi = trunc i64 %i.bg to i32
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 %i.bi, ptr %i.bj, align 8, !tbaa !66
  %i.bk = tail call noundef i64 @_ZNK6marisa8grimoire6vector9BitVector5rank1Em(ptr noundef nonnull align 8 dereferenceable(208) %i.bb, i64 noundef %i.as)
  %i.bl = trunc i64 %i.bk to i32
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !55
  br label %.thread

.critedge:                                        ; preds = %bb.a, %_ZNSt6vectorIN6marisa8grimoire4trie7HistoryESaIS3_EE9push_backERKS3_.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 224
  br label %bb.l

bb.l:                                             ; preds = %.backedge, %.critedge
  %i.cd = load i32, ptr %i.bn, align 8, !tbaa !269
  %i.ce = zext i32 %i.cd to i64
  %i.cf = load ptr, ptr %i.bp, align 8, !tbaa !140 ; 2 uses
  %i.cg = load ptr, ptr %i.bo, align 8, !tbaa !142 ; 2 uses
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = sdiv exact i64 %i.cj, 20
  %i.cl = icmp eq i64 %i.ck, %i.ce
  br i1 %i.cl, label %bb.m, label %_ZNSt6vectorIN6marisa8grimoire4trie7HistoryESaIS3_EE9push_backERKS3_.exit86

bb.m:                                             ; preds = %bb.l
  %i.cm = getelementptr inbounds i8, ptr %i.cf, i64 -20 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !271
  %i.co = zext i32 %i.cn to i64
  %i.cp = tail call noundef i64 @_ZNK6marisa8grimoire6vector9BitVector7select0Em(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %i.co)
  %i.cq = trunc i64 %i.cp to i32                  ; 2 uses
  %i.cr = add i32 %i.cq, 1                        ; 2 uses
  %i.cs = load i32, ptr %i.cm, align 4, !tbaa !271
  %i.ct = sub i32 %i.cq, %i.cs                    ; 2 uses
  %i.cu = load ptr, ptr %i.bp, align 8, !tbaa !140 ; 10 uses
  %i.cv = load ptr, ptr %i.bq, align 8, !tbaa !141
  %.not.i73 = icmp eq ptr %i.cu, %i.cv
  br i1 %.not.i73, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 %i.ct, ptr %i.cu, align 4, !tbaa !73
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  store i32 %i.cr, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !73
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i32 0, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !73
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 12
  store i32 -1, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !73
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  store i32 -1, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !73
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 20
  store ptr %i.cw, ptr %i.bp, align 8, !tbaa !140
  %.pre = load ptr, ptr %i.bo, align 8, !tbaa !142
  br label %_ZNSt6vectorIN6marisa8grimoire4trie7HistoryESaIS3_EE9push_backERKS3_.exit86

bb.o:                                             ; preds = %bb.m
  %i.cx = load ptr, ptr %i.bo, align 8, !tbaa !142 ; 5 uses
  %i.cy = ptrtoint ptr %i.cu to i64
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = sub i64 %i.cy, %i.cz                    ; 4 uses
  %i.db = icmp eq i64 %i.da, 9223372036854775800
  br i1 %i.db, label %bb.p, label %_ZNKSt6vectorIN6marisa8grimoire4trie7HistoryESaIS3_EE12_M_check_lenEmPKc.exit.i.i74

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #23
  unreachable

_ZNKSt6vectorIN6marisa8grimoire4trie7HistoryESaIS3_EE12_M_check_lenEmPKc.exit.i.i74: ; preds = %bb.o
  %i.dc = sdiv exact i64 %i.da, 20                ; 2 uses
  %mul2.i.i75 = shl nsw i64 %i.dc, 1
  %3 = tail call i64 @llvm.umax.i64(i64 %mul2.i.i75, i64 1) ; 2 uses
  %i.dd = icmp ult i64 %3, %i.dc
  %i.de = tail call i64 @llvm.umin.i64(i64 %3, i64 461168601842738790)
  %i.df = select i1 %i.dd, i64 461168601842738790, i64 %i.de ; 2 uses
  %i.dg = mul nuw nsw i64 %i.df, 20
  %i.dh = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dg) #22 ; 6 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.da ; 5 uses
  store i32 %i.ct, ptr %i.di, align 4, !tbaa !73
  %.sroa.6.0..sroa_idx90 = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  store i32 %i.cr, ptr %.sroa.6.0..sroa_idx90, align 4, !tbaa !73
  %.sroa.9.0..sroa_idx92 = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store i32 0, ptr %.sroa.9.0..sroa_idx92, align 4, !tbaa !73
  %.sroa.10.0..sroa_idx94 = getelementptr inbounds nuw i8, ptr %i.di, i64 12
  store i32 -1, ptr %.sroa.10.0..sroa_idx94, align 4, !tbaa !73
  %.sroa.11.0..sroa_idx96 = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  store i32 -1, ptr %.sroa.11.0..sroa_idx96, align 4, !tbaa !73
  %.not10.i.i.i.i.i77 = icmp eq ptr %i.cx, %i.cu
  br i1 %.not10.i.i.i.i.i77, label %_ZNSt6vectorIN6marisa8grimoire4trie7HistoryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i82, label %.lr.ph.i.i.i.i.i78

.lr.ph.i.i.i.i.i78:                               ; preds = %_ZNKSt6vectorIN6marisa8grimoire4trie7HistoryESaIS3_EE12_M_check_lenEmPKc.exit.i.i74, %.lr.ph.i.i.i.i.i78
  %.012.i.i.i.i.i79 = phi ptr [ %i.dk, %.lr.ph.i.i.i.i.i78 ], [ %i.dh, %_ZNKSt6vectorIN6marisa8grimoire4trie7HistoryESaIS3_EE12_M_check_lenEmPKc.exit.i.i74 ] ; 2 uses
  %.0911.i.i.i.i.i80 = phi ptr [ %i.dj, %.lr.ph.i.i.i.i.i78 ], [ %i.cx, %_ZNKSt6vectorIN6marisa8grimoire4trie7HistoryESaIS3_EE12_M_check_lenEmPKc.exit.i.i74 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.012.i.i.i.i.i79, ptr noundef nonnull align 4 dereferenceable(20) %.0911.i.i.i.i.i80, i64 20, i1 false), !tbaa.struct !143, !alias.scope !272
  %i.dj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i80, i64 20 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i79, i64 20 ; 2 uses
  %.not.i.i.i.i.i81 = icmp eq ptr %i.dj, %i.cu
  br i1 %.not.i.i.i.i.i81, label %_ZNSt6vectorIN6marisa8grimoire4trie7HistoryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i82, label %.lr.ph.i.i.i.i.i78, !llvm.loop !4

_ZNSt6vectorIN6marisa8grimoire4trie7HistoryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i82: ; preds = %.lr.ph.i.i.i.i.i78, %_ZNKSt6vectorIN6marisa8grimoire4trie7HistoryESaIS3_EE12_M_check_lenEmPKc.exit.i.i74
  %.0.lcssa.i.i.i.i.i83 = phi ptr [ %i.dh, %_ZNKSt6vectorIN6marisa8grimoire4trie7HistoryESaIS3_EE12_M_check_lenEmPKc.exit.i.i74 ], [ %i.dk, %.lr.ph.i.i.i.i.i78 ]
  %i.dl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i83, i64 20
  %.not.i23.i.i84 = icmp eq ptr %i.cx, null
  br i1 %.not.i23.i.i84, label %_ZNSt6vectorIN6marisa8grimoire4trie7HistoryESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i85, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN6marisa8grimoire4trie7HistoryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i82
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef %i.da) #20
  br label %_ZNSt6vectorIN6marisa8grimoire4trie7HistoryESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i85

_ZNSt6vectorIN6marisa8grimoire4trie7HistoryESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i85: ; preds = %bb.q, %_ZNSt6vectorIN6marisa8grimoire4trie7HistoryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i82
  store ptr %i.dh, ptr %i.bo, align 8, !tbaa !142
  store ptr %i.dl, ptr %i.bp, align 8, !tbaa !140
  %i.dm = getelementptr inbounds nuw [20 x i8], ptr %i.dh, i64 %i.df
  store ptr %i.dm, ptr %i.bq, align 8, !tbaa !141
  br label %_ZNSt6vectorIN6marisa8grimoire4trie7HistoryESaIS3_EE9push_backERKS3_.exit86

_ZNSt6vectorIN6marisa8grimoire4trie7HistoryESaIS3_EE9push_backERKS3_.exit86: ; preds = %_ZNSt6vectorIN6marisa8grimoire4trie7HistoryESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i85, %bb.n, %bb.l
  %i.dn = phi ptr [ %i.dh, %_ZNSt6vectorIN6marisa8grimoire4trie7HistoryESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i85 ], [ %.pre, %bb.n ], [ %i.cg, %bb.l ]
  %i.do = load i32, ptr %i.bn, align 8, !tbaa !269 ; 3 uses
  %i.dp = zext i32 %i.do to i64
  %i.dq = getelementptr [20 x i8], ptr %i.dn, i64 %i.dp ; 9 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 4 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !273 ; 2 uses
  %i.dt = zext i32 %i.ds to i64                   ; 2 uses
  %i.du = lshr i64 %i.dt, 6
  %i.dv = load ptr, ptr %i.br, align 8, !tbaa !89
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.du
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !54
  %i.dy = and i64 %i.dt, 63
  %i.dz = shl nuw i64 1, %i.dy
  %i.ea = and i64 %i.dz, %i.dx
  %.not112.a = icmp eq i64 %i.ea, 0
  %i.eb = add i32 %i.ds, 1
  store i32 %i.eb, ptr %i.dr, align 4, !tbaa !273
  br i1 %.not112.a, label %bb.aj, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN6marisa8grimoire4trie7HistoryESaIS3_EE9push_backERKS3_.exit86
  %i.ec = add i32 %i.do, 1
  store i32 %i.ec, ptr %i.bn, align 8, !tbaa !269
  %i.ed = load i32, ptr %i.dq, align 4, !tbaa !271
  %i.ee = zext i32 %i.ed to i64                   ; 5 uses
  %i.ef = lshr i64 %i.ee, 6
  %i.eg = load ptr, ptr %i.bt, align 8, !tbaa !89
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.ef
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !54
  %i.ej = and i64 %i.ee, 63
  %i.ek = shl nuw i64 1, %i.ej
  %i.el = and i64 %i.ek, %i.ei
  %.not113.a = icmp eq i64 %i.el, 0
  br i1 %.not113.a, label %bb.z, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.em = getelementptr inbounds nuw i8, ptr %i.dq, i64 12 ; 2 uses
  %i.en = load i32, ptr %i.em, align 4, !tbaa !274 ; 2 uses
  %i.eo = icmp eq i32 %i.en, -1
  br i1 %i.eo, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ep = tail call noundef i64 @_ZNK6marisa8grimoire6vector9BitVector5rank1Em(ptr noundef nonnull align 8 dereferenceable(208) %i.bs, i64 noundef %i.ee)
  %.pre127.a = load i32, ptr %i.dq, align 4, !tbaa !271
  %.pre137 = zext i32 %.pre127.a to i64
  br label %_ZNK6marisa8grimoire4trie9LoudsTrie14update_link_idEmm.exit

bb.u:                                             ; preds = %bb.s
  %i.eq = zext i32 %i.en to i64
  %i.er = add nuw nsw i64 %i.eq, 1
  br label %_ZNK6marisa8grimoire4trie9LoudsTrie14update_link_idEmm.exit

_ZNK6marisa8grimoire4trie9LoudsTrie14update_link_idEmm.exit: ; preds = %bb.t, %bb.u
  %.pre-phi138 = phi i64 [ %.pre137, %bb.t ], [ %i.ee, %bb.u ]
  %i.es = phi i64 [ %i.ep, %bb.t ], [ %i.er, %bb.u ] ; 2 uses
  %i.et = trunc i64 %i.es to i32
  store i32 %i.et, ptr %i.em, align 4, !tbaa !274
  %i.eu = and i64 %i.es, 4294967295
  %i.ev = load ptr, ptr %i.bu, align 8, !tbaa !136
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 %.pre-phi138
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !55
  %i.ey = load i64, ptr %i.bv, align 8, !tbaa !40 ; 2 uses
  %i.ez = mul i64 %i.ey, %i.eu                    ; 3 uses
  %i.fa = lshr i64 %i.ez, 6
  %i.fb = and i64 %i.ez, 63                       ; 2 uses
  %i.fc = add i64 %i.fb, %i.ey
  %i.fd = icmp ult i64 %i.fc, 65
  %i.fe = load ptr, ptr %i.bw, align 8, !tbaa !89
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %i.fa ; 2 uses
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !54 ; 2 uses
  br i1 %i.fd, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZNK6marisa8grimoire4trie9LoudsTrie14update_link_idEmm.exit
  %i.fh = lshr i64 %i.fg, %i.fb
  br label %_ZNK6marisa8grimoire4trie9LoudsTrie8get_linkEmm.exit

bb.w:                                             ; preds = %_ZNK6marisa8grimoire4trie9LoudsTrie14update_link_idEmm.exit
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !54
  %i.fk = tail call i64 @llvm.fshr.i64(i64 %i.fj, i64 %i.fg, i64 %i.ez)
  br label %_ZNK6marisa8grimoire4trie9LoudsTrie8get_linkEmm.exit

_ZNK6marisa8grimoire4trie9LoudsTrie8get_linkEmm.exit: ; preds = %bb.v, %bb.w
  %.sink.i.i = phi i64 [ %i.fk, %bb.w ], [ %i.fh, %bb.v ]
  %i.fl = zext i8 %i.ex to i32
  %i.fm = trunc i64 %.sink.i.i to i32
  %i.fn = load i32, ptr %i.bx, align 8, !tbaa !41
  %i.fo = and i32 %i.fn, %i.fm
  %i.fp = shl i32 %i.fo, 8
  %i.fq = or disjoint i32 %i.fp, %i.fl
  %i.fr = zext i32 %i.fq to i64                   ; 2 uses
  %i.fs = load ptr, ptr %i.by, align 8, !tbaa !53 ; 2 uses
  %.not.i87 = icmp eq ptr %i.fs, null
  br i1 %.not.i87, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZNK6marisa8grimoire4trie9LoudsTrie8get_linkEmm.exit
  tail call void @_ZNK6marisa8grimoire4trie9LoudsTrie8restore_ERNS_5AgentEm(ptr noundef nonnull align 8 dereferenceable(1136) %i.fs, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %i.fr), !inline_history !3
  br label %_ZNK6marisa8grimoire4trie9LoudsTrie7restoreERNS_5AgentEm.exit

bb.y:                                             ; preds = %_ZNK6marisa8grimoire4trie9LoudsTrie8get_linkEmm.exit
  tail call void @_ZNK6marisa8grimoire4trie4Tail7restoreERNS_5AgentEm(ptr noundef nonnull align 8 dereferenceable(256) %i.bz, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %i.fr), !inline_history !3
  br label %_ZNK6marisa8grimoire4trie9LoudsTrie7restoreERNS_5AgentEm.exit

bb.z:                                             ; preds = %bb.r
  %i.ft = load ptr, ptr %i.bu, align 8, !tbaa !136
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.ee
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !55  ; 2 uses
  %i.fw = load ptr, ptr %i.ca, align 8, !tbaa !139 ; 3 uses
  %i.fx = load ptr, ptr %i.cb, align 8, !tbaa !137
  %.not.i.i = icmp eq ptr %i.fw, %i.fx
  br i1 %.not.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i8 %i.fv, ptr %i.fw, align 1, !tbaa !55
  %i.fy = load ptr, ptr %i.ca, align 8, !tbaa !139
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 1
  store ptr %i.fz, ptr %i.ca, align 8, !tbaa !139
  br label %_ZNK6marisa8grimoire4trie9LoudsTrie7restoreERNS_5AgentEm.exit

bb.ab:                                            ; preds = %bb.z
  %i.ga = load ptr, ptr %i.b, align 8, !tbaa !138 ; 4 uses
  %i.gb = ptrtoint ptr %i.fw to i64
  %i.gc = ptrtoint ptr %i.ga to i64
  %i.gd = sub i64 %i.gb, %i.gc                    ; 8 uses
  %i.ge = icmp eq i64 %i.gd, 9223372036854775807
  br i1 %i.ge, label %bb.ac, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i

bb.ac:                                            ; preds = %bb.ab
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #23
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ab
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.gd, i64 1)
  %i.gf = add i64 %.sroa.speculated.i.i.i.i, %i.gd ; 2 uses
  %i.gg = icmp ult i64 %i.gf, %i.gd
  %i.gh = tail call i64 @llvm.umin.i64(i64 %i.gf, i64 9223372036854775807)
  %i.gi = select i1 %i.gg, i64 9223372036854775807, i64 %i.gh ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.gi, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.gj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gi) #22 ; 4 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 %i.gd ; 2 uses
  store i8 %i.fv, ptr %i.gk, align 1, !tbaa !55
  %i.gl = icmp sgt i64 %i.gd, 0
  br i1 %i.gl, label %bb.ad, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i

bb.ad:                                            ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.gj, ptr align 1 %i.ga, i64 %i.gd, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.ad, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 1
  %.not.i17.i.i.i = icmp eq ptr %i.ga, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ga, i64 noundef %i.gd) #20
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i: ; preds = %bb.ae, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i
end_hunk_0
