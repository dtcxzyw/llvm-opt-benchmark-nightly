Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/hash_xxhash?download=true
inline.NumInlined: 482
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 44
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 48
begin_hunk_0_@PHP_XXH3_64_Init:bb.a
  store i64 -7046029288634856825, ptr %i.db, align 8, !tbaa !43
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -4417276706812531889, ptr %i.dc, align 16, !tbaa !43
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1609587929392839161, ptr %i.dd, align 8, !tbaa !43
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -8796714831421723037, ptr %i.de, align 32, !tbaa !43
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 2246822519, ptr %i.df, align 8, !tbaa !43
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 2870177450012600261, ptr %i.dg, align 16, !tbaa !43
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 2654435761, ptr %i.dh, align 8, !tbaa !43
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i64 0, ptr %i.di, align 8, !tbaa !51
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 568
  store ptr %i.cq, ptr %i.dj, align 8, !tbaa !53
  %i.dk = add nsw i64 %.0.i, -64                  ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i64 %i.dk, ptr %i.dl, align 32, !tbaa !56
  %i.dm = lshr i64 %i.dk, 3
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i64 %i.dm, ptr %i.dn, align 8, !tbaa !57
  br label %_PHP_XXH3_Init.exit

XXH_INLINE_XXH3_64bits_reset_withSeed.exit:       ; preds = %bb.h, %zend_hash_str_find_deref.exit47.thread.i, %bb.a
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %i.do, i8 0, i64 24, i1 false)
  store i64 3266489917, ptr %0, align 64, !tbaa !43
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -7046029288634856825, ptr %i.dp, align 8, !tbaa !43
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -4417276706812531889, ptr %i.dq, align 16, !tbaa !43
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1609587929392839161, ptr %i.dr, align 8, !tbaa !43
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -8796714831421723037, ptr %i.ds, align 32, !tbaa !43
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 2246822519, ptr %i.dt, align 8, !tbaa !43
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 2870177450012600261, ptr %i.du, align 16, !tbaa !43
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 2654435761, ptr %i.dv, align 8, !tbaa !43
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i64 0, ptr %i.dw, align 8, !tbaa !51
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 568
  store ptr @XXH3_kSecret, ptr %i.dx, align 8, !tbaa !53
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i64 128, ptr %i.dy, align 32, !tbaa !56
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i64 16, ptr %i.dz, align 8, !tbaa !57
  br label %_PHP_XXH3_Init.exit

_PHP_XXH3_Init.exit:                              ; preds = %bb.g, %XXH_INLINE_XXH3_64bits_reset_withSeed.exit6, %zval_try_get_string.exit.i, %zend_string_release.exit52.i, %XXH_INLINE_XXH3_64bits_reset_withSecret.exit, %XXH_INLINE_XXH3_64bits_reset_withSeed.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local void @PHP_XXH3_64_Update(ptr nofree noundef %0, ptr noundef %1, i64 noundef %2) #7 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %XXH_INLINE_XXH3_64bits_update.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !53, !alias.scope !63, !noalias !66 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = select i1 %i.e, ptr %i.f, ptr %i.d       ; 12 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.i = load i64, ptr %i.h, align 16, !tbaa !68, !alias.scope !63, !noalias !66
  %i.j = add i64 %i.i, %2
  store i64 %i.j, ptr %i.h, align 16, !tbaa !68, !alias.scope !63, !noalias !66
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 4 uses
  %i.l = load i32, ptr %i.k, align 64, !tbaa !69, !alias.scope !63, !noalias !66 ; 3 uses
  %i.m = zext i32 %i.l to i64                     ; 3 uses
  %i.n = add i64 %2, %i.m
  %i.o = icmp ult i64 %i.n, 257
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %i.r = trunc i64 %2 to i32
  %i.s = load i32, ptr %i.k, align 64, !tbaa !69, !alias.scope !63, !noalias !66
  %i.t = add i32 %i.s, %i.r
  br label %bb.q

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %._crit_edge127.i, label %bb.e

._crit_edge127.i:                                 ; preds = %bb.d
  %.phi.trans.insert128.i = getelementptr inbounds nuw i8, ptr %0, i64 536
  %.pre129.i = load i64, ptr %.phi.trans.insert128.i, align 8, !tbaa !57, !alias.scope !63, !noalias !66
  br label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.u = sub i32 256, %i.l
  %i.v = zext i32 %i.u to i64                     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.x, ptr nonnull readonly align 1 %1, i64 %i.v, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %i.v
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !57, !alias.scope !63, !noalias !66 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ad = load i64, ptr %i.ac, align 32, !tbaa !56, !alias.scope !63, !noalias !66
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  %i.ae = load i64, ptr %i.z, align 8, !tbaa !43, !alias.scope !73, !noalias !75 ; 5 uses
  %i.af = sub i64 %i.ab, %i.ae                    ; 5 uses
  %.not.i6.i = icmp ugt i64 %i.af, 4
  br i1 %.not.i6.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = sub nuw nsw i64 4, %i.af                ; 2 uses
  %i.ah = shl i64 %i.ae, 3
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ah
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %.not.i = icmp eq i64 %i.ab, %i.ae
  %.pre114.i = load <2 x i64>, ptr %0, align 64, !tbaa !12, !noalias !73 ; 2 uses
  %.phi.trans.insert115.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.pre.i = load <2 x i64>, ptr %.phi.trans.insert115.i, align 16, !tbaa !12, !noalias !73 ; 2 uses
  %.phi.trans.insert116.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %.pre117.i = load <2 x i64>, ptr %.phi.trans.insert116.i, align 32, !tbaa !12, !noalias !73 ; 2 uses
  %.phi.trans.insert118.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %.pre119.i = load <2 x i64>, ptr %.phi.trans.insert118.i, align 16, !tbaa !12, !noalias !73 ; 2 uses
  br i1 %.not.i, label %XXH3_accumulate.exit20.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.aj = phi <2 x i64> [ %i.cp, %.lr.ph.i ], [ %.pre119.i, %bb.f ]
  %i.ak = phi <2 x i64> [ %i.cc, %.lr.ph.i ], [ %.pre117.i, %bb.f ]
  %i.al = phi <2 x i64> [ %i.bp, %.lr.ph.i ], [ %.pre.i, %bb.f ]
  %i.am = phi <2 x i64> [ %i.bc, %.lr.ph.i ], [ %.pre114.i, %bb.f ]
  %.0.i1746.i = phi i64 [ %i.cq, %.lr.ph.i ], [ 0, %bb.f ] ; 3 uses
  %i.an = shl nuw nsw i64 %.0.i1746.i, 6
  %i.ao = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.an ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ap, i32 0, i32 3, i32 1), !noalias !81
  %i.aq = shl nuw nsw i64 %.0.i1746.i, 3
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aq ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82), !noalias !73
  %i.as = load <2 x i64>, ptr %i.ao, align 1, !tbaa !12, !noalias !85 ; 2 uses
  %i.at = load <2 x i64>, ptr %i.ar, align 1, !tbaa !12, !noalias !85
  %i.au = xor <2 x i64> %i.at, %i.as              ; 2 uses
  %i.av = bitcast <2 x i64> %i.au to <4 x i32>
  %i.aw = and <2 x i64> %i.au, splat (i64 4294967295)
  %i.ax = and <4 x i32> %i.av, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner = shufflevector <4 x i32> %i.ax, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.ay = bitcast <4 x i32> %.inner to <2 x i64>
  %i.az = mul nuw <2 x i64> %i.aw, %i.ay
  %i.ba = shufflevector <2 x i64> %i.as, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.bb = add <2 x i64> %i.am, %i.ba
  %i.bc = add <2 x i64> %i.bb, %i.az              ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.be = load <2 x i64>, ptr %i.bd, align 1, !tbaa !12, !noalias !85 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.bg = load <2 x i64>, ptr %i.bf, align 1, !tbaa !12, !noalias !85
  %i.bh = xor <2 x i64> %i.bg, %i.be              ; 2 uses
  %i.bi = bitcast <2 x i64> %i.bh to <4 x i32>
  %i.bj = and <2 x i64> %i.bh, splat (i64 4294967295)
  %i.bk = and <4 x i32> %i.bi, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner183 = shufflevector <4 x i32> %i.bk, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.bl = bitcast <4 x i32> %.inner183 to <2 x i64>
  %i.bm = mul nuw <2 x i64> %i.bj, %i.bl
  %i.bn = shufflevector <2 x i64> %i.be, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.bo = add <2 x i64> %i.al, %i.bn
  %i.bp = add <2 x i64> %i.bo, %i.bm              ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.br = load <2 x i64>, ptr %i.bq, align 1, !tbaa !12, !noalias !85 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.bt = load <2 x i64>, ptr %i.bs, align 1, !tbaa !12, !noalias !85
  %i.bu = xor <2 x i64> %i.bt, %i.br              ; 2 uses
  %i.bv = bitcast <2 x i64> %i.bu to <4 x i32>
  %i.bw = and <2 x i64> %i.bu, splat (i64 4294967295)
  %i.bx = and <4 x i32> %i.bv, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner184 = shufflevector <4 x i32> %i.bx, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.by = bitcast <4 x i32> %.inner184 to <2 x i64>
  %i.bz = mul nuw <2 x i64> %i.bw, %i.by
  %i.ca = shufflevector <2 x i64> %i.br, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.cb = add <2 x i64> %i.ak, %i.ca
  %i.cc = add <2 x i64> %i.cb, %i.bz              ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.ce = load <2 x i64>, ptr %i.cd, align 1, !tbaa !12, !noalias !85 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %i.cg = load <2 x i64>, ptr %i.cf, align 1, !tbaa !12, !noalias !85
  %i.ch = xor <2 x i64> %i.cg, %i.ce              ; 2 uses
  %i.ci = bitcast <2 x i64> %i.ch to <4 x i32>
  %i.cj = and <2 x i64> %i.ch, splat (i64 4294967295)
  %i.ck = and <4 x i32> %i.ci, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner185 = shufflevector <4 x i32> %i.ck, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.cl = bitcast <4 x i32> %.inner185 to <2 x i64>
  %i.cm = mul nuw <2 x i64> %i.cj, %i.cl
  %i.cn = shufflevector <2 x i64> %i.ce, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.co = add <2 x i64> %i.aj, %i.cn
  %i.cp = add <2 x i64> %i.co, %i.cm              ; 3 uses
  %i.cq = add nuw nsw i64 %.0.i1746.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cq, %i.af
  br i1 %exitcond.not.i, label %XXH3_accumulate.exit20.loopexit.i, label %.lr.ph.i, !llvm.loop !86

XXH3_accumulate.exit20.loopexit.i:                ; preds = %.lr.ph.i
  store <2 x i64> %i.bc, ptr %0, align 64, !tbaa !12, !alias.scope !87, !noalias !88
  store <2 x i64> %i.bp, ptr %.phi.trans.insert115.i, align 16, !tbaa !12, !alias.scope !87, !noalias !88
  store <2 x i64> %i.cc, ptr %.phi.trans.insert116.i, align 32, !tbaa !12, !alias.scope !87, !noalias !88
  store <2 x i64> %i.cp, ptr %.phi.trans.insert118.i, align 16, !tbaa !12, !alias.scope !87, !noalias !88
  br label %XXH3_accumulate.exit20.i

XXH3_accumulate.exit20.i:                         ; preds = %XXH3_accumulate.exit20.loopexit.i, %bb.f
  %i.cr = phi <2 x i64> [ %i.cp, %XXH3_accumulate.exit20.loopexit.i ], [ %.pre119.i, %bb.f ] ; 2 uses
  %i.cs = phi <2 x i64> [ %i.cc, %XXH3_accumulate.exit20.loopexit.i ], [ %.pre117.i, %bb.f ] ; 2 uses
  %i.ct = phi <2 x i64> [ %i.bp, %XXH3_accumulate.exit20.loopexit.i ], [ %.pre.i, %bb.f ] ; 2 uses
  %i.cu = phi <2 x i64> [ %i.bc, %XXH3_accumulate.exit20.loopexit.i ], [ %.pre114.i, %bb.f ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ad ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93)
  %i.cw = lshr <2 x i64> %i.cu, splat (i64 47)
  %i.cx = load <2 x i64>, ptr %i.cv, align 1, !tbaa !12, !noalias !96
  %i.cy = xor <2 x i64> %i.cw, %i.cx
  %i.cz = xor <2 x i64> %i.cy, %i.cu              ; 2 uses
  %i.da = bitcast <2 x i64> %i.cz to <4 x i32>
  %i.db = shufflevector <4 x i32> %i.da, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.dc = bitcast <4 x i32> %i.db to <2 x i64>
  %i.dd = and <2 x i64> %i.cz, splat (i64 4294967295)
  %i.de = mul nuw <2 x i64> %i.dd, splat (i64 2654435761)
  %i.df = mul <2 x i64> %i.dc, splat (i64 -7046029290881679360)
  %i.dg = add <2 x i64> %i.df, %i.de              ; 2 uses
  store <2 x i64> %i.dg, ptr %0, align 64, !tbaa !12, !alias.scope !97, !noalias !98
  %i.dh = lshr <2 x i64> %i.ct, splat (i64 47)
  %i.di = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.dj = load <2 x i64>, ptr %i.di, align 1, !tbaa !12, !noalias !96
  %i.dk = xor <2 x i64> %i.dh, %i.dj
  %i.dl = xor <2 x i64> %i.dk, %i.ct              ; 2 uses
  %i.dm = bitcast <2 x i64> %i.dl to <4 x i32>
  %i.dn = shufflevector <4 x i32> %i.dm, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.do = bitcast <4 x i32> %i.dn to <2 x i64>
  %i.dp = and <2 x i64> %i.dl, splat (i64 4294967295)
  %i.dq = mul nuw <2 x i64> %i.dp, splat (i64 2654435761)
  %i.dr = mul <2 x i64> %i.do, splat (i64 -7046029290881679360)
  %i.ds = add <2 x i64> %i.dr, %i.dq              ; 2 uses
  store <2 x i64> %i.ds, ptr %.phi.trans.insert115.i, align 16, !tbaa !12, !alias.scope !97, !noalias !98
  %i.dt = lshr <2 x i64> %i.cs, splat (i64 47)
  %i.du = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  %i.dv = load <2 x i64>, ptr %i.du, align 1, !tbaa !12, !noalias !96
  %i.dw = xor <2 x i64> %i.dt, %i.dv
  %i.dx = xor <2 x i64> %i.dw, %i.cs              ; 2 uses
  %i.dy = bitcast <2 x i64> %i.dx to <4 x i32>
  %i.dz = shufflevector <4 x i32> %i.dy, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.ea = bitcast <4 x i32> %i.dz to <2 x i64>
  %i.eb = and <2 x i64> %i.dx, splat (i64 4294967295)
  %i.ec = mul nuw <2 x i64> %i.eb, splat (i64 2654435761)
  %i.ed = mul <2 x i64> %i.ea, splat (i64 -7046029290881679360)
  %i.ee = add <2 x i64> %i.ed, %i.ec              ; 2 uses
  store <2 x i64> %i.ee, ptr %.phi.trans.insert116.i, align 32, !tbaa !12, !alias.scope !97, !noalias !98
  %i.ef = lshr <2 x i64> %i.cr, splat (i64 47)
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cv, i64 48
  %i.eh = load <2 x i64>, ptr %i.eg, align 1, !tbaa !12, !noalias !96
  %i.ei = xor <2 x i64> %i.ef, %i.eh
  %i.ej = xor <2 x i64> %i.ei, %i.cr              ; 2 uses
  %i.ek = bitcast <2 x i64> %i.ej to <4 x i32>
  %i.el = shufflevector <4 x i32> %i.ek, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.em = bitcast <4 x i32> %i.el to <2 x i64>
  %i.en = and <2 x i64> %i.ej, splat (i64 4294967295)
  %i.eo = mul nuw <2 x i64> %i.en, splat (i64 2654435761)
  %i.ep = mul <2 x i64> %i.em, splat (i64 -7046029290881679360)
  %i.eq = add <2 x i64> %i.ep, %i.eo              ; 2 uses
  store <2 x i64> %i.eq, ptr %.phi.trans.insert118.i, align 16, !tbaa !12, !alias.scope !97, !noalias !98
  %i.er = shl nuw nsw i64 %i.af, 6
  %i.es = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.er
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100)
  %.not80.i = icmp eq i64 %i.af, 4
  br i1 %.not80.i, label %XXH3_consumeStripes.exit10.i, label %.lr.ph50.i

.lr.ph50.i:                                       ; preds = %XXH3_accumulate.exit20.i, %.lr.ph50.i
  %i.et = phi <2 x i64> [ %i.gz, %.lr.ph50.i ], [ %i.eq, %XXH3_accumulate.exit20.i ]
  %i.eu = phi <2 x i64> [ %i.gm, %.lr.ph50.i ], [ %i.ee, %XXH3_accumulate.exit20.i ]
  %i.ev = phi <2 x i64> [ %i.fz, %.lr.ph50.i ], [ %i.ds, %XXH3_accumulate.exit20.i ]
  %i.ew = phi <2 x i64> [ %i.fm, %.lr.ph50.i ], [ %i.dg, %XXH3_accumulate.exit20.i ]
  %.0.i1349.i = phi i64 [ %i.ha, %.lr.ph50.i ], [ 0, %XXH3_accumulate.exit20.i ] ; 3 uses
  %i.ex = shl nuw nsw i64 %.0.i1349.i, 6
  %i.ey = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.ex ; 5 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ez, i32 0, i32 3, i32 1), !noalias !103
  %i.fa = shl nuw nsw i64 %.0.i1349.i, 3
  %i.fb = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.fa ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104), !noalias !73
  %i.fc = load <2 x i64>, ptr %i.ey, align 1, !tbaa !12, !noalias !107 ; 2 uses
  %i.fd = load <2 x i64>, ptr %i.fb, align 1, !tbaa !12, !noalias !107
  %i.fe = xor <2 x i64> %i.fd, %i.fc              ; 2 uses
  %i.ff = bitcast <2 x i64> %i.fe to <4 x i32>
  %i.fg = and <2 x i64> %i.fe, splat (i64 4294967295)
  %i.fh = and <4 x i32> %i.ff, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner186 = shufflevector <4 x i32> %i.fh, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.fi = bitcast <4 x i32> %.inner186 to <2 x i64>
  %i.fj = mul nuw <2 x i64> %i.fg, %i.fi
  %i.fk = shufflevector <2 x i64> %i.fc, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.fl = add <2 x i64> %i.ew, %i.fk
  %i.fm = add <2 x i64> %i.fl, %i.fj              ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fo = load <2 x i64>, ptr %i.fn, align 1, !tbaa !12, !noalias !107 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fq = load <2 x i64>, ptr %i.fp, align 1, !tbaa !12, !noalias !107
  %i.fr = xor <2 x i64> %i.fq, %i.fo              ; 2 uses
  %i.fs = bitcast <2 x i64> %i.fr to <4 x i32>
  %i.ft = and <2 x i64> %i.fr, splat (i64 4294967295)
  %i.fu = and <4 x i32> %i.fs, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner187 = shufflevector <4 x i32> %i.fu, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.fv = bitcast <4 x i32> %.inner187 to <2 x i64>
  %i.fw = mul nuw <2 x i64> %i.ft, %i.fv
  %i.fx = shufflevector <2 x i64> %i.fo, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.fy = add <2 x i64> %i.ev, %i.fx
  %i.fz = add <2 x i64> %i.fy, %i.fw              ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ey, i64 32
  %i.gb = load <2 x i64>, ptr %i.ga, align 1, !tbaa !12, !noalias !107 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fb, i64 32
  %i.gd = load <2 x i64>, ptr %i.gc, align 1, !tbaa !12, !noalias !107
  %i.ge = xor <2 x i64> %i.gd, %i.gb              ; 2 uses
  %i.gf = bitcast <2 x i64> %i.ge to <4 x i32>
  %i.gg = and <2 x i64> %i.ge, splat (i64 4294967295)
  %i.gh = and <4 x i32> %i.gf, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner188 = shufflevector <4 x i32> %i.gh, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.gi = bitcast <4 x i32> %.inner188 to <2 x i64>
  %i.gj = mul nuw <2 x i64> %i.gg, %i.gi
  %i.gk = shufflevector <2 x i64> %i.gb, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.gl = add <2 x i64> %i.eu, %i.gk
  %i.gm = add <2 x i64> %i.gl, %i.gj              ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ey, i64 48
  %i.go = load <2 x i64>, ptr %i.gn, align 1, !tbaa !12, !noalias !107 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fb, i64 48
  %i.gq = load <2 x i64>, ptr %i.gp, align 1, !tbaa !12, !noalias !107
  %i.gr = xor <2 x i64> %i.gq, %i.go              ; 2 uses
  %i.gs = bitcast <2 x i64> %i.gr to <4 x i32>
  %i.gt = and <2 x i64> %i.gr, splat (i64 4294967295)
  %i.gu = and <4 x i32> %i.gs, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner189 = shufflevector <4 x i32> %i.gu, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.gv = bitcast <4 x i32> %.inner189 to <2 x i64>
  %i.gw = mul nuw <2 x i64> %i.gt, %i.gv
  %i.gx = shufflevector <2 x i64> %i.go, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.gy = add <2 x i64> %i.et, %i.gx
  %i.gz = add <2 x i64> %i.gy, %i.gw              ; 2 uses
  %i.ha = add nuw i64 %.0.i1349.i, 1              ; 2 uses
  %exitcond90.not.i = icmp eq i64 %i.ha, %i.ag
  br i1 %exitcond90.not.i, label %XXH3_consumeStripes.exit10.loopexit.i, label %.lr.ph50.i, !llvm.loop !86

