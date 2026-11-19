Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/gdcmRLECodec?download=true
inline.NumInlined: 816
inline.NumDeleted: 407
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4gdcm8RLECodec4CodeERKNS_11DataElementERS1_:_ZN4gdcm12SmartPointerINS_19SequenceOfFragmentsEEC2EPS1_.exit
  %.1222 = phi i32 [ %i.ch, %bb.ak ], [ %.0221, %bb.aj ] ; 4 uses
  %i.cj = icmp eq i32 %.1229425, 16               ; 2 uses
  %i.ck = icmp eq i32 %.1229425, 32               ; 2 uses
  switch i32 %.1229425, label %bb.an [
    i32 32, label %bb.ap
    i32 16, label %bb.ap
    i32 8, label %bb.ap
  ]

bb.an:                                            ; preds = %bb.am
  %i.cl = tail call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.cl, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 439, ptr noundef nonnull @.str.2)
          to label %.invoke unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cm = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.cl) #25
  br label %.body

bb.ap:                                            ; preds = %bb.am, %bb.am, %bb.am
  %i.cn = invoke noundef zeroext i16 @_ZNK4gdcm11PixelFormat18GetSamplesPerPixelEv(ptr noundef nonnull align 2 dereferenceable(10) %i.ac)
          to label %bb.aq unwind label %bb.al

bb.aq:                                            ; preds = %bb.ap
  %i.co = icmp ne i16 %i.cn, 3
  %.lhs.trunc = trunc nuw nsw i32 %.1222 to i8
  %i.cp = urem i8 %.lhs.trunc, 3
  %i.cq = icmp eq i8 %i.cp, 0
  %or.cond = select i1 %i.co, i1 true, i1 %i.cq
  br i1 %or.cond, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cr = tail call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.cr, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 442, ptr noundef nonnull @.str.2)
          to label %.invoke unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cs = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.cr) #25
  br label %.body

bb.at:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store i32 %.1222, ptr %4, align 4, !tbaa !63
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %.sroa.6.0..sroa_idx, i8 0, i64 56, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
  store i32 64, ptr %i.ct, align 4
  %i.cu = load i32, ptr %i.y, align 8, !tbaa !59
  %.not311594 = icmp eq i32 %i.cu, 0
  br i1 %.not311594, label %_ZNK4gdcm12SmartPointerINS_19SequenceOfFragmentsEEdeEv.exit, label %.lr.ph598

.lr.ph598:                                        ; preds = %bb.at
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.cw = lshr i64 %.1232421, 2
  %i.cx = trunc i64 %i.cw to i32
  %i.cy = and i64 %.1232421, 3
  %.not299 = icmp eq i64 %i.cy, 0
  %i.cz = lshr i64 %.1232421, 1
  %i.da = trunc i64 %i.cz to i32
  %i.db = and i64 %.1232421, 1
  %.not295 = icmp eq i64 %i.db, 0
  %i.dc = trunc i64 %.1232421 to i32
  %i.dd = zext nneg i32 %.1222 to i64             ; 5 uses
  %i.de = add nsw i32 %.1222, -1
  %i.df = getelementptr inbounds nuw i8, ptr %6, i64 128 ; 5 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 7 uses
  %i.di = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 16), align 8 ; 2 uses
  %i.dj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 24), align 8
  %i.dk = getelementptr i8, ptr %i.di, i64 -24
  %i.dl = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 32), align 8
  %i.dn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 40), align 8
  %i.do = getelementptr i8, ptr %i.dm, i64 -24
  %i.dp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 8), align 8
  %i.dq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 48), align 8
  %i.dr = getelementptr i8, ptr %i.dp, i64 -24
  %i.ds = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 5 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %6, i64 120 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %7, i64 1 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %8, i64 1 ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %5, i64 1 ; 3 uses
  %i.ej = load ptr, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, align 8 ; 4 uses
  %i.ek = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 64), align 8 ; 3 uses
  %i.el = getelementptr i8, ptr %i.ej, i64 -24    ; 3 uses
  %i.em = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 72), align 8 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %6, i64 104 ; 2 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.dd
  %i.ep = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %9, i64 120
  %i.er = getelementptr inbounds nuw i8, ptr %9, i64 112 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.et = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.ev = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.ew = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ey = getelementptr inbounds nuw i8, ptr %11, i64 1 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.fa = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.fb = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %10, i64 1
  %i.fd = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %9, i64 104
  %i.fh = getelementptr inbounds nuw i8, ptr %9, i64 128
  %i.fi = zext nneg i32 %i.de to i64
  br label %bb.au

bb.au:                                            ; preds = %.lr.ph598, %bb.fq
  %indvars.iv632 = phi i64 [ 0, %.lr.ph598 ], [ %indvars.iv.next633, %bb.fq ] ; 2 uses
  %i.fj = mul i64 %.1232421, %indvars.iv632
  %i.fk = getelementptr inbounds nuw i8, ptr %.1234418, i64 %i.fj ; 6 uses
  %i.fl = load i32, ptr %i.cv, align 4, !tbaa !64
  %i.fm = icmp eq i32 %i.fl, 0
  br i1 %i.fm, label %bb.av, label %bb.bf

bb.av:                                            ; preds = %bb.au
  %i.fn = invoke noundef zeroext i16 @_ZNK4gdcm11PixelFormat18GetSamplesPerPixelEv(ptr noundef nonnull align 2 dereferenceable(10) %i.ac)
          to label %bb.aw unwind label %.loopexit.split-lp466.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aw:                                            ; preds = %bb.av
  %i.fo = icmp eq i16 %i.fn, 3
  br i1 %i.fo, label %bb.ax, label %bb.bf

bb.ax:                                            ; preds = %bb.aw
  br i1 %i.br, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.fp = invoke noundef zeroext i1 @_ZN4gdcm27DoInvertPlanarConfigurationIcEEbPT_PKS1_j(ptr noundef %.0223, ptr noundef %i.fk, i32 noundef %i.dc)
          to label %.thread428.thread440 unwind label %.loopexit.split-lp466.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.az:                                            ; preds = %bb.ax
  br i1 %i.cj, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.fq = invoke noundef zeroext i1 @_ZN4gdcm27DoInvertPlanarConfigurationIsEEbPT_PKS1_j(ptr noundef %.0223, ptr noundef %i.fk, i32 noundef %i.da)
          to label %.thread428.thread unwind label %.loopexit.split-lp466.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.bb:                                            ; preds = %bb.az
  br i1 %i.ck, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fr = call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.fr, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 470, ptr noundef nonnull @.str.2)
          to label %.invoke678 unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fs = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.fr) #25
  br label %.body393

bb.be:                                            ; preds = %bb.bb
  %i.ft = invoke noundef zeroext i1 @_ZN4gdcm27DoInvertPlanarConfigurationIiEEbPT_PKS1_j(ptr noundef %.0223, ptr noundef %i.fk, i32 noundef %i.cx)
          to label %.thread431 unwind label %.loopexit.split-lp466.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.bf:                                            ; preds = %bb.aw, %bb.au
  br i1 %i.ck, label %.thread431, label %.thread428

.thread431:                                       ; preds = %bb.be, %bb.bf
  %.0218433 = phi ptr [ %i.fk, %bb.bf ], [ %.0223, %bb.be ] ; 9 uses
  br i1 %.not299, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %.thread431
  %i.fu = call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.fu, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 481, ptr noundef nonnull @.str.2)
          to label %.invoke678 unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fv = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.fu) #25
  br label %.body393

bb.bi:                                            ; preds = %.thread431
  %i.fw = invoke noundef zeroext i16 @_ZNK4gdcm11PixelFormat18GetSamplesPerPixelEv(ptr noundef nonnull align 2 dereferenceable(10) %i.ac)
          to label %bb.bj unwind label %.loopexit.split-lp466.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.bj:                                            ; preds = %bb.bi
  %.not600 = icmp eq i16 %i.fw, 0
  br i1 %.not600, label %.thread428.thread440, label %.lr.ph575

.lr.ph575:                                        ; preds = %bb.bj
  %i.fx = zext i16 %i.fw to i64                   ; 2 uses
  %i.fy = udiv i64 %.1232421, %i.fx               ; 17 uses
  %i.fz = and i64 %i.fy, 3
  %i.ga = icmp eq i64 %i.fz, 0
  %i.gb = lshr i64 %i.fy, 2                       ; 14 uses
  %.not601 = icmp ult i64 %.1232421, %i.fx
  %i.gc = lshr i64 %i.fy, 1
  %i.gd = and i64 %i.gc, 4611686018427387902      ; 3 uses
  %i.ge = mul i64 %i.fy, 3
  %i.gf = lshr i64 %i.ge, 2                       ; 3 uses
  br i1 %i.ga, label %.preheader448.preheader, label %bb.bk

.preheader448.preheader:                          ; preds = %.lr.ph575
  %wide.trip.count = zext i16 %i.fw to i64
  %scevgep796 = getelementptr i8, ptr %.0218433, i64 1
  %scevgep835 = getelementptr i8, ptr %.0218433, i64 2
  %scevgep872 = getelementptr i8, ptr %.0218433, i64 3
  %umax873 = call i64 @llvm.umax.i64(i64 %i.gb, i64 1) ; 4 uses
  %min.iters.check874 = icmp ult i64 %i.fy, 36
  %i.gg = getelementptr i8, ptr %.0224, i64 %i.gb
  %i.gh = getelementptr i8, ptr %.0218433, i64 %i.fy
  %bound0876 = icmp ult ptr %.0224, %i.gh
  %bound1877 = icmp ult ptr %scevgep872, %i.gg
  %found.conflict878 = and i1 %bound0876, %bound1877
  %min.iters.check881 = icmp ult i64 %i.fy, 68
  %i.gi = and i64 %umax873, 15                    ; 2 uses
  %i.gj = icmp eq i64 %i.gi, 0
  %i.gk = select i1 %i.gj, i64 16, i64 %i.gi      ; 2 uses
  %n.vec883 = sub nsw i64 %umax873, %i.gk         ; 3 uses
  %min.epilog.iters.check891 = icmp samesign ult i64 %i.gk, 9
  %i.gl = and i64 %umax873, 7                     ; 2 uses
  %i.gm = icmp eq i64 %i.gl, 0
  %i.gn = select i1 %i.gm, i64 8, i64 %i.gl
  %n.vec894 = sub nsw i64 %umax873, %i.gn         ; 2 uses
  %umax836 = call i64 @llvm.umax.i64(i64 %i.gb, i64 1) ; 4 uses
  %min.iters.check837 = icmp ult i64 %i.fy, 36
  %i.go = getelementptr i8, ptr %.0224, i64 %i.gb
  %i.gp = shl nuw nsw i64 %i.gb, 1
  %i.gq = getelementptr i8, ptr %.0224, i64 %i.gp
  %i.gr = getelementptr i8, ptr %.0218433, i64 %i.fy
  %i.gs = getelementptr i8, ptr %i.gr, i64 -1
  %bound0839 = icmp ult ptr %i.go, %i.gs
  %bound1840 = icmp ult ptr %scevgep835, %i.gq
  %found.conflict841 = and i1 %bound0839, %bound1840
  %min.iters.check844 = icmp ult i64 %i.fy, 68
  %i.gt = and i64 %umax836, 15                    ; 2 uses
  %i.gu = icmp eq i64 %i.gt, 0
  %i.gv = select i1 %i.gu, i64 16, i64 %i.gt      ; 2 uses
  %n.vec846 = sub nsw i64 %umax836, %i.gv         ; 3 uses
  %min.epilog.iters.check854 = icmp samesign ult i64 %i.gv, 9
  %i.gw = and i64 %umax836, 7                     ; 2 uses
  %i.gx = icmp eq i64 %i.gw, 0
  %i.gy = select i1 %i.gx, i64 8, i64 %i.gw
  %n.vec857 = sub nsw i64 %umax836, %i.gy         ; 2 uses
  %umax797 = call i64 @llvm.umax.i64(i64 %i.gb, i64 1) ; 4 uses
  %min.iters.check798 = icmp ult i64 %i.fy, 36
  %i.gz = getelementptr i8, ptr %.0224, i64 %i.gd
  %i.ha = getelementptr i8, ptr %.0224, i64 %i.gb
  %i.hb = getelementptr i8, ptr %i.ha, i64 %i.gd
  %i.hc = getelementptr i8, ptr %.0218433, i64 %i.fy
  %i.hd = getelementptr i8, ptr %i.hc, i64 -2
  %bound0800 = icmp ult ptr %i.gz, %i.hd
  %bound1801 = icmp ult ptr %scevgep796, %i.hb
  %found.conflict802 = and i1 %bound0800, %bound1801
  %min.iters.check805 = icmp ult i64 %i.fy, 68
  %i.he = and i64 %umax797, 15                    ; 2 uses
  %i.hf = icmp eq i64 %i.he, 0
  %i.hg = select i1 %i.hf, i64 16, i64 %i.he      ; 2 uses
  %n.vec807 = sub nsw i64 %umax797, %i.hg         ; 3 uses
  %min.epilog.iters.check815 = icmp samesign ult i64 %i.hg, 9
  %i.hh = and i64 %umax797, 7                     ; 2 uses
  %i.hi = icmp eq i64 %i.hh, 0
  %i.hj = select i1 %i.hi, i64 8, i64 %i.hh
  %n.vec818 = sub nsw i64 %umax797, %i.hj         ; 2 uses
  %umax758 = call i64 @llvm.umax.i64(i64 %i.gb, i64 1) ; 4 uses
  %min.iters.check759 = icmp ult i64 %i.fy, 36
  %i.hk = getelementptr i8, ptr %.0224, i64 %i.gf
  %i.hl = getelementptr i8, ptr %.0224, i64 %i.gb
  %i.hm = getelementptr i8, ptr %i.hl, i64 %i.gf
  %i.hn = getelementptr i8, ptr %.0218433, i64 %i.fy
  %i.ho = getelementptr i8, ptr %i.hn, i64 -3
  %bound0761 = icmp ult ptr %i.hk, %i.ho
  %bound1762 = icmp ult ptr %.0218433, %i.hm
  %found.conflict763 = and i1 %bound0761, %bound1762
  %min.iters.check766 = icmp ult i64 %i.fy, 68
  %i.hp = and i64 %umax758, 15                    ; 2 uses
  %i.hq = icmp eq i64 %i.hp, 0
  %i.hr = select i1 %i.hq, i64 16, i64 %i.hp      ; 2 uses
  %n.vec768 = sub nsw i64 %umax758, %i.hr         ; 3 uses
  %min.epilog.iters.check776 = icmp samesign ult i64 %i.hr, 9
  %i.hs = and i64 %umax758, 7                     ; 2 uses
  %i.ht = icmp eq i64 %i.hs, 0
  %i.hu = select i1 %i.ht, i64 8, i64 %i.hs
  %n.vec779 = sub nsw i64 %umax758, %i.hu         ; 2 uses
  br label %.preheader448

