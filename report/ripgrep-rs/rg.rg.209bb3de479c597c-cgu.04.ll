Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ripgrep-rs/original/rg.rg.209bb3de479c597c-cgu.04?download=true
inline.NumInlined: 782
inline.NumDeleted: 398
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvXsv_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_11HostnameBinNtB7_4Flag9doc_short:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXsv_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_11HostnameBinNtB7_4Flag9is_switch(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #9 !dbg !15237 {
bb.a:
  ret i1 false, !dbg !15238
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXsv_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_11HostnameBinNtB7_4Flag9name_long(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #9 !dbg !15239 {
bb.a:
  ret { ptr, i64 } { ptr @663, i64 12 }, !dbg !15240
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %1) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !15241 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !dbg !15242, !range !844, !noundef !15
  switch i64 %i.a, label %default.unreachable117 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ], !dbg !15243

default.unreachable117:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !15244 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 26, !dbg !15244 ; 2 uses
  %i.d = load i8, ptr %i.c, align 2, !dbg !15244, !range !1078, !noundef !15
  %i.e = trunc nuw i8 %i.d to i1, !dbg !15244
  br i1 %i.e, label %bb.t, label %bb.e, !dbg !15244

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !15246
  %i.g = load ptr, ptr %i.f, align 8, !dbg !15246, !nonnull !15, !noundef !15 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !15246
  %i.i = load i64, ptr %i.h, align 8, !dbg !15246, !noundef !15 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !15248 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !dbg !15248, !noundef !15 ; 5 uses
  %.not41 = icmp ult i64 %i.k, %i.i, !dbg !15250
  br i1 %.not41, label %bb.u, label %bb.t, !dbg !15250

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !15252 ; 5 uses
  %i.m = load i64, ptr %i.l, align 8, !dbg !15252, !noundef !15 ; 15 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !15254
  %i.o = load i64, ptr %i.n, align 8, !dbg !15254, !noundef !15 ; 18 uses
  %i.p = icmp eq i64 %i.m, %i.o, !dbg !15252
  br i1 %i.p, label %bb.t, label %bb.y, !dbg !15252

bb.e:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !15255 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !dbg !15255, !range !1078, !noundef !15 ; 2 uses
  %i.s = trunc nuw i8 %i.r to i1, !dbg !15255     ; 2 uses
  %i.t = xor i8 %i.r, 1, !dbg !15256
  store i8 %i.t, ptr %i.q, align 8, !dbg !15256
  %i.u = load i64, ptr %i.b, align 8, !dbg !15258, !noundef !15 ; 14 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !15259
  %i.w = load ptr, ptr %i.v, align 8, !dbg !15259, !nonnull !15, !noundef !15 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !15259
  %i.y = load i64, ptr %i.x, align 8, !dbg !15259, !noundef !15 ; 8 uses
  %i.z = icmp eq i64 %i.u, 0, !dbg !15261
  br i1 %i.z, label %bb.h, label %bb.f, !dbg !15261

bb.f:                                             ; preds = %bb.e
  %.not.i = icmp ult i64 %i.u, %i.y, !dbg !15273
  br i1 %.not.i, label %bb.g, label %.split.i, !dbg !15273

.split.i:                                         ; preds = %bb.f
  %i.aa = icmp eq i64 %i.u, %i.y, !dbg !15274
  br i1 %i.aa, label %bb.h, label %bb.k, !dbg !15275

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u, !dbg !15276
  %i.ac = load i8, ptr %i.ab, align 1, !dbg !15276, !alias.scope !15277, !noundef !15
  %i.ad = icmp sgt i8 %i.ac, -65, !dbg !15280
  br i1 %i.ad, label %bb.h, label %bb.k, !dbg !15275

bb.h:                                             ; preds = %bb.g, %.split.i, %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u, !dbg !15284 ; 4 uses
  %i.af = icmp samesign eq i64 %i.u, %i.y, !dbg !15294
  br i1 %i.af, label %bb.m, label %bb.i, !dbg !15300

bb.i:                                             ; preds = %bb.h
  %i.ag = load i8, ptr %i.ae, align 1, !dbg !15301, !noalias !15302, !noundef !15 ; 5 uses
  %i.ah = icmp sgt i8 %i.ag, -1, !dbg !15305
  br i1 %i.ah, label %bb.j, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit12.i, !dbg !15305

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit12.i: ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 1, !dbg !15306
  %i.aj = and i8 %i.ag, 31, !dbg !15308
  %i.ak = zext nneg i8 %i.aj to i32, !dbg !15308  ; 3 uses
  %i.al = add nuw nsw i64 %i.u, 1, !dbg !15310
  %i.am = icmp samesign ne i64 %i.al, %i.y, !dbg !15310
  tail call void @llvm.assume(i1 %i.am), !dbg !15313
  %i.an = load i8, ptr %i.ai, align 1, !dbg !15314, !noalias !15302, !noundef !15
  %i.ao = shl nuw nsw i32 %i.ak, 6, !dbg !15315
  %i.ap = and i8 %i.an, 63, !dbg !15317
  %i.aq = zext nneg i8 %i.ap to i32, !dbg !15317  ; 2 uses
  %i.ar = or disjoint i32 %i.ao, %i.aq, !dbg !15315
  %i.as = icmp samesign ugt i8 %i.ag, -33, !dbg !15318
  br i1 %i.as, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit14.i, label %bb.l, !dbg !15318

bb.j:                                             ; preds = %bb.i
  %i.at = zext nneg i8 %i.ag to i32, !dbg !15319
  br label %bb.l, !dbg !15320

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit14.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit12.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.ae, i64 2, !dbg !15321
  %i.av = add nuw nsw i64 %i.u, 2, !dbg !15323
  %i.aw = icmp samesign ne i64 %i.av, %i.y, !dbg !15323
  tail call void @llvm.assume(i1 %i.aw), !dbg !15326
  %i.ax = load i8, ptr %i.au, align 1, !dbg !15327, !noalias !15302, !noundef !15
  %i.ay = shl nuw nsw i32 %i.aq, 6, !dbg !15328
  %i.az = and i8 %i.ax, 63, !dbg !15330
  %i.ba = zext nneg i8 %i.az to i32, !dbg !15330
  %i.bb = or disjoint i32 %i.ay, %i.ba, !dbg !15328 ; 2 uses
  %i.bc = shl nuw nsw i32 %i.ak, 12, !dbg !15331
  %i.bd = or disjoint i32 %i.bb, %i.bc, !dbg !15332
  %i.be = icmp samesign ugt i8 %i.ag, -17, !dbg !15333
  br i1 %i.be, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit16.i, label %bb.l, !dbg !15333

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit16.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit14.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ae, i64 3, !dbg !15334
  %i.bg = add nuw nsw i64 %i.u, 3, !dbg !15336
  %i.bh = icmp samesign ne i64 %i.bg, %i.y, !dbg !15336
  tail call void @llvm.assume(i1 %i.bh), !dbg !15339
  %i.bi = load i8, ptr %i.bf, align 1, !dbg !15340, !noalias !15302, !noundef !15
  %i.bj = shl nuw nsw i32 %i.ak, 18, !dbg !15341
  %i.bk = and i32 %i.bj, 1835008, !dbg !15341
  %i.bl = shl nuw nsw i32 %i.bb, 6, !dbg !15342
  %i.bm = and i8 %i.bi, 63, !dbg !15344
  %i.bn = zext nneg i8 %i.bm to i32, !dbg !15344
  %i.bo = or disjoint i32 %i.bl, %i.bn, !dbg !15342
  %i.bp = or disjoint i32 %i.bo, %i.bk, !dbg !15345
  br label %bb.l, !dbg !15346

bb.k:                                             ; preds = %bb.g, %.split.i
  tail call void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef %i.y, i64 noundef %i.u, i64 noundef %i.y, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @664) #33, !dbg !15347
  unreachable, !dbg !15347

bb.l:                                             ; preds = %bb.j, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit12.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit16.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit14.i
  %.sroa.4.0.i.ph = phi i32 [ %i.bd, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit14.i ], [ %i.bp, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit16.i ], [ %i.ar, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit12.i ], [ %i.at, %bb.j ] ; 4 uses
  %i.bq = icmp samesign ult i32 %.sroa.4.0.i.ph, 1114112, !dbg !15348
  tail call void @llvm.assume(i1 %i.bq), !dbg !15348
  br i1 %i.s, label %bb.o, label %bb.p, !dbg !15358

bb.m:                                             ; preds = %bb.h
  br i1 %i.s, label %bb.o, label %bb.n, !dbg !15358

bb.n:                                             ; preds = %bb.m
  store i8 1, ptr %i.c, align 2, !dbg !15359
  br label %bb.t, !dbg !15360

bb.o:                                             ; preds = %bb.l, %bb.m
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15361
  store i64 %i.u, ptr %i.br, align 8, !dbg !15361
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !15361
  store i64 %i.u, ptr %i.bs, align 8, !dbg !15361
  br label %bb.t, !dbg !15362

bb.p:                                             ; preds = %bb.l
  %i.bt = icmp samesign ult i32 %.sroa.4.0.i.ph, 128, !dbg !15363
  br i1 %i.bt, label %bb.s, label %bb.q, !dbg !15363

bb.q:                                             ; preds = %bb.p
  %i.bu = icmp samesign ult i32 %.sroa.4.0.i.ph, 2048, !dbg !15369
  br i1 %i.bu, label %bb.s, label %bb.r, !dbg !15369

bb.r:                                             ; preds = %bb.q
  %i.bv = icmp samesign ult i32 %.sroa.4.0.i.ph, 65536, !dbg !15370
  %. = select i1 %i.bv, i64 3, i64 4, !dbg !15371
  br label %bb.s, !dbg !15371

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.p
  %.sroa.01.0 = phi i64 [ 2, %bb.q ], [ %., %bb.r ], [ 1, %bb.p ], !dbg !15371
  %i.bw = add i64 %.sroa.01.0, %i.u, !dbg !15372  ; 2 uses
  store i64 %i.bw, ptr %i.b, align 8, !dbg !15372
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15373
  store i64 %i.u, ptr %i.bx, align 8, !dbg !15373
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !15373
  store i64 %i.bw, ptr %i.by, align 8, !dbg !15373
  br label %bb.t, !dbg !15374

bb.t:                                             ; preds = %bb.b, %bb.d, %bb.c, %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_14RejectAndMatchECs2NzvFoTxuAy_2rg.exit, %bb.n, %bb.o, %bb.s, %.loopexit59, %bb.w, %.loopexit
  %.sink = phi i64 [ 0, %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_14RejectAndMatchECs2NzvFoTxuAy_2rg.exit ], [ 2, %bb.n ], [ 0, %bb.o ], [ 1, %bb.s ], [ 1, %.loopexit59 ], [ 0, %bb.w ], [ 1, %.loopexit ], [ 2, %bb.c ], [ 2, %bb.d ], [ 2, %bb.b ]
  store i64 %.sink, ptr %0, align 8, !dbg !15375
  ret void, !dbg !15376

bb.u:                                             ; preds = %bb.c
  %i.bz = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.k, !dbg !15377
  %i.ca = load i8, ptr %i.bz, align 1, !dbg !15377, !noundef !15
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !15378
  %i.cc = load i8, ptr %i.cb, align 8, !dbg !15378, !noundef !15
  %i.cd = icmp eq i8 %i.ca, %i.cc, !dbg !15377
  %i.ce = add nuw i64 %i.k, 1, !dbg !15379        ; 4 uses
  br i1 %i.cd, label %bb.w, label %bb.v, !dbg !15377

bb.v:                                             ; preds = %bb.u
  %.not42 = icmp ult i64 %i.ce, %i.i, !dbg !15380
  br i1 %.not42, label %.preheader.preheader, label %.loopexit, !dbg !15380

bb.w:                                             ; preds = %bb.u
  store i64 %i.ce, ptr %i.j, align 8, !dbg !15383
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15384
  store i64 %i.k, ptr %i.cf, align 8, !dbg !15384
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !15384
  store i64 %i.ce, ptr %i.cg, align 8, !dbg !15384
  br label %bb.t, !dbg !15385

.loopexit:                                        ; preds = %.preheader.preheader, %bb.x, %bb.v
  %.sroa.02.0 = phi i64 [ %i.i, %bb.v ], [ %i.i, %bb.x ], [ %.sroa.08.0, %.preheader.preheader ], !dbg !15386 ; 2 uses
  store i64 %.sroa.02.0, ptr %i.j, align 8, !dbg !15387
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15389
  store i64 %i.k, ptr %i.ch, align 8, !dbg !15389
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !15389
  store i64 %.sroa.02.0, ptr %i.ci, align 8, !dbg !15389
  br label %bb.t, !dbg !15385

.preheader.preheader:                             ; preds = %bb.v, %bb.x
  %.sroa.08.0 = phi i64 [ %i.cj, %bb.x ], [ %i.ce, %bb.v ], !dbg !15390 ; 3 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.08.0, !dbg !15391
  %3 = load i8, ptr %2, align 1, !dbg !15391, !noundef !15
  %4 = icmp sgt i8 %3, -65, !dbg !15393
  br i1 %4, label %.loopexit, label %bb.x, !dbg !15391

bb.x:                                             ; preds = %.preheader.preheader
  %i.cj = add i64 %.sroa.08.0, 1, !dbg !15396     ; 2 uses
  %exitcond96.not = icmp eq i64 %i.cj, %i.i, !dbg !15397
  br i1 %exitcond96.not, label %.loopexit, label %.preheader.preheader, !dbg !15397

bb.y:                                             ; preds = %bb.d
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !15254
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !15398 ; 3 uses
  %i.cm = load i64, ptr %i.cl, align 8, !dbg !15398, !noundef !15 ; 2 uses
  %i.cn = icmp eq i64 %i.cm, -1, !dbg !15398      ; 2 uses
  %i.co = load ptr, ptr %i.ck, align 8, !dbg !15399, !nonnull !15, !noundef !15 ; 7 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !15401
  %i.cq = load ptr, ptr %i.cp, align 8, !dbg !15401, !nonnull !15, !noundef !15 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !15401
  %i.cs = load i64, ptr %i.cr, align 8, !dbg !15401, !noundef !15 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15402), !dbg !15405
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15406), !dbg !15405
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15408), !dbg !15405
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15410), !dbg !15405
  %i.ct = add nsw i64 %i.cs, -1, !dbg !15412      ; 3 uses
  %i.cu = add i64 %i.m, %i.ct, !dbg !15416        ; 3 uses
  %i.cv = icmp ult i64 %i.cu, %i.o, !dbg !15418
  br i1 %i.cv, label %.lr.ph.i, label %.loopexit59, !dbg !15418