bb.g:                                             ; preds = %bb.e
  %i.hb = shl i64 %i.ae, 3
  %i.hc = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.hb
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108)
  %.pre120.i = load <2 x i64>, ptr %0, align 64, !tbaa !12, !alias.scope !111, !noalias !114
  %.phi.trans.insert121.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.pre122.i = load <2 x i64>, ptr %.phi.trans.insert121.i, align 16, !tbaa !12, !alias.scope !111, !noalias !114
  %.phi.trans.insert123.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.pre124.i = load <2 x i64>, ptr %.phi.trans.insert123.i, align 32, !tbaa !12, !alias.scope !111, !noalias !114
  %.phi.trans.insert125.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.pre126.i = load <2 x i64>, ptr %.phi.trans.insert125.i, align 16, !tbaa !12, !alias.scope !111, !noalias !114
  br label %XXH3_accumulate_512_sse2.exit.i.i

XXH3_accumulate_512_sse2.exit.i.i:                ; preds = %XXH3_accumulate_512_sse2.exit.i.i, %bb.g
  %i.hd = phi <2 x i64> [ %.pre126.i, %bb.g ], [ %i.jj, %XXH3_accumulate_512_sse2.exit.i.i ]
  %i.he = phi <2 x i64> [ %.pre124.i, %bb.g ], [ %i.iw, %XXH3_accumulate_512_sse2.exit.i.i ]
  %i.hf = phi <2 x i64> [ %.pre122.i, %bb.g ], [ %i.ij, %XXH3_accumulate_512_sse2.exit.i.i ]
  %i.hg = phi <2 x i64> [ %.pre120.i, %bb.g ], [ %i.hw, %XXH3_accumulate_512_sse2.exit.i.i ]
  %.0.i1152.i = phi i64 [ 0, %bb.g ], [ %i.jk, %XXH3_accumulate_512_sse2.exit.i.i ] ; 3 uses
  %i.hh = shl nuw nsw i64 %.0.i1152.i, 6
  %i.hi = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.hh ; 5 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.hj, i32 0, i32 3, i32 1), !noalias !119
  %i.hk = shl nuw nsw i64 %.0.i1152.i, 3
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hc, i64 %i.hk ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120), !noalias !73
  %i.hm = load <2 x i64>, ptr %i.hi, align 1, !tbaa !12, !noalias !121 ; 2 uses
  %i.hn = load <2 x i64>, ptr %i.hl, align 1, !tbaa !12, !noalias !121
  %i.ho = xor <2 x i64> %i.hn, %i.hm              ; 2 uses
  %i.hp = bitcast <2 x i64> %i.ho to <4 x i32>
  %i.hq = and <2 x i64> %i.ho, splat (i64 4294967295)
  %i.hr = and <4 x i32> %i.hp, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner190 = shufflevector <4 x i32> %i.hr, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.hs = bitcast <4 x i32> %.inner190 to <2 x i64>
  %i.ht = mul nuw <2 x i64> %i.hq, %i.hs
  %i.hu = shufflevector <2 x i64> %i.hm, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.hv = add <2 x i64> %i.hg, %i.hu
  %i.hw = add <2 x i64> %i.hv, %i.ht              ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  %i.hy = load <2 x i64>, ptr %i.hx, align 1, !tbaa !12, !noalias !121 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  %i.ia = load <2 x i64>, ptr %i.hz, align 1, !tbaa !12, !noalias !121
  %i.ib = xor <2 x i64> %i.ia, %i.hy              ; 2 uses
  %i.ic = bitcast <2 x i64> %i.ib to <4 x i32>
  %i.id = and <2 x i64> %i.ib, splat (i64 4294967295)
  %i.ie = and <4 x i32> %i.ic, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner191 = shufflevector <4 x i32> %i.ie, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.if = bitcast <4 x i32> %.inner191 to <2 x i64>
  %i.ig = mul nuw <2 x i64> %i.id, %i.if
  %i.ih = shufflevector <2 x i64> %i.hy, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.ii = add <2 x i64> %i.hf, %i.ih
  %i.ij = add <2 x i64> %i.ii, %i.ig              ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hi, i64 32
  %i.il = load <2 x i64>, ptr %i.ik, align 1, !tbaa !12, !noalias !121 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.hl, i64 32
end_hunk_0
begin_hunk_1_@PHP_XXH3_64_Update:bb.a
  %.1108.i.lcssa.i = phi ptr [ %i.om, %XXH3_accumulate.exit44.i ], [ %i.sw, %XXH3_accumulate.exit40.i ] ; 2 uses
  %.0106.i.lcssa.i = phi i64 [ %i.on, %XXH3_accumulate.exit44.i ], [ %i.sx, %XXH3_accumulate.exit40.i ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165)
  %.not85.i = icmp eq i64 %.0106.i.lcssa.i, 0
  br i1 %.not85.i, label %XXH3_accumulate.exit36.i, label %.lr.ph79.i

.lr.ph79.i:                                       ; preds = %._crit_edge.i, %.lr.ph79.i
  %i.tc = phi <2 x i64> [ %i.vi, %.lr.ph79.i ], [ %i.sy, %._crit_edge.i ]
  %i.td = phi <2 x i64> [ %i.uv, %.lr.ph79.i ], [ %i.sz, %._crit_edge.i ]
  %i.te = phi <2 x i64> [ %i.ui, %.lr.ph79.i ], [ %i.ta, %._crit_edge.i ]
  %i.tf = phi <2 x i64> [ %i.tv, %.lr.ph79.i ], [ %i.tb, %._crit_edge.i ]
  %.0.i3377.i = phi i64 [ %i.vj, %.lr.ph79.i ], [ 0, %._crit_edge.i ] ; 3 uses
  %i.tg = shl i64 %.0.i3377.i, 6
  %i.th = getelementptr inbounds nuw i8, ptr %.1108.i.lcssa.i, i64 %i.tg ; 5 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ti, i32 0, i32 3, i32 1), !noalias !165
  %i.tj = shl i64 %.0.i3377.i, 3
  %i.tk = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.tj ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168)
  %i.tl = load <2 x i64>, ptr %i.th, align 1, !tbaa !12, !noalias !171 ; 2 uses
  %i.tm = load <2 x i64>, ptr %i.tk, align 1, !tbaa !12, !noalias !171
  %i.tn = xor <2 x i64> %i.tm, %i.tl              ; 2 uses
  %i.to = bitcast <2 x i64> %i.tn to <4 x i32>
  %i.tp = and <2 x i64> %i.tn, splat (i64 4294967295)
  %i.tq = and <4 x i32> %i.to, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner202 = shufflevector <4 x i32> %i.tq, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.tr = bitcast <4 x i32> %.inner202 to <2 x i64>
  %i.ts = mul nuw <2 x i64> %i.tp, %i.tr
  %i.tt = shufflevector <2 x i64> %i.tl, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.tu = add <2 x i64> %i.tf, %i.tt
  %i.tv = add <2 x i64> %i.tu, %i.ts              ; 2 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %i.th, i64 16
  %i.tx = load <2 x i64>, ptr %i.tw, align 1, !tbaa !12, !noalias !171 ; 2 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tk, i64 16
  %i.tz = load <2 x i64>, ptr %i.ty, align 1, !tbaa !12, !noalias !171
  %i.ua = xor <2 x i64> %i.tz, %i.tx              ; 2 uses
  %i.ub = bitcast <2 x i64> %i.ua to <4 x i32>
  %i.uc = and <2 x i64> %i.ua, splat (i64 4294967295)
  %i.ud = and <4 x i32> %i.ub, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner203 = shufflevector <4 x i32> %i.ud, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.ue = bitcast <4 x i32> %.inner203 to <2 x i64>
  %i.uf = mul nuw <2 x i64> %i.uc, %i.ue
  %i.ug = shufflevector <2 x i64> %i.tx, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.uh = add <2 x i64> %i.te, %i.ug
  %i.ui = add <2 x i64> %i.uh, %i.uf              ; 2 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %i.th, i64 32
  %i.uk = load <2 x i64>, ptr %i.uj, align 1, !tbaa !12, !noalias !171 ; 2 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %i.tk, i64 32
  %i.um = load <2 x i64>, ptr %i.ul, align 1, !tbaa !12, !noalias !171
  %i.un = xor <2 x i64> %i.um, %i.uk              ; 2 uses
  %i.uo = bitcast <2 x i64> %i.un to <4 x i32>
  %i.up = and <2 x i64> %i.un, splat (i64 4294967295)
  %i.uq = and <4 x i32> %i.uo, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner204 = shufflevector <4 x i32> %i.uq, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.ur = bitcast <4 x i32> %.inner204 to <2 x i64>
  %i.us = mul nuw <2 x i64> %i.up, %i.ur
  %i.ut = shufflevector <2 x i64> %i.uk, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.uu = add <2 x i64> %i.td, %i.ut
  %i.uv = add <2 x i64> %i.uu, %i.us              ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %i.th, i64 48
  %i.ux = load <2 x i64>, ptr %i.uw, align 1, !tbaa !12, !noalias !171 ; 2 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %i.tk, i64 48
  %i.uz = load <2 x i64>, ptr %i.uy, align 1, !tbaa !12, !noalias !171
  %i.va = xor <2 x i64> %i.uz, %i.ux              ; 2 uses
  %i.vb = bitcast <2 x i64> %i.va to <4 x i32>
  %i.vc = and <2 x i64> %i.va, splat (i64 4294967295)
  %i.vd = and <4 x i32> %i.vb, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner205 = shufflevector <4 x i32> %i.vd, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.ve = bitcast <4 x i32> %.inner205 to <2 x i64>
  %i.vf = mul nuw <2 x i64> %i.vc, %i.ve
  %i.vg = shufflevector <2 x i64> %i.ux, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.vh = add <2 x i64> %i.tc, %i.vg
  %i.vi = add <2 x i64> %i.vh, %i.vf              ; 2 uses
  %i.vj = add nuw i64 %.0.i3377.i, 1              ; 2 uses
  %exitcond108.not.i = icmp eq i64 %i.vj, %.0106.i.lcssa.i
  br i1 %exitcond108.not.i, label %XXH3_accumulate.exit36.loopexit.i, label %.lr.ph79.i, !llvm.loop !86

XXH3_accumulate.exit36.loopexit.i:                ; preds = %.lr.ph79.i
  store <2 x i64> %i.tv, ptr %0, align 64, !tbaa !12, !alias.scope !171, !noalias !172
  store <2 x i64> %i.ui, ptr %.phi.trans.insert160.i, align 16, !tbaa !12, !alias.scope !171, !noalias !172
  store <2 x i64> %i.uv, ptr %.phi.trans.insert162.i, align 32, !tbaa !12, !alias.scope !171, !noalias !172
  store <2 x i64> %i.vi, ptr %.phi.trans.insert164.i, align 16, !tbaa !12, !alias.scope !171, !noalias !172
  br label %XXH3_accumulate.exit36.i

XXH3_accumulate.exit36.i:                         ; preds = %XXH3_accumulate.exit36.loopexit.i, %._crit_edge.i
  %i.vk = shl i64 %.0106.i.lcssa.i, 6
  %i.vl = getelementptr inbounds nuw i8, ptr %.1108.i.lcssa.i, i64 %i.vk ; 2 uses
  store i64 %.0106.i.lcssa.i, ptr %i.jw, align 8, !tbaa !128, !alias.scope !63, !noalias !66
  %i.vm = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.vn = getelementptr inbounds i8, ptr %i.vl, i64 -64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.vm, ptr noundef nonnull readonly align 1 dereferenceable(64) %i.vn, i64 64, i1 false)
  br label %bb.p

bb.j:                                             ; preds = %bb.h
  %i.vo = icmp sgt i64 %i.jp, 256
  br i1 %i.vo, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.vp = getelementptr inbounds i8, ptr %i.b, i64 -256
  %i.vq = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %0, i64 544
  %.promoted.i = load i64, ptr %i.vq, align 8, !tbaa !43, !alias.scope !177, !noalias !180
  %.pre130.i = load i64, ptr %i.vr, align 32, !tbaa !56, !alias.scope !63, !noalias !66
  %.phi.trans.insert132.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %.phi.trans.insert134.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %.phi.trans.insert136.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %i.g, i64 %.pre130.i ; 4 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 16
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vs, i64 32
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vs, i64 48
  br label %bb.l

bb.l:                                             ; preds = %XXH3_consumeStripes.exit.i, %bb.k
  %storemerge.i562.i = phi i64 [ %.promoted.i, %bb.k ], [ %storemerge.i5.i, %XXH3_consumeStripes.exit.i ] ; 5 uses
  %.2.i.i = phi ptr [ %.0107.i.i, %bb.k ], [ %i.aez, %XXH3_consumeStripes.exit.i ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  %i.vw = sub i64 %i.jm, %storemerge.i562.i       ; 5 uses
  %.not.i4.i = icmp ugt i64 %i.vw, 4
  br i1 %.not.i4.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.vx = sub nuw nsw i64 4, %i.vw                ; 2 uses
  %i.vy = shl i64 %storemerge.i562.i, 3
  %i.vz = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.vy
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185)
  %.not81.i = icmp eq i64 %i.jm, %storemerge.i562.i
  %.pre138.i = load <2 x i64>, ptr %0, align 64, !tbaa !12, !noalias !177 ; 2 uses
  %.pre140.i = load <2 x i64>, ptr %.phi.trans.insert132.i, align 16, !tbaa !12, !noalias !177 ; 2 uses
  %.pre142.i = load <2 x i64>, ptr %.phi.trans.insert134.i, align 32, !tbaa !12, !noalias !177 ; 2 uses
  %.pre144.i = load <2 x i64>, ptr %.phi.trans.insert136.i, align 16, !tbaa !12, !noalias !177 ; 2 uses
  br i1 %.not81.i, label %XXH3_accumulate.exit32.i, label %.lr.ph55.i

.lr.ph55.i:                                       ; preds = %bb.m, %.lr.ph55.i
  %i.wa = phi <2 x i64> [ %i.yg, %.lr.ph55.i ], [ %.pre144.i, %bb.m ]
  %i.wb = phi <2 x i64> [ %i.xt, %.lr.ph55.i ], [ %.pre142.i, %bb.m ]
  %i.wc = phi <2 x i64> [ %i.xg, %.lr.ph55.i ], [ %.pre140.i, %bb.m ]
  %i.wd = phi <2 x i64> [ %i.wt, %.lr.ph55.i ], [ %.pre138.i, %bb.m ]
  %.0.i2954.i = phi i64 [ %i.yh, %.lr.ph55.i ], [ 0, %bb.m ] ; 3 uses
  %i.we = shl nuw nsw i64 %.0.i2954.i, 6
  %i.wf = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 %i.we ; 5 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.wg, i32 0, i32 3, i32 1), !noalias !188
  %i.wh = shl nuw nsw i64 %.0.i2954.i, 3
  %i.wi = getelementptr inbounds nuw i8, ptr %i.vz, i64 %i.wh ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189), !noalias !177
  %i.wj = load <2 x i64>, ptr %i.wf, align 1, !tbaa !12, !noalias !192 ; 2 uses
  %i.wk = load <2 x i64>, ptr %i.wi, align 1, !tbaa !12, !noalias !192
  %i.wl = xor <2 x i64> %i.wk, %i.wj              ; 2 uses
  %i.wm = bitcast <2 x i64> %i.wl to <4 x i32>
  %i.wn = and <2 x i64> %i.wl, splat (i64 4294967295)
  %i.wo = and <4 x i32> %i.wm, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner206 = shufflevector <4 x i32> %i.wo, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.wp = bitcast <4 x i32> %.inner206 to <2 x i64>
  %i.wq = mul nuw <2 x i64> %i.wn, %i.wp
  %i.wr = shufflevector <2 x i64> %i.wj, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.ws = add <2 x i64> %i.wd, %i.wr
  %i.wt = add <2 x i64> %i.ws, %i.wq              ; 3 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wf, i64 16
  %i.wv = load <2 x i64>, ptr %i.wu, align 1, !tbaa !12, !noalias !192 ; 2 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wi, i64 16
  %i.wx = load <2 x i64>, ptr %i.ww, align 1, !tbaa !12, !noalias !192
  %i.wy = xor <2 x i64> %i.wx, %i.wv              ; 2 uses
  %i.wz = bitcast <2 x i64> %i.wy to <4 x i32>
  %i.xa = and <2 x i64> %i.wy, splat (i64 4294967295)
  %i.xb = and <4 x i32> %i.wz, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner207 = shufflevector <4 x i32> %i.xb, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.xc = bitcast <4 x i32> %.inner207 to <2 x i64>
  %i.xd = mul nuw <2 x i64> %i.xa, %i.xc
  %i.xe = shufflevector <2 x i64> %i.wv, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.xf = add <2 x i64> %i.wc, %i.xe
  %i.xg = add <2 x i64> %i.xf, %i.xd              ; 3 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %i.wf, i64 32
  %i.xi = load <2 x i64>, ptr %i.xh, align 1, !tbaa !12, !noalias !192 ; 2 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %i.wi, i64 32
  %i.xk = load <2 x i64>, ptr %i.xj, align 1, !tbaa !12, !noalias !192
  %i.xl = xor <2 x i64> %i.xk, %i.xi              ; 2 uses
  %i.xm = bitcast <2 x i64> %i.xl to <4 x i32>
  %i.xn = and <2 x i64> %i.xl, splat (i64 4294967295)
  %i.xo = and <4 x i32> %i.xm, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner208 = shufflevector <4 x i32> %i.xo, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.xp = bitcast <4 x i32> %.inner208 to <2 x i64>
  %i.xq = mul nuw <2 x i64> %i.xn, %i.xp
  %i.xr = shufflevector <2 x i64> %i.xi, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.xs = add <2 x i64> %i.wb, %i.xr
  %i.xt = add <2 x i64> %i.xs, %i.xq              ; 3 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %i.wf, i64 48
  %i.xv = load <2 x i64>, ptr %i.xu, align 1, !tbaa !12, !noalias !192 ; 2 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %i.wi, i64 48
  %i.xx = load <2 x i64>, ptr %i.xw, align 1, !tbaa !12, !noalias !192
  %i.xy = xor <2 x i64> %i.xx, %i.xv              ; 2 uses
  %i.xz = bitcast <2 x i64> %i.xy to <4 x i32>
  %i.ya = and <2 x i64> %i.xy, splat (i64 4294967295)
  %i.yb = and <4 x i32> %i.xz, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner209 = shufflevector <4 x i32> %i.yb, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.yc = bitcast <4 x i32> %.inner209 to <2 x i64>
  %i.yd = mul nuw <2 x i64> %i.ya, %i.yc
  %i.ye = shufflevector <2 x i64> %i.xv, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.yf = add <2 x i64> %i.wa, %i.ye
  %i.yg = add <2 x i64> %i.yf, %i.yd              ; 3 uses
  %i.yh = add nuw nsw i64 %.0.i2954.i, 1          ; 2 uses
  %exitcond94.not.i = icmp eq i64 %i.yh, %i.vw
  br i1 %exitcond94.not.i, label %XXH3_accumulate.exit32.loopexit.i, label %.lr.ph55.i, !llvm.loop !86

XXH3_accumulate.exit32.loopexit.i:                ; preds = %.lr.ph55.i
  store <2 x i64> %i.wt, ptr %0, align 64, !tbaa !12, !alias.scope !193, !noalias !194
  store <2 x i64> %i.xg, ptr %.phi.trans.insert132.i, align 16, !tbaa !12, !alias.scope !193, !noalias !194
  store <2 x i64> %i.xt, ptr %.phi.trans.insert134.i, align 32, !tbaa !12, !alias.scope !193, !noalias !194
  store <2 x i64> %i.yg, ptr %.phi.trans.insert136.i, align 16, !tbaa !12, !alias.scope !193, !noalias !194
  br label %XXH3_accumulate.exit32.i

