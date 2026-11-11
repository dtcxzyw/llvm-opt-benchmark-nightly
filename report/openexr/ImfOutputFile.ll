Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ImfOutputFile?download=true
inline.NumInlined: 605
inline.NumDeleted: 305
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN7Imf_3_412_GLOBAL__N_114LineBufferTask7executeEv:bb.a
  br label %_ZN9Imath_3_24divpEii.exit67

_ZN9Imath_3_24divpEii.exit67:                     ; preds = %bb.u, %bb.v, %bb.x, %bb.y
  %i.ct = phi i32 [ %i.ck, %bb.v ], [ %i.ch, %bb.u ], [ %i.co, %bb.x ], [ %i.cs, %bb.y ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  %i.cv = load i8, ptr %i.cu, align 8, !tbaa !221, !range !104, !noundef !105
  %i.cw = trunc nuw i8 %i.cv to i1
  br i1 %i.cw, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %_ZN9Imath_3_24divpEii.exit67
  %i.cx = getelementptr inbounds nuw i8, ptr %i.as, i64 224
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !94
  %i.cz = load i32, ptr %i.au, align 8, !tbaa !222
  %reass.sub = sub i32 %i.ct, %i.cd
  %i.da = add i32 %reass.sub, 1
  %i.db = sext i32 %i.da to i64
  invoke void @_ZN7Imf_3_421fillChannelWithZeroesERPcNS_10Compressor6FormatENS_9PixelTypeEm(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i32 noundef %i.cy, i32 noundef %i.cz, i64 noundef %i.db)
          to label %bb.ak unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dc = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.al

bb.ab:                                            ; preds = %_ZN9Imath_3_24divpEii.exit67
  %i.dd = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !223
  %i.df = ptrtoint ptr %i.de to i64
  br i1 %i.ak, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.ax, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dg = udiv i32 %.04777, %i.aw
  br label %_ZN9Imath_3_24divpEii.exit68

bb.ae:                                            ; preds = %bb.ac
  %i.dh = sub nsw i32 0, %i.aw
  %i.di = udiv i32 %.04777, %i.dh
  %i.dj = sub nsw i32 0, %i.di
  br label %_ZN9Imath_3_24divpEii.exit68

bb.af:                                            ; preds = %bb.ab
  br i1 %i.ax, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dk = add nuw i32 %i.aw, %i.al
  %i.dl = udiv i32 %i.dk, %i.aw
  %i.dm = sub nsw i32 0, %i.dl
  br label %_ZN9Imath_3_24divpEii.exit68

bb.ah:                                            ; preds = %bb.af
  %i.dn = sub nsw i32 0, %i.aw
  %i.do = xor i32 %i.aw, -1
  %i.dp = sub nsw i32 %i.do, %.04777
  %i.dq = udiv i32 %i.dp, %i.dn
  br label %_ZN9Imath_3_24divpEii.exit68

_ZN9Imath_3_24divpEii.exit68:                     ; preds = %bb.ad, %bb.ae, %bb.ag, %bb.ah
  %i.dr = phi i32 [ %i.dj, %bb.ae ], [ %i.dg, %bb.ad ], [ %i.dm, %bb.ag ], [ %i.dq, %bb.ah ]
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !224
  %i.dv = mul i64 %i.du, %i.ds
  %i.dw = add i64 %i.dv, %i.df                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  %i.dx = sext i32 %i.cd to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !225 ; 3 uses
  %i.ea = mul i64 %i.dz, %i.dx
  %i.eb = add i64 %i.ea, %i.dw
  %i.ec = inttoptr i64 %i.eb to ptr
  store ptr %i.ec, ptr %i.d, align 8, !tbaa !107
  %i.ed = sext i32 %i.ct to i64
  %i.ee = mul i64 %i.dz, %i.ed
  %i.ef = add i64 %i.ee, %i.dw
  %i.eg = inttoptr i64 %i.ef to ptr
  %i.eh = getelementptr inbounds nuw i8, ptr %i.as, i64 224
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !94
  %i.ej = load i32, ptr %i.au, align 8, !tbaa !222
  invoke void @_ZN7Imf_3_419copyFromFrameBufferERPcRPKcS3_mNS_10Compressor6FormatENS_9PixelTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.eg, i64 noundef %i.dz, i32 noundef %i.ei, i32 noundef %i.ej)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %_ZN9Imath_3_24divpEii.exit68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  br label %bb.ak

