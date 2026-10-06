Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ImfCompositeDeepScanLine?download=true
inline.NumInlined: 1162
inline.NumDeleted: 652
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN7Imf_3_421CompositeDeepScanLine10readPixelsEii:bb.a
  %i.dj = load ptr, ptr %i.dg, align 8, !tbaa !88 ; 2 uses
  %.not351 = icmp eq ptr %i.di, %i.dj
  br i1 %.not351, label %._crit_edge, label %.lr.ph305.preheader

.lr.ph305.preheader:                              ; preds = %.preheader284
  %i.dk = getelementptr [104 x i8], ptr %i.v, i64 %.0122.lcssa
  br label %.lr.ph305

.lr.ph302:                                        ; preds = %.preheader285, %bb.o
  %i.dl = phi ptr [ %i.dx, %bb.o ], [ %i.cx, %.preheader285 ]
  %.0122301 = phi i64 [ %i.dt, %bb.o ], [ 0, %.preheader285 ] ; 4 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %.0122301
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !100
  %i.do = getelementptr inbounds nuw [104 x i8], ptr %i.v, i64 %.0122301
  invoke void @_ZN7Imf_3_421DeepScanLineInputFile14setFrameBufferERKNS_15DeepFrameBufferE(ptr noundef nonnull align 8 dereferenceable(32) %i.dn, ptr noundef nonnull align 8 dereferenceable(104) %i.do)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %.lr.ph302
  %i.dp = load ptr, ptr %i.a, align 8, !tbaa !69
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !90
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %.0122301
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !100
  invoke void @_ZN7Imf_3_421DeepScanLineInputFile21readPixelSampleCountsEii(ptr noundef nonnull align 8 dereferenceable(32) %i.ds, i32 noundef %1, i32 noundef %2)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dt = add nuw i64 %.0122301, 1                ; 3 uses
  %i.du = load ptr, ptr %i.a, align 8, !tbaa !69  ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !98
  %i.dx = load ptr, ptr %i.du, align 8, !tbaa !90 ; 2 uses
  %i.dy = ptrtoint ptr %i.dw to i64
  %i.dz = ptrtoint ptr %i.dx to i64
  %i.ea = sub i64 %i.dy, %i.dz
  %i.eb = ashr exact i64 %i.ea, 3
  %i.ec = icmp ult i64 %i.dt, %i.eb
  br i1 %i.ec, label %.lr.ph302, label %.preheader284, !llvm.loop !183

bb.p:                                             ; preds = %bb.n, %.lr.ph302
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

._crit_edge:                                      ; preds = %bb.t, %.preheader284
  %.lcssa292 = phi ptr [ %i.df, %.preheader284 ], [ %i.fp, %bb.t ] ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.lcssa292, i64 152
  %i.ef = getelementptr inbounds nuw i8, ptr %.lcssa292, i64 160
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !102, !noalias !204 ; 2 uses
  %i.eh = load i32, ptr %i.ee, align 4, !tbaa !101, !noalias !204 ; 2 uses
  %i.ei = icmp slt i32 %i.eg, %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %.lcssa292, i64 164
  %i.ek = load i32, ptr %i.ej, align 4, !noalias !204
  %i.el = getelementptr inbounds nuw i8, ptr %.lcssa292, i64 156
  %i.em = load i32, ptr %i.el, align 4, !noalias !204
  %i.en = icmp slt i32 %i.ek, %i.em
  %i.eo = select i1 %i.ei, i1 true, i1 %i.en
  %i.ep = add i32 %i.eg, 1
  %i.eq = sub i32 %i.ep, %i.eh
  %i.er = sext i32 %i.eq to i64
  %i.es = select i1 %i.eo, i64 1, i64 %i.er
  %reass.sub = sub i32 %2, %1
  %i.et = add i32 %reass.sub, 1
  %i.eu = sext i32 %i.et to i64
  %i.ev = mul nsw i64 %i.es, %i.eu                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.ew = icmp ugt i64 %i.ev, 2305843009213693951
  br i1 %i.ew, label %bb.q, label %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i

bb.q:                                             ; preds = %._crit_edge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #29
          to label %.noexc192 unwind label %bb.x

.noexc192:                                        ; preds = %bb.q
  unreachable

