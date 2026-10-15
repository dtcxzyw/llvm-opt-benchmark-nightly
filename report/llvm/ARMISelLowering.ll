Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ARMISelLowering?download=true
inline.NumInlined: 20230
inline.NumDeleted: 4242
loop-unroll.NumCompletelyUnrolled: 128
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 150
begin_hunk_0_@_ZN4llvm17ARMTargetLoweringC2ERKNS_13TargetMachineERKNS_12ARMSubtargetE:bb.a
  %27 = alloca %"struct.std::pair.852", align 8   ; 4 uses
  %28 = alloca %"struct.std::pair.852", align 8   ; 4 uses
  %29 = alloca %"struct.std::pair.852", align 8   ; 4 uses
  %30 = alloca %"struct.std::pair.852", align 8   ; 4 uses
  tail call void @_ZN4llvm14TargetLoweringC2ERKNS_13TargetMachineERKNS_19TargetSubtargetInfoE(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef nonnull align 8 dereferenceable(1728) %1, ptr noundef nonnull align 8 dereferenceable(344) %2) #38
  store ptr getelementptr inbounds nuw inrange(-16, 2688) (i8, ptr @_ZTVN4llvm17ARMTargetLoweringE, i64 16), ptr %0, align 8, !tbaa !42
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 518440 ; 11 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !98
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 518448
  %i.c = load ptr, ptr %2, align 8, !tbaa !42
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(519368) %2) #38
  store ptr %i.f, ptr %i.b, align 8, !tbaa !99
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 518456
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !98   ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !42
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 216
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef ptr %i.k(ptr noundef nonnull align 8 dereferenceable(519368) %i.h) #38
  store ptr %i.l, ptr %i.g, align 8, !tbaa !100
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 518465 ; 2 uses
  store i8 1, ptr %i.m, align 1, !tbaa !101
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 1, ptr %i.n, align 4, !tbaa !1138
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 1, ptr %i.o, align 8, !tbaa !1139
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 2, ptr %i.p, align 4, !tbaa !1140
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !98   ; 12 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 461
  %i.s = load i8, ptr %i.r, align 1, !tbaa !194, !range !50, !noundef !51
  %i.t = trunc nuw i8 %i.s to i1
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 410 ; 4 uses
  %i.v = load i8, ptr %i.u, align 2, !range !50
  %i.w = trunc nuw i8 %i.v to i1
  %not. = xor i1 %i.t, true                       ; 4 uses
  %i.x = select i1 %not., i1 true, i1 %i.w
  %spec.select1096 = select i1 %i.x, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25ARMMCRegisterClassStorageE, i64 256), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25ARMMCRegisterClassStorageE, i64 1344)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %spec.select1096, ptr %i.y, align 8, !tbaa !60
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 477
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !195, !range !50, !noundef !51
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ac = load i8, ptr %i.u, align 2, !range !50
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = select i1 %not., i1 true, i1 %i.ad
  br i1 %i.ae, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 384
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !196, !range !50, !noundef !51
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25ARMMCRegisterClassStorageE, i64 128), ptr %i.ai, align 8, !tbaa !60
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25ARMMCRegisterClassStorageE, i64 3264), ptr %i.aj, align 8, !tbaa !60
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 443
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !197, !range !50, !noundef !51
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %.loopexit967.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 13702
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(537) %i.an, i8 2, i64 537, i1 false), !tbaa !56
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 13950
  store i8 0, ptr %i.ao, align 2, !tbaa !56
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 14018
  store i8 0, ptr %i.ap, align 2, !tbaa !56
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 14019
  store i8 0, ptr %i.aq, align 1, !tbaa !56
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 13755
  store i8 0, ptr %i.ar, align 1, !tbaa !56
  br label %.loopexit967

.loopexit967.loopexit:                            ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 10185
  store i8 4, ptr %i.as, align 1, !tbaa !56
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 10186
  store i8 4, ptr %i.at, align 2, !tbaa !56
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 13806
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 13811
  store i8 0, ptr %i.av, align 1, !tbaa !56
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 13812
  store i8 0, ptr %i.aw, align 4, !tbaa !56
  store i32 0, ptr %i.au, align 2
  br label %.loopexit967

.loopexit967:                                     ; preds = %.loopexit967.loopexit, %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %i.q, i64 378
  %i.ay = load i8, ptr %i.ax, align 2, !tbaa !198, !range !50, !noundef !51
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %.preheader966, label %bb.f

