inline.NumInlined: 3474
inline.NumDeleted: 1103
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZN11OpenImageIO4v3_112ImageBufAlgo10deep_mergeERNS0_8ImageBufERKS2_S5_bNS0_3ROIEi:bb.a
bb.m:                                             ; preds = %bb.l
  %i.i = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf8deepdataEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.n unwind label %bb.u       ; 11 uses

bb.n:                                             ; preds = %bb.m
  %i.j = invoke noundef i32 @_ZNK11OpenImageIO4v3_18DeepData9Z_channelEv(ptr noundef nonnull align 8 dereferenceable(20) %i.h)
          to label %bb.o unwind label %bb.v       ; 2 uses

bb.o:                                             ; preds = %bb.n
  %i.k = invoke noundef i32 @_ZNK11OpenImageIO4v3_18DeepData13Zback_channelEv(ptr noundef nonnull align 8 dereferenceable(20) %i.h)
          to label %bb.p unwind label %bb.w       ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.l = invoke noundef i32 @_ZNK11OpenImageIO4v3_18DeepData9Z_channelEv(ptr noundef nonnull align 8 dereferenceable(20) %i.i)
          to label %bb.q unwind label %bb.x       ; 3 uses

bb.q:                                             ; preds = %bb.p
  %i.m = invoke noundef i32 @_ZNK11OpenImageIO4v3_18DeepData13Zback_channelEv(ptr noundef nonnull align 8 dereferenceable(20) %i.i)
          to label %bb.r unwind label %bb.y       ; 3 uses

bb.r:                                             ; preds = %bb.q
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !110  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 4 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !112  ; 2 uses
  %i.r = icmp slt i32 %i.o, %i.q
  br i1 %i.r, label %.lr.ph371, label %._crit_edge372

.lr.ph371:                                        ; preds = %bb.r
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.v = load i32, ptr %i.s, align 8, !tbaa !113
  %i.w = load i32, ptr %i.t, align 4, !tbaa !114  ; 3 uses
  %i.x = icmp slt i32 %i.v, %i.w
  br i1 %i.x, label %.lr.ph371.split, label %._crit_edge372

._crit_edge372:                                   ; preds = %._crit_edge367, %.lr.ph371, %bb.r
  %i.y = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo4copyERNS0_8ImageBufERKS2_NS0_8TypeDescENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 256, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %4, i32 noundef %5)
          to label %bb.bd unwind label %bb.be     ; 3 uses

bb.s:                                             ; preds = %bb.k
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.t:                                             ; preds = %bb.l
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.u:                                             ; preds = %bb.m
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.v:                                             ; preds = %bb.n
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.w:                                             ; preds = %bb.o
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.x:                                             ; preds = %bb.p
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.y:                                             ; preds = %bb.q
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

.lr.ph371.split:                                  ; preds = %.lr.ph371, %._crit_edge367
  %i.ag = phi i32 [ %i.ao, %._crit_edge367 ], [ %i.q, %.lr.ph371 ] ; 2 uses
  %i.ah = phi i32 [ %i.ap, %._crit_edge367 ], [ %i.w, %.lr.ph371 ] ; 3 uses
  %i.ai = phi i32 [ %i.aq, %._crit_edge367 ], [ %i.w, %.lr.ph371 ] ; 3 uses
  %.0214368 = phi i32 [ %i.ar, %._crit_edge367 ], [ %i.o, %.lr.ph371 ] ; 4 uses
  %i.aj = load i32, ptr %i.s, align 8, !tbaa !113 ; 2 uses
  %i.ak = icmp slt i32 %i.aj, %i.ai
  br i1 %i.ak, label %.lr.ph366, label %._crit_edge367

.lr.ph366:                                        ; preds = %.lr.ph371.split
  %i.al = load i32, ptr %4, align 8, !tbaa !115
  %i.am = load i32, ptr %i.u, align 4, !tbaa !116 ; 2 uses
  %i.an = icmp slt i32 %i.al, %i.am
  br i1 %i.an, label %.lr.ph366.split, label %._crit_edge367

