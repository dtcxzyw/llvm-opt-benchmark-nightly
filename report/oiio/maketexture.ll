Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/maketexture?download=true
inline.NumInlined: 6377
inline.NumDeleted: 1711
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_ZN11OpenImageIO4v3_1L18resize_block_2passIhEEbRNS0_8ImageBufERKS2_NS0_3ROIEb:bb.a
  %i.gi = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <4 x float>, ptr %next.gep12, align 4, !tbaa !153, !alias.scope !1340
  %wide.load14 = load <4 x float>, ptr %i.gi, align 4, !tbaa !153, !alias.scope !1340
  %i.gj = getelementptr i8, ptr %next.gep, i64 16
  %wide.load15 = load <4 x float>, ptr %next.gep, align 4, !tbaa !153, !alias.scope !1341
  %wide.load16 = load <4 x float>, ptr %i.gj, align 4, !tbaa !153, !alias.scope !1341
  %i.gk = fadd <4 x float> %wide.load, %wide.load15
  %i.gl = fadd <4 x float> %wide.load14, %wide.load16
  %i.gm = fmul <4 x float> %i.gk, splat (float 5.000000e-01)
  %i.gn = fmul <4 x float> %i.gl, splat (float 5.000000e-01)
  %i.go = fptoui <4 x float> %i.gm to <4 x i8>
  %i.gp = fptoui <4 x float> %i.gn to <4 x i8>
  %i.gq = getelementptr i8, ptr %next.gep13, i64 4
  store <4 x i8> %i.go, ptr %next.gep13, align 1, !tbaa !62, !alias.scope !1342, !noalias !1343
  store <4 x i8> %i.gp, ptr %i.gq, align 1, !tbaa !62, !alias.scope !1342, !noalias !1343
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gr = icmp eq i64 %index.next, %n.vec
  br i1 %i.gr, label %middle.block, label %vector.body, !llvm.loop !1328

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us135, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader.us.us126, %middle.block
  %.0100.us.us131.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.preheader.us.us126 ], [ %i.bo, %middle.block ] ; 4 uses
  %.199.us.us132.ph = phi ptr [ %.047105.us.us128, %vector.memcheck ], [ %.047105.us.us128, %.preheader.us.us126 ], [ %i.ge, %middle.block ] ; 3 uses
  %.14998.us.us133.ph = phi ptr [ %.048104.us.us129, %vector.memcheck ], [ %.048104.us.us129, %.preheader.us.us126 ], [ %i.gf, %middle.block ] ; 3 uses
  %.297.us.us134.ph = phi ptr [ %.152103.us.us130, %vector.memcheck ], [ %.152103.us.us130, %.preheader.us.us126 ], [ %i.gg, %middle.block ] ; 3 uses
  %i.gs = sub i32 %i.i, %.0100.us.us131.ph
  %.neg92 = add i32 %.0100.us.us131.ph, 1
  %xtraiter89 = and i32 %i.gs, 1
  %lcmp.mod90.not = icmp eq i32 %xtraiter89, 0
  br i1 %lcmp.mod90.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.gt = load float, ptr %.14998.us.us133.ph, align 4, !tbaa !153
  %i.gu = load float, ptr %.199.us.us132.ph, align 4, !tbaa !153
  %i.gv = fadd float %i.gt, %i.gu
  %i.gw = fmul float %i.gv, 5.000000e-01
  %i.gx = fptoui float %i.gw to i8
  store i8 %i.gx, ptr %.297.us.us134.ph, align 1, !tbaa !62
  %i.gy = add nuw nsw i32 %.0100.us.us131.ph, 1
  %i.gz = getelementptr inbounds nuw i8, ptr %.14998.us.us133.ph, i64 4 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.199.us.us132.ph, i64 4 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.297.us.us134.ph, i64 1 ; 2 uses
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa86.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.gz, %scalar.ph.prol ]
  %.lcssa85.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.ha, %scalar.ph.prol ]
  %.lcssa84.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.hb, %scalar.ph.prol ]
  %.0100.us.us131.unr = phi i32 [ %.0100.us.us131.ph, %scalar.ph.preheader ], [ %i.gy, %scalar.ph.prol ]
  %.199.us.us132.unr = phi ptr [ %.199.us.us132.ph, %scalar.ph.preheader ], [ %i.ha, %scalar.ph.prol ]
  %.14998.us.us133.unr = phi ptr [ %.14998.us.us133.ph, %scalar.ph.preheader ], [ %i.gz, %scalar.ph.prol ]
  %.297.us.us134.unr = phi ptr [ %.297.us.us134.ph, %scalar.ph.preheader ], [ %i.hb, %scalar.ph.prol ]
  %i.hc = icmp eq i32 %i.i, %.neg92
  br i1 %i.hc, label %._crit_edge.us.us135, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0100.us.us131 = phi i32 [ %i.hq, %scalar.ph ], [ %.0100.us.us131.unr, %scalar.ph.prol.loopexit ]
  %.199.us.us132 = phi ptr [ %i.hs, %scalar.ph ], [ %.199.us.us132.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.14998.us.us133 = phi ptr [ %i.hr, %scalar.ph ], [ %.14998.us.us133.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.297.us.us134 = phi ptr [ %i.ht, %scalar.ph ], [ %.297.us.us134.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.hd = load float, ptr %.14998.us.us133, align 4, !tbaa !153
  %i.he = load float, ptr %.199.us.us132, align 4, !tbaa !153
  %i.hf = fadd float %i.hd, %i.he
  %i.hg = fmul float %i.hf, 5.000000e-01
  %i.hh = fptoui float %i.hg to i8
  store i8 %i.hh, ptr %.297.us.us134, align 1, !tbaa !62
  %i.hi = getelementptr inbounds nuw i8, ptr %.14998.us.us133, i64 4
  %i.hj = getelementptr inbounds nuw i8, ptr %.199.us.us132, i64 4
  %i.hk = getelementptr inbounds nuw i8, ptr %.297.us.us134, i64 1
  %i.hl = load float, ptr %i.hi, align 4, !tbaa !153
  %i.hm = load float, ptr %i.hj, align 4, !tbaa !153
  %i.hn = fadd float %i.hl, %i.hm
  %i.ho = fmul float %i.hn, 5.000000e-01
  %i.hp = fptoui float %i.ho to i8
  store i8 %i.hp, ptr %i.hk, align 1, !tbaa !62
  %i.hq = add nuw nsw i32 %.0100.us.us131, 2      ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.14998.us.us133, i64 8 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.199.us.us132, i64 8 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.297.us.us134, i64 2 ; 2 uses
  %exitcond192.not.1 = icmp eq i32 %i.hq, %i.i
  br i1 %exitcond192.not.1, label %._crit_edge.us.us135, label %scalar.ph, !llvm.loop !1329

._crit_edge.us.us135:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa6 = phi ptr [ %i.gf, %middle.block ], [ %.lcssa86.unr, %scalar.ph.prol.loopexit ], [ %i.hr, %scalar.ph ]
  %.lcssa5 = phi ptr [ %i.ge, %middle.block ], [ %.lcssa85.unr, %scalar.ph.prol.loopexit ], [ %i.hs, %scalar.ph ]
  %.lcssa4 = phi ptr [ %i.gg, %middle.block ], [ %.lcssa84.unr, %scalar.ph.prol.loopexit ], [ %i.ht, %scalar.ph ] ; 2 uses
  %i.hu = add nuw i64 %.046106.us.us127, 1        ; 2 uses
  %exitcond194.not = icmp eq i64 %i.hu, %i.ag
  br i1 %exitcond194.not, label %._crit_edge107.us141, label %.preheader.us.us126, !llvm.loop !1330

._crit_edge107.us141:                             ; preds = %._crit_edge.us.us135
  %i.hv = add nuw i64 %.050111.us116, 1           ; 2 uses
  %exitcond196.not = icmp eq i64 %i.hv, %i.ak
  br i1 %exitcond196.not, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit67, label %.preheader.lr.ph.i.us, !llvm.loop !1331

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit67: ; preds = %._crit_edge107.us141, %.lr.ph, %bb.j
  tail call void @_ZdaPv(ptr noundef nonnull %i.t) #31
  tail call void @_ZdaPv(ptr noundef nonnull %i.s) #31
  br label %bb.o

bb.k:                                             ; preds = %bb.e
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit86

bb.l:                                             ; preds = %bb.f
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit83

bb.m:                                             ; preds = %bb.h, %bb.g
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit83

bb.n:                                             ; preds = %bb.i
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit83

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit83: ; preds = %bb.m, %bb.n, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %i.hx, %bb.l ], [ %i.hz, %bb.n ], [ %i.hy, %bb.m ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.t) #31
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit86

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit86: ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit83, %bb.k
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit83 ], [ %i.hw, %bb.k ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.s) #31
  resume { ptr, i32 } %.pn.pn.pn

bb.o:                                             ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit67, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_1L18resize_block_2passIN9Imath_3_14halfEEEbRNS0_8ImageBufERKS4_NS0_3ROIEb(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nofree noundef readonly byval(%"struct.OpenImageIO::v3_1::ROI") align 8 captures(none) %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  br i1 %3, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !135
  %i.d = and i32 %i.c, 1
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !137
  %i.h = and i32 %i.g, 1
  %.not61 = icmp eq i32 %i.h, 0
  br i1 %.not61, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call fastcc void @_ZN11OpenImageIO4v3_1L13resize_block_IN9Imath_3_14halfEEEbRNS0_8ImageBufERKS4_NS0_3ROIEb(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %2, i1 noundef zeroext false)
  br label %bb.aw

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.i = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf9nchannelsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !177  ; 2 uses
  %i.l = load i32, ptr %2, align 8, !tbaa !141    ; 2 uses
  %i.m = sub nsw i32 %i.k, %i.l                   ; 2 uses
  %i.n = mul nsw i32 %i.m, %i.i                   ; 2 uses
  %i.o = sext i32 %i.n to i64
  %i.p = icmp slt i32 %i.n, 0
  %i.q = shl nsw i64 %i.o, 2
  %i.r = select i1 %i.p, i64 -1, i64 %i.q         ; 2 uses
  %i.s = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.r) #33 ; 4 uses
  %i.t = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.r) #33
          to label %bb.f unwind label %bb.k       ; 4 uses