XXH3_accumulate.exit32.i:                         ; preds = %bb.m, %XXH3_accumulate.exit32.loopexit.i
  %i.yi = phi <2 x i64> [ %i.yg, %XXH3_accumulate.exit32.loopexit.i ], [ %.pre144.i, %bb.m ] ; 2 uses
  %i.yj = phi <2 x i64> [ %i.xt, %XXH3_accumulate.exit32.loopexit.i ], [ %.pre142.i, %bb.m ] ; 2 uses
  %i.yk = phi <2 x i64> [ %i.xg, %XXH3_accumulate.exit32.loopexit.i ], [ %.pre140.i, %bb.m ] ; 2 uses
  %i.yl = phi <2 x i64> [ %i.wt, %XXH3_accumulate.exit32.loopexit.i ], [ %.pre138.i, %bb.m ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199)
  %i.ym = lshr <2 x i64> %i.yl, splat (i64 47)
  %i.yn = load <2 x i64>, ptr %i.vs, align 1, !tbaa !12, !noalias !202
  %i.yo = xor <2 x i64> %i.ym, %i.yn
  %i.yp = xor <2 x i64> %i.yo, %i.yl              ; 2 uses
  %i.yq = bitcast <2 x i64> %i.yp to <4 x i32>
  %i.yr = shufflevector <4 x i32> %i.yq, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.ys = bitcast <4 x i32> %i.yr to <2 x i64>
  %i.yt = and <2 x i64> %i.yp, splat (i64 4294967295)
  %i.yu = mul nuw <2 x i64> %i.yt, splat (i64 2654435761)
  %i.yv = mul <2 x i64> %i.ys, splat (i64 -7046029290881679360)
  %i.yw = add <2 x i64> %i.yv, %i.yu              ; 2 uses
  store <2 x i64> %i.yw, ptr %0, align 64, !tbaa !12, !alias.scope !203, !noalias !204
  %i.yx = lshr <2 x i64> %i.yk, splat (i64 47)
  %i.yy = load <2 x i64>, ptr %i.vt, align 1, !tbaa !12, !noalias !202
  %i.yz = xor <2 x i64> %i.yx, %i.yy
  %i.za = xor <2 x i64> %i.yz, %i.yk              ; 2 uses
  %i.zb = bitcast <2 x i64> %i.za to <4 x i32>
  %i.zc = shufflevector <4 x i32> %i.zb, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.zd = bitcast <4 x i32> %i.zc to <2 x i64>
  %i.ze = and <2 x i64> %i.za, splat (i64 4294967295)
  %i.zf = mul nuw <2 x i64> %i.ze, splat (i64 2654435761)
  %i.zg = mul <2 x i64> %i.zd, splat (i64 -7046029290881679360)
  %i.zh = add <2 x i64> %i.zg, %i.zf              ; 2 uses
  store <2 x i64> %i.zh, ptr %.phi.trans.insert132.i, align 16, !tbaa !12, !alias.scope !203, !noalias !204
  %i.zi = lshr <2 x i64> %i.yj, splat (i64 47)
  %i.zj = load <2 x i64>, ptr %i.vu, align 1, !tbaa !12, !noalias !202
  %i.zk = xor <2 x i64> %i.zi, %i.zj
  %i.zl = xor <2 x i64> %i.zk, %i.yj              ; 2 uses
  %i.zm = bitcast <2 x i64> %i.zl to <4 x i32>
  %i.zn = shufflevector <4 x i32> %i.zm, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.zo = bitcast <4 x i32> %i.zn to <2 x i64>
  %i.zp = and <2 x i64> %i.zl, splat (i64 4294967295)
  %i.zq = mul nuw <2 x i64> %i.zp, splat (i64 2654435761)
  %i.zr = mul <2 x i64> %i.zo, splat (i64 -7046029290881679360)
  %i.zs = add <2 x i64> %i.zr, %i.zq              ; 2 uses
  store <2 x i64> %i.zs, ptr %.phi.trans.insert134.i, align 32, !tbaa !12, !alias.scope !203, !noalias !204
  %i.zt = lshr <2 x i64> %i.yi, splat (i64 47)
  %i.zu = load <2 x i64>, ptr %i.vv, align 1, !tbaa !12, !noalias !202
  %i.zv = xor <2 x i64> %i.zt, %i.zu
  %i.zw = xor <2 x i64> %i.zv, %i.yi              ; 2 uses
  %i.zx = bitcast <2 x i64> %i.zw to <4 x i32>
  %i.zy = shufflevector <4 x i32> %i.zx, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.zz = bitcast <4 x i32> %i.zy to <2 x i64>
  %i.aaa = and <2 x i64> %i.zw, splat (i64 4294967295)
  %i.aab = mul nuw <2 x i64> %i.aaa, splat (i64 2654435761)
  %i.aac = mul <2 x i64> %i.zz, splat (i64 -7046029290881679360)
  %i.aad = add <2 x i64> %i.aac, %i.aab           ; 2 uses
  store <2 x i64> %i.aad, ptr %.phi.trans.insert136.i, align 16, !tbaa !12, !alias.scope !203, !noalias !204
  %i.aae = shl nuw nsw i64 %i.vw, 6
  %i.aaf = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 %i.aae
  tail call void @llvm.experimental.noalias.scope.decl(metadata !206)
  %.not82.i = icmp eq i64 %i.vw, 4
  br i1 %.not82.i, label %XXH3_consumeStripes.exit.i, label %.lr.ph59.i

.lr.ph59.i:                                       ; preds = %XXH3_accumulate.exit32.i, %.lr.ph59.i
  %i.aag = phi <2 x i64> [ %i.acm, %.lr.ph59.i ], [ %i.aad, %XXH3_accumulate.exit32.i ]
  %i.aah = phi <2 x i64> [ %i.abz, %.lr.ph59.i ], [ %i.zs, %XXH3_accumulate.exit32.i ]
  %i.aai = phi <2 x i64> [ %i.abm, %.lr.ph59.i ], [ %i.zh, %XXH3_accumulate.exit32.i ]
  %i.aaj = phi <2 x i64> [ %i.aaz, %.lr.ph59.i ], [ %i.yw, %XXH3_accumulate.exit32.i ]
  %.0.i2558.i = phi i64 [ %i.acn, %.lr.ph59.i ], [ 0, %XXH3_accumulate.exit32.i ] ; 3 uses
  %i.aak = shl nuw nsw i64 %.0.i2558.i, 6
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aaf, i64 %i.aak ; 5 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aal, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.aam, i32 0, i32 3, i32 1), !noalias !209
  %i.aan = shl nuw nsw i64 %.0.i2558.i, 3
  %i.aao = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.aan ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210), !noalias !177
  %i.aap = load <2 x i64>, ptr %i.aal, align 1, !tbaa !12, !noalias !213 ; 2 uses
  %i.aaq = load <2 x i64>, ptr %i.aao, align 1, !tbaa !12, !noalias !213
  %i.aar = xor <2 x i64> %i.aaq, %i.aap           ; 2 uses
  %i.aas = bitcast <2 x i64> %i.aar to <4 x i32>
  %i.aat = and <2 x i64> %i.aar, splat (i64 4294967295)
  %i.aau = and <4 x i32> %i.aas, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner210 = shufflevector <4 x i32> %i.aau, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.aav = bitcast <4 x i32> %.inner210 to <2 x i64>
  %i.aaw = mul nuw <2 x i64> %i.aat, %i.aav
  %i.aax = shufflevector <2 x i64> %i.aap, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.aay = add <2 x i64> %i.aaj, %i.aax
  %i.aaz = add <2 x i64> %i.aay, %i.aaw           ; 2 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aal, i64 16
  %i.abb = load <2 x i64>, ptr %i.aba, align 1, !tbaa !12, !noalias !213 ; 2 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aao, i64 16
  %i.abd = load <2 x i64>, ptr %i.abc, align 1, !tbaa !12, !noalias !213
  %i.abe = xor <2 x i64> %i.abd, %i.abb           ; 2 uses
  %i.abf = bitcast <2 x i64> %i.abe to <4 x i32>
  %i.abg = and <2 x i64> %i.abe, splat (i64 4294967295)
  %i.abh = and <4 x i32> %i.abf, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner211 = shufflevector <4 x i32> %i.abh, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.abi = bitcast <4 x i32> %.inner211 to <2 x i64>
  %i.abj = mul nuw <2 x i64> %i.abg, %i.abi
  %i.abk = shufflevector <2 x i64> %i.abb, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.abl = add <2 x i64> %i.aai, %i.abk
  %i.abm = add <2 x i64> %i.abl, %i.abj           ; 2 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %i.aal, i64 32
  %i.abo = load <2 x i64>, ptr %i.abn, align 1, !tbaa !12, !noalias !213 ; 2 uses
  %i.abp = getelementptr inbounds nuw i8, ptr %i.aao, i64 32
  %i.abq = load <2 x i64>, ptr %i.abp, align 1, !tbaa !12, !noalias !213
  %i.abr = xor <2 x i64> %i.abq, %i.abo           ; 2 uses
  %i.abs = bitcast <2 x i64> %i.abr to <4 x i32>
  %i.abt = and <2 x i64> %i.abr, splat (i64 4294967295)
  %i.abu = and <4 x i32> %i.abs, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner212 = shufflevector <4 x i32> %i.abu, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.abv = bitcast <4 x i32> %.inner212 to <2 x i64>
  %i.abw = mul nuw <2 x i64> %i.abt, %i.abv
  %i.abx = shufflevector <2 x i64> %i.abo, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.aby = add <2 x i64> %i.aah, %i.abx
  %i.abz = add <2 x i64> %i.aby, %i.abw           ; 2 uses
  %i.aca = getelementptr inbounds nuw i8, ptr %i.aal, i64 48
  %i.acb = load <2 x i64>, ptr %i.aca, align 1, !tbaa !12, !noalias !213 ; 2 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %i.aao, i64 48
  %i.acd = load <2 x i64>, ptr %i.acc, align 1, !tbaa !12, !noalias !213
  %i.ace = xor <2 x i64> %i.acd, %i.acb           ; 2 uses
  %i.acf = bitcast <2 x i64> %i.ace to <4 x i32>
  %i.acg = and <2 x i64> %i.ace, splat (i64 4294967295)
  %i.ach = and <4 x i32> %i.acf, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner213 = shufflevector <4 x i32> %i.ach, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.aci = bitcast <4 x i32> %.inner213 to <2 x i64>
  %i.acj = mul nuw <2 x i64> %i.acg, %i.aci
  %i.ack = shufflevector <2 x i64> %i.acb, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.acl = add <2 x i64> %i.aag, %i.ack
  %i.acm = add <2 x i64> %i.acl, %i.acj           ; 2 uses
  %i.acn = add nuw i64 %.0.i2558.i, 1             ; 2 uses
  %exitcond98.not.i = icmp eq i64 %i.acn, %i.vx
  br i1 %exitcond98.not.i, label %XXH3_consumeStripes.exit.loopexit.i, label %.lr.ph59.i, !llvm.loop !86

bb.n:                                             ; preds = %bb.l
  %i.aco = shl i64 %storemerge.i562.i, 3
  %i.acp = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.aco
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214)
  %.pre145.i = load <2 x i64>, ptr %0, align 64, !tbaa !12, !alias.scope !217, !noalias !220
  %.pre147.i = load <2 x i64>, ptr %.phi.trans.insert132.i, align 16, !tbaa !12, !alias.scope !217, !noalias !220
  %.pre149.i = load <2 x i64>, ptr %.phi.trans.insert134.i, align 32, !tbaa !12, !alias.scope !217, !noalias !220
  %.pre151.i = load <2 x i64>, ptr %.phi.trans.insert136.i, align 16, !tbaa !12, !alias.scope !217, !noalias !220
  br label %XXH3_accumulate_512_sse2.exit.i23.i

XXH3_accumulate_512_sse2.exit.i23.i:              ; preds = %XXH3_accumulate_512_sse2.exit.i23.i, %bb.n
  %i.acq = phi <2 x i64> [ %.pre151.i, %bb.n ], [ %i.aew, %XXH3_accumulate_512_sse2.exit.i23.i ]
  %i.acr = phi <2 x i64> [ %.pre149.i, %bb.n ], [ %i.aej, %XXH3_accumulate_512_sse2.exit.i23.i ]
  %i.acs = phi <2 x i64> [ %.pre147.i, %bb.n ], [ %i.adw, %XXH3_accumulate_512_sse2.exit.i23.i ]
  %i.act = phi <2 x i64> [ %.pre145.i, %bb.n ], [ %i.adj, %XXH3_accumulate_512_sse2.exit.i23.i ]
  %.0.i2161.i = phi i64 [ 0, %bb.n ], [ %i.aex, %XXH3_accumulate_512_sse2.exit.i23.i ] ; 3 uses
  %i.acu = shl nuw nsw i64 %.0.i2161.i, 6
  %i.acv = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 %i.acu ; 5 uses
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acv, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.acw, i32 0, i32 3, i32 1), !noalias !225
  %i.acx = shl nuw nsw i64 %.0.i2161.i, 3
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acp, i64 %i.acx ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !226), !noalias !177
  %i.acz = load <2 x i64>, ptr %i.acv, align 1, !tbaa !12, !noalias !227 ; 2 uses
  %i.ada = load <2 x i64>, ptr %i.acy, align 1, !tbaa !12, !noalias !227
  %i.adb = xor <2 x i64> %i.ada, %i.acz           ; 2 uses
  %i.adc = bitcast <2 x i64> %i.adb to <4 x i32>
  %i.add = and <2 x i64> %i.adb, splat (i64 4294967295)
  %i.ade = and <4 x i32> %i.adc, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner214 = shufflevector <4 x i32> %i.ade, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.adf = bitcast <4 x i32> %.inner214 to <2 x i64>
  %i.adg = mul nuw <2 x i64> %i.add, %i.adf
  %i.adh = shufflevector <2 x i64> %i.acz, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.adi = add <2 x i64> %i.act, %i.adh
  %i.adj = add <2 x i64> %i.adi, %i.adg           ; 2 uses
  %i.adk = getelementptr inbounds nuw i8, ptr %i.acv, i64 16
  %i.adl = load <2 x i64>, ptr %i.adk, align 1, !tbaa !12, !noalias !227 ; 2 uses
  %i.adm = getelementptr inbounds nuw i8, ptr %i.acy, i64 16
  %i.adn = load <2 x i64>, ptr %i.adm, align 1, !tbaa !12, !noalias !227
  %i.ado = xor <2 x i64> %i.adn, %i.adl           ; 2 uses
  %i.adp = bitcast <2 x i64> %i.ado to <4 x i32>
  %i.adq = and <2 x i64> %i.ado, splat (i64 4294967295)
  %i.adr = and <4 x i32> %i.adp, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner215 = shufflevector <4 x i32> %i.adr, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.ads = bitcast <4 x i32> %.inner215 to <2 x i64>
  %i.adt = mul nuw <2 x i64> %i.adq, %i.ads
  %i.adu = shufflevector <2 x i64> %i.adl, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.adv = add <2 x i64> %i.acs, %i.adu
  %i.adw = add <2 x i64> %i.adv, %i.adt           ; 2 uses
  %i.adx = getelementptr inbounds nuw i8, ptr %i.acv, i64 32
  %i.ady = load <2 x i64>, ptr %i.adx, align 1, !tbaa !12, !noalias !227 ; 2 uses
  %i.adz = getelementptr inbounds nuw i8, ptr %i.acy, i64 32
  %i.aea = load <2 x i64>, ptr %i.adz, align 1, !tbaa !12, !noalias !227
  %i.aeb = xor <2 x i64> %i.aea, %i.ady           ; 2 uses
  %i.aec = bitcast <2 x i64> %i.aeb to <4 x i32>
  %i.aed = and <2 x i64> %i.aeb, splat (i64 4294967295)
  %i.aee = and <4 x i32> %i.aec, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner216 = shufflevector <4 x i32> %i.aee, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.aef = bitcast <4 x i32> %.inner216 to <2 x i64>
  %i.aeg = mul nuw <2 x i64> %i.aed, %i.aef
  %i.aeh = shufflevector <2 x i64> %i.ady, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.aei = add <2 x i64> %i.acr, %i.aeh
  %i.aej = add <2 x i64> %i.aei, %i.aeg           ; 2 uses
  %i.aek = getelementptr inbounds nuw i8, ptr %i.acv, i64 48
  %i.ael = load <2 x i64>, ptr %i.aek, align 1, !tbaa !12, !noalias !227 ; 2 uses
  %i.aem = getelementptr inbounds nuw i8, ptr %i.acy, i64 48
  %i.aen = load <2 x i64>, ptr %i.aem, align 1, !tbaa !12, !noalias !227
  %i.aeo = xor <2 x i64> %i.aen, %i.ael           ; 2 uses
  %i.aep = bitcast <2 x i64> %i.aeo to <4 x i32>
  %i.aeq = and <2 x i64> %i.aeo, splat (i64 4294967295)
  %i.aer = and <4 x i32> %i.aep, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner217 = shufflevector <4 x i32> %i.aer, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.aes = bitcast <4 x i32> %.inner217 to <2 x i64>
  %i.aet = mul nuw <2 x i64> %i.aeq, %i.aes
  %i.aeu = shufflevector <2 x i64> %i.ael, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.aev = add <2 x i64> %i.acq, %i.aeu
  %i.aew = add <2 x i64> %i.aev, %i.aet           ; 2 uses
  %i.aex = add nuw nsw i64 %.0.i2161.i, 1         ; 2 uses
  %exitcond100.not.i = icmp eq i64 %i.aex, 4
  br i1 %exitcond100.not.i, label %XXH3_accumulate.exit24.i, label %XXH3_accumulate_512_sse2.exit.i23.i, !llvm.loop !86

XXH3_accumulate.exit24.i:                         ; preds = %XXH3_accumulate_512_sse2.exit.i23.i
  store <2 x i64> %i.adj, ptr %0, align 64, !tbaa !12, !alias.scope !217, !noalias !220
  store <2 x i64> %i.adw, ptr %.phi.trans.insert132.i, align 16, !tbaa !12, !alias.scope !217, !noalias !220
  store <2 x i64> %i.aej, ptr %.phi.trans.insert134.i, align 32, !tbaa !12, !alias.scope !217, !noalias !220
  store <2 x i64> %i.aew, ptr %.phi.trans.insert136.i, align 16, !tbaa !12, !alias.scope !217, !noalias !220
  %i.aey = add i64 %storemerge.i562.i, 4
  br label %XXH3_consumeStripes.exit.i

XXH3_consumeStripes.exit.loopexit.i:              ; preds = %.lr.ph59.i
  store <2 x i64> %i.aaz, ptr %0, align 64, !tbaa !12, !alias.scope !228, !noalias !229
  store <2 x i64> %i.abm, ptr %.phi.trans.insert132.i, align 16, !tbaa !12, !alias.scope !228, !noalias !229
  store <2 x i64> %i.abz, ptr %.phi.trans.insert134.i, align 32, !tbaa !12, !alias.scope !228, !noalias !229
  store <2 x i64> %i.acm, ptr %.phi.trans.insert136.i, align 16, !tbaa !12, !alias.scope !228, !noalias !229
  br label %XXH3_consumeStripes.exit.i

XXH3_consumeStripes.exit.i:                       ; preds = %XXH3_consumeStripes.exit.loopexit.i, %XXH3_accumulate.exit24.i, %XXH3_accumulate.exit32.i
  %storemerge.i5.i = phi i64 [ %i.aey, %XXH3_accumulate.exit24.i ], [ 0, %XXH3_accumulate.exit32.i ], [ %i.vx, %XXH3_consumeStripes.exit.loopexit.i ] ; 2 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 256 ; 3 uses
  %i.afa = icmp ult ptr %i.aez, %i.vp
  br i1 %i.afa, label %bb.l, label %bb.o, !llvm.loop !234

bb.o:                                             ; preds = %XXH3_consumeStripes.exit.i
  store i64 %storemerge.i5.i, ptr %i.vq, align 8, !tbaa !43, !alias.scope !177, !noalias !180
  %i.afb = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.afc = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 192
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.afb, ptr noundef nonnull readonly align 1 dereferenceable(64) %i.afc, i64 64, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.j, %XXH3_accumulate.exit36.i
  %.3.i.i = phi ptr [ %i.vl, %XXH3_accumulate.exit36.i ], [ %i.aez, %bb.o ], [ %.0107.i.i, %bb.j ] ; 2 uses
  %i.afd = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.afe = ptrtoint ptr %.3.i.i to i64
  %i.aff = sub i64 %i.jn, %i.afe                  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.afd, ptr readonly align 1 %.3.i.i, i64 %i.aff, i1 false)
  %i.afg = trunc i64 %i.aff to i32
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.c
  %storemerge.i.i = phi i32 [ %i.afg, %bb.p ], [ %i.t, %bb.c ]
  store i32 %storemerge.i.i, ptr %i.k, align 64, !tbaa !69, !alias.scope !63, !noalias !66
  br label %XXH_INLINE_XXH3_64bits_update.exit