._crit_edge367.loopexit:                          ; preds = %._crit_edge363
  %.pre400 = load i32, ptr %i.p, align 4, !tbaa !112
  br label %._crit_edge367

._crit_edge367:                                   ; preds = %.lr.ph366, %._crit_edge367.loopexit, %.lr.ph371.split
  %i.ao = phi i32 [ %i.ag, %.lr.ph371.split ], [ %.pre400, %._crit_edge367.loopexit ], [ %i.ag, %.lr.ph366 ] ; 2 uses
  %i.ap = phi i32 [ %i.ah, %.lr.ph371.split ], [ %i.ax, %._crit_edge367.loopexit ], [ %i.ah, %.lr.ph366 ]
  %i.aq = phi i32 [ %i.ai, %.lr.ph371.split ], [ %i.ax, %._crit_edge367.loopexit ], [ %i.ai, %.lr.ph366 ]
  %i.ar = add nsw i32 %.0214368, 1                ; 2 uses
  %i.as = icmp slt i32 %i.ar, %i.ao
  br i1 %i.as, label %.lr.ph371.split, label %._crit_edge372, !llvm.loop !135

.lr.ph366.split:                                  ; preds = %.lr.ph366, %._crit_edge363
  %i.at = phi i32 [ %i.ax, %._crit_edge363 ], [ %i.ah, %.lr.ph366 ]
  %i.au = phi i32 [ %i.ay, %._crit_edge363 ], [ %i.am, %.lr.ph366 ] ; 2 uses
  %.0216364 = phi i32 [ %i.az, %._crit_edge363 ], [ %i.aj, %.lr.ph366 ] ; 4 uses
  %i.av = load i32, ptr %4, align 8, !tbaa !115   ; 2 uses
  %i.aw = icmp slt i32 %i.av, %i.au
  br i1 %i.aw, label %.lr.ph362, label %._crit_edge363

._crit_edge363.loopexit:                          ; preds = %bb.bb
  %.pre = load i32, ptr %i.t, align 4, !tbaa !114
  br label %._crit_edge363

._crit_edge363:                                   ; preds = %._crit_edge363.loopexit, %.lr.ph366.split
  %i.ax = phi i32 [ %.pre, %._crit_edge363.loopexit ], [ %i.at, %.lr.ph366.split ] ; 4 uses
  %i.ay = phi i32 [ %i.ea, %._crit_edge363.loopexit ], [ %i.au, %.lr.ph366.split ]
  %i.az = add nsw i32 %.0216364, 1                ; 2 uses
  %i.ba = icmp slt i32 %i.az, %i.ax
  br i1 %i.ba, label %.lr.ph366.split, label %._crit_edge367.loopexit, !llvm.loop !136

.lr.ph362:                                        ; preds = %.lr.ph366.split, %bb.bb
  %.0217360 = phi i32 [ %i.dz, %bb.bb ], [ %i.av, %.lr.ph366.split ] ; 4 uses
  %i.bb = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf10pixelindexEiiib(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %.0217360, i32 noundef %.0216364, i32 noundef %.0214368, i1 noundef zeroext true)
          to label %bb.z unwind label %bb.ad

bb.z:                                             ; preds = %.lr.ph362
  %i.bc = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf10pixelindexEiiib(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %.0217360, i32 noundef %.0216364, i32 noundef %.0214368, i1 noundef zeroext true)
          to label %bb.aa unwind label %bb.ae

bb.aa:                                            ; preds = %bb.z
  %i.bd = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf10pixelindexEiiib(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %.0217360, i32 noundef %.0216364, i32 noundef %.0214368, i1 noundef zeroext true)
          to label %bb.ab unwind label %bb.af

bb.ab:                                            ; preds = %bb.aa
  %i.be = sext i32 %i.bc to i64                   ; 5 uses
  %i.bf = invoke noundef i32 @_ZNK11OpenImageIO4v3_18DeepData7samplesEl(ptr noundef nonnull align 8 dereferenceable(20) %i.h, i64 noundef %i.be)
          to label %bb.ac unwind label %bb.ag     ; 4 uses

