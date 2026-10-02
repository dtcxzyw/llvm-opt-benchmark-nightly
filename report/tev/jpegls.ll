Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/jpegls?download=true
inline.NumInlined: 3471
inline.NumDeleted: 999
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 40
loop-unroll.NumUnrolled: 145
begin_hunk_0_@_ZN8JlsCodecI14DefaultTraitsTIhhE15DecoderStrategyE6DoScanEv:bb.a
  %.1.i.us = phi i32 [ %i.dd, %.noexc.us ], [ %i.kx, %_ZN8JlsCodecI14DefaultTraitsTIhhE15DecoderStrategyE9DoRunModeEiPS2_.exit.i.us ]
  %i.ky = load i32, ptr %i.a, align 4, !tbaa !89  ; 2 uses
  %i.kz = icmp slt i32 %.128.i.us, %i.ky
  br i1 %i.kz, label %bb.l, label %_ZN8JlsCodecI14DefaultTraitsTIhhE15DecoderStrategyE6DoLineEPh.exit.us.loopexit, !llvm.loop !1002

_ZN8JlsCodecI14DefaultTraitsTIhhE15DecoderStrategyE6DoLineEPh.exit.us.loopexit: ; preds = %bb.ae
  %.pre73 = load ptr, ptr %i.aq, align 8, !tbaa !1005
  br label %_ZN8JlsCodecI14DefaultTraitsTIhhE15DecoderStrategyE6DoLineEPh.exit.us

_ZN8JlsCodecI14DefaultTraitsTIhhE15DecoderStrategyE6DoLineEPh.exit.us: ; preds = %_ZN8JlsCodecI14DefaultTraitsTIhhE15DecoderStrategyE6DoLineEPh.exit.us.loopexit, %.lr.ph.us
  %i.la = phi ptr [ %.pre73, %_ZN8JlsCodecI14DefaultTraitsTIhhE15DecoderStrategyE6DoLineEPh.exit.us.loopexit ], [ %.pre74, %.lr.ph.us ]
  %i.lb = load i32, ptr %i.au, align 8, !tbaa !99
  %i.lc = load ptr, ptr %2, align 8, !tbaa !356   ; 5 uses
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %indvars.iv
  store i32 %i.lb, ptr %i.ld, align 4, !tbaa !60
  %i.le = getelementptr inbounds i8, ptr %i.la, i64 %i.bl ; 2 uses
  store ptr %i.le, ptr %i.aq, align 8, !tbaa !1005
  %i.lf = load ptr, ptr %i.at, align 8, !tbaa !1006 ; 2 uses
  %i.lg = getelementptr inbounds i8, ptr %i.lf, i64 %i.bl
  store ptr %i.lg, ptr %i.at, align 8, !tbaa !1006
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %.lr.ph.us, !llvm.loop !1003

bb.af:                                            ; preds = %._crit_edge.us
  %i.lh = load i32, ptr %i.bo, align 8, !tbaa !1007
  %i.li = add nsw i32 %i.lh, %i.lx
  %i.lj = icmp slt i32 %.02364.us, %i.li
  br i1 %i.lj, label %bb.ag, label %_ZN15DecoderStrategy9OnLineEndEiPKvi.exit.us

bb.ag:                                            ; preds = %bb.af
  %i.lk = load i32, ptr %i.bp, align 4, !tbaa !1008
  %i.ll = load i32, ptr %i.bm, align 4, !tbaa !1009
  %i.lm = sext i32 %i.ll to i64
  %i.ln = getelementptr inbounds i8, ptr %i.lw, i64 %i.lm
  %i.lo = getelementptr inbounds i8, ptr %i.ln, i64 %i.bq
  %i.lp = load ptr, ptr %i.br, align 8, !tbaa !238 ; 2 uses
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !66
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 16
  %i.ls = load ptr, ptr %i.lr, align 8
  invoke void %i.ls(ptr noundef nonnull align 8 dereferenceable(8) %i.lp, ptr noundef %i.lo, i32 noundef %i.lk, i32 noundef %i.c)
          to label %_ZN15DecoderStrategy9OnLineEndEiPKvi.exit.us unwind label %.thread, !inline_history !15

_ZN15DecoderStrategy9OnLineEndEiPKvi.exit.us:     ; preds = %bb.ag, %bb.af, %._crit_edge.us
  %i.lt = add nuw nsw i32 %.02364.us, 1           ; 2 uses
  %i.lu = load i32, ptr %i.an, align 4, !tbaa !359
  %i.lv = icmp slt i32 %i.lt, %i.lu
  br i1 %i.lv, label %.lr.ph65.split.us, label %._crit_edge66, !llvm.loop !1004

._crit_edge.us:                                   ; preds = %_ZN8JlsCodecI14DefaultTraitsTIhhE15DecoderStrategyE6DoLineEPh.exit.us
  %i.lw = getelementptr inbounds i8, ptr %i.lf, i64 %i.bl
  %i.lx = load i32, ptr %i.bn, align 8, !tbaa !1010 ; 2 uses
  %.not29.us = icmp sgt i32 %i.lx, %.02364.us
  br i1 %.not29.us, label %_ZN15DecoderStrategy9OnLineEndEiPKvi.exit.us, label %bb.af

.split.us:                                        ; preds = %_ZNK15CContextRunMode9GetGolombEv.exit.i.us, %_ZNK15CContextRunMode9GetGolombEv.exit.i51.us, %bb.m, %_Z17GetPredictedValueiii.exit.i.us
  %i.ly = landingpad { ptr, i32 }
          cleanup
  %.pre75 = load ptr, ptr %2, align 8, !tbaa !356
  br label %bb.ap

.thread:                                          ; preds = %bb.ag
  %i.lz = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

._crit_edge66:                                    ; preds = %_ZN15DecoderStrategy9OnLineEndEiPKvi.exit.us, %_ZN15DecoderStrategy9OnLineEndEiPKvi.exit, %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit
  %i.ma = phi ptr [ %i.am, %_ZN15DecoderStrategy9OnLineEndEiPKvi.exit ], [ %i.am, %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit ], [ %i.lc, %_ZN15DecoderStrategy9OnLineEndEiPKvi.exit.us ] ; 4 uses
  invoke void @_ZN15DecoderStrategy7EndScanEv(ptr noundef nonnull align 8 dereferenceable(176) %0)
          to label %bb.al unwind label %bb.ao

.lr.ph65.split:                                   ; preds = %.lr.ph65, %_ZN15DecoderStrategy9OnLineEndEiPKvi.exit
  %i.mb = phi i32 [ %i.mt, %_ZN15DecoderStrategy9OnLineEndEiPKvi.exit ], [ %i.ao, %.lr.ph65 ] ; 2 uses
  %.02364 = phi i32 [ %i.mu, %_ZN15DecoderStrategy9OnLineEndEiPKvi.exit ], [ 0, %.lr.ph65 ] ; 4 uses
  store ptr %i.bs, ptr %i.aq, align 8, !tbaa !1005
  store ptr %i.bu, ptr %i.at, align 8, !tbaa !1006
  %i.mc = and i32 %.02364, 1
  %.not = icmp eq i32 %i.mc, 0
  br i1 %.not, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph65.split
  store ptr %i.bu, ptr %i.aq, align 8, !tbaa !50
  store ptr %i.bs, ptr %i.at, align 8, !tbaa !50
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.lr.ph65.split
  %i.md = phi ptr [ %i.x, %bb.ah ], [ %i.bt, %.lr.ph65.split ]
  %i.me = load i32, ptr %i.bn, align 8, !tbaa !1010 ; 2 uses
  %.not29 = icmp sgt i32 %i.me, %.02364
  br i1 %.not29, label %_ZN15DecoderStrategy9OnLineEndEiPKvi.exit, label %bb.aj