bb.aj:                                            ; preds = %_ZN9Imath_3_24divpEii.exit68
  %i.ek = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai, %bb.z, %_ZN9Imath_3_24modpEii.exit
  %i.el = add i32 %.04674, 1                      ; 2 uses
  %i.em = zext i32 %i.el to i64                   ; 2 uses
  %i.en = load ptr, ptr %i.f, align 8, !tbaa !114 ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 232
  %.val = load ptr, ptr %i.eo, align 8, !tbaa !108 ; 2 uses
  %i.ep = getelementptr i8, ptr %i.en, i64 240
  %.val64 = load ptr, ptr %i.ep, align 8, !tbaa !109
  %i.eq = ptrtoint ptr %.val64 to i64
  %i.er = ptrtoint ptr %.val to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = sdiv exact i64 %i.es, 48
  %i.eu = icmp ugt i64 %i.et, %i.em
  br i1 %i.eu, label %bb.f, label %._crit_edge.loopexit, !llvm.loop !212

bb.al:                                            ; preds = %bb.aj, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.dc, %bb.aa ], [ %i.ek, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %bb.bt

bb.am:                                            ; preds = %._crit_edge
  store ptr %i.am, ptr %i.ap, align 8, !tbaa !116
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  %i.ev = add nsw i32 %.04777, %.048              ; 2 uses
  %.not = icmp eq i32 %i.ev, %.049
  br i1 %.not, label %._crit_edge80, label %bb.e, !llvm.loop !213

._crit_edge80:                                    ; preds = %bb.an, %bb.d
  %i.ew = phi ptr [ %i.l, %bb.d ], [ %i.an, %bb.an ] ; 8 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 40
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !117 ; 2 uses
  %.not56 = icmp slt i32 %.049, %i.ez
  br i1 %.not56, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %._crit_edge80
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ew, i64 44
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !118
  %.not57 = icmp sgt i32 %.049, %i.fb
  br i1 %.not57, label %bb.ap, label %bb.ce

bb.ap:                                            ; preds = %bb.ao, %._crit_edge80
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !70 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  store ptr %i.fd, ptr %i.fe, align 8, !tbaa !121
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ew, i64 32
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !116
  %i.fh = ptrtoint ptr %i.fg to i64
  %i.fi = ptrtoint ptr %i.fd to i64
  %i.fj = sub i64 %i.fh, %i.fi
  %i.fk = trunc i64 %i.fj to i32                  ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  store i32 %i.fk, ptr %i.fl, align 8, !tbaa !122
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ew, i64 56
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !65 ; 3 uses
  %.not58 = icmp eq ptr %i.fn, null
  br i1 %.not58, label %bb.bs, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !67
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 32
  %i.fq = load ptr, ptr %i.fp, align 8
  %i.fr = invoke noundef i32 %i.fq(ptr noundef nonnull align 8 dereferenceable(1112) %i.fn, ptr noundef %i.fd, i32 noundef %i.fk, i32 noundef %i.ez, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.ar unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ar:                                            ; preds = %bb.aq
  %i.fs = load ptr, ptr %i.ex, align 8, !tbaa !115 ; 8 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 24 ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 8, !tbaa !122
  %i.fv = icmp slt i32 %i.fr, %i.fu
  br i1 %i.fv, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store i32 %i.fr, ptr %i.ft, align 8, !tbaa !122
  %i.fw = load ptr, ptr %i.e, align 8, !tbaa !107
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  store ptr %i.fw, ptr %i.fx, align 8, !tbaa !121
  br label %bb.br

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZN9Imath_3_24divpEii.exit23.i, %bb.aq
  %lpad.loopexit.split-lp127 = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  br label %bb.bt

bb.at:                                            ; preds = %bb.ar
  %i.fy = load ptr, ptr %i.f, align 8, !tbaa !114 ; 5 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 224
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !94
  %i.gb = icmp eq i32 %i.ga, 0
  br i1 %i.gb, label %bb.au, label %bb.br

bb.au:                                            ; preds = %bb.at
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fs, i64 40
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !117 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fs, i64 44
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !118 ; 2 uses
  %i.gg = getelementptr i8, ptr %i.fs, i64 8
  %.val66 = load ptr, ptr %i.gg, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr %.val66, ptr %i.a, align 8, !tbaa !107
  %.not5.i = icmp sgt i32 %i.gd, %i.gf
  br i1 %.not5.i, label %_ZN7Imf_3_412_GLOBAL__N_112convertToXdrEPNS_10OutputFile4DataERNS_5ArrayIcEEiii.exit, label %.lr.ph8.i

.lr.ph8.i:                                        ; preds = %bb.au
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fy, i64 232 ; 2 uses
  %i.gi = getelementptr i8, ptr %i.fy, i64 240    ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fy, i64 132
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fy, i64 136
  %.val1.pre.i = load ptr, ptr %i.gh, align 8, !tbaa !108 ; 2 uses
  %.val212.pre.i = load ptr, ptr %i.gi, align 8, !tbaa !109 ; 2 uses
  br label %bb.av

bb.av:                                            ; preds = %._crit_edge.i, %.lr.ph8.i
  %.val2119.i = phi ptr [ %.val212.pre.i, %.lr.ph8.i ], [ %.val2120.i.a, %._crit_edge.i ] ; 2 uses
  %.val15.i = phi ptr [ %.val1.pre.i, %.lr.ph8.i ], [ %.val16.i, %._crit_edge.i ] ; 2 uses
  %.val212.i = phi ptr [ %.val212.pre.i, %.lr.ph8.i ], [ %.val21213.i, %._crit_edge.i ] ; 2 uses
  %.val1.i = phi ptr [ %.val1.pre.i, %.lr.ph8.i ], [ %.val111.i, %._crit_edge.i ] ; 3 uses
  %.06.i = phi i32 [ %i.gd, %.lr.ph8.i ], [ %i.gn, %._crit_edge.i ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %1 = load ptr, ptr %i.a, align 8, !tbaa !107
  store ptr %1, ptr %i.b, align 8, !tbaa !107
  %.not10.i = icmp eq ptr %.val212.i, %.val1.i
  br i1 %.not10.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.av
  %i.gl = icmp sgt i32 %.06.i, -1
  %i.gm = xor i32 %.06.i, -1
  br label %bb.aw

._crit_edge.i:                                    ; preds = %bb.bq, %bb.av
  %.val2120.i.a = phi ptr [ %.val2119.i, %bb.av ], [ %.val21.i, %bb.bq ]
  %.val16.i = phi ptr [ %.val15.i, %bb.av ], [ %.val.i, %bb.bq ]
  %.val21213.i = phi ptr [ %.val212.i, %bb.av ], [ %.val21.i, %bb.bq ]
  %.val111.i = phi ptr [ %.val1.i, %bb.av ], [ %.val.i, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.gn = add i32 %.06.i, 1
  %exitcond.not.i = icmp eq i32 %.06.i, %i.gf
  br i1 %exitcond.not.i, label %_ZN7Imf_3_412_GLOBAL__N_112convertToXdrEPNS_10OutputFile4DataERNS_5ArrayIcEEiii.exit.loopexit, label %bb.av, !llvm.loop !214

bb.aw:                                            ; preds = %bb.bq, %.lr.ph.i
  %.val2121.i.a = phi ptr [ %.val2119.i, %.lr.ph.i ], [ %.val21.i, %bb.bq ]
  %.val17.i = phi ptr [ %.val15.i, %.lr.ph.i ], [ %.val.i, %bb.bq ]
  %.val4.i = phi ptr [ %.val1.i, %.lr.ph.i ], [ %.val.i, %bb.bq ]
  %i.go = phi i64 [ 0, %.lr.ph.i ], [ %i.ir, %bb.bq ]
  %.0183.i = phi i32 [ 0, %.lr.ph.i ], [ %i.iq, %bb.bq ]
  %i.gp = getelementptr inbounds nuw [48 x i8], ptr %.val4.i, i64 %i.go ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 36
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !217 ; 8 uses
  %i.gs = icmp sgt i32 %i.gr, -1                  ; 2 uses
  br i1 %i.gl, label %bb.ax, label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  br i1 %i.gs, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.gt = udiv i32 %.06.i, %i.gr
  br label %_ZN9Imath_3_24modpEii.exit.i

bb.az:                                            ; preds = %bb.ax
  %i.gu = sub nsw i32 0, %i.gr
  %i.gv = udiv i32 %.06.i, %i.gu
  %i.gw = sub nsw i32 0, %i.gv
  br label %_ZN9Imath_3_24modpEii.exit.i

bb.ba:                                            ; preds = %bb.aw
  br i1 %i.gs, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.gx = add nuw i32 %i.gr, %i.gm
  %i.gy = udiv i32 %i.gx, %i.gr
  %i.gz = sub nsw i32 0, %i.gy
  br label %_ZN9Imath_3_24modpEii.exit.i

bb.bc:                                            ; preds = %bb.ba
  %i.ha = sub nsw i32 0, %i.gr
  %i.hb = xor i32 %i.gr, -1
  %i.hc = sub nsw i32 %i.hb, %.06.i
  %i.hd = udiv i32 %i.hc, %i.ha
  br label %_ZN9Imath_3_24modpEii.exit.i

_ZN9Imath_3_24modpEii.exit.i:                     ; preds = %bb.bc, %bb.bb, %bb.az, %bb.ay
  %i.he = phi i32 [ %i.gw, %bb.az ], [ %i.gt, %bb.ay ], [ %i.gz, %bb.bb ], [ %i.hd, %bb.bc ]
  %i.hf = mul nsw i32 %i.he, %i.gr
  %.not20.i = icmp eq i32 %.06.i, %i.hf
  br i1 %.not20.i, label %bb.bd, label %bb.bq

bb.bd:                                            ; preds = %_ZN9Imath_3_24modpEii.exit.i
  %i.hg = load i32, ptr %i.gj, align 4, !tbaa !218 ; 5 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gp, i64 32
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !219 ; 13 uses
  %i.hj = icmp sgt i32 %i.hg, -1
  %i.hk = icmp sgt i32 %i.hi, -1                  ; 4 uses
  br i1 %i.hj, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %bb.bd
  br i1 %i.hk, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.hl = udiv i32 %i.hg, %i.hi
  br label %_ZN9Imath_3_24divpEii.exit.i

bb.bg:                                            ; preds = %bb.be
  %i.hm = sub nsw i32 0, %i.hi
  %i.hn = udiv i32 %i.hg, %i.hm
  %i.ho = sub nsw i32 0, %i.hn
  br label %_ZN9Imath_3_24divpEii.exit.i

bb.bh:                                            ; preds = %bb.bd
  br i1 %i.hk, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.hp = xor i32 %i.hg, -1
  %i.hq = add nuw i32 %i.hi, %i.hp
  %i.hr = udiv i32 %i.hq, %i.hi
  %i.hs = sub nsw i32 0, %i.hr
  br label %_ZN9Imath_3_24divpEii.exit.i

bb.bj:                                            ; preds = %bb.bh
  %i.ht = sub nsw i32 0, %i.hi
  %i.hu = xor i32 %i.hi, -1
  %i.hv = sub nsw i32 %i.hu, %i.hg
  %i.hw = udiv i32 %i.hv, %i.ht
  br label %_ZN9Imath_3_24divpEii.exit.i

_ZN9Imath_3_24divpEii.exit.i:                     ; preds = %bb.bj, %bb.bi, %bb.bg, %bb.bf
  %i.hx = phi i32 [ %i.ho, %bb.bg ], [ %i.hl, %bb.bf ], [ %i.hs, %bb.bi ], [ %i.hw, %bb.bj ]
  %i.hy = load i32, ptr %i.gk, align 8, !tbaa !220 ; 5 uses
  %i.hz = icmp sgt i32 %i.hy, -1
  br i1 %i.hz, label %bb.bk, label %bb.bn

bb.bk:                                            ; preds = %_ZN9Imath_3_24divpEii.exit.i
  br i1 %i.hk, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.ia = udiv i32 %i.hy, %i.hi
  br label %_ZN9Imath_3_24divpEii.exit23.i

bb.bm:                                            ; preds = %bb.bk
  %i.ib = sub nsw i32 0, %i.hi
  %i.ic = udiv i32 %i.hy, %i.ib
  %i.id = sub nsw i32 0, %i.ic
  br label %_ZN9Imath_3_24divpEii.exit23.i

bb.bn:                                            ; preds = %_ZN9Imath_3_24divpEii.exit.i
  br i1 %i.hk, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.ie = xor i32 %i.hy, -1
  %i.if = add nuw i32 %i.hi, %i.ie
  %i.ig = udiv i32 %i.if, %i.hi
  %i.ih = sub nsw i32 0, %i.ig
  br label %_ZN9Imath_3_24divpEii.exit23.i

bb.bp:                                            ; preds = %bb.bn
  %i.ii = sub nsw i32 0, %i.hi
  %i.ij = xor i32 %i.hi, -1
  %i.ik = sub nsw i32 %i.ij, %i.hy
  %i.il = udiv i32 %i.ik, %i.ii
  br label %_ZN9Imath_3_24divpEii.exit23.i

_ZN9Imath_3_24divpEii.exit23.i:                   ; preds = %bb.bp, %bb.bo, %bb.bm, %bb.bl
  %i.im = phi i32 [ %i.id, %bb.bm ], [ %i.ia, %bb.bl ], [ %i.ih, %bb.bo ], [ %i.il, %bb.bp ]
  %i.in = load i32, ptr %i.gp, align 8, !tbaa !222
  %reass.sub82 = sub i32 %i.im, %i.hx
  %i.io = add i32 %reass.sub82, 1
  %i.ip = sext i32 %i.io to i64
  invoke void @_ZN7Imf_3_414convertInPlaceERPcRPKcNS_9PixelTypeEm(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %i.in, i64 noundef %i.ip)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %_ZN9Imath_3_24divpEii.exit23.i
  %.val.pre.i = load ptr, ptr %i.gh, align 8, !tbaa !108
  %.val21.pre.i = load ptr, ptr %i.gi, align 8, !tbaa !109
  br label %bb.bq

bb.bq:                                            ; preds = %.noexc, %_ZN9Imath_3_24modpEii.exit.i
  %.val21.i = phi ptr [ %.val2121.i.a, %_ZN9Imath_3_24modpEii.exit.i ], [ %.val21.pre.i, %.noexc ] ; 4 uses
  %.val.i = phi ptr [ %.val17.i, %_ZN9Imath_3_24modpEii.exit.i ], [ %.val.pre.i, %.noexc ] ; 5 uses
  %i.iq = add i32 %.0183.i, 1                     ; 2 uses
  %i.ir = zext i32 %i.iq to i64                   ; 2 uses
  %i.is = ptrtoint ptr %.val21.i to i64
  %i.it = ptrtoint ptr %.val.i to i64
  %i.iu = sub i64 %i.is, %i.it
  %i.iv = sdiv exact i64 %i.iu, 48
  %i.iw = icmp ugt i64 %i.iv, %i.ir
  br i1 %i.iw, label %bb.aw, label %._crit_edge.i, !llvm.loop !215

_ZN7Imf_3_412_GLOBAL__N_112convertToXdrEPNS_10OutputFile4DataERNS_5ArrayIcEEiii.exit.loopexit: ; preds = %._crit_edge.i
  %.pre85.pre.pre = load ptr, ptr %i.ex, align 8, !tbaa !115
  br label %_ZN7Imf_3_412_GLOBAL__N_112convertToXdrEPNS_10OutputFile4DataERNS_5ArrayIcEEiii.exit

_ZN7Imf_3_412_GLOBAL__N_112convertToXdrEPNS_10OutputFile4DataERNS_5ArrayIcEEiii.exit: ; preds = %_ZN7Imf_3_412_GLOBAL__N_112convertToXdrEPNS_10OutputFile4DataERNS_5ArrayIcEEiii.exit.loopexit, %bb.au
  %.pre85.pre = phi ptr [ %.pre85.pre.pre, %_ZN7Imf_3_412_GLOBAL__N_112convertToXdrEPNS_10OutputFile4DataERNS_5ArrayIcEEiii.exit.loopexit ], [ %i.fs, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.br

bb.br:                                            ; preds = %_ZN7Imf_3_412_GLOBAL__N_112convertToXdrEPNS_10OutputFile4DataERNS_5ArrayIcEEiii.exit, %bb.at, %bb.as
  %.pre85 = phi ptr [ %.pre85.pre, %_ZN7Imf_3_412_GLOBAL__N_112convertToXdrEPNS_10OutputFile4DataERNS_5ArrayIcEEiii.exit ], [ %i.fs, %bb.at ], [ %i.fs, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.ap
  %i.ix = phi ptr [ %.pre85, %bb.br ], [ %i.ew, %bb.ap ]
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 64
  store i8 0, ptr %i.iy, align 8, !tbaa !98
  br label %bb.ce

bb.bt:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.al
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.al ], [ %lpad.loopexit.split-lp127, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 1
  %.144 = extractvalue { ptr, i32 } %.pn.pn, 0
  %i.iz = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #23
  %i.ja = icmp eq i32 %.1, %i.iz
  %i.jb = call ptr @__cxa_begin_catch(ptr %.144) #23 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !115 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 65
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !99, !range !104, !noundef !105
  %i.jg = trunc nuw i8 %i.jf to i1                ; 2 uses
  br i1 %i.ja, label %bb.bu, label %bb.bx

bb.bu:                                            ; preds = %bb.bt
  br i1 %i.jg, label %bb.cd, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.jh = load ptr, ptr %i.jb, align 8, !tbaa !67
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  %i.jj = load ptr, ptr %i.ji, align 8
  %i.jk = call noundef ptr %i.jj(ptr noundef nonnull align 8 dereferenceable(8) %i.jb) #23
  %i.jl = load ptr, ptr %i.jc, align 8, !tbaa !115
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 72
  %i.jn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %i.jm, ptr noundef %i.jk)
          to label %bb.bw unwind label %bb.cc     ; 0 uses

bb.bw:                                            ; preds = %bb.bv
  %i.jo = load ptr, ptr %i.jc, align 8, !tbaa !115
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 65
  store i8 1, ptr %i.jp, align 1, !tbaa !99
  br label %bb.cd

bb.bx:                                            ; preds = %bb.bt
  br i1 %i.jg, label %bb.cb, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jd, i64 72
  %i.jr = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %i.jq, ptr noundef nonnull @.str.38)
          to label %bb.bz unwind label %bb.ca     ; 0 uses

bb.bz:                                            ; preds = %bb.by
  %i.js = load ptr, ptr %i.jc, align 8, !tbaa !115
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 65
  store i8 1, ptr %i.jt, align 1, !tbaa !99
  br label %bb.cb

bb.ca:                                            ; preds = %bb.by
  %i.ju = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cf unwind label %bb.cg

bb.cb:                                            ; preds = %bb.bz, %bb.bx
  call void @__cxa_end_catch()
  br label %bb.ce

bb.cc:                                            ; preds = %bb.bv
  %i.jv = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cf unwind label %bb.cg

bb.cd:                                            ; preds = %bb.bw, %bb.bu
  call void @__cxa_end_catch()
  br label %bb.ce

bb.ce:                                            ; preds = %bb.bs, %bb.ao, %bb.cd, %bb.cb
  ret void

bb.cf:                                            ; preds = %bb.cc, %bb.ca
  %.pn62 = phi { ptr, i32 } [ %i.ju, %bb.ca ], [ %i.jv, %bb.cc ]
  resume { ptr, i32 } %.pn62

bb.cg:                                            ; preds = %bb.cc, %bb.ca
  %i.jw = landingpad { ptr, i32 }
          catch ptr null
  %i.jx = extractvalue { ptr, i32 } %i.jw, 0
  call void @__clang_call_terminate(ptr %i.jx) #26
  unreachable
}

declare void @_ZN7Imf_3_421fillChannelWithZeroesERPcNS_10Compressor6FormatENS_9PixelTypeEm(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZN7Imf_3_419copyFromFrameBufferERPcRPKcS3_mNS_10Compressor6FormatENS_9PixelTypeE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #3 align 2

declare void @_ZN7Imf_3_414convertInPlaceERPcRPKcNS_9PixelTypeEm(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZN13IlmThread_3_49Semaphore4waitEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

declare void @_ZN13IlmThread_3_49Semaphore4postEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorImSaImEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !102  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !56     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !57
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %i.b, align 8, !tbaa !103
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !103
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !102
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #27
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #24 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i64 0, ptr %i.y, align 8, !tbaa !103
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !103
  br label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33

end_hunk_0
