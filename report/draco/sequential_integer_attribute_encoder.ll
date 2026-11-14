Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/sequential_integer_attribute_encoder?download=true
inline.NumInlined: 2377
inline.NumDeleted: 912
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_ZN5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21ComputePredictedValueILb1EEEbNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKii:bb.a
  %i.az = getelementptr i8, ptr %i.aw, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !96, !noalias !493 ; 2 uses
  %i.bb = sext i32 %i.ba to i64
  %.not.i = icmp eq i32 %i.ax, %i.ap
  %.not.1.i = icmp eq i32 %i.ba, %i.as
  %.not.lcssa.i = select i1 %.not.i, i1 %.not.1.i, i1 false
  br i1 %.not.lcssa.i, label %.thread, label %bb.h

.thread:                                          ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ap, ptr %i.bc, align 8, !tbaa !96
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.as, ptr %i.bd, align 4, !tbaa !96
  br label %.loopexit

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !494)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !242, !noalias !494
  %i.bg = sext i32 %3 to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !93, !noalias !494 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false), !tbaa !128, !alias.scope !494
  %i.bj = load ptr, ptr %0, align 8, !tbaa !241, !noalias !494 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 100
  %i.bl = load i8, ptr %i.bk, align 4, !tbaa !91, !range !61, !noalias !495, !noundef !62
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit, label %.else.i

.else.i:                                          ; preds = %bb.h
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 72
  %i.bo = load ptr, ptr %i.bn, align 8, !noalias !495
  %i.bp = zext i32 %i.bi to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bp
  %storemerge.i.else.val.i = load i32, ptr %i.bq, align 4, !tbaa !96, !noalias !495
  br label %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit

_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit: ; preds = %bb.h, %.else.i
  %storemerge.i.i = phi i32 [ %i.bi, %bb.h ], [ %storemerge.i.else.val.i, %.else.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !494
  store i32 %storemerge.i.i, ptr %6, align 4, !tbaa !86, !noalias !494
  %i.br = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !121, !noalias !494
  %i.bt = call noundef zeroext i1 @_ZNK5draco17GeometryAttribute12ConvertValueIlEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEaPT_(ptr noundef nonnull align 8 dereferenceable(64) %i.bj, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %6, i8 noundef signext %i.bs, ptr noundef nonnull align 8 %7) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !494
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !496)
  %i.bu = load ptr, ptr %i.be, align 8, !tbaa !242, !noalias !496
  %i.bv = sext i32 %i.ag to i64
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !93, !noalias !496 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false), !tbaa !128, !alias.scope !496
  %i.by = load ptr, ptr %0, align 8, !tbaa !241, !noalias !496 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 100
  %i.ca = load i8, ptr %i.bz, align 4, !tbaa !91, !range !61, !noalias !497, !noundef !62
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit66, label %.else.i63

.else.i63:                                        ; preds = %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 72
  %i.cd = load ptr, ptr %i.cc, align 8, !noalias !497
  %i.ce = zext i32 %i.bx to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.ce
  %storemerge.i.else.val.i64 = load i32, ptr %i.cf, align 4, !tbaa !96, !noalias !497
  br label %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit66

_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit66: ; preds = %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit, %.else.i63
  %storemerge.i.i65 = phi i32 [ %i.bx, %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit ], [ %storemerge.i.else.val.i64, %.else.i63 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !496
  store i32 %storemerge.i.i65, ptr %5, align 4, !tbaa !86, !noalias !496
  %i.cg = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ch = load i8, ptr %i.cg, align 8, !tbaa !121, !noalias !496
  %i.ci = call noundef zeroext i1 @_ZNK5draco17GeometryAttribute12ConvertValueIlEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEaPT_(ptr noundef nonnull align 8 dereferenceable(64) %i.by, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %5, i8 noundef signext %i.ch, ptr noundef nonnull align 8 %8) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !496
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !498)
  %i.cj = load ptr, ptr %i.be, align 8, !tbaa !242, !noalias !498
  %i.ck = sext i32 %i.aj to i64
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !93, !noalias !498 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false), !tbaa !128, !alias.scope !498
  %i.cn = load ptr, ptr %0, align 8, !tbaa !241, !noalias !498 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 100
  %i.cp = load i8, ptr %i.co, align 4, !tbaa !91, !range !61, !noalias !499, !noundef !62
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit70, label %.else.i67

.else.i67:                                        ; preds = %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit66
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 72
  %i.cs = load ptr, ptr %i.cr, align 8, !noalias !499
  %i.ct = zext i32 %i.cm to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.ct
  %storemerge.i.else.val.i68 = load i32, ptr %i.cu, align 4, !tbaa !96, !noalias !499
  br label %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit70