.preheader966:                                    ; preds = %.loopexit967
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 14343
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 14348
  store i8 0, ptr %i.bb, align 4, !tbaa !56
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 14349
  store i8 0, ptr %i.bc, align 1, !tbaa !56
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 13852
  store i8 0, ptr %i.bd, align 4, !tbaa !56
  store i32 0, ptr %i.ba, align 1
  br label %bb.g

bb.f:                                             ; preds = %.loopexit967
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 14239
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(537) %i.be, i8 2, i64 537, i1 false), !tbaa !56
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 14487
  store i8 0, ptr %i.bf, align 1, !tbaa !56
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 14555
  store i8 0, ptr %i.bg, align 1, !tbaa !56
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 14556
  store i8 0, ptr %i.bh, align 4, !tbaa !56
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 14292
  store i8 0, ptr %i.bi, align 4, !tbaa !56
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.preheader966, %bb.c, %bb.b, %bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %i.q, i64 389
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !199, !range !50, !noundef !51
  %i.bl = trunc nuw i8 %i.bk to i1                ; 2 uses
  br i1 %i.bl, label %.preheader965, label %bb.h

.preheader965:                                    ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 13269
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 13274
  store i8 0, ptr %i.bn, align 2, !tbaa !56
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 13275
  store i8 0, ptr %i.bo, align 1, !tbaa !56
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i32 0, ptr %i.bm, align 1
  store ptr @_ZN4llvm25ARMMCRegisterClassStorageE, ptr %i.bp, align 8, !tbaa !60
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 9654
  store i8 4, ptr %i.bq, align 2, !tbaa !56
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 13413
  store i8 4, ptr %i.br, align 1, !tbaa !56
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 13460
  store i8 0, ptr %i.bs, align 4, !tbaa !56
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 13461
  store i8 0, ptr %i.bt, align 1, !tbaa !56
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 13297
  store i8 0, ptr %i.bu, align 1, !tbaa !56
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 13296
  store i8 0, ptr %i.bv, align 8, !tbaa !56
  br label %bb.h

bb.h:                                             ; preds = %.preheader965, %bb.g
  %i.bw = getelementptr inbounds nuw i8, ptr %i.q, i64 364
  %i.bx = load i8, ptr %i.bw, align 4, !tbaa !200, !range !50, !noundef !51
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr @_ZN4llvm25ARMMCRegisterClassStorageE, ptr %i.bz, align 8, !tbaa !60
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 12628
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(537) %i.ca, i8 2, i64 537, i1 false), !tbaa !56
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 12876 ; 2 uses
  store i8 0, ptr %i.cb, align 4, !tbaa !56
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 12944
  store i8 0, ptr %i.cc, align 8, !tbaa !56
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 12945
  store i8 0, ptr %i.cd, align 1, !tbaa !56
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 12681
  store i8 0, ptr %i.ce, align 1, !tbaa !56
  br i1 %i.bl, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 4, ptr %i.cb, align 4, !tbaa !56
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 13956
  store i8 2, ptr %i.cf, align 4, !tbaa !56
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 14493
  store i8 2, ptr %i.cg, align 1, !tbaa !56
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k
  %.sink1098 = phi i64 [ 13957, %bb.k ], [ 12872, %bb.j ], [ 12872, %bb.i ]
  %.sink1097 = phi i64 [ 14494, %bb.k ], [ 12778, %bb.j ], [ 12778, %bb.i ]
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 %.sink1098
  store i8 4, ptr %i.ch, align 1, !tbaa !56
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 %.sink1097
  store i8 4, ptr %i.ci, align 2, !tbaa !56
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 426736
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 147952
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 6184 ; 13 uses
  br label %.preheader964

