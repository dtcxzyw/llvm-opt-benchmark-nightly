inline.NumInlined: 4066
inline.NumDeleted: 1630
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN6duckdb12_GLOBAL__N_122DecodeSortKeyRecursiveEPNS0_17DecodeSortKeyDataERNS0_23DecodeSortKeyVectorDataERNS_6VectorEmm:bb.a
  %i.zc = load i8, ptr %i.zb, align 1, !tbaa !18
  %i.zd = xor i8 %i.zc, -1
  %.sroa.0.5.insert.ext.i.i328 = zext i8 %i.zd to i64
  %.sroa.0.5.insert.shift.i.i329 = shl nuw nsw i64 %.sroa.0.5.insert.ext.i.i328, 40
  %.sroa.0.5.insert.mask.i.i330 = or disjoint i64 %.sroa.0.3.insert.insert.i.i325, %.sroa.0.4.insert.shift.i.i327
  %i.ze = getelementptr inbounds nuw i8, ptr %i.yj, i64 6
  %i.zf = load i8, ptr %i.ze, align 1, !tbaa !18
  %i.zg = xor i8 %i.zf, -1
  %.sroa.0.6.insert.ext.i.i331 = zext i8 %i.zg to i64
  %.sroa.0.6.insert.shift.i.i332 = shl nuw nsw i64 %.sroa.0.6.insert.ext.i.i331, 48
  %.sroa.0.6.insert.mask.i.i333 = or disjoint i64 %.sroa.0.5.insert.mask.i.i330, %.sroa.0.5.insert.shift.i.i329
  %.sroa.0.6.insert.insert.i.i334 = or i64 %.sroa.0.6.insert.mask.i.i333, %.sroa.0.6.insert.shift.i.i332
  %i.zh = getelementptr inbounds nuw i8, ptr %i.yj, i64 7
  %i.zi = load i8, ptr %i.zh, align 1, !tbaa !18
  %i.zj = xor i8 %i.zi, -1
  %.sroa.0.7.insert.ext.i.i335 = zext i8 %i.zj to i64
  %.sroa.0.7.insert.shift.i.i336 = shl nuw i64 %.sroa.0.7.insert.ext.i.i335, 56
  %.sroa.0.7.insert.insert.i.i337 = or i64 %.sroa.0.6.insert.insert.i.i334, %.sroa.0.7.insert.shift.i.i336
  %i.zk = getelementptr inbounds nuw i8, ptr %i.yj, i64 8
  %i.zl = load i8, ptr %i.zk, align 1, !tbaa !18
  %i.zm = xor i8 %i.zl, -1
  %.sroa.11.8.insert.ext.i.i338 = zext i8 %i.zm to i64
  %i.zn = getelementptr inbounds nuw i8, ptr %i.yj, i64 9
  %i.zo = load i8, ptr %i.zn, align 1, !tbaa !18
  %i.zp = xor i8 %i.zo, -1
  %.sroa.11.9.insert.ext.i.i339 = zext i8 %i.zp to i64
  %.sroa.11.9.insert.shift.i.i340 = shl nuw nsw i64 %.sroa.11.9.insert.ext.i.i339, 8
  %.sroa.11.9.insert.insert.i.i341 = or disjoint i64 %.sroa.11.9.insert.shift.i.i340, %.sroa.11.8.insert.ext.i.i338
  %i.zq = getelementptr inbounds nuw i8, ptr %i.yj, i64 10
  %i.zr = load i8, ptr %i.zq, align 1, !tbaa !18
  %i.zs = xor i8 %i.zr, -1
  %.sroa.11.10.insert.ext.i.i342 = zext i8 %i.zs to i64
  %.sroa.11.10.insert.shift.i.i343 = shl nuw nsw i64 %.sroa.11.10.insert.ext.i.i342, 16
  %.sroa.11.10.insert.insert.i.i344 = or disjoint i64 %.sroa.11.9.insert.insert.i.i341, %.sroa.11.10.insert.shift.i.i343
  %i.zt = getelementptr inbounds nuw i8, ptr %i.yj, i64 11
  %i.zu = load i8, ptr %i.zt, align 1, !tbaa !18
  %i.zv = xor i8 %i.zu, -1
  %.sroa.11.11.insert.ext.i.i345 = zext i8 %i.zv to i64
  %.sroa.11.11.insert.shift.i.i346 = shl nuw nsw i64 %.sroa.11.11.insert.ext.i.i345, 24
  %.sroa.11.11.insert.insert.i.i347 = or disjoint i64 %.sroa.11.10.insert.insert.i.i344, %.sroa.11.11.insert.shift.i.i346
  %i.zw = getelementptr inbounds nuw i8, ptr %i.yj, i64 12
  %i.zx = load i8, ptr %i.zw, align 1, !tbaa !18
  %i.zy = xor i8 %i.zx, -1
  %.sroa.11.12.insert.ext.i.i348 = zext i8 %i.zy to i64
  %.sroa.11.12.insert.shift.i.i349 = shl nuw nsw i64 %.sroa.11.12.insert.ext.i.i348, 32
  %i.zz = getelementptr inbounds nuw i8, ptr %i.yj, i64 13
  %i.aaa = load i8, ptr %i.zz, align 1, !tbaa !18
  %i.aab = xor i8 %i.aaa, -1
  %.sroa.11.13.insert.ext.i.i350 = zext i8 %i.aab to i64
  %.sroa.11.13.insert.shift.i.i351 = shl nuw nsw i64 %.sroa.11.13.insert.ext.i.i350, 40
  %.sroa.11.13.insert.mask.i.i352 = or disjoint i64 %.sroa.11.11.insert.insert.i.i347, %.sroa.11.12.insert.shift.i.i349
  %i.aac = getelementptr inbounds nuw i8, ptr %i.yj, i64 14
  %i.aad = load i8, ptr %i.aac, align 1, !tbaa !18
  %i.aae = xor i8 %i.aad, -1
  %.sroa.11.14.insert.ext.i.i353 = zext i8 %i.aae to i64
  %.sroa.11.14.insert.shift.i.i354 = shl nuw nsw i64 %.sroa.11.14.insert.ext.i.i353, 48
  %.sroa.11.14.insert.mask.i.i355 = or disjoint i64 %.sroa.11.13.insert.mask.i.i352, %.sroa.11.13.insert.shift.i.i351
  %.sroa.11.14.insert.insert.i.i356 = or i64 %.sroa.11.14.insert.mask.i.i355, %.sroa.11.14.insert.shift.i.i354
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.yj, i64 15
  %i.aag = load i8, ptr %i.aaf, align 1, !tbaa !18
  %i.aah = xor i8 %i.aag, -1
  %.sroa.11.15.insert.ext.i.i357 = zext i8 %i.aah to i64
  %.sroa.11.15.insert.shift.i.i358 = shl nuw i64 %.sroa.11.15.insert.ext.i.i357, 56
  %.sroa.11.15.insert.insert.i.i359 = or i64 %.sroa.11.14.insert.insert.i.i356, %.sroa.11.15.insert.shift.i.i358
  %.sroa.0.0.insert.insert.i.i.i.i.i360 = xor i64 %.sroa.0.7.insert.insert.i.i337, 128
  %i.aai = tail call noundef i64 @llvm.bswap.i64(i64 %.sroa.0.0.insert.insert.i.i.i.i.i360)
  br label %_ZN6duckdb12_GLOBAL__N_123SortKeyConstantOperatorINS_9hugeint_tEE6DecodeEPKhRNS_6VectorERS2_b.exit.i

bb.eh:                                            ; preds = %bb.ef
  %.0.copyload.i.i.i.i10.i.i311 = load i64, ptr %i.yj, align 1
  %.sroa.0.0.insert.insert.i.i.i11.i.i312 = xor i64 %.0.copyload.i.i.i.i10.i.i311, 128
  %i.aaj = tail call noundef i64 @llvm.bswap.i64(i64 %.sroa.0.0.insert.insert.i.i.i11.i.i312)
  %i.aak = getelementptr inbounds nuw i8, ptr %i.yj, i64 8
  %.0.copyload.i.i.i12.i.i = load i64, ptr %i.aak, align 1
  br label %_ZN6duckdb12_GLOBAL__N_123SortKeyConstantOperatorINS_9hugeint_tEE6DecodeEPKhRNS_6VectorERS2_b.exit.i

_ZN6duckdb12_GLOBAL__N_123SortKeyConstantOperatorINS_9hugeint_tEE6DecodeEPKhRNS_6VectorERS2_b.exit.i: ; preds = %bb.eh, %bb.eg
  %.0.copyload.i.i.i12.sink.i.i = phi i64 [ %.0.copyload.i.i.i12.i.i, %bb.eh ], [ %.sroa.11.15.insert.insert.i.i359, %bb.eg ]
  %.sink.i.i313 = phi i64 [ %i.aaj, %bb.eh ], [ %i.aai, %bb.eg ]
  %i.aal = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i.i12.sink.i.i)
  store i64 %i.aal, ptr %i.yk, align 8, !tbaa !14
  %.sroa.4.0..sroa_idx.i.i314 = getelementptr inbounds nuw i8, ptr %i.yk, i64 8
  store i64 %.sink.i.i313, ptr %.sroa.4.0..sroa_idx.i.i314, align 8, !tbaa !14
  %i.aam = load i64, ptr %i.xs, align 8, !tbaa !167
  %i.aan = add i64 %i.aam, 16
  store i64 %i.aan, ptr %i.xs, align 8, !tbaa !167
  br label %bb.ei

bb.ei:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_123SortKeyConstantOperatorINS_9hugeint_tEE6DecodeEPKhRNS_6VectorERS2_b.exit.i, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i362
  %i.aao = add nuw i64 %.028.i310, 1              ; 2 uses
  %exitcond.not.i315 = icmp eq i64 %i.aao, %4
  br i1 %exitcond.not.i315, label %_ZN6duckdb12_GLOBAL__N_122TemplatedDecodeSortKeyINS0_23SortKeyConstantOperatorIbEEEEvPNS0_17DecodeSortKeyDataERNS0_23DecodeSortKeyVectorDataERNS_6VectorEmm.exit, label %bb.ec, !llvm.loop !209

bb.ej:                                            ; preds = %bb.a
  %i.aap = load i8, ptr %i.c, align 8, !tbaa !80
  %i.aaq = icmp eq i8 %i.aap, 25
  %i.aar = load i8, ptr %2, align 8, !tbaa !186
  %i.aas = icmp eq i8 %i.aar, 2                   ; 2 uses
  br i1 %i.aaq, label %bb.ek, label %bb.ew

bb.ek:                                            ; preds = %bb.ej
  br i1 %i.aas, label %bb.em, label %bb.el

bb.el:                                            ; preds = %bb.ek
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %.in.i364 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aat = load ptr, ptr %.in.i364, align 8, !tbaa !81
  %i.aau = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %.not.i365 = icmp eq i64 %4, 0
  br i1 %.not.i365, label %_ZN6duckdb12_GLOBAL__N_122TemplatedDecodeSortKeyINS0_23SortKeyConstantOperatorIbEEEEvPNS0_17DecodeSortKeyDataERNS0_23DecodeSortKeyVectorDataERNS_6VectorEmm.exit, label %.lr.ph.i366

.lr.ph.i366:                                      ; preds = %bb.em
  %i.aav = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aaw = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.en

bb.en:                                            ; preds = %bb.ev, %.lr.ph.i366
  %.030.i = phi i64 [ 0, %.lr.ph.i366 ], [ %i.aft, %bb.ev ] ; 3 uses
  %i.aax = add i64 %.030.i, %3                    ; 3 uses
  %i.aay = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.030.i ; 2 uses
  %i.aaz = load ptr, ptr %i.aay, align 8, !tbaa !164 ; 3 uses
  %i.aba = ptrtoaddr ptr %i.aaz to i64            ; 2 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aay, i64 16 ; 4 uses
  %i.abc = load i64, ptr %i.abb, align 8, !tbaa !167 ; 4 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %i.aaz, i64 %i.abc
  %i.abe = load i8, ptr %i.abd, align 1, !tbaa !18
  %i.abf = add i64 %i.abc, 1                      ; 2 uses
  store i64 %i.abf, ptr %i.abb, align 8, !tbaa !167
  %i.abg = load i8, ptr %1, align 8, !tbaa !180
  %i.abh = icmp eq i8 %i.abe, %i.abg
  br i1 %i.abh, label %bb.eo, label %bb.eq

bb.eo:                                            ; preds = %bb.en
  %i.abi = load ptr, ptr %i.aau, align 8, !tbaa !159 ; 2 uses
  %.not.i.i369 = icmp eq ptr %i.abi, null
  br i1 %.not.i.i369, label %bb.ep, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i370

bb.ep:                                            ; preds = %bb.eo
  %i.abj = load i64, ptr %i.aaw, align 8, !tbaa !160
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.aau, i64 noundef %i.abj)
  %.pre.i.i371 = load ptr, ptr %i.aau, align 8, !tbaa !159
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i370

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i370: ; preds = %bb.ep, %bb.eo
  %i.abk = phi ptr [ %.pre.i.i371, %bb.ep ], [ %i.abi, %bb.eo ]
  %i.abl = lshr i64 %i.aax, 6
  %i.abm = and i64 %i.aax, 63
  %i.abn = shl nuw i64 1, %i.abm
  %i.abo = xor i64 %i.abn, -1
  %i.abp = getelementptr inbounds nuw [8 x i8], ptr %i.abk, i64 %i.abl ; 2 uses
  %i.abq = load i64, ptr %i.abp, align 8, !tbaa !14
  %i.abr = and i64 %i.abq, %i.abo
  store i64 %i.abr, ptr %i.abp, align 8, !tbaa !14
  br label %bb.ev

bb.eq:                                            ; preds = %bb.en
  %i.abs = getelementptr inbounds nuw i8, ptr %i.aaz, i64 %i.abf ; 15 uses
  %i.abt = load i8, ptr %i.aav, align 8, !tbaa !174, !range !187, !noundef !188
  %i.abu = trunc nuw i8 %i.abt to i1              ; 2 uses
  %spec.select.i.i = select i1 %i.abu, i32 255, i32 0
  br label %bb.er

bb.er:                                            ; preds = %bb.er, %bb.eq
  %.024.i.i = phi i64 [ 0, %bb.eq ], [ %i.aby, %bb.er ] ; 23 uses
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abs, i64 %.024.i.i
  %i.abw = load i8, ptr %i.abv, align 1, !tbaa !18
  %i.abx = zext i8 %i.abw to i32
  %.not.i28.i = icmp eq i32 %spec.select.i.i, %i.abx
  %i.aby = add i64 %.024.i.i, 1                   ; 2 uses
  br i1 %.not.i28.i, label %bb.es, label %bb.er, !llvm.loop !210

bb.es:                                            ; preds = %bb.er
  %i.abz = getelementptr inbounds nuw [16 x i8], ptr %i.aat, i64 %i.aax ; 4 uses
  %i.aca = tail call { i64, ptr } @_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %.024.i.i) ; 2 uses
  %i.acb = extractvalue { i64, ptr } %i.aca, 0    ; 2 uses
  %i.acc = extractvalue { i64, ptr } %i.aca, 1    ; 2 uses
  store i64 %i.acb, ptr %i.abz, align 8
  %.sroa.4.0..sroa_idx.i.i367 = getelementptr inbounds nuw i8, ptr %i.abz, i64 8 ; 2 uses
  store ptr %i.acc, ptr %.sroa.4.0..sroa_idx.i.i367, align 8, !tbaa !18
  %i.acd = trunc i64 %i.acb to i32
  %i.ace = icmp ult i32 %i.acd, 13
  %i.acf = getelementptr inbounds nuw i8, ptr %i.abz, i64 4 ; 3 uses
  %i.acg = select i1 %i.ace, ptr %i.acf, ptr %i.acc ; 15 uses
  %i.ach = ptrtoaddr ptr %i.acg to i64            ; 2 uses
  %.not26.i.i = icmp eq i64 %.024.i.i, 0
  br i1 %.not26.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.es
  %min.iters.check = icmp ult i64 %.024.i.i, 4    ; 2 uses
  br i1 %i.abu, label %iter.check, label %iter.check609

iter.check609:                                    ; preds = %.lr.ph.i.i
  br i1 %min.iters.check, label %.lr.ph.split.i.i.preheader, label %vector.memcheck593

vector.memcheck593:                               ; preds = %iter.check609
  %i.aci = sub i64 %i.abc, %i.ach
  %i.acj = add i64 %i.aci, %i.aba
  %diff.check594 = icmp ugt i64 %i.acj, -33
  br i1 %diff.check594, label %.lr.ph.split.i.i.preheader, label %vector.main.loop.iter.check596

vector.main.loop.iter.check596:                   ; preds = %vector.memcheck593
  %min.iters.check597 = icmp ult i64 %.024.i.i, 32
  br i1 %min.iters.check597, label %vec.epilog.ph613, label %vector.ph598

vector.ph598:                                     ; preds = %vector.main.loop.iter.check596
  %n.mod.vf599 = and i64 %.024.i.i, 28
  %n.vec600 = and i64 %.024.i.i, -32              ; 4 uses
  br label %vector.body601

vector.body601:                                   ; preds = %vector.body601, %vector.ph598
  %index602 = phi i64 [ 0, %vector.ph598 ], [ %index.next605, %vector.body601 ] ; 3 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %i.abs, i64 %index602 ; 2 uses
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ack, i64 16
  %wide.load603 = load <16 x i8>, ptr %i.ack, align 1, !tbaa !18
  %wide.load604 = load <16 x i8>, ptr %i.acl, align 1, !tbaa !18
  %i.acm = add <16 x i8> %wide.load603, splat (i8 -1)
  %i.acn = add <16 x i8> %wide.load604, splat (i8 -1)
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acg, i64 %index602 ; 2 uses
  %i.acp = getelementptr inbounds nuw i8, ptr %i.aco, i64 16
  store <16 x i8> %i.acm, ptr %i.aco, align 1, !tbaa !18
  store <16 x i8> %i.acn, ptr %i.acp, align 1, !tbaa !18
  %index.next605 = add nuw i64 %index602, 32      ; 2 uses
  %i.acq = icmp eq i64 %index.next605, %n.vec600
  br i1 %i.acq, label %middle.block606, label %vector.body601, !llvm.loop !211

middle.block606:                                  ; preds = %vector.body601
  %cmp.n607 = icmp eq i64 %.024.i.i, %n.vec600
  br i1 %cmp.n607, label %._crit_edge.i.i, label %vec.epilog.iter.check611

vec.epilog.iter.check611:                         ; preds = %middle.block606
  %min.epilog.iters.check612 = icmp eq i64 %n.mod.vf599, 0
  br i1 %min.epilog.iters.check612, label %.lr.ph.split.i.i.preheader, label %vec.epilog.ph613, !prof !212

vec.epilog.ph613:                                 ; preds = %vector.main.loop.iter.check596, %vec.epilog.iter.check611
  %vec.epilog.resume.val608 = phi i64 [ %n.vec600, %vec.epilog.iter.check611 ], [ 0, %vector.main.loop.iter.check596 ]
  %n.vec615 = and i64 %.024.i.i, -4               ; 3 uses
  br label %vec.epilog.vector.body616

vec.epilog.vector.body616:                        ; preds = %vec.epilog.vector.body616, %vec.epilog.ph613
  %index617 = phi i64 [ %vec.epilog.resume.val608, %vec.epilog.ph613 ], [ %index.next619, %vec.epilog.vector.body616 ] ; 3 uses
  %i.acr = getelementptr inbounds nuw i8, ptr %i.abs, i64 %index617
  %wide.load618 = load <4 x i8>, ptr %i.acr, align 1, !tbaa !18
  %i.acs = add <4 x i8> %wide.load618, splat (i8 -1)
  %i.act = getelementptr inbounds nuw i8, ptr %i.acg, i64 %index617
  store <4 x i8> %i.acs, ptr %i.act, align 1, !tbaa !18
  %index.next619 = add nuw i64 %index617, 4       ; 2 uses
  %i.acu = icmp eq i64 %index.next619, %n.vec615
  br i1 %i.acu, label %vec.epilog.middle.block620, label %vec.epilog.vector.body616, !llvm.loop !213

vec.epilog.middle.block620:                       ; preds = %vec.epilog.vector.body616
  %cmp.n621 = icmp eq i64 %.024.i.i, %n.vec615
  br i1 %cmp.n621, label %._crit_edge.i.i, label %.lr.ph.split.i.i.preheader

.lr.ph.split.i.i.preheader:                       ; preds = %vector.memcheck593, %iter.check609, %vec.epilog.iter.check611, %vec.epilog.middle.block620
  %.125.i.i.ph = phi i64 [ 0, %iter.check609 ], [ 0, %vector.memcheck593 ], [ %n.vec600, %vec.epilog.iter.check611 ], [ %n.vec615, %vec.epilog.middle.block620 ] ; 3 uses
  %xtraiter = and i64 %.024.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.i.i.prol.loopexit, label %.lr.ph.split.i.i.prol

.lr.ph.split.i.i.prol:                            ; preds = %.lr.ph.split.i.i.preheader, %.lr.ph.split.i.i.prol
  %.125.i.i.prol = phi i64 [ %i.acz, %.lr.ph.split.i.i.prol ], [ %.125.i.i.ph, %.lr.ph.split.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.i.i.prol ], [ 0, %.lr.ph.split.i.i.preheader ]
  %i.acv = getelementptr inbounds nuw i8, ptr %i.abs, i64 %.125.i.i.prol
  %i.acw = load i8, ptr %i.acv, align 1, !tbaa !18
  %i.acx = add i8 %i.acw, -1
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acg, i64 %.125.i.i.prol
  store i8 %i.acx, ptr %i.acy, align 1, !tbaa !18
  %i.acz = add nuw i64 %.125.i.i.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.i.i.prol.loopexit, label %.lr.ph.split.i.i.prol, !llvm.loop !214

