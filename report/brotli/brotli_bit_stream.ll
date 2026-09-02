Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/brotli/original/brotli_bit_stream?download=true
inline.NumInlined: 36
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 14
begin_hunk_0_@BrotliStoreMetaBlock:bb.a
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !296
  %i.ea = getelementptr inbounds nuw i8, ptr %12, i64 216
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !295
  tail call fastcc void @EncodeContextMap(ptr noundef %0, ptr noundef nonnull %i.dv, ptr noundef %i.dz, i64 noundef %i.dt, i64 noundef %i.eb, ptr noundef %i.i, ptr noundef nonnull %13, ptr noundef nonnull %14)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ec = getelementptr inbounds nuw i8, ptr %12, i64 176
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !297
  %i.ee = getelementptr inbounds nuw i8, ptr %12, i64 184
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !292 ; 3 uses
  %i.eg = load i64, ptr %i.j, align 8, !tbaa !41
  %i.eh = mul i64 %i.eg, %i.ef                    ; 3 uses
  %.not.i = icmp eq i64 %i.eh, 0
  br i1 %.not.i, label %.thread.i, label %bb.l

.thread.i:                                        ; preds = %bb.k
  %i.ei = getelementptr inbounds nuw i8, ptr %i.j, i64 936 ; 2 uses
  store ptr null, ptr %i.ei, align 8, !tbaa !48
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ej = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.eh) #11
  %i.ek = getelementptr inbounds nuw i8, ptr %i.j, i64 936 ; 2 uses
  store ptr %i.ej, ptr %i.ek, align 8, !tbaa !48
  %i.el = shl i64 %i.eh, 1
  %i.em = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.el) #11
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.thread.i
  %i.en = phi ptr [ %i.ek, %bb.l ], [ %i.ei, %.thread.i ]
  %i.eo = phi ptr [ %i.em, %bb.l ], [ null, %.thread.i ]
  %i.ep = getelementptr inbounds nuw i8, ptr %i.j, i64 944 ; 6 uses
  store ptr %i.eo, ptr %i.ep, align 8, !tbaa !49
  %.not27.i = icmp eq i64 %i.ef, 0
  br i1 %.not27.i, label %BuildAndStoreEntropyCodesLiteral.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m, %.lr.ph.i
  %.026.i = phi i64 [ %i.ex, %.lr.ph.i ], [ 0, %bb.m ] ; 3 uses
  %i.eq = load i64, ptr %i.j, align 8, !tbaa !41  ; 2 uses
  %i.er = mul i64 %i.eq, %.026.i                  ; 2 uses
  %i.es = getelementptr inbounds nuw [1040 x i8], ptr %i.ed, i64 %.026.i
  %i.et = load ptr, ptr %i.en, align 8, !tbaa !48
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.er
  %i.ev = load ptr, ptr %i.ep, align 8, !tbaa !49
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %i.ev, i64 %i.er
  tail call fastcc void @BuildAndStoreHuffmanTree(ptr noundef %i.es, i64 noundef %i.eq, i64 noundef 256, ptr noundef %i.i, ptr noundef %i.eu, ptr noundef %i.ew, ptr noundef nonnull %13, ptr noundef nonnull %14)
  %i.ex = add nuw i64 %.026.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ex, %i.ef
  br i1 %exitcond.not.i, label %BuildAndStoreEntropyCodesLiteral.exit, label %.lr.ph.i, !llvm.loop !219

BuildAndStoreEntropyCodesLiteral.exit:            ; preds = %.lr.ph.i, %bb.m
  %i.ey = getelementptr inbounds nuw i8, ptr %12, i64 192
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !298
  %i.fa = getelementptr inbounds nuw i8, ptr %12, i64 200
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !299 ; 3 uses
  %i.fc = load i64, ptr %i.k, align 8, !tbaa !41
  %i.fd = mul i64 %i.fc, %i.fb                    ; 3 uses
  %.not.i199 = icmp eq i64 %i.fd, 0
  br i1 %.not.i199, label %.thread.i204, label %bb.n

.thread.i204:                                     ; preds = %BuildAndStoreEntropyCodesLiteral.exit
  %i.fe = getelementptr inbounds nuw i8, ptr %i.j, i64 1888 ; 2 uses
  store ptr null, ptr %i.fe, align 8, !tbaa !48
  br label %bb.o

bb.n:                                             ; preds = %BuildAndStoreEntropyCodesLiteral.exit
  %i.ff = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.fd) #11
  %i.fg = getelementptr inbounds nuw i8, ptr %i.j, i64 1888 ; 2 uses
  store ptr %i.ff, ptr %i.fg, align 8, !tbaa !48
  %i.fh = shl i64 %i.fd, 1
  %i.fi = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.fh) #11
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.thread.i204
  %i.fj = phi ptr [ %i.fg, %bb.n ], [ %i.fe, %.thread.i204 ]
  %i.fk = phi ptr [ %i.fi, %bb.n ], [ null, %.thread.i204 ]
  %i.fl = getelementptr inbounds nuw i8, ptr %i.j, i64 1896 ; 4 uses
  store ptr %i.fk, ptr %i.fl, align 8, !tbaa !49
  %.not27.i200 = icmp eq i64 %i.fb, 0
  br i1 %.not27.i200, label %BuildAndStoreEntropyCodesCommand.exit, label %.lr.ph.i201

.lr.ph.i201:                                      ; preds = %bb.o, %.lr.ph.i201
  %.026.i202 = phi i64 [ %i.ft, %.lr.ph.i201 ], [ 0, %bb.o ] ; 3 uses
  %i.fm = load i64, ptr %i.k, align 8, !tbaa !41  ; 2 uses
  %i.fn = mul i64 %i.fm, %.026.i202               ; 2 uses
  %i.fo = getelementptr inbounds nuw [2832 x i8], ptr %i.ez, i64 %.026.i202
  %i.fp = load ptr, ptr %i.fj, align 8, !tbaa !48
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.fn
  %i.fr = load ptr, ptr %i.fl, align 8, !tbaa !49
  %i.fs = getelementptr inbounds nuw [2 x i8], ptr %i.fr, i64 %i.fn
  tail call fastcc void @BuildAndStoreHuffmanTree(ptr noundef %i.fo, i64 noundef %i.fm, i64 noundef 704, ptr noundef %i.i, ptr noundef %i.fq, ptr noundef %i.fs, ptr noundef nonnull %13, ptr noundef nonnull %14)
  %i.ft = add nuw i64 %.026.i202, 1               ; 2 uses
  %exitcond.not.i203 = icmp eq i64 %i.ft, %i.fb
  br i1 %exitcond.not.i203, label %BuildAndStoreEntropyCodesCommand.exit, label %.lr.ph.i201, !llvm.loop !220

