Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/compression?download=true
inline.NumInlined: 100
inline.NumDeleted: 42
loop-unroll.NumCompletelyUnrolled: 47
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 129
begin_hunk_0_@adler32_x86_avx2_vnni:bb.a
  %i.dk = phi <8 x i32> [ %i.dh, %bb.j ], [ %i.co, %bb.g ] ; 2 uses
  %i.dl = phi <8 x i32> [ %i.di, %bb.j ], [ %i.cp, %bb.g ] ; 2 uses
  %.7 = phi ptr [ %i.dj, %bb.j ], [ %.5, %bb.g ]
  %i.dm = shufflevector <8 x i32> %i.dk, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dn = shufflevector <8 x i32> %i.dk, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.do = add <4 x i32> %i.dm, %i.dn              ; 2 uses
  %i.dp = shufflevector <8 x i32> %i.dl, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dq = shufflevector <8 x i32> %i.dl, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.dr = add <4 x i32> %i.dp, %i.dq              ; 2 uses
  %i.ds = shufflevector <4 x i32> %i.do, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.dt = add <4 x i32> %i.ds, %i.do              ; 2 uses
  %i.du = shufflevector <4 x i32> %i.dr, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.dv = add <4 x i32> %i.du, %i.dr              ; 2 uses
  %i.dw = shufflevector <4 x i32> %i.dt, <4 x i32> %i.dv, <2 x i32> <i32 2, i32 6>
  %i.dx = shufflevector <4 x i32> %i.dt, <4 x i32> %i.dv, <2 x i32> <i32 0, i32 4>
  %i.dy = add <2 x i32> %i.dw, %i.dx
  %i.dz = insertelement <2 x i32> poison, i32 %.2183204, i64 0
  %i.ea = insertelement <2 x i32> %i.dz, i32 %i.y, i64 1
  %i.eb = add <2 x i32> %i.dy, %i.ea
  %i.ec = urem <2 x i32> %i.eb, splat (i32 65521) ; 2 uses
  %.not165 = icmp eq i64 %i.z, 0
  %i.ed = extractelement <2 x i32> %i.ec, i64 0   ; 2 uses
  %i.ee = extractelement <2 x i32> %i.ec, i64 1   ; 2 uses
  br i1 %.not165, label %._crit_edge, label %.lr.ph, !llvm.loop !360

._crit_edge:                                      ; preds = %bb.k, %bb.c
  %.2183.lcssa = phi i32 [ %.1182, %bb.c ], [ %i.ed, %bb.k ]
  %.2180.lcssa = phi i32 [ %.1179, %bb.c ], [ %i.ee, %bb.k ]
  %i.ef = shl nuw i32 %.2180.lcssa, 16
  %i.eg = or i32 %i.ef, %.2183.lcssa
  ret i32 %i.eg
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @adler32_x86_avx2(i32 noundef %0, ptr noundef %1, i64 noundef %2) #21 {
bb.a:
  %i.a = and i32 %0, 65535                        ; 2 uses
  %i.b = lshr i32 %0, 16                          ; 2 uses
  %i.c = icmp ugt i64 %2, 65536
  %i.d = ptrtoint ptr %1 to i64
  %i.e = and i64 %i.d, 31
  %i.f = icmp ne i64 %i.e, 0
  %i.g = and i1 %i.c, %i.f
  br i1 %i.g, label %.preheader134, label %bb.c, !prof !44