.lr.ph.split.i.i.prol.loopexit:                   ; preds = %.lr.ph.split.i.i.prol, %.lr.ph.split.i.i.preheader
  %.125.i.i.unr = phi i64 [ %.125.i.i.ph, %.lr.ph.split.i.i.preheader ], [ %i.acz, %.lr.ph.split.i.i.prol ]
  %i.ada = sub i64 %.125.i.i.ph, %.024.i.i
  %i.adb = icmp ugt i64 %i.ada, -4
  br i1 %i.adb, label %._crit_edge.i.i, label %.lr.ph.split.i.i

iter.check:                                       ; preds = %.lr.ph.i.i
  br i1 %min.iters.check, label %.lr.ph.split.us.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.adc = sub i64 %i.abc, %i.ach
  %i.add = add i64 %i.adc, %i.aba
  %diff.check = icmp ugt i64 %i.add, -33
  br i1 %diff.check, label %.lr.ph.split.us.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check585 = icmp ult i64 %.024.i.i, 32
  br i1 %min.iters.check585, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %.024.i.i, 28
  %n.vec = and i64 %.024.i.i, -32                 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ade = getelementptr inbounds nuw i8, ptr %i.abs, i64 %index ; 2 uses
  %i.adf = getelementptr inbounds nuw i8, ptr %i.ade, i64 16
  %wide.load = load <16 x i8>, ptr %i.ade, align 1, !tbaa !18
  %wide.load586 = load <16 x i8>, ptr %i.adf, align 1, !tbaa !18
  %i.adg = sub <16 x i8> splat (i8 -2), %wide.load
  %i.adh = sub <16 x i8> splat (i8 -2), %wide.load586
  %i.adi = getelementptr inbounds nuw i8, ptr %i.acg, i64 %index ; 2 uses
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adi, i64 16
  store <16 x i8> %i.adg, ptr %i.adi, align 1, !tbaa !18
  store <16 x i8> %i.adh, ptr %i.adj, align 1, !tbaa !18
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.adk = icmp eq i64 %index.next, %n.vec
  br i1 %i.adk, label %middle.block, label %vector.body, !llvm.loop !216

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.024.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.split.us.i.i.preheader, label %vec.epilog.ph, !prof !212

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec588 = and i64 %.024.i.i, -4               ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index589 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next591, %vec.epilog.vector.body ] ; 3 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %i.abs, i64 %index589
  %wide.load590 = load <4 x i8>, ptr %i.adl, align 1, !tbaa !18
  %i.adm = sub <4 x i8> splat (i8 -2), %wide.load590
  %i.adn = getelementptr inbounds nuw i8, ptr %i.acg, i64 %index589
  store <4 x i8> %i.adm, ptr %i.adn, align 1, !tbaa !18
  %index.next591 = add nuw i64 %index589, 4       ; 2 uses
  %i.ado = icmp eq i64 %index.next591, %n.vec588
  br i1 %i.ado, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !217

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n592 = icmp eq i64 %.024.i.i, %n.vec588
  br i1 %cmp.n592, label %._crit_edge.i.i, label %.lr.ph.split.us.i.i.preheader

.lr.ph.split.us.i.i.preheader:                    ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.125.us.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec588, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter664 = and i64 %.024.i.i, 3             ; 2 uses
  %lcmp.mod665.not = icmp eq i64 %xtraiter664, 0
  br i1 %lcmp.mod665.not, label %.lr.ph.split.us.i.i.prol.loopexit, label %.lr.ph.split.us.i.i.prol

.lr.ph.split.us.i.i.prol:                         ; preds = %.lr.ph.split.us.i.i.preheader, %.lr.ph.split.us.i.i.prol
  %.125.us.i.i.prol = phi i64 [ %i.adt, %.lr.ph.split.us.i.i.prol ], [ %.125.us.i.i.ph, %.lr.ph.split.us.i.i.preheader ] ; 3 uses
  %prol.iter666 = phi i64 [ %prol.iter666.next, %.lr.ph.split.us.i.i.prol ], [ 0, %.lr.ph.split.us.i.i.preheader ]
  %i.adp = getelementptr inbounds nuw i8, ptr %i.abs, i64 %.125.us.i.i.prol
  %i.adq = load i8, ptr %i.adp, align 1, !tbaa !18
  %i.adr = sub i8 -2, %i.adq
  %i.ads = getelementptr inbounds nuw i8, ptr %i.acg, i64 %.125.us.i.i.prol
  store i8 %i.adr, ptr %i.ads, align 1, !tbaa !18
  %i.adt = add nuw i64 %.125.us.i.i.prol, 1       ; 2 uses
  %prol.iter666.next = add i64 %prol.iter666, 1   ; 2 uses
  %prol.iter666.cmp.not = icmp eq i64 %prol.iter666.next, %xtraiter664
  br i1 %prol.iter666.cmp.not, label %.lr.ph.split.us.i.i.prol.loopexit, label %.lr.ph.split.us.i.i.prol, !llvm.loop !218

.lr.ph.split.us.i.i.prol.loopexit:                ; preds = %.lr.ph.split.us.i.i.prol, %.lr.ph.split.us.i.i.preheader
  %.125.us.i.i.unr = phi i64 [ %.125.us.i.i.ph, %.lr.ph.split.us.i.i.preheader ], [ %i.adt, %.lr.ph.split.us.i.i.prol ]
  %i.adu = sub i64 %.125.us.i.i.ph, %.024.i.i
  %i.adv = icmp ugt i64 %i.adu, -4
  br i1 %i.adv, label %._crit_edge.i.i, label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.split.us.i.i.prol.loopexit, %.lr.ph.split.us.i.i
  %.125.us.i.i = phi i64 [ %i.aep, %.lr.ph.split.us.i.i ], [ %.125.us.i.i.unr, %.lr.ph.split.us.i.i.prol.loopexit ] ; 6 uses
  %i.adw = getelementptr inbounds nuw i8, ptr %i.abs, i64 %.125.us.i.i
  %i.adx = load i8, ptr %i.adw, align 1, !tbaa !18
  %i.ady = sub i8 -2, %i.adx
  %i.adz = getelementptr inbounds nuw i8, ptr %i.acg, i64 %.125.us.i.i
  store i8 %i.ady, ptr %i.adz, align 1, !tbaa !18
  %i.aea = add nuw i64 %.125.us.i.i, 1            ; 2 uses
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.abs, i64 %i.aea
  %i.aec = load i8, ptr %i.aeb, align 1, !tbaa !18
  %i.aed = sub i8 -2, %i.aec
  %i.aee = getelementptr inbounds nuw i8, ptr %i.acg, i64 %i.aea
  store i8 %i.aed, ptr %i.aee, align 1, !tbaa !18
  %i.aef = add nuw i64 %.125.us.i.i, 2            ; 2 uses
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.abs, i64 %i.aef
  %i.aeh = load i8, ptr %i.aeg, align 1, !tbaa !18
  %i.aei = sub i8 -2, %i.aeh
  %i.aej = getelementptr inbounds nuw i8, ptr %i.acg, i64 %i.aef
  store i8 %i.aei, ptr %i.aej, align 1, !tbaa !18
  %i.aek = add nuw i64 %.125.us.i.i, 3            ; 2 uses
  %i.ael = getelementptr inbounds nuw i8, ptr %i.abs, i64 %i.aek
  %i.aem = load i8, ptr %i.ael, align 1, !tbaa !18
  %i.aen = sub i8 -2, %i.aem
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.acg, i64 %i.aek
  store i8 %i.aen, ptr %i.aeo, align 1, !tbaa !18
  %i.aep = add nuw i64 %.125.us.i.i, 4            ; 2 uses
  %exitcond31.not.i.i.3 = icmp eq i64 %i.aep, %.024.i.i
  br i1 %exitcond31.not.i.i.3, label %._crit_edge.i.i, label %.lr.ph.split.us.i.i, !llvm.loop !219

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.split.i.i.prol.loopexit, %.lr.ph.split.i.i
  %.125.i.i = phi i64 [ %i.afj, %.lr.ph.split.i.i ], [ %.125.i.i.unr, %.lr.ph.split.i.i.prol.loopexit ] ; 6 uses
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.abs, i64 %.125.i.i
  %i.aer = load i8, ptr %i.aeq, align 1, !tbaa !18
  %i.aes = add i8 %i.aer, -1
  %i.aet = getelementptr inbounds nuw i8, ptr %i.acg, i64 %.125.i.i
  store i8 %i.aes, ptr %i.aet, align 1, !tbaa !18
  %i.aeu = add nuw i64 %.125.i.i, 1               ; 2 uses
  %i.aev = getelementptr inbounds nuw i8, ptr %i.abs, i64 %i.aeu
  %i.aew = load i8, ptr %i.aev, align 1, !tbaa !18
  %i.aex = add i8 %i.aew, -1
  %i.aey = getelementptr inbounds nuw i8, ptr %i.acg, i64 %i.aeu
  store i8 %i.aex, ptr %i.aey, align 1, !tbaa !18
  %i.aez = add nuw i64 %.125.i.i, 2               ; 2 uses
  %i.afa = getelementptr inbounds nuw i8, ptr %i.abs, i64 %i.aez
  %i.afb = load i8, ptr %i.afa, align 1, !tbaa !18
  %i.afc = add i8 %i.afb, -1
  %i.afd = getelementptr inbounds nuw i8, ptr %i.acg, i64 %i.aez
  store i8 %i.afc, ptr %i.afd, align 1, !tbaa !18
  %i.afe = add nuw i64 %.125.i.i, 3               ; 2 uses
  %i.aff = getelementptr inbounds nuw i8, ptr %i.abs, i64 %i.afe
  %i.afg = load i8, ptr %i.aff, align 1, !tbaa !18
  %i.afh = add i8 %i.afg, -1
  %i.afi = getelementptr inbounds nuw i8, ptr %i.acg, i64 %i.afe
  store i8 %i.afh, ptr %i.afi, align 1, !tbaa !18
  %i.afj = add nuw i64 %.125.i.i, 4               ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.afj, %.024.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.i.i, label %.lr.ph.split.i.i, !llvm.loop !220

._crit_edge.i.i:                                  ; preds = %.lr.ph.split.i.i.prol.loopexit, %.lr.ph.split.i.i, %.lr.ph.split.us.i.i.prol.loopexit, %.lr.ph.split.us.i.i, %middle.block606, %vec.epilog.middle.block620, %middle.block, %vec.epilog.middle.block, %bb.es
  %i.afk = load i32, ptr %i.abz, align 8, !tbaa !18 ; 2 uses
  %i.afl = icmp ult i32 %i.afk, 13
  br i1 %i.afl, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %._crit_edge.i.i
  %i.afm = zext nneg i32 %i.afk to i64            ; 2 uses
  %i.afn = getelementptr inbounds nuw i8, ptr %i.acf, i64 %i.afm
  %i.afo = sub nuw nsw i64 12, %i.afm
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.afn, i8 0, i64 %i.afo, i1 false)
  br label %_ZN6duckdb12_GLOBAL__N_122SortKeyVarcharOperator6DecodeEPKhRNS_6VectorERNS_8string_tEb.exit.i

bb.eu:                                            ; preds = %._crit_edge.i.i
  %i.afp = load ptr, ptr %.sroa.4.0..sroa_idx.i.i367, align 8
  %i.afq = load i32, ptr %i.afp, align 1
  store i32 %i.afq, ptr %i.acf, align 4
  br label %_ZN6duckdb12_GLOBAL__N_122SortKeyVarcharOperator6DecodeEPKhRNS_6VectorERNS_8string_tEb.exit.i

_ZN6duckdb12_GLOBAL__N_122SortKeyVarcharOperator6DecodeEPKhRNS_6VectorERNS_8string_tEb.exit.i: ; preds = %bb.eu, %bb.et
  %i.afr = load i64, ptr %i.abb, align 8, !tbaa !167
  %i.afs = add i64 %i.afr, %i.aby
  store i64 %i.afs, ptr %i.abb, align 8, !tbaa !167
  br label %bb.ev

bb.ev:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_122SortKeyVarcharOperator6DecodeEPKhRNS_6VectorERNS_8string_tEb.exit.i, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i370
  %i.aft = add nuw i64 %.030.i, 1                 ; 2 uses
  %exitcond.not.i368 = icmp eq i64 %i.aft, %4
  br i1 %exitcond.not.i368, label %_ZN6duckdb12_GLOBAL__N_122TemplatedDecodeSortKeyINS0_23SortKeyConstantOperatorIbEEEEvPNS0_17DecodeSortKeyDataERNS0_23DecodeSortKeyVectorDataERNS_6VectorEmm.exit, label %bb.en, !llvm.loop !221

bb.ew:                                            ; preds = %bb.ej
  br i1 %i.aas, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ew
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %.in.i372 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.afu = load ptr, ptr %.in.i372, align 8, !tbaa !81
  %i.afv = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %.not.i373 = icmp eq i64 %4, 0
  br i1 %.not.i373, label %_ZN6duckdb12_GLOBAL__N_122TemplatedDecodeSortKeyINS0_23SortKeyConstantOperatorIbEEEEvPNS0_17DecodeSortKeyDataERNS0_23DecodeSortKeyVectorDataERNS_6VectorEmm.exit, label %.lr.ph.i374

.lr.ph.i374:                                      ; preds = %bb.ey
  %i.afw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.afx = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ff, %.lr.ph.i374
  %.031.i = phi i64 [ 0, %.lr.ph.i374 ], [ %i.aiq, %bb.ff ] ; 3 uses
  %i.afy = add i64 %.031.i, %3                    ; 3 uses
  %i.afz = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.031.i ; 2 uses
  %i.aga = load ptr, ptr %i.afz, align 8, !tbaa !164 ; 2 uses
  %i.agb = getelementptr inbounds nuw i8, ptr %i.afz, i64 16 ; 4 uses
  %i.agc = load i64, ptr %i.agb, align 8, !tbaa !167 ; 2 uses
  %i.agd = getelementptr inbounds nuw i8, ptr %i.aga, i64 %i.agc
  %i.age = load i8, ptr %i.agd, align 1, !tbaa !18
  %i.agf = add i64 %i.agc, 1                      ; 2 uses
  store i64 %i.agf, ptr %i.agb, align 8, !tbaa !167
  %i.agg = load i8, ptr %1, align 8, !tbaa !180
  %i.agh = icmp eq i8 %i.age, %i.agg
end_hunk_0
begin_hunk_1_@_ZN6duckdb12_GLOBAL__N_117CreateSortKeyBindERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS7_ELb1EEELb1ESaISA_EEE:bb.a
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115SortKeyBindDataESt14default_deleteIS2_EED2Ev.exit86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73.thread: ; preds = %bb.l
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.s:                                             ; preds = %bb.q, %bb.p
  %.034 = phi i1 [ false, %bb.q ], [ true, %bb.p ] ; 2 uses
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.al = load ptr, ptr %8, align 8, !tbaa !16    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %bb.s
  call void @_ZdlPv(ptr noundef %i.al) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %i.ao = load ptr, ptr %6, align 8, !tbaa !16    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.thread: ; preds = %bb.m, %bb.n, %bb.o
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %i.as = load ptr, ptr %6, align 8, !tbaa !16    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.thread
  call void @_ZdlPv(ptr noundef %i.as) #30
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70
  call void @_ZdlPv(ptr noundef %i.ao) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br i1 %.034, label %bb.t, label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115SortKeyBindDataESt14default_deleteIS2_EED2Ev.exit86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br i1 %.034, label %bb.t, label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115SortKeyBindDataESt14default_deleteIS2_EED2Ev.exit86

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71.thread
  %.pn53.pn97.ph = phi { ptr, i32 } [ %i.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71.thread ], [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73.thread ], [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %bb.t

bb.t:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %.pn53.pn97 = phi { ptr, i32 } [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71 ], [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73 ], [ %.pn53.pn97.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.ac) #29
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115SortKeyBindDataESt14default_deleteIS2_EED2Ev.exit86

bb.u:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %.037122)
          to label %bb.v unwind label %bb.ab

bb.v:                                             ; preds = %bb.u
  %i.aw = invoke noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.av)
          to label %bb.w unwind label %bb.ab

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN6duckdb18ExpressionExecutor14EvaluateScalarERNS_13ClientContextERKNS_10ExpressionEb(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %9, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(88) %i.aw, i1 noundef zeroext false)
          to label %bb.x unwind label %bb.ab

bb.x:                                             ; preds = %bb.w
  %i.ax = load i8, ptr %i.q, align 8, !tbaa !306, !range !187, !noundef !188
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.y, label %bb.ae

bb.y:                                             ; preds = %bb.x
  %i.az = call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.77, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.z unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76.thread

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN6duckdb15BinderExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z
  invoke void @__cxa_throw(ptr nonnull %i.az, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.ba unwind label %bb.ac

bb.ab:                                            ; preds = %bb.w, %bb.v, %bb.u
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76.thread: ; preds = %bb.y
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa, %bb.z
  %.032 = phi i1 [ false, %bb.aa ], [ true, %bb.z ] ; 2 uses
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bd = load ptr, ptr %10, align 8, !tbaa !16   ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %bb.ac
  call void @_ZdlPv(ptr noundef %i.bd) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br i1 %.032, label %bb.ad, label %bb.ap

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br i1 %.032, label %bb.ad, label %bb.ap

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  %.pn59109 = phi { ptr, i32 } [ %i.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76.thread ], [ %i.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76 ], [ %i.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74 ]
  call void @__cxa_free_exception(ptr %i.az) #29
  br label %bb.ap

bb.ae:                                            ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  invoke void @_ZNK6duckdb5Value8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(64) %9)
          to label %bb.af unwind label %bb.am

bb.af:                                            ; preds = %bb.ae
  %i.bg = invoke fastcc noundef ptr @_ZNK6duckdb10unique_ptrINS_12_GLOBAL__N_115SortKeyBindDataESt14default_deleteIS2_ELb1EEptEv(ptr nonnull %i.n)
          to label %bb.ag unwind label %bb.an     ; 0 uses

bb.ag:                                            ; preds = %bb.af
  %i.bh = invoke i16 @_ZN6duckdb14OrderModifiers5ParseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.ah unwind label %.loopexit ; 2 uses

bb.ah:                                            ; preds = %bb.ag
  %i.bi = load ptr, ptr %i.r, align 8, !tbaa !24  ; 5 uses
  %i.bj = load ptr, ptr %i.s, align 8, !tbaa !23
  %.not.i.i = icmp eq ptr %i.bi, %i.bj
  br i1 %.not.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store i16 %i.bh, ptr %i.bi, align 1
  %i.bk = load ptr, ptr %i.r, align 8, !tbaa !24
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  store ptr %i.bl, ptr %i.r, align 8, !tbaa !24
  br label %_ZNSt6vectorIN6duckdb14OrderModifiersESaIS1_EE9push_backEOS1_.exit

bb.aj:                                            ; preds = %bb.ah
  %i.bm = load ptr, ptr %i.o, align 8, !tbaa !20  ; 9 uses
  %i.bn = ptrtoint ptr %i.bi to i64               ; 2 uses
  %i.bo = ptrtoint ptr %i.bm to i64               ; 3 uses
  %i.bp = sub i64 %i.bn, %i.bo                    ; 3 uses
  %i.bq = icmp eq i64 %i.bp, 9223372036854775806
  br i1 %i.bq, label %bb.ak, label %_ZNKSt6vectorIN6duckdb14OrderModifiersESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #31
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.ak
  unreachable

_ZNKSt6vectorIN6duckdb14OrderModifiersESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.aj
  %i.br = ashr exact i64 %i.bp, 1                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.br, i64 1)
  %i.bs = add i64 %.sroa.speculated.i.i.i.i, %i.br ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.br
  %i.bu = call i64 @llvm.umin.i64(i64 %i.bs, i64 4611686018427387903)
  %i.bv = select i1 %i.bt, i64 4611686018427387903, i64 %i.bu ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bv, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bw = shl nuw nsw i64 %i.bv, 1
  %i.bx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #32
          to label %.noexc77 unwind label %.loopexit ; 10 uses

.noexc77:                                         ; preds = %_ZNKSt6vectorIN6duckdb14OrderModifiersESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bp
  store i16 %i.bh, ptr %i.by, align 1
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.bm, %i.bi
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb14OrderModifiersESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %iter.check

iter.check:                                       ; preds = %.noexc77
  %i.bz = ptrtoaddr ptr %i.bx to i64
  %i.ca = add i64 %i.bn, -2
  %i.cb = sub i64 %i.ca, %i.bo                    ; 3 uses
  %i.cc = lshr i64 %i.cb, 1
  %i.cd = add nuw i64 %i.cc, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.cb, 6
  %i.ce = sub i64 %i.bz, %i.bo
  %diff.check = icmp ult i64 %i.ce, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check169 = icmp ult i64 %i.cb, 30
  br i1 %min.iters.check169, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.cd, 12
  %n.vec = and i64 %i.cd, -16                     ; 4 uses
  %i.cf = shl i64 %n.vec, 1                       ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bx, i64 %i.cf  ; 2 uses
  %i.ch = getelementptr i8, ptr %i.bm, i64 %i.cf
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ci = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bx, i64 %i.ci ; 2 uses
  %next.gep170 = getelementptr i8, ptr %i.bm, i64 %i.ci ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !312)
  call void @llvm.experimental.noalias.scope.decl(metadata !315)
  %i.cj = getelementptr i8, ptr %next.gep170, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep170, align 1, !alias.scope !315, !noalias !312
  %wide.load171 = load <8 x i16>, ptr %i.cj, align 1, !alias.scope !315, !noalias !312
  %i.ck = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load, ptr %next.gep, align 1, !alias.scope !312, !noalias !315
  store <8 x i16> %wide.load171, ptr %i.ck, align 1, !alias.scope !312, !noalias !315
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !317

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cd, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb14OrderModifiersESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !318

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec174 = and i64 %i.cd, -4                   ; 3 uses
  %i.cm = shl i64 %n.vec174, 1                    ; 2 uses
  %i.cn = getelementptr i8, ptr %i.bx, i64 %i.cm  ; 2 uses
  %i.co = getelementptr i8, ptr %i.bm, i64 %i.cm
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index175 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next179, %vec.epilog.vector.body ] ; 2 uses
  %i.cp = shl i64 %index175, 1                    ; 2 uses
  %next.gep176 = getelementptr i8, ptr %i.bx, i64 %i.cp
  %next.gep177 = getelementptr i8, ptr %i.bm, i64 %i.cp
  call void @llvm.experimental.noalias.scope.decl(metadata !312)
  call void @llvm.experimental.noalias.scope.decl(metadata !315)
  %wide.load178 = load <4 x i16>, ptr %next.gep177, align 1, !alias.scope !315, !noalias !312
  store <4 x i16> %wide.load178, ptr %next.gep176, align 1, !alias.scope !312, !noalias !315
  %index.next179 = add nuw i64 %index175, 4       ; 2 uses
  %i.cq = icmp eq i64 %index.next179, %n.vec174
  br i1 %i.cq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !319

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n180 = icmp eq i64 %i.cd, %n.vec174
  br i1 %cmp.n180, label %_ZNSt6vectorIN6duckdb14OrderModifiersESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.bx, %iter.check ], [ %i.cg, %vec.epilog.iter.check ], [ %i.cn, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.bm, %iter.check ], [ %i.ch, %vec.epilog.iter.check ], [ %i.co, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ct, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.cs, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !312)
  call void @llvm.experimental.noalias.scope.decl(metadata !315)
  %i.cr = load i16, ptr %.0911.i.i.i.i.i.i.i, align 1, !alias.scope !315, !noalias !312
  store i16 %i.cr, ptr %.012.i.i.i.i.i.i.i, align 1, !alias.scope !312, !noalias !315
  %i.cs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 2 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 2 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cs, %i.bi
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb14OrderModifiersESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !320