BuildAndStoreEntropyCodesCommand.exit:            ; preds = %.lr.ph.i201, %bb.o
  %i.fu = getelementptr inbounds nuw i8, ptr %12, i64 208
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !300
  %i.fw = getelementptr inbounds nuw i8, ptr %12, i64 216
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !295 ; 3 uses
  %i.fy = zext i32 %i.c to i64
  %i.fz = load i64, ptr %i.l, align 8, !tbaa !41
  %i.ga = mul i64 %i.fz, %i.fx                    ; 3 uses
  %.not.i205 = icmp eq i64 %i.ga, 0
  br i1 %.not.i205, label %.thread.i210, label %bb.p

.thread.i210:                                     ; preds = %BuildAndStoreEntropyCodesCommand.exit
  %i.gb = getelementptr inbounds nuw i8, ptr %i.j, i64 2840 ; 2 uses
  store ptr null, ptr %i.gb, align 8, !tbaa !48
  br label %bb.q

bb.p:                                             ; preds = %BuildAndStoreEntropyCodesCommand.exit
  %i.gc = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.ga) #11
  %i.gd = getelementptr inbounds nuw i8, ptr %i.j, i64 2840 ; 2 uses
  store ptr %i.gc, ptr %i.gd, align 8, !tbaa !48
  %i.ge = shl i64 %i.ga, 1
  %i.gf = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.ge) #11
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.thread.i210
  %i.gg = phi ptr [ %i.gd, %bb.p ], [ %i.gb, %.thread.i210 ]
  %i.gh = phi ptr [ %i.gf, %bb.p ], [ null, %.thread.i210 ]
  %i.gi = getelementptr inbounds nuw i8, ptr %i.j, i64 2848 ; 5 uses
  store ptr %i.gh, ptr %i.gi, align 8, !tbaa !49
  %.not27.i206 = icmp eq i64 %i.fx, 0
  br i1 %.not27.i206, label %BuildAndStoreEntropyCodesDistance.exit, label %.lr.ph.i207

.lr.ph.i207:                                      ; preds = %bb.q, %.lr.ph.i207
  %.026.i208 = phi i64 [ %i.gq, %.lr.ph.i207 ], [ 0, %bb.q ] ; 3 uses
  %i.gj = load i64, ptr %i.l, align 8, !tbaa !41  ; 2 uses
  %i.gk = mul i64 %i.gj, %.026.i208               ; 2 uses
  %i.gl = getelementptr inbounds nuw [2192 x i8], ptr %i.fv, i64 %.026.i208
  %i.gm = load ptr, ptr %i.gg, align 8, !tbaa !48
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.gk
  %i.go = load ptr, ptr %i.gi, align 8, !tbaa !49
  %i.gp = getelementptr inbounds nuw [2 x i8], ptr %i.go, i64 %i.gk
  tail call fastcc void @BuildAndStoreHuffmanTree(ptr noundef %i.gl, i64 noundef %i.gj, i64 noundef range(i64 0, 4294967296) %i.fy, ptr noundef %i.i, ptr noundef %i.gn, ptr noundef %i.gp, ptr noundef nonnull %13, ptr noundef nonnull %14)
  %i.gq = add nuw i64 %.026.i208, 1               ; 2 uses
  %exitcond.not.i209 = icmp eq i64 %i.gq, %i.fx
  br i1 %exitcond.not.i209, label %BuildAndStoreEntropyCodesDistance.exit, label %.lr.ph.i207, !llvm.loop !221

BuildAndStoreEntropyCodesDistance.exit:           ; preds = %.lr.ph.i207, %bb.q
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %i.i) #11
  %.not259 = icmp eq i64 %11, 0
  br i1 %.not259, label %._crit_edge257, label %.lr.ph256

.lr.ph256:                                        ; preds = %BuildAndStoreEntropyCodesDistance.exit
  %i.gr = getelementptr inbounds nuw i8, ptr %i.h, i64 256
  %i.gs = getelementptr inbounds nuw i8, ptr %12, i64 144
  %i.gt = getelementptr inbounds nuw i8, ptr %i.j, i64 56 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.j, i64 314 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.j, i64 830 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.j, i64 856 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.j, i64 936 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %12, i64 160
  %i.gz = getelementptr inbounds nuw i8, ptr %i.j, i64 1960
  %i.ha = getelementptr inbounds nuw i8, ptr %i.j, i64 2218
  %i.hb = getelementptr inbounds nuw i8, ptr %i.j, i64 2734
  %i.hc = getelementptr inbounds nuw i8, ptr %i.j, i64 2760
  %i.hd = getelementptr inbounds nuw i8, ptr %i.j, i64 2840
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph256, %bb.au
  %.0255 = phi i8 [ %5, %.lr.ph256 ], [ %.3, %bb.au ] ; 4 uses
  %.0178254 = phi i8 [ %6, %.lr.ph256 ], [ %.3181, %bb.au ] ; 4 uses
  %.0182253 = phi i64 [ %2, %.lr.ph256 ], [ %i.sg, %bb.au ] ; 4 uses
  %.1189252 = phi i64 [ 0, %.lr.ph256 ], [ %i.xp, %bb.au ] ; 2 uses
  %i.he = getelementptr inbounds nuw [16 x i8], ptr %10, i64 %.1189252 ; 5 uses
  %.sroa.0.0.copyload = load i32, ptr %i.he, align 4, !tbaa !14 ; 9 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.he, i64 4
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !14 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %.sroa.10.0.copyload = load i32, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !14
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.he, i64 12
  %.sroa.11.0.copyload = load i16, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !17 ; 3 uses
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.he, i64 14
  %.sroa.14.0.copyload = load i16, ptr %.sroa.14.0..sroa_idx, align 2, !tbaa !17
  %i.hf = zext i16 %.sroa.11.0.copyload to i64
  tail call fastcc void @StoreSymbol(ptr noundef nonnull %i.k, i64 noundef %i.hf, ptr noundef nonnull %13, ptr noundef nonnull %14)
  %i.hg = lshr i32 %.sroa.7.0.copyload, 25        ; 2 uses
  %i.hh = shl nuw nsw i32 %i.hg, 1
  %i.hi = and i32 %i.hh, 128
  %i.hj = or disjoint i32 %i.hi, %i.hg
  %sext.i = shl nuw i32 %i.hj, 24
  %i.hk = ashr exact i32 %sext.i, 24
  %i.hl = and i32 %.sroa.7.0.copyload, 33554431   ; 3 uses
  %i.hm = add nsw i32 %i.hk, %i.hl                ; 7 uses
  %i.hn = zext i32 %.sroa.0.0.copyload to i64     ; 4 uses
  %i.ho = icmp ult i32 %.sroa.0.0.copyload, 6
  br i1 %i.ho, label %GetInsertLengthCode.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.hp = icmp ult i32 %.sroa.0.0.copyload, 130
  br i1 %i.hp, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.hq = add nsw i64 %i.hn, -2                   ; 2 uses
  %i.hr = trunc nuw nsw i64 %i.hq to i32
  %i.hs = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.hr, i1 true)
  %i.ht = sub nuw nsw i32 30, %i.hs               ; 2 uses
  %15 = shl nuw nsw i32 %i.ht, 1
  %i.hu = zext nneg i32 %i.ht to i64
  %16 = lshr i64 %i.hq, %i.hu
  %narrow260 = add nuw nsw i32 %15, 2
  %17 = zext nneg i32 %narrow260 to i64
  %i.hv = add nuw nsw i64 %16, %17
  br label %GetInsertLengthCode.exit