.preheader134:                                    ; preds = %bb.a, %.preheader134
  %.0127 = phi i32 [ %i.k, %.preheader134 ], [ %i.a, %bb.a ]
  %.0121 = phi i32 [ %i.l, %.preheader134 ], [ %i.b, %bb.a ]
  %.085 = phi i64 [ %i.m, %.preheader134 ], [ %2, %bb.a ]
  %.084 = phi ptr [ %i.h, %.preheader134 ], [ %1, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.084, i64 1 ; 3 uses
  %i.i = load i8, ptr %.084, align 1, !tbaa !36
  %i.j = zext i8 %i.i to i32
  %i.k = add i32 %.0127, %i.j                     ; 3 uses
  %i.l = add i32 %i.k, %.0121                     ; 2 uses
  %i.m = add i64 %.085, -1                        ; 2 uses
  %i.n = ptrtoint ptr %i.h to i64
  %i.o = and i64 %i.n, 31
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %bb.b, label %.preheader134, !llvm.loop !361

bb.b:                                             ; preds = %.preheader134
  %i.p = insertelement <2 x i32> poison, i32 %i.k, i64 0
  %i.q = insertelement <2 x i32> %i.p, i32 %i.l, i64 1
  %i.r = urem <2 x i32> %i.q, splat (i32 65521)   ; 2 uses
  %i.s = extractelement <2 x i32> %i.r, i64 0
  %i.t = extractelement <2 x i32> %i.r, i64 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1128 = phi i32 [ %i.s, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %.1122 = phi i32 [ %i.t, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %.186 = phi i64 [ %i.m, %bb.b ], [ %2, %bb.a ]  ; 2 uses
  %.1 = phi ptr [ %i.h, %bb.b ], [ %1, %bb.a ]
  %.not104161 = icmp eq i64 %.186, 0
  br i1 %.not104161, label %._crit_edge168, label %.lr.ph167

.lr.ph167:                                        ; preds = %bb.c, %._crit_edge
  %.2165 = phi ptr [ %.7.lcssa, %._crit_edge ], [ %.1, %bb.c ] ; 2 uses
  %.287164 = phi i64 [ %i.v, %._crit_edge ], [ %.186, %bb.c ] ; 3 uses
  %.2123163 = phi i32 [ %i.dm, %._crit_edge ], [ %.1122, %bb.c ] ; 2 uses
  %.2129162 = phi i32 [ %i.dn, %._crit_edge ], [ %.1128, %bb.c ] ; 3 uses
  %i.u = tail call i64 @llvm.umin.i64(i64 %.287164, i64 5504) ; 4 uses
  %i.v = sub nuw i64 %.287164, %i.u               ; 2 uses
  %i.w = icmp ugt i64 %.287164, 63
  br i1 %i.w, label %.preheader222, label %bb.e

.preheader222:                                    ; preds = %.lr.ph167, %.preheader222
  %.094 = phi i64 [ %i.ba, %.preheader222 ], [ %i.u, %.lr.ph167 ]
  %i.x = phi <8 x i32> [ %i.ay, %.preheader222 ], [ zeroinitializer, %.lr.ph167 ] ; 2 uses
  %i.y = phi <8 x i32> [ %i.ag, %.preheader222 ], [ zeroinitializer, %.lr.ph167 ]
  %i.z = phi <16 x i16> [ %i.aj, %.preheader222 ], [ zeroinitializer, %.lr.ph167 ]
  %i.aa = phi <16 x i16> [ %i.am, %.preheader222 ], [ zeroinitializer, %.lr.ph167 ]
  %i.ab = phi <16 x i16> [ %i.ap, %.preheader222 ], [ zeroinitializer, %.lr.ph167 ]
  %i.ac = phi <16 x i16> [ %i.as, %.preheader222 ], [ zeroinitializer, %.lr.ph167 ]
  %.3 = phi ptr [ %i.az, %.preheader222 ], [ %.2165, %.lr.ph167 ] ; 3 uses
  %i.ad = load <32 x i8>, ptr %.3, align 1, !tbaa !36 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.3, i64 32
  %i.af = load <32 x i8>, ptr %i.ae, align 1, !tbaa !36 ; 3 uses
  %i.ag = add <8 x i32> %i.y, %i.x                ; 2 uses
  %i.ah = shufflevector <32 x i8> %i.ad, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55>
  %i.ai = bitcast <32 x i8> %i.ah to <16 x i16>
  %i.aj = add <16 x i16> %i.z, %i.ai              ; 2 uses
  %i.ak = shufflevector <32 x i8> %i.ad, <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63>
  %i.al = bitcast <32 x i8> %i.ak to <16 x i16>
  %i.am = add <16 x i16> %i.aa, %i.al             ; 2 uses
  %i.an = shufflevector <32 x i8> %i.af, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55>
  %i.ao = bitcast <32 x i8> %i.an to <16 x i16>
  %i.ap = add <16 x i16> %i.ab, %i.ao             ; 2 uses
  %i.aq = shufflevector <32 x i8> %i.af, <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63>
  %i.ar = bitcast <32 x i8> %i.aq to <16 x i16>
  %i.as = add <16 x i16> %i.ac, %i.ar             ; 2 uses
  %i.at = tail call <4 x i64> @llvm.x86.avx2.psad.bw(<32 x i8> %i.ad, <32 x i8> zeroinitializer)
  %i.au = tail call <4 x i64> @llvm.x86.avx2.psad.bw(<32 x i8> %i.af, <32 x i8> zeroinitializer)
  %i.av = bitcast <4 x i64> %i.at to <8 x i32>
  %i.aw = bitcast <4 x i64> %i.au to <8 x i32>
  %i.ax = add <8 x i32> %i.x, %i.av
  %i.ay = add <8 x i32> %i.ax, %i.aw              ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.3, i64 64 ; 2 uses
  %i.ba = add i64 %.094, -64                      ; 3 uses
  %i.bb = icmp ugt i64 %i.ba, 63
  br i1 %i.bb, label %.preheader222, label %bb.d, !llvm.loop !362

bb.d:                                             ; preds = %.preheader222
  %i.bc = trunc nuw nsw i64 %i.u to i32
  %i.bd = and i32 %i.bc, 8128
  %i.be = mul nuw nsw i32 %i.bd, %.2129162
  %i.bf = add nuw nsw i32 %i.be, %.2123163
  %i.bg = shl <8 x i32> %i.ag, splat (i32 6)
  %i.bh = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.aj, <16 x i16> <i16 64, i16 63, i16 62, i16 61, i16 60, i16 59, i16 58, i16 57, i16 48, i16 47, i16 46, i16 45, i16 44, i16 43, i16 42, i16 41>)
  %i.bi = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.am, <16 x i16> <i16 56, i16 55, i16 54, i16 53, i16 52, i16 51, i16 50, i16 49, i16 40, i16 39, i16 38, i16 37, i16 36, i16 35, i16 34, i16 33>)
  %i.bj = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.ap, <16 x i16> <i16 32, i16 31, i16 30, i16 29, i16 28, i16 27, i16 26, i16 25, i16 16, i16 15, i16 14, i16 13, i16 12, i16 11, i16 10, i16 9>)
  %i.bk = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.as, <16 x i16> <i16 24, i16 23, i16 22, i16 21, i16 20, i16 19, i16 18, i16 17, i16 8, i16 7, i16 6, i16 5, i16 4, i16 3, i16 2, i16 1>)
  %i.bl = add <8 x i32> %i.bh, %i.bg
  %i.bm = add <8 x i32> %i.bl, %i.bi
  %i.bn = add <8 x i32> %i.bm, %i.bj
  %i.bo = add <8 x i32> %i.bn, %i.bk
  %i.bp = shufflevector <8 x i32> %i.ay, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.bq = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bp)
  %i.br = add i32 %i.bq, %.2129162
  %i.bs = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.bo)
  %i.bt = add i32 %i.bf, %i.bs
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph167, %bb.d
  %.3130 = phi i32 [ %i.br, %bb.d ], [ %.2129162, %.lr.ph167 ] ; 2 uses
  %.3124 = phi i32 [ %i.bt, %bb.d ], [ %.2123163, %.lr.ph167 ] ; 2 uses
  %.195 = phi i64 [ %i.ba, %bb.d ], [ %i.u, %.lr.ph167 ] ; 3 uses
  %.4 = phi ptr [ %i.az, %bb.d ], [ %.2165, %.lr.ph167 ] ; 2 uses
  %i.bu = icmp samesign ugt i64 %.195, 3
  br i1 %i.bu, label %.preheader, label %bb.g

