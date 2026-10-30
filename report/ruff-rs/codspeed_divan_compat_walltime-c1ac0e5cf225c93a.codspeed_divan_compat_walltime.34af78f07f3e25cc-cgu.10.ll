Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/codspeed_divan_compat_walltime-c1ac0e5cf225c93a.codspeed_divan_compat_walltime.34af78f07f3e25cc-cgu.10?download=true
inline.NumInlined: 198
inline.NumDeleted: 143
begin_hunk_0_@_RNvMNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4treeNtB2_9EntryTree9from_path:bb.a
  %.sroa.512.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.512.0..sroa_idx13, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8
  br label %bb.d

bb.h:                                             ; preds = %bb.e
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4tree9EntryTreeEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.c) #23
          to label %bb.i unwind label %bb.j

_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %3, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %4, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.ac, align 8
  store i64 1, ptr %0, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %.sroa.518.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.z

bb.j:                                             ; preds = %bb.h
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(128) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 121 ; 3 uses
  %i.c = load i8, ptr %i.b, align 1, !range !7, !noundef !4
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.val = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val1 = load i64, ptr %i.f, align 8, !noundef !4 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !291)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !292)
  %i.g = load i64, ptr %0, align 8, !range !10, !alias.scope !292, !noundef !4
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %i.h, label %bb.l, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %i.k = load i8, ptr %i.j, align 2, !range !7, !alias.scope !293, !noundef !4
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %.promoted.i = load i64, ptr %i.i, align 8, !alias.scope !292 ; 13 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %.promoted26.i = load i8, ptr %i.m, align 8, !alias.scope !293 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !294)
  %i.n = trunc nuw i8 %.promoted26.i to i1        ; 2 uses
  %i.o = icmp eq i64 %.promoted.i, 0
  br i1 %i.o, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %.not.i.i.i.peel = icmp ult i64 %.promoted.i, %.val1
  br i1 %.not.i.i.i.peel, label %bb.d, label %.split.i.i.i.peel