_ZNSt6vectorIN6duckdb14OrderModifiersESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc77
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.bx, %.noexc77 ], [ %i.cn, %vec.epilog.middle.block ], [ %i.cg, %middle.block ], [ %i.ct, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 2
  %.not.i23.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb14OrderModifiersESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIN6duckdb14OrderModifiersESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bm) #30
  br label %_ZNSt6vectorIN6duckdb14OrderModifiersESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb14OrderModifiersESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.al, %_ZNSt6vectorIN6duckdb14OrderModifiersESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.bx, ptr %i.o, align 8, !tbaa !20
  store ptr %i.cu, ptr %i.r, align 8, !tbaa !24
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %i.bv
  store ptr %i.cv, ptr %i.s, align 8, !tbaa !23
  br label %_ZNSt6vectorIN6duckdb14OrderModifiersESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN6duckdb14OrderModifiersESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorIN6duckdb14OrderModifiersESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.ai
  %i.cw = load ptr, ptr %12, align 8, !tbaa !16   ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.t
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78: ; preds = %_ZNSt6vectorIN6duckdb14OrderModifiersESaIS1_EE9push_backEOS1_.exit
  call void @_ZdlPv(ptr noundef %i.cw) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80: ; preds = %_ZNSt6vectorIN6duckdb14OrderModifiersESaIS1_EE9push_backEOS1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  %i.cy = add i64 %.037122, 2                     ; 2 uses
  %i.cz = load ptr, ptr %i.a, align 8, !tbaa !298 ; 2 uses
  %i.da = load ptr, ptr %3, align 8, !tbaa !301   ; 2 uses
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = sub i64 %i.db, %i.dc
  %i.de = ashr exact i64 %i.dd, 3
  %i.df = icmp ult i64 %i.cy, %i.de
  br i1 %i.df, label %bb.h, label %.preheader, !llvm.loop !321

bb.am:                                            ; preds = %bb.ae
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83

bb.an:                                            ; preds = %bb.af
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit:                                        ; preds = %bb.ag, %_ZNKSt6vectorIN6duckdb14OrderModifiersESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp:                               ; preds = %bb.ak
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.an
  %.pn56 = phi { ptr, i32 } [ %i.dh, %bb.an ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.di = load ptr, ptr %12, align 8, !tbaa !16   ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.t
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81: ; preds = %bb.ao
  call void @_ZdlPv(ptr noundef %i.di) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81, %bb.am
  %.pn56.pn = phi { ptr, i32 } [ %i.dg, %bb.am ], [ %.pn56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81 ], [ %.pn56, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  br label %bb.ap

bb.ap:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %bb.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83
  %.pn59.pn = phi { ptr, i32 } [ %.pn59109, %bb.ad ], [ %i.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76 ], [ %.pn56.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83 ], [ %i.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74 ]
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %9) #29
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ab
  %.pn59.pn.pn = phi { ptr, i32 } [ %.pn59.pn, %bb.ap ], [ %i.ba, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115SortKeyBindDataESt14default_deleteIS2_EED2Ev.exit86

._crit_edge:                                      ; preds = %bb.ax
  %i.dk = icmp ult i64 %.129, 9
  %i.dl = select i1 %.131, i1 %i.dk, i1 false
  br i1 %i.dl, label %._crit_edge.thread, label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115SortKeyBindDataESt14default_deleteIS2_EED2Ev.exit

.lr.ph126:                                        ; preds = %.preheader, %bb.ax
  %.027125 = phi i64 [ %i.dv, %bb.ax ], [ 0, %.preheader ] ; 2 uses
  %.028124 = phi i64 [ %.129, %bb.ax ], [ 0, %.preheader ] ; 2 uses
  %.030123 = phi i1 [ %.131, %bb.ax ], [ true, %.preheader ]
  %i.dm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %.027125)
          to label %bb.ar unwind label %bb.au

bb.ar:                                            ; preds = %.lr.ph126
  %i.dn = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dm)
          to label %bb.as unwind label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 57
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !67  ; 2 uses
  %i.dq = invoke noundef zeroext i1 @_ZN6duckdb18TypeIsConstantSizeENS_12PhysicalTypeE(i8 noundef zeroext %i.dp)
          to label %bb.at unwind label %bb.au

bb.at:                                            ; preds = %bb.as
  br i1 %i.dq, label %bb.av, label %bb.ax

bb.au:                                            ; preds = %bb.av, %bb.as, %bb.ar, %.lr.ph126
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115SortKeyBindDataESt14default_deleteIS2_EED2Ev.exit86

bb.av:                                            ; preds = %bb.at
  %i.ds = invoke noundef i64 @_ZN6duckdb13GetTypeIdSizeENS_12PhysicalTypeE(i8 noundef zeroext %i.dp)
          to label %bb.aw unwind label %bb.au
end_hunk_1
begin_hunk_2_@_ZN6duckdb12_GLOBAL__N_117DecodeSortKeyBindERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS7_ELb1EEELb1ESaISA_EEE:bb.a
          to label %bb.bd unwind label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  invoke void @__cxa_throw(ptr nonnull %i.cx, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.dx unwind label %bb.bf

bb.be:                                            ; preds = %bb.ay, %bb.ax, %bb.aw
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176.thread: ; preds = %bb.ba
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split504

bb.bf:                                            ; preds = %bb.bd, %bb.bc
  %.055 = phi i1 [ false, %bb.bd ], [ true, %bb.bc ] ; 2 uses
  %i.dd = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.de = load ptr, ptr %22, align 8, !tbaa !16   ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171: ; preds = %bb.bf
  call void @_ZdlPv(ptr noundef %i.de) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #29
  %i.dh = load ptr, ptr %20, align 8, !tbaa !16   ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173.thread: ; preds = %bb.bb
  %i.dk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #29
  %i.dl = load ptr, ptr %20, align 8, !tbaa !16   ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %.sink.split504, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173.thread
  call void @_ZdlPv(ptr noundef %i.dl) #30
  br label %.sink.split504

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173
  call void @_ZdlPv(ptr noundef %i.dh) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #29
  br i1 %.055, label %bb.bg, label %bb.cg

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #29
  br i1 %.055, label %bb.bg, label %bb.cg

.sink.split504:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174.thread
  %.pn124.pn254.ph = phi { ptr, i32 } [ %i.dk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174.thread ], [ %i.dc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176.thread ], [ %i.dk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #29
  br label %bb.bg

bb.bg:                                            ; preds = %.sink.split504, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176
  %.pn124.pn254 = phi { ptr, i32 } [ %i.dd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174 ], [ %i.dd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176 ], [ %.pn124.pn254.ph, %.sink.split504 ]
  call void @__cxa_free_exception(ptr %i.cx) #29
  br label %bb.cg

bb.bh:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #29
  invoke void @_ZN6duckdb18ExpressionExecutor14EvaluateScalarERNS_13ClientContextERKNS_10ExpressionEb(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %23, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(88) %i.cs, i1 noundef zeroext false)
          to label %bb.bi unwind label %bb.bm

bb.bi:                                            ; preds = %bb.bh
  %i.do = load i8, ptr %i.w, align 8, !tbaa !306, !range !187, !noundef !188
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %bb.bj, label %bb.bp

bb.bj:                                            ; preds = %bb.bi
  %i.dq = call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull @.str.77, ptr noundef nonnull align 1 dereferenceable(1) %25)
          to label %bb.bk unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179.thread

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZN6duckdb15BinderExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.dq, ptr noundef nonnull align 8 dereferenceable(32) %24)
          to label %bb.bl unwind label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  invoke void @__cxa_throw(ptr nonnull %i.dq, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.dx unwind label %bb.bn

bb.bm:                                            ; preds = %bb.bh
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179.thread: ; preds = %bb.bj
  %i.ds = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #29
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bl, %bb.bk
  %.053 = phi i1 [ false, %bb.bl ], [ true, %bb.bk ] ; 2 uses
  %i.dt = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.du = load ptr, ptr %24, align 8, !tbaa !16   ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.dw = icmp eq ptr %i.du, %i.dv
  br i1 %i.dw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177: ; preds = %bb.bn
  call void @_ZdlPv(ptr noundef %i.du) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #29
  br i1 %.053, label %bb.bo, label %bb.ce

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179: ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #29
  br i1 %.053, label %bb.bo, label %bb.ce

bb.bo:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179
  %.pn130266 = phi { ptr, i32 } [ %i.ds, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179.thread ], [ %i.dt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179 ], [ %i.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177 ]
  call void @__cxa_free_exception(ptr %i.dq) #29
  br label %bb.ce

bb.bp:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #29
  invoke void @_ZNK6duckdb5Value8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %26, ptr noundef nonnull align 8 dereferenceable(64) %23)
          to label %bb.bq unwind label %bb.cb

bb.bq:                                            ; preds = %bb.bp
  %i.dx = invoke fastcc noundef ptr @_ZNK6duckdb10unique_ptrINS_12_GLOBAL__N_115SortKeyBindDataESt14default_deleteIS2_ELb1EEptEv(ptr nonnull %i.n)
          to label %bb.br unwind label %bb.cc     ; 0 uses

bb.br:                                            ; preds = %bb.bq
  %i.dy = invoke i16 @_ZN6duckdb14OrderModifiers5ParseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %26)
          to label %bb.bs unwind label %.loopexit ; 2 uses

bb.bs:                                            ; preds = %bb.br
  %i.dz = load ptr, ptr %i.x, align 8, !tbaa !24  ; 5 uses
  %i.ea = load ptr, ptr %i.y, align 8, !tbaa !23
  %.not.i.i = icmp eq ptr %i.dz, %i.ea
  br i1 %.not.i.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  store i16 %i.dy, ptr %i.dz, align 1
  %i.eb = load ptr, ptr %i.x, align 8, !tbaa !24
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 2
  store ptr %i.ec, ptr %i.x, align 8, !tbaa !24
  br label %_ZNSt6vectorIN6duckdb14OrderModifiersESaIS1_EE9push_backEOS1_.exit

bb.bu:                                            ; preds = %bb.bs
  %i.ed = load ptr, ptr %i.o, align 8, !tbaa !20  ; 9 uses
  %i.ee = ptrtoint ptr %i.dz to i64               ; 2 uses
  %i.ef = ptrtoint ptr %i.ed to i64               ; 3 uses
  %i.eg = sub i64 %i.ee, %i.ef                    ; 3 uses
  %i.eh = icmp eq i64 %i.eg, 9223372036854775806
  br i1 %i.eh, label %bb.bv, label %_ZNKSt6vectorIN6duckdb14OrderModifiersESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.bv:                                            ; preds = %bb.bu
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #31
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.bv
  unreachable

_ZNKSt6vectorIN6duckdb14OrderModifiersESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bu
  %i.ei = ashr exact i64 %i.eg, 1                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ei, i64 1)
  %i.ej = add i64 %.sroa.speculated.i.i.i.i, %i.ei ; 2 uses
  %i.ek = icmp ult i64 %i.ej, %i.ei
  %i.el = call i64 @llvm.umin.i64(i64 %i.ej, i64 4611686018427387903)
  %i.em = select i1 %i.ek, i64 4611686018427387903, i64 %i.el ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.em, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.en = shl nuw nsw i64 %i.em, 1
  %i.eo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.en) #32
          to label %.noexc180 unwind label %.loopexit ; 10 uses

.noexc180:                                        ; preds = %_ZNKSt6vectorIN6duckdb14OrderModifiersESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.eg
  store i16 %i.dy, ptr %i.ep, align 1
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.ed, %i.dz
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb14OrderModifiersESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %iter.check

iter.check:                                       ; preds = %.noexc180
  %i.eq = ptrtoaddr ptr %i.eo to i64
  %i.er = add i64 %i.ee, -2
  %i.es = sub i64 %i.er, %i.ef                    ; 3 uses
  %i.et = lshr i64 %i.es, 1
  %i.eu = add nuw i64 %i.et, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.es, 6
  %i.ev = sub i64 %i.eq, %i.ef
  %diff.check = icmp ult i64 %i.ev, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check550 = icmp ult i64 %i.es, 30
  br i1 %min.iters.check550, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.eu, 12
  %n.vec = and i64 %i.eu, -16                     ; 4 uses
  %i.ew = shl i64 %n.vec, 1                       ; 2 uses
  %i.ex = getelementptr i8, ptr %i.eo, i64 %i.ew  ; 2 uses
  %i.ey = getelementptr i8, ptr %i.ed, i64 %i.ew
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ez = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.eo, i64 %i.ez ; 2 uses
  %next.gep551 = getelementptr i8, ptr %i.ed, i64 %i.ez ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !353)
  call void @llvm.experimental.noalias.scope.decl(metadata !356)
  %i.fa = getelementptr i8, ptr %next.gep551, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep551, align 1, !alias.scope !356, !noalias !353
  %wide.load552 = load <8 x i16>, ptr %i.fa, align 1, !alias.scope !356, !noalias !353
  %i.fb = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load, ptr %next.gep, align 1, !alias.scope !353, !noalias !356
  store <8 x i16> %wide.load552, ptr %i.fb, align 1, !alias.scope !353, !noalias !356
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.fc = icmp eq i64 %index.next, %n.vec
  br i1 %i.fc, label %middle.block, label %vector.body, !llvm.loop !358

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eu, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb14OrderModifiersESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !318

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec555 = and i64 %i.eu, -4                   ; 3 uses
  %i.fd = shl i64 %n.vec555, 1                    ; 2 uses
  %i.fe = getelementptr i8, ptr %i.eo, i64 %i.fd  ; 2 uses
  %i.ff = getelementptr i8, ptr %i.ed, i64 %i.fd
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index556 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next560, %vec.epilog.vector.body ] ; 2 uses
  %i.fg = shl i64 %index556, 1                    ; 2 uses
  %next.gep557 = getelementptr i8, ptr %i.eo, i64 %i.fg
  %next.gep558 = getelementptr i8, ptr %i.ed, i64 %i.fg
  call void @llvm.experimental.noalias.scope.decl(metadata !353)
  call void @llvm.experimental.noalias.scope.decl(metadata !356)
  %wide.load559 = load <4 x i16>, ptr %next.gep558, align 1, !alias.scope !356, !noalias !353
  store <4 x i16> %wide.load559, ptr %next.gep557, align 1, !alias.scope !353, !noalias !356
  %index.next560 = add nuw i64 %index556, 4       ; 2 uses
  %i.fh = icmp eq i64 %index.next560, %n.vec555
  br i1 %i.fh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !359

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n561 = icmp eq i64 %i.eu, %n.vec555
  br i1 %cmp.n561, label %_ZNSt6vectorIN6duckdb14OrderModifiersESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.eo, %iter.check ], [ %i.ex, %vec.epilog.iter.check ], [ %i.fe, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.ed, %iter.check ], [ %i.ey, %vec.epilog.iter.check ], [ %i.ff, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.fk, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.fj, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !353)
  call void @llvm.experimental.noalias.scope.decl(metadata !356)
  %i.fi = load i16, ptr %.0911.i.i.i.i.i.i.i, align 1, !alias.scope !356, !noalias !353
  store i16 %i.fi, ptr %.012.i.i.i.i.i.i.i, align 1, !alias.scope !353, !noalias !356
  %i.fj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 2 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 2 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.fj, %i.dz
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb14OrderModifiersESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !360

_ZNSt6vectorIN6duckdb14OrderModifiersESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc180
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.eo, %.noexc180 ], [ %i.fe, %vec.epilog.middle.block ], [ %i.ex, %middle.block ], [ %i.fk, %.lr.ph.i.i.i.i.i.i.i ]
  %i.fl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 2
  %.not.i23.i.i.i = icmp eq ptr %i.ed, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb14OrderModifiersESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.bw

bb.bw:                                            ; preds = %_ZNSt6vectorIN6duckdb14OrderModifiersESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ed) #30
  br label %_ZNSt6vectorIN6duckdb14OrderModifiersESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb14OrderModifiersESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.bw, %_ZNSt6vectorIN6duckdb14OrderModifiersESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.eo, ptr %i.o, align 8, !tbaa !20
  store ptr %i.fl, ptr %i.x, align 8, !tbaa !24
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr %i.eo, i64 %i.em
  store ptr %i.fm, ptr %i.y, align 8, !tbaa !23
  br label %_ZNSt6vectorIN6duckdb14OrderModifiersESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN6duckdb14OrderModifiersESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorIN6duckdb14OrderModifiersESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.bt
  %i.fn = load ptr, ptr %26, align 8, !tbaa !16   ; 2 uses
  %i.fo = icmp eq ptr %i.fn, %i.z
  br i1 %i.fo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181: ; preds = %_ZNSt6vectorIN6duckdb14OrderModifiersESaIS1_EE9push_backEOS1_.exit
  call void @_ZdlPv(ptr noundef %i.fn) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183: ; preds = %_ZNSt6vectorIN6duckdb14OrderModifiersESaIS1_EE9push_backEOS1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #29
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %23) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #29
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %17) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  %i.fp = load ptr, ptr %16, align 8, !tbaa !16   ; 2 uses
  %i.fq = icmp eq ptr %i.fp, %i.aa
  br i1 %i.fq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183
  call void @_ZdlPv(ptr noundef %i.fp) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  %i.fr = load ptr, ptr %i.ab, align 8, !tbaa !39 ; 2 uses
  %.not.i.i.i.i187 = icmp eq ptr %i.fr, null
  br i1 %.not.i.i.i.i187, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.bx

bb.bx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186
  call void @_ZdlPv(ptr noundef nonnull %i.fr) #30
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186
  %i.fs = load ptr, ptr %i.ad, align 8, !tbaa !361 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.fs, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.ft, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i ], [ %i.fs, %_ZNSt6vectorImSaImEED2Ev.exit.i ] ; 4 uses
  %i.ft = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !367 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !16 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 24
  %i.fx = icmp eq ptr %i.fv, %i.fw
  br i1 %i.fx, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.fv) #30
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i.i) #30
  %.not.i.i.i.i.i = icmp eq ptr %i.ft, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !368

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i, %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.fy = load ptr, ptr %i.ac, align 8, !tbaa !369
  %i.fz = load i64, ptr %i.ae, align 8, !tbaa !370
  %i.ga = shl i64 %i.fz, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.fy, i8 0, i64 %i.ga, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  %i.gb = load ptr, ptr %i.ac, align 8, !tbaa !369 ; 2 uses
  %i.gc = icmp eq ptr %i.gb, %i.af
  br i1 %i.gc, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEED2Ev.exit.i, label %bb.by

bb.by:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i
  call void @_ZdlPv(ptr noundef %i.gb) #30
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEED2Ev.exit.i

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEED2Ev.exit.i: ; preds = %bb.by, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i
  %i.gd = load ptr, ptr %11, align 8, !tbaa !352  ; 3 uses
  %i.ge = load ptr, ptr %i.t, align 8, !tbaa !349 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.gd, %i.ge
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb16ColumnDefinitionES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEED2Ev.exit.i, %_ZN6duckdb16ColumnDefinitionD2Ev.exit
  %.05.i.i.i.i = phi ptr [ %i.hi, %_ZN6duckdb16ColumnDefinitionD2Ev.exit ], [ %i.gd, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEED2Ev.exit.i ] ; 10 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 160 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 176 ; 2 uses
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !371 ; 2 uses
  %.not5.i.i.i.i.i221 = icmp eq ptr %i.gh, null
  br i1 %.not5.i.i.i.i.i221, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i222

.lr.ph.i.i.i.i.i222:                              ; preds = %.lr.ph.i.i.i.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i
  %.06.i.i.i.i.i223 = phi ptr [ %i.gi, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i ], [ %i.gh, %.lr.ph.i.i.i.i ] ; 6 uses
  %i.gi = load ptr, ptr %.06.i.i.i.i.i223, align 8, !tbaa !367 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i223, i64 8
  %i.gk = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i223, i64 40
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !16 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i223, i64 56
  %i.gn = icmp eq ptr %i.gl, %i.gm
  br i1 %i.gn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i224

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i224: ; preds = %.lr.ph.i.i.i.i.i222
  call void @_ZdlPv(ptr noundef %i.gl) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i222, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i224
  %i.go = load ptr, ptr %i.gj, align 8, !tbaa !16 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i223, i64 24