XXH_INLINE_XXH3_64bits_update.exit:               ; preds = %bb.a, %bb.q
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local void @PHP_XXH3_64_Final(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly %1) #7 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !53   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = select i1 %i.d, ptr %i.e, ptr %i.c       ; 34 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 528
  %i.h = load i64, ptr %i.g, align 16, !tbaa !68  ; 44 uses
  %i.i = icmp ugt i64 %i.h, 240
  br i1 %i.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load <2 x i64>, ptr %1, align 16 ; 5 uses
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.17.0.copyload.i = load <2 x i64>, ptr %.sroa.17.0..sroa_idx.i, align 16 ; 5 uses
  %.sroa.31.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.31.0.copyload.i = load <2 x i64>, ptr %.sroa.31.0..sroa_idx.i, align 16 ; 5 uses
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.45.0.copyload.i = load <2 x i64>, ptr %.sroa.45.0..sroa_idx.i, align 16 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 2 uses
  %i.k = load i32, ptr %i.j, align 64, !tbaa !69  ; 5 uses
  %i.l = icmp ugt i32 %i.k, 63
  br i1 %i.l, label %bb.c, label %XXH3_accumulate_512_sse2.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.m = add i32 %i.k, -1
  %i.n = lshr i32 %i.m, 6                         ; 2 uses
  %i.o = zext nneg i32 %i.n to i64                ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 520
  %i.q = load i64, ptr %i.p, align 8, !tbaa !128  ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 536
  %i.s = load i64, ptr %i.r, align 8, !tbaa !57   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 544
  %i.v = load i64, ptr %i.u, align 32, !tbaa !56  ; 2 uses
  %i.w = sub i64 %i.s, %i.q                       ; 5 uses
  %.not.i.i.i = icmp ugt i64 %i.w, %i.o
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = sub nuw nsw i64 %i.o, %i.w
  %i.y = shl i64 %i.q, 3
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.y
  %.not59.i = icmp eq i64 %i.s, %i.q
  br i1 %.not59.i, label %XXH3_accumulate.exit36.i.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.sroa.45.0.i = phi <2 x i64> [ %i.cc, %.lr.ph.i ], [ %.sroa.45.0.copyload.i, %bb.d ]
  %.sroa.31.0.i = phi <2 x i64> [ %i.bp, %.lr.ph.i ], [ %.sroa.31.0.copyload.i, %bb.d ]
  %.sroa.17.0.i = phi <2 x i64> [ %i.bc, %.lr.ph.i ], [ %.sroa.17.0.copyload.i, %bb.d ]
  %.sroa.0.0.i = phi <2 x i64> [ %i.ap, %.lr.ph.i ], [ %.sroa.0.0.copyload.i, %bb.d ]
  %.0.i33.i50.i = phi i64 [ %i.cd, %.lr.ph.i ], [ 0, %bb.d ] ; 3 uses
  %i.aa = shl nuw nsw i64 %.0.i33.i50.i, 6
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.aa ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %i.ac, i32 0, i32 3, i32 1), !noalias !235
  %i.ad = shl nuw nsw i64 %.0.i33.i50.i, 3
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ad ; 4 uses
  %i.af = load <2 x i64>, ptr %i.ab, align 1, !tbaa !12, !noalias !240 ; 2 uses
  %i.ag = load <2 x i64>, ptr %i.ae, align 1, !tbaa !12, !noalias !240
  %i.ah = xor <2 x i64> %i.ag, %i.af              ; 2 uses
  %i.ai = bitcast <2 x i64> %i.ah to <4 x i32>
  %i.aj = and <2 x i64> %i.ah, splat (i64 4294967295)
  %i.ak = and <4 x i32> %i.ai, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner = shufflevector <4 x i32> %i.ak, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.al = bitcast <4 x i32> %.inner to <2 x i64>
  %i.am = mul nuw <2 x i64> %i.aj, %i.al
  %i.an = shufflevector <2 x i64> %i.af, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.ao = add <2 x i64> %.sroa.0.0.i, %i.an
  %i.ap = add <2 x i64> %i.ao, %i.am              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ar = load <2 x i64>, ptr %i.aq, align 1, !tbaa !12, !noalias !240 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.at = load <2 x i64>, ptr %i.as, align 1, !tbaa !12, !noalias !240
  %i.au = xor <2 x i64> %i.at, %i.ar              ; 2 uses
  %i.av = bitcast <2 x i64> %i.au to <4 x i32>
  %i.aw = and <2 x i64> %i.au, splat (i64 4294967295)
  %i.ax = and <4 x i32> %i.av, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner55 = shufflevector <4 x i32> %i.ax, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.ay = bitcast <4 x i32> %.inner55 to <2 x i64>
  %i.az = mul nuw <2 x i64> %i.aw, %i.ay
  %i.ba = shufflevector <2 x i64> %i.ar, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.bb = add <2 x i64> %.sroa.17.0.i, %i.ba
  %i.bc = add <2 x i64> %i.bb, %i.az              ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.be = load <2 x i64>, ptr %i.bd, align 1, !tbaa !12, !noalias !240 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.bg = load <2 x i64>, ptr %i.bf, align 1, !tbaa !12, !noalias !240
  %i.bh = xor <2 x i64> %i.bg, %i.be              ; 2 uses
  %i.bi = bitcast <2 x i64> %i.bh to <4 x i32>
  %i.bj = and <2 x i64> %i.bh, splat (i64 4294967295)
  %i.bk = and <4 x i32> %i.bi, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner56 = shufflevector <4 x i32> %i.bk, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.bl = bitcast <4 x i32> %.inner56 to <2 x i64>
  %i.bm = mul nuw <2 x i64> %i.bj, %i.bl
  %i.bn = shufflevector <2 x i64> %i.be, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.bo = add <2 x i64> %.sroa.31.0.i, %i.bn
  %i.bp = add <2 x i64> %i.bo, %i.bm              ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.br = load <2 x i64>, ptr %i.bq, align 1, !tbaa !12, !noalias !240 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.bt = load <2 x i64>, ptr %i.bs, align 1, !tbaa !12, !noalias !240
  %i.bu = xor <2 x i64> %i.bt, %i.br              ; 2 uses
  %i.bv = bitcast <2 x i64> %i.bu to <4 x i32>
  %i.bw = and <2 x i64> %i.bu, splat (i64 4294967295)
  %i.bx = and <4 x i32> %i.bv, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner57 = shufflevector <4 x i32> %i.bx, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.by = bitcast <4 x i32> %.inner57 to <2 x i64>
  %i.bz = mul nuw <2 x i64> %i.bw, %i.by
  %i.ca = shufflevector <2 x i64> %i.br, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.cb = add <2 x i64> %.sroa.45.0.i, %i.ca
  %i.cc = add <2 x i64> %i.cb, %i.bz              ; 2 uses
  %i.cd = add nuw nsw i64 %.0.i33.i50.i, 1        ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cd, %i.w
  br i1 %exitcond.not.i, label %XXH3_accumulate.exit36.i.i, label %.lr.ph.i, !llvm.loop !86

XXH3_accumulate.exit36.i.i:                       ; preds = %.lr.ph.i, %bb.d
  %.sroa.45.1.i = phi <2 x i64> [ %.sroa.45.0.copyload.i, %bb.d ], [ %i.cc, %.lr.ph.i ] ; 2 uses
  %.sroa.31.1.i = phi <2 x i64> [ %.sroa.31.0.copyload.i, %bb.d ], [ %i.bp, %.lr.ph.i ] ; 2 uses
  %.sroa.17.1.i = phi <2 x i64> [ %.sroa.17.0.copyload.i, %bb.d ], [ %i.bc, %.lr.ph.i ] ; 2 uses
  %.sroa.0.1.i = phi <2 x i64> [ %.sroa.0.0.copyload.i, %bb.d ], [ %i.ap, %.lr.ph.i ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.v ; 4 uses
  %i.cf = lshr <2 x i64> %.sroa.0.1.i, splat (i64 47)
  %i.cg = load <2 x i64>, ptr %i.ce, align 1, !tbaa !12, !noalias !243
  %i.ch = xor <2 x i64> %i.cf, %i.cg
  %i.ci = xor <2 x i64> %i.ch, %.sroa.0.1.i       ; 2 uses
  %i.cj = bitcast <2 x i64> %i.ci to <4 x i32>
  %i.ck = shufflevector <4 x i32> %i.cj, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.cl = bitcast <4 x i32> %i.ck to <2 x i64>
  %i.cm = and <2 x i64> %i.ci, splat (i64 4294967295)
  %i.cn = mul nuw <2 x i64> %i.cm, splat (i64 2654435761)
  %i.co = mul <2 x i64> %i.cl, splat (i64 -7046029290881679360)
  %i.cp = add <2 x i64> %i.co, %i.cn              ; 2 uses
  %i.cq = lshr <2 x i64> %.sroa.17.1.i, splat (i64 47)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cs = load <2 x i64>, ptr %i.cr, align 1, !tbaa !12, !noalias !243
  %i.ct = xor <2 x i64> %i.cq, %i.cs
  %i.cu = xor <2 x i64> %i.ct, %.sroa.17.1.i      ; 2 uses
  %i.cv = bitcast <2 x i64> %i.cu to <4 x i32>
  %i.cw = shufflevector <4 x i32> %i.cv, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.cx = bitcast <4 x i32> %i.cw to <2 x i64>
  %i.cy = and <2 x i64> %i.cu, splat (i64 4294967295)
  %i.cz = mul nuw <2 x i64> %i.cy, splat (i64 2654435761)
  %i.da = mul <2 x i64> %i.cx, splat (i64 -7046029290881679360)
  %i.db = add <2 x i64> %i.da, %i.cz              ; 2 uses
  %i.dc = lshr <2 x i64> %.sroa.31.1.i, splat (i64 47)
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.de = load <2 x i64>, ptr %i.dd, align 1, !tbaa !12, !noalias !243
  %i.df = xor <2 x i64> %i.dc, %i.de
  %i.dg = xor <2 x i64> %i.df, %.sroa.31.1.i      ; 2 uses
  %i.dh = bitcast <2 x i64> %i.dg to <4 x i32>
  %i.di = shufflevector <4 x i32> %i.dh, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.dj = bitcast <4 x i32> %i.di to <2 x i64>
  %i.dk = and <2 x i64> %i.dg, splat (i64 4294967295)
  %i.dl = mul nuw <2 x i64> %i.dk, splat (i64 2654435761)
  %i.dm = mul <2 x i64> %i.dj, splat (i64 -7046029290881679360)
  %i.dn = add <2 x i64> %i.dm, %i.dl              ; 2 uses
  %i.do = lshr <2 x i64> %.sroa.45.1.i, splat (i64 47)
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  %i.dq = load <2 x i64>, ptr %i.dp, align 1, !tbaa !12, !noalias !243
  %i.dr = xor <2 x i64> %i.do, %i.dq
  %i.ds = xor <2 x i64> %i.dr, %.sroa.45.1.i      ; 2 uses
  %i.dt = bitcast <2 x i64> %i.ds to <4 x i32>
  %i.du = shufflevector <4 x i32> %i.dt, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.dv = bitcast <4 x i32> %i.du to <2 x i64>
  %i.dw = and <2 x i64> %i.ds, splat (i64 4294967295)
  %i.dx = mul nuw <2 x i64> %i.dw, splat (i64 2654435761)
  %i.dy = mul <2 x i64> %i.dv, splat (i64 -7046029290881679360)
  %i.dz = add <2 x i64> %i.dy, %i.dx              ; 2 uses
  %i.ea = shl nuw nsw i64 %i.w, 6
  %i.eb = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ea
  %.not60.i = icmp eq i64 %i.w, %i.o
  br i1 %.not60.i, label %XXH3_consumeStripes.exit.i.i, label %.lr.ph54.i

.lr.ph54.i:                                       ; preds = %XXH3_accumulate.exit36.i.i, %.lr.ph54.i
  %.sroa.45.2.i = phi <2 x i64> [ %i.ge, %.lr.ph54.i ], [ %i.dz, %XXH3_accumulate.exit36.i.i ]
  %.sroa.31.2.i = phi <2 x i64> [ %i.fr, %.lr.ph54.i ], [ %i.dn, %XXH3_accumulate.exit36.i.i ]
  %.sroa.17.2.i = phi <2 x i64> [ %i.fe, %.lr.ph54.i ], [ %i.db, %XXH3_accumulate.exit36.i.i ]
  %.sroa.0.2.i = phi <2 x i64> [ %i.er, %.lr.ph54.i ], [ %i.cp, %XXH3_accumulate.exit36.i.i ]
  %.0.i29.i53.i = phi i64 [ %i.gf, %.lr.ph54.i ], [ 0, %XXH3_accumulate.exit36.i.i ] ; 3 uses
  %i.ec = shl i64 %.0.i29.i53.i, 6
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.ec ; 5 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %i.ee, i32 0, i32 3, i32 1), !noalias !246
  %i.ef = shl i64 %.0.i29.i53.i, 3
  %i.eg = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ef ; 4 uses
  %i.eh = load <2 x i64>, ptr %i.ed, align 1, !tbaa !12, !noalias !249 ; 2 uses
  %i.ei = load <2 x i64>, ptr %i.eg, align 1, !tbaa !12, !noalias !249
  %i.ej = xor <2 x i64> %i.ei, %i.eh              ; 2 uses
  %i.ek = bitcast <2 x i64> %i.ej to <4 x i32>
  %i.el = and <2 x i64> %i.ej, splat (i64 4294967295)
  %i.em = and <4 x i32> %i.ek, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner58 = shufflevector <4 x i32> %i.em, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.en = bitcast <4 x i32> %.inner58 to <2 x i64>
  %i.eo = mul nuw <2 x i64> %i.el, %i.en
  %i.ep = shufflevector <2 x i64> %i.eh, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.eq = add <2 x i64> %.sroa.0.2.i, %i.ep
  %i.er = add <2 x i64> %i.eq, %i.eo              ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.et = load <2 x i64>, ptr %i.es, align 1, !tbaa !12, !noalias !249 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ev = load <2 x i64>, ptr %i.eu, align 1, !tbaa !12, !noalias !249
  %i.ew = xor <2 x i64> %i.ev, %i.et              ; 2 uses
  %i.ex = bitcast <2 x i64> %i.ew to <4 x i32>
  %i.ey = and <2 x i64> %i.ew, splat (i64 4294967295)
  %i.ez = and <4 x i32> %i.ex, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner59 = shufflevector <4 x i32> %i.ez, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.fa = bitcast <4 x i32> %.inner59 to <2 x i64>
  %i.fb = mul nuw <2 x i64> %i.ey, %i.fa
  %i.fc = shufflevector <2 x i64> %i.et, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.fd = add <2 x i64> %.sroa.17.2.i, %i.fc
  %i.fe = add <2 x i64> %i.fd, %i.fb              ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ed, i64 32
  %i.fg = load <2 x i64>, ptr %i.ff, align 1, !tbaa !12, !noalias !249 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.eg, i64 32
  %i.fi = load <2 x i64>, ptr %i.fh, align 1, !tbaa !12, !noalias !249
  %i.fj = xor <2 x i64> %i.fi, %i.fg              ; 2 uses
  %i.fk = bitcast <2 x i64> %i.fj to <4 x i32>
  %i.fl = and <2 x i64> %i.fj, splat (i64 4294967295)
  %i.fm = and <4 x i32> %i.fk, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner60 = shufflevector <4 x i32> %i.fm, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.fn = bitcast <4 x i32> %.inner60 to <2 x i64>
  %i.fo = mul nuw <2 x i64> %i.fl, %i.fn
  %i.fp = shufflevector <2 x i64> %i.fg, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.fq = add <2 x i64> %.sroa.31.2.i, %i.fp
  %i.fr = add <2 x i64> %i.fq, %i.fo              ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ed, i64 48
  %i.ft = load <2 x i64>, ptr %i.fs, align 1, !tbaa !12, !noalias !249 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.eg, i64 48
  %i.fv = load <2 x i64>, ptr %i.fu, align 1, !tbaa !12, !noalias !249
  %i.fw = xor <2 x i64> %i.fv, %i.ft              ; 2 uses
  %i.fx = bitcast <2 x i64> %i.fw to <4 x i32>
  %i.fy = and <2 x i64> %i.fw, splat (i64 4294967295)
  %i.fz = and <4 x i32> %i.fx, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner61 = shufflevector <4 x i32> %i.fz, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.ga = bitcast <4 x i32> %.inner61 to <2 x i64>
  %i.gb = mul nuw <2 x i64> %i.fy, %i.ga
  %i.gc = shufflevector <2 x i64> %i.ft, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.gd = add <2 x i64> %.sroa.45.2.i, %i.gc
  %i.ge = add <2 x i64> %i.gd, %i.gb              ; 2 uses
  %i.gf = add nuw i64 %.0.i29.i53.i, 1            ; 2 uses
  %exitcond65.not.i = icmp eq i64 %i.gf, %i.x
  br i1 %exitcond65.not.i, label %XXH3_consumeStripes.exit.i.i, label %.lr.ph54.i, !llvm.loop !86

bb.e:                                             ; preds = %bb.c
  %i.gg = shl i64 %i.q, 3
  %i.gh = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.gg
  %.not61.i = icmp eq i32 %i.n, 0
  br i1 %.not61.i, label %XXH3_consumeStripes.exit.i.i, label %.lr.ph57.i

.lr.ph57.i:                                       ; preds = %bb.e, %.lr.ph57.i
  %.sroa.45.3.i = phi <2 x i64> [ %i.ik, %.lr.ph57.i ], [ %.sroa.45.0.copyload.i, %bb.e ]
  %.sroa.31.3.i = phi <2 x i64> [ %i.hx, %.lr.ph57.i ], [ %.sroa.31.0.copyload.i, %bb.e ]
  %.sroa.17.3.i = phi <2 x i64> [ %i.hk, %.lr.ph57.i ], [ %.sroa.17.0.copyload.i, %bb.e ]
  %.sroa.0.3.i = phi <2 x i64> [ %i.gx, %.lr.ph57.i ], [ %.sroa.0.0.copyload.i, %bb.e ]
  %.0.i27.i56.i = phi i64 [ %i.il, %.lr.ph57.i ], [ 0, %bb.e ] ; 3 uses
  %i.gi = shl nuw nsw i64 %.0.i27.i56.i, 6
  %i.gj = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.gi ; 5 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %i.gk, i32 0, i32 3, i32 1), !noalias !252
  %i.gl = shl nuw nsw i64 %.0.i27.i56.i, 3
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.gl ; 4 uses
  %i.gn = load <2 x i64>, ptr %i.gj, align 1, !tbaa !12, !noalias !255 ; 2 uses
  %i.go = load <2 x i64>, ptr %i.gm, align 1, !tbaa !12, !noalias !255
  %i.gp = xor <2 x i64> %i.go, %i.gn              ; 2 uses
  %i.gq = bitcast <2 x i64> %i.gp to <4 x i32>
  %i.gr = and <2 x i64> %i.gp, splat (i64 4294967295)
  %i.gs = and <4 x i32> %i.gq, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner62 = shufflevector <4 x i32> %i.gs, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.gt = bitcast <4 x i32> %.inner62 to <2 x i64>
  %i.gu = mul nuw <2 x i64> %i.gr, %i.gt
  %i.gv = shufflevector <2 x i64> %i.gn, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.gw = add <2 x i64> %.sroa.0.3.i, %i.gv
  %i.gx = add <2 x i64> %i.gw, %i.gu              ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  %i.gz = load <2 x i64>, ptr %i.gy, align 1, !tbaa !12, !noalias !255 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %i.hb = load <2 x i64>, ptr %i.ha, align 1, !tbaa !12, !noalias !255
  %i.hc = xor <2 x i64> %i.hb, %i.gz              ; 2 uses
  %i.hd = bitcast <2 x i64> %i.hc to <4 x i32>
  %i.he = and <2 x i64> %i.hc, splat (i64 4294967295)
  %i.hf = and <4 x i32> %i.hd, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner63 = shufflevector <4 x i32> %i.hf, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.hg = bitcast <4 x i32> %.inner63 to <2 x i64>
  %i.hh = mul nuw <2 x i64> %i.he, %i.hg
  %i.hi = shufflevector <2 x i64> %i.gz, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.hj = add <2 x i64> %.sroa.17.3.i, %i.hi
  %i.hk = add <2 x i64> %i.hj, %i.hh              ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gj, i64 32
  %i.hm = load <2 x i64>, ptr %i.hl, align 1, !tbaa !12, !noalias !255 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gm, i64 32
  %i.ho = load <2 x i64>, ptr %i.hn, align 1, !tbaa !12, !noalias !255
  %i.hp = xor <2 x i64> %i.ho, %i.hm              ; 2 uses
  %i.hq = bitcast <2 x i64> %i.hp to <4 x i32>
  %i.hr = and <2 x i64> %i.hp, splat (i64 4294967295)
  %i.hs = and <4 x i32> %i.hq, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner64 = shufflevector <4 x i32> %i.hs, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.ht = bitcast <4 x i32> %.inner64 to <2 x i64>
  %i.hu = mul nuw <2 x i64> %i.hr, %i.ht
  %i.hv = shufflevector <2 x i64> %i.hm, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.hw = add <2 x i64> %.sroa.31.3.i, %i.hv
  %i.hx = add <2 x i64> %i.hw, %i.hu              ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gj, i64 48
  %i.hz = load <2 x i64>, ptr %i.hy, align 1, !tbaa !12, !noalias !255 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.gm, i64 48
  %i.ib = load <2 x i64>, ptr %i.ia, align 1, !tbaa !12, !noalias !255
  %i.ic = xor <2 x i64> %i.ib, %i.hz              ; 2 uses
  %i.id = bitcast <2 x i64> %i.ic to <4 x i32>
  %i.ie = and <2 x i64> %i.ic, splat (i64 4294967295)
  %i.if = and <4 x i32> %i.id, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner65 = shufflevector <4 x i32> %i.if, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.ig = bitcast <4 x i32> %.inner65 to <2 x i64>
  %i.ih = mul nuw <2 x i64> %i.ie, %i.ig