.preheader:                                       ; preds = %bb.e, %.preheader
  %.4131 = phi i32 [ %i.ck, %.preheader ], [ %.3130, %bb.e ] ; 2 uses
  %.296 = phi i64 [ %i.cq, %.preheader ], [ %.195, %bb.e ]
  %.5 = phi ptr [ %i.cp, %.preheader ], [ %.4, %bb.e ] ; 5 uses
  %.083 = phi i32 [ %i.bv, %.preheader ], [ 0, %bb.e ]
  %.082 = phi i32 [ %i.cl, %.preheader ], [ 0, %bb.e ]
  %.081 = phi i32 [ %i.cm, %.preheader ], [ 0, %bb.e ]
  %.080 = phi i32 [ %i.cn, %.preheader ], [ 0, %bb.e ]
  %.0 = phi i32 [ %i.co, %.preheader ], [ 0, %bb.e ]
  %i.bv = add i32 %.083, %.4131                   ; 2 uses
  %i.bw = load i8, ptr %.5, align 1, !tbaa !36
  %i.bx = zext i8 %i.bw to i32                    ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.5, i64 1
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !36
  %i.ca = zext i8 %i.bz to i32                    ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.5, i64 2
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !36
  %i.cd = zext i8 %i.cc to i32                    ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.5, i64 3
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !36
  %i.cg = zext i8 %i.cf to i32                    ; 2 uses
  %i.ch = add i32 %.4131, %i.bx
  %i.ci = add i32 %i.ch, %i.ca
  %i.cj = add i32 %i.ci, %i.cd
  %i.ck = add i32 %i.cj, %i.cg                    ; 2 uses
  %i.cl = add i32 %.082, %i.bx                    ; 2 uses
  %i.cm = add i32 %.081, %i.ca                    ; 2 uses
  %i.cn = add i32 %.080, %i.cd                    ; 2 uses
  %i.co = add i32 %.0, %i.cg                      ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.5, i64 4 ; 2 uses
  %i.cq = add i64 %.296, -4                       ; 3 uses
  %i.cr = icmp ugt i64 %i.cq, 3
  br i1 %i.cr, label %.preheader, label %bb.f, !llvm.loop !363

bb.f:                                             ; preds = %.preheader
  %i.cs = add i32 %i.cl, %i.bv
  %i.ct = shl i32 %i.cs, 2
  %i.cu = mul i32 %i.cm, 3
  %i.cv = shl i32 %i.cn, 1
  %i.cw = add i32 %i.cu, %.3124
  %i.cx = add i32 %i.cw, %i.ct
  %i.cy = add i32 %i.cx, %i.cv
  %i.cz = add i32 %i.cy, %i.co
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.5132 = phi i32 [ %i.ck, %bb.f ], [ %.3130, %bb.e ] ; 2 uses
  %.4125 = phi i32 [ %i.cz, %bb.f ], [ %.3124, %bb.e ] ; 2 uses
  %.397 = phi i64 [ %i.cq, %bb.f ], [ %.195, %bb.e ] ; 5 uses
  %.6 = phi ptr [ %i.cp, %bb.f ], [ %.4, %bb.e ]  ; 3 uses
  %.not105154 = icmp eq i64 %.397, 0
  br i1 %.not105154, label %._crit_edge, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %bb.g, %.lr.ph.prol
  %.7158.prol = phi ptr [ %4, %.lr.ph.prol ], [ %.6, %bb.g ] ; 2 uses
  %.498157.prol = phi i64 [ %3, %.lr.ph.prol ], [ %.397, %bb.g ]
  %.5126156.prol = phi i32 [ %i.dd, %.lr.ph.prol ], [ %.4125, %bb.g ]
  %.6133155.prol = phi i32 [ %i.dc, %.lr.ph.prol ], [ %.5132, %bb.g ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %bb.g ]
  %i.da = load i8, ptr %.7158.prol, align 1, !tbaa !36
  %i.db = zext i8 %i.da to i32
  %i.dc = add i32 %.6133155.prol, %i.db           ; 4 uses
  %i.dd = add i32 %i.dc, %.5126156.prol           ; 3 uses
  %3 = add nsw i64 %.498157.prol, -1              ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.7158.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %.397
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !364

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol
  %5 = icmp ult i64 %.397, 4
  br i1 %5, label %._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.7158 = phi ptr [ %21, %.lr.ph ], [ %4, %.lr.ph.prol.loopexit ] ; 5 uses
  %.498157 = phi i64 [ %20, %.lr.ph ], [ %3, %.lr.ph.prol.loopexit ]
  %.5126156 = phi i32 [ %i.di, %.lr.ph ], [ %i.dd, %.lr.ph.prol.loopexit ]
  %.6133155 = phi i32 [ %i.dh, %.lr.ph ], [ %i.dc, %.lr.ph.prol.loopexit ]
  %6 = load i8, ptr %.7158, align 1, !tbaa !36
  %7 = zext i8 %6 to i32
  %8 = add i32 %.6133155, %7                      ; 2 uses
  %9 = add i32 %8, %.5126156
  %10 = getelementptr inbounds nuw i8, ptr %.7158, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !36
  %12 = zext i8 %11 to i32
  %13 = add i32 %8, %12                           ; 2 uses
  %14 = add i32 %13, %9
  %15 = getelementptr inbounds nuw i8, ptr %.7158, i64 2
  %16 = load i8, ptr %15, align 1, !tbaa !36
  %17 = zext i8 %16 to i32
  %18 = add i32 %13, %17                          ; 2 uses
  %19 = add i32 %18, %14
  %i.de = getelementptr inbounds nuw i8, ptr %.7158, i64 3
  %i.df = load i8, ptr %i.de, align 1, !tbaa !36
  %i.dg = zext i8 %i.df to i32
  %i.dh = add i32 %18, %i.dg                      ; 3 uses
  %i.di = add i32 %i.dh, %19                      ; 2 uses
  %20 = add nsw i64 %.498157, -4                  ; 2 uses
  %21 = getelementptr inbounds nuw i8, ptr %.7158, i64 4
  %.not105.3 = icmp eq i64 %20, 0
  br i1 %.not105.3, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !365

._crit_edge.loopexit:                             ; preds = %.lr.ph, %.lr.ph.prol.loopexit
  %.lcssa262 = phi i32 [ %i.dc, %.lr.ph.prol.loopexit ], [ %i.dh, %.lr.ph ]
  %.lcssa261 = phi i32 [ %i.dd, %.lr.ph.prol.loopexit ], [ %i.di, %.lr.ph ]
  %scevgep = getelementptr i8, ptr %.6, i64 %.397
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.g
  %.6133.lcssa = phi i32 [ %.5132, %bb.g ], [ %.lcssa262, %._crit_edge.loopexit ]
  %.5126.lcssa = phi i32 [ %.4125, %bb.g ], [ %.lcssa261, %._crit_edge.loopexit ]
  %.7.lcssa = phi ptr [ %.6, %bb.g ], [ %scevgep, %._crit_edge.loopexit ]
  %i.dj = insertelement <2 x i32> poison, i32 %.5126.lcssa, i64 0
  %i.dk = insertelement <2 x i32> %i.dj, i32 %.6133.lcssa, i64 1
  %i.dl = urem <2 x i32> %i.dk, splat (i32 65521) ; 2 uses
  %.not104 = icmp eq i64 %i.v, 0
  %i.dm = extractelement <2 x i32> %i.dl, i64 0   ; 2 uses
  %i.dn = extractelement <2 x i32> %i.dl, i64 1   ; 2 uses
  br i1 %.not104, label %._crit_edge168, label %.lr.ph167, !llvm.loop !366