_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %._crit_edge
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %.not.i.i.i.i189 = icmp eq i64 %i.ev, 0         ; 2 uses
  br i1 %.not.i.i.i.i189, label %bb.w, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ex = shl nuw nsw i64 %i.ev, 2                ; 2 uses
  %i.ey = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ex) #25
          to label %.noexc193 unwind label %bb.x  ; 4 uses

.noexc193:                                        ; preds = %bb.r
  store ptr %i.ey, ptr %6, align 8, !tbaa !113
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.ev
  %i.fa = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.ez, ptr %i.fa, align 8, !tbaa !137
  store i32 0, ptr %i.ey, align 4, !tbaa !64
  %i.fb = getelementptr i8, ptr %i.ey, i64 4      ; 3 uses
  %i.fc = add nsw i64 %i.ev, -1                   ; 3 uses
  %i.fd = icmp eq i64 %i.fc, 0                    ; 2 uses
  br i1 %i.fd, label %bb.v, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc193
  %.idx.i.i.i.i.i.i.i190 = shl nuw nsw i64 %i.fc, 2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.fb, i8 0, i64 %.idx.i.i.i.i.i.i.i190, i1 false), !tbaa !64
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 %.idx.i.i.i.i.i.i.i190
  br label %bb.v

.lr.ph305:                                        ; preds = %.lr.ph305.preheader, %bb.t
  %i.ff = phi ptr [ %i.ft, %bb.t ], [ %i.dj, %.lr.ph305.preheader ]
  %.0121304 = phi i64 [ %i.fo, %bb.t ], [ 0, %.lr.ph305.preheader ] ; 4 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %.0121304
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !94
  %i.fi = getelementptr [104 x i8], ptr %i.dk, i64 %.0121304
  invoke void @_ZN7Imf_3_421DeepScanLineInputPart14setFrameBufferERKNS_15DeepFrameBufferE(ptr noundef nonnull align 8 dereferenceable(8) %i.fh, ptr noundef nonnull align 8 dereferenceable(104) %i.fi)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %.lr.ph305
  %i.fj = load ptr, ptr %i.a, align 8, !tbaa !69
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !88
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %.0121304
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !94
  invoke void @_ZN7Imf_3_421DeepScanLineInputPart21readPixelSampleCountsEii(ptr noundef nonnull align 8 dereferenceable(8) %i.fn, i32 noundef %1, i32 noundef %2)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.fo = add nuw i64 %.0121304, 1                ; 2 uses
  %i.fp = load ptr, ptr %i.a, align 8, !tbaa !69  ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 32
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !92
  %i.ft = load ptr, ptr %i.fq, align 8, !tbaa !88 ; 2 uses
  %i.fu = ptrtoint ptr %i.fs to i64
  %i.fv = ptrtoint ptr %i.ft to i64
  %i.fw = sub i64 %i.fu, %i.fv
  %i.fx = ashr exact i64 %i.fw, 3
  %i.fy = icmp ult i64 %i.fo, %i.fx
  br i1 %i.fy, label %.lr.ph305, label %._crit_edge, !llvm.loop !186

bb.u:                                             ; preds = %bb.s, %.lr.ph305
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.v:                                             ; preds = %.noexc193, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %.0.i.i.i.i.i191.ph = phi ptr [ %i.fe, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.fb, %.noexc193 ]
  %i.ga = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %.0.i.i.i.i.i191.ph, ptr %i.ga, align 8, !tbaa !112
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.gb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ex) #25
          to label %.noexc201 unwind label %bb.y  ; 5 uses

.noexc201:                                        ; preds = %bb.v
  store ptr %i.gb, ptr %7, align 8, !tbaa !113
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %i.ev
  %i.gd = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.gc, ptr %i.gd, align 8, !tbaa !137
  store i32 0, ptr %i.gb, align 4, !tbaa !64
  %i.ge = getelementptr i8, ptr %i.gb, i64 4      ; 3 uses
  br i1 %i.fd, label %.lr.ph314, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i196

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i196: ; preds = %.noexc201
  %.idx.i.i.i.i.i.i.i197 = shl nuw nsw i64 %i.fc, 2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ge, i8 0, i64 %.idx.i.i.i.i.i.i.i197, i1 false), !tbaa !64
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 %.idx.i.i.i.i.i.i.i197
  br label %.lr.ph314

bb.w:                                             ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  br label %._crit_edge315