.preheader448:                                    ; preds = %.preheader448.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.preheader448.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.hv = mul i64 %i.fy, %indvars.iv              ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.0224, i64 %i.hv ; 6 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.0218433, i64 %i.hv ; 100 uses
  br i1 %.not601, label %._crit_edge, label %iter.check888

iter.check888:                                    ; preds = %.preheader448
  %brmerge = select i1 %min.iters.check874, i1 true, i1 %found.conflict878
  br i1 %brmerge, label %.lr.ph.preheader, label %vector.main.loop.iter.check880

vector.main.loop.iter.check880:                   ; preds = %iter.check888
  br i1 %min.iters.check881, label %vec.epilog.ph892, label %vector.body884

vector.body884:                                   ; preds = %vector.main.loop.iter.check880, %vector.body884
  %index885 = phi i64 [ %index.next886, %vector.body884 ], [ 0, %vector.main.loop.iter.check880 ] ; 18 uses
  %i.hy = shl nuw i64 %index885, 2
  %i.hz = shl i64 %index885, 2
  %i.ia = shl i64 %index885, 2
  %i.ib = shl i64 %index885, 2
  %i.ic = shl i64 %index885, 2
  %i.id = shl i64 %index885, 2
  %i.ie = shl i64 %index885, 2
  %i.if = shl i64 %index885, 2
  %i.ig = shl i64 %index885, 2
  %i.ih = shl i64 %index885, 2
  %i.ii = shl i64 %index885, 2
  %i.ij = shl i64 %index885, 2
  %i.ik = shl i64 %index885, 2
  %i.il = shl i64 %index885, 2
  %i.im = shl i64 %index885, 2
  %i.in = shl i64 %index885, 2
  %i.io = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.hy
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.hz
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.ia
  %i.ir = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.ib
  %i.is = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.ic
  %i.it = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.id
  %i.iu = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.ie
  %i.iv = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.if
  %i.iw = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.ig
  %i.ix = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.ih
  %i.iy = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.ii
  %i.iz = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.ij
  %i.ja = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.ik
  %i.jb = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.il
  %i.jc = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.im
  %i.jd = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.in
  %i.je = getelementptr inbounds nuw i8, ptr %i.io, i64 3
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ip, i64 7
  %i.jg = getelementptr inbounds nuw i8, ptr %i.iq, i64 11
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ir, i64 15
  %i.ji = getelementptr inbounds nuw i8, ptr %i.is, i64 19
  %i.jj = getelementptr inbounds nuw i8, ptr %i.it, i64 23
  %i.jk = getelementptr inbounds nuw i8, ptr %i.iu, i64 27
  %i.jl = getelementptr inbounds nuw i8, ptr %i.iv, i64 31
  %i.jm = getelementptr inbounds nuw i8, ptr %i.iw, i64 35
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ix, i64 39
  %i.jo = getelementptr inbounds nuw i8, ptr %i.iy, i64 43
  %i.jp = getelementptr inbounds nuw i8, ptr %i.iz, i64 47
  %i.jq = getelementptr inbounds nuw i8, ptr %i.ja, i64 51
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jb, i64 55
  %i.js = getelementptr inbounds nuw i8, ptr %i.jc, i64 59
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jd, i64 63
  %i.ju = load i8, ptr %i.je, align 1, !tbaa !47, !alias.scope !180
  %i.jv = load i8, ptr %i.jf, align 1, !tbaa !47, !alias.scope !180
  %i.jw = load i8, ptr %i.jg, align 1, !tbaa !47, !alias.scope !180
  %i.jx = load i8, ptr %i.jh, align 1, !tbaa !47, !alias.scope !180
  %i.jy = load i8, ptr %i.ji, align 1, !tbaa !47, !alias.scope !180
  %i.jz = load i8, ptr %i.jj, align 1, !tbaa !47, !alias.scope !180
  %i.ka = load i8, ptr %i.jk, align 1, !tbaa !47, !alias.scope !180
  %i.kb = load i8, ptr %i.jl, align 1, !tbaa !47, !alias.scope !180
  %i.kc = load i8, ptr %i.jm, align 1, !tbaa !47, !alias.scope !180
  %i.kd = load i8, ptr %i.jn, align 1, !tbaa !47, !alias.scope !180
  %i.ke = load i8, ptr %i.jo, align 1, !tbaa !47, !alias.scope !180
  %i.kf = load i8, ptr %i.jp, align 1, !tbaa !47, !alias.scope !180
  %i.kg = load i8, ptr %i.jq, align 1, !tbaa !47, !alias.scope !180
  %i.kh = load i8, ptr %i.jr, align 1, !tbaa !47, !alias.scope !180
  %i.ki = load i8, ptr %i.js, align 1, !tbaa !47, !alias.scope !180
  %i.kj = load i8, ptr %i.jt, align 1, !tbaa !47, !alias.scope !180
  %i.kk = insertelement <16 x i8> poison, i8 %i.ju, i64 0
  %i.kl = insertelement <16 x i8> %i.kk, i8 %i.jv, i64 1
  %i.km = insertelement <16 x i8> %i.kl, i8 %i.jw, i64 2
  %i.kn = insertelement <16 x i8> %i.km, i8 %i.jx, i64 3
  %i.ko = insertelement <16 x i8> %i.kn, i8 %i.jy, i64 4
  %i.kp = insertelement <16 x i8> %i.ko, i8 %i.jz, i64 5
  %i.kq = insertelement <16 x i8> %i.kp, i8 %i.ka, i64 6
  %i.kr = insertelement <16 x i8> %i.kq, i8 %i.kb, i64 7
  %i.ks = insertelement <16 x i8> %i.kr, i8 %i.kc, i64 8
  %i.kt = insertelement <16 x i8> %i.ks, i8 %i.kd, i64 9
  %i.ku = insertelement <16 x i8> %i.kt, i8 %i.ke, i64 10
  %i.kv = insertelement <16 x i8> %i.ku, i8 %i.kf, i64 11
  %i.kw = insertelement <16 x i8> %i.kv, i8 %i.kg, i64 12
  %i.kx = insertelement <16 x i8> %i.kw, i8 %i.kh, i64 13
  %i.ky = insertelement <16 x i8> %i.kx, i8 %i.ki, i64 14
  %i.kz = insertelement <16 x i8> %i.ky, i8 %i.kj, i64 15
  %i.la = getelementptr inbounds nuw i8, ptr %i.hw, i64 %index885
  store <16 x i8> %i.kz, ptr %i.la, align 1, !tbaa !47, !alias.scope !181, !noalias !180
  %index.next886 = add nuw i64 %index885, 16      ; 2 uses
  %i.lb = icmp eq i64 %index.next886, %n.vec883
  br i1 %i.lb, label %vec.epilog.iter.check889, label %vector.body884, !llvm.loop !120

vec.epilog.iter.check889:                         ; preds = %vector.body884
  br i1 %min.epilog.iters.check891, label %.lr.ph.preheader, label %vec.epilog.ph892, !prof !182

.lr.ph.preheader:                                 ; preds = %vec.epilog.vector.body895, %iter.check888, %vec.epilog.iter.check889
  %.0216562.ph = phi i64 [ 0, %iter.check888 ], [ %n.vec883, %vec.epilog.iter.check889 ], [ %n.vec894, %vec.epilog.vector.body895 ]
  br label %.lr.ph

vec.epilog.ph892:                                 ; preds = %vector.main.loop.iter.check880, %vec.epilog.iter.check889
  %vec.epilog.resume.val893 = phi i64 [ %n.vec883, %vec.epilog.iter.check889 ], [ 0, %vector.main.loop.iter.check880 ]
  br label %vec.epilog.vector.body895