._crit_edge168:                                   ; preds = %._crit_edge, %bb.c
  %.2129.lcssa = phi i32 [ %.1128, %bb.c ], [ %i.dn, %._crit_edge ]
  %.2123.lcssa = phi i32 [ %.1122, %bb.c ], [ %i.dm, %._crit_edge ]
  %i.do = shl nuw i32 %.2123.lcssa, 16
  %i.dp = or i32 %i.do, %.2129.lcssa
  ret i32 %i.dp
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @adler32_x86_sse2(i32 noundef %0, ptr noundef %1, i64 noundef %2) #22 {
bb.a:
  %i.a = and i32 %0, 65535                        ; 2 uses
  %i.b = lshr i32 %0, 16                          ; 2 uses
  %i.c = icmp ugt i64 %2, 65536
  %i.d = ptrtoint ptr %1 to i64
  %i.e = and i64 %i.d, 15
  %i.f = icmp ne i64 %i.e, 0
  %i.g = and i1 %i.c, %i.f
  br i1 %i.g, label %.preheader134, label %bb.c, !prof !44

.preheader134:                                    ; preds = %bb.a, %.preheader134
  %.0127 = phi i32 [ %i.k, %.preheader134 ], [ %i.a, %bb.a ]
  %.0121 = phi i32 [ %i.l, %.preheader134 ], [ %i.b, %bb.a ]
  %.085 = phi i64 [ %i.m, %.preheader134 ], [ %2, %bb.a ]
  %.084 = phi ptr [ %i.h, %.preheader134 ], [ %1, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.084, i64 1 ; 3 uses
  %i.i = load i8, ptr %.084, align 1, !tbaa !36
  %i.j = zext i8 %i.i to i32
  %i.k = add i32 %.0127, %i.j                     ; 3 uses
  %i.l = add i32 %i.k, %.0121                     ; 2 uses
  %i.m = add i64 %.085, -1                        ; 2 uses
  %i.n = ptrtoint ptr %i.h to i64
  %i.o = and i64 %i.n, 15
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %bb.b, label %.preheader134, !llvm.loop !367

bb.b:                                             ; preds = %.preheader134
  %i.p = urem i32 %i.k, 65521
  %i.q = urem i32 %i.l, 65521
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1128 = phi i32 [ %i.p, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %.1122 = phi i32 [ %i.q, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %.186 = phi i64 [ %i.m, %bb.b ], [ %2, %bb.a ]  ; 2 uses
  %.1 = phi ptr [ %i.h, %bb.b ], [ %1, %bb.a ]
  %.not104161 = icmp eq i64 %.186, 0
  br i1 %.not104161, label %._crit_edge168, label %.lr.ph167

.lr.ph167:                                        ; preds = %bb.c, %._crit_edge
  %.2165 = phi ptr [ %.7.lcssa, %._crit_edge ], [ %.1, %bb.c ] ; 2 uses
  %.287164 = phi i64 [ %i.s, %._crit_edge ], [ %.186, %bb.c ] ; 3 uses
  %.2123163 = phi i32 [ %i.di, %._crit_edge ], [ %.1122, %bb.c ] ; 2 uses
  %.2129162 = phi i32 [ %i.dh, %._crit_edge ], [ %.1128, %bb.c ] ; 3 uses
  %i.r = tail call i64 @llvm.umin.i64(i64 %.287164, i64 4096) ; 4 uses
  %i.s = sub nuw i64 %.287164, %i.r               ; 2 uses
  %i.t = icmp ugt i64 %.287164, 31
  br i1 %i.t, label %.preheader222, label %bb.e

.preheader222:                                    ; preds = %.lr.ph167, %.preheader222
  %.094 = phi i64 [ %i.ax, %.preheader222 ], [ %i.r, %.lr.ph167 ]
  %i.u = phi <4 x i32> [ %i.av, %.preheader222 ], [ zeroinitializer, %.lr.ph167 ] ; 2 uses
  %i.v = phi <4 x i32> [ %i.ad, %.preheader222 ], [ zeroinitializer, %.lr.ph167 ]
  %i.w = phi <8 x i16> [ %i.ag, %.preheader222 ], [ zeroinitializer, %.lr.ph167 ]
  %i.x = phi <8 x i16> [ %i.aj, %.preheader222 ], [ zeroinitializer, %.lr.ph167 ]
  %i.y = phi <8 x i16> [ %i.am, %.preheader222 ], [ zeroinitializer, %.lr.ph167 ]
  %i.z = phi <8 x i16> [ %i.ap, %.preheader222 ], [ zeroinitializer, %.lr.ph167 ]
  %.3 = phi ptr [ %i.aw, %.preheader222 ], [ %.2165, %.lr.ph167 ] ; 3 uses
  %i.aa = load <16 x i8>, ptr %.3, align 1, !tbaa !36 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.3, i64 16
  %i.ac = load <16 x i8>, ptr %i.ab, align 1, !tbaa !36 ; 3 uses
  %i.ad = add <4 x i32> %i.v, %i.u                ; 2 uses
  %i.ae = shufflevector <16 x i8> %i.aa, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.af = bitcast <16 x i8> %i.ae to <8 x i16>
  %i.ag = add <8 x i16> %i.w, %i.af               ; 2 uses
  %i.ah = shufflevector <16 x i8> %i.aa, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.ai = bitcast <16 x i8> %i.ah to <8 x i16>
  %i.aj = add <8 x i16> %i.x, %i.ai               ; 2 uses
  %i.ak = shufflevector <16 x i8> %i.ac, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.al = bitcast <16 x i8> %i.ak to <8 x i16>
  %i.am = add <8 x i16> %i.y, %i.al               ; 2 uses
  %i.an = shufflevector <16 x i8> %i.ac, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.ao = bitcast <16 x i8> %i.an to <8 x i16>
  %i.ap = add <8 x i16> %i.z, %i.ao               ; 2 uses
  %i.aq = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.aa, <16 x i8> zeroinitializer)
  %i.ar = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.ac, <16 x i8> zeroinitializer)
  %i.as = bitcast <2 x i64> %i.aq to <4 x i32>
  %i.at = bitcast <2 x i64> %i.ar to <4 x i32>
  %i.au = add <4 x i32> %i.u, %i.as
  %i.av = add <4 x i32> %i.au, %i.at              ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.3, i64 32 ; 2 uses
  %i.ax = add i64 %.094, -32                      ; 3 uses
  %i.ay = icmp ugt i64 %i.ax, 31
  br i1 %i.ay, label %.preheader222, label %bb.d, !llvm.loop !368

bb.d:                                             ; preds = %.preheader222
  %i.az = trunc nuw nsw i64 %i.r to i32
  %i.ba = and i32 %i.az, 8160
  %i.bb = mul nuw nsw i32 %i.ba, %.2129162
  %i.bc = add nuw nsw i32 %i.bb, %.2123163
  %i.bd = shl <4 x i32> %i.ad, splat (i32 5)
  %i.be = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ag, <8 x i16> <i16 32, i16 31, i16 30, i16 29, i16 28, i16 27, i16 26, i16 25>)
  %i.bf = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.aj, <8 x i16> <i16 24, i16 23, i16 22, i16 21, i16 20, i16 19, i16 18, i16 17>)
  %i.bg = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.am, <8 x i16> <i16 16, i16 15, i16 14, i16 13, i16 12, i16 11, i16 10, i16 9>)
  %i.bh = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ap, <8 x i16> <i16 8, i16 7, i16 6, i16 5, i16 4, i16 3, i16 2, i16 1>)
  %i.bi = add <4 x i32> %i.be, %i.bd
  %i.bj = add <4 x i32> %i.bi, %i.bf
  %i.bk = add <4 x i32> %i.bj, %i.bg
  %i.bl = add <4 x i32> %i.bk, %i.bh
  %i.bm = shufflevector <4 x i32> %i.av, <4 x i32> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.bn = add <4 x i32> %i.bm, %i.av
  %i.bo = extractelement <4 x i32> %i.bn, i64 0
  %i.bp = add i32 %i.bo, %.2129162
  %i.bq = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bl)
  %i.br = add i32 %i.bc, %i.bq
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph167, %bb.d
  %.3130 = phi i32 [ %i.bp, %bb.d ], [ %.2129162, %.lr.ph167 ] ; 2 uses
  %.3124 = phi i32 [ %i.br, %bb.d ], [ %.2123163, %.lr.ph167 ] ; 2 uses
  %.195 = phi i64 [ %i.ax, %bb.d ], [ %i.r, %.lr.ph167 ] ; 3 uses
  %.4 = phi ptr [ %i.aw, %bb.d ], [ %.2165, %.lr.ph167 ] ; 2 uses
  %i.bs = icmp samesign ugt i64 %.195, 3
  br i1 %i.bs, label %.preheader, label %bb.g