.lr.ph314:                                        ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i196, %.noexc201
  %.0.i.i.i.i.i198.ph = phi ptr [ %i.gf, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i196 ], [ %i.ge, %.noexc201 ]
  %i.gg = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %.0.i.i.i.i.i198.ph, ptr %i.gg, align 8, !tbaa !112
  %i.gh = load ptr, ptr %6, align 8, !tbaa !113
  br label %bb.z

._crit_edge315:                                   ; preds = %._crit_edge310, %bb.w
  %.0120.lcssa = phi i64 [ 0, %bb.w ], [ %i.gq, %._crit_edge310 ] ; 19 uses
  %i.gi = load i64, ptr @_ZN7Imf_3_412_GLOBAL__N_118maximumSampleCountE, align 8, !tbaa !96 ; 2 uses
  %i.gj = icmp sgt i64 %i.gi, 0
  %i.gk = icmp sgt i64 %.0120.lcssa, %i.gi
  %or.cond = select i1 %i.gj, i1 %i.gk, i1 false
  br i1 %or.cond, label %bb.ah, label %bb.al

bb.x:                                             ; preds = %bb.r, %bb.q
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit253

bb.y:                                             ; preds = %bb.v
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit251

bb.z:                                             ; preds = %.lr.ph314, %._crit_edge310
  %.0119312 = phi i64 [ 0, %.lr.ph314 ], [ %i.gr, %._crit_edge310 ] ; 4 uses
  %.0120311 = phi i64 [ 0, %.lr.ph314 ], [ %i.gq, %._crit_edge310 ]
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %.0119312 ; 4 uses
  store i32 0, ptr %i.gn, align 4, !tbaa !64
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %.0119312 ; 3 uses
  store i32 0, ptr %i.go, align 4, !tbaa !64
  %.pre388 = load i32, ptr %i.gn, align 4, !tbaa !64 ; 2 uses
  br i1 %.not.i.i.i.i, label %._crit_edge310, label %.lr.ph309

._crit_edge310:                                   ; preds = %bb.ag, %bb.z
  %11 = phi i32 [ %.pre388, %bb.z ], [ %13, %bb.ag ]
  %i.gp = zext i32 %11 to i64
  %i.gq = add nuw nsw i64 %.0120311, %i.gp        ; 2 uses
  %i.gr = add nuw i64 %.0119312, 1                ; 2 uses
  %exitcond371.not = icmp eq i64 %i.gr, %i.ev
  br i1 %exitcond371.not, label %._crit_edge315, label %bb.z, !llvm.loop !187

.lr.ph309:                                        ; preds = %bb.z, %bb.ag
  %12 = phi i32 [ %13, %bb.ag ], [ %.pre388, %bb.z ] ; 2 uses
  %.0118307 = phi i64 [ %i.hf, %bb.ag ], [ 0, %bb.z ] ; 2 uses
  %i.gs = getelementptr inbounds nuw [24 x i8], ptr %i.au, i64 %.0118307
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !113
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %.0119312 ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !64 ; 2 uses
  %i.gw = xor i32 %i.gv, -1
  %i.gx = icmp ugt i32 %12, %i.gw
  br i1 %i.gx, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %.lr.ph309
  %i.gy = tail call ptr @__cxa_allocate_exception(i64 72) #26 ; 3 uses
  invoke void @_ZN7Iex_3_46ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.gy, ptr noundef nonnull @.str.8)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  invoke void @__cxa_throw(ptr nonnull %i.gy, ptr nonnull @_ZTIN7Iex_3_46ArgExcE, ptr nonnull @_ZN7Iex_3_46ArgExcD1Ev) #29
          to label %bb.cu unwind label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.gz = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.gy) #26
  br label %bb.cn

bb.ad:                                            ; preds = %bb.ab
  %i.ha = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.ae:                                            ; preds = %.lr.ph309
  %i.hb = add i32 %i.gv, %12                      ; 2 uses
  store i32 %i.hb, ptr %i.gn, align 4, !tbaa !64
  %i.hc = load i32, ptr %i.gu, align 4, !tbaa !64
  %.not159 = icmp eq i32 %i.hc, 0
  br i1 %.not159, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hd = load i32, ptr %i.go, align 4, !tbaa !64
  %i.he = add i32 %i.hd, 1
  store i32 %i.he, ptr %i.go, align 4, !tbaa !64
  %.pre386 = load i32, ptr %i.gn, align 4, !tbaa !64
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %13 = phi i32 [ %i.hb, %bb.ae ], [ %.pre386, %bb.af ] ; 2 uses
  %i.hf = add nuw i64 %.0118307, 1                ; 2 uses
  %exitcond370.not = icmp eq i64 %i.hf, %.fr357
  br i1 %exitcond370.not, label %._crit_edge310, label %.lr.ph309, !llvm.loop !188