bb.f:                                             ; preds = %bb.e
  %i.u = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf11localpixelsEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.v = invoke noundef ptr @_ZN11OpenImageIO4v3_18ImageBuf11localpixelsEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !175  ; 4 uses
  %i.y = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !135
  %i.ab = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !135
  %i.ae = mul nsw i32 %i.ad, %i.i
  %i.af = sext i32 %i.ae to i64                   ; 8 uses
  %i.ag = sext i32 %i.m to i64                    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !178 ; 2 uses
  %i.aj = shl nsw i64 %i.ag, 1                    ; 2 uses
  %.not122 = icmp eq i32 %i.ai, %i.x
  br i1 %.not122, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit67, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.ak = sub i32 %i.ai, %i.x
  %i.al = sext i32 %i.ak to i64
  %i.am = shl nsw i32 %i.x, 1
  %i.an = sext i32 %i.am to i64
  %i.ao = mul nsw i64 %i.af, %i.an
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.ao
  %i.aq = mul i32 %i.x, %i.i
  %i.ar = mul i32 %i.aq, %i.aa
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [2 x i8], ptr %i.v, i64 %i.as
  %.not.i68 = icmp eq i32 %i.k, %i.l
  %i.au = icmp sgt i32 %i.i, 0
  %i.av = sext i32 %i.i to i64                    ; 2 uses
  %i.aw = zext nneg i32 %i.i to i64               ; 2 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 1)
  br label %bb.o

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit67: ; preds = %._crit_edge117, %bb.j
  tail call void @_ZdaPv(ptr noundef nonnull %i.t) #31
  tail call void @_ZdaPv(ptr noundef nonnull %i.s) #31
  br label %bb.aw

