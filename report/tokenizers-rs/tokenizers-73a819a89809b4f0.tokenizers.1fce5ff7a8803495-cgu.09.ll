Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.09?download=true
inline.NumInlined: 1497
inline.NumDeleted: 735
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvMs3_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4wordNtB5_4Word3add:bb.a
  %i.j = icmp eq i64 %i.b, %i.i
  br i1 %i.j, label %bb.d, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolE8push_mutBM_.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolE8grow_oneBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0), !noalias !1339
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolE8push_mutBM_.exit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolE8push_mutBM_.exit: ; preds = %bb.c, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !1338, !noalias !1339, !nonnull !4, !noundef !4
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %i.b ; 4 uses
  store i64 %.sroa.01.0, ptr %i.m, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 -1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i32 %1, ptr %.sroa.6.0..sroa_idx, align 8
  %i.n = add nuw nsw i64 %i.b, 1
  store i64 %i.n, ptr %i.a, align 8, !alias.scope !1338, !noalias !1339
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs3_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4wordNtB5_4Word5merge(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) unnamed_addr #2 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 7 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 10 uses
  store i64 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 11 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !4 ; 8 uses
  %i.h = icmp ult i64 %i.g, 288230376151711744
  tail call void @llvm.assume(i1 %i.h)
  %.not77.not = icmp eq i64 %i.g, 0
  br i1 %.not77.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.split
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load i32, ptr %i.k, align 8, !noundef !4
  %i.m = icmp eq i32 %i.l, %2
  br i1 %i.m, label %bb.a, label %bb.o

bb.a:                                             ; preds = %.lr.ph
  %.not135 = icmp eq i64 %i.g, 1
  br i1 %.not135, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.o = load i32, ptr %i.n, align 8, !noundef !4
  %i.p = icmp eq i32 %i.o, %3
  br i1 %i.p, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.r = load i64, ptr %i.q, align 8, !noundef !4
  %i.s = load i64, ptr %i.j, align 8, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.u = load i64, ptr %i.t, align 8, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.w = load i64, ptr %i.v, align 8, !noundef !4
  %i.x = add i64 %i.w, %i.r                       ; 2 uses
  %i.y = load i64, ptr %1, align 8, !range !16, !alias.scope !1356, !noalias !1357, !noundef !4
  %i.z = icmp eq i64 %i.g, %i.y
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolE8grow_oneBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %..noexc30.peel_crit_edge unwind label %.loopexit.loopexit.split-lp

..noexc30.peel_crit_edge:                         ; preds = %bb.d
  %.pre = load ptr, ptr %i.i, align 8, !alias.scope !1356, !noalias !1357
  br label %bb.e

bb.e:                                             ; preds = %..noexc30.peel_crit_edge, %bb.c
  %i.aa = phi ptr [ %.pre, %..noexc30.peel_crit_edge ], [ %i.j, %bb.c ] ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = shl nuw nsw i64 %i.g, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr nonnull align 8 %i.aa, i64 %i.ac, i1 false), !noalias !1357
  store i64 %i.s, ptr %i.aa, align 8
  %.sroa.4.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 %i.u, ptr %.sroa.4.0..sroa_idx.peel, align 8
  %.sroa.5.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 %i.x, ptr %.sroa.5.0..sroa_idx.peel, align 8
  %.sroa.6.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i32 %4, ptr %.sroa.6.0..sroa_idx.peel, align 8
  %i.ad = add nuw nsw i64 %i.g, 1
  store i64 %i.ad, ptr %i.f, align 8, !alias.scope !1356, !noalias !1357
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolE6removeBL_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61)
          to label %bb.f unwind label %.loopexit.loopexit.split-lp

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolE6removeBL_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62)
          to label %bb.g unwind label %.loopexit.loopexit.split-lp

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ae = load i64, ptr %i.f, align 8, !noundef !4 ; 3 uses
  %i.af = icmp ult i64 %i.ae, 288230376151711744
  tail call void @llvm.assume(i1 %i.af)
  switch i64 %i.ae, label %bb.h [
    i64 1, label %._crit_edge
    i64 0, label %.loopexit100.invoke
  ]