.preheader:                                       ; preds = %bb.e, %.preheader
  %.4131 = phi i32 [ %i.ci, %.preheader ], [ %.3130, %bb.e ] ; 2 uses
  %.296 = phi i64 [ %i.co, %.preheader ], [ %.195, %bb.e ]
  %.5 = phi ptr [ %i.cn, %.preheader ], [ %.4, %bb.e ] ; 5 uses
  %.083 = phi i32 [ %i.bt, %.preheader ], [ 0, %bb.e ]
  %.082 = phi i32 [ %i.cj, %.preheader ], [ 0, %bb.e ]
  %.081 = phi i32 [ %i.ck, %.preheader ], [ 0, %bb.e ]
  %.080 = phi i32 [ %i.cl, %.preheader ], [ 0, %bb.e ]
  %.0 = phi i32 [ %i.cm, %.preheader ], [ 0, %bb.e ]
  %i.bt = add i32 %.083, %.4131                   ; 2 uses
  %i.bu = load i8, ptr %.5, align 1, !tbaa !36
  %i.bv = zext i8 %i.bu to i32                    ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.5, i64 1
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !36
  %i.by = zext i8 %i.bx to i32                    ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.5, i64 2
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !36
  %i.cb = zext i8 %i.ca to i32                    ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.5, i64 3
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !36
  %i.ce = zext i8 %i.cd to i32                    ; 2 uses
  %i.cf = add i32 %.4131, %i.bv
  %i.cg = add i32 %i.cf, %i.by
  %i.ch = add i32 %i.cg, %i.cb
  %i.ci = add i32 %i.ch, %i.ce                    ; 2 uses
  %i.cj = add i32 %.082, %i.bv                    ; 2 uses
  %i.ck = add i32 %.081, %i.by                    ; 2 uses
  %i.cl = add i32 %.080, %i.cb                    ; 2 uses
  %i.cm = add i32 %.0, %i.ce                      ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.5, i64 4 ; 2 uses
  %i.co = add i64 %.296, -4                       ; 3 uses
  %i.cp = icmp ugt i64 %i.co, 3
  br i1 %i.cp, label %.preheader, label %bb.f, !llvm.loop !369