bb.k:                                             ; preds = %bb.e
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit94

bb.l:                                             ; preds = %bb.f
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit91

bb.m:                                             ; preds = %bb.h, %bb.g
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit91

bb.n:                                             ; preds = %bb.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit91

bb.o:                                             ; preds = %.lr.ph, %._crit_edge117
  %.050121 = phi i64 [ 0, %.lr.ph ], [ %i.go, %._crit_edge117 ]
  %.051120 = phi ptr [ %i.at, %.lr.ph ], [ %.152.lcssa, %._crit_edge117 ] ; 3 uses
  %.053119 = phi ptr [ %i.ap, %.lr.ph ], [ %i.gn, %._crit_edge117 ] ; 5 uses
  br i1 %.not.i68, label %_ZN11OpenImageIO4v3_1L14halve_scanlineIN9Imath_3_14halfEEEvPKT_imPf.exit88.thread, label %.preheader.lr.ph.i

_ZN11OpenImageIO4v3_1L14halve_scanlineIN9Imath_3_14halfEEEvPKT_imPf.exit88.thread: ; preds = %bb.o
  %4 = getelementptr inbounds nuw [2 x i8], ptr %.053119, i64 %i.af
  %5 = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.af
  br label %._crit_edge117

.preheader.lr.ph.i:                               ; preds = %bb.o
  br i1 %i.au, label %.preheader.i, label %.preheader.lr.ph.thread

.preheader.lr.ph.thread:                          ; preds = %.preheader.lr.ph.i
  %6 = getelementptr inbounds nuw [2 x i8], ptr %.053119, i64 %i.af
  %7 = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.af
  br label %._crit_edge117

.preheader.i:                                     ; preds = %.preheader.lr.ph.i, %._crit_edge.i
  %.01329.i = phi i64 [ %i.bb, %._crit_edge.i ], [ 0, %.preheader.lr.ph.i ]
  %.01428.i = phi ptr [ %i.cs, %._crit_edge.i ], [ %i.s, %.preheader.lr.ph.i ]
  %.01527.i = phi ptr [ %i.bc, %._crit_edge.i ], [ %.053119, %.preheader.lr.ph.i ]
  br label %bb.p

._crit_edge.i:                                    ; preds = %_ZNK9Imath_3_14halfcvfEv.exit22.i
  %i.bb = add nuw i64 %.01329.i, 2                ; 2 uses
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %i.av
  %i.bd = icmp ult i64 %i.bb, %i.aj
  br i1 %i.bd, label %.preheader.i, label %_ZN11OpenImageIO4v3_1L14halve_scanlineIN9Imath_3_14halfEEEvPKT_imPf.exit, !llvm.loop !1344

bb.p:                                             ; preds = %_ZNK9Imath_3_14halfcvfEv.exit22.i, %.preheader.i
  %.025.i = phi i32 [ 0, %.preheader.i ], [ %i.cr, %_ZNK9Imath_3_14halfcvfEv.exit22.i ]
  %.124.i = phi ptr [ %.01428.i, %.preheader.i ], [ %i.cs, %_ZNK9Imath_3_14halfcvfEv.exit22.i ] ; 2 uses
  %.11623.i = phi ptr [ %.01527.i, %.preheader.i ], [ %i.ct, %_ZNK9Imath_3_14halfcvfEv.exit22.i ] ; 3 uses
  %i.be = load i16, ptr %.11623.i, align 2, !tbaa !422 ; 2 uses
  %i.bf = zext i16 %i.be to i32
  %i.bg = shl nuw nsw i32 %i.bf, 13
  %i.bh = and i32 %i.bg, 268427264                ; 6 uses
  %.signext.i.i.i = sext i16 %i.be to i32
  %i.bi = and i32 %.signext.i.i.i, -2147483648    ; 3 uses
  %i.bj = icmp samesign ugt i32 %i.bh, 8388607
  br i1 %i.bj, label %bb.q, label %bb.t, !prof !74

bb.q:                                             ; preds = %bb.p
  %i.bk = or disjoint i32 %i.bh, %i.bi            ; 2 uses
  %i.bl = icmp samesign ult i32 %i.bh, 260046848
  br i1 %i.bl, label %bb.r, label %bb.s, !prof !74

bb.r:                                             ; preds = %bb.q
  %i.bm = add nuw nsw i32 %i.bk, 939524096
  br label %_ZNK9Imath_3_14halfcvfEv.exit.i

bb.s:                                             ; preds = %bb.q
  %i.bn = or i32 %i.bk, 2139095040
  br label %_ZNK9Imath_3_14halfcvfEv.exit.i

bb.t:                                             ; preds = %bb.p
  %.not.i.i.i = icmp eq i32 %i.bh, 0
  br i1 %.not.i.i.i, label %_ZNK9Imath_3_14halfcvfEv.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bo = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.bh, i1 true)
  %i.bp = add nsw i32 %i.bo, -8                   ; 2 uses
  %i.bq = shl i32 %i.bh, %i.bp
  %i.br = or i32 %i.bi, %i.bq
  %i.bs = or i32 %i.br, 947912704
  %i.bt = shl nuw nsw i32 %i.bp, 23
  %i.bu = sub nuw i32 %i.bs, %i.bt
  br label %_ZNK9Imath_3_14halfcvfEv.exit.i

_ZNK9Imath_3_14halfcvfEv.exit.i:                  ; preds = %bb.u, %bb.t, %bb.s, %bb.r
  %.sroa.0.0.i.i.i = phi i32 [ %i.bm, %bb.r ], [ %i.bn, %bb.s ], [ %i.bu, %bb.u ], [ %i.bi, %bb.t ]
  %i.bv = bitcast i32 %.sroa.0.0.i.i.i to float
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %.11623.i, i64 %i.av
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !422 ; 2 uses
  %i.by = zext i16 %i.bx to i32
  %i.bz = shl nuw nsw i32 %i.by, 13
  %i.ca = and i32 %i.bz, 268427264                ; 6 uses
  %.signext.i.i19.i = sext i16 %i.bx to i32
  %i.cb = and i32 %.signext.i.i19.i, -2147483648  ; 3 uses
  %i.cc = icmp samesign ugt i32 %i.ca, 8388607
  br i1 %i.cc, label %bb.v, label %bb.y, !prof !74