bb.ac:                                            ; preds = %bb.ab
  %i.bg = sext i32 %i.bd to i64                   ; 7 uses
  %i.bh = invoke noundef i32 @_ZNK11OpenImageIO4v3_18DeepData7samplesEl(ptr noundef nonnull align 8 dereferenceable(20) %i.i, i64 noundef %i.bg)
          to label %.preheader299 unwind label %bb.ah ; 6 uses

.preheader299:                                    ; preds = %bb.ac
  %i.bi = icmp sgt i32 %i.bf, 0
  br i1 %i.bi, label %.lr.ph347, label %.preheader298

.lr.ph347:                                        ; preds = %.preheader299
  %i.bj = icmp sgt i32 %i.bh, 0
  br label %bb.ai

.preheader298:                                    ; preds = %._crit_edge, %.preheader299
  %.0225.lcssa = phi i32 [ 0, %.preheader299 ], [ %op.rdx456, %._crit_edge ] ; 2 uses
  %.0219.lcssa = phi i32 [ 0, %.preheader299 ], [ %.1220.lcssa, %._crit_edge ]
  %i.bk = icmp sgt i32 %i.bh, 0
  br i1 %i.bk, label %.lr.ph357, label %._crit_edge358

bb.ad:                                            ; preds = %.lr.ph362
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.ae:                                            ; preds = %bb.z
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.af:                                            ; preds = %bb.aa
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.ag:                                            ; preds = %bb.ab
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.ah:                                            ; preds = %bb.ac
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.ai:                                            ; preds = %.lr.ph347, %._crit_edge
  %.0219346 = phi i32 [ 0, %.lr.ph347 ], [ %.1220.lcssa, %._crit_edge ] ; 2 uses
  %.0225345 = phi i32 [ 0, %.lr.ph347 ], [ %op.rdx456, %._crit_edge ]
  %.0238344 = phi i32 [ 0, %.lr.ph347 ], [ %i.cj, %._crit_edge ] ; 4 uses
  %i.bq = invoke noundef float @_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii(ptr noundef nonnull align 8 dereferenceable(20) %i.h, i64 noundef %i.be, i32 noundef %i.j, i32 noundef %.0238344)
          to label %bb.aj unwind label %bb.ak     ; 4 uses

bb.aj:                                            ; preds = %bb.ai
  %i.br = invoke noundef float @_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii(ptr noundef nonnull align 8 dereferenceable(20) %i.h, i64 noundef %i.be, i32 noundef %i.k, i32 noundef %.0238344)
          to label %.preheader297 unwind label %bb.al ; 4 uses

.preheader297:                                    ; preds = %bb.aj
  br i1 %i.bj, label %.lr.ph, label %.lr.ph342.preheader

.lr.ph342.preheader:                              ; preds = %bb.an, %.preheader297
  %.1220.lcssa = phi i32 [ %.0219346, %.preheader297 ], [ %.5224, %bb.an ] ; 2 uses
  br label %.lr.ph342

bb.ak:                                            ; preds = %bb.ai
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.al:                                            ; preds = %bb.aj
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

.lr.ph:                                           ; preds = %.preheader297, %bb.an
  %.1220339 = phi i32 [ %.5224, %bb.an ], [ %.0219346, %.preheader297 ]
  %.0239338 = phi i32 [ %i.cg, %bb.an ], [ 0, %.preheader297 ] ; 3 uses
  %i.bu = invoke noundef float @_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii(ptr noundef nonnull align 8 dereferenceable(20) %i.i, i64 noundef %i.bg, i32 noundef %i.l, i32 noundef %.0239338)
          to label %bb.am unwind label %bb.ao     ; 3 uses

bb.am:                                            ; preds = %.lr.ph
  %i.bv = invoke noundef float @_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii(ptr noundef nonnull align 8 dereferenceable(20) %i.i, i64 noundef %i.bg, i32 noundef %i.m, i32 noundef %.0239338)
          to label %bb.an unwind label %bb.ap     ; 3 uses