.split68:                                         ; preds = %bb.ak
  %i.mf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.aj:                                            ; preds = %bb.ai
  %i.mg = load i32, ptr %i.bo, align 8, !tbaa !1007
  %i.mh = add nsw i32 %i.mg, %i.me
  %i.mi = icmp slt i32 %.02364, %i.mh
  br i1 %i.mi, label %bb.ak, label %_ZN15DecoderStrategy9OnLineEndEiPKvi.exit

bb.ak:                                            ; preds = %bb.aj
  %i.mj = getelementptr i8, ptr %i.md, i64 1
  %i.mk = load i32, ptr %i.bp, align 4, !tbaa !1008
  %i.ml = load i32, ptr %i.bm, align 4, !tbaa !1009
  %i.mm = sext i32 %i.ml to i64
  %i.mn = getelementptr inbounds i8, ptr %i.mj, i64 %i.mm
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.bq
  %i.mp = load ptr, ptr %i.br, align 8, !tbaa !238 ; 2 uses
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !66
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 16
  %i.ms = load ptr, ptr %i.mr, align 8
  invoke void %i.ms(ptr noundef nonnull align 8 dereferenceable(8) %i.mp, ptr noundef %i.mo, i32 noundef %i.mk, i32 noundef %i.c)
          to label %._ZN15DecoderStrategy9OnLineEndEiPKvi.exit_crit_edge unwind label %.split68, !inline_history !15

._ZN15DecoderStrategy9OnLineEndEiPKvi.exit_crit_edge: ; preds = %bb.ak
  %.pre = load i32, ptr %i.an, align 4, !tbaa !359
  br label %_ZN15DecoderStrategy9OnLineEndEiPKvi.exit

_ZN15DecoderStrategy9OnLineEndEiPKvi.exit:        ; preds = %._ZN15DecoderStrategy9OnLineEndEiPKvi.exit_crit_edge, %bb.ai, %bb.aj
  %i.mt = phi i32 [ %.pre, %._ZN15DecoderStrategy9OnLineEndEiPKvi.exit_crit_edge ], [ %i.mb, %bb.ai ], [ %i.mb, %bb.aj ] ; 2 uses
  %i.mu = add nuw nsw i32 %.02364, 1              ; 2 uses
  %i.mv = icmp slt i32 %i.mu, %i.mt
  br i1 %i.mv, label %.lr.ph65.split, label %._crit_edge66, !llvm.loop !1004

bb.al:                                            ; preds = %._crit_edge66
  %.not.i.i = icmp eq ptr %i.ma, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.mw = load ptr, ptr %i.aa, align 8, !tbaa !357
  %i.mx = ptrtoint ptr %i.mw to i64
  %i.my = ptrtoint ptr %i.ma to i64
  %i.mz = sub i64 %i.mx, %i.my
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ma, i64 noundef %i.mz) #26
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit

_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit: ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %.not.i.i40 = icmp eq ptr %i.x, null
  br i1 %.not.i.i40, label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit, label %bb.an

bb.an:                                            ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit
  %i.na = load ptr, ptr %i.n, align 8, !tbaa !50
  %i.nb = ptrtoint ptr %i.na to i64
  %i.nc = ptrtoint ptr %i.x to i64
  %i.nd = sub i64 %i.nb, %i.nc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.nd) #26
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit

_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit: ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  ret void

bb.ao:                                            ; preds = %._crit_edge66
  %i.ne = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ap:                                            ; preds = %.split68, %.split.us, %bb.ao
  %i.nf = phi ptr [ %i.ma, %bb.ao ], [ %.pre75, %.split.us ], [ %i.am, %.split68 ] ; 2 uses
  %.pn.pn = phi { ptr, i32 } [ %i.ne, %bb.ao ], [ %i.ly, %.split.us ], [ %i.mf, %.split68 ] ; 2 uses
  %.not.i.i41 = icmp eq ptr %i.nf, null
  br i1 %.not.i.i41, label %.body, label %bb.aq

bb.aq:                                            ; preds = %.thread, %bb.ap
  %.pn.pn108 = phi { ptr, i32 } [ %i.lz, %.thread ], [ %.pn.pn, %bb.ap ]
  %i.ng = phi ptr [ %i.lc, %.thread ], [ %i.nf, %bb.ap ] ; 3 uses
  store ptr %i.ng, ptr %i.z, align 8, !tbaa !358
  %i.nh = load ptr, ptr %i.aa, align 8, !tbaa !357
  %i.ni = ptrtoint ptr %i.nh to i64
  %i.nj = ptrtoint ptr %i.ng to i64
  %i.nk = sub i64 %i.ni, %i.nj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ng, i64 noundef %i.nk) #26
  br label %.body

.body:                                            ; preds = %bb.aq, %bb.ap, %bb.j, %bb.i
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ag, %bb.i ], [ %.pn.pn108, %bb.aq ], [ %i.ag, %bb.j ], [ %.pn.pn, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %.not.i.i43 = icmp eq ptr %i.x, null
  br i1 %.not.i.i43, label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit44, label %bb.ar

bb.ar:                                            ; preds = %.body
  %i.nl = load ptr, ptr %i.n, align 8, !tbaa !50
  %i.nm = ptrtoint ptr %i.nl to i64
  %i.nn = ptrtoint ptr %i.x to i64
  %i.no = sub i64 %i.nm, %i.nn
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.no) #26
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit44

_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit44: ; preds = %.body, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN15DecoderStrategy9MakeValidEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 12 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !248  ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !352
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -7
  %i.f = icmp ult ptr %i.b, %i.e
  br i1 %i.f, label %_ZN15DecoderStrategy13OptimizedReadEv.exit.thread, label %_ZN15DecoderStrategy13OptimizedReadEv.exit