end_hunk_1
begin_hunk_2_@PHP_XXH3_128_Init:bb.a
  store i64 -7046029288634856825, ptr %i.db, align 8, !tbaa !43
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -4417276706812531889, ptr %i.dc, align 16, !tbaa !43
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1609587929392839161, ptr %i.dd, align 8, !tbaa !43
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -8796714831421723037, ptr %i.de, align 32, !tbaa !43
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 2246822519, ptr %i.df, align 8, !tbaa !43
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 2870177450012600261, ptr %i.dg, align 16, !tbaa !43
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 2654435761, ptr %i.dh, align 8, !tbaa !43
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i64 0, ptr %i.di, align 8, !tbaa !51
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 568
  store ptr %i.cq, ptr %i.dj, align 8, !tbaa !53
  %i.dk = add nsw i64 %.0.i, -64                  ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i64 %i.dk, ptr %i.dl, align 32, !tbaa !56
  %i.dm = lshr i64 %i.dk, 3
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i64 %i.dm, ptr %i.dn, align 8, !tbaa !57
  br label %_PHP_XXH3_Init.exit

XXH_INLINE_XXH3_128bits_reset_withSeed.exit:      ; preds = %bb.h, %zend_hash_str_find_deref.exit47.thread.i, %bb.a
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %i.do, i8 0, i64 24, i1 false)
  store i64 3266489917, ptr %0, align 64, !tbaa !43
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -7046029288634856825, ptr %i.dp, align 8, !tbaa !43
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -4417276706812531889, ptr %i.dq, align 16, !tbaa !43
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1609587929392839161, ptr %i.dr, align 8, !tbaa !43
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -8796714831421723037, ptr %i.ds, align 32, !tbaa !43
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 2246822519, ptr %i.dt, align 8, !tbaa !43
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 2870177450012600261, ptr %i.du, align 16, !tbaa !43
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 2654435761, ptr %i.dv, align 8, !tbaa !43
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i64 0, ptr %i.dw, align 8, !tbaa !51
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 568
  store ptr @XXH3_kSecret, ptr %i.dx, align 8, !tbaa !53
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i64 128, ptr %i.dy, align 32, !tbaa !56
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i64 16, ptr %i.dz, align 8, !tbaa !57
  br label %_PHP_XXH3_Init.exit

_PHP_XXH3_Init.exit:                              ; preds = %bb.g, %XXH_INLINE_XXH3_128bits_reset_withSeed.exit6, %zval_try_get_string.exit.i, %zend_string_release.exit52.i, %XXH_INLINE_XXH3_128bits_reset_withSecret.exit, %XXH_INLINE_XXH3_128bits_reset_withSeed.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local void @PHP_XXH3_128_Update(ptr nofree noundef %0, ptr noundef %1, i64 noundef %2) #7 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %XXH_INLINE_XXH3_128bits_update.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !53, !alias.scope !320, !noalias !323 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = select i1 %i.e, ptr %i.f, ptr %i.d       ; 12 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.i = load i64, ptr %i.h, align 16, !tbaa !68, !alias.scope !320, !noalias !323
  %i.j = add i64 %i.i, %2
  store i64 %i.j, ptr %i.h, align 16, !tbaa !68, !alias.scope !320, !noalias !323
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 4 uses
  %i.l = load i32, ptr %i.k, align 64, !tbaa !69, !alias.scope !320, !noalias !323 ; 3 uses
  %i.m = zext i32 %i.l to i64                     ; 3 uses
  %i.n = add i64 %2, %i.m
  %i.o = icmp ult i64 %i.n, 257
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %i.r = trunc i64 %2 to i32
  %i.s = load i32, ptr %i.k, align 64, !tbaa !69, !alias.scope !320, !noalias !323
  %i.t = add i32 %i.s, %i.r
  br label %bb.q

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %._crit_edge127.i, label %bb.e

._crit_edge127.i:                                 ; preds = %bb.d
  %.phi.trans.insert128.i = getelementptr inbounds nuw i8, ptr %0, i64 536
  %.pre129.i = load i64, ptr %.phi.trans.insert128.i, align 8, !tbaa !57, !alias.scope !320, !noalias !323
  br label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.u = sub i32 256, %i.l
  %i.v = zext i32 %i.u to i64                     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.x, ptr nonnull readonly align 1 %1, i64 %i.v, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %i.v
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !57, !alias.scope !320, !noalias !323 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ad = load i64, ptr %i.ac, align 32, !tbaa !56, !alias.scope !320, !noalias !323
  tail call void @llvm.experimental.noalias.scope.decl(metadata !325)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328)
  %i.ae = load i64, ptr %i.z, align 8, !tbaa !43, !alias.scope !328, !noalias !330 ; 5 uses
  %i.af = sub i64 %i.ab, %i.ae                    ; 5 uses
  %.not.i6.i = icmp ugt i64 %i.af, 4
  br i1 %.not.i6.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = sub nuw nsw i64 4, %i.af                ; 2 uses
  %i.ah = shl i64 %i.ae, 3
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ah
  tail call void @llvm.experimental.noalias.scope.decl(metadata !333)
  %.not.i = icmp eq i64 %i.ab, %i.ae
  %.pre114.i = load <2 x i64>, ptr %0, align 64, !tbaa !12, !noalias !328 ; 2 uses
  %.phi.trans.insert115.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.pre.i = load <2 x i64>, ptr %.phi.trans.insert115.i, align 16, !tbaa !12, !noalias !328 ; 2 uses
  %.phi.trans.insert116.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %.pre117.i = load <2 x i64>, ptr %.phi.trans.insert116.i, align 32, !tbaa !12, !noalias !328 ; 2 uses
  %.phi.trans.insert118.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %.pre119.i = load <2 x i64>, ptr %.phi.trans.insert118.i, align 16, !tbaa !12, !noalias !328 ; 2 uses
  br i1 %.not.i, label %XXH3_accumulate.exit20.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.aj = phi <2 x i64> [ %i.cp, %.lr.ph.i ], [ %.pre119.i, %bb.f ]
  %i.ak = phi <2 x i64> [ %i.cc, %.lr.ph.i ], [ %.pre117.i, %bb.f ]
  %i.al = phi <2 x i64> [ %i.bp, %.lr.ph.i ], [ %.pre.i, %bb.f ]
  %i.am = phi <2 x i64> [ %i.bc, %.lr.ph.i ], [ %.pre114.i, %bb.f ]
  %.0.i1746.i = phi i64 [ %i.cq, %.lr.ph.i ], [ 0, %bb.f ] ; 3 uses
  %i.an = shl nuw nsw i64 %.0.i1746.i, 6
  %i.ao = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.an ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ap, i32 0, i32 3, i32 1), !noalias !336
  %i.aq = shl nuw nsw i64 %.0.i1746.i, 3
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aq ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !337), !noalias !328
  %i.as = load <2 x i64>, ptr %i.ao, align 1, !tbaa !12, !noalias !340 ; 2 uses
  %i.at = load <2 x i64>, ptr %i.ar, align 1, !tbaa !12, !noalias !340
  %i.au = xor <2 x i64> %i.at, %i.as              ; 2 uses
  %i.av = bitcast <2 x i64> %i.au to <4 x i32>
  %i.aw = and <2 x i64> %i.au, splat (i64 4294967295)
  %i.ax = and <4 x i32> %i.av, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner = shufflevector <4 x i32> %i.ax, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.ay = bitcast <4 x i32> %.inner to <2 x i64>
  %i.az = mul nuw <2 x i64> %i.aw, %i.ay
  %i.ba = shufflevector <2 x i64> %i.as, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.bb = add <2 x i64> %i.am, %i.ba
  %i.bc = add <2 x i64> %i.bb, %i.az              ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.be = load <2 x i64>, ptr %i.bd, align 1, !tbaa !12, !noalias !340 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.bg = load <2 x i64>, ptr %i.bf, align 1, !tbaa !12, !noalias !340
  %i.bh = xor <2 x i64> %i.bg, %i.be              ; 2 uses
  %i.bi = bitcast <2 x i64> %i.bh to <4 x i32>
  %i.bj = and <2 x i64> %i.bh, splat (i64 4294967295)
  %i.bk = and <4 x i32> %i.bi, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner183 = shufflevector <4 x i32> %i.bk, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.bl = bitcast <4 x i32> %.inner183 to <2 x i64>
  %i.bm = mul nuw <2 x i64> %i.bj, %i.bl
  %i.bn = shufflevector <2 x i64> %i.be, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.bo = add <2 x i64> %i.al, %i.bn
  %i.bp = add <2 x i64> %i.bo, %i.bm              ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.br = load <2 x i64>, ptr %i.bq, align 1, !tbaa !12, !noalias !340 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.bt = load <2 x i64>, ptr %i.bs, align 1, !tbaa !12, !noalias !340
  %i.bu = xor <2 x i64> %i.bt, %i.br              ; 2 uses
  %i.bv = bitcast <2 x i64> %i.bu to <4 x i32>
  %i.bw = and <2 x i64> %i.bu, splat (i64 4294967295)
  %i.bx = and <4 x i32> %i.bv, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner184 = shufflevector <4 x i32> %i.bx, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.by = bitcast <4 x i32> %.inner184 to <2 x i64>
  %i.bz = mul nuw <2 x i64> %i.bw, %i.by
  %i.ca = shufflevector <2 x i64> %i.br, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.cb = add <2 x i64> %i.ak, %i.ca
  %i.cc = add <2 x i64> %i.cb, %i.bz              ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.ce = load <2 x i64>, ptr %i.cd, align 1, !tbaa !12, !noalias !340 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %i.cg = load <2 x i64>, ptr %i.cf, align 1, !tbaa !12, !noalias !340
  %i.ch = xor <2 x i64> %i.cg, %i.ce              ; 2 uses
  %i.ci = bitcast <2 x i64> %i.ch to <4 x i32>
  %i.cj = and <2 x i64> %i.ch, splat (i64 4294967295)
  %i.ck = and <4 x i32> %i.ci, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner185 = shufflevector <4 x i32> %i.ck, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.cl = bitcast <4 x i32> %.inner185 to <2 x i64>
  %i.cm = mul nuw <2 x i64> %i.cj, %i.cl
  %i.cn = shufflevector <2 x i64> %i.ce, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.co = add <2 x i64> %i.aj, %i.cn
  %i.cp = add <2 x i64> %i.co, %i.cm              ; 3 uses
  %i.cq = add nuw nsw i64 %.0.i1746.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cq, %i.af
  br i1 %exitcond.not.i, label %XXH3_accumulate.exit20.loopexit.i, label %.lr.ph.i, !llvm.loop !86

XXH3_accumulate.exit20.loopexit.i:                ; preds = %.lr.ph.i
  store <2 x i64> %i.bc, ptr %0, align 64, !tbaa !12, !alias.scope !341, !noalias !342
  store <2 x i64> %i.bp, ptr %.phi.trans.insert115.i, align 16, !tbaa !12, !alias.scope !341, !noalias !342
  store <2 x i64> %i.cc, ptr %.phi.trans.insert116.i, align 32, !tbaa !12, !alias.scope !341, !noalias !342
  store <2 x i64> %i.cp, ptr %.phi.trans.insert118.i, align 16, !tbaa !12, !alias.scope !341, !noalias !342
  br label %XXH3_accumulate.exit20.i

XXH3_accumulate.exit20.i:                         ; preds = %XXH3_accumulate.exit20.loopexit.i, %bb.f
  %i.cr = phi <2 x i64> [ %i.cp, %XXH3_accumulate.exit20.loopexit.i ], [ %.pre119.i, %bb.f ] ; 2 uses
  %i.cs = phi <2 x i64> [ %i.cc, %XXH3_accumulate.exit20.loopexit.i ], [ %.pre117.i, %bb.f ] ; 2 uses
  %i.ct = phi <2 x i64> [ %i.bp, %XXH3_accumulate.exit20.loopexit.i ], [ %.pre.i, %bb.f ] ; 2 uses
  %i.cu = phi <2 x i64> [ %i.bc, %XXH3_accumulate.exit20.loopexit.i ], [ %.pre114.i, %bb.f ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ad ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347)
  %i.cw = lshr <2 x i64> %i.cu, splat (i64 47)
  %i.cx = load <2 x i64>, ptr %i.cv, align 1, !tbaa !12, !noalias !350
  %i.cy = xor <2 x i64> %i.cw, %i.cx
  %i.cz = xor <2 x i64> %i.cy, %i.cu              ; 2 uses
  %i.da = bitcast <2 x i64> %i.cz to <4 x i32>
  %i.db = shufflevector <4 x i32> %i.da, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.dc = bitcast <4 x i32> %i.db to <2 x i64>
  %i.dd = and <2 x i64> %i.cz, splat (i64 4294967295)
  %i.de = mul nuw <2 x i64> %i.dd, splat (i64 2654435761)
  %i.df = mul <2 x i64> %i.dc, splat (i64 -7046029290881679360)
  %i.dg = add <2 x i64> %i.df, %i.de              ; 2 uses
  store <2 x i64> %i.dg, ptr %0, align 64, !tbaa !12, !alias.scope !351, !noalias !352
  %i.dh = lshr <2 x i64> %i.ct, splat (i64 47)
  %i.di = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.dj = load <2 x i64>, ptr %i.di, align 1, !tbaa !12, !noalias !350
  %i.dk = xor <2 x i64> %i.dh, %i.dj
  %i.dl = xor <2 x i64> %i.dk, %i.ct              ; 2 uses
  %i.dm = bitcast <2 x i64> %i.dl to <4 x i32>
  %i.dn = shufflevector <4 x i32> %i.dm, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.do = bitcast <4 x i32> %i.dn to <2 x i64>
  %i.dp = and <2 x i64> %i.dl, splat (i64 4294967295)
  %i.dq = mul nuw <2 x i64> %i.dp, splat (i64 2654435761)
  %i.dr = mul <2 x i64> %i.do, splat (i64 -7046029290881679360)
  %i.ds = add <2 x i64> %i.dr, %i.dq              ; 2 uses
  store <2 x i64> %i.ds, ptr %.phi.trans.insert115.i, align 16, !tbaa !12, !alias.scope !351, !noalias !352
  %i.dt = lshr <2 x i64> %i.cs, splat (i64 47)
  %i.du = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  %i.dv = load <2 x i64>, ptr %i.du, align 1, !tbaa !12, !noalias !350
  %i.dw = xor <2 x i64> %i.dt, %i.dv
  %i.dx = xor <2 x i64> %i.dw, %i.cs              ; 2 uses
  %i.dy = bitcast <2 x i64> %i.dx to <4 x i32>
  %i.dz = shufflevector <4 x i32> %i.dy, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.ea = bitcast <4 x i32> %i.dz to <2 x i64>
  %i.eb = and <2 x i64> %i.dx, splat (i64 4294967295)
  %i.ec = mul nuw <2 x i64> %i.eb, splat (i64 2654435761)
  %i.ed = mul <2 x i64> %i.ea, splat (i64 -7046029290881679360)
  %i.ee = add <2 x i64> %i.ed, %i.ec              ; 2 uses
  store <2 x i64> %i.ee, ptr %.phi.trans.insert116.i, align 32, !tbaa !12, !alias.scope !351, !noalias !352
  %i.ef = lshr <2 x i64> %i.cr, splat (i64 47)
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cv, i64 48
  %i.eh = load <2 x i64>, ptr %i.eg, align 1, !tbaa !12, !noalias !350
  %i.ei = xor <2 x i64> %i.ef, %i.eh
  %i.ej = xor <2 x i64> %i.ei, %i.cr              ; 2 uses
  %i.ek = bitcast <2 x i64> %i.ej to <4 x i32>
  %i.el = shufflevector <4 x i32> %i.ek, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.em = bitcast <4 x i32> %i.el to <2 x i64>
  %i.en = and <2 x i64> %i.ej, splat (i64 4294967295)
  %i.eo = mul nuw <2 x i64> %i.en, splat (i64 2654435761)
  %i.ep = mul <2 x i64> %i.em, splat (i64 -7046029290881679360)
  %i.eq = add <2 x i64> %i.ep, %i.eo              ; 2 uses
  store <2 x i64> %i.eq, ptr %.phi.trans.insert118.i, align 16, !tbaa !12, !alias.scope !351, !noalias !352
  %i.er = shl nuw nsw i64 %i.af, 6
  %i.es = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.er
  tail call void @llvm.experimental.noalias.scope.decl(metadata !354)
  %.not80.i = icmp eq i64 %i.af, 4
  br i1 %.not80.i, label %XXH3_consumeStripes.exit10.i, label %.lr.ph50.i

.lr.ph50.i:                                       ; preds = %XXH3_accumulate.exit20.i, %.lr.ph50.i
  %i.et = phi <2 x i64> [ %i.gz, %.lr.ph50.i ], [ %i.eq, %XXH3_accumulate.exit20.i ]
  %i.eu = phi <2 x i64> [ %i.gm, %.lr.ph50.i ], [ %i.ee, %XXH3_accumulate.exit20.i ]
  %i.ev = phi <2 x i64> [ %i.fz, %.lr.ph50.i ], [ %i.ds, %XXH3_accumulate.exit20.i ]
  %i.ew = phi <2 x i64> [ %i.fm, %.lr.ph50.i ], [ %i.dg, %XXH3_accumulate.exit20.i ]
  %.0.i1349.i = phi i64 [ %i.ha, %.lr.ph50.i ], [ 0, %XXH3_accumulate.exit20.i ] ; 3 uses
  %i.ex = shl nuw nsw i64 %.0.i1349.i, 6
  %i.ey = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.ex ; 5 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ez, i32 0, i32 3, i32 1), !noalias !357
  %i.fa = shl nuw nsw i64 %.0.i1349.i, 3
  %i.fb = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.fa ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !358), !noalias !328
  %i.fc = load <2 x i64>, ptr %i.ey, align 1, !tbaa !12, !noalias !361 ; 2 uses
  %i.fd = load <2 x i64>, ptr %i.fb, align 1, !tbaa !12, !noalias !361
  %i.fe = xor <2 x i64> %i.fd, %i.fc              ; 2 uses
  %i.ff = bitcast <2 x i64> %i.fe to <4 x i32>
  %i.fg = and <2 x i64> %i.fe, splat (i64 4294967295)
  %i.fh = and <4 x i32> %i.ff, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner186 = shufflevector <4 x i32> %i.fh, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.fi = bitcast <4 x i32> %.inner186 to <2 x i64>
  %i.fj = mul nuw <2 x i64> %i.fg, %i.fi
  %i.fk = shufflevector <2 x i64> %i.fc, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.fl = add <2 x i64> %i.ew, %i.fk
  %i.fm = add <2 x i64> %i.fl, %i.fj              ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fo = load <2 x i64>, ptr %i.fn, align 1, !tbaa !12, !noalias !361 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fq = load <2 x i64>, ptr %i.fp, align 1, !tbaa !12, !noalias !361
  %i.fr = xor <2 x i64> %i.fq, %i.fo              ; 2 uses
  %i.fs = bitcast <2 x i64> %i.fr to <4 x i32>
  %i.ft = and <2 x i64> %i.fr, splat (i64 4294967295)
  %i.fu = and <4 x i32> %i.fs, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner187 = shufflevector <4 x i32> %i.fu, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.fv = bitcast <4 x i32> %.inner187 to <2 x i64>
  %i.fw = mul nuw <2 x i64> %i.ft, %i.fv
  %i.fx = shufflevector <2 x i64> %i.fo, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.fy = add <2 x i64> %i.ev, %i.fx
  %i.fz = add <2 x i64> %i.fy, %i.fw              ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ey, i64 32
  %i.gb = load <2 x i64>, ptr %i.ga, align 1, !tbaa !12, !noalias !361 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fb, i64 32
  %i.gd = load <2 x i64>, ptr %i.gc, align 1, !tbaa !12, !noalias !361
  %i.ge = xor <2 x i64> %i.gd, %i.gb              ; 2 uses
  %i.gf = bitcast <2 x i64> %i.ge to <4 x i32>
  %i.gg = and <2 x i64> %i.ge, splat (i64 4294967295)
  %i.gh = and <4 x i32> %i.gf, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner188 = shufflevector <4 x i32> %i.gh, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.gi = bitcast <4 x i32> %.inner188 to <2 x i64>
  %i.gj = mul nuw <2 x i64> %i.gg, %i.gi
  %i.gk = shufflevector <2 x i64> %i.gb, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.gl = add <2 x i64> %i.eu, %i.gk
  %i.gm = add <2 x i64> %i.gl, %i.gj              ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ey, i64 48
  %i.go = load <2 x i64>, ptr %i.gn, align 1, !tbaa !12, !noalias !361 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fb, i64 48
  %i.gq = load <2 x i64>, ptr %i.gp, align 1, !tbaa !12, !noalias !361
  %i.gr = xor <2 x i64> %i.gq, %i.go              ; 2 uses
  %i.gs = bitcast <2 x i64> %i.gr to <4 x i32>
  %i.gt = and <2 x i64> %i.gr, splat (i64 4294967295)
  %i.gu = and <4 x i32> %i.gs, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner189 = shufflevector <4 x i32> %i.gu, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.gv = bitcast <4 x i32> %.inner189 to <2 x i64>
  %i.gw = mul nuw <2 x i64> %i.gt, %i.gv
  %i.gx = shufflevector <2 x i64> %i.go, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.gy = add <2 x i64> %i.et, %i.gx
  %i.gz = add <2 x i64> %i.gy, %i.gw              ; 2 uses
  %i.ha = add nuw i64 %.0.i1349.i, 1              ; 2 uses
  %exitcond90.not.i = icmp eq i64 %i.ha, %i.ag
  br i1 %exitcond90.not.i, label %XXH3_consumeStripes.exit10.loopexit.i, label %.lr.ph50.i, !llvm.loop !86

