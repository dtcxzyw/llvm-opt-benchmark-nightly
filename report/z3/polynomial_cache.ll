Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/polynomial_cache?download=true
inline.NumInlined: 295
inline.NumDeleted: 178
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNK10polynomial5cache3imp14contains_chainEPNS_10polynomialES3_j:bb.a
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !26
  %.not.i = icmp ult i32 %i.b, %i.f
  br i1 %.not.i, label %_ZNK6vectorIcLb0EjE3getEjRKc.exit, label %_ZNK6vectorIcLb0EjE3getEjRKc.exit.thread

_ZNK6vectorIcLb0EjE3getEjRKc.exit:                ; preds = %_ZNK6vectorIcLb0EjE4sizeEv.exit.i
  %i.g = zext i32 %i.b to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.g
  %.0.i.sroa.speculate.load. = load i8, ptr %i.h, align 1, !tbaa !65
  %.not = icmp eq i8 %.0.i.sroa.speculate.load., 0
  br i1 %.not, label %_ZNK6vectorIcLb0EjE3getEjRKc.exit.thread, label %bb.d

_ZNK6vectorIcLb0EjE3getEjRKc.exit.thread:         ; preds = %bb.a, %_ZNK6vectorIcLb0EjE4sizeEv.exit.i, %_ZNK6vectorIcLb0EjE3getEjRKc.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.k = load i32, ptr %i.j, align 4, !tbaa !70
  %i.l = add i32 %i.k, -1
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !71, !nonnull !60, !align !61
  %i.n = tail call noundef i32 @_ZN10polynomial7manager4hashEPKNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef %1)
  %i.o = and i32 %i.n, %i.l
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !24
  %i.r = zext i32 %i.o to i64
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.r ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !21
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = and i64 %i.u, 7
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %_ZNK10chashtableIPN10polynomial15psc_chain_entryENS1_9hash_procENS1_7eq_procEE8containsERKS2_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_ZNK6vectorIcLb0EjE3getEjRKc.exit.thread
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.preheader.i
  %.0.i15 = phi ptr [ %i.af, %bb.c ], [ %i.s, %.preheader.i ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i15, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !63
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !72, !nonnull !60, !align !61
  %i.ac = tail call noundef zeroext i1 @_ZN10polynomial7manager2eqEPKNS_10polynomialES3_(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef %i.aa, ptr noundef %1)
  br i1 %i.ac, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = load i32, ptr %i.x, align 8, !tbaa !73
  %i.ae = add i32 %i.ad, 1
  store i32 %i.ae, ptr %i.x, align 8, !tbaa !73
  %i.af = load ptr, ptr %.0.i15, align 8, !tbaa !21 ; 2 uses
  %.not.i16 = icmp eq ptr %i.af, null
  br i1 %.not.i16, label %_ZNK10chashtableIPN10polynomial15psc_chain_entryENS1_9hash_procENS1_7eq_procEE8containsERKS2_.exit, label %bb.b, !llvm.loop !74

.thread:                                          ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i15, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !63
  br label %bb.d

bb.d:                                             ; preds = %.thread, %_ZNK6vectorIcLb0EjE3getEjRKc.exit
  %.145 = phi ptr [ %i.ah, %.thread ], [ %1, %_ZNK6vectorIcLb0EjE3getEjRKc.exit ] ; 2 uses
  %i.ai = tail call noundef i32 @_ZN10polynomial7manager2idEPKNS_10polynomialE(ptr noundef %2) ; 2 uses
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !64  ; 3 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_ZNK6vectorIcLb0EjE3getEjRKc.exit20.thread, label %_ZNK6vectorIcLb0EjE4sizeEv.exit.i17

_ZNK6vectorIcLb0EjE4sizeEv.exit.i17:              ; preds = %bb.d
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 -4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !26
  %.not.i18 = icmp ult i32 %i.ai, %i.am
  br i1 %.not.i18, label %_ZNK6vectorIcLb0EjE3getEjRKc.exit20, label %_ZNK6vectorIcLb0EjE3getEjRKc.exit20.thread

_ZNK6vectorIcLb0EjE3getEjRKc.exit20:              ; preds = %_ZNK6vectorIcLb0EjE4sizeEv.exit.i17
  %i.an = zext i32 %i.ai to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.an
  %.0.i19.sroa.speculate.load. = load i8, ptr %i.ao, align 1, !tbaa !65
  %.not13 = icmp eq i8 %.0.i19.sroa.speculate.load., 0
  br i1 %.not13, label %_ZNK6vectorIcLb0EjE3getEjRKc.exit20.thread, label %bb.g

_ZNK6vectorIcLb0EjE3getEjRKc.exit20.thread:       ; preds = %bb.d, %_ZNK6vectorIcLb0EjE4sizeEv.exit.i17, %_ZNK6vectorIcLb0EjE3getEjRKc.exit20
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !70
  %i.as = add i32 %i.ar, -1
  %i.at = load ptr, ptr %i.ap, align 8, !tbaa !71, !nonnull !60, !align !61
  %i.au = tail call noundef i32 @_ZN10polynomial7manager4hashEPKNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(8) %i.at, ptr noundef %2)
  %i.av = and i32 %i.au, %i.as
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !24
  %i.ay = zext i32 %i.av to i64
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %i.ay ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !21
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = and i64 %i.bb, 7
  %i.bd = icmp eq i64 %i.bc, 1
  br i1 %i.bd, label %_ZNK10chashtableIPN10polynomial15psc_chain_entryENS1_9hash_procENS1_7eq_procEE8containsERKS2_.exit, label %.preheader.i21