bb.an:                                            ; preds = %bb.am
  %i.bw = fcmp ogt float %i.bq, %i.bu
  %i.bx = fcmp olt float %i.bq, %i.bv             ; 2 uses
  %or.cond = and i1 %i.bw, %i.bx
  %i.by = zext i1 %or.cond to i32
  %i.bz = fcmp ogt float %i.br, %i.bu             ; 2 uses
  %i.ca = fcmp olt float %i.br, %i.bv
  %or.cond279 = and i1 %i.bz, %i.ca
  %i.cb = zext i1 %or.cond279 to i32
  %i.cc = fcmp ogt float %i.bu, %i.bq
  %brmerge.not = and i1 %i.cc, %i.bz
  %i.cd = zext i1 %brmerge.not to i32
  %i.ce = fcmp olt float %i.bv, %i.br
  %or.cond281 = and i1 %i.bx, %i.ce
  %i.cf = zext i1 %or.cond281 to i32
  %.2221 = add i32 %.1220339, %i.cd
  %.3222 = add i32 %.2221, %i.by
  %.4223 = add i32 %.3222, %i.cb
  %.5224 = add nsw i32 %.4223, %i.cf              ; 2 uses
  %i.cg = add nuw nsw i32 %.0239338, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.cg, %i.bh
  br i1 %exitcond.not, label %.lr.ph342.preheader, label %.lr.ph, !llvm.loop !137

bb.ao:                                            ; preds = %.lr.ph
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.ap:                                            ; preds = %bb.am
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

._crit_edge:                                      ; preds = %bb.ar
  %i.cj = add nuw nsw i32 %.0238344, 1            ; 2 uses
  %exitcond397.not = icmp eq i32 %i.cj, %i.bf
  br i1 %exitcond397.not, label %.preheader298, label %bb.ai, !llvm.loop !138

.lr.ph342:                                        ; preds = %.lr.ph342.preheader, %bb.ar
  %.1226341 = phi i32 [ %op.rdx456, %bb.ar ], [ %.0225345, %.lr.ph342.preheader ]
  %.0237340 = phi i32 [ %i.cx, %bb.ar ], [ %.0238344, %.lr.ph342.preheader ] ; 3 uses
  %i.ck = invoke noundef float @_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii(ptr noundef nonnull align 8 dereferenceable(20) %i.h, i64 noundef %i.be, i32 noundef %i.j, i32 noundef %.0237340)
          to label %bb.aq unwind label %bb.as

bb.aq:                                            ; preds = %.lr.ph342
  %i.cl = invoke noundef float @_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii(ptr noundef nonnull align 8 dereferenceable(20) %i.h, i64 noundef %i.be, i32 noundef %i.k, i32 noundef %.0237340)
          to label %bb.ar unwind label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %8 = insertelement <4 x float> poison, float %i.ck, i64 0
  %i.cm = insertelement <4 x float> %8, float %i.bq, i64 1 ; 2 uses
  %i.cn = insertelement <4 x float> %i.cm, float %i.cl, i64 2
  %i.co = insertelement <4 x float> %i.cn, float %i.br, i64 3 ; 3 uses
  %i.cp = shufflevector <4 x float> %i.cm, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.cq = fcmp ogt <4 x float> %i.co, %i.cp
  %i.cr = shufflevector <4 x float> %i.co, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 3, i32 2>
  %i.cs = fcmp olt <4 x float> %i.co, %i.cr
  %i.ct = and <4 x i1> %i.cq, %i.cs
  %i.cu = bitcast <4 x i1> %i.ct to i4
  %i.cv = call range(i4 0, 5) i4 @llvm.ctpop.i4(i4 %i.cu)
  %i.cw = zext nneg i4 %i.cv to i32
  %op.rdx456 = add i32 %.1226341, %i.cw           ; 3 uses
  %i.cx = add nuw i32 %.0237340, 1                ; 2 uses
  %exitcond396.not = icmp eq i32 %i.cx, %i.bf
  br i1 %exitcond396.not, label %._crit_edge, label %.lr.ph342, !llvm.loop !139

bb.as:                                            ; preds = %.lr.ph342
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.at:                                            ; preds = %bb.aq
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

