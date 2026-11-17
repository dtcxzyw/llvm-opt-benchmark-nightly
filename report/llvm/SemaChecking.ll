Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaChecking?download=true
inline.NumInlined: 16706
inline.NumDeleted: 6578
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZN5clang4Sema9checkCallEPNS_9NamedDeclEPKNS_17FunctionProtoTypeEPKNS_4ExprEN4llvm8ArrayRefIS8_EEbNS_14SourceLocationENS_11SourceRangeENS_16VariadicCallTypeE:bb.a
  br i1 %i.lz, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.ma = lshr i64 %i.ly, 1
  %i.mb = lshr i64 %i.ly, 58
  %i.mc = shl nsw i64 -1, %i.mb
  %i.md = xor i64 %i.mc, -1
  %i.me = shl nuw i64 1, %indvars.iv.i
  %i.mf = or i64 %i.ma, %i.me
  %i.mg = and i64 %i.mf, %i.md
  %i.mh = shl nuw i64 %i.mg, 1
  %i.mi = and i64 %i.ly, -288230376151711743
  %i.mj = or i64 %i.mh, %i.mi
  store i64 %i.mj, ptr %12, align 8, !tbaa !1436
  br label %_ZN4llvm14SmallBitVector3setEj.exit116.i

bb.bi:                                            ; preds = %bb.bg
  %i.mk = inttoptr i64 %i.ly to ptr
  %i.ml = and i64 %indvars.iv.i, 63
  %i.mm = shl nuw i64 1, %i.ml
  %i.mn = lshr i64 %indvars.iv.i, 6
  %i.mo = and i64 %i.mn, 67108863
  %i.mp = load ptr, ptr %i.mk, align 8, !tbaa !1152
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %i.mp, i64 %i.mo ; 2 uses
  %i.mr = load i64, ptr %i.mq, align 8, !tbaa !1130
  %i.ms = or i64 %i.mr, %i.mm
  store i64 %i.ms, ptr %i.mq, align 8, !tbaa !1130
  br label %_ZN4llvm14SmallBitVector3setEj.exit116.i

_ZN4llvm14SmallBitVector3setEj.exit116.i:         ; preds = %bb.bi, %bb.bh, %_ZNK5clang4Decl7hasAttrINS_11NonNullAttrEEEbv.exit.thread169.i
  %i.mt = getelementptr inbounds nuw i8, ptr %.083210.i, i64 8 ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %.not103.i = icmp eq ptr %i.mt, %i.kv
  br i1 %.not103.i, label %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.thread.i, label %.lr.ph211.i, !llvm.loop !2131

.critedge.thread.i:                               ; preds = %.critedge.i, %bb.ai
  br i1 %i.gq, label %bb.bj, label %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.thread181.i

bb.bj:                                            ; preds = %.critedge.thread.i
  %i.mu = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.mv = load i32, ptr %i.mu, align 4
  %i.mw = and i32 %i.mv, 127
  %i.mx = add nsw i32 %i.mw, -54
  %i.my = icmp ult i32 %i.mx, -27
  %.not97.i = or i1 %.not201, %i.my
  br i1 %.not97.i, label %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.thread.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.mz = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i118.i = load i64, ptr %i.mz, align 8, !tbaa !1129 ; 3 uses
  %i.na = and i64 %.sroa.0.0.copyload.i118.i, -16
  %i.nb = inttoptr i64 %i.na to ptr               ; 3 uses
  %i.nc = load ptr, ptr %i.nb, align 16, !tbaa !1324 ; 4 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 16
  %i.ne = load i8, ptr %i.nd, align 16
  %i.nf = and i8 %i.ne, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i.i = icmp eq i8 %i.nf, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i.i, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nc, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.ng, align 8, !tbaa !1129
  %i.nh = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, -16
  %i.ni = inttoptr i64 %i.nh to ptr
  %i.nj = load ptr, ptr %i.ni, align 16, !tbaa !1324
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 16
  %i.nl = load i8, ptr %i.nk, align 16
  %i.nm = and i8 %i.nl, -2
  %spec.select.i.i.i.i.i.i.i.i5.i.i.i = icmp eq i8 %i.nm, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i5.i.i.i, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i.i, label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit.i

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i.i: ; preds = %bb.bl
  %i.nn = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.nc) #31 ; 2 uses
  %.not.i119.i = icmp eq ptr %i.nn, null
  br i1 %.not.i119.i, label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit.i, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i.i

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i.i: ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i.i, %bb.bk
  %.1.i8.i.i = phi ptr [ %i.nn, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i.i ], [ %i.nc, %bb.bk ] ; 3 uses
  %i.no = getelementptr inbounds nuw i8, ptr %.1.i8.i.i, i64 16
  %i.np = load i24, ptr %i.no, align 16
  %i.nq = and i24 %i.np, 1048576
  %.not4.i.i.i = icmp eq i24 %i.nq, 0
  br i1 %.not4.i.i.i, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i.i, label %.lr.ph.i.i120.i