bb.h:                                             ; preds = %bb.g
  %i.ag = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.ai = load i32, ptr %i.ah, align 8, !noundef !4
  %i.aj = load i64, ptr %i.e, align 8, !alias.scope !1358, !noalias !1359, !noundef !4 ; 4 uses
  %i.ak = load i64, ptr %i.c, align 8, !range !16, !alias.scope !1358, !noalias !1359, !noundef !4
  %i.al = icmp eq i64 %i.aj, %i.ak
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTTmmElEE8grow_oneCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.j unwind label %.loopexit.loopexit.split-lp

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.am = load ptr, ptr %i.d, align 8, !alias.scope !1358, !noalias !1359, !nonnull !4, !noundef !4
  %i.an = getelementptr inbounds nuw [12 x i8], ptr %i.am, i64 %i.aj ; 3 uses
  store i32 %3, ptr %i.an, align 4
  %.sroa.445.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store i32 %i.ai, ptr %.sroa.445.0..sroa_idx.peel, align 4
  %.sroa.546.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i32 -1, ptr %.sroa.546.0..sroa_idx.peel, align 4
  %i.ao = add i64 %i.aj, 1                        ; 3 uses
  store i64 %i.ao, ptr %i.e, align 8, !alias.scope !1358, !noalias !1359
  %i.ap = load i64, ptr %i.f, align 8, !noundef !4 ; 3 uses
  %i.aq = icmp ugt i64 %i.ap, 1
  br i1 %i.aq, label %bb.k, label %.loopexit100.invoke

bb.k:                                             ; preds = %bb.j
  %i.ar = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %i.at = load i64, ptr %i.as, align 8, !noundef !4
  %i.au = add i64 %i.at, %i.x
  %i.av = icmp ult i64 %i.au, %5
  br i1 %i.av, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  %i.ax = load i32, ptr %i.aw, align 8, !noundef !4
  %i.ay = load i64, ptr %i.c, align 8, !range !16, !alias.scope !1360, !noalias !1361, !noundef !4
  %i.az = icmp eq i64 %i.ao, %i.ay
  br i1 %i.az, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTTmmElEE8grow_oneCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.n unwind label %.loopexit.loopexit.split-lp

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ba = load ptr, ptr %i.d, align 8, !alias.scope !1360, !noalias !1361, !nonnull !4, !noundef !4
  %i.bb = getelementptr inbounds nuw [12 x i8], ptr %i.ba, i64 %i.ao ; 3 uses
  store i32 %4, ptr %i.bb, align 4
  %.sroa.448.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  store i32 %i.ax, ptr %.sroa.448.0..sroa_idx.peel, align 4
  %.sroa.549.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i32 1, ptr %.sroa.549.0..sroa_idx.peel, align 4
  %i.bc = add i64 %i.aj, 2
  store i64 %i.bc, ptr %i.e, align 8, !alias.scope !1360, !noalias !1361
  %.pre107 = load i64, ptr %i.f, align 8
  br label %bb.o

.thread:                                          ; preds = %bb.k, %bb.b
  %.ph = phi i64 [ %i.g, %bb.b ], [ %i.ap, %bb.k ] ; 2 uses
  %i.bd = icmp ult i64 %.ph, 288230376151711744
  call void @llvm.assume(i1 %i.bd)
  br label %.peel.next.preheader

bb.o:                                             ; preds = %bb.n, %.lr.ph
  %i.be = phi i64 [ %.pre107, %bb.n ], [ %i.g, %.lr.ph ] ; 3 uses
  %i.bf = icmp ult i64 %i.be, 288230376151711744
  call void @llvm.assume(i1 %i.bf)
  %.not.peel = icmp samesign ugt i64 %i.be, 1
  br i1 %.not.peel, label %.peel.next.preheader, label %._crit_edge

.peel.next.preheader:                             ; preds = %.thread, %bb.o
  %.ph173 = phi i64 [ %i.be, %bb.o ], [ %.ph, %.thread ]
  br label %.peel.next