vec.epilog.vector.body895:                        ; preds = %vec.epilog.vector.body895, %vec.epilog.ph892
  %index896 = phi i64 [ %vec.epilog.resume.val893, %vec.epilog.ph892 ], [ %index.next897, %vec.epilog.vector.body895 ] ; 10 uses
  %i.lc = shl nuw i64 %index896, 2
  %i.ld = shl i64 %index896, 2
  %i.le = shl i64 %index896, 2
  %i.lf = shl i64 %index896, 2
  %i.lg = shl i64 %index896, 2
  %i.lh = shl i64 %index896, 2
  %i.li = shl i64 %index896, 2
  %i.lj = shl i64 %index896, 2
  %i.lk = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.lc
  %i.ll = getelementptr i8, ptr %i.hx, i64 %i.ld
  %i.lm = getelementptr i8, ptr %i.hx, i64 %i.le
  %i.ln = getelementptr i8, ptr %i.hx, i64 %i.lf
  %i.lo = getelementptr i8, ptr %i.hx, i64 %i.lg
  %i.lp = getelementptr i8, ptr %i.hx, i64 %i.lh
  %i.lq = getelementptr i8, ptr %i.hx, i64 %i.li
  %i.lr = getelementptr i8, ptr %i.hx, i64 %i.lj
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lk, i64 3
  %i.lt = getelementptr i8, ptr %i.ll, i64 7
  %i.lu = getelementptr i8, ptr %i.lm, i64 11
  %i.lv = getelementptr i8, ptr %i.ln, i64 15
  %i.lw = getelementptr i8, ptr %i.lo, i64 19
  %i.lx = getelementptr i8, ptr %i.lp, i64 23
  %i.ly = getelementptr i8, ptr %i.lq, i64 27
  %i.lz = getelementptr i8, ptr %i.lr, i64 31
  %i.ma = load i8, ptr %i.ls, align 1, !tbaa !47, !alias.scope !180
  %i.mb = load i8, ptr %i.lt, align 1, !tbaa !47, !alias.scope !180
  %i.mc = load i8, ptr %i.lu, align 1, !tbaa !47, !alias.scope !180
  %i.md = load i8, ptr %i.lv, align 1, !tbaa !47, !alias.scope !180
  %i.me = load i8, ptr %i.lw, align 1, !tbaa !47, !alias.scope !180
  %i.mf = load i8, ptr %i.lx, align 1, !tbaa !47, !alias.scope !180
  %i.mg = load i8, ptr %i.ly, align 1, !tbaa !47, !alias.scope !180
  %i.mh = load i8, ptr %i.lz, align 1, !tbaa !47, !alias.scope !180
  %i.mi = insertelement <8 x i8> poison, i8 %i.ma, i64 0
  %i.mj = insertelement <8 x i8> %i.mi, i8 %i.mb, i64 1
  %i.mk = insertelement <8 x i8> %i.mj, i8 %i.mc, i64 2
  %i.ml = insertelement <8 x i8> %i.mk, i8 %i.md, i64 3
  %i.mm = insertelement <8 x i8> %i.ml, i8 %i.me, i64 4
  %i.mn = insertelement <8 x i8> %i.mm, i8 %i.mf, i64 5
  %i.mo = insertelement <8 x i8> %i.mn, i8 %i.mg, i64 6
  %i.mp = insertelement <8 x i8> %i.mo, i8 %i.mh, i64 7
  %i.mq = getelementptr inbounds nuw i8, ptr %i.hw, i64 %index896
  store <8 x i8> %i.mp, ptr %i.mq, align 1, !tbaa !47, !alias.scope !181, !noalias !180
  %index.next897 = add nuw i64 %index896, 8       ; 2 uses
  %i.mr = icmp eq i64 %index.next897, %n.vec894
  br i1 %i.mr, label %.lr.ph.preheader, label %vec.epilog.vector.body895, !llvm.loop !121

bb.bk:                                            ; preds = %.lr.ph575
  %i.ms = call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.ms, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 489, ptr noundef nonnull @.str.2)
          to label %.invoke678 unwind label %bb.bl

.invoke678:                                       ; preds = %bb.bq, %bb.bm, %bb.bk, %bb.bg, %bb.bc, %bb.bs
  %i.mt = phi ptr [ %i.fu, %bb.bg ], [ %i.abz, %bb.bm ], [ %i.ms, %bb.bk ], [ %i.fr, %bb.bc ], [ %i.anf, %bb.bs ], [ %i.ana, %bb.bq ]
  invoke void @__cxa_throw(ptr nonnull %i.mt, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #27
          to label %.cont679 unwind label %.loopexit.split-lp466.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont679:                                         ; preds = %.invoke678
  unreachable

bb.bl:                                            ; preds = %bb.bk
  %i.mu = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ms) #25
  br label %.body393

iter.check851:                                    ; preds = %.lr.ph
  %invariant.gep = getelementptr i8, ptr %i.hw, i64 %i.gb ; 3 uses
  %brmerge933 = select i1 %min.iters.check837, i1 true, i1 %found.conflict841
  br i1 %brmerge933, label %.lr.ph564.preheader, label %vector.main.loop.iter.check843

vector.main.loop.iter.check843:                   ; preds = %iter.check851
  br i1 %min.iters.check844, label %vec.epilog.ph855, label %vector.body847

vector.body847:                                   ; preds = %vector.main.loop.iter.check843, %vector.body847
  %index848 = phi i64 [ %index.next849, %vector.body847 ], [ 0, %vector.main.loop.iter.check843 ] ; 18 uses
  %i.mv = shl nuw i64 %index848, 2
  %i.mw = shl i64 %index848, 2
  %i.mx = shl i64 %index848, 2
  %i.my = shl i64 %index848, 2
  %i.mz = shl i64 %index848, 2
  %i.na = shl i64 %index848, 2
  %i.nb = shl i64 %index848, 2
  %i.nc = shl i64 %index848, 2
  %i.nd = shl i64 %index848, 2
  %i.ne = shl i64 %index848, 2
  %i.nf = shl i64 %index848, 2
  %i.ng = shl i64 %index848, 2
  %i.nh = shl i64 %index848, 2
  %i.ni = shl i64 %index848, 2
  %i.nj = shl i64 %index848, 2
  %i.nk = shl i64 %index848, 2
  %i.nl = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.mv
  %i.nm = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.mw
  %i.nn = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.mx
  %i.no = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.my
  %i.np = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.mz
  %i.nq = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.na
  %i.nr = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.nb
  %i.ns = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.nc
  %i.nt = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.nd
  %i.nu = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.ne
  %i.nv = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.nf
  %i.nw = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.ng
  %i.nx = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.nh
  %i.ny = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.ni
  %i.nz = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.nj
  %i.oa = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.nk
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nl, i64 2
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nm, i64 6
  %i.od = getelementptr inbounds nuw i8, ptr %i.nn, i64 10
  %i.oe = getelementptr inbounds nuw i8, ptr %i.no, i64 14
  %i.of = getelementptr inbounds nuw i8, ptr %i.np, i64 18
  %i.og = getelementptr inbounds nuw i8, ptr %i.nq, i64 22
  %i.oh = getelementptr inbounds nuw i8, ptr %i.nr, i64 26
  %i.oi = getelementptr inbounds nuw i8, ptr %i.ns, i64 30
  %i.oj = getelementptr inbounds nuw i8, ptr %i.nt, i64 34
  %i.ok = getelementptr inbounds nuw i8, ptr %i.nu, i64 38
  %i.ol = getelementptr inbounds nuw i8, ptr %i.nv, i64 42
  %i.om = getelementptr inbounds nuw i8, ptr %i.nw, i64 46
  %i.on = getelementptr inbounds nuw i8, ptr %i.nx, i64 50
  %i.oo = getelementptr inbounds nuw i8, ptr %i.ny, i64 54
  %i.op = getelementptr inbounds nuw i8, ptr %i.nz, i64 58
  %i.oq = getelementptr inbounds nuw i8, ptr %i.oa, i64 62
  %i.or = load i8, ptr %i.ob, align 1, !tbaa !47, !alias.scope !183
  %i.os = load i8, ptr %i.oc, align 1, !tbaa !47, !alias.scope !183
  %i.ot = load i8, ptr %i.od, align 1, !tbaa !47, !alias.scope !183
  %i.ou = load i8, ptr %i.oe, align 1, !tbaa !47, !alias.scope !183
  %i.ov = load i8, ptr %i.of, align 1, !tbaa !47, !alias.scope !183
  %i.ow = load i8, ptr %i.og, align 1, !tbaa !47, !alias.scope !183
  %i.ox = load i8, ptr %i.oh, align 1, !tbaa !47, !alias.scope !183
  %i.oy = load i8, ptr %i.oi, align 1, !tbaa !47, !alias.scope !183
  %i.oz = load i8, ptr %i.oj, align 1, !tbaa !47, !alias.scope !183
  %i.pa = load i8, ptr %i.ok, align 1, !tbaa !47, !alias.scope !183
  %i.pb = load i8, ptr %i.ol, align 1, !tbaa !47, !alias.scope !183
  %i.pc = load i8, ptr %i.om, align 1, !tbaa !47, !alias.scope !183
  %i.pd = load i8, ptr %i.on, align 1, !tbaa !47, !alias.scope !183
  %i.pe = load i8, ptr %i.oo, align 1, !tbaa !47, !alias.scope !183
  %i.pf = load i8, ptr %i.op, align 1, !tbaa !47, !alias.scope !183
  %i.pg = load i8, ptr %i.oq, align 1, !tbaa !47, !alias.scope !183
  %i.ph = insertelement <16 x i8> poison, i8 %i.or, i64 0
  %i.pi = insertelement <16 x i8> %i.ph, i8 %i.os, i64 1
  %i.pj = insertelement <16 x i8> %i.pi, i8 %i.ot, i64 2
  %i.pk = insertelement <16 x i8> %i.pj, i8 %i.ou, i64 3
  %i.pl = insertelement <16 x i8> %i.pk, i8 %i.ov, i64 4
  %i.pm = insertelement <16 x i8> %i.pl, i8 %i.ow, i64 5
  %i.pn = insertelement <16 x i8> %i.pm, i8 %i.ox, i64 6
  %i.po = insertelement <16 x i8> %i.pn, i8 %i.oy, i64 7
  %i.pp = insertelement <16 x i8> %i.po, i8 %i.oz, i64 8
  %i.pq = insertelement <16 x i8> %i.pp, i8 %i.pa, i64 9
  %i.pr = insertelement <16 x i8> %i.pq, i8 %i.pb, i64 10
  %i.ps = insertelement <16 x i8> %i.pr, i8 %i.pc, i64 11
  %i.pt = insertelement <16 x i8> %i.ps, i8 %i.pd, i64 12
  %i.pu = insertelement <16 x i8> %i.pt, i8 %i.pe, i64 13
  %i.pv = insertelement <16 x i8> %i.pu, i8 %i.pf, i64 14
  %i.pw = insertelement <16 x i8> %i.pv, i8 %i.pg, i64 15
  %i.px = getelementptr i8, ptr %invariant.gep, i64 %index848
  store <16 x i8> %i.pw, ptr %i.px, align 1, !tbaa !47, !alias.scope !184, !noalias !183
  %index.next849 = add nuw i64 %index848, 16      ; 2 uses
  %i.py = icmp eq i64 %index.next849, %n.vec846
  br i1 %i.py, label %vec.epilog.iter.check852, label %vector.body847, !llvm.loop !125

vec.epilog.iter.check852:                         ; preds = %vector.body847
  br i1 %min.epilog.iters.check854, label %.lr.ph564.preheader, label %vec.epilog.ph855, !prof !182

.lr.ph564.preheader:                              ; preds = %vec.epilog.vector.body858, %iter.check851, %vec.epilog.iter.check852
  %.0215563.ph = phi i64 [ 0, %iter.check851 ], [ %n.vec846, %vec.epilog.iter.check852 ], [ %n.vec857, %vec.epilog.vector.body858 ]
  br label %.lr.ph564

vec.epilog.ph855:                                 ; preds = %vector.main.loop.iter.check843, %vec.epilog.iter.check852
  %vec.epilog.resume.val856 = phi i64 [ %n.vec846, %vec.epilog.iter.check852 ], [ 0, %vector.main.loop.iter.check843 ]
  br label %vec.epilog.vector.body858