.preheader964:                                    ; preds = %bb.l, %.preheader964
  %.sroa.0868.0972 = phi i64 [ 19, %bb.l ], [ %i.fd, %.preheader964 ] ; 4 uses
  %i.cm = getelementptr inbounds nuw [528 x i8], ptr %i.ck, i64 %.sroa.0868.0972 ; 18 uses
  %i.cn = getelementptr inbounds nuw [264 x i8], ptr %i.cj, i64 %.sroa.0868.0972 ; 9 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 19
  store <16 x i8> splat (i8 2), ptr %i.co, align 1, !tbaa !56
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 38 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 54 ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.cp, align 2, !tbaa !62
  %wide.load1116 = load <8 x i16>, ptr %i.cq, align 2, !tbaa !62
  %i.cr = and <8 x i16> %wide.load, splat (i16 15)
  %i.cs = and <8 x i16> %wide.load1116, splat (i16 15)
  %i.ct = or disjoint <8 x i16> %i.cr, splat (i16 8736)
  %i.cu = or disjoint <8 x i16> %i.cs, splat (i16 8736)
  store <8 x i16> %i.ct, ptr %i.cp, align 2, !tbaa !62
  store <8 x i16> %i.cu, ptr %i.cq, align 2, !tbaa !62
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cn, i64 35
  store <16 x i8> splat (i8 2), ptr %i.cv, align 1, !tbaa !56
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cm, i64 70 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cm, i64 86 ; 2 uses
  %wide.load.1 = load <8 x i16>, ptr %i.cw, align 2, !tbaa !62
  %wide.load1116.1 = load <8 x i16>, ptr %i.cx, align 2, !tbaa !62
  %i.cy = and <8 x i16> %wide.load.1, splat (i16 15)
  %i.cz = and <8 x i16> %wide.load1116.1, splat (i16 15)
  %i.da = or disjoint <8 x i16> %i.cy, splat (i16 8736)
  %i.db = or disjoint <8 x i16> %i.cz, splat (i16 8736)
  store <8 x i16> %i.da, ptr %i.cw, align 2, !tbaa !62
  store <8 x i16> %i.db, ptr %i.cx, align 2, !tbaa !62
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cn, i64 51
  store <16 x i8> splat (i8 2), ptr %i.dc, align 1, !tbaa !56
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cm, i64 102 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cm, i64 118 ; 2 uses
  %wide.load.2 = load <8 x i16>, ptr %i.dd, align 2, !tbaa !62
  %wide.load1116.2 = load <8 x i16>, ptr %i.de, align 2, !tbaa !62
  %i.df = and <8 x i16> %wide.load.2, splat (i16 15)
  %i.dg = and <8 x i16> %wide.load1116.2, splat (i16 15)
  %i.dh = or disjoint <8 x i16> %i.df, splat (i16 8736)
  %i.di = or disjoint <8 x i16> %i.dg, splat (i16 8736)
  store <8 x i16> %i.dh, ptr %i.dd, align 2, !tbaa !62
  store <8 x i16> %i.di, ptr %i.de, align 2, !tbaa !62
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cn, i64 67
  store <16 x i8> splat (i8 2), ptr %i.dj, align 1, !tbaa !56
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cm, i64 134 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cm, i64 150 ; 2 uses
  %wide.load.3 = load <8 x i16>, ptr %i.dk, align 2, !tbaa !62
  %wide.load1116.3 = load <8 x i16>, ptr %i.dl, align 2, !tbaa !62
  %i.dm = and <8 x i16> %wide.load.3, splat (i16 15)
  %i.dn = and <8 x i16> %wide.load1116.3, splat (i16 15)
  %i.do = or disjoint <8 x i16> %i.dm, splat (i16 8736)
  %i.dp = or disjoint <8 x i16> %i.dn, splat (i16 8736)
  store <8 x i16> %i.do, ptr %i.dk, align 2, !tbaa !62
  store <8 x i16> %i.dp, ptr %i.dl, align 2, !tbaa !62
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cn, i64 83
  store <16 x i8> splat (i8 2), ptr %i.dq, align 1, !tbaa !56
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cm, i64 166 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cm, i64 182 ; 2 uses
  %wide.load.4 = load <8 x i16>, ptr %i.dr, align 2, !tbaa !62
  %wide.load1116.4 = load <8 x i16>, ptr %i.ds, align 2, !tbaa !62
  %i.dt = and <8 x i16> %wide.load.4, splat (i16 15)
  %i.du = and <8 x i16> %wide.load1116.4, splat (i16 15)
  %i.dv = or disjoint <8 x i16> %i.dt, splat (i16 8736)
  %i.dw = or disjoint <8 x i16> %i.du, splat (i16 8736)
  store <8 x i16> %i.dv, ptr %i.dr, align 2, !tbaa !62
  store <8 x i16> %i.dw, ptr %i.ds, align 2, !tbaa !62
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cn, i64 99
  store <16 x i8> splat (i8 2), ptr %i.dx, align 1, !tbaa !56
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cm, i64 198 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cm, i64 214 ; 2 uses
  %wide.load.5 = load <8 x i16>, ptr %i.dy, align 2, !tbaa !62
  %wide.load1116.5 = load <8 x i16>, ptr %i.dz, align 2, !tbaa !62
  %i.ea = and <8 x i16> %wide.load.5, splat (i16 15)
  %i.eb = and <8 x i16> %wide.load1116.5, splat (i16 15)
  %i.ec = or disjoint <8 x i16> %i.ea, splat (i16 8736)
  %i.ed = or disjoint <8 x i16> %i.eb, splat (i16 8736)
  store <8 x i16> %i.ec, ptr %i.dy, align 2, !tbaa !62
  store <8 x i16> %i.ed, ptr %i.dz, align 2, !tbaa !62
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cn, i64 115
  store <16 x i8> splat (i8 2), ptr %i.ee, align 1, !tbaa !56
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cm, i64 230 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cm, i64 246 ; 2 uses
  %wide.load.6 = load <8 x i16>, ptr %i.ef, align 2, !tbaa !62
  %wide.load1116.6 = load <8 x i16>, ptr %i.eg, align 2, !tbaa !62
  %i.eh = and <8 x i16> %wide.load.6, splat (i16 15)
  %i.ei = and <8 x i16> %wide.load1116.6, splat (i16 15)
  %i.ej = or disjoint <8 x i16> %i.eh, splat (i16 8736)
  %i.ek = or disjoint <8 x i16> %i.ei, splat (i16 8736)
  store <8 x i16> %i.ej, ptr %i.ef, align 2, !tbaa !62
  store <8 x i16> %i.ek, ptr %i.eg, align 2, !tbaa !62
  %i.el = getelementptr inbounds nuw i8, ptr %i.cn, i64 131
  store <16 x i8> splat (i8 2), ptr %i.el, align 1, !tbaa !56
  %i.em = getelementptr inbounds nuw i8, ptr %i.cm, i64 262 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.cm, i64 278 ; 2 uses
  %wide.load.7 = load <8 x i16>, ptr %i.em, align 2, !tbaa !62
  %wide.load1116.7 = load <8 x i16>, ptr %i.en, align 2, !tbaa !62
  %i.eo = and <8 x i16> %wide.load.7, splat (i16 15)
  %i.ep = and <8 x i16> %wide.load1116.7, splat (i16 15)
  %i.eq = or disjoint <8 x i16> %i.eo, splat (i16 8736)
  %i.er = or disjoint <8 x i16> %i.ep, splat (i16 8736)
  store <8 x i16> %i.eq, ptr %i.em, align 2, !tbaa !62
  store <8 x i16> %i.er, ptr %i.en, align 2, !tbaa !62
  %i.es = getelementptr inbounds nuw i8, ptr %i.cn, i64 147
  store <16 x i8> splat (i8 2), ptr %i.es, align 1, !tbaa !56
  %i.et = getelementptr inbounds nuw i8, ptr %i.cm, i64 294 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.cm, i64 310 ; 2 uses
  %wide.load.8 = load <8 x i16>, ptr %i.et, align 2, !tbaa !62
  %wide.load1116.8 = load <8 x i16>, ptr %i.eu, align 2, !tbaa !62
  %i.ev = and <8 x i16> %wide.load.8, splat (i16 15)
  %i.ew = and <8 x i16> %wide.load1116.8, splat (i16 15)
  %i.ex = or disjoint <8 x i16> %i.ev, splat (i16 8736)
  %i.ey = or disjoint <8 x i16> %i.ew, splat (i16 8736)
  store <8 x i16> %i.ex, ptr %i.et, align 2, !tbaa !62
  store <8 x i16> %i.ey, ptr %i.eu, align 2, !tbaa !62
  %i.ez = getelementptr inbounds nuw [537 x i8], ptr %i.cl, i64 %.sroa.0868.0972 ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 66
  store i8 2, ptr %i.fa, align 1, !tbaa !56
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 67
  store i8 2, ptr %i.fb, align 1, !tbaa !56
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 210
  store i8 2, ptr %i.fc, align 1, !tbaa !56
  %i.fd = add nuw nsw i64 %.sroa.0868.0972, 1     ; 2 uses
  %.not940 = icmp eq i64 %i.fd, 163
  br i1 %.not940, label %bb.m, label %.preheader964