end_hunk_2
begin_hunk_3_@_ZN6duckdb12_GLOBAL__N_125ConstructSortKeyRecursiveERNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE:bb.a
  %i.dcl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dcm = load ptr, ptr %i.dcl, align 8, !tbaa !333
  %i.dcn = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dco = load ptr, ptr %i.dcn, align 8, !tbaa !737, !nonnull !188, !align !280
  %i.dcp = icmp ult i64 %.sroa.01024.0.copyload, %.sroa.21025.0.copyload
  br i1 %i.dcp, label %.lr.ph40.i.i739, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit

.lr.ph40.i.i739:                                  ; preds = %bb.ll
  %i.dcq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dcr = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.dcs = getelementptr inbounds nuw i8, ptr %0, i64 121
  %i.dct = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.lm

bb.lm:                                            ; preds = %bb.lp, %.lr.ph40.i.i739
  %.03439.i.i740 = phi i64 [ %.sroa.01024.0.copyload, %.lr.ph40.i.i739 ], [ %i.den, %bb.lp ] ; 4 uses
  %i.dcu = select i1 %i.cxj, i64 %.sroa.31026.0.copyload, i64 %.03439.i.i740 ; 2 uses
  %i.dcv = load ptr, ptr %i.cxg, align 8, !tbaa !699
  %i.dcw = load ptr, ptr %i.dcv, align 8, !tbaa !158 ; 2 uses
  %.not.i.i33.i741 = icmp eq ptr %i.dcw, null
  br i1 %.not.i.i33.i741, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i34.i742, label %bb.ln

bb.ln:                                            ; preds = %bb.lm
  %i.dcx = getelementptr inbounds nuw [4 x i8], ptr %i.dcw, i64 %.03439.i.i740
  %i.dcy = load i32, ptr %i.dcx, align 4, !tbaa !3
  %i.dcz = zext i32 %i.dcy to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i34.i742

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i34.i742: ; preds = %bb.ln, %bb.lm
  %i.dda = phi i64 [ %i.dcz, %bb.ln ], [ %.03439.i.i740, %bb.lm ] ; 3 uses
  %i.ddb = load ptr, ptr %i.dco, align 8, !tbaa !39
  %i.ddc = getelementptr inbounds nuw [8 x i8], ptr %i.ddb, i64 %i.dcu ; 8 uses
  %i.ddd = load ptr, ptr %i.dcq, align 8, !tbaa !100
  %i.dde = getelementptr inbounds nuw [8 x i8], ptr %i.ddd, i64 %i.dcu
  %i.ddf = load ptr, ptr %i.dde, align 8, !tbaa !88 ; 4 uses
  %i.ddg = load ptr, ptr %i.cxh, align 8, !tbaa !159 ; 2 uses
  %.not.i36.i.i743 = icmp eq ptr %i.ddg, null
  br i1 %.not.i36.i.i743, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i37.i746, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i35.i744

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i35.i744: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i34.i742
  %i.ddh = lshr i64 %i.dda, 6
  %i.ddi = and i64 %i.dda, 63
  %i.ddj = getelementptr inbounds nuw [8 x i8], ptr %i.ddg, i64 %i.ddh
  %i.ddk = load i64, ptr %i.ddj, align 8, !tbaa !14
  %i.ddl = shl nuw i64 1, %i.ddi
  %i.ddm = and i64 %i.ddk, %i.ddl
  %.not.i36.i745 = icmp eq i64 %i.ddm, 0
  br i1 %.not.i36.i745, label %bb.lo, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i37.i746

bb.lo:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i35.i744
  %i.ddn = load i8, ptr %i.dcr, align 8, !tbaa !743
  %i.ddo = load i64, ptr %i.ddc, align 8, !tbaa !14 ; 2 uses
  %i.ddp = add i64 %i.ddo, 1
  store i64 %i.ddp, ptr %i.ddc, align 8, !tbaa !14
  %i.ddq = getelementptr inbounds nuw i8, ptr %i.ddf, i64 %i.ddo
  store i8 %i.ddn, ptr %i.ddq, align 1, !tbaa !18
  br label %bb.lp

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i37.i746: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i35.i744, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i34.i742
  %i.ddr = load i8, ptr %i.dcs, align 1, !tbaa !738
  %i.dds = load i64, ptr %i.ddc, align 8, !tbaa !14 ; 2 uses
  %i.ddt = add i64 %i.dds, 1
  store i64 %i.ddt, ptr %i.ddc, align 8, !tbaa !14
  %i.ddu = getelementptr inbounds nuw i8, ptr %i.ddf, i64 %i.dds
  store i8 %i.ddr, ptr %i.ddu, align 1, !tbaa !18
  %i.ddv = load i64, ptr %i.ddc, align 8, !tbaa !14
  %i.ddw = getelementptr inbounds nuw i8, ptr %i.ddf, i64 %i.ddv ; 3 uses
  %i.ddx = getelementptr inbounds nuw [16 x i8], ptr %i.dcm, i64 %i.dda ; 2 uses
  %.sroa.0.0.copyload.i38.i747 = load i64, ptr %i.ddx, align 8, !tbaa !14
  %.sroa.2.0..sroa_idx.i39.i748 = getelementptr inbounds nuw i8, ptr %i.ddx, i64 8
  %.sroa.2.0.copyload.i40.i749 = load i64, ptr %.sroa.2.0..sroa_idx.i39.i748, align 8, !tbaa !14
  %i.ddy = tail call noundef i64 @llvm.bswap.i64(i64 %.sroa.2.0.copyload.i40.i749) ; 2 uses
  store i64 %i.ddy, ptr %i.ddw, align 1
  %i.ddz = trunc i64 %i.ddy to i8
  %i.dea = xor i8 %i.ddz, -128
  store i8 %i.dea, ptr %i.ddw, align 1, !tbaa !18
  %i.deb = getelementptr inbounds nuw i8, ptr %i.ddw, i64 8
  %i.dec = tail call noundef i64 @llvm.bswap.i64(i64 %.sroa.0.0.copyload.i38.i747)
  store i64 %i.dec, ptr %i.deb, align 1
  %i.ded = load i8, ptr %i.dct, align 8, !tbaa !108, !range !187, !noundef !188
  %i.dee = trunc nuw i8 %i.ded to i1
  %.pre.i41.i750 = load i64, ptr %i.ddc, align 8, !tbaa !14 ; 3 uses
  %i.def = icmp ult i64 %.pre.i41.i750, -16
  %or.cond.i42.i751 = select i1 %i.dee, i1 %i.def, i1 false
  br i1 %or.cond.i42.i751, label %.lr.ph.i45.i757, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i37..loopexit.i43_crit_edge.i752

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i37..loopexit.i43_crit_edge.i752: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i37.i746
  %.pre80.i753 = add i64 %.pre.i41.i750, 16
  br label %.loopexit.i43.i754

.lr.ph.i45.i757:                                  ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i37.i746, %.lr.ph.i45.i757
  %.038.i.i758 = phi i64 [ %i.dej, %.lr.ph.i45.i757 ], [ %.pre.i41.i750, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i37.i746 ] ; 2 uses
  %i.deg = getelementptr inbounds nuw i8, ptr %i.ddf, i64 %.038.i.i758 ; 2 uses
  %i.deh = load i8, ptr %i.deg, align 1, !tbaa !18
  %i.dei = xor i8 %i.deh, -1
  store i8 %i.dei, ptr %i.deg, align 1, !tbaa !18
  %i.dej = add nuw i64 %.038.i.i758, 1            ; 2 uses
  %i.dek = load i64, ptr %i.ddc, align 8, !tbaa !14
  %i.del = add i64 %i.dek, 16                     ; 2 uses
  %i.dem = icmp ult i64 %i.dej, %i.del
  br i1 %i.dem, label %.lr.ph.i45.i757, label %.loopexit.i43.i754, !llvm.loop !850

.loopexit.i43.i754:                               ; preds = %.lr.ph.i45.i757, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i37..loopexit.i43_crit_edge.i752
  %.pre-phi81.i755 = phi i64 [ %.pre80.i753, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i37..loopexit.i43_crit_edge.i752 ], [ %i.del, %.lr.ph.i45.i757 ]
  store i64 %.pre-phi81.i755, ptr %i.ddc, align 8, !tbaa !14
  br label %bb.lp

bb.lp:                                            ; preds = %.loopexit.i43.i754, %bb.lo
  %i.den = add nuw i64 %.03439.i.i740, 1          ; 2 uses
  %exitcond.not.i44.i756 = icmp eq i64 %i.den, %.sroa.21025.0.copyload
  br i1 %exitcond.not.i44.i756, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit, label %bb.lm, !llvm.loop !851

bb.lq:                                            ; preds = %bb.a
  %i.deo = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.dep = load i8, ptr %i.deo, align 8, !tbaa !80
  %i.deq = icmp eq i8 %i.dep, 25
  %.sroa.01034.0.copyload = load i64, ptr %1, align 8, !tbaa !14 ; 17 uses
  %.sroa.21035.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.21035.0.copyload = load i64, ptr %.sroa.21035.0..sroa_idx, align 8, !tbaa !14 ; 17 uses
  %.sroa.31036.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.31036.0.copyload = load i64, ptr %.sroa.31036.0..sroa_idx, align 8, !tbaa !14 ; 4 uses
  %i.der = icmp eq i64 %.sroa.01034.0.copyload, %.sroa.21035.0.copyload ; 2 uses
  br i1 %i.deq, label %bb.lr, label %bb.ml

bb.lr:                                            ; preds = %bb.lq
  br i1 %i.der, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit, label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  %.sroa.41037.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.41037.0.copyload = load i8, ptr %.sroa.41037.0..sroa_idx, align 8, !tbaa !189
  %i.des = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.det = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.deu = load ptr, ptr %i.det, align 8, !tbaa !159
  %.not.i.i810 = icmp eq ptr %i.deu, null
  %i.dev = trunc nuw i8 %.sroa.41037.0.copyload to i1 ; 4 uses
  br i1 %.not.i.i810, label %bb.lt, label %bb.ma

bb.lt:                                            ; preds = %bb.ls
  br i1 %i.dev, label %bb.lx, label %bb.lu

bb.lu:                                            ; preds = %bb.lt
  %i.dew = load ptr, ptr %i.des, align 8, !tbaa !699
  %i.dex = load ptr, ptr %i.dew, align 8, !tbaa !158
  %.not81.i = icmp eq ptr %i.dex, null
  br i1 %.not81.i, label %bb.lv, label %bb.lx

bb.lv:                                            ; preds = %bb.lu
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_8string_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %i.des)
  %i.dey = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dez = load ptr, ptr %i.dey, align 8, !tbaa !333
  %i.dfa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dfb = load ptr, ptr %i.dfa, align 8, !tbaa !737, !nonnull !188, !align !280
  %i.dfc = icmp ult i64 %.sroa.01034.0.copyload, %.sroa.21035.0.copyload
  br i1 %i.dfc, label %.lr.ph3.i.i820, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit

.lr.ph3.i.i820:                                   ; preds = %bb.lv
  %i.dfd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dfe = getelementptr inbounds nuw i8, ptr %0, i64 121
  %i.dff = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.dfg = getelementptr inbounds nuw i8, ptr %14, i64 4
  %i.dfh = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.lw

bb.lw:                                            ; preds = %.loopexit.i.i828, %.lr.ph3.i.i820
  %.0282.i.i821 = phi i64 [ %.sroa.01034.0.copyload, %.lr.ph3.i.i820 ], [ %i.dib, %.loopexit.i.i828 ] ; 4 uses
  %i.dfi = load ptr, ptr %i.dfb, align 8, !tbaa !39
  %i.dfj = getelementptr inbounds nuw [8 x i8], ptr %i.dfi, i64 %.0282.i.i821 ; 6 uses
  %i.dfk = load ptr, ptr %i.dfd, align 8, !tbaa !100
  %i.dfl = getelementptr inbounds nuw [8 x i8], ptr %i.dfk, i64 %.0282.i.i821
  %i.dfm = load ptr, ptr %i.dfl, align 8, !tbaa !88 ; 4 uses
  %i.dfn = ptrtoaddr ptr %i.dfm to i64
  %i.dfo = load i8, ptr %i.dfe, align 1, !tbaa !738
  %i.dfp = load i64, ptr %i.dfj, align 8, !tbaa !14 ; 2 uses
  %i.dfq = add i64 %i.dfp, 1
  store i64 %i.dfq, ptr %i.dfj, align 8, !tbaa !14
  %i.dfr = getelementptr inbounds nuw i8, ptr %i.dfm, i64 %i.dfp
  store i8 %i.dfo, ptr %i.dfr, align 1, !tbaa !18
  %i.dfs = load i64, ptr %i.dfj, align 8, !tbaa !14 ; 2 uses
  %i.dft = getelementptr inbounds nuw i8, ptr %i.dfm, i64 %i.dfs ; 8 uses
  %i.dfu = getelementptr inbounds nuw [16 x i8], ptr %i.dez, i64 %.0282.i.i821 ; 2 uses
  %.sroa.0.0.copyload.i.i822 = load i64, ptr %i.dfu, align 8 ; 7 uses
  %.sroa.2.0..sroa_idx.i.i823 = getelementptr inbounds nuw i8, ptr %i.dfu, i64 8
  %.sroa.2.0.copyload.i.i824 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i823, align 8, !tbaa !18 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  store i64 %.sroa.0.0.copyload.i.i822, ptr %14, align 8
  store ptr %.sroa.2.0.copyload.i.i824, ptr %i.dff, align 8
  %i.dfv = trunc i64 %.sroa.0.0.copyload.i.i822 to i32 ; 2 uses
  %i.dfw = icmp ult i32 %i.dfv, 13
  %i.dfx = select i1 %i.dfw, ptr %i.dfg, ptr %.sroa.2.0.copyload.i.i824 ; 8 uses
  %i.dfy = ptrtoaddr ptr %i.dfx to i64
  %i.dfz = and i64 %.sroa.0.0.copyload.i.i822, 4294967295 ; 8 uses
  %.not.i.i.i825 = icmp eq i32 %i.dfv, 0
  br i1 %.not.i.i.i825, label %_ZN6duckdb12_GLOBAL__N_122SortKeyVarcharOperator6EncodeEPhNS_8string_tE.exit.i.i, label %iter.check1972

iter.check1972:                                   ; preds = %bb.lw
  %min.iters.check1958 = icmp samesign ult i64 %i.dfz, 4
  br i1 %min.iters.check1958, label %.lr.ph.i.i.i.preheader, label %vector.memcheck1956

vector.memcheck1956:                              ; preds = %iter.check1972
  %i.dga = add i64 %i.dfs, %i.dfn
  %i.dgb = sub i64 %i.dga, %i.dfy
  %diff.check1957 = icmp ult i64 %i.dgb, 32
  br i1 %diff.check1957, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check1959

vector.main.loop.iter.check1959:                  ; preds = %vector.memcheck1956
  %min.iters.check1960 = icmp samesign ult i64 %i.dfz, 32
  br i1 %min.iters.check1960, label %vec.epilog.ph1976, label %vector.ph1961

vector.ph1961:                                    ; preds = %vector.main.loop.iter.check1959
  %n.mod.vf1962 = and i64 %.sroa.0.0.copyload.i.i822, 28
  %n.vec1963 = and i64 %.sroa.0.0.copyload.i.i822, 4294967264 ; 4 uses
  br label %vector.body1964

vector.body1964:                                  ; preds = %vector.body1964, %vector.ph1961
  %index1965 = phi i64 [ 0, %vector.ph1961 ], [ %index.next1968, %vector.body1964 ] ; 3 uses
  %i.dgc = getelementptr inbounds nuw i8, ptr %i.dfx, i64 %index1965 ; 2 uses
  %i.dgd = getelementptr inbounds nuw i8, ptr %i.dgc, i64 16
  %wide.load1966 = load <16 x i8>, ptr %i.dgc, align 1, !tbaa !18
  %wide.load1967 = load <16 x i8>, ptr %i.dgd, align 1, !tbaa !18
  %i.dge = add <16 x i8> %wide.load1966, splat (i8 1)
  %i.dgf = add <16 x i8> %wide.load1967, splat (i8 1)
  %i.dgg = getelementptr inbounds nuw i8, ptr %i.dft, i64 %index1965 ; 2 uses
  %i.dgh = getelementptr inbounds nuw i8, ptr %i.dgg, i64 16
  store <16 x i8> %i.dge, ptr %i.dgg, align 1, !tbaa !18
  store <16 x i8> %i.dgf, ptr %i.dgh, align 1, !tbaa !18
  %index.next1968 = add nuw i64 %index1965, 32    ; 2 uses
  %i.dgi = icmp eq i64 %index.next1968, %n.vec1963
  br i1 %i.dgi, label %middle.block1969, label %vector.body1964, !llvm.loop !852

middle.block1969:                                 ; preds = %vector.body1964
  %cmp.n1970 = icmp eq i64 %i.dfz, %n.vec1963
  br i1 %cmp.n1970, label %_ZN6duckdb12_GLOBAL__N_122SortKeyVarcharOperator6EncodeEPhNS_8string_tE.exit.i.i, label %vec.epilog.iter.check1974

vec.epilog.iter.check1974:                        ; preds = %middle.block1969
  %min.epilog.iters.check1975 = icmp eq i64 %n.mod.vf1962, 0
  br i1 %min.epilog.iters.check1975, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph1976, !prof !212

vec.epilog.ph1976:                                ; preds = %vector.main.loop.iter.check1959, %vec.epilog.iter.check1974
  %vec.epilog.resume.val1971 = phi i64 [ %n.vec1963, %vec.epilog.iter.check1974 ], [ 0, %vector.main.loop.iter.check1959 ]
  %n.vec1978 = and i64 %.sroa.0.0.copyload.i.i822, 4294967292 ; 3 uses
  br label %vec.epilog.vector.body1979

vec.epilog.vector.body1979:                       ; preds = %vec.epilog.vector.body1979, %vec.epilog.ph1976
  %index1980 = phi i64 [ %vec.epilog.resume.val1971, %vec.epilog.ph1976 ], [ %index.next1982, %vec.epilog.vector.body1979 ] ; 3 uses
  %i.dgj = getelementptr inbounds nuw i8, ptr %i.dfx, i64 %index1980
  %wide.load1981 = load <4 x i8>, ptr %i.dgj, align 1, !tbaa !18
  %i.dgk = add <4 x i8> %wide.load1981, splat (i8 1)
  %i.dgl = getelementptr inbounds nuw i8, ptr %i.dft, i64 %index1980
  store <4 x i8> %i.dgk, ptr %i.dgl, align 1, !tbaa !18
  %index.next1982 = add nuw i64 %index1980, 4     ; 2 uses
  %i.dgm = icmp eq i64 %index.next1982, %n.vec1978
  br i1 %i.dgm, label %vec.epilog.middle.block1983, label %vec.epilog.vector.body1979, !llvm.loop !853