vec.epilog.vector.body858:                        ; preds = %vec.epilog.vector.body858, %vec.epilog.ph855
  %index859 = phi i64 [ %vec.epilog.resume.val856, %vec.epilog.ph855 ], [ %index.next860, %vec.epilog.vector.body858 ] ; 10 uses
  %i.pz = shl nuw i64 %index859, 2
  %i.qa = shl i64 %index859, 2
  %i.qb = shl i64 %index859, 2
  %i.qc = shl i64 %index859, 2
  %i.qd = shl i64 %index859, 2
  %i.qe = shl i64 %index859, 2
  %i.qf = shl i64 %index859, 2
  %i.qg = shl i64 %index859, 2
  %i.qh = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.pz
  %i.qi = getelementptr i8, ptr %i.hx, i64 %i.qa
  %i.qj = getelementptr i8, ptr %i.hx, i64 %i.qb
  %i.qk = getelementptr i8, ptr %i.hx, i64 %i.qc
  %i.ql = getelementptr i8, ptr %i.hx, i64 %i.qd
  %i.qm = getelementptr i8, ptr %i.hx, i64 %i.qe
  %i.qn = getelementptr i8, ptr %i.hx, i64 %i.qf
  %i.qo = getelementptr i8, ptr %i.hx, i64 %i.qg
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qh, i64 2
  %i.qq = getelementptr i8, ptr %i.qi, i64 6
  %i.qr = getelementptr i8, ptr %i.qj, i64 10
  %i.qs = getelementptr i8, ptr %i.qk, i64 14
  %i.qt = getelementptr i8, ptr %i.ql, i64 18
  %i.qu = getelementptr i8, ptr %i.qm, i64 22
  %i.qv = getelementptr i8, ptr %i.qn, i64 26
  %i.qw = getelementptr i8, ptr %i.qo, i64 30
  %i.qx = load i8, ptr %i.qp, align 1, !tbaa !47, !alias.scope !183
  %i.qy = load i8, ptr %i.qq, align 1, !tbaa !47, !alias.scope !183
  %i.qz = load i8, ptr %i.qr, align 1, !tbaa !47, !alias.scope !183
  %i.ra = load i8, ptr %i.qs, align 1, !tbaa !47, !alias.scope !183
  %i.rb = load i8, ptr %i.qt, align 1, !tbaa !47, !alias.scope !183
  %i.rc = load i8, ptr %i.qu, align 1, !tbaa !47, !alias.scope !183
  %i.rd = load i8, ptr %i.qv, align 1, !tbaa !47, !alias.scope !183
  %i.re = load i8, ptr %i.qw, align 1, !tbaa !47, !alias.scope !183
  %i.rf = insertelement <8 x i8> poison, i8 %i.qx, i64 0
  %i.rg = insertelement <8 x i8> %i.rf, i8 %i.qy, i64 1
  %i.rh = insertelement <8 x i8> %i.rg, i8 %i.qz, i64 2
  %i.ri = insertelement <8 x i8> %i.rh, i8 %i.ra, i64 3
  %i.rj = insertelement <8 x i8> %i.ri, i8 %i.rb, i64 4
  %i.rk = insertelement <8 x i8> %i.rj, i8 %i.rc, i64 5
  %i.rl = insertelement <8 x i8> %i.rk, i8 %i.rd, i64 6
  %i.rm = insertelement <8 x i8> %i.rl, i8 %i.re, i64 7
  %i.rn = getelementptr i8, ptr %invariant.gep, i64 %index859
  store <8 x i8> %i.rm, ptr %i.rn, align 1, !tbaa !47, !alias.scope !184, !noalias !183
  %index.next860 = add nuw i64 %index859, 8       ; 2 uses
  %i.ro = icmp eq i64 %index.next860, %n.vec857
  br i1 %i.ro, label %.lr.ph564.preheader, label %vec.epilog.vector.body858, !llvm.loop !126

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0216562 = phi i64 [ %i.ru, %.lr.ph ], [ %.0216562.ph, %.lr.ph.preheader ] ; 3 uses
  %i.rp = shl nuw i64 %.0216562, 2
  %i.rq = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.rp
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 3
  %i.rs = load i8, ptr %i.rr, align 1, !tbaa !47
  %i.rt = getelementptr inbounds nuw i8, ptr %i.hw, i64 %.0216562
  store i8 %i.rs, ptr %i.rt, align 1, !tbaa !47
  %i.ru = add nuw nsw i64 %.0216562, 1            ; 2 uses
  %i.rv = icmp samesign ult i64 %i.ru, %i.gb
  br i1 %i.rv, label %.lr.ph, label %iter.check851, !llvm.loop !127

iter.check812:                                    ; preds = %.lr.ph564
  %invariant.gep567 = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.gd ; 3 uses
  %brmerge934 = select i1 %min.iters.check798, i1 true, i1 %found.conflict802
  br i1 %brmerge934, label %vec.epilog.scalar.ph814.preheader, label %vector.main.loop.iter.check804

vector.main.loop.iter.check804:                   ; preds = %iter.check812
  br i1 %min.iters.check805, label %vec.epilog.ph816, label %vector.body808

vector.body808:                                   ; preds = %vector.main.loop.iter.check804, %vector.body808
  %index809 = phi i64 [ %index.next810, %vector.body808 ], [ 0, %vector.main.loop.iter.check804 ] ; 18 uses
  %i.rw = shl nuw i64 %index809, 2
  %i.rx = shl i64 %index809, 2
  %i.ry = shl i64 %index809, 2
  %i.rz = shl i64 %index809, 2
  %i.sa = shl i64 %index809, 2
  %i.sb = shl i64 %index809, 2
  %i.sc = shl i64 %index809, 2
  %i.sd = shl i64 %index809, 2
  %i.se = shl i64 %index809, 2
  %i.sf = shl i64 %index809, 2
  %i.sg = shl i64 %index809, 2
  %i.sh = shl i64 %index809, 2
  %i.si = shl i64 %index809, 2
  %i.sj = shl i64 %index809, 2
  %i.sk = shl i64 %index809, 2
  %i.sl = shl i64 %index809, 2
  %i.sm = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.rw
  %i.sn = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.rx
  %i.so = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.ry
  %i.sp = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.rz
  %i.sq = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.sa
  %i.sr = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.sb
  %i.ss = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.sc
  %i.st = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.sd
  %i.su = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.se
  %i.sv = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.sf
  %i.sw = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.sg
  %i.sx = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.sh
  %i.sy = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.si
  %i.sz = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.sj
  %i.ta = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.sk
  %i.tb = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.sl
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sm, i64 1
  %i.td = getelementptr inbounds nuw i8, ptr %i.sn, i64 5
  %i.te = getelementptr inbounds nuw i8, ptr %i.so, i64 9
  %i.tf = getelementptr inbounds nuw i8, ptr %i.sp, i64 13
  %i.tg = getelementptr inbounds nuw i8, ptr %i.sq, i64 17
  %i.th = getelementptr inbounds nuw i8, ptr %i.sr, i64 21
  %i.ti = getelementptr inbounds nuw i8, ptr %i.ss, i64 25
  %i.tj = getelementptr inbounds nuw i8, ptr %i.st, i64 29
  %i.tk = getelementptr inbounds nuw i8, ptr %i.su, i64 33
  %i.tl = getelementptr inbounds nuw i8, ptr %i.sv, i64 37
  %i.tm = getelementptr inbounds nuw i8, ptr %i.sw, i64 41
  %i.tn = getelementptr inbounds nuw i8, ptr %i.sx, i64 45
  %i.to = getelementptr inbounds nuw i8, ptr %i.sy, i64 49
  %i.tp = getelementptr inbounds nuw i8, ptr %i.sz, i64 53
  %i.tq = getelementptr inbounds nuw i8, ptr %i.ta, i64 57
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tb, i64 61
  %i.ts = load i8, ptr %i.tc, align 1, !tbaa !47, !alias.scope !185
  %i.tt = load i8, ptr %i.td, align 1, !tbaa !47, !alias.scope !185
  %i.tu = load i8, ptr %i.te, align 1, !tbaa !47, !alias.scope !185
  %i.tv = load i8, ptr %i.tf, align 1, !tbaa !47, !alias.scope !185
  %i.tw = load i8, ptr %i.tg, align 1, !tbaa !47, !alias.scope !185
  %i.tx = load i8, ptr %i.th, align 1, !tbaa !47, !alias.scope !185
  %i.ty = load i8, ptr %i.ti, align 1, !tbaa !47, !alias.scope !185
  %i.tz = load i8, ptr %i.tj, align 1, !tbaa !47, !alias.scope !185
  %i.ua = load i8, ptr %i.tk, align 1, !tbaa !47, !alias.scope !185
  %i.ub = load i8, ptr %i.tl, align 1, !tbaa !47, !alias.scope !185
  %i.uc = load i8, ptr %i.tm, align 1, !tbaa !47, !alias.scope !185
  %i.ud = load i8, ptr %i.tn, align 1, !tbaa !47, !alias.scope !185
  %i.ue = load i8, ptr %i.to, align 1, !tbaa !47, !alias.scope !185
  %i.uf = load i8, ptr %i.tp, align 1, !tbaa !47, !alias.scope !185
  %i.ug = load i8, ptr %i.tq, align 1, !tbaa !47, !alias.scope !185
  %i.uh = load i8, ptr %i.tr, align 1, !tbaa !47, !alias.scope !185
  %i.ui = insertelement <16 x i8> poison, i8 %i.ts, i64 0
  %i.uj = insertelement <16 x i8> %i.ui, i8 %i.tt, i64 1
  %i.uk = insertelement <16 x i8> %i.uj, i8 %i.tu, i64 2
  %i.ul = insertelement <16 x i8> %i.uk, i8 %i.tv, i64 3
  %i.um = insertelement <16 x i8> %i.ul, i8 %i.tw, i64 4
  %i.un = insertelement <16 x i8> %i.um, i8 %i.tx, i64 5
  %i.uo = insertelement <16 x i8> %i.un, i8 %i.ty, i64 6
  %i.up = insertelement <16 x i8> %i.uo, i8 %i.tz, i64 7
  %i.uq = insertelement <16 x i8> %i.up, i8 %i.ua, i64 8
  %i.ur = insertelement <16 x i8> %i.uq, i8 %i.ub, i64 9
  %i.us = insertelement <16 x i8> %i.ur, i8 %i.uc, i64 10
  %i.ut = insertelement <16 x i8> %i.us, i8 %i.ud, i64 11
  %i.uu = insertelement <16 x i8> %i.ut, i8 %i.ue, i64 12
  %i.uv = insertelement <16 x i8> %i.uu, i8 %i.uf, i64 13
  %i.uw = insertelement <16 x i8> %i.uv, i8 %i.ug, i64 14
  %i.ux = insertelement <16 x i8> %i.uw, i8 %i.uh, i64 15
  %i.uy = getelementptr inbounds nuw i8, ptr %invariant.gep567, i64 %index809
  store <16 x i8> %i.ux, ptr %i.uy, align 1, !tbaa !47, !alias.scope !186, !noalias !185
  %index.next810 = add nuw i64 %index809, 16      ; 2 uses
  %i.uz = icmp eq i64 %index.next810, %n.vec807
  br i1 %i.uz, label %vec.epilog.iter.check813, label %vector.body808, !llvm.loop !131

vec.epilog.iter.check813:                         ; preds = %vector.body808
  br i1 %min.epilog.iters.check815, label %vec.epilog.scalar.ph814.preheader, label %vec.epilog.ph816, !prof !182

vec.epilog.scalar.ph814.preheader:                ; preds = %vec.epilog.vector.body819, %iter.check812, %vec.epilog.iter.check813
  %.0214565.ph = phi i64 [ 0, %iter.check812 ], [ %n.vec807, %vec.epilog.iter.check813 ], [ %n.vec818, %vec.epilog.vector.body819 ]
  br label %vec.epilog.scalar.ph814

vec.epilog.ph816:                                 ; preds = %vector.main.loop.iter.check804, %vec.epilog.iter.check813
  %vec.epilog.resume.val817 = phi i64 [ %n.vec807, %vec.epilog.iter.check813 ], [ 0, %vector.main.loop.iter.check804 ]
  br label %vec.epilog.vector.body819