.lr.ph.i.i120.i:                                  ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i.i
  %.05.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i.i ], [ %.1.i8.i.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i.i ]
  %i.nr = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.nr, align 8
  %i.ns = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -16
  %i.nt = inttoptr i64 %i.ns to ptr
  %i.nu = load ptr, ptr %i.nt, align 16, !tbaa !1324 ; 3 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 16
  %i.nw = load i8, ptr %i.nv, align 16
  %i.nx = and i8 %i.nw, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i.i.i = icmp eq i8 %i.nx, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i.i.i, label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i.i, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph.i.i120.i
  %i.ny = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.nu) #31
  br label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i.i

_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i.i: ; preds = %bb.bm, %.lr.ph.i.i120.i
  %.1.i.i.i.i = phi ptr [ %i.ny, %bb.bm ], [ %i.nu, %.lr.ph.i.i120.i ] ; 3 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 16
  %i.oa = load i24, ptr %i.nz, align 16
  %i.ob = and i24 %i.oa, 1048576
  %.not.i.i121.i = icmp eq i24 %i.ob, 0
  br i1 %.not.i.i121.i, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i.i, label %.lr.ph.i.i120.i, !llvm.loop !11

_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i.i: ; preds = %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i.i
  %.0.lcssa.i.i.i = phi ptr [ %.1.i8.i.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i.i ], [ %.1.i.i.i.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i.i ]
  %i.oc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32
  %.sroa.0.0.in.i.sroa.speculate.load._ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i.i = load i64, ptr %i.oc, align 8, !tbaa !1129 ; 2 uses
  %.pre242.i.a = and i64 %.sroa.0.0.in.i.sroa.speculate.load._ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i.i, -16
  %.pre243.i = inttoptr i64 %.pre242.i.a to ptr
  br label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit.i

_ZNK5clang8QualType19getNonReferenceTypeEv.exit.i: ; preds = %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i.i, %bb.bl
  %.pre-phi244.i = phi ptr [ %i.nb, %bb.bl ], [ %i.nb, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i.i ], [ %.pre243.i, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i.i ] ; 2 uses
  %.sroa.0.0.in.i.sroa.speculated.i = phi i64 [ %.sroa.0.0.copyload.i118.i, %bb.bl ], [ %.sroa.0.0.copyload.i118.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i.i ], [ %.sroa.0.0.in.i.sroa.speculate.load._ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i.i, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i.i ]
  %i.od = load ptr, ptr %.pre-phi244.i, align 8, !tbaa !1324 ; 5 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 16
  %i.of = load i8, ptr %i.oe, align 16
  %.not.i122.i = icmp eq i8 %i.of, 40
  br i1 %.not.i122.i, label %.sink.split.i, label %bb.bn

bb.bn:                                            ; preds = %_ZNK5clang8QualType19getNonReferenceTypeEv.exit.i
  %i.og = getelementptr inbounds nuw i8, ptr %i.od, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.og, align 8, !tbaa !1129
  %i.oh = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -16
  %i.oi = inttoptr i64 %i.oh to ptr
  %i.oj = load ptr, ptr %i.oi, align 16, !tbaa !1324
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 16
  %i.ol = load i8, ptr %i.ok, align 16
  %i.om = icmp eq i8 %i.ol, 40
  br i1 %i.om, label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.i, label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread.i