.peel.next:                                       ; preds = %.peel.next.preheader, %._crit_edge111
  %i.bg = phi i64 [ %i.bn, %._crit_edge111 ], [ %.ph173, %.peel.next.preheader ] ; 3 uses
  %.sroa.0.078 = phi i64 [ %i.bm, %._crit_edge111 ], [ 1, %.peel.next.preheader ] ; 9 uses
  %i.bh = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.bi = getelementptr inbounds nuw [32 x i8], ptr %i.bh, i64 %.sroa.0.078 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load i32, ptr %i.bj, align 8, !noundef !4
  %i.bl = icmp eq i32 %i.bk, %2
  %i.bm = add nuw nsw i64 %.sroa.0.078, 1         ; 12 uses
  %6 = icmp samesign ult i64 %i.bm, %i.bg
  %or.cond = select i1 %i.bl, i1 %6, i1 false
  br i1 %or.cond, label %bb.p, label %._crit_edge111

._crit_edge:                                      ; preds = %._crit_edge111, %bb.a, %bb.g, %bb.o, %.split
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

.loopexit.loopexit:                               ; preds = %bb.ak, %bb.ag, %bb.z, %bb.v, %bb.t, %bb.ac, %bb.ab
  %lpad.loopexit97 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.loopexit.split-lp:                      ; preds = %bb.d, %bb.e, %bb.f, %bb.i, %bb.m
  %lpad.loopexit.split-lp98 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.split-lp:                               ; preds = %.loopexit100.invoke, %.loopexit101
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.loopexit.loopexit.split-lp, %.loopexit.split-lp
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit97, %.loopexit.loopexit ], [ %lpad.loopexit.split-lp98, %.loopexit.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTTmmElEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.c) #33
          to label %bb.an unwind label %bb.am

._crit_edge111:                                   ; preds = %.peel.next, %bb.ad, %bb.ai, %bb.al, %bb.p
  %i.bn = phi i64 [ %i.bg, %.peel.next ], [ %i.dp, %bb.ad ], [ %i.ee, %bb.ai ], [ %.pre110, %bb.al ], [ %i.bg, %bb.p ] ; 3 uses
  %i.bo = icmp ult i64 %i.bn, 288230376151711744
  call void @llvm.assume(i1 %i.bo)
  %.not = icmp samesign ult i64 %i.bm, %i.bn
  br i1 %.not, label %.peel.next, label %._crit_edge, !llvm.loop !1349

bb.p:                                             ; preds = %.peel.next
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %i.bh, i64 %i.bm ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load i32, ptr %i.bq, align 8, !noundef !4
  %i.bs = icmp eq i32 %i.br, %3
  br i1 %i.bs, label %bb.q, label %._crit_edge111

bb.q:                                             ; preds = %bb.p
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !noundef !4
  %i.bv = load i64, ptr %i.bi, align 8, !noundef !4
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !4
  %i.by = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !noundef !4
  %i.ca = add i64 %i.bz, %i.bu                    ; 3 uses
  %i.cb = add nsw i64 %.sroa.0.078, -1            ; 4 uses
  %i.cc = getelementptr inbounds nuw [32 x i8], ptr %i.bh, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ce = load i32, ptr %i.cd, align 8, !noundef !4
  %i.cf = load i64, ptr %i.e, align 8, !alias.scope !1363, !noalias !1364, !noundef !4 ; 4 uses
  %i.cg = load i64, ptr %i.c, align 8, !range !16, !alias.scope !1363, !noalias !1364, !noundef !4
  %i.ch = icmp eq i64 %i.cf, %i.cg
  br i1 %i.ch, label %bb.v, label %bb.w

bb.r:                                             ; preds = %bb.aa, %bb.x
  %i.ci = phi i64 [ %i.cw, %bb.x ], [ %.pre109, %bb.aa ] ; 7 uses
  %i.cj = icmp ult i64 %i.ci, 288230376151711744
  call void @llvm.assume(i1 %i.cj)
  %i.ck = icmp samesign ugt i64 %.sroa.0.078, %i.ci
  br i1 %i.ck, label %.loopexit101, label %bb.s, !prof !10

bb.s:                                             ; preds = %bb.r
  %i.cl = load i64, ptr %1, align 8, !range !16, !alias.scope !1356, !noalias !1357, !noundef !4
  %i.cm = icmp eq i64 %i.ci, %i.cl
  br i1 %i.cm, label %bb.t, label %.noexc30