vec.epilog.vector.body819:                        ; preds = %vec.epilog.vector.body819, %vec.epilog.ph816
  %index820 = phi i64 [ %vec.epilog.resume.val817, %vec.epilog.ph816 ], [ %index.next821, %vec.epilog.vector.body819 ] ; 10 uses
  %i.va = shl nuw i64 %index820, 2
  %i.vb = shl i64 %index820, 2
  %i.vc = shl i64 %index820, 2
  %i.vd = shl i64 %index820, 2
  %i.ve = shl i64 %index820, 2
  %i.vf = shl i64 %index820, 2
  %i.vg = shl i64 %index820, 2
  %i.vh = shl i64 %index820, 2
  %i.vi = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.va
  %i.vj = getelementptr i8, ptr %i.hx, i64 %i.vb
  %i.vk = getelementptr i8, ptr %i.hx, i64 %i.vc
  %i.vl = getelementptr i8, ptr %i.hx, i64 %i.vd
  %i.vm = getelementptr i8, ptr %i.hx, i64 %i.ve
  %i.vn = getelementptr i8, ptr %i.hx, i64 %i.vf
  %i.vo = getelementptr i8, ptr %i.hx, i64 %i.vg
  %i.vp = getelementptr i8, ptr %i.hx, i64 %i.vh
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vi, i64 1
  %i.vr = getelementptr i8, ptr %i.vj, i64 5
  %i.vs = getelementptr i8, ptr %i.vk, i64 9
  %i.vt = getelementptr i8, ptr %i.vl, i64 13
  %i.vu = getelementptr i8, ptr %i.vm, i64 17
  %i.vv = getelementptr i8, ptr %i.vn, i64 21
  %i.vw = getelementptr i8, ptr %i.vo, i64 25
  %i.vx = getelementptr i8, ptr %i.vp, i64 29
  %i.vy = load i8, ptr %i.vq, align 1, !tbaa !47, !alias.scope !185
  %i.vz = load i8, ptr %i.vr, align 1, !tbaa !47, !alias.scope !185
  %i.wa = load i8, ptr %i.vs, align 1, !tbaa !47, !alias.scope !185
  %i.wb = load i8, ptr %i.vt, align 1, !tbaa !47, !alias.scope !185
  %i.wc = load i8, ptr %i.vu, align 1, !tbaa !47, !alias.scope !185
  %i.wd = load i8, ptr %i.vv, align 1, !tbaa !47, !alias.scope !185
  %i.we = load i8, ptr %i.vw, align 1, !tbaa !47, !alias.scope !185
  %i.wf = load i8, ptr %i.vx, align 1, !tbaa !47, !alias.scope !185
  %i.wg = insertelement <8 x i8> poison, i8 %i.vy, i64 0
  %i.wh = insertelement <8 x i8> %i.wg, i8 %i.vz, i64 1
  %i.wi = insertelement <8 x i8> %i.wh, i8 %i.wa, i64 2
  %i.wj = insertelement <8 x i8> %i.wi, i8 %i.wb, i64 3
  %i.wk = insertelement <8 x i8> %i.wj, i8 %i.wc, i64 4
  %i.wl = insertelement <8 x i8> %i.wk, i8 %i.wd, i64 5
  %i.wm = insertelement <8 x i8> %i.wl, i8 %i.we, i64 6
  %i.wn = insertelement <8 x i8> %i.wm, i8 %i.wf, i64 7
  %i.wo = getelementptr inbounds nuw i8, ptr %invariant.gep567, i64 %index820
  store <8 x i8> %i.wn, ptr %i.wo, align 1, !tbaa !47, !alias.scope !186, !noalias !185
  %index.next821 = add nuw i64 %index820, 8       ; 2 uses
  %i.wp = icmp eq i64 %index.next821, %n.vec818
  br i1 %i.wp, label %vec.epilog.scalar.ph814.preheader, label %vec.epilog.vector.body819, !llvm.loop !132

.lr.ph564:                                        ; preds = %.lr.ph564.preheader, %.lr.ph564
  %.0215563 = phi i64 [ %i.wu, %.lr.ph564 ], [ %.0215563.ph, %.lr.ph564.preheader ] ; 3 uses
  %i.wq = shl nuw i64 %.0215563, 2
  %i.wr = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.wq
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 2
  %i.wt = load i8, ptr %i.ws, align 1, !tbaa !47
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.0215563
  store i8 %i.wt, ptr %gep, align 1, !tbaa !47
  %i.wu = add nuw nsw i64 %.0215563, 1            ; 2 uses
  %i.wv = icmp samesign ult i64 %i.wu, %i.gb
  br i1 %i.wv, label %.lr.ph564, label %iter.check812, !llvm.loop !133

iter.check773:                                    ; preds = %vec.epilog.scalar.ph814
  %invariant.gep571 = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.gf ; 3 uses
  %brmerge935 = select i1 %min.iters.check759, i1 true, i1 %found.conflict763
  br i1 %brmerge935, label %vec.epilog.scalar.ph775.preheader, label %vector.main.loop.iter.check765

vector.main.loop.iter.check765:                   ; preds = %iter.check773
  br i1 %min.iters.check766, label %vec.epilog.ph777, label %vector.body769

vector.body769:                                   ; preds = %vector.main.loop.iter.check765, %vector.body769
  %index770 = phi i64 [ %index.next771, %vector.body769 ], [ 0, %vector.main.loop.iter.check765 ] ; 18 uses
  %i.ww = shl nuw i64 %index770, 2
  %i.wx = shl i64 %index770, 2
  %i.wy = shl i64 %index770, 2
  %i.wz = shl i64 %index770, 2
  %i.xa = shl i64 %index770, 2
  %i.xb = shl i64 %index770, 2
  %i.xc = shl i64 %index770, 2
  %i.xd = shl i64 %index770, 2
  %i.xe = shl i64 %index770, 2
  %i.xf = shl i64 %index770, 2
  %i.xg = shl i64 %index770, 2
  %i.xh = shl i64 %index770, 2
  %i.xi = shl i64 %index770, 2
  %i.xj = shl i64 %index770, 2
  %i.xk = shl i64 %index770, 2
  %i.xl = shl i64 %index770, 2
  %i.xm = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.ww
  %i.xn = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.wx
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 4
  %i.xp = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.wy
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 8
  %i.xr = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.wz
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xr, i64 12
  %i.xt = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.xa
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 16
  %i.xv = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.xb
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xv, i64 20
  %i.xx = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.xc
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 24
  %i.xz = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.xd
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xz, i64 28
  %i.yb = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.xe
  %i.yc = getelementptr inbounds nuw i8, ptr %i.yb, i64 32
  %i.yd = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.xf
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 36
  %i.yf = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.xg
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 40
  %i.yh = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.xh
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yh, i64 44
  %i.yj = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.xi
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yj, i64 48
  %i.yl = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.xj
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 52
  %i.yn = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.xk
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yn, i64 56
  %i.yp = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.xl
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 60
  %i.yr = load i8, ptr %i.xm, align 1, !tbaa !47, !alias.scope !187
  %i.ys = load i8, ptr %i.xo, align 1, !tbaa !47, !alias.scope !187
  %i.yt = load i8, ptr %i.xq, align 1, !tbaa !47, !alias.scope !187
  %i.yu = load i8, ptr %i.xs, align 1, !tbaa !47, !alias.scope !187
  %i.yv = load i8, ptr %i.xu, align 1, !tbaa !47, !alias.scope !187
  %i.yw = load i8, ptr %i.xw, align 1, !tbaa !47, !alias.scope !187
  %i.yx = load i8, ptr %i.xy, align 1, !tbaa !47, !alias.scope !187
  %i.yy = load i8, ptr %i.ya, align 1, !tbaa !47, !alias.scope !187
  %i.yz = load i8, ptr %i.yc, align 1, !tbaa !47, !alias.scope !187
  %i.za = load i8, ptr %i.ye, align 1, !tbaa !47, !alias.scope !187
  %i.zb = load i8, ptr %i.yg, align 1, !tbaa !47, !alias.scope !187
  %i.zc = load i8, ptr %i.yi, align 1, !tbaa !47, !alias.scope !187
  %i.zd = load i8, ptr %i.yk, align 1, !tbaa !47, !alias.scope !187
  %i.ze = load i8, ptr %i.ym, align 1, !tbaa !47, !alias.scope !187
  %i.zf = load i8, ptr %i.yo, align 1, !tbaa !47, !alias.scope !187
  %i.zg = load i8, ptr %i.yq, align 1, !tbaa !47, !alias.scope !187
  %i.zh = insertelement <16 x i8> poison, i8 %i.yr, i64 0
  %i.zi = insertelement <16 x i8> %i.zh, i8 %i.ys, i64 1
  %i.zj = insertelement <16 x i8> %i.zi, i8 %i.yt, i64 2
  %i.zk = insertelement <16 x i8> %i.zj, i8 %i.yu, i64 3
  %i.zl = insertelement <16 x i8> %i.zk, i8 %i.yv, i64 4
  %i.zm = insertelement <16 x i8> %i.zl, i8 %i.yw, i64 5
  %i.zn = insertelement <16 x i8> %i.zm, i8 %i.yx, i64 6
  %i.zo = insertelement <16 x i8> %i.zn, i8 %i.yy, i64 7
  %i.zp = insertelement <16 x i8> %i.zo, i8 %i.yz, i64 8
  %i.zq = insertelement <16 x i8> %i.zp, i8 %i.za, i64 9
  %i.zr = insertelement <16 x i8> %i.zq, i8 %i.zb, i64 10
  %i.zs = insertelement <16 x i8> %i.zr, i8 %i.zc, i64 11
  %i.zt = insertelement <16 x i8> %i.zs, i8 %i.zd, i64 12
  %i.zu = insertelement <16 x i8> %i.zt, i8 %i.ze, i64 13
  %i.zv = insertelement <16 x i8> %i.zu, i8 %i.zf, i64 14
  %i.zw = insertelement <16 x i8> %i.zv, i8 %i.zg, i64 15
  %i.zx = getelementptr inbounds nuw i8, ptr %invariant.gep571, i64 %index770
  store <16 x i8> %i.zw, ptr %i.zx, align 1, !tbaa !47, !alias.scope !188, !noalias !187
  %index.next771 = add nuw i64 %index770, 16      ; 2 uses
  %i.zy = icmp eq i64 %index.next771, %n.vec768
  br i1 %i.zy, label %vec.epilog.iter.check774, label %vector.body769, !llvm.loop !137

vec.epilog.iter.check774:                         ; preds = %vector.body769
  br i1 %min.epilog.iters.check776, label %vec.epilog.scalar.ph775.preheader, label %vec.epilog.ph777, !prof !182

vec.epilog.scalar.ph775.preheader:                ; preds = %vec.epilog.vector.body780, %iter.check773, %vec.epilog.iter.check774
  %.0213569.ph = phi i64 [ 0, %iter.check773 ], [ %n.vec768, %vec.epilog.iter.check774 ], [ %n.vec779, %vec.epilog.vector.body780 ]
  br label %vec.epilog.scalar.ph775

vec.epilog.ph777:                                 ; preds = %vector.main.loop.iter.check765, %vec.epilog.iter.check774
  %vec.epilog.resume.val778 = phi i64 [ %n.vec768, %vec.epilog.iter.check774 ], [ 0, %vector.main.loop.iter.check765 ]
  br label %vec.epilog.vector.body780