bb.v:                                             ; preds = %_ZNK9Imath_3_14halfcvfEv.exit.i
  %i.cd = or disjoint i32 %i.ca, %i.cb            ; 2 uses
  %i.ce = icmp samesign ult i32 %i.ca, 260046848
  br i1 %i.ce, label %bb.w, label %bb.x, !prof !74

bb.w:                                             ; preds = %bb.v
  %i.cf = add nuw nsw i32 %i.cd, 939524096
  br label %_ZNK9Imath_3_14halfcvfEv.exit22.i

bb.x:                                             ; preds = %bb.v
  %i.cg = or i32 %i.cd, 2139095040
  br label %_ZNK9Imath_3_14halfcvfEv.exit22.i

bb.y:                                             ; preds = %_ZNK9Imath_3_14halfcvfEv.exit.i
  %.not.i.i20.i = icmp eq i32 %i.ca, 0
  br i1 %.not.i.i20.i, label %_ZNK9Imath_3_14halfcvfEv.exit22.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ch = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.ca, i1 true)
  %i.ci = add nsw i32 %i.ch, -8                   ; 2 uses
  %i.cj = shl i32 %i.ca, %i.ci
  %i.ck = or i32 %i.cb, %i.cj
  %i.cl = or i32 %i.ck, 947912704
  %i.cm = shl nuw nsw i32 %i.ci, 23
  %i.cn = sub nuw i32 %i.cl, %i.cm
  br label %_ZNK9Imath_3_14halfcvfEv.exit22.i

_ZNK9Imath_3_14halfcvfEv.exit22.i:                ; preds = %bb.z, %bb.y, %bb.x, %bb.w
  %.sroa.0.0.i.i21.i = phi i32 [ %i.cf, %bb.w ], [ %i.cg, %bb.x ], [ %i.cn, %bb.z ], [ %i.cb, %bb.y ]
  %i.co = bitcast i32 %.sroa.0.0.i.i21.i to float
  %i.cp = fadd float %i.bv, %i.co
  %i.cq = fmul float %i.cp, 5.000000e-01
  store float %i.cq, ptr %.124.i, align 4, !tbaa !153
  %i.cr = add nuw nsw i32 %.025.i, 1              ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.124.i, i64 4 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.11623.i, i64 2 ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.cr, %i.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.p, !llvm.loop !1345

_ZN11OpenImageIO4v3_1L14halve_scanlineIN9Imath_3_14halfEEEvPKT_imPf.exit: ; preds = %._crit_edge.i
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %.053119, i64 %i.af
  br label %.preheader.i71

.preheader.i71:                                   ; preds = %_ZN11OpenImageIO4v3_1L14halve_scanlineIN9Imath_3_14halfEEEvPKT_imPf.exit, %._crit_edge.i87
  %.01329.i72 = phi i64 [ %i.cv, %._crit_edge.i87 ], [ 0, %_ZN11OpenImageIO4v3_1L14halve_scanlineIN9Imath_3_14halfEEEvPKT_imPf.exit ]
  %.01428.i73 = phi ptr [ %i.em, %._crit_edge.i87 ], [ %i.t, %_ZN11OpenImageIO4v3_1L14halve_scanlineIN9Imath_3_14halfEEEvPKT_imPf.exit ]
  %.01527.i74 = phi ptr [ %i.cw, %._crit_edge.i87 ], [ %i.cu, %_ZN11OpenImageIO4v3_1L14halve_scanlineIN9Imath_3_14halfEEEvPKT_imPf.exit ]
  br label %bb.aa

._crit_edge.i87:                                  ; preds = %_ZNK9Imath_3_14halfcvfEv.exit22.i84
  %i.cv = add nuw i64 %.01329.i72, 2              ; 2 uses
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %i.en, i64 %i.aw
  %i.cx = icmp ult i64 %i.cv, %i.aj
  br i1 %i.cx, label %.preheader.i71, label %_ZN11OpenImageIO4v3_1L14halve_scanlineIN9Imath_3_14halfEEEvPKT_imPf.exit88, !llvm.loop !1344

bb.aa:                                            ; preds = %_ZNK9Imath_3_14halfcvfEv.exit22.i84, %.preheader.i71
  %.025.i75 = phi i32 [ 0, %.preheader.i71 ], [ %i.el, %_ZNK9Imath_3_14halfcvfEv.exit22.i84 ]
  %.124.i76 = phi ptr [ %.01428.i73, %.preheader.i71 ], [ %i.em, %_ZNK9Imath_3_14halfcvfEv.exit22.i84 ] ; 2 uses
  %.11623.i77 = phi ptr [ %.01527.i74, %.preheader.i71 ], [ %i.en, %_ZNK9Imath_3_14halfcvfEv.exit22.i84 ] ; 3 uses
  %i.cy = load i16, ptr %.11623.i77, align 2, !tbaa !422 ; 2 uses
  %i.cz = zext i16 %i.cy to i32
  %i.da = shl nuw nsw i32 %i.cz, 13
  %i.db = and i32 %i.da, 268427264                ; 6 uses
  %.signext.i.i.i78 = sext i16 %i.cy to i32
  %i.dc = and i32 %.signext.i.i.i78, -2147483648  ; 3 uses
  %i.dd = icmp samesign ugt i32 %i.db, 8388607
  br i1 %i.dd, label %bb.ab, label %bb.ae, !prof !74

bb.ab:                                            ; preds = %bb.aa
  %i.de = or disjoint i32 %i.db, %i.dc            ; 2 uses
  %i.df = icmp samesign ult i32 %i.db, 260046848
  br i1 %i.df, label %bb.ac, label %bb.ad, !prof !74

bb.ac:                                            ; preds = %bb.ab
  %i.dg = add nuw nsw i32 %i.de, 939524096
  br label %_ZNK9Imath_3_14halfcvfEv.exit.i80