bb.g:                                             ; preds = %bb.e
  %i.hb = shl i64 %i.ae, 3
  %i.hc = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.hb
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362)
  %.pre120.i = load <2 x i64>, ptr %0, align 64, !tbaa !12, !alias.scope !365, !noalias !368
  %.phi.trans.insert121.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.pre122.i = load <2 x i64>, ptr %.phi.trans.insert121.i, align 16, !tbaa !12, !alias.scope !365, !noalias !368
  %.phi.trans.insert123.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.pre124.i = load <2 x i64>, ptr %.phi.trans.insert123.i, align 32, !tbaa !12, !alias.scope !365, !noalias !368
  %.phi.trans.insert125.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.pre126.i = load <2 x i64>, ptr %.phi.trans.insert125.i, align 16, !tbaa !12, !alias.scope !365, !noalias !368
  br label %XXH3_accumulate_512_sse2.exit.i.i

XXH3_accumulate_512_sse2.exit.i.i:                ; preds = %XXH3_accumulate_512_sse2.exit.i.i, %bb.g
  %i.hd = phi <2 x i64> [ %.pre126.i, %bb.g ], [ %i.jj, %XXH3_accumulate_512_sse2.exit.i.i ]
  %i.he = phi <2 x i64> [ %.pre124.i, %bb.g ], [ %i.iw, %XXH3_accumulate_512_sse2.exit.i.i ]
  %i.hf = phi <2 x i64> [ %.pre122.i, %bb.g ], [ %i.ij, %XXH3_accumulate_512_sse2.exit.i.i ]
  %i.hg = phi <2 x i64> [ %.pre120.i, %bb.g ], [ %i.hw, %XXH3_accumulate_512_sse2.exit.i.i ]
  %.0.i1152.i = phi i64 [ 0, %bb.g ], [ %i.jk, %XXH3_accumulate_512_sse2.exit.i.i ] ; 3 uses
  %i.hh = shl nuw nsw i64 %.0.i1152.i, 6
  %i.hi = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.hh ; 5 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.hj, i32 0, i32 3, i32 1), !noalias !373
  %i.hk = shl nuw nsw i64 %.0.i1152.i, 3
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hc, i64 %i.hk ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !374), !noalias !328
  %i.hm = load <2 x i64>, ptr %i.hi, align 1, !tbaa !12, !noalias !375 ; 2 uses
  %i.hn = load <2 x i64>, ptr %i.hl, align 1, !tbaa !12, !noalias !375
  %i.ho = xor <2 x i64> %i.hn, %i.hm              ; 2 uses
  %i.hp = bitcast <2 x i64> %i.ho to <4 x i32>
  %i.hq = and <2 x i64> %i.ho, splat (i64 4294967295)
  %i.hr = and <4 x i32> %i.hp, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner190 = shufflevector <4 x i32> %i.hr, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.hs = bitcast <4 x i32> %.inner190 to <2 x i64>
  %i.ht = mul nuw <2 x i64> %i.hq, %i.hs
  %i.hu = shufflevector <2 x i64> %i.hm, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.hv = add <2 x i64> %i.hg, %i.hu
  %i.hw = add <2 x i64> %i.hv, %i.ht              ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  %i.hy = load <2 x i64>, ptr %i.hx, align 1, !tbaa !12, !noalias !375 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  %i.ia = load <2 x i64>, ptr %i.hz, align 1, !tbaa !12, !noalias !375
  %i.ib = xor <2 x i64> %i.ia, %i.hy              ; 2 uses
  %i.ic = bitcast <2 x i64> %i.ib to <4 x i32>
  %i.id = and <2 x i64> %i.ib, splat (i64 4294967295)
  %i.ie = and <4 x i32> %i.ic, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner191 = shufflevector <4 x i32> %i.ie, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.if = bitcast <4 x i32> %.inner191 to <2 x i64>
  %i.ig = mul nuw <2 x i64> %i.id, %i.if
  %i.ih = shufflevector <2 x i64> %i.hy, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.ii = add <2 x i64> %i.hf, %i.ih
  %i.ij = add <2 x i64> %i.ii, %i.ig              ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hi, i64 32
  %i.il = load <2 x i64>, ptr %i.ik, align 1, !tbaa !12, !noalias !375 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.hl, i64 32
end_hunk_2
begin_hunk_3_@PHP_XXH3_128_Update:bb.a
  %.1108.i.lcssa.i = phi ptr [ %i.om, %XXH3_accumulate.exit44.i ], [ %i.sw, %XXH3_accumulate.exit40.i ] ; 2 uses
  %.0106.i.lcssa.i = phi i64 [ %i.on, %XXH3_accumulate.exit44.i ], [ %i.sx, %XXH3_accumulate.exit40.i ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !416)
  %.not85.i = icmp eq i64 %.0106.i.lcssa.i, 0
  br i1 %.not85.i, label %XXH3_accumulate.exit36.i, label %.lr.ph79.i

.lr.ph79.i:                                       ; preds = %._crit_edge.i, %.lr.ph79.i
  %i.tc = phi <2 x i64> [ %i.vi, %.lr.ph79.i ], [ %i.sy, %._crit_edge.i ]
  %i.td = phi <2 x i64> [ %i.uv, %.lr.ph79.i ], [ %i.sz, %._crit_edge.i ]
  %i.te = phi <2 x i64> [ %i.ui, %.lr.ph79.i ], [ %i.ta, %._crit_edge.i ]
  %i.tf = phi <2 x i64> [ %i.tv, %.lr.ph79.i ], [ %i.tb, %._crit_edge.i ]
  %.0.i3377.i = phi i64 [ %i.vj, %.lr.ph79.i ], [ 0, %._crit_edge.i ] ; 3 uses
  %i.tg = shl i64 %.0.i3377.i, 6
  %i.th = getelementptr inbounds nuw i8, ptr %.1108.i.lcssa.i, i64 %i.tg ; 5 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ti, i32 0, i32 3, i32 1), !noalias !416
  %i.tj = shl i64 %.0.i3377.i, 3
  %i.tk = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.tj ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !419)
  %i.tl = load <2 x i64>, ptr %i.th, align 1, !tbaa !12, !noalias !422 ; 2 uses
  %i.tm = load <2 x i64>, ptr %i.tk, align 1, !tbaa !12, !noalias !422
  %i.tn = xor <2 x i64> %i.tm, %i.tl              ; 2 uses
  %i.to = bitcast <2 x i64> %i.tn to <4 x i32>
  %i.tp = and <2 x i64> %i.tn, splat (i64 4294967295)
  %i.tq = and <4 x i32> %i.to, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner202 = shufflevector <4 x i32> %i.tq, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.tr = bitcast <4 x i32> %.inner202 to <2 x i64>
  %i.ts = mul nuw <2 x i64> %i.tp, %i.tr
  %i.tt = shufflevector <2 x i64> %i.tl, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.tu = add <2 x i64> %i.tf, %i.tt
  %i.tv = add <2 x i64> %i.tu, %i.ts              ; 2 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %i.th, i64 16
  %i.tx = load <2 x i64>, ptr %i.tw, align 1, !tbaa !12, !noalias !422 ; 2 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tk, i64 16
  %i.tz = load <2 x i64>, ptr %i.ty, align 1, !tbaa !12, !noalias !422
  %i.ua = xor <2 x i64> %i.tz, %i.tx              ; 2 uses
  %i.ub = bitcast <2 x i64> %i.ua to <4 x i32>
  %i.uc = and <2 x i64> %i.ua, splat (i64 4294967295)
  %i.ud = and <4 x i32> %i.ub, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner203 = shufflevector <4 x i32> %i.ud, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.ue = bitcast <4 x i32> %.inner203 to <2 x i64>
  %i.uf = mul nuw <2 x i64> %i.uc, %i.ue
  %i.ug = shufflevector <2 x i64> %i.tx, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.uh = add <2 x i64> %i.te, %i.ug
  %i.ui = add <2 x i64> %i.uh, %i.uf              ; 2 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %i.th, i64 32
  %i.uk = load <2 x i64>, ptr %i.uj, align 1, !tbaa !12, !noalias !422 ; 2 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %i.tk, i64 32
  %i.um = load <2 x i64>, ptr %i.ul, align 1, !tbaa !12, !noalias !422
  %i.un = xor <2 x i64> %i.um, %i.uk              ; 2 uses
  %i.uo = bitcast <2 x i64> %i.un to <4 x i32>
  %i.up = and <2 x i64> %i.un, splat (i64 4294967295)
  %i.uq = and <4 x i32> %i.uo, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner204 = shufflevector <4 x i32> %i.uq, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.ur = bitcast <4 x i32> %.inner204 to <2 x i64>
  %i.us = mul nuw <2 x i64> %i.up, %i.ur
  %i.ut = shufflevector <2 x i64> %i.uk, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.uu = add <2 x i64> %i.td, %i.ut
  %i.uv = add <2 x i64> %i.uu, %i.us              ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %i.th, i64 48
  %i.ux = load <2 x i64>, ptr %i.uw, align 1, !tbaa !12, !noalias !422 ; 2 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %i.tk, i64 48
  %i.uz = load <2 x i64>, ptr %i.uy, align 1, !tbaa !12, !noalias !422
  %i.va = xor <2 x i64> %i.uz, %i.ux              ; 2 uses
  %i.vb = bitcast <2 x i64> %i.va to <4 x i32>
  %i.vc = and <2 x i64> %i.va, splat (i64 4294967295)
  %i.vd = and <4 x i32> %i.vb, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner205 = shufflevector <4 x i32> %i.vd, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.ve = bitcast <4 x i32> %.inner205 to <2 x i64>
  %i.vf = mul nuw <2 x i64> %i.vc, %i.ve
  %i.vg = shufflevector <2 x i64> %i.ux, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.vh = add <2 x i64> %i.tc, %i.vg
  %i.vi = add <2 x i64> %i.vh, %i.vf              ; 2 uses
  %i.vj = add nuw i64 %.0.i3377.i, 1              ; 2 uses
  %exitcond108.not.i = icmp eq i64 %i.vj, %.0106.i.lcssa.i
  br i1 %exitcond108.not.i, label %XXH3_accumulate.exit36.loopexit.i, label %.lr.ph79.i, !llvm.loop !86

XXH3_accumulate.exit36.loopexit.i:                ; preds = %.lr.ph79.i
  store <2 x i64> %i.tv, ptr %0, align 64, !tbaa !12, !alias.scope !422, !noalias !423
  store <2 x i64> %i.ui, ptr %.phi.trans.insert160.i, align 16, !tbaa !12, !alias.scope !422, !noalias !423
  store <2 x i64> %i.uv, ptr %.phi.trans.insert162.i, align 32, !tbaa !12, !alias.scope !422, !noalias !423
  store <2 x i64> %i.vi, ptr %.phi.trans.insert164.i, align 16, !tbaa !12, !alias.scope !422, !noalias !423
  br label %XXH3_accumulate.exit36.i

XXH3_accumulate.exit36.i:                         ; preds = %XXH3_accumulate.exit36.loopexit.i, %._crit_edge.i
  %i.vk = shl i64 %.0106.i.lcssa.i, 6
  %i.vl = getelementptr inbounds nuw i8, ptr %.1108.i.lcssa.i, i64 %i.vk ; 2 uses
  store i64 %.0106.i.lcssa.i, ptr %i.jw, align 8, !tbaa !128, !alias.scope !320, !noalias !323
  %i.vm = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.vn = getelementptr inbounds i8, ptr %i.vl, i64 -64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.vm, ptr noundef nonnull readonly align 1 dereferenceable(64) %i.vn, i64 64, i1 false)
  br label %bb.p

bb.j:                                             ; preds = %bb.h
  %i.vo = icmp sgt i64 %i.jp, 256
  br i1 %i.vo, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.vp = getelementptr inbounds i8, ptr %i.b, i64 -256
  %i.vq = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %0, i64 544
  %.promoted.i = load i64, ptr %i.vq, align 8, !tbaa !43, !alias.scope !428, !noalias !431
  %.pre130.i = load i64, ptr %i.vr, align 32, !tbaa !56, !alias.scope !320, !noalias !323
  %.phi.trans.insert132.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %.phi.trans.insert134.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %.phi.trans.insert136.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %i.g, i64 %.pre130.i ; 4 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 16
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vs, i64 32
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vs, i64 48
  br label %bb.l

bb.l:                                             ; preds = %XXH3_consumeStripes.exit.i, %bb.k
  %storemerge.i562.i = phi i64 [ %.promoted.i, %bb.k ], [ %storemerge.i5.i, %XXH3_consumeStripes.exit.i ] ; 5 uses
  %.2.i.i = phi ptr [ %.0107.i.i, %bb.k ], [ %i.aez, %XXH3_consumeStripes.exit.i ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !435)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !428)
  %i.vw = sub i64 %i.jm, %storemerge.i562.i       ; 5 uses
  %.not.i4.i = icmp ugt i64 %i.vw, 4
  br i1 %.not.i4.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.vx = sub nuw nsw i64 4, %i.vw                ; 2 uses
  %i.vy = shl i64 %storemerge.i562.i, 3
  %i.vz = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.vy
  tail call void @llvm.experimental.noalias.scope.decl(metadata !436)
  %.not81.i = icmp eq i64 %i.jm, %storemerge.i562.i
  %.pre138.i = load <2 x i64>, ptr %0, align 64, !tbaa !12, !noalias !428 ; 2 uses
  %.pre140.i = load <2 x i64>, ptr %.phi.trans.insert132.i, align 16, !tbaa !12, !noalias !428 ; 2 uses
  %.pre142.i = load <2 x i64>, ptr %.phi.trans.insert134.i, align 32, !tbaa !12, !noalias !428 ; 2 uses
  %.pre144.i = load <2 x i64>, ptr %.phi.trans.insert136.i, align 16, !tbaa !12, !noalias !428 ; 2 uses
  br i1 %.not81.i, label %XXH3_accumulate.exit32.i, label %.lr.ph55.i

.lr.ph55.i:                                       ; preds = %bb.m, %.lr.ph55.i
  %i.wa = phi <2 x i64> [ %i.yg, %.lr.ph55.i ], [ %.pre144.i, %bb.m ]
  %i.wb = phi <2 x i64> [ %i.xt, %.lr.ph55.i ], [ %.pre142.i, %bb.m ]
  %i.wc = phi <2 x i64> [ %i.xg, %.lr.ph55.i ], [ %.pre140.i, %bb.m ]
  %i.wd = phi <2 x i64> [ %i.wt, %.lr.ph55.i ], [ %.pre138.i, %bb.m ]
  %.0.i2954.i = phi i64 [ %i.yh, %.lr.ph55.i ], [ 0, %bb.m ] ; 3 uses
  %i.we = shl nuw nsw i64 %.0.i2954.i, 6
  %i.wf = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 %i.we ; 5 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.wg, i32 0, i32 3, i32 1), !noalias !439
  %i.wh = shl nuw nsw i64 %.0.i2954.i, 3
  %i.wi = getelementptr inbounds nuw i8, ptr %i.vz, i64 %i.wh ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !440), !noalias !428
  %i.wj = load <2 x i64>, ptr %i.wf, align 1, !tbaa !12, !noalias !443 ; 2 uses
  %i.wk = load <2 x i64>, ptr %i.wi, align 1, !tbaa !12, !noalias !443
  %i.wl = xor <2 x i64> %i.wk, %i.wj              ; 2 uses
  %i.wm = bitcast <2 x i64> %i.wl to <4 x i32>
  %i.wn = and <2 x i64> %i.wl, splat (i64 4294967295)
  %i.wo = and <4 x i32> %i.wm, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner206 = shufflevector <4 x i32> %i.wo, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.wp = bitcast <4 x i32> %.inner206 to <2 x i64>
  %i.wq = mul nuw <2 x i64> %i.wn, %i.wp
  %i.wr = shufflevector <2 x i64> %i.wj, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.ws = add <2 x i64> %i.wd, %i.wr
  %i.wt = add <2 x i64> %i.ws, %i.wq              ; 3 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wf, i64 16
  %i.wv = load <2 x i64>, ptr %i.wu, align 1, !tbaa !12, !noalias !443 ; 2 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wi, i64 16
  %i.wx = load <2 x i64>, ptr %i.ww, align 1, !tbaa !12, !noalias !443
  %i.wy = xor <2 x i64> %i.wx, %i.wv              ; 2 uses
  %i.wz = bitcast <2 x i64> %i.wy to <4 x i32>
  %i.xa = and <2 x i64> %i.wy, splat (i64 4294967295)
  %i.xb = and <4 x i32> %i.wz, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner207 = shufflevector <4 x i32> %i.xb, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.xc = bitcast <4 x i32> %.inner207 to <2 x i64>
  %i.xd = mul nuw <2 x i64> %i.xa, %i.xc
  %i.xe = shufflevector <2 x i64> %i.wv, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.xf = add <2 x i64> %i.wc, %i.xe
  %i.xg = add <2 x i64> %i.xf, %i.xd              ; 3 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %i.wf, i64 32
  %i.xi = load <2 x i64>, ptr %i.xh, align 1, !tbaa !12, !noalias !443 ; 2 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %i.wi, i64 32
  %i.xk = load <2 x i64>, ptr %i.xj, align 1, !tbaa !12, !noalias !443
  %i.xl = xor <2 x i64> %i.xk, %i.xi              ; 2 uses
  %i.xm = bitcast <2 x i64> %i.xl to <4 x i32>
  %i.xn = and <2 x i64> %i.xl, splat (i64 4294967295)
  %i.xo = and <4 x i32> %i.xm, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner208 = shufflevector <4 x i32> %i.xo, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.xp = bitcast <4 x i32> %.inner208 to <2 x i64>
  %i.xq = mul nuw <2 x i64> %i.xn, %i.xp
  %i.xr = shufflevector <2 x i64> %i.xi, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.xs = add <2 x i64> %i.wb, %i.xr
  %i.xt = add <2 x i64> %i.xs, %i.xq              ; 3 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %i.wf, i64 48
  %i.xv = load <2 x i64>, ptr %i.xu, align 1, !tbaa !12, !noalias !443 ; 2 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %i.wi, i64 48
  %i.xx = load <2 x i64>, ptr %i.xw, align 1, !tbaa !12, !noalias !443
  %i.xy = xor <2 x i64> %i.xx, %i.xv              ; 2 uses
  %i.xz = bitcast <2 x i64> %i.xy to <4 x i32>
  %i.ya = and <2 x i64> %i.xy, splat (i64 4294967295)
  %i.yb = and <4 x i32> %i.xz, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner209 = shufflevector <4 x i32> %i.yb, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.yc = bitcast <4 x i32> %.inner209 to <2 x i64>
  %i.yd = mul nuw <2 x i64> %i.ya, %i.yc
  %i.ye = shufflevector <2 x i64> %i.xv, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.yf = add <2 x i64> %i.wa, %i.ye
  %i.yg = add <2 x i64> %i.yf, %i.yd              ; 3 uses
  %i.yh = add nuw nsw i64 %.0.i2954.i, 1          ; 2 uses
  %exitcond94.not.i = icmp eq i64 %i.yh, %i.vw
  br i1 %exitcond94.not.i, label %XXH3_accumulate.exit32.loopexit.i, label %.lr.ph55.i, !llvm.loop !86

XXH3_accumulate.exit32.loopexit.i:                ; preds = %.lr.ph55.i
  store <2 x i64> %i.wt, ptr %0, align 64, !tbaa !12, !alias.scope !444, !noalias !445
  store <2 x i64> %i.xg, ptr %.phi.trans.insert132.i, align 16, !tbaa !12, !alias.scope !444, !noalias !445
  store <2 x i64> %i.xt, ptr %.phi.trans.insert134.i, align 32, !tbaa !12, !alias.scope !444, !noalias !445
  store <2 x i64> %i.yg, ptr %.phi.trans.insert136.i, align 16, !tbaa !12, !alias.scope !444, !noalias !445
  br label %XXH3_accumulate.exit32.i