_ZN15DecoderStrategy13OptimizedReadEv.exit.thread: ; preds = %bb.a
  %1 = load i32, ptr %i.b, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %i.g = zext i32 %2 to i64
  %i.h = shl nuw i64 %i.g, 32
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.j = load i8, ptr %i.i, align 1, !tbaa !51
  %i.k = zext i8 %i.j to i64
  %i.l = shl nuw nsw i64 %i.k, 24
  %i.m = or disjoint i64 %i.h, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %i.o = load i8, ptr %i.n, align 1, !tbaa !51
  %i.p = zext i8 %i.o to i64
  %i.q = shl nuw nsw i64 %i.p, 16
  %i.r = or disjoint i64 %i.m, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.t = load i8, ptr %i.s, align 1, !tbaa !51
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 8
  %i.w = or disjoint i64 %i.r, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  %i.y = load i8, ptr %i.x, align 1, !tbaa !51
  %i.z = zext i8 %i.y to i64
  %3 = or disjoint i64 %i.w, %i.z
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !247 ; 3 uses
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = lshr i64 %3, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !347
  %i.ag = or i64 %i.ad, %i.af
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !347
  %i.ah = sub nsw i32 64, %i.ab                   ; 2 uses
  %i.ai = ashr i32 %i.ah, 3
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds i8, ptr %i.b, i64 %i.aj
  store ptr %i.ak, ptr %i.a, align 8, !tbaa !248
  %i.al = and i32 %i.ah, -8
  %i.am = add nsw i32 %i.al, %i.ab
  store i32 %i.am, ptr %i.aa, align 8, !tbaa !247
  br label %bb.r

_ZN15DecoderStrategy13OptimizedReadEv.exit:       ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !350 ; 5 uses
  %.not.i = icmp eq ptr %i.ao, null
  br i1 %.not.i, label %_ZN15DecoderStrategy18AddBytesFromStreamEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZN15DecoderStrategy13OptimizedReadEv.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !351
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !271
  %i.at = icmp eq ptr %i.aq, %i.as
  br i1 %i.at, label %_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sgetcB8ne180100Ev.exit.i, label %_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sgetcB8ne180100Ev.exit.thread.i

_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sgetcB8ne180100Ev.exit.i: ; preds = %bb.b
  %i.au = load ptr, ptr %i.ao, align 8, !tbaa !66
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 72
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = tail call noundef i32 %i.aw(ptr noundef nonnull align 8 dereferenceable(64) %i.ao), !inline_history !10
  %i.ay = icmp eq i32 %i.ax, -1
  %.promoted.pre20 = load ptr, ptr %i.a, align 8, !tbaa !248 ; 2 uses
  br i1 %i.ay, label %_ZN15DecoderStrategy18AddBytesFromStreamEv.exit, label %_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sgetcB8ne180100Ev.exit.thread.i

_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sgetcB8ne180100Ev.exit.thread.i: ; preds = %_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sgetcB8ne180100Ev.exit.i, %bb.b
  %i.az = phi ptr [ %i.b, %bb.b ], [ %.promoted.pre20, %_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sgetcB8ne180100Ev.exit.i ] ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 5 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !349 ; 3 uses
  %i.bc = ptrtoint ptr %i.bb to i64               ; 2 uses
  %i.bd = ptrtoint ptr %i.az to i64               ; 3 uses
  %i.be = sub i64 %i.bc, %i.bd                    ; 4 uses
  %i.bf = icmp ugt i64 %i.be, 64
  br i1 %i.bf, label %_ZN15DecoderStrategy18AddBytesFromStreamEv.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sgetcB8ne180100Ev.exit.thread.i
  %.not17.i = icmp eq ptr %i.bb, %i.az
  br i1 %.not17.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  %xtraiter = and i64 %i.be, 3                    ; 3 uses
  %i.bh = sub i64 %i.bd, %i.bc
  %i.bi = icmp ugt i64 %i.bh, -4
  br i1 %i.bi, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.be, 124
  br label %bb.d

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i
  %.016.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.di, %._crit_edge.loopexit.i.unr-lcssa ]
  %lcmp.mod34 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod34)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %.016.i.epil = phi i64 [ %.016.i.epil.init, %.epil.preheader ], [ %i.bo, %bb.c ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.bj = load ptr, ptr %i.a, align 8, !tbaa !248
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.016.i.epil
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !51
  %i.bm = load ptr, ptr %i.bg, align 8, !tbaa !235
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.016.i.epil
  store i8 %i.bl, ptr %i.bn, align 1, !tbaa !51
  %i.bo = add nuw nsw i64 %.016.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i, label %bb.c, !llvm.loop !1011

._crit_edge.loopexit.i:                           ; preds = %bb.c, %._crit_edge.loopexit.i.unr-lcssa
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !248 ; 2 uses
  %.pre18.i = load ptr, ptr %i.ba, align 8, !tbaa !349
  %.pre19.i = ptrtoint ptr %.pre.i to i64
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %.pre-phi.i = phi i64 [ %.pre19.i, %._crit_edge.loopexit.i ], [ %i.bd, %.preheader.i ]
  %i.bp = phi ptr [ %.pre18.i, %._crit_edge.loopexit.i ], [ %i.bb, %.preheader.i ]
  %i.bq = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.az, %.preheader.i ]
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !235
  %i.bt = ptrtoint ptr %i.bs to i64               ; 2 uses
  %i.bu = sub i64 %i.bt, %.pre-phi.i              ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bu
  store ptr %i.bv, ptr %i.a, align 8, !tbaa !248
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bu ; 2 uses
  store ptr %i.bw, ptr %i.ba, align 8, !tbaa !349
  %i.bx = load ptr, ptr %i.c, align 8, !tbaa !352
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bu
  store ptr %i.by, ptr %i.c, align 8, !tbaa !352
  %i.bz = load ptr, ptr %i.an, align 8, !tbaa !350 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !236
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = add i64 %i.be, %i.bt
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = load ptr, ptr %i.bz, align 8, !tbaa !66
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 64
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = tail call noundef i64 %i.ch(ptr noundef nonnull align 8 dereferenceable(64) %i.bz, ptr noundef %i.bw, i64 noundef %i.ce), !inline_history !11
  %i.cj = load ptr, ptr %i.ba, align 8, !tbaa !349
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 %i.ci
  store ptr %i.ck, ptr %i.ba, align 8, !tbaa !349
  %.promoted.pre = load ptr, ptr %i.a, align 8, !tbaa !248
  br label %_ZN15DecoderStrategy18AddBytesFromStreamEv.exit

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.new
  %.016.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.di, %bb.d ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.d ]
  %i.cl = load ptr, ptr %i.a, align 8, !tbaa !248
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %.016.i
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !51
  %i.co = load ptr, ptr %i.bg, align 8, !tbaa !235
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %.016.i
  store i8 %i.cn, ptr %i.cp, align 1, !tbaa !51
  %i.cq = or disjoint i64 %.016.i, 1              ; 2 uses
  %i.cr = load ptr, ptr %i.a, align 8, !tbaa !248
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cq
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !51
  %i.cu = load ptr, ptr %i.bg, align 8, !tbaa !235
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cq
  store i8 %i.ct, ptr %i.cv, align 1, !tbaa !51
  %i.cw = or disjoint i64 %.016.i, 2              ; 2 uses
  %i.cx = load ptr, ptr %i.a, align 8, !tbaa !248
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cw
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !51
  %i.da = load ptr, ptr %i.bg, align 8, !tbaa !235
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cw
  store i8 %i.cz, ptr %i.db, align 1, !tbaa !51
  %i.dc = or disjoint i64 %.016.i, 3              ; 2 uses
  %i.dd = load ptr, ptr %i.a, align 8, !tbaa !248
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.dc
  %i.df = load i8, ptr %i.de, align 1, !tbaa !51
  %i.dg = load ptr, ptr %i.bg, align 8, !tbaa !235
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.dc
  store i8 %i.df, ptr %i.dh, align 1, !tbaa !51
  %i.di = add nuw nsw i64 %.016.i, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.i.unr-lcssa, label %bb.d, !llvm.loop !12