bb.ah:                                            ; preds = %._crit_edge315
  %i.hg = tail call ptr @__cxa_allocate_exception(i64 72) #26 ; 3 uses
  invoke void @_ZN7Iex_3_46ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.hg, ptr noundef nonnull @.str.9)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  invoke void @__cxa_throw(ptr nonnull %i.hg, ptr nonnull @_ZTIN7Iex_3_46ArgExcE, ptr nonnull @_ZN7Iex_3_46ArgExcD1Ev) #29
          to label %bb.cu unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.hh = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.hg) #26
  br label %bb.cn

bb.ak:                                            ; preds = %bb.ai
  %i.hi = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.al:                                            ; preds = %._crit_edge315
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.hj = load ptr, ptr %i.a, align 8, !tbaa !69  ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 176
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 184
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !73 ; 2 uses
  %i.hn = load ptr, ptr %i.hk, align 8, !tbaa !72 ; 2 uses
  %i.ho = ptrtoint ptr %i.hm to i64
  %i.hp = ptrtoint ptr %i.hn to i64
  %i.hq = sub i64 %i.ho, %i.hp
  %i.hr = ashr exact i64 %i.hq, 5                 ; 3 uses
  %i.hs = icmp ugt i64 %i.hr, 384307168202282325
  br i1 %i.hs, label %bb.am, label %_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.am:                                            ; preds = %bb.al
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #29
          to label %.noexc208 unwind label %bb.av

.noexc208:                                        ; preds = %bb.am
  unreachable

_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.al
  %.not.i.i.i.i203 = icmp eq ptr %i.hm, %i.hn
  br i1 %.not.i.i.i.i203, label %.preheader283.thread, label %.lr.ph.preheader.i.i.i.i.i204

.preheader283.thread:                             ; preds = %_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.ht = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  br label %.preheader281

.lr.ph.preheader.i.i.i.i.i204:                    ; preds = %_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.hu = mul nuw nsw i64 %i.hr, 24               ; 3 uses
  %i.hv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hu) #25
          to label %bb.an unwind label %bb.av     ; 13 uses

bb.an:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i204
  store ptr %i.hv, ptr %8, align 8, !tbaa !81
  %i.hw = getelementptr inbounds nuw [24 x i8], ptr %i.hv, i64 %i.hr
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.hv, i8 0, i64 %i.hu, i1 false)
  %scevgep.i.i.i.i.i205 = getelementptr i8, ptr %i.hv, i64 %i.hu
  %.pre386.a = load ptr, ptr %i.a, align 8, !tbaa !69 ; 5 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre386.a, i64 184
  %.pre387 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !73 ; 4 uses
  %.phi.trans.insert388 = getelementptr inbounds nuw i8, ptr %.pre386.a, i64 176
  %.pre389 = load ptr, ptr %.phi.trans.insert388, align 8, !tbaa !72 ; 4 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.hw, ptr %i.hy, align 8, !tbaa !87
  store ptr %scevgep.i.i.i.i.i205, ptr %i.hx, align 8, !tbaa !82
  %.not354 = icmp eq ptr %.pre387, %.pre389
  br i1 %.not354, label %.lr.ph331.preheader, label %.split.peel

.lr.ph331.preheader:                              ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit, %_ZNSt6vectorIfSaIfEE6resizeEm.exit.peel, %_ZNSt6vectorIfSaIfEE6resizeEm.exit.peel380, %bb.an
  br label %.lr.ph331

.split.peel:                                      ; preds = %bb.an
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hv, i64 8 ; 2 uses
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !138 ; 2 uses
  %i.ib = load ptr, ptr %i.hv, align 8, !tbaa !85 ; 2 uses
  %i.ic = ptrtoint ptr %i.ia to i64
  %i.id = ptrtoint ptr %i.ib to i64
  %i.ie = sub i64 %i.ic, %i.id
  %i.if = ashr exact i64 %i.ie, 2                 ; 3 uses
  %i.ig = icmp ugt i64 %.0120.lcssa, %i.if
  br i1 %i.ig, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %.split.peel
  %i.ih = icmp ult i64 %.0120.lcssa, %i.if
  br i1 %i.ih, label %bb.ap, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.peel