bb.m:                                             ; preds = %.preheader964
  %i.fe = load i8, ptr %i.u, align 2, !range !50
  %i.ff = trunc nuw i8 %i.fe to i1
  %i.fg = select i1 %not., i1 true, i1 %i.ff
  %i.fh = getelementptr inbounds nuw i8, ptr %i.q, i64 424
  %i.fi = load i8, ptr %i.fh, align 8, !tbaa !201, !range !50
  %i.fj = trunc nuw i8 %i.fi to i1                ; 2 uses
  br i1 %i.fg, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  br i1 %i.fj, label %.thread, label %.thread1072

.thread1072:                                      ; preds = %bb.n
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 10134
  store i8 4, ptr %i.fk, align 2, !tbaa !56
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  br i1 %i.fj, label %.thread, label %bb.p

bb.p:                                             ; preds = %.thread1072, %bb.o
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 10135
  store i8 4, ptr %i.fl, align 1, !tbaa !56
  br label %.thread

.thread:                                          ; preds = %bb.n, %bb.p, %bb.o
  %i.fm = load i8, ptr %i.u, align 2, !range !50
  %i.fn = trunc nuw i8 %i.fm to i1
  %i.fo = select i1 %not., i1 true, i1 %i.fn
  br i1 %i.fo, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.thread
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 10139
  store i8 4, ptr %i.fp, align 1, !tbaa !56
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.thread
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 13715
  store i8 4, ptr %i.fq, align 1, !tbaa !56
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 14252
  store i8 4, ptr %i.fr, align 4, !tbaa !56
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 10509
  store i8 4, ptr %i.fs, align 1, !tbaa !56
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 10510
  store i8 4, ptr %i.ft, align 2, !tbaa !56
  %i.fu = getelementptr inbounds nuw i8, ptr %i.q, i64 395
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !202, !range !50, !noundef !51
  %i.fw = trunc nuw i8 %i.fv to i1
  br i1 %i.fw, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.fx = getelementptr inbounds nuw i8, ptr %i.q, i64 394
  %i.fy = load i8, ptr %i.fx, align 2, !tbaa !203, !range !50, !noundef !51
  %i.fz = trunc nuw i8 %i.fy to i1
  tail call void @_ZN4llvm17ARMTargetLowering17addMVEVectorTypesEb(ptr noundef nonnull align 8 dereferenceable(518466) %0, i1 noundef zeroext %i.fz)
  %.pre1049 = load ptr, ptr %i.a, align 8, !tbaa !98
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ga = phi ptr [ %.pre1049, %bb.s ], [ %i.q, %bb.r ] ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 392
  %i.gc = load i8, ptr %i.gb, align 8, !tbaa !1141, !range !50, !noundef !51
  %i.gd = trunc nuw i8 %i.gc to i1
  br i1 %i.gd, label %_ZN4llvm18TargetLoweringBase19setTargetDAGCombineENS_8ArrayRefINS_3ISD8NodeTypeEEE.exit, label %bb.u

