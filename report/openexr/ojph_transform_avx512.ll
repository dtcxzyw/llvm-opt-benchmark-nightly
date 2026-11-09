Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ojph_transform_avx512?download=true
inline.NumInlined: 25
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZN4ojph5local21avx512_rev_horz_ana32EPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb:bb.a
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !13
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !32
  %.sink324 = select i1 %5, ptr %1, ptr %2
  %not.325 = xor i1 %5, true
  %i.hq = zext i1 %not.325 to i32
  %.sink = shl i32 %i.hp, %i.hq
  %i.hr = getelementptr inbounds nuw i8, ptr %.sink324, i64 16
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !13
  store i32 %.sink, ptr %i.hs, align 4, !tbaa !32
  br label %.loopexit248

.loopexit248:                                     ; preds = %.loopexit, %.loopexit248.sink.split, %_ZN4ojph5localL21avx512_deinterleave32EPfS1_S1_i.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4ojph5local21avx512_rev_horz_ana64EPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i32 %4, 1
  br i1 %i.a, label %bb.b, label %.loopexit232.sink.split

bb.b:                                             ; preds = %bb.a
  %. = select i1 %5, ptr %1, ptr %2
  %.in = getelementptr inbounds nuw i8, ptr %., i64 16
  %i.b = load ptr, ptr %.in, align 8, !tbaa !13   ; 4 uses
  %.pn210 = select i1 %5, ptr %2, ptr %1
  %.in209 = getelementptr inbounds nuw i8, ptr %.pn210, i64 16
  %i.c = load ptr, ptr %.in209, align 8, !tbaa !13 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13   ; 4 uses
  %i.f = icmp sgt i32 %4, 8
  br i1 %i.f, label %.lr.ph.i.preheader, label %.preheader.i

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.g = add nsw i32 %4, -9                       ; 2 uses
  %i.h = and i32 %i.g, 16
  %lcmp.mod.not.not = icmp eq i32 %i.h, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.i = load <8 x double>, ptr %i.e, align 64, !tbaa !13 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 128 ; 3 uses
  %i.k = load <8 x double>, ptr %i.j, align 64, !tbaa !13 ; 2 uses
  %i.l = shufflevector <8 x double> %i.i, <8 x double> %i.k, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.m = shufflevector <8 x double> %i.i, <8 x double> %i.k, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  store <8 x double> %i.l, ptr %i.b, align 64, !tbaa !13
  store <8 x double> %i.m, ptr %i.c, align 64, !tbaa !13
  %i.n = add nsw i32 %4, -16                      ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.044.i.unr = phi ptr [ %i.b, %.lr.ph.i.preheader ], [ %i.o, %.lr.ph.i.prol ]
  %.03543.i.unr = phi ptr [ %i.c, %.lr.ph.i.preheader ], [ %i.p, %.lr.ph.i.prol ]
  %.03742.i.unr = phi ptr [ %i.e, %.lr.ph.i.preheader ], [ %i.j, %.lr.ph.i.prol ]
  %.03941.i.unr = phi i32 [ %4, %.lr.ph.i.preheader ], [ %i.n, %.lr.ph.i.prol ]
  %.lcssa451.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.j, %.lr.ph.i.prol ]
  %.lcssa450.unr = phi i32 [ poison, %.lr.ph.i.preheader ], [ %i.n, %.lr.ph.i.prol ]
  %.lcssa449.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.o, %.lr.ph.i.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.p, %.lr.ph.i.prol ]
  %i.q = icmp ult i32 %i.g, 16
  br i1 %i.q, label %.preheader.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.b
  %.039.lcssa.i = phi i32 [ %4, %bb.b ], [ %.lcssa450.unr, %.lr.ph.i.prol.loopexit ], [ %i.ap, %.lr.ph.i ] ; 5 uses
  %.037.lcssa.i = phi ptr [ %i.e, %bb.b ], [ %.lcssa451.unr, %.lr.ph.i.prol.loopexit ], [ %i.al, %.lr.ph.i ] ; 2 uses
  %.035.lcssa.i = phi ptr [ %i.c, %bb.b ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.ar, %.lr.ph.i ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %i.b, %bb.b ], [ %.lcssa449.unr, %.lr.ph.i.prol.loopexit ], [ %i.aq, %.lr.ph.i ] ; 2 uses
  %i.r = icmp sgt i32 %.039.lcssa.i, 0
  br i1 %i.r, label %.lr.ph52.i.preheader, label %_ZN4ojph5localL21avx512_deinterleave64EPdS1_S1_i.exit

.lr.ph52.i.preheader:                             ; preds = %.preheader.i
  %i.s = add nsw i32 %.039.lcssa.i, -1
  %i.t = lshr i32 %i.s, 3
  %i.u = add nuw nsw i32 %i.t, 1
  %xtraiter452 = and i32 %i.u, 3                  ; 2 uses
  %lcmp.mod453.not = icmp eq i32 %xtraiter452, 0
  br i1 %lcmp.mod453.not, label %.lr.ph52.i.prol.loopexit, label %.lr.ph52.i.prol

.lr.ph52.i.prol:                                  ; preds = %.lr.ph52.i.preheader, %.lr.ph52.i.prol
  %.151.i.prol = phi ptr [ %i.aa, %.lr.ph52.i.prol ], [ %.0.lcssa.i, %.lr.ph52.i.preheader ] ; 2 uses
  %.13650.i.prol = phi ptr [ %i.ab, %.lr.ph52.i.prol ], [ %.035.lcssa.i, %.lr.ph52.i.preheader ] ; 2 uses
  %.13849.i.prol = phi ptr [ %i.z, %.lr.ph52.i.prol ], [ %.037.lcssa.i, %.lr.ph52.i.preheader ] ; 2 uses
  %.14048.i.prol = phi i32 [ %i.y, %.lr.ph52.i.prol ], [ %.039.lcssa.i, %.lr.ph52.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph52.i.prol ], [ 0, %.lr.ph52.i.preheader ]
  %i.v = load <8 x double>, ptr %.13849.i.prol, align 32, !tbaa !13 ; 2 uses
  %i.w = shufflevector <8 x double> %i.v, <8 x double> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.x = shufflevector <8 x double> %i.v, <8 x double> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  store <4 x double> %i.w, ptr %.151.i.prol, align 32, !tbaa !13
  store <4 x double> %i.x, ptr %.13650.i.prol, align 32, !tbaa !13
  %i.y = add nsw i32 %.14048.i.prol, -8           ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.13849.i.prol, i64 64 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.151.i.prol, i64 32 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.13650.i.prol, i64 32 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter452
  br i1 %prol.iter.cmp.not, label %.lr.ph52.i.prol.loopexit, label %.lr.ph52.i.prol, !llvm.loop !94