vec.epilog.vector.body780:                        ; preds = %vec.epilog.vector.body780, %vec.epilog.ph777
  %index781 = phi i64 [ %vec.epilog.resume.val778, %vec.epilog.ph777 ], [ %index.next782, %vec.epilog.vector.body780 ] ; 10 uses
  %i.zz = shl nuw i64 %index781, 2
  %i.aaa = shl i64 %index781, 2
  %i.aab = shl i64 %index781, 2
  %i.aac = shl i64 %index781, 2
  %i.aad = shl i64 %index781, 2
  %i.aae = shl i64 %index781, 2
  %i.aaf = shl i64 %index781, 2
  %i.aag = shl i64 %index781, 2
  %i.aah = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.zz
  %i.aai = getelementptr i8, ptr %i.hx, i64 %i.aaa
  %i.aaj = getelementptr i8, ptr %i.aai, i64 4
  %i.aak = getelementptr i8, ptr %i.hx, i64 %i.aab
  %i.aal = getelementptr i8, ptr %i.aak, i64 8
  %i.aam = getelementptr i8, ptr %i.hx, i64 %i.aac
  %i.aan = getelementptr i8, ptr %i.aam, i64 12
  %i.aao = getelementptr i8, ptr %i.hx, i64 %i.aad
  %i.aap = getelementptr i8, ptr %i.aao, i64 16
  %i.aaq = getelementptr i8, ptr %i.hx, i64 %i.aae
  %i.aar = getelementptr i8, ptr %i.aaq, i64 20
  %i.aas = getelementptr i8, ptr %i.hx, i64 %i.aaf
  %i.aat = getelementptr i8, ptr %i.aas, i64 24
  %i.aau = getelementptr i8, ptr %i.hx, i64 %i.aag
  %i.aav = getelementptr i8, ptr %i.aau, i64 28
  %i.aaw = load i8, ptr %i.aah, align 1, !tbaa !47, !alias.scope !187
  %i.aax = load i8, ptr %i.aaj, align 1, !tbaa !47, !alias.scope !187
  %i.aay = load i8, ptr %i.aal, align 1, !tbaa !47, !alias.scope !187
  %i.aaz = load i8, ptr %i.aan, align 1, !tbaa !47, !alias.scope !187
  %i.aba = load i8, ptr %i.aap, align 1, !tbaa !47, !alias.scope !187
  %i.abb = load i8, ptr %i.aar, align 1, !tbaa !47, !alias.scope !187
  %i.abc = load i8, ptr %i.aat, align 1, !tbaa !47, !alias.scope !187
  %i.abd = load i8, ptr %i.aav, align 1, !tbaa !47, !alias.scope !187
  %i.abe = insertelement <8 x i8> poison, i8 %i.aaw, i64 0
  %i.abf = insertelement <8 x i8> %i.abe, i8 %i.aax, i64 1
  %i.abg = insertelement <8 x i8> %i.abf, i8 %i.aay, i64 2
  %i.abh = insertelement <8 x i8> %i.abg, i8 %i.aaz, i64 3
  %i.abi = insertelement <8 x i8> %i.abh, i8 %i.aba, i64 4
  %i.abj = insertelement <8 x i8> %i.abi, i8 %i.abb, i64 5
  %i.abk = insertelement <8 x i8> %i.abj, i8 %i.abc, i64 6
  %i.abl = insertelement <8 x i8> %i.abk, i8 %i.abd, i64 7
  %i.abm = getelementptr inbounds nuw i8, ptr %invariant.gep571, i64 %index781
  store <8 x i8> %i.abl, ptr %i.abm, align 1, !tbaa !47, !alias.scope !188, !noalias !187
  %index.next782 = add nuw i64 %index781, 8       ; 2 uses
  %i.abn = icmp eq i64 %index.next782, %n.vec779
  br i1 %i.abn, label %vec.epilog.scalar.ph775.preheader, label %vec.epilog.vector.body780, !llvm.loop !138

vec.epilog.scalar.ph814:                          ; preds = %vec.epilog.scalar.ph814.preheader, %vec.epilog.scalar.ph814
  %.0214565 = phi i64 [ %i.abs, %vec.epilog.scalar.ph814 ], [ %.0214565.ph, %vec.epilog.scalar.ph814.preheader ] ; 3 uses
  %i.abo = shl nuw i64 %.0214565, 2
  %i.abp = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.abo
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abp, i64 1
  %i.abr = load i8, ptr %i.abq, align 1, !tbaa !47
  %gep568 = getelementptr inbounds nuw i8, ptr %invariant.gep567, i64 %.0214565
  store i8 %i.abr, ptr %gep568, align 1, !tbaa !47
  %i.abs = add nuw nsw i64 %.0214565, 1           ; 2 uses
  %i.abt = icmp samesign ult i64 %i.abs, %i.gb
  br i1 %i.abt, label %vec.epilog.scalar.ph814, label %iter.check773, !llvm.loop !139

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph775, %.preheader448
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread428.thread440, label %.preheader448, !llvm.loop !140

vec.epilog.scalar.ph775:                          ; preds = %vec.epilog.scalar.ph775.preheader, %vec.epilog.scalar.ph775
  %.0213569 = phi i64 [ %i.abx, %vec.epilog.scalar.ph775 ], [ %.0213569.ph, %vec.epilog.scalar.ph775.preheader ] ; 3 uses
  %i.abu = shl nuw i64 %.0213569, 2
  %i.abv = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.abu
  %i.abw = load i8, ptr %i.abv, align 1, !tbaa !47
  %gep572 = getelementptr inbounds nuw i8, ptr %invariant.gep571, i64 %.0213569
  store i8 %i.abw, ptr %gep572, align 1, !tbaa !47
  %i.abx = add nuw nsw i64 %.0213569, 1           ; 2 uses
  %i.aby = icmp samesign ult i64 %i.abx, %i.gb
  br i1 %i.aby, label %vec.epilog.scalar.ph775, label %._crit_edge, !llvm.loop !141

.thread428:                                       ; preds = %bb.bf
  br i1 %i.cj, label %.thread428.thread, label %.thread428.thread440

.thread428.thread:                                ; preds = %bb.ba, %.thread428
  %.0218430439 = phi ptr [ %i.fk, %.thread428 ], [ %.0223, %bb.ba ] ; 5 uses
  br i1 %.not295, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %.thread428.thread
  %i.abz = call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.abz, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 527, ptr noundef nonnull @.str.2)
          to label %.invoke678 unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.aca = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.abz) #25
  br label %.body393

bb.bo:                                            ; preds = %.thread428.thread
  %i.acb = invoke noundef zeroext i16 @_ZNK4gdcm11PixelFormat18GetSamplesPerPixelEv(ptr noundef nonnull align 2 dereferenceable(10) %i.ac)
          to label %bb.bp unwind label %.loopexit.split-lp466.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.bp:                                            ; preds = %bb.bo
  %.not605 = icmp eq i16 %i.acb, 0
  br i1 %.not605, label %.thread428.thread440, label %.lr.ph585

.lr.ph585:                                        ; preds = %bb.bp
  %i.acc = zext i16 %i.acb to i64                 ; 2 uses
  %i.acd = udiv i64 %.1232421, %i.acc             ; 10 uses
  %i.ace = and i64 %i.acd, 1
  %i.acf = icmp eq i64 %i.ace, 0
  %i.acg = lshr i64 %i.acd, 1                     ; 7 uses
  br i1 %i.acf, label %.lr.ph585.split, label %bb.bq

.lr.ph585.split:                                  ; preds = %.lr.ph585
  %.not607 = icmp ult i64 %.1232421, %i.acc
  br i1 %.not607, label %.thread428.thread440, label %.preheader444.us.preheader

.preheader444.us.preheader:                       ; preds = %.lr.ph585.split
  %wide.trip.count625 = zext i16 %i.acb to i64
  %scevgep = getelementptr i8, ptr %.0218430439, i64 1
  %umax721 = call i64 @llvm.umax.i64(i64 %i.acg, i64 1) ; 4 uses
  %min.iters.check722 = icmp ult i64 %i.acd, 18
  %i.ach = getelementptr i8, ptr %.0224, i64 %i.acg
  %i.aci = getelementptr i8, ptr %.0218430439, i64 %i.acd
  %bound0724 = icmp ult ptr %.0224, %i.aci
  %bound1725 = icmp ult ptr %scevgep, %i.ach
  %found.conflict726 = and i1 %bound0724, %bound1725
  %min.iters.check729 = icmp ult i64 %i.acd, 34
  %i.acj = and i64 %umax721, 15                   ; 2 uses
  %i.ack = icmp eq i64 %i.acj, 0
  %i.acl = select i1 %i.ack, i64 16, i64 %i.acj   ; 2 uses
  %n.vec731 = sub nsw i64 %umax721, %i.acl        ; 3 uses
  %min.epilog.iters.check739 = icmp samesign ult i64 %i.acl, 9
  %i.acm = and i64 %umax721, 7                    ; 2 uses
  %i.acn = icmp eq i64 %i.acm, 0
  %i.aco = select i1 %i.acn, i64 8, i64 %i.acm
  %n.vec742 = sub nsw i64 %umax721, %i.aco        ; 2 uses
  %umax = call i64 @llvm.umax.i64(i64 %i.acg, i64 1) ; 4 uses
  %min.iters.check = icmp ult i64 %i.acd, 18
  %i.acp = getelementptr i8, ptr %.0224, i64 %i.acg
  %i.acq = getelementptr i8, ptr %.0224, i64 %i.acd
  %i.acr = getelementptr i8, ptr %.0218430439, i64 %i.acd
  %i.acs = getelementptr i8, ptr %i.acr, i64 -1
  %bound0 = icmp ult ptr %i.acp, %i.acs
  %bound1 = icmp ult ptr %.0218430439, %i.acq
  %found.conflict = and i1 %bound0, %bound1
  %min.iters.check709 = icmp ult i64 %i.acd, 34
  %i.act = and i64 %umax, 15                      ; 2 uses
  %i.acu = icmp eq i64 %i.act, 0
  %i.acv = select i1 %i.acu, i64 16, i64 %i.act   ; 2 uses
  %n.vec = sub nsw i64 %umax, %i.acv              ; 3 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.acv, 9
  %i.acw = and i64 %umax, 7                       ; 2 uses
  %i.acx = icmp eq i64 %i.acw, 0
  %i.acy = select i1 %i.acx, i64 8, i64 %i.acw
  %n.vec710 = sub nsw i64 %umax, %i.acy           ; 2 uses
  br label %iter.check736

iter.check736:                                    ; preds = %.preheader444.us.preheader, %._crit_edge582.us
  %indvars.iv622 = phi i64 [ 0, %.preheader444.us.preheader ], [ %indvars.iv.next623, %._crit_edge582.us ] ; 2 uses
  %i.acz = mul i64 %i.acd, %indvars.iv622         ; 2 uses
  %i.ada = getelementptr inbounds nuw i8, ptr %.0224, i64 %i.acz ; 4 uses
  %i.adb = getelementptr inbounds nuw i8, ptr %.0218430439, i64 %i.acz ; 50 uses
  %brmerge936 = select i1 %min.iters.check722, i1 true, i1 %found.conflict726
  br i1 %brmerge936, label %vec.epilog.scalar.ph738.preheader, label %vector.main.loop.iter.check728

vector.main.loop.iter.check728:                   ; preds = %iter.check736
  br i1 %min.iters.check729, label %vec.epilog.ph740, label %vector.body732