bb.f:                                             ; preds = %.preheader
  %i.cq = add i32 %i.cj, %i.bt
  %i.cr = shl i32 %i.cq, 2
  %i.cs = mul i32 %i.ck, 3
  %i.ct = shl i32 %i.cl, 1
  %i.cu = add i32 %i.cs, %.3124
  %i.cv = add i32 %i.cu, %i.cr
  %i.cw = add i32 %i.cv, %i.ct
  %i.cx = add i32 %i.cw, %i.cm
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.5132 = phi i32 [ %i.ci, %bb.f ], [ %.3130, %bb.e ] ; 2 uses
  %.4125 = phi i32 [ %i.cx, %bb.f ], [ %.3124, %bb.e ] ; 2 uses
  %.397 = phi i64 [ %i.co, %bb.f ], [ %.195, %bb.e ] ; 5 uses
  %.6 = phi ptr [ %i.cn, %bb.f ], [ %.4, %bb.e ]  ; 3 uses
  %.not105154 = icmp eq i64 %.397, 0
  br i1 %.not105154, label %._crit_edge, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %bb.g, %.lr.ph.prol
  %.7158.prol = phi ptr [ %4, %.lr.ph.prol ], [ %.6, %bb.g ] ; 2 uses
  %.498157.prol = phi i64 [ %3, %.lr.ph.prol ], [ %.397, %bb.g ]
  %.5126156.prol = phi i32 [ %i.db, %.lr.ph.prol ], [ %.4125, %bb.g ]
  %.6133155.prol = phi i32 [ %i.da, %.lr.ph.prol ], [ %.5132, %bb.g ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %bb.g ]
  %i.cy = load i8, ptr %.7158.prol, align 1, !tbaa !36
  %i.cz = zext i8 %i.cy to i32
  %i.da = add i32 %.6133155.prol, %i.cz           ; 4 uses
  %i.db = add i32 %i.da, %.5126156.prol           ; 3 uses
  %3 = add nsw i64 %.498157.prol, -1              ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.7158.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %.397
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !370

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol
  %5 = icmp ult i64 %.397, 4
  br i1 %5, label %._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.7158 = phi ptr [ %21, %.lr.ph ], [ %4, %.lr.ph.prol.loopexit ] ; 5 uses
  %.498157 = phi i64 [ %20, %.lr.ph ], [ %3, %.lr.ph.prol.loopexit ]
  %.5126156 = phi i32 [ %i.dg, %.lr.ph ], [ %i.db, %.lr.ph.prol.loopexit ]
  %.6133155 = phi i32 [ %i.df, %.lr.ph ], [ %i.da, %.lr.ph.prol.loopexit ]
  %6 = load i8, ptr %.7158, align 1, !tbaa !36
  %7 = zext i8 %6 to i32
  %8 = add i32 %.6133155, %7                      ; 2 uses
  %9 = add i32 %8, %.5126156
  %10 = getelementptr inbounds nuw i8, ptr %.7158, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !36
  %12 = zext i8 %11 to i32
  %13 = add i32 %8, %12                           ; 2 uses
  %14 = add i32 %13, %9
  %15 = getelementptr inbounds nuw i8, ptr %.7158, i64 2
  %16 = load i8, ptr %15, align 1, !tbaa !36
  %17 = zext i8 %16 to i32
  %18 = add i32 %13, %17                          ; 2 uses
  %19 = add i32 %18, %14
  %i.dc = getelementptr inbounds nuw i8, ptr %.7158, i64 3
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !36
  %i.de = zext i8 %i.dd to i32
  %i.df = add i32 %18, %i.de                      ; 3 uses
  %i.dg = add i32 %i.df, %19                      ; 2 uses
  %20 = add nsw i64 %.498157, -4                  ; 2 uses
  %21 = getelementptr inbounds nuw i8, ptr %.7158, i64 4
  %.not105.3 = icmp eq i64 %20, 0
  br i1 %.not105.3, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !371

._crit_edge.loopexit:                             ; preds = %.lr.ph, %.lr.ph.prol.loopexit
  %.lcssa262 = phi i32 [ %i.da, %.lr.ph.prol.loopexit ], [ %i.df, %.lr.ph ]
  %.lcssa261 = phi i32 [ %i.db, %.lr.ph.prol.loopexit ], [ %i.dg, %.lr.ph ]
  %scevgep = getelementptr i8, ptr %.6, i64 %.397
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.g
  %.6133.lcssa = phi i32 [ %.5132, %bb.g ], [ %.lcssa262, %._crit_edge.loopexit ]
  %.5126.lcssa = phi i32 [ %.4125, %bb.g ], [ %.lcssa261, %._crit_edge.loopexit ]
  %.7.lcssa = phi ptr [ %.6, %bb.g ], [ %scevgep, %._crit_edge.loopexit ]
  %i.dh = urem i32 %.6133.lcssa, 65521            ; 2 uses
  %i.di = urem i32 %.5126.lcssa, 65521            ; 2 uses
  %.not104 = icmp eq i64 %i.s, 0
  br i1 %.not104, label %._crit_edge168, label %.lr.ph167, !llvm.loop !372

._crit_edge168:                                   ; preds = %._crit_edge, %bb.c
  %.2129.lcssa = phi i32 [ %.1128, %bb.c ], [ %i.dh, %._crit_edge ]
  %.2123.lcssa = phi i32 [ %.1122, %bb.c ], [ %i.di, %._crit_edge ]
  %i.dj = shl nuw i32 %.2123.lcssa, 16
  %i.dk = or i32 %i.dj, %.2129.lcssa
  ret i32 %i.dk
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32>, <64 x i8>, <64 x i8>) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <64 x i8> @llvm.masked.load.v64i8.p0(ptr captures(none), <64 x i1>, <64 x i8>) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32>, <32 x i8>, <32 x i8>) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <32 x i8> @llvm.masked.load.v32i8.p0(ptr captures(none), <32 x i1>, <32 x i8>) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i64> @llvm.x86.avx2.psad.bw(<32 x i8>, <32 x i8>) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16>, <16 x i16>) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8>, <16 x i8>) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16>, <8 x i16>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #12