XXH3_accumulate.exit32.i:                         ; preds = %bb.m, %XXH3_accumulate.exit32.loopexit.i
  %i.yi = phi <2 x i64> [ %i.yg, %XXH3_accumulate.exit32.loopexit.i ], [ %.pre144.i, %bb.m ] ; 2 uses
  %i.yj = phi <2 x i64> [ %i.xt, %XXH3_accumulate.exit32.loopexit.i ], [ %.pre142.i, %bb.m ] ; 2 uses
  %i.yk = phi <2 x i64> [ %i.xg, %XXH3_accumulate.exit32.loopexit.i ], [ %.pre140.i, %bb.m ] ; 2 uses
  %i.yl = phi <2 x i64> [ %i.wt, %XXH3_accumulate.exit32.loopexit.i ], [ %.pre138.i, %bb.m ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !450)
  %i.ym = lshr <2 x i64> %i.yl, splat (i64 47)
  %i.yn = load <2 x i64>, ptr %i.vs, align 1, !tbaa !12, !noalias !453
  %i.yo = xor <2 x i64> %i.ym, %i.yn
  %i.yp = xor <2 x i64> %i.yo, %i.yl              ; 2 uses
  %i.yq = bitcast <2 x i64> %i.yp to <4 x i32>
  %i.yr = shufflevector <4 x i32> %i.yq, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.ys = bitcast <4 x i32> %i.yr to <2 x i64>
  %i.yt = and <2 x i64> %i.yp, splat (i64 4294967295)
  %i.yu = mul nuw <2 x i64> %i.yt, splat (i64 2654435761)
  %i.yv = mul <2 x i64> %i.ys, splat (i64 -7046029290881679360)
  %i.yw = add <2 x i64> %i.yv, %i.yu              ; 2 uses
  store <2 x i64> %i.yw, ptr %0, align 64, !tbaa !12, !alias.scope !454, !noalias !455
  %i.yx = lshr <2 x i64> %i.yk, splat (i64 47)
  %i.yy = load <2 x i64>, ptr %i.vt, align 1, !tbaa !12, !noalias !453
  %i.yz = xor <2 x i64> %i.yx, %i.yy
  %i.za = xor <2 x i64> %i.yz, %i.yk              ; 2 uses
  %i.zb = bitcast <2 x i64> %i.za to <4 x i32>
  %i.zc = shufflevector <4 x i32> %i.zb, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.zd = bitcast <4 x i32> %i.zc to <2 x i64>
  %i.ze = and <2 x i64> %i.za, splat (i64 4294967295)
  %i.zf = mul nuw <2 x i64> %i.ze, splat (i64 2654435761)
  %i.zg = mul <2 x i64> %i.zd, splat (i64 -7046029290881679360)
  %i.zh = add <2 x i64> %i.zg, %i.zf              ; 2 uses
  store <2 x i64> %i.zh, ptr %.phi.trans.insert132.i, align 16, !tbaa !12, !alias.scope !454, !noalias !455
  %i.zi = lshr <2 x i64> %i.yj, splat (i64 47)
  %i.zj = load <2 x i64>, ptr %i.vu, align 1, !tbaa !12, !noalias !453
  %i.zk = xor <2 x i64> %i.zi, %i.zj
  %i.zl = xor <2 x i64> %i.zk, %i.yj              ; 2 uses
  %i.zm = bitcast <2 x i64> %i.zl to <4 x i32>
  %i.zn = shufflevector <4 x i32> %i.zm, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.zo = bitcast <4 x i32> %i.zn to <2 x i64>
  %i.zp = and <2 x i64> %i.zl, splat (i64 4294967295)
  %i.zq = mul nuw <2 x i64> %i.zp, splat (i64 2654435761)
  %i.zr = mul <2 x i64> %i.zo, splat (i64 -7046029290881679360)
  %i.zs = add <2 x i64> %i.zr, %i.zq              ; 2 uses
  store <2 x i64> %i.zs, ptr %.phi.trans.insert134.i, align 32, !tbaa !12, !alias.scope !454, !noalias !455
  %i.zt = lshr <2 x i64> %i.yi, splat (i64 47)
  %i.zu = load <2 x i64>, ptr %i.vv, align 1, !tbaa !12, !noalias !453
  %i.zv = xor <2 x i64> %i.zt, %i.zu
  %i.zw = xor <2 x i64> %i.zv, %i.yi              ; 2 uses
  %i.zx = bitcast <2 x i64> %i.zw to <4 x i32>
  %i.zy = shufflevector <4 x i32> %i.zx, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.zz = bitcast <4 x i32> %i.zy to <2 x i64>
  %i.aaa = and <2 x i64> %i.zw, splat (i64 4294967295)
  %i.aab = mul nuw <2 x i64> %i.aaa, splat (i64 2654435761)
  %i.aac = mul <2 x i64> %i.zz, splat (i64 -7046029290881679360)
  %i.aad = add <2 x i64> %i.aac, %i.aab           ; 2 uses
  store <2 x i64> %i.aad, ptr %.phi.trans.insert136.i, align 16, !tbaa !12, !alias.scope !454, !noalias !455
  %i.aae = shl nuw nsw i64 %i.vw, 6
  %i.aaf = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 %i.aae
  tail call void @llvm.experimental.noalias.scope.decl(metadata !457)
  %.not82.i = icmp eq i64 %i.vw, 4
  br i1 %.not82.i, label %XXH3_consumeStripes.exit.i, label %.lr.ph59.i

.lr.ph59.i:                                       ; preds = %XXH3_accumulate.exit32.i, %.lr.ph59.i
  %i.aag = phi <2 x i64> [ %i.acm, %.lr.ph59.i ], [ %i.aad, %XXH3_accumulate.exit32.i ]
  %i.aah = phi <2 x i64> [ %i.abz, %.lr.ph59.i ], [ %i.zs, %XXH3_accumulate.exit32.i ]
  %i.aai = phi <2 x i64> [ %i.abm, %.lr.ph59.i ], [ %i.zh, %XXH3_accumulate.exit32.i ]
  %i.aaj = phi <2 x i64> [ %i.aaz, %.lr.ph59.i ], [ %i.yw, %XXH3_accumulate.exit32.i ]
  %.0.i2558.i = phi i64 [ %i.acn, %.lr.ph59.i ], [ 0, %XXH3_accumulate.exit32.i ] ; 3 uses
  %i.aak = shl nuw nsw i64 %.0.i2558.i, 6
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aaf, i64 %i.aak ; 5 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aal, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.aam, i32 0, i32 3, i32 1), !noalias !460
  %i.aan = shl nuw nsw i64 %.0.i2558.i, 3
  %i.aao = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.aan ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !461), !noalias !428
  %i.aap = load <2 x i64>, ptr %i.aal, align 1, !tbaa !12, !noalias !464 ; 2 uses
  %i.aaq = load <2 x i64>, ptr %i.aao, align 1, !tbaa !12, !noalias !464
  %i.aar = xor <2 x i64> %i.aaq, %i.aap           ; 2 uses
  %i.aas = bitcast <2 x i64> %i.aar to <4 x i32>
  %i.aat = and <2 x i64> %i.aar, splat (i64 4294967295)
  %i.aau = and <4 x i32> %i.aas, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner210 = shufflevector <4 x i32> %i.aau, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.aav = bitcast <4 x i32> %.inner210 to <2 x i64>
  %i.aaw = mul nuw <2 x i64> %i.aat, %i.aav
  %i.aax = shufflevector <2 x i64> %i.aap, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.aay = add <2 x i64> %i.aaj, %i.aax
  %i.aaz = add <2 x i64> %i.aay, %i.aaw           ; 2 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aal, i64 16
  %i.abb = load <2 x i64>, ptr %i.aba, align 1, !tbaa !12, !noalias !464 ; 2 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aao, i64 16
  %i.abd = load <2 x i64>, ptr %i.abc, align 1, !tbaa !12, !noalias !464
  %i.abe = xor <2 x i64> %i.abd, %i.abb           ; 2 uses
  %i.abf = bitcast <2 x i64> %i.abe to <4 x i32>
  %i.abg = and <2 x i64> %i.abe, splat (i64 4294967295)
  %i.abh = and <4 x i32> %i.abf, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner211 = shufflevector <4 x i32> %i.abh, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.abi = bitcast <4 x i32> %.inner211 to <2 x i64>
  %i.abj = mul nuw <2 x i64> %i.abg, %i.abi
  %i.abk = shufflevector <2 x i64> %i.abb, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.abl = add <2 x i64> %i.aai, %i.abk
  %i.abm = add <2 x i64> %i.abl, %i.abj           ; 2 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %i.aal, i64 32
  %i.abo = load <2 x i64>, ptr %i.abn, align 1, !tbaa !12, !noalias !464 ; 2 uses
  %i.abp = getelementptr inbounds nuw i8, ptr %i.aao, i64 32
  %i.abq = load <2 x i64>, ptr %i.abp, align 1, !tbaa !12, !noalias !464
  %i.abr = xor <2 x i64> %i.abq, %i.abo           ; 2 uses
  %i.abs = bitcast <2 x i64> %i.abr to <4 x i32>
  %i.abt = and <2 x i64> %i.abr, splat (i64 4294967295)
  %i.abu = and <4 x i32> %i.abs, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner212 = shufflevector <4 x i32> %i.abu, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.abv = bitcast <4 x i32> %.inner212 to <2 x i64>
  %i.abw = mul nuw <2 x i64> %i.abt, %i.abv
  %i.abx = shufflevector <2 x i64> %i.abo, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.aby = add <2 x i64> %i.aah, %i.abx
  %i.abz = add <2 x i64> %i.aby, %i.abw           ; 2 uses
  %i.aca = getelementptr inbounds nuw i8, ptr %i.aal, i64 48
  %i.acb = load <2 x i64>, ptr %i.aca, align 1, !tbaa !12, !noalias !464 ; 2 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %i.aao, i64 48
  %i.acd = load <2 x i64>, ptr %i.acc, align 1, !tbaa !12, !noalias !464
  %i.ace = xor <2 x i64> %i.acd, %i.acb           ; 2 uses
  %i.acf = bitcast <2 x i64> %i.ace to <4 x i32>
  %i.acg = and <2 x i64> %i.ace, splat (i64 4294967295)
  %i.ach = and <4 x i32> %i.acf, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner213 = shufflevector <4 x i32> %i.ach, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.aci = bitcast <4 x i32> %.inner213 to <2 x i64>
  %i.acj = mul nuw <2 x i64> %i.acg, %i.aci
  %i.ack = shufflevector <2 x i64> %i.acb, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.acl = add <2 x i64> %i.aag, %i.ack
  %i.acm = add <2 x i64> %i.acl, %i.acj           ; 2 uses
  %i.acn = add nuw i64 %.0.i2558.i, 1             ; 2 uses
  %exitcond98.not.i = icmp eq i64 %i.acn, %i.vx
  br i1 %exitcond98.not.i, label %XXH3_consumeStripes.exit.loopexit.i, label %.lr.ph59.i, !llvm.loop !86

bb.n:                                             ; preds = %bb.l
  %i.aco = shl i64 %storemerge.i562.i, 3
  %i.acp = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.aco
  tail call void @llvm.experimental.noalias.scope.decl(metadata !465)
  %.pre145.i = load <2 x i64>, ptr %0, align 64, !tbaa !12, !alias.scope !468, !noalias !471
  %.pre147.i = load <2 x i64>, ptr %.phi.trans.insert132.i, align 16, !tbaa !12, !alias.scope !468, !noalias !471
  %.pre149.i = load <2 x i64>, ptr %.phi.trans.insert134.i, align 32, !tbaa !12, !alias.scope !468, !noalias !471
  %.pre151.i = load <2 x i64>, ptr %.phi.trans.insert136.i, align 16, !tbaa !12, !alias.scope !468, !noalias !471
  br label %XXH3_accumulate_512_sse2.exit.i23.i

XXH3_accumulate_512_sse2.exit.i23.i:              ; preds = %XXH3_accumulate_512_sse2.exit.i23.i, %bb.n
  %i.acq = phi <2 x i64> [ %.pre151.i, %bb.n ], [ %i.aew, %XXH3_accumulate_512_sse2.exit.i23.i ]
  %i.acr = phi <2 x i64> [ %.pre149.i, %bb.n ], [ %i.aej, %XXH3_accumulate_512_sse2.exit.i23.i ]
  %i.acs = phi <2 x i64> [ %.pre147.i, %bb.n ], [ %i.adw, %XXH3_accumulate_512_sse2.exit.i23.i ]
  %i.act = phi <2 x i64> [ %.pre145.i, %bb.n ], [ %i.adj, %XXH3_accumulate_512_sse2.exit.i23.i ]
  %.0.i2161.i = phi i64 [ 0, %bb.n ], [ %i.aex, %XXH3_accumulate_512_sse2.exit.i23.i ] ; 3 uses
  %i.acu = shl nuw nsw i64 %.0.i2161.i, 6
  %i.acv = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 %i.acu ; 5 uses
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acv, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.acw, i32 0, i32 3, i32 1), !noalias !476
  %i.acx = shl nuw nsw i64 %.0.i2161.i, 3
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acp, i64 %i.acx ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !477), !noalias !428
  %i.acz = load <2 x i64>, ptr %i.acv, align 1, !tbaa !12, !noalias !478 ; 2 uses
  %i.ada = load <2 x i64>, ptr %i.acy, align 1, !tbaa !12, !noalias !478
  %i.adb = xor <2 x i64> %i.ada, %i.acz           ; 2 uses
  %i.adc = bitcast <2 x i64> %i.adb to <4 x i32>
  %i.add = and <2 x i64> %i.adb, splat (i64 4294967295)
  %i.ade = and <4 x i32> %i.adc, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner214 = shufflevector <4 x i32> %i.ade, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.adf = bitcast <4 x i32> %.inner214 to <2 x i64>
  %i.adg = mul nuw <2 x i64> %i.add, %i.adf
  %i.adh = shufflevector <2 x i64> %i.acz, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.adi = add <2 x i64> %i.act, %i.adh
  %i.adj = add <2 x i64> %i.adi, %i.adg           ; 2 uses
  %i.adk = getelementptr inbounds nuw i8, ptr %i.acv, i64 16
  %i.adl = load <2 x i64>, ptr %i.adk, align 1, !tbaa !12, !noalias !478 ; 2 uses
  %i.adm = getelementptr inbounds nuw i8, ptr %i.acy, i64 16
  %i.adn = load <2 x i64>, ptr %i.adm, align 1, !tbaa !12, !noalias !478
  %i.ado = xor <2 x i64> %i.adn, %i.adl           ; 2 uses
  %i.adp = bitcast <2 x i64> %i.ado to <4 x i32>
  %i.adq = and <2 x i64> %i.ado, splat (i64 4294967295)
  %i.adr = and <4 x i32> %i.adp, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner215 = shufflevector <4 x i32> %i.adr, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.ads = bitcast <4 x i32> %.inner215 to <2 x i64>
  %i.adt = mul nuw <2 x i64> %i.adq, %i.ads
  %i.adu = shufflevector <2 x i64> %i.adl, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.adv = add <2 x i64> %i.acs, %i.adu
  %i.adw = add <2 x i64> %i.adv, %i.adt           ; 2 uses
  %i.adx = getelementptr inbounds nuw i8, ptr %i.acv, i64 32
  %i.ady = load <2 x i64>, ptr %i.adx, align 1, !tbaa !12, !noalias !478 ; 2 uses
  %i.adz = getelementptr inbounds nuw i8, ptr %i.acy, i64 32
  %i.aea = load <2 x i64>, ptr %i.adz, align 1, !tbaa !12, !noalias !478
  %i.aeb = xor <2 x i64> %i.aea, %i.ady           ; 2 uses
  %i.aec = bitcast <2 x i64> %i.aeb to <4 x i32>
  %i.aed = and <2 x i64> %i.aeb, splat (i64 4294967295)
  %i.aee = and <4 x i32> %i.aec, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner216 = shufflevector <4 x i32> %i.aee, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.aef = bitcast <4 x i32> %.inner216 to <2 x i64>
  %i.aeg = mul nuw <2 x i64> %i.aed, %i.aef
  %i.aeh = shufflevector <2 x i64> %i.ady, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.aei = add <2 x i64> %i.acr, %i.aeh
  %i.aej = add <2 x i64> %i.aei, %i.aeg           ; 2 uses
  %i.aek = getelementptr inbounds nuw i8, ptr %i.acv, i64 48
  %i.ael = load <2 x i64>, ptr %i.aek, align 1, !tbaa !12, !noalias !478 ; 2 uses
  %i.aem = getelementptr inbounds nuw i8, ptr %i.acy, i64 48
  %i.aen = load <2 x i64>, ptr %i.aem, align 1, !tbaa !12, !noalias !478
  %i.aeo = xor <2 x i64> %i.aen, %i.ael           ; 2 uses
  %i.aep = bitcast <2 x i64> %i.aeo to <4 x i32>
  %i.aeq = and <2 x i64> %i.aeo, splat (i64 4294967295)
  %i.aer = and <4 x i32> %i.aep, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner217 = shufflevector <4 x i32> %i.aer, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.aes = bitcast <4 x i32> %.inner217 to <2 x i64>
  %i.aet = mul nuw <2 x i64> %i.aeq, %i.aes
  %i.aeu = shufflevector <2 x i64> %i.ael, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.aev = add <2 x i64> %i.acq, %i.aeu
  %i.aew = add <2 x i64> %i.aev, %i.aet           ; 2 uses
  %i.aex = add nuw nsw i64 %.0.i2161.i, 1         ; 2 uses
  %exitcond100.not.i = icmp eq i64 %i.aex, 4
  br i1 %exitcond100.not.i, label %XXH3_accumulate.exit24.i, label %XXH3_accumulate_512_sse2.exit.i23.i, !llvm.loop !86

XXH3_accumulate.exit24.i:                         ; preds = %XXH3_accumulate_512_sse2.exit.i23.i
  store <2 x i64> %i.adj, ptr %0, align 64, !tbaa !12, !alias.scope !468, !noalias !471
  store <2 x i64> %i.adw, ptr %.phi.trans.insert132.i, align 16, !tbaa !12, !alias.scope !468, !noalias !471
  store <2 x i64> %i.aej, ptr %.phi.trans.insert134.i, align 32, !tbaa !12, !alias.scope !468, !noalias !471
  store <2 x i64> %i.aew, ptr %.phi.trans.insert136.i, align 16, !tbaa !12, !alias.scope !468, !noalias !471
  %i.aey = add i64 %storemerge.i562.i, 4
  br label %XXH3_consumeStripes.exit.i

XXH3_consumeStripes.exit.loopexit.i:              ; preds = %.lr.ph59.i
  store <2 x i64> %i.aaz, ptr %0, align 64, !tbaa !12, !alias.scope !479, !noalias !480
  store <2 x i64> %i.abm, ptr %.phi.trans.insert132.i, align 16, !tbaa !12, !alias.scope !479, !noalias !480
  store <2 x i64> %i.abz, ptr %.phi.trans.insert134.i, align 32, !tbaa !12, !alias.scope !479, !noalias !480
  store <2 x i64> %i.acm, ptr %.phi.trans.insert136.i, align 16, !tbaa !12, !alias.scope !479, !noalias !480
  br label %XXH3_consumeStripes.exit.i

XXH3_consumeStripes.exit.i:                       ; preds = %XXH3_consumeStripes.exit.loopexit.i, %XXH3_accumulate.exit24.i, %XXH3_accumulate.exit32.i
  %storemerge.i5.i = phi i64 [ %i.aey, %XXH3_accumulate.exit24.i ], [ 0, %XXH3_accumulate.exit32.i ], [ %i.vx, %XXH3_consumeStripes.exit.loopexit.i ] ; 2 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 256 ; 3 uses
  %i.afa = icmp ult ptr %i.aez, %i.vp
  br i1 %i.afa, label %bb.l, label %bb.o, !llvm.loop !234

bb.o:                                             ; preds = %XXH3_consumeStripes.exit.i
  store i64 %storemerge.i5.i, ptr %i.vq, align 8, !tbaa !43, !alias.scope !428, !noalias !431
  %i.afb = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.afc = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 192
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.afb, ptr noundef nonnull readonly align 1 dereferenceable(64) %i.afc, i64 64, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.j, %XXH3_accumulate.exit36.i
  %.3.i.i = phi ptr [ %i.vl, %XXH3_accumulate.exit36.i ], [ %i.aez, %bb.o ], [ %.0107.i.i, %bb.j ] ; 2 uses
  %i.afd = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.afe = ptrtoint ptr %.3.i.i to i64
  %i.aff = sub i64 %i.jn, %i.afe                  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.afd, ptr readonly align 1 %.3.i.i, i64 %i.aff, i1 false)
  %i.afg = trunc i64 %i.aff to i32
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.c
  %storemerge.i.i = phi i32 [ %i.afg, %bb.p ], [ %i.t, %bb.c ]
  store i32 %storemerge.i.i, ptr %i.k, align 64, !tbaa !69, !alias.scope !320, !noalias !323
  br label %XXH_INLINE_XXH3_128bits_update.exit