vector.body732:                                   ; preds = %vector.main.loop.iter.check728, %vector.body732
  %index733 = phi i64 [ %index.next734, %vector.body732 ], [ 0, %vector.main.loop.iter.check728 ] ; 18 uses
  %i.adc = shl nuw i64 %index733, 1
  %i.add = shl i64 %index733, 1
  %i.ade = shl i64 %index733, 1
  %i.adf = shl i64 %index733, 1
  %i.adg = shl i64 %index733, 1
  %i.adh = shl i64 %index733, 1
  %i.adi = shl i64 %index733, 1
  %i.adj = shl i64 %index733, 1
  %i.adk = shl i64 %index733, 1
  %i.adl = shl i64 %index733, 1
  %i.adm = shl i64 %index733, 1
  %i.adn = shl i64 %index733, 1
  %i.ado = shl i64 %index733, 1
  %i.adp = shl i64 %index733, 1
  %i.adq = shl i64 %index733, 1
  %i.adr = shl i64 %index733, 1
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adb, i64 %i.adc
  %i.adt = getelementptr inbounds nuw i8, ptr %i.adb, i64 %i.add
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adb, i64 %i.ade
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adb, i64 %i.adf
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adb, i64 %i.adg
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adb, i64 %i.adh
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adb, i64 %i.adi
  %i.adz = getelementptr inbounds nuw i8, ptr %i.adb, i64 %i.adj
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adb, i64 %i.adk
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.adb, i64 %i.adl
  %i.aec = getelementptr inbounds nuw i8, ptr %i.adb, i64 %i.adm
  %i.aed = getelementptr inbounds nuw i8, ptr %i.adb, i64 %i.adn
  %i.aee = getelementptr inbounds nuw i8, ptr %i.adb, i64 %i.ado
  %i.aef = getelementptr inbounds nuw i8, ptr %i.adb, i64 %i.adp
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.adb, i64 %i.adq
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.adb, i64 %i.adr
  %i.aei = getelementptr inbounds nuw i8, ptr %i.ads, i64 1
  %i.aej = getelementptr inbounds nuw i8, ptr %i.adt, i64 3
  %i.aek = getelementptr inbounds nuw i8, ptr %i.adu, i64 5
  %i.ael = getelementptr inbounds nuw i8, ptr %i.adv, i64 7
  %i.aem = getelementptr inbounds nuw i8, ptr %i.adw, i64 9
  %i.aen = getelementptr inbounds nuw i8, ptr %i.adx, i64 11
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.ady, i64 13
  %i.aep = getelementptr inbounds nuw i8, ptr %i.adz, i64 15
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aea, i64 17
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aeb, i64 19
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aec, i64 21
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aed, i64 23
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aee, i64 25
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aef, i64 27
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aeg, i64 29
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aeh, i64 31
  %i.aey = load i8, ptr %i.aei, align 1, !tbaa !47, !alias.scope !189
  %i.aez = load i8, ptr %i.aej, align 1, !tbaa !47, !alias.scope !189
  %i.afa = load i8, ptr %i.aek, align 1, !tbaa !47, !alias.scope !189
  %i.afb = load i8, ptr %i.ael, align 1, !tbaa !47, !alias.scope !189
  %i.afc = load i8, ptr %i.aem, align 1, !tbaa !47, !alias.scope !189
  %i.afd = load i8, ptr %i.aen, align 1, !tbaa !47, !alias.scope !189
  %i.afe = load i8, ptr %i.aeo, align 1, !tbaa !47, !alias.scope !189
  %i.aff = load i8, ptr %i.aep, align 1, !tbaa !47, !alias.scope !189
  %i.afg = load i8, ptr %i.aeq, align 1, !tbaa !47, !alias.scope !189
  %i.afh = load i8, ptr %i.aer, align 1, !tbaa !47, !alias.scope !189
  %i.afi = load i8, ptr %i.aes, align 1, !tbaa !47, !alias.scope !189
  %i.afj = load i8, ptr %i.aet, align 1, !tbaa !47, !alias.scope !189
  %i.afk = load i8, ptr %i.aeu, align 1, !tbaa !47, !alias.scope !189
  %i.afl = load i8, ptr %i.aev, align 1, !tbaa !47, !alias.scope !189
  %i.afm = load i8, ptr %i.aew, align 1, !tbaa !47, !alias.scope !189
  %i.afn = load i8, ptr %i.aex, align 1, !tbaa !47, !alias.scope !189
  %i.afo = insertelement <16 x i8> poison, i8 %i.aey, i64 0
  %i.afp = insertelement <16 x i8> %i.afo, i8 %i.aez, i64 1
  %i.afq = insertelement <16 x i8> %i.afp, i8 %i.afa, i64 2
  %i.afr = insertelement <16 x i8> %i.afq, i8 %i.afb, i64 3
  %i.afs = insertelement <16 x i8> %i.afr, i8 %i.afc, i64 4
  %i.aft = insertelement <16 x i8> %i.afs, i8 %i.afd, i64 5
  %i.afu = insertelement <16 x i8> %i.aft, i8 %i.afe, i64 6
  %i.afv = insertelement <16 x i8> %i.afu, i8 %i.aff, i64 7
  %i.afw = insertelement <16 x i8> %i.afv, i8 %i.afg, i64 8
  %i.afx = insertelement <16 x i8> %i.afw, i8 %i.afh, i64 9
  %i.afy = insertelement <16 x i8> %i.afx, i8 %i.afi, i64 10
  %i.afz = insertelement <16 x i8> %i.afy, i8 %i.afj, i64 11
  %i.aga = insertelement <16 x i8> %i.afz, i8 %i.afk, i64 12
  %i.agb = insertelement <16 x i8> %i.aga, i8 %i.afl, i64 13
  %i.agc = insertelement <16 x i8> %i.agb, i8 %i.afm, i64 14
  %i.agd = insertelement <16 x i8> %i.agc, i8 %i.afn, i64 15
  %i.age = getelementptr inbounds nuw i8, ptr %i.ada, i64 %index733
  store <16 x i8> %i.agd, ptr %i.age, align 1, !tbaa !47, !alias.scope !190, !noalias !189
  %index.next734 = add nuw i64 %index733, 16      ; 2 uses
  %i.agf = icmp eq i64 %index.next734, %n.vec731
  br i1 %i.agf, label %vec.epilog.iter.check737, label %vector.body732, !llvm.loop !145

vec.epilog.iter.check737:                         ; preds = %vector.body732
  br i1 %min.epilog.iters.check739, label %vec.epilog.scalar.ph738.preheader, label %vec.epilog.ph740, !prof !182

vec.epilog.ph740:                                 ; preds = %vector.main.loop.iter.check728, %vec.epilog.iter.check737
  %vec.epilog.resume.val741 = phi i64 [ %n.vec731, %vec.epilog.iter.check737 ], [ 0, %vector.main.loop.iter.check728 ]
  br label %vec.epilog.vector.body743

vec.epilog.vector.body743:                        ; preds = %vec.epilog.vector.body743, %vec.epilog.ph740
  %index744 = phi i64 [ %vec.epilog.resume.val741, %vec.epilog.ph740 ], [ %index.next745, %vec.epilog.vector.body743 ] ; 10 uses
  %i.agg = shl nuw i64 %index744, 1
  %i.agh = shl i64 %index744, 1
  %i.agi = shl i64 %index744, 1
  %i.agj = shl i64 %index744, 1
  %i.agk = shl i64 %index744, 1
  %i.agl = shl i64 %index744, 1
  %i.agm = shl i64 %index744, 1
  %i.agn = shl i64 %index744, 1
  %i.ago = getelementptr inbounds nuw i8, ptr %i.adb, i64 %i.agg
  %i.agp = getelementptr i8, ptr %i.adb, i64 %i.agh
  %i.agq = getelementptr i8, ptr %i.adb, i64 %i.agi
  %i.agr = getelementptr i8, ptr %i.adb, i64 %i.agj
  %i.ags = getelementptr i8, ptr %i.adb, i64 %i.agk
  %i.agt = getelementptr i8, ptr %i.adb, i64 %i.agl
  %i.agu = getelementptr i8, ptr %i.adb, i64 %i.agm
  %i.agv = getelementptr i8, ptr %i.adb, i64 %i.agn
  %i.agw = getelementptr inbounds nuw i8, ptr %i.ago, i64 1
  %i.agx = getelementptr i8, ptr %i.agp, i64 3
  %i.agy = getelementptr i8, ptr %i.agq, i64 5
  %i.agz = getelementptr i8, ptr %i.agr, i64 7
  %i.aha = getelementptr i8, ptr %i.ags, i64 9
  %i.ahb = getelementptr i8, ptr %i.agt, i64 11
  %i.ahc = getelementptr i8, ptr %i.agu, i64 13
  %i.ahd = getelementptr i8, ptr %i.agv, i64 15
  %i.ahe = load i8, ptr %i.agw, align 1, !tbaa !47, !alias.scope !189
  %i.ahf = load i8, ptr %i.agx, align 1, !tbaa !47, !alias.scope !189
  %i.ahg = load i8, ptr %i.agy, align 1, !tbaa !47, !alias.scope !189
  %i.ahh = load i8, ptr %i.agz, align 1, !tbaa !47, !alias.scope !189
  %i.ahi = load i8, ptr %i.aha, align 1, !tbaa !47, !alias.scope !189
  %i.ahj = load i8, ptr %i.ahb, align 1, !tbaa !47, !alias.scope !189
  %i.ahk = load i8, ptr %i.ahc, align 1, !tbaa !47, !alias.scope !189
  %i.ahl = load i8, ptr %i.ahd, align 1, !tbaa !47, !alias.scope !189
  %i.ahm = insertelement <8 x i8> poison, i8 %i.ahe, i64 0
  %i.ahn = insertelement <8 x i8> %i.ahm, i8 %i.ahf, i64 1
  %i.aho = insertelement <8 x i8> %i.ahn, i8 %i.ahg, i64 2
  %i.ahp = insertelement <8 x i8> %i.aho, i8 %i.ahh, i64 3
  %i.ahq = insertelement <8 x i8> %i.ahp, i8 %i.ahi, i64 4
  %i.ahr = insertelement <8 x i8> %i.ahq, i8 %i.ahj, i64 5
  %i.ahs = insertelement <8 x i8> %i.ahr, i8 %i.ahk, i64 6
  %i.aht = insertelement <8 x i8> %i.ahs, i8 %i.ahl, i64 7
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.ada, i64 %index744
  store <8 x i8> %i.aht, ptr %i.ahu, align 1, !tbaa !47, !alias.scope !190, !noalias !189
  %index.next745 = add nuw i64 %index744, 8       ; 2 uses
  %i.ahv = icmp eq i64 %index.next745, %n.vec742
  br i1 %i.ahv, label %vec.epilog.scalar.ph738.preheader, label %vec.epilog.vector.body743, !llvm.loop !146

vec.epilog.scalar.ph738.preheader:                ; preds = %vec.epilog.vector.body743, %iter.check736, %vec.epilog.iter.check737
  %.0211576.us.ph = phi i64 [ 0, %iter.check736 ], [ %n.vec731, %vec.epilog.iter.check737 ], [ %n.vec742, %vec.epilog.vector.body743 ]
  br label %vec.epilog.scalar.ph738

vec.epilog.scalar.ph738:                          ; preds = %vec.epilog.scalar.ph738.preheader, %vec.epilog.scalar.ph738
  %.0211576.us = phi i64 [ %i.aib, %vec.epilog.scalar.ph738 ], [ %.0211576.us.ph, %vec.epilog.scalar.ph738.preheader ] ; 3 uses
  %i.ahw = shl nuw i64 %.0211576.us, 1
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.adb, i64 %i.ahw
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahx, i64 1
  %i.ahz = load i8, ptr %i.ahy, align 1, !tbaa !47
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ada, i64 %.0211576.us
  store i8 %i.ahz, ptr %i.aia, align 1, !tbaa !47
  %i.aib = add nuw nsw i64 %.0211576.us, 1        ; 2 uses
  %i.aic = icmp samesign ult i64 %i.aib, %i.acg
  br i1 %i.aic, label %vec.epilog.scalar.ph738, label %iter.check, !llvm.loop !147

.lr.ph581.us:                                     ; preds = %.lr.ph581.us.preheader, %.lr.ph581.us
  %.0210580.us = phi i64 [ %i.aig, %.lr.ph581.us ], [ %.0210580.us.ph, %.lr.ph581.us.preheader ] ; 3 uses
  %i.aid = shl nuw i64 %.0210580.us, 1
  %i.aie = getelementptr inbounds nuw i8, ptr %i.adb, i64 %i.aid
  %i.aif = load i8, ptr %i.aie, align 1, !tbaa !47
  %gep579.us = getelementptr i8, ptr %invariant.gep578.us, i64 %.0210580.us
  store i8 %i.aif, ptr %gep579.us, align 1, !tbaa !47
  %i.aig = add nuw nsw i64 %.0210580.us, 1        ; 2 uses
  %i.aih = icmp samesign ult i64 %i.aig, %i.acg
  br i1 %i.aih, label %.lr.ph581.us, label %._crit_edge582.us, !llvm.loop !148

._crit_edge582.us:                                ; preds = %.lr.ph581.us
  %indvars.iv.next623 = add nuw nsw i64 %indvars.iv622, 1 ; 2 uses
  %exitcond626.not = icmp eq i64 %indvars.iv.next623, %wide.trip.count625
  br i1 %exitcond626.not, label %.thread428.thread440, label %iter.check736, !llvm.loop !149