_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.i: ; preds = %bb.bn
  %i.on = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.od) #31 ; 2 uses
  %.not98.i = icmp eq ptr %i.on, null
  br i1 %.not98.i, label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit._ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread_crit_edge.i, label %.sink.split.i

_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit._ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread_crit_edge.i: ; preds = %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.i
  %.pre237.i = load ptr, ptr %.pre-phi244.i, align 8, !tbaa !1324
  br label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread.i

_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread.i: ; preds = %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit._ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread_crit_edge.i, %bb.bn
  %i.oo = phi ptr [ %.pre237.i, %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit._ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread_crit_edge.i ], [ %i.od, %bb.bn ]
  %i.op = call noundef ptr @_ZNK5clang4Type5getAsINS_16BlockPointerTypeEEEPKT_v(ptr noundef nonnull align 16 dereferenceable(24) %i.oo) ; 2 uses
  %.not99.i = icmp eq ptr %i.op, null
  br i1 %.not99.i, label %bb.bo, label %.sink.split.i

.sink.split.i:                                    ; preds = %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread.i, %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.i, %_ZNK5clang8QualType19getNonReferenceTypeEv.exit.i
  %.sink276.i = phi ptr [ %i.od, %_ZNK5clang8QualType19getNonReferenceTypeEv.exit.i ], [ %i.on, %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.i ], [ %i.op, %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread.i ]
  %i.oq = getelementptr inbounds nuw i8, ptr %.sink276.i, i64 32
  %.sroa.0.0.copyload.i125.i = load i64, ptr %i.oq, align 16, !tbaa !1129
  br label %bb.bo

bb.bo:                                            ; preds = %.sink.split.i, %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread.i
  %.sroa.0141.0.i = phi i64 [ %.sroa.0.0.in.i.sroa.speculated.i, %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread.i ], [ %.sroa.0.0.copyload.i125.i, %.sink.split.i ]
  %i.or = and i64 %.sroa.0141.0.i, -16
  %i.os = inttoptr i64 %i.or to ptr
  %i.ot = load ptr, ptr %i.os, align 16, !tbaa !1324 ; 4 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 16
  %i.ov = load i8, ptr %i.ou, align 16
  %.not.i127.i = icmp eq i8 %i.ov, 24
  br i1 %.not.i127.i, label %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.thread181.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ot, i64 8
  %.sroa.0.0.copyload.i.i.i.i128.i = load i64, ptr %i.ow, align 8, !tbaa !1129
  %i.ox = and i64 %.sroa.0.0.copyload.i.i.i.i128.i, -16
  %i.oy = inttoptr i64 %i.ox to ptr
  %i.oz = load ptr, ptr %i.oy, align 16, !tbaa !1324
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 16
  %i.pb = load i8, ptr %i.pa, align 16
  %i.pc = icmp eq i8 %i.pb, 24
  br i1 %i.pc, label %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.i, label %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.thread.i

_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.i: ; preds = %bb.bp
  %i.pd = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.ot) #31 ; 2 uses
  %.not100.i = icmp eq ptr %i.pd, null
  br i1 %.not100.i, label %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.thread.i, label %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.thread181.i

_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.thread181.i: ; preds = %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.i, %bb.bo, %.critedge.thread.i
  %.1184.i = phi ptr [ %i.pd, %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.i ], [ %i.ot, %bb.bo ], [ %2, %.critedge.thread.i ] ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %.1184.i, i64 48 ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %.1184.i, i64 16
  %i.pg = load i64, ptr %i.pf, align 16
  %i.ph = lshr i64 %i.pg, 45
  %.idx221.i = and i64 %i.ph, 524280              ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pe, i64 %.idx221.i
  %.not101212.i = icmp samesign eq i64 %.idx221.i, 0
  br i1 %.not101212.i, label %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.thread.i, label %.lr.ph215.i

.lr.ph215.i:                                      ; preds = %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.thread181.i
  %i.pj = trunc i64 %5 to i32
  br label %bb.bq