_ZN15DecoderStrategy18AddBytesFromStreamEv.exit:  ; preds = %_ZN15DecoderStrategy13OptimizedReadEv.exit, %_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sgetcB8ne180100Ev.exit.i, %_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sgetcB8ne180100Ev.exit.thread.i, %._crit_edge.i
  %.promoted = phi ptr [ %i.b, %_ZN15DecoderStrategy13OptimizedReadEv.exit ], [ %.promoted.pre20, %_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sgetcB8ne180100Ev.exit.i ], [ %i.az, %_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sgetcB8ne180100Ev.exit.thread.i ], [ %.promoted.pre, %._crit_edge.i ] ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !349 ; 5 uses
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 -1
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %.not31 = icmp ult ptr %.promoted, %i.dk
  br i1 %.not31, label %.lr.ph, label %._crit_edge

bb.e:                                             ; preds = %bb.o
  br i1 %.not, label %.lr.ph, label %._crit_edge, !llvm.loop !1012

._crit_edge:                                      ; preds = %bb.e, %_ZN15DecoderStrategy18AddBytesFromStreamEv.exit
  %i.do = load i32, ptr %i.dm, align 8, !tbaa !247
  %i.dp = icmp slt i32 %i.do, 1
  br i1 %i.dp, label %bb.f, label %bb.r

bb.f:                                             ; preds = %._crit_edge
  %i.dq = tail call ptr @__cxa_allocate_exception(i64 32) #23 ; 3 uses
  %i.dr = tail call noundef nonnull align 8 dereferenceable(8) ptr @_Z22CharLSCategoryInstancev() ; 0 uses
  invoke void @_ZNSt3__112system_errorC1EiRKNS_14error_categoryE(ptr noundef nonnull align 8 dereferenceable(32) %i.dq, i32 noundef 5, ptr noundef nonnull align 8 dereferenceable(8) @_ZZ22CharLSCategoryInstancevE8instance)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.dq, ptr nonnull @_ZTINSt3__112system_errorE, ptr nonnull @_ZNSt3__112system_errorD1Ev) #24
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.lr.ph:                                           ; preds = %_ZN15DecoderStrategy18AddBytesFromStreamEv.exit, %bb.e
  %i.dt = phi ptr [ %i.el, %bb.e ], [ %.promoted, %_ZN15DecoderStrategy18AddBytesFromStreamEv.exit ] ; 4 uses
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !51  ; 2 uses
  %i.dv = zext i8 %i.du to i64
  %i.dw = icmp eq i8 %i.du, -1
  br i1 %i.dw, label %bb.i, label %bb.o

bb.i:                                             ; preds = %.lr.ph
  %i.dx = icmp eq ptr %i.dt, %i.dl
end_hunk_0
begin_hunk_1_@_GLOBAL__sub_I_jpegls.cpp:vector.ph
  store i64 %.sroa.039.0.insert.insert.i187.i, ptr %gep.i.i194.i, align 8, !tbaa !60, !alias.scope !1525
  %indvars.iv.next.i.i195.i = add nuw nsw i64 %indvars.iv.i.i193.i, 1 ; 2 uses
  %exitcond.not.i.i196.i = icmp eq i64 %indvars.iv.next.i.i195.i, %wide.trip.count.i.i191.i
  br i1 %exitcond.not.i.i196.i, label %_ZN6CTable8AddEntryEh4Code.exit.i197.i, label %scalar.ph90, !llvm.loop !1512

_ZN6CTable8AddEntryEh4Code.exit.i197.i:           ; preds = %vector.body96, %scalar.ph90
  %indvars.iv.next315.i = add nuw nsw i64 %indvars.iv314.i, 1 ; 3 uses
  %indvars14 = trunc i64 %indvars.iv.next315.i to i32 ; 3 uses
  %i.dg = lshr i32 %indvars14, 30
  %i.dh = shl nuw nsw i32 %indvars14, 1
  %i.di = or disjoint i32 %i.dg, %i.dh
  %i.dj = lshr i32 %indvars14, 5
  %i.dk = add nuw nsw i32 %i.dj, 7
  %exitcond319.not.i = icmp eq i64 %indvars.iv.next315.i, 64
  br i1 %exitcond319.not.i, label %.lr.ph.i29.i207.i, label %.lr.ph.i.i189.i, !llvm.loop !1493

.lr.ph.i29.i207.i:                                ; preds = %_ZN6CTable8AddEntryEh4Code.exit.i197.i, %_ZN6CTable8AddEntryEh4Code.exit38.i215.i
  %indvars.iv320.i = phi i64 [ %indvars.iv.next321.i, %_ZN6CTable8AddEntryEh4Code.exit38.i215.i ], [ 4294967295, %_ZN6CTable8AddEntryEh4Code.exit.i197.i ] ; 2 uses
  %i.dl = phi i32 [ %i.dz, %_ZN6CTable8AddEntryEh4Code.exit38.i215.i ], [ 7, %_ZN6CTable8AddEntryEh4Code.exit.i197.i ] ; 2 uses
  %i.dm = phi i32 [ %i.dx, %_ZN6CTable8AddEntryEh4Code.exit38.i215.i ], [ 1, %_ZN6CTable8AddEntryEh4Code.exit.i197.i ]
  %.sroa.4.0.insert.ext.i202.i = zext nneg i32 %i.dl to i64
  %.sroa.4.0.insert.shift.i203.i = shl nuw nsw i64 %.sroa.4.0.insert.ext.i202.i, 32
  %.sroa.0.0.insert.insert.i205.i = add nuw nsw i64 %.sroa.4.0.insert.shift.i203.i, %indvars.iv320.i ; 2 uses
  %i.dn = or i32 %i.dm, 64
  %i.do = sub nsw i32 8, %i.dl                    ; 3 uses
  %i.dp = shl nuw nsw i32 1, %i.do
  %i.dq = shl nuw nsw i32 %i.dn, %i.do
  %i.dr = zext nneg i32 %i.dq to i64
  %wide.trip.count.i32.i209.i = zext nneg i32 %i.dp to i64 ; 2 uses
  %invariant.gep.i33.i210.i = getelementptr [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @decodingTables, i64 12288), i64 %i.dr ; 2 uses
  %min.iters.check103 = icmp ult i32 %i.do, 2
  br i1 %min.iters.check103, label %scalar.ph102, label %vector.ph104

vector.ph104:                                     ; preds = %.lr.ph.i29.i207.i
  %n.vec105 = and i64 %wide.trip.count.i32.i209.i, 2147483644
  %broadcast.splatinsert106 = insertelement <2 x i64> poison, i64 %.sroa.0.0.insert.insert.i205.i, i64 0
  %broadcast.splat107 = shufflevector <2 x i64> %broadcast.splatinsert106, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body108