iter.check:                                       ; preds = %vec.epilog.scalar.ph738
  %invariant.gep578.us = getelementptr i8, ptr %i.ada, i64 %i.acg ; 3 uses
  %brmerge937 = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge937, label %.lr.ph581.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check709, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 18 uses
  %i.aii = shl nuw i64 %index, 1
  %i.aij = shl i64 %index, 1
  %i.aik = shl i64 %index, 1
  %i.ail = shl i64 %index, 1
  %i.aim = shl i64 %index, 1
  %i.ain = shl i64 %index, 1
  %i.aio = shl i64 %index, 1
  %i.aip = shl i64 %index, 1
  %i.aiq = shl i64 %index, 1
  %i.air = shl i64 %index, 1
  %i.ais = shl i64 %index, 1
  %i.ait = shl i64 %index, 1
  %i.aiu = shl i64 %index, 1
  %i.aiv = shl i64 %index, 1
  %i.aiw = shl i64 %index, 1
  %i.aix = shl i64 %index, 1
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.adb, i64 %i.aii
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.adb, i64 %i.aij
  %i.aja = getelementptr inbounds nuw i8, ptr %i.aiz, i64 2
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.adb, i64 %i.aik
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.ajb, i64 4
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.adb, i64 %i.ail
  %i.aje = getelementptr inbounds nuw i8, ptr %i.ajd, i64 6
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.adb, i64 %i.aim
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.ajf, i64 8
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.adb, i64 %i.ain
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajh, i64 10
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.adb, i64 %i.aio
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.ajj, i64 12
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.adb, i64 %i.aip
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ajl, i64 14
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.adb, i64 %i.aiq
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ajn, i64 16
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.adb, i64 %i.air
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ajp, i64 18
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.adb, i64 %i.ais
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajr, i64 20
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.adb, i64 %i.ait
  %i.aju = getelementptr inbounds nuw i8, ptr %i.ajt, i64 22
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.adb, i64 %i.aiu
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajv, i64 24
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.adb, i64 %i.aiv
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ajx, i64 26
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.adb, i64 %i.aiw
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajz, i64 28
  %i.akb = getelementptr inbounds nuw i8, ptr %i.adb, i64 %i.aix
  %i.akc = getelementptr inbounds nuw i8, ptr %i.akb, i64 30
  %i.akd = load i8, ptr %i.aiy, align 1, !tbaa !47, !alias.scope !191
  %i.ake = load i8, ptr %i.aja, align 1, !tbaa !47, !alias.scope !191
  %i.akf = load i8, ptr %i.ajc, align 1, !tbaa !47, !alias.scope !191
  %i.akg = load i8, ptr %i.aje, align 1, !tbaa !47, !alias.scope !191
  %i.akh = load i8, ptr %i.ajg, align 1, !tbaa !47, !alias.scope !191
  %i.aki = load i8, ptr %i.aji, align 1, !tbaa !47, !alias.scope !191
  %i.akj = load i8, ptr %i.ajk, align 1, !tbaa !47, !alias.scope !191
  %i.akk = load i8, ptr %i.ajm, align 1, !tbaa !47, !alias.scope !191
  %i.akl = load i8, ptr %i.ajo, align 1, !tbaa !47, !alias.scope !191
  %i.akm = load i8, ptr %i.ajq, align 1, !tbaa !47, !alias.scope !191
  %i.akn = load i8, ptr %i.ajs, align 1, !tbaa !47, !alias.scope !191
  %i.ako = load i8, ptr %i.aju, align 1, !tbaa !47, !alias.scope !191
  %i.akp = load i8, ptr %i.ajw, align 1, !tbaa !47, !alias.scope !191
  %i.akq = load i8, ptr %i.ajy, align 1, !tbaa !47, !alias.scope !191
  %i.akr = load i8, ptr %i.aka, align 1, !tbaa !47, !alias.scope !191
  %i.aks = load i8, ptr %i.akc, align 1, !tbaa !47, !alias.scope !191
  %i.akt = insertelement <16 x i8> poison, i8 %i.akd, i64 0
  %i.aku = insertelement <16 x i8> %i.akt, i8 %i.ake, i64 1
  %i.akv = insertelement <16 x i8> %i.aku, i8 %i.akf, i64 2
  %i.akw = insertelement <16 x i8> %i.akv, i8 %i.akg, i64 3
  %i.akx = insertelement <16 x i8> %i.akw, i8 %i.akh, i64 4
  %i.aky = insertelement <16 x i8> %i.akx, i8 %i.aki, i64 5
  %i.akz = insertelement <16 x i8> %i.aky, i8 %i.akj, i64 6
  %i.ala = insertelement <16 x i8> %i.akz, i8 %i.akk, i64 7
  %i.alb = insertelement <16 x i8> %i.ala, i8 %i.akl, i64 8
  %i.alc = insertelement <16 x i8> %i.alb, i8 %i.akm, i64 9
  %i.ald = insertelement <16 x i8> %i.alc, i8 %i.akn, i64 10
  %i.ale = insertelement <16 x i8> %i.ald, i8 %i.ako, i64 11
  %i.alf = insertelement <16 x i8> %i.ale, i8 %i.akp, i64 12
  %i.alg = insertelement <16 x i8> %i.alf, i8 %i.akq, i64 13
  %i.alh = insertelement <16 x i8> %i.alg, i8 %i.akr, i64 14
  %i.ali = insertelement <16 x i8> %i.alh, i8 %i.aks, i64 15
  %i.alj = getelementptr i8, ptr %invariant.gep578.us, i64 %index
  store <16 x i8> %i.ali, ptr %i.alj, align 1, !tbaa !47, !alias.scope !192, !noalias !191
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.alk = icmp eq i64 %index.next, %n.vec
  br i1 %i.alk, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !153

vec.epilog.iter.check:                            ; preds = %vector.body
  br i1 %min.epilog.iters.check, label %.lr.ph581.us.preheader, label %vec.epilog.ph, !prof !182

.lr.ph581.us.preheader:                           ; preds = %vec.epilog.vector.body, %iter.check, %vec.epilog.iter.check
  %.0210580.us.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec710, %vec.epilog.vector.body ]
  br label %.lr.ph581.us

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index711 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next712, %vec.epilog.vector.body ] ; 10 uses
  %i.all = shl nuw i64 %index711, 1
  %i.alm = shl i64 %index711, 1
  %i.aln = shl i64 %index711, 1
  %i.alo = shl i64 %index711, 1
  %i.alp = shl i64 %index711, 1
  %i.alq = shl i64 %index711, 1
  %i.alr = shl i64 %index711, 1
  %i.als = shl i64 %index711, 1
  %i.alt = getelementptr inbounds nuw i8, ptr %i.adb, i64 %i.all
  %i.alu = getelementptr i8, ptr %i.adb, i64 %i.alm
  %i.alv = getelementptr i8, ptr %i.alu, i64 2
  %i.alw = getelementptr i8, ptr %i.adb, i64 %i.aln
  %i.alx = getelementptr i8, ptr %i.alw, i64 4
  %i.aly = getelementptr i8, ptr %i.adb, i64 %i.alo
  %i.alz = getelementptr i8, ptr %i.aly, i64 6
  %i.ama = getelementptr i8, ptr %i.adb, i64 %i.alp
  %i.amb = getelementptr i8, ptr %i.ama, i64 8
  %i.amc = getelementptr i8, ptr %i.adb, i64 %i.alq
  %i.amd = getelementptr i8, ptr %i.amc, i64 10
  %i.ame = getelementptr i8, ptr %i.adb, i64 %i.alr
  %i.amf = getelementptr i8, ptr %i.ame, i64 12
  %i.amg = getelementptr i8, ptr %i.adb, i64 %i.als
  %i.amh = getelementptr i8, ptr %i.amg, i64 14
  %i.ami = load i8, ptr %i.alt, align 1, !tbaa !47, !alias.scope !191
  %i.amj = load i8, ptr %i.alv, align 1, !tbaa !47, !alias.scope !191
  %i.amk = load i8, ptr %i.alx, align 1, !tbaa !47, !alias.scope !191
  %i.aml = load i8, ptr %i.alz, align 1, !tbaa !47, !alias.scope !191
  %i.amm = load i8, ptr %i.amb, align 1, !tbaa !47, !alias.scope !191
  %i.amn = load i8, ptr %i.amd, align 1, !tbaa !47, !alias.scope !191
  %i.amo = load i8, ptr %i.amf, align 1, !tbaa !47, !alias.scope !191
  %i.amp = load i8, ptr %i.amh, align 1, !tbaa !47, !alias.scope !191
  %i.amq = insertelement <8 x i8> poison, i8 %i.ami, i64 0
  %i.amr = insertelement <8 x i8> %i.amq, i8 %i.amj, i64 1
  %i.ams = insertelement <8 x i8> %i.amr, i8 %i.amk, i64 2
  %i.amt = insertelement <8 x i8> %i.ams, i8 %i.aml, i64 3
  %i.amu = insertelement <8 x i8> %i.amt, i8 %i.amm, i64 4
  %i.amv = insertelement <8 x i8> %i.amu, i8 %i.amn, i64 5
  %i.amw = insertelement <8 x i8> %i.amv, i8 %i.amo, i64 6
  %i.amx = insertelement <8 x i8> %i.amw, i8 %i.amp, i64 7
  %i.amy = getelementptr i8, ptr %invariant.gep578.us, i64 %index711
  store <8 x i8> %i.amx, ptr %i.amy, align 1, !tbaa !47, !alias.scope !192, !noalias !191
  %index.next712 = add nuw i64 %index711, 8       ; 2 uses
  %i.amz = icmp eq i64 %index.next712, %n.vec710
  br i1 %i.amz, label %.lr.ph581.us.preheader, label %vec.epilog.vector.body, !llvm.loop !154

bb.bq:                                            ; preds = %.lr.ph585
  %i.ana = call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.ana, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 535, ptr noundef nonnull @.str.2)
          to label %.invoke678 unwind label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.anb = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ana) #25
  br label %.body393

.loopexit.split-lp466.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bo, %bb.be, %bb.ba, %bb.ay, %bb.av, %bb.bi, %.invoke678, %.noexc395, %_ZNK4gdcm12SmartPointerINS_19SequenceOfFragmentsEEdeEv.exit
  %lpad.loopexit.split-lp912 = landingpad { ptr, i32 }
          cleanup
  br label %.body393

.thread428.thread440:                             ; preds = %._crit_edge, %._crit_edge582.us, %.lr.ph585.split, %bb.bj, %bb.bp, %bb.ay, %.thread428
  %.1219 = phi ptr [ %i.fk, %.thread428 ], [ %.0224, %bb.bp ], [ %.0223, %bb.ay ], [ %.0224, %.lr.ph585.split ], [ %.0224, %bb.bj ], [ %.0224, %._crit_edge582.us ], [ %.0224, %._crit_edge ]
  %i.anc = urem i64 %.1232421, %i.dd
  %i.and = udiv i64 %.1232421, %i.dd              ; 4 uses
  %i.ane = icmp eq i64 %i.anc, 0
  br i1 %i.ane, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %.thread428.thread440
  %i.anf = call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.anf, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 555, ptr noundef nonnull @.str.2)
          to label %.invoke678 unwind label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ang = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.anf) #25
  br label %.body393

bb.bu:                                            ; preds = %.thread428.thread440
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.anh = mul i64 %i.and, %i.dd
  %i.ani = icmp eq i64 %i.anh, %.1232421
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.ef
  %indvars.iv627 = phi i64 [ 0, %bb.bu ], [ %indvars.iv.next628, %bb.ef ] ; 5 uses
  %i.anj = mul i64 %i.and, %indvars.iv627         ; 2 uses
  %i.ank = getelementptr inbounds nuw i8, ptr %.1219, i64 %i.anj
  %i.anl = icmp samesign ult i64 %i.anj, %.1232421
  br i1 %i.anl, label %bb.bz, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.anm = call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
end_hunk_0