declare i32 @internal_exr_undo_rle(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #10

declare i32 @internal_exr_undo_zip(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #10

declare i32 @internal_exr_undo_piz(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #10

declare i32 @internal_exr_undo_pxr24(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #10

declare i32 @internal_exr_undo_b44(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #10

declare i32 @internal_exr_undo_b44a(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #10

declare i32 @internal_exr_undo_dwaa(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #10

declare i32 @internal_exr_undo_dwab(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #10

declare i32 @internal_exr_undo_ht(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v16i32(<16 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v32i32(<32 x i32>) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+bmi2,+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512f,+avx512vnni,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #19 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512f,+avx512vl,+avx512vnni,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #20 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avxvnni,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #21 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #22 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #27 = { nounwind }

!llvm.module.flags = !{!8, !9}
!llvm.ident = !{!10}
!llvm.errno.tbaa = !{!15}

!0 = distinct !{!0, !38}
!1 = distinct !{!1, !38}
!2 = distinct !{!2, !38}
!3 = distinct !{!3, !38}
!4 = distinct !{!4, !38}
!5 = distinct !{!5, !38}
!6 = distinct !{!6, !38}
!7 = distinct !{!7, !38}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!"omnipotent char", !11, i64 0}
!13 = !{!"int", !12, i64 0}
!14 = !{!"__libc_errno", !13, i64 0}
!15 = !{!14, !13, i64 0}
!16 = !{!13, !13, i64 0}
!17 = !{!"any pointer", !12, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"long", !12, i64 0}
!20 = !{!"libdeflate_options", !19, i64 0, !17, i64 8, !17, i64 16}
!21 = !{!20, !19, i64 0}
!22 = !{!20, !17, i64 8}
!23 = !{!20, !17, i64 16}
!24 = !{!"deflate_freqs", !12, i64 0, !12, i64 1152}
!25 = !{!"block_split_stats", !12, i64 0, !12, i64 40, !13, i64 80, !13, i64 84}
!26 = !{!"deflate_codewords", !12, i64 0, !12, i64 1152}
!27 = !{!"deflate_lens", !12, i64 0, !12, i64 288}
!28 = !{!"deflate_codes", !26, i64 0, !27, i64 1280}
!29 = !{!"libdeflate_compressor", !17, i64 0, !17, i64 8, !13, i64 16, !19, i64 24, !13, i64 32, !13, i64 36, !24, i64 40, !25, i64 1320, !28, i64 1408, !28, i64 3008, !12, i64 4608, !12, i64 6080}
!30 = !{!29, !17, i64 8}
!31 = !{!29, !13, i64 16}
!32 = !{!29, !19, i64 24}
!33 = !{!29, !17, i64 0}
!34 = !{!29, !13, i64 36}
!35 = !{!29, !13, i64 32}
!36 = !{!12, !12, i64 0}
!37 = !{!"llvm.loop.unroll.disable"}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!"llvm.loop.isvectorized", i32 1}
!40 = !{!"llvm.loop.unroll.runtime.disable"}
!41 = !{!"short", !12, i64 0}
!42 = !{!"deflate_sequence", !13, i64 0, !41, i64 4, !41, i64 6}
!43 = !{!42, !13, i64 0}
!44 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!45 = !{!41, !41, i64 0}
!46 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!47 = !{!42, !41, i64 4}
!48 = !{!42, !41, i64 6}
!49 = !{!"p1 omnipotent char", !17, i64 0}
!50 = !{!"_Bool", !12, i64 0}
!51 = !{!"deflate_output_bitstream", !19, i64 0, !13, i64 8, !49, i64 16, !49, i64 24, !50, i64 32}
!52 = !{!51, !50, i64 32}
!53 = !{i8 0, i8 2}
!54 = !{}
!55 = !{!25, !13, i64 80}
!56 = !{!50, !50, i64 0}
!57 = !{!"lz_match", !41, i64 0, !41, i64 2}
!58 = !{!57, !41, i64 0}
!59 = !{!57, !41, i64 2}
!60 = !{!25, !13, i64 84}
!61 = !{!29, !13, i64 1404}
!62 = !{!51, !19, i64 0}
!63 = !{!51, !13, i64 8}
!64 = !{!51, !49, i64 16}
!65 = !{!51, !49, i64 24}
!66 = !{ptr @libdeflate_deflate_decompress_ex}
!67 = !{!"libdeflate_decompressor", !12, i64 0, !12, i64 9368, !12, i64 10976, !50, i64 11552, !13, i64 11556, !17, i64 11560}
!68 = !{!67, !17, i64 11560}
!69 = !{ptr @libdeflate_alloc_decompressor_ex}
!70 = !{ptr @libdeflate_adler32}
!71 = !{!19, !19, i64 0}
!72 = !{ptr @libdeflate_zlib_decompress_ex, ptr @libdeflate_deflate_decompress_ex}
!73 = !{ptr @libdeflate_zlib_decompress_ex, ptr @libdeflate_adler32}
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.add.v32i32
!164 = !{!159, !13, i64 48}
!165 = !{!159, !13, i64 44}
!166 = !{!159, !19, i64 88}
!167 = !{!159, !80, i64 168}
!168 = !{!159, !41, i64 18}
!169 = !{!159, !19, i64 64}
!170 = !{!159, !19, i64 72}
!171 = !{!159, !17, i64 120}
!172 = !{!159, !17, i64 136}
!173 = distinct !{!173, !38, !39, !40}
!174 = distinct !{!174, !38, !39, !40}
!175 = distinct !{!175, !38, !198}
!176 = distinct !{!176, !37}
!177 = distinct !{!177, !38}
!178 = distinct !{!178, !37}
!179 = distinct !{!179, !38}
!180 = distinct !{!180, !38}
!181 = distinct !{!181, !37}
!182 = distinct !{!182, !37}
!183 = distinct !{!183, !38}
!184 = distinct !{!184, !38}
!185 = distinct !{!185, !38}
!186 = distinct !{!186, !38}
!187 = distinct !{!187, !37}
!188 = distinct !{!188, !38}
!189 = distinct !{!189, !38}
!190 = distinct !{!190, !38}
!191 = distinct !{!191, !38}
!192 = distinct !{!192, !38}
!193 = distinct !{!193, !37}
!194 = distinct !{!194, !38}
!195 = distinct !{!195, !38}
!196 = distinct !{!196, !37}
!197 = distinct !{!197, !38}
!198 = !{!"llvm.loop.peeled.count", i32 1}
!199 = distinct !{!199, !38}
!200 = distinct !{!200, !38}
!201 = distinct !{!201, !37}
!202 = distinct !{!202, !38}
!203 = distinct !{!203, !38}
!204 = distinct !{!204, !38}
!205 = distinct !{!205, !38}
!206 = distinct !{!206, !38}
!207 = distinct !{!207, !38}
!208 = distinct !{!208, !38}
!209 = distinct !{!209, !37}
!210 = distinct !{!210, !38}
!211 = distinct !{!211, !38}
!212 = distinct !{!212, !38}
!213 = distinct !{!213, !37}
!214 = distinct !{!214, !38}
!215 = distinct !{!215, !38}
!216 = distinct !{!216, !38}
!217 = distinct !{!217, !38}
!218 = distinct !{!218, !37}
!219 = distinct !{!219, !38}
!220 = distinct !{!220, !38}
!221 = distinct !{!221, !38}
!222 = distinct !{!222, !37}
!223 = distinct !{!223, !37}
!224 = distinct !{!224, !38}
!225 = distinct !{!225, i1 false, !"LVerDomain"}
!226 = distinct !{!226, !225}
!227 = distinct !{!227, !225}
!228 = distinct !{!228, !38, !39, !40}
!229 = distinct !{!229, !38, !39}
!230 = distinct !{!230, i1 false, !"LVerDomain"}
!231 = distinct !{!231, !230}
!232 = distinct !{!232, !230}
!233 = distinct !{!233, !38}
!234 = distinct !{!234, !38, !39}
!235 = distinct !{!235, !37}
!236 = distinct !{!236, !38, !39, !40}
!237 = distinct !{!237, !38}
!238 = distinct !{!238, !38, !39, !40}
!239 = distinct !{!239, !38, !39}
!240 = distinct !{!240, !38}
!241 = distinct !{!241, !38, !39, !40}
!242 = distinct !{!242, !38}
!243 = distinct !{!243, !38, !39, !40}
!244 = distinct !{!244, !38, !39, !40}
!245 = distinct !{!245, !38, !39, !40}
!246 = distinct !{!246, i1 false, !"LVerDomain"}
!247 = distinct !{!247, !246}
!248 = distinct !{!248, !246}
!249 = distinct !{!249, !38, !39, !40}
!250 = distinct !{!250, !38, !39}
!251 = distinct !{!251, i1 false, !"LVerDomain"}
!252 = distinct !{!252, !251}
!253 = distinct !{!253, !251}
!254 = distinct !{!254, !38, !39}
!255 = distinct !{!255, !38}
!256 = distinct !{!256, !37}
!257 = distinct !{!257, i1 false, !"LVerDomain"}
!258 = distinct !{!258, !257}
!259 = distinct !{!259, !257}
!260 = distinct !{!260, !38, !39, !40}
!261 = distinct !{!261, !38, !39}
!262 = distinct !{!262, i1 false, !"LVerDomain"}
!263 = distinct !{!263, !262}
!264 = distinct !{!264, !262}
!265 = distinct !{!265, !38, !39}
!266 = distinct !{!266, i1 false, !"LVerDomain"}
!267 = distinct !{!267, !266}
!268 = distinct !{!268, !266}
!269 = distinct !{!269, !38, !39, !40}
!270 = distinct !{!270, !38, !39}
!271 = distinct !{!271, i1 false, !"LVerDomain"}
!272 = distinct !{!272, !271}
!273 = distinct !{!273, !271}
!274 = distinct !{!274, !38, !39}
!275 = distinct !{!275, i1 false, !"LVerDomain"}
!276 = distinct !{!276, !275}
!277 = distinct !{!277, !275}
!278 = distinct !{!278, !38, !39, !40}
!279 = distinct !{!279, !38, !39}
!280 = distinct !{!280, i1 false, !"LVerDomain"}
!281 = distinct !{!281, !280}
!282 = distinct !{!282, !280}
!283 = distinct !{!283, !38, !39}
!284 = !{i64 0, i64 1024, !36, i64 1024, i64 1036, !36, i64 2060, i64 128, !36}
!285 = !{!226}
!286 = !{!227}
!287 = !{!231}
!288 = !{!232}
!289 = !{!"", !12, i64 0, !12, i64 257}
!290 = !{!289, !12, i64 257}
!291 = !{!247}
!292 = !{!248}
!293 = !{!252}
!294 = !{!253}
!295 = !{!258}
!296 = !{!259}
!297 = !{!263}
!298 = !{!264}
!299 = !{!267}
!300 = !{!268}
!301 = !{!272}
!302 = !{!273}
!303 = !{!276}
!304 = !{!277}
!305 = !{!281}
!306 = !{!282}
!307 = distinct !{!307, !38, !39, !40}
!308 = distinct !{!308, !38}
!309 = distinct !{!309, !38}
!310 = distinct !{!310, !38}
!311 = distinct !{!311, !38}
!312 = !{!95, !13, i64 0}
!313 = !{ptr @deflate_decompress_bmi2, ptr @deflate_decompress_default}
!314 = distinct !{!314, !38}
!315 = distinct !{!315, !38}
!316 = distinct !{!316, !38}
!317 = distinct !{!317, !38}
!318 = distinct !{!318, !38}
!319 = distinct !{!319, !38}
!320 = distinct !{!320, !38}
!321 = distinct !{!321, !38}
!322 = distinct !{!322, !38}
!323 = distinct !{!323, !38, !39, !40}
!324 = distinct !{!324, !38, !39, !40}
!325 = distinct !{!325, !38, !39}
!326 = distinct !{!326, !38}
!327 = distinct !{!327, !38}
!328 = distinct !{!328, !38}
!329 = distinct !{!329, !38}
!330 = distinct !{!330, !38}
!331 = distinct !{!331, !38}
!332 = distinct !{!332, !38}
!333 = distinct !{!333, !38}
!334 = distinct !{!334, !38}
!335 = distinct !{!335, !38, !39, !40}
!336 = distinct !{!336, !38, !39, !40}
!337 = distinct !{!337, !38, !39}
!338 = distinct !{!338, !38}
!339 = distinct !{!339, !37}
!340 = distinct !{!340, !38}
!341 = distinct !{!341, !38}
!342 = distinct !{!342, !38}
!343 = distinct !{!343, !38}
!344 = distinct !{!344, !38}
!345 = distinct !{!345, !38}
!346 = distinct !{!346, !38}
!347 = distinct !{!347, !38}
!348 = distinct !{!348, !38}
!349 = distinct !{!349, !38}
!350 = distinct !{!350, !38}
!351 = distinct !{!351, !38}
!352 = distinct !{!352, !38}
!353 = distinct !{!353, !38}
!354 = distinct !{!354, !38}
!355 = distinct !{!355, !38}
!356 = distinct !{!356, !38}
!357 = distinct !{!357, !38}
!358 = distinct !{!358, !38}
!359 = distinct !{!359, !38}
!360 = distinct !{!360, !38}
!361 = distinct !{!361, !38}
!362 = distinct !{!362, !38}
!363 = distinct !{!363, !38}
!364 = distinct !{!364, !37}
!365 = distinct !{!365, !38}
!366 = distinct !{!366, !38}
!367 = distinct !{!367, !38}
!368 = distinct !{!368, !38}
!369 = distinct !{!369, !38}
!370 = distinct !{!370, !37}
!371 = distinct !{!371, !38}
!372 = distinct !{!372, !38}
end_hunk_1
