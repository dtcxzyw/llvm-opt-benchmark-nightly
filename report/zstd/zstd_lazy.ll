Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zstd/original/zstd_lazy?download=true
inline.NumInlined: 1316
inline.NumDeleted: 37
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 126
loop-unroll.NumUnrolled: 169
begin_hunk_0_@ZSTD_compressBlock_btlazy2_dictMatchState:bb.a
bb.cg:                                            ; preds = %bb.cf
  %.val60.i37.i55 = load i64, ptr %i.k, align 1, !tbaa !43 ; 2 uses
  %.val.i38.i56 = load i64, ptr %i.oo, align 1, !tbaa !43 ; 2 uses
  %.not.i39.i57 = icmp eq i64 %.val60.i37.i55, %.val.i38.i56
  br i1 %.not.i39.i57, label %.preheader.i40.i58, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.oq = xor i64 %.val.i38.i56, %.val60.i37.i55
  %i.or = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.oq, i1 true)
  %i.os = lshr i64 %i.or, 3
  br label %ZSTD_count.exit49.i47

.preheader.i40.i58:                               ; preds = %bb.cg, %bb.ci
  %.pn.i41.i59 = phi ptr [ %.049.i44.i62, %bb.ci ], [ %i.oo, %bb.cg ]
  %.pn67.i42.i60 = phi ptr [ %.045.i43.i61, %bb.ci ], [ %i.k, %bb.cg ]
  %.045.i43.i61 = getelementptr inbounds nuw i8, ptr %.pn67.i42.i60, i64 8 ; 3 uses
  %.049.i44.i62 = getelementptr inbounds nuw i8, ptr %.pn.i41.i59, i64 8 ; 5 uses
  %i.ot = icmp ult ptr %.049.i44.i62, %i.ar
  br i1 %i.ot, label %bb.ci, label %.loopexit.i22.i39

bb.ci:                                            ; preds = %.preheader.i40.i58
  %.045.val.i45.i63 = load i64, ptr %.045.i43.i61, align 1, !tbaa !43 ; 2 uses
  %.049.val.i46.i64 = load i64, ptr %.049.i44.i62, align 1, !tbaa !43 ; 2 uses
  %.not59.i47.i65 = icmp eq i64 %.045.val.i45.i63, %.049.val.i46.i64
  br i1 %.not59.i47.i65, label %.preheader.i40.i58, label %.thread63.i48.i66

.thread63.i48.i66:                                ; preds = %bb.ci
  %i.ou = xor i64 %.049.val.i46.i64, %.045.val.i45.i63
  %i.ov = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ou, i1 true)
  %i.ow = lshr i64 %i.ov, 3
  %i.ox = getelementptr inbounds nuw i8, ptr %.049.i44.i62, i64 %i.ow
  %i.oy = ptrtoint ptr %i.ox to i64
  %i.oz = ptrtoint ptr %i.oo to i64
  %i.pa = sub i64 %i.oy, %i.oz
  br label %ZSTD_count.exit49.i47

.loopexit.i22.i39:                                ; preds = %.preheader.i40.i58, %bb.cf
  %.251.i23.i40 = phi ptr [ %i.oo, %bb.cf ], [ %.049.i44.i62, %.preheader.i40.i58 ] ; 5 uses
  %.247.i24.i41 = phi ptr [ %i.k, %bb.cf ], [ %.045.i43.i61, %.preheader.i40.i58 ] ; 4 uses
  %i.pb = icmp ult ptr %.251.i23.i40, %i.as
  br i1 %i.pb, label %bb.cj, label %bb.cl

bb.cj:                                            ; preds = %.loopexit.i22.i39
  %.247.val.i35.i53 = load i32, ptr %.247.i24.i41, align 1, !tbaa !42
  %.251.val.i36.i54 = load i32, ptr %.251.i23.i40, align 1, !tbaa !42
  %i.pc = icmp eq i32 %.247.val.i35.i53, %.251.val.i36.i54
  br i1 %i.pc, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.pd = getelementptr inbounds nuw i8, ptr %.251.i23.i40, i64 4
  %i.pe = getelementptr inbounds nuw i8, ptr %.247.i24.i41, i64 4
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj, %.loopexit.i22.i39
  %.352.i25.i42 = phi ptr [ %i.pd, %bb.ck ], [ %.251.i23.i40, %bb.cj ], [ %.251.i23.i40, %.loopexit.i22.i39 ] ; 5 uses
  %.348.i26.i43 = phi ptr [ %i.pe, %bb.ck ], [ %.247.i24.i41, %bb.cj ], [ %.247.i24.i41, %.loopexit.i22.i39 ] ; 4 uses
  %i.pf = icmp ult ptr %.352.i25.i42, %i.at
  br i1 %i.pf, label %bb.cm, label %bb.co

bb.cm:                                            ; preds = %bb.cl
  %.348.val.i33.i51 = load i16, ptr %.348.i26.i43, align 1, !tbaa !57
  %.352.val.i34.i52 = load i16, ptr %.352.i25.i42, align 1, !tbaa !57
  %i.pg = icmp eq i16 %.348.val.i33.i51, %.352.val.i34.i52
  br i1 %i.pg, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.ph = getelementptr inbounds nuw i8, ptr %.352.i25.i42, i64 2
  %i.pi = getelementptr inbounds nuw i8, ptr %.348.i26.i43, i64 2
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm, %bb.cl
  %.453.i27.i44 = phi ptr [ %i.ph, %bb.cn ], [ %.352.i25.i42, %bb.cm ], [ %.352.i25.i42, %bb.cl ] ; 4 uses
  %.4.i28.i45 = phi ptr [ %i.pi, %bb.cn ], [ %.348.i26.i43, %bb.cm ], [ %.348.i26.i43, %bb.cl ]
  %i.pj = icmp ult ptr %.453.i27.i44, %i.d
  br i1 %i.pj, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.pk = load i8, ptr %.4.i28.i45, align 1, !tbaa !50
  %i.pl = load i8, ptr %.453.i27.i44, align 1, !tbaa !50
  %i.pm = icmp eq i8 %i.pk, %i.pl
  %spec.select.idx.i31.i49 = zext i1 %i.pm to i64
  %spec.select.i32.i50 = getelementptr inbounds nuw i8, ptr %.453.i27.i44, i64 %spec.select.idx.i31.i49
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %.5.i29.i46 = phi ptr [ %.453.i27.i44, %bb.co ], [ %spec.select.i32.i50, %bb.cp ]
  %i.pn = ptrtoint ptr %.5.i29.i46 to i64
  %i.po = ptrtoint ptr %i.oo to i64
  %i.pp = sub i64 %i.pn, %i.po
  br label %ZSTD_count.exit49.i47

ZSTD_count.exit49.i47:                            ; preds = %bb.cq, %.thread63.i48.i66, %bb.ch
  %.3.i30.i48 = phi i64 [ %i.pa, %.thread63.i48.i66 ], [ %i.pp, %bb.cq ], [ %i.os, %bb.ch ]
  %i.pq = add i64 %.3.i30.i48, %.3.i.i36
  br label %ZSTD_count_2segments.exit85

ZSTD_count_2segments.exit85:                      ; preds = %ZSTD_count.exit.i35, %ZSTD_count.exit49.i47
  %.0.i38 = phi i64 [ %i.pq, %ZSTD_count.exit49.i47 ], [ %.3.i.i36, %ZSTD_count.exit.i35 ] ; 2 uses
  %.not.i = icmp ugt ptr %.1411.i159, %i.aw
  br i1 %.not.i, label %ZSTD_storeSeq.exit, label %bb.cr

bb.cr:                                            ; preds = %ZSTD_count_2segments.exit85
  %i.pr = load ptr, ptr %i.ax, align 8, !tbaa !60
  %.1411.i.val = load <2 x i64>, ptr %.1411.i159, align 1, !tbaa !50
  store <2 x i64> %.1411.i.val, ptr %i.pr, align 1, !tbaa !50
  %.pre195 = load ptr, ptr %i.ba, align 8, !tbaa !65
  br label %ZSTD_storeSeq.exit

ZSTD_storeSeq.exit:                               ; preds = %ZSTD_count_2segments.exit85, %bb.cr
  %i.ps = phi ptr [ %i.mq, %ZSTD_count_2segments.exit85 ], [ %.pre195, %bb.cr ] ; 5 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 4
  store i16 0, ptr %i.pt, align 4, !tbaa !71
  store i32 1, ptr %i.ps, align 4, !tbaa !72
  %i.pu = add i64 %.0.i38, 1                      ; 2 uses
  %i.pv = icmp ugt i64 %i.pu, 65535
  br i1 %i.pv, label %bb.cs, label %bb.ct, !prof !73