bb.bq:                                            ; preds = %_ZN4llvm14SmallBitVector3setEj.exit133.i, %.lr.ph215.i
  %.080214.i = phi ptr [ %i.pe, %.lr.ph215.i ], [ %i.qo, %_ZN4llvm14SmallBitVector3setEj.exit133.i ] ; 2 uses
  %.081213.i = phi i32 [ 0, %.lr.ph215.i ], [ %38, %_ZN4llvm14SmallBitVector3setEj.exit133.i ] ; 4 uses
  %.sroa.010.0.copyload.i = load i64, ptr %.080214.i, align 8, !tbaa !1129
  %i.pk = and i64 %.sroa.010.0.copyload.i, -16
  %i.pl = inttoptr i64 %i.pk to ptr
  %i.pm = load ptr, ptr %i.pl, align 16, !tbaa !1324
  %i.pn = call i8 @_ZNK5clang4Type14getNullabilityEv(ptr noundef nonnull align 16 dereferenceable(24) %i.pm) #31
  %i.po = icmp eq i8 %i.pn, 1
  br i1 %i.po, label %bb.br, label %_ZN4llvm14SmallBitVector3setEj.exit133.i

bb.br:                                            ; preds = %bb.bq
  %i.pp = load i64, ptr %12, align 8, !tbaa !1436 ; 5 uses
  %i.pq = trunc i64 %i.pp to i1
  br i1 %i.pq, label %.split185.i, label %_ZNK4llvm14SmallBitVector5emptyEv.exit132.i

.split185.i:                                      ; preds = %bb.br
  %i.pr = icmp ult i64 %i.pp, 288230376151711744
  br i1 %i.pr, label %bb.bs, label %bb.bt

_ZNK4llvm14SmallBitVector5emptyEv.exit132.i:      ; preds = %bb.br
  %i.ps = inttoptr i64 %i.pp to ptr
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 64
  %i.pu = load i32, ptr %i.pt, align 8, !tbaa !1435
  %i.pv = icmp eq i32 %i.pu, 0
  br i1 %i.pv, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %_ZNK4llvm14SmallBitVector5emptyEv.exit132.i, %.split185.i
  call void @_ZN4llvm14SmallBitVector6resizeEjb(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef %i.pj, i1 noundef zeroext false)
  %.pre238.i = load i64, ptr %12, align 8, !tbaa !1436
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %_ZNK4llvm14SmallBitVector5emptyEv.exit132.i, %.split185.i
  %i.pw = phi i64 [ %i.pp, %.split185.i ], [ %.pre238.i, %bb.bs ], [ %i.pp, %_ZNK4llvm14SmallBitVector5emptyEv.exit132.i ] ; 5 uses
  %i.px = trunc i64 %i.pw to i1
  br i1 %i.px, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.py = lshr i64 %i.pw, 1
  %i.pz = lshr i64 %i.pw, 58
  %i.qa = shl nsw i64 -1, %i.pz
  %i.qb = xor i64 %i.qa, -1
  %33 = zext nneg i32 %.081213.i to i64
  %i.qc = shl nuw i64 1, %33
  %i.qd = or i64 %i.py, %i.qc
  %i.qe = and i64 %i.qd, %i.qb
  %i.qf = shl nuw i64 %i.qe, 1
  %i.qg = and i64 %i.pw, -288230376151711743
  %i.qh = or i64 %i.qf, %i.qg
  store i64 %i.qh, ptr %12, align 8, !tbaa !1436
  br label %_ZN4llvm14SmallBitVector3setEj.exit133.i

bb.bv:                                            ; preds = %bb.bt
  %i.qi = inttoptr i64 %i.pw to ptr
  %34 = and i32 %.081213.i, 63
  %35 = zext nneg i32 %34 to i64
  %i.qj = shl nuw i64 1, %35
  %36 = lshr i32 %.081213.i, 6
  %37 = zext nneg i32 %36 to i64
  %i.qk = load ptr, ptr %i.qi, align 8, !tbaa !1152
  %i.ql = getelementptr inbounds nuw [8 x i8], ptr %i.qk, i64 %37 ; 2 uses
  %i.qm = load i64, ptr %i.ql, align 8, !tbaa !1130
  %i.qn = or i64 %i.qm, %i.qj
  store i64 %i.qn, ptr %i.ql, align 8, !tbaa !1130
  br label %_ZN4llvm14SmallBitVector3setEj.exit133.i