bb.ad:                                            ; preds = %bb.ab
  %i.dh = or i32 %i.de, 2139095040
  br label %_ZNK9Imath_3_14halfcvfEv.exit.i80

bb.ae:                                            ; preds = %bb.aa
  %.not.i.i.i79 = icmp eq i32 %i.db, 0
  br i1 %.not.i.i.i79, label %_ZNK9Imath_3_14halfcvfEv.exit.i80, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.di = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.db, i1 true)
  %i.dj = add nsw i32 %i.di, -8                   ; 2 uses
  %i.dk = shl i32 %i.db, %i.dj
  %i.dl = or i32 %i.dc, %i.dk
  %i.dm = or i32 %i.dl, 947912704
  %i.dn = shl nuw nsw i32 %i.dj, 23
  %i.do = sub nuw i32 %i.dm, %i.dn
  br label %_ZNK9Imath_3_14halfcvfEv.exit.i80

_ZNK9Imath_3_14halfcvfEv.exit.i80:                ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac
  %.sroa.0.0.i.i.i81 = phi i32 [ %i.dg, %bb.ac ], [ %i.dh, %bb.ad ], [ %i.do, %bb.af ], [ %i.dc, %bb.ae ]
  %i.dp = bitcast i32 %.sroa.0.0.i.i.i81 to float
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %.11623.i77, i64 %i.aw
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !422 ; 2 uses
  %i.ds = zext i16 %i.dr to i32
  %i.dt = shl nuw nsw i32 %i.ds, 13
  %i.du = and i32 %i.dt, 268427264                ; 6 uses
  %.signext.i.i19.i82 = sext i16 %i.dr to i32
  %i.dv = and i32 %.signext.i.i19.i82, -2147483648 ; 3 uses
  %i.dw = icmp samesign ugt i32 %i.du, 8388607
  br i1 %i.dw, label %bb.ag, label %bb.aj, !prof !74

bb.ag:                                            ; preds = %_ZNK9Imath_3_14halfcvfEv.exit.i80
  %i.dx = or disjoint i32 %i.du, %i.dv            ; 2 uses
  %i.dy = icmp samesign ult i32 %i.du, 260046848
  br i1 %i.dy, label %bb.ah, label %bb.ai, !prof !74

bb.ah:                                            ; preds = %bb.ag
  %i.dz = add nuw nsw i32 %i.dx, 939524096
  br label %_ZNK9Imath_3_14halfcvfEv.exit22.i84

bb.ai:                                            ; preds = %bb.ag
  %i.ea = or i32 %i.dx, 2139095040
  br label %_ZNK9Imath_3_14halfcvfEv.exit22.i84

bb.aj:                                            ; preds = %_ZNK9Imath_3_14halfcvfEv.exit.i80
  %.not.i.i20.i83 = icmp eq i32 %i.du, 0
  br i1 %.not.i.i20.i83, label %_ZNK9Imath_3_14halfcvfEv.exit22.i84, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.eb = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.du, i1 true)
  %i.ec = add nsw i32 %i.eb, -8                   ; 2 uses
  %i.ed = shl i32 %i.du, %i.ec
  %i.ee = or i32 %i.dv, %i.ed
  %i.ef = or i32 %i.ee, 947912704
  %i.eg = shl nuw nsw i32 %i.ec, 23
  %i.eh = sub nuw i32 %i.ef, %i.eg
  br label %_ZNK9Imath_3_14halfcvfEv.exit22.i84

_ZNK9Imath_3_14halfcvfEv.exit22.i84:              ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ah
  %.sroa.0.0.i.i21.i85 = phi i32 [ %i.dz, %bb.ah ], [ %i.ea, %bb.ai ], [ %i.eh, %bb.ak ], [ %i.dv, %bb.aj ]
  %i.ei = bitcast i32 %.sroa.0.0.i.i21.i85 to float
  %i.ej = fadd float %i.dp, %i.ei
  %i.ek = fmul float %i.ej, 5.000000e-01
  store float %i.ek, ptr %.124.i76, align 4, !tbaa !153
  %i.el = add nuw nsw i32 %.025.i75, 1            ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.124.i76, i64 4 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.11623.i77, i64 2 ; 2 uses
  %exitcond.not.i86 = icmp eq i32 %i.el, %i.i
  br i1 %exitcond.not.i86, label %._crit_edge.i87, label %bb.aa, !llvm.loop !1345

_ZN11OpenImageIO4v3_1L14halve_scanlineIN9Imath_3_14halfEEEvPKT_imPf.exit88: ; preds = %._crit_edge.i87
  %8 = getelementptr inbounds nuw [2 x i8], ptr %.053119, i64 %i.af
  %9 = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %i.af
  br label %.preheader.us

.preheader.us:                                    ; preds = %_ZN11OpenImageIO4v3_1L14halve_scanlineIN9Imath_3_14halfEEEvPKT_imPf.exit88, %._crit_edge.us
  %.046116.us = phi i64 [ %i.gm, %._crit_edge.us ], [ 0, %_ZN11OpenImageIO4v3_1L14halve_scanlineIN9Imath_3_14halfEEEvPKT_imPf.exit88 ]
  %.047115.us = phi ptr [ %i.gk, %._crit_edge.us ], [ %i.t, %_ZN11OpenImageIO4v3_1L14halve_scanlineIN9Imath_3_14halfEEEvPKT_imPf.exit88 ]
  %.048114.us = phi ptr [ %i.gj, %._crit_edge.us ], [ %i.s, %_ZN11OpenImageIO4v3_1L14halve_scanlineIN9Imath_3_14halfEEEvPKT_imPf.exit88 ]
  %.152113.us = phi ptr [ %i.gl, %._crit_edge.us ], [ %.051120, %_ZN11OpenImageIO4v3_1L14halve_scanlineIN9Imath_3_14halfEEEvPKT_imPf.exit88 ]
  br label %bb.al