_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit70: ; preds = %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit66, %.else.i67
  %storemerge.i.i69 = phi i32 [ %i.cm, %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit66 ], [ %storemerge.i.else.val.i68, %.else.i67 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !498
  store i32 %storemerge.i.i69, ptr %4, align 4, !tbaa !86, !noalias !498
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cw = load i8, ptr %i.cv, align 8, !tbaa !121, !noalias !498
  %i.cx = call noundef zeroext i1 @_ZNK5draco17GeometryAttribute12ConvertValueIlEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEaPT_(ptr noundef nonnull align 8 dereferenceable(64) %i.cn, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %4, i8 noundef signext %i.cw, ptr noundef nonnull align 8 %9) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !498
  %i.cy = load i64, ptr %9, align 8, !tbaa !128, !noalias !500
  %i.cz = load i64, ptr %8, align 8, !tbaa !128, !noalias !500 ; 3 uses
  %i.da = sub nsw i64 %i.cy, %i.cz                ; 5 uses
  %i.db = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !128, !noalias !500
  %i.dd = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !128, !noalias !500 ; 3 uses
  %i.df = sub nsw i64 %i.dc, %i.de                ; 5 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !128, !noalias !500
  %i.di = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !128, !noalias !500 ; 3 uses
  %i.dk = sub nsw i64 %i.dh, %i.dj                ; 5 uses
  %i.dl = mul nsw i64 %i.da, %i.da
  %i.dm = mul nsw i64 %i.df, %i.df
  %i.dn = add nuw nsw i64 %i.dm, %i.dl
  %i.do = mul nsw i64 %i.dk, %i.dk
  %i.dp = add nuw nsw i64 %i.dn, %i.do            ; 12 uses
  %.not = icmp eq i64 %i.dp, 0
  br i1 %.not, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit70
  %i.dq = load i64, ptr %7, align 8, !tbaa !128, !noalias !501 ; 2 uses
  %i.dr = sub nsw i64 %i.dq, %i.cz
  %i.ds = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !128, !noalias !501 ; 2 uses
  %i.du = sub nsw i64 %i.dt, %i.de
  %i.dv = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !128, !noalias !501 ; 2 uses
  %i.dx = sub nsw i64 %i.dw, %i.dj
  %i.dy = mul nsw i64 %i.dr, %i.da
  %i.dz = mul nsw i64 %i.du, %i.df
  %i.ea = add nsw i64 %i.dz, %i.dy
  %i.eb = mul nsw i64 %i.dx, %i.dk
  %i.ec = add nsw i64 %i.ea, %i.eb                ; 6 uses
  %i.ed = sub nsw i64 %i.ay, %i.aq                ; 3 uses
  %i.ee = sub nsw i64 %i.bb, %i.at                ; 3 uses
  %i.ef = call noundef i64 @llvm.abs.i64(i64 %i.aq, i1 true)
  %i.eg = call noundef i64 @llvm.abs.i64(i64 %i.at, i1 true)
  %.sroa.speculated135 = call i64 @llvm.umax.i64(i64 %i.ef, i64 %i.eg)
  %i.eh = udiv i64 9223372036854775807, %i.dp
  %i.ei = icmp samesign ugt i64 %.sroa.speculated135, %i.eh
  br i1 %i.ei, label %.thread190, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ej = call noundef i64 @llvm.abs.i64(i64 %i.ed, i1 true)
  %i.ek = call noundef i64 @llvm.abs.i64(i64 %i.ee, i1 true)
  %.sroa.speculated130 = call i64 @llvm.umax.i64(i64 %i.ej, i64 %i.ek)
  %i.el = call noundef i64 @llvm.abs.i64(i64 %i.ec, i1 true) ; 2 uses
  %i.em = udiv i64 9223372036854775807, %.sroa.speculated130
  %i.en = icmp samesign ugt i64 %i.el, %i.em
  br i1 %i.en, label %.thread190, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.eo = mul nsw i64 %i.dp, %i.aq
  %i.ep = mul nsw i64 %i.dp, %i.at
  %i.eq = mul nsw i64 %i.ec, %i.ed
  %i.er = mul nsw i64 %i.ec, %i.ee
  %i.es = add nsw i64 %i.eq, %i.eo                ; 2 uses
  %i.et = add nsw i64 %i.er, %i.ep                ; 2 uses
  %i.eu = call noundef i64 @llvm.abs.i64(i64 %i.da, i1 true)
  %i.ev = call noundef i64 @llvm.abs.i64(i64 %i.df, i1 true)
  %i.ew = call noundef i64 @llvm.abs.i64(i64 %i.dk, i1 true)
  %.sroa.speculated114 = call i64 @llvm.umax.i64(i64 %i.eu, i64 %i.ev)
  %.sroa.speculated = call i64 @llvm.umax.i64(i64 %.sroa.speculated114, i64 %i.ew)
  %i.ex = udiv i64 9223372036854775807, %.sroa.speculated
  %.not192 = icmp samesign ugt i64 %i.el, %i.ex
  br i1 %.not192, label %.thread190, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ey = mul nsw i64 %i.ec, %i.da
  %i.ez = mul nsw i64 %i.ec, %i.df
  %i.fa = mul nsw i64 %i.ec, %i.dk
  %i.fb = sdiv i64 %i.ey, %i.dp
  %i.fc = sdiv i64 %i.ez, %i.dp
  %i.fd = sdiv i64 %i.fa, %i.dp
  %i.fe = add i64 %i.cz, %i.fb
  %i.ff = sub i64 %i.dq, %i.fe                    ; 2 uses
  %i.fg = add i64 %i.de, %i.fc
  %i.fh = sub i64 %i.dt, %i.fg                    ; 2 uses
  %i.fi = add i64 %i.dj, %i.fd
  %i.fj = sub i64 %i.dw, %i.fi                    ; 2 uses
  %i.fk = mul nsw i64 %i.ff, %i.ff
  %i.fl = mul nsw i64 %i.fh, %i.fh
  %i.fm = add nuw nsw i64 %i.fl, %i.fk
  %i.fn = mul nsw i64 %i.fj, %i.fj
  %i.fo = add nuw nsw i64 %i.fm, %i.fn
  %i.fp = mul i64 %i.fo, %i.dp                    ; 6 uses
  switch i64 %i.fp, label %.lr.ph.i [
    i64 0, label %_ZN5draco7IntSqrtEm.exit
    i64 1, label %.preheader.i.preheader
  ]

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.i
  %.018.i = phi i64 [ %i.fq, %.lr.ph.i ], [ 1, %bb.l ]
  %.01317.i = phi i64 [ %i.fr, %.lr.ph.i ], [ %i.fp, %bb.l ] ; 2 uses
  %i.fq = shl i64 %.018.i, 1                      ; 2 uses
  %i.fr = lshr i64 %.01317.i, 2
  %i.fs = icmp ugt i64 %.01317.i, 7
  br i1 %i.fs, label %.lr.ph.i, label %.preheader.i.preheader, !llvm.loop !7

.preheader.i.preheader:                           ; preds = %.lr.ph.i, %bb.l
  %.1.i.ph = phi i64 [ %i.fp, %bb.l ], [ %i.fq, %.lr.ph.i ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.1.i = phi i64 [ %i.fv, %.preheader.i ], [ %.1.i.ph, %.preheader.i.preheader ] ; 2 uses
  %i.ft = udiv i64 %i.fp, %.1.i
  %i.fu = add i64 %i.ft, %.1.i
  %i.fv = lshr i64 %i.fu, 1                       ; 4 uses
  %i.fw = mul i64 %i.fv, %i.fv
  %i.fx = icmp ugt i64 %i.fw, %i.fp
  br i1 %i.fx, label %.preheader.i, label %_ZN5draco7IntSqrtEm.exit, !llvm.loop !8

_ZN5draco7IntSqrtEm.exit:                         ; preds = %.preheader.i, %bb.l
  %.014.i = phi i64 [ %i.fp, %bb.l ], [ %i.fv, %.preheader.i ] ; 2 uses
  %i.fy = mul nsw i64 %.014.i, %i.ee              ; 2 uses
  %i.fz = mul i64 %.014.i, %i.ed                  ; 2 uses
  %i.ga = add nsw i64 %i.fy, %i.es
  %i.gb = sub i64 %i.et, %i.fz
  %i.gc = sdiv i64 %i.ga, %i.dp                   ; 2 uses
  %i.gd = sdiv i64 %i.gb, %i.dp                   ; 2 uses
  %i.ge = sub nsw i64 %i.es, %i.fy
  %i.gf = add i64 %i.fz, %i.et
  %i.gg = sdiv i64 %i.ge, %i.dp                   ; 2 uses
  %i.gh = sdiv i64 %i.gf, %i.dp                   ; 2 uses
  %i.gi = shl nsw i32 %3, 1
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds [4 x i8], ptr %2, i64 %i.gj ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !96, !noalias !502
  %i.gm = sext i32 %i.gl to i64                   ; 2 uses
  %i.gn = getelementptr i8, ptr %i.gk, i64 4
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !96, !noalias !502
  %i.gp = sext i32 %i.go to i64                   ; 2 uses
  %i.gq = sub nsw i64 %i.gm, %i.gc                ; 2 uses
  %i.gr = sub nsw i64 %i.gp, %i.gd                ; 2 uses
  %i.gs = mul nsw i64 %i.gq, %i.gq
  %i.gt = mul nsw i64 %i.gr, %i.gr
  %i.gu = add nuw nsw i64 %i.gt, %i.gs
  %i.gv = sub nsw i64 %i.gm, %i.gg                ; 2 uses
  %i.gw = sub nsw i64 %i.gp, %i.gh                ; 2 uses
  %i.gx = mul nsw i64 %i.gv, %i.gv
  %i.gy = mul nsw i64 %i.gw, %i.gw
  %i.gz = add nuw nsw i64 %i.gy, %i.gx
  %i.ha = icmp samesign ult i64 %i.gu, %i.gz      ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.223 = select i1 %i.ha, i64 %i.gc, i64 %i.gg
  %.224 = select i1 %i.ha, i64 %i.gd, i64 %i.gh
  call void @_ZNSt6vectorIbSaIbEE9push_backEb(ptr noundef nonnull align 8 dereferenceable(40) %i.hb, i1 noundef zeroext %i.ha)
  %i.hc = trunc i64 %.223 to i32
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.hc, ptr %i.hd, align 8, !tbaa !96
  %i.he = trunc i64 %.224 to i32
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.he, ptr %i.hf, align 4, !tbaa !96
  br label %.thread190

.thread190:                                       ; preds = %_ZN5draco7IntSqrtEm.exit, %bb.k, %bb.j, %bb.i
  %.352.ph = phi i1 [ true, %_ZN5draco7IntSqrtEm.exit ], [ false, %bb.k ], [ false, %bb.j ], [ false, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %.loopexit

bb.m:                                             ; preds = %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit70
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNKSt6vectorIiSaIiEE2atEm.exit62
  br i1 %i.al, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.hg = shl nsw i32 %i.ag, 1
  br label %.loopexit.loopexit

bb.p:                                             ; preds = %bb.n
  %i.hh = icmp sgt i32 %3, 0
  br i1 %i.hh, label %bb.q, label %.preheader

.preheader:                                       ; preds = %bb.p
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.hi, align 8
  br label %.loopexit

bb.q:                                             ; preds = %bb.p
  %i.hj = shl nuw i32 %3, 1
  %i.hk = add i32 %i.hj, -2
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.q, %bb.o
  %.047 = phi i32 [ %i.hg, %bb.o ], [ %i.hk, %bb.q ]
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hm = sext i32 %.047 to i64                   ; 2 uses
  %i.hn = getelementptr inbounds [4 x i8], ptr %2, i64 %i.hm
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !96
  store i32 %i.ho, ptr %i.hl, align 8, !tbaa !96
  %i.hp = getelementptr [4 x i8], ptr %2, i64 %i.hm
  %i.hq = getelementptr i8, ptr %i.hp, i64 4
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !96
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.hr, ptr %i.hs, align 4, !tbaa !96
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %.loopexit.loopexit, %.thread190, %.thread
  %.6 = phi i1 [ %.352.ph, %.thread190 ], [ true, %.thread ], [ true, %.loopexit.loopexit ], [ true, %.preheader ]
  ret i1 %.6
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5draco17GeometryAttribute12ConvertValueIlEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEaPT_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofreeobj noundef align 4 dead_on_return dereferenceable(4) %1, i8 noundef signext %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %3, null
  br i1 %i.a, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIalEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.c = load i32, ptr %i.b, align 4, !tbaa !45
  switch i32 %i.c, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIalEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit [
    i32 1, label %bb.c
    i32 2, label %bb.e
    i32 3, label %bb.g
    i32 4, label %bb.j
    i32 5, label %bb.m
    i32 6, label %bb.p
    i32 7, label %bb.s
    i32 8, label %bb.v
    i32 9, label %bb.z
    i32 10, label %bb.ac
    i32 11, label %bb.af
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !105   ; 2 uses
  %.sroa.speculated29.i = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.e)
  %.not30.i = icmp eq i8 %.sroa.speculated29.i, 0
  br i1 %.not30.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.f = load i32, ptr %1, align 4, !tbaa !86
  %i.g = load ptr, ptr %0, align 8, !tbaa !123    ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !125
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !tbaa !243
  %i.k = zext i32 %i.f to i64
  %i.l = mul nsw i64 %i.j, %i.k
  %i.m = getelementptr i8, ptr %i.h, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load i64, ptr %i.n, align 8, !tbaa !122
  %i.p = getelementptr i8, ptr %i.m, i64 %i.o     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !244  ; 2 uses
  %i.s = icmp ugt ptr %i.r, %i.p
  br i1 %i.s, label %.lr.ph265, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIalEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.d:                                             ; preds = %.lr.ph265
  %i.t = getelementptr inbounds nuw i8, ptr %.01731.i264, i64 1 ; 2 uses
  %i.u = icmp ugt ptr %i.r, %i.t
  br i1 %i.u, label %.lr.ph265, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIalEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit, !llvm.loop !503

.lr.ph265:                                        ; preds = %.lr.ph.i, %bb.d
  %.01731.i264 = phi ptr [ %i.t, %bb.d ], [ %i.p, %.lr.ph.i ] ; 2 uses
  %indvars.iv.i263 = phi i64 [ %indvars.iv.next.i, %bb.d ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.v = load i8, ptr %.01731.i264, align 1, !tbaa !105
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i263
  %i.x = sext i8 %i.v to i64
  store i64 %i.x, ptr %i.w, align 8, !tbaa !128
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i263, 1 ; 2 uses
  %i.y = load i8, ptr %i.d, align 8, !tbaa !105   ; 2 uses
  %.sroa.speculated.i = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.y)
  %i.z = zext i8 %.sroa.speculated.i to i64
  %.not.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.z
  br i1 %.not.not.i, label %bb.d, label %.critedge.i, !llvm.loop !503

.critedge.i:                                      ; preds = %.lr.ph265, %bb.c
  %.lcssa.i = phi i8 [ %i.e, %bb.c ], [ %i.y, %.lr.ph265 ] ; 2 uses
  %i.aa = icmp ult i8 %.lcssa.i, %2
  br i1 %i.aa, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIalEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit.sink.split, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIalEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.e:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !105 ; 2 uses
  %.sroa.speculated29.i25 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.ac)
  %.not30.i26 = icmp eq i8 %.sroa.speculated29.i25, 0
  br i1 %.not30.i26, label %.critedge.i34, label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %bb.e
  %i.ad = load i32, ptr %1, align 4, !tbaa !86
  %i.ae = load ptr, ptr %0, align 8, !tbaa !123   ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !125
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !243
  %i.ai = zext i32 %i.ad to i64
  %i.aj = mul nsw i64 %i.ah, %i.ai
  %i.ak = getelementptr i8, ptr %i.af, i64 %i.aj
end_hunk_0
begin_hunk_1_@_ZN5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21ComputePredictedValueILb1EEEbNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKii:bb.a
  %i.az = getelementptr i8, ptr %i.aw, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !96, !noalias !717 ; 2 uses
  %i.bb = sext i32 %i.ba to i64
  %.not.i64 = icmp eq i32 %i.ax, %i.ap
  %.not.1.i = icmp eq i32 %i.ba, %i.as
  %.not.lcssa.i = select i1 %.not.i64, i1 %.not.1.i, i1 false
  br i1 %.not.lcssa.i, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ap, ptr %i.bc, align 8, !tbaa !96
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.as, ptr %i.bd, align 4, !tbaa !96
  br label %.loopexit

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !718)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !258, !noalias !718
  %i.bg = sext i32 %3 to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !93, !noalias !718 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false), !tbaa !128, !alias.scope !718
  %i.bj = load ptr, ptr %0, align 8, !tbaa !257, !noalias !718 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 100
  %i.bl = load i8, ptr %i.bk, align 4, !tbaa !91, !range !61, !noalias !719, !noundef !62
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit, label %.else.i