.loopexit101:                                     ; preds = %bb.r
  invoke void @_RNvNvMs_NtCscdodAO9FK5_5alloc3vecINtB6_3VecppE10insert_mut13assert_failed(i64 noundef range(i64 0, 288230376151711743) %.sroa.0.078, i64 noundef %i.ci, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #32
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.loopexit101
  unreachable

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolE8grow_oneBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc30 unwind label %.loopexit.loopexit

.noexc30:                                         ; preds = %bb.t, %bb.s
  %i.cn = load ptr, ptr %i.i, align 8, !alias.scope !1356, !noalias !1357, !nonnull !4, !noundef !4
  %i.co = getelementptr inbounds nuw [32 x i8], ptr %i.cn, i64 %.sroa.0.078 ; 6 uses
  %i.cp = icmp samesign ult i64 %.sroa.0.078, %i.ci
  br i1 %i.cp, label %bb.u, label %bb.ab

bb.u:                                             ; preds = %.noexc30
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  %i.cr = sub nuw nsw i64 %i.ci, %.sroa.0.078
  %i.cs = shl nuw nsw i64 %i.cr, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cq, ptr nonnull align 8 %i.co, i64 %i.cs, i1 false), !noalias !1357
  br label %bb.ab

bb.v:                                             ; preds = %bb.q
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTTmmElEE8grow_oneCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.w unwind label %.loopexit.loopexit

bb.w:                                             ; preds = %bb.q, %bb.v
  %i.ct = load ptr, ptr %i.d, align 8, !alias.scope !1363, !noalias !1364, !nonnull !4, !noundef !4
  %i.cu = getelementptr inbounds nuw [12 x i8], ptr %i.ct, i64 %i.cf ; 3 uses
  store i32 %i.ce, ptr %i.cu, align 4
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  store i32 %2, ptr %.sroa.439.0..sroa_idx, align 4
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i32 -1, ptr %.sroa.540.0..sroa_idx, align 4
  %i.cv = add i64 %i.cf, 1                        ; 3 uses
  store i64 %i.cv, ptr %i.e, align 8, !alias.scope !1363, !noalias !1364
  %i.cw = load i64, ptr %i.f, align 8, !noundef !4 ; 3 uses
  %i.cx = icmp ult i64 %i.cb, %i.cw
  br i1 %i.cx, label %bb.x, label %.loopexit100.invoke

bb.x:                                             ; preds = %bb.w
  %i.cy = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  %i.cz = getelementptr inbounds nuw [32 x i8], ptr %i.cy, i64 %i.cb ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = load i64, ptr %i.da, align 8, !noundef !4
  %i.dc = add i64 %i.db, %i.ca
  %i.dd = icmp ult i64 %i.dc, %5
  br i1 %i.dd, label %bb.y, label %bb.r

.loopexit100.invoke:                              ; preds = %bb.ah, %bb.ae, %bb.w, %bb.j, %bb.g
  %i.de = phi i64 [ 1, %bb.g ], [ 1, %bb.j ], [ %i.bm, %bb.ae ], [ %i.cb, %bb.w ], [ %i.bm, %bb.ah ]
  %i.df = phi i64 [ %i.ae, %bb.g ], [ %i.ap, %bb.j ], [ %i.dp, %bb.ae ], [ %i.cw, %bb.w ], [ %i.ee, %bb.ah ]
  %i.dg = phi ptr [ @63, %bb.g ], [ @64, %bb.j ], [ @63, %bb.ae ], [ @59, %bb.w ], [ @64, %bb.ah ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.de, i64 noundef %i.df, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dg) #32
          to label %.loopexit100.cont unwind label %.loopexit.split-lp

.loopexit100.cont:                                ; preds = %.loopexit100.invoke
  unreachable

bb.y:                                             ; preds = %bb.x
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.di = load i32, ptr %i.dh, align 8, !noundef !4
  %i.dj = load i64, ptr %i.c, align 8, !range !16, !alias.scope !1365, !noalias !1366, !noundef !4
  %i.dk = icmp eq i64 %i.cv, %i.dj
  br i1 %i.dk, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTTmmElEE8grow_oneCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.aa unwind label %.loopexit.loopexit