._crit_edge358:                                   ; preds = %._crit_edge353, %.preheader298
  %.6231.lcssa = phi i32 [ %.0225.lcssa, %.preheader298 ], [ %op.rdx, %._crit_edge353 ]
  %i.da = sext i32 %i.bb to i64
  %i.db = add nsw i32 %i.bh, %i.bf
  %i.dc = add nsw i32 %i.db, %.0219.lcssa
  %i.dd = add nsw i32 %i.dc, %.6231.lcssa
  invoke void @_ZN11OpenImageIO4v3_18DeepData12set_capacityEli(ptr noundef nonnull align 8 dereferenceable(20) %i.g, i64 noundef %i.da, i32 noundef %i.dd)
          to label %bb.bb unwind label %bb.bc

.lr.ph357:                                        ; preds = %.preheader298, %._crit_edge353
  %.0218356 = phi i32 [ %i.dg, %._crit_edge353 ], [ 0, %.preheader298 ] ; 4 uses
  %.6231355 = phi i32 [ %op.rdx, %._crit_edge353 ], [ %.0225.lcssa, %.preheader298 ]
  %i.de = invoke noundef float @_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii(ptr noundef nonnull align 8 dereferenceable(20) %i.i, i64 noundef %i.bg, i32 noundef %i.l, i32 noundef %.0218356)
          to label %bb.au unwind label %bb.av

bb.au:                                            ; preds = %.lr.ph357
  %i.df = invoke noundef float @_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii(ptr noundef nonnull align 8 dereferenceable(20) %i.i, i64 noundef %i.bg, i32 noundef %i.m, i32 noundef %.0218356)
          to label %.lr.ph352 unwind label %bb.aw

._crit_edge353:                                   ; preds = %bb.ay
  %i.dg = add nuw nsw i32 %.0218356, 1            ; 2 uses
  %exitcond399.not = icmp eq i32 %i.dg, %i.bh
  br i1 %exitcond399.not, label %._crit_edge358, label %.lr.ph357, !llvm.loop !140

bb.av:                                            ; preds = %.lr.ph357
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.aw:                                            ; preds = %bb.au
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

.lr.ph352:                                        ; preds = %bb.au, %bb.ay
  %.0215351 = phi i32 [ %i.dw, %bb.ay ], [ %.0218356, %bb.au ] ; 3 uses
  %.7232350 = phi i32 [ %op.rdx, %bb.ay ], [ %.6231355, %bb.au ]
  %i.dj = invoke noundef float @_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii(ptr noundef nonnull align 8 dereferenceable(20) %i.i, i64 noundef %i.bg, i32 noundef %i.l, i32 noundef %.0215351)
          to label %bb.ax unwind label %bb.az

bb.ax:                                            ; preds = %.lr.ph352
  %i.dk = invoke noundef float @_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii(ptr noundef nonnull align 8 dereferenceable(20) %i.i, i64 noundef %i.bg, i32 noundef %i.m, i32 noundef %.0215351)
          to label %bb.ay unwind label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %9 = insertelement <4 x float> poison, float %i.dj, i64 0
  %i.dl = insertelement <4 x float> %9, float %i.de, i64 1 ; 2 uses
  %i.dm = insertelement <4 x float> %i.dl, float %i.dk, i64 2
  %i.dn = insertelement <4 x float> %i.dm, float %i.df, i64 3 ; 3 uses
  %i.do = shufflevector <4 x float> %i.dl, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.dp = fcmp ogt <4 x float> %i.dn, %i.do
  %i.dq = shufflevector <4 x float> %i.dn, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 3, i32 2>
  %i.dr = fcmp olt <4 x float> %i.dn, %i.dq
  %i.ds = and <4 x i1> %i.dp, %i.dr
  %i.dt = bitcast <4 x i1> %i.ds to i4
  %i.du = call range(i4 0, 5) i4 @llvm.ctpop.i4(i4 %i.dt)
  %i.dv = zext nneg i4 %i.du to i32
  %op.rdx = add i32 %.7232350, %i.dv              ; 3 uses
  %i.dw = add nuw i32 %.0215351, 1                ; 2 uses
  %exitcond398.not = icmp eq i32 %i.dw, %i.bh
  br i1 %exitcond398.not, label %._crit_edge353, label %.lr.ph352, !llvm.loop !141