.preheader.i21:                                   ; preds = %_ZNK6vectorIcLb0EjE3getEjRKc.exit20.thread
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.preheader.i21
  %.0.i22 = phi ptr [ %i.bm, %bb.f ], [ %i.az, %.preheader.i21 ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.i22, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !63
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !72, !nonnull !60, !align !61
  %i.bj = tail call noundef zeroext i1 @_ZN10polynomial7manager2eqEPKNS_10polynomialES3_(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef %i.bh, ptr noundef %2)
  br i1 %i.bj, label %.thread59, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bk = load i32, ptr %i.be, align 8, !tbaa !73
  %i.bl = add i32 %i.bk, 1
  store i32 %i.bl, ptr %i.be, align 8, !tbaa !73
  %i.bm = load ptr, ptr %.0.i22, align 8, !tbaa !21 ; 2 uses
  %.not.i23 = icmp eq ptr %i.bm, null
  br i1 %.not.i23, label %_ZNK10chashtableIPN10polynomial15psc_chain_entryENS1_9hash_procENS1_7eq_procEE8containsERKS2_.exit, label %bb.e, !llvm.loop !74

.thread59:                                        ; preds = %bb.e
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i22, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !63
  br label %bb.g

bb.g:                                             ; preds = %.thread59, %_ZNK6vectorIcLb0EjE3getEjRKc.exit20
  %.1 = phi ptr [ %i.bo, %.thread59 ], [ %2, %_ZNK6vectorIcLb0EjE3getEjRKc.exit20 ] ; 2 uses
  %i.bp = tail call noundef i32 @_ZN10polynomial7manager2idEPKNS_10polynomialE(ptr noundef %.145) ; 2 uses
  %i.bq = tail call noundef i32 @_ZN10polynomial7manager2idEPKNS_10polynomialE(ptr noundef %.1) ; 2 uses
  %i.br = add i32 %i.bp, 2127912214
  %i.bs = shl i32 %i.bp, 12
  %i.bt = add i32 %i.br, %i.bs                    ; 2 uses
  %i.bu = lshr i32 %i.bt, 19
  %i.bv = xor i32 %i.bt, %i.bu
  %i.bw = xor i32 %i.bv, -949894596               ; 2 uses
  %i.bx = add i32 %i.bw, 374761393
  %i.by = shl i32 %i.bw, 5
  %i.bz = add i32 %i.bx, %i.by                    ; 2 uses
  %i.ca = add i32 %i.bz, -744332180
  %i.cb = shl i32 %i.bz, 9
  %i.cc = xor i32 %i.ca, %i.cb                    ; 2 uses
  %i.cd = add i32 %i.cc, -42973499
  %i.ce = shl i32 %i.cc, 3
  %i.cf = add i32 %i.cd, %i.ce                    ; 2 uses
  %i.cg = lshr i32 %i.cf, 16
  %i.ch = xor i32 %i.cf, %i.cg
  %i.ci = xor i32 %i.ch, -1252372727              ; 3 uses
  %i.cj = add i32 %i.bq, 2127912214
  %i.ck = shl i32 %i.bq, 12
  %i.cl = add i32 %i.cj, %i.ck                    ; 2 uses
  %i.cm = lshr i32 %i.cl, 19
  %i.cn = xor i32 %i.cl, %i.cm
  %i.co = xor i32 %i.cn, -949894596               ; 2 uses
  %i.cp = add i32 %i.co, 374761393
  %i.cq = shl i32 %i.co, 5
  %i.cr = add i32 %i.cp, %i.cq                    ; 2 uses
  %i.cs = add i32 %i.cr, -744332180
  %i.ct = shl i32 %i.cr, 9
  %i.cu = xor i32 %i.cs, %i.ct                    ; 2 uses
  %i.cv = add i32 %i.cu, -42973499
  %i.cw = shl i32 %i.cu, 3
  %i.cx = add i32 %i.cv, %i.cw                    ; 2 uses
  %i.cy = lshr i32 %i.cx, 16
  %i.cz = xor i32 %i.cx, %i.cy
  %i.da = xor i32 %i.cz, -1252372727
  %i.db = add i32 %i.da, -1640531527
  %i.dc = shl i32 %i.ci, 6
  %i.dd = add i32 %i.db, %i.dc
  %i.de = lshr i32 %i.ci, 2
  %i.df = add i32 %i.dd, %i.de
  %i.dg = xor i32 %i.df, %i.ci                    ; 2 uses
  %i.dh = add i32 %i.dg, 2127912214
  %i.di = shl i32 %i.dg, 12
  %i.dj = add i32 %i.dh, %i.di                    ; 2 uses
  %i.dk = lshr i32 %i.dj, 19
  %i.dl = xor i32 %i.dj, %i.dk
  %i.dm = xor i32 %i.dl, -949894596               ; 2 uses
  %i.dn = add i32 %i.dm, 374761393
  %i.do = shl i32 %i.dm, 5
  %i.dp = add i32 %i.dn, %i.do                    ; 2 uses
  %i.dq = add i32 %i.dp, -744332180
  %i.dr = shl i32 %i.dp, 9
  %i.ds = xor i32 %i.dq, %i.dr                    ; 2 uses
  %i.dt = add i32 %i.ds, -42973499
  %i.du = shl i32 %i.ds, 3
  %i.dv = add i32 %i.dt, %i.du                    ; 2 uses
  %i.dw = lshr i32 %i.dv, 16
  %i.dx = xor i32 %i.dv, %i.dw
  %i.dy = xor i32 %i.dx, -1252372727
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !75
  %i.ec = add i32 %i.eb, -1
  %i.ed = and i32 %i.dy, %i.ec
  %i.ee = load ptr, ptr %i.dz, align 8, !tbaa !35
  %i.ef = zext i32 %i.ed to i64
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %i.ee, i64 %i.ef ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !32
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = and i64 %i.ei, 7
  %i.ek = icmp eq i64 %i.ej, 1
  br i1 %i.ek, label %_ZNK10chashtableIPN10polynomial15psc_chain_entryENS1_9hash_procENS1_7eq_procEE8containsERKS2_.exit, label %.preheader.i27

.preheader.i27:                                   ; preds = %bb.g
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %.promoted.i = load i32, ptr %i.el, align 8
  br label %bb.h

bb.h:                                             ; preds = %_ZNK10chashtableIPN10polynomial15psc_chain_entryENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.thread.i, %.preheader.i27
  %4 = phi i32 [ %i.ew, %_ZNK10chashtableIPN10polynomial15psc_chain_entryENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.thread.i ], [ %.promoted.i, %.preheader.i27 ]
  %.0.i28 = phi ptr [ %i.ex, %_ZNK10chashtableIPN10polynomial15psc_chain_entryENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.thread.i ], [ %i.eg, %.preheader.i27 ] ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.0.i28, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !76 ; 3 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !77
  %i.ep = icmp eq ptr %i.eo, %.145
  br i1 %i.ep, label %bb.i, label %_ZNK10chashtableIPN10polynomial15psc_chain_entryENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.thread.i

bb.i:                                             ; preds = %bb.h
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !79
  %i.es = icmp eq ptr %i.er, %.1
  br i1 %i.es, label %_ZNK10chashtableIPN10polynomial15psc_chain_entryENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i, label %_ZNK10chashtableIPN10polynomial15psc_chain_entryENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.thread.i

_ZNK10chashtableIPN10polynomial15psc_chain_entryENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i: ; preds = %bb.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !80
  %i.ev = icmp eq i32 %i.eu, %3
  br i1 %i.ev, label %_ZNK10chashtableIPN10polynomial15psc_chain_entryENS1_9hash_procENS1_7eq_procEE8containsERKS2_.exit, label %_ZNK10chashtableIPN10polynomial15psc_chain_entryENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.thread.i

_ZNK10chashtableIPN10polynomial15psc_chain_entryENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.thread.i: ; preds = %_ZNK10chashtableIPN10polynomial15psc_chain_entryENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i, %bb.i, %bb.h
  %i.ew = add i32 %4, 1                           ; 2 uses
  store i32 %i.ew, ptr %i.el, align 8, !tbaa !81
  %i.ex = load ptr, ptr %.0.i28, align 8, !tbaa !32 ; 2 uses
  %.not.i29 = icmp eq ptr %i.ex, null
  br i1 %.not.i29, label %_ZNK10chashtableIPN10polynomial15psc_chain_entryENS1_9hash_procENS1_7eq_procEE8containsERKS2_.exit, label %bb.h, !llvm.loop !82

_ZNK10chashtableIPN10polynomial15psc_chain_entryENS1_9hash_procENS1_7eq_procEE8containsERKS2_.exit: ; preds = %bb.c, %bb.f, %_ZNK10chashtableIPN10polynomial15psc_chain_entryENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.thread.i, %_ZNK10chashtableIPN10polynomial15psc_chain_entryENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i, %bb.g, %_ZNK6vectorIcLb0EjE3getEjRKc.exit20.thread, %_ZNK6vectorIcLb0EjE3getEjRKc.exit.thread
  %.3 = phi i1 [ false, %bb.f ], [ false, %_ZNK10chashtableIPN10polynomial15psc_chain_entryENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.thread.i ], [ false, %_ZNK6vectorIcLb0EjE3getEjRKc.exit.thread ], [ false, %_ZNK6vectorIcLb0EjE3getEjRKc.exit20.thread ], [ false, %bb.g ], [ true, %_ZNK10chashtableIPN10polynomial15psc_chain_entryENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.i ], [ false, %bb.c ]
  ret i1 %.3
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10polynomial5cache9psc_chainEPKNS_10polynomialES3_jR10ref_vectorIS1_NS_7managerEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  tail call void @_ZN10polynomial5cache3imp9psc_chainEPNS_10polynomialES3_jR10ref_vectorIS2_NS_7managerEE(ptr noundef nonnull align 8 dereferenceable(248) %i.a, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN10polynomial5cache3imp9psc_chainEPNS_10polynomialES3_jR10ref_vectorIS2_NS_7managerEE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = tail call noundef ptr @_ZN10polynomial5cache3imp9mk_uniqueEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %1) ; 3 uses
  %i.c = tail call noundef ptr @_ZN10polynomial5cache3imp9mk_uniqueEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %2) ; 3 uses
  %i.d = tail call noundef i32 @_ZN10polynomial7manager2idEPKNS_10polynomialE(ptr noundef %i.b) ; 2 uses
  %i.e = tail call noundef i32 @_ZN10polynomial7manager2idEPKNS_10polynomialE(ptr noundef %i.c) ; 2 uses
  %i.f = add i32 %i.d, 2127912214
  %i.g = shl i32 %i.d, 12
  %i.h = add i32 %i.f, %i.g                       ; 2 uses
  %i.i = lshr i32 %i.h, 19
  %i.j = xor i32 %i.h, %i.i
  %i.k = xor i32 %i.j, -949894596                 ; 2 uses
  %i.l = add i32 %i.k, 374761393
  %i.m = shl i32 %i.k, 5
  %i.n = add i32 %i.l, %i.m                       ; 2 uses
  %i.o = add i32 %i.n, -744332180
  %i.p = shl i32 %i.n, 9
  %i.q = xor i32 %i.o, %i.p                       ; 2 uses
  %i.r = add i32 %i.q, -42973499
  %i.s = shl i32 %i.q, 3
  %i.t = add i32 %i.r, %i.s                       ; 2 uses
  %i.u = lshr i32 %i.t, 16
  %i.v = xor i32 %i.t, %i.u
  %i.w = xor i32 %i.v, -1252372727                ; 3 uses
  %i.x = add i32 %i.e, 2127912214
  %i.y = shl i32 %i.e, 12
  %i.z = add i32 %i.x, %i.y                       ; 2 uses
  %i.aa = lshr i32 %i.z, 19
  %i.ab = xor i32 %i.z, %i.aa
  %i.ac = xor i32 %i.ab, -949894596               ; 2 uses
  %i.ad = add i32 %i.ac, 374761393
  %i.ae = shl i32 %i.ac, 5
  %i.af = add i32 %i.ad, %i.ae                    ; 2 uses
  %i.ag = add i32 %i.af, -744332180
  %i.ah = shl i32 %i.af, 9
  %i.ai = xor i32 %i.ag, %i.ah                    ; 2 uses
  %i.aj = add i32 %i.ai, -42973499
  %i.ak = shl i32 %i.ai, 3
  %i.al = add i32 %i.aj, %i.ak                    ; 2 uses
  %i.am = lshr i32 %i.al, 16
  %i.an = xor i32 %i.al, %i.am
  %i.ao = xor i32 %i.an, -1252372727
  %i.ap = add i32 %i.ao, -1640531527
  %i.aq = shl i32 %i.w, 6
  %i.ar = add i32 %i.ap, %i.aq
  %i.as = lshr i32 %i.w, 2
  %i.at = add i32 %i.ar, %i.as
  %i.au = xor i32 %i.at, %i.w                     ; 2 uses
  %i.av = add i32 %i.au, 2127912214
  %i.aw = shl i32 %i.au, 12
  %i.ax = add i32 %i.av, %i.aw                    ; 2 uses
  %i.ay = lshr i32 %i.ax, 19
  %i.az = xor i32 %i.ax, %i.ay
  %i.ba = xor i32 %i.az, -949894596               ; 2 uses
  %i.bb = add i32 %i.ba, 374761393
  %i.bc = shl i32 %i.ba, 5
  %i.bd = add i32 %i.bb, %i.bc                    ; 2 uses
  %i.be = add i32 %i.bd, -744332180
  %i.bf = shl i32 %i.bd, 9
  %i.bg = xor i32 %i.be, %i.bf                    ; 2 uses
  %i.bh = add i32 %i.bg, -42973499
  %i.bi = shl i32 %i.bg, 3
  %i.bj = add i32 %i.bh, %i.bi                    ; 2 uses
  %i.bk = lshr i32 %i.bj, 16
  %i.bl = xor i32 %i.bj, %i.bk
  %i.bm = xor i32 %i.bl, -1252372727
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !83, !nonnull !60, !align !61
  %i.bp = tail call noundef ptr @_ZN22small_object_allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(520) %i.bo, i64 noundef 40) ; 7 uses
  store ptr %i.b, ptr %i.bp, align 8, !tbaa !77
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %i.c, ptr %i.bq, align 8, !tbaa !79
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store i32 %3, ptr %i.br, align 8, !tbaa !80
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 20
  store i32 %i.bm, ptr %i.bs, align 4, !tbaa !84
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  store i32 0, ptr %i.bt, align 8, !tbaa !85
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  store ptr null, ptr %i.bu, align 8, !tbaa !86
  store ptr %i.bp, ptr %i.a, align 8, !tbaa !76
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN10chashtableIPN10polynomial15psc_chain_entryENS1_9hash_procENS1_7eq_procEE19insert_if_not_thereERKS2_(ptr noundef nonnull align 8 dereferenceable(64) %i.bv, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !76 ; 3 uses
  %i.by = load ptr, ptr %i.a, align 8, !tbaa !76  ; 2 uses
  %.not = icmp eq ptr %i.by, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 9 uses
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ca = load ptr, ptr %i.bn, align 8, !tbaa !83, !nonnull !60, !align !61
  call void @_ZN22small_object_allocator10deallocateEmPv(ptr noundef nonnull align 8 dereferenceable(520) %i.ca, i64 noundef 40, ptr noundef %i.by)
  %i.cb = load ptr, ptr %i.bz, align 8, !tbaa !67 ; 5 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE5resetEv.exit, label %_ZNK6vectorIPN10polynomial10polynomialELb0EjE4sizeEv.exit.i

_ZNK6vectorIPN10polynomial10polynomialELb0EjE4sizeEv.exit.i: ; preds = %bb.b
  %i.cd = getelementptr inbounds i8, ptr %i.cb, i64 -4
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !26 ; 2 uses
  %i.cf = zext i32 %i.ce to i64
  %i.cg = shl nuw nsw i64 %i.cf, 3
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cg
  %.not.i = icmp eq i32 %i.ce, 0
  br i1 %.not.i, label %_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE13dec_range_refEPKPS1_S8_.exit.thread5.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK6vectorIPN10polynomial10polynomialELb0EjE4sizeEv.exit.i, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.ck, %.lr.ph.i.i ], [ %i.cb, %_ZNK6vectorIPN10polynomial10polynomialELb0EjE4sizeEv.exit.i ] ; 2 uses
  %i.ci = load ptr, ptr %.06.i.i, align 8, !tbaa !63
  %i.cj = load ptr, ptr %4, align 8, !tbaa !66, !nonnull !60, !align !61
  call void @_ZN10polynomial7manager7dec_refEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(8) %i.cj, ptr noundef %i.ci)
  %i.ck = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.cl = icmp ult ptr %i.ck, %i.ch
  br i1 %i.cl, label %.lr.ph.i.i, label %_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE13dec_range_refEPKPS1_S8_.exit.i, !llvm.loop !87