.lr.ph.i:                                         ; preds = %bb.y
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !15423
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cy = load i64, ptr %i.cx, align 8, !alias.scope !15406, !noalias !15424 ; 2 uses
  %i.cz = load i64, ptr %i.cw, align 8, !alias.scope !15406, !noalias !15424 ; 10 uses
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.db = load i64, ptr %i.da, align 8, !alias.scope !15406, !noalias !15424 ; 2 uses
  %i.dc = sub i64 %i.cs, %i.db
  %i.dd = add i64 %i.m, 1
  %invariant.op.i = sub i64 %i.dd, %i.cz, !dbg !15418 ; 2 uses
  %i.de = add i64 %i.db, %i.m                     ; 2 uses
  %i.df = add i64 %i.m, %i.cs                     ; 4 uses
  br i1 %i.cn, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i
  %umax.i.us = tail call i64 @llvm.umax.i64(i64 %i.cz, i64 range(i64 0, -9223372036854775808) %i.cs)
  %i.dg = add i64 %i.cz, -1, !dbg !15418
  %.first_iter = icmp ult i64 %i.dg, %i.cs
  %exitcond.not.i.us159.not = icmp ult i64 %i.cz, %i.cs
  %.not73162 = icmp eq i64 %i.cz, 0
  br label %bb.z, !dbg !15418

bb.z:                                             ; preds = %.loopexit137, %.lr.ph.i.split.us
  %i.dh = phi i64 [ %i.cu, %.lr.ph.i.split.us ], [ %i.ed, %.loopexit137 ]
  %i.di = phi i64 [ %i.m, %.lr.ph.i.split.us ], [ %.sink135, %.loopexit137 ] ; 2 uses
  %.not.i46.us = icmp eq i64 %i.m, %i.di
  br i1 %.not.i46.us, label %bb.aa, label %.split.us, !dbg !15425

bb.aa:                                            ; preds = %bb.z
  %i.dj = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.dh, !dbg !15427
  %i.dk = load i8, ptr %i.dj, align 1, !dbg !15428, !alias.scope !15408, !noalias !15429, !noundef !15
  %i.dl = and i8 %i.dk, 63, !dbg !15430
  %i.dm = zext nneg i8 %i.dl to i64, !dbg !15433
  %i.dn = shl nuw i64 1, %i.dm, !dbg !15434
  %i.do = and i64 %i.dn, %i.cy, !dbg !15434
  %.not20.i.us = icmp eq i64 %i.do, 0, !dbg !15434
  br i1 %.not20.i.us, label %.loopexit137, label %.preheader75.preheader.a, !dbg !15435

.preheader75.preheader.a:                         ; preds = %bb.aa
  br i1 %exitcond.not.i.us159.not, label %.lr.ph161.a, label %.preheader74.preheader, !dbg !15436

.preheader75.a:                                   ; preds = %.lr.ph161.a
  %i.dp = add i64 %.sroa.04.0.i.us160, 1, !dbg !15444 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.dp, %umax.i.us, !dbg !15450
  br i1 %exitcond.not.i.us, label %.preheader74.preheader, label %.lr.ph161.a, !dbg !15436

.preheader74.preheader:                           ; preds = %.preheader75.a, %.preheader75.preheader.a
  br i1 %.not73162, label %.split69.us, label %.lr.ph164, !dbg !15453

.lr.ph161.a:                                      ; preds = %.preheader75.preheader.a, %.preheader75.a
  %.sroa.04.0.i.us160 = phi i64 [ %i.dp, %.preheader75.a ], [ %i.cz, %.preheader75.preheader.a ] ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.sroa.04.0.i.us160, !dbg !15463
  %i.dr = load i8, ptr %i.dq, align 1, !dbg !15463, !alias.scope !15410, !noalias !15465, !noundef !15
  %i.ds = add i64 %.sroa.04.0.i.us160, %i.m, !dbg !15466 ; 2 uses
  %i.dt = icmp ult i64 %i.ds, %i.o, !dbg !15467
  tail call void @llvm.assume(i1 %i.dt), !dbg !15472
  %i.du = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.ds, !dbg !15473
  %i.dv = load i8, ptr %i.du, align 1, !dbg !15474, !alias.scope !15408, !noalias !15429, !noundef !15
  %.not22.i.us = icmp eq i8 %i.dr, %i.dv, !dbg !15463
  br i1 %.not22.i.us, label %.preheader75.a, label %bb.ab, !dbg !15463

bb.ab:                                            ; preds = %.lr.ph161.a
  %.reass.i.us = add i64 %invariant.op.i, %.sroa.04.0.i.us160
  br label %.loopexit137, !dbg !15475

.preheader74:                                     ; preds = %bb.ac
  %.not73 = icmp eq i64 %i.dw, 0, !dbg !15476
  br i1 %.not73, label %.split69.us, label %.lr.ph164, !dbg !15453

.lr.ph164:                                        ; preds = %.preheader74.preheader, %.preheader74
  %.sroa.2.0.i.us163 = phi i64 [ %i.dw, %.preheader74 ], [ %i.cz, %.preheader74.preheader ]
  %i.dw = add i64 %.sroa.2.0.i.us163, -1, !dbg !15478 ; 5 uses
  br i1 %.first_iter, label %bb.ac, label %.split71.us, !dbg !15483

bb.ac:                                            ; preds = %.lr.ph164
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.dw, !dbg !15483
  %i.dy = load i8, ptr %i.dx, align 1, !dbg !15483, !alias.scope !15410, !noalias !15465, !noundef !15
  %i.dz = add i64 %i.dw, %i.m, !dbg !15485        ; 2 uses
  %i.ea = icmp ult i64 %i.dz, %i.o, !dbg !15486
  tail call void @llvm.assume(i1 %i.ea), !dbg !15490
  %i.eb = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.dz, !dbg !15491
  %i.ec = load i8, ptr %i.eb, align 1, !dbg !15492, !alias.scope !15408, !noalias !15429, !noundef !15
  %.not21.i.us = icmp eq i8 %i.dy, %i.ec, !dbg !15483
  br i1 %.not21.i.us, label %.preheader74, label %.loopexit137, !dbg !15483

.loopexit137:                                     ; preds = %bb.ac, %bb.aa, %bb.ab
  %.sink135 = phi i64 [ %i.df, %bb.aa ], [ %.reass.i.us, %bb.ab ], [ %i.de, %bb.ac ] ; 3 uses
  store i64 %.sink135, ptr %i.l, align 8, !dbg !15493, !alias.scope !15406, !noalias !15424
  %i.ed = add i64 %.sink135, %i.ct, !dbg !15416   ; 2 uses
  %i.ee = icmp ult i64 %i.ed, %i.o, !dbg !15418
  br i1 %i.ee, label %bb.z, label %.loopexit59, !dbg !15418

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %.sink.split.i
  %i.ef = phi i64 [ %.sink55.i, %.sink.split.i ], [ %i.cm, %.lr.ph.i ] ; 3 uses
  %i.eg = phi i64 [ %i.eo, %.sink.split.i ], [ %i.cu, %.lr.ph.i ]
  %i.eh = phi i64 [ %.sink136, %.sink.split.i ], [ %i.m, %.lr.ph.i ] ; 2 uses
  %.not.i46 = icmp eq i64 %i.m, %i.eh
  br i1 %.not.i46, label %bb.ad, label %.split.us, !dbg !15425

bb.ad:                                            ; preds = %.lr.ph.i.split
  %i.ei = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.eg, !dbg !15427
  %i.ej = load i8, ptr %i.ei, align 1, !dbg !15428, !alias.scope !15408, !noalias !15429, !noundef !15
  %i.ek = and i8 %i.ej, 63, !dbg !15430
  %i.el = zext nneg i8 %i.ek to i64, !dbg !15433
  %i.em = shl nuw i64 1, %i.el, !dbg !15434
  %i.en = and i64 %i.em, %i.cy, !dbg !15434
  %.not20.i = icmp eq i64 %i.en, 0, !dbg !15434
  br i1 %.not20.i, label %.sink.split.i, label %bb.ae, !dbg !15435

bb.ae:                                            ; preds = %bb.ad
  %..i.i = tail call i64 @llvm.umax.i64(i64 %i.ef, i64 %i.cz), !dbg !15494 ; 3 uses
  %umax.i = tail call i64 @llvm.umax.i64(i64 %..i.i, i64 range(i64 0, -9223372036854775808) %i.cs), !dbg !15495
  %exitcond.not.i155.not = icmp ult i64 %..i.i, %i.cs, !dbg !15450
  br i1 %exitcond.not.i155.not, label %.lr.ph, label %.preheader76.preheader, !dbg !15436

.sink.split.i:                                    ; preds = %bb.ah, %bb.ad, %bb.ai
  %.sink136 = phi i64 [ %i.df, %bb.ad ], [ %.reass.i, %bb.ai ], [ %i.de, %bb.ah ] ; 3 uses
  %.sink55.i = phi i64 [ 0, %bb.ad ], [ 0, %bb.ai ], [ %i.dc, %bb.ah ] ; 2 uses
  store i64 %.sink136, ptr %i.l, align 8, !dbg !15493, !alias.scope !15406, !noalias !15424
  store i64 %.sink55.i, ptr %i.cl, align 8, !dbg !15493, !alias.scope !15406, !noalias !15424
  %i.eo = add i64 %.sink136, %i.ct, !dbg !15416   ; 2 uses
  %i.ep = icmp ult i64 %i.eo, %i.o, !dbg !15418
  br i1 %i.ep, label %.lr.ph.i.split, label %.loopexit59, !dbg !15418

bb.af:                                            ; preds = %.lr.ph
  %i.eq = add i64 %.sroa.04.0.i156, 1, !dbg !15444 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.eq, %umax.i, !dbg !15450
  br i1 %exitcond.not.i, label %.preheader76.preheader, label %.lr.ph, !dbg !15436

.preheader76.preheader:                           ; preds = %bb.af, %bb.ae
  %i.er = icmp ult i64 %i.ef, %i.cz, !dbg !15476
  br i1 %i.er, label %.lr.ph158, label %.split69.us, !dbg !15453

.lr.ph:                                           ; preds = %bb.ae, %bb.af
  %.sroa.04.0.i156 = phi i64 [ %i.eq, %bb.af ], [ %..i.i, %bb.ae ] ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.sroa.04.0.i156, !dbg !15463
  %i.et = load i8, ptr %i.es, align 1, !dbg !15463, !alias.scope !15410, !noalias !15465, !noundef !15
  %i.eu = add i64 %.sroa.04.0.i156, %i.m, !dbg !15466 ; 2 uses
  %i.ev = icmp ult i64 %i.eu, %i.o, !dbg !15467
  tail call void @llvm.assume(i1 %i.ev), !dbg !15472
  %i.ew = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.eu, !dbg !15473
  %i.ex = load i8, ptr %i.ew, align 1, !dbg !15474, !alias.scope !15408, !noalias !15429, !noundef !15
  %.not22.i = icmp eq i8 %i.et, %i.ex, !dbg !15463
  br i1 %.not22.i, label %bb.af, label %bb.ai, !dbg !15463

.preheader76:                                     ; preds = %bb.ah
  %i.ey = icmp ult i64 %i.ef, %i.ez, !dbg !15476
  br i1 %i.ey, label %.lr.ph158, label %.split69.us, !dbg !15453

.split69.us:                                      ; preds = %.preheader76.preheader, %.preheader76, %.preheader74.preheader, %.preheader74
  store i64 %i.df, ptr %i.l, align 8, !dbg !15496, !alias.scope !15406, !noalias !15424
  br i1 %i.cn, label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_14RejectAndMatchECs2NzvFoTxuAy_2rg.exit, label %bb.ag, !dbg !15498

.lr.ph158:                                        ; preds = %.preheader76.preheader, %.preheader76
  %.sroa.2.0.i157 = phi i64 [ %i.ez, %.preheader76 ], [ %i.cz, %.preheader76.preheader ]
  %i.ez = add i64 %.sroa.2.0.i157, -1, !dbg !15478 ; 6 uses
  %i.fa = icmp ult i64 %i.ez, %i.cs, !dbg !15483
  br i1 %i.fa, label %bb.ah, label %.split71.us, !dbg !15483

bb.ag:                                            ; preds = %.split69.us
  store i64 0, ptr %i.cl, align 8, !dbg !15499, !alias.scope !15406, !noalias !15424
  br label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_14RejectAndMatchECs2NzvFoTxuAy_2rg.exit, !dbg !15500

bb.ah:                                            ; preds = %.lr.ph158
  %i.fb = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.ez, !dbg !15483
  %i.fc = load i8, ptr %i.fb, align 1, !dbg !15483, !alias.scope !15410, !noalias !15465, !noundef !15
  %i.fd = add i64 %i.ez, %i.m, !dbg !15485        ; 2 uses
  %i.fe = icmp ult i64 %i.fd, %i.o, !dbg !15486
  tail call void @llvm.assume(i1 %i.fe), !dbg !15490
  %i.ff = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.fd, !dbg !15491
  %i.fg = load i8, ptr %i.ff, align 1, !dbg !15492, !alias.scope !15408, !noalias !15429, !noundef !15
  %.not21.i = icmp eq i8 %i.fc, %i.fg, !dbg !15483
  br i1 %.not21.i, label %.preheader76, label %.sink.split.i, !dbg !15483

.split71.us:                                      ; preds = %.lr.ph158, %.lr.ph164
  %.us-phi72 = phi i64 [ %i.dw, %.lr.ph164 ], [ %i.ez, %.lr.ph158 ], !dbg !15483
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.us-phi72, i64 noundef range(i64 0, -9223372036854775808) %i.cs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #33, !dbg !15483, !noalias !15501
  unreachable, !dbg !15483