bb.u:                                             ; preds = %bb.s
  %i.hw = icmp ult i32 %.sroa.0.0.copyload, 2114
  br i1 %i.hw, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.hx = add nsw i32 %.sroa.0.0.copyload, -66
  %i.hy = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.hx, i1 true)
  %narrow = sub nuw nsw i32 41, %i.hy
  %i.hz = zext nneg i32 %narrow to i64
  br label %GetInsertLengthCode.exit

bb.w:                                             ; preds = %bb.u
  %i.ia = icmp ult i32 %.sroa.0.0.copyload, 6210
  br i1 %i.ia, label %GetInsertLengthCode.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ib = icmp ult i32 %.sroa.0.0.copyload, 22594
  %..i195 = select i1 %i.ib, i64 22, i64 23
  br label %GetInsertLengthCode.exit

GetInsertLengthCode.exit:                         ; preds = %bb.r, %bb.t, %bb.v, %bb.w, %bb.x
  %.0.i = phi i64 [ %..i195, %bb.x ], [ %i.hv, %bb.t ], [ %i.hz, %bb.v ], [ 21, %bb.w ], [ %i.hn, %bb.r ] ; 2 uses
  %i.ic = zext nneg i32 %i.hm to i64
  %i.id = icmp ult i32 %i.hm, 10
  br i1 %i.id, label %bb.y, label %bb.z

bb.y:                                             ; preds = %GetInsertLengthCode.exit
  %narrow234 = add nuw nsw i32 %i.hm, 65534
  %i.ie = zext nneg i32 %narrow234 to i64
  br label %GetCopyLengthCode.exit

bb.z:                                             ; preds = %GetInsertLengthCode.exit
  %i.if = icmp ult i32 %i.hm, 134
  br i1 %i.if, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ig = add nsw i64 %i.ic, -6                   ; 2 uses
  %i.ih = trunc nuw nsw i64 %i.ig to i32
  %i.ii = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ih, i1 true)
  %i.ij = sub nuw nsw i32 30, %i.ii               ; 2 uses
  %18 = shl nuw nsw i32 %i.ij, 1
  %i.ik = zext nneg i32 %i.ij to i64
  %19 = lshr i64 %i.ig, %i.ik
  %narrow261 = add nuw nsw i32 %18, 4
  %20 = zext nneg i32 %narrow261 to i64
  %i.il = add nuw nsw i64 %19, %20
  br label %GetCopyLengthCode.exit

bb.ab:                                            ; preds = %bb.z
  %i.im = icmp ult i32 %i.hm, 2118
  br i1 %i.im, label %bb.ac, label %GetCopyLengthCode.exit

bb.ac:                                            ; preds = %bb.ab
  %i.in = add nsw i32 %i.hm, -70
  %i.io = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.in, i1 true)
  %narrow235 = sub nuw nsw i32 43, %i.io
  %i.ip = zext nneg i32 %narrow235 to i64
  br label %GetCopyLengthCode.exit

GetCopyLengthCode.exit:                           ; preds = %bb.y, %bb.aa, %bb.ab, %bb.ac
  %.0.i196 = phi i64 [ %i.ie, %bb.y ], [ %i.il, %bb.aa ], [ %i.ip, %bb.ac ], [ 23, %bb.ab ]
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr @kBrotliInsExtra, i64 %.0.i
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !14 ; 2 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr @kBrotliInsBase, i64 %.0.i
  %i.it = load i32, ptr %i.is, align 4, !tbaa !14
  %i.iu = sub i32 %.sroa.0.0.copyload, %i.it
  %i.iv = zext i32 %i.iu to i64
  %i.iw = and i64 %.0.i196, 65535                 ; 2 uses
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr @kBrotliCopyBase, i64 %i.iw
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !14
  %i.iz = sub i32 %i.hm, %i.iy
  %i.ja = zext i32 %i.iz to i64
  %i.jb = zext nneg i32 %i.ir to i64
  %i.jc = shl i64 %i.ja, %i.jb
  %i.jd = or i64 %i.jc, %i.iv
  %i.je = getelementptr inbounds nuw [4 x i8], ptr @kBrotliCopyExtra, i64 %i.iw
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !14
  %i.jg = add i32 %i.jf, %i.ir
  %i.jh = zext i32 %i.jg to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !301)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !302)
  %i.ji = load i64, ptr %13, align 8, !tbaa !12, !alias.scope !301, !noalias !302 ; 3 uses
  %i.jj = lshr i64 %i.ji, 3
  %i.jk = getelementptr inbounds nuw i8, ptr %14, i64 %i.jj ; 2 uses
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !13, !alias.scope !302, !noalias !301
  %i.jm = zext i8 %i.jl to i64
  %i.jn = and i64 %i.ji, 7
  %i.jo = shl i64 %i.jd, %i.jn
  %i.jp = or i64 %i.jo, %i.jm
  store i64 %i.jp, ptr %i.jk, align 1, !noalias !301
  %i.jq = add i64 %i.ji, %i.jh
  store i64 %i.jq, ptr %13, align 8, !tbaa !12, !alias.scope !301, !noalias !302
  %i.jr = load i64, ptr %i.di, align 8, !tbaa !291
  %i.js = icmp eq i64 %i.jr, 0
  %.not193247 = icmp eq i32 %.sroa.0.0.copyload, 0 ; 2 uses
  br i1 %i.js, label %.preheader, label %.preheader236

.preheader236:                                    ; preds = %GetCopyLengthCode.exit
  br i1 %.not193247, label %.loopexit, label %.lr.ph244

.preheader:                                       ; preds = %GetCopyLengthCode.exit
  br i1 %.not193247, label %.loopexit, label %.lr.ph250