_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE13dec_range_refEPKPS1_S8_.exit.i: ; preds = %.lr.ph.i.i
  %.pre.i = load ptr, ptr %i.bz, align 8, !tbaa !67 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i, label %_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE5resetEv.exit, label %_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE13dec_range_refEPKPS1_S8_.exit.thread5.i

_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE13dec_range_refEPKPS1_S8_.exit.thread5.i: ; preds = %_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE13dec_range_refEPKPS1_S8_.exit.i, %_ZNK6vectorIPN10polynomial10polynomialELb0EjE4sizeEv.exit.i
  %i.cm = phi ptr [ %.pre.i, %_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE13dec_range_refEPKPS1_S8_.exit.i ], [ %i.cb, %_ZNK6vectorIPN10polynomial10polynomialELb0EjE4sizeEv.exit.i ]
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 -4
  store i32 0, ptr %i.cn, align 4, !tbaa !26
  br label %_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE5resetEv.exit

_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE5resetEv.exit: ; preds = %bb.b, %_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE13dec_range_refEPKPS1_S8_.exit.i, %_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE13dec_range_refEPKPS1_S8_.exit.thread5.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.bx, i64 24 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !85
  %.not41 = icmp eq i32 %i.cp, 0
  br i1 %.not41, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE5resetEv.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE9push_backEPS1_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE9push_backEPS1_.exit ] ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !86
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %indvars.iv
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !63 ; 2 uses
  %i.cu = load ptr, ptr %4, align 8, !tbaa !66, !nonnull !60, !align !61
  call void @_ZN10polynomial7manager7inc_refEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(8) %i.cu, ptr noundef %i.ct)
  %i.cv = load ptr, ptr %i.bz, align 8, !tbaa !67 ; 4 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cx = getelementptr inbounds i8, ptr %i.cv, i64 -4
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !26 ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %i.cv, i64 -8
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !26
  %i.db = icmp eq i32 %i.cy, %i.da
  br i1 %i.db, label %bb.e, label %_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE9push_backEPS1_.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @_ZN6vectorIPN10polynomial10polynomialELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bz)
  %.pre.i.i = load ptr, ptr %i.bz, align 8, !tbaa !67 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !26
  br label %_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE9push_backEPS1_.exit