_ZN4llvm14SmallBitVector3setEj.exit133.i:         ; preds = %bb.bv, %bb.bu, %bb.bq
  %38 = add i32 %.081213.i, 1
  %i.qo = getelementptr inbounds nuw i8, ptr %.080214.i, i64 8 ; 2 uses
  %.not101.i = icmp eq ptr %i.qo, %i.pi
  br i1 %.not101.i, label %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.thread.i, label %bb.bq

_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.thread.i: ; preds = %_ZN4llvm14SmallBitVector3setEj.exit116.i, %_ZN4llvm14SmallBitVector3setEj.exit133.i, %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.thread181.i, %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.i, %bb.bp, %bb.bj, %bb.bb
  %i.qp = load i64, ptr %12, align 8, !tbaa !1436 ; 5 uses
  %i.qq = trunc i64 %i.qp to i1
  br i1 %i.qq, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.thread.i
  %i.qr = lshr i64 %i.qp, 58
  %i.qs = trunc nuw nsw i64 %i.qr to i32
  br label %_ZNK4llvm14SmallBitVector4sizeEv.exit.i

bb.bx:                                            ; preds = %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.thread.i
  %i.qt = inttoptr i64 %i.qp to ptr
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 64
  %i.qv = load i32, ptr %i.qu, align 8, !tbaa !1435
  br label %_ZNK4llvm14SmallBitVector4sizeEv.exit.i

_ZNK4llvm14SmallBitVector4sizeEv.exit.i:          ; preds = %bb.bx, %bb.bw
  %i.qw = phi i32 [ %i.qs, %bb.bw ], [ %i.qv, %bb.bx ] ; 2 uses
  %.not104216.i = icmp eq i32 %i.qw, 0
  br i1 %.not104216.i, label %.loopexit.i, label %.lr.ph218.preheader.i

.lr.ph218.preheader.i:                            ; preds = %_ZNK4llvm14SmallBitVector4sizeEv.exit.i
  %i.qx = zext i32 %i.qw to i64
  br label %.lr.ph218.i

.lr.ph218.i:                                      ; preds = %bb.bz, %.lr.ph218.preheader.i
  %i.qy = phi i64 [ %i.qp, %.lr.ph218.preheader.i ], [ %i.rt, %bb.bz ] ; 6 uses
  %indvars.iv233.i.a = phi i64 [ 0, %.lr.ph218.preheader.i ], [ %indvars.iv.next234.i.a, %bb.bz ] ; 5 uses
  %i.qz = trunc i64 %i.qy to i1
  br i1 %i.qz, label %.split186.i, label %_ZNK4llvm14SmallBitVector9referencecvbEv.exit.i

.split186.i:                                      ; preds = %.lr.ph218.i
  %i.ra = lshr i64 %i.qy, 1
  %i.rb = lshr i64 %i.qy, 58
  %i.rc = shl nsw i64 -1, %i.rb
  %i.rd = xor i64 %i.rc, -1
  %i.re = and i64 %i.ra, %i.rd
  %i.rf = lshr i64 %i.re, %indvars.iv233.i.a
  %i.rg = trunc i64 %i.rf to i1
  br i1 %i.rg, label %bb.by, label %bb.bz

_ZNK4llvm14SmallBitVector9referencecvbEv.exit.i:  ; preds = %.lr.ph218.i
  %i.rh = inttoptr i64 %i.qy to ptr
  %i.ri = lshr i64 %indvars.iv233.i.a, 6
  %i.rj = and i64 %i.ri, 67108863
  %i.rk = load ptr, ptr %i.rh, align 8, !tbaa !1152
  %i.rl = getelementptr inbounds nuw [8 x i8], ptr %i.rk, i64 %i.rj
  %i.rm = and i64 %indvars.iv233.i.a, 63
  %i.rn = load i64, ptr %i.rl, align 8, !tbaa !1130
  %i.ro = shl nuw i64 1, %i.rm
  %i.rp = and i64 %i.rn, %i.ro
  %.not191.i = icmp eq i64 %i.rp, 0
  br i1 %.not191.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %_ZNK4llvm14SmallBitVector9referencecvbEv.exit.i, %.split186.i
  %i.rq = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv233.i.a
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !1154 ; 2 uses
  %i.rs = call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %i.rr) #32
  call fastcc void @_ZL20CheckNonNullArgumentRN5clang4SemaEPKNS_4ExprENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %i.rr, i32 %i.rs)
  %.pre239.i = load i64, ptr %12, align 8, !tbaa !1436
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %_ZNK4llvm14SmallBitVector9referencecvbEv.exit.i, %.split186.i
  %i.rt = phi i64 [ %i.qy, %.split186.i ], [ %i.qy, %_ZNK4llvm14SmallBitVector9referencecvbEv.exit.i ], [ %.pre239.i, %bb.by ] ; 2 uses
  %indvars.iv.next234.i.a = add nuw nsw i64 %indvars.iv233.i.a, 1 ; 2 uses
  %.not104.i = icmp eq i64 %indvars.iv.next234.i.a, %i.qx
  br i1 %.not104.i, label %.loopexit.i, label %.lr.ph218.i, !llvm.loop !2132