bb.ap:                                            ; preds = %bb.ao
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %.0120.lcssa ; 2 uses
  %.not.i.i.peel = icmp eq ptr %i.ia, %i.ii
  br i1 %.not.i.i.peel, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.peel, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.peel

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.peel:   ; preds = %bb.ap
  store ptr %i.ii, ptr %i.hz, align 8, !tbaa !138
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.peel

bb.aq:                                            ; preds = %.split.peel
  %i.ij = sub nuw nsw i64 %.0120.lcssa, %i.if
  invoke void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.hv, i64 noundef %i.ij)
          to label %._ZNSt6vectorIfSaIfEE6resizeEm.exit.peel_crit_edge390 unwind label %.loopexit.split-lp

._ZNSt6vectorIfSaIfEE6resizeEm.exit.peel_crit_edge390: ; preds = %bb.aq
  %.pre391 = load ptr, ptr %i.a, align 8, !tbaa !69 ; 3 uses
  %.phi.trans.insert392 = getelementptr inbounds nuw i8, ptr %.pre391, i64 184
  %.pre393 = load ptr, ptr %.phi.trans.insert392, align 8, !tbaa !73
  %.phi.trans.insert394 = getelementptr inbounds nuw i8, ptr %.pre391, i64 176
  %.pre395 = load ptr, ptr %.phi.trans.insert394, align 8, !tbaa !72
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.peel

_ZNSt6vectorIfSaIfEE6resizeEm.exit.peel:          ; preds = %._ZNSt6vectorIfSaIfEE6resizeEm.exit.peel_crit_edge390, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.peel, %bb.ap, %bb.ao
  %i.ik = phi ptr [ %.pre395, %._ZNSt6vectorIfSaIfEE6resizeEm.exit.peel_crit_edge390 ], [ %.pre389, %bb.ao ], [ %.pre389, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.peel ], [ %.pre389, %bb.ap ]
  %i.il = phi ptr [ %.pre393, %._ZNSt6vectorIfSaIfEE6resizeEm.exit.peel_crit_edge390 ], [ %.pre387, %bb.ao ], [ %.pre387, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.peel ], [ %.pre387, %bb.ap ]
  %i.im = phi ptr [ %.pre391, %._ZNSt6vectorIfSaIfEE6resizeEm.exit.peel_crit_edge390 ], [ %.pre386.a, %bb.ao ], [ %.pre386.a, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.peel ], [ %.pre386.a, %bb.ap ] ; 5 uses
  %i.in = ptrtoint ptr %i.il to i64
  %i.io = ptrtoint ptr %i.ik to i64
  %i.ip = sub i64 %i.in, %i.io
  %i.iq = ashr exact i64 %i.ip, 5                 ; 5 uses
  %i.ir = icmp ugt i64 %i.iq, 1
  br i1 %i.ir, label %.lr.ph320.peel.next, label %.lr.ph331.preheader

.lr.ph320.peel.next:                              ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit.peel
  %i.is = getelementptr inbounds nuw i8, ptr %i.im, i64 96
  %i.it = load i8, ptr %i.is, align 8, !tbaa !63, !range !116, !noundef !117
  %i.iu = trunc nuw i8 %i.it to i1
  br i1 %i.iu, label %bb.ar, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.peel380

bb.ar:                                            ; preds = %.lr.ph320.peel.next
  %i.iv = getelementptr inbounds nuw i8, ptr %i.hv, i64 24 ; 2 uses
  %.pre396 = load ptr, ptr %i.iv, align 8, !tbaa !85 ; 2 uses
  %.phi.trans.insert407 = getelementptr inbounds nuw i8, ptr %i.hv, i64 32
  %.pre408.a = load ptr, ptr %.phi.trans.insert407, align 8, !tbaa !138 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.hv, i64 32
  %i.ix = ptrtoint ptr %.pre408.a to i64
  %i.iy = ptrtoint ptr %.pre396 to i64
  %i.iz = sub i64 %i.ix, %i.iy
  %i.ja = ashr exact i64 %i.iz, 2                 ; 3 uses
  %i.jb = icmp ugt i64 %.0120.lcssa, %i.ja
  br i1 %i.jb, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.jc = icmp ult i64 %.0120.lcssa, %i.ja
  br i1 %i.jc, label %bb.at, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.peel380