bb.cs:                                            ; preds = %ZSTD_storeSeq.exit
  store i32 2, ptr %i.az, align 8, !tbaa !67
  %i.pw = load ptr, ptr %1, align 8, !tbaa !68
  %i.px = ptrtoint ptr %i.ps to i64
  %i.py = ptrtoint ptr %i.pw to i64
  %i.pz = sub i64 %i.px, %i.py
  %i.qa = lshr exact i64 %i.pz, 3
  %i.qb = trunc i64 %i.qa to i32
  store i32 %i.qb, ptr %i.bb, align 4, !tbaa !69
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %ZSTD_storeSeq.exit
  %i.qc = trunc i64 %i.pu to i16
  %i.qd = getelementptr inbounds nuw i8, ptr %i.ps, i64 6
  store i16 %i.qc, ptr %i.qd, align 2, !tbaa !74
  %i.qe = getelementptr inbounds nuw i8, ptr %i.ps, i64 8 ; 2 uses
  store ptr %i.qe, ptr %i.ba, align 8, !tbaa !65
  %i.qf = getelementptr i8, ptr %.1411.i159, i64 %.0.i38
  %i.qg = getelementptr i8, ptr %i.qf, i64 4      ; 4 uses
  %.not527.i = icmp ugt ptr %i.qg, %i.e
  br i1 %.not527.i, label %.critedge9.i, label %.lr.ph160

.critedge9.i:                                     ; preds = %bb.ct, %bb.bs, %.lr.ph160, %bb.br, %bb.i
  %.9489.i = phi i32 [ %.2482.i172, %bb.i ], [ %.3483.i, %bb.br ], [ %.4474.i158, %bb.ct ], [ %.4484.i157, %bb.bs ], [ %.4484.i157, %.lr.ph160 ] ; 2 uses
  %.9479.i = phi i32 [ %.2472.i173, %bb.i ], [ %.3473.i, %bb.br ], [ %.4484.i157, %bb.ct ], [ %.4474.i158, %bb.bs ], [ %.4474.i158, %.lr.ph160 ] ; 2 uses
  %.6416.i = phi ptr [ %.0410.i174, %bb.i ], [ %i.mo, %bb.br ], [ %i.qg, %bb.ct ], [ %.1411.i159, %bb.bs ], [ %.1411.i159, %.lr.ph160 ] ; 2 uses
  %.7.i = phi ptr [ %i.ch, %bb.i ], [ %i.mo, %bb.br ], [ %i.qg, %bb.ct ], [ %.1411.i159, %bb.bs ], [ %.1411.i159, %.lr.ph160 ] ; 2 uses
  %i.qh = icmp ult ptr %.7.i, %i.e
  br i1 %i.qh, label %bb.b, label %ZSTD_compressBlock_lazy_generic.exit.loopexit

ZSTD_compressBlock_lazy_generic.exit.loopexit:    ; preds = %.critedge9.i
  %.pre196 = ptrtoint ptr %.6416.i to i64
  br label %ZSTD_compressBlock_lazy_generic.exit

ZSTD_compressBlock_lazy_generic.exit:             ; preds = %ZSTD_compressBlock_lazy_generic.exit.loopexit, %bb.a
  %.pre-phi = phi i64 [ %.pre196, %ZSTD_compressBlock_lazy_generic.exit.loopexit ], [ %i.ad, %bb.a ]
  %.2482.i.lcssa = phi i32 [ %.9489.i, %ZSTD_compressBlock_lazy_generic.exit.loopexit ], [ %i.o, %bb.a ]
  %.2472.i.lcssa = phi i32 [ %.9479.i, %ZSTD_compressBlock_lazy_generic.exit.loopexit ], [ %i.q, %bb.a ]
  store i32 %.2482.i.lcssa, ptr %2, align 4, !tbaa !42
  store i32 %.2472.i.lcssa, ptr %i.p, align 4, !tbaa !42
  %i.qi = ptrtoint ptr %i.d to i64
  %i.qj = sub i64 %i.qi, %.pre-phi
  ret i64 %i.qj
}