.lr.ph250:                                        ; preds = %.preheader, %StoreSymbol.exit
  %.1183249 = phi i64 [ %i.nq, %StoreSymbol.exit ], [ %.0182253, %.preheader ] ; 2 uses
  %.0187248 = phi i64 [ %i.nr, %StoreSymbol.exit ], [ %i.hn, %.preheader ]
  %i.jt = and i64 %.1183249, %4
  %i.ju = getelementptr inbounds nuw i8, ptr %1, i64 %i.jt
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !13
  %i.jw = zext i8 %i.jv to i64
  %i.jx = load i64, ptr %i.ae, align 8, !tbaa !47 ; 2 uses
  %i.jy = icmp eq i64 %i.jx, 0
  br i1 %i.jy, label %bb.ad, label %StoreSymbol.exit

bb.ad:                                            ; preds = %.lr.ph250
  %i.jz = load i64, ptr %i.z, align 8, !tbaa !46
  %i.ka = add i64 %i.jz, 1                        ; 3 uses
  store i64 %i.ka, ptr %i.z, align 8, !tbaa !46
  %i.kb = load ptr, ptr %i.t, align 8, !tbaa !50
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.kb, i64 %i.ka
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !14 ; 6 uses
  %i.ke = load ptr, ptr %i.s, align 8, !tbaa !51
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 %i.ka
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !13
  %i.kh = zext i32 %i.kd to i64
  store i64 %i.kh, ptr %i.ae, align 8, !tbaa !47
  %i.ki = zext i8 %i.kg to i64                    ; 5 uses
  %i.kj = load i64, ptr %i.j, align 8, !tbaa !41
  %i.kk = mul i64 %i.kj, %i.ki
  store i64 %i.kk, ptr %i.af, align 8, !tbaa !52
  %i.kl = load i64, ptr %i.x, align 8, !tbaa !44  ; 2 uses
  %i.km = add i64 %i.kl, 1
  %i.kn = icmp eq i64 %i.km, %i.ki
  br i1 %i.kn, label %StoreBlockSwitch.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ko = load i64, ptr %i.y, align 8, !tbaa !45
  %i.kp = icmp eq i64 %i.ko, %i.ki
  %i.kq = add nuw nsw i64 %i.ki, 2
  %i.kr = select i1 %i.kp, i64 0, i64 %i.kq
  br label %StoreBlockSwitch.exit.i

StoreBlockSwitch.exit.i:                          ; preds = %bb.ae, %bb.ad
  %i.ks = phi i64 [ %i.kr, %bb.ae ], [ 1, %bb.ad ] ; 2 uses
  store i64 %i.kl, ptr %i.y, align 8, !tbaa !45
  store i64 %i.ki, ptr %i.x, align 8, !tbaa !44
  %i.kt = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.ks
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !13
  %i.kv = zext i8 %i.ku to i64
  %i.kw = getelementptr inbounds nuw [2 x i8], ptr %i.gu, i64 %i.ks
  %i.kx = load i16, ptr %i.kw, align 2, !tbaa !17
  %i.ky = zext i16 %i.kx to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !303)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !304)
  %i.kz = load i64, ptr %13, align 8, !tbaa !12, !alias.scope !303, !noalias !304 ; 3 uses
  %i.la = lshr i64 %i.kz, 3
  %i.lb = getelementptr inbounds nuw i8, ptr %14, i64 %i.la ; 2 uses
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !13, !alias.scope !304, !noalias !303
  %i.ld = zext i8 %i.lc to i64
  %i.le = and i64 %i.kz, 7
  %i.lf = shl nuw nsw i64 %i.ky, %i.le
  %i.lg = or i64 %i.lf, %i.ld
  store i64 %i.lg, ptr %i.lb, align 1, !noalias !303
  %i.lh = add i64 %i.kz, %i.kv                    ; 4 uses
  store i64 %i.lh, ptr %13, align 8, !tbaa !12, !alias.scope !303, !noalias !304
  %i.li = icmp ugt i32 %i.kd, 176
  %i.lj = icmp ugt i32 %i.kd, 752
  %i.lk = select i1 %i.lj, i64 20, i64 14
  %i.ll = icmp ugt i32 %i.kd, 40
  %i.lm = select i1 %i.ll, i64 7, i64 0
  %i.ln = select i1 %i.li, i64 %i.lk, i64 %i.lm
  br label %bb.ag

bb.af:                                            ; preds = %bb.ag
  %exitcond.not.i211 = icmp eq i64 %indvars.iv.next.i, 25
  br i1 %exitcond.not.i211, label %GetBlockLengthPrefixCode.exit.i, label %bb.ag, !llvm.loop !0

bb.ag:                                            ; preds = %StoreBlockSwitch.exit.i, %bb.af
  %indvars.iv.i290 = phi i64 [ %i.ln, %StoreBlockSwitch.exit.i ], [ %indvars.iv.next.i, %bb.af ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i290, 1 ; 4 uses
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr @_kBrotliPrefixCodeRanges, i64 %indvars.iv.next.i
  %i.lp = load i16, ptr %i.lo, align 4, !tbaa !54
  %i.lq = zext i16 %i.lp to i32
  %.not.i.i.i = icmp ult i32 %i.kd, %i.lq
  br i1 %.not.i.i.i, label %GetBlockLengthPrefixCode.exit.i, label %bb.af, !llvm.loop !0

GetBlockLengthPrefixCode.exit.i:                  ; preds = %bb.ag, %bb.af
  %indvars.iv.i.lcssa = phi i64 [ %indvars.iv.i290, %bb.ag ], [ %indvars.iv.next.i, %bb.af ] ; 3 uses
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr @_kBrotliPrefixCodeRanges, i64 %indvars.iv.i.lcssa ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 2
  %i.lt = load i8, ptr %i.ls, align 2, !tbaa !55
  %i.lu = load i16, ptr %i.lr, align 4, !tbaa !54
  %i.lv = zext i16 %i.lu to i32
  %i.lw = sub i32 %i.kd, %i.lv
  %i.lx = getelementptr inbounds nuw i8, ptr %i.gv, i64 %indvars.iv.i.lcssa
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !13
  %i.lz = zext i8 %i.ly to i64
  %i.ma = getelementptr inbounds nuw [2 x i8], ptr %i.gw, i64 %indvars.iv.i.lcssa
  %i.mb = load i16, ptr %i.ma, align 2, !tbaa !17
  %i.mc = zext i16 %i.mb to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !305)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !306)
  %i.md = lshr i64 %i.lh, 3
  %i.me = getelementptr inbounds nuw i8, ptr %14, i64 %i.md ; 2 uses
  %i.mf = load i8, ptr %i.me, align 1, !tbaa !13, !alias.scope !306, !noalias !305
  %i.mg = zext i8 %i.mf to i64
  %i.mh = and i64 %i.lh, 7
  %i.mi = shl nuw nsw i64 %i.mc, %i.mh
  %i.mj = or i64 %i.mi, %i.mg
  store i64 %i.mj, ptr %i.me, align 1, !noalias !305
  %i.mk = add i64 %i.lh, %i.lz                    ; 4 uses
  store i64 %i.mk, ptr %13, align 8, !tbaa !12, !alias.scope !305, !noalias !306
  %i.ml = zext i8 %i.lt to i64
  %i.mm = zext i32 %i.lw to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !307)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !308)
  %i.mn = lshr i64 %i.mk, 3
  %i.mo = getelementptr inbounds nuw i8, ptr %14, i64 %i.mn ; 2 uses
  %i.mp = load i8, ptr %i.mo, align 1, !tbaa !13, !alias.scope !308, !noalias !307
  %i.mq = zext i8 %i.mp to i64
  %i.mr = and i64 %i.mk, 7
  %i.ms = shl nuw nsw i64 %i.mm, %i.mr
  %i.mt = or i64 %i.ms, %i.mq
  store i64 %i.mt, ptr %i.mo, align 1, !noalias !307
  %i.mu = add i64 %i.mk, %i.ml
  store i64 %i.mu, ptr %13, align 8, !tbaa !12, !alias.scope !307, !noalias !308
  %.pre.i = load i64, ptr %i.ae, align 8, !tbaa !47
  br label %StoreSymbol.exit