bb.at:                                            ; preds = %bb.as
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %.pre396, i64 %.0120.lcssa ; 2 uses
  %.not.i.i.peel378 = icmp eq ptr %.pre408.a, %i.jd
  br i1 %.not.i.i.peel378, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.peel380, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.peel379

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.peel379: ; preds = %bb.at
  store ptr %i.jd, ptr %i.iw, align 8, !tbaa !138
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.peel380

bb.au:                                            ; preds = %bb.ar
  %i.je = sub nuw nsw i64 %.0120.lcssa, %i.ja
  invoke void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.iv, i64 noundef %i.je)
          to label %._ZNSt6vectorIfSaIfEE6resizeEm.exit.peel380_crit_edge unwind label %.loopexit.split-lp

._ZNSt6vectorIfSaIfEE6resizeEm.exit.peel380_crit_edge: ; preds = %bb.au
  %.pre397 = load ptr, ptr %i.a, align 8, !tbaa !69 ; 3 uses
  %.phi.trans.insert398 = getelementptr inbounds nuw i8, ptr %.pre397, i64 184
  %.pre399 = load ptr, ptr %.phi.trans.insert398, align 8, !tbaa !73
  %.phi.trans.insert400 = getelementptr inbounds nuw i8, ptr %.pre397, i64 176
  %.pre401 = load ptr, ptr %.phi.trans.insert400, align 8, !tbaa !72
  %.pre412 = ptrtoint ptr %.pre399 to i64
  %.pre413 = ptrtoint ptr %.pre401 to i64
  %.pre415 = sub i64 %.pre412, %.pre413
  %.pre417 = ashr exact i64 %.pre415, 5
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.peel380

_ZNSt6vectorIfSaIfEE6resizeEm.exit.peel380:       ; preds = %._ZNSt6vectorIfSaIfEE6resizeEm.exit.peel380_crit_edge, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.peel379, %bb.at, %bb.as, %.lr.ph320.peel.next
  %.pre-phi418 = phi i64 [ %.pre417, %._ZNSt6vectorIfSaIfEE6resizeEm.exit.peel380_crit_edge ], [ %i.iq, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.peel379 ], [ %i.iq, %bb.at ], [ %i.iq, %bb.as ], [ %i.iq, %.lr.ph320.peel.next ]
  %i.jf = phi ptr [ %.pre397, %._ZNSt6vectorIfSaIfEE6resizeEm.exit.peel380_crit_edge ], [ %i.im, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.peel379 ], [ %i.im, %bb.at ], [ %i.im, %bb.as ], [ %i.im, %.lr.ph320.peel.next ]
  %i.jg = icmp ugt i64 %.pre-phi418, 2
  br i1 %i.jg, label %.lr.ph320.peel.next372, label %.lr.ph331.preheader

bb.av:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i204, %bb.am
  %i.jh = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

.lr.ph320.peel.next372:                           ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit.peel380, %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  %i.ji = phi ptr [ %i.jv, %_ZNSt6vectorIfSaIfEE6resizeEm.exit ], [ %i.jf, %_ZNSt6vectorIfSaIfEE6resizeEm.exit.peel380 ] ; 3 uses
  %.0117317 = phi i64 [ %i.jw, %_ZNSt6vectorIfSaIfEE6resizeEm.exit ], [ 2, %_ZNSt6vectorIfSaIfEE6resizeEm.exit.peel380 ] ; 2 uses
  %i.jj = getelementptr inbounds nuw [24 x i8], ptr %i.hv, i64 %.0117317 ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 8 ; 2 uses
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !138 ; 2 uses
  %i.jm = load ptr, ptr %i.jj, align 8, !tbaa !85 ; 2 uses
  %i.jn = ptrtoint ptr %i.jl to i64
  %i.jo = ptrtoint ptr %i.jm to i64
  %i.jp = sub i64 %i.jn, %i.jo
  %i.jq = ashr exact i64 %i.jp, 2                 ; 3 uses
  %i.jr = icmp ugt i64 %.0120.lcssa, %i.jq
  br i1 %i.jr, label %bb.aw, label %bb.ax
end_hunk_0