.lr.ph52.i.prol.loopexit:                         ; preds = %.lr.ph52.i.prol, %.lr.ph52.i.preheader
  %.151.i.unr = phi ptr [ %.0.lcssa.i, %.lr.ph52.i.preheader ], [ %i.aa, %.lr.ph52.i.prol ]
  %.13650.i.unr = phi ptr [ %.035.lcssa.i, %.lr.ph52.i.preheader ], [ %i.ab, %.lr.ph52.i.prol ]
  %.13849.i.unr = phi ptr [ %.037.lcssa.i, %.lr.ph52.i.preheader ], [ %i.z, %.lr.ph52.i.prol ]
  %.14048.i.unr = phi i32 [ %.039.lcssa.i, %.lr.ph52.i.preheader ], [ %i.y, %.lr.ph52.i.prol ]
  %i.ac = icmp ult i32 %.039.lcssa.i, 25
  br i1 %i.ac, label %_ZN4ojph5localL21avx512_deinterleave64EPdS1_S1_i.exit, label %.lr.ph52.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.044.i = phi ptr [ %i.aq, %.lr.ph.i ], [ %.044.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.03543.i = phi ptr [ %i.ar, %.lr.ph.i ], [ %.03543.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.03742.i = phi ptr [ %i.al, %.lr.ph.i ], [ %.03742.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.03941.i = phi i32 [ %i.ap, %.lr.ph.i ], [ %.03941.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %i.ad = load <8 x double>, ptr %.03742.i, align 64, !tbaa !13 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.03742.i, i64 128 ; 2 uses
  %i.af = load <8 x double>, ptr %i.ae, align 64, !tbaa !13 ; 2 uses
  %i.ag = shufflevector <8 x double> %i.ad, <8 x double> %i.af, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.ah = shufflevector <8 x double> %i.ad, <8 x double> %i.af, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  store <8 x double> %i.ag, ptr %.044.i, align 64, !tbaa !13
  store <8 x double> %i.ah, ptr %.03543.i, align 64, !tbaa !13
  %i.ai = getelementptr inbounds nuw i8, ptr %.044.i, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %.03543.i, i64 64
  %i.ak = load <8 x double>, ptr %i.ae, align 64, !tbaa !13 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.03742.i, i64 256 ; 3 uses
  %i.am = load <8 x double>, ptr %i.al, align 64, !tbaa !13 ; 2 uses
  %i.an = shufflevector <8 x double> %i.ak, <8 x double> %i.am, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.ao = shufflevector <8 x double> %i.ak, <8 x double> %i.am, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  store <8 x double> %i.an, ptr %i.ai, align 64, !tbaa !13
  store <8 x double> %i.ao, ptr %i.aj, align 64, !tbaa !13
  %i.ap = add nsw i32 %.03941.i, -32              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.044.i, i64 128 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.03543.i, i64 128 ; 2 uses
  %i.as = icmp sgt i32 %.03941.i, 40
  br i1 %i.as, label %.lr.ph.i, label %.preheader.i, !llvm.loop !95

.lr.ph52.i:                                       ; preds = %.lr.ph52.i.prol.loopexit, %.lr.ph52.i
  %.151.i = phi ptr [ %i.bq, %.lr.ph52.i ], [ %.151.i.unr, %.lr.ph52.i.prol.loopexit ] ; 5 uses
  %.13650.i = phi ptr [ %i.br, %.lr.ph52.i ], [ %.13650.i.unr, %.lr.ph52.i.prol.loopexit ] ; 5 uses
  %.13849.i = phi ptr [ %i.bp, %.lr.ph52.i ], [ %.13849.i.unr, %.lr.ph52.i.prol.loopexit ] ; 5 uses
  %.14048.i = phi i32 [ %i.bo, %.lr.ph52.i ], [ %.14048.i.unr, %.lr.ph52.i.prol.loopexit ] ; 2 uses
  %i.at = load <8 x double>, ptr %.13849.i, align 32, !tbaa !13 ; 2 uses
  %i.au = shufflevector <8 x double> %i.at, <8 x double> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.av = shufflevector <8 x double> %i.at, <8 x double> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  store <4 x double> %i.au, ptr %.151.i, align 32, !tbaa !13
  store <4 x double> %i.av, ptr %.13650.i, align 32, !tbaa !13
  %i.aw = getelementptr inbounds nuw i8, ptr %.13849.i, i64 64
  %i.ax = getelementptr inbounds nuw i8, ptr %.151.i, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %.13650.i, i64 32
  %i.az = load <8 x double>, ptr %i.aw, align 32, !tbaa !13 ; 2 uses
  %i.ba = shufflevector <8 x double> %i.az, <8 x double> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.bb = shufflevector <8 x double> %i.az, <8 x double> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  store <4 x double> %i.ba, ptr %i.ax, align 32, !tbaa !13
  store <4 x double> %i.bb, ptr %i.ay, align 32, !tbaa !13
  %i.bc = getelementptr inbounds nuw i8, ptr %.13849.i, i64 128
  %i.bd = getelementptr inbounds nuw i8, ptr %.151.i, i64 64
  %i.be = getelementptr inbounds nuw i8, ptr %.13650.i, i64 64
  %i.bf = load <8 x double>, ptr %i.bc, align 32, !tbaa !13 ; 2 uses
  %i.bg = shufflevector <8 x double> %i.bf, <8 x double> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.bh = shufflevector <8 x double> %i.bf, <8 x double> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  store <4 x double> %i.bg, ptr %i.bd, align 32, !tbaa !13
  store <4 x double> %i.bh, ptr %i.be, align 32, !tbaa !13
  %i.bi = getelementptr inbounds nuw i8, ptr %.13849.i, i64 192
  %i.bj = getelementptr inbounds nuw i8, ptr %.151.i, i64 96
  %i.bk = getelementptr inbounds nuw i8, ptr %.13650.i, i64 96
  %i.bl = load <8 x double>, ptr %i.bi, align 32, !tbaa !13 ; 2 uses
  %i.bm = shufflevector <8 x double> %i.bl, <8 x double> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.bn = shufflevector <8 x double> %i.bl, <8 x double> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  store <4 x double> %i.bm, ptr %i.bj, align 32, !tbaa !13
  store <4 x double> %i.bn, ptr %i.bk, align 32, !tbaa !13
  %i.bo = add nsw i32 %.14048.i, -32
  %i.bp = getelementptr inbounds nuw i8, ptr %.13849.i, i64 256
  %i.bq = getelementptr inbounds nuw i8, ptr %.151.i, i64 128
  %i.br = getelementptr inbounds nuw i8, ptr %.13650.i, i64 128
  %i.bs = icmp sgt i32 %.14048.i, 32
  br i1 %i.bs, label %.lr.ph52.i, label %_ZN4ojph5localL21avx512_deinterleave64EPdS1_S1_i.exit, !llvm.loop !96

_ZN4ojph5localL21avx512_deinterleave64EPdS1_S1_i.exit: ; preds = %.lr.ph52.i.prol.loopexit, %.lr.ph52.i, %.preheader.i
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bu = load i8, ptr %i.bt, align 8, !tbaa !22  ; 2 uses
  %.not269 = icmp eq i8 %i.bu, 0
  br i1 %.not269, label %.loopexit232, label %.lr.ph276

.lr.ph276:                                        ; preds = %_ZN4ojph5localL21avx512_deinterleave64EPdS1_S1_i.exit
  %not. = xor i1 %5, true
  %i.bv = zext i1 %not. to i32
  %i.bw = add i32 %4, %i.bv
  %i.bx = lshr i32 %i.bw, 1
  %i.by = zext i1 %5 to i32
  %i.bz = add i32 %4, %i.by
  %i.ca = lshr i32 %i.bz, 1
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !13
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !13
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cg = zext i8 %i.bu to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph276, %.loopexit
  %indvars.iv = phi i64 [ %i.cg, %.lr.ph276 ], [ %i.ch, %.loopexit ]
  %.0.in275 = phi i1 [ %5, %.lr.ph276 ], [ %i.nh, %.loopexit ] ; 5 uses
  %.0186274 = phi ptr [ %i.ce, %.lr.ph276 ], [ %.0187273, %.loopexit ] ; 23 uses
  %.0187273 = phi ptr [ %i.cc, %.lr.ph276 ], [ %.0186274, %.loopexit ] ; 27 uses
  %.0188272 = phi i32 [ %i.ca, %.lr.ph276 ], [ %.0189271, %.loopexit ] ; 3 uses
  %.0189271 = phi i32 [ %i.bx, %.lr.ph276 ], [ %.0188272, %.loopexit ] ; 25 uses
  %i.ch = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.ci = load ptr, ptr %i.cf, align 8, !tbaa !24
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.ch ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.cl = load i16, ptr %i.ck, align 4, !tbaa !13 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 2
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !13 ; 2 uses
  %i.co = load i8, ptr %i.cj, align 4, !tbaa !13  ; 6 uses
  %i.cp = sext i16 %i.cn to i64                   ; 11 uses
  %i.cq = insertelement <8 x i64> poison, i64 %i.cp, i64 0
  %i.cr = shufflevector <8 x i64> %i.cq, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.cs = load i64, ptr %.0187273, align 8, !tbaa !27
  %i.ct = getelementptr inbounds i8, ptr %.0187273, i64 -8
  store i64 %i.cs, ptr %i.ct, align 8, !tbaa !27
  %i.cu = add nsw i32 %.0188272, -1
  %i.cv = zext i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %.0187273, i64 %i.cv
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !27
  %i.cy = zext nneg i32 %.0188272 to i64
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.0187273, i64 %i.cy
  store i64 %i.cx, ptr %i.cz, align 8, !tbaa !27
  %i.da = icmp eq i16 %i.cl, 1
  br i1 %i.da, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %.not282 = icmp eq i32 %.0189271, 0             ; 2 uses
  br i1 %.0.in275, label %.preheader, label %.preheader218

.preheader218:                                    ; preds = %bb.d
  br i1 %.not282, label %.loopexit, label %.lr.ph264

.lr.ph264:                                        ; preds = %.preheader218
  %i.db = zext i8 %i.co to i32
  br label %bb.f

.preheader:                                       ; preds = %bb.d
  br i1 %.not282, label %.loopexit, label %.lr.ph268

.lr.ph268:                                        ; preds = %.preheader
  %i.dc = zext i8 %i.co to i32
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph268, %bb.e
  %.0192267 = phi ptr [ %.0187273, %.lr.ph268 ], [ %i.dm, %bb.e ] ; 3 uses
  %.0194266 = phi ptr [ %.0186274, %.lr.ph268 ], [ %i.dn, %bb.e ] ; 3 uses
  %.0202265 = phi i32 [ %.0189271, %.lr.ph268 ], [ %i.dl, %bb.e ] ; 2 uses
  %i.dd = load <8 x i64>, ptr %.0192267, align 64, !tbaa !13
  %i.de = getelementptr inbounds nuw i8, ptr %.0192267, i64 8
  %i.df = load <8 x i64>, ptr %i.de, align 8, !tbaa !13
  %i.dg = load <8 x i64>, ptr %.0194266, align 64, !tbaa !13
  %i.dh = add <8 x i64> %i.dd, %i.cr
  %i.di = add <8 x i64> %i.dh, %i.df
  %i.dj = tail call noundef <8 x i64> @llvm.x86.avx512.psrai.q.512(<8 x i64> %i.di, i32 range(i32 0, 256) %i.dc)
  %i.dk = add <8 x i64> %i.dj, %i.dg
  store <8 x i64> %i.dk, ptr %.0194266, align 64, !tbaa !13
  %i.dl = add nsw i32 %.0202265, -8
  %i.dm = getelementptr inbounds nuw i8, ptr %.0192267, i64 64
  %i.dn = getelementptr inbounds nuw i8, ptr %.0194266, i64 64
  %i.do = icmp sgt i32 %.0202265, 8
  br i1 %i.do, label %bb.e, label %.loopexit, !llvm.loop !97

bb.f:                                             ; preds = %.lr.ph264, %bb.f
  %.1193263 = phi ptr [ %.0187273, %.lr.ph264 ], [ %i.dy, %bb.f ] ; 3 uses
  %.1195262 = phi ptr [ %.0186274, %.lr.ph264 ], [ %i.dz, %bb.f ] ; 3 uses
  %.1203261 = phi i32 [ %.0189271, %.lr.ph264 ], [ %i.dx, %bb.f ] ; 2 uses
  %i.dp = load <8 x i64>, ptr %.1193263, align 64, !tbaa !13
  %i.dq = getelementptr inbounds i8, ptr %.1193263, i64 -8
  %i.dr = load <8 x i64>, ptr %i.dq, align 8, !tbaa !13
  %i.ds = load <8 x i64>, ptr %.1195262, align 64, !tbaa !13
  %i.dt = add <8 x i64> %i.dp, %i.cr
  %i.du = add <8 x i64> %i.dt, %i.dr
  %i.dv = tail call noundef <8 x i64> @llvm.x86.avx512.psrai.q.512(<8 x i64> %i.du, i32 range(i32 0, 256) %i.db)
  %i.dw = add <8 x i64> %i.dv, %i.ds
  store <8 x i64> %i.dw, ptr %.1195262, align 64, !tbaa !13
  %i.dx = add nsw i32 %.1203261, -8
  %i.dy = getelementptr inbounds nuw i8, ptr %.1193263, i64 64
  %i.dz = getelementptr inbounds nuw i8, ptr %.1195262, i64 64
  %i.ea = icmp sgt i32 %.1203261, 8
  br i1 %i.ea, label %bb.f, label %.loopexit, !llvm.loop !98

bb.g:                                             ; preds = %bb.c
  %i.eb = icmp eq i16 %i.cl, -1                   ; 2 uses
  %i.ec = icmp eq i16 %i.cn, 1
  %or.cond = and i1 %i.eb, %i.ec
  %i.ed = zext i8 %i.co to i32                    ; 2 uses
  %i.ee = icmp eq i8 %i.co, 1
  %or.cond4 = select i1 %or.cond, i1 %i.ee, i1 false
  %.not280 = icmp eq i32 %.0189271, 0             ; 6 uses
  br i1 %or.cond4, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  br i1 %.0.in275, label %.preheader220, label %.preheader222

.preheader222:                                    ; preds = %bb.h
  br i1 %.not280, label %.loopexit, label %.lr.ph256

.preheader220:                                    ; preds = %bb.h
  br i1 %.not280, label %.loopexit, label %.lr.ph260

.lr.ph260:                                        ; preds = %.preheader220, %.lr.ph260
  %.2259 = phi ptr [ %i.en, %.lr.ph260 ], [ %.0187273, %.preheader220 ] ; 3 uses
  %.2196258 = phi ptr [ %i.eo, %.lr.ph260 ], [ %.0186274, %.preheader220 ] ; 3 uses
  %.0204257 = phi i32 [ %i.em, %.lr.ph260 ], [ %.0189271, %.preheader220 ] ; 2 uses
  %i.ef = load <8 x i64>, ptr %.2259, align 64, !tbaa !13
  %i.eg = getelementptr inbounds nuw i8, ptr %.2259, i64 8
  %i.eh = load <8 x i64>, ptr %i.eg, align 8, !tbaa !13
  %i.ei = load <8 x i64>, ptr %.2196258, align 64, !tbaa !13
  %i.ej = add <8 x i64> %i.eh, %i.ef
  %i.ek = ashr <8 x i64> %i.ej, splat (i64 1)
  %i.el = sub <8 x i64> %i.ei, %i.ek
  store <8 x i64> %i.el, ptr %.2196258, align 64, !tbaa !13
  %i.em = add nsw i32 %.0204257, -8
  %i.en = getelementptr inbounds nuw i8, ptr %.2259, i64 64
  %i.eo = getelementptr inbounds nuw i8, ptr %.2196258, i64 64
  %i.ep = icmp sgt i32 %.0204257, 8
  br i1 %i.ep, label %.lr.ph260, label %.loopexit, !llvm.loop !99

.lr.ph256:                                        ; preds = %.preheader222, %.lr.ph256
  %.3255 = phi ptr [ %i.ey, %.lr.ph256 ], [ %.0187273, %.preheader222 ] ; 3 uses
  %.3197254 = phi ptr [ %i.ez, %.lr.ph256 ], [ %.0186274, %.preheader222 ] ; 3 uses
  %.1205253 = phi i32 [ %i.ex, %.lr.ph256 ], [ %.0189271, %.preheader222 ] ; 2 uses
  %i.eq = load <8 x i64>, ptr %.3255, align 64, !tbaa !13
  %i.er = getelementptr inbounds i8, ptr %.3255, i64 -8
  %i.es = load <8 x i64>, ptr %i.er, align 8, !tbaa !13
  %i.et = load <8 x i64>, ptr %.3197254, align 64, !tbaa !13
  %i.eu = add <8 x i64> %i.es, %i.eq
  %i.ev = ashr <8 x i64> %i.eu, splat (i64 1)
  %i.ew = sub <8 x i64> %i.et, %i.ev
  store <8 x i64> %i.ew, ptr %.3197254, align 64, !tbaa !13
  %i.ex = add nsw i32 %.1205253, -8
  %i.ey = getelementptr inbounds nuw i8, ptr %.3255, i64 64
  %i.ez = getelementptr inbounds nuw i8, ptr %.3197254, i64 64
  %i.fa = icmp sgt i32 %.1205253, 8
  br i1 %i.fa, label %.lr.ph256, label %.loopexit, !llvm.loop !100

bb.i:                                             ; preds = %bb.g
  br i1 %i.eb, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  br i1 %.0.in275, label %.preheader224, label %.preheader226

.preheader226:                                    ; preds = %bb.j
  br i1 %.not280, label %.loopexit, label %.lr.ph248

.preheader224:                                    ; preds = %bb.j
  br i1 %.not280, label %.loopexit, label %.lr.ph252

.lr.ph252:                                        ; preds = %.preheader224, %.lr.ph252
  %.0191251 = phi i32 [ %i.fj, %.lr.ph252 ], [ %.0189271, %.preheader224 ] ; 2 uses
  %.4250 = phi ptr [ %i.fk, %.lr.ph252 ], [ %.0187273, %.preheader224 ] ; 3 uses
  %.4198249 = phi ptr [ %i.fl, %.lr.ph252 ], [ %.0186274, %.preheader224 ] ; 3 uses
  %i.fb = load <8 x i64>, ptr %.4250, align 64, !tbaa !13
  %i.fc = getelementptr inbounds nuw i8, ptr %.4250, i64 8
  %i.fd = load <8 x i64>, ptr %i.fc, align 8, !tbaa !13
  %i.fe = load <8 x i64>, ptr %.4198249, align 64, !tbaa !13
  %i.ff = add <8 x i64> %i.fb, %i.fd
  %i.fg = sub <8 x i64> %i.cr, %i.ff
  %i.fh = tail call noundef <8 x i64> @llvm.x86.avx512.psrai.q.512(<8 x i64> %i.fg, i32 range(i32 0, 256) %i.ed)
  %i.fi = add <8 x i64> %i.fh, %i.fe
  store <8 x i64> %i.fi, ptr %.4198249, align 64, !tbaa !13
  %i.fj = add nsw i32 %.0191251, -8
  %i.fk = getelementptr inbounds nuw i8, ptr %.4250, i64 64
  %i.fl = getelementptr inbounds nuw i8, ptr %.4198249, i64 64
  %i.fm = icmp sgt i32 %.0191251, 8
  br i1 %i.fm, label %.lr.ph252, label %.loopexit, !llvm.loop !101

.lr.ph248:                                        ; preds = %.preheader226, %.lr.ph248
  %.1247 = phi i32 [ %i.fv, %.lr.ph248 ], [ %.0189271, %.preheader226 ] ; 2 uses
  %.5246 = phi ptr [ %i.fw, %.lr.ph248 ], [ %.0187273, %.preheader226 ] ; 3 uses
  %.5199245 = phi ptr [ %i.fx, %.lr.ph248 ], [ %.0186274, %.preheader226 ] ; 3 uses
  %i.fn = load <8 x i64>, ptr %.5246, align 64, !tbaa !13
  %i.fo = getelementptr inbounds i8, ptr %.5246, i64 -8
  %i.fp = load <8 x i64>, ptr %i.fo, align 8, !tbaa !13
  %i.fq = load <8 x i64>, ptr %.5199245, align 64, !tbaa !13
  %i.fr = add <8 x i64> %i.fn, %i.fp
  %i.fs = sub <8 x i64> %i.cr, %i.fr
  %i.ft = tail call noundef <8 x i64> @llvm.x86.avx512.psrai.q.512(<8 x i64> %i.fs, i32 range(i32 0, 256) %i.ed)
  %i.fu = add <8 x i64> %i.ft, %i.fq
  store <8 x i64> %i.fu, ptr %.5199245, align 64, !tbaa !13
  %i.fv = add nsw i32 %.1247, -8
  %i.fw = getelementptr inbounds nuw i8, ptr %.5246, i64 64
  %i.fx = getelementptr inbounds nuw i8, ptr %.5199245, i64 64
  %i.fy = icmp sgt i32 %.1247, 8
  br i1 %i.fy, label %.lr.ph248, label %.loopexit, !llvm.loop !102

bb.k:                                             ; preds = %bb.i
  br i1 %.0.in275, label %.preheader228, label %.preheader230

.preheader230:                                    ; preds = %bb.k
  br i1 %.not280, label %.loopexit, label %iter.check416

iter.check416:                                    ; preds = %.preheader230
  %i.fz = sext i16 %i.cl to i64                   ; 5 uses
  %i.ga = zext nneg i8 %i.co to i64               ; 5 uses
  %i.gb = zext nneg i32 %.0189271 to i64          ; 5 uses
  %min.iters.check378 = icmp samesign ult i32 %.0189271, 8
  br i1 %min.iters.check378, label %vec.epilog.scalar.ph418.preheader, label %vector.memcheck379

vector.memcheck379:                               ; preds = %iter.check416
  %i.gc = add nsw i32 %.0189271, -1
  %i.gd = zext i32 %i.gc to i64
  %i.ge = shl nuw nsw i64 %i.gd, 3
  %i.gf = add nuw nsw i64 %i.ge, 8                ; 2 uses
  %i.gg = getelementptr i8, ptr %.0186274, i64 %i.gf
  %i.gh = getelementptr i8, ptr %.0187273, i64 -8
  %i.gi = getelementptr i8, ptr %.0187273, i64 %i.gf
  %bound0383 = icmp ult ptr %.0186274, %i.gi
  %bound1384 = icmp ult ptr %i.gh, %i.gg
  %found.conflict385 = and i1 %bound0383, %bound1384
  br i1 %found.conflict385, label %vec.epilog.scalar.ph418.preheader, label %vector.main.loop.iter.check387

vector.main.loop.iter.check387:                   ; preds = %vector.memcheck379
  %min.iters.check388 = icmp samesign ult i32 %.0189271, 32
  br i1 %min.iters.check388, label %vec.epilog.ph420, label %vector.ph389

vector.ph389:                                     ; preds = %vector.main.loop.iter.check387
  %i.gj = and i64 %i.gb, 24
  %n.vec390 = and i64 %i.gb, 2147483616           ; 5 uses
  %i.gk = trunc nuw nsw i64 %n.vec390 to i32
  %i.gl = sub nsw i32 %.0189271, %i.gk
  %i.gm = shl nuw nsw i64 %n.vec390, 3            ; 2 uses
  %i.gn = getelementptr i8, ptr %.0187273, i64 %i.gm
  %i.go = getelementptr i8, ptr %.0186274, i64 %i.gm
  %broadcast.splatinsert391 = insertelement <8 x i64> poison, i64 %i.fz, i64 0
  %broadcast.splat392 = shufflevector <8 x i64> %broadcast.splatinsert391, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert393 = insertelement <8 x i64> poison, i64 %i.ga, i64 0
  %broadcast.splat394 = shufflevector <8 x i64> %broadcast.splatinsert393, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert395 = insertelement <8 x i64> poison, i64 %i.cp, i64 0
  %broadcast.splat396 = shufflevector <8 x i64> %broadcast.splatinsert395, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body397

vector.body397:                                   ; preds = %vector.ph389, %vector.body397
  %index398 = phi i64 [ 0, %vector.ph389 ], [ %index.next413, %vector.body397 ] ; 2 uses
  %i.gp = shl i64 %index398, 3                    ; 2 uses
  %next.gep399 = getelementptr i8, ptr %.0187273, i64 %i.gp ; 8 uses
  %next.gep400 = getelementptr i8, ptr %.0186274, i64 %i.gp ; 5 uses
  %i.gq = getelementptr inbounds i8, ptr %next.gep399, i64 -8
  %i.gr = getelementptr inbounds nuw i8, ptr %next.gep399, i64 56
  %i.gs = getelementptr inbounds nuw i8, ptr %next.gep399, i64 120
  %i.gt = getelementptr inbounds nuw i8, ptr %next.gep399, i64 184
  %wide.load401 = load <8 x i64>, ptr %i.gq, align 8, !tbaa !27, !alias.scope !116
  %wide.load402 = load <8 x i64>, ptr %i.gr, align 8, !tbaa !27, !alias.scope !116
  %wide.load403 = load <8 x i64>, ptr %i.gs, align 8, !tbaa !27, !alias.scope !116
  %wide.load404 = load <8 x i64>, ptr %i.gt, align 8, !tbaa !27, !alias.scope !116
  %i.gu = getelementptr i8, ptr %next.gep399, i64 64
  %i.gv = getelementptr i8, ptr %next.gep399, i64 128
  %i.gw = getelementptr i8, ptr %next.gep399, i64 192
  %wide.load405 = load <8 x i64>, ptr %next.gep399, align 8, !tbaa !27, !alias.scope !116
  %wide.load406 = load <8 x i64>, ptr %i.gu, align 8, !tbaa !27, !alias.scope !116
  %wide.load407 = load <8 x i64>, ptr %i.gv, align 8, !tbaa !27, !alias.scope !116
  %wide.load408 = load <8 x i64>, ptr %i.gw, align 8, !tbaa !27, !alias.scope !116
  %i.gx = add nsw <8 x i64> %wide.load405, %wide.load401
  %i.gy = add nsw <8 x i64> %wide.load406, %wide.load402
  %i.gz = add nsw <8 x i64> %wide.load407, %wide.load403
  %i.ha = add nsw <8 x i64> %wide.load408, %wide.load404
  %i.hb = mul nsw <8 x i64> %i.gx, %broadcast.splat392
  %i.hc = mul nsw <8 x i64> %i.gy, %broadcast.splat392
  %i.hd = mul nsw <8 x i64> %i.gz, %broadcast.splat392
  %i.he = mul nsw <8 x i64> %i.ha, %broadcast.splat392
  %i.hf = add nsw <8 x i64> %i.hb, %broadcast.splat396
  %i.hg = add nsw <8 x i64> %i.hc, %broadcast.splat396
  %i.hh = add nsw <8 x i64> %i.hd, %broadcast.splat396
  %i.hi = add nsw <8 x i64> %i.he, %broadcast.splat396
  %i.hj = ashr <8 x i64> %i.hf, %broadcast.splat394
  %i.hk = ashr <8 x i64> %i.hg, %broadcast.splat394
  %i.hl = ashr <8 x i64> %i.hh, %broadcast.splat394
  %i.hm = ashr <8 x i64> %i.hi, %broadcast.splat394
  %i.hn = getelementptr i8, ptr %next.gep400, i64 64 ; 2 uses
  %i.ho = getelementptr i8, ptr %next.gep400, i64 128 ; 2 uses
  %i.hp = getelementptr i8, ptr %next.gep400, i64 192 ; 2 uses
  %wide.load409 = load <8 x i64>, ptr %next.gep400, align 8, !tbaa !27, !alias.scope !117, !noalias !116
  %wide.load410 = load <8 x i64>, ptr %i.hn, align 8, !tbaa !27, !alias.scope !117, !noalias !116
  %wide.load411 = load <8 x i64>, ptr %i.ho, align 8, !tbaa !27, !alias.scope !117, !noalias !116
  %wide.load412 = load <8 x i64>, ptr %i.hp, align 8, !tbaa !27, !alias.scope !117, !noalias !116
  %i.hq = add nsw <8 x i64> %i.hj, %wide.load409
  %i.hr = add nsw <8 x i64> %i.hk, %wide.load410
  %i.hs = add nsw <8 x i64> %i.hl, %wide.load411
  %i.ht = add nsw <8 x i64> %i.hm, %wide.load412
  store <8 x i64> %i.hq, ptr %next.gep400, align 8, !tbaa !27, !alias.scope !117, !noalias !116
  store <8 x i64> %i.hr, ptr %i.hn, align 8, !tbaa !27, !alias.scope !117, !noalias !116
  store <8 x i64> %i.hs, ptr %i.ho, align 8, !tbaa !27, !alias.scope !117, !noalias !116
  store <8 x i64> %i.ht, ptr %i.hp, align 8, !tbaa !27, !alias.scope !117, !noalias !116
  %index.next413 = add nuw i64 %index398, 32      ; 2 uses
  %i.hu = icmp eq i64 %index.next413, %n.vec390
  br i1 %i.hu, label %middle.block414, label %vector.body397, !llvm.loop !106

middle.block414:                                  ; preds = %vector.body397
  %cmp.n415 = icmp eq i64 %n.vec390, %i.gb
  br i1 %cmp.n415, label %.loopexit, label %vec.epilog.iter.check417

vec.epilog.iter.check417:                         ; preds = %middle.block414
  %min.epilog.iters.check419 = icmp eq i64 %i.gj, 0
  br i1 %min.epilog.iters.check419, label %vec.epilog.scalar.ph418.preheader, label %vec.epilog.ph420, !prof !33

vec.epilog.ph420:                                 ; preds = %vector.main.loop.iter.check387, %vec.epilog.iter.check417
  %vec.epilog.resume.val421 = phi i64 [ %n.vec390, %vec.epilog.iter.check417 ], [ 0, %vector.main.loop.iter.check387 ]
  %n.vec422 = and i64 %i.gb, 2147483640           ; 4 uses
  %i.hv = trunc nuw nsw i64 %n.vec422 to i32
  %i.hw = sub nsw i32 %.0189271, %i.hv
  %i.hx = shl nuw nsw i64 %n.vec422, 3            ; 2 uses
  %i.hy = getelementptr i8, ptr %.0187273, i64 %i.hx
  %i.hz = getelementptr i8, ptr %.0186274, i64 %i.hx
  %broadcast.splatinsert423 = insertelement <8 x i64> poison, i64 %i.fz, i64 0
  %broadcast.splat424 = shufflevector <8 x i64> %broadcast.splatinsert423, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert425 = insertelement <8 x i64> poison, i64 %i.ga, i64 0
  %broadcast.splat426 = shufflevector <8 x i64> %broadcast.splatinsert425, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert427 = insertelement <8 x i64> poison, i64 %i.cp, i64 0
  %broadcast.splat428 = shufflevector <8 x i64> %broadcast.splatinsert427, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body429

vec.epilog.vector.body429:                        ; preds = %vec.epilog.vector.body429, %vec.epilog.ph420
  %index430 = phi i64 [ %vec.epilog.resume.val421, %vec.epilog.ph420 ], [ %index.next436, %vec.epilog.vector.body429 ] ; 2 uses
  %i.ia = shl i64 %index430, 3                    ; 2 uses
  %next.gep431 = getelementptr i8, ptr %.0187273, i64 %i.ia ; 2 uses
  %next.gep432 = getelementptr i8, ptr %.0186274, i64 %i.ia ; 2 uses
  %i.ib = getelementptr inbounds i8, ptr %next.gep431, i64 -8
  %wide.load433 = load <8 x i64>, ptr %i.ib, align 8, !tbaa !27, !alias.scope !116
  %wide.load434 = load <8 x i64>, ptr %next.gep431, align 8, !tbaa !27, !alias.scope !116
  %i.ic = add nsw <8 x i64> %wide.load434, %wide.load433
  %i.id = mul nsw <8 x i64> %i.ic, %broadcast.splat424
  %i.ie = add nsw <8 x i64> %i.id, %broadcast.splat428
  %i.if = ashr <8 x i64> %i.ie, %broadcast.splat426
  %wide.load435 = load <8 x i64>, ptr %next.gep432, align 8, !tbaa !27, !alias.scope !117, !noalias !116
  %i.ig = add nsw <8 x i64> %i.if, %wide.load435
  store <8 x i64> %i.ig, ptr %next.gep432, align 8, !tbaa !27, !alias.scope !117, !noalias !116
  %index.next436 = add nuw i64 %index430, 8       ; 2 uses
  %i.ih = icmp eq i64 %index.next436, %n.vec422
  br i1 %i.ih, label %vec.epilog.middle.block437, label %vec.epilog.vector.body429, !llvm.loop !107

vec.epilog.middle.block437:                       ; preds = %vec.epilog.vector.body429
  %cmp.n438 = icmp eq i64 %n.vec422, %i.gb
  br i1 %cmp.n438, label %.loopexit, label %vec.epilog.scalar.ph418.preheader

vec.epilog.scalar.ph418.preheader:                ; preds = %iter.check416, %vector.memcheck379, %vec.epilog.iter.check417, %vec.epilog.middle.block437
  %.0184239.ph = phi i32 [ %.0189271, %iter.check416 ], [ %.0189271, %vector.memcheck379 ], [ %i.gl, %vec.epilog.iter.check417 ], [ %i.hw, %vec.epilog.middle.block437 ] ; 4 uses
  %.7238.ph = phi ptr [ %.0187273, %iter.check416 ], [ %.0187273, %vector.memcheck379 ], [ %i.gn, %vec.epilog.iter.check417 ], [ %i.hy, %vec.epilog.middle.block437 ] ; 4 uses
  %.7201237.ph = phi ptr [ %.0186274, %iter.check416 ], [ %.0186274, %vector.memcheck379 ], [ %i.go, %vec.epilog.iter.check417 ], [ %i.hz, %vec.epilog.middle.block437 ] ; 4 uses
  %xtraiter454 = and i32 %.0184239.ph, 1
  %lcmp.mod455.not = icmp eq i32 %xtraiter454, 0
  br i1 %lcmp.mod455.not, label %vec.epilog.scalar.ph418.prol.loopexit, label %vec.epilog.scalar.ph418.prol

vec.epilog.scalar.ph418.prol:                     ; preds = %vec.epilog.scalar.ph418.preheader
  %i.ii = getelementptr inbounds i8, ptr %.7238.ph, i64 -8
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !27
  %i.ik = load i64, ptr %.7238.ph, align 8, !tbaa !27
  %i.il = add nsw i64 %i.ik, %i.ij
  %i.im = mul nsw i64 %i.il, %i.fz
  %i.in = add nsw i64 %i.im, %i.cp
  %i.io = ashr i64 %i.in, %i.ga
  %i.ip = load i64, ptr %.7201237.ph, align 8, !tbaa !27
  %i.iq = add nsw i64 %i.io, %i.ip
  store i64 %i.iq, ptr %.7201237.ph, align 8, !tbaa !27
  %i.ir = add nsw i32 %.0184239.ph, -1
  %i.is = getelementptr inbounds nuw i8, ptr %.7238.ph, i64 8
  %i.it = getelementptr inbounds nuw i8, ptr %.7201237.ph, i64 8
  br label %vec.epilog.scalar.ph418.prol.loopexit

vec.epilog.scalar.ph418.prol.loopexit:            ; preds = %vec.epilog.scalar.ph418.prol, %vec.epilog.scalar.ph418.preheader
  %.0184239.unr = phi i32 [ %.0184239.ph, %vec.epilog.scalar.ph418.preheader ], [ %i.ir, %vec.epilog.scalar.ph418.prol ]
  %.7238.unr = phi ptr [ %.7238.ph, %vec.epilog.scalar.ph418.preheader ], [ %i.is, %vec.epilog.scalar.ph418.prol ]
  %.7201237.unr = phi ptr [ %.7201237.ph, %vec.epilog.scalar.ph418.preheader ], [ %i.it, %vec.epilog.scalar.ph418.prol ]
  %i.iu = icmp eq i32 %.0184239.ph, 1
  br i1 %i.iu, label %.loopexit, label %vec.epilog.scalar.ph418

.preheader228:                                    ; preds = %bb.k
  br i1 %.not280, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %.preheader228
  %i.iv = sext i16 %i.cl to i64                   ; 5 uses
  %i.iw = zext nneg i8 %i.co to i64               ; 5 uses
  %i.ix = zext nneg i32 %.0189271 to i64          ; 5 uses
  %min.iters.check = icmp samesign ult i32 %.0189271, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.iy = add nsw i32 %.0189271, -1
  %i.iz = zext i32 %i.iy to i64
  %i.ja = shl nuw nsw i64 %i.iz, 3                ; 2 uses
  %i.jb = getelementptr i8, ptr %.0186274, i64 %i.ja
  %i.jc = getelementptr i8, ptr %i.jb, i64 8
  %i.jd = getelementptr i8, ptr %.0187273, i64 %i.ja
  %i.je = getelementptr i8, ptr %i.jd, i64 16
  %bound0328 = icmp ult ptr %.0186274, %i.je
  %bound1329 = icmp ult ptr %.0187273, %i.jc
  %found.conflict330 = and i1 %bound0328, %bound1329
  br i1 %found.conflict330, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check331 = icmp samesign ult i32 %.0189271, 32
  br i1 %min.iters.check331, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.jf = and i64 %i.ix, 24
  %n.vec = and i64 %i.ix, 2147483616              ; 5 uses
  %i.jg = trunc nuw nsw i64 %n.vec to i32
  %i.jh = sub nsw i32 %.0189271, %i.jg
  %i.ji = shl nuw nsw i64 %n.vec, 3               ; 2 uses
  %i.jj = getelementptr i8, ptr %.0187273, i64 %i.ji
  %i.jk = getelementptr i8, ptr %.0186274, i64 %i.ji
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.iv, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert332 = insertelement <8 x i64> poison, i64 %i.iw, i64 0
  %broadcast.splat333 = shufflevector <8 x i64> %broadcast.splatinsert332, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert334 = insertelement <8 x i64> poison, i64 %i.cp, i64 0
  %broadcast.splat335 = shufflevector <8 x i64> %broadcast.splatinsert334, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.jl = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.0187273, i64 %i.jl ; 8 uses
  %next.gep336 = getelementptr i8, ptr %.0186274, i64 %i.jl ; 5 uses
  %i.jm = getelementptr i8, ptr %next.gep, i64 64
  %i.jn = getelementptr i8, ptr %next.gep, i64 128
  %i.jo = getelementptr i8, ptr %next.gep, i64 192
  %wide.load = load <8 x i64>, ptr %next.gep, align 8, !tbaa !27, !alias.scope !118
  %wide.load337.a = load <8 x i64>, ptr %i.jm, align 8, !tbaa !27, !alias.scope !118
  %wide.load338.a = load <8 x i64>, ptr %i.jn, align 8, !tbaa !27, !alias.scope !118
  %wide.load339.a = load <8 x i64>, ptr %i.jo, align 8, !tbaa !27, !alias.scope !118
  %i.jp = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.jq = getelementptr inbounds nuw i8, ptr %next.gep, i64 72
  %i.jr = getelementptr inbounds nuw i8, ptr %next.gep, i64 136
  %i.js = getelementptr inbounds nuw i8, ptr %next.gep, i64 200
  %wide.load340 = load <8 x i64>, ptr %i.jp, align 8, !tbaa !27, !alias.scope !118
  %wide.load341 = load <8 x i64>, ptr %i.jq, align 8, !tbaa !27, !alias.scope !118
  %wide.load342 = load <8 x i64>, ptr %i.jr, align 8, !tbaa !27, !alias.scope !118
  %wide.load343 = load <8 x i64>, ptr %i.js, align 8, !tbaa !27, !alias.scope !118
  %i.jt = add nsw <8 x i64> %wide.load340, %wide.load
  %i.ju = add nsw <8 x i64> %wide.load341, %wide.load337.a
  %i.jv = add nsw <8 x i64> %wide.load342, %wide.load338.a
  %i.jw = add nsw <8 x i64> %wide.load343, %wide.load339.a
  %i.jx = mul nsw <8 x i64> %i.jt, %broadcast.splat
  %i.jy = mul nsw <8 x i64> %i.ju, %broadcast.splat
  %i.jz = mul nsw <8 x i64> %i.jv, %broadcast.splat
  %i.ka = mul nsw <8 x i64> %i.jw, %broadcast.splat
  %i.kb = add nsw <8 x i64> %i.jx, %broadcast.splat335
  %i.kc = add nsw <8 x i64> %i.jy, %broadcast.splat335
  %i.kd = add nsw <8 x i64> %i.jz, %broadcast.splat335
  %i.ke = add nsw <8 x i64> %i.ka, %broadcast.splat335
  %i.kf = ashr <8 x i64> %i.kb, %broadcast.splat333
  %i.kg = ashr <8 x i64> %i.kc, %broadcast.splat333
  %i.kh = ashr <8 x i64> %i.kd, %broadcast.splat333
  %i.ki = ashr <8 x i64> %i.ke, %broadcast.splat333
  %i.kj = getelementptr i8, ptr %next.gep336, i64 64 ; 2 uses
  %i.kk = getelementptr i8, ptr %next.gep336, i64 128 ; 2 uses
  %i.kl = getelementptr i8, ptr %next.gep336, i64 192 ; 2 uses
  %wide.load344 = load <8 x i64>, ptr %next.gep336, align 8, !tbaa !27, !alias.scope !119, !noalias !118
  %wide.load345 = load <8 x i64>, ptr %i.kj, align 8, !tbaa !27, !alias.scope !119, !noalias !118
  %wide.load346 = load <8 x i64>, ptr %i.kk, align 8, !tbaa !27, !alias.scope !119, !noalias !118
  %wide.load347 = load <8 x i64>, ptr %i.kl, align 8, !tbaa !27, !alias.scope !119, !noalias !118
  %i.km = add nsw <8 x i64> %i.kf, %wide.load344
  %i.kn = add nsw <8 x i64> %i.kg, %wide.load345
  %i.ko = add nsw <8 x i64> %i.kh, %wide.load346
  %i.kp = add nsw <8 x i64> %i.ki, %wide.load347
  store <8 x i64> %i.km, ptr %next.gep336, align 8, !tbaa !27, !alias.scope !119, !noalias !118
  store <8 x i64> %i.kn, ptr %i.kj, align 8, !tbaa !27, !alias.scope !119, !noalias !118
  store <8 x i64> %i.ko, ptr %i.kk, align 8, !tbaa !27, !alias.scope !119, !noalias !118
  store <8 x i64> %i.kp, ptr %i.kl, align 8, !tbaa !27, !alias.scope !119, !noalias !118
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.kq = icmp eq i64 %index.next, %n.vec
  br i1 %i.kq, label %middle.block, label %vector.body, !llvm.loop !111

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ix
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.jf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !33

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec348 = and i64 %i.ix, 2147483640           ; 4 uses
  %i.kr = trunc nuw nsw i64 %n.vec348 to i32
  %i.ks = sub nsw i32 %.0189271, %i.kr
  %i.kt = shl nuw nsw i64 %n.vec348, 3            ; 2 uses
  %i.ku = getelementptr i8, ptr %.0187273, i64 %i.kt
  %i.kv = getelementptr i8, ptr %.0186274, i64 %i.kt
  %broadcast.splatinsert349 = insertelement <8 x i64> poison, i64 %i.iv, i64 0
  %broadcast.splat350 = shufflevector <8 x i64> %broadcast.splatinsert349, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert351 = insertelement <8 x i64> poison, i64 %i.iw, i64 0
  %broadcast.splat352 = shufflevector <8 x i64> %broadcast.splatinsert351, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert353 = insertelement <8 x i64> poison, i64 %i.cp, i64 0
  %broadcast.splat354 = shufflevector <8 x i64> %broadcast.splatinsert353, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index355 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next361, %vec.epilog.vector.body ] ; 2 uses
  %i.kw = shl i64 %index355, 3                    ; 2 uses
  %next.gep356 = getelementptr i8, ptr %.0187273, i64 %i.kw ; 2 uses
  %next.gep357 = getelementptr i8, ptr %.0186274, i64 %i.kw ; 2 uses
  %wide.load358 = load <8 x i64>, ptr %next.gep356, align 8, !tbaa !27, !alias.scope !118
  %i.kx = getelementptr inbounds nuw i8, ptr %next.gep356, i64 8
  %wide.load359 = load <8 x i64>, ptr %i.kx, align 8, !tbaa !27, !alias.scope !118
  %i.ky = add nsw <8 x i64> %wide.load359, %wide.load358
  %i.kz = mul nsw <8 x i64> %i.ky, %broadcast.splat350
  %i.la = add nsw <8 x i64> %i.kz, %broadcast.splat354
  %i.lb = ashr <8 x i64> %i.la, %broadcast.splat352
  %wide.load360 = load <8 x i64>, ptr %next.gep357, align 8, !tbaa !27, !alias.scope !119, !noalias !118
  %i.lc = add nsw <8 x i64> %i.lb, %wide.load360
  store <8 x i64> %i.lc, ptr %next.gep357, align 8, !tbaa !27, !alias.scope !119, !noalias !118
  %index.next361 = add nuw i64 %index355, 8       ; 2 uses
  %i.ld = icmp eq i64 %index.next361, %n.vec348
  br i1 %i.ld, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !112

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n362 = icmp eq i64 %n.vec348, %i.ix
  br i1 %cmp.n362, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0185243.ph = phi i32 [ %.0189271, %iter.check ], [ %.0189271, %vector.memcheck ], [ %i.jh, %vec.epilog.iter.check ], [ %i.ks, %vec.epilog.middle.block ] ; 4 uses
  %.6242.ph = phi ptr [ %.0187273, %iter.check ], [ %.0187273, %vector.memcheck ], [ %i.jj, %vec.epilog.iter.check ], [ %i.ku, %vec.epilog.middle.block ] ; 3 uses
  %.6200241.ph = phi ptr [ %.0186274, %iter.check ], [ %.0186274, %vector.memcheck ], [ %i.jk, %vec.epilog.iter.check ], [ %i.kv, %vec.epilog.middle.block ] ; 4 uses
  %xtraiter457 = and i32 %.0185243.ph, 1
  %lcmp.mod458.not = icmp eq i32 %xtraiter457, 0
  br i1 %lcmp.mod458.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.le = load i64, ptr %.6242.ph, align 8, !tbaa !27
  %i.lf = getelementptr inbounds nuw i8, ptr %.6242.ph, i64 8 ; 2 uses
  %i.lg = load i64, ptr %i.lf, align 8, !tbaa !27
  %i.lh = add nsw i64 %i.lg, %i.le
  %i.li = mul nsw i64 %i.lh, %i.iv
  %i.lj = add nsw i64 %i.li, %i.cp
  %i.lk = ashr i64 %i.lj, %i.iw
  %i.ll = load i64, ptr %.6200241.ph, align 8, !tbaa !27
  %i.lm = add nsw i64 %i.lk, %i.ll
  store i64 %i.lm, ptr %.6200241.ph, align 8, !tbaa !27
  %i.ln = add nsw i32 %.0185243.ph, -1
  %i.lo = getelementptr inbounds nuw i8, ptr %.6200241.ph, i64 8
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.0185243.unr = phi i32 [ %.0185243.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ln, %vec.epilog.scalar.ph.prol ]
  %.6242.unr = phi ptr [ %.6242.ph, %vec.epilog.scalar.ph.preheader ], [ %i.lf, %vec.epilog.scalar.ph.prol ]
  %.6200241.unr = phi ptr [ %.6200241.ph, %vec.epilog.scalar.ph.preheader ], [ %i.lo, %vec.epilog.scalar.ph.prol ]
  %i.lp = icmp eq i32 %.0185243.ph, 1
  br i1 %i.lp, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.0185243 = phi i32 [ %i.mj, %vec.epilog.scalar.ph ], [ %.0185243.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %.6242 = phi ptr [ %i.mb, %vec.epilog.scalar.ph ], [ %.6242.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %.6200241 = phi ptr [ %i.mk, %vec.epilog.scalar.ph ], [ %.6200241.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 4 uses
  %i.lq = load i64, ptr %.6242, align 8, !tbaa !27
  %i.lr = getelementptr inbounds nuw i8, ptr %.6242, i64 8 ; 2 uses
  %i.ls = load i64, ptr %i.lr, align 8, !tbaa !27
  %i.lt = add nsw i64 %i.ls, %i.lq
  %i.lu = mul nsw i64 %i.lt, %i.iv
  %i.lv = add nsw i64 %i.lu, %i.cp
  %i.lw = ashr i64 %i.lv, %i.iw
  %i.lx = load i64, ptr %.6200241, align 8, !tbaa !27
  %i.ly = add nsw i64 %i.lw, %i.lx
  store i64 %i.ly, ptr %.6200241, align 8, !tbaa !27
  %i.lz = getelementptr inbounds nuw i8, ptr %.6200241, i64 8 ; 2 uses
  %i.ma = load i64, ptr %i.lr, align 8, !tbaa !27
  %i.mb = getelementptr inbounds nuw i8, ptr %.6242, i64 16 ; 2 uses
  %i.mc = load i64, ptr %i.mb, align 8, !tbaa !27
  %i.md = add nsw i64 %i.mc, %i.ma
  %i.me = mul nsw i64 %i.md, %i.iv
  %i.mf = add nsw i64 %i.me, %i.cp
  %i.mg = ashr i64 %i.mf, %i.iw
  %i.mh = load i64, ptr %i.lz, align 8, !tbaa !27
  %i.mi = add nsw i64 %i.mg, %i.mh
  store i64 %i.mi, ptr %i.lz, align 8, !tbaa !27
  %i.mj = add nsw i32 %.0185243, -2               ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %.6200241, i64 16
  %.not212.1 = icmp eq i32 %i.mj, 0
  br i1 %.not212.1, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !113

vec.epilog.scalar.ph418:                          ; preds = %vec.epilog.scalar.ph418.prol.loopexit, %vec.epilog.scalar.ph418
  %.0184239 = phi i32 [ %i.ne, %vec.epilog.scalar.ph418 ], [ %.0184239.unr, %vec.epilog.scalar.ph418.prol.loopexit ]
  %.7238 = phi ptr [ %i.nf, %vec.epilog.scalar.ph418 ], [ %.7238.unr, %vec.epilog.scalar.ph418.prol.loopexit ] ; 5 uses
  %.7201237 = phi ptr [ %i.ng, %vec.epilog.scalar.ph418 ], [ %.7201237.unr, %vec.epilog.scalar.ph418.prol.loopexit ] ; 4 uses
  %i.ml = getelementptr inbounds i8, ptr %.7238, i64 -8
  %i.mm = load i64, ptr %i.ml, align 8, !tbaa !27
  %i.mn = load i64, ptr %.7238, align 8, !tbaa !27
  %i.mo = add nsw i64 %i.mn, %i.mm
  %i.mp = mul nsw i64 %i.mo, %i.fz
  %i.mq = add nsw i64 %i.mp, %i.cp
  %i.mr = ashr i64 %i.mq, %i.ga
  %i.ms = load i64, ptr %.7201237, align 8, !tbaa !27
  %i.mt = add nsw i64 %i.mr, %i.ms
  store i64 %i.mt, ptr %.7201237, align 8, !tbaa !27
  %i.mu = getelementptr inbounds nuw i8, ptr %.7238, i64 8
  %i.mv = getelementptr inbounds nuw i8, ptr %.7201237, i64 8 ; 2 uses
  %i.mw = load i64, ptr %.7238, align 8, !tbaa !27
  %i.mx = load i64, ptr %i.mu, align 8, !tbaa !27
  %i.my = add nsw i64 %i.mx, %i.mw
  %i.mz = mul nsw i64 %i.my, %i.fz
  %i.na = add nsw i64 %i.mz, %i.cp
  %i.nb = ashr i64 %i.na, %i.ga
  %i.nc = load i64, ptr %i.mv, align 8, !tbaa !27
  %i.nd = add nsw i64 %i.nb, %i.nc
  store i64 %i.nd, ptr %i.mv, align 8, !tbaa !27
  %i.ne = add nsw i32 %.0184239, -2               ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %.7238, i64 16
  %i.ng = getelementptr inbounds nuw i8, ptr %.7201237, i64 16
  %.not211.1 = icmp eq i32 %i.ne, 0
  br i1 %.not211.1, label %.loopexit, label %vec.epilog.scalar.ph418, !llvm.loop !114

.loopexit:                                        ; preds = %vec.epilog.scalar.ph418.prol.loopexit, %vec.epilog.scalar.ph418, %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %.lr.ph248, %.lr.ph252, %.lr.ph256, %.lr.ph260, %bb.f, %bb.e, %middle.block414, %vec.epilog.middle.block437, %middle.block, %vec.epilog.middle.block, %.preheader230, %.preheader228, %.preheader226, %.preheader224, %.preheader222, %.preheader220, %.preheader218, %.preheader
  %i.nh = xor i1 %.0.in275, true
  %.not.wide = icmp eq i64 %i.ch, 0
  br i1 %.not.wide, label %.loopexit232, label %bb.c, !llvm.loop !115

.loopexit232.sink.split:                          ; preds = %bb.a
  %i.ni = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !13
  %i.nk = load i64, ptr %i.nj, align 8, !tbaa !27
  %.sink308 = select i1 %5, ptr %1, ptr %2
  %not.309 = xor i1 %5, true
  %i.nl = zext i1 %not.309 to i64
  %.sink = shl i64 %i.nk, %i.nl
  %i.nm = getelementptr inbounds nuw i8, ptr %.sink308, i64 16
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !13
  store i64 %.sink, ptr %i.nn, align 8, !tbaa !27
  br label %.loopexit232

.loopexit232:                                     ; preds = %.loopexit, %.loopexit232.sink.split, %_ZN4ojph5localL21avx512_deinterleave64EPdS1_S1_i.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4ojph5local19avx512_rev_horz_anaEPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !31
  %i.c = and i32 %i.b, 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4ojph5local21avx512_rev_horz_ana32EPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, i32 noundef %4, i1 noundef zeroext %5)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4ojph5local21avx512_rev_horz_ana64EPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, i32 noundef %4, i1 noundef zeroext %5)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4ojph5local21avx512_rev_horz_syn32EPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i32 %4, 1
  br i1 %i.a, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i8, ptr %i.d, align 8, !tbaa !22    ; 2 uses
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph288

.lr.ph288:                                        ; preds = %bb.b
  %not. = xor i1 %5, true
  %i.f = zext i1 %not. to i32
  %i.g = add i32 %4, %i.f
  %i.h = lshr i32 %i.g, 1
  %i.i = zext i1 %5 to i32
  %i.j = add i32 %4, %i.i
  %i.k = lshr i32 %i.j, 1
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.trip.count = zext i8 %i.e to i64
  br label %bb.c

._crit_edge:                                      ; preds = %.loopexit, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !13   ; 5 uses
  %. = select i1 %5, ptr %i.c, ptr %i.b
  %i.q = load ptr, ptr %., align 8, !tbaa !13     ; 4 uses
  %.in228 = select i1 %5, ptr %i.b, ptr %i.c
  %i.r = load ptr, ptr %.in228, align 8, !tbaa !13 ; 4 uses
  %i.s = icmp sgt i32 %4, 16
  br i1 %i.s, label %.lr.ph.i.preheader, label %.preheader.i

.lr.ph.i.preheader:                               ; preds = %._crit_edge
  %i.t = add nsw i32 %4, -17                      ; 2 uses
  %i.u = and i32 %i.t, 32
  %lcmp.mod.not.not = icmp eq i32 %i.u, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.v = load <16 x float>, ptr %i.q, align 64, !tbaa !13 ; 2 uses
  %i.w = load <16 x float>, ptr %i.r, align 64, !tbaa !13 ; 2 uses
  %i.x = shufflevector <16 x float> %i.v, <16 x float> %i.w, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.y = shufflevector <16 x float> %i.v, <16 x float> %i.w, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x float> %i.x, ptr %i.p, align 64, !tbaa !13
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  store <16 x float> %i.y, ptr %i.z, align 64, !tbaa !13
  %i.aa = add nsw i32 %4, -32                     ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 128 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 64 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 64 ; 2 uses
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.044.i.unr = phi ptr [ %i.p, %.lr.ph.i.preheader ], [ %i.ab, %.lr.ph.i.prol ]
  %.03543.i.unr = phi ptr [ %i.q, %.lr.ph.i.preheader ], [ %i.ac, %.lr.ph.i.prol ]
  %.03742.i.unr = phi ptr [ %i.r, %.lr.ph.i.preheader ], [ %i.ad, %.lr.ph.i.prol ]
  %.03941.i.unr = phi i32 [ %4, %.lr.ph.i.preheader ], [ %i.aa, %.lr.ph.i.prol ]
  %.lcssa332.unr = phi i32 [ poison, %.lr.ph.i.preheader ], [ %i.aa, %.lr.ph.i.prol ]
  %.lcssa331.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.ab, %.lr.ph.i.prol ]
  %.lcssa330.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.ac, %.lr.ph.i.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.ad, %.lr.ph.i.prol ]
  %i.ae = icmp ult i32 %i.t, 32
  br i1 %i.ae, label %.preheader.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %._crit_edge
  %.039.lcssa.i = phi i32 [ %4, %._crit_edge ], [ %.lcssa332.unr, %.lr.ph.i.prol.loopexit ], [ %i.bf, %.lr.ph.i ] ; 5 uses
  %.037.lcssa.i = phi ptr [ %i.r, %._crit_edge ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.bi, %.lr.ph.i ] ; 3 uses
  %.035.lcssa.i = phi ptr [ %i.q, %._crit_edge ], [ %.lcssa330.unr, %.lr.ph.i.prol.loopexit ], [ %i.bh, %.lr.ph.i ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %i.p, %._crit_edge ], [ %.lcssa331.unr, %.lr.ph.i.prol.loopexit ], [ %i.bg, %.lr.ph.i ] ; 4 uses
  %i.af = icmp sgt i32 %.039.lcssa.i, 0
  br i1 %i.af, label %.lr.ph52.i.preheader, label %_ZN4ojph5localL19avx512_interleave32EPfS1_S1_i.exit

.lr.ph52.i.preheader:                             ; preds = %.preheader.i
  %i.ag = add nuw i32 %.039.lcssa.i, 31
  %i.ah = and i32 %i.ag, 16
  %lcmp.mod341.not.not = icmp eq i32 %i.ah, 0
  br i1 %lcmp.mod341.not.not, label %.lr.ph52.i.prol, label %.lr.ph52.i.prol.loopexit

.lr.ph52.i.prol:                                  ; preds = %.lr.ph52.i.preheader
  %i.ai = load <8 x float>, ptr %.035.lcssa.i, align 32, !tbaa !13 ; 2 uses
  %i.aj = load <8 x float>, ptr %.037.lcssa.i, align 32, !tbaa !13 ; 2 uses
  %i.ak = shufflevector <8 x float> %i.ai, <8 x float> %i.aj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.al = shufflevector <8 x float> %i.ai, <8 x float> %i.aj, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x float> %i.ak, ptr %.0.lcssa.i, align 32, !tbaa !13
  %i.am = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 32
  store <8 x float> %i.al, ptr %i.am, align 32, !tbaa !13
  %i.an = add nsw i32 %.039.lcssa.i, -16
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 64
  %i.ap = getelementptr inbounds nuw i8, ptr %.035.lcssa.i, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %.037.lcssa.i, i64 32
  br label %.lr.ph52.i.prol.loopexit

.lr.ph52.i.prol.loopexit:                         ; preds = %.lr.ph52.i.prol, %.lr.ph52.i.preheader
  %.151.i.unr = phi ptr [ %.0.lcssa.i, %.lr.ph52.i.preheader ], [ %i.ao, %.lr.ph52.i.prol ]
  %.13650.i.unr = phi ptr [ %.035.lcssa.i, %.lr.ph52.i.preheader ], [ %i.ap, %.lr.ph52.i.prol ]
  %.13849.i.unr = phi ptr [ %.037.lcssa.i, %.lr.ph52.i.preheader ], [ %i.aq, %.lr.ph52.i.prol ]
  %.14048.i.unr = phi i32 [ %.039.lcssa.i, %.lr.ph52.i.preheader ], [ %i.an, %.lr.ph52.i.prol ]
  %i.ar = icmp ult i32 %.039.lcssa.i, 17
  br i1 %i.ar, label %_ZN4ojph5localL19avx512_interleave32EPfS1_S1_i.exit, label %.lr.ph52.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.044.i = phi ptr [ %i.bg, %.lr.ph.i ], [ %.044.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.03543.i = phi ptr [ %i.bh, %.lr.ph.i ], [ %.03543.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.03742.i = phi ptr [ %i.bi, %.lr.ph.i ], [ %.03742.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.03941.i = phi i32 [ %i.bf, %.lr.ph.i ], [ %.03941.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %i.as = load <16 x float>, ptr %.03543.i, align 64, !tbaa !13 ; 2 uses
  %i.at = load <16 x float>, ptr %.03742.i, align 64, !tbaa !13 ; 2 uses
  %i.au = shufflevector <16 x float> %i.as, <16 x float> %i.at, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.av = shufflevector <16 x float> %i.as, <16 x float> %i.at, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x float> %i.au, ptr %.044.i, align 64, !tbaa !13
  %i.aw = getelementptr inbounds nuw i8, ptr %.044.i, i64 64
  store <16 x float> %i.av, ptr %i.aw, align 64, !tbaa !13
  %i.ax = getelementptr inbounds nuw i8, ptr %.044.i, i64 128
  %i.ay = getelementptr inbounds nuw i8, ptr %.03543.i, i64 64
  %i.az = getelementptr inbounds nuw i8, ptr %.03742.i, i64 64
  %i.ba = load <16 x float>, ptr %i.ay, align 64, !tbaa !13 ; 2 uses
  %i.bb = load <16 x float>, ptr %i.az, align 64, !tbaa !13 ; 2 uses
  %i.bc = shufflevector <16 x float> %i.ba, <16 x float> %i.bb, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.bd = shufflevector <16 x float> %i.ba, <16 x float> %i.bb, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x float> %i.bc, ptr %i.ax, align 64, !tbaa !13
  %i.be = getelementptr inbounds nuw i8, ptr %.044.i, i64 192
  store <16 x float> %i.bd, ptr %i.be, align 64, !tbaa !13
  %i.bf = add nsw i32 %.03941.i, -64              ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.044.i, i64 256 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.03543.i, i64 128 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.03742.i, i64 128 ; 2 uses
  %i.bj = icmp sgt i32 %.03941.i, 80
  br i1 %i.bj, label %.lr.ph.i, label %.preheader.i, !llvm.loop !3

.lr.ph52.i:                                       ; preds = %.lr.ph52.i.prol.loopexit, %.lr.ph52.i
  %.151.i = phi ptr [ %i.by, %.lr.ph52.i ], [ %.151.i.unr, %.lr.ph52.i.prol.loopexit ] ; 5 uses
  %.13650.i = phi ptr [ %i.bz, %.lr.ph52.i ], [ %.13650.i.unr, %.lr.ph52.i.prol.loopexit ] ; 3 uses
  %.13849.i = phi ptr [ %i.ca, %.lr.ph52.i ], [ %.13849.i.unr, %.lr.ph52.i.prol.loopexit ] ; 3 uses
  %.14048.i = phi i32 [ %i.bx, %.lr.ph52.i ], [ %.14048.i.unr, %.lr.ph52.i.prol.loopexit ] ; 2 uses
  %i.bk = load <8 x float>, ptr %.13650.i, align 32, !tbaa !13 ; 2 uses
  %i.bl = load <8 x float>, ptr %.13849.i, align 32, !tbaa !13 ; 2 uses
  %i.bm = shufflevector <8 x float> %i.bk, <8 x float> %i.bl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bn = shufflevector <8 x float> %i.bk, <8 x float> %i.bl, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x float> %i.bm, ptr %.151.i, align 32, !tbaa !13
  %i.bo = getelementptr inbounds nuw i8, ptr %.151.i, i64 32
  store <8 x float> %i.bn, ptr %i.bo, align 32, !tbaa !13
  %i.bp = getelementptr inbounds nuw i8, ptr %.151.i, i64 64
  %i.bq = getelementptr inbounds nuw i8, ptr %.13650.i, i64 32
  %i.br = getelementptr inbounds nuw i8, ptr %.13849.i, i64 32
  %i.bs = load <8 x float>, ptr %i.bq, align 32, !tbaa !13 ; 2 uses
  %i.bt = load <8 x float>, ptr %i.br, align 32, !tbaa !13 ; 2 uses
  %i.bu = shufflevector <8 x float> %i.bs, <8 x float> %i.bt, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bv = shufflevector <8 x float> %i.bs, <8 x float> %i.bt, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x float> %i.bu, ptr %i.bp, align 32, !tbaa !13
  %i.bw = getelementptr inbounds nuw i8, ptr %.151.i, i64 96
  store <8 x float> %i.bv, ptr %i.bw, align 32, !tbaa !13
  %i.bx = add nsw i32 %.14048.i, -32
  %i.by = getelementptr inbounds nuw i8, ptr %.151.i, i64 128
  %i.bz = getelementptr inbounds nuw i8, ptr %.13650.i, i64 64
  %i.ca = getelementptr inbounds nuw i8, ptr %.13849.i, i64 64
  %i.cb = icmp sgt i32 %.14048.i, 32
  br i1 %i.cb, label %.lr.ph52.i, label %_ZN4ojph5localL19avx512_interleave32EPfS1_S1_i.exit, !llvm.loop !4

bb.c:                                             ; preds = %.lr.ph288, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph288 ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %.0.in287 = phi i1 [ %5, %.lr.ph288 ], [ %i.gw, %.loopexit ] ; 5 uses
  %.0203286 = phi ptr [ %i.m, %.lr.ph288 ], [ %.0204285, %.loopexit ] ; 13 uses
  %.0204285 = phi ptr [ %i.l, %.lr.ph288 ], [ %.0203286, %.loopexit ] ; 9 uses
  %.0205284 = phi i32 [ %i.k, %.lr.ph288 ], [ %.0206283, %.loopexit ] ; 11 uses
  %.0206283 = phi i32 [ %i.h, %.lr.ph288 ], [ %.0205284, %.loopexit ] ; 3 uses
  %i.cc = load ptr, ptr %i.n, align 8, !tbaa !24
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %i.cf = load i16, ptr %i.ce, align 4, !tbaa !13 ; 3 uses
  %i.cg = sext i16 %i.cf to i32
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 2
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !13 ; 2 uses
  %i.cj = sext i16 %i.ci to i32
  %i.ck = load i8, ptr %i.cd, align 4, !tbaa !13  ; 4 uses
  %i.cl = insertelement <16 x i32> poison, i32 %i.cg, i64 0
  %i.cm = shufflevector <16 x i32> %i.cl, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.cn = insertelement <16 x i32> poison, i32 %i.cj, i64 0
  %i.co = shufflevector <16 x i32> %i.cn, <16 x i32> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.cp = load i32, ptr %.0203286, align 4, !tbaa !32
  %i.cq = getelementptr inbounds i8, ptr %.0203286, i64 -4
  store i32 %i.cp, ptr %i.cq, align 4, !tbaa !32
  %i.cr = add nsw i32 %.0206283, -1
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %.0203286, i64 %i.cs
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !32
  %i.cv = zext nneg i32 %.0206283 to i64
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %.0203286, i64 %i.cv
  store i32 %i.cu, ptr %i.cw, align 4, !tbaa !32
  %i.cx = icmp eq i16 %i.cf, 1
  br i1 %i.cx, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %.not296 = icmp eq i32 %.0205284, 0             ; 2 uses
  br i1 %.0.in287, label %.preheader, label %.preheader234

.preheader234:                                    ; preds = %bb.d
  br i1 %.not296, label %.loopexit, label %.lr.ph277

.lr.ph277:                                        ; preds = %.preheader234
  %i.cy = zext i8 %i.ck to i32
  br label %bb.f

.preheader:                                       ; preds = %bb.d
  br i1 %.not296, label %.loopexit, label %.lr.ph281

.lr.ph281:                                        ; preds = %.preheader
  %i.cz = zext i8 %i.ck to i32
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph281, %bb.e
  %.0208280 = phi ptr [ %.0203286, %.lr.ph281 ], [ %i.dj, %bb.e ] ; 3 uses
  %.0209279 = phi ptr [ %.0204285, %.lr.ph281 ], [ %i.dk, %bb.e ] ; 3 uses
  %.0217278 = phi i32 [ %.0205284, %.lr.ph281 ], [ %i.di, %bb.e ] ; 2 uses
  %i.da = load <16 x i32>, ptr %.0208280, align 64, !tbaa !13
  %i.db = getelementptr inbounds i8, ptr %.0208280, i64 -4
  %i.dc = load <16 x i32>, ptr %i.db, align 4, !tbaa !13
  %i.dd = load <16 x i32>, ptr %.0209279, align 64, !tbaa !13
  %i.de = add <16 x i32> %i.da, %i.co
  %i.df = add <16 x i32> %i.de, %i.dc
  %i.dg = tail call <16 x i32> @llvm.x86.avx512.psrai.d.512(<16 x i32> %i.df, i32 range(i32 0, 256) %i.cz)
  %i.dh = sub <16 x i32> %i.dd, %i.dg
  store <16 x i32> %i.dh, ptr %.0209279, align 64, !tbaa !13
  %i.di = add nsw i32 %.0217278, -16
  %i.dj = getelementptr inbounds nuw i8, ptr %.0208280, i64 64
  %i.dk = getelementptr inbounds nuw i8, ptr %.0209279, i64 64
  %i.dl = icmp sgt i32 %.0217278, 16
  br i1 %i.dl, label %bb.e, label %.loopexit, !llvm.loop !120

bb.f:                                             ; preds = %.lr.ph277, %bb.f
  %.1276 = phi ptr [ %.0203286, %.lr.ph277 ], [ %i.dv, %bb.f ] ; 3 uses
  %.1210275 = phi ptr [ %.0204285, %.lr.ph277 ], [ %i.dw, %bb.f ] ; 3 uses
  %.1218274 = phi i32 [ %.0205284, %.lr.ph277 ], [ %i.du, %bb.f ] ; 2 uses
  %i.dm = load <16 x i32>, ptr %.1276, align 64, !tbaa !13
  %i.dn = getelementptr inbounds nuw i8, ptr %.1276, i64 4
  %i.do = load <16 x i32>, ptr %i.dn, align 4, !tbaa !13
  %i.dp = load <16 x i32>, ptr %.1210275, align 64, !tbaa !13
  %i.dq = add <16 x i32> %i.dm, %i.co
  %i.dr = add <16 x i32> %i.dq, %i.do
  %i.ds = tail call <16 x i32> @llvm.x86.avx512.psrai.d.512(<16 x i32> %i.dr, i32 range(i32 0, 256) %i.cy)
  %i.dt = sub <16 x i32> %i.dp, %i.ds
  store <16 x i32> %i.dt, ptr %.1210275, align 64, !tbaa !13
  %i.du = add nsw i32 %.1218274, -16
  %i.dv = getelementptr inbounds nuw i8, ptr %.1276, i64 64
  %i.dw = getelementptr inbounds nuw i8, ptr %.1210275, i64 64
  %i.dx = icmp sgt i32 %.1218274, 16
  br i1 %i.dx, label %bb.f, label %.loopexit, !llvm.loop !121

bb.g:                                             ; preds = %bb.c
  %i.dy = icmp eq i16 %i.cf, -1                   ; 2 uses
  %i.dz = icmp eq i16 %i.ci, 1
  %or.cond = select i1 %i.dy, i1 %i.dz, i1 false
  %i.ea = zext i8 %i.ck to i32                    ; 4 uses
  %i.eb = icmp eq i8 %i.ck, 1
  %or.cond4 = select i1 %or.cond, i1 %i.eb, i1 false
  %.not294 = icmp eq i32 %.0205284, 0             ; 6 uses
  br i1 %or.cond4, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  br i1 %.0.in287, label %.preheader236, label %.preheader238

.preheader238:                                    ; preds = %bb.h
  br i1 %.not294, label %.loopexit, label %.lr.ph269

.preheader236:                                    ; preds = %bb.h
  br i1 %.not294, label %.loopexit, label %.lr.ph273

.lr.ph273:                                        ; preds = %.preheader236, %.lr.ph273
  %.2272 = phi ptr [ %i.ek, %.lr.ph273 ], [ %.0203286, %.preheader236 ] ; 3 uses
  %.2211271 = phi ptr [ %i.el, %.lr.ph273 ], [ %.0204285, %.preheader236 ] ; 3 uses
  %.0219270 = phi i32 [ %i.ej, %.lr.ph273 ], [ %.0205284, %.preheader236 ] ; 2 uses
  %i.ec = load <16 x i32>, ptr %.2272, align 64, !tbaa !13
  %i.ed = getelementptr inbounds i8, ptr %.2272, i64 -4
  %i.ee = load <16 x i32>, ptr %i.ed, align 4, !tbaa !13
  %i.ef = load <16 x i32>, ptr %.2211271, align 64, !tbaa !13
  %i.eg = add <16 x i32> %i.ee, %i.ec
  %i.eh = ashr <16 x i32> %i.eg, splat (i32 1)
  %i.ei = add <16 x i32> %i.eh, %i.ef
  store <16 x i32> %i.ei, ptr %.2211271, align 64, !tbaa !13
  %i.ej = add nsw i32 %.0219270, -16
  %i.ek = getelementptr inbounds nuw i8, ptr %.2272, i64 64
  %i.el = getelementptr inbounds nuw i8, ptr %.2211271, i64 64
  %i.em = icmp sgt i32 %.0219270, 16
  br i1 %i.em, label %.lr.ph273, label %.loopexit, !llvm.loop !122

.lr.ph269:                                        ; preds = %.preheader238, %.lr.ph269
  %.3268 = phi ptr [ %i.ev, %.lr.ph269 ], [ %.0203286, %.preheader238 ] ; 3 uses
  %.3212267 = phi ptr [ %i.ew, %.lr.ph269 ], [ %.0204285, %.preheader238 ] ; 3 uses
  %.1220266 = phi i32 [ %i.eu, %.lr.ph269 ], [ %.0205284, %.preheader238 ] ; 2 uses
  %i.en = load <16 x i32>, ptr %.3268, align 64, !tbaa !13
  %i.eo = getelementptr inbounds nuw i8, ptr %.3268, i64 4
  %i.ep = load <16 x i32>, ptr %i.eo, align 4, !tbaa !13
  %i.eq = load <16 x i32>, ptr %.3212267, align 64, !tbaa !13
  %i.er = add <16 x i32> %i.ep, %i.en
  %i.es = ashr <16 x i32> %i.er, splat (i32 1)
  %i.et = add <16 x i32> %i.es, %i.eq
  store <16 x i32> %i.et, ptr %.3212267, align 64, !tbaa !13
  %i.eu = add nsw i32 %.1220266, -16
  %i.ev = getelementptr inbounds nuw i8, ptr %.3268, i64 64
  %i.ew = getelementptr inbounds nuw i8, ptr %.3212267, i64 64
  %i.ex = icmp sgt i32 %.1220266, 16
  br i1 %i.ex, label %.lr.ph269, label %.loopexit, !llvm.loop !123

bb.i:                                             ; preds = %bb.g
  br i1 %i.dy, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  br i1 %.0.in287, label %.preheader240, label %.preheader242

.preheader242:                                    ; preds = %bb.j
  br i1 %.not294, label %.loopexit, label %.lr.ph261

.preheader240:                                    ; preds = %bb.j
  br i1 %.not294, label %.loopexit, label %.lr.ph265

.lr.ph265:                                        ; preds = %.preheader240, %.lr.ph265
  %.4264 = phi ptr [ %i.fh, %.lr.ph265 ], [ %.0203286, %.preheader240 ] ; 3 uses
  %.4213263 = phi ptr [ %i.fi, %.lr.ph265 ], [ %.0204285, %.preheader240 ] ; 3 uses
  %.0223262 = phi i32 [ %i.fg, %.lr.ph265 ], [ %.0205284, %.preheader240 ] ; 2 uses
  %i.ey = load <16 x i32>, ptr %.4264, align 64, !tbaa !13
  %i.ez = getelementptr inbounds i8, ptr %.4264, i64 -4
  %i.fa = load <16 x i32>, ptr %i.ez, align 4, !tbaa !13
  %i.fb = load <16 x i32>, ptr %.4213263, align 64, !tbaa !13
  %i.fc = add <16 x i32> %i.ey, %i.fa
  %i.fd = sub <16 x i32> %i.co, %i.fc
  %i.fe = tail call <16 x i32> @llvm.x86.avx512.psrai.d.512(<16 x i32> %i.fd, i32 range(i32 0, 256) %i.ea)
  %i.ff = sub <16 x i32> %i.fb, %i.fe
  store <16 x i32> %i.ff, ptr %.4213263, align 64, !tbaa !13
  %i.fg = add nsw i32 %.0223262, -16
  %i.fh = getelementptr inbounds nuw i8, ptr %.4264, i64 64
  %i.fi = getelementptr inbounds nuw i8, ptr %.4213263, i64 64
  %i.fj = icmp sgt i32 %.0223262, 16
  br i1 %i.fj, label %.lr.ph265, label %.loopexit, !llvm.loop !124

.lr.ph261:                                        ; preds = %.preheader242, %.lr.ph261
  %.5260 = phi ptr [ %i.ft, %.lr.ph261 ], [ %.0203286, %.preheader242 ] ; 3 uses
  %.5214259 = phi ptr [ %i.fu, %.lr.ph261 ], [ %.0204285, %.preheader242 ] ; 3 uses
  %.1224258 = phi i32 [ %i.fs, %.lr.ph261 ], [ %.0205284, %.preheader242 ] ; 2 uses
  %i.fk = load <16 x i32>, ptr %.5260, align 64, !tbaa !13
  %i.fl = getelementptr inbounds nuw i8, ptr %.5260, i64 4
  %i.fm = load <16 x i32>, ptr %i.fl, align 4, !tbaa !13
  %i.fn = load <16 x i32>, ptr %.5214259, align 64, !tbaa !13
  %i.fo = add <16 x i32> %i.fk, %i.fm
  %i.fp = sub <16 x i32> %i.co, %i.fo
  %i.fq = tail call <16 x i32> @llvm.x86.avx512.psrai.d.512(<16 x i32> %i.fp, i32 range(i32 0, 256) %i.ea)
  %i.fr = sub <16 x i32> %i.fn, %i.fq
  store <16 x i32> %i.fr, ptr %.5214259, align 64, !tbaa !13
  %i.fs = add nsw i32 %.1224258, -16
  %i.ft = getelementptr inbounds nuw i8, ptr %.5260, i64 64
  %i.fu = getelementptr inbounds nuw i8, ptr %.5214259, i64 64
  %i.fv = icmp sgt i32 %.1224258, 16
  br i1 %i.fv, label %.lr.ph261, label %.loopexit, !llvm.loop !125

bb.k:                                             ; preds = %bb.i
  br i1 %.0.in287, label %.preheader244, label %.preheader246

.preheader246:                                    ; preds = %bb.k
  br i1 %.not294, label %.loopexit, label %.lr.ph

.preheader244:                                    ; preds = %bb.k
  br i1 %.not294, label %.loopexit, label %.lr.ph257

.lr.ph257:                                        ; preds = %.preheader244, %.lr.ph257
  %.6256 = phi ptr [ %i.gg, %.lr.ph257 ], [ %.0203286, %.preheader244 ] ; 3 uses
  %.6215255 = phi ptr [ %i.gh, %.lr.ph257 ], [ %.0204285, %.preheader244 ] ; 3 uses
  %.0221254 = phi i32 [ %i.gf, %.lr.ph257 ], [ %.0205284, %.preheader244 ] ; 2 uses
  %i.fw = load <16 x i32>, ptr %.6256, align 64, !tbaa !13
  %i.fx = getelementptr inbounds i8, ptr %.6256, i64 -4
  %i.fy = load <16 x i32>, ptr %i.fx, align 4, !tbaa !13
  %i.fz = load <16 x i32>, ptr %.6215255, align 64, !tbaa !13
  %i.ga = add <16 x i32> %i.fy, %i.fw
  %i.gb = mul <16 x i32> %i.ga, %i.cm
  %i.gc = add <16 x i32> %i.gb, %i.co
  %i.gd = tail call <16 x i32> @llvm.x86.avx512.psrai.d.512(<16 x i32> %i.gc, i32 range(i32 0, 256) %i.ea)
  %i.ge = sub <16 x i32> %i.fz, %i.gd
  store <16 x i32> %i.ge, ptr %.6215255, align 64, !tbaa !13
  %i.gf = add nsw i32 %.0221254, -16
  %i.gg = getelementptr inbounds nuw i8, ptr %.6256, i64 64
  %i.gh = getelementptr inbounds nuw i8, ptr %.6215255, i64 64
  %i.gi = icmp sgt i32 %.0221254, 16
  br i1 %i.gi, label %.lr.ph257, label %.loopexit, !llvm.loop !126

.lr.ph:                                           ; preds = %.preheader246, %.lr.ph
  %.7253 = phi ptr [ %i.gt, %.lr.ph ], [ %.0203286, %.preheader246 ] ; 3 uses
  %.7216252 = phi ptr [ %i.gu, %.lr.ph ], [ %.0204285, %.preheader246 ] ; 3 uses
  %.1222251 = phi i32 [ %i.gs, %.lr.ph ], [ %.0205284, %.preheader246 ] ; 2 uses
  %i.gj = load <16 x i32>, ptr %.7253, align 64, !tbaa !13
  %i.gk = getelementptr inbounds nuw i8, ptr %.7253, i64 4
  %i.gl = load <16 x i32>, ptr %i.gk, align 4, !tbaa !13
  %i.gm = load <16 x i32>, ptr %.7216252, align 64, !tbaa !13
  %i.gn = add <16 x i32> %i.gl, %i.gj
  %i.go = mul <16 x i32> %i.gn, %i.cm
  %i.gp = add <16 x i32> %i.go, %i.co
  %i.gq = tail call <16 x i32> @llvm.x86.avx512.psrai.d.512(<16 x i32> %i.gp, i32 range(i32 0, 256) %i.ea)
  %i.gr = sub <16 x i32> %i.gm, %i.gq
  store <16 x i32> %i.gr, ptr %.7216252, align 64, !tbaa !13
  %i.gs = add nsw i32 %.1222251, -16
  %i.gt = getelementptr inbounds nuw i8, ptr %.7253, i64 64
  %i.gu = getelementptr inbounds nuw i8, ptr %.7216252, i64 64
  %i.gv = icmp sgt i32 %.1222251, 16
  br i1 %i.gv, label %.lr.ph, label %.loopexit, !llvm.loop !127

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph257, %.lr.ph261, %.lr.ph265, %.lr.ph269, %.lr.ph273, %bb.f, %bb.e, %.preheader246, %.preheader244, %.preheader242, %.preheader240, %.preheader238, %.preheader236, %.preheader234, %.preheader
  %i.gw = xor i1 %.0.in287, true
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !128

bb.l:                                             ; preds = %bb.a
  br i1 %5, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.gx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !13
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !32
  br label %_ZN4ojph5localL19avx512_interleave32EPfS1_S1_i.exit.sink.split

bb.n:                                             ; preds = %bb.l
  %i.ha = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !13
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !32
  %i.hd = ashr i32 %i.hc, 1
  br label %_ZN4ojph5localL19avx512_interleave32EPfS1_S1_i.exit.sink.split

_ZN4ojph5localL19avx512_interleave32EPfS1_S1_i.exit.sink.split: ; preds = %bb.n, %bb.m
  %.sink = phi i32 [ %i.gz, %bb.m ], [ %i.hd, %bb.n ]
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !13
  store i32 %.sink, ptr %i.hf, align 4, !tbaa !32
  br label %_ZN4ojph5localL19avx512_interleave32EPfS1_S1_i.exit

_ZN4ojph5localL19avx512_interleave32EPfS1_S1_i.exit: ; preds = %.lr.ph52.i.prol.loopexit, %.lr.ph52.i, %_ZN4ojph5localL19avx512_interleave32EPfS1_S1_i.exit.sink.split, %.preheader.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4ojph5local21avx512_rev_horz_syn64EPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i32 %4, 1
  br i1 %i.a, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i8, ptr %i.d, align 8, !tbaa !22    ; 2 uses
  %.not274 = icmp eq i8 %i.e, 0
  br i1 %.not274, label %._crit_edge, label %.lr.ph273

.lr.ph273:                                        ; preds = %bb.b
  %not. = xor i1 %5, true
  %i.f = zext i1 %not. to i32
  %i.g = add i32 %4, %i.f
  %i.h = lshr i32 %i.g, 1
  %i.i = zext i1 %5 to i32
  %i.j = add i32 %4, %i.i
  %i.k = lshr i32 %i.j, 1
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.trip.count = zext i8 %i.e to i64
  br label %bb.c

._crit_edge:                                      ; preds = %.loopexit, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !13   ; 4 uses
  %. = select i1 %5, ptr %i.c, ptr %i.b
  %i.q = load ptr, ptr %., align 8, !tbaa !13     ; 4 uses
  %.in210 = select i1 %5, ptr %i.b, ptr %i.c
  %i.r = load ptr, ptr %.in210, align 8, !tbaa !13 ; 4 uses
  %i.s = icmp sgt i32 %4, 8
  br i1 %i.s, label %.lr.ph.i.preheader, label %.preheader.i

.lr.ph.i.preheader:                               ; preds = %._crit_edge
  %i.t = add nsw i32 %4, -9                       ; 2 uses
  %i.u = and i32 %i.t, 16
  %lcmp.mod449.not.not = icmp eq i32 %i.u, 0
  br i1 %lcmp.mod449.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.v = load <8 x double>, ptr %i.q, align 64, !tbaa !13 ; 2 uses
  %i.w = load <8 x double>, ptr %i.r, align 64, !tbaa !13 ; 2 uses
  %i.x = shufflevector <8 x double> %i.v, <8 x double> %i.w, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.y = shufflevector <8 x double> %i.v, <8 x double> %i.w, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x double> %i.x, ptr %i.p, align 64, !tbaa !13
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 128 ; 3 uses
  store <8 x double> %i.y, ptr %i.z, align 64, !tbaa !13
  %i.aa = add nsw i32 %4, -16                     ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 64 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 64 ; 2 uses
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.044.i.unr = phi ptr [ %i.p, %.lr.ph.i.preheader ], [ %i.z, %.lr.ph.i.prol ]
  %.03543.i.unr = phi ptr [ %i.q, %.lr.ph.i.preheader ], [ %i.ab, %.lr.ph.i.prol ]
  %.03742.i.unr = phi ptr [ %i.r, %.lr.ph.i.preheader ], [ %i.ac, %.lr.ph.i.prol ]
  %.03941.i.unr = phi i32 [ %4, %.lr.ph.i.preheader ], [ %i.aa, %.lr.ph.i.prol ]
  %.lcssa438.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.z, %.lr.ph.i.prol ]
  %.lcssa437.unr = phi i32 [ poison, %.lr.ph.i.preheader ], [ %i.aa, %.lr.ph.i.prol ]
  %.lcssa436.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.ab, %.lr.ph.i.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.ac, %.lr.ph.i.prol ]
  %i.ad = icmp ult i32 %i.t, 16
  br i1 %i.ad, label %.preheader.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %._crit_edge
  %.039.lcssa.i = phi i32 [ %4, %._crit_edge ], [ %.lcssa437.unr, %.lr.ph.i.prol.loopexit ], [ %i.bd, %.lr.ph.i ] ; 5 uses
  %.037.lcssa.i = phi ptr [ %i.r, %._crit_edge ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.bf, %.lr.ph.i ] ; 3 uses
  %.035.lcssa.i = phi ptr [ %i.q, %._crit_edge ], [ %.lcssa436.unr, %.lr.ph.i.prol.loopexit ], [ %i.be, %.lr.ph.i ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %i.p, %._crit_edge ], [ %.lcssa438.unr, %.lr.ph.i.prol.loopexit ], [ %i.bc, %.lr.ph.i ] ; 4 uses
  %i.ae = icmp sgt i32 %.039.lcssa.i, 0
  br i1 %i.ae, label %.lr.ph52.i.preheader, label %_ZN4ojph5localL19avx512_interleave64EPdS1_S1_i.exit

.lr.ph52.i.preheader:                             ; preds = %.preheader.i
  %i.af = add nuw i32 %.039.lcssa.i, 15
  %i.ag = and i32 %i.af, 8
  %lcmp.mod451.not.not = icmp eq i32 %i.ag, 0
  br i1 %lcmp.mod451.not.not, label %.lr.ph52.i.prol, label %.lr.ph52.i.prol.loopexit

.lr.ph52.i.prol:                                  ; preds = %.lr.ph52.i.preheader
  %i.ah = load <4 x double>, ptr %.035.lcssa.i, align 32, !tbaa !13 ; 2 uses
  %i.ai = load <4 x double>, ptr %.037.lcssa.i, align 32, !tbaa !13 ; 2 uses
  %i.aj = shufflevector <4 x double> %i.ah, <4 x double> %i.ai, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ak = shufflevector <4 x double> %i.ah, <4 x double> %i.ai, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x double> %i.aj, ptr %.0.lcssa.i, align 32, !tbaa !13
  %i.al = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 32
  store <4 x double> %i.ak, ptr %i.al, align 32, !tbaa !13
  %i.am = add nsw i32 %.039.lcssa.i, -8
  %i.an = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 64
  %i.ao = getelementptr inbounds nuw i8, ptr %.035.lcssa.i, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %.037.lcssa.i, i64 32
  br label %.lr.ph52.i.prol.loopexit

.lr.ph52.i.prol.loopexit:                         ; preds = %.lr.ph52.i.prol, %.lr.ph52.i.preheader
  %.151.i.unr = phi ptr [ %.0.lcssa.i, %.lr.ph52.i.preheader ], [ %i.an, %.lr.ph52.i.prol ]
  %.13650.i.unr = phi ptr [ %.035.lcssa.i, %.lr.ph52.i.preheader ], [ %i.ao, %.lr.ph52.i.prol ]
  %.13849.i.unr = phi ptr [ %.037.lcssa.i, %.lr.ph52.i.preheader ], [ %i.ap, %.lr.ph52.i.prol ]
  %.14048.i.unr = phi i32 [ %.039.lcssa.i, %.lr.ph52.i.preheader ], [ %i.am, %.lr.ph52.i.prol ]
  %i.aq = icmp ult i32 %.039.lcssa.i, 9
  br i1 %i.aq, label %_ZN4ojph5localL19avx512_interleave64EPdS1_S1_i.exit, label %.lr.ph52.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.044.i = phi ptr [ %i.bc, %.lr.ph.i ], [ %.044.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.03543.i = phi ptr [ %i.be, %.lr.ph.i ], [ %.03543.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.03742.i = phi ptr [ %i.bf, %.lr.ph.i ], [ %.03742.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.03941.i = phi i32 [ %i.bd, %.lr.ph.i ], [ %.03941.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %i.ar = load <8 x double>, ptr %.03543.i, align 64, !tbaa !13 ; 2 uses
  %i.as = load <8 x double>, ptr %.03742.i, align 64, !tbaa !13 ; 2 uses
  %i.at = shufflevector <8 x double> %i.ar, <8 x double> %i.as, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.au = shufflevector <8 x double> %i.ar, <8 x double> %i.as, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x double> %i.at, ptr %.044.i, align 64, !tbaa !13
  %i.av = getelementptr inbounds nuw i8, ptr %.044.i, i64 128 ; 2 uses
  store <8 x double> %i.au, ptr %i.av, align 64, !tbaa !13
  %i.aw = getelementptr inbounds nuw i8, ptr %.03543.i, i64 64
  %i.ax = getelementptr inbounds nuw i8, ptr %.03742.i, i64 64
  %i.ay = load <8 x double>, ptr %i.aw, align 64, !tbaa !13 ; 2 uses
  %i.az = load <8 x double>, ptr %i.ax, align 64, !tbaa !13 ; 2 uses
  %i.ba = shufflevector <8 x double> %i.ay, <8 x double> %i.az, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bb = shufflevector <8 x double> %i.ay, <8 x double> %i.az, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x double> %i.ba, ptr %i.av, align 64, !tbaa !13
  %i.bc = getelementptr inbounds nuw i8, ptr %.044.i, i64 256 ; 3 uses
  store <8 x double> %i.bb, ptr %i.bc, align 64, !tbaa !13
  %i.bd = add nsw i32 %.03941.i, -32              ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.03543.i, i64 128 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.03742.i, i64 128 ; 2 uses
  %i.bg = icmp sgt i32 %.03941.i, 40
  br i1 %i.bg, label %.lr.ph.i, label %.preheader.i, !llvm.loop !129

.lr.ph52.i:                                       ; preds = %.lr.ph52.i.prol.loopexit, %.lr.ph52.i
  %.151.i = phi ptr [ %i.bv, %.lr.ph52.i ], [ %.151.i.unr, %.lr.ph52.i.prol.loopexit ] ; 5 uses
  %.13650.i = phi ptr [ %i.bw, %.lr.ph52.i ], [ %.13650.i.unr, %.lr.ph52.i.prol.loopexit ] ; 3 uses
  %.13849.i = phi ptr [ %i.bx, %.lr.ph52.i ], [ %.13849.i.unr, %.lr.ph52.i.prol.loopexit ] ; 3 uses
  %.14048.i = phi i32 [ %i.bu, %.lr.ph52.i ], [ %.14048.i.unr, %.lr.ph52.i.prol.loopexit ] ; 2 uses
  %i.bh = load <4 x double>, ptr %.13650.i, align 32, !tbaa !13 ; 2 uses
  %i.bi = load <4 x double>, ptr %.13849.i, align 32, !tbaa !13 ; 2 uses
  %i.bj = shufflevector <4 x double> %i.bh, <4 x double> %i.bi, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.bk = shufflevector <4 x double> %i.bh, <4 x double> %i.bi, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x double> %i.bj, ptr %.151.i, align 32, !tbaa !13
  %i.bl = getelementptr inbounds nuw i8, ptr %.151.i, i64 32
  store <4 x double> %i.bk, ptr %i.bl, align 32, !tbaa !13
  %i.bm = getelementptr inbounds nuw i8, ptr %.151.i, i64 64
  %i.bn = getelementptr inbounds nuw i8, ptr %.13650.i, i64 32
  %i.bo = getelementptr inbounds nuw i8, ptr %.13849.i, i64 32
  %i.bp = load <4 x double>, ptr %i.bn, align 32, !tbaa !13 ; 2 uses
  %i.bq = load <4 x double>, ptr %i.bo, align 32, !tbaa !13 ; 2 uses
  %i.br = shufflevector <4 x double> %i.bp, <4 x double> %i.bq, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.bs = shufflevector <4 x double> %i.bp, <4 x double> %i.bq, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x double> %i.br, ptr %i.bm, align 32, !tbaa !13
  %i.bt = getelementptr inbounds nuw i8, ptr %.151.i, i64 96
  store <4 x double> %i.bs, ptr %i.bt, align 32, !tbaa !13
  %i.bu = add nsw i32 %.14048.i, -16
  %i.bv = getelementptr inbounds nuw i8, ptr %.151.i, i64 128
  %i.bw = getelementptr inbounds nuw i8, ptr %.13650.i, i64 64
  %i.bx = getelementptr inbounds nuw i8, ptr %.13849.i, i64 64
  %i.by = icmp sgt i32 %.14048.i, 16
  br i1 %i.by, label %.lr.ph52.i, label %_ZN4ojph5localL19avx512_interleave64EPdS1_S1_i.exit, !llvm.loop !130

bb.c:                                             ; preds = %.lr.ph273, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph273 ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %.0.in272 = phi i1 [ %5, %.lr.ph273 ], [ %i.my, %.loopexit ] ; 5 uses
  %.0185271 = phi ptr [ %i.m, %.lr.ph273 ], [ %.0186270, %.loopexit ] ; 27 uses
  %.0186270 = phi ptr [ %i.l, %.lr.ph273 ], [ %.0185271, %.loopexit ] ; 23 uses
  %.0189269 = phi i32 [ %i.k, %.lr.ph273 ], [ %.0190268, %.loopexit ] ; 25 uses
  %.0190268 = phi i32 [ %i.h, %.lr.ph273 ], [ %.0189269, %.loopexit ] ; 3 uses
  %i.bz = load ptr, ptr %i.n, align 8, !tbaa !24
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cc = load i16, ptr %i.cb, align 4, !tbaa !13 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 2
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !13 ; 2 uses
  %i.cf = load i8, ptr %i.ca, align 4, !tbaa !13  ; 6 uses
  %i.cg = sext i16 %i.ce to i64                   ; 11 uses
  %i.ch = insertelement <8 x i64> poison, i64 %i.cg, i64 0
  %i.ci = shufflevector <8 x i64> %i.ch, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.cj = load i64, ptr %.0185271, align 8, !tbaa !27
  %i.ck = getelementptr inbounds i8, ptr %.0185271, i64 -8
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !27
  %i.cl = add nsw i32 %.0190268, -1
  %i.cm = zext i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %.0185271, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !27
  %i.cp = zext nneg i32 %.0190268 to i64
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.0185271, i64 %i.cp
  store i64 %i.co, ptr %i.cq, align 8, !tbaa !27
  %i.cr = icmp eq i16 %i.cc, 1
  br i1 %i.cr, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %.not280 = icmp eq i32 %.0189269, 0             ; 2 uses
  br i1 %.0.in272, label %.preheader, label %.preheader217

.preheader217:                                    ; preds = %bb.d
  br i1 %.not280, label %.loopexit, label %.lr.ph262

.lr.ph262:                                        ; preds = %.preheader217
  %i.cs = zext i8 %i.cf to i32
  br label %bb.f

.preheader:                                       ; preds = %bb.d
  br i1 %.not280, label %.loopexit, label %.lr.ph266

.lr.ph266:                                        ; preds = %.preheader
  %i.ct = zext i8 %i.cf to i32
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph266, %bb.e
  %.0192265 = phi ptr [ %.0185271, %.lr.ph266 ], [ %i.dd, %bb.e ] ; 3 uses
  %.0193264 = phi ptr [ %.0186270, %.lr.ph266 ], [ %i.de, %bb.e ] ; 3 uses
  %.0203263 = phi i32 [ %.0189269, %.lr.ph266 ], [ %i.dc, %bb.e ] ; 2 uses
  %i.cu = load <8 x i64>, ptr %.0192265, align 64, !tbaa !13
  %i.cv = getelementptr inbounds i8, ptr %.0192265, i64 -8
  %i.cw = load <8 x i64>, ptr %i.cv, align 8, !tbaa !13
  %i.cx = load <8 x i64>, ptr %.0193264, align 64, !tbaa !13
  %i.cy = add <8 x i64> %i.cu, %i.ci
  %i.cz = add <8 x i64> %i.cy, %i.cw
  %i.da = tail call noundef <8 x i64> @llvm.x86.avx512.psrai.q.512(<8 x i64> %i.cz, i32 range(i32 0, 256) %i.ct)
  %i.db = sub <8 x i64> %i.cx, %i.da
  store <8 x i64> %i.db, ptr %.0193264, align 64, !tbaa !13
  %i.dc = add nsw i32 %.0203263, -8
  %i.dd = getelementptr inbounds nuw i8, ptr %.0192265, i64 64
  %i.de = getelementptr inbounds nuw i8, ptr %.0193264, i64 64
  %i.df = icmp sgt i32 %.0203263, 8
  br i1 %i.df, label %bb.e, label %.loopexit, !llvm.loop !131

bb.f:                                             ; preds = %.lr.ph262, %bb.f
  %.1261 = phi ptr [ %.0185271, %.lr.ph262 ], [ %i.dp, %bb.f ] ; 3 uses
  %.1194260 = phi ptr [ %.0186270, %.lr.ph262 ], [ %i.dq, %bb.f ] ; 3 uses
  %.1204259 = phi i32 [ %.0189269, %.lr.ph262 ], [ %i.do, %bb.f ] ; 2 uses
  %i.dg = load <8 x i64>, ptr %.1261, align 64, !tbaa !13
  %i.dh = getelementptr inbounds nuw i8, ptr %.1261, i64 8
  %i.di = load <8 x i64>, ptr %i.dh, align 8, !tbaa !13
  %i.dj = load <8 x i64>, ptr %.1194260, align 64, !tbaa !13
  %i.dk = add <8 x i64> %i.dg, %i.ci
  %i.dl = add <8 x i64> %i.dk, %i.di
  %i.dm = tail call noundef <8 x i64> @llvm.x86.avx512.psrai.q.512(<8 x i64> %i.dl, i32 range(i32 0, 256) %i.cs)
  %i.dn = sub <8 x i64> %i.dj, %i.dm
  store <8 x i64> %i.dn, ptr %.1194260, align 64, !tbaa !13
  %i.do = add nsw i32 %.1204259, -8
  %i.dp = getelementptr inbounds nuw i8, ptr %.1261, i64 64
  %i.dq = getelementptr inbounds nuw i8, ptr %.1194260, i64 64
  %i.dr = icmp sgt i32 %.1204259, 8
  br i1 %i.dr, label %bb.f, label %.loopexit, !llvm.loop !132

bb.g:                                             ; preds = %bb.c
  %i.ds = icmp eq i16 %i.cc, -1                   ; 2 uses
  %i.dt = icmp eq i16 %i.ce, 1
  %or.cond = and i1 %i.ds, %i.dt
  %i.du = zext i8 %i.cf to i32                    ; 2 uses
  %i.dv = icmp eq i8 %i.cf, 1
  %or.cond4 = select i1 %or.cond, i1 %i.dv, i1 false
  %.not278 = icmp eq i32 %.0189269, 0             ; 6 uses
  br i1 %or.cond4, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  br i1 %.0.in272, label %.preheader219, label %.preheader221

.preheader221:                                    ; preds = %bb.h
  br i1 %.not278, label %.loopexit, label %.lr.ph254

.preheader219:                                    ; preds = %bb.h
  br i1 %.not278, label %.loopexit, label %.lr.ph258

.lr.ph258:                                        ; preds = %.preheader219, %.lr.ph258
  %.2257 = phi ptr [ %i.ee, %.lr.ph258 ], [ %.0185271, %.preheader219 ] ; 3 uses
  %.2195256 = phi ptr [ %i.ef, %.lr.ph258 ], [ %.0186270, %.preheader219 ] ; 3 uses
  %.0205255 = phi i32 [ %i.ed, %.lr.ph258 ], [ %.0189269, %.preheader219 ] ; 2 uses
  %i.dw = load <8 x i64>, ptr %.2257, align 64, !tbaa !13
  %i.dx = getelementptr inbounds i8, ptr %.2257, i64 -8
  %i.dy = load <8 x i64>, ptr %i.dx, align 8, !tbaa !13
  %i.dz = load <8 x i64>, ptr %.2195256, align 64, !tbaa !13
  %i.ea = add <8 x i64> %i.dy, %i.dw
  %i.eb = ashr <8 x i64> %i.ea, splat (i64 1)
  %i.ec = add <8 x i64> %i.eb, %i.dz
  store <8 x i64> %i.ec, ptr %.2195256, align 64, !tbaa !13
  %i.ed = add nsw i32 %.0205255, -8
  %i.ee = getelementptr inbounds nuw i8, ptr %.2257, i64 64
  %i.ef = getelementptr inbounds nuw i8, ptr %.2195256, i64 64
  %i.eg = icmp sgt i32 %.0205255, 8
  br i1 %i.eg, label %.lr.ph258, label %.loopexit, !llvm.loop !133

.lr.ph254:                                        ; preds = %.preheader221, %.lr.ph254
  %.3253 = phi ptr [ %i.ep, %.lr.ph254 ], [ %.0185271, %.preheader221 ] ; 3 uses
  %.3196252 = phi ptr [ %i.eq, %.lr.ph254 ], [ %.0186270, %.preheader221 ] ; 3 uses
  %.1206251 = phi i32 [ %i.eo, %.lr.ph254 ], [ %.0189269, %.preheader221 ] ; 2 uses
  %i.eh = load <8 x i64>, ptr %.3253, align 64, !tbaa !13
  %i.ei = getelementptr inbounds nuw i8, ptr %.3253, i64 8
  %i.ej = load <8 x i64>, ptr %i.ei, align 8, !tbaa !13
  %i.ek = load <8 x i64>, ptr %.3196252, align 64, !tbaa !13
  %i.el = add <8 x i64> %i.ej, %i.eh
  %i.em = ashr <8 x i64> %i.el, splat (i64 1)
  %i.en = add <8 x i64> %i.em, %i.ek
  store <8 x i64> %i.en, ptr %.3196252, align 64, !tbaa !13
  %i.eo = add nsw i32 %.1206251, -8
  %i.ep = getelementptr inbounds nuw i8, ptr %.3253, i64 64
  %i.eq = getelementptr inbounds nuw i8, ptr %.3196252, i64 64
  %i.er = icmp sgt i32 %.1206251, 8
  br i1 %i.er, label %.lr.ph254, label %.loopexit, !llvm.loop !134

bb.i:                                             ; preds = %bb.g
  br i1 %i.ds, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  br i1 %.0.in272, label %.preheader223, label %.preheader225

.preheader225:                                    ; preds = %bb.j
  br i1 %.not278, label %.loopexit, label %.lr.ph246

.preheader223:                                    ; preds = %bb.j
  br i1 %.not278, label %.loopexit, label %.lr.ph250

.lr.ph250:                                        ; preds = %.preheader223, %.lr.ph250
  %.4249 = phi ptr [ %i.fb, %.lr.ph250 ], [ %.0185271, %.preheader223 ] ; 3 uses
  %.4197248 = phi ptr [ %i.fc, %.lr.ph250 ], [ %.0186270, %.preheader223 ] ; 3 uses
  %.0201247 = phi i32 [ %i.fa, %.lr.ph250 ], [ %.0189269, %.preheader223 ] ; 2 uses
  %i.es = load <8 x i64>, ptr %.4249, align 64, !tbaa !13
  %i.et = getelementptr inbounds i8, ptr %.4249, i64 -8
  %i.eu = load <8 x i64>, ptr %i.et, align 8, !tbaa !13
  %i.ev = load <8 x i64>, ptr %.4197248, align 64, !tbaa !13
  %i.ew = add <8 x i64> %i.es, %i.eu
  %i.ex = sub <8 x i64> %i.ci, %i.ew
  %i.ey = tail call noundef <8 x i64> @llvm.x86.avx512.psrai.q.512(<8 x i64> %i.ex, i32 range(i32 0, 256) %i.du)
  %i.ez = sub <8 x i64> %i.ev, %i.ey
  store <8 x i64> %i.ez, ptr %.4197248, align 64, !tbaa !13
  %i.fa = add nsw i32 %.0201247, -8
  %i.fb = getelementptr inbounds nuw i8, ptr %.4249, i64 64
  %i.fc = getelementptr inbounds nuw i8, ptr %.4197248, i64 64
  %i.fd = icmp sgt i32 %.0201247, 8
  br i1 %i.fd, label %.lr.ph250, label %.loopexit, !llvm.loop !135

.lr.ph246:                                        ; preds = %.preheader225, %.lr.ph246
  %.5245 = phi ptr [ %i.fn, %.lr.ph246 ], [ %.0185271, %.preheader225 ] ; 3 uses
  %.5198244 = phi ptr [ %i.fo, %.lr.ph246 ], [ %.0186270, %.preheader225 ] ; 3 uses
  %.1202243 = phi i32 [ %i.fm, %.lr.ph246 ], [ %.0189269, %.preheader225 ] ; 2 uses
  %i.fe = load <8 x i64>, ptr %.5245, align 64, !tbaa !13
  %i.ff = getelementptr inbounds nuw i8, ptr %.5245, i64 8
  %i.fg = load <8 x i64>, ptr %i.ff, align 8, !tbaa !13
  %i.fh = load <8 x i64>, ptr %.5198244, align 64, !tbaa !13
  %i.fi = add <8 x i64> %i.fe, %i.fg
  %i.fj = sub <8 x i64> %i.ci, %i.fi
  %i.fk = tail call noundef <8 x i64> @llvm.x86.avx512.psrai.q.512(<8 x i64> %i.fj, i32 range(i32 0, 256) %i.du)
  %i.fl = sub <8 x i64> %i.fh, %i.fk
  store <8 x i64> %i.fl, ptr %.5198244, align 64, !tbaa !13
  %i.fm = add nsw i32 %.1202243, -8
  %i.fn = getelementptr inbounds nuw i8, ptr %.5245, i64 64
  %i.fo = getelementptr inbounds nuw i8, ptr %.5198244, i64 64
  %i.fp = icmp sgt i32 %.1202243, 8
  br i1 %i.fp, label %.lr.ph246, label %.loopexit, !llvm.loop !136

bb.k:                                             ; preds = %bb.i
  br i1 %.0.in272, label %.preheader227, label %.preheader229

.preheader229:                                    ; preds = %bb.k
  br i1 %.not278, label %.loopexit, label %iter.check410

iter.check410:                                    ; preds = %.preheader229
  %i.fq = sext i16 %i.cc to i64                   ; 5 uses
  %i.fr = zext nneg i8 %i.cf to i64               ; 5 uses
  %i.fs = zext nneg i32 %.0189269 to i64          ; 5 uses
  %min.iters.check372 = icmp samesign ult i32 %.0189269, 8
  br i1 %min.iters.check372, label %vec.epilog.scalar.ph412.preheader, label %vector.memcheck373

vector.memcheck373:                               ; preds = %iter.check410
  %i.ft = add nsw i32 %.0189269, -1
  %i.fu = zext i32 %i.ft to i64
  %i.fv = shl nuw nsw i64 %i.fu, 3                ; 2 uses
  %i.fw = getelementptr i8, ptr %.0186270, i64 %i.fv
  %i.fx = getelementptr i8, ptr %i.fw, i64 8
  %i.fy = getelementptr i8, ptr %.0185271, i64 %i.fv
  %i.fz = getelementptr i8, ptr %i.fy, i64 16
  %bound0377 = icmp ult ptr %.0186270, %i.fz
  %bound1378 = icmp ult ptr %.0185271, %i.fx
  %found.conflict379 = and i1 %bound0377, %bound1378
  br i1 %found.conflict379, label %vec.epilog.scalar.ph412.preheader, label %vector.main.loop.iter.check381

vector.main.loop.iter.check381:                   ; preds = %vector.memcheck373
  %min.iters.check382 = icmp samesign ult i32 %.0189269, 32
  br i1 %min.iters.check382, label %vec.epilog.ph414, label %vector.ph383

vector.ph383:                                     ; preds = %vector.main.loop.iter.check381
  %i.ga = and i64 %i.fs, 24
  %n.vec384 = and i64 %i.fs, 2147483616           ; 5 uses
  %i.gb = trunc nuw nsw i64 %n.vec384 to i32
  %i.gc = sub nsw i32 %.0189269, %i.gb
  %i.gd = shl nuw nsw i64 %n.vec384, 3            ; 2 uses
  %i.ge = getelementptr i8, ptr %.0185271, i64 %i.gd
  %i.gf = getelementptr i8, ptr %.0186270, i64 %i.gd
  %broadcast.splatinsert385 = insertelement <8 x i64> poison, i64 %i.fq, i64 0
  %broadcast.splat386 = shufflevector <8 x i64> %broadcast.splatinsert385, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert387 = insertelement <8 x i64> poison, i64 %i.fr, i64 0
  %broadcast.splat388 = shufflevector <8 x i64> %broadcast.splatinsert387, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert389 = insertelement <8 x i64> poison, i64 %i.cg, i64 0
  %broadcast.splat390 = shufflevector <8 x i64> %broadcast.splatinsert389, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body391

vector.body391:                                   ; preds = %vector.ph383, %vector.body391
  %index392 = phi i64 [ 0, %vector.ph383 ], [ %index.next407, %vector.body391 ] ; 2 uses
  %i.gg = shl i64 %index392, 3                    ; 2 uses
  %next.gep393 = getelementptr i8, ptr %.0185271, i64 %i.gg ; 8 uses
  %next.gep394 = getelementptr i8, ptr %.0186270, i64 %i.gg ; 5 uses
  %i.gh = getelementptr i8, ptr %next.gep393, i64 64
  %i.gi = getelementptr i8, ptr %next.gep393, i64 128
  %i.gj = getelementptr i8, ptr %next.gep393, i64 192
  %wide.load395 = load <8 x i64>, ptr %next.gep393, align 8, !tbaa !27, !alias.scope !150
  %wide.load396 = load <8 x i64>, ptr %i.gh, align 8, !tbaa !27, !alias.scope !150
  %wide.load397 = load <8 x i64>, ptr %i.gi, align 8, !tbaa !27, !alias.scope !150
  %wide.load398 = load <8 x i64>, ptr %i.gj, align 8, !tbaa !27, !alias.scope !150
  %i.gk = getelementptr inbounds nuw i8, ptr %next.gep393, i64 8
  %i.gl = getelementptr inbounds nuw i8, ptr %next.gep393, i64 72
  %i.gm = getelementptr inbounds nuw i8, ptr %next.gep393, i64 136
  %i.gn = getelementptr inbounds nuw i8, ptr %next.gep393, i64 200
  %wide.load399 = load <8 x i64>, ptr %i.gk, align 8, !tbaa !27, !alias.scope !150
  %wide.load400 = load <8 x i64>, ptr %i.gl, align 8, !tbaa !27, !alias.scope !150
  %wide.load401 = load <8 x i64>, ptr %i.gm, align 8, !tbaa !27, !alias.scope !150
  %wide.load402 = load <8 x i64>, ptr %i.gn, align 8, !tbaa !27, !alias.scope !150
  %i.go = add nsw <8 x i64> %wide.load399, %wide.load395
  %i.gp = add nsw <8 x i64> %wide.load400, %wide.load396
  %i.gq = add nsw <8 x i64> %wide.load401, %wide.load397
  %i.gr = add nsw <8 x i64> %wide.load402, %wide.load398
  %i.gs = mul nsw <8 x i64> %i.go, %broadcast.splat386
  %i.gt = mul nsw <8 x i64> %i.gp, %broadcast.splat386
  %i.gu = mul nsw <8 x i64> %i.gq, %broadcast.splat386
  %i.gv = mul nsw <8 x i64> %i.gr, %broadcast.splat386
  %i.gw = add nsw <8 x i64> %i.gs, %broadcast.splat390
  %i.gx = add nsw <8 x i64> %i.gt, %broadcast.splat390
  %i.gy = add nsw <8 x i64> %i.gu, %broadcast.splat390
  %i.gz = add nsw <8 x i64> %i.gv, %broadcast.splat390
  %i.ha = ashr <8 x i64> %i.gw, %broadcast.splat388
  %i.hb = ashr <8 x i64> %i.gx, %broadcast.splat388
  %i.hc = ashr <8 x i64> %i.gy, %broadcast.splat388
  %i.hd = ashr <8 x i64> %i.gz, %broadcast.splat388
  %i.he = getelementptr i8, ptr %next.gep394, i64 64 ; 2 uses
  %i.hf = getelementptr i8, ptr %next.gep394, i64 128 ; 2 uses
  %i.hg = getelementptr i8, ptr %next.gep394, i64 192 ; 2 uses
  %wide.load403 = load <8 x i64>, ptr %next.gep394, align 8, !tbaa !27, !alias.scope !151, !noalias !150
  %wide.load404 = load <8 x i64>, ptr %i.he, align 8, !tbaa !27, !alias.scope !151, !noalias !150
  %wide.load405 = load <8 x i64>, ptr %i.hf, align 8, !tbaa !27, !alias.scope !151, !noalias !150
  %wide.load406 = load <8 x i64>, ptr %i.hg, align 8, !tbaa !27, !alias.scope !151, !noalias !150
  %i.hh = sub nsw <8 x i64> %wide.load403, %i.ha
  %i.hi = sub nsw <8 x i64> %wide.load404, %i.hb
  %i.hj = sub nsw <8 x i64> %wide.load405, %i.hc
  %i.hk = sub nsw <8 x i64> %wide.load406, %i.hd
  store <8 x i64> %i.hh, ptr %next.gep394, align 8, !tbaa !27, !alias.scope !151, !noalias !150
  store <8 x i64> %i.hi, ptr %i.he, align 8, !tbaa !27, !alias.scope !151, !noalias !150
  store <8 x i64> %i.hj, ptr %i.hf, align 8, !tbaa !27, !alias.scope !151, !noalias !150
  store <8 x i64> %i.hk, ptr %i.hg, align 8, !tbaa !27, !alias.scope !151, !noalias !150
  %index.next407 = add nuw i64 %index392, 32      ; 2 uses
  %i.hl = icmp eq i64 %index.next407, %n.vec384
  br i1 %i.hl, label %middle.block408, label %vector.body391, !llvm.loop !140

middle.block408:                                  ; preds = %vector.body391
  %cmp.n409 = icmp eq i64 %n.vec384, %i.fs
  br i1 %cmp.n409, label %.loopexit, label %vec.epilog.iter.check411

vec.epilog.iter.check411:                         ; preds = %middle.block408
  %min.epilog.iters.check413 = icmp eq i64 %i.ga, 0
  br i1 %min.epilog.iters.check413, label %vec.epilog.scalar.ph412.preheader, label %vec.epilog.ph414, !prof !33

vec.epilog.ph414:                                 ; preds = %vector.main.loop.iter.check381, %vec.epilog.iter.check411
  %vec.epilog.resume.val415 = phi i64 [ %n.vec384, %vec.epilog.iter.check411 ], [ 0, %vector.main.loop.iter.check381 ]
  %n.vec416 = and i64 %i.fs, 2147483640           ; 4 uses
  %i.hm = trunc nuw nsw i64 %n.vec416 to i32
  %i.hn = sub nsw i32 %.0189269, %i.hm
  %i.ho = shl nuw nsw i64 %n.vec416, 3            ; 2 uses
  %i.hp = getelementptr i8, ptr %.0185271, i64 %i.ho
  %i.hq = getelementptr i8, ptr %.0186270, i64 %i.ho
  %broadcast.splatinsert417 = insertelement <8 x i64> poison, i64 %i.fq, i64 0
  %broadcast.splat418 = shufflevector <8 x i64> %broadcast.splatinsert417, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert419 = insertelement <8 x i64> poison, i64 %i.fr, i64 0
  %broadcast.splat420 = shufflevector <8 x i64> %broadcast.splatinsert419, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert421 = insertelement <8 x i64> poison, i64 %i.cg, i64 0
  %broadcast.splat422 = shufflevector <8 x i64> %broadcast.splatinsert421, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body423

vec.epilog.vector.body423:                        ; preds = %vec.epilog.vector.body423, %vec.epilog.ph414
  %index424 = phi i64 [ %vec.epilog.resume.val415, %vec.epilog.ph414 ], [ %index.next430, %vec.epilog.vector.body423 ] ; 2 uses
  %i.hr = shl i64 %index424, 3                    ; 2 uses
  %next.gep425 = getelementptr i8, ptr %.0185271, i64 %i.hr ; 2 uses
  %next.gep426 = getelementptr i8, ptr %.0186270, i64 %i.hr ; 2 uses
  %wide.load427 = load <8 x i64>, ptr %next.gep425, align 8, !tbaa !27, !alias.scope !150
  %i.hs = getelementptr inbounds nuw i8, ptr %next.gep425, i64 8
  %wide.load428 = load <8 x i64>, ptr %i.hs, align 8, !tbaa !27, !alias.scope !150
  %i.ht = add nsw <8 x i64> %wide.load428, %wide.load427
  %i.hu = mul nsw <8 x i64> %i.ht, %broadcast.splat418
  %i.hv = add nsw <8 x i64> %i.hu, %broadcast.splat422
  %i.hw = ashr <8 x i64> %i.hv, %broadcast.splat420
  %wide.load429 = load <8 x i64>, ptr %next.gep426, align 8, !tbaa !27, !alias.scope !151, !noalias !150
  %i.hx = sub nsw <8 x i64> %wide.load429, %i.hw
  store <8 x i64> %i.hx, ptr %next.gep426, align 8, !tbaa !27, !alias.scope !151, !noalias !150
  %index.next430 = add nuw i64 %index424, 8       ; 2 uses
  %i.hy = icmp eq i64 %index.next430, %n.vec416
  br i1 %i.hy, label %vec.epilog.middle.block431, label %vec.epilog.vector.body423, !llvm.loop !141

vec.epilog.middle.block431:                       ; preds = %vec.epilog.vector.body423
  %cmp.n432 = icmp eq i64 %n.vec416, %i.fs
  br i1 %cmp.n432, label %.loopexit, label %vec.epilog.scalar.ph412.preheader

vec.epilog.scalar.ph412.preheader:                ; preds = %iter.check410, %vector.memcheck373, %vec.epilog.iter.check411, %vec.epilog.middle.block431
  %.0187237.ph = phi i32 [ %.0189269, %iter.check410 ], [ %.0189269, %vector.memcheck373 ], [ %i.gc, %vec.epilog.iter.check411 ], [ %i.hn, %vec.epilog.middle.block431 ] ; 4 uses
  %.7236.ph = phi ptr [ %.0185271, %iter.check410 ], [ %.0185271, %vector.memcheck373 ], [ %i.ge, %vec.epilog.iter.check411 ], [ %i.hp, %vec.epilog.middle.block431 ] ; 3 uses
  %.7200235.ph = phi ptr [ %.0186270, %iter.check410 ], [ %.0186270, %vector.memcheck373 ], [ %i.gf, %vec.epilog.iter.check411 ], [ %i.hq, %vec.epilog.middle.block431 ] ; 4 uses
  %xtraiter = and i32 %.0187237.ph, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph412.prol.loopexit, label %vec.epilog.scalar.ph412.prol

vec.epilog.scalar.ph412.prol:                     ; preds = %vec.epilog.scalar.ph412.preheader
  %i.hz = load i64, ptr %.7236.ph, align 8, !tbaa !27
  %i.ia = getelementptr inbounds nuw i8, ptr %.7236.ph, i64 8 ; 2 uses
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !27
  %i.ic = add nsw i64 %i.ib, %i.hz
  %i.id = mul nsw i64 %i.ic, %i.fq
  %i.ie = add nsw i64 %i.id, %i.cg
  %i.if = ashr i64 %i.ie, %i.fr
  %i.ig = load i64, ptr %.7200235.ph, align 8, !tbaa !27
  %i.ih = sub nsw i64 %i.ig, %i.if
  store i64 %i.ih, ptr %.7200235.ph, align 8, !tbaa !27
  %i.ii = add nsw i32 %.0187237.ph, -1
  %i.ij = getelementptr inbounds nuw i8, ptr %.7200235.ph, i64 8
  br label %vec.epilog.scalar.ph412.prol.loopexit

vec.epilog.scalar.ph412.prol.loopexit:            ; preds = %vec.epilog.scalar.ph412.prol, %vec.epilog.scalar.ph412.preheader
  %.0187237.unr = phi i32 [ %.0187237.ph, %vec.epilog.scalar.ph412.preheader ], [ %i.ii, %vec.epilog.scalar.ph412.prol ]
  %.7236.unr = phi ptr [ %.7236.ph, %vec.epilog.scalar.ph412.preheader ], [ %i.ia, %vec.epilog.scalar.ph412.prol ]
  %.7200235.unr = phi ptr [ %.7200235.ph, %vec.epilog.scalar.ph412.preheader ], [ %i.ij, %vec.epilog.scalar.ph412.prol ]
  %i.ik = icmp eq i32 %.0187237.ph, 1
  br i1 %i.ik, label %.loopexit, label %vec.epilog.scalar.ph412

.preheader227:                                    ; preds = %bb.k
  br i1 %.not278, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %.preheader227
  %i.il = sext i16 %i.cc to i64                   ; 5 uses
  %i.im = zext nneg i8 %i.cf to i64               ; 5 uses
  %i.in = zext nneg i32 %.0189269 to i64          ; 5 uses
  %min.iters.check = icmp samesign ult i32 %.0189269, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.io = add nsw i32 %.0189269, -1
  %i.ip = zext i32 %i.io to i64
  %i.iq = shl nuw nsw i64 %i.ip, 3
  %i.ir = add nuw nsw i64 %i.iq, 8                ; 2 uses
  %i.is = getelementptr i8, ptr %.0186270, i64 %i.ir
  %i.it = getelementptr i8, ptr %.0185271, i64 -8
  %i.iu = getelementptr i8, ptr %.0185271, i64 %i.ir
  %bound0322 = icmp ult ptr %.0186270, %i.iu
  %bound1323 = icmp ult ptr %i.it, %i.is
  %found.conflict324 = and i1 %bound0322, %bound1323
  br i1 %found.conflict324, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check325 = icmp samesign ult i32 %.0189269, 32
  br i1 %min.iters.check325, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.iv = and i64 %i.in, 24
  %n.vec = and i64 %i.in, 2147483616              ; 5 uses
  %i.iw = trunc nuw nsw i64 %n.vec to i32
  %i.ix = sub nsw i32 %.0189269, %i.iw
  %i.iy = shl nuw nsw i64 %n.vec, 3               ; 2 uses
  %i.iz = getelementptr i8, ptr %.0185271, i64 %i.iy
  %i.ja = getelementptr i8, ptr %.0186270, i64 %i.iy
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.il, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert326 = insertelement <8 x i64> poison, i64 %i.im, i64 0
  %broadcast.splat327 = shufflevector <8 x i64> %broadcast.splatinsert326, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert328 = insertelement <8 x i64> poison, i64 %i.cg, i64 0
  %broadcast.splat329 = shufflevector <8 x i64> %broadcast.splatinsert328, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.jb = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.0185271, i64 %i.jb ; 8 uses
  %next.gep330 = getelementptr i8, ptr %.0186270, i64 %i.jb ; 5 uses
  %i.jc = getelementptr inbounds i8, ptr %next.gep, i64 -8
  %i.jd = getelementptr inbounds nuw i8, ptr %next.gep, i64 56
  %i.je = getelementptr inbounds nuw i8, ptr %next.gep, i64 120
  %i.jf = getelementptr inbounds nuw i8, ptr %next.gep, i64 184
  %wide.load = load <8 x i64>, ptr %i.jc, align 8, !tbaa !27, !alias.scope !152
  %wide.load331.a = load <8 x i64>, ptr %i.jd, align 8, !tbaa !27, !alias.scope !152
  %wide.load332.a = load <8 x i64>, ptr %i.je, align 8, !tbaa !27, !alias.scope !152
  %wide.load333.a = load <8 x i64>, ptr %i.jf, align 8, !tbaa !27, !alias.scope !152
  %i.jg = getelementptr i8, ptr %next.gep, i64 64
  %i.jh = getelementptr i8, ptr %next.gep, i64 128
  %i.ji = getelementptr i8, ptr %next.gep, i64 192
  %wide.load334.a = load <8 x i64>, ptr %next.gep, align 8, !tbaa !27, !alias.scope !152
  %wide.load335 = load <8 x i64>, ptr %i.jg, align 8, !tbaa !27, !alias.scope !152
  %wide.load336 = load <8 x i64>, ptr %i.jh, align 8, !tbaa !27, !alias.scope !152
  %wide.load337 = load <8 x i64>, ptr %i.ji, align 8, !tbaa !27, !alias.scope !152
  %i.jj = add nsw <8 x i64> %wide.load334.a, %wide.load
  %i.jk = add nsw <8 x i64> %wide.load335, %wide.load331.a
  %i.jl = add nsw <8 x i64> %wide.load336, %wide.load332.a
  %i.jm = add nsw <8 x i64> %wide.load337, %wide.load333.a
  %i.jn = mul nsw <8 x i64> %i.jj, %broadcast.splat
  %i.jo = mul nsw <8 x i64> %i.jk, %broadcast.splat
  %i.jp = mul nsw <8 x i64> %i.jl, %broadcast.splat
  %i.jq = mul nsw <8 x i64> %i.jm, %broadcast.splat
  %i.jr = add nsw <8 x i64> %i.jn, %broadcast.splat329
  %i.js = add nsw <8 x i64> %i.jo, %broadcast.splat329
  %i.jt = add nsw <8 x i64> %i.jp, %broadcast.splat329
  %i.ju = add nsw <8 x i64> %i.jq, %broadcast.splat329
  %i.jv = ashr <8 x i64> %i.jr, %broadcast.splat327
  %i.jw = ashr <8 x i64> %i.js, %broadcast.splat327
  %i.jx = ashr <8 x i64> %i.jt, %broadcast.splat327
  %i.jy = ashr <8 x i64> %i.ju, %broadcast.splat327
  %i.jz = getelementptr i8, ptr %next.gep330, i64 64 ; 2 uses
  %i.ka = getelementptr i8, ptr %next.gep330, i64 128 ; 2 uses
  %i.kb = getelementptr i8, ptr %next.gep330, i64 192 ; 2 uses
  %wide.load338 = load <8 x i64>, ptr %next.gep330, align 8, !tbaa !27, !alias.scope !153, !noalias !152
  %wide.load339 = load <8 x i64>, ptr %i.jz, align 8, !tbaa !27, !alias.scope !153, !noalias !152
  %wide.load340 = load <8 x i64>, ptr %i.ka, align 8, !tbaa !27, !alias.scope !153, !noalias !152
  %wide.load341 = load <8 x i64>, ptr %i.kb, align 8, !tbaa !27, !alias.scope !153, !noalias !152
  %i.kc = sub nsw <8 x i64> %wide.load338, %i.jv
  %i.kd = sub nsw <8 x i64> %wide.load339, %i.jw
  %i.ke = sub nsw <8 x i64> %wide.load340, %i.jx
  %i.kf = sub nsw <8 x i64> %wide.load341, %i.jy
  store <8 x i64> %i.kc, ptr %next.gep330, align 8, !tbaa !27, !alias.scope !153, !noalias !152
  store <8 x i64> %i.kd, ptr %i.jz, align 8, !tbaa !27, !alias.scope !153, !noalias !152
  store <8 x i64> %i.ke, ptr %i.ka, align 8, !tbaa !27, !alias.scope !153, !noalias !152
  store <8 x i64> %i.kf, ptr %i.kb, align 8, !tbaa !27, !alias.scope !153, !noalias !152
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.kg = icmp eq i64 %index.next, %n.vec
  br i1 %i.kg, label %middle.block, label %vector.body, !llvm.loop !145

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.in
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.iv, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !33

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec342 = and i64 %i.in, 2147483640           ; 4 uses
  %i.kh = trunc nuw nsw i64 %n.vec342 to i32
  %i.ki = sub nsw i32 %.0189269, %i.kh
  %i.kj = shl nuw nsw i64 %n.vec342, 3            ; 2 uses
  %i.kk = getelementptr i8, ptr %.0185271, i64 %i.kj
  %i.kl = getelementptr i8, ptr %.0186270, i64 %i.kj
  %broadcast.splatinsert343 = insertelement <8 x i64> poison, i64 %i.il, i64 0
  %broadcast.splat344 = shufflevector <8 x i64> %broadcast.splatinsert343, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert345 = insertelement <8 x i64> poison, i64 %i.im, i64 0
  %broadcast.splat346 = shufflevector <8 x i64> %broadcast.splatinsert345, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert347 = insertelement <8 x i64> poison, i64 %i.cg, i64 0
  %broadcast.splat348 = shufflevector <8 x i64> %broadcast.splatinsert347, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index349 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next355, %vec.epilog.vector.body ] ; 2 uses
  %i.km = shl i64 %index349, 3                    ; 2 uses
  %next.gep350 = getelementptr i8, ptr %.0185271, i64 %i.km ; 2 uses
  %next.gep351 = getelementptr i8, ptr %.0186270, i64 %i.km ; 2 uses
  %i.kn = getelementptr inbounds i8, ptr %next.gep350, i64 -8
  %wide.load352 = load <8 x i64>, ptr %i.kn, align 8, !tbaa !27, !alias.scope !152
  %wide.load353 = load <8 x i64>, ptr %next.gep350, align 8, !tbaa !27, !alias.scope !152
  %i.ko = add nsw <8 x i64> %wide.load353, %wide.load352
  %i.kp = mul nsw <8 x i64> %i.ko, %broadcast.splat344
  %i.kq = add nsw <8 x i64> %i.kp, %broadcast.splat348
  %i.kr = ashr <8 x i64> %i.kq, %broadcast.splat346
  %wide.load354 = load <8 x i64>, ptr %next.gep351, align 8, !tbaa !27, !alias.scope !153, !noalias !152
  %i.ks = sub nsw <8 x i64> %wide.load354, %i.kr
  store <8 x i64> %i.ks, ptr %next.gep351, align 8, !tbaa !27, !alias.scope !153, !noalias !152
  %index.next355 = add nuw i64 %index349, 8       ; 2 uses
  %i.kt = icmp eq i64 %index.next355, %n.vec342
  br i1 %i.kt, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !146

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n356 = icmp eq i64 %n.vec342, %i.in
  br i1 %cmp.n356, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0188241.ph = phi i32 [ %.0189269, %iter.check ], [ %.0189269, %vector.memcheck ], [ %i.ix, %vec.epilog.iter.check ], [ %i.ki, %vec.epilog.middle.block ] ; 4 uses
  %.6240.ph = phi ptr [ %.0185271, %iter.check ], [ %.0185271, %vector.memcheck ], [ %i.iz, %vec.epilog.iter.check ], [ %i.kk, %vec.epilog.middle.block ] ; 4 uses
  %.6199239.ph = phi ptr [ %.0186270, %iter.check ], [ %.0186270, %vector.memcheck ], [ %i.ja, %vec.epilog.iter.check ], [ %i.kl, %vec.epilog.middle.block ] ; 4 uses
  %xtraiter446 = and i32 %.0188241.ph, 1
  %lcmp.mod447.not = icmp eq i32 %xtraiter446, 0
  br i1 %lcmp.mod447.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.ku = getelementptr inbounds i8, ptr %.6240.ph, i64 -8
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !27
  %i.kw = load i64, ptr %.6240.ph, align 8, !tbaa !27
  %i.kx = add nsw i64 %i.kw, %i.kv
  %i.ky = mul nsw i64 %i.kx, %i.il
  %i.kz = add nsw i64 %i.ky, %i.cg
  %i.la = ashr i64 %i.kz, %i.im
  %i.lb = load i64, ptr %.6199239.ph, align 8, !tbaa !27
  %i.lc = sub nsw i64 %i.lb, %i.la
  store i64 %i.lc, ptr %.6199239.ph, align 8, !tbaa !27
  %i.ld = add nsw i32 %.0188241.ph, -1
  %i.le = getelementptr inbounds nuw i8, ptr %.6240.ph, i64 8
  %i.lf = getelementptr inbounds nuw i8, ptr %.6199239.ph, i64 8
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.0188241.unr = phi i32 [ %.0188241.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ld, %vec.epilog.scalar.ph.prol ]
  %.6240.unr = phi ptr [ %.6240.ph, %vec.epilog.scalar.ph.preheader ], [ %i.le, %vec.epilog.scalar.ph.prol ]
  %.6199239.unr = phi ptr [ %.6199239.ph, %vec.epilog.scalar.ph.preheader ], [ %i.lf, %vec.epilog.scalar.ph.prol ]
  %i.lg = icmp eq i32 %.0188241.ph, 1
  br i1 %i.lg, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.0188241 = phi i32 [ %i.ma, %vec.epilog.scalar.ph ], [ %.0188241.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %.6240 = phi ptr [ %i.mb, %vec.epilog.scalar.ph ], [ %.6240.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %.6199239 = phi ptr [ %i.mc, %vec.epilog.scalar.ph ], [ %.6199239.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 4 uses
  %i.lh = getelementptr inbounds i8, ptr %.6240, i64 -8
  %i.li = load i64, ptr %i.lh, align 8, !tbaa !27
  %i.lj = load i64, ptr %.6240, align 8, !tbaa !27
  %i.lk = add nsw i64 %i.lj, %i.li
  %i.ll = mul nsw i64 %i.lk, %i.il
  %i.lm = add nsw i64 %i.ll, %i.cg
  %i.ln = ashr i64 %i.lm, %i.im
  %i.lo = load i64, ptr %.6199239, align 8, !tbaa !27
  %i.lp = sub nsw i64 %i.lo, %i.ln
  store i64 %i.lp, ptr %.6199239, align 8, !tbaa !27
  %i.lq = getelementptr inbounds nuw i8, ptr %.6240, i64 8
  %i.lr = getelementptr inbounds nuw i8, ptr %.6199239, i64 8 ; 2 uses
  %i.ls = load i64, ptr %.6240, align 8, !tbaa !27
  %i.lt = load i64, ptr %i.lq, align 8, !tbaa !27
  %i.lu = add nsw i64 %i.lt, %i.ls
  %i.lv = mul nsw i64 %i.lu, %i.il
  %i.lw = add nsw i64 %i.lv, %i.cg
  %i.lx = ashr i64 %i.lw, %i.im
  %i.ly = load i64, ptr %i.lr, align 8, !tbaa !27
  %i.lz = sub nsw i64 %i.ly, %i.lx
  store i64 %i.lz, ptr %i.lr, align 8, !tbaa !27
  %i.ma = add nsw i32 %.0188241, -2               ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %.6240, i64 16
  %i.mc = getelementptr inbounds nuw i8, ptr %.6199239, i64 16
  %.not211.1 = icmp eq i32 %i.ma, 0
  br i1 %.not211.1, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !147

vec.epilog.scalar.ph412:                          ; preds = %vec.epilog.scalar.ph412.prol.loopexit, %vec.epilog.scalar.ph412
  %.0187237 = phi i32 [ %i.mw, %vec.epilog.scalar.ph412 ], [ %.0187237.unr, %vec.epilog.scalar.ph412.prol.loopexit ]
  %.7236 = phi ptr [ %i.mo, %vec.epilog.scalar.ph412 ], [ %.7236.unr, %vec.epilog.scalar.ph412.prol.loopexit ] ; 3 uses
  %.7200235 = phi ptr [ %i.mx, %vec.epilog.scalar.ph412 ], [ %.7200235.unr, %vec.epilog.scalar.ph412.prol.loopexit ] ; 4 uses
  %i.md = load i64, ptr %.7236, align 8, !tbaa !27
  %i.me = getelementptr inbounds nuw i8, ptr %.7236, i64 8 ; 2 uses
  %i.mf = load i64, ptr %i.me, align 8, !tbaa !27
  %i.mg = add nsw i64 %i.mf, %i.md
  %i.mh = mul nsw i64 %i.mg, %i.fq
  %i.mi = add nsw i64 %i.mh, %i.cg
  %i.mj = ashr i64 %i.mi, %i.fr
  %i.mk = load i64, ptr %.7200235, align 8, !tbaa !27
  %i.ml = sub nsw i64 %i.mk, %i.mj
  store i64 %i.ml, ptr %.7200235, align 8, !tbaa !27
  %i.mm = getelementptr inbounds nuw i8, ptr %.7200235, i64 8 ; 2 uses
  %i.mn = load i64, ptr %i.me, align 8, !tbaa !27
  %i.mo = getelementptr inbounds nuw i8, ptr %.7236, i64 16 ; 2 uses
  %i.mp = load i64, ptr %i.mo, align 8, !tbaa !27
  %i.mq = add nsw i64 %i.mp, %i.mn
  %i.mr = mul nsw i64 %i.mq, %i.fq
  %i.ms = add nsw i64 %i.mr, %i.cg
  %i.mt = ashr i64 %i.ms, %i.fr
  %i.mu = load i64, ptr %i.mm, align 8, !tbaa !27
  %i.mv = sub nsw i64 %i.mu, %i.mt
  store i64 %i.mv, ptr %i.mm, align 8, !tbaa !27
  %i.mw = add nsw i32 %.0187237, -2               ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %.7200235, i64 16
  %.not.1 = icmp eq i32 %i.mw, 0
  br i1 %.not.1, label %.loopexit, label %vec.epilog.scalar.ph412, !llvm.loop !148

.loopexit:                                        ; preds = %vec.epilog.scalar.ph412.prol.loopexit, %vec.epilog.scalar.ph412, %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %.lr.ph246, %.lr.ph250, %.lr.ph254, %.lr.ph258, %bb.f, %bb.e, %middle.block408, %vec.epilog.middle.block431, %middle.block, %vec.epilog.middle.block, %.preheader229, %.preheader227, %.preheader225, %.preheader223, %.preheader221, %.preheader219, %.preheader217, %.preheader
  %i.my = xor i1 %.0.in272, true
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !149

bb.l:                                             ; preds = %bb.a
  br i1 %5, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.mz = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !13
  %i.nb = load i64, ptr %i.na, align 8, !tbaa !27
  br label %_ZN4ojph5localL19avx512_interleave64EPdS1_S1_i.exit.sink.split

bb.n:                                             ; preds = %bb.l
  %i.nc = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !13
  %i.ne = load i64, ptr %i.nd, align 8, !tbaa !27
  %i.nf = ashr i64 %i.ne, 1
  br label %_ZN4ojph5localL19avx512_interleave64EPdS1_S1_i.exit.sink.split

_ZN4ojph5localL19avx512_interleave64EPdS1_S1_i.exit.sink.split: ; preds = %bb.n, %bb.m
  %.sink = phi i64 [ %i.nb, %bb.m ], [ %i.nf, %bb.n ]
  %i.ng = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !13
  store i64 %.sink, ptr %i.nh, align 8, !tbaa !27
  br label %_ZN4ojph5localL19avx512_interleave64EPdS1_S1_i.exit

_ZN4ojph5localL19avx512_interleave64EPdS1_S1_i.exit: ; preds = %.lr.ph52.i.prol.loopexit, %.lr.ph52.i, %_ZN4ojph5localL19avx512_interleave64EPdS1_S1_i.exit.sink.split, %.preheader.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4ojph5local19avx512_rev_horz_synEPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !31
  %i.c = and i32 %i.b, 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4ojph5local21avx512_rev_horz_syn32EPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i1 noundef zeroext %5)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4ojph5local21avx512_rev_horz_syn64EPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i1 noundef zeroext %5)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.psrai.d.512(<16 x i32>, i32) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i64> @llvm.x86.avx512.psrai.q.512(<8 x i64>, i32) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512cd,+avx512f,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512cd,+avx512f,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(none) }

!llvm.module.flags = !{!5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !14}
!1 = distinct !{!1, !14}
!2 = distinct !{!2, !14}
!3 = distinct !{!3, !14}
!4 = distinct !{!4, !14}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!9, !9, i64 0}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = !{!"short", !9, i64 0}
!17 = !{!"float", !9, i64 0}
!18 = !{!"any pointer", !9, i64 0}
!19 = !{!"p1 _ZTSN4ojph5local12lifting_stepE", !18, i64 0}
!20 = !{!"p1 _ZTSN4ojph5local9param_atkE", !18, i64 0}
!21 = !{!"_ZTSN4ojph5local9param_atkE", !16, i64 0, !16, i64 2, !17, i64 4, !9, i64 8, !19, i64 16, !10, i64 24, !9, i64 28, !20, i64 80, !20, i64 88, !20, i64 96}
!22 = !{!21, !9, i64 8}
!23 = !{!21, !17, i64 4}
!24 = !{!21, !19, i64 16}
!25 = !{!17, !17, i64 0}
!26 = !{!"long", !9, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"llvm.loop.isvectorized", i32 1}
!29 = !{!"llvm.loop.unroll.runtime.disable"}
!30 = !{!"_ZTSN4ojph8line_bufE", !26, i64 0, !10, i64 8, !10, i64 12, !9, i64 16}
!31 = !{!30, !10, i64 12}
!32 = !{!10, !10, i64 0}
!33 = !{!"branch_weights", i32 8, i32 24}
!34 = distinct !{!34, !14}
!35 = distinct !{!35, !15}
!36 = distinct !{!36, !15}
!37 = distinct !{!37, !15}
!38 = distinct !{!38, !15}
!39 = distinct !{!39, !15}
!40 = distinct !{!40, !14}
!41 = distinct !{!41, !14}
!42 = distinct !{!42, !14}
!43 = distinct !{!43, !14}
!44 = distinct !{!44, !14}
!45 = distinct !{!45, !14}
!46 = distinct !{!46, !14}
!47 = distinct !{!47, !14}
!48 = distinct !{!48, !14}
!49 = distinct !{!49, !14}
!50 = distinct !{!50, !14}
!51 = distinct !{!51, !14}
!52 = distinct !{!52, !14}
!53 = distinct !{!53, !14}
!54 = distinct !{!54, !14}
!55 = distinct !{!55, !14}
!56 = distinct !{!56, !14}
!57 = distinct !{!57, !14}
!58 = distinct !{!58, !14}
!59 = distinct !{!59, !14}
!60 = distinct !{!60, i1 false, !"LVerDomain"}
!61 = distinct !{!61, !60}
!62 = distinct !{!62, !60}
!63 = distinct !{!63, !60}
!64 = distinct !{!64, !14, !28, !29}
!65 = distinct !{!65, !14, !28, !29}
!66 = distinct !{!66, i1 false, !"LVerDomain"}
!67 = distinct !{!67, !66}
!68 = distinct !{!68, !66}
!69 = distinct !{!69, !66}
!70 = distinct !{!70, !14, !28, !29}
!71 = distinct !{!71, !14, !28, !29}
!72 = distinct !{!72, !14, !28}
!73 = distinct !{!73, !14, !28}
!74 = !{!61}
!75 = !{!62}
!76 = !{!63}
!77 = !{!61, !62}
!78 = !{!"branch_weights", i32 4, i32 12}
!79 = !{!67}
!80 = !{!68}
!81 = !{!69}
!82 = !{!67, !68}
!83 = distinct !{!83, !15}
!84 = distinct !{!84, !15}
!85 = distinct !{!85, !14}
!86 = distinct !{!86, !14}
!87 = distinct !{!87, !14}
!88 = distinct !{!88, !14}
!89 = distinct !{!89, !14}
!90 = distinct !{!90, !14}
!91 = distinct !{!91, !14}
!92 = distinct !{!92, !14}
!93 = distinct !{!93, !14}
!94 = distinct !{!94, !15}
!95 = distinct !{!95, !14}
!96 = distinct !{!96, !14}
!97 = distinct !{!97, !14}
!98 = distinct !{!98, !14}
!99 = distinct !{!99, !14}
!100 = distinct !{!100, !14}
!101 = distinct !{!101, !14}
!102 = distinct !{!102, !14}
!103 = distinct !{!103, i1 false, !"LVerDomain"}
!104 = distinct !{!104, !103}
!105 = distinct !{!105, !103}
!106 = distinct !{!106, !14, !28, !29}
!107 = distinct !{!107, !14, !28, !29}
!108 = distinct !{!108, i1 false, !"LVerDomain"}
!109 = distinct !{!109, !108}
!110 = distinct !{!110, !108}
!111 = distinct !{!111, !14, !28, !29}
!112 = distinct !{!112, !14, !28, !29}
!113 = distinct !{!113, !14, !28}
!114 = distinct !{!114, !14, !28}
!115 = distinct !{!115, !14}
!116 = !{!104}
!117 = !{!105}
!118 = !{!109}
!119 = !{!110}
!120 = distinct !{!120, !14}
!121 = distinct !{!121, !14}
!122 = distinct !{!122, !14}
!123 = distinct !{!123, !14}
!124 = distinct !{!124, !14}
!125 = distinct !{!125, !14}
!126 = distinct !{!126, !14}
!127 = distinct !{!127, !14}
!128 = distinct !{!128, !14}
!129 = distinct !{!129, !14}
!130 = distinct !{!130, !14}
!131 = distinct !{!131, !14}
!132 = distinct !{!132, !14}
!133 = distinct !{!133, !14}
!134 = distinct !{!134, !14}
!135 = distinct !{!135, !14}
!136 = distinct !{!136, !14}
!137 = distinct !{!137, i1 false, !"LVerDomain"}
!138 = distinct !{!138, !137}
!139 = distinct !{!139, !137}
!140 = distinct !{!140, !14, !28, !29}
!141 = distinct !{!141, !14, !28, !29}
!142 = distinct !{!142, i1 false, !"LVerDomain"}
!143 = distinct !{!143, !142}
!144 = distinct !{!144, !142}
!145 = distinct !{!145, !14, !28, !29}
!146 = distinct !{!146, !14, !28, !29}
!147 = distinct !{!147, !14, !28}
!148 = distinct !{!148, !14, !28}
!149 = distinct !{!149, !14}
!150 = !{!138}
!151 = !{!139}
!152 = !{!143}
!153 = !{!144}
end_hunk_0