vec.epilog.middle.block1983:                      ; preds = %vec.epilog.vector.body1979
  %cmp.n1984 = icmp eq i64 %i.dfz, %n.vec1978
  br i1 %cmp.n1984, label %_ZN6duckdb12_GLOBAL__N_122SortKeyVarcharOperator6EncodeEPhNS_8string_tE.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %vector.memcheck1956, %iter.check1972, %vec.epilog.iter.check1974, %vec.epilog.middle.block1983
  %.010.i.i.i.ph = phi i64 [ 0, %iter.check1972 ], [ 0, %vector.memcheck1956 ], [ %n.vec1963, %vec.epilog.iter.check1974 ], [ %n.vec1978, %vec.epilog.middle.block1983 ] ; 3 uses
  %xtraiter2157 = and i64 %.sroa.0.0.copyload.i.i822, 3 ; 2 uses
  %lcmp.mod2158.not = icmp eq i64 %xtraiter2157, 0
  br i1 %lcmp.mod2158.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.010.i.i.i.prol = phi i64 [ %i.dgr, %.lr.ph.i.i.i.prol ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %prol.iter2159 = phi i64 [ %prol.iter2159.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.dgn = getelementptr inbounds nuw i8, ptr %i.dfx, i64 %.010.i.i.i.prol
  %i.dgo = load i8, ptr %i.dgn, align 1, !tbaa !18
  %i.dgp = add i8 %i.dgo, 1
  %i.dgq = getelementptr inbounds nuw i8, ptr %i.dft, i64 %.010.i.i.i.prol
  store i8 %i.dgp, ptr %i.dgq, align 1, !tbaa !18
  %i.dgr = add nuw nsw i64 %.010.i.i.i.prol, 1    ; 2 uses
  %prol.iter2159.next = add i64 %prol.iter2159, 1 ; 2 uses
  %prol.iter2159.cmp.not = icmp eq i64 %prol.iter2159.next, %xtraiter2157
  br i1 %prol.iter2159.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !854

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.010.i.i.i.unr = phi i64 [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.dgr, %.lr.ph.i.i.i.prol ]
  %i.dgs = sub nsw i64 %.010.i.i.i.ph, %i.dfz
  %i.dgt = icmp ugt i64 %i.dgs, -4
  br i1 %i.dgt, label %_ZN6duckdb12_GLOBAL__N_122SortKeyVarcharOperator6EncodeEPhNS_8string_tE.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.010.i.i.i = phi i64 [ %i.dhn, %.lr.ph.i.i.i ], [ %.010.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %i.dgu = getelementptr inbounds nuw i8, ptr %i.dfx, i64 %.010.i.i.i
  %i.dgv = load i8, ptr %i.dgu, align 1, !tbaa !18
  %i.dgw = add i8 %i.dgv, 1
  %i.dgx = getelementptr inbounds nuw i8, ptr %i.dft, i64 %.010.i.i.i
  store i8 %i.dgw, ptr %i.dgx, align 1, !tbaa !18
  %i.dgy = add nuw nsw i64 %.010.i.i.i, 1         ; 2 uses
  %i.dgz = getelementptr inbounds nuw i8, ptr %i.dfx, i64 %i.dgy
  %i.dha = load i8, ptr %i.dgz, align 1, !tbaa !18
  %i.dhb = add i8 %i.dha, 1
  %i.dhc = getelementptr inbounds nuw i8, ptr %i.dft, i64 %i.dgy
  store i8 %i.dhb, ptr %i.dhc, align 1, !tbaa !18
  %i.dhd = add nuw nsw i64 %.010.i.i.i, 2         ; 2 uses
  %i.dhe = getelementptr inbounds nuw i8, ptr %i.dfx, i64 %i.dhd
  %i.dhf = load i8, ptr %i.dhe, align 1, !tbaa !18
  %i.dhg = add i8 %i.dhf, 1
  %i.dhh = getelementptr inbounds nuw i8, ptr %i.dft, i64 %i.dhd
  store i8 %i.dhg, ptr %i.dhh, align 1, !tbaa !18
  %i.dhi = add nuw nsw i64 %.010.i.i.i, 3         ; 2 uses
  %i.dhj = getelementptr inbounds nuw i8, ptr %i.dfx, i64 %i.dhi
  %i.dhk = load i8, ptr %i.dhj, align 1, !tbaa !18
  %i.dhl = add i8 %i.dhk, 1
  %i.dhm = getelementptr inbounds nuw i8, ptr %i.dft, i64 %i.dhi
  store i8 %i.dhl, ptr %i.dhm, align 1, !tbaa !18
  %i.dhn = add nuw nsw i64 %.010.i.i.i, 4         ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.dhn, %i.dfz
  br i1 %exitcond.not.i.i.i.3, label %_ZN6duckdb12_GLOBAL__N_122SortKeyVarcharOperator6EncodeEPhNS_8string_tE.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !855

_ZN6duckdb12_GLOBAL__N_122SortKeyVarcharOperator6EncodeEPhNS_8string_tE.exit.i.i: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %middle.block1969, %vec.epilog.middle.block1983, %bb.lw
  %i.dho = getelementptr inbounds nuw i8, ptr %i.dft, i64 %i.dfz
  store i8 0, ptr %i.dho, align 1, !tbaa !18
  %i.dhp = add nuw nsw i64 %i.dfz, 1              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  %i.dhq = load i8, ptr %i.dfh, align 8, !tbaa !108, !range !187, !noundef !188
  %i.dhr = trunc nuw i8 %i.dhq to i1
  %.pre.i.i826 = load i64, ptr %i.dfj, align 8, !tbaa !14 ; 3 uses
  %i.dhs = add i64 %.pre.i.i826, %i.dhp           ; 2 uses
  %i.dht = icmp ult i64 %.pre.i.i826, %i.dhs
  %or.cond.i.i827 = select i1 %i.dhr, i1 %i.dht, i1 false
  br i1 %or.cond.i.i827, label %.lr.ph.i.i830, label %.loopexit.i.i828

.lr.ph.i.i830:                                    ; preds = %_ZN6duckdb12_GLOBAL__N_122SortKeyVarcharOperator6EncodeEPhNS_8string_tE.exit.i.i, %.lr.ph.i.i830
  %.01.i.i831 = phi i64 [ %i.dhx, %.lr.ph.i.i830 ], [ %.pre.i.i826, %_ZN6duckdb12_GLOBAL__N_122SortKeyVarcharOperator6EncodeEPhNS_8string_tE.exit.i.i ] ; 2 uses
  %i.dhu = getelementptr inbounds nuw i8, ptr %i.dfm, i64 %.01.i.i831 ; 2 uses
  %i.dhv = load i8, ptr %i.dhu, align 1, !tbaa !18
  %i.dhw = xor i8 %i.dhv, -1
  store i8 %i.dhw, ptr %i.dhu, align 1, !tbaa !18
  %i.dhx = add nuw i64 %.01.i.i831, 1             ; 2 uses
  %i.dhy = load i64, ptr %i.dfj, align 8, !tbaa !14
  %i.dhz = add i64 %i.dhy, %i.dhp                 ; 2 uses
  %i.dia = icmp ult i64 %i.dhx, %i.dhz
  br i1 %i.dia, label %.lr.ph.i.i830, label %.loopexit.i.i828, !llvm.loop !856

.loopexit.i.i828:                                 ; preds = %.lr.ph.i.i830, %_ZN6duckdb12_GLOBAL__N_122SortKeyVarcharOperator6EncodeEPhNS_8string_tE.exit.i.i
  %.pre-phi.i.i = phi i64 [ %i.dhs, %_ZN6duckdb12_GLOBAL__N_122SortKeyVarcharOperator6EncodeEPhNS_8string_tE.exit.i.i ], [ %i.dhz, %.lr.ph.i.i830 ]
  store i64 %.pre-phi.i.i, ptr %i.dfj, align 8, !tbaa !14
  %i.dib = add nuw i64 %.0282.i.i821, 1           ; 2 uses
  %exitcond.not.i.i829 = icmp eq i64 %i.dib, %.sroa.21035.0.copyload
  br i1 %exitcond.not.i.i829, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit, label %bb.lw, !llvm.loop !857

bb.lx:                                            ; preds = %bb.lu, %bb.lt
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_8string_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %i.des)
  %i.dic = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.did = load ptr, ptr %i.dic, align 8, !tbaa !333
  %i.die = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dif = load ptr, ptr %i.die, align 8, !tbaa !737, !nonnull !188, !align !280
  %i.dig = icmp ult i64 %.sroa.01034.0.copyload, %.sroa.21035.0.copyload
  br i1 %i.dig, label %.lr.ph34.i.i, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit

.lr.ph34.i.i:                                     ; preds = %bb.lx
  %i.dih = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dii = getelementptr inbounds nuw i8, ptr %0, i64 121
  %i.dij = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.dik = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.dil = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.ly

bb.ly:                                            ; preds = %.loopexit.i24.i, %.lr.ph34.i.i
  %.02933.i.i = phi i64 [ %.sroa.01034.0.copyload, %.lr.ph34.i.i ], [ %i.dlm, %.loopexit.i24.i ] ; 4 uses
  %i.dim = select i1 %i.dev, i64 %.sroa.31036.0.copyload, i64 %.02933.i.i ; 2 uses
  %i.din = load ptr, ptr %i.des, align 8, !tbaa !699
  %i.dio = load ptr, ptr %i.din, align 8, !tbaa !158 ; 2 uses
  %.not.i.i14.i = icmp eq ptr %i.dio, null
  br i1 %.not.i.i14.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i818, label %bb.lz

bb.lz:                                            ; preds = %bb.ly
  %i.dip = getelementptr inbounds nuw [4 x i8], ptr %i.dio, i64 %.02933.i.i
  %i.diq = load i32, ptr %i.dip, align 4, !tbaa !3
  %i.dir = zext i32 %i.diq to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i818

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i818: ; preds = %bb.lz, %bb.ly
  %i.dis = phi i64 [ %i.dir, %bb.lz ], [ %.02933.i.i, %bb.ly ]
  %i.dit = load ptr, ptr %i.dif, align 8, !tbaa !39
  %i.diu = getelementptr inbounds nuw [8 x i8], ptr %i.dit, i64 %i.dim ; 6 uses
  %i.div = load ptr, ptr %i.dih, align 8, !tbaa !100
  %i.diw = getelementptr inbounds nuw [8 x i8], ptr %i.div, i64 %i.dim
  %i.dix = load ptr, ptr %i.diw, align 8, !tbaa !88 ; 4 uses
  %i.diy = ptrtoaddr ptr %i.dix to i64
  %i.diz = load i8, ptr %i.dii, align 1, !tbaa !738
  %i.dja = load i64, ptr %i.diu, align 8, !tbaa !14 ; 2 uses
  %i.djb = add i64 %i.dja, 1
  store i64 %i.djb, ptr %i.diu, align 8, !tbaa !14
  %i.djc = getelementptr inbounds nuw i8, ptr %i.dix, i64 %i.dja
  store i8 %i.diz, ptr %i.djc, align 1, !tbaa !18
  %i.djd = load i64, ptr %i.diu, align 8, !tbaa !14 ; 2 uses
  %i.dje = getelementptr inbounds nuw i8, ptr %i.dix, i64 %i.djd ; 8 uses
  %i.djf = getelementptr inbounds nuw [16 x i8], ptr %i.did, i64 %i.dis ; 2 uses
  %.sroa.0.0.copyload.i15.i = load i64, ptr %i.djf, align 8 ; 7 uses
  %.sroa.2.0..sroa_idx.i16.i = getelementptr inbounds nuw i8, ptr %i.djf, i64 8
  %.sroa.2.0.copyload.i17.i = load ptr, ptr %.sroa.2.0..sroa_idx.i16.i, align 8, !tbaa !18 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  store i64 %.sroa.0.0.copyload.i15.i, ptr %13, align 8
  store ptr %.sroa.2.0.copyload.i17.i, ptr %i.dij, align 8
  %i.djg = trunc i64 %.sroa.0.0.copyload.i15.i to i32 ; 2 uses
  %i.djh = icmp ult i32 %i.djg, 13
  %i.dji = select i1 %i.djh, ptr %i.dik, ptr %.sroa.2.0.copyload.i17.i ; 8 uses
  %i.djj = ptrtoaddr ptr %i.dji to i64
  %i.djk = and i64 %.sroa.0.0.copyload.i15.i, 4294967295 ; 8 uses
  %.not.i31.i.i = icmp eq i32 %i.djg, 0
  br i1 %.not.i31.i.i, label %_ZN6duckdb12_GLOBAL__N_122SortKeyVarcharOperator6EncodeEPhNS_8string_tE.exit.i21.i, label %iter.check2002

iter.check2002:                                   ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i818
  %min.iters.check1988 = icmp samesign ult i64 %i.djk, 4
  br i1 %min.iters.check1988, label %.lr.ph.i.i18.i.preheader, label %vector.memcheck1986

vector.memcheck1986:                              ; preds = %iter.check2002
  %i.djl = add i64 %i.djd, %i.diy
  %i.djm = sub i64 %i.djl, %i.djj
  %diff.check1987 = icmp ult i64 %i.djm, 32
  br i1 %diff.check1987, label %.lr.ph.i.i18.i.preheader, label %vector.main.loop.iter.check1989

vector.main.loop.iter.check1989:                  ; preds = %vector.memcheck1986
  %min.iters.check1990 = icmp samesign ult i64 %i.djk, 32
  br i1 %min.iters.check1990, label %vec.epilog.ph2006, label %vector.ph1991

vector.ph1991:                                    ; preds = %vector.main.loop.iter.check1989
  %n.mod.vf1992 = and i64 %.sroa.0.0.copyload.i15.i, 28
  %n.vec1993 = and i64 %.sroa.0.0.copyload.i15.i, 4294967264 ; 4 uses
  br label %vector.body1994

vector.body1994:                                  ; preds = %vector.body1994, %vector.ph1991
  %index1995 = phi i64 [ 0, %vector.ph1991 ], [ %index.next1998, %vector.body1994 ] ; 3 uses
  %i.djn = getelementptr inbounds nuw i8, ptr %i.dji, i64 %index1995 ; 2 uses
  %i.djo = getelementptr inbounds nuw i8, ptr %i.djn, i64 16
  %wide.load1996 = load <16 x i8>, ptr %i.djn, align 1, !tbaa !18
  %wide.load1997 = load <16 x i8>, ptr %i.djo, align 1, !tbaa !18
  %i.djp = add <16 x i8> %wide.load1996, splat (i8 1)
  %i.djq = add <16 x i8> %wide.load1997, splat (i8 1)
  %i.djr = getelementptr inbounds nuw i8, ptr %i.dje, i64 %index1995 ; 2 uses
  %i.djs = getelementptr inbounds nuw i8, ptr %i.djr, i64 16
  store <16 x i8> %i.djp, ptr %i.djr, align 1, !tbaa !18
  store <16 x i8> %i.djq, ptr %i.djs, align 1, !tbaa !18
  %index.next1998 = add nuw i64 %index1995, 32    ; 2 uses
  %i.djt = icmp eq i64 %index.next1998, %n.vec1993
  br i1 %i.djt, label %middle.block1999, label %vector.body1994, !llvm.loop !858

middle.block1999:                                 ; preds = %vector.body1994
  %cmp.n2000 = icmp eq i64 %i.djk, %n.vec1993
  br i1 %cmp.n2000, label %_ZN6duckdb12_GLOBAL__N_122SortKeyVarcharOperator6EncodeEPhNS_8string_tE.exit.i21.i, label %vec.epilog.iter.check2004

vec.epilog.iter.check2004:                        ; preds = %middle.block1999
  %min.epilog.iters.check2005 = icmp eq i64 %n.mod.vf1992, 0
  br i1 %min.epilog.iters.check2005, label %.lr.ph.i.i18.i.preheader, label %vec.epilog.ph2006, !prof !212

vec.epilog.ph2006:                                ; preds = %vector.main.loop.iter.check1989, %vec.epilog.iter.check2004
  %vec.epilog.resume.val2001 = phi i64 [ %n.vec1993, %vec.epilog.iter.check2004 ], [ 0, %vector.main.loop.iter.check1989 ]
  %n.vec2008 = and i64 %.sroa.0.0.copyload.i15.i, 4294967292 ; 3 uses
  br label %vec.epilog.vector.body2009

vec.epilog.vector.body2009:                       ; preds = %vec.epilog.vector.body2009, %vec.epilog.ph2006
  %index2010 = phi i64 [ %vec.epilog.resume.val2001, %vec.epilog.ph2006 ], [ %index.next2012, %vec.epilog.vector.body2009 ] ; 3 uses
  %i.dju = getelementptr inbounds nuw i8, ptr %i.dji, i64 %index2010
  %wide.load2011 = load <4 x i8>, ptr %i.dju, align 1, !tbaa !18
  %i.djv = add <4 x i8> %wide.load2011, splat (i8 1)
  %i.djw = getelementptr inbounds nuw i8, ptr %i.dje, i64 %index2010
  store <4 x i8> %i.djv, ptr %i.djw, align 1, !tbaa !18
  %index.next2012 = add nuw i64 %index2010, 4     ; 2 uses
  %i.djx = icmp eq i64 %index.next2012, %n.vec2008
  br i1 %i.djx, label %vec.epilog.middle.block2013, label %vec.epilog.vector.body2009, !llvm.loop !859

vec.epilog.middle.block2013:                      ; preds = %vec.epilog.vector.body2009
  %cmp.n2014 = icmp eq i64 %i.djk, %n.vec2008
  br i1 %cmp.n2014, label %_ZN6duckdb12_GLOBAL__N_122SortKeyVarcharOperator6EncodeEPhNS_8string_tE.exit.i21.i, label %.lr.ph.i.i18.i.preheader

.lr.ph.i.i18.i.preheader:                         ; preds = %vector.memcheck1986, %iter.check2002, %vec.epilog.iter.check2004, %vec.epilog.middle.block2013
  %.010.i.i19.i.ph = phi i64 [ 0, %iter.check2002 ], [ 0, %vector.memcheck1986 ], [ %n.vec1993, %vec.epilog.iter.check2004 ], [ %n.vec2008, %vec.epilog.middle.block2013 ] ; 3 uses
  %xtraiter2160 = and i64 %.sroa.0.0.copyload.i15.i, 3 ; 2 uses
  %lcmp.mod2161.not = icmp eq i64 %xtraiter2160, 0
  br i1 %lcmp.mod2161.not, label %.lr.ph.i.i18.i.prol.loopexit, label %.lr.ph.i.i18.i.prol

.lr.ph.i.i18.i.prol:                              ; preds = %.lr.ph.i.i18.i.preheader, %.lr.ph.i.i18.i.prol
  %.010.i.i19.i.prol = phi i64 [ %i.dkc, %.lr.ph.i.i18.i.prol ], [ %.010.i.i19.i.ph, %.lr.ph.i.i18.i.preheader ] ; 3 uses
  %prol.iter2162 = phi i64 [ %prol.iter2162.next, %.lr.ph.i.i18.i.prol ], [ 0, %.lr.ph.i.i18.i.preheader ]
  %i.djy = getelementptr inbounds nuw i8, ptr %i.dji, i64 %.010.i.i19.i.prol
  %i.djz = load i8, ptr %i.djy, align 1, !tbaa !18
  %i.dka = add i8 %i.djz, 1
  %i.dkb = getelementptr inbounds nuw i8, ptr %i.dje, i64 %.010.i.i19.i.prol
  store i8 %i.dka, ptr %i.dkb, align 1, !tbaa !18
  %i.dkc = add nuw nsw i64 %.010.i.i19.i.prol, 1  ; 2 uses
  %prol.iter2162.next = add i64 %prol.iter2162, 1 ; 2 uses
  %prol.iter2162.cmp.not = icmp eq i64 %prol.iter2162.next, %xtraiter2160
  br i1 %prol.iter2162.cmp.not, label %.lr.ph.i.i18.i.prol.loopexit, label %.lr.ph.i.i18.i.prol, !llvm.loop !860

.lr.ph.i.i18.i.prol.loopexit:                     ; preds = %.lr.ph.i.i18.i.prol, %.lr.ph.i.i18.i.preheader
  %.010.i.i19.i.unr = phi i64 [ %.010.i.i19.i.ph, %.lr.ph.i.i18.i.preheader ], [ %i.dkc, %.lr.ph.i.i18.i.prol ]
  %i.dkd = sub nsw i64 %.010.i.i19.i.ph, %i.djk
  %i.dke = icmp ugt i64 %i.dkd, -4
  br i1 %i.dke, label %_ZN6duckdb12_GLOBAL__N_122SortKeyVarcharOperator6EncodeEPhNS_8string_tE.exit.i21.i, label %.lr.ph.i.i18.i

.lr.ph.i.i18.i:                                   ; preds = %.lr.ph.i.i18.i.prol.loopexit, %.lr.ph.i.i18.i
  %.010.i.i19.i = phi i64 [ %i.dky, %.lr.ph.i.i18.i ], [ %.010.i.i19.i.unr, %.lr.ph.i.i18.i.prol.loopexit ] ; 6 uses
  %i.dkf = getelementptr inbounds nuw i8, ptr %i.dji, i64 %.010.i.i19.i
  %i.dkg = load i8, ptr %i.dkf, align 1, !tbaa !18
  %i.dkh = add i8 %i.dkg, 1
  %i.dki = getelementptr inbounds nuw i8, ptr %i.dje, i64 %.010.i.i19.i
  store i8 %i.dkh, ptr %i.dki, align 1, !tbaa !18
  %i.dkj = add nuw nsw i64 %.010.i.i19.i, 1       ; 2 uses
  %i.dkk = getelementptr inbounds nuw i8, ptr %i.dji, i64 %i.dkj
  %i.dkl = load i8, ptr %i.dkk, align 1, !tbaa !18
  %i.dkm = add i8 %i.dkl, 1
  %i.dkn = getelementptr inbounds nuw i8, ptr %i.dje, i64 %i.dkj
  store i8 %i.dkm, ptr %i.dkn, align 1, !tbaa !18
  %i.dko = add nuw nsw i64 %.010.i.i19.i, 2       ; 2 uses
  %i.dkp = getelementptr inbounds nuw i8, ptr %i.dji, i64 %i.dko
  %i.dkq = load i8, ptr %i.dkp, align 1, !tbaa !18
  %i.dkr = add i8 %i.dkq, 1
  %i.dks = getelementptr inbounds nuw i8, ptr %i.dje, i64 %i.dko
  store i8 %i.dkr, ptr %i.dks, align 1, !tbaa !18
  %i.dkt = add nuw nsw i64 %.010.i.i19.i, 3       ; 2 uses
  %i.dku = getelementptr inbounds nuw i8, ptr %i.dji, i64 %i.dkt
  %i.dkv = load i8, ptr %i.dku, align 1, !tbaa !18
  %i.dkw = add i8 %i.dkv, 1
  %i.dkx = getelementptr inbounds nuw i8, ptr %i.dje, i64 %i.dkt
  store i8 %i.dkw, ptr %i.dkx, align 1, !tbaa !18
  %i.dky = add nuw nsw i64 %.010.i.i19.i, 4       ; 2 uses
  %exitcond.not.i.i20.i.3 = icmp eq i64 %i.dky, %i.djk
  br i1 %exitcond.not.i.i20.i.3, label %_ZN6duckdb12_GLOBAL__N_122SortKeyVarcharOperator6EncodeEPhNS_8string_tE.exit.i21.i, label %.lr.ph.i.i18.i, !llvm.loop !861

_ZN6duckdb12_GLOBAL__N_122SortKeyVarcharOperator6EncodeEPhNS_8string_tE.exit.i21.i: ; preds = %.lr.ph.i.i18.i.prol.loopexit, %.lr.ph.i.i18.i, %middle.block1999, %vec.epilog.middle.block2013, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i818
  %i.dkz = getelementptr inbounds nuw i8, ptr %i.dje, i64 %i.djk
  store i8 0, ptr %i.dkz, align 1, !tbaa !18
  %i.dla = add nuw nsw i64 %i.djk, 1              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  %i.dlb = load i8, ptr %i.dil, align 8, !tbaa !108, !range !187, !noundef !188
  %i.dlc = trunc nuw i8 %i.dlb to i1
  %.pre.i22.i819 = load i64, ptr %i.diu, align 8, !tbaa !14 ; 3 uses
  %i.dld = add i64 %.pre.i22.i819, %i.dla         ; 2 uses
  %i.dle = icmp ult i64 %.pre.i22.i819, %i.dld
  %or.cond.i23.i = select i1 %i.dlc, i1 %i.dle, i1 false
  br i1 %or.cond.i23.i, label %.lr.ph.i27.i, label %.loopexit.i24.i

.lr.ph.i27.i:                                     ; preds = %_ZN6duckdb12_GLOBAL__N_122SortKeyVarcharOperator6EncodeEPhNS_8string_tE.exit.i21.i, %.lr.ph.i27.i
  %.032.i.i = phi i64 [ %i.dli, %.lr.ph.i27.i ], [ %.pre.i22.i819, %_ZN6duckdb12_GLOBAL__N_122SortKeyVarcharOperator6EncodeEPhNS_8string_tE.exit.i21.i ] ; 2 uses
  %i.dlf = getelementptr inbounds nuw i8, ptr %i.dix, i64 %.032.i.i ; 2 uses
  %i.dlg = load i8, ptr %i.dlf, align 1, !tbaa !18
  %i.dlh = xor i8 %i.dlg, -1
  store i8 %i.dlh, ptr %i.dlf, align 1, !tbaa !18
  %i.dli = add nuw i64 %.032.i.i, 1               ; 2 uses
  %i.dlj = load i64, ptr %i.diu, align 8, !tbaa !14
  %i.dlk = add i64 %i.dlj, %i.dla                 ; 2 uses
  %i.dll = icmp ult i64 %i.dli, %i.dlk
  br i1 %i.dll, label %.lr.ph.i27.i, label %.loopexit.i24.i, !llvm.loop !862

.loopexit.i24.i:                                  ; preds = %.lr.ph.i27.i, %_ZN6duckdb12_GLOBAL__N_122SortKeyVarcharOperator6EncodeEPhNS_8string_tE.exit.i21.i
  %.pre-phi.i25.i = phi i64 [ %i.dld, %_ZN6duckdb12_GLOBAL__N_122SortKeyVarcharOperator6EncodeEPhNS_8string_tE.exit.i21.i ], [ %i.dlk, %.lr.ph.i27.i ]
  store i64 %.pre-phi.i25.i, ptr %i.diu, align 8, !tbaa !14
  %i.dlm = add nuw i64 %.02933.i.i, 1             ; 2 uses
  %exitcond.not.i26.i = icmp eq i64 %i.dlm, %.sroa.21035.0.copyload
  br i1 %exitcond.not.i26.i, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit, label %bb.ly, !llvm.loop !863

bb.ma:                                            ; preds = %bb.ls
  br i1 %i.dev, label %bb.mg, label %bb.mb

bb.mb:                                            ; preds = %bb.ma
  %i.dln = load ptr, ptr %i.des, align 8, !tbaa !699
  %i.dlo = load ptr, ptr %i.dln, align 8, !tbaa !158
  %.not.i811 = icmp eq ptr %i.dlo, null
  br i1 %.not.i811, label %bb.mc, label %bb.mg

bb.mc:                                            ; preds = %bb.mb
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_8string_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %i.des)
  %i.dlp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dlq = load ptr, ptr %i.dlp, align 8, !tbaa !333
  %i.dlr = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dls = load ptr, ptr %i.dlr, align 8, !tbaa !737, !nonnull !188, !align !280
  %i.dlt = icmp ult i64 %.sroa.01034.0.copyload, %.sroa.21035.0.copyload
  br i1 %i.dlt, label %.lr.ph4.i.i813, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit

.lr.ph4.i.i813:                                   ; preds = %bb.mc
  %i.dlu = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dlv = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.dlw = getelementptr inbounds nuw i8, ptr %0, i64 121
  %i.dlx = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.dly = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.dlz = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.md

bb.md:                                            ; preds = %bb.mf, %.lr.ph4.i.i813
  %.0333.i.i814 = phi i64 [ %.sroa.01034.0.copyload, %.lr.ph4.i.i813 ], [ %i.dpe, %bb.mf ] ; 6 uses
  %i.dma = load ptr, ptr %i.dls, align 8, !tbaa !39
  %i.dmb = getelementptr inbounds nuw [8 x i8], ptr %i.dma, i64 %.0333.i.i814 ; 8 uses
  %i.dmc = load ptr, ptr %i.dlu, align 8, !tbaa !100
  %i.dmd = getelementptr inbounds nuw [8 x i8], ptr %i.dmc, i64 %.0333.i.i814
  %i.dme = load ptr, ptr %i.dmd, align 8, !tbaa !88 ; 5 uses
  %i.dmf = ptrtoaddr ptr %i.dme to i64
  %i.dmg = load ptr, ptr %i.det, align 8, !tbaa !159 ; 2 uses
  %.not.i.i28.i = icmp eq ptr %i.dmg, null
  br i1 %.not.i.i28.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i816, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i815

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i815: ; preds = %bb.md
  %i.dmh = lshr i64 %.0333.i.i814, 6
  %i.dmi = and i64 %.0333.i.i814, 63
  %i.dmj = getelementptr inbounds nuw [8 x i8], ptr %i.dmg, i64 %i.dmh
  %i.dmk = load i64, ptr %i.dmj, align 8, !tbaa !14
  %i.dml = shl nuw i64 1, %i.dmi
  %i.dmm = and i64 %i.dmk, %i.dml
  %.not.i29.i = icmp eq i64 %i.dmm, 0
  br i1 %.not.i29.i, label %bb.me, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i816

bb.me:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i815
  %i.dmn = load i8, ptr %i.dlv, align 8, !tbaa !743
  %i.dmo = load i64, ptr %i.dmb, align 8, !tbaa !14 ; 2 uses
  %i.dmp = add i64 %i.dmo, 1
  store i64 %i.dmp, ptr %i.dmb, align 8, !tbaa !14
  %i.dmq = getelementptr inbounds nuw i8, ptr %i.dme, i64 %i.dmo
  store i8 %i.dmn, ptr %i.dmq, align 1, !tbaa !18
  br label %bb.mf

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i816: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i815, %bb.md
  %i.dmr = load i8, ptr %i.dlw, align 1, !tbaa !738
  %i.dms = load i64, ptr %i.dmb, align 8, !tbaa !14 ; 2 uses
  %i.dmt = add i64 %i.dms, 1
  store i64 %i.dmt, ptr %i.dmb, align 8, !tbaa !14
  %i.dmu = getelementptr inbounds nuw i8, ptr %i.dme, i64 %i.dms
  store i8 %i.dmr, ptr %i.dmu, align 1, !tbaa !18
  %i.dmv = load i64, ptr %i.dmb, align 8, !tbaa !14 ; 2 uses
  %i.dmw = getelementptr inbounds nuw i8, ptr %i.dme, i64 %i.dmv ; 8 uses
  %i.dmx = getelementptr inbounds nuw [16 x i8], ptr %i.dlq, i64 %.0333.i.i814 ; 2 uses
  %.sroa.0.0.copyload.i30.i = load i64, ptr %i.dmx, align 8 ; 7 uses
  %.sroa.2.0..sroa_idx.i31.i = getelementptr inbounds nuw i8, ptr %i.dmx, i64 8
  %.sroa.2.0.copyload.i32.i = load ptr, ptr %.sroa.2.0..sroa_idx.i31.i, align 8, !tbaa !18 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  store i64 %.sroa.0.0.copyload.i30.i, ptr %12, align 8
  store ptr %.sroa.2.0.copyload.i32.i, ptr %i.dlx, align 8
  %i.dmy = trunc i64 %.sroa.0.0.copyload.i30.i to i32 ; 2 uses
  %i.dmz = icmp ult i32 %i.dmy, 13
  %i.dna = select i1 %i.dmz, ptr %i.dly, ptr %.sroa.2.0.copyload.i32.i ; 8 uses
  %i.dnb = ptrtoaddr ptr %i.dna to i64
  %i.dnc = and i64 %.sroa.0.0.copyload.i30.i, 4294967295 ; 8 uses
  %.not.i34.i.i = icmp eq i32 %i.dmy, 0
  br i1 %.not.i34.i.i, label %_ZN6duckdb12_GLOBAL__N_122SortKeyVarcharOperator6EncodeEPhNS_8string_tE.exit.i36.i, label %iter.check

iter.check:                                       ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i816
  %min.iters.check = icmp samesign ult i64 %i.dnc, 4
  br i1 %min.iters.check, label %.lr.ph.i.i33.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.dnd = add i64 %i.dmv, %i.dmf
  %i.dne = sub i64 %i.dnd, %i.dnb
  %diff.check = icmp ult i64 %i.dne, 32
  br i1 %diff.check, label %.lr.ph.i.i33.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check1918 = icmp samesign ult i64 %i.dnc, 32
  br i1 %min.iters.check1918, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %.sroa.0.0.copyload.i30.i, 28
  %n.vec = and i64 %.sroa.0.0.copyload.i30.i, 4294967264 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dnf = getelementptr inbounds nuw i8, ptr %i.dna, i64 %index ; 2 uses
  %i.dng = getelementptr inbounds nuw i8, ptr %i.dnf, i64 16
  %wide.load = load <16 x i8>, ptr %i.dnf, align 1, !tbaa !18
  %wide.load1919 = load <16 x i8>, ptr %i.dng, align 1, !tbaa !18
  %i.dnh = add <16 x i8> %wide.load, splat (i8 1)
  %i.dni = add <16 x i8> %wide.load1919, splat (i8 1)
  %i.dnj = getelementptr inbounds nuw i8, ptr %i.dmw, i64 %index ; 2 uses
  %i.dnk = getelementptr inbounds nuw i8, ptr %i.dnj, i64 16
  store <16 x i8> %i.dnh, ptr %i.dnj, align 1, !tbaa !18
  store <16 x i8> %i.dni, ptr %i.dnk, align 1, !tbaa !18
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dnl = icmp eq i64 %index.next, %n.vec
  br i1 %i.dnl, label %middle.block, label %vector.body, !llvm.loop !864

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dnc, %n.vec
  br i1 %cmp.n, label %_ZN6duckdb12_GLOBAL__N_122SortKeyVarcharOperator6EncodeEPhNS_8string_tE.exit.i36.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i33.i.preheader, label %vec.epilog.ph, !prof !212

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1921 = and i64 %.sroa.0.0.copyload.i30.i, 4294967292 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1922 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1924, %vec.epilog.vector.body ] ; 3 uses
  %i.dnm = getelementptr inbounds nuw i8, ptr %i.dna, i64 %index1922
  %wide.load1923 = load <4 x i8>, ptr %i.dnm, align 1, !tbaa !18
  %i.dnn = add <4 x i8> %wide.load1923, splat (i8 1)
  %i.dno = getelementptr inbounds nuw i8, ptr %i.dmw, i64 %index1922
  store <4 x i8> %i.dnn, ptr %i.dno, align 1, !tbaa !18
  %index.next1924 = add nuw i64 %index1922, 4     ; 2 uses
  %i.dnp = icmp eq i64 %index.next1924, %n.vec1921
  br i1 %i.dnp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !865

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1925 = icmp eq i64 %i.dnc, %n.vec1921
  br i1 %cmp.n1925, label %_ZN6duckdb12_GLOBAL__N_122SortKeyVarcharOperator6EncodeEPhNS_8string_tE.exit.i36.i, label %.lr.ph.i.i33.i.preheader