; Function Attrs: nounwind uwtable
define i64 @ZSTD_compressBlock_greedy_extDict(ptr nofree noundef captures(none) initializes((300, 304)) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 %4 ; 15 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !34   ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !51   ; 6 uses
  %i.h = zext i32 %i.g to i64                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.h ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !77   ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.h ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !78
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.r = load i32, ptr %i.q, align 8, !tbaa !52
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.t = load i32, ptr %i.s, align 8, !tbaa !41
  %i.u = tail call i32 @llvm.umax.i32(i32 %i.t, i32 4)
  %i.v = load i32, ptr %2, align 4, !tbaa !42     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !42   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 4 uses
  store i32 0, ptr %i.y, align 4, !tbaa !54
  %i.z = icmp eq ptr %3, %i.i
  %i.aa = zext i1 %i.z to i64                     ; 2 uses
  tail call void asm sideeffect ".p2align 5", "~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !79
  %i.ab = add nsw i64 %4, -8
  %i.ac = icmp sgt i64 %i.ab, %i.aa
  br i1 %i.ac, label %.lr.ph82, label %ZSTD_compressBlock_lazy_extDict_generic.exit

.lr.ph82:                                         ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 %i.aa
  %i.ae = ptrtoint ptr %i.e to i64                ; 3 uses
  %i.af = getelementptr i8, ptr %0, i64 40        ; 2 uses
  %i.ag = shl nuw i32 1, %i.r                     ; 4 uses
  %i.ah = getelementptr inbounds i8, ptr %i.b, i64 -32 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 7 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 3 uses
  %i.an = getelementptr inbounds i8, ptr %i.b, i64 -7 ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %i.b, i64 -3
  %i.ap = getelementptr inbounds i8, ptr %i.b, i64 -1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph82, %.thread
  %.0.i81 = phi ptr [ %i.ad, %.lr.ph82 ], [ %.5.i, %.thread ] ; 11 uses
  %.0295.i80 = phi ptr [ %3, %.lr.ph82 ], [ %.4299.i, %.thread ] ; 11 uses
  %.0337.i79 = phi i32 [ %i.x, %.lr.ph82 ], [ %.5342.i, %.thread ] ; 3 uses
  %.0343.i78 = phi i32 [ %i.v, %.lr.ph82 ], [ %.5348.i, %.thread ] ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i81, i64 1 ; 2 uses
  %i.ar = ptrtoint ptr %.0.i81 to i64             ; 3 uses
  %i.as = sub i64 %i.ar, %i.ae
  %i.at = trunc i64 %i.as to i32
  %i.au = add i32 %i.at, 1                        ; 4 uses
  %.val15 = load i32, ptr %i.m, align 4, !tbaa !78 ; 2 uses
  %.val16 = load i32, ptr %i.af, align 8, !tbaa !53
  %i.av = sub i32 %i.au, %.val15
  %i.aw = icmp ugt i32 %i.av, %i.ag
  %i.ax = sub i32 %i.au, %i.ag
  %.not.i17 = icmp eq i32 %.val16, 0
  %i.ay = select i1 %.not.i17, i1 %i.aw, i1 false
  %i.az = select i1 %i.ay, i32 %i.ax, i32 %.val15
  %i.ba = sub i32 %i.au, %.0343.i78               ; 3 uses
  %i.bb = icmp ult i32 %i.ba, %i.g                ; 2 uses
  %i.bc = select i1 %i.bb, ptr %i.k, ptr %i.e
  %i.bd = zext i32 %i.ba to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bd ; 2 uses
  %i.bf = sub i32 %i.ba, %i.g
  %i.bg = icmp ugt i32 %i.bf, -4
  %i.bh = sub i32 %i.au, %i.az
  %.not.i = icmp ugt i32 %.0343.i78, %i.bh
  %.not360.i = select i1 %.not.i, i1 true, i1 %i.bg
  br i1 %.not360.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val10 = load i32, ptr %i.aq, align 1, !tbaa !42
  %.val9 = load i32, ptr %i.be, align 1, !tbaa !42
  %i.bi = icmp eq i32 %.val10, %.val9
  br i1 %i.bi, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bj = select i1 %i.bb, ptr %i.l, ptr %i.b
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.i81, i64 5
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bm = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.bk, ptr noundef nonnull %i.bl, ptr noundef %i.b, ptr noundef %i.bj, ptr noundef %i.i)
  %i.bn = add i64 %i.bm, 4
  br label %bb.m

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 999999999, ptr %i.a, align 8, !tbaa !43
  switch i32 %i.u, label %bb.h [
    i32 4, label %bb.f
    i32 5, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.bo = call fastcc i64 @ZSTD_HcFindBestMatch_extDict_4(ptr noundef nonnull %0, ptr noundef %.0.i81, ptr noundef %i.b, ptr noundef nonnull %i.a)
  br label %ZSTD_searchMax.exit

bb.g:                                             ; preds = %bb.e
  %i.bp = call fastcc i64 @ZSTD_HcFindBestMatch_extDict_5(ptr noundef nonnull %0, ptr noundef %.0.i81, ptr noundef %i.b, ptr noundef nonnull %i.a)
  br label %ZSTD_searchMax.exit

bb.h:                                             ; preds = %bb.e
  %i.bq = call fastcc i64 @ZSTD_HcFindBestMatch_extDict_6(ptr noundef nonnull %0, ptr noundef %.0.i81, ptr noundef %i.b, ptr noundef nonnull %i.a)
  br label %ZSTD_searchMax.exit

ZSTD_searchMax.exit:                              ; preds = %bb.f, %bb.g, %bb.h
  %.0.i4 = phi i64 [ %i.bo, %bb.f ], [ %i.bp, %bb.g ], [ %i.bq, %bb.h ] ; 4 uses
  %i.br = load i64, ptr %i.a, align 8             ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.bs = icmp ult i64 %.0.i4, 4
  br i1 %i.bs, label %bb.i, label %bb.j

bb.i:                                             ; preds = %ZSTD_searchMax.exit
  %i.bt = ptrtoint ptr %.0295.i80 to i64
  %i.bu = sub i64 %i.ar, %i.bt                    ; 2 uses
  %i.bv = lshr i64 %i.bu, 8
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.i81, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 1
  %i.by = icmp ugt i64 %i.bu, 2303
  %i.bz = zext i1 %i.by to i32
  store i32 %i.bz, ptr %i.y, align 4, !tbaa !54
  br label %.thread

bb.j:                                             ; preds = %ZSTD_searchMax.exit
  %i.ca = icmp ugt i64 %i.br, 3
  br i1 %i.ca, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %5 = add i64 %i.br, %i.ae
  %reass.sub = sub i64 %i.ar, %5
  %i.cb = add i64 %reass.sub, 3                   ; 2 uses
  %i.cc = trunc i64 %i.cb to i32
  %i.cd = icmp ugt i32 %i.g, %i.cc                ; 2 uses
  %i.ce = and i64 %i.cb, 4294967295
  %.v374.i = select i1 %i.cd, ptr %i.k, ptr %i.e
  %i.cf = getelementptr inbounds nuw i8, ptr %.v374.i, i64 %i.ce ; 2 uses
  %i.cg = select i1 %i.cd, ptr %i.p, ptr %i.i     ; 2 uses
  %i.ch = icmp ugt ptr %.0.i81, %.0295.i80
  %i.ci = icmp ugt ptr %i.cf, %i.cg
  %or.cond383.i54 = select i1 %i.ch, i1 %i.ci, i1 false
  br i1 %or.cond383.i54, label %.lr.ph, label %.critedge.i

.lr.ph:                                           ; preds = %bb.k, %bb.l
  %.0294.i57 = phi ptr [ %i.cl, %bb.l ], [ %i.cf, %bb.k ]
  %.11.i56 = phi ptr [ %i.cj, %bb.l ], [ %.0.i81, %bb.k ] ; 2 uses
  %.13.i55 = phi i64 [ %i.co, %bb.l ], [ %.0.i4, %bb.k ] ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %.11.i56, i64 -1 ; 4 uses
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !50
  %i.cl = getelementptr inbounds i8, ptr %.0294.i57, i64 -1 ; 3 uses
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !50
  %i.cn = icmp eq i8 %i.ck, %i.cm
  br i1 %i.cn, label %bb.l, label %.critedge.i

bb.l:                                             ; preds = %.lr.ph
  %i.co = add i64 %.13.i55, 1                     ; 2 uses
  %i.cp = icmp ugt ptr %i.cj, %.0295.i80
  %i.cq = icmp ugt ptr %i.cl, %i.cg
  %or.cond383.i = select i1 %i.cp, i1 %i.cq, i1 false
  br i1 %or.cond383.i, label %.lr.ph, label %.critedge.i, !llvm.loop !6

.critedge.i:                                      ; preds = %bb.l, %.lr.ph, %bb.k
  %.13.i.lcssa = phi i64 [ %.0.i4, %bb.k ], [ %.13.i55, %.lr.ph ], [ %i.co, %bb.l ]
  %.11.i.lcssa = phi ptr [ %.0.i81, %bb.k ], [ %.11.i56, %.lr.ph ], [ %i.cj, %bb.l ]
  %i.cr = trunc i64 %i.br to i32
  %i.cs = add i32 %i.cr, -3
  br label %bb.m

bb.m:                                             ; preds = %bb.d, %.critedge.i, %bb.j
  %.1344.i = phi i32 [ %i.cs, %.critedge.i ], [ %.0343.i78, %bb.j ], [ %.0343.i78, %bb.d ] ; 2 uses
  %.1338.i = phi i32 [ %.0343.i78, %.critedge.i ], [ %.0337.i79, %bb.j ], [ %.0337.i79, %bb.d ] ; 2 uses
  %.14.i = phi i64 [ %.13.i.lcssa, %.critedge.i ], [ %.0.i4, %bb.j ], [ %i.bn, %bb.d ] ; 2 uses
  %.11323.i = phi i64 [ %i.br, %.critedge.i ], [ %i.br, %bb.j ], [ 1, %bb.d ]
  %.12.i = phi ptr [ %.11.i.lcssa, %.critedge.i ], [ %.0.i81, %bb.j ], [ %i.aq, %bb.d ] ; 5 uses
  %i.ct = ptrtoint ptr %.12.i to i64              ; 4 uses
  %i.cu = ptrtoint ptr %.0295.i80 to i64          ; 2 uses
  %i.cv = sub i64 %i.ct, %i.cu                    ; 7 uses
  %i.cw = trunc i64 %.11323.i to i32
  %.not.i6 = icmp ugt ptr %.12.i, %i.ah
  %i.cx = load ptr, ptr %i.ai, align 8, !tbaa !60 ; 5 uses
  br i1 %.not.i6, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.0295.i.val = load <2 x i64>, ptr %.0295.i80, align 1, !tbaa !50
  store <2 x i64> %.0295.i.val, ptr %i.cx, align 1, !tbaa !50
  %i.cy = icmp ugt i64 %i.cv, 16
  br i1 %i.cy, label %bb.o, label %ZSTD_storeSeq.exit7.thread

bb.o:                                             ; preds = %bb.n
  %i.cz = load ptr, ptr %i.ai, align 8, !tbaa !60 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %.0295.i80, i64 16 ; 2 uses
  %i.dc = getelementptr i8, ptr %i.cz, i64 %i.cv
  %.val12 = load <2 x i64>, ptr %i.db, align 1, !tbaa !50
  store <2 x i64> %.val12, ptr %i.da, align 1, !tbaa !50
  %i.dd = icmp ult i64 %i.cv, 33
  br i1 %i.dd, label %ZSTD_storeSeq.exit7.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %bb.p
  %.pn.i = phi ptr [ %i.db, %bb.p ], [ %i.dg, %bb.q ] ; 2 uses
  %.1.i = phi ptr [ %i.de, %bb.p ], [ %i.dh, %bb.q ] ; 3 uses
  %.130.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16
  %.130.i.val = load <2 x i64>, ptr %.130.i, align 1, !tbaa !50
  store <2 x i64> %.130.i.val, ptr %.1.i, align 1, !tbaa !50
  %i.df = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %.pn.i, i64 32 ; 2 uses
  %.val11 = load <2 x i64>, ptr %i.dg, align 1, !tbaa !50
  store <2 x i64> %.val11, ptr %i.df, align 1, !tbaa !50
  %i.dh = getelementptr inbounds nuw i8, ptr %.1.i, i64 32 ; 2 uses
  %i.di = icmp ult ptr %i.dh, %i.dc
  br i1 %i.di, label %bb.q, label %ZSTD_storeSeq.exit7, !llvm.loop !2

bb.r:                                             ; preds = %bb.m
  %.not.i18 = icmp ugt ptr %.0295.i80, %i.ah
  br i1 %.not.i18, label %ZSTD_wildcopy.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dj = sub i64 %i.aj, %i.cu                    ; 2 uses
  %i.dk = getelementptr inbounds i8, ptr %i.cx, i64 %i.dj ; 3 uses
  %.val19.i = load <2 x i64>, ptr %.0295.i80, align 1, !tbaa !50
  store <2 x i64> %.val19.i, ptr %i.cx, align 1, !tbaa !50
  %i.dl = icmp ult i64 %i.dj, 17
  br i1 %i.dl, label %ZSTD_wildcopy.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %bb.t
  %.pn.i.i = phi ptr [ %.0295.i80, %bb.t ], [ %i.do, %bb.u ] ; 2 uses
  %.1.i.i = phi ptr [ %i.dm, %bb.t ], [ %i.dp, %bb.u ] ; 3 uses
  %.130.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %.130.i.val.i = load <2 x i64>, ptr %.130.i.i, align 1, !tbaa !50
  store <2 x i64> %.130.i.val.i, ptr %.1.i.i, align 1, !tbaa !50
  %i.dn = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16
  %i.do = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 32 ; 2 uses
  %.val.i = load <2 x i64>, ptr %i.do, align 1, !tbaa !50
  store <2 x i64> %.val.i, ptr %i.dn, align 1, !tbaa !50
  %i.dp = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 32 ; 2 uses
  %i.dq = icmp ult ptr %i.dp, %i.dk
  br i1 %i.dq, label %bb.u, label %ZSTD_wildcopy.exit.i, !llvm.loop !2

ZSTD_wildcopy.exit.i:                             ; preds = %bb.u, %bb.s, %bb.r
  %.014.i = phi ptr [ %.0295.i80, %bb.r ], [ %i.ah, %bb.s ], [ %i.ah, %bb.u ] ; 7 uses
  %.0.i19 = phi ptr [ %i.cx, %bb.r ], [ %i.dk, %bb.s ], [ %i.dk, %bb.u ] ; 6 uses
  %i.dr = icmp ult ptr %.014.i, %.12.i
  br i1 %i.dr, label %iter.check, label %ZSTD_storeSeq.exit7

iter.check:                                       ; preds = %ZSTD_wildcopy.exit.i
  %.014.i124 = ptrtoaddr ptr %.014.i to i64       ; 2 uses
  %.0.i19123 = ptrtoaddr ptr %.0.i19 to i64
  %i.ds = sub i64 %i.ct, %.014.i124               ; 7 uses
  %min.iters.check = icmp ult i64 %i.ds, 8
  %i.dt = sub i64 %.014.i124, %.0.i19123
  %diff.check = icmp ugt i64 %i.dt, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check125 = icmp ult i64 %i.ds, 32
  br i1 %min.iters.check125, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.du = and i64 %i.ds, 24
  %n.vec = and i64 %i.ds, -32                     ; 5 uses
  %i.dv = getelementptr i8, ptr %.0.i19, i64 %n.vec
  %i.dw = getelementptr i8, ptr %.014.i, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.0.i19, i64 %index ; 2 uses
  %next.gep126 = getelementptr i8, ptr %.014.i, i64 %index ; 2 uses
  %i.dx = getelementptr i8, ptr %next.gep126, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep126, align 1, !tbaa !50
  %wide.load127 = load <16 x i8>, ptr %i.dx, align 1, !tbaa !50
  %i.dy = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !50
  store <16 x i8> %wide.load127, ptr %i.dy, align 1, !tbaa !50
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dz = icmp eq i64 %index.next, %n.vec
  br i1 %i.dz, label %middle.block, label %vector.body, !llvm.loop !169

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ds, %n.vec
  br i1 %cmp.n, label %ZSTD_storeSeq.exit7, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.du, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !63

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec129 = and i64 %i.ds, -8                   ; 4 uses
  %i.ea = getelementptr i8, ptr %.0.i19, i64 %n.vec129
  %i.eb = getelementptr i8, ptr %.014.i, i64 %n.vec129
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index130 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next134, %vec.epilog.vector.body ] ; 3 uses
  %next.gep131 = getelementptr i8, ptr %.0.i19, i64 %index130
  %next.gep132 = getelementptr i8, ptr %.014.i, i64 %index130
  %wide.load133 = load <8 x i8>, ptr %next.gep132, align 1, !tbaa !50
  store <8 x i8> %wide.load133, ptr %next.gep131, align 1, !tbaa !50
  %index.next134 = add nuw i64 %index130, 8       ; 2 uses
  %i.ec = icmp eq i64 %index.next134, %n.vec129
  br i1 %i.ec, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !170

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n135 = icmp eq i64 %i.ds, %n.vec129
  br i1 %cmp.n135, label %ZSTD_storeSeq.exit7, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.121.i.ph = phi ptr [ %.0.i19, %iter.check ], [ %i.dv, %vec.epilog.iter.check ], [ %i.ea, %vec.epilog.middle.block ] ; 2 uses
  %.11520.i.ph = phi ptr [ %.014.i, %iter.check ], [ %i.dw, %vec.epilog.iter.check ], [ %i.eb, %vec.epilog.middle.block ] ; 3 uses
  %.11520.i.ph143 = ptrtoaddr ptr %.11520.i.ph to i64 ; 2 uses
  %i.ed = sub i64 %i.ct, %.11520.i.ph143
  %xtraiter = and i64 %i.ed, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.121.i.prol = phi ptr [ %i.eg, %.lr.ph.i.prol ], [ %.121.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.11520.i.prol = phi ptr [ %i.ee, %.lr.ph.i.prol ], [ %.11520.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ee = getelementptr inbounds nuw i8, ptr %.11520.i.prol, i64 1 ; 2 uses
  %i.ef = load i8, ptr %.11520.i.prol, align 1, !tbaa !50
end_hunk_0
begin_hunk_1_@ZSTD_compressBlock_greedy_extDict_row:bb.a
  tail call void @llvm.prefetch.p0(ptr %i.cm, i32 0, i32 3, i32 1)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.cl
  tail call void @llvm.prefetch.p0(ptr %i.cn, i32 0, i32 3, i32 1)
  %i.co = and i64 %i.ao, 7
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.co
  store i32 %i.ci, ptr %i.cp, align 4, !tbaa !42
  %indvars.iv.next.prol = add nuw nsw i64 %i.ao, 1
  br label %ZSTD_hashPtrSalted.exit.us79.prol.loopexit

ZSTD_hashPtrSalted.exit.us79.prol.loopexit:       ; preds = %ZSTD_hashPtrSalted.exit.us79.prol, %ZSTD_hashPtrSalted.exit.us79.preheader
  %indvars.iv.unr = phi i64 [ %i.ao, %ZSTD_hashPtrSalted.exit.us79.preheader ], [ %indvars.iv.next.prol, %ZSTD_hashPtrSalted.exit.us79.prol ]
  %i.cq = add nsw i64 %wide.trip.count139, -1
  %i.cr = icmp eq i64 %i.cq, %i.ao
  br i1 %i.cr, label %ZSTD_row_fillHashCache.exit6, label %ZSTD_hashPtrSalted.exit.us79

ZSTD_hashPtrSalted.exit.us74.preheader:           ; preds = %.lr.ph.split
  %i.cs = sub nsw i64 %wide.trip.count139, %i.ao
  %xtraiter210 = and i64 %i.cs, 1
  %lcmp.mod211.not = icmp eq i64 %xtraiter210, 0
  br i1 %lcmp.mod211.not, label %ZSTD_hashPtrSalted.exit.us74.prol.loopexit, label %ZSTD_hashPtrSalted.exit.us74.prol

ZSTD_hashPtrSalted.exit.us74.prol:                ; preds = %ZSTD_hashPtrSalted.exit.us74.preheader
  %i.ct = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ao
  %.val23.us73.prol = load i64, ptr %i.ct, align 1, !tbaa !43
  %i.cu = mul i64 %.val23.us73.prol, -3523014627193847808
  %i.cv = xor i64 %i.cu, %i.bb
  %i.cw = lshr i64 %i.cv, %i.bd
  %i.cx = trunc i64 %i.cw to i32                  ; 2 uses
  %i.cy = lshr i32 %i.cx, 8
  %i.cz = shl nuw nsw i32 %i.cy, %i.y
  %i.da = zext nneg i32 %i.cz to i64              ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.da
  tail call void @llvm.prefetch.p0(ptr %i.db, i32 0, i32 3, i32 1)
  %i.dc = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.da
  tail call void @llvm.prefetch.p0(ptr %i.dc, i32 0, i32 3, i32 1)
  %i.dd = and i64 %i.ao, 7
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.dd
  store i32 %i.cx, ptr %i.de, align 4, !tbaa !42
  %indvars.iv.next127.prol = add nuw nsw i64 %i.ao, 1
  br label %ZSTD_hashPtrSalted.exit.us74.prol.loopexit

ZSTD_hashPtrSalted.exit.us74.prol.loopexit:       ; preds = %ZSTD_hashPtrSalted.exit.us74.prol, %ZSTD_hashPtrSalted.exit.us74.preheader
  %indvars.iv126.unr = phi i64 [ %i.ao, %ZSTD_hashPtrSalted.exit.us74.preheader ], [ %indvars.iv.next127.prol, %ZSTD_hashPtrSalted.exit.us74.prol ]
  %i.df = add nsw i64 %wide.trip.count139, -1
  %i.dg = icmp eq i64 %i.df, %i.ao
  br i1 %i.dg, label %ZSTD_row_fillHashCache.exit6, label %ZSTD_hashPtrSalted.exit.us74

ZSTD_hashPtrSalted.exit.preheader:                ; preds = %.lr.ph.split
  %i.dh = sub nsw i64 %wide.trip.count139, %i.ao
  %xtraiter212 = and i64 %i.dh, 1
  %lcmp.mod213.not = icmp eq i64 %xtraiter212, 0
  br i1 %lcmp.mod213.not, label %ZSTD_hashPtrSalted.exit.prol.loopexit, label %ZSTD_hashPtrSalted.exit.prol

ZSTD_hashPtrSalted.exit.prol:                     ; preds = %ZSTD_hashPtrSalted.exit.preheader
  %i.di = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ao
  %.val19.prol = load i32, ptr %i.di, align 1, !tbaa !42
  %i.dj = mul i32 %.val19.prol, -1640531535
  %i.dk = xor i32 %i.dj, %i.be
  %i.dl = lshr i32 %i.dk, %i.bf                   ; 2 uses
  %i.dm = lshr i32 %i.dl, 8
  %i.dn = shl nuw nsw i32 %i.dm, %i.y
  %i.do = zext nneg i32 %i.dn to i64              ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.do
  tail call void @llvm.prefetch.p0(ptr %i.dp, i32 0, i32 3, i32 1)
  %i.dq = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.do
  tail call void @llvm.prefetch.p0(ptr %i.dq, i32 0, i32 3, i32 1)
  %i.dr = and i64 %i.ao, 7
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.dr
  store i32 %i.dl, ptr %i.ds, align 4, !tbaa !42
  %indvars.iv.next132.prol = add nuw nsw i64 %i.ao, 1
  br label %ZSTD_hashPtrSalted.exit.prol.loopexit

ZSTD_hashPtrSalted.exit.prol.loopexit:            ; preds = %ZSTD_hashPtrSalted.exit.prol, %ZSTD_hashPtrSalted.exit.preheader
  %indvars.iv131.unr = phi i64 [ %i.ao, %ZSTD_hashPtrSalted.exit.preheader ], [ %indvars.iv.next132.prol, %ZSTD_hashPtrSalted.exit.prol ]
  %i.dt = add nsw i64 %wide.trip.count139, -1
  %i.du = icmp eq i64 %i.dt, %i.ao
  br i1 %i.du, label %ZSTD_row_fillHashCache.exit6, label %ZSTD_hashPtrSalted.exit

ZSTD_hashPtrSalted.exit.us74:                     ; preds = %ZSTD_hashPtrSalted.exit.us74.prol.loopexit, %ZSTD_hashPtrSalted.exit.us74
  %indvars.iv126 = phi i64 [ %indvars.iv.next127.1, %ZSTD_hashPtrSalted.exit.us74 ], [ %indvars.iv126.unr, %ZSTD_hashPtrSalted.exit.us74.prol.loopexit ] ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv126
  %.val23.us73 = load i64, ptr %i.dv, align 1, !tbaa !43
  %i.dw = mul i64 %.val23.us73, -3523014627193847808
  %i.dx = xor i64 %i.dw, %i.bb
  %i.dy = lshr i64 %i.dx, %i.bd
  %i.dz = trunc i64 %i.dy to i32                  ; 2 uses
  %i.ea = lshr i32 %i.dz, 8
  %i.eb = shl nuw nsw i32 %i.ea, %i.y
  %i.ec = zext nneg i32 %i.eb to i64              ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ec
  tail call void @llvm.prefetch.p0(ptr %i.ed, i32 0, i32 3, i32 1)
  %i.ee = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ec
  tail call void @llvm.prefetch.p0(ptr %i.ee, i32 0, i32 3, i32 1)
  %i.ef = and i64 %indvars.iv126, 7
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.ef
  store i32 %i.dz, ptr %i.eg, align 4, !tbaa !42
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 1 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.next127
  %.val23.us73.1 = load i64, ptr %i.eh, align 1, !tbaa !43
  %i.ei = mul i64 %.val23.us73.1, -3523014627193847808
  %i.ej = xor i64 %i.ei, %i.bb
  %i.ek = lshr i64 %i.ej, %i.bd
  %i.el = trunc i64 %i.ek to i32                  ; 2 uses
  %i.em = lshr i32 %i.el, 8
  %i.en = shl nuw nsw i32 %i.em, %i.y
  %i.eo = zext nneg i32 %i.en to i64              ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.eo
  tail call void @llvm.prefetch.p0(ptr %i.ep, i32 0, i32 3, i32 1)
  %i.eq = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.eo
  tail call void @llvm.prefetch.p0(ptr %i.eq, i32 0, i32 3, i32 1)
  %i.er = and i64 %indvars.iv.next127, 7
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.er
  store i32 %i.el, ptr %i.es, align 4, !tbaa !42
  %indvars.iv.next127.1 = add nuw nsw i64 %indvars.iv126, 2 ; 2 uses
  %exitcond130.not.1 = icmp eq i64 %indvars.iv.next127.1, %wide.trip.count139
  br i1 %exitcond130.not.1, label %ZSTD_row_fillHashCache.exit6, label %ZSTD_hashPtrSalted.exit.us74, !llvm.loop !5

ZSTD_hashPtrSalted.exit.us79:                     ; preds = %ZSTD_hashPtrSalted.exit.us79.prol.loopexit, %ZSTD_hashPtrSalted.exit.us79
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %ZSTD_hashPtrSalted.exit.us79 ], [ %indvars.iv.unr, %ZSTD_hashPtrSalted.exit.us79.prol.loopexit ] ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv
  %.val21.us78 = load i64, ptr %i.et, align 1, !tbaa !43
  %i.eu = mul i64 %.val21.us78, -3523014627271114752
  %i.ev = xor i64 %i.eu, %i.bb
  %i.ew = lshr i64 %i.ev, %i.bd
  %i.ex = trunc i64 %i.ew to i32                  ; 2 uses
  %i.ey = lshr i32 %i.ex, 8
  %i.ez = shl nuw nsw i32 %i.ey, %i.y
  %i.fa = zext nneg i32 %i.ez to i64              ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.fa
  tail call void @llvm.prefetch.p0(ptr %i.fb, i32 0, i32 3, i32 1)
  %i.fc = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.fa
  tail call void @llvm.prefetch.p0(ptr %i.fc, i32 0, i32 3, i32 1)
  %i.fd = and i64 %indvars.iv, 7
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.fd
  store i32 %i.ex, ptr %i.fe, align 4, !tbaa !42
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.next
  %.val21.us78.1 = load i64, ptr %i.ff, align 1, !tbaa !43
  %i.fg = mul i64 %.val21.us78.1, -3523014627271114752
  %i.fh = xor i64 %i.fg, %i.bb
  %i.fi = lshr i64 %i.fh, %i.bd
  %i.fj = trunc i64 %i.fi to i32                  ; 2 uses
  %i.fk = lshr i32 %i.fj, 8
  %i.fl = shl nuw nsw i32 %i.fk, %i.y
  %i.fm = zext nneg i32 %i.fl to i64              ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.fm
  tail call void @llvm.prefetch.p0(ptr %i.fn, i32 0, i32 3, i32 1)
  %i.fo = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.fm
  tail call void @llvm.prefetch.p0(ptr %i.fo, i32 0, i32 3, i32 1)
  %i.fp = and i64 %indvars.iv.next, 7
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.fp
  store i32 %i.fj, ptr %i.fq, align 4, !tbaa !42
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count139
  br i1 %exitcond.not.1, label %ZSTD_row_fillHashCache.exit6, label %ZSTD_hashPtrSalted.exit.us79, !llvm.loop !5

ZSTD_hashPtrSalted.exit:                          ; preds = %ZSTD_hashPtrSalted.exit.prol.loopexit, %ZSTD_hashPtrSalted.exit
  %indvars.iv131 = phi i64 [ %indvars.iv.next132.1, %ZSTD_hashPtrSalted.exit ], [ %indvars.iv131.unr, %ZSTD_hashPtrSalted.exit.prol.loopexit ] ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv131
  %.val19 = load i32, ptr %i.fr, align 1, !tbaa !42
  %i.fs = mul i32 %.val19, -1640531535
  %i.ft = xor i32 %i.fs, %i.be
  %i.fu = lshr i32 %i.ft, %i.bf                   ; 2 uses
  %i.fv = lshr i32 %i.fu, 8
  %i.fw = shl nuw nsw i32 %i.fv, %i.y
  %i.fx = zext nneg i32 %i.fw to i64              ; 2 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.fx
  tail call void @llvm.prefetch.p0(ptr %i.fy, i32 0, i32 3, i32 1)
  %i.fz = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.fx
  tail call void @llvm.prefetch.p0(ptr %i.fz, i32 0, i32 3, i32 1)
  %i.ga = and i64 %indvars.iv131, 7
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.ga
  store i32 %i.fu, ptr %i.gb, align 4, !tbaa !42
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.next132
  %.val19.1 = load i32, ptr %i.gc, align 1, !tbaa !42
  %i.gd = mul i32 %.val19.1, -1640531535
  %i.ge = xor i32 %i.gd, %i.be
  %i.gf = lshr i32 %i.ge, %i.bf                   ; 2 uses
  %i.gg = lshr i32 %i.gf, 8
  %i.gh = shl nuw nsw i32 %i.gg, %i.y
  %i.gi = zext nneg i32 %i.gh to i64              ; 2 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.gi
  tail call void @llvm.prefetch.p0(ptr %i.gj, i32 0, i32 3, i32 1)
  %i.gk = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.gi
  tail call void @llvm.prefetch.p0(ptr %i.gk, i32 0, i32 3, i32 1)
  %i.gl = and i64 %indvars.iv.next132, 7
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.gl
  store i32 %i.gf, ptr %i.gm, align 4, !tbaa !42
  %indvars.iv.next132.1 = add nuw nsw i64 %indvars.iv131, 2 ; 2 uses
  %exitcond135.not.1 = icmp eq i64 %indvars.iv.next132.1, %wide.trip.count139
  br i1 %exitcond135.not.1, label %ZSTD_row_fillHashCache.exit6, label %ZSTD_hashPtrSalted.exit, !llvm.loop !5

ZSTD_row_fillHashCache.exit6:                     ; preds = %ZSTD_hashPtrSalted.exit.us79.prol.loopexit, %ZSTD_hashPtrSalted.exit.us79, %ZSTD_hashPtrSalted.exit.us74.prol.loopexit, %ZSTD_hashPtrSalted.exit.us74, %ZSTD_hashPtrSalted.exit.prol.loopexit, %ZSTD_hashPtrSalted.exit, %ZSTD_row_prefetch.exit.us, %bb.c
  tail call void asm sideeffect ".p2align 5", "~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !79
  %i.gn = add nsw i64 %4, -16
  %i.go = icmp sgt i64 %i.gn, %i.ae
  br i1 %i.go, label %.lr.ph112, label %ZSTD_compressBlock_lazy_extDict_generic.exit

.lr.ph112:                                        ; preds = %ZSTD_row_fillHashCache.exit6
  %i.gp = ptrtoint ptr %i.e to i64                ; 3 uses
  %i.gq = getelementptr i8, ptr %0, i64 40        ; 2 uses
  %i.gr = shl nuw i32 1, %i.r                     ; 4 uses
  %i.gs = getelementptr inbounds i8, ptr %i.b, i64 -32 ; 6 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 7 uses
  %i.gu = ptrtoint ptr %i.gs to i64
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 3 uses
  %i.gy = ptrtoint ptr %i.c to i64
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ha = icmp ugt i32 %i.w, 4
  %.not = icmp eq i32 %i.w, 5
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.hc = getelementptr inbounds i8, ptr %i.b, i64 -7 ; 2 uses
  %i.hd = getelementptr inbounds i8, ptr %i.b, i64 -3
  %i.he = getelementptr inbounds i8, ptr %i.b, i64 -1
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph112, %.thread57
  %.0.i111 = phi ptr [ %i.af, %.lr.ph112 ], [ %.5.i, %.thread57 ] ; 17 uses
  %.0295.i110 = phi ptr [ %3, %.lr.ph112 ], [ %.4299.i, %.thread57 ] ; 11 uses
  %.0337.i109 = phi i32 [ %i.ab, %.lr.ph112 ], [ %.5342.i, %.thread57 ] ; 3 uses
  %.0343.i108 = phi i32 [ %i.z, %.lr.ph112 ], [ %.5348.i, %.thread57 ] ; 6 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.0.i111, i64 1 ; 2 uses
  %i.hg = ptrtoint ptr %.0.i111 to i64            ; 3 uses
  %i.hh = sub i64 %i.hg, %i.gp
  %i.hi = trunc i64 %i.hh to i32
  %i.hj = add i32 %i.hi, 1                        ; 4 uses
  %.val28 = load i32, ptr %i.m, align 4, !tbaa !78 ; 2 uses
  %.val29 = load i32, ptr %i.gq, align 8, !tbaa !53
  %i.hk = sub i32 %i.hj, %.val28
  %i.hl = icmp ugt i32 %i.hk, %i.gr
  %i.hm = sub i32 %i.hj, %i.gr
  %.not.i30 = icmp eq i32 %.val29, 0
  %i.hn = select i1 %.not.i30, i1 %i.hl, i1 false
  %i.ho = select i1 %i.hn, i32 %i.hm, i32 %.val28
  %i.hp = sub i32 %i.hj, %.0343.i108              ; 3 uses
  %i.hq = icmp ult i32 %i.hp, %i.g                ; 2 uses
  %i.hr = select i1 %i.hq, ptr %i.k, ptr %i.e
  %i.hs = zext i32 %i.hp to i64
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 %i.hs ; 2 uses
  %i.hu = sub i32 %i.hp, %i.g
  %i.hv = icmp ugt i32 %i.hu, -4
  %i.hw = sub i32 %i.hj, %i.ho
  %.not.i = icmp ugt i32 %.0343.i108, %i.hw
  %.not360.i = select i1 %.not.i, i1 true, i1 %i.hv
  br i1 %.not360.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val17 = load i32, ptr %i.hf, align 1, !tbaa !42
  %.val16 = load i32, ptr %i.ht, align 1, !tbaa !42
  %i.hx = icmp eq i32 %.val17, %.val16
  br i1 %i.hx, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.hy = select i1 %i.hq, ptr %i.l, ptr %i.b
  %i.hz = getelementptr inbounds nuw i8, ptr %.0.i111, i64 5
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ht, i64 4
  %i.ib = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.hz, ptr noundef nonnull %i.ia, ptr noundef %i.b, ptr noundef %i.hy, ptr noundef %i.i)
  %i.ic = add i64 %i.ib, 4
  br label %bb.ab