.loopexit.loopexit227.i:                          ; preds = %.loopexit193.i, %bb.aq
  %.pre241.i = load i64, ptr %12, align 8, !tbaa !1436
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.bz, %.loopexit.loopexit227.i, %_ZNK4llvm14SmallBitVector4sizeEv.exit.i
  %i.ru = phi i64 [ %.pre241.i, %.loopexit.loopexit227.i ], [ %i.qp, %_ZNK4llvm14SmallBitVector4sizeEv.exit.i ], [ %i.rt, %bb.bz ] ; 3 uses
  %i.rv = trunc i64 %i.ru to i1
  br i1 %i.rv, label %_ZN4llvm14SmallBitVectorD2Ev.exit.i, label %bb.ca

bb.ca:                                            ; preds = %.loopexit.i
  %i.rw = inttoptr i64 %i.ru to ptr               ; 3 uses
  %i.rx = icmp eq i64 %i.ru, 0
  br i1 %i.rx, label %_ZN4llvm14SmallBitVectorD2Ev.exit.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ry = load ptr, ptr %i.rw, align 8, !tbaa !1152 ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rw, i64 16
  %i.sa = icmp eq ptr %i.ry, %i.rz
  br i1 %i.sa, label %_ZN4llvm9BitVectorD2Ev.exit.i.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @free(ptr noundef %i.ry) #31
  br label %_ZN4llvm9BitVectorD2Ev.exit.i.i

_ZN4llvm9BitVectorD2Ev.exit.i.i:                  ; preds = %bb.cc, %bb.cb
  call void @_ZdlPvm(ptr noundef nonnull %i.rw, i64 noundef 72) #33
  br label %_ZN4llvm14SmallBitVectorD2Ev.exit.i

_ZN4llvm14SmallBitVectorD2Ev.exit.i:              ; preds = %_ZN4llvm9BitVectorD2Ev.exit.i.i, %bb.ca, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  br label %_ZL21CheckNonNullArgumentsRN5clang4SemaEPKNS_9NamedDeclEPKNS_17FunctionProtoTypeEN4llvm8ArrayRefIPKNS_4ExprEEENS_14SourceLocationE.exit

_ZL21CheckNonNullArgumentsRN5clang4SemaEPKNS_9NamedDeclEPKNS_17FunctionProtoTypeEN4llvm8ArrayRefIPKNS_4ExprEEENS_14SourceLocationE.exit: ; preds = %bb.ah, %_ZN4llvm14SmallBitVectorD2Ev.exit.i
  br i1 %.not201, label %.thread395, label %bb.cd

bb.cd:                                            ; preds = %_ZL21CheckNonNullArgumentsRN5clang4SemaEPKNS_9NamedDeclEPKNS_17FunctionProtoTypeEN4llvm8ArrayRefIPKNS_4ExprEEENS_14SourceLocationE.exit
  %i.sb = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.sc = load i32, ptr %i.sb, align 4
  %i.sd = and i32 %i.sc, 256
  %.not.i.i.i265 = icmp eq i32 %i.sd, 0
  br i1 %.not.i.i.i265, label %_ZNK5clang4Decl14specific_attrsINS_23ArgumentWithTypeTagAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit, label %_ZNK5clang4Decl19specific_attr_beginINS_23ArgumentWithTypeTagAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit.i