.lr.ph.i.i33.i.preheader:                         ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.010.i.i34.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec1921, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.sroa.0.0.copyload.i30.i, 3 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i33.i.prol.loopexit, label %.lr.ph.i.i33.i.prol

.lr.ph.i.i33.i.prol:                              ; preds = %.lr.ph.i.i33.i.preheader, %.lr.ph.i.i33.i.prol
  %.010.i.i34.i.prol = phi i64 [ %i.dnu, %.lr.ph.i.i33.i.prol ], [ %.010.i.i34.i.ph, %.lr.ph.i.i33.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i33.i.prol ], [ 0, %.lr.ph.i.i33.i.preheader ]
  %i.dnq = getelementptr inbounds nuw i8, ptr %i.dna, i64 %.010.i.i34.i.prol
  %i.dnr = load i8, ptr %i.dnq, align 1, !tbaa !18
  %i.dns = add i8 %i.dnr, 1
  %i.dnt = getelementptr inbounds nuw i8, ptr %i.dmw, i64 %.010.i.i34.i.prol
  store i8 %i.dns, ptr %i.dnt, align 1, !tbaa !18
  %i.dnu = add nuw nsw i64 %.010.i.i34.i.prol, 1  ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i33.i.prol.loopexit, label %.lr.ph.i.i33.i.prol, !llvm.loop !866

.lr.ph.i.i33.i.prol.loopexit:                     ; preds = %.lr.ph.i.i33.i.prol, %.lr.ph.i.i33.i.preheader
  %.010.i.i34.i.unr = phi i64 [ %.010.i.i34.i.ph, %.lr.ph.i.i33.i.preheader ], [ %i.dnu, %.lr.ph.i.i33.i.prol ]
  %i.dnv = sub nsw i64 %.010.i.i34.i.ph, %i.dnc
  %i.dnw = icmp ugt i64 %i.dnv, -4
  br i1 %i.dnw, label %_ZN6duckdb12_GLOBAL__N_122SortKeyVarcharOperator6EncodeEPhNS_8string_tE.exit.i36.i, label %.lr.ph.i.i33.i

.lr.ph.i.i33.i:                                   ; preds = %.lr.ph.i.i33.i.prol.loopexit, %.lr.ph.i.i33.i
  %.010.i.i34.i = phi i64 [ %i.doq, %.lr.ph.i.i33.i ], [ %.010.i.i34.i.unr, %.lr.ph.i.i33.i.prol.loopexit ] ; 6 uses
  %i.dnx = getelementptr inbounds nuw i8, ptr %i.dna, i64 %.010.i.i34.i
  %i.dny = load i8, ptr %i.dnx, align 1, !tbaa !18
  %i.dnz = add i8 %i.dny, 1
  %i.doa = getelementptr inbounds nuw i8, ptr %i.dmw, i64 %.010.i.i34.i
  store i8 %i.dnz, ptr %i.doa, align 1, !tbaa !18
  %i.dob = add nuw nsw i64 %.010.i.i34.i, 1       ; 2 uses
  %i.doc = getelementptr inbounds nuw i8, ptr %i.dna, i64 %i.dob
  %i.dod = load i8, ptr %i.doc, align 1, !tbaa !18
  %i.doe = add i8 %i.dod, 1
  %i.dof = getelementptr inbounds nuw i8, ptr %i.dmw, i64 %i.dob
  store i8 %i.doe, ptr %i.dof, align 1, !tbaa !18
  %i.dog = add nuw nsw i64 %.010.i.i34.i, 2       ; 2 uses
  %i.doh = getelementptr inbounds nuw i8, ptr %i.dna, i64 %i.dog
  %i.doi = load i8, ptr %i.doh, align 1, !tbaa !18
  %i.doj = add i8 %i.doi, 1
  %i.dok = getelementptr inbounds nuw i8, ptr %i.dmw, i64 %i.dog
  store i8 %i.doj, ptr %i.dok, align 1, !tbaa !18
  %i.dol = add nuw nsw i64 %.010.i.i34.i, 3       ; 2 uses
  %i.dom = getelementptr inbounds nuw i8, ptr %i.dna, i64 %i.dol
  %i.don = load i8, ptr %i.dom, align 1, !tbaa !18
  %i.doo = add i8 %i.don, 1
  %i.dop = getelementptr inbounds nuw i8, ptr %i.dmw, i64 %i.dol
  store i8 %i.doo, ptr %i.dop, align 1, !tbaa !18
  %i.doq = add nuw nsw i64 %.010.i.i34.i, 4       ; 2 uses
  %exitcond.not.i.i35.i.3 = icmp eq i64 %i.doq, %i.dnc
  br i1 %exitcond.not.i.i35.i.3, label %_ZN6duckdb12_GLOBAL__N_122SortKeyVarcharOperator6EncodeEPhNS_8string_tE.exit.i36.i, label %.lr.ph.i.i33.i, !llvm.loop !867

_ZN6duckdb12_GLOBAL__N_122SortKeyVarcharOperator6EncodeEPhNS_8string_tE.exit.i36.i: ; preds = %.lr.ph.i.i33.i.prol.loopexit, %.lr.ph.i.i33.i, %middle.block, %vec.epilog.middle.block, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i816
  %i.dor = getelementptr inbounds nuw i8, ptr %i.dmw, i64 %i.dnc
  store i8 0, ptr %i.dor, align 1, !tbaa !18
  %i.dos = add nuw nsw i64 %i.dnc, 1              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %i.dot = load i8, ptr %i.dlz, align 8, !tbaa !108, !range !187, !noundef !188
  %i.dou = trunc nuw i8 %i.dot to i1
  %.pre.i37.i = load i64, ptr %i.dmb, align 8, !tbaa !14 ; 3 uses
  %i.dov = add i64 %.pre.i37.i, %i.dos            ; 2 uses
  %i.dow = icmp ult i64 %.pre.i37.i, %i.dov
  %or.cond.i38.i = select i1 %i.dou, i1 %i.dow, i1 false
  br i1 %or.cond.i38.i, label %.lr.ph.i42.i, label %.loopexit.i39.i

.lr.ph.i42.i:                                     ; preds = %_ZN6duckdb12_GLOBAL__N_122SortKeyVarcharOperator6EncodeEPhNS_8string_tE.exit.i36.i, %.lr.ph.i42.i
  %.02.i.i817 = phi i64 [ %i.dpa, %.lr.ph.i42.i ], [ %.pre.i37.i, %_ZN6duckdb12_GLOBAL__N_122SortKeyVarcharOperator6EncodeEPhNS_8string_tE.exit.i36.i ] ; 2 uses
  %i.dox = getelementptr inbounds nuw i8, ptr %i.dme, i64 %.02.i.i817 ; 2 uses
  %i.doy = load i8, ptr %i.dox, align 1, !tbaa !18
  %i.doz = xor i8 %i.doy, -1
  store i8 %i.doz, ptr %i.dox, align 1, !tbaa !18
  %i.dpa = add nuw i64 %.02.i.i817, 1             ; 2 uses
  %i.dpb = load i64, ptr %i.dmb, align 8, !tbaa !14
  %i.dpc = add i64 %i.dpb, %i.dos                 ; 2 uses
  %i.dpd = icmp ult i64 %i.dpa, %i.dpc
  br i1 %i.dpd, label %.lr.ph.i42.i, label %.loopexit.i39.i, !llvm.loop !868

.loopexit.i39.i:                                  ; preds = %.lr.ph.i42.i, %_ZN6duckdb12_GLOBAL__N_122SortKeyVarcharOperator6EncodeEPhNS_8string_tE.exit.i36.i
  %.pre-phi.i40.i = phi i64 [ %i.dov, %_ZN6duckdb12_GLOBAL__N_122SortKeyVarcharOperator6EncodeEPhNS_8string_tE.exit.i36.i ], [ %i.dpc, %.lr.ph.i42.i ]
  store i64 %.pre-phi.i40.i, ptr %i.dmb, align 8, !tbaa !14
  br label %bb.mf

bb.mf:                                            ; preds = %.loopexit.i39.i, %bb.me
  %i.dpe = add nuw i64 %.0333.i.i814, 1           ; 2 uses
  %exitcond.not.i41.i = icmp eq i64 %i.dpe, %.sroa.21035.0.copyload
  br i1 %exitcond.not.i41.i, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit, label %bb.md, !llvm.loop !869

bb.mg:                                            ; preds = %bb.mb, %bb.ma
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_8string_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %i.des)
  %i.dpf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dpg = load ptr, ptr %i.dpf, align 8, !tbaa !333
  %i.dph = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dpi = load ptr, ptr %i.dph, align 8, !tbaa !737, !nonnull !188, !align !280
  %i.dpj = icmp ult i64 %.sroa.01034.0.copyload, %.sroa.21035.0.copyload
  br i1 %i.dpj, label %.lr.ph41.i.i, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit

.lr.ph41.i.i:                                     ; preds = %bb.mg
  %i.dpk = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dpl = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.dpm = getelementptr inbounds nuw i8, ptr %0, i64 121
  %i.dpn = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.dpo = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.dpp = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.mh

bb.mh:                                            ; preds = %bb.mk, %.lr.ph41.i.i
  %.03440.i.i = phi i64 [ %.sroa.01034.0.copyload, %.lr.ph41.i.i ], [ %i.dtb, %bb.mk ] ; 4 uses
  %i.dpq = select i1 %i.dev, i64 %.sroa.31036.0.copyload, i64 %.03440.i.i ; 2 uses
  %i.dpr = load ptr, ptr %i.des, align 8, !tbaa !699
  %i.dps = load ptr, ptr %i.dpr, align 8, !tbaa !158 ; 2 uses
  %.not.i.i44.i = icmp eq ptr %i.dps, null
  br i1 %.not.i.i44.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i45.i, label %bb.mi

bb.mi:                                            ; preds = %bb.mh
  %i.dpt = getelementptr inbounds nuw [4 x i8], ptr %i.dps, i64 %.03440.i.i
  %i.dpu = load i32, ptr %i.dpt, align 4, !tbaa !3
  %i.dpv = zext i32 %i.dpu to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i45.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i45.i: ; preds = %bb.mi, %bb.mh
  %i.dpw = phi i64 [ %i.dpv, %bb.mi ], [ %.03440.i.i, %bb.mh ] ; 3 uses
  %i.dpx = load ptr, ptr %i.dpi, align 8, !tbaa !39
  %i.dpy = getelementptr inbounds nuw [8 x i8], ptr %i.dpx, i64 %i.dpq ; 8 uses
  %i.dpz = load ptr, ptr %i.dpk, align 8, !tbaa !100
  %i.dqa = getelementptr inbounds nuw [8 x i8], ptr %i.dpz, i64 %i.dpq
  %i.dqb = load ptr, ptr %i.dqa, align 8, !tbaa !88 ; 5 uses
  %i.dqc = ptrtoaddr ptr %i.dqb to i64
  %i.dqd = load ptr, ptr %i.det, align 8, !tbaa !159 ; 2 uses
  %.not.i36.i.i812 = icmp eq ptr %i.dqd, null
  br i1 %.not.i36.i.i812, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i48.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i46.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i46.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i45.i
  %i.dqe = lshr i64 %i.dpw, 6
  %i.dqf = and i64 %i.dpw, 63
  %i.dqg = getelementptr inbounds nuw [8 x i8], ptr %i.dqd, i64 %i.dqe
  %i.dqh = load i64, ptr %i.dqg, align 8, !tbaa !14
  %i.dqi = shl nuw i64 1, %i.dqf
  %i.dqj = and i64 %i.dqh, %i.dqi
  %.not.i47.i = icmp eq i64 %i.dqj, 0
  br i1 %.not.i47.i, label %bb.mj, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i48.i