StoreSymbol.exit:                                 ; preds = %.lr.ph250, %GetBlockLengthPrefixCode.exit.i
  %i.mv = phi i64 [ %.pre.i, %GetBlockLengthPrefixCode.exit.i ], [ %i.jx, %.lr.ph250 ]
  %i.mw = add i64 %i.mv, -1
  store i64 %i.mw, ptr %i.ae, align 8, !tbaa !47
  %i.mx = load i64, ptr %i.af, align 8, !tbaa !52
  %i.my = add i64 %i.mx, %i.jw                    ; 2 uses
  %i.mz = load ptr, ptr %i.gx, align 8, !tbaa !48
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 %i.my
  %i.nb = load i8, ptr %i.na, align 1, !tbaa !13
  %i.nc = zext i8 %i.nb to i64
  %i.nd = load ptr, ptr %i.ep, align 8, !tbaa !49
  %i.ne = getelementptr inbounds nuw [2 x i8], ptr %i.nd, i64 %i.my
  %i.nf = load i16, ptr %i.ne, align 2, !tbaa !17
  %i.ng = zext i16 %i.nf to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !309)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !310)
  %i.nh = load i64, ptr %13, align 8, !tbaa !12, !alias.scope !309, !noalias !310 ; 3 uses
end_hunk_0
begin_hunk_1_@BuildAndStoreHuffmanTree:bb.a
  switch i64 %.043.lcssa, label %bb.s [
    i64 2, label %bb.q
    i64 3, label %bb.r
  ]

bb.q:                                             ; preds = %.loopexit.i.3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !607)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !608)
  %i.do = load i8, ptr %i.dk, align 1, !tbaa !13, !alias.scope !608, !noalias !607
  %i.dp = zext i8 %i.do to i64
  %i.dq = or i64 %i.dm, %i.dp
  store i64 %i.dq, ptr %i.dk, align 1, !noalias !607
  store i64 %i.dn, ptr %6, align 8, !tbaa !12, !alias.scope !607, !noalias !608
  %i.dr = load i64, ptr %i.di, align 8, !tbaa !12
  %i.ds = lshr i64 %i.dn, 3
  %i.dt = getelementptr inbounds nuw i8, ptr %7, i64 %i.ds ; 2 uses
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !13, !alias.scope !609, !noalias !610
  %i.dv = zext i8 %i.du to i64
  %i.dw = and i64 %i.dn, 7
  %i.dx = shl i64 %i.dr, %i.dw
  %i.dy = or i64 %i.dx, %i.dv
  store i64 %i.dy, ptr %i.dt, align 1, !noalias !610
  %i.dz = add i64 %i.dn, %i.j
  br label %StoreSimpleHuffmanTree.exit

bb.r:                                             ; preds = %.loopexit.i.3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !611)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !612)
  %i.ea = load i8, ptr %i.dk, align 1, !tbaa !13, !alias.scope !612, !noalias !611
  %i.eb = zext i8 %i.ea to i64
  %i.ec = or i64 %i.dm, %i.eb
  store i64 %i.ec, ptr %i.dk, align 1, !noalias !611
  store i64 %i.dn, ptr %6, align 8, !tbaa !12, !alias.scope !611, !noalias !612
  %i.ed = load i64, ptr %i.di, align 8, !tbaa !12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !613)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !614)
  %i.ee = lshr i64 %i.dn, 3
  %i.ef = getelementptr inbounds nuw i8, ptr %7, i64 %i.ee ; 2 uses
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !13, !alias.scope !614, !noalias !613
  %i.eh = zext i8 %i.eg to i64
  %i.ei = and i64 %i.dn, 7
  %i.ej = shl i64 %i.ed, %i.ei
  %i.ek = or i64 %i.ej, %i.eh
  store i64 %i.ek, ptr %i.ef, align 1, !noalias !613
  %i.el = add i64 %i.dn, %i.j                     ; 4 uses
  store i64 %i.el, ptr %6, align 8, !tbaa !12, !alias.scope !613, !noalias !614
  %i.em = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.en = load i64, ptr %i.em, align 16, !tbaa !12
  %i.eo = lshr i64 %i.el, 3
  %i.ep = getelementptr inbounds nuw i8, ptr %7, i64 %i.eo ; 2 uses
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !13, !alias.scope !615, !noalias !616
  %i.er = zext i8 %i.eq to i64
  %i.es = and i64 %i.el, 7
  %i.et = shl i64 %i.en, %i.es
  %i.eu = or i64 %i.et, %i.er
  store i64 %i.eu, ptr %i.ep, align 1, !noalias !616
  %i.ev = add i64 %i.el, %i.j
  br label %StoreSimpleHuffmanTree.exit