_ZNK5clang4Decl19specific_attr_beginINS_23ArgumentWithTypeTagAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit.i: ; preds = %bb.cd
  %i.se = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #31
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !1152 ; 2 uses
  %.pre.i266 = load i32, ptr %i.sb, align 4
  %.pre4.i267 = and i32 %.pre.i266, 256
  %i.sg = icmp eq i32 %.pre4.i267, 0
  br i1 %i.sg, label %_ZNK5clang4Decl14specific_attrsINS_23ArgumentWithTypeTagAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit, label %bb.ce

bb.ce:                                            ; preds = %_ZNK5clang4Decl19specific_attr_beginINS_23ArgumentWithTypeTagAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit.i
  %i.sh = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #31 ; 2 uses
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !1152
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sh, i64 8
  %i.sk = load i32, ptr %i.sj, align 8, !tbaa !1149
  %i.sl = zext i32 %i.sk to i64
  %i.sm = getelementptr inbounds nuw [8 x i8], ptr %i.si, i64 %i.sl
  br label %_ZNK5clang4Decl14specific_attrsINS_23ArgumentWithTypeTagAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit

_ZNK5clang4Decl14specific_attrsINS_23ArgumentWithTypeTagAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit: ; preds = %bb.cd, %_ZNK5clang4Decl19specific_attr_beginINS_23ArgumentWithTypeTagAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit.i, %bb.ce
  %i.sn = phi ptr [ %i.sf, %bb.ce ], [ %i.sf, %_ZNK5clang4Decl19specific_attr_beginINS_23ArgumentWithTypeTagAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit.i ], [ null, %bb.cd ]
  %i.so = phi ptr [ %i.sm, %bb.ce ], [ null, %_ZNK5clang4Decl19specific_attr_beginINS_23ArgumentWithTypeTagAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit.i ], [ null, %bb.cd ] ; 5 uses
  br label %bb.cf

bb.cf:                                            ; preds = %_ZNK5clang22specific_attr_iteratorINS_23ArgumentWithTypeTagAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEdeEv.exit, %_ZNK5clang4Decl14specific_attrsINS_23ArgumentWithTypeTagAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit
  %.sroa.0335.0 = phi ptr [ %i.sn, %_ZNK5clang4Decl14specific_attrsINS_23ArgumentWithTypeTagAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit ], [ %i.tl, %_ZNK5clang22specific_attr_iteratorINS_23ArgumentWithTypeTagAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEdeEv.exit ] ; 8 uses
  %i.sp = icmp ult ptr %.sroa.0335.0, %i.so
  br i1 %i.sp, label %.lr.ph.i.i.i278, label %bb.ch

.lr.ph.i.i.i278:                                  ; preds = %bb.cf, %bb.cg
  %.sroa.07.1.i.i279 = phi ptr [ %i.su, %bb.cg ], [ %.sroa.0335.0, %bb.cf ] ; 3 uses
  %i.sq = load ptr, ptr %.sroa.07.1.i.i279, align 8, !tbaa !1205
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 36
  %i.ss = load i16, ptr %i.sr, align 4
  %i.st = icmp eq i16 %i.ss, 142
  br i1 %i.st, label %_ZN5clangneENS_22specific_attr_iteratorINS_23ArgumentWithTypeTagAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit, label %bb.cg

bb.cg:                                            ; preds = %.lr.ph.i.i.i278
  %i.su = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i279, i64 8 ; 2 uses
  %.not.i.i.i280 = icmp eq ptr %i.su, %i.so
  br i1 %.not.i.i.i280, label %_ZN5clangneENS_22specific_attr_iteratorINS_23ArgumentWithTypeTagAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.thread, label %.lr.ph.i.i.i278, !llvm.loop !2133

bb.ch:                                            ; preds = %bb.cf
  %.not2.i3.i.i272 = icmp eq ptr %i.so, %.sroa.0335.0
  br i1 %.not2.i3.i.i272, label %_ZN5clangneENS_22specific_attr_iteratorINS_23ArgumentWithTypeTagAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.thread, label %.lr.ph.i4.i.i273