.else.i:                                          ; preds = %bb.g
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 72
  %i.bo = load ptr, ptr %i.bn, align 8, !noalias !719
  %i.bp = zext i32 %i.bi to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bp
  %storemerge.i.else.val.i = load i32, ptr %i.bq, align 4, !tbaa !96, !noalias !719
  br label %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit

_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit: ; preds = %bb.g, %.else.i
  %storemerge.i.i = phi i32 [ %i.bi, %bb.g ], [ %storemerge.i.else.val.i, %.else.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !718
  store i32 %storemerge.i.i, ptr %6, align 4, !tbaa !86, !noalias !718
  %i.br = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !121, !noalias !718
  %i.bt = call noundef zeroext i1 @_ZNK5draco17GeometryAttribute12ConvertValueIlEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEaPT_(ptr noundef nonnull align 8 dereferenceable(64) %i.bj, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %6, i8 noundef signext %i.bs, ptr noundef nonnull align 8 %7) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !718
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !720)
  %i.bu = load ptr, ptr %i.be, align 8, !tbaa !258, !noalias !720
  %i.bv = sext i32 %i.ah to i64
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !93, !noalias !720 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false), !tbaa !128, !alias.scope !720
  %i.by = load ptr, ptr %0, align 8, !tbaa !257, !noalias !720 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 100
  %i.ca = load i8, ptr %i.bz, align 4, !tbaa !91, !range !61, !noalias !721, !noundef !62
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit68, label %.else.i65