_ZN4llvm18TargetLoweringBase19setTargetDAGCombineENS_8ArrayRefINS_3ISD8NodeTypeEEE.exit: ; preds = %bb.t
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 502568 ; 2 uses
  %i.gf = load i8, ptr %i.ge, align 8, !tbaa !204
  %i.gg = or i8 %i.gf, 24
  store i8 %i.gg, ptr %i.ge, align 8, !tbaa !204
  br label %bb.u

bb.u:                                             ; preds = %_ZN4llvm18TargetLoweringBase19setTargetDAGCombineENS_8ArrayRefINS_3ISD8NodeTypeEEE.exit, %bb.t
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ga, i64 398
  %i.gi = load i8, ptr %i.gh, align 2, !tbaa !205, !range !50, !noundef !51
  %i.gj = trunc nuw i8 %i.gi to i1
  br i1 %i.gj, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 1184
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25ARMMCRegisterClassStorageE, i64 3264), ptr %i.gk, align 8, !tbaa !60
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 78458
  store i8 1, ptr %i.gl, align 2, !tbaa !56
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 502600 ; 28 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #38
  store i48 575525617980, ptr %30, align 8
  %i.gn = call noundef nonnull align 2 dereferenceable(2) ptr @_ZNSt3mapISt4pairIjN4llvm3MVT15SimpleValueTypeEES3_St4lessIS4_ESaIS0_IKS4_S3_EEEixEOS4_(ptr noundef nonnull align 8 dereferenceable(48) %i.gm, ptr noundef nonnull align 4 dereferenceable(6) %30)
  store i16 15, ptr %i.gn, align 2, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #38
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 78459
  store i8 1, ptr %i.go, align 1, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #38
  store i48 575525617981, ptr %29, align 8
  %i.gp = call noundef nonnull align 2 dereferenceable(2) ptr @_ZNSt3mapISt4pairIjN4llvm3MVT15SimpleValueTypeEES3_St4lessIS4_ESaIS0_IKS4_S3_EEEixEOS4_(ptr noundef nonnull align 8 dereferenceable(48) %i.gm, ptr noundef nonnull align 4 dereferenceable(6) %29)
  store i16 15, ptr %i.gp, align 2, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #38
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 78376
  store i8 2, ptr %i.gq, align 8, !tbaa !56
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 78377
  store i8 2, ptr %i.gr, align 1, !tbaa !56
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 78382
  store i8 2, ptr %i.gs, align 2, !tbaa !56
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 78383
  store i8 2, ptr %i.gt, align 1, !tbaa !56
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 78304
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 78313
  store i8 4, ptr %i.gv, align 1, !tbaa !56
  store <4 x i8> <i8 4, i8 4, i8 4, i8 0>, ptr %i.gu, align 8, !tbaa !56
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 78309
  store i8 0, ptr %i.gw, align 1, !tbaa !56
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 78361
  store <4 x i8> <i8 2, i8 2, i8 2, i8 4>, ptr %i.gx, align 1, !tbaa !56
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 78378
  store i8 2, ptr %i.gy, align 2, !tbaa !56
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 78204
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 78244
  store i8 2, ptr %i.ha, align 4, !tbaa !56
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 78245
  store i8 2, ptr %i.hb, align 1, !tbaa !56
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 78210
  store i8 2, ptr %i.hc, align 2, !tbaa !56
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 78211
  store i8 2, ptr %i.hd, align 1, !tbaa !56
  store i32 33686018, ptr %i.gz, align 4
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 488
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25ARMMCRegisterClassStorageE, i64 3264), ptr %i.he, align 8, !tbaa !60
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 31739
  store i8 1, ptr %i.hf, align 1, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #38
  store i48 201863463228, ptr %28, align 8
  %i.hg = call noundef nonnull align 2 dereferenceable(2) ptr @_ZNSt3mapISt4pairIjN4llvm3MVT15SimpleValueTypeEES3_St4lessIS4_ESaIS0_IKS4_S3_EEEixEOS4_(ptr noundef nonnull align 8 dereferenceable(48) %i.gm, ptr noundef nonnull align 4 dereferenceable(6) %28)
  store i16 15, ptr %i.hg, align 2, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #38
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 31740
  store i8 1, ptr %i.hh, align 4, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #38
  store i48 201863463229, ptr %27, align 8
  %i.hi = call noundef nonnull align 2 dereferenceable(2) ptr @_ZNSt3mapISt4pairIjN4llvm3MVT15SimpleValueTypeEES3_St4lessIS4_ESaIS0_IKS4_S3_EEEixEOS4_(ptr noundef nonnull align 8 dereferenceable(48) %i.gm, ptr noundef nonnull align 4 dereferenceable(6) %27)
  store i16 15, ptr %i.hi, align 2, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #38
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 31645
  store i8 4, ptr %i.hj, align 1, !tbaa !56
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 31657
  store i8 2, ptr %i.hk, align 1, !tbaa !56
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 31658
  store i8 2, ptr %i.hl, align 2, !tbaa !56
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 31663
  store i8 2, ptr %i.hm, align 1, !tbaa !56
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 31664
  store i8 2, ptr %i.hn, align 8, !tbaa !56
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 31585
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 31594
  store i8 4, ptr %i.hp, align 2, !tbaa !56
  store <4 x i8> <i8 4, i8 4, i8 4, i8 0>, ptr %i.ho, align 1, !tbaa !56
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 31590
  store i8 0, ptr %i.hq, align 2, !tbaa !56
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 31659
  store i8 2, ptr %i.hr, align 1, !tbaa !56
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 31621
  store i8 4, ptr %i.hs, align 1, !tbaa !56
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 31622
  store i8 4, ptr %i.ht, align 2, !tbaa !56
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 31623
  store i8 4, ptr %i.hu, align 1, !tbaa !56
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 31485
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 31525
  store i8 2, ptr %i.hw, align 1, !tbaa !56
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 31526
  store i8 2, ptr %i.hx, align 2, !tbaa !56
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 31491
  store i8 2, ptr %i.hy, align 1, !tbaa !56
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 31492
  store i8 2, ptr %i.hz, align 4, !tbaa !56
  store i32 33686018, ptr %i.hv, align 1
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 31619
  store i8 0, ptr %i.ia, align 1, !tbaa !56
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 31608
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 31641
  store <4 x i8> <i8 0, i8 2, i8 2, i8 2>, ptr %i.ic, align 1, !tbaa !56
end_hunk_0