.lr.ph.i4.i.i273:                                 ; preds = %bb.ch, %bb.ci
  %.sroa.0.1.i.i274 = phi ptr [ %i.sz, %bb.ci ], [ %i.so, %bb.ch ] ; 3 uses
  %i.sv = load ptr, ptr %.sroa.0.1.i.i274, align 8, !tbaa !1205
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 36
  %i.sx = load i16, ptr %i.sw, align 4
  %i.sy = icmp eq i16 %i.sx, 142
  br i1 %i.sy, label %_ZN5clangneENS_22specific_attr_iteratorINS_23ArgumentWithTypeTagAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit, label %bb.ci

bb.ci:                                            ; preds = %.lr.ph.i4.i.i273
  %i.sz = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i274, i64 8 ; 2 uses
  %.not.i5.i.i275 = icmp eq ptr %i.sz, %.sroa.0335.0
  br i1 %.not.i5.i.i275, label %_ZN5clangneENS_22specific_attr_iteratorINS_23ArgumentWithTypeTagAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.thread, label %.lr.ph.i4.i.i273, !llvm.loop !2133

_ZN5clangneENS_22specific_attr_iteratorINS_23ArgumentWithTypeTagAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit: ; preds = %.lr.ph.i4.i.i273, %.lr.ph.i.i.i278
  %.sroa.07.0.i.i276 = phi ptr [ %.sroa.07.1.i.i279, %.lr.ph.i.i.i278 ], [ %.sroa.0335.0, %.lr.ph.i4.i.i273 ]
  %.sroa.0.0.i.i277 = phi ptr [ %i.so, %.lr.ph.i.i.i278 ], [ %.sroa.0.1.i.i274, %.lr.ph.i4.i.i273 ]
  %.not434 = icmp eq ptr %.sroa.07.0.i.i276, %.sroa.0.0.i.i277
  br i1 %.not434, label %_ZN5clangneENS_22specific_attr_iteratorINS_23ArgumentWithTypeTagAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.thread, label %bb.cj

bb.cj:                                            ; preds = %_ZN5clangneENS_22specific_attr_iteratorINS_23ArgumentWithTypeTagAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit
  %i.ta = load ptr, ptr %.sroa.0335.0, align 8, !tbaa !1205 ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 36
  %i.tc = load i16, ptr %i.tb, align 4
  %i.td = icmp eq i16 %i.tc, 142
  br i1 %i.td, label %_ZNK5clang22specific_attr_iteratorINS_23ArgumentWithTypeTagAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEdeEv.exit, label %.lr.ph.i.i282

.lr.ph.i.i282:                                    ; preds = %bb.cj, %.lr.ph.i.i282
  %i.te = phi ptr [ %i.tf, %.lr.ph.i.i282 ], [ %.sroa.0335.0, %bb.cj ]
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 8 ; 3 uses
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !1205 ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 36
  %i.ti = load i16, ptr %i.th, align 4
  %i.tj = icmp eq i16 %i.ti, 142
  br i1 %i.tj, label %_ZNK5clang22specific_attr_iteratorINS_23ArgumentWithTypeTagAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEdeEv.exit, label %.lr.ph.i.i282, !llvm.loop !2134

_ZNK5clang22specific_attr_iteratorINS_23ArgumentWithTypeTagAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEdeEv.exit: ; preds = %.lr.ph.i.i282, %bb.cj
  %.sroa.0335.1 = phi ptr [ %.sroa.0335.0, %bb.cj ], [ %i.tf, %.lr.ph.i.i282 ]
  %i.tk = phi ptr [ %i.ta, %bb.cj ], [ %i.tg, %.lr.ph.i.i282 ]
  %.sroa.091.0.copyload = load i32, ptr %13, align 4, !tbaa !1103
  call void @_ZN5clang4Sema24CheckArgumentWithTypeTagEPKNS_23ArgumentWithTypeTagAttrEN4llvm8ArrayRefIPKNS_4ExprEEENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %i.tk, ptr %4, i64 %5, i32 %.sroa.091.0.copyload)
  %i.tl = getelementptr inbounds nuw i8, ptr %.sroa.0335.1, i64 8
  br label %bb.cf
end_hunk_0