XXH_INLINE_XXH3_128bits_update.exit:              ; preds = %bb.a, %bb.q
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local void @PHP_XXH3_128_Final(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly %1) #7 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !53   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = select i1 %i.d, ptr %i.e, ptr %i.c       ; 46 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 528
  %i.h = load i64, ptr %i.g, align 16, !tbaa !68  ; 46 uses
  %i.i = icmp ugt i64 %i.h, 240
  br i1 %i.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load <2 x i64>, ptr %1, align 16 ; 5 uses
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.17.0.copyload.i = load <2 x i64>, ptr %.sroa.17.0..sroa_idx.i, align 16 ; 5 uses
  %.sroa.31.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.31.0.copyload.i = load <2 x i64>, ptr %.sroa.31.0..sroa_idx.i, align 16 ; 5 uses
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.45.0.copyload.i = load <2 x i64>, ptr %.sroa.45.0..sroa_idx.i, align 16 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 2 uses
  %i.k = load i32, ptr %i.j, align 64, !tbaa !69  ; 5 uses
  %i.l = icmp ugt i32 %i.k, 63
  br i1 %i.l, label %bb.c, label %XXH3_accumulate_512_sse2.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.m = add i32 %i.k, -1
  %i.n = lshr i32 %i.m, 6                         ; 2 uses
  %i.o = zext nneg i32 %i.n to i64                ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 520
  %i.q = load i64, ptr %i.p, align 8, !tbaa !128  ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 536
  %i.s = load i64, ptr %i.r, align 8, !tbaa !57   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 544
  %i.v = load i64, ptr %i.u, align 32, !tbaa !56  ; 3 uses
  %i.w = sub i64 %i.s, %i.q                       ; 5 uses
  %.not.i.i.i = icmp ugt i64 %i.w, %i.o
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = sub nuw nsw i64 %i.o, %i.w
  %i.y = shl i64 %i.q, 3
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.y
  %.not70.i = icmp eq i64 %i.s, %i.q
  br i1 %.not70.i, label %XXH3_accumulate.exit36.i.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.sroa.45.0.i = phi <2 x i64> [ %i.cc, %.lr.ph.i ], [ %.sroa.45.0.copyload.i, %bb.d ]
  %.sroa.31.0.i = phi <2 x i64> [ %i.bp, %.lr.ph.i ], [ %.sroa.31.0.copyload.i, %bb.d ]
  %.sroa.17.0.i = phi <2 x i64> [ %i.bc, %.lr.ph.i ], [ %.sroa.17.0.copyload.i, %bb.d ]
  %.sroa.0.0.i = phi <2 x i64> [ %i.ap, %.lr.ph.i ], [ %.sroa.0.0.copyload.i, %bb.d ]
  %.0.i33.i61.i = phi i64 [ %i.cd, %.lr.ph.i ], [ 0, %bb.d ] ; 3 uses
  %i.aa = shl nuw nsw i64 %.0.i33.i61.i, 6
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.aa ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %i.ac, i32 0, i32 3, i32 1), !noalias !485
  %i.ad = shl nuw nsw i64 %.0.i33.i61.i, 3
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ad ; 4 uses
  %i.af = load <2 x i64>, ptr %i.ab, align 1, !tbaa !12, !noalias !490 ; 2 uses
  %i.ag = load <2 x i64>, ptr %i.ae, align 1, !tbaa !12, !noalias !490
  %i.ah = xor <2 x i64> %i.ag, %i.af              ; 2 uses
  %i.ai = bitcast <2 x i64> %i.ah to <4 x i32>
  %i.aj = and <2 x i64> %i.ah, splat (i64 4294967295)
  %i.ak = and <4 x i32> %i.ai, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner = shufflevector <4 x i32> %i.ak, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.al = bitcast <4 x i32> %.inner to <2 x i64>
  %i.am = mul nuw <2 x i64> %i.aj, %i.al
  %i.an = shufflevector <2 x i64> %i.af, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.ao = add <2 x i64> %.sroa.0.0.i, %i.an
  %i.ap = add <2 x i64> %i.ao, %i.am              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ar = load <2 x i64>, ptr %i.aq, align 1, !tbaa !12, !noalias !490 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.at = load <2 x i64>, ptr %i.as, align 1, !tbaa !12, !noalias !490
  %i.au = xor <2 x i64> %i.at, %i.ar              ; 2 uses
  %i.av = bitcast <2 x i64> %i.au to <4 x i32>
  %i.aw = and <2 x i64> %i.au, splat (i64 4294967295)
  %i.ax = and <4 x i32> %i.av, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner56 = shufflevector <4 x i32> %i.ax, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.ay = bitcast <4 x i32> %.inner56 to <2 x i64>
  %i.az = mul nuw <2 x i64> %i.aw, %i.ay
  %i.ba = shufflevector <2 x i64> %i.ar, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.bb = add <2 x i64> %.sroa.17.0.i, %i.ba
  %i.bc = add <2 x i64> %i.bb, %i.az              ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.be = load <2 x i64>, ptr %i.bd, align 1, !tbaa !12, !noalias !490 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.bg = load <2 x i64>, ptr %i.bf, align 1, !tbaa !12, !noalias !490
  %i.bh = xor <2 x i64> %i.bg, %i.be              ; 2 uses
  %i.bi = bitcast <2 x i64> %i.bh to <4 x i32>
  %i.bj = and <2 x i64> %i.bh, splat (i64 4294967295)
  %i.bk = and <4 x i32> %i.bi, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner57 = shufflevector <4 x i32> %i.bk, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.bl = bitcast <4 x i32> %.inner57 to <2 x i64>
  %i.bm = mul nuw <2 x i64> %i.bj, %i.bl
  %i.bn = shufflevector <2 x i64> %i.be, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.bo = add <2 x i64> %.sroa.31.0.i, %i.bn
  %i.bp = add <2 x i64> %i.bo, %i.bm              ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.br = load <2 x i64>, ptr %i.bq, align 1, !tbaa !12, !noalias !490 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.bt = load <2 x i64>, ptr %i.bs, align 1, !tbaa !12, !noalias !490
  %i.bu = xor <2 x i64> %i.bt, %i.br              ; 2 uses
  %i.bv = bitcast <2 x i64> %i.bu to <4 x i32>
  %i.bw = and <2 x i64> %i.bu, splat (i64 4294967295)
  %i.bx = and <4 x i32> %i.bv, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner58 = shufflevector <4 x i32> %i.bx, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.by = bitcast <4 x i32> %.inner58 to <2 x i64>
  %i.bz = mul nuw <2 x i64> %i.bw, %i.by
  %i.ca = shufflevector <2 x i64> %i.br, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.cb = add <2 x i64> %.sroa.45.0.i, %i.ca
  %i.cc = add <2 x i64> %i.cb, %i.bz              ; 2 uses
  %i.cd = add nuw nsw i64 %.0.i33.i61.i, 1        ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cd, %i.w
  br i1 %exitcond.not.i, label %XXH3_accumulate.exit36.i.i, label %.lr.ph.i, !llvm.loop !86

XXH3_accumulate.exit36.i.i:                       ; preds = %.lr.ph.i, %bb.d
  %.sroa.45.1.i = phi <2 x i64> [ %.sroa.45.0.copyload.i, %bb.d ], [ %i.cc, %.lr.ph.i ] ; 2 uses
  %.sroa.31.1.i = phi <2 x i64> [ %.sroa.31.0.copyload.i, %bb.d ], [ %i.bp, %.lr.ph.i ] ; 2 uses
  %.sroa.17.1.i = phi <2 x i64> [ %.sroa.17.0.copyload.i, %bb.d ], [ %i.bc, %.lr.ph.i ] ; 2 uses
  %.sroa.0.1.i = phi <2 x i64> [ %.sroa.0.0.copyload.i, %bb.d ], [ %i.ap, %.lr.ph.i ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.v ; 4 uses
  %i.cf = lshr <2 x i64> %.sroa.0.1.i, splat (i64 47)
  %i.cg = load <2 x i64>, ptr %i.ce, align 1, !tbaa !12, !noalias !493
  %i.ch = xor <2 x i64> %i.cf, %i.cg
  %i.ci = xor <2 x i64> %i.ch, %.sroa.0.1.i       ; 2 uses
  %i.cj = bitcast <2 x i64> %i.ci to <4 x i32>
  %i.ck = shufflevector <4 x i32> %i.cj, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.cl = bitcast <4 x i32> %i.ck to <2 x i64>
  %i.cm = and <2 x i64> %i.ci, splat (i64 4294967295)
  %i.cn = mul nuw <2 x i64> %i.cm, splat (i64 2654435761)
  %i.co = mul <2 x i64> %i.cl, splat (i64 -7046029290881679360)
  %i.cp = add <2 x i64> %i.co, %i.cn              ; 2 uses
  %i.cq = lshr <2 x i64> %.sroa.17.1.i, splat (i64 47)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cs = load <2 x i64>, ptr %i.cr, align 1, !tbaa !12, !noalias !493
  %i.ct = xor <2 x i64> %i.cq, %i.cs
  %i.cu = xor <2 x i64> %i.ct, %.sroa.17.1.i      ; 2 uses
  %i.cv = bitcast <2 x i64> %i.cu to <4 x i32>
  %i.cw = shufflevector <4 x i32> %i.cv, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.cx = bitcast <4 x i32> %i.cw to <2 x i64>
  %i.cy = and <2 x i64> %i.cu, splat (i64 4294967295)
  %i.cz = mul nuw <2 x i64> %i.cy, splat (i64 2654435761)
  %i.da = mul <2 x i64> %i.cx, splat (i64 -7046029290881679360)
  %i.db = add <2 x i64> %i.da, %i.cz              ; 2 uses
  %i.dc = lshr <2 x i64> %.sroa.31.1.i, splat (i64 47)
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.de = load <2 x i64>, ptr %i.dd, align 1, !tbaa !12, !noalias !493
  %i.df = xor <2 x i64> %i.dc, %i.de
  %i.dg = xor <2 x i64> %i.df, %.sroa.31.1.i      ; 2 uses
  %i.dh = bitcast <2 x i64> %i.dg to <4 x i32>
  %i.di = shufflevector <4 x i32> %i.dh, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.dj = bitcast <4 x i32> %i.di to <2 x i64>
  %i.dk = and <2 x i64> %i.dg, splat (i64 4294967295)
  %i.dl = mul nuw <2 x i64> %i.dk, splat (i64 2654435761)
  %i.dm = mul <2 x i64> %i.dj, splat (i64 -7046029290881679360)
  %i.dn = add <2 x i64> %i.dm, %i.dl              ; 2 uses
  %i.do = lshr <2 x i64> %.sroa.45.1.i, splat (i64 47)
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  %i.dq = load <2 x i64>, ptr %i.dp, align 1, !tbaa !12, !noalias !493
  %i.dr = xor <2 x i64> %i.do, %i.dq
  %i.ds = xor <2 x i64> %i.dr, %.sroa.45.1.i      ; 2 uses
  %i.dt = bitcast <2 x i64> %i.ds to <4 x i32>
  %i.du = shufflevector <4 x i32> %i.dt, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.dv = bitcast <4 x i32> %i.du to <2 x i64>
  %i.dw = and <2 x i64> %i.ds, splat (i64 4294967295)
  %i.dx = mul nuw <2 x i64> %i.dw, splat (i64 2654435761)
  %i.dy = mul <2 x i64> %i.dv, splat (i64 -7046029290881679360)
  %i.dz = add <2 x i64> %i.dy, %i.dx              ; 2 uses
  %i.ea = shl nuw nsw i64 %i.w, 6
  %i.eb = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ea
  %.not71.i = icmp eq i64 %i.w, %i.o
  br i1 %.not71.i, label %XXH3_consumeStripes.exit.i.i, label %.lr.ph65.i

.lr.ph65.i:                                       ; preds = %XXH3_accumulate.exit36.i.i, %.lr.ph65.i
  %.sroa.45.2.i = phi <2 x i64> [ %i.ge, %.lr.ph65.i ], [ %i.dz, %XXH3_accumulate.exit36.i.i ]
  %.sroa.31.2.i = phi <2 x i64> [ %i.fr, %.lr.ph65.i ], [ %i.dn, %XXH3_accumulate.exit36.i.i ]
  %.sroa.17.2.i = phi <2 x i64> [ %i.fe, %.lr.ph65.i ], [ %i.db, %XXH3_accumulate.exit36.i.i ]
  %.sroa.0.2.i = phi <2 x i64> [ %i.er, %.lr.ph65.i ], [ %i.cp, %XXH3_accumulate.exit36.i.i ]
  %.0.i29.i64.i = phi i64 [ %i.gf, %.lr.ph65.i ], [ 0, %XXH3_accumulate.exit36.i.i ] ; 3 uses
  %i.ec = shl i64 %.0.i29.i64.i, 6
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.ec ; 5 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %i.ee, i32 0, i32 3, i32 1), !noalias !496
  %i.ef = shl i64 %.0.i29.i64.i, 3
  %i.eg = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ef ; 4 uses
  %i.eh = load <2 x i64>, ptr %i.ed, align 1, !tbaa !12, !noalias !499 ; 2 uses
  %i.ei = load <2 x i64>, ptr %i.eg, align 1, !tbaa !12, !noalias !499
  %i.ej = xor <2 x i64> %i.ei, %i.eh              ; 2 uses
  %i.ek = bitcast <2 x i64> %i.ej to <4 x i32>
  %i.el = and <2 x i64> %i.ej, splat (i64 4294967295)
  %i.em = and <4 x i32> %i.ek, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner59 = shufflevector <4 x i32> %i.em, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.en = bitcast <4 x i32> %.inner59 to <2 x i64>
  %i.eo = mul nuw <2 x i64> %i.el, %i.en
  %i.ep = shufflevector <2 x i64> %i.eh, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.eq = add <2 x i64> %.sroa.0.2.i, %i.ep
  %i.er = add <2 x i64> %i.eq, %i.eo              ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.et = load <2 x i64>, ptr %i.es, align 1, !tbaa !12, !noalias !499 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ev = load <2 x i64>, ptr %i.eu, align 1, !tbaa !12, !noalias !499
  %i.ew = xor <2 x i64> %i.ev, %i.et              ; 2 uses
  %i.ex = bitcast <2 x i64> %i.ew to <4 x i32>
  %i.ey = and <2 x i64> %i.ew, splat (i64 4294967295)
  %i.ez = and <4 x i32> %i.ex, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner60 = shufflevector <4 x i32> %i.ez, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.fa = bitcast <4 x i32> %.inner60 to <2 x i64>
  %i.fb = mul nuw <2 x i64> %i.ey, %i.fa
  %i.fc = shufflevector <2 x i64> %i.et, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.fd = add <2 x i64> %.sroa.17.2.i, %i.fc
  %i.fe = add <2 x i64> %i.fd, %i.fb              ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ed, i64 32
  %i.fg = load <2 x i64>, ptr %i.ff, align 1, !tbaa !12, !noalias !499 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.eg, i64 32
  %i.fi = load <2 x i64>, ptr %i.fh, align 1, !tbaa !12, !noalias !499
  %i.fj = xor <2 x i64> %i.fi, %i.fg              ; 2 uses
  %i.fk = bitcast <2 x i64> %i.fj to <4 x i32>
  %i.fl = and <2 x i64> %i.fj, splat (i64 4294967295)
  %i.fm = and <4 x i32> %i.fk, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner61 = shufflevector <4 x i32> %i.fm, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.fn = bitcast <4 x i32> %.inner61 to <2 x i64>
  %i.fo = mul nuw <2 x i64> %i.fl, %i.fn
  %i.fp = shufflevector <2 x i64> %i.fg, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.fq = add <2 x i64> %.sroa.31.2.i, %i.fp
  %i.fr = add <2 x i64> %i.fq, %i.fo              ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ed, i64 48
  %i.ft = load <2 x i64>, ptr %i.fs, align 1, !tbaa !12, !noalias !499 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.eg, i64 48
  %i.fv = load <2 x i64>, ptr %i.fu, align 1, !tbaa !12, !noalias !499
  %i.fw = xor <2 x i64> %i.fv, %i.ft              ; 2 uses
  %i.fx = bitcast <2 x i64> %i.fw to <4 x i32>
  %i.fy = and <2 x i64> %i.fw, splat (i64 4294967295)
  %i.fz = and <4 x i32> %i.fx, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner62 = shufflevector <4 x i32> %i.fz, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.ga = bitcast <4 x i32> %.inner62 to <2 x i64>
  %i.gb = mul nuw <2 x i64> %i.fy, %i.ga
  %i.gc = shufflevector <2 x i64> %i.ft, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.gd = add <2 x i64> %.sroa.45.2.i, %i.gc
  %i.ge = add <2 x i64> %i.gd, %i.gb              ; 2 uses
  %i.gf = add nuw i64 %.0.i29.i64.i, 1            ; 2 uses
  %exitcond76.not.i = icmp eq i64 %i.gf, %i.x
  br i1 %exitcond76.not.i, label %XXH3_consumeStripes.exit.i.i, label %.lr.ph65.i, !llvm.loop !86

bb.e:                                             ; preds = %bb.c
  %i.gg = shl i64 %i.q, 3
  %i.gh = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.gg
  %.not72.i = icmp eq i32 %i.n, 0
  br i1 %.not72.i, label %XXH3_consumeStripes.exit.i.i, label %.lr.ph68.i

.lr.ph68.i:                                       ; preds = %bb.e, %.lr.ph68.i
  %.sroa.45.3.i = phi <2 x i64> [ %i.ik, %.lr.ph68.i ], [ %.sroa.45.0.copyload.i, %bb.e ]
  %.sroa.31.3.i = phi <2 x i64> [ %i.hx, %.lr.ph68.i ], [ %.sroa.31.0.copyload.i, %bb.e ]
  %.sroa.17.3.i = phi <2 x i64> [ %i.hk, %.lr.ph68.i ], [ %.sroa.17.0.copyload.i, %bb.e ]
  %.sroa.0.3.i = phi <2 x i64> [ %i.gx, %.lr.ph68.i ], [ %.sroa.0.0.copyload.i, %bb.e ]
  %.0.i27.i67.i = phi i64 [ %i.il, %.lr.ph68.i ], [ 0, %bb.e ] ; 3 uses
  %i.gi = shl nuw nsw i64 %.0.i27.i67.i, 6
  %i.gj = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.gi ; 5 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %i.gk, i32 0, i32 3, i32 1), !noalias !502
  %i.gl = shl nuw nsw i64 %.0.i27.i67.i, 3
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.gl ; 4 uses
  %i.gn = load <2 x i64>, ptr %i.gj, align 1, !tbaa !12, !noalias !505 ; 2 uses
  %i.go = load <2 x i64>, ptr %i.gm, align 1, !tbaa !12, !noalias !505
  %i.gp = xor <2 x i64> %i.go, %i.gn              ; 2 uses
  %i.gq = bitcast <2 x i64> %i.gp to <4 x i32>
  %i.gr = and <2 x i64> %i.gp, splat (i64 4294967295)
  %i.gs = and <4 x i32> %i.gq, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner63 = shufflevector <4 x i32> %i.gs, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.gt = bitcast <4 x i32> %.inner63 to <2 x i64>
  %i.gu = mul nuw <2 x i64> %i.gr, %i.gt
  %i.gv = shufflevector <2 x i64> %i.gn, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.gw = add <2 x i64> %.sroa.0.3.i, %i.gv
  %i.gx = add <2 x i64> %i.gw, %i.gu              ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  %i.gz = load <2 x i64>, ptr %i.gy, align 1, !tbaa !12, !noalias !505 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %i.hb = load <2 x i64>, ptr %i.ha, align 1, !tbaa !12, !noalias !505
  %i.hc = xor <2 x i64> %i.hb, %i.gz              ; 2 uses
  %i.hd = bitcast <2 x i64> %i.hc to <4 x i32>
  %i.he = and <2 x i64> %i.hc, splat (i64 4294967295)
  %i.hf = and <4 x i32> %i.hd, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner64 = shufflevector <4 x i32> %i.hf, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.hg = bitcast <4 x i32> %.inner64 to <2 x i64>
  %i.hh = mul nuw <2 x i64> %i.he, %i.hg
  %i.hi = shufflevector <2 x i64> %i.gz, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.hj = add <2 x i64> %.sroa.17.3.i, %i.hi
  %i.hk = add <2 x i64> %i.hj, %i.hh              ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gj, i64 32
  %i.hm = load <2 x i64>, ptr %i.hl, align 1, !tbaa !12, !noalias !505 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gm, i64 32
  %i.ho = load <2 x i64>, ptr %i.hn, align 1, !tbaa !12, !noalias !505
  %i.hp = xor <2 x i64> %i.ho, %i.hm              ; 2 uses
  %i.hq = bitcast <2 x i64> %i.hp to <4 x i32>
  %i.hr = and <2 x i64> %i.hp, splat (i64 4294967295)
  %i.hs = and <4 x i32> %i.hq, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner65 = shufflevector <4 x i32> %i.hs, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.ht = bitcast <4 x i32> %.inner65 to <2 x i64>
  %i.hu = mul nuw <2 x i64> %i.hr, %i.ht
  %i.hv = shufflevector <2 x i64> %i.hm, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.hw = add <2 x i64> %.sroa.31.3.i, %i.hv
  %i.hx = add <2 x i64> %i.hw, %i.hu              ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gj, i64 48
  %i.hz = load <2 x i64>, ptr %i.hy, align 1, !tbaa !12, !noalias !505 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.gm, i64 48
  %i.ib = load <2 x i64>, ptr %i.ia, align 1, !tbaa !12, !noalias !505
  %i.ic = xor <2 x i64> %i.ib, %i.hz              ; 2 uses
  %i.id = bitcast <2 x i64> %i.ic to <4 x i32>
  %i.ie = and <2 x i64> %i.ic, splat (i64 4294967295)
  %i.if = and <4 x i32> %i.id, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner66 = shufflevector <4 x i32> %i.if, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.ig = bitcast <4 x i32> %.inner66 to <2 x i64>
  %i.ih = mul nuw <2 x i64> %i.ie, %i.ig
end_hunk_3