.else.i65:                                        ; preds = %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 72
  %i.cd = load ptr, ptr %i.cc, align 8, !noalias !721
  %i.ce = zext i32 %i.bx to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.ce
  %storemerge.i.else.val.i66 = load i32, ptr %i.cf, align 4, !tbaa !96, !noalias !721
  br label %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit68

_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit68: ; preds = %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit, %.else.i65
  %storemerge.i.i67 = phi i32 [ %i.bx, %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit ], [ %storemerge.i.else.val.i66, %.else.i65 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !720
  store i32 %storemerge.i.i67, ptr %5, align 4, !tbaa !86, !noalias !720
  %i.cg = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ch = load i8, ptr %i.cg, align 8, !tbaa !121, !noalias !720
  %i.ci = call noundef zeroext i1 @_ZNK5draco17GeometryAttribute12ConvertValueIlEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEaPT_(ptr noundef nonnull align 8 dereferenceable(64) %i.by, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %5, i8 noundef signext %i.ch, ptr noundef nonnull align 8 %8) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !720
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !722)
  %i.cj = load ptr, ptr %i.be, align 8, !tbaa !258, !noalias !722
  %i.ck = sext i32 %i.aj to i64
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !93, !noalias !722 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false), !tbaa !128, !alias.scope !722
  %i.cn = load ptr, ptr %0, align 8, !tbaa !257, !noalias !722 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 100
  %i.cp = load i8, ptr %i.co, align 4, !tbaa !91, !range !61, !noalias !723, !noundef !62
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit72, label %.else.i69