bb.s:                                             ; preds = %.loopexit.i.3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !617)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !618)
  %i.ew = load i8, ptr %i.dk, align 1, !tbaa !13, !alias.scope !618, !noalias !617
  %i.ex = zext i8 %i.ew to i64
  %i.ey = or i64 %i.dm, %i.ex
  store i64 %i.ey, ptr %i.dk, align 1, !noalias !617
  store i64 %i.dn, ptr %6, align 8, !tbaa !12, !alias.scope !617, !noalias !618
  %i.ez = load i64, ptr %i.di, align 8, !tbaa !12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !619)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !620)
  %i.fa = lshr i64 %i.dn, 3
  %i.fb = getelementptr inbounds nuw i8, ptr %7, i64 %i.fa ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !13, !alias.scope !620, !noalias !619
  %i.fd = zext i8 %i.fc to i64
  %i.fe = and i64 %i.dn, 7
  %i.ff = shl i64 %i.ez, %i.fe
  %i.fg = or i64 %i.ff, %i.fd
  store i64 %i.fg, ptr %i.fb, align 1, !noalias !619
  %i.fh = add i64 %i.dn, %i.j                     ; 4 uses
  store i64 %i.fh, ptr %6, align 8, !tbaa !12, !alias.scope !619, !noalias !620
  %i.fi = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.fj = load i64, ptr %i.fi, align 16, !tbaa !12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !621)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !622)
  %i.fk = lshr i64 %i.fh, 3
  %i.fl = getelementptr inbounds nuw i8, ptr %7, i64 %i.fk ; 2 uses
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !13, !alias.scope !622, !noalias !621
  %i.fn = zext i8 %i.fm to i64
  %i.fo = and i64 %i.fh, 7
  %i.fp = shl i64 %i.fj, %i.fo
  %i.fq = or i64 %i.fp, %i.fn
  store i64 %i.fq, ptr %i.fl, align 1, !noalias !621
  %i.fr = add i64 %i.fh, %i.j                     ; 4 uses
  store i64 %i.fr, ptr %6, align 8, !tbaa !12, !alias.scope !621, !noalias !622
  %i.fs = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !623)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !624)
  %i.fu = lshr i64 %i.fr, 3
  %i.fv = getelementptr inbounds nuw i8, ptr %7, i64 %i.fu ; 2 uses
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !13, !alias.scope !624, !noalias !623
  %i.fx = zext i8 %i.fw to i64
  %i.fy = and i64 %i.fr, 7
  %i.fz = shl i64 %i.ft, %i.fy
  %i.ga = or i64 %i.fz, %i.fx
  store i64 %i.ga, ptr %i.fv, align 1, !noalias !623
  %i.gb = add i64 %i.fr, %i.j                     ; 4 uses
  store i64 %i.gb, ptr %6, align 8, !tbaa !12, !alias.scope !623, !noalias !624
  %i.gc = getelementptr inbounds nuw i8, ptr %4, i64 %i.dh
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !13
  %i.ge = icmp eq i8 %i.gd, 1
  %i.gf = zext i1 %i.ge to i64
  %i.gg = lshr i64 %i.gb, 3
  %i.gh = getelementptr inbounds nuw i8, ptr %7, i64 %i.gg ; 2 uses
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !13, !alias.scope !625, !noalias !626
  %i.gj = zext i8 %i.gi to i64
  %i.gk = and i64 %i.gb, 7
  %i.gl = shl nuw nsw i64 %i.gf, %i.gk
  %i.gm = or i64 %i.gl, %i.gj
  store i64 %i.gm, ptr %i.gh, align 1, !noalias !626
  %i.gn = add i64 %i.gb, 1
  br label %StoreSimpleHuffmanTree.exit

StoreSimpleHuffmanTree.exit:                      ; preds = %bb.q, %bb.r, %bb.s
  %.sink.i = phi i64 [ %i.ev, %bb.r ], [ %i.gn, %bb.s ], [ %i.dz, %bb.q ]
  store i64 %.sink.i, ptr %6, align 8, !tbaa !12, !noalias !18
  br label %bb.u

bb.t:                                             ; preds = %bb.h
  tail call void @BrotliStoreHuffmanTree(ptr noundef %4, i64 noundef %1, ptr noundef %3, ptr noundef %6, ptr noundef %7)
  br label %bb.u

bb.u:                                             ; preds = %StoreSimpleHuffmanTree.exit, %bb.t, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @StoreDataWithHuffmanCodes(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef readonly captures(none) %8, ptr nofree noundef readonly captures(none) %9, ptr nofree noundef readonly captures(none) %10, ptr nofree noundef captures(none) %11, ptr nofree noundef captures(none) %12) unnamed_addr #6 {
bb.a:
  %.not57 = icmp eq i64 %4, 0
  br i1 %.not57, label %._crit_edge56, label %.lr.ph55.preheader

.lr.ph55.preheader:                               ; preds = %bb.a
  %.pre = load i64, ptr %11, align 8, !tbaa !12, !alias.scope !644, !noalias !645
  br label %.lr.ph55

.lr.ph55:                                         ; preds = %.lr.ph55.preheader, %bb.n
  %i.a = phi i64 [ %i.ed, %bb.n ], [ %.pre, %.lr.ph55.preheader ] ; 3 uses
  %.053 = phi i64 [ %i.cy, %bb.n ], [ %1, %.lr.ph55.preheader ] ; 2 uses
  %.03952 = phi i64 [ %i.ee, %bb.n ], [ 0, %.lr.ph55.preheader ] ; 2 uses
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %.03952 ; 5 uses
  %.sroa.0.0.copyload = load i32, ptr %i.b, align 4, !tbaa !14 ; 9 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !14 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.9.0.copyload = load i32, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !14
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.sroa.10.0.copyload = load i16, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !17 ; 2 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  %.sroa.12.0.copyload = load i16, ptr %.sroa.12.0..sroa_idx, align 2, !tbaa !17
  %i.c = zext i16 %.sroa.10.0.copyload to i64     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !13
  %i.f = zext i8 %i.e to i64
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %i.c
  %i.h = load i16, ptr %i.g, align 2, !tbaa !17
  %i.i = zext i16 %i.h to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !644)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !645)
  %i.j = lshr i64 %i.a, 3
  %i.k = getelementptr inbounds nuw i8, ptr %12, i64 %i.j ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !13, !alias.scope !645, !noalias !644
  %i.m = zext i8 %i.l to i64
  %i.n = and i64 %i.a, 7
  %i.o = shl nuw nsw i64 %i.i, %i.n
  %i.p = or i64 %i.o, %i.m
  store i64 %i.p, ptr %i.k, align 1, !noalias !644
  %i.q = add i64 %i.a, %i.f                       ; 4 uses
  store i64 %i.q, ptr %11, align 8, !tbaa !12, !alias.scope !644, !noalias !645
  %i.r = lshr i32 %.sroa.6.0.copyload, 25         ; 2 uses
  %i.s = shl nuw nsw i32 %i.r, 1
  %i.t = and i32 %i.s, 128
  %i.u = or disjoint i32 %i.t, %i.r
  %sext.i = shl nuw i32 %i.u, 24
  %i.v = ashr exact i32 %sext.i, 24
  %i.w = and i32 %.sroa.6.0.copyload, 33554431    ; 3 uses
  %i.x = add nsw i32 %i.v, %i.w                   ; 7 uses
  %i.y = zext i32 %.sroa.0.0.copyload to i64      ; 3 uses
  %i.z = icmp ult i32 %.sroa.0.0.copyload, 6
  br i1 %i.z, label %GetInsertLengthCode.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph55
  %i.aa = icmp ult i32 %.sroa.0.0.copyload, 130
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ab = add nsw i64 %i.y, -2                    ; 2 uses
  %i.ac = trunc nuw nsw i64 %i.ab to i32
  %i.ad = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ac, i1 true)
  %i.ae = sub nuw nsw i32 30, %i.ad               ; 2 uses
  %13 = shl nuw nsw i32 %i.ae, 1
  %i.af = zext nneg i32 %i.ae to i64
  %14 = lshr i64 %i.ab, %i.af
  %narrow58 = add nuw nsw i32 %13, 2
  %15 = zext nneg i32 %narrow58 to i64
  %i.ag = add nuw nsw i64 %14, %15
  br label %GetInsertLengthCode.exit