bb.aa:                                            ; preds = %bb.y, %bb.z
  %i.dl = load ptr, ptr %i.d, align 8, !alias.scope !1365, !noalias !1366, !nonnull !4, !noundef !4
  %i.dm = getelementptr inbounds nuw [12 x i8], ptr %i.dl, i64 %i.cv ; 3 uses
  store i32 %i.di, ptr %i.dm, align 4
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  store i32 %4, ptr %.sroa.442.0..sroa_idx, align 4
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store i32 1, ptr %.sroa.543.0..sroa_idx, align 4
  %i.dn = add i64 %i.cf, 2
  store i64 %i.dn, ptr %i.e, align 8, !alias.scope !1365, !noalias !1366
  %.pre109 = load i64, ptr %i.f, align 8, !alias.scope !1356, !noalias !1357
  br label %bb.r

bb.ab:                                            ; preds = %bb.u, %.noexc30
  store i64 %i.bv, ptr %i.co, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store i64 %i.bx, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store i64 %i.ca, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  store i32 %4, ptr %.sroa.6.0..sroa_idx, align 8
  %i.do = add nuw nsw i64 %i.ci, 1
  store i64 %i.do, ptr %i.f, align 8, !alias.scope !1356, !noalias !1357
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolE6removeBL_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.bm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61)
          to label %bb.ac unwind label %.loopexit.loopexit

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolE6removeBL_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.bm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62)
          to label %bb.ad unwind label %.loopexit.loopexit

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.dp = load i64, ptr %i.f, align 8, !noundef !4 ; 5 uses
  %i.dq = icmp ult i64 %i.dp, 288230376151711744
  call void @llvm.assume(i1 %i.dq)
  %i.dr = add nsw i64 %i.dp, -1
  %i.ds = icmp ult i64 %.sroa.0.078, %i.dr
  br i1 %i.ds, label %bb.ae, label %._crit_edge111

bb.ae:                                            ; preds = %bb.ad
  %i.dt = icmp samesign ult i64 %i.bm, %i.dp
  br i1 %i.dt, label %bb.af, label %.loopexit100.invoke

bb.af:                                            ; preds = %bb.ae
  %i.du = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  %i.dv = getelementptr inbounds nuw [32 x i8], ptr %i.du, i64 %i.bm
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.dx = load i32, ptr %i.dw, align 8, !noundef !4
  %i.dy = load i64, ptr %i.e, align 8, !alias.scope !1358, !noalias !1359, !noundef !4 ; 4 uses
  %i.dz = load i64, ptr %i.c, align 8, !range !16, !alias.scope !1358, !noalias !1359, !noundef !4
  %i.ea = icmp eq i64 %i.dy, %i.dz
  br i1 %i.ea, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTTmmElEE8grow_oneCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.ah unwind label %.loopexit.loopexit

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %i.eb = load ptr, ptr %i.d, align 8, !alias.scope !1358, !noalias !1359, !nonnull !4, !noundef !4
  %i.ec = getelementptr inbounds nuw [12 x i8], ptr %i.eb, i64 %i.dy ; 3 uses
  store i32 %3, ptr %i.ec, align 4
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  store i32 %i.dx, ptr %.sroa.445.0..sroa_idx, align 4
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store i32 -1, ptr %.sroa.546.0..sroa_idx, align 4
  %i.ed = add i64 %i.dy, 1                        ; 3 uses
  store i64 %i.ed, ptr %i.e, align 8, !alias.scope !1358, !noalias !1359
  %i.ee = load i64, ptr %i.f, align 8, !noundef !4 ; 3 uses
  %i.ef = icmp ult i64 %i.bm, %i.ee
  br i1 %i.ef, label %bb.ai, label %.loopexit100.invoke

bb.ai:                                            ; preds = %bb.ah
  %i.eg = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  %i.eh = getelementptr inbounds nuw [32 x i8], ptr %i.eg, i64 %i.bm ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ej = load i64, ptr %i.ei, align 8, !noundef !4
  %i.ek = add i64 %i.ej, %i.ca
  %i.el = icmp ult i64 %i.ek, %5
  br i1 %i.el, label %bb.aj, label %._crit_edge111

bb.aj:                                            ; preds = %bb.ai
  %i.em = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  %i.en = load i32, ptr %i.em, align 8, !noundef !4
  %i.eo = load i64, ptr %i.c, align 8, !range !16, !alias.scope !1360, !noalias !1361, !noundef !4
  %i.ep = icmp eq i64 %i.ed, %i.eo
  br i1 %i.ep, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTTmmElEE8grow_oneCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
end_hunk_0