.else.i69:                                        ; preds = %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit68
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 72
  %i.cs = load ptr, ptr %i.cr, align 8, !noalias !723
  %i.ct = zext i32 %i.cm to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.ct
  %storemerge.i.else.val.i70 = load i32, ptr %i.cu, align 4, !tbaa !96, !noalias !723
  br label %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit72

_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit72: ; preds = %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit68, %.else.i69
  %storemerge.i.i71 = phi i32 [ %i.cm, %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit68 ], [ %storemerge.i.else.val.i70, %.else.i69 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !722
  store i32 %storemerge.i.i71, ptr %4, align 4, !tbaa !86, !noalias !722
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cw = load i8, ptr %i.cv, align 8, !tbaa !121, !noalias !722
  %i.cx = call noundef zeroext i1 @_ZNK5draco17GeometryAttribute12ConvertValueIlEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEaPT_(ptr noundef nonnull align 8 dereferenceable(64) %i.cn, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %4, i8 noundef signext %i.cw, ptr noundef nonnull align 8 %9) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !722
  %i.cy = load i64, ptr %9, align 8, !tbaa !128, !noalias !724
  %i.cz = load i64, ptr %8, align 8, !tbaa !128, !noalias !724 ; 3 uses
  %i.da = sub nsw i64 %i.cy, %i.cz                ; 5 uses
  %i.db = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !128, !noalias !724
  %i.dd = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !128, !noalias !724 ; 3 uses
  %i.df = sub nsw i64 %i.dc, %i.de                ; 5 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !128, !noalias !724
  %i.di = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !128, !noalias !724 ; 3 uses
  %i.dk = sub nsw i64 %i.dh, %i.dj                ; 5 uses
  %i.dl = mul nsw i64 %i.da, %i.da
  %i.dm = mul nsw i64 %i.df, %i.df
  %i.dn = add nuw nsw i64 %i.dm, %i.dl
  %i.do = mul nsw i64 %i.dk, %i.dk
  %i.dp = add nuw nsw i64 %i.dn, %i.do            ; 12 uses
  %.not = icmp eq i64 %i.dp, 0
  br i1 %.not, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit72
  %i.dq = load i64, ptr %7, align 8, !tbaa !128, !noalias !725 ; 2 uses
  %i.dr = sub nsw i64 %i.dq, %i.cz
  %i.ds = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !128, !noalias !725 ; 2 uses
  %i.du = sub nsw i64 %i.dt, %i.de
  %i.dv = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !128, !noalias !725 ; 2 uses
  %i.dx = sub nsw i64 %i.dw, %i.dj
  %i.dy = mul nsw i64 %i.dr, %i.da
  %i.dz = mul nsw i64 %i.du, %i.df
  %i.ea = add nsw i64 %i.dz, %i.dy
  %i.eb = mul nsw i64 %i.dx, %i.dk
  %i.ec = add nsw i64 %i.ea, %i.eb                ; 6 uses
  %i.ed = sub nsw i64 %i.ay, %i.aq                ; 3 uses
  %i.ee = sub nsw i64 %i.bb, %i.at                ; 3 uses
  %i.ef = call noundef i64 @llvm.abs.i64(i64 %i.aq, i1 true)
  %i.eg = call noundef i64 @llvm.abs.i64(i64 %i.at, i1 true)
  %.sroa.speculated137 = call i64 @llvm.umax.i64(i64 %i.ef, i64 %i.eg)
  %i.eh = udiv i64 9223372036854775807, %i.dp
  %i.ei = icmp samesign ugt i64 %.sroa.speculated137, %i.eh
  br i1 %i.ei, label %.thread198, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ej = call noundef i64 @llvm.abs.i64(i64 %i.ed, i1 true)
  %i.ek = call noundef i64 @llvm.abs.i64(i64 %i.ee, i1 true)
  %.sroa.speculated132 = call i64 @llvm.umax.i64(i64 %i.ej, i64 %i.ek)
  %i.el = call noundef i64 @llvm.abs.i64(i64 %i.ec, i1 true) ; 2 uses
  %i.em = udiv i64 9223372036854775807, %.sroa.speculated132
  %i.en = icmp samesign ugt i64 %i.el, %i.em
  br i1 %i.en, label %.thread198, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.eo = mul nsw i64 %i.dp, %i.aq
  %i.ep = mul nsw i64 %i.dp, %i.at
  %i.eq = mul nsw i64 %i.ec, %i.ed
  %i.er = mul nsw i64 %i.ec, %i.ee
  %i.es = add nsw i64 %i.eq, %i.eo                ; 2 uses
  %i.et = add nsw i64 %i.er, %i.ep                ; 2 uses
  %i.eu = call noundef i64 @llvm.abs.i64(i64 %i.da, i1 true)
  %i.ev = call noundef i64 @llvm.abs.i64(i64 %i.df, i1 true)
  %i.ew = call noundef i64 @llvm.abs.i64(i64 %i.dk, i1 true)
  %.sroa.speculated116 = call i64 @llvm.umax.i64(i64 %i.eu, i64 %i.ev)
  %.sroa.speculated = call i64 @llvm.umax.i64(i64 %.sroa.speculated116, i64 %i.ew)
  %i.ex = udiv i64 9223372036854775807, %.sroa.speculated
  %.not200 = icmp samesign ugt i64 %i.el, %i.ex
  br i1 %.not200, label %.thread198, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ey = mul nsw i64 %i.ec, %i.da
  %i.ez = mul nsw i64 %i.ec, %i.df
  %i.fa = mul nsw i64 %i.ec, %i.dk
  %i.fb = sdiv i64 %i.ey, %i.dp
  %i.fc = sdiv i64 %i.ez, %i.dp
  %i.fd = sdiv i64 %i.fa, %i.dp
  %i.fe = add i64 %i.cz, %i.fb
  %i.ff = sub i64 %i.dq, %i.fe                    ; 2 uses
  %i.fg = add i64 %i.de, %i.fc
  %i.fh = sub i64 %i.dt, %i.fg                    ; 2 uses
  %i.fi = add i64 %i.dj, %i.fd
  %i.fj = sub i64 %i.dw, %i.fi                    ; 2 uses
  %i.fk = mul nsw i64 %i.ff, %i.ff
  %i.fl = mul nsw i64 %i.fh, %i.fh
  %i.fm = add nuw nsw i64 %i.fl, %i.fk
  %i.fn = mul nsw i64 %i.fj, %i.fj
  %i.fo = add nuw nsw i64 %i.fm, %i.fn
  %i.fp = mul i64 %i.fo, %i.dp                    ; 6 uses
  switch i64 %i.fp, label %.lr.ph.i [
    i64 0, label %_ZN5draco7IntSqrtEm.exit
    i64 1, label %.preheader.i.preheader
  ]

.lr.ph.i:                                         ; preds = %bb.k, %.lr.ph.i
  %.018.i = phi i64 [ %i.fq, %.lr.ph.i ], [ 1, %bb.k ]
  %.01317.i = phi i64 [ %i.fr, %.lr.ph.i ], [ %i.fp, %bb.k ] ; 2 uses
  %i.fq = shl i64 %.018.i, 1                      ; 2 uses
  %i.fr = lshr i64 %.01317.i, 2
  %i.fs = icmp ugt i64 %.01317.i, 7
  br i1 %i.fs, label %.lr.ph.i, label %.preheader.i.preheader, !llvm.loop !7

.preheader.i.preheader:                           ; preds = %.lr.ph.i, %bb.k
  %.1.i.ph = phi i64 [ %i.fp, %bb.k ], [ %i.fq, %.lr.ph.i ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.1.i = phi i64 [ %i.fv, %.preheader.i ], [ %.1.i.ph, %.preheader.i.preheader ] ; 2 uses
  %i.ft = udiv i64 %i.fp, %.1.i
  %i.fu = add i64 %i.ft, %.1.i
  %i.fv = lshr i64 %i.fu, 1                       ; 4 uses
  %i.fw = mul i64 %i.fv, %i.fv
  %i.fx = icmp ugt i64 %i.fw, %i.fp
  br i1 %i.fx, label %.preheader.i, label %_ZN5draco7IntSqrtEm.exit, !llvm.loop !8

_ZN5draco7IntSqrtEm.exit:                         ; preds = %.preheader.i, %bb.k
  %.014.i = phi i64 [ %i.fp, %bb.k ], [ %i.fv, %.preheader.i ] ; 2 uses
  %i.fy = mul nsw i64 %.014.i, %i.ee              ; 2 uses
  %i.fz = mul i64 %.014.i, %i.ed                  ; 2 uses
  %i.ga = add nsw i64 %i.fy, %i.es
  %i.gb = sub i64 %i.et, %i.fz
  %i.gc = sdiv i64 %i.ga, %i.dp                   ; 2 uses
  %i.gd = sdiv i64 %i.gb, %i.dp                   ; 2 uses
  %i.ge = sub nsw i64 %i.es, %i.fy
  %i.gf = add i64 %i.fz, %i.et
  %i.gg = sdiv i64 %i.ge, %i.dp                   ; 2 uses
  %i.gh = sdiv i64 %i.gf, %i.dp                   ; 2 uses
  %i.gi = shl nsw i32 %3, 1
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds [4 x i8], ptr %2, i64 %i.gj ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !96, !noalias !726
  %i.gm = sext i32 %i.gl to i64                   ; 2 uses
  %i.gn = getelementptr i8, ptr %i.gk, i64 4
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !96, !noalias !726
  %i.gp = sext i32 %i.go to i64                   ; 2 uses
  %i.gq = sub nsw i64 %i.gm, %i.gc                ; 2 uses
  %i.gr = sub nsw i64 %i.gp, %i.gd                ; 2 uses
  %i.gs = mul nsw i64 %i.gq, %i.gq
  %i.gt = mul nsw i64 %i.gr, %i.gr
  %i.gu = add nuw nsw i64 %i.gt, %i.gs
  %i.gv = sub nsw i64 %i.gm, %i.gg                ; 2 uses
  %i.gw = sub nsw i64 %i.gp, %i.gh                ; 2 uses
  %i.gx = mul nsw i64 %i.gv, %i.gv
  %i.gy = mul nsw i64 %i.gw, %i.gw
  %i.gz = add nuw nsw i64 %i.gy, %i.gx
  %i.ha = icmp samesign ult i64 %i.gu, %i.gz      ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.229 = select i1 %i.ha, i64 %i.gc, i64 %i.gg
  %.230 = select i1 %i.ha, i64 %i.gd, i64 %i.gh
  call void @_ZNSt6vectorIbSaIbEE9push_backEb(ptr noundef nonnull align 8 dereferenceable(40) %i.hb, i1 noundef zeroext %i.ha)
  %i.hc = trunc i64 %.229 to i32
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.hc, ptr %i.hd, align 8, !tbaa !96
  %i.he = trunc i64 %.230 to i32
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.he, ptr %i.hf, align 4, !tbaa !96
  br label %.thread198

.thread198:                                       ; preds = %_ZN5draco7IntSqrtEm.exit, %bb.j, %bb.i, %bb.h
  %.352.ph = phi i1 [ true, %_ZN5draco7IntSqrtEm.exit ], [ false, %bb.j ], [ false, %bb.i ], [ false, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %.loopexit

bb.l:                                             ; preds = %_ZNK5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit72
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZNKSt6vectorIiSaIiEE2atEm.exit63
  br i1 %i.al, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.hg = shl nsw i32 %i.ah, 1
  br label %.loopexit.loopexit

bb.o:                                             ; preds = %bb.m
  %i.hh = icmp sgt i32 %3, 0
  br i1 %i.hh, label %bb.p, label %.preheader

.preheader:                                       ; preds = %bb.o
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.hi, align 8
  br label %.loopexit

bb.p:                                             ; preds = %bb.o
  %i.hj = shl nuw i32 %3, 1
  %i.hk = add i32 %i.hj, -2
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.p, %bb.n
  %.047 = phi i32 [ %i.hg, %bb.n ], [ %i.hk, %bb.p ]
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hm = sext i32 %.047 to i64                   ; 2 uses
  %i.hn = getelementptr inbounds [4 x i8], ptr %2, i64 %i.hm
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !96
  store i32 %i.ho, ptr %i.hl, align 8, !tbaa !96
  %i.hp = getelementptr [4 x i8], ptr %2, i64 %i.hm
  %i.hq = getelementptr i8, ptr %i.hp, i64 4
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !96
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.hr, ptr %i.hs, align 4, !tbaa !96
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %.loopexit.loopexit, %.thread198, %.thread
  %.6 = phi i1 [ %.352.ph, %.thread198 ], [ true, %.thread ], [ true, %.loopexit.loopexit ], [ true, %.preheader ]
  ret i1 %.6
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5draco42MeshPredictionSchemeGeometricNormalEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(240) dereferenceable(240) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5draco42MeshPredictionSchemeGeometricNormalEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEEE, i64 16), ptr %0, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @_ZN5draco14RAnsBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.a) #17
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5draco23PredictionSchemeEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEEEE, i64 16), ptr %0, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !101  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZN5draco23PredictionSchemeEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !102
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #19, !inline_history !190
  br label %_ZN5draco23PredictionSchemeEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEEED2Ev.exit