_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEE9push_backEPS1_.exit: ; preds = %bb.d, %bb.e
  %i.dc = phi i32 [ %.pre2.i.i, %bb.e ], [ %i.cy, %bb.d ] ; 2 uses
  %i.dd = phi ptr [ %.pre.i.i, %bb.e ], [ %i.cv, %bb.d ] ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 -4
  %i.df = zext i32 %i.dc to i64
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.df
  store ptr %i.ct, ptr %i.dg, align 8, !tbaa !63
  %i.dh = add i32 %i.dc, 1
  store i32 %i.dh, ptr %i.de, align 4, !tbaa !26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.di = load i32, ptr %i.co, align 8, !tbaa !85
  %i.dj = zext i32 %i.di to i64
  %i.dk = icmp samesign ult i64 %indvars.iv.next, %i.dj
  br i1 %i.dk, label %bb.c, label %.loopexit, !llvm.loop !88

bb.f:                                             ; preds = %bb.a
  %i.dl = load ptr, ptr %0, align 8, !tbaa !47, !nonnull !60, !align !61
  call void @_ZN10polynomial7manager9psc_chainEPKNS_10polynomialES3_jR10ref_vectorIS1_S0_E(ptr noundef nonnull align 8 dereferenceable(8) %i.dl, ptr noundef %i.b, ptr noundef %i.c, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
end_hunk_0