vector.body108:                                   ; preds = %vector.body108, %vector.ph104
  %index109 = phi i64 [ 0, %vector.ph104 ], [ %index.next110, %vector.body108 ] ; 2 uses
  %i.ds = getelementptr [8 x i8], ptr %invariant.gep.i33.i210.i, i64 %index109 ; 2 uses
  %i.dt = getelementptr i8, ptr %i.ds, i64 16
  store <2 x i64> %broadcast.splat107, ptr %i.ds, align 8, !tbaa !60, !alias.scope !1525
  store <2 x i64> %broadcast.splat107, ptr %i.dt, align 8, !tbaa !60, !alias.scope !1525
  %index.next110 = add nuw i64 %index109, 4       ; 2 uses
  %i.du = icmp eq i64 %index.next110, %n.vec105
  br i1 %i.du, label %_ZN6CTable8AddEntryEh4Code.exit38.i215.i, label %vector.body108, !llvm.loop !1513

scalar.ph102:                                     ; preds = %.lr.ph.i29.i207.i, %scalar.ph102
  %indvars.iv.i34.i211.i = phi i64 [ %indvars.iv.next.i36.i213.i, %scalar.ph102 ], [ 0, %.lr.ph.i29.i207.i ] ; 2 uses
  %gep.i35.i212.i = getelementptr [8 x i8], ptr %invariant.gep.i33.i210.i, i64 %indvars.iv.i34.i211.i
  store i64 %.sroa.0.0.insert.insert.i205.i, ptr %gep.i35.i212.i, align 8, !tbaa !60, !alias.scope !1525
  %indvars.iv.next.i36.i213.i = add nuw nsw i64 %indvars.iv.i34.i211.i, 1 ; 2 uses
  %exitcond.not.i37.i214.i = icmp eq i64 %indvars.iv.next.i36.i213.i, %wide.trip.count.i32.i209.i
  br i1 %exitcond.not.i37.i214.i, label %_ZN6CTable8AddEntryEh4Code.exit38.i215.i, label %scalar.ph102, !llvm.loop !1514

_ZN6CTable8AddEntryEh4Code.exit38.i215.i:         ; preds = %vector.body108, %scalar.ph102
  %indvars.iv.next321.i = add nsw i64 %indvars.iv320.i, -1 ; 2 uses
  %indvars16 = trunc i64 %indvars.iv.next321.i to i32 ; 2 uses
  %i.dv = ashr i32 %indvars16, 30
  %i.dw = shl nsw i32 %indvars16, 1
  %i.dx = xor i32 %i.dv, %i.dw                    ; 3 uses
  %i.dy = lshr i32 %i.dx, 6
  %i.dz = add nuw nsw i32 %i.dy, 7
  %i.ea = icmp samesign ult i32 %i.dx, 128
  br i1 %i.ea, label %.lr.ph.i29.i207.i, label %_Z9InitTablei.exit216.i, !llvm.loop !1496

_Z9InitTablei.exit216.i:                          ; preds = %_ZN6CTable8AddEntryEh4Code.exit38.i215.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) getelementptr inbounds nuw (i8, ptr @decodingTables, i64 14336), i8 0, i64 2048, i1 false), !alias.scope !1526
  br label %.lr.ph.i.i225.i

.lr.ph.i.i225.i:                                  ; preds = %_ZN6CTable8AddEntryEh4Code.exit.i233.i, %_Z9InitTablei.exit216.i
  %indvars.iv325.i = phi i64 [ %indvars.iv.next326.i, %_ZN6CTable8AddEntryEh4Code.exit.i233.i ], [ 0, %_Z9InitTablei.exit216.i ] ; 2 uses
  %i.eb = phi i32 [ %i.eq, %_ZN6CTable8AddEntryEh4Code.exit.i233.i ], [ 8, %_Z9InitTablei.exit216.i ] ; 2 uses
  %i.ec = phi i32 [ %i.eo, %_ZN6CTable8AddEntryEh4Code.exit.i233.i ], [ 0, %_Z9InitTablei.exit216.i ]
  %.sroa.440.0.insert.ext.i220.i = zext nneg i32 %i.eb to i64
  %.sroa.440.0.insert.shift.i221.i = shl nuw nsw i64 %.sroa.440.0.insert.ext.i220.i, 32
  %.sroa.039.0.insert.insert.i223.i = add nuw nsw i64 %.sroa.440.0.insert.shift.i221.i, %indvars.iv325.i ; 2 uses
  %i.ed = and i32 %i.ec, 127
  %i.ee = or disjoint i32 %i.ed, 128
  %i.ef = sub nsw i32 8, %i.eb                    ; 3 uses
  %i.eg = shl nuw nsw i32 1, %i.ef
  %i.eh = shl nuw nsw i32 %i.ee, %i.ef
  %i.ei = zext nneg i32 %i.eh to i64
  %wide.trip.count.i.i227.i = zext nneg i32 %i.eg to i64 ; 2 uses
  %invariant.gep.i.i228.i = getelementptr [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @decodingTables, i64 14336), i64 %i.ei ; 2 uses
  %min.iters.check115 = icmp ult i32 %i.ef, 2
  br i1 %min.iters.check115, label %scalar.ph114, label %vector.ph116

vector.ph116:                                     ; preds = %.lr.ph.i.i225.i
  %n.vec117 = and i64 %wide.trip.count.i.i227.i, 2147483644
  %broadcast.splatinsert118 = insertelement <2 x i64> poison, i64 %.sroa.039.0.insert.insert.i223.i, i64 0
  %broadcast.splat119 = shufflevector <2 x i64> %broadcast.splatinsert118, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body120

vector.body120:                                   ; preds = %vector.body120, %vector.ph116
  %index121 = phi i64 [ 0, %vector.ph116 ], [ %index.next122, %vector.body120 ] ; 2 uses
  %i.ej = getelementptr [8 x i8], ptr %invariant.gep.i.i228.i, i64 %index121 ; 2 uses
  %i.ek = getelementptr i8, ptr %i.ej, i64 16
  store <2 x i64> %broadcast.splat119, ptr %i.ej, align 8, !tbaa !60, !alias.scope !1526
  store <2 x i64> %broadcast.splat119, ptr %i.ek, align 8, !tbaa !60, !alias.scope !1526
  %index.next122 = add nuw i64 %index121, 4       ; 2 uses
  %i.el = icmp eq i64 %index.next122, %n.vec117
  br i1 %i.el, label %_ZN6CTable8AddEntryEh4Code.exit.i233.i, label %vector.body120, !llvm.loop !1517

scalar.ph114:                                     ; preds = %.lr.ph.i.i225.i, %scalar.ph114
  %indvars.iv.i.i229.i = phi i64 [ %indvars.iv.next.i.i231.i, %scalar.ph114 ], [ 0, %.lr.ph.i.i225.i ] ; 2 uses
  %gep.i.i230.i = getelementptr [8 x i8], ptr %invariant.gep.i.i228.i, i64 %indvars.iv.i.i229.i
  store i64 %.sroa.039.0.insert.insert.i223.i, ptr %gep.i.i230.i, align 8, !tbaa !60, !alias.scope !1526
  %indvars.iv.next.i.i231.i = add nuw nsw i64 %indvars.iv.i.i229.i, 1 ; 2 uses
  %exitcond.not.i.i232.i = icmp eq i64 %indvars.iv.next.i.i231.i, %wide.trip.count.i.i227.i
  br i1 %exitcond.not.i.i232.i, label %_ZN6CTable8AddEntryEh4Code.exit.i233.i, label %scalar.ph114, !llvm.loop !1518