bb.ai:                                            ; preds = %.lr.ph
  %.reass.i = add i64 %invariant.op.i, %.sroa.04.0.i156
  br label %.sink.split.i, !dbg !15475

_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_14RejectAndMatchECs2NzvFoTxuAy_2rg.exit: ; preds = %.split69.us, %bb.ag
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15502
  store i64 %i.m, ptr %i.fh, align 8, !dbg !15502, !alias.scope !15402, !noalias !15503
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !15502
  store i64 %i.df, ptr %i.fi, align 8, !dbg !15502, !alias.scope !15402, !noalias !15503
  br label %bb.t, !dbg !15504

.split.us:                                        ; preds = %.lr.ph.i.split, %bb.z
  %.us-phi = phi i64 [ %i.di, %bb.z ], [ %i.eh, %.lr.ph.i.split ], !dbg !15502 ; 5 uses
  %.not = icmp ult i64 %.us-phi, %i.o, !dbg !15505
  br i1 %.not, label %.preheader58.preheader, label %.loopexit59, !dbg !15505

.loopexit59:                                      ; preds = %.sink.split.i, %.loopexit137, %.preheader58.preheader, %bb.aj, %bb.y, %.split.us
  %i.fj = phi i64 [ %.us-phi, %.split.us ], [ %i.o, %bb.y ], [ %.us-phi, %.preheader58.preheader ], [ %i.o, %.loopexit137 ], [ %.us-phi, %bb.aj ], [ %i.o, %.sink.split.i ], !dbg !15508
  %.sroa.018.0 = phi i64 [ %i.o, %.split.us ], [ %i.o, %bb.y ], [ %i.o, %bb.aj ], [ %i.o, %.loopexit137 ], [ %.sroa.013.0, %.preheader58.preheader ], [ %i.o, %.sink.split.i ], !dbg !15510 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15502
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !15502
  %..i = tail call noundef i64 @llvm.umax.i64(i64 %i.fj, i64 %.sroa.018.0), !dbg !15511
  store i64 %..i, ptr %i.l, align 8, !dbg !15515
  store i64 %i.m, ptr %i.fk, align 8, !dbg !15516
  store i64 %.sroa.018.0, ptr %i.fl, align 8, !dbg !15516
  br label %bb.t, !dbg !15517

.preheader58.preheader:                           ; preds = %.split.us, %bb.aj
  %.sroa.013.0 = phi i64 [ %i.fm, %bb.aj ], [ %.us-phi, %.split.us ], !dbg !15518 ; 3 uses
  %5 = getelementptr inbounds nuw i8, ptr %i.co, i64 %.sroa.013.0, !dbg !15519
  %6 = load i8, ptr %5, align 1, !dbg !15519, !noundef !15
  %7 = icmp sgt i8 %6, -65, !dbg !15521
  br i1 %7, label %.loopexit59, label %bb.aj, !dbg !15519