bb.mj:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i46.i
  %i.dqk = load i8, ptr %i.dpl, align 8, !tbaa !743
  %i.dql = load i64, ptr %i.dpy, align 8, !tbaa !14 ; 2 uses
  %i.dqm = add i64 %i.dql, 1
  store i64 %i.dqm, ptr %i.dpy, align 8, !tbaa !14
  %i.dqn = getelementptr inbounds nuw i8, ptr %i.dqb, i64 %i.dql
  store i8 %i.dqk, ptr %i.dqn, align 1, !tbaa !18
  br label %bb.mk

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i48.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i46.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i45.i
  %i.dqo = load i8, ptr %i.dpm, align 1, !tbaa !738
  %i.dqp = load i64, ptr %i.dpy, align 8, !tbaa !14 ; 2 uses
  %i.dqq = add i64 %i.dqp, 1
  store i64 %i.dqq, ptr %i.dpy, align 8, !tbaa !14
  %i.dqr = getelementptr inbounds nuw i8, ptr %i.dqb, i64 %i.dqp
  store i8 %i.dqo, ptr %i.dqr, align 1, !tbaa !18
  %i.dqs = load i64, ptr %i.dpy, align 8, !tbaa !14 ; 2 uses
  %i.dqt = getelementptr inbounds nuw i8, ptr %i.dqb, i64 %i.dqs ; 8 uses
  %i.dqu = getelementptr inbounds nuw [16 x i8], ptr %i.dpg, i64 %i.dpw ; 2 uses
  %.sroa.0.0.copyload.i49.i = load i64, ptr %i.dqu, align 8 ; 7 uses
  %.sroa.2.0..sroa_idx.i50.i = getelementptr inbounds nuw i8, ptr %i.dqu, i64 8
  %.sroa.2.0.copyload.i51.i = load ptr, ptr %.sroa.2.0..sroa_idx.i50.i, align 8, !tbaa !18 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store i64 %.sroa.0.0.copyload.i49.i, ptr %11, align 8
  store ptr %.sroa.2.0.copyload.i51.i, ptr %i.dpn, align 8
  %i.dqv = trunc i64 %.sroa.0.0.copyload.i49.i to i32 ; 2 uses
  %i.dqw = icmp ult i32 %i.dqv, 13
  %i.dqx = select i1 %i.dqw, ptr %i.dpo, ptr %.sroa.2.0.copyload.i51.i ; 8 uses
  %i.dqy = ptrtoaddr ptr %i.dqx to i64
  %i.dqz = and i64 %.sroa.0.0.copyload.i49.i, 4294967295 ; 8 uses
  %.not.i37.i.i = icmp eq i32 %i.dqv, 0
  br i1 %.not.i37.i.i, label %_ZN6duckdb12_GLOBAL__N_122SortKeyVarcharOperator6EncodeEPhNS_8string_tE.exit.i55.i, label %iter.check1942

iter.check1942:                                   ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i48.i
  %min.iters.check1928 = icmp samesign ult i64 %i.dqz, 4
  br i1 %min.iters.check1928, label %.lr.ph.i.i52.i.preheader, label %vector.memcheck1926

vector.memcheck1926:                              ; preds = %iter.check1942
  %i.dra = add i64 %i.dqs, %i.dqc
  %i.drb = sub i64 %i.dra, %i.dqy
  %diff.check1927 = icmp ult i64 %i.drb, 32
  br i1 %diff.check1927, label %.lr.ph.i.i52.i.preheader, label %vector.main.loop.iter.check1929

vector.main.loop.iter.check1929:                  ; preds = %vector.memcheck1926
  %min.iters.check1930 = icmp samesign ult i64 %i.dqz, 32
  br i1 %min.iters.check1930, label %vec.epilog.ph1946, label %vector.ph1931

vector.ph1931:                                    ; preds = %vector.main.loop.iter.check1929
  %n.mod.vf1932 = and i64 %.sroa.0.0.copyload.i49.i, 28
  %n.vec1933 = and i64 %.sroa.0.0.copyload.i49.i, 4294967264 ; 4 uses
  br label %vector.body1934

vector.body1934:                                  ; preds = %vector.body1934, %vector.ph1931
  %index1935 = phi i64 [ 0, %vector.ph1931 ], [ %index.next1938, %vector.body1934 ] ; 3 uses
  %i.drc = getelementptr inbounds nuw i8, ptr %i.dqx, i64 %index1935 ; 2 uses
  %i.drd = getelementptr inbounds nuw i8, ptr %i.drc, i64 16
  %wide.load1936 = load <16 x i8>, ptr %i.drc, align 1, !tbaa !18
  %wide.load1937 = load <16 x i8>, ptr %i.drd, align 1, !tbaa !18
  %i.dre = add <16 x i8> %wide.load1936, splat (i8 1)
  %i.drf = add <16 x i8> %wide.load1937, splat (i8 1)
  %i.drg = getelementptr inbounds nuw i8, ptr %i.dqt, i64 %index1935 ; 2 uses
  %i.drh = getelementptr inbounds nuw i8, ptr %i.drg, i64 16
  store <16 x i8> %i.dre, ptr %i.drg, align 1, !tbaa !18
  store <16 x i8> %i.drf, ptr %i.drh, align 1, !tbaa !18
  %index.next1938 = add nuw i64 %index1935, 32    ; 2 uses
  %i.dri = icmp eq i64 %index.next1938, %n.vec1933
  br i1 %i.dri, label %middle.block1939, label %vector.body1934, !llvm.loop !870

middle.block1939:                                 ; preds = %vector.body1934
  %cmp.n1940 = icmp eq i64 %i.dqz, %n.vec1933
  br i1 %cmp.n1940, label %_ZN6duckdb12_GLOBAL__N_122SortKeyVarcharOperator6EncodeEPhNS_8string_tE.exit.i55.i, label %vec.epilog.iter.check1944

vec.epilog.iter.check1944:                        ; preds = %middle.block1939
  %min.epilog.iters.check1945 = icmp eq i64 %n.mod.vf1932, 0
  br i1 %min.epilog.iters.check1945, label %.lr.ph.i.i52.i.preheader, label %vec.epilog.ph1946, !prof !212

vec.epilog.ph1946:                                ; preds = %vector.main.loop.iter.check1929, %vec.epilog.iter.check1944
  %vec.epilog.resume.val1941 = phi i64 [ %n.vec1933, %vec.epilog.iter.check1944 ], [ 0, %vector.main.loop.iter.check1929 ]
  %n.vec1948 = and i64 %.sroa.0.0.copyload.i49.i, 4294967292 ; 3 uses
  br label %vec.epilog.vector.body1949

vec.epilog.vector.body1949:                       ; preds = %vec.epilog.vector.body1949, %vec.epilog.ph1946
  %index1950 = phi i64 [ %vec.epilog.resume.val1941, %vec.epilog.ph1946 ], [ %index.next1952, %vec.epilog.vector.body1949 ] ; 3 uses
  %i.drj = getelementptr inbounds nuw i8, ptr %i.dqx, i64 %index1950
  %wide.load1951 = load <4 x i8>, ptr %i.drj, align 1, !tbaa !18
  %i.drk = add <4 x i8> %wide.load1951, splat (i8 1)
  %i.drl = getelementptr inbounds nuw i8, ptr %i.dqt, i64 %index1950
  store <4 x i8> %i.drk, ptr %i.drl, align 1, !tbaa !18
  %index.next1952 = add nuw i64 %index1950, 4     ; 2 uses
  %i.drm = icmp eq i64 %index.next1952, %n.vec1948
  br i1 %i.drm, label %vec.epilog.middle.block1953, label %vec.epilog.vector.body1949, !llvm.loop !871

vec.epilog.middle.block1953:                      ; preds = %vec.epilog.vector.body1949
  %cmp.n1954 = icmp eq i64 %i.dqz, %n.vec1948
  br i1 %cmp.n1954, label %_ZN6duckdb12_GLOBAL__N_122SortKeyVarcharOperator6EncodeEPhNS_8string_tE.exit.i55.i, label %.lr.ph.i.i52.i.preheader

.lr.ph.i.i52.i.preheader:                         ; preds = %vector.memcheck1926, %iter.check1942, %vec.epilog.iter.check1944, %vec.epilog.middle.block1953
  %.010.i.i53.i.ph = phi i64 [ 0, %iter.check1942 ], [ 0, %vector.memcheck1926 ], [ %n.vec1933, %vec.epilog.iter.check1944 ], [ %n.vec1948, %vec.epilog.middle.block1953 ] ; 3 uses
  %xtraiter2154 = and i64 %.sroa.0.0.copyload.i49.i, 3 ; 2 uses
  %lcmp.mod2155.not = icmp eq i64 %xtraiter2154, 0
  br i1 %lcmp.mod2155.not, label %.lr.ph.i.i52.i.prol.loopexit, label %.lr.ph.i.i52.i.prol

.lr.ph.i.i52.i.prol:                              ; preds = %.lr.ph.i.i52.i.preheader, %.lr.ph.i.i52.i.prol
  %.010.i.i53.i.prol = phi i64 [ %i.drr, %.lr.ph.i.i52.i.prol ], [ %.010.i.i53.i.ph, %.lr.ph.i.i52.i.preheader ] ; 3 uses
  %prol.iter2156 = phi i64 [ %prol.iter2156.next, %.lr.ph.i.i52.i.prol ], [ 0, %.lr.ph.i.i52.i.preheader ]
  %i.drn = getelementptr inbounds nuw i8, ptr %i.dqx, i64 %.010.i.i53.i.prol
  %i.dro = load i8, ptr %i.drn, align 1, !tbaa !18
  %i.drp = add i8 %i.dro, 1
  %i.drq = getelementptr inbounds nuw i8, ptr %i.dqt, i64 %.010.i.i53.i.prol
  store i8 %i.drp, ptr %i.drq, align 1, !tbaa !18
  %i.drr = add nuw nsw i64 %.010.i.i53.i.prol, 1  ; 2 uses
  %prol.iter2156.next = add i64 %prol.iter2156, 1 ; 2 uses
  %prol.iter2156.cmp.not = icmp eq i64 %prol.iter2156.next, %xtraiter2154
  br i1 %prol.iter2156.cmp.not, label %.lr.ph.i.i52.i.prol.loopexit, label %.lr.ph.i.i52.i.prol, !llvm.loop !872

.lr.ph.i.i52.i.prol.loopexit:                     ; preds = %.lr.ph.i.i52.i.prol, %.lr.ph.i.i52.i.preheader
  %.010.i.i53.i.unr = phi i64 [ %.010.i.i53.i.ph, %.lr.ph.i.i52.i.preheader ], [ %i.drr, %.lr.ph.i.i52.i.prol ]
  %i.drs = sub nsw i64 %.010.i.i53.i.ph, %i.dqz
  %i.drt = icmp ugt i64 %i.drs, -4
  br i1 %i.drt, label %_ZN6duckdb12_GLOBAL__N_122SortKeyVarcharOperator6EncodeEPhNS_8string_tE.exit.i55.i, label %.lr.ph.i.i52.i

.lr.ph.i.i52.i:                                   ; preds = %.lr.ph.i.i52.i.prol.loopexit, %.lr.ph.i.i52.i
  %.010.i.i53.i = phi i64 [ %i.dsn, %.lr.ph.i.i52.i ], [ %.010.i.i53.i.unr, %.lr.ph.i.i52.i.prol.loopexit ] ; 6 uses
  %i.dru = getelementptr inbounds nuw i8, ptr %i.dqx, i64 %.010.i.i53.i
  %i.drv = load i8, ptr %i.dru, align 1, !tbaa !18
  %i.drw = add i8 %i.drv, 1
  %i.drx = getelementptr inbounds nuw i8, ptr %i.dqt, i64 %.010.i.i53.i
  store i8 %i.drw, ptr %i.drx, align 1, !tbaa !18
  %i.dry = add nuw nsw i64 %.010.i.i53.i, 1       ; 2 uses
  %i.drz = getelementptr inbounds nuw i8, ptr %i.dqx, i64 %i.dry
  %i.dsa = load i8, ptr %i.drz, align 1, !tbaa !18
  %i.dsb = add i8 %i.dsa, 1
  %i.dsc = getelementptr inbounds nuw i8, ptr %i.dqt, i64 %i.dry
  store i8 %i.dsb, ptr %i.dsc, align 1, !tbaa !18
  %i.dsd = add nuw nsw i64 %.010.i.i53.i, 2       ; 2 uses
  %i.dse = getelementptr inbounds nuw i8, ptr %i.dqx, i64 %i.dsd
  %i.dsf = load i8, ptr %i.dse, align 1, !tbaa !18
  %i.dsg = add i8 %i.dsf, 1
  %i.dsh = getelementptr inbounds nuw i8, ptr %i.dqt, i64 %i.dsd
  store i8 %i.dsg, ptr %i.dsh, align 1, !tbaa !18
  %i.dsi = add nuw nsw i64 %.010.i.i53.i, 3       ; 2 uses
  %i.dsj = getelementptr inbounds nuw i8, ptr %i.dqx, i64 %i.dsi
  %i.dsk = load i8, ptr %i.dsj, align 1, !tbaa !18
  %i.dsl = add i8 %i.dsk, 1
  %i.dsm = getelementptr inbounds nuw i8, ptr %i.dqt, i64 %i.dsi
  store i8 %i.dsl, ptr %i.dsm, align 1, !tbaa !18
  %i.dsn = add nuw nsw i64 %.010.i.i53.i, 4       ; 2 uses
  %exitcond.not.i.i54.i.3 = icmp eq i64 %i.dsn, %i.dqz
  br i1 %exitcond.not.i.i54.i.3, label %_ZN6duckdb12_GLOBAL__N_122SortKeyVarcharOperator6EncodeEPhNS_8string_tE.exit.i55.i, label %.lr.ph.i.i52.i, !llvm.loop !873

_ZN6duckdb12_GLOBAL__N_122SortKeyVarcharOperator6EncodeEPhNS_8string_tE.exit.i55.i: ; preds = %.lr.ph.i.i52.i.prol.loopexit, %.lr.ph.i.i52.i, %middle.block1939, %vec.epilog.middle.block1953, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i48.i
  %i.dso = getelementptr inbounds nuw i8, ptr %i.dqt, i64 %i.dqz
  store i8 0, ptr %i.dso, align 1, !tbaa !18
  %i.dsp = add nuw nsw i64 %i.dqz, 1              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %i.dsq = load i8, ptr %i.dpp, align 8, !tbaa !108, !range !187, !noundef !188
  %i.dsr = trunc nuw i8 %i.dsq to i1
  %.pre.i56.i = load i64, ptr %i.dpy, align 8, !tbaa !14 ; 3 uses
  %i.dss = add i64 %.pre.i56.i, %i.dsp            ; 2 uses
  %i.dst = icmp ult i64 %.pre.i56.i, %i.dss
  %or.cond.i57.i = select i1 %i.dsr, i1 %i.dst, i1 false
  br i1 %or.cond.i57.i, label %.lr.ph.i61.i, label %.loopexit.i58.i

.lr.ph.i61.i:                                     ; preds = %_ZN6duckdb12_GLOBAL__N_122SortKeyVarcharOperator6EncodeEPhNS_8string_tE.exit.i55.i, %.lr.ph.i61.i
  %.039.i.i = phi i64 [ %i.dsx, %.lr.ph.i61.i ], [ %.pre.i56.i, %_ZN6duckdb12_GLOBAL__N_122SortKeyVarcharOperator6EncodeEPhNS_8string_tE.exit.i55.i ] ; 2 uses
  %i.dsu = getelementptr inbounds nuw i8, ptr %i.dqb, i64 %.039.i.i ; 2 uses
  %i.dsv = load i8, ptr %i.dsu, align 1, !tbaa !18
  %i.dsw = xor i8 %i.dsv, -1
  store i8 %i.dsw, ptr %i.dsu, align 1, !tbaa !18
  %i.dsx = add nuw i64 %.039.i.i, 1               ; 2 uses
  %i.dsy = load i64, ptr %i.dpy, align 8, !tbaa !14
  %i.dsz = add i64 %i.dsy, %i.dsp                 ; 2 uses
  %i.dta = icmp ult i64 %i.dsx, %i.dsz
  br i1 %i.dta, label %.lr.ph.i61.i, label %.loopexit.i58.i, !llvm.loop !874

.loopexit.i58.i:                                  ; preds = %.lr.ph.i61.i, %_ZN6duckdb12_GLOBAL__N_122SortKeyVarcharOperator6EncodeEPhNS_8string_tE.exit.i55.i
  %.pre-phi.i59.i = phi i64 [ %i.dss, %_ZN6duckdb12_GLOBAL__N_122SortKeyVarcharOperator6EncodeEPhNS_8string_tE.exit.i55.i ], [ %i.dsz, %.lr.ph.i61.i ]
  store i64 %.pre-phi.i59.i, ptr %i.dpy, align 8, !tbaa !14
  br label %bb.mk

bb.mk:                                            ; preds = %.loopexit.i58.i, %bb.mj
  %i.dtb = add nuw i64 %.03440.i.i, 1             ; 2 uses
  %exitcond.not.i60.i = icmp eq i64 %i.dtb, %.sroa.21035.0.copyload
  br i1 %exitcond.not.i60.i, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit, label %bb.mh, !llvm.loop !875

bb.ml:                                            ; preds = %bb.lq
  br i1 %i.der, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit, label %bb.mm

bb.mm:                                            ; preds = %bb.ml
  %.sroa.41047.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.41047.0.copyload = load i8, ptr %.sroa.41047.0..sroa_idx, align 8, !tbaa !189
  %i.dtc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.dtd = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.dte = load ptr, ptr %i.dtd, align 8, !tbaa !159
  %.not.i.i832 = icmp eq ptr %i.dte, null
  %i.dtf = trunc nuw i8 %.sroa.41047.0.copyload to i1 ; 4 uses
  br i1 %.not.i.i832, label %bb.mn, label %bb.na

bb.mn:                                            ; preds = %bb.mm
  br i1 %i.dtf, label %bb.mu, label %bb.mo

bb.mo:                                            ; preds = %bb.mn
  %i.dtg = load ptr, ptr %i.dtc, align 8, !tbaa !699
  %i.dth = load ptr, ptr %i.dtg, align 8, !tbaa !158
  %.not90.i = icmp eq ptr %i.dth, null
  br i1 %.not90.i, label %bb.mp, label %bb.mu

bb.mp:                                            ; preds = %bb.mo
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_8string_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %i.dtc)
  %i.dti = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dtj = load ptr, ptr %i.dti, align 8, !tbaa !333
  %i.dtk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dtl = load ptr, ptr %i.dtk, align 8, !tbaa !737, !nonnull !188, !align !280
  %i.dtm = icmp ult i64 %.sroa.01034.0.copyload, %.sroa.21035.0.copyload
  br i1 %i.dtm, label %.lr.ph3.i.i855, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit

.lr.ph3.i.i855:                                   ; preds = %bb.mp
  %i.dtn = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dto = getelementptr inbounds nuw i8, ptr %0, i64 121
  %i.dtp = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.dtq = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.dtr = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.mq

bb.mq:                                            ; preds = %.loopexit.i.i865, %.lr.ph3.i.i855
  %.0282.i.i856 = phi i64 [ %.sroa.01034.0.copyload, %.lr.ph3.i.i855 ], [ %i.dvf, %.loopexit.i.i865 ] ; 4 uses
  %i.dts = load ptr, ptr %i.dtl, align 8, !tbaa !39
  %i.dtt = getelementptr inbounds nuw [8 x i8], ptr %i.dts, i64 %.0282.i.i856 ; 6 uses
  %i.dtu = load ptr, ptr %i.dtn, align 8, !tbaa !100
  %i.dtv = getelementptr inbounds nuw [8 x i8], ptr %i.dtu, i64 %.0282.i.i856
  %i.dtw = load ptr, ptr %i.dtv, align 8, !tbaa !88 ; 3 uses
  %i.dtx = load i8, ptr %i.dto, align 1, !tbaa !738
  %i.dty = load i64, ptr %i.dtt, align 8, !tbaa !14 ; 2 uses
  %i.dtz = add i64 %i.dty, 1
  store i64 %i.dtz, ptr %i.dtt, align 8, !tbaa !14
  %i.dua = getelementptr inbounds nuw i8, ptr %i.dtw, i64 %i.dty
  store i8 %i.dtx, ptr %i.dua, align 1, !tbaa !18
  %i.dub = load i64, ptr %i.dtt, align 8, !tbaa !14
  %i.duc = getelementptr inbounds nuw i8, ptr %i.dtw, i64 %i.dub ; 3 uses
  %i.dud = getelementptr inbounds nuw [16 x i8], ptr %i.dtj, i64 %.0282.i.i856 ; 2 uses
  %.sroa.0.0.copyload.i.i857 = load i64, ptr %i.dud, align 8 ; 3 uses
end_hunk_3
begin_hunk_4_@_ZNK6duckdb12_GLOBAL__N_115SortKeyBindData4CopyEv:bb.a
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #32, !noalias !984, !inline_history !305 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6duckdb12_GLOBAL__N_115SortKeyBindDataE, i64 16), ptr %i.a, align 8, !tbaa !152, !noalias !984
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false), !noalias !984
  %i.c = invoke fastcc noundef ptr @_ZNK6duckdb10unique_ptrINS_12_GLOBAL__N_115SortKeyBindDataESt14default_deleteIS2_ELb1EEptEv(ptr nonnull %i.a)
          to label %bb.b unwind label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115SortKeyBindDataESt14default_deleteIS2_EED2Ev.exit4 ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6duckdb14OrderModifiersESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115SortKeyBindDataESt14default_deleteIS2_EED2Ev.exit unwind label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115SortKeyBindDataESt14default_deleteIS2_EED2Ev.exit4 ; 0 uses

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115SortKeyBindDataESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.b
  store ptr %i.a, ptr %0, align 8, !tbaa !323
  ret void

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115SortKeyBindDataESt14default_deleteIS2_EED2Ev.exit4: ; preds = %bb.b, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !152
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(32) %i.a) #29, !inline_history !326
  resume { ptr, i32 } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @_ZNK6duckdb12_GLOBAL__N_115SortKeyBindData6EqualsERKNS_12FunctionDataE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #26 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24   ; 3 uses
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !20   ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !24
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !20   ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = icmp eq i64 %i.h, %i.n
  br i1 %i.o, label %bb.b, label %_ZSteqIN6duckdb14OrderModifiersESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit

bb.b:                                             ; preds = %bb.a
  %.not9.i.i.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not9.i.i.i.i.i, label %_ZSteqIN6duckdb14OrderModifiersESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i ], [ %i.k, %bb.b ] ; 3 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i ], [ %i.e, %bb.b ] ; 3 uses
  %i.p = load i8, ptr %.0810.i.i.i.i.i, align 1, !tbaa !987
  %i.q = load i8, ptr %.011.i.i.i.i.i, align 1, !tbaa !987
  %i.r = icmp eq i8 %i.p, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 1
  %i.t = load i8, ptr %i.s, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 1
  %i.v = load i8, ptr %i.u, align 1
  %i.w = icmp eq i8 %i.t, %i.v
  %i.x = select i1 %i.r, i1 %i.w, i1 false        ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 2 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 2
  %.not.i.i.i.i.i = icmp ne ptr %i.y, %i.d
  %or.cond.not = select i1 %i.x, i1 %.not.i.i.i.i.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i.i.i.i.i, label %_ZSteqIN6duckdb14OrderModifiersESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit, !llvm.loop !988

_ZSteqIN6duckdb14OrderModifiersESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.a, %bb.b
  %i.aa = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.x, %.lr.ph.i.i.i.i.i ]
  ret i1 %i.aa
}

declare noundef zeroext i1 @_ZNK6duckdb12FunctionData21SupportStatementCacheEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6duckdb12FunctionDataD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6duckdb14OrderModifiersESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !20     ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.i = load ptr, ptr %0, align 8, !tbaa !20     ; 7 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775806
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIN6duckdb14OrderModifiersESaIS1_EE11_M_allocateEm.exit.i, !prof !155

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #31
  unreachable

_ZNSt12_Vector_baseIN6duckdb14OrderModifiersESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #32 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb14OrderModifiersESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseIN6duckdb14OrderModifiersESaIS1_EE11_M_allocateEm.exit.i
  %i.p = add i64 %i.d, -2
  %i.q = sub i64 %i.p, %i.e
  %i.r = and i64 %i.q, -2
  %i.s = add i64 %i.r, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr align 1 %i.c, i64 %i.s, i1 false)
  br label %_ZNSt6vectorIN6duckdb14OrderModifiersESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit

_ZNSt6vectorIN6duckdb14OrderModifiersESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit: ; preds = %_ZNSt12_Vector_baseIN6duckdb14OrderModifiersESaIS1_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN6duckdb14OrderModifiersESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb14OrderModifiersESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #30
  br label %_ZNSt12_Vector_baseIN6duckdb14OrderModifiersESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6duckdb14OrderModifiersESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN6duckdb14OrderModifiersESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, %bb.e
  store ptr %i.o, ptr %0, align 8, !tbaa !20
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.t, ptr %i.g, align 8, !tbaa !23
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb14OrderModifiersESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.f:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !24
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.k                       ; 4 uses
  %.not24 = icmp ult i64 %i.x, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = icmp sgt i64 %i.f, 2
  br i1 %i.y, label %bb.h, label %bb.i, !prof !147

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb14OrderModifiersESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.i:                                             ; preds = %bb.g
  %i.z = icmp eq i64 %i.f, 2
  br i1 %i.z, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb14OrderModifiersESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.j:                                             ; preds = %bb.i
  %i.aa = load i16, ptr %i.c, align 1
  store i16 %i.aa, ptr %i.i, align 1
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb14OrderModifiersESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.k:                                             ; preds = %bb.f
  %i.ab = icmp sgt i64 %i.x, 2
  br i1 %i.ab, label %bb.l, label %bb.m, !prof !147

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.x, i1 false)
  br label %_ZSt4copyIPN6duckdb14OrderModifiersES2_ET0_T_S4_S3_.exit

bb.m:                                             ; preds = %bb.k
  %i.ac = icmp eq i64 %i.x, 2
  br i1 %i.ac, label %bb.n, label %_ZSt4copyIPN6duckdb14OrderModifiersES2_ET0_T_S4_S3_.exit

bb.n:                                             ; preds = %bb.m
  %i.ad = load i16, ptr %i.c, align 1
  store i16 %i.ad, ptr %i.i, align 1
  br label %_ZSt4copyIPN6duckdb14OrderModifiersES2_ET0_T_S4_S3_.exit

_ZSt4copyIPN6duckdb14OrderModifiersES2_ET0_T_S4_S3_.exit: ; preds = %bb.l, %bb.m, %bb.n
  %i.ae = load ptr, ptr %1, align 8, !tbaa !20    ; 3 uses
  %i.af = load ptr, ptr %i.u, align 8, !tbaa !24  ; 6 uses
  %i.ag = load ptr, ptr %0, align 8, !tbaa !20
  %i.ah = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.ai = ptrtoint ptr %i.ag to i64               ; 3 uses
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj ; 6 uses
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !24  ; 3 uses
  %.not9.i.i.i.i = icmp eq ptr %i.ak, %i.al
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb14OrderModifiersESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %iter.check

iter.check:                                       ; preds = %_ZSt4copyIPN6duckdb14OrderModifiersES2_ET0_T_S4_S3_.exit
  %i.am = ptrtoaddr ptr %i.ae to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.ae to i64
  %i.ap = add i64 %i.ai, %i.an
  %i.aq = add i64 %i.ap, -2
  %i.ar = add i64 %i.ao, %i.ah
  %i.as = sub i64 %i.aq, %i.ar                    ; 3 uses
  %i.at = lshr i64 %i.as, 1
  %i.au = add nuw i64 %i.at, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.as, 6
  %i.av = sub i64 %i.ai, %i.am
  %diff.check = icmp ult i64 %i.av, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check32 = icmp ult i64 %i.as, 30
  br i1 %min.iters.check32, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.au, 12
  %n.vec = and i64 %i.au, -16                     ; 4 uses
  %i.aw = shl i64 %n.vec, 1                       ; 2 uses
  %i.ax = getelementptr i8, ptr %i.af, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.ak, i64 %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.az = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.af, i64 %i.az ; 2 uses
  %next.gep33 = getelementptr i8, ptr %i.ak, i64 %i.az ; 2 uses
  %i.ba = getelementptr i8, ptr %next.gep33, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep33, align 1
  %wide.load34 = load <8 x i16>, ptr %i.ba, align 1
  %i.bb = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load, ptr %next.gep, align 1
  store <8 x i16> %wide.load34, ptr %i.bb, align 1
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !989

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb14OrderModifiersESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !318

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec37 = and i64 %i.au, -4                    ; 3 uses
  %i.bd = shl i64 %n.vec37, 1                     ; 2 uses
  %i.be = getelementptr i8, ptr %i.af, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.ak, i64 %i.bd
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index38 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next42, %vec.epilog.vector.body ] ; 2 uses
  %i.bg = shl i64 %index38, 1                     ; 2 uses
  %next.gep39 = getelementptr i8, ptr %i.af, i64 %i.bg
  %next.gep40 = getelementptr i8, ptr %i.ak, i64 %i.bg
  %wide.load41 = load <4 x i16>, ptr %next.gep40, align 1
  store <4 x i16> %wide.load41, ptr %next.gep39, align 1
  %index.next42 = add nuw i64 %index38, 4         ; 2 uses
  %i.bh = icmp eq i64 %index.next42, %n.vec37
  br i1 %i.bh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !990

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n43 = icmp eq i64 %i.au, %n.vec37
  br i1 %cmp.n43, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb14OrderModifiersESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.011.i.i.i.i.ph = phi ptr [ %i.af, %iter.check ], [ %i.ax, %vec.epilog.iter.check ], [ %i.be, %vec.epilog.middle.block ]
  %.0810.i.i.i.i.ph = phi ptr [ %i.ak, %iter.check ], [ %i.ay, %vec.epilog.iter.check ], [ %i.bf, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i ], [ %.011.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i ], [ %.0810.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %i.bi = load i16, ptr %.0810.i.i.i.i, align 1
  store i16 %i.bi, ptr %.011.i.i.i.i, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 2 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 2
  %.not.i.i.i.i = icmp eq ptr %i.bj, %i.al
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb14OrderModifiersESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !991

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb14OrderModifiersESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZSt4copyIPN6duckdb14OrderModifiersES2_ET0_T_S4_S3_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN6duckdb14OrderModifiersESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.bl = load ptr, ptr %0, align 8, !tbaa !20
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.f
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !24
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb14OrderModifiersESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, %bb.a
  ret ptr %0
}

declare void @_ZN6duckdb15BinderExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb9Exception25ConstructMessageRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEES7_RKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.duckdb::ExceptionFormatValue", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @_ZN6duckdb20ExceptionFormatValue17CreateFormatValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES0_RKT_(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::ExceptionFormatValue") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !439  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !710
  %.not.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %4, i64 32, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !11
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !16   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 4 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !19   ; 3 uses
  %i.m = icmp ult i64 %i.l, 16
  call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  store ptr %i.h, ptr %i.e, align 8, !tbaa !16
  %i.o = load i64, ptr %i.i, align 8, !tbaa !18
  store i64 %i.o, ptr %i.g, align 8, !tbaa !18
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !19
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.p = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.l, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.p, ptr %i.r, align 8, !tbaa !19
  store ptr %i.i, ptr %i.f, align 8, !tbaa !16
  store i64 0, ptr %i.q, align 8, !tbaa !19
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !439
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  store ptr %i.t, ptr %i.a, align 8, !tbaa !439
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

bb.d:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit unwind label %bb.e

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.d
  %.phi.trans.insert8 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.pre9 = load ptr, ptr %.phi.trans.insert8, align 8, !tbaa !16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.v = icmp eq ptr %.pre9, %i.u
  br i1 %i.v, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit
  call void @_ZdlPv(ptr noundef %.pre9) #30
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

_ZN6duckdb20ExceptionFormatValueD2Ev.exit:        ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @_ZN6duckdb9Exception25ConstructMessageRecursiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorINS_20ExceptionFormatValueESaISA_EE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !16   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.y) #30
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit7

_ZN6duckdb20ExceptionFormatValueD2Ev.exit7:       ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  resume { ptr, i32 } %i.w
}

declare void @_ZN6duckdb20ExceptionFormatValue17CreateFormatValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES0_RKT_(ptr dead_on_unwind writable sret(%"struct.duckdb::ExceptionFormatValue") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare void @_ZN6duckdb10StringUtil7ReplaceENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS6_S8_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare void @_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6duckdb10StringUtil10StartsWithENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6duckdb10StringUtil8EndsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6duckdb18BaseScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(236)) unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb14ScalarFunctionD0Ev(ptr noundef nonnull align 8 dereferenceable(360) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb14ScalarFunctionE, i64 16), ptr %0, align 8, !tbaa !152
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !148  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
end_hunk_4
begin_hunk_5_@"_ZN6duckdb27UnaryLambdaWrapperWithNulls9OperationIZNS_14StrfTimeFormat17ConvertDateVectorERNS_6VectorES4_mE3$_0NS_6date_tENS_8string_tEEET1_T0_RNS_12ValidityMaskEmPv":bb.a
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.h
  call void @_ZdlPv(ptr noundef %i.bh) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %"_ZZN6duckdb14StrfTimeFormat17ConvertDateVectorERNS_6VectorES2_mENK3$_0clENS_6date_tERNS_12ValidityMaskEm.exit"

bb.i:                                             ; preds = %bb.g
  %i.bk = landingpad { ptr, i32 }
          cleanup
  %i.bl = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i: ; preds = %bb.i
  call void @_ZdlPv(ptr noundef %i.bl) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  resume { ptr, i32 } %i.bk

"_ZZN6duckdb14StrfTimeFormat17ConvertDateVectorERNS_6VectorES2_mENK3$_0clENS_6date_tERNS_12ValidityMaskEm.exit": ; preds = %bb.e, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %.fca.1.load.i = phi ptr [ %i.ba, %bb.f ], [ %.fca.1.load.pre.i, %bb.e ], [ %i.bg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  %.fca.0.load.i = load i64, ptr %2, align 8
  %.fca.0.insert.i = insertvalue { i64, ptr } poison, i64 %.fca.0.load.i, 0
  %.fca.1.insert.i = insertvalue { i64, ptr } %.fca.0.insert.i, ptr %.fca.1.load.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret { i64, ptr } %.fca.1.insert.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_6date_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.2", align 1  ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !67
  %i.e = icmp eq i8 %i.d, 7
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.66, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i8 7, ptr %i.a, align 1, !tbaa !599
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  %i.g = load i8, ptr %i.c, align 1, !tbaa !67
  store i8 %i.g, ptr %i.b, align 1, !tbaa !599
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.j = load ptr, ptr %1, align 8, !tbaa !16     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.j) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn10 = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.f) #29
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn10, %bb.f ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn9

bb.i:                                             ; preds = %bb.d
  unreachable
}

declare void @_ZN6duckdb4Date8ToStringB5cxx11ENS_6date_tE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i32) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb21TemplatedValidityMaskImE4CopyERKS1_m(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %i.a, align 8, !tbaa !160
  %i.b = load ptr, ptr %1, align 8, !tbaa !159    ; 8 uses
  %i.c = ptrtoaddr ptr %i.b to i64
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.d, align 8, !tbaa !1069
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !148  ; 8 uses
  store ptr null, ptr %i.e, align 8, !tbaa !148
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.g, align 8, !tbaa !149
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !151
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !152
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #29, !inline_history !1009
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !152
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #29, !inline_history !1009
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = add nsw i32 %i.j, -1
  store i32 %i.s, ptr %i.g, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.t = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.j, %bb.f ], [ %i.t, %bb.g ]
  %i.u = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.u, label %bb.h, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit, !prof !155

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #29
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit

bb.i:                                             ; preds = %bb.a
  %i.v = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #32, !noalias !1070 ; 11 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 7 uses
  store i32 1, ptr %i.w, align 8, !tbaa !149, !noalias !1070
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 12 ; 2 uses
  store i32 1, ptr %i.x, align 4, !tbaa !151, !noalias !1070
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.v, align 8, !tbaa !152, !noalias !1070
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 3 uses
  store ptr null, ptr %i.y, align 8, !tbaa !1018, !noalias !1070
  %i.z = add i64 %2, 63                           ; 2 uses
  %i.aa = lshr i64 %i.z, 6                        ; 7 uses
  %i.ab = shl nuw nsw i64 %i.aa, 3
  %i.ac = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ab) #32
          to label %.noexc.i.i.i.i.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i, !noalias !1070 ; 8 uses

.noexc.i.i.i.i.i:                                 ; preds = %bb.i
  store ptr %i.ac, ptr %i.y, align 8, !tbaa !1011, !noalias !1070
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.noexc.i.i.i.i.i
  %i.ad = ptrtoaddr ptr %i.ac to i64
  %min.iters.check = icmp ult i64 %i.z, 384
  %i.ae = sub i64 %i.ad, %i.c
  %diff.check = icmp ult i64 %i.ae, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.preheader25, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.aa, 288230376151711740      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %wide.load = load <2 x i64>, ptr %i.af, align 8, !tbaa !14, !noalias !1070
  %wide.load24 = load <2 x i64>, ptr %i.ag, align 8, !tbaa !14, !noalias !1070
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %index ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store <2 x i64> %wide.load, ptr %i.ah, align 8, !tbaa !14, !noalias !1070
  store <2 x i64> %wide.load24, ptr %i.ai, align 8, !tbaa !14, !noalias !1070
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !1075

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader25

.lr.ph.i.i.i.i.i.i.i.i.preheader25:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.014.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.aa, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader25, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %.014.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.an, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %.014.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader25 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader25 ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.014.i.i.i.i.i.i.i.i.prol
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !14, !noalias !1070
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.014.i.i.i.i.i.i.i.i.prol
  store i64 %i.al, ptr %i.am, align 8, !tbaa !14, !noalias !1070
  %i.an = add nuw nsw i64 %.014.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !1076

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.preheader25
  %.014.i.i.i.i.i.i.i.i.unr = phi i64 [ %.014.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader25 ], [ %i.an, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.ao = sub nsw i64 %.014.i.i.i.i.i.i.i.i.ph, %i.aa
  %i.ap = icmp ugt i64 %i.ao, -4
  br i1 %i.ap, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %.014.i.i.i.i.i.i.i.i = phi i64 [ %i.bf, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.014.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.014.i.i.i.i.i.i.i.i
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !14, !noalias !1070
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.014.i.i.i.i.i.i.i.i
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !14, !noalias !1070
  %i.at = add nuw nsw i64 %.014.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.at
  %i.av = load i64, ptr %i.au, align 8, !tbaa !14, !noalias !1070
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.at
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !14, !noalias !1070
  %i.ax = add nuw nsw i64 %.014.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ax
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !14, !noalias !1070
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ax
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !14, !noalias !1070
  %i.bb = add nuw nsw i64 %.014.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bb
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !14, !noalias !1070
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.bb
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !14, !noalias !1070
  %i.bf = add nuw nsw i64 %.014.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.bf, %i.aa
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.3, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1077

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i: ; preds = %bb.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.v) #30, !noalias !1070
  resume { ptr, i32 } %i.bg

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %.noexc.i.i.i.i.i
  %i.bh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18, !noalias !1078
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bh, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.loopexit.i
  store i32 2, ptr %i.w, align 8, !tbaa !3, !noalias !1078
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i

bb.k:                                             ; preds = %.loopexit.i
  %i.bi = atomicrmw volatile add ptr %i.w, i32 1 acq_rel, align 4, !noalias !1078 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i: ; preds = %bb.k, %bb.j
  %i.bj = load atomic i64, ptr %i.w acquire, align 8, !noalias !1078 ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 4294967297
  %i.bl = trunc i64 %i.bj to i32                  ; 2 uses
  br i1 %i.bk, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i
  store i32 0, ptr %i.w, align 8, !tbaa !149, !noalias !1078
  store i32 0, ptr %i.x, align 4, !tbaa !151, !noalias !1078
  %i.bm = load ptr, ptr %i.v, align 8, !tbaa !152, !noalias !1078
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !noalias !1078
  tail call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #29, !noalias !1078, !inline_history !1079
  %i.bp = load ptr, ptr %i.v, align 8, !tbaa !152, !noalias !1078
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !1078
  tail call void %i.br(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #29, !noalias !1078, !inline_history !1079
  br label %_ZN6duckdb15make_shared_ptrINS_21TemplatedValidityDataImEEJRKPmRmEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit

bb.m:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i
  %i.bs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18, !noalias !1078
  %.not.i.i.i.i14 = icmp eq i8 %i.bs, 0
  br i1 %.not.i.i.i.i14, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bt = add nsw i32 %i.bl, -1
  store i32 %i.bt, ptr %i.w, align 8, !tbaa !3, !noalias !1078
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i15

bb.o:                                             ; preds = %bb.m
  %i.bu = atomicrmw volatile add ptr %i.w, i32 -1 acq_rel, align 4, !noalias !1078
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i15

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i15: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i16 = phi i32 [ %i.bl, %bb.n ], [ %i.bu, %bb.o ]
  %i.bv = icmp eq i32 %.0.i.i.i.i.i16, 1
  br i1 %i.bv, label %bb.p, label %_ZN6duckdb15make_shared_ptrINS_21TemplatedValidityDataImEEJRKPmRmEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit, !prof !155

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i15
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #29, !noalias !1078
  br label %_ZN6duckdb15make_shared_ptrINS_21TemplatedValidityDataImEEJRKPmRmEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit

_ZN6duckdb15make_shared_ptrINS_21TemplatedValidityDataImEEJRKPmRmEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit: ; preds = %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i15, %bb.p
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.y, ptr %i.bw, align 8, !tbaa !1069
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !148 ; 8 uses
  store ptr %i.v, ptr %i.bx, align 8, !tbaa !148
  %.not.i.i.i.i4 = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i.i4, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit13, label %bb.q

bb.q:                                             ; preds = %_ZN6duckdb15make_shared_ptrINS_21TemplatedValidityDataImEEJRKPmRmEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 4 uses
  %i.ca = load atomic i64, ptr %i.bz acquire, align 8 ; 2 uses
  %i.cb = icmp eq i64 %i.ca, 4294967297
  %i.cc = trunc i64 %i.ca to i32                  ; 2 uses
  br i1 %i.cb, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.bz, align 8, !tbaa !149
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  store i32 0, ptr %i.cd, align 4, !tbaa !151
  %i.ce = load ptr, ptr %i.by, align 8, !tbaa !152
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  tail call void %i.cg(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #29, !inline_history !1009
  %i.ch = load ptr, ptr %i.by, align 8, !tbaa !152
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8
  tail call void %i.cj(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #29, !inline_history !1009
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit13

bb.s:                                             ; preds = %bb.q
  %i.ck = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i.i.i5 = icmp eq i8 %i.ck, 0
  br i1 %.not.i.i.i.i.i5, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cl = add nsw i32 %i.cc, -1
  store i32 %i.cl, ptr %i.bz, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6

bb.u:                                             ; preds = %bb.s
  %i.cm = atomicrmw volatile add ptr %i.bz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i7 = phi i32 [ %i.cc, %bb.t ], [ %i.cm, %bb.u ]
  %i.cn = icmp eq i32 %.0.i.i.i.i.i.i7, 1
  br i1 %i.cn, label %bb.v, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit13, !prof !155

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #29
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit13

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit13: ; preds = %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6, %bb.r, %_ZN6duckdb15make_shared_ptrINS_21TemplatedValidityDataImEEJRKPmRmEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit
  %i.co = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bw)
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !1011
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit13
  %storemerge = phi ptr [ %i.cp, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit13 ], [ null, %bb.h ], [ null, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i ], [ null, %bb.d ], [ null, %bb.b ]
  store ptr %storemerge, ptr %0, align 8, !tbaa !159
  ret void
}

; Function Attrs: mustprogress uwtable
end_hunk_5