bb.al:                                            ; preds = %.preheader.us, %_ZN9Imath_3_14halfC2Ef.exit.us
  %.0110.us = phi i32 [ 0, %.preheader.us ], [ %i.gi, %_ZN9Imath_3_14halfC2Ef.exit.us ]
  %.1109.us = phi ptr [ %.047115.us, %.preheader.us ], [ %i.gk, %_ZN9Imath_3_14halfC2Ef.exit.us ] ; 2 uses
  %.149108.us = phi ptr [ %.048114.us, %.preheader.us ], [ %i.gj, %_ZN9Imath_3_14halfC2Ef.exit.us ] ; 2 uses
  %.2107.us = phi ptr [ %.152113.us, %.preheader.us ], [ %i.gl, %_ZN9Imath_3_14halfC2Ef.exit.us ] ; 2 uses
  %i.eo = load float, ptr %.149108.us, align 4, !tbaa !153
  %i.ep = load float, ptr %.1109.us, align 4, !tbaa !153
  %i.eq = fadd float %i.eo, %i.ep
  %i.er = fmul float %i.eq, 5.000000e-01          ; 2 uses
  %i.es = bitcast float %i.er to i32
  %i.et = tail call float @llvm.fabs.f32(float %i.er)
  %i.eu = bitcast float %i.et to i32              ; 10 uses
  %i.ev = lshr i32 %i.es, 16                      ; 3 uses
  %i.ew = trunc nuw i32 %i.ev to i16
  %i.ex = and i16 %i.ew, -32768                   ; 3 uses
  %i.ey = icmp samesign ugt i32 %i.eu, 947912703
  br i1 %i.ey, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ez = icmp samesign ult i32 %i.eu, 855638017
  br i1 %i.ez, label %_ZN9Imath_3_14halfC2Ef.exit.us, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fa = lshr i32 %i.eu, 23                      ; 2 uses
  %i.fb = sub nuw nsw i32 126, %i.fa
  %i.fc = and i32 %i.eu, 8388607
  %i.fd = or disjoint i32 %i.fc, 8388608          ; 2 uses
  %i.fe = add nsw i32 %i.fa, -94
  %i.ff = shl i32 %i.fd, %i.fe                    ; 2 uses
  %i.fg = lshr i32 %i.fd, %i.fb                   ; 2 uses
  %i.fh = and i32 %i.ev, 32768
  %i.fi = or i32 %i.fg, %i.fh
  %i.fj = trunc nuw i32 %i.fi to i16              ; 2 uses
  %i.fk = icmp ugt i32 %i.ff, -2147483648
  br i1 %i.fk, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fl = icmp ne i32 %i.ff, -2147483648
  %i.fm = and i32 %i.fg, 1
  %.not.i.i.us = icmp eq i32 %i.fm, 0
  %or.cond.i.i.us = select i1 %i.fl, i1 true, i1 %.not.i.i.us
  br i1 %or.cond.i.i.us, label %_ZN9Imath_3_14halfC2Ef.exit.us, label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.fn = add nuw i16 %i.fj, 1
  br label %_ZN9Imath_3_14halfC2Ef.exit.us

bb.aq:                                            ; preds = %bb.al
  %i.fo = icmp samesign ugt i32 %i.eu, 2139095039
  br i1 %i.fo, label %bb.au, label %bb.ar, !prof !110

bb.ar:                                            ; preds = %bb.aq
  %i.fp = icmp samesign ugt i32 %i.eu, 1199566847
  br i1 %i.fp, label %bb.at, label %bb.as, !prof !110

bb.as:                                            ; preds = %bb.ar
  %i.fq = add nuw nsw i32 %i.eu, 134221823
  %i.fr = lshr i32 %i.eu, 13
  %i.fs = and i32 %i.fr, 1
  %i.ft = add nuw nsw i32 %i.fq, %i.fs
  %i.fu = lshr i32 %i.ft, 13
  %i.fv = and i32 %i.ev, 32768
  %i.fw = or i32 %i.fu, %i.fv
  %i.fx = trunc i32 %i.fw to i16
  br label %_ZN9Imath_3_14halfC2Ef.exit.us

bb.at:                                            ; preds = %bb.ar
  %i.fy = or disjoint i16 %i.ex, 31744
  br label %_ZN9Imath_3_14halfC2Ef.exit.us

bb.au:                                            ; preds = %bb.aq
  %i.fz = or disjoint i16 %i.ex, 31744            ; 2 uses
  %i.ga = icmp eq i32 %i.eu, 2139095040
  br i1 %i.ga, label %_ZN9Imath_3_14halfC2Ef.exit.us, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gb = lshr i32 %i.eu, 13
  %i.gc = and i32 %i.gb, 1023                     ; 2 uses
  %i.gd = icmp eq i32 %i.gc, 0
  %i.ge = zext i1 %i.gd to i16
  %i.gf = trunc nuw nsw i32 %i.gc to i16
  %i.gg = or i16 %i.gf, %i.ge
  %i.gh = or disjoint i16 %i.gg, %i.fz
  br label %_ZN9Imath_3_14halfC2Ef.exit.us

_ZN9Imath_3_14halfC2Ef.exit.us:                   ; preds = %bb.av, %bb.au, %bb.at, %bb.as, %bb.ap, %bb.ao, %bb.am
  %.033.i.i.us = phi i16 [ %i.ex, %bb.am ], [ %i.gh, %bb.av ], [ %i.fy, %bb.at ], [ %i.fx, %bb.as ], [ %i.fz, %bb.au ], [ %i.fn, %bb.ap ], [ %i.fj, %bb.ao ]
  store i16 %.033.i.i.us, ptr %.2107.us, align 2, !tbaa !423
  %i.gi = add nuw nsw i32 %.0110.us, 1            ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.149108.us, i64 4 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.1109.us, i64 4 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.2107.us, i64 2 ; 3 uses
  %exitcond.not = icmp eq i32 %i.gi, %i.i
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.al, !llvm.loop !1346