bb.d:                                             ; preds = %bb.b
  %i.ah = icmp ult i32 %.sroa.0.0.copyload, 2114
  br i1 %i.ah, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ai = add nsw i32 %.sroa.0.0.copyload, -66
  %i.aj = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ai, i1 true)
  %narrow = sub nuw nsw i32 41, %i.aj
  %i.ak = zext nneg i32 %narrow to i64
  br label %GetInsertLengthCode.exit

bb.f:                                             ; preds = %bb.d
  %i.al = icmp ult i32 %.sroa.0.0.copyload, 6210
  br i1 %i.al, label %GetInsertLengthCode.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = icmp ult i32 %.sroa.0.0.copyload, 22594
  %..i = select i1 %i.am, i64 22, i64 23
  br label %GetInsertLengthCode.exit

GetInsertLengthCode.exit:                         ; preds = %.lr.ph55, %bb.c, %bb.e, %bb.f, %bb.g
  %.0.i = phi i64 [ %..i, %bb.g ], [ %i.ag, %bb.c ], [ %i.ak, %bb.e ], [ 21, %bb.f ], [ %i.y, %.lr.ph55 ] ; 2 uses
  %i.an = zext nneg i32 %i.x to i64
  %i.ao = icmp ult i32 %i.x, 10
  br i1 %i.ao, label %bb.h, label %bb.i

bb.h:                                             ; preds = %GetInsertLengthCode.exit
  %narrow47 = add nuw nsw i32 %i.x, 65534
  %i.ap = zext nneg i32 %narrow47 to i64
  br label %GetCopyLengthCode.exit

bb.i:                                             ; preds = %GetInsertLengthCode.exit
  %i.aq = icmp ult i32 %i.x, 134
  br i1 %i.aq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ar = add nsw i64 %i.an, -6                   ; 2 uses
  %i.as = trunc nuw nsw i64 %i.ar to i32
  %i.at = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.as, i1 true)
  %i.au = sub nuw nsw i32 30, %i.at               ; 2 uses
  %16 = shl nuw nsw i32 %i.au, 1
  %i.av = zext nneg i32 %i.au to i64
  %17 = lshr i64 %i.ar, %i.av
  %narrow59 = add nuw nsw i32 %16, 4
  %18 = zext nneg i32 %narrow59 to i64
  %i.aw = add nuw nsw i64 %17, %18
  br label %GetCopyLengthCode.exit

bb.k:                                             ; preds = %bb.i
  %i.ax = icmp ult i32 %i.x, 2118
  br i1 %i.ax, label %bb.l, label %GetCopyLengthCode.exit

bb.l:                                             ; preds = %bb.k
  %i.ay = add nsw i32 %i.x, -70
  %i.az = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ay, i1 true)
  %narrow48 = sub nuw nsw i32 43, %i.az
  %i.ba = zext nneg i32 %narrow48 to i64
  br label %GetCopyLengthCode.exit

GetCopyLengthCode.exit:                           ; preds = %bb.h, %bb.j, %bb.k, %bb.l
  %.0.i41 = phi i64 [ %i.ap, %bb.h ], [ %i.aw, %bb.j ], [ %i.ba, %bb.l ], [ 23, %bb.k ]
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr @kBrotliInsExtra, i64 %.0.i
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !14 ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr @kBrotliInsBase, i64 %.0.i
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !14
  %i.bf = sub i32 %.sroa.0.0.copyload, %i.be
  %i.bg = zext i32 %i.bf to i64
  %i.bh = and i64 %.0.i41, 65535                  ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr @kBrotliCopyBase, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !14
  %i.bk = sub i32 %i.x, %i.bj
  %i.bl = zext i32 %i.bk to i64
  %i.bm = zext nneg i32 %i.bc to i64
  %i.bn = shl i64 %i.bl, %i.bm
  %i.bo = or i64 %i.bn, %i.bg
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr @kBrotliCopyExtra, i64 %i.bh
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !14
  %i.br = add i32 %i.bq, %i.bc
  %i.bs = zext i32 %i.br to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !646)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !647)
  %i.bt = lshr i64 %i.q, 3
  %i.bu = getelementptr inbounds nuw i8, ptr %12, i64 %i.bt ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !13, !alias.scope !647, !noalias !646
  %i.bw = zext i8 %i.bv to i64
  %i.bx = and i64 %i.q, 7
  %i.by = shl i64 %i.bo, %i.bx
  %i.bz = or i64 %i.by, %i.bw
  store i64 %i.bz, ptr %i.bu, align 1, !noalias !646
  %i.ca = add i64 %i.q, %i.bs                     ; 3 uses
  store i64 %i.ca, ptr %11, align 8, !tbaa !12, !alias.scope !646, !noalias !647
  %.not49 = icmp eq i32 %.sroa.0.0.copyload, 0
  br i1 %.not49, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %GetCopyLengthCode.exit, %.lr.ph
  %i.cb = phi i64 [ %i.ct, %.lr.ph ], [ %i.ca, %GetCopyLengthCode.exit ] ; 3 uses
  %.151 = phi i64 [ %i.cu, %.lr.ph ], [ %.053, %GetCopyLengthCode.exit ] ; 2 uses
  %.04050 = phi i64 [ %i.cv, %.lr.ph ], [ %i.y, %GetCopyLengthCode.exit ]
  %i.cc = and i64 %.151, %2
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !13
  %i.cf = zext i8 %i.ce to i64                    ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !13
  %i.ci = zext i8 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.cf
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !17
  %i.cl = zext i16 %i.ck to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !648)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !649)
  %i.cm = lshr i64 %i.cb, 3
  %i.cn = getelementptr inbounds nuw i8, ptr %12, i64 %i.cm ; 2 uses
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !13, !alias.scope !649, !noalias !648
  %i.cp = zext i8 %i.co to i64
  %i.cq = and i64 %i.cb, 7
  %i.cr = shl nuw nsw i64 %i.cl, %i.cq
  %i.cs = or i64 %i.cr, %i.cp
  store i64 %i.cs, ptr %i.cn, align 1, !noalias !648
  %i.ct = add i64 %i.cb, %i.ci                    ; 3 uses
  store i64 %i.ct, ptr %11, align 8, !tbaa !12, !alias.scope !648, !noalias !649
  %i.cu = add i64 %.151, 1                        ; 2 uses
  %i.cv = add nsw i64 %.04050, -1                 ; 2 uses
  %.not = icmp eq i64 %i.cv, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !636