.split.i.i.i.peel:                                ; preds = %bb.c
  %i.p = icmp eq i64 %.promoted.i, %.val1
  br i1 %i.p, label %bb.e, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 %.promoted.i
  %i.r = load i8, ptr %i.q, align 1, !alias.scope !295, !noalias !296, !noundef !4
  %i.s = icmp sgt i8 %i.r, -65
  br i1 %i.s, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d, %.split.i.i.i.peel, %.lr.ph.i
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 %.promoted.i ; 4 uses
  %i.u = icmp samesign eq i64 %.promoted.i, %.val1
  br i1 %i.u, label %.loopexit19, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i8, ptr %i.t, align 1, !noalias !297, !noundef !4 ; 5 uses
  %i.w = icmp sgt i8 %i.v, -1
  br i1 %i.w, label %bb.g, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit12.i.i.i.peel

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit12.i.i.i.peel: ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.y = and i8 %i.v, 31
  %i.z = zext nneg i8 %i.y to i32                 ; 3 uses
  %i.aa = add nuw nsw i64 %.promoted.i, 1
  %i.ab = icmp samesign ne i64 %i.aa, %.val1
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = load i8, ptr %i.x, align 1, !noalias !297, !noundef !4
  %i.ad = shl nuw nsw i32 %i.z, 6
  %i.ae = and i8 %i.ac, 63
  %i.af = zext nneg i8 %i.ae to i32               ; 2 uses
  %i.ag = or disjoint i32 %i.ad, %i.af
  %i.ah = icmp samesign ugt i8 %i.v, -33
  br i1 %i.ah, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit14.i.i.i.peel, label %bb.h

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit14.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit12.i.i.i.peel
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.aj = add nuw nsw i64 %.promoted.i, 2
  %i.ak = icmp samesign ne i64 %i.aj, %.val1
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = load i8, ptr %i.ai, align 1, !noalias !297, !noundef !4
  %i.am = shl nuw nsw i32 %i.af, 6
  %i.an = and i8 %i.al, 63
  %i.ao = zext nneg i8 %i.an to i32
  %i.ap = or disjoint i32 %i.am, %i.ao            ; 2 uses
  %i.aq = shl nuw nsw i32 %i.z, 12
  %i.ar = or disjoint i32 %i.ap, %i.aq
  %i.as = icmp samesign ugt i8 %i.v, -17
  br i1 %i.as, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit16.i.i.i.peel, label %bb.h

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit16.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit14.i.i.i.peel
  %i.at = getelementptr inbounds nuw i8, ptr %i.t, i64 3
  %i.au = add nuw nsw i64 %.promoted.i, 3
  %i.av = icmp samesign ne i64 %i.au, %.val1
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = load i8, ptr %i.at, align 1, !noalias !297, !noundef !4
  %i.ax = shl nuw nsw i32 %i.z, 18
  %i.ay = and i32 %i.ax, 1835008
  %i.az = shl nuw nsw i32 %i.ap, 6
  %i.ba = and i8 %i.aw, 63
  %i.bb = zext nneg i8 %i.ba to i32
  %i.bc = or disjoint i32 %i.az, %i.bb
  %i.bd = or disjoint i32 %i.bc, %i.ay
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.be = zext nneg i8 %i.v to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit16.i.i.i.peel, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit14.i.i.i.peel, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit12.i.i.i.peel
  %.sroa.4.0.i.ph.i.i.peel = phi i32 [ %i.ar, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit14.i.i.i.peel ], [ %i.bd, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit16.i.i.i.peel ], [ %i.ag, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit12.i.i.i.peel ], [ %i.be, %bb.g ] ; 4 uses
  %i.bf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 1114112
  tail call void @llvm.assume(i1 %i.bf)
  br i1 %i.n, label %.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 128
  br i1 %i.bg, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 2048
  br i1 %i.bh, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 65536
  %..i.i.peel = select i1 %i.bi, i64 3, i64 4
  br label %bb.m

bb.l:                                             ; preds = %bb.b
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !292, !noundef !4
  %i.bl = icmp eq i64 %i.bk, -1
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !292, !nonnull !4, !noundef !4 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !292, !noundef !4 ; 2 uses
  br i1 %i.bl, label %bb.t, label %bb.u

bb.m:                                             ; preds = %bb.i, %bb.j, %bb.k
  %.sroa.01.0.i.i.peel = phi i64 [ 2, %bb.j ], [ %..i.i.peel, %bb.k ], [ 1, %bb.i ]
  %i.bq = add i64 %.sroa.01.0.i.i.peel, %.promoted.i ; 16 uses
  store i64 %i.bq, ptr %i.i, align 8, !alias.scope !298
  tail call void @llvm.experimental.noalias.scope.decl(metadata !299)
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not.i.i.i = icmp ult i64 %i.bq, %.val1
  br i1 %.not.i.i.i, label %bb.o, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.n
  %i.bs = icmp eq i64 %i.bq, %.val1
  br i1 %i.bs, label %bb.p, label %.loopexit