._crit_edge.us:                                   ; preds = %_ZN9Imath_3_14halfC2Ef.exit.us
  %i.gm = add nuw i64 %.046116.us, 1              ; 2 uses
  %exitcond131.not = icmp eq i64 %i.gm, %umax
  br i1 %exitcond131.not, label %._crit_edge117, label %.preheader.us, !llvm.loop !1347

._crit_edge117:                                   ; preds = %._crit_edge.us, %.preheader.lr.ph.thread, %_ZN11OpenImageIO4v3_1L14halve_scanlineIN9Imath_3_14halfEEEvPKT_imPf.exit88.thread
  %i.gn = phi ptr [ %5, %_ZN11OpenImageIO4v3_1L14halve_scanlineIN9Imath_3_14halfEEEvPKT_imPf.exit88.thread ], [ %7, %.preheader.lr.ph.thread ], [ %9, %._crit_edge.us ]
  %.152.lcssa = phi ptr [ %.051120, %_ZN11OpenImageIO4v3_1L14halve_scanlineIN9Imath_3_14halfEEEvPKT_imPf.exit88.thread ], [ %.051120, %.preheader.lr.ph.thread ], [ %i.gl, %._crit_edge.us ]
  %i.go = add nuw i64 %.050121, 1                 ; 2 uses
  %exitcond133.not = icmp eq i64 %i.go, %i.al
  br i1 %exitcond133.not, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit67, label %bb.o, !llvm.loop !1348

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit91: ; preds = %bb.m, %bb.n, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %i.ay, %bb.l ], [ %i.ba, %bb.n ], [ %i.az, %bb.m ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.t) #31
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit94

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit94: ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit91, %bb.k
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit91 ], [ %i.ax, %bb.k ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.s) #31
  resume { ptr, i32 } %.pn.pn.pn

bb.aw:                                            ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit67, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_1L18resize_block_2passItEEbRNS0_8ImageBufERKS2_NS0_3ROIEb(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nofree noundef readonly byval(%"struct.OpenImageIO::v3_1::ROI") align 8 captures(none) %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  br i1 %3, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !135
  %i.d = and i32 %i.c, 1
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !137
  %i.h = and i32 %i.g, 1
  %.not61 = icmp eq i32 %i.h, 0
  br i1 %.not61, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call fastcc void @_ZN11OpenImageIO4v3_1L13resize_block_ItEEbRNS0_8ImageBufERKS2_NS0_3ROIEb(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %2, i1 noundef zeroext false)
  br label %bb.o

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.i = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf9nchannelsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 13 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !177  ; 2 uses
  %i.l = load i32, ptr %2, align 8, !tbaa !141    ; 2 uses
  %i.m = sub nsw i32 %i.k, %i.l                   ; 2 uses
  %i.n = mul nsw i32 %i.m, %i.i                   ; 2 uses
  %i.o = sext i32 %i.n to i64
  %i.p = icmp slt i32 %i.n, 0
  %i.q = shl nsw i64 %i.o, 2
  %i.r = select i1 %i.p, i64 -1, i64 %i.q         ; 2 uses
  %i.s = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.r) #33 ; 4 uses
  %i.t = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.r) #33
          to label %bb.f unwind label %bb.k       ; 4 uses

bb.f:                                             ; preds = %bb.e
  %i.u = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf11localpixelsEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.v = invoke noundef ptr @_ZN11OpenImageIO4v3_18ImageBuf11localpixelsEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !175  ; 4 uses
  %i.y = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !135
  %i.ab = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !135
  %i.ae = mul nsw i32 %i.ad, %i.i
  %i.af = sext i32 %i.ae to i64                   ; 3 uses
  %i.ag = sext i32 %i.m to i64                    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !178 ; 2 uses
  %i.aj = sub i32 %i.ai, %i.x
  %i.ak = sext i32 %i.aj to i64
  %i.al = shl nsw i64 %i.ag, 1                    ; 2 uses
  %.not170 = icmp eq i32 %i.ai, %i.x
  br i1 %.not170, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit67, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %.not.i68 = icmp ne i32 %i.k, %i.l
  %i.am = sext i32 %i.i to i64                    ; 3 uses
  %i.an = zext i32 %i.i to i64                    ; 7 uses
  %i.ao = icmp sgt i32 %i.i, 0
  %or.cond = and i1 %.not.i68, %i.ao
  br i1 %or.cond, label %.preheader.lr.ph.i.us.preheader, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit67

.preheader.lr.ph.i.us.preheader:                  ; preds = %.lr.ph
  %i.ap = mul i32 %i.x, %i.i
  %i.aq = mul i32 %i.ap, %i.aa
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [2 x i8], ptr %i.v, i64 %i.ar
  %i.at = shl nsw i32 %i.x, 1
  %i.au = sext i32 %i.at to i64
  %i.av = mul nsw i64 %i.af, %i.au
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.av
  %min.iters.check34 = icmp ult i32 %i.i, 8
  %n.vec36 = and i64 %i.an, 2147483640            ; 5 uses
  %i.ax = trunc nuw nsw i64 %n.vec36 to i32
  %i.ay = shl nuw nsw i64 %n.vec36, 2
  %i.az = shl nuw nsw i64 %n.vec36, 1
  %cmp.n47 = icmp eq i64 %n.vec36, %i.an
  %min.iters.check16 = icmp ult i32 %i.i, 8
  %n.vec18 = and i64 %i.an, 2147483640            ; 5 uses
  %i.ba = trunc nuw nsw i64 %n.vec18 to i32
  %i.bb = shl nuw nsw i64 %n.vec18, 2
  %i.bc = shl nuw nsw i64 %n.vec18, 1
  %cmp.n29 = icmp eq i64 %n.vec18, %i.an
  %i.bd = zext nneg i32 %i.i to i64               ; 2 uses
  %min.iters.check = icmp ult i32 %i.i, 8
  %n.vec = and i64 %i.bd, 2147483640              ; 5 uses
  %i.be = trunc nuw nsw i64 %n.vec to i32
  %i.bf = shl nuw nsw i64 %n.vec, 2               ; 2 uses
  %i.bg = shl nuw nsw i64 %n.vec, 1
  %cmp.n = icmp eq i64 %n.vec, %i.bd
  br label %.preheader.lr.ph.i.us