._crit_edge:                                      ; preds = %.lr.ph, %GetCopyLengthCode.exit
  %i.cw = phi i64 [ %i.ca, %GetCopyLengthCode.exit ], [ %i.ct, %.lr.ph ] ; 4 uses
  %.1.lcssa = phi i64 [ %.053, %GetCopyLengthCode.exit ], [ %i.cu, %.lr.ph ]
  %i.cx = zext nneg i32 %i.w to i64
  %i.cy = add i64 %.1.lcssa, %i.cx
  %i.cz = icmp ne i32 %i.w, 0
  %i.da = icmp ugt i16 %.sroa.10.0.copyload, 127
  %or.cond = and i1 %i.cz, %i.da
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge
  %i.db = zext i16 %.sroa.12.0.copyload to i32    ; 2 uses
  %i.dc = and i32 %i.db, 1023
  %i.dd = zext nneg i32 %i.dc to i64              ; 2 uses
  %i.de = lshr i32 %i.db, 10
  %i.df = getelementptr inbounds nuw i8, ptr %9, i64 %i.dd
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !13
  %i.dh = zext i8 %i.dg to i64
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %10, i64 %i.dd
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !17
  %i.dk = zext i16 %i.dj to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !650)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !651)
  %i.dl = lshr i64 %i.cw, 3
  %i.dm = getelementptr inbounds nuw i8, ptr %12, i64 %i.dl ; 2 uses
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !13, !alias.scope !651, !noalias !650
  %i.do = zext i8 %i.dn to i64
  %i.dp = and i64 %i.cw, 7
  %i.dq = shl nuw nsw i64 %i.dk, %i.dp
  %i.dr = or i64 %i.dq, %i.do
  store i64 %i.dr, ptr %i.dm, align 1, !noalias !650
  %i.ds = add i64 %i.cw, %i.dh                    ; 4 uses
  store i64 %i.ds, ptr %11, align 8, !tbaa !12, !alias.scope !650, !noalias !651
  %i.dt = zext nneg i32 %i.de to i64
  %i.du = zext i32 %.sroa.9.0.copyload to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !652)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !653)
  %i.dv = lshr i64 %i.ds, 3
  %i.dw = getelementptr inbounds nuw i8, ptr %12, i64 %i.dv ; 2 uses
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !13, !alias.scope !653, !noalias !652
  %i.dy = zext i8 %i.dx to i64
  %i.dz = and i64 %i.ds, 7
  %i.ea = shl nuw nsw i64 %i.du, %i.dz
  %i.eb = or i64 %i.ea, %i.dy
  store i64 %i.eb, ptr %i.dw, align 1, !noalias !652
  %i.ec = add i64 %i.ds, %i.dt                    ; 2 uses
  store i64 %i.ec, ptr %11, align 8, !tbaa !12, !alias.scope !652, !noalias !653
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge
  %i.ed = phi i64 [ %i.ec, %bb.m ], [ %i.cw, %._crit_edge ]
  %i.ee = add nuw i64 %.03952, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ee, %4
  br i1 %exitcond.not, label %._crit_edge56, label %.lr.ph55, !llvm.loop !643

._crit_edge56:                                    ; preds = %bb.n, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @BrotliStoreMetaBlockFast(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, i64 noundef %8, ptr nofree noundef captures(none) %9, ptr nofree noundef captures(none) %10) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i32], align 16             ; 7 uses
  %i.b = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef 20640) #11 ; 24 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.d = load i32, ptr %i.c, align 8, !tbaa !36
  tail call fastcc void @StoreCompressedMetaBlockHeader(i32 noundef %5, i64 noundef %3, ptr noundef %9, ptr noundef %10)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !668)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !669)
  %i.e = load i64, ptr %9, align 8, !tbaa !12, !alias.scope !668, !noalias !669 ; 2 uses
  %i.f = lshr i64 %i.e, 3
  %i.g = getelementptr inbounds nuw i8, ptr %10, i64 %i.f ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !13, !alias.scope !669, !noalias !668
  %i.i = zext i8 %i.h to i64
  store i64 %i.i, ptr %i.g, align 1, !noalias !668
  %i.j = add i64 %i.e, 13
  store i64 %i.j, ptr %9, align 8, !tbaa !12, !alias.scope !668, !noalias !669
  %i.k = icmp ult i64 %8, 129
  br i1 %i.k, label %bb.b, label %.lr.ph29.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.a, i8 0, i64 1024, i1 false)
  %.not109 = icmp eq i64 %8, 0
  br i1 %.not109, label %._crit_edge107, label %.lr.ph106

.lr.ph106:                                        ; preds = %bb.b, %._crit_edge
  %.093104 = phi i64 [ %i.as, %._crit_edge ], [ 0, %bb.b ] ; 2 uses
  %.094103 = phi i64 [ %i.ao, %._crit_edge ], [ 0, %bb.b ]
  %.095102 = phi i64 [ %i.ar, %._crit_edge ], [ %2, %bb.b ] ; 4 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %.093104 ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %i.l, align 4, !tbaa !14 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !14
  %i.m = zext i32 %.sroa.0.0.copyload to i64      ; 4 uses
  %.not9799 = icmp eq i32 %.sroa.0.0.copyload, 0
  br i1 %.not9799, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph106
  %xtraiter128 = and i64 %i.m, 1
  %lcmp.mod129.not = icmp eq i64 %xtraiter128, 0
  br i1 %lcmp.mod129.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.n = and i64 %.095102, %4
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !13
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !14
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr %i.r, align 4, !tbaa !14
  %i.u = add i64 %.095102, 1                      ; 2 uses
  %i.v = add nsw i64 %i.m, -1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %i.u, %.lr.ph.prol ]
  %.0101.unr = phi i64 [ %i.m, %.lr.ph.preheader ], [ %i.v, %.lr.ph.prol ]
  %.1100.unr = phi i64 [ %.095102, %.lr.ph.preheader ], [ %i.u, %.lr.ph.prol ]
  %i.w = icmp eq i32 %.sroa.0.0.copyload, 1
end_hunk_1