bb.az:                                            ; preds = %.lr.ph352
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.ba:                                            ; preds = %bb.ax
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.bb:                                            ; preds = %._crit_edge358
  %i.dz = add nsw i32 %.0217360, 1                ; 2 uses
  %i.ea = load i32, ptr %i.u, align 4, !tbaa !116 ; 2 uses
  %i.eb = icmp slt i32 %i.dz, %i.ea
  br i1 %i.eb, label %.lr.ph362, label %._crit_edge363.loopexit, !llvm.loop !142

bb.bc:                                            ; preds = %._crit_edge358
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.bd:                                            ; preds = %._crit_edge372
  %i.ed = load i32, ptr %i.n, align 8, !tbaa !110 ; 2 uses
  %i.ee = load i32, ptr %i.p, align 4, !tbaa !112 ; 2 uses
  %i.ef = icmp slt i32 %i.ed, %i.ee
  br i1 %i.ef, label %.lr.ph388, label %.loopexit

.lr.ph388:                                        ; preds = %bb.bd
  %i.eg = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.ej = load i32, ptr %i.eg, align 8, !tbaa !113
  %i.ek = load i32, ptr %i.eh, align 4, !tbaa !114 ; 2 uses
  %i.el = icmp slt i32 %i.ej, %i.ek
  br i1 %i.el, label %.lr.ph388.split, label %.loopexit

bb.be:                                            ; preds = %._crit_edge372
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

.lr.ph388.split:                                  ; preds = %.lr.ph388, %._crit_edge384
  %i.en = phi i32 [ %i.eu, %._crit_edge384 ], [ %i.ee, %.lr.ph388 ] ; 2 uses
  %i.eo = phi i32 [ %i.ev, %._crit_edge384 ], [ %i.ek, %.lr.ph388 ] ; 3 uses
  %.0190385 = phi i32 [ %i.ew, %._crit_edge384 ], [ %i.ed, %.lr.ph388 ] ; 5 uses
  %i.ep = load i32, ptr %i.eg, align 8, !tbaa !113 ; 2 uses
  %i.eq = icmp slt i32 %i.ep, %i.eo
  br i1 %i.eq, label %.lr.ph383, label %._crit_edge384

.lr.ph383:                                        ; preds = %.lr.ph388.split
  %i.er = load i32, ptr %4, align 8, !tbaa !115
  %i.es = load i32, ptr %i.ei, align 4, !tbaa !116 ; 2 uses
  %i.et = icmp slt i32 %i.er, %i.es
  br i1 %i.et, label %.lr.ph383.split, label %._crit_edge384

._crit_edge384.loopexit:                          ; preds = %._crit_edge376
  %.pre401 = load i32, ptr %i.p, align 4, !tbaa !112
  br label %._crit_edge384

._crit_edge384:                                   ; preds = %.lr.ph383, %._crit_edge384.loopexit, %.lr.ph388.split
  %i.eu = phi i32 [ %i.en, %.lr.ph388.split ], [ %.pre401, %._crit_edge384.loopexit ], [ %i.en, %.lr.ph383 ] ; 2 uses
  %i.ev = phi i32 [ %i.eo, %.lr.ph388.split ], [ %i.fl, %._crit_edge384.loopexit ], [ %i.eo, %.lr.ph383 ]
  %i.ew = add nsw i32 %.0190385, 1                ; 2 uses
  %i.ex = icmp slt i32 %i.ew, %i.eu
  br i1 %i.ex, label %.lr.ph388.split, label %.loopexit, !llvm.loop !143