.preheader.lr.ph.i.us:                            ; preds = %.preheader.lr.ph.i.us.preheader, %._crit_edge107.us141
  %.050111.us116 = phi i64 [ %i.ew, %._crit_edge107.us141 ], [ 0, %.preheader.lr.ph.i.us.preheader ]
  %.051110.us117 = phi ptr [ %.lcssa4, %._crit_edge107.us141 ], [ %i.as, %.preheader.lr.ph.i.us.preheader ]
  %.053109.us118 = phi ptr [ %i.dw, %._crit_edge107.us141 ], [ %i.aw, %.preheader.lr.ph.i.us.preheader ] ; 2 uses
  br label %.preheader.i.us

.preheader.i.us:                                  ; preds = %._crit_edge.i.us, %.preheader.lr.ph.i.us
  %.01325.i.us = phi i64 [ %i.cl, %._crit_edge.i.us ], [ 0, %.preheader.lr.ph.i.us ]
  %.01424.i.us = phi ptr [ %.lcssa1, %._crit_edge.i.us ], [ %i.s, %.preheader.lr.ph.i.us ] ; 3 uses
  %.01523.i.us = phi ptr [ %i.cm, %._crit_edge.i.us ], [ %.053109.us118, %.preheader.lr.ph.i.us ] ; 3 uses
  br i1 %min.iters.check34, label %scalar.ph33.preheader, label %vector.ph35

vector.ph35:                                      ; preds = %.preheader.i.us
  %i.bh = getelementptr i8, ptr %.01424.i.us, i64 %i.ay ; 2 uses
  %i.bi = getelementptr i8, ptr %.01523.i.us, i64 %i.az ; 2 uses
  br label %vector.body37

vector.body37:                                    ; preds = %vector.body37, %vector.ph35
  %index38 = phi i64 [ 0, %vector.ph35 ], [ %index.next45, %vector.body37 ] ; 3 uses
  %i.bj = shl i64 %index38, 2
  %next.gep39 = getelementptr i8, ptr %.01424.i.us, i64 %i.bj ; 2 uses
  %i.bk = shl i64 %index38, 1
  %next.gep40 = getelementptr i8, ptr %.01523.i.us, i64 %i.bk ; 3 uses
  %i.bl = getelementptr i8, ptr %next.gep40, i64 8
  %wide.load41 = load <4 x i16>, ptr %next.gep40, align 2, !tbaa !423
  %wide.load42 = load <4 x i16>, ptr %i.bl, align 2, !tbaa !423
  %i.bm = zext <4 x i16> %wide.load41 to <4 x i32>
  %i.bn = zext <4 x i16> %wide.load42 to <4 x i32>
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %next.gep40, i64 %i.am ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %wide.load43 = load <4 x i16>, ptr %i.bo, align 2, !tbaa !423
  %wide.load44 = load <4 x i16>, ptr %i.bp, align 2, !tbaa !423
  %i.bq = zext <4 x i16> %wide.load43 to <4 x i32>
  %i.br = zext <4 x i16> %wide.load44 to <4 x i32>
  %i.bs = add nuw nsw <4 x i32> %i.bq, %i.bm
  %i.bt = add nuw nsw <4 x i32> %i.br, %i.bn
  %i.bu = uitofp nneg <4 x i32> %i.bs to <4 x float>
  %i.bv = uitofp nneg <4 x i32> %i.bt to <4 x float>
  %i.bw = fmul nnan <4 x float> %i.bu, splat (float 5.000000e-01)
  %i.bx = fmul nnan <4 x float> %i.bv, splat (float 5.000000e-01)
  %i.by = getelementptr i8, ptr %next.gep39, i64 16
  store <4 x float> %i.bw, ptr %next.gep39, align 4, !tbaa !153
  store <4 x float> %i.bx, ptr %i.by, align 4, !tbaa !153
  %index.next45 = add nuw i64 %index38, 8         ; 2 uses
  %i.bz = icmp eq i64 %index.next45, %n.vec36
  br i1 %i.bz, label %middle.block46, label %vector.body37, !llvm.loop !1349

middle.block46:                                   ; preds = %vector.body37
  br i1 %cmp.n47, label %._crit_edge.i.us, label %scalar.ph33.preheader

scalar.ph33.preheader:                            ; preds = %.preheader.i.us, %middle.block46
  %.021.i.us.ph = phi i32 [ 0, %.preheader.i.us ], [ %i.ax, %middle.block46 ]
  %.120.i.us.ph = phi ptr [ %.01424.i.us, %.preheader.i.us ], [ %i.bh, %middle.block46 ]
  %.11619.i.us.ph = phi ptr [ %.01523.i.us, %.preheader.i.us ], [ %i.bi, %middle.block46 ]
  br label %scalar.ph33

scalar.ph33:                                      ; preds = %scalar.ph33.preheader, %scalar.ph33
  %.021.i.us = phi i32 [ %i.ci, %scalar.ph33 ], [ %.021.i.us.ph, %scalar.ph33.preheader ]
  %.120.i.us = phi ptr [ %i.cj, %scalar.ph33 ], [ %.120.i.us.ph, %scalar.ph33.preheader ] ; 2 uses
  %.11619.i.us = phi ptr [ %i.ck, %scalar.ph33 ], [ %.11619.i.us.ph, %scalar.ph33.preheader ] ; 3 uses
  %i.ca = load i16, ptr %.11619.i.us, align 2, !tbaa !423
  %i.cb = zext i16 %i.ca to i32
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %.11619.i.us, i64 %i.am
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !423
  %i.ce = zext i16 %i.cd to i32
  %i.cf = add nuw nsw i32 %i.ce, %i.cb
  %i.cg = uitofp nneg i32 %i.cf to float
  %i.ch = fmul nnan float %i.cg, 5.000000e-01
  store float %i.ch, ptr %.120.i.us, align 4, !tbaa !153
end_hunk_0