bb.k:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 999999999, ptr %i.a, align 8, !tbaa !43
  switch i32 %i.u, label %bb.t [
    i32 4, label %bb.l
    i32 5, label %bb.p
  ]

bb.l:                                             ; preds = %bb.k
  switch i32 %i.x, label %bb.o [
    i32 4, label %bb.m
    i32 5, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.id = call fastcc i64 @ZSTD_RowFindBestMatch_extDict_4_4(ptr noundef nonnull %0, ptr noundef %.0.i111, ptr noundef %i.b, ptr noundef nonnull %i.a)
  br label %ZSTD_searchMax.exit

bb.n:                                             ; preds = %bb.l
  %i.ie = call fastcc i64 @ZSTD_RowFindBestMatch_extDict_4_5(ptr noundef nonnull %0, ptr noundef %.0.i111, ptr noundef %i.b, ptr noundef nonnull %i.a)
  br label %ZSTD_searchMax.exit

bb.o:                                             ; preds = %bb.l
  %i.if = call fastcc i64 @ZSTD_RowFindBestMatch_extDict_4_6(ptr noundef nonnull %0, ptr noundef %.0.i111, ptr noundef %i.b, ptr noundef nonnull %i.a)
  br label %ZSTD_searchMax.exit

bb.p:                                             ; preds = %bb.k
  switch i32 %i.x, label %bb.s [
    i32 4, label %bb.q
    i32 5, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.ig = call fastcc i64 @ZSTD_RowFindBestMatch_extDict_5_4(ptr noundef nonnull %0, ptr noundef %.0.i111, ptr noundef %i.b, ptr noundef nonnull %i.a)
  br label %ZSTD_searchMax.exit

bb.r:                                             ; preds = %bb.p
  %i.ih = call fastcc i64 @ZSTD_RowFindBestMatch_extDict_5_5(ptr noundef nonnull %0, ptr noundef %.0.i111, ptr noundef %i.b, ptr noundef nonnull %i.a)
  br label %ZSTD_searchMax.exit

bb.s:                                             ; preds = %bb.p
  %i.ii = call fastcc i64 @ZSTD_RowFindBestMatch_extDict_5_6(ptr noundef nonnull %0, ptr noundef %.0.i111, ptr noundef %i.b, ptr noundef nonnull %i.a)
  br label %ZSTD_searchMax.exit

bb.t:                                             ; preds = %bb.k
  switch i32 %i.x, label %bb.w [
    i32 4, label %bb.u
    i32 5, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  %i.ij = call fastcc i64 @ZSTD_RowFindBestMatch_extDict_6_4(ptr noundef nonnull %0, ptr noundef %.0.i111, ptr noundef %i.b, ptr noundef nonnull %i.a)
  br label %ZSTD_searchMax.exit

bb.v:                                             ; preds = %bb.t
  %i.ik = call fastcc i64 @ZSTD_RowFindBestMatch_extDict_6_5(ptr noundef nonnull %0, ptr noundef %.0.i111, ptr noundef %i.b, ptr noundef nonnull %i.a)
  br label %ZSTD_searchMax.exit

bb.w:                                             ; preds = %bb.t
  %i.il = call fastcc i64 @ZSTD_RowFindBestMatch_extDict_6_6(ptr noundef nonnull %0, ptr noundef %.0.i111, ptr noundef %i.b, ptr noundef nonnull %i.a)
  br label %ZSTD_searchMax.exit

ZSTD_searchMax.exit:                              ; preds = %bb.m, %bb.n, %bb.o, %bb.q, %bb.r, %bb.s, %bb.u, %bb.v, %bb.w
  %.0.i11 = phi i64 [ %i.ij, %bb.u ], [ %i.ik, %bb.v ], [ %i.il, %bb.w ], [ %i.id, %bb.m ], [ %i.ie, %bb.n ], [ %i.if, %bb.o ], [ %i.ig, %bb.q ], [ %i.ih, %bb.r ], [ %i.ii, %bb.s ] ; 4 uses
  %i.im = load i64, ptr %i.a, align 8             ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.in = icmp ult i64 %.0.i11, 4
  br i1 %i.in, label %bb.x, label %bb.y

bb.x:                                             ; preds = %ZSTD_searchMax.exit
  %i.io = ptrtoint ptr %.0295.i110 to i64
  %i.ip = sub i64 %i.hg, %i.io                    ; 2 uses
  %i.iq = lshr i64 %i.ip, 8
  %i.ir = getelementptr inbounds nuw i8, ptr %.0.i111, i64 %i.iq
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 1
  %i.it = icmp ugt i64 %i.ip, 2303
  %i.iu = zext i1 %i.it to i32
  store i32 %i.iu, ptr %i.ac, align 4, !tbaa !54
  br label %.thread57

bb.y:                                             ; preds = %ZSTD_searchMax.exit
  %i.iv = icmp ugt i64 %i.im, 3
  br i1 %i.iv, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %5 = add i64 %i.im, %i.gp
  %reass.sub = sub i64 %i.hg, %5
  %i.iw = add i64 %reass.sub, 3                   ; 2 uses
  %i.ix = trunc i64 %i.iw to i32
  %i.iy = icmp ugt i32 %i.g, %i.ix                ; 2 uses
  %i.iz = and i64 %i.iw, 4294967295
  %.v374.i = select i1 %i.iy, ptr %i.k, ptr %i.e
  %i.ja = getelementptr inbounds nuw i8, ptr %.v374.i, i64 %i.iz ; 2 uses
  %i.jb = select i1 %i.iy, ptr %i.p, ptr %i.i     ; 2 uses
  %i.jc = icmp ugt ptr %.0.i111, %.0295.i110
  %i.jd = icmp ugt ptr %i.ja, %i.jb
  %or.cond383.i81 = select i1 %i.jc, i1 %i.jd, i1 false
  br i1 %or.cond383.i81, label %.lr.ph85, label %.critedge.i

.lr.ph85:                                         ; preds = %bb.z, %bb.aa
  %.0294.i84 = phi ptr [ %i.jg, %bb.aa ], [ %i.ja, %bb.z ]
  %.11.i83 = phi ptr [ %i.je, %bb.aa ], [ %.0.i111, %bb.z ] ; 2 uses
  %.13.i82 = phi i64 [ %i.jj, %bb.aa ], [ %.0.i11, %bb.z ] ; 2 uses
  %i.je = getelementptr inbounds i8, ptr %.11.i83, i64 -1 ; 4 uses
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !50
  %i.jg = getelementptr inbounds i8, ptr %.0294.i84, i64 -1 ; 3 uses
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !50
  %i.ji = icmp eq i8 %i.jf, %i.jh
  br i1 %i.ji, label %bb.aa, label %.critedge.i

bb.aa:                                            ; preds = %.lr.ph85
  %i.jj = add i64 %.13.i82, 1                     ; 2 uses
  %i.jk = icmp ugt ptr %i.je, %.0295.i110
  %i.jl = icmp ugt ptr %i.jg, %i.jb
  %or.cond383.i = select i1 %i.jk, i1 %i.jl, i1 false
  br i1 %or.cond383.i, label %.lr.ph85, label %.critedge.i, !llvm.loop !6

.critedge.i:                                      ; preds = %bb.aa, %.lr.ph85, %bb.z
  %.13.i.lcssa = phi i64 [ %.0.i11, %bb.z ], [ %.13.i82, %.lr.ph85 ], [ %i.jj, %bb.aa ]
  %.11.i.lcssa = phi ptr [ %.0.i111, %bb.z ], [ %.11.i83, %.lr.ph85 ], [ %i.je, %bb.aa ]
  %i.jm = trunc i64 %i.im to i32
  %i.jn = add i32 %i.jm, -3
  br label %bb.ab

bb.ab:                                            ; preds = %bb.j, %.critedge.i, %bb.y
  %.1344.i = phi i32 [ %i.jn, %.critedge.i ], [ %.0343.i108, %bb.y ], [ %.0343.i108, %bb.j ] ; 2 uses
  %.1338.i = phi i32 [ %.0343.i108, %.critedge.i ], [ %.0337.i109, %bb.y ], [ %.0337.i109, %bb.j ] ; 2 uses
  %.14.i = phi i64 [ %.13.i.lcssa, %.critedge.i ], [ %.0.i11, %bb.y ], [ %i.ic, %bb.j ] ; 2 uses
  %.11323.i = phi i64 [ %i.im, %.critedge.i ], [ %i.im, %bb.y ], [ 1, %bb.j ]
  %.12.i = phi ptr [ %.11.i.lcssa, %.critedge.i ], [ %.0.i111, %bb.y ], [ %i.hf, %bb.j ] ; 5 uses
  %i.jo = ptrtoint ptr %.12.i to i64              ; 4 uses
  %i.jp = ptrtoint ptr %.0295.i110 to i64         ; 2 uses
  %i.jq = sub i64 %i.jo, %i.jp                    ; 7 uses
  %i.jr = trunc i64 %.11323.i to i32
  %.not.i13 = icmp ugt ptr %.12.i, %i.gs
  %i.js = load ptr, ptr %i.gt, align 8, !tbaa !60 ; 5 uses
  br i1 %.not.i13, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.0295.i.val = load <2 x i64>, ptr %.0295.i110, align 1, !tbaa !50
  store <2 x i64> %.0295.i.val, ptr %i.js, align 1, !tbaa !50
  %i.jt = icmp ugt i64 %i.jq, 16
  br i1 %i.jt, label %bb.ad, label %ZSTD_storeSeq.exit14.thread

bb.ad:                                            ; preds = %bb.ac
  %i.ju = load ptr, ptr %i.gt, align 8, !tbaa !60 ; 3 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  %i.jw = getelementptr inbounds nuw i8, ptr %.0295.i110, i64 16 ; 2 uses
  %i.jx = getelementptr i8, ptr %i.ju, i64 %i.jq
  %.val25 = load <2 x i64>, ptr %i.jw, align 1, !tbaa !50
  store <2 x i64> %.val25, ptr %i.jv, align 1, !tbaa !50
  %i.jy = icmp ult i64 %i.jq, 33
  br i1 %i.jy, label %ZSTD_storeSeq.exit14.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ju, i64 32
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %bb.ae
  %.pn.i = phi ptr [ %i.jw, %bb.ae ], [ %i.kb, %bb.af ] ; 2 uses
  %.1.i = phi ptr [ %i.jz, %bb.ae ], [ %i.kc, %bb.af ] ; 3 uses
  %.130.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16
  %.130.i.val = load <2 x i64>, ptr %.130.i, align 1, !tbaa !50
  store <2 x i64> %.130.i.val, ptr %.1.i, align 1, !tbaa !50
  %i.ka = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  %i.kb = getelementptr inbounds nuw i8, ptr %.pn.i, i64 32 ; 2 uses
  %.val24 = load <2 x i64>, ptr %i.kb, align 1, !tbaa !50
  store <2 x i64> %.val24, ptr %i.ka, align 1, !tbaa !50
  %i.kc = getelementptr inbounds nuw i8, ptr %.1.i, i64 32 ; 2 uses
  %i.kd = icmp ult ptr %i.kc, %i.jx
  br i1 %i.kd, label %bb.af, label %ZSTD_storeSeq.exit14, !llvm.loop !2

bb.ag:                                            ; preds = %bb.ab
  %.not.i31 = icmp ugt ptr %.0295.i110, %i.gs
  br i1 %.not.i31, label %ZSTD_wildcopy.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ke = sub i64 %i.gu, %i.jp                    ; 2 uses
  %i.kf = getelementptr inbounds i8, ptr %i.js, i64 %i.ke ; 3 uses
  %.val19.i = load <2 x i64>, ptr %.0295.i110, align 1, !tbaa !50
  store <2 x i64> %.val19.i, ptr %i.js, align 1, !tbaa !50
  %i.kg = icmp ult i64 %i.ke, 17
  br i1 %i.kg, label %ZSTD_wildcopy.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.kh = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %bb.ai
  %.pn.i.i = phi ptr [ %.0295.i110, %bb.ai ], [ %i.kj, %bb.aj ] ; 2 uses
  %.1.i.i = phi ptr [ %i.kh, %bb.ai ], [ %i.kk, %bb.aj ] ; 3 uses
  %.130.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %.130.i.val.i = load <2 x i64>, ptr %.130.i.i, align 1, !tbaa !50
  store <2 x i64> %.130.i.val.i, ptr %.1.i.i, align 1, !tbaa !50
  %i.ki = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16
  %i.kj = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 32 ; 2 uses
  %.val.i = load <2 x i64>, ptr %i.kj, align 1, !tbaa !50
  store <2 x i64> %.val.i, ptr %i.ki, align 1, !tbaa !50
  %i.kk = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 32 ; 2 uses
  %i.kl = icmp ult ptr %i.kk, %i.kf
  br i1 %i.kl, label %bb.aj, label %ZSTD_wildcopy.exit.i, !llvm.loop !2

ZSTD_wildcopy.exit.i:                             ; preds = %bb.aj, %bb.ah, %bb.ag
  %.014.i = phi ptr [ %.0295.i110, %bb.ag ], [ %i.gs, %bb.ah ], [ %i.gs, %bb.aj ] ; 7 uses
  %.0.i32 = phi ptr [ %i.js, %bb.ag ], [ %i.kf, %bb.ah ], [ %i.kf, %bb.aj ] ; 6 uses
  %i.km = icmp ult ptr %.014.i, %.12.i
  br i1 %i.km, label %iter.check, label %ZSTD_storeSeq.exit14

iter.check:                                       ; preds = %ZSTD_wildcopy.exit.i
  %.014.i188 = ptrtoaddr ptr %.014.i to i64       ; 2 uses
  %.0.i32187 = ptrtoaddr ptr %.0.i32 to i64
  %i.kn = sub i64 %i.jo, %.014.i188               ; 7 uses
  %min.iters.check = icmp ult i64 %i.kn, 8
  %i.ko = sub i64 %.014.i188, %.0.i32187
  %diff.check = icmp ugt i64 %i.ko, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check189 = icmp ult i64 %i.kn, 32
  br i1 %min.iters.check189, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.kp = and i64 %i.kn, 24
  %n.vec = and i64 %i.kn, -32                     ; 5 uses
  %i.kq = getelementptr i8, ptr %.0.i32, i64 %n.vec
  %i.kr = getelementptr i8, ptr %.014.i, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.0.i32, i64 %index ; 2 uses
  %next.gep190 = getelementptr i8, ptr %.014.i, i64 %index ; 2 uses
  %i.ks = getelementptr i8, ptr %next.gep190, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep190, align 1, !tbaa !50
  %wide.load191 = load <16 x i8>, ptr %i.ks, align 1, !tbaa !50
  %i.kt = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !50
  store <16 x i8> %wide.load191, ptr %i.kt, align 1, !tbaa !50
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ku = icmp eq i64 %index.next, %n.vec
  br i1 %i.ku, label %middle.block, label %vector.body, !llvm.loop !173

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.kn, %n.vec
  br i1 %cmp.n, label %ZSTD_storeSeq.exit14, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.kp, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !63

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec193 = and i64 %i.kn, -8                   ; 4 uses
  %i.kv = getelementptr i8, ptr %.0.i32, i64 %n.vec193
  %i.kw = getelementptr i8, ptr %.014.i, i64 %n.vec193
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index194 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next198, %vec.epilog.vector.body ] ; 3 uses
  %next.gep195 = getelementptr i8, ptr %.0.i32, i64 %index194
  %next.gep196 = getelementptr i8, ptr %.014.i, i64 %index194
  %wide.load197 = load <8 x i8>, ptr %next.gep196, align 1, !tbaa !50
  store <8 x i8> %wide.load197, ptr %next.gep195, align 1, !tbaa !50
  %index.next198 = add nuw i64 %index194, 8       ; 2 uses
  %i.kx = icmp eq i64 %index.next198, %n.vec193
  br i1 %i.kx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !174

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n199 = icmp eq i64 %i.kn, %n.vec193
  br i1 %cmp.n199, label %ZSTD_storeSeq.exit14, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.121.i.ph = phi ptr [ %.0.i32, %iter.check ], [ %i.kq, %vec.epilog.iter.check ], [ %i.kv, %vec.epilog.middle.block ] ; 2 uses
  %.11520.i.ph = phi ptr [ %.014.i, %iter.check ], [ %i.kr, %vec.epilog.iter.check ], [ %i.kw, %vec.epilog.middle.block ] ; 3 uses
  %.11520.i.ph214 = ptrtoaddr ptr %.11520.i.ph to i64 ; 2 uses
  %i.ky = sub i64 %i.jo, %.11520.i.ph214
  %xtraiter215 = and i64 %i.ky, 7                 ; 2 uses
  %lcmp.mod216.not = icmp eq i64 %xtraiter215, 0
  br i1 %lcmp.mod216.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.121.i.prol = phi ptr [ %i.lb, %.lr.ph.i.prol ], [ %.121.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.11520.i.prol = phi ptr [ %i.kz, %.lr.ph.i.prol ], [ %.11520.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.kz = getelementptr inbounds nuw i8, ptr %.11520.i.prol, i64 1 ; 2 uses
  %i.la = load i8, ptr %.11520.i.prol, align 1, !tbaa !50
end_hunk_1