_ZN6CTable8AddEntryEh4Code.exit.i233.i:           ; preds = %vector.body120, %scalar.ph114
  %indvars.iv.next326.i = add nuw nsw i64 %indvars.iv325.i, 1 ; 3 uses
  %indvars18 = trunc i64 %indvars.iv.next326.i to i32 ; 3 uses
  %i.em = lshr i32 %indvars18, 30
  %i.en = shl nuw nsw i32 %indvars18, 1
  %i.eo = or disjoint i32 %i.em, %i.en
  %i.ep = lshr i32 %indvars18, 6
  %i.eq = add nuw nsw i32 %i.ep, 8
  %exitcond330.not.i = icmp eq i64 %indvars.iv.next326.i, 64
  br i1 %exitcond330.not.i, label %.lr.ph.i29.i243.i, label %.lr.ph.i.i225.i, !llvm.loop !1493

.lr.ph.i29.i243.i:                                ; preds = %_ZN6CTable8AddEntryEh4Code.exit.i233.i, %.lr.ph.i29.i243.i
  %indvars.iv331.i = phi i64 [ %indvars.iv.next332.i.3, %.lr.ph.i29.i243.i ], [ 4294967295, %_ZN6CTable8AddEntryEh4Code.exit.i233.i ] ; 5 uses
  %i.er = phi i32 [ %i.fl, %.lr.ph.i29.i243.i ], [ 1, %_ZN6CTable8AddEntryEh4Code.exit.i233.i ]
  %.sroa.0.0.insert.insert.i241.i = or disjoint i64 %indvars.iv331.i, 34359738368
  %i.es = zext nneg i32 %i.er to i64
  %i.et = getelementptr [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @decodingTables, i64 14336), i64 %i.es
  %invariant.gep.i33.i246.i = getelementptr i8, ptr %i.et, i64 1024
  store i64 %.sroa.0.0.insert.insert.i241.i, ptr %invariant.gep.i33.i246.i, align 8, !tbaa !60, !alias.scope !1526
  %indvars.iv.next332.i = add nsw i64 %indvars.iv331.i, -1 ; 2 uses
  %indvars20 = trunc i64 %indvars.iv.next332.i to i32 ; 2 uses
  %i.eu = ashr i32 %indvars20, 30
  %i.ev = shl nsw i32 %indvars20, 1
  %i.ew = xor i32 %i.eu, %i.ev
  %.sroa.0.0.insert.insert.i241.i.1 = or disjoint i64 %indvars.iv.next332.i, 34359738368
  %i.ex = zext nneg i32 %i.ew to i64
  %i.ey = getelementptr [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @decodingTables, i64 14336), i64 %i.ex
  %invariant.gep.i33.i246.i.1 = getelementptr i8, ptr %i.ey, i64 1024
  store i64 %.sroa.0.0.insert.insert.i241.i.1, ptr %invariant.gep.i33.i246.i.1, align 8, !tbaa !60, !alias.scope !1526
  %indvars.iv.next332.i.1 = add nsw i64 %indvars.iv331.i, -2 ; 2 uses
  %indvars20.1 = trunc i64 %indvars.iv.next332.i.1 to i32 ; 2 uses
  %i.ez = ashr i32 %indvars20.1, 30
  %i.fa = shl nsw i32 %indvars20.1, 1
  %i.fb = xor i32 %i.ez, %i.fa
  %.sroa.0.0.insert.insert.i241.i.2 = or disjoint i64 %indvars.iv.next332.i.1, 34359738368
  %i.fc = zext nneg i32 %i.fb to i64
  %i.fd = getelementptr [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @decodingTables, i64 14336), i64 %i.fc
  %invariant.gep.i33.i246.i.2 = getelementptr i8, ptr %i.fd, i64 1024
  store i64 %.sroa.0.0.insert.insert.i241.i.2, ptr %invariant.gep.i33.i246.i.2, align 8, !tbaa !60, !alias.scope !1526
  %indvars.iv.next332.i.2 = add nsw i64 %indvars.iv331.i, -3 ; 2 uses
  %indvars20.2 = trunc i64 %indvars.iv.next332.i.2 to i32 ; 2 uses
  %i.fe = ashr i32 %indvars20.2, 30
  %i.ff = shl nsw i32 %indvars20.2, 1
  %i.fg = xor i32 %i.fe, %i.ff
  %.sroa.0.0.insert.insert.i241.i.3 = or disjoint i64 %indvars.iv.next332.i.2, 34359738368
  %i.fh = zext nneg i32 %i.fg to i64
  %i.fi = getelementptr [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @decodingTables, i64 14336), i64 %i.fh
  %invariant.gep.i33.i246.i.3 = getelementptr i8, ptr %i.fi, i64 1024
  store i64 %.sroa.0.0.insert.insert.i241.i.3, ptr %invariant.gep.i33.i246.i.3, align 8, !tbaa !60, !alias.scope !1526
  %indvars.iv.next332.i.3 = add nsw i64 %indvars.iv331.i, -4 ; 2 uses
  %indvars20.3 = trunc i64 %indvars.iv.next332.i.3 to i32 ; 2 uses
  %i.fj = ashr i32 %indvars20.3, 30
  %i.fk = shl nsw i32 %indvars20.3, 1
  %i.fl = xor i32 %i.fj, %i.fk                    ; 2 uses
  %i.fm = icmp samesign ult i32 %i.fl, 128
  br i1 %i.fm, label %.lr.ph.i29.i243.i, label %__cxx_global_var_init.exit, !llvm.loop !1496

__cxx_global_var_init.exit:                       ; preds = %.lr.ph.i29.i243.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16384) getelementptr inbounds nuw (i8, ptr @decodingTables, i64 16384), i8 0, i64 16384, i1 false)
  tail call void @_Z18CreateQLutLosslessi(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::vector") align 8 @rgquant8Ll, i32 noundef 8)
  %i.fn = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3__16vectorIaNS_9allocatorIaEEED2B8ne180100Ev, ptr nonnull @rgquant8Ll, ptr nonnull @__dso_handle) #23 ; 0 uses
  tail call void @_Z18CreateQLutLosslessi(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::vector") align 8 @rgquant10Ll, i32 noundef 10)
  %i.fo = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3__16vectorIaNS_9allocatorIaEEED2B8ne180100Ev, ptr nonnull @rgquant10Ll, ptr nonnull @__dso_handle) #23 ; 0 uses
  tail call void @_Z18CreateQLutLosslessi(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::vector") align 8 @rgquant12Ll, i32 noundef 12)
  %i.fp = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3__16vectorIaNS_9allocatorIaEEED2B8ne180100Ev, ptr nonnull @rgquant12Ll, ptr nonnull @__dso_handle) #23 ; 0 uses
  tail call void @_Z18CreateQLutLosslessi(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::vector") align 8 @rgquant16Ll, i32 noundef 16)
  %i.fq = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3__16vectorIaNS_9allocatorIaEEED2B8ne180100Ev, ptr nonnull @rgquant16Ll, ptr nonnull @__dso_handle) #23 ; 0 uses
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold noreturn }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #17 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nounwind }
attributes #24 = { noreturn }
attributes #25 = { builtin allocsize(0) }
attributes #26 = { builtin nounwind }
attributes #27 = { noreturn nounwind }