bb.aj:                                            ; preds = %.preheader58.preheader
  %i.fm = add nuw i64 %.sroa.013.0, 1, !dbg !15524 ; 2 uses
  %exitcond.not = icmp eq i64 %i.fm, %i.o, !dbg !15525
  br i1 %exitcond.not, label %.loopexit59, label %.preheader58.preheader, !dbg !15525
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef range(i8 0, 7) i8 @_RNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_15HyperlinkFormatNtB7_4Flag12doc_category(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #9 !dbg !15526 {
bb.a:
  ret i8 3, !dbg !15528
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_15HyperlinkFormatNtB7_4Flag12doc_variable(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #9 !dbg !15529 {
bb.a:
  ret { ptr, i64 } { ptr @665, i64 6 }, !dbg !15530
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_15HyperlinkFormatNtB7_4Flag9doc_short(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #9 !dbg !15531 {
bb.a:
  ret { ptr, i64 } { ptr @666, i64 29 }, !dbg !15532
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_15HyperlinkFormatNtB7_4Flag9is_switch(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #9 !dbg !15533 {
bb.a:
  ret i1 false, !dbg !15534
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_15HyperlinkFormatNtB7_4Flag9name_long(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #9 !dbg !15535 {
bb.a:
  ret { ptr, i64 } { ptr @667, i64 16 }, !dbg !15536
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef range(i8 0, 7) i8 @_RNvXsx_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_5IGlobNtB7_4Flag12doc_category(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #9 !dbg !15537 {
bb.a:
  ret i8 2, !dbg !15539
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXsx_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_5IGlobNtB7_4Flag12doc_variable(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #9 !dbg !15540 {
bb.a:
  ret { ptr, i64 } { ptr @265, i64 4 }, !dbg !15541
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXsx_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_5IGlobNtB7_4Flag8doc_long(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #9 !dbg !15542 {
bb.a:
  ret { ptr, i64 } { ptr @668, i64 413 }, !dbg !15543
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXsx_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_5IGlobNtB7_4Flag9doc_short(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #9 !dbg !15544 {
bb.a:
  ret { ptr, i64 } { ptr @669, i64 41 }, !dbg !15545
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXsx_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_5IGlobNtB7_4Flag9is_switch(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #9 !dbg !15546 {
bb.a:
  ret i1 false, !dbg !15547
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXsx_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_5IGlobNtB7_4Flag9name_long(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #9 !dbg !15548 {
bb.a:
  ret { ptr, i64 } { ptr @670, i64 5 }, !dbg !15549
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { i1, i8 } @_RNvXsy_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10IgnoreCaseNtB7_4Flag10name_short(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #9 !dbg !15550 {
bb.a:
  ret { i1, i8 } { i1 true, i8 105 }, !dbg !15552
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef range(i8 0, 7) i8 @_RNvXsy_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10IgnoreCaseNtB7_4Flag12doc_category(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #9 !dbg !15553 {
bb.a:
  ret i8 1, !dbg !15554
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXsy_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10IgnoreCaseNtB7_4Flag8doc_long(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #9 !dbg !15555 {
bb.a:
  ret { ptr, i64 } { ptr @671, i64 524 }, !dbg !15556
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXsy_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10IgnoreCaseNtB7_4Flag9doc_short(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #9 !dbg !15557 {
bb.a:
  ret { ptr, i64 } { ptr @672, i64 24 }, !dbg !15558
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXsy_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10IgnoreCaseNtB7_4Flag9is_switch(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #9 !dbg !15559 {
bb.a:
  ret i1 true, !dbg !15560
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXsy_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10IgnoreCaseNtB7_4Flag9name_long(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #9 !dbg !15561 {
bb.a:
  ret { ptr, i64 } { ptr @673, i64 11 }, !dbg !15562
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef range(i8 0, 7) i8 @_RNvXsz_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10IgnoreFileNtB7_4Flag12doc_category(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #9 !dbg !15563 {
bb.a:
  ret i8 2, !dbg !15565
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXsz_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10IgnoreFileNtB7_4Flag12doc_variable(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #9 !dbg !15566 {
bb.a:
  ret { ptr, i64 } { ptr @674, i64 4 }, !dbg !15567
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef range(i8 0, 5) i8 @_RNvXsz_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10IgnoreFileNtB7_4Flag15completion_type(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #9 !dbg !15568 {
bb.a:
  ret i8 1, !dbg !15569
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXsz_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10IgnoreFileNtB7_4Flag8doc_long(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #9 !dbg !15570 {
bb.a:
  ret { ptr, i64 } { ptr @675, i64 676 }, !dbg !15571
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXsz_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10IgnoreFileNtB7_4Flag9doc_short(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #9 !dbg !15572 {
bb.a:
  ret { ptr, i64 } { ptr @676, i64 32 }, !dbg !15573
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXsz_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10IgnoreFileNtB7_4Flag9is_switch(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #9 !dbg !15574 {
bb.a:
  ret i1 false, !dbg !15575
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXsz_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10IgnoreFileNtB7_4Flag9name_long(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #9 !dbg !15576 {
bb.a:
  ret { ptr, i64 } { ptr @677, i64 11 }, !dbg !15577
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtBb_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEjEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_jNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Es_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTOhEE9call_onceCs2NzvFoTxuAy_2rg(ptr noundef nonnull %0) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !15578 {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEjEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_jNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Es_0Cs2NzvFoTxuAy_2rg.exit unwind label %bb.b, !dbg !15579

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2NzvFoTxuAy_2rg.exit.i.i.i unwind label %bb.c, !dbg !15586

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !dbg !15579
  unreachable, !dbg !15579

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2NzvFoTxuAy_2rg.exit.i.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !15579

_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEjEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_jNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Es_0Cs2NzvFoTxuAy_2rg.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0), !dbg !15588
  ret void, !dbg !15590
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtBb_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringuEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Es_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTOhEE9call_onceCs2NzvFoTxuAy_2rg(ptr noundef nonnull %0) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !15591 {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Es_0Cs2NzvFoTxuAy_2rg.exit unwind label %bb.b, !dbg !15592

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2NzvFoTxuAy_2rg.exit.i.i.i.i unwind label %bb.c, !dbg !15600

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !dbg !15592
  unreachable, !dbg !15592

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2NzvFoTxuAy_2rg.exit.i.i.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !15592

_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Es_0Cs2NzvFoTxuAy_2rg.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !dbg !15602
  ret void, !dbg !15604
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_RNvYNCNKNvNvNtNtNtCsG258MDvU3F_3std4sync4mpmc5waker17current_thread_id5DUMMY0s_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1n_6option6OptionQIB22_hEEEE9call_onceCs2NzvFoTxuAy_2rg(ptr noalias nofree readnone captures(none) %0) unnamed_addr #13 personality ptr @rust_eh_personality !dbg !15605 {
end_hunk_0
begin_hunk_1_@llvm.umin.i64
!15186 = !DINamespace(name: "{impl#30}", scope: !11499)
!15187 = !DILocation(line: 2665, column: 6, scope: !15185)
!15188 = distinct !DISubprogram(name: "name_negated", linkageName: "_RNvXss_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_7HeadingNtB7_4Flag12name_negated", scope: !15186, file: !11497, line: 2660, type: !14, scopeLine: 2660, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15189 = !DILocation(line: 2662, column: 6, scope: !15188)
!15190 = distinct !DISubprogram(name: "doc_long", linkageName: "_RNvXss_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_7HeadingNtB7_4Flag8doc_long", scope: !15186, file: !11497, line: 2669, type: !14, scopeLine: 2669, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15191 = !DILocation(line: 2681, column: 6, scope: !15190)
!15192 = distinct !DISubprogram(name: "doc_short", linkageName: "_RNvXss_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_7HeadingNtB7_4Flag9doc_short", scope: !15186, file: !11497, line: 2666, type: !14, scopeLine: 2666, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15193 = !DILocation(line: 2668, column: 6, scope: !15192)
!15194 = distinct !DISubprogram(name: "is_switch", linkageName: "_RNvXss_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_7HeadingNtB7_4Flag9is_switch", scope: !15186, file: !11497, line: 2654, type: !14, scopeLine: 2654, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15195 = !DILocation(line: 2656, column: 6, scope: !15194)
!15196 = distinct !DISubprogram(name: "name_long", linkageName: "_RNvXss_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_7HeadingNtB7_4Flag9name_long", scope: !15186, file: !11497, line: 2657, type: !14, scopeLine: 2657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15197 = !DILocation(line: 2659, column: 6, scope: !15196)
!15198 = distinct !DISubprogram(name: "name_short", linkageName: "_RNvXst_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_4HelpNtB7_4Flag10name_short", scope: !15199, file: !11497, line: 2719, type: !14, scopeLine: 2719, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15199 = !DINamespace(name: "{impl#31}", scope: !11499)
!15200 = !DILocation(line: 2721, column: 6, scope: !15198)
!15201 = distinct !DISubprogram(name: "doc_category", linkageName: "_RNvXst_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_4HelpNtB7_4Flag12doc_category", scope: !15199, file: !11497, line: 2722, type: !14, scopeLine: 2722, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15202 = !DILocation(line: 2724, column: 6, scope: !15201)
!15203 = distinct !DISubprogram(name: "doc_long", linkageName: "_RNvXst_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_4HelpNtB7_4Flag8doc_long", scope: !15199, file: !11497, line: 2728, type: !14, scopeLine: 2728, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15204 = !DILocation(line: 2738, column: 6, scope: !15203)
!15205 = distinct !DISubprogram(name: "doc_short", linkageName: "_RNvXst_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_4HelpNtB7_4Flag9doc_short", scope: !15199, file: !11497, line: 2725, type: !14, scopeLine: 2725, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15206 = !DILocation(line: 2727, column: 6, scope: !15205)
!15207 = distinct !DISubprogram(name: "is_switch", linkageName: "_RNvXst_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_4HelpNtB7_4Flag9is_switch", scope: !15199, file: !11497, line: 2713, type: !14, scopeLine: 2713, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15208 = !DILocation(line: 2715, column: 6, scope: !15207)
!15209 = distinct !DISubprogram(name: "name_long", linkageName: "_RNvXst_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_4HelpNtB7_4Flag9name_long", scope: !15199, file: !11497, line: 2716, type: !14, scopeLine: 2716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15210 = !DILocation(line: 2718, column: 6, scope: !15209)
!15211 = distinct !DISubprogram(name: "name_short", linkageName: "_RNvXsu_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_6HiddenNtB7_4Flag10name_short", scope: !15212, file: !11497, line: 2776, type: !14, scopeLine: 2776, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15212 = !DINamespace(name: "{impl#32}", scope: !11499)
!15213 = !DILocation(line: 2778, column: 6, scope: !15211)
!15214 = distinct !DISubprogram(name: "doc_category", linkageName: "_RNvXsu_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_6HiddenNtB7_4Flag12doc_category", scope: !15212, file: !11497, line: 2785, type: !14, scopeLine: 2785, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15215 = !DILocation(line: 2787, column: 6, scope: !15214)
!15216 = distinct !DISubprogram(name: "name_negated", linkageName: "_RNvXsu_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_6HiddenNtB7_4Flag12name_negated", scope: !15212, file: !11497, line: 2782, type: !14, scopeLine: 2782, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15217 = !DILocation(line: 2784, column: 6, scope: !15216)
!15218 = distinct !DISubprogram(name: "doc_long", linkageName: "_RNvXsu_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_6HiddenNtB7_4Flag8doc_long", scope: !15212, file: !11497, line: 2791, type: !14, scopeLine: 2791, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15219 = !DILocation(line: 2808, column: 6, scope: !15218)
!15220 = distinct !DISubprogram(name: "doc_short", linkageName: "_RNvXsu_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_6HiddenNtB7_4Flag9doc_short", scope: !15212, file: !11497, line: 2788, type: !14, scopeLine: 2788, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15221 = !DILocation(line: 2790, column: 6, scope: !15220)
!15222 = distinct !DISubprogram(name: "is_switch", linkageName: "_RNvXsu_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_6HiddenNtB7_4Flag9is_switch", scope: !15212, file: !11497, line: 2773, type: !14, scopeLine: 2773, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15223 = !DILocation(line: 2775, column: 6, scope: !15222)
!15224 = distinct !DISubprogram(name: "name_long", linkageName: "_RNvXsu_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_6HiddenNtB7_4Flag9name_long", scope: !15212, file: !11497, line: 2779, type: !14, scopeLine: 2779, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15225 = !DILocation(line: 2781, column: 6, scope: !15224)
!15226 = distinct !DISubprogram(name: "doc_category", linkageName: "_RNvXsv_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_11HostnameBinNtB7_4Flag12doc_category", scope: !15227, file: !11497, line: 2849, type: !14, scopeLine: 2849, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15227 = !DINamespace(name: "{impl#33}", scope: !11499)
!15228 = !DILocation(line: 2851, column: 6, scope: !15226)
!15229 = distinct !DISubprogram(name: "doc_variable", linkageName: "_RNvXsv_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_11HostnameBinNtB7_4Flag12doc_variable", scope: !15227, file: !11497, line: 2846, type: !14, scopeLine: 2846, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15230 = !DILocation(line: 2848, column: 6, scope: !15229)
!15231 = distinct !DISubprogram(name: "completion_type", linkageName: "_RNvXsv_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_11HostnameBinNtB7_4Flag15completion_type", scope: !15227, file: !11497, line: 2871, type: !14, scopeLine: 2871, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15232 = !DILocation(line: 2873, column: 6, scope: !15231)
!15233 = distinct !DISubprogram(name: "doc_long", linkageName: "_RNvXsv_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_11HostnameBinNtB7_4Flag8doc_long", scope: !15227, file: !11497, line: 2855, type: !14, scopeLine: 2855, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15234 = !DILocation(line: 2870, column: 6, scope: !15233)
!15235 = distinct !DISubprogram(name: "doc_short", linkageName: "_RNvXsv_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_11HostnameBinNtB7_4Flag9doc_short", scope: !15227, file: !11497, line: 2852, type: !14, scopeLine: 2852, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15236 = !DILocation(line: 2854, column: 6, scope: !15235)
!15237 = distinct !DISubprogram(name: "is_switch", linkageName: "_RNvXsv_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_11HostnameBinNtB7_4Flag9is_switch", scope: !15227, file: !11497, line: 2840, type: !14, scopeLine: 2840, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15238 = !DILocation(line: 2842, column: 6, scope: !15237)
!15239 = distinct !DISubprogram(name: "name_long", linkageName: "_RNvXsv_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_11HostnameBinNtB7_4Flag9name_long", scope: !15227, file: !11497, line: 2843, type: !14, scopeLine: 2843, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15240 = !DILocation(line: 2845, column: 6, scope: !15239)
!15241 = distinct !DISubprogram(name: "next", linkageName: "_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next", scope: !1292, file: !40, line: 1138, type: !14, scopeLine: 1138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15242 = !DILocation(line: 1139, column: 15, scope: !15241)
!15243 = !DILocation(line: 1139, column: 9, scope: !15241)
!15244 = !DILocation(line: 1141, column: 20, scope: !15245)
!15245 = distinct !DILexicalBlock(scope: !15241, file: !40, line: 1140, column: 13)
!15246 = !DILocation(line: 1161, column: 29, scope: !15247)
!15247 = distinct !DILexicalBlock(scope: !15241, file: !40, line: 1160, column: 13)
!15248 = !DILocation(line: 1162, column: 27, scope: !15249)
!15249 = distinct !DILexicalBlock(scope: !15247, file: !40, line: 1161, column: 17)
!15250 = !DILocation(line: 1163, column: 20, scope: !15251)
!15251 = distinct !DILexicalBlock(scope: !15249, file: !40, line: 1162, column: 17)
!15252 = !DILocation(line: 1183, column: 20, scope: !15253)
!15253 = distinct !DILexicalBlock(scope: !15241, file: !40, line: 1177, column: 13)
!15254 = !DILocation(line: 1183, column: 41, scope: !15253)
!15255 = !DILocation(line: 1145, column: 32, scope: !15245)
!15256 = !DILocation(line: 1146, column: 17, scope: !15257)
!15257 = distinct !DILexicalBlock(scope: !15245, file: !40, line: 1145, column: 17)
!15258 = !DILocation(line: 1147, column: 27, scope: !15257)
!15259 = !DILocation(line: 1148, column: 23, scope: !15260)
!15260 = distinct !DILexicalBlock(scope: !15257, file: !40, line: 1147, column: 17)
!15261 = !DILocation(line: 380, column: 12, scope: !15262, inlinedAt: !15263)
!15262 = distinct !DISubprogram(name: "is_char_boundary", linkageName: "_RNvMNtCskKLDkoKarTP_4core3stre16is_char_boundary", scope: !11, file: !10, line: 375, type: !14, scopeLine: 375, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15263 = distinct !DILocation(line: 493, column: 18, scope: !15264, inlinedAt: !15266)
!15264 = distinct !DISubprogram(name: "get", linkageName: "_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get", scope: !15265, file: !414, line: 492, type: !14, scopeLine: 492, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15265 = !DINamespace(name: "{impl#11}", scope: !417)
!15266 = distinct !DILocation(line: 526, column: 20, scope: !15267, inlinedAt: !15269)
!15267 = distinct !DILexicalBlock(scope: !15268, file: !414, line: 525, column: 9)
!15268 = distinct !DISubprogram(name: "index", linkageName: "_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE5index", scope: !15265, file: !414, line: 524, type: !14, scopeLine: 524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15269 = !DILocation(line: 63, column: 15, scope: !15270, inlinedAt: !15272)
!15270 = distinct !DISubprogram(name: "index<core::ops::range::RangeFrom<usize>>", linkageName: "_RNvXs2_NtNtCskKLDkoKarTP_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCs2NzvFoTxuAy_2rg", scope: !15271, file: !414, line: 62, type: !14, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15271 = !DINamespace(name: "{impl#4}", scope: !417)
!15272 = !DILocation(line: 1148, column: 36, scope: !15260)
!15273 = !DILocation(line: 384, column: 12, scope: !15262, inlinedAt: !15263)
!15274 = !DILocation(line: 394, column: 13, scope: !15262, inlinedAt: !15263)
!15275 = !DILocation(line: 493, column: 12, scope: !15264, inlinedAt: !15266)
!15276 = !DILocation(line: 396, column: 13, scope: !15262, inlinedAt: !15263)
!15277 = !{!15278}
!15278 = distinct !{!15278, !15279, !"_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!15279 = distinct !{!15279, !"_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!15280 = !DILocation(line: 1231, column: 9, scope: !15281, inlinedAt: !15283)
!15281 = distinct !DISubprogram(name: "is_utf8_char_boundary", linkageName: "_RNvMs4_NtCskKLDkoKarTP_4core3numh21is_utf8_char_boundary", scope: !15282, file: !5583, line: 1229, type: !14, scopeLine: 1229, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15282 = !DINamespace(name: "{impl#6}", scope: !1427)
!15283 = distinct !DILocation(line: 396, column: 36, scope: !15262, inlinedAt: !15263)
!15284 = !DILocation(line: 872, column: 18, scope: !15285, inlinedAt: !15286)
!15285 = distinct !DISubprogram(name: "add<u8>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3ptr9const_ptrPh3addCs2NzvFoTxuAy_2rg", scope: !93, file: !91, line: 838, type: !14, scopeLine: 838, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15286 = distinct !DILocation(line: 222, column: 28, scope: !15287, inlinedAt: !15290)
!15287 = distinct !DILexicalBlock(scope: !15288, file: !414, line: 221, column: 13)
!15288 = distinct !DILexicalBlock(scope: !15289, file: !414, line: 200, column: 9)
!15289 = distinct !DISubprogram(name: "get_unchecked", linkageName: "_RNvXs5_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE13get_unchecked", scope: !416, file: !414, line: 199, type: !14, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15290 = distinct !DILocation(line: 515, column: 36, scope: !15291, inlinedAt: !15293)
!15291 = distinct !DILexicalBlock(scope: !15292, file: !414, line: 513, column: 9)
!15292 = distinct !DISubprogram(name: "get_unchecked", linkageName: "_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE13get_unchecked", scope: !15265, file: !414, line: 512, type: !14, scopeLine: 512, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15293 = distinct !DILocation(line: 496, column: 34, scope: !15264, inlinedAt: !15266)
!15294 = !DILocation(line: 1663, column: 9, scope: !50, inlinedAt: !15295)
!15295 = distinct !DILocation(line: 180, column: 28, scope: !55, inlinedAt: !15296)
!15296 = distinct !DILocation(line: 37, column: 20, scope: !61, inlinedAt: !15297)
!15297 = distinct !DILocation(line: 42, column: 18, scope: !15298, inlinedAt: !15299)
!15298 = distinct !DISubprogram(name: "next", linkageName: "_RNvXNtNtCskKLDkoKarTP_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next", scope: !67, file: !66, line: 39, type: !14, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15299 = !DILocation(line: 1148, column: 52, scope: !15260)
!15300 = !DILocation(line: 180, column: 28, scope: !55, inlinedAt: !15296)
!15301 = !DILocation(line: 37, column: 13, scope: !61, inlinedAt: !15297)
!15302 = !{!15303}
!15303 = distinct !{!15303, !15304, !"_RINvNtNtCskKLDkoKarTP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs2NzvFoTxuAy_2rg: argument 0"}
!15304 = distinct !{!15304, !"_RINvNtNtCskKLDkoKarTP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs2NzvFoTxuAy_2rg"}
!15305 = !DILocation(line: 38, column: 8, scope: !125, inlinedAt: !15297)
!15306 = !DILocation(line: 627, column: 28, scope: !107, inlinedAt: !15307)
!15307 = distinct !DILocation(line: 185, column: 40, scope: !55, inlinedAt: !15296)
!15308 = !DILocation(line: 11, column: 5, scope: !127, inlinedAt: !15309)
!15309 = distinct !DILocation(line: 45, column: 16, scope: !125, inlinedAt: !15297)
!15310 = !DILocation(line: 1663, column: 9, scope: !50, inlinedAt: !15311)
!15311 = distinct !DILocation(line: 180, column: 28, scope: !55, inlinedAt: !15312)
!15312 = distinct !DILocation(line: 48, column: 29, scope: !132, inlinedAt: !15297)
!15313 = !DILocation(line: 180, column: 28, scope: !55, inlinedAt: !15312)
!15314 = !DILocation(line: 48, column: 22, scope: !132, inlinedAt: !15297)
!15315 = !DILocation(line: 17, column: 5, scope: !138, inlinedAt: !15316)
!15316 = distinct !DILocation(line: 49, column: 18, scope: !140, inlinedAt: !15297)
!15317 = !DILocation(line: 17, column: 17, scope: !138, inlinedAt: !15316)
!15318 = !DILocation(line: 50, column: 8, scope: !143, inlinedAt: !15297)
!15319 = !DILocation(line: 39, column: 21, scope: !125, inlinedAt: !15297)
!15320 = !DILocation(line: 0, scope: !146, inlinedAt: !15297)
!15321 = !DILocation(line: 627, column: 28, scope: !107, inlinedAt: !15322)
!15322 = distinct !DILocation(line: 185, column: 40, scope: !55, inlinedAt: !15312)
!15323 = !DILocation(line: 1663, column: 9, scope: !50, inlinedAt: !15324)
!15324 = distinct !DILocation(line: 180, column: 28, scope: !55, inlinedAt: !15325)
!15325 = distinct !DILocation(line: 55, column: 33, scope: !143, inlinedAt: !15297)
!15326 = !DILocation(line: 180, column: 28, scope: !55, inlinedAt: !15325)
!15327 = !DILocation(line: 55, column: 26, scope: !143, inlinedAt: !15297)
!15328 = !DILocation(line: 17, column: 5, scope: !138, inlinedAt: !15329)
!15329 = distinct !DILocation(line: 56, column: 19, scope: !157, inlinedAt: !15297)
!15330 = !DILocation(line: 17, column: 17, scope: !138, inlinedAt: !15329)
!15331 = !DILocation(line: 57, column: 14, scope: !160, inlinedAt: !15297)
!15332 = !DILocation(line: 57, column: 9, scope: !160, inlinedAt: !15297)
!15333 = !DILocation(line: 58, column: 12, scope: !160, inlinedAt: !15297)
!15334 = !DILocation(line: 627, column: 28, scope: !107, inlinedAt: !15335)
!15335 = distinct !DILocation(line: 185, column: 40, scope: !55, inlinedAt: !15325)
!15336 = !DILocation(line: 1663, column: 9, scope: !50, inlinedAt: !15337)
!15337 = distinct !DILocation(line: 180, column: 28, scope: !55, inlinedAt: !15338)
!15338 = distinct !DILocation(line: 63, column: 37, scope: !160, inlinedAt: !15297)
!15339 = !DILocation(line: 180, column: 28, scope: !55, inlinedAt: !15338)
!15340 = !DILocation(line: 63, column: 30, scope: !160, inlinedAt: !15297)
!15341 = !DILocation(line: 64, column: 18, scope: !171, inlinedAt: !15297)
!15342 = !DILocation(line: 17, column: 5, scope: !138, inlinedAt: !15343)
!15343 = distinct !DILocation(line: 64, column: 37, scope: !171, inlinedAt: !15297)
!15344 = !DILocation(line: 17, column: 17, scope: !138, inlinedAt: !15343)
!15345 = !DILocation(line: 64, column: 13, scope: !171, inlinedAt: !15297)
!15346 = !DILocation(line: 58, column: 9, scope: !160, inlinedAt: !15297)
!15347 = !DILocation(line: 528, column: 21, scope: !15267, inlinedAt: !15269)
!15348 = !DILocation(line: 34, column: 9, scope: !15349, inlinedAt: !15350)
!15349 = distinct !DISubprogram(name: "from_u32_unchecked", linkageName: "_RNvNtNtCskKLDkoKarTP_4core4char7convert18from_u32_unchecked", scope: !182, file: !181, line: 26, type: !14, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15350 = !DILocation(line: 245, column: 18, scope: !15351, inlinedAt: !15352)
!15351 = distinct !DISubprogram(name: "from_u32_unchecked", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core4char7methodsc18from_u32_unchecked", scope: !187, file: !186, line: 243, type: !14, scopeLine: 243, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15352 = !DILocation(line: 42, column: 59, scope: !15353, inlinedAt: !15354)
!15353 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvXNtNtCskKLDkoKarTP_4core3str4iterNtB4_5CharsNtNtNtNtB8_4iter6traits8iterator8Iterator4next0Cs2NzvFoTxuAy_2rg", scope: !191, file: !66, line: 42, type: !14, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15354 = !DILocation(line: 1165, column: 29, scope: !15355, inlinedAt: !15357)
!15355 = distinct !DILexicalBlock(scope: !15356, file: !194, line: 1165, column: 13)
!15356 = distinct !DISubprogram(name: "map<u32, char, core::str::iter::{impl#0}::next::{closure_env#0}>", linkageName: "_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionmE3mapcNCNvXNtNtB5_3str4iterNtBU_5CharsNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECs2NzvFoTxuAy_2rg", scope: !196, file: !194, line: 1160, type: !14, scopeLine: 1160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15357 = !DILocation(line: 42, column: 50, scope: !15298, inlinedAt: !15299)
!15358 = !DILocation(line: 1149, column: 26, scope: !15260)
!15359 = !DILocation(line: 1151, column: 25, scope: !15260)
!15360 = !DILocation(line: 1152, column: 25, scope: !15260)
!15361 = !DILocation(line: 1149, column: 38, scope: !15260)
!15362 = !DILocation(line: 1149, column: 64, scope: !15260)
!15363 = !DILocation(line: 2490, column: 9, scope: !15364, inlinedAt: !15365)
!15364 = distinct !DISubprogram(name: "len_utf8", linkageName: "_RNvNtNtCskKLDkoKarTP_4core4char7methods8len_utf8", scope: !188, file: !186, line: 2488, type: !14, scopeLine: 2488, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15365 = !DILocation(line: 668, column: 9, scope: !15366, inlinedAt: !15367)
!15366 = distinct !DISubprogram(name: "len_utf8", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core4char7methodsc8len_utf8", scope: !187, file: !186, line: 667, type: !14, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15367 = !DILocation(line: 1155, column: 49, scope: !15368)
!15368 = distinct !DILexicalBlock(scope: !15260, file: !40, line: 1154, column: 21)
!15369 = !DILocation(line: 2491, column: 9, scope: !15364, inlinedAt: !15365)
!15370 = !DILocation(line: 2492, column: 9, scope: !15364, inlinedAt: !15365)
!15371 = !DILocation(line: 0, scope: !15364, inlinedAt: !15365)
!15372 = !DILocation(line: 1155, column: 25, scope: !15368)
!15373 = !DILocation(line: 1156, column: 25, scope: !15368)
!15374 = !DILocation(line: 1157, column: 21, scope: !15260)
!15375 = !DILocation(line: 0, scope: !15241)
!15376 = !DILocation(line: 1202, column: 6, scope: !15241)
!15377 = !DILocation(line: 1166, column: 20, scope: !15251)
!15378 = !DILocation(line: 1166, column: 34, scope: !15251)
!15379 = !DILocation(line: 0, scope: !15251)
!15380 = !DILocation(line: 482, column: 12, scope: !15381, inlinedAt: !15382)
!15381 = distinct !DISubprogram(name: "ceil_char_boundary", linkageName: "_RNvMNtCskKLDkoKarTP_4core3stre18ceil_char_boundary", scope: !11, file: !10, line: 481, type: !14, scopeLine: 481, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15382 = !DILocation(line: 1172, column: 45, scope: !15251)
!15383 = !DILocation(line: 1167, column: 21, scope: !15251)
!15384 = !DILocation(line: 1168, column: 21, scope: !15251)
!15385 = !DILocation(line: 1166, column: 17, scope: !15251)
!15386 = !DILocation(line: 0, scope: !15381, inlinedAt: !15382)
!15387 = !DILocation(line: 1173, column: 21, scope: !15388)
!15388 = distinct !DILexicalBlock(scope: !15251, file: !40, line: 1172, column: 21)
!15389 = !DILocation(line: 1174, column: 21, scope: !15388)
!15390 = !DILocation(line: 1172, scope: !15251)
!15391 = !DILocation(line: 486, column: 20, scope: !15392, inlinedAt: !15382)
!15392 = distinct !DILexicalBlock(scope: !15381, file: !10, line: 485, column: 13)
!15393 = !DILocation(line: 1231, column: 9, scope: !15394, inlinedAt: !15395)
!15394 = distinct !DISubprogram(name: "is_utf8_char_boundary", linkageName: "_RNvMs4_NtCskKLDkoKarTP_4core3numh21is_utf8_char_boundary", scope: !15282, file: !5583, line: 1229, type: !14, scopeLine: 1229, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15395 = !DILocation(line: 486, column: 39, scope: !15392, inlinedAt: !15382)
!15396 = !DILocation(line: 487, column: 17, scope: !15392, inlinedAt: !15382)
!15397 = !DILocation(line: 488, column: 20, scope: !15392, inlinedAt: !15382)
!15398 = !DILocation(line: 1186, column: 31, scope: !15253)
!15399 = !DILocation(line: 1188, column: 21, scope: !15400)
!15400 = distinct !DILexicalBlock(scope: !15253, file: !40, line: 1186, column: 17)
!15401 = !DILocation(line: 1189, column: 21, scope: !15400)
!15402 = !{!15403}
!15403 = distinct !{!15403, !15404, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_14RejectAndMatchECs2NzvFoTxuAy_2rg: argument 0"}
!15404 = distinct !{!15404, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_14RejectAndMatchECs2NzvFoTxuAy_2rg"}
!15405 = !DILocation(line: 1187, column: 32, scope: !15400)
!15406 = !{!15407}
!15407 = distinct !{!15407, !15404, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_14RejectAndMatchECs2NzvFoTxuAy_2rg: argument 1"}
!15408 = !{!15409}
!15409 = distinct !{!15409, !15404, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_14RejectAndMatchECs2NzvFoTxuAy_2rg: argument 2"}
!15410 = !{!15411}
!15411 = distinct !{!15411, !15404, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_14RejectAndMatchECs2NzvFoTxuAy_2rg: argument 3"}
!15412 = !DILocation(line: 1547, column: 27, scope: !15413, inlinedAt: !15415)
!15413 = distinct !DILexicalBlock(scope: !15414, file: !40, line: 1546, column: 9)
!15414 = distinct !DISubprogram(name: "next<core::str::pattern::RejectAndMatch>", linkageName: "_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_14RejectAndMatchECs2NzvFoTxuAy_2rg", scope: !1312, file: !40, line: 1541, type: !14, scopeLine: 1541, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15415 = distinct !DILocation(line: 1187, column: 32, scope: !15400)
!15416 = !DILocation(line: 1552, column: 48, scope: !15417, inlinedAt: !15415)
!15417 = distinct !DILexicalBlock(scope: !15413, file: !40, line: 1547, column: 9)
!15418 = !DILocation(line: 184, column: 12, scope: !15419, inlinedAt: !15420)
!15419 = distinct !DISubprogram(name: "get<u8>", linkageName: "_RNvXs0_NtNtCskKLDkoKarTP_4core5slice5indexjINtB5_10SliceIndexShE3getCs2NzvFoTxuAy_2rg", scope: !1381, file: !1325, line: 183, type: !14, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15420 = distinct !DILocation(line: 576, column: 15, scope: !15421, inlinedAt: !15422)
!15421 = distinct !DISubprogram(name: "get<u8, usize>", linkageName: "_RINvMNtCskKLDkoKarTP_4core5sliceSh3getjECs2NzvFoTxuAy_2rg", scope: !33, file: !32, line: 572, type: !14, scopeLine: 572, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15422 = distinct !DILocation(line: 1552, column: 44, scope: !15417, inlinedAt: !15415)
!15423 = !DILocation(line: 1177, column: 37, scope: !15241)
!15424 = !{!15403, !15409, !15411}
!15425 = !DILocation(line: 1560, column: 16, scope: !15426, inlinedAt: !15415)
!15426 = distinct !DILexicalBlock(scope: !15417, file: !40, line: 1552, column: 13)
!15427 = !DILocation(line: 186, column: 27, scope: !15419, inlinedAt: !15420)
!15428 = !DILocation(line: 1553, column: 23, scope: !15417, inlinedAt: !15415)
!15429 = !{!15403, !15407, !15411}
!15430 = !DILocation(line: 1532, column: 27, scope: !15431, inlinedAt: !15432)
!15431 = distinct !DISubprogram(name: "byteset_contains", linkageName: "_RNvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB5_14TwoWaySearcher16byteset_contains", scope: !1312, file: !40, line: 1531, type: !14, scopeLine: 1531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15432 = distinct !DILocation(line: 1565, column: 22, scope: !15426, inlinedAt: !15415)
!15433 = !DILocation(line: 1532, column: 26, scope: !15431, inlinedAt: !15432)
!15434 = !DILocation(line: 1532, column: 9, scope: !15431, inlinedAt: !15432)
!15435 = !DILocation(line: 1565, column: 17, scope: !15426, inlinedAt: !15415)
!15436 = !DILocation(line: 1100, column: 12, scope: !15437, inlinedAt: !15438)
!15437 = distinct !DISubprogram(name: "spec_next<usize>", linkageName: "_RNvXs3_NtNtCskKLDkoKarTP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl9spec_nextCs2NzvFoTxuAy_2rg", scope: !1412, file: !1411, line: 1099, type: !14, scopeLine: 1099, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15438 = distinct !DILocation(line: 1185, column: 14, scope: !15439, inlinedAt: !15440)
!15439 = distinct !DISubprogram(name: "next<usize>", linkageName: "_RNvXs4_NtNtCskKLDkoKarTP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg", scope: !1417, file: !1411, line: 1184, type: !14, scopeLine: 1184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15440 = distinct !DILocation(line: 1576, column: 22, scope: !15441, inlinedAt: !15415)
!15441 = !DILexicalBlockFile(scope: !15442, file: !40, discriminator: 2)
!15442 = distinct !DILexicalBlock(scope: !15443, file: !40, line: 1576, column: 13)
!15443 = distinct !DILexicalBlock(scope: !15426, file: !40, line: 1574, column: 13)
!15444 = !DILocation(line: 1043, column: 17, scope: !15445, inlinedAt: !15446)
!15445 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCskKLDkoKarTP_4core3numj13unchecked_add", scope: !1426, file: !1425, line: 1031, type: !14, scopeLine: 1031, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15446 = distinct !DILocation(line: 265, column: 28, scope: !15447, inlinedAt: !15448)
!15447 = distinct !DISubprogram(name: "forward_unchecked", linkageName: "_RNvXsL_NtNtCskKLDkoKarTP_4core4iter5rangejNtB5_4Step17forward_unchecked", scope: !1430, file: !1411, line: 263, type: !14, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15448 = distinct !DILocation(line: 1103, column: 35, scope: !15449, inlinedAt: !15438)
!15449 = distinct !DILexicalBlock(scope: !15437, file: !1411, line: 1101, column: 13)
!15450 = !DILocation(line: 2192, column: 50, scope: !15451, inlinedAt: !15452)
!15451 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXsU_NtNtCskKLDkoKarTP_4core3cmp5implsjNtB7_10PartialOrd2lt", scope: !1407, file: !1399, line: 2192, type: !14, scopeLine: 2192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15452 = distinct !DILocation(line: 1100, column: 12, scope: !15437, inlinedAt: !15438)
!15453 = !DILocation(line: 1142, column: 12, scope: !15454, inlinedAt: !15455)
!15454 = distinct !DISubprogram(name: "spec_next_back<usize>", linkageName: "_RNvXs3_NtNtCskKLDkoKarTP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl14spec_next_backCs2NzvFoTxuAy_2rg", scope: !1412, file: !1411, line: 1141, type: !14, scopeLine: 1141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15455 = distinct !DILocation(line: 1316, column: 14, scope: !15456, inlinedAt: !15457)
!15456 = distinct !DISubprogram(name: "next_back<usize>", linkageName: "_RNvXs5_NtNtCskKLDkoKarTP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits12double_ended19DoubleEndedIterator9next_backCs2NzvFoTxuAy_2rg", scope: !1438, file: !1411, line: 1315, type: !14, scopeLine: 1315, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15457 = distinct !DILocation(line: 53, column: 19, scope: !15458, inlinedAt: !15459)
!15458 = distinct !DISubprogram(name: "next<core::ops::range::Range<usize>>", linkageName: "_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3revINtB4_3RevINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg", scope: !1442, file: !1441, line: 52, type: !14, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15459 = distinct !DILocation(line: 1594, column: 22, scope: !15460, inlinedAt: !15415)
!15460 = !DILexicalBlockFile(scope: !15461, file: !40, discriminator: 2)
!15461 = distinct !DILexicalBlock(scope: !15462, file: !40, line: 1594, column: 13)
!15462 = distinct !DILexicalBlock(scope: !15443, file: !40, line: 1593, column: 13)
!15463 = !DILocation(line: 1583, column: 20, scope: !15464, inlinedAt: !15415)
!15464 = distinct !DILexicalBlock(scope: !15442, file: !40, line: 1576, column: 13)
!15465 = !{!15403, !15407, !15409}
!15466 = !DILocation(line: 1583, column: 66, scope: !15464, inlinedAt: !15415)
!15467 = !DILocation(line: 218, column: 39, scope: !15468, inlinedAt: !15469)
!15468 = distinct !DISubprogram(name: "get_unchecked<u8>", linkageName: "_RNvXs0_NtNtCskKLDkoKarTP_4core5slice5indexjINtB5_10SliceIndexShE13get_uncheckedCs2NzvFoTxuAy_2rg", scope: !1381, file: !1325, line: 205, type: !14, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15469 = distinct !DILocation(line: 647, column: 26, scope: !15470, inlinedAt: !15471)
!15470 = distinct !DISubprogram(name: "get_unchecked<u8, usize>", linkageName: "_RINvMNtCskKLDkoKarTP_4core5sliceSh13get_uncheckedjECs2NzvFoTxuAy_2rg", scope: !33, file: !32, line: 640, type: !14, scopeLine: 640, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15471 = distinct !DILocation(line: 1583, column: 52, scope: !15464, inlinedAt: !15415)
!15472 = !DILocation(line: 218, column: 13, scope: !15468, inlinedAt: !15469)
!15473 = !DILocation(line: 219, column: 13, scope: !15468, inlinedAt: !15469)
!15474 = !DILocation(line: 1583, column: 42, scope: !15464, inlinedAt: !15415)
!15475 = !DILocation(line: 1585, column: 25, scope: !15464, inlinedAt: !15415)
!15476 = !DILocation(line: 2192, column: 50, scope: !15451, inlinedAt: !15477)
!15477 = distinct !DILocation(line: 1142, column: 12, scope: !15454, inlinedAt: !15455)
!15478 = !DILocation(line: 1222, column: 17, scope: !15479, inlinedAt: !15480)
!15479 = distinct !DISubprogram(name: "unchecked_sub", linkageName: "_RNvMs9_NtCskKLDkoKarTP_4core3numj13unchecked_sub", scope: !1426, file: !1425, line: 1210, type: !14, scopeLine: 1210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15480 = distinct !DILocation(line: 271, column: 28, scope: !15481, inlinedAt: !15482)
!15481 = distinct !DISubprogram(name: "backward_unchecked", linkageName: "_RNvXsL_NtNtCskKLDkoKarTP_4core4iter5rangejNtB5_4Step18backward_unchecked", scope: !1430, file: !1411, line: 269, type: !14, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15482 = distinct !DILocation(line: 1144, column: 33, scope: !15454, inlinedAt: !15455)
!15483 = !DILocation(line: 1601, column: 20, scope: !15484, inlinedAt: !15415)
!15484 = distinct !DILexicalBlock(scope: !15461, file: !40, line: 1594, column: 13)
!15485 = !DILocation(line: 1601, column: 66, scope: !15484, inlinedAt: !15415)
!15486 = !DILocation(line: 218, column: 39, scope: !15468, inlinedAt: !15487)
!15487 = distinct !DILocation(line: 647, column: 26, scope: !15488, inlinedAt: !15489)
!15488 = !DILexicalBlockFile(scope: !15470, file: !32, discriminator: 2)
!15489 = distinct !DILocation(line: 1601, column: 52, scope: !15484, inlinedAt: !15415)
!15490 = !DILocation(line: 218, column: 13, scope: !15468, inlinedAt: !15487)
!15491 = !DILocation(line: 219, column: 13, scope: !15468, inlinedAt: !15487)
!15492 = !DILocation(line: 1601, column: 42, scope: !15484, inlinedAt: !15415)
!15493 = !DILocation(line: 0, scope: !15426, inlinedAt: !15415)
!15494 = !DILocation(line: 1575, column: 20, scope: !15426, inlinedAt: !15415)
!15495 = !DILocation(line: 1576, column: 13, scope: !15442, inlinedAt: !15415)
!15496 = !DILocation(line: 1614, column: 13, scope: !15497, inlinedAt: !15415)
!15497 = distinct !DILexicalBlock(scope: !15462, file: !40, line: 1611, column: 13)
!15498 = !DILocation(line: 1615, column: 17, scope: !15497, inlinedAt: !15415)
!15499 = !DILocation(line: 1616, column: 17, scope: !15497, inlinedAt: !15415)
!15500 = !DILocation(line: 1615, column: 13, scope: !15497, inlinedAt: !15415)
!15501 = !{!15403, !15407, !15409, !15411}
!15502 = !DILocation(line: 0, scope: !15417, inlinedAt: !15415)
!15503 = !{!15407, !15409, !15411}
!15504 = !DILocation(line: 1187, column: 17, scope: !15400)
!15505 = !DILocation(line: 482, column: 12, scope: !15381, inlinedAt: !15506)
!15506 = !DILocation(line: 1194, column: 47, scope: !15507)
!15507 = distinct !DILexicalBlock(scope: !15400, file: !40, line: 1192, column: 21)
!15508 = !DILocation(line: 1195, column: 57, scope: !15509)
!15509 = distinct !DILexicalBlock(scope: !15507, file: !40, line: 1194, column: 25)
!15510 = !DILocation(line: 0, scope: !15381, inlinedAt: !15506)
!15511 = !DILocation(line: 1099, column: 5, scope: !1398, inlinedAt: !15512)
!15512 = distinct !DILocation(line: 1742, column: 8, scope: !15513, inlinedAt: !15514)
!15513 = distinct !DISubprogram(name: "max<usize>", linkageName: "_RINvNtCskKLDkoKarTP_4core3cmp3maxjECs2NzvFoTxuAy_2rg", scope: !1401, file: !1399, line: 1741, type: !14, scopeLine: 1741, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15514 = !DILocation(line: 1195, column: 45, scope: !15509)
!15515 = !DILocation(line: 1195, column: 25, scope: !15509)
!15516 = !DILocation(line: 1196, column: 25, scope: !15509)
!15517 = !DILocation(line: 1197, column: 21, scope: !15400)
!15518 = !DILocation(line: 0, scope: !15400)
!15519 = !DILocation(line: 486, column: 20, scope: !15520, inlinedAt: !15506)
!15520 = distinct !DILexicalBlock(scope: !15381, file: !10, line: 485, column: 13)
!15521 = !DILocation(line: 1231, column: 9, scope: !15394, inlinedAt: !15522)
!15522 = !DILocation(line: 486, column: 39, scope: !15523, inlinedAt: !15506)
!15523 = !DILexicalBlockFile(scope: !15520, file: !10, discriminator: 2)
!15524 = !DILocation(line: 487, column: 17, scope: !15520, inlinedAt: !15506)
!15525 = !DILocation(line: 488, column: 20, scope: !15520, inlinedAt: !15506)
!15526 = distinct !DISubprogram(name: "doc_category", linkageName: "_RNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_15HyperlinkFormatNtB7_4Flag12doc_category", scope: !15527, file: !11497, line: 2910, type: !14, scopeLine: 2910, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15527 = !DINamespace(name: "{impl#34}", scope: !11499)
!15528 = !DILocation(line: 2912, column: 6, scope: !15526)
!15529 = distinct !DISubprogram(name: "doc_variable", linkageName: "_RNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_15HyperlinkFormatNtB7_4Flag12doc_variable", scope: !15527, file: !11497, line: 2907, type: !14, scopeLine: 2907, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15530 = !DILocation(line: 2909, column: 6, scope: !15529)
!15531 = distinct !DISubprogram(name: "doc_short", linkageName: "_RNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_15HyperlinkFormatNtB7_4Flag9doc_short", scope: !15527, file: !11497, line: 2913, type: !14, scopeLine: 2913, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15532 = !DILocation(line: 2915, column: 6, scope: !15531)
!15533 = distinct !DISubprogram(name: "is_switch", linkageName: "_RNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_15HyperlinkFormatNtB7_4Flag9is_switch", scope: !15527, file: !11497, line: 2901, type: !14, scopeLine: 2901, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15534 = !DILocation(line: 2903, column: 6, scope: !15533)
!15535 = distinct !DISubprogram(name: "name_long", linkageName: "_RNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_15HyperlinkFormatNtB7_4Flag9name_long", scope: !15527, file: !11497, line: 2904, type: !14, scopeLine: 2904, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15536 = !DILocation(line: 2906, column: 6, scope: !15535)
!15537 = distinct !DISubprogram(name: "doc_category", linkageName: "_RNvXsx_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_5IGlobNtB7_4Flag12doc_category", scope: !15538, file: !11497, line: 3103, type: !14, scopeLine: 3103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15538 = !DINamespace(name: "{impl#35}", scope: !11499)
!15539 = !DILocation(line: 3105, column: 6, scope: !15537)
!15540 = distinct !DISubprogram(name: "doc_variable", linkageName: "_RNvXsx_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_5IGlobNtB7_4Flag12doc_variable", scope: !15538, file: !11497, line: 3100, type: !14, scopeLine: 3100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15541 = !DILocation(line: 3102, column: 6, scope: !15540)
!15542 = distinct !DISubprogram(name: "doc_long", linkageName: "_RNvXsx_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_5IGlobNtB7_4Flag8doc_long", scope: !15538, file: !11497, line: 3109, type: !14, scopeLine: 3109, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15543 = !DILocation(line: 3118, column: 6, scope: !15542)
!15544 = distinct !DISubprogram(name: "doc_short", linkageName: "_RNvXsx_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_5IGlobNtB7_4Flag9doc_short", scope: !15538, file: !11497, line: 3106, type: !14, scopeLine: 3106, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15545 = !DILocation(line: 3108, column: 6, scope: !15544)
!15546 = distinct !DISubprogram(name: "is_switch", linkageName: "_RNvXsx_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_5IGlobNtB7_4Flag9is_switch", scope: !15538, file: !11497, line: 3094, type: !14, scopeLine: 3094, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15547 = !DILocation(line: 3096, column: 6, scope: !15546)
!15548 = distinct !DISubprogram(name: "name_long", linkageName: "_RNvXsx_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_5IGlobNtB7_4Flag9name_long", scope: !15538, file: !11497, line: 3097, type: !14, scopeLine: 3097, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15549 = !DILocation(line: 3099, column: 6, scope: !15548)
!15550 = distinct !DISubprogram(name: "name_short", linkageName: "_RNvXsy_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10IgnoreCaseNtB7_4Flag10name_short", scope: !15551, file: !11497, line: 3154, type: !14, scopeLine: 3154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15551 = !DINamespace(name: "{impl#36}", scope: !11499)
!15552 = !DILocation(line: 3156, column: 6, scope: !15550)
!15553 = distinct !DISubprogram(name: "doc_category", linkageName: "_RNvXsy_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10IgnoreCaseNtB7_4Flag12doc_category", scope: !15551, file: !11497, line: 3160, type: !14, scopeLine: 3160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15554 = !DILocation(line: 3162, column: 6, scope: !15553)
!15555 = distinct !DISubprogram(name: "doc_long", linkageName: "_RNvXsy_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10IgnoreCaseNtB7_4Flag8doc_long", scope: !15551, file: !11497, line: 3166, type: !14, scopeLine: 3166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15556 = !DILocation(line: 3179, column: 6, scope: !15555)
!15557 = distinct !DISubprogram(name: "doc_short", linkageName: "_RNvXsy_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10IgnoreCaseNtB7_4Flag9doc_short", scope: !15551, file: !11497, line: 3163, type: !14, scopeLine: 3163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15558 = !DILocation(line: 3165, column: 6, scope: !15557)
!15559 = distinct !DISubprogram(name: "is_switch", linkageName: "_RNvXsy_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10IgnoreCaseNtB7_4Flag9is_switch", scope: !15551, file: !11497, line: 3151, type: !14, scopeLine: 3151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15560 = !DILocation(line: 3153, column: 6, scope: !15559)
!15561 = distinct !DISubprogram(name: "name_long", linkageName: "_RNvXsy_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10IgnoreCaseNtB7_4Flag9name_long", scope: !15551, file: !11497, line: 3157, type: !14, scopeLine: 3157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15562 = !DILocation(line: 3159, column: 6, scope: !15561)
!15563 = distinct !DISubprogram(name: "doc_category", linkageName: "_RNvXsz_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10IgnoreFileNtB7_4Flag12doc_category", scope: !15564, file: !11497, line: 3221, type: !14, scopeLine: 3221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15564 = !DINamespace(name: "{impl#37}", scope: !11499)
!15565 = !DILocation(line: 3223, column: 6, scope: !15563)
!15566 = distinct !DISubprogram(name: "doc_variable", linkageName: "_RNvXsz_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10IgnoreFileNtB7_4Flag12doc_variable", scope: !15564, file: !11497, line: 3218, type: !14, scopeLine: 3218, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15567 = !DILocation(line: 3220, column: 6, scope: !15566)
!15568 = distinct !DISubprogram(name: "completion_type", linkageName: "_RNvXsz_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10IgnoreFileNtB7_4Flag15completion_type", scope: !15564, file: !11497, line: 3242, type: !14, scopeLine: 3242, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15569 = !DILocation(line: 3244, column: 6, scope: !15568)
!15570 = distinct !DISubprogram(name: "doc_long", linkageName: "_RNvXsz_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10IgnoreFileNtB7_4Flag8doc_long", scope: !15564, file: !11497, line: 3227, type: !14, scopeLine: 3227, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15571 = !DILocation(line: 3241, column: 6, scope: !15570)
!15572 = distinct !DISubprogram(name: "doc_short", linkageName: "_RNvXsz_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10IgnoreFileNtB7_4Flag9doc_short", scope: !15564, file: !11497, line: 3224, type: !14, scopeLine: 3224, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15573 = !DILocation(line: 3226, column: 6, scope: !15572)
!15574 = distinct !DISubprogram(name: "is_switch", linkageName: "_RNvXsz_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10IgnoreFileNtB7_4Flag9is_switch", scope: !15564, file: !11497, line: 3212, type: !14, scopeLine: 3212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15575 = !DILocation(line: 3214, column: 6, scope: !15574)
!15576 = distinct !DISubprogram(name: "name_long", linkageName: "_RNvXsz_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10IgnoreFileNtB7_4Flag9name_long", scope: !15564, file: !11497, line: 3215, type: !14, scopeLine: 3215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15577 = !DILocation(line: 3217, column: 6, scope: !15576)
!15578 = distinct !DISubprogram(name: "call_once<hashbrown::raw::{impl#8}::reserve_rehash::{closure_env#1}<(alloc::vec::Vec<u8, alloc::alloc::Global>, usize), alloc::alloc::Global, hashbrown::map::make_hasher::{closure_env#0}<alloc::vec::Vec<u8, alloc::alloc::Global>, usize, std::hash::random::RandomState>>, (*mut u8)>", linkageName: "_RNvYNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtBb_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEjEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_jNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Es_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTOhEE9call_onceCs2NzvFoTxuAy_2rg", scope: !965, file: !213, line: 250, type: !14, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15579 = !DILocation(line: 848, column: 1, scope: !2557, inlinedAt: !15580)
!15580 = distinct !DILocation(line: 848, column: 1, scope: !14499, inlinedAt: !15581)
!15581 = distinct !DILocation(line: 843, column: 14, scope: !15582, inlinedAt: !15583)
!15582 = distinct !DISubprogram(name: "drop_in_place<(alloc::vec::Vec<u8, alloc::alloc::Global>, usize)>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr13drop_in_placeTINtNtCsexYYUdYSQU6_5alloc3vec3VechEjEECs2NzvFoTxuAy_2rg", scope: !21, file: !981, line: 831, type: !14, scopeLine: 831, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15583 = distinct !DILocation(line: 969, column: 32, scope: !15584, inlinedAt: !15585)
!15584 = distinct !DISubprogram(name: "{closure#1}<(alloc::vec::Vec<u8, alloc::alloc::Global>, usize), alloc::alloc::Global, hashbrown::map::make_hasher::{closure_env#0}<alloc::vec::Vec<u8, alloc::alloc::Global>, usize, std::hash::random::RandomState>>", linkageName: "_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEjEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_jNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Es_0Cs2NzvFoTxuAy_2rg", scope: !1949, file: !1673, line: 969, type: !217, scopeLine: 969, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15585 = distinct !DILocation(line: 250, column: 5, scope: !15578)
!15586 = !DILocation(line: 848, column: 1, scope: !2562, inlinedAt: !15587)
!15587 = distinct !DILocation(line: 848, column: 1, scope: !2557, inlinedAt: !15580)
!15588 = !DILocation(line: 848, column: 1, scope: !2562, inlinedAt: !15589)
!15589 = distinct !DILocation(line: 848, column: 1, scope: !2557, inlinedAt: !15580)
!15590 = !DILocation(line: 250, column: 5, scope: !15578)
!15591 = distinct !DISubprogram(name: "call_once<hashbrown::raw::{impl#8}::reserve_rehash::{closure_env#1}<(alloc::string::String, ()), alloc::alloc::Global, hashbrown::map::make_hasher::{closure_env#0}<alloc::string::String, (), std::hash::random::RandomState>>, (*mut u8)>", linkageName: "_RNvYNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtBb_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringuEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Es_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTOhEE9call_onceCs2NzvFoTxuAy_2rg", scope: !965, file: !213, line: 250, type: !14, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15592 = !DILocation(line: 848, column: 1, scope: !2557, inlinedAt: !15593)
!15593 = distinct !DILocation(line: 848, column: 1, scope: !2559, inlinedAt: !15594)
!15594 = distinct !DILocation(line: 848, column: 1, scope: !14813, inlinedAt: !15595)
!15595 = distinct !DILocation(line: 843, column: 14, scope: !15596, inlinedAt: !15597)
!15596 = distinct !DISubprogram(name: "drop_in_place<(alloc::string::String, ())>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr13drop_in_placeTNtNtCsexYYUdYSQU6_5alloc6string6StringuEECs2NzvFoTxuAy_2rg", scope: !21, file: !981, line: 831, type: !14, scopeLine: 831, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15597 = distinct !DILocation(line: 969, column: 32, scope: !15598, inlinedAt: !15599)
!15598 = distinct !DISubprogram(name: "{closure#1}<(alloc::string::String, ()), alloc::alloc::Global, hashbrown::map::make_hasher::{closure_env#0}<alloc::string::String, (), std::hash::random::RandomState>>", linkageName: "_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Es_0Cs2NzvFoTxuAy_2rg", scope: !1949, file: !1673, line: 969, type: !217, scopeLine: 969, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15599 = distinct !DILocation(line: 250, column: 5, scope: !15591)
!15600 = !DILocation(line: 848, column: 1, scope: !2562, inlinedAt: !15601)
!15601 = distinct !DILocation(line: 848, column: 1, scope: !2557, inlinedAt: !15593)
!15602 = !DILocation(line: 848, column: 1, scope: !2562, inlinedAt: !15603)
!15603 = distinct !DILocation(line: 848, column: 1, scope: !2557, inlinedAt: !15593)
!15604 = !DILocation(line: 250, column: 5, scope: !15591)
!15605 = distinct !DISubprogram(name: "call_once<std::sync::mpmc::waker::current_thread_id::DUMMY::{constant#0}::{closure_env#1}, (core::option::Option<&mut core::option::Option<u8>>)>", linkageName: "_RNvYNCNKNvNvNtNtNtCsG258MDvU3F_3std4sync4mpmc5waker17current_thread_id5DUMMY0s_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1n_6option6OptionQIB22_hEEEE9call_onceCs2NzvFoTxuAy_2rg", scope: !965, file: !213, line: 250, type: !14, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15606 = !DILocation(line: 75, column: 26, scope: !15607, inlinedAt: !15611)
!15607 = distinct !DISubprogram(name: "{closure#1}", linkageName: "_RNCNKNvNvNtNtNtCsG258MDvU3F_3std4sync4mpmc5waker17current_thread_id5DUMMY0s_0Cs2NzvFoTxuAy_2rg", scope: !15608, file: !997, line: 71, type: !217, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15608 = !DINamespace(name: "{constant#0}", scope: !15609)
!15609 = !DINamespace(name: "DUMMY", scope: !15610)
!15610 = !DINamespace(name: "current_thread_id", scope: !6656)
!15611 = distinct !DILocation(line: 250, column: 5, scope: !15605)
!15612 = !DILocation(line: 250, column: 5, scope: !15605)
!15613 = distinct !DISubprogram(name: "doc_choices<rg::flags::defs::ByteOffset>", linkageName: "_RNvYNtNtNtCs2NzvFoTxuAy_2rg5flags4defs10ByteOffsetNtB6_4Flag11doc_choicesB8_", scope: !15615, file: !15614, line: 149, type: !14, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15614 = !DIFile(filename: "crates/core/flags/mod.rs", directory: "/opt-bench/work/ripgrep-rs/ripgrep", checksumkind: CSK_MD5, checksum: "10ea9ff8b6c9ee35850298836d5c3a26")
!15615 = !DINamespace(name: "Flag", scope: !6375)
!15616 = !DILocation(line: 151, column: 6, scope: !15613)
!15617 = distinct !DISubprogram(name: "doc_variable<rg::flags::defs::ByteOffset>", linkageName: "_RNvYNtNtNtCs2NzvFoTxuAy_2rg5flags4defs10ByteOffsetNtB6_4Flag12doc_variableB8_", scope: !15615, file: !15614, line: 124, type: !14, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15618 = !DILocation(line: 126, column: 6, scope: !15617)
!15619 = distinct !DISubprogram(name: "completion_type<rg::flags::defs::ByteOffset>", linkageName: "_RNvYNtNtNtCs2NzvFoTxuAy_2rg5flags4defs10ByteOffsetNtB6_4Flag15completion_typeB8_", scope: !15615, file: !15614, line: 153, type: !14, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15620 = !DILocation(line: 155, column: 6, scope: !15619)
!15621 = distinct !DISubprogram(name: "aliases<rg::flags::defs::ByteOffset>", linkageName: "_RNvYNtNtNtCs2NzvFoTxuAy_2rg5flags4defs10ByteOffsetNtB6_4Flag7aliasesB8_", scope: !15615, file: !15614, line: 96, type: !14, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15622 = !DILocation(line: 98, column: 6, scope: !15621)
!15623 = distinct !DISubprogram(name: "doc_choices<rg::flags::defs::IgnoreCase>", linkageName: "_RNvYNtNtNtCs2NzvFoTxuAy_2rg5flags4defs10IgnoreCaseNtB6_4Flag11doc_choicesB8_", scope: !15615, file: !15614, line: 149, type: !14, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15624 = !DILocation(line: 151, column: 6, scope: !15623)
!15625 = distinct !DISubprogram(name: "doc_variable<rg::flags::defs::IgnoreCase>", linkageName: "_RNvYNtNtNtCs2NzvFoTxuAy_2rg5flags4defs10IgnoreCaseNtB6_4Flag12doc_variableB8_", scope: !15615, file: !15614, line: 124, type: !14, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15626 = !DILocation(line: 126, column: 6, scope: !15625)
!15627 = distinct !DISubprogram(name: "name_negated<rg::flags::defs::IgnoreCase>", linkageName: "_RNvYNtNtNtCs2NzvFoTxuAy_2rg5flags4defs10IgnoreCaseNtB6_4Flag12name_negatedB8_", scope: !15615, file: !15614, line: 111, type: !14, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15628 = !DILocation(line: 113, column: 6, scope: !15627)
!15629 = distinct !DISubprogram(name: "completion_type<rg::flags::defs::IgnoreCase>", linkageName: "_RNvYNtNtNtCs2NzvFoTxuAy_2rg5flags4defs10IgnoreCaseNtB6_4Flag15completion_typeB8_", scope: !15615, file: !15614, line: 153, type: !14, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15630 = !DILocation(line: 155, column: 6, scope: !15629)
!15631 = distinct !DISubprogram(name: "aliases<rg::flags::defs::IgnoreCase>", linkageName: "_RNvYNtNtNtCs2NzvFoTxuAy_2rg5flags4defs10IgnoreCaseNtB6_4Flag7aliasesB8_", scope: !15615, file: !15614, line: 96, type: !14, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15632 = !DILocation(line: 98, column: 6, scope: !15631)
!15633 = distinct !DISubprogram(name: "name_short<rg::flags::defs::IgnoreFile>", linkageName: "_RNvYNtNtNtCs2NzvFoTxuAy_2rg5flags4defs10IgnoreFileNtB6_4Flag10name_shortB8_", scope: !15615, file: !15614, line: 81, type: !14, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15634 = !DILocation(line: 83, column: 6, scope: !15633)
!15635 = distinct !DISubprogram(name: "doc_choices<rg::flags::defs::IgnoreFile>", linkageName: "_RNvYNtNtNtCs2NzvFoTxuAy_2rg5flags4defs10IgnoreFileNtB6_4Flag11doc_choicesB8_", scope: !15615, file: !15614, line: 149, type: !14, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15636 = !DILocation(line: 151, column: 6, scope: !15635)
!15637 = distinct !DISubprogram(name: "name_negated<rg::flags::defs::IgnoreFile>", linkageName: "_RNvYNtNtNtCs2NzvFoTxuAy_2rg5flags4defs10IgnoreFileNtB6_4Flag12name_negatedB8_", scope: !15615, file: !15614, line: 111, type: !14, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15638 = !DILocation(line: 113, column: 6, scope: !15637)
!15639 = distinct !DISubprogram(name: "aliases<rg::flags::defs::IgnoreFile>", linkageName: "_RNvYNtNtNtCs2NzvFoTxuAy_2rg5flags4defs10IgnoreFileNtB6_4Flag7aliasesB8_", scope: !15615, file: !15614, line: 96, type: !14, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15640 = !DILocation(line: 98, column: 6, scope: !15639)
!15641 = distinct !DISubprogram(name: "doc_choices<rg::flags::defs::LineNumber>", linkageName: "_RNvYNtNtNtCs2NzvFoTxuAy_2rg5flags4defs10LineNumberNtB6_4Flag11doc_choicesB8_", scope: !15615, file: !15614, line: 149, type: !14, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15642 = !DILocation(line: 151, column: 6, scope: !15641)
!15643 = distinct !DISubprogram(name: "doc_variable<rg::flags::defs::LineNumber>", linkageName: "_RNvYNtNtNtCs2NzvFoTxuAy_2rg5flags4defs10LineNumberNtB6_4Flag12doc_variableB8_", scope: !15615, file: !15614, line: 124, type: !14, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15644 = !DILocation(line: 126, column: 6, scope: !15643)
!15645 = distinct !DISubprogram(name: "name_negated<rg::flags::defs::LineNumber>", linkageName: "_RNvYNtNtNtCs2NzvFoTxuAy_2rg5flags4defs10LineNumberNtB6_4Flag12name_negatedB8_", scope: !15615, file: !15614, line: 111, type: !14, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15646 = !DILocation(line: 113, column: 6, scope: !15645)
!15647 = distinct !DISubprogram(name: "completion_type<rg::flags::defs::LineNumber>", linkageName: "_RNvYNtNtNtCs2NzvFoTxuAy_2rg5flags4defs10LineNumberNtB6_4Flag15completion_typeB8_", scope: !15615, file: !15614, line: 153, type: !14, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15648 = !DILocation(line: 155, column: 6, scope: !15647)
!15649 = distinct !DISubprogram(name: "aliases<rg::flags::defs::LineNumber>", linkageName: "_RNvYNtNtNtCs2NzvFoTxuAy_2rg5flags4defs10LineNumberNtB6_4Flag7aliasesB8_", scope: !15615, file: !15614, line: 96, type: !14, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15650 = !DILocation(line: 98, column: 6, scope: !15649)
!15651 = distinct !DISubprogram(name: "doc_choices<rg::flags::defs::LineRegexp>", linkageName: "_RNvYNtNtNtCs2NzvFoTxuAy_2rg5flags4defs10LineRegexpNtB6_4Flag11doc_choicesB8_", scope: !15615, file: !15614, line: 149, type: !14, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15652 = !DILocation(line: 151, column: 6, scope: !15651)
!15653 = distinct !DISubprogram(name: "doc_variable<rg::flags::defs::LineRegexp>", linkageName: "_RNvYNtNtNtCs2NzvFoTxuAy_2rg5flags4defs10LineRegexpNtB6_4Flag12doc_variableB8_", scope: !15615, file: !15614, line: 124, type: !14, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15654 = !DILocation(line: 126, column: 6, scope: !15653)
!15655 = distinct !DISubprogram(name: "name_negated<rg::flags::defs::LineRegexp>", linkageName: "_RNvYNtNtNtCs2NzvFoTxuAy_2rg5flags4defs10LineRegexpNtB6_4Flag12name_negatedB8_", scope: !15615, file: !15614, line: 111, type: !14, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15656 = !DILocation(line: 113, column: 6, scope: !15655)
!15657 = distinct !DISubprogram(name: "completion_type<rg::flags::defs::LineRegexp>", linkageName: "_RNvYNtNtNtCs2NzvFoTxuAy_2rg5flags4defs10LineRegexpNtB6_4Flag15completion_typeB8_", scope: !15615, file: !15614, line: 153, type: !14, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15658 = !DILocation(line: 155, column: 6, scope: !15657)
!15659 = distinct !DISubprogram(name: "aliases<rg::flags::defs::LineRegexp>", linkageName: "_RNvYNtNtNtCs2NzvFoTxuAy_2rg5flags4defs10LineRegexpNtB6_4Flag7aliasesB8_", scope: !15615, file: !15614, line: 96, type: !14, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15660 = !DILocation(line: 98, column: 6, scope: !15659)
!15661 = distinct !DISubprogram(name: "doc_choices<rg::flags::defs::MaxColumns>", linkageName: "_RNvYNtNtNtCs2NzvFoTxuAy_2rg5flags4defs10MaxColumnsNtB6_4Flag11doc_choicesB8_", scope: !15615, file: !15614, line: 149, type: !14, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15662 = !DILocation(line: 151, column: 6, scope: !15661)
!15663 = distinct !DISubprogram(name: "name_negated<rg::flags::defs::MaxColumns>", linkageName: "_RNvYNtNtNtCs2NzvFoTxuAy_2rg5flags4defs10MaxColumnsNtB6_4Flag12name_negatedB8_", scope: !15615, file: !15614, line: 111, type: !14, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15664 = !DILocation(line: 113, column: 6, scope: !15663)
!15665 = distinct !DISubprogram(name: "completion_type<rg::flags::defs::MaxColumns>", linkageName: "_RNvYNtNtNtCs2NzvFoTxuAy_2rg5flags4defs10MaxColumnsNtB6_4Flag15completion_typeB8_", scope: !15615, file: !15614, line: 153, type: !14, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15666 = !DILocation(line: 155, column: 6, scope: !15665)
!15667 = distinct !DISubprogram(name: "aliases<rg::flags::defs::MaxColumns>", linkageName: "_RNvYNtNtNtCs2NzvFoTxuAy_2rg5flags4defs10MaxColumnsNtB6_4Flag7aliasesB8_", scope: !15615, file: !15614, line: 96, type: !14, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15668 = !DILocation(line: 98, column: 6, scope: !15667)
!15669 = distinct !DISubprogram(name: "name_short<rg::flags::defs::NoMessages>", linkageName: "_RNvYNtNtNtCs2NzvFoTxuAy_2rg5flags4defs10NoMessagesNtB6_4Flag10name_shortB8_", scope: !15615, file: !15614, line: 81, type: !14, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15670 = !DILocation(line: 83, column: 6, scope: !15669)
!15671 = distinct !DISubprogram(name: "doc_choices<rg::flags::defs::NoMessages>", linkageName: "_RNvYNtNtNtCs2NzvFoTxuAy_2rg5flags4defs10NoMessagesNtB6_4Flag11doc_choicesB8_", scope: !15615, file: !15614, line: 149, type: !14, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15672 = !DILocation(line: 151, column: 6, scope: !15671)
!15673 = distinct !DISubprogram(name: "doc_variable<rg::flags::defs::NoMessages>", linkageName: "_RNvYNtNtNtCs2NzvFoTxuAy_2rg5flags4defs10NoMessagesNtB6_4Flag12doc_variableB8_", scope: !15615, file: !15614, line: 124, type: !14, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15674 = !DILocation(line: 126, column: 6, scope: !15673)
!15675 = distinct !DISubprogram(name: "completion_type<rg::flags::defs::NoMessages>", linkageName: "_RNvYNtNtNtCs2NzvFoTxuAy_2rg5flags4defs10NoMessagesNtB6_4Flag15completion_typeB8_", scope: !15615, file: !15614, line: 153, type: !14, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15676 = !DILocation(line: 155, column: 6, scope: !15675)
!15677 = distinct !DISubprogram(name: "aliases<rg::flags::defs::NoMessages>", linkageName: "_RNvYNtNtNtCs2NzvFoTxuAy_2rg5flags4defs10NoMessagesNtB6_4Flag7aliasesB8_", scope: !15615, file: !15614, line: 96, type: !14, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15678 = !DILocation(line: 98, column: 6, scope: !15677)
!15679 = distinct !DISubprogram(name: "doc_choices<rg::flags::defs::WordRegexp>", linkageName: "_RNvYNtNtNtCs2NzvFoTxuAy_2rg5flags4defs10WordRegexpNtB6_4Flag11doc_choicesB8_", scope: !15615, file: !15614, line: 149, type: !14, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15680 = !DILocation(line: 151, column: 6, scope: !15679)
!15681 = distinct !DISubprogram(name: "doc_variable<rg::flags::defs::WordRegexp>", linkageName: "_RNvYNtNtNtCs2NzvFoTxuAy_2rg5flags4defs10WordRegexpNtB6_4Flag12doc_variableB8_", scope: !15615, file: !15614, line: 124, type: !14, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15682 = !DILocation(line: 126, column: 6, scope: !15681)
!15683 = distinct !DISubprogram(name: "name_negated<rg::flags::defs::WordRegexp>", linkageName: "_RNvYNtNtNtCs2NzvFoTxuAy_2rg5flags4defs10WordRegexpNtB6_4Flag12name_negatedB8_", scope: !15615, file: !15614, line: 111, type: !14, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15684 = !DILocation(line: 113, column: 6, scope: !15683)
!15685 = distinct !DISubprogram(name: "completion_type<rg::flags::defs::WordRegexp>", linkageName: "_RNvYNtNtNtCs2NzvFoTxuAy_2rg5flags4defs10WordRegexpNtB6_4Flag15completion_typeB8_", scope: !15615, file: !15614, line: 153, type: !14, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15686 = !DILocation(line: 155, column: 6, scope: !15685)
!15687 = distinct !DISubprogram(name: "aliases<rg::flags::defs::WordRegexp>", linkageName: "_RNvYNtNtNtCs2NzvFoTxuAy_2rg5flags4defs10WordRegexpNtB6_4Flag7aliasesB8_", scope: !15615, file: !15614, line: 96, type: !14, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15688 = !DILocation(line: 98, column: 6, scope: !15687)
!15689 = distinct !DISubprogram(name: "name_short<rg::flags::defs::HostnameBin>", linkageName: "_RNvYNtNtNtCs2NzvFoTxuAy_2rg5flags4defs11HostnameBinNtB6_4Flag10name_shortB8_", scope: !15615, file: !15614, line: 81, type: !14, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15690 = !DILocation(line: 83, column: 6, scope: !15689)
!15691 = distinct !DISubprogram(name: "doc_choices<rg::flags::defs::HostnameBin>", linkageName: "_RNvYNtNtNtCs2NzvFoTxuAy_2rg5flags4defs11HostnameBinNtB6_4Flag11doc_choicesB8_", scope: !15615, file: !15614, line: 149, type: !14, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15692 = !DILocation(line: 151, column: 6, scope: !15691)
!15693 = distinct !DISubprogram(name: "name_negated<rg::flags::defs::HostnameBin>", linkageName: "_RNvYNtNtNtCs2NzvFoTxuAy_2rg5flags4defs11HostnameBinNtB6_4Flag12name_negatedB8_", scope: !15615, file: !15614, line: 111, type: !14, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15694 = !DILocation(line: 113, column: 6, scope: !15693)
!15695 = distinct !DISubprogram(name: "aliases<rg::flags::defs::HostnameBin>", linkageName: "_RNvYNtNtNtCs2NzvFoTxuAy_2rg5flags4defs11HostnameBinNtB6_4Flag7aliasesB8_", scope: !15615, file: !15614, line: 96, type: !14, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15696 = !DILocation(line: 98, column: 6, scope: !15695)
!15697 = distinct !DISubprogram(name: "name_short<rg::flags::defs::IncludeZero>", linkageName: "_RNvYNtNtNtCs2NzvFoTxuAy_2rg5flags4defs11IncludeZeroNtB6_4Flag10name_shortB8_", scope: !15615, file: !15614, line: 81, type: !14, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15698 = !DILocation(line: 83, column: 6, scope: !15697)
!15699 = distinct !DISubprogram(name: "doc_choices<rg::flags::defs::IncludeZero>", linkageName: "_RNvYNtNtNtCs2NzvFoTxuAy_2rg5flags4defs11IncludeZeroNtB6_4Flag11doc_choicesB8_", scope: !15615, file: !15614, line: 149, type: !14, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15700 = !DILocation(line: 151, column: 6, scope: !15699)
!15701 = distinct !DISubprogram(name: "doc_variable<rg::flags::defs::IncludeZero>", linkageName: "_RNvYNtNtNtCs2NzvFoTxuAy_2rg5flags4defs11IncludeZeroNtB6_4Flag12doc_variableB8_", scope: !15615, file: !15614, line: 124, type: !14, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15702 = !DILocation(line: 126, column: 6, scope: !15701)
!15703 = distinct !DISubprogram(name: "completion_type<rg::flags::defs::IncludeZero>", linkageName: "_RNvYNtNtNtCs2NzvFoTxuAy_2rg5flags4defs11IncludeZeroNtB6_4Flag15completion_typeB8_", scope: !15615, file: !15614, line: 153, type: !14, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15704 = !DILocation(line: 155, column: 6, scope: !15703)
!15705 = distinct !DISubprogram(name: "aliases<rg::flags::defs::IncludeZero>", linkageName: "_RNvYNtNtNtCs2NzvFoTxuAy_2rg5flags4defs11IncludeZeroNtB6_4Flag7aliasesB8_", scope: !15615, file: !15614, line: 96, type: !14, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15706 = !DILocation(line: 98, column: 6, scope: !15705)
!15707 = distinct !DISubprogram(name: "doc_choices<rg::flags::defs::InvertMatch>", linkageName: "_RNvYNtNtNtCs2NzvFoTxuAy_2rg5flags4defs11InvertMatchNtB6_4Flag11doc_choicesB8_", scope: !15615, file: !15614, line: 149, type: !14, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15708 = !DILocation(line: 151, column: 6, scope: !15707)
!15709 = distinct !DISubprogram(name: "doc_variable<rg::flags::defs::InvertMatch>", linkageName: "_RNvYNtNtNtCs2NzvFoTxuAy_2rg5flags4defs11InvertMatchNtB6_4Flag12doc_variableB8_", scope: !15615, file: !15614, line: 124, type: !14, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15710 = !DILocation(line: 126, column: 6, scope: !15709)
!15711 = distinct !DISubprogram(name: "completion_type<rg::flags::defs::InvertMatch>", linkageName: "_RNvYNtNtNtCs2NzvFoTxuAy_2rg5flags4defs11InvertMatchNtB6_4Flag15completion_typeB8_", scope: !15615, file: !15614, line: 153, type: !14, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15712 = !DILocation(line: 155, column: 6, scope: !15711)
!15713 = distinct !DISubprogram(name: "aliases<rg::flags::defs::InvertMatch>", linkageName: "_RNvYNtNtNtCs2NzvFoTxuAy_2rg5flags4defs11InvertMatchNtB6_4Flag7aliasesB8_", scope: !15615, file: !15614, line: 96, type: !14, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15714 = !DILocation(line: 98, column: 6, scope: !15713)
!15715 = distinct !DISubprogram(name: "name_short<rg::flags::defs::MaxFilesize>", linkageName: "_RNvYNtNtNtCs2NzvFoTxuAy_2rg5flags4defs11MaxFilesizeNtB6_4Flag10name_shortB8_", scope: !15615, file: !15614, line: 81, type: !14, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15716 = !DILocation(line: 83, column: 6, scope: !15715)
!15717 = distinct !DISubprogram(name: "doc_choices<rg::flags::defs::MaxFilesize>", linkageName: "_RNvYNtNtNtCs2NzvFoTxuAy_2rg5flags4defs11MaxFilesizeNtB6_4Flag11doc_choicesB8_", scope: !15615, file: !15614, line: 149, type: !14, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15718 = !DILocation(line: 151, column: 6, scope: !15717)
!15719 = distinct !DISubprogram(name: "name_negated<rg::flags::defs::MaxFilesize>", linkageName: "_RNvYNtNtNtCs2NzvFoTxuAy_2rg5flags4defs11MaxFilesizeNtB6_4Flag12name_negatedB8_", scope: !15615, file: !15614, line: 111, type: !14, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15720 = !DILocation(line: 113, column: 6, scope: !15719)
!15721 = distinct !DISubprogram(name: "completion_type<rg::flags::defs::MaxFilesize>", linkageName: "_RNvYNtNtNtCs2NzvFoTxuAy_2rg5flags4defs11MaxFilesizeNtB6_4Flag15completion_typeB8_", scope: !15615, file: !15614, line: 153, type: !14, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15722 = !DILocation(line: 155, column: 6, scope: !15721)
!15723 = distinct !DISubprogram(name: "aliases<rg::flags::defs::MaxFilesize>", linkageName: "_RNvYNtNtNtCs2NzvFoTxuAy_2rg5flags4defs11MaxFilesizeNtB6_4Flag7aliasesB8_", scope: !15615, file: !15614, line: 96, type: !14, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!15724 = !DILocation(line: 98, column: 6, scope: !15723)
!15725 = distinct !DISubprogram(name: "name_short<rg::flags::defs::NoIgnoreDot>", linkageName: "_RNvYNtNtNtCs2NzvFoTxuAy_2rg5flags4defs11NoIgnoreDotNtB6_4Flag10name_shortB8_", scope: !15615, file: !15614, line: 81, type: !14, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
end_hunk_1