.lr.ph383.split:                                  ; preds = %.lr.ph383, %._crit_edge376
  %i.ey = phi i32 [ %i.fj, %._crit_edge376 ], [ %i.es, %.lr.ph383 ] ; 2 uses
  %.0189380 = phi i32 [ %i.fk, %._crit_edge376 ], [ %i.ep, %.lr.ph383 ] ; 5 uses
  %i.ez = load i32, ptr %4, align 8, !tbaa !115   ; 3 uses
  %i.fa = icmp slt i32 %i.ez, %i.ey
  br i1 %i.fa, label %.lr.ph375, label %._crit_edge376

.lr.ph375:                                        ; preds = %.lr.ph383.split
  br i1 %3, label %.lr.ph375.split.us, label %.lr.ph375.split

.lr.ph375.split.us:                               ; preds = %.lr.ph375, %bb.bi
  %.0188373.us = phi i32 [ %i.fe, %bb.bi ], [ %i.ez, %.lr.ph375 ] ; 3 uses
  %i.fb = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf10pixelindexEiiib(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %.0188373.us, i32 noundef %.0189380, i32 noundef %.0190385, i1 noundef zeroext true)
          to label %bb.bf unwind label %.split.us

bb.bf:                                            ; preds = %.lr.ph375.split.us
  %i.fc = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf10pixelindexEiiib(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %.0188373.us, i32 noundef %.0189380, i32 noundef %.0190385, i1 noundef zeroext true)
          to label %bb.bg unwind label %.split378.us

bb.bg:                                            ; preds = %bb.bf
  %i.fd = sext i32 %i.fb to i64                   ; 2 uses
  invoke void @_ZN11OpenImageIO4v3_18DeepData17merge_deep_pixelsElRKS1_i(ptr noundef nonnull align 8 dereferenceable(20) %i.g, i64 noundef %i.fd, ptr noundef nonnull align 8 dereferenceable(20) %i.i, i32 noundef %i.fc)
          to label %bb.bh unwind label %.split378.us

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZN11OpenImageIO4v3_18DeepData14occlusion_cullEl(ptr noundef nonnull align 8 dereferenceable(20) %i.g, i64 noundef %i.fd)
          to label %bb.bi unwind label %.split378.us

bb.bi:                                            ; preds = %bb.bh
  %i.fe = add nsw i32 %.0188373.us, 1             ; 2 uses
  %i.ff = load i32, ptr %i.ei, align 4, !tbaa !116 ; 2 uses
  %i.fg = icmp slt i32 %i.fe, %i.ff
  br i1 %i.fg, label %.lr.ph375.split.us, label %._crit_edge376, !llvm.loop !144

.split.us:                                        ; preds = %.lr.ph375.split.us
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

.split378.us:                                     ; preds = %bb.bh, %bb.bg, %bb.bf
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

._crit_edge376:                                   ; preds = %bb.bl, %bb.bi, %.lr.ph383.split
  %i.fj = phi i32 [ %i.ff, %bb.bi ], [ %i.ey, %.lr.ph383.split ], [ %i.fr, %bb.bl ]
  %i.fk = add nsw i32 %.0189380, 1                ; 2 uses
  %i.fl = load i32, ptr %i.eh, align 4, !tbaa !114 ; 2 uses
  %i.fm = icmp slt i32 %i.fk, %i.fl
  br i1 %i.fm, label %.lr.ph383.split, label %._crit_edge384.loopexit, !llvm.loop !145

.lr.ph375.split:                                  ; preds = %.lr.ph375, %bb.bl
  %.0188373 = phi i32 [ %i.fq, %bb.bl ], [ %i.ez, %.lr.ph375 ] ; 3 uses
  %i.fn = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf10pixelindexEiiib(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %.0188373, i32 noundef %.0189380, i32 noundef %.0190385, i1 noundef zeroext true)
          to label %bb.bj unwind label %.split

bb.bj:                                            ; preds = %.lr.ph375.split
  %i.fo = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf10pixelindexEiiib(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %.0188373, i32 noundef %.0189380, i32 noundef %.0190385, i1 noundef zeroext true)
          to label %bb.bk unwind label %.split378