!llvm.module.flags = !{!28, !29, !30}
!llvm.ident = !{!31}
!llvm.errno.tbaa = !{!36}

!0 = distinct !{!0, !52}
!1 = distinct !{null, null, null}
!2 = distinct !{ptr @_ZN15DecoderStrategyD2Ev, null, null, null}
!3 = distinct !{null, null, null}
!4 = distinct !{!4, !52}
!5 = distinct !{null, null, null}
!6 = distinct !{null}
!7 = distinct !{null}
!8 = distinct !{!8, !52}
!9 = distinct !{!9, !52}
!10 = distinct !{null, null}
!11 = distinct !{null, null}
!12 = distinct !{!12, !52}
!13 = distinct !{!13, !52}
!14 = distinct !{!14, !52}
!15 = distinct !{null}
!16 = distinct !{!16, !52}
!17 = distinct !{!17, !52}
!18 = distinct !{!18, !52}
!19 = distinct !{ptr @_ZN15EncoderStrategyD2Ev, null, null, null}
!20 = distinct !{ptr @_ZN15EncoderStrategyD2Ev, null, null, null}
!21 = distinct !{null, null, null}
!22 = distinct !{null}
!23 = distinct !{!23, !52}
!24 = distinct !{!24, !52}
!25 = distinct !{!25, !52}
!26 = distinct !{!26, !52}
!27 = distinct !{!27, !52}
!28 = !{i32 8, !"PIC Level", i32 2}
!29 = !{i32 7, !"PIE Level", i32 2}
!30 = !{i32 7, !"uwtable", i32 2}
!31 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!32 = !{!"Simple C++ TBAA"}
!33 = !{!"omnipotent char", !32, i64 0}
!34 = !{!"int", !33, i64 0}
!35 = !{!"__libc_errno", !34, i64 0}
!36 = !{!35, !34, i64 0}
!37 = !{!"branch_weights", i32 1, i32 1048575}
!38 = !{!"_ZTS19JlsCustomParameters", !34, i64 0, !34, i64 4, !34, i64 8, !34, i64 12, !34, i64 16}
!39 = !{!38, !34, i64 12}
!40 = !{!38, !34, i64 8}
!41 = !{!38, !34, i64 4}
!42 = !{!38, !34, i64 0}
!43 = !{!"any pointer", !33, i64 0}
!44 = !{!"p1 omnipotent char", !43, i64 0}
!45 = !{!"_ZTSNSt3__122__compressed_pair_elemIPaLi0ELb0EEE", !44, i64 0}
!46 = !{!"_ZTSNSt3__117__compressed_pairIPaNS_9allocatorIaEEEE", !45, i64 0}
!47 = !{!"_ZTSNSt3__16vectorIaNS_9allocatorIaEEEE", !44, i64 0, !44, i64 8, !46, i64 16}
!48 = !{!47, !44, i64 0}
!49 = !{!47, !44, i64 8}
!50 = !{!44, !44, i64 0}
!51 = !{!33, !33, i64 0}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!38, !34, i64 16}
!54 = !{!"_ZTSN6charls14InterleaveModeE", !33, i64 0}
!55 = !{!"_ZTSN6charls19ColorTransformationE", !33, i64 0}
!56 = !{!"_ZTS14JfifParameters", !34, i64 0, !34, i64 4, !34, i64 8, !34, i64 12, !34, i64 16, !34, i64 20, !43, i64 24}
!57 = !{!"_ZTS13JlsParameters", !34, i64 0, !34, i64 4, !34, i64 8, !34, i64 12, !34, i64 16, !34, i64 20, !54, i64 24, !55, i64 28, !33, i64 32, !38, i64 36, !56, i64 56}
!58 = !{!57, !34, i64 8}
!59 = !{!57, !34, i64 20}
!60 = !{!34, !34, i64 0}
!61 = !{!54, !54, i64 0}
!62 = !{!55, !55, i64 0}
!63 = !{!43, !43, i64 0}
!64 = !{i64 0, i64 4, !60, i64 4, i64 4, !60, i64 8, i64 4, !60, i64 12, i64 4, !60, i64 16, i64 4, !60, i64 20, i64 4, !60, i64 24, i64 4, !61, i64 28, i64 4, !62, i64 32, i64 1, !51, i64 36, i64 4, !60, i64 40, i64 4, !60, i64 44, i64 4, !60, i64 48, i64 4, !60, i64 52, i64 4, !60, i64 56, i64 4, !60, i64 60, i64 4, !60, i64 64, i64 4, !60, i64 68, i64 4, !60, i64 72, i64 4, !60, i64 76, i64 4, !60, i64 80, i64 8, !63}
!65 = !{!"vtable pointer", !32, i64 0}
!66 = !{!65, !65, i64 0}
!67 = !{!"_ZTS14DefaultTraitsTIhhE", !34, i64 0, !34, i64 4, !34, i64 8, !34, i64 12, !34, i64 16, !34, i64 20, !34, i64 24}
!68 = !{!67, !34, i64 0}
!69 = !{!67, !34, i64 4}
!70 = !{!67, !34, i64 8}
!71 = !{!67, !34, i64 12}
!72 = !{!67, !34, i64 16}
!73 = !{!67, !34, i64 20}
!74 = !{!67, !34, i64 24}
!75 = !{!57, !34, i64 0}
!76 = !{!"p1 _ZTS11ProcessLine", !43, i64 0}
!77 = !{!"_ZTSNSt3__122__compressed_pair_elemIP11ProcessLineLi0ELb0EEE", !76, i64 0}
!78 = !{!"_ZTSNSt3__117__compressed_pairIP11ProcessLineNS_14default_deleteIS1_EEEE", !77, i64 0}
!79 = !{!"_ZTSNSt3__110unique_ptrI11ProcessLineNS_14default_deleteIS1_EEEE", !78, i64 0}
!80 = !{!"_ZTSNSt3__122__compressed_pair_elemIPhLi0ELb0EEE", !44, i64 0}
!81 = !{!"_ZTSNSt3__117__compressed_pairIPhNS_9allocatorIhEEEE", !80, i64 0}
!82 = !{!"_ZTSNSt3__16vectorIhNS_9allocatorIhEEEE", !44, i64 0, !44, i64 8, !81, i64 16}
!83 = !{!"p1 _ZTSNSt3__115basic_streambufIcNS_11char_traitsIcEEEE", !43, i64 0}
!84 = !{!"long", !33, i64 0}
!85 = !{!"_ZTS15DecoderStrategy", !57, i64 8, !79, i64 96, !82, i64 104, !83, i64 128, !84, i64 136, !34, i64 144, !44, i64 152, !44, i64 160, !44, i64 168}
!86 = !{!"_ZTS7JlsRect", !34, i64 0, !34, i64 4, !34, i64 8, !34, i64 12}
!87 = !{!"bool", !33, i64 0}
!88 = !{!"_ZTS8JlsCodecI14DefaultTraitsTIhhE15DecoderStrategyE", !85, i64 0, !67, i64 176, !86, i64 204, !34, i64 220, !34, i64 224, !34, i64 228, !34, i64 232, !33, i64 236, !33, i64 4616, !34, i64 4640, !44, i64 4648, !44, i64 4656, !44, i64 4664, !47, i64 4672, !87, i64 4696}
!89 = !{!88, !34, i64 220}
!90 = !{!88, !34, i64 224}
!91 = !{!88, !34, i64 228}
!92 = !{!88, !34, i64 232}
!93 = !{!"short", !33, i64 0}
!94 = !{!"_ZTS10JlsContext", !34, i64 0, !34, i64 4, !93, i64 8, !93, i64 10}
!95 = !{!94, !34, i64 0}
!96 = !{!94, !34, i64 4}
!97 = !{!94, !93, i64 8}
!98 = !{!94, !93, i64 10}
!99 = !{!88, !34, i64 4640}
!100 = !{!57, !54, i64 24}
!101 = !{!57, !34, i64 16}
!102 = !{!"p1 _ZTS15DecoderStrategy", !43, i64 0}
!103 = !{!102, !102, i64 0}
!104 = !{!"_ZTS15LosslessTraitsTI7TripletIhELi8EE"}
!105 = !{!"p1 _ZTS7TripletIhE", !43, i64 0}
!106 = !{!"_ZTS8JlsCodecI15LosslessTraitsTI7TripletIhELi8EE15DecoderStrategyE", !85, i64 0, !104, i64 176, !86, i64 180, !34, i64 196, !34, i64 200, !34, i64 204, !34, i64 208, !33, i64 212, !33, i64 4592, !34, i64 4616, !105, i64 4624, !105, i64 4632, !44, i64 4640, !47, i64 4648, !87, i64 4672}
!107 = !{!106, !34, i64 196}
!108 = !{!106, !34, i64 200}
!109 = !{!106, !34, i64 204}
!110 = !{!106, !34, i64 208}
!111 = !{!106, !34, i64 4616}
!112 = !{!"_ZTS15LosslessTraitsTIhLi8EE"}
!113 = !{!"_ZTS8JlsCodecI15LosslessTraitsTIhLi8EE15DecoderStrategyE", !85, i64 0, !112, i64 176, !86, i64 180, !34, i64 196, !34, i64 200, !34, i64 204, !34, i64 208, !33, i64 212, !33, i64 4592, !34, i64 4616, !44, i64 4624, !44, i64 4632, !44, i64 4640, !47, i64 4648, !87, i64 4672}
!114 = !{!113, !34, i64 196}
!115 = !{!113, !34, i64 200}
!116 = !{!113, !34, i64 204}
!117 = !{!113, !34, i64 208}
!118 = !{!113, !34, i64 4616}
!119 = !{!"_ZTS15LosslessTraitsTItLi12EE"}
!120 = !{!"p1 short", !43, i64 0}
!121 = !{!"_ZTS8JlsCodecI15LosslessTraitsTItLi12EE15DecoderStrategyE", !85, i64 0, !119, i64 176, !86, i64 180, !34, i64 196, !34, i64 200, !34, i64 204, !34, i64 208, !33, i64 212, !33, i64 4592, !34, i64 4616, !120, i64 4624, !120, i64 4632, !44, i64 4640, !47, i64 4648, !87, i64 4672}
!122 = !{!121, !34, i64 196}
!123 = !{!121, !34, i64 200}
!124 = !{!121, !34, i64 204}
!125 = !{!121, !34, i64 208}
!126 = !{!121, !34, i64 4616}
!127 = !{!"_ZTS15LosslessTraitsTItLi16EE"}
!128 = !{!"_ZTS8JlsCodecI15LosslessTraitsTItLi16EE15DecoderStrategyE", !85, i64 0, !127, i64 176, !86, i64 180, !34, i64 196, !34, i64 200, !34, i64 204, !34, i64 208, !33, i64 212, !33, i64 4592, !34, i64 4616, !120, i64 4624, !120, i64 4632, !44, i64 4640, !47, i64 4648, !87, i64 4672}
!129 = !{!128, !34, i64 196}
!130 = !{!128, !34, i64 200}
!131 = !{!128, !34, i64 204}
!132 = !{!128, !34, i64 208}
!133 = !{!128, !34, i64 4616}
!134 = !{!"_ZTS14DefaultTraitsTIh7TripletIhEE", !34, i64 0, !34, i64 4, !34, i64 8, !34, i64 12, !34, i64 16, !34, i64 20, !34, i64 24}
!135 = !{!134, !34, i64 0}
!136 = !{!134, !34, i64 4}
!137 = !{!134, !34, i64 8}
!138 = !{!134, !34, i64 12}
!139 = !{!134, !34, i64 16}
!140 = !{!134, !34, i64 20}
!141 = !{!134, !34, i64 24}
!142 = !{!"_ZTS8JlsCodecI14DefaultTraitsTIh7TripletIhEE15DecoderStrategyE", !85, i64 0, !134, i64 176, !86, i64 204, !34, i64 220, !34, i64 224, !34, i64 228, !34, i64 232, !33, i64 236, !33, i64 4616, !34, i64 4640, !105, i64 4648, !105, i64 4656, !44, i64 4664, !47, i64 4672, !87, i64 4696}
!143 = !{!142, !34, i64 220}
!144 = !{!142, !34, i64 224}
!145 = !{!142, !34, i64 228}
!146 = !{!142, !34, i64 232}
!147 = !{!142, !34, i64 4640}
!148 = !{!"_ZTS14DefaultTraitsTIt7TripletItEE", !34, i64 0, !34, i64 4, !34, i64 8, !34, i64 12, !34, i64 16, !34, i64 20, !34, i64 24}
!149 = !{!148, !34, i64 0}
!150 = !{!148, !34, i64 4}
!151 = !{!148, !34, i64 8}
!152 = !{!148, !34, i64 12}
!153 = !{!148, !34, i64 16}
!154 = !{!148, !34, i64 20}
!155 = !{!148, !34, i64 24}
!156 = !{!"p1 _ZTS7TripletItE", !43, i64 0}
!157 = !{!"_ZTS8JlsCodecI14DefaultTraitsTIt7TripletItEE15DecoderStrategyE", !85, i64 0, !148, i64 176, !86, i64 204, !34, i64 220, !34, i64 224, !34, i64 228, !34, i64 232, !33, i64 236, !33, i64 4616, !34, i64 4640, !156, i64 4648, !156, i64 4656, !44, i64 4664, !47, i64 4672, !87, i64 4696}
!158 = !{!157, !34, i64 220}
!159 = !{!157, !34, i64 224}
!160 = !{!157, !34, i64 228}
!161 = !{!157, !34, i64 232}
end_hunk_1