_ZN5draco23PredictionSchemeEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEEED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5draco42MeshPredictionSchemeGeometricNormalEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(240) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5draco42MeshPredictionSchemeGeometricNormalEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEEE, i64 16), ptr %0, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @_ZN5draco14RAnsBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.a) #17, !inline_history !727
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5draco23PredictionSchemeEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEEEE, i64 16), ptr %0, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !101  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5draco42MeshPredictionSchemeGeometricNormalEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !102
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #19, !inline_history !728
  br label %_ZN5draco42MeshPredictionSchemeGeometricNormalEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEED2Ev.exit

_ZN5draco42MeshPredictionSchemeGeometricNormalEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 240) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK5draco42MeshPredictionSchemeGeometricNormalEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE19GetPredictionMethodEv(ptr noundef nonnull align 8 dereferenceable(240) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i32 6
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5draco42MeshPredictionSchemeGeometricNormalEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE13IsInitializedEv(ptr noundef nonnull align 8 dereferenceable(240) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !259
  %i.c = icmp ne ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp ne ptr %i.e, null
  %.0.i = select i1 %i.c, i1 %i.f, i1 false
  br i1 %.0.i, label %bb.b, label %_ZNK5draco24MeshPredictionSchemeDataINS_11CornerTableEE13IsInitializedEv.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !163
  %.not.i = icmp eq ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load ptr, ptr %i.i, align 8
  %.not1.i = icmp eq ptr %i.j, null
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.l = load ptr, ptr %i.k, align 8
  %.not2.i = icmp eq ptr %i.l, null
  %or.cond5.i = select i1 %or.cond.i, i1 true, i1 %.not2.i
end_hunk_1