bb.bk:                                            ; preds = %bb.bj
  %i.fp = sext i32 %i.fn to i64
  invoke void @_ZN11OpenImageIO4v3_18DeepData17merge_deep_pixelsElRKS1_i(ptr noundef nonnull align 8 dereferenceable(20) %i.g, i64 noundef %i.fp, ptr noundef nonnull align 8 dereferenceable(20) %i.i, i32 noundef %i.fo)
          to label %bb.bl unwind label %.split378

bb.bl:                                            ; preds = %bb.bk
  %i.fq = add nsw i32 %.0188373, 1                ; 2 uses
  %i.fr = load i32, ptr %i.ei, align 4, !tbaa !116 ; 2 uses
  %i.fs = icmp slt i32 %i.fq, %i.fr
  br i1 %i.fs, label %.lr.ph375.split, label %._crit_edge376, !llvm.loop !144

.split:                                           ; preds = %.lr.ph375.split
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

.split378:                                        ; preds = %bb.bk, %bb.bj
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

.loopexit:                                        ; preds = %._crit_edge384, %.lr.ph388, %bb.bd, %bb.j, %_ZN11OpenImageIO4v3_112ImageBufAlgo7IBAprepERNS0_3ROIEPNS0_8ImageBufEPKS4_S7_PNS0_9ImageSpecEi.exit, %bb.e
  %.0 = phi i1 [ false, %bb.j ], [ false, %_ZN11OpenImageIO4v3_112ImageBufAlgo7IBAprepERNS0_3ROIEPNS0_8ImageBufEPKS4_S7_PNS0_9ImageSpecEi.exit ], [ false, %bb.e ], [ %i.y, %.lr.ph388 ], [ %i.y, %bb.bd ], [ %i.y, %._crit_edge384 ]
  call void @_ZN11OpenImageIO4v3_13pvt11LoggedTimerD2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  ret i1 %.0

bb.bm:                                            ; preds = %.split378, %.split378.us, %.split, %.split.us, %bb.s, %bb.u, %bb.w, %bb.y, %bb.ae, %bb.ag, %bb.bc, %bb.al, %bb.ap, %bb.ao, %bb.at, %bb.as, %bb.ak, %bb.aw, %bb.ba, %bb.az, %bb.av, %bb.ah, %bb.af, %bb.ad, %bb.be, %bb.x, %bb.v, %bb.t, %bb.f
  %.pn261.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.d, %bb.f ], [ %i.z, %bb.s ], [ %i.aa, %bb.t ], [ %i.ab, %bb.u ], [ %i.ac, %bb.v ], [ %i.ad, %bb.w ], [ %i.ae, %bb.x ], [ %i.af, %bb.y ], [ %i.dx, %bb.az ], [ %i.bl, %bb.ad ], [ %i.bm, %bb.ae ], [ %i.bn, %bb.af ], [ %i.bo, %bb.ag ], [ %i.bp, %bb.ah ], [ %i.ec, %bb.bc ], [ %i.cy, %bb.as ], [ %i.bs, %bb.ak ], [ %i.bt, %bb.al ], [ %i.ch, %bb.ao ], [ %i.ci, %bb.ap ], [ %i.cz, %bb.at ], [ %i.dh, %bb.av ], [ %i.di, %bb.aw ], [ %i.dy, %bb.ba ], [ %i.em, %bb.be ], [ %i.fh, %.split.us ], [ %i.ft, %.split ], [ %i.fu, %.split378 ], [ %i.fi, %.split378.us ]
  call void @_ZN11OpenImageIO4v3_13pvt11LoggedTimerD2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  resume { ptr, i32 } %.pn261.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA48_cJEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(48) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v12::detail::format_arg_store.19", align 16 ; 3 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.a = tail call i64 @strlen(ptr noundef nonnull align 1 dereferenceable(48) %1) #29, !noalias !146
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29, !noalias !146
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull align 1 dereferenceable(48) %1, i64 %i.a, i64 0, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29, !noalias !146
  %i.b = load ptr, ptr %4, align 8, !tbaa !45
  store ptr %i.b, ptr %3, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !56
  store i64 %i.e, ptr %i.c, align 8, !tbaa !12
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf5errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull dead_on_return %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %4, align 8, !tbaa !45     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
end_hunk_0