bb.o:                                             ; preds = %bb.n
  %i.bt = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bq
  %i.bu = load i8, ptr %i.bt, align 1, !alias.scope !295, !noalias !300, !noundef !4
  %i.bv = icmp sgt i8 %i.bu, -65
  br i1 %i.bv, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %bb.o, %.split.i.i.i, %bb.m
  %i.bw = icmp samesign eq i64 %i.bq, %.val1
  br i1 %i.bw, label %.sink.split, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bx = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bq
  %i.by = load i8, ptr %i.bx, align 1, !noalias !301, !noundef !4 ; 3 uses
  %i.bz = icmp sgt i8 %i.by, -1
  br i1 %i.bz, label %.sink.split, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit12.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit12.i.i.i: ; preds = %bb.q
  %i.ca = add nuw nsw i64 %i.bq, 1
  %i.cb = icmp samesign ne i64 %i.ca, %.val1
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = icmp samesign ugt i8 %i.by, -33
  br i1 %i.cc, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit14.i.i.i, label %.sink.split

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit12.i.i.i
  %i.cd = add nuw nsw i64 %i.bq, 2
  %i.ce = icmp samesign ne i64 %i.cd, %.val1
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = icmp samesign ugt i8 %i.by, -17
  br i1 %i.cf, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit16.i.i.i, label %.sink.split

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit14.i.i.i
  %i.cg = add nuw nsw i64 %i.bq, 3
  %i.ch = icmp samesign ne i64 %i.cg, %.val1
  tail call void @llvm.assume(i1 %i.ch)
  br label %.sink.split

.loopexit:                                        ; preds = %bb.o, %.split.i.i.i, %bb.d, %.split.i.i.i.peel
  %.lcssa15 = phi i8 [ %.promoted26.i, %.split.i.i.i.peel ], [ %.promoted26.i, %bb.d ], [ 1, %.split.i.i.i ], [ 1, %bb.o ]
  %.lcssa12 = phi i64 [ %.promoted.i, %.split.i.i.i.peel ], [ %.promoted.i, %bb.d ], [ %i.bq, %.split.i.i.i ], [ %i.bq, %bb.o ]
  %i.ci = xor i8 %.lcssa15, 1
  store i8 %i.ci, ptr %i.m, align 8, !alias.scope !293
  tail call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, i64 noundef %.lcssa12, i64 noundef %.val1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #25, !noalias !300
  unreachable

.loopexit19:                                      ; preds = %bb.e
  %i.cj = xor i8 %.promoted26.i, 1
  store i8 %i.cj, ptr %i.m, align 8, !alias.scope !293
  br i1 %i.n, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.loopexit19
  store i8 1, ptr %i.j, align 2, !alias.scope !293
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i

.sink.split:                                      ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit16.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit14.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit12.i.i.i, %bb.q, %bb.h, %bb.p
  %.ph = phi i64 [ %.val1, %bb.p ], [ %.promoted.i, %bb.h ], [ %i.bq, %bb.q ], [ %i.bq, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit12.i.i.i ], [ %i.bq, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit14.i.i.i ], [ %i.bq, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit16.i.i.i ]
  store i8 0, ptr %i.m, align 8, !alias.scope !293
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %.loopexit19
  %1 = phi i64 [ %.val1, %.loopexit19 ], [ %.ph, %.sink.split ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.ck, align 8, !alias.scope !291
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %1, ptr %i.cl, align 8, !alias.scope !291
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i

_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i: ; preds = %bb.s, %bb.r, %.preheader.i
  %storemerge.i = phi i64 [ 1, %bb.s ], [ 0, %bb.r ], [ 0, %.preheader.i ]
  store i64 %storemerge.i, ptr %i.a, align 8, !alias.scope !291
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

bb.t:                                             ; preds = %bb.l
  call fastcc void @_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(64) %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bn, i64 noundef %i.bp, i1 noundef zeroext true)
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

bb.u:                                             ; preds = %bb.l
  call fastcc void @_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(64) %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bn, i64 noundef %i.bp, i1 noundef zeroext false)
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit: ; preds = %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i, %bb.t, %bb.u
  %i.cm = load i64, ptr %i.a, align 8, !range !10, !noundef !4
  %i.cn = trunc nuw i64 %i.cm to i1
  br i1 %i.cn, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !noundef !4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !noundef !4
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !noundef !4 ; 2 uses
  %i.cu = sub nuw i64 %i.cp, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ct
  store i64 %i.cr, ptr %i.cs, align 8
  br label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE7get_endCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit

bb.w:                                             ; preds = %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit
  %i.cw = load i8, ptr %i.b, align 1, !range !7, !alias.scope !302, !noundef !4
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE7get_endCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i8 1, ptr %i.b, align 1, !alias.scope !302
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cz = load i8, ptr %i.cy, align 8, !range !7, !alias.scope !302, !noundef !4
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %._crit_edge.i, label %bb.y

._crit_edge.i:                                    ; preds = %bb.x
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !302
  %.phi.trans.insert2.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.pre3.i = load i64, ptr %.phi.trans.insert2.i, align 8, !alias.scope !302
  br label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.dc = load i64, ptr %i.db, align 8, !alias.scope !302, !noundef !4 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.de = load i64, ptr %i.dd, align 8, !alias.scope !302, !noundef !4 ; 2 uses
  %.not.i = icmp eq i64 %i.dc, %i.de
  br i1 %.not.i, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE7get_endCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit, label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge.i
  %i.df = phi i64 [ %.pre3.i, %._crit_edge.i ], [ %i.dc, %bb.y ]
  %i.dg = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.de, %bb.y ] ; 2 uses
  %.val.i = load ptr, ptr %i.e, align 8, !alias.scope !302, !nonnull !4, !noundef !4
  %i.dh = sub nuw i64 %i.df, %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.dg
  br label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE7get_endCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit

_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE7get_endCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit: ; preds = %bb.z, %bb.y, %bb.w, %bb.v
  %.sroa.4.0 = phi i64 [ %i.cu, %bb.v ], [ %i.dh, %bb.z ], [ undef, %bb.y ], [ undef, %bb.w ]
  %.sroa.0.0 = phi ptr [ %i.cv, %bb.v ], [ %i.di, %bb.z ], [ null, %bb.y ], [ null, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.a, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE7get_endCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit
  %.sroa.4.1 = phi i64 [ %.sroa.4.0, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE7get_endCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit ], [ undef, %bb.a ]
  %.sroa.0.1 = phi ptr [ %.sroa.0.0, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE7get_endCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit ], [ null, %bb.a ]
  %i.dj = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1, 0
  %i.dk = insertvalue { ptr, i64 } %i.dj, i64 %.sroa.4.1, 1
  ret { ptr, i64 } %i.dk
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXNvNtCs4NRVxsYgnAr_4core4hint20select_unpredictableINtB2_11DropOnPanicOINtNtNtB6_3num7nonzero7NonZerojEENtNtNtB6_3ops4drop4Drop4dropCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXNvNtCs4NRVxsYgnAr_4core4hint20select_unpredictableINtB2_11DropOnPanicORNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5stats6sample10TimeSampleENtNtNtB6_3ops4drop4Drop4dropB1h_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXNvNtCs4NRVxsYgnAr_4core4hint20select_unpredictableINtB2_11DropOnPanicOjENtNtNtB6_3ops4drop4Drop4dropCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXNvNtCs4NRVxsYgnAr_4core4hint20select_unpredictableINtB2_11DropOnPanicPINtNtNtB6_3num7nonzero7NonZerojEENtNtNtB6_3ops4drop4Drop4dropCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXNvNtCs4NRVxsYgnAr_4core4hint20select_unpredictableINtB2_11DropOnPanicPNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4tree9EntryTreeENtNtNtB6_3ops4drop4Drop4dropB1g_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXNvNtCs4NRVxsYgnAr_4core4hint20select_unpredictableINtB2_11DropOnPanicPRNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5stats6sample10TimeSampleENtNtNtB6_3ops4drop4Drop4dropB1h_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXNvNtCs4NRVxsYgnAr_4core4hint20select_unpredictableINtB2_11DropOnPanicPRReENtNtNtB6_3ops4drop4Drop4dropCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXNvNtCs4NRVxsYgnAr_4core4hint20select_unpredictableINtB2_11DropOnPanicPjENtNtNtB6_3ops4drop4Drop4dropCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXNvNtCs4NRVxsYgnAr_4core4hint20select_unpredictableINtB2_11DropOnPanicjENtNtNtB6_3ops4drop4Drop4dropCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, target_mem: none) uwtable
define hidden noundef range(i8 -1, 2) i8 @_RNvXs2_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNvYRNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4meta13EntryLocationNtNtBb_3cmp3Ord3cmpINtB7_6FnOnceTRBR_B2F_EE9call_onceBY_(ptr noalias nofree noundef nonnull readnone captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #4 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !align !3, !noundef !4 ; 4 uses
  %.val1 = load ptr, ptr %2, align 8, !nonnull !4, !align !3, !noundef !4 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !307)
  %i.a = load ptr, ptr %.val, align 8, !alias.scope !306, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !306, !noundef !4 ; 2 uses
  %i.d = load ptr, ptr %.val1, align 8, !alias.scope !307, !nonnull !4, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !307, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %i.f)
  %i.g = tail call i32 @memcmp(ptr nonnull %i.a, ptr nonnull %i.d, i64 %spec.store.select.i.i.i), !noalias !308 ; 2 uses
  %i.h = sext i32 %i.g to i64
  %i.i = icmp eq i32 %i.g, 0
  %i.j = sub i64 %i.c, %i.f
  %spec.select.i.i.i = select i1 %i.i, i64 %i.j, i64 %i.h ; 2 uses
  %i.k = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i, i64 0)
  %i.l = icmp eq i64 %spec.select.i.i.i, 0
  br i1 %i.l, label %bb.b, label %_RNvYNvYRNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4meta13EntryLocationNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmpINtNtNtB1q_3ops8function5FnMutTRB5_B2q_EE8call_mutBc_.exit

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.n = load i32, ptr %i.m, align 8, !alias.scope !306, !noundef !4 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.p = load i32, ptr %i.o, align 8, !alias.scope !307, !noundef !4 ; 2 uses
  %i.q = tail call i8 @llvm.ucmp.i8.i32(i32 %i.n, i32 %i.p)
  %i.r = icmp eq i32 %i.n, %i.p
  br i1 %i.r, label %bb.c, label %_RNvYNvYRNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4meta13EntryLocationNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmpINtNtNtB1q_3ops8function5FnMutTRB5_B2q_EE8call_mutBc_.exit

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 20
  %i.t = load i32, ptr %i.s, align 4, !alias.scope !306, !noundef !4
  %i.u = getelementptr inbounds nuw i8, ptr %.val1, i64 20
  %i.v = load i32, ptr %i.u, align 4, !alias.scope !307, !noundef !4
  %i.w = tail call i8 @llvm.ucmp.i8.i32(i32 %i.t, i32 %i.v)
  br label %_RNvYNvYRNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4meta13EntryLocationNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmpINtNtNtB1q_3ops8function5FnMutTRB5_B2q_EE8call_mutBc_.exit

_RNvYNvYRNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4meta13EntryLocationNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmpINtNtNtB1q_3ops8function5FnMutTRB5_B2q_EE8call_mutBc_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0.i.i.i = phi i8 [ %i.w, %bb.c ], [ %i.q, %bb.b ], [ %i.k, %bb.a ]
  ret i8 %.sroa.0.0.i.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i8 -1, 2) i8 @_RNvXs2_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNvYjNtNtBb_3cmp3Ord3cmpINtB7_6FnOnceTRjB1p_EE9call_onceCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias nofree noundef nonnull readnone captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #5 {
bb.a:
  %.val = load i64, ptr %1, align 8, !noundef !4
  %.val1 = load i64, ptr %2, align 8, !noundef !4
  %i.a = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %.val, i64 %.val1)
  ret i8 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, i64 } @_RNvXsX_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_5SplitReENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias nofree noundef align 8 captures(none) dereferenceable(128) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc { ptr, i64 } @_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef align 8 dereferenceable(128) %0)
  ret { ptr, i64 } %i.a
}

end_hunk_0
