Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_patch_dictionary?download=true
inline.NumInlined: 4484
inline.NumDeleted: 2596
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN3jxl23FindBestPatchDictionaryERKNS_6Image3IfEEPNS_18PassesEncoderStateERK15JxlCmsInterfacePNS_10ThreadPoolEPNS_6AuxOutEb:bb.a
  %i.ez = getelementptr inbounds nuw i8, ptr %23, i64 112
  %i.fa = getelementptr inbounds nuw i8, ptr %24, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fa, ptr noundef nonnull align 8 dereferenceable(56) %i.ez, i64 24, i1 false), !noalias !661
  %i.fb = getelementptr inbounds nuw i8, ptr %24, i64 136 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %23, i64 136 ; 2 uses
  %i.fd = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.fb, ptr noundef nonnull align 8 dereferenceable(24) %i.fc) #23, !noalias !661 ; 0 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %23, i64 160
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !193, !noalias !684
  %i.fg = getelementptr inbounds nuw i8, ptr %24, i64 160
  store i64 %i.ff, ptr %i.fg, align 8, !tbaa !193, !alias.scope !683, !noalias !661
  %i.fh = getelementptr inbounds nuw i8, ptr %24, i64 4 ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 4 uses
  %i.fj = load i32, ptr %i.fh, align 4, !tbaa !100, !noalias !661 ; 2 uses
  %.not13.i.i = icmp eq i32 %i.fj, 0
  br i1 %.not13.i.i, label %_ZN3jxl13ZeroFillImageIfEEvPNS_6Image3IT_EE.exit.i, label %.lr.ph.i409.i

.lr.ph.i409.i:                                    ; preds = %.critedge369.i
  %i.fk = getelementptr inbounds nuw i8, ptr %24, i64 40
  %i.fl = load i32, ptr %24, align 8, !tbaa !194, !noalias !661 ; 3 uses
  %i.fm = icmp eq i32 %i.fl, 0
  br i1 %i.fm, label %_ZN3jxl13ZeroFillImageIfEEvPNS_6Image3IT_EE.exit.i, label %.lr.ph.split.i.i

._crit_edge.i.i:                                  ; preds = %bb.x
  %.not13.1.i.i = icmp eq i32 %i.gz, 0
  br i1 %.not13.1.i.i, label %_ZN3jxl13ZeroFillImageIfEEvPNS_6Image3IT_EE.exit.i, label %.lr.ph.1.i.i

.lr.ph.1.i.i:                                     ; preds = %._crit_edge.i.i
  %i.fn = getelementptr inbounds nuw i8, ptr %24, i64 96
  %i.fo = icmp eq i32 %.pr.i.i, 0
  br i1 %i.fo, label %_ZN3jxl13ZeroFillImageIfEEvPNS_6Image3IT_EE.exit.i, label %.lr.ph.split.1.i.i

.lr.ph.split.1.i.i:                               ; preds = %.lr.ph.1.i.i, %bb.t
  %.pr41.i554.i = phi i32 [ %.pr41.i.i, %bb.t ], [ %.pr.i.i, %.lr.ph.1.i.i ]
  %i.fp = phi i32 [ %i.fx, %bb.t ], [ %i.gz, %.lr.ph.1.i.i ]
  %i.fq = phi i32 [ %i.fy, %bb.t ], [ %.pr.i.i, %.lr.ph.1.i.i ] ; 2 uses
  %.011.1.i.i = phi i64 [ %i.fz, %bb.t ], [ 0, %.lr.ph.1.i.i ] ; 2 uses
  %.not.1.i.i = icmp eq i32 %i.fq, 0
  br i1 %.not.1.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph.split.1.i.i
  %i.fr = zext i32 %i.fq to i64
  %i.fs = load ptr, ptr %i.fn, align 8, !tbaa !102, !noalias !661
  %i.ft = load i64, ptr %i.fi, align 8, !tbaa !101, !noalias !661
  %i.fu = mul i64 %i.ft, %.011.1.i.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.fu
  %i.fw = shl nuw nsw i64 %i.fr, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.fv, i8 0, i64 %i.fw, i1 false), !noalias !661
  %.pre17.i.i = load i32, ptr %24, align 8, !tbaa !194, !noalias !661 ; 2 uses
  %.pre19.i.i = load i32, ptr %i.fh, align 4, !tbaa !100, !noalias !661
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph.split.1.i.i
  %.pr41.i.i = phi i32 [ %.pre17.i.i, %bb.s ], [ %.pr41.i554.i, %.lr.ph.split.1.i.i ] ; 3 uses
  %i.fx = phi i32 [ %.pre19.i.i, %bb.s ], [ %i.fp, %.lr.ph.split.1.i.i ] ; 4 uses
  %i.fy = phi i32 [ %.pre17.i.i, %bb.s ], [ 0, %.lr.ph.split.1.i.i ]
  %i.fz = add nuw nsw i64 %.011.1.i.i, 1          ; 2 uses
  %i.ga = zext i32 %i.fx to i64
  %i.gb = icmp samesign ult i64 %i.fz, %i.ga
  br i1 %i.gb, label %.lr.ph.split.1.i.i, label %._crit_edge.1.i.i, !llvm.loop !576

._crit_edge.1.i.i:                                ; preds = %bb.t
  %.not13.2.i.i = icmp eq i32 %i.fx, 0
  br i1 %.not13.2.i.i, label %_ZN3jxl13ZeroFillImageIfEEvPNS_6Image3IT_EE.exit.i, label %.lr.ph.2.i.i

.lr.ph.2.i.i:                                     ; preds = %._crit_edge.1.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %24, i64 152
  %i.gd = icmp eq i32 %.pr41.i.i, 0
  br i1 %i.gd, label %_ZN3jxl13ZeroFillImageIfEEvPNS_6Image3IT_EE.exit.i, label %.lr.ph.split.2.i.i

.lr.ph.split.2.i.i:                               ; preds = %.lr.ph.2.i.i, %bb.v
  %i.ge = phi i32 [ %i.gm, %bb.v ], [ %i.fx, %.lr.ph.2.i.i ]
  %i.gf = phi i32 [ %i.gn, %bb.v ], [ %.pr41.i.i, %.lr.ph.2.i.i ] ; 2 uses
  %.011.2.i.i = phi i64 [ %i.go, %bb.v ], [ 0, %.lr.ph.2.i.i ] ; 2 uses
  %.not.2.i.i = icmp eq i32 %i.gf, 0
  br i1 %.not.2.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.split.2.i.i
  %i.gg = zext i32 %i.gf to i64
  %i.gh = load ptr, ptr %i.gc, align 8, !tbaa !102, !noalias !661
  %i.gi = load i64, ptr %i.fi, align 8, !tbaa !101, !noalias !661
  %i.gj = mul i64 %i.gi, %.011.2.i.i
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.gj
  %i.gl = shl nuw nsw i64 %i.gg, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.gk, i8 0, i64 %i.gl, i1 false), !noalias !661
  %.pre20.i.i = load i32, ptr %24, align 8, !tbaa !194, !noalias !661
  %.pre22.i.i = load i32, ptr %i.fh, align 4, !tbaa !100, !noalias !661
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph.split.2.i.i
  %i.gm = phi i32 [ %.pre22.i.i, %bb.u ], [ %i.ge, %.lr.ph.split.2.i.i ] ; 2 uses
  %i.gn = phi i32 [ %.pre20.i.i, %bb.u ], [ 0, %.lr.ph.split.2.i.i ]
  %i.go = add nuw nsw i64 %.011.2.i.i, 1          ; 2 uses
  %i.gp = zext i32 %i.gm to i64
  %i.gq = icmp samesign ult i64 %i.go, %i.gp
  br i1 %i.gq, label %.lr.ph.split.2.i.i, label %_ZN3jxl13ZeroFillImageIfEEvPNS_6Image3IT_EE.exit.i, !llvm.loop !576

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i409.i, %bb.x
  %.pr.i552.i = phi i32 [ %.pr.i.i, %bb.x ], [ %i.fl, %.lr.ph.i409.i ]
  %i.gr = phi i32 [ %i.gz, %bb.x ], [ %i.fj, %.lr.ph.i409.i ]
  %i.gs = phi i32 [ %i.ha, %bb.x ], [ %i.fl, %.lr.ph.i409.i ] ; 2 uses
  %.011.i.i = phi i64 [ %i.hb, %bb.x ], [ 0, %.lr.ph.i409.i ] ; 2 uses
  %.not.i410.i = icmp eq i32 %i.gs, 0
  br i1 %.not.i410.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph.split.i.i
  %i.gt = zext i32 %i.gs to i64
  %i.gu = load ptr, ptr %i.fk, align 8, !tbaa !102, !noalias !661
  %i.gv = load i64, ptr %i.fi, align 8, !tbaa !101, !noalias !661
  %i.gw = mul i64 %i.gv, %.011.i.i
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.gw
  %i.gy = shl nuw nsw i64 %i.gt, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.gx, i8 0, i64 %i.gy, i1 false), !noalias !661
  %.pre.i.i = load i32, ptr %24, align 8, !tbaa !194, !noalias !661 ; 2 uses
  %.pre16.i.i = load i32, ptr %i.fh, align 4, !tbaa !100, !noalias !661
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph.split.i.i
  %.pr.i.i = phi i32 [ %.pre.i.i, %bb.w ], [ %.pr.i552.i, %.lr.ph.split.i.i ] ; 4 uses
  %i.gz = phi i32 [ %.pre16.i.i, %bb.w ], [ %i.gr, %.lr.ph.split.i.i ] ; 4 uses
  %i.ha = phi i32 [ %.pre.i.i, %bb.w ], [ 0, %.lr.ph.split.i.i ]
  %i.hb = add nuw nsw i64 %.011.i.i, 1            ; 2 uses
  %i.hc = zext i32 %i.gz to i64
  %i.hd = icmp samesign ult i64 %i.hb, %i.hc
  br i1 %i.hd, label %.lr.ph.split.i.i, label %._crit_edge.i.i, !llvm.loop !576

_ZN3jxl13ZeroFillImageIfEEvPNS_6Image3IT_EE.exit.i: ; preds = %bb.v, %.lr.ph.2.i.i, %._crit_edge.1.i.i, %.lr.ph.1.i.i, %._crit_edge.i.i, %.lr.ph.i409.i, %.critedge369.i
  %i.he = getelementptr inbounds nuw i8, ptr %24, i64 40
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !102, !noalias !661 ; 9 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.hf, i64 64) ]
  %i.hg = getelementptr inbounds nuw i8, ptr %24, i64 96
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !102, !noalias !661 ; 9 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.hh, i64 64) ]
  %i.hi = getelementptr inbounds nuw i8, ptr %24, i64 152
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !102, !noalias !661 ; 9 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.hj, i64 64) ]
  %i.hk = load i64, ptr %i.fi, align 8, !tbaa !101, !noalias !661
  %i.hl = lshr i64 %i.hk, 2                       ; 8 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %22, i64 40
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !102, !noalias !661 ; 8 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %22, i64 16
  call void @llvm.assume(i1 true) [ "align"(ptr %i.hn, i64 64) ]
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !101, !noalias !661 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #19, !noalias !661
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %25, i8 0, i64 24, i1 false), !noalias !661
  %i.hq = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 18 uses
  br i1 %i.ct, label %_ZNSt3__114__split_bufferINS_4pairINS1_IiiEES2_EERNS_9allocatorIS3_EEEC2EmmS6_.exit.i.i, label %_ZNSt3__16vectorINS_4pairINS1_IiiEES2_EENS_9allocatorIS3_EEE7reserveEm.exit.i

_ZNSt3__114__split_bufferINS_4pairINS1_IiiEES2_EERNS_9allocatorIS3_EEEC2EmmS6_.exit.i.i: ; preds = %_ZN3jxl13ZeroFillImageIfEEvPNS_6Image3IT_EE.exit.i
  %i.hr = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.hs = shl nuw nsw i64 %i.cs, 9                ; 2 uses
  %i.ht = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hs) #20, !noalias !661 ; 4 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.hs
  %i.hv = load ptr, ptr %i.hr, align 8, !tbaa !689, !noalias !661 ; 2 uses
  %i.hw = load ptr, ptr %25, align 8, !tbaa !690, !noalias !661 ; 5 uses
  %.not13.i.i.i.i = icmp eq ptr %i.hv, %i.hw
  br i1 %.not13.i.i.i.i, label %_ZNSt3__114__split_bufferINS_4pairINS1_IiiEES2_EERNS_9allocatorIS3_EEE5clearB8nn180100Ev.exit.i.i.i, label %.lr.ph.i.i.i411.i

.lr.ph.i.i.i411.i:                                ; preds = %_ZNSt3__114__split_bufferINS_4pairINS1_IiiEES2_EERNS_9allocatorIS3_EEEC2EmmS6_.exit.i.i, %.lr.ph.i.i.i411.i
  %i.hx = phi ptr [ %i.hy, %.lr.ph.i.i.i411.i ], [ %i.ht, %_ZNSt3__114__split_bufferINS_4pairINS1_IiiEES2_EERNS_9allocatorIS3_EEEC2EmmS6_.exit.i.i ]
  %.sroa.18.014.i.i.i.i = phi ptr [ %i.hz, %.lr.ph.i.i.i411.i ], [ %i.hv, %_ZNSt3__114__split_bufferINS_4pairINS1_IiiEES2_EERNS_9allocatorIS3_EEEC2EmmS6_.exit.i.i ]
  %i.hy = getelementptr inbounds i8, ptr %i.hx, i64 -16 ; 3 uses
  %i.hz = getelementptr inbounds i8, ptr %.sroa.18.014.i.i.i.i, i64 -16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.hy, ptr noundef nonnull align 4 dereferenceable(16) %i.hz, i64 16, i1 false), !tbaa.struct !691, !noalias !661
  %.not.i.i.i412.i = icmp eq ptr %i.hz, %i.hw
  br i1 %.not.i.i.i412.i, label %_ZNSt3__114__split_bufferINS_4pairINS1_IiiEES2_EERNS_9allocatorIS3_EEE5clearB8nn180100Ev.exit.i.i.i, label %.lr.ph.i.i.i411.i, !llvm.loop !577

_ZNSt3__114__split_bufferINS_4pairINS1_IiiEES2_EERNS_9allocatorIS3_EEE5clearB8nn180100Ev.exit.i.i.i: ; preds = %.lr.ph.i.i.i411.i, %_ZNSt3__114__split_bufferINS_4pairINS1_IiiEES2_EERNS_9allocatorIS3_EEEC2EmmS6_.exit.i.i
  %storemerge.i.i = phi ptr [ %i.ht, %_ZNSt3__114__split_bufferINS_4pairINS1_IiiEES2_EERNS_9allocatorIS3_EEEC2EmmS6_.exit.i.i ], [ %i.hy, %.lr.ph.i.i.i411.i ]
  store ptr %storemerge.i.i, ptr %25, align 8, !tbaa !692, !noalias !661
  store ptr %i.ht, ptr %i.hr, align 8, !tbaa !692, !noalias !661
  %i.ia = load ptr, ptr %i.hq, align 8, !tbaa !692, !noalias !661
  store ptr %i.hu, ptr %i.hq, align 8, !tbaa !692, !noalias !661
  %.not.i.i.i = icmp eq ptr %i.hw, null
  br i1 %.not.i.i.i, label %_ZNSt3__16vectorINS_4pairINS1_IiiEES2_EENS_9allocatorIS3_EEE7reserveEm.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt3__114__split_bufferINS_4pairINS1_IiiEES2_EERNS_9allocatorIS3_EEE5clearB8nn180100Ev.exit.i.i.i
  %i.ib = ptrtoint ptr %i.ia to i64
  %i.ic = ptrtoint ptr %i.hw to i64
  %i.id = sub i64 %i.ib, %i.ic
  call void @_ZdlPvm(ptr noundef nonnull %i.hw, i64 noundef %i.id) #21, !noalias !661
  br label %_ZNSt3__16vectorINS_4pairINS1_IiiEES2_EENS_9allocatorIS3_EEE7reserveEm.exit.i

_ZNSt3__16vectorINS_4pairINS1_IiiEES2_EENS_9allocatorIS3_EEE7reserveEm.exit.i: ; preds = %bb.y, %_ZNSt3__114__split_bufferINS_4pairINS1_IiiEES2_EERNS_9allocatorIS3_EEE5clearB8nn180100Ev.exit.i.i.i, %_ZN3jxl13ZeroFillImageIfEEvPNS_6Image3IT_EE.exit.i
  br i1 %i.bw, label %.preheader252.i, label %.loopexit253.i

.preheader252.i:                                  ; preds = %_ZNSt3__16vectorINS_4pairINS1_IiiEES2_EENS_9allocatorIS3_EEE7reserveEm.exit.i
  %i.ie = add nsw i64 %i.bo, -1                   ; 2 uses
  %i.if = icmp ugt i64 %i.ie, 1
  br i1 %i.if, label %.lr.ph.i, label %.loopexit253.i

.lr.ph.i:                                         ; preds = %.preheader252.i
  %i.ig = getelementptr inbounds nuw i8, ptr %18, i64 40
  %i.ih = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.ii = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 16 uses
  %.pre557.i = load i64, ptr %i.b, align 8, !tbaa !103, !noalias !661 ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge341.i, %.lr.ph.i
  %i.ij = phi i64 [ %.pre557.i, %.lr.ph.i ], [ %i.pf, %._crit_edge341.i ] ; 2 uses
  %i.ik = phi i64 [ %.pre557.i, %.lr.ph.i ], [ %i.pg, %._crit_edge341.i ] ; 2 uses
  %.0291344.i = phi i64 [ 1, %.lr.ph.i ], [ %i.ph, %._crit_edge341.i ] ; 6 uses
  %i.il = load ptr, ptr %i.ig, align 8, !tbaa !102, !noalias !661
  %i.im = load i64, ptr %i.ih, align 8, !tbaa !101, !noalias !661
  %i.in = mul i64 %i.im, %.0291344.i
  %i.io = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.in ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.io, i64 64) ]
  %i.ip = add i64 %i.ik, -3
  %i.iq = icmp ult i64 %i.ip, -2
  br i1 %i.iq, label %.lr.ph340.split.us.i.preheader, label %._crit_edge341.i

.lr.ph340.split.us.i.preheader:                   ; preds = %bb.z
  %47 = shl i64 %.0291344.i, 34
  %.sroa.8161.0.insert.ext.us.i = shl i64 %.0291344.i, 34 ; 3 uses
  %i.ir = ashr exact i64 %.sroa.8161.0.insert.ext.us.i, 32
  %i.is = mul i64 %i.ir, %i.hp
  %i.it = getelementptr i8, ptr %i.hn, i64 %i.is
  %48 = shl i64 %.0291344.i, 34
  %.sroa.8161.0.insert.ext.us.i.1 = or disjoint i64 %48, 4294967296 ; 3 uses
  %i.iu = ashr exact i64 %.sroa.8161.0.insert.ext.us.i.1, 32
  %i.iv = mul i64 %i.iu, %i.hp
  %i.iw = getelementptr i8, ptr %i.hn, i64 %i.iv
  %49 = shl i64 %.0291344.i, 34
  %.sroa.8161.0.insert.ext.us.i.2 = or disjoint i64 %49, 8589934592 ; 3 uses
  %i.ix = ashr exact i64 %.sroa.8161.0.insert.ext.us.i.2, 32
  %i.iy = mul i64 %i.ix, %i.hp
  %i.iz = getelementptr i8, ptr %i.hn, i64 %i.iy
  %i.ja = or disjoint i64 %47, 12884901888        ; 3 uses
  %i.jb = ashr exact i64 %i.ja, 32
  %i.jc = mul i64 %i.jb, %i.hp
  %i.jd = getelementptr i8, ptr %i.hn, i64 %i.jc
  br label %.lr.ph340.split.us.i

.lr.ph340.split.us.i:                             ; preds = %.lr.ph340.split.us.i.preheader, %..loopexit251_crit_edge.split.us.i
  %i.je = phi i64 [ %i.ku, %..loopexit251_crit_edge.split.us.i ], [ %i.ij, %.lr.ph340.split.us.i.preheader ] ; 2 uses
  %.0292337.us.i = phi i64 [ %i.kv, %..loopexit251_crit_edge.split.us.i ], [ 1, %.lr.ph340.split.us.i.preheader ] ; 3 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.io, i64 %.0292337.us.i
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !72, !noalias !661
  %.not361.us.i = icmp eq i8 %i.jg, 0
  br i1 %.not361.us.i, label %..loopexit251_crit_edge.split.us.i, label %.lr.ph336.us.i

.lr.ph336.us.i:                                   ; preds = %.lr.ph340.split.us.i
  %i.jh = shl i64 %.0292337.us.i, 2               ; 6 uses
  %i.ji = add i64 %i.jh, 4                        ; 4 uses
  %.not481.i = icmp eq i64 %i.jh, -4
  br i1 %.not481.i, label %..loopexit251_crit_edge.split.us.i, label %.lr.ph.us.i.preheader

.lr.ph.us.i.preheader:                            ; preds = %.lr.ph336.us.i, %_ZNSt3__16vectorINS_4pairINS1_IiiEES2_EENS_9allocatorIS3_EEE12emplace_backIJRS2_S8_EEERS3_DpOT_.exit.us.i
  %.0332333.us.i = phi i64 [ %i.ks, %_ZNSt3__16vectorINS_4pairINS1_IiiEES2_EENS_9allocatorIS3_EEE12emplace_backIJRS2_S8_EEERS3_DpOT_.exit.us.i ], [ %i.jh, %.lr.ph336.us.i ] ; 4 uses
  %i.jj = load ptr, ptr %i.ii, align 8, !tbaa !689, !noalias !661 ; 5 uses
  %i.jk = load ptr, ptr %i.hq, align 8, !tbaa !692, !noalias !661 ; 2 uses
  %i.jl = icmp ult ptr %i.jj, %i.jk
  br i1 %i.jl, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.us.i.preheader
  %i.jm = load ptr, ptr %25, align 8, !tbaa !690, !noalias !661
  %i.jn = ptrtoint ptr %i.jj to i64
  %i.jo = ptrtoint ptr %i.jm to i64               ; 2 uses
  %i.jp = sub i64 %i.jn, %i.jo                    ; 2 uses
  %i.jq = ashr exact i64 %i.jp, 4
  %i.jr = add nsw i64 %i.jq, 1                    ; 2 uses
  %i.js = icmp ugt i64 %i.jr, 1152921504606846975
  br i1 %i.js, label %.split.us.i, label %_ZNKSt3__16vectorINS_4pairINS1_IiiEES2_EENS_9allocatorIS3_EEE11__recommendB8nn180100Em.exit.i.i.us.i

_ZNKSt3__16vectorINS_4pairINS1_IiiEES2_EENS_9allocatorIS3_EEE11__recommendB8nn180100Em.exit.i.i.us.i: ; preds = %bb.aa
  %i.jt = ptrtoint ptr %i.jk to i64
  %i.ju = sub i64 %i.jt, %i.jo                    ; 2 uses
  %.not.i.i.i413.us.i = icmp ult i64 %i.ju, 9223372036854775792
  %i.jv = ashr exact i64 %i.ju, 3
  %.sroa.speculated.i.i.i.us.i = call i64 @llvm.umax.i64(i64 %i.jv, i64 %i.jr)
  %.0.i.i.i.us.i = select i1 %.not.i.i.i413.us.i, i64 %.sroa.speculated.i.i.i.us.i, i64 1152921504606846975 ; 4 uses
  %i.jw = icmp ne i64 %.0.i.i.i.us.i, 0
  call void @llvm.assume(i1 %i.jw)
  %i.jx = icmp ugt i64 %.0.i.i.i.us.i, 1152921504606846975
  br i1 %i.jx, label %.split343.us.i, label %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairINS2_IiiEES3_EEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i.i.i.us.i

_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairINS2_IiiEES3_EEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i.i.i.us.i: ; preds = %_ZNKSt3__16vectorINS_4pairINS1_IiiEES2_EENS_9allocatorIS3_EEE11__recommendB8nn180100Em.exit.i.i.us.i
  %i.jy = shl nuw i64 %.0.i.i.i.us.i, 4
  %i.jz = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jy) #20, !noalias !661 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 %i.jp ; 5 uses
  %i.kb = getelementptr inbounds nuw [16 x i8], ptr %i.jz, i64 %.0.i.i.i.us.i
  %.sroa.0148.0.insert.ext.us.i = and i64 %.0332333.us.i, 4294967295
  %.sroa.0148.0.insert.insert.us.i = or disjoint i64 %.sroa.0148.0.insert.ext.us.i, %.sroa.8161.0.insert.ext.us.i ; 2 uses
  store i64 %.sroa.0148.0.insert.insert.us.i, ptr %i.ka, align 4, !tbaa !209, !noalias !661
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  store i64 %.sroa.0148.0.insert.insert.us.i, ptr %i.kc, align 4, !tbaa !209, !noalias !661
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ka, i64 16 ; 3 uses
  %i.ke = load ptr, ptr %i.ii, align 8, !tbaa !689, !noalias !661 ; 2 uses
  %i.kf = load ptr, ptr %25, align 8, !tbaa !690, !noalias !661 ; 5 uses
  %.not13.i.i.i.i.us.i = icmp eq ptr %i.ke, %i.kf
  br i1 %.not13.i.i.i.i.us.i, label %_ZNSt3__114__split_bufferINS_4pairINS1_IiiEES2_EERNS_9allocatorIS3_EEE5clearB8nn180100Ev.exit.i.i.i.us.i, label %.lr.ph.i.i.i.i.us.i

.lr.ph.i.i.i.i.us.i:                              ; preds = %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairINS2_IiiEES3_EEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i.i.i.us.i, %.lr.ph.i.i.i.i.us.i
  %i.kg = phi ptr [ %i.kh, %.lr.ph.i.i.i.i.us.i ], [ %i.ka, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairINS2_IiiEES3_EEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i.i.i.us.i ]
  %.sroa.18.014.i.i.i.i.us.i = phi ptr [ %i.ki, %.lr.ph.i.i.i.i.us.i ], [ %i.ke, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairINS2_IiiEES3_EEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i.i.i.us.i ]
  %i.kh = getelementptr inbounds i8, ptr %i.kg, i64 -16 ; 3 uses
  %i.ki = getelementptr inbounds i8, ptr %.sroa.18.014.i.i.i.i.us.i, i64 -16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.kh, ptr noundef nonnull align 4 dereferenceable(16) %i.ki, i64 16, i1 false), !tbaa.struct !691, !noalias !661
  %.not.i.i.i.i.us.i = icmp eq ptr %i.ki, %i.kf
  br i1 %.not.i.i.i.i.us.i, label %_ZNSt3__114__split_bufferINS_4pairINS1_IiiEES2_EERNS_9allocatorIS3_EEE5clearB8nn180100Ev.exit.i.i.i.us.i, label %.lr.ph.i.i.i.i.us.i, !llvm.loop !577

_ZNSt3__114__split_bufferINS_4pairINS1_IiiEES2_EERNS_9allocatorIS3_EEE5clearB8nn180100Ev.exit.i.i.i.us.i: ; preds = %.lr.ph.i.i.i.i.us.i, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairINS2_IiiEES3_EEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i.i.i.us.i
  %storemerge.i.i.us.i = phi ptr [ %i.ka, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairINS2_IiiEES3_EEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i.i.i.us.i ], [ %i.kh, %.lr.ph.i.i.i.i.us.i ]
  store ptr %storemerge.i.i.us.i, ptr %25, align 8, !tbaa !692, !noalias !661
  store ptr %i.kd, ptr %i.ii, align 8, !tbaa !692, !noalias !661
  %i.kj = load ptr, ptr %i.hq, align 8, !tbaa !692, !noalias !661
  store ptr %i.kb, ptr %i.hq, align 8, !tbaa !692, !noalias !661
  %.not.i5.i.i.us.i = icmp eq ptr %i.kf, null
  br i1 %.not.i5.i.i.us.i, label %_ZNSt3__16vectorINS_4pairINS1_IiiEES2_EENS_9allocatorIS3_EEE12emplace_backIJRS2_S8_EEERS3_DpOT_.exit.us.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt3__114__split_bufferINS_4pairINS1_IiiEES2_EERNS_9allocatorIS3_EEE5clearB8nn180100Ev.exit.i.i.i.us.i
  %i.kk = ptrtoint ptr %i.kj to i64
  %i.kl = ptrtoint ptr %i.kf to i64
  %i.km = sub i64 %i.kk, %i.kl
  call void @_ZdlPvm(ptr noundef nonnull %i.kf, i64 noundef %i.km) #21, !noalias !661
  br label %_ZNSt3__16vectorINS_4pairINS1_IiiEES2_EENS_9allocatorIS3_EEE12emplace_backIJRS2_S8_EEERS3_DpOT_.exit.us.i

bb.ac:                                            ; preds = %.lr.ph.us.i.preheader
  %.sroa.0148.0.insert.ext154.us.i = and i64 %.0332333.us.i, 4294967295
  %.sroa.0148.0.insert.insert156.us.i = or disjoint i64 %.sroa.0148.0.insert.ext154.us.i, %.sroa.8161.0.insert.ext.us.i ; 2 uses
  store i64 %.sroa.0148.0.insert.insert156.us.i, ptr %i.jj, align 4, !tbaa !209, !noalias !661
  %i.kn = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  store i64 %.sroa.0148.0.insert.insert156.us.i, ptr %i.kn, align 4, !tbaa !209, !noalias !661
  %i.ko = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  br label %_ZNSt3__16vectorINS_4pairINS1_IiiEES2_EENS_9allocatorIS3_EEE12emplace_backIJRS2_S8_EEERS3_DpOT_.exit.us.i

_ZNSt3__16vectorINS_4pairINS1_IiiEES2_EENS_9allocatorIS3_EEE12emplace_backIJRS2_S8_EEERS3_DpOT_.exit.us.i: ; preds = %bb.ac, %bb.ab, %_ZNSt3__114__split_bufferINS_4pairINS1_IiiEES2_EERNS_9allocatorIS3_EEE5clearB8nn180100Ev.exit.i.i.i.us.i
  %.0.i414.us.i = phi ptr [ %i.ko, %bb.ac ], [ %i.kd, %_ZNSt3__114__split_bufferINS_4pairINS1_IiiEES2_EERNS_9allocatorIS3_EEE5clearB8nn180100Ev.exit.i.i.i.us.i ], [ %i.kd, %bb.ab ]
  store ptr %.0.i414.us.i, ptr %i.ii, align 8, !tbaa !689, !noalias !661
  %i.kp = shl i64 %.0332333.us.i, 32
  %i.kq = ashr exact i64 %i.kp, 32
  %i.kr = getelementptr i8, ptr %i.it, i64 %i.kq
  store i8 1, ptr %i.kr, align 1, !tbaa !72, !noalias !661
  %i.ks = add nuw i64 %.0332333.us.i, 1           ; 2 uses
  %i.kt = icmp ult i64 %i.ks, %i.ji
  br i1 %i.kt, label %.lr.ph.us.i.preheader, label %._crit_edge.us.i, !llvm.loop !578

..loopexit251_crit_edge.split.us.i:               ; preds = %._crit_edge.us.i.3, %.lr.ph336.us.i, %.lr.ph340.split.us.i
  %i.ku = phi i64 [ %.pre558.i, %._crit_edge.us.i.3 ], [ %i.je, %.lr.ph336.us.i ], [ %i.je, %.lr.ph340.split.us.i ] ; 4 uses
  %i.kv = add nuw i64 %.0292337.us.i, 1           ; 2 uses
  %i.kw = add i64 %i.ku, -1
  %i.kx = icmp ult i64 %i.kv, %i.kw
  br i1 %i.kx, label %.lr.ph340.split.us.i, label %._crit_edge341.i, !llvm.loop !579

._crit_edge.us.i:                                 ; preds = %_ZNSt3__16vectorINS_4pairINS1_IiiEES2_EENS_9allocatorIS3_EEE12emplace_backIJRS2_S8_EEERS3_DpOT_.exit.us.i, %_ZNSt3__16vectorINS_4pairINS1_IiiEES2_EENS_9allocatorIS3_EEE12emplace_backIJRS2_S8_EEERS3_DpOT_.exit.us.i.1
  %.0332333.us.i.1 = phi i64 [ %i.mh, %_ZNSt3__16vectorINS_4pairINS1_IiiEES2_EENS_9allocatorIS3_EEE12emplace_backIJRS2_S8_EEERS3_DpOT_.exit.us.i.1 ], [ %i.jh, %_ZNSt3__16vectorINS_4pairINS1_IiiEES2_EENS_9allocatorIS3_EEE12emplace_backIJRS2_S8_EEERS3_DpOT_.exit.us.i ] ; 4 uses
  %i.ky = load ptr, ptr %i.ii, align 8, !tbaa !689, !noalias !661 ; 5 uses
  %i.kz = load ptr, ptr %i.hq, align 8, !tbaa !692, !noalias !661 ; 2 uses
  %i.la = icmp ult ptr %i.ky, %i.kz
  br i1 %i.la, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge.us.i
  %i.lb = load ptr, ptr %25, align 8, !tbaa !690, !noalias !661
  %i.lc = ptrtoint ptr %i.ky to i64
  %i.ld = ptrtoint ptr %i.lb to i64               ; 2 uses
  %i.le = sub i64 %i.lc, %i.ld                    ; 2 uses
  %i.lf = ashr exact i64 %i.le, 4
  %i.lg = add nsw i64 %i.lf, 1                    ; 2 uses
  %i.lh = icmp ugt i64 %i.lg, 1152921504606846975
  br i1 %i.lh, label %.split.us.i, label %_ZNKSt3__16vectorINS_4pairINS1_IiiEES2_EENS_9allocatorIS3_EEE11__recommendB8nn180100Em.exit.i.i.us.i.1

_ZNKSt3__16vectorINS_4pairINS1_IiiEES2_EENS_9allocatorIS3_EEE11__recommendB8nn180100Em.exit.i.i.us.i.1: ; preds = %bb.ad
  %i.li = ptrtoint ptr %i.kz to i64
  %i.lj = sub i64 %i.li, %i.ld                    ; 2 uses
  %.not.i.i.i413.us.i.1 = icmp ult i64 %i.lj, 9223372036854775792
  %i.lk = ashr exact i64 %i.lj, 3
  %.sroa.speculated.i.i.i.us.i.1 = call i64 @llvm.umax.i64(i64 %i.lk, i64 %i.lg)
  %.0.i.i.i.us.i.1 = select i1 %.not.i.i.i413.us.i.1, i64 %.sroa.speculated.i.i.i.us.i.1, i64 1152921504606846975 ; 4 uses
  %i.ll = icmp ne i64 %.0.i.i.i.us.i.1, 0
  call void @llvm.assume(i1 %i.ll)
  %i.lm = icmp ugt i64 %.0.i.i.i.us.i.1, 1152921504606846975
  br i1 %i.lm, label %.split343.us.i, label %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairINS2_IiiEES3_EEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i.i.i.us.i.1

_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairINS2_IiiEES3_EEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i.i.i.us.i.1: ; preds = %_ZNKSt3__16vectorINS_4pairINS1_IiiEES2_EENS_9allocatorIS3_EEE11__recommendB8nn180100Em.exit.i.i.us.i.1
  %i.ln = shl nuw i64 %.0.i.i.i.us.i.1, 4
  %i.lo = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ln) #20, !noalias !661 ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 %i.le ; 5 uses
  %i.lq = getelementptr inbounds nuw [16 x i8], ptr %i.lo, i64 %.0.i.i.i.us.i.1
  %.sroa.0148.0.insert.ext.us.i.1 = and i64 %.0332333.us.i.1, 4294967295
  %.sroa.0148.0.insert.insert.us.i.1 = or disjoint i64 %.sroa.0148.0.insert.ext.us.i.1, %.sroa.8161.0.insert.ext.us.i.1 ; 2 uses
  store i64 %.sroa.0148.0.insert.insert.us.i.1, ptr %i.lp, align 4, !tbaa !209, !noalias !661
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  store i64 %.sroa.0148.0.insert.insert.us.i.1, ptr %i.lr, align 4, !tbaa !209, !noalias !661
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lp, i64 16 ; 3 uses
  %i.lt = load ptr, ptr %i.ii, align 8, !tbaa !689, !noalias !661 ; 2 uses
  %i.lu = load ptr, ptr %25, align 8, !tbaa !690, !noalias !661 ; 5 uses
  %.not13.i.i.i.i.us.i.1 = icmp eq ptr %i.lt, %i.lu
  br i1 %.not13.i.i.i.i.us.i.1, label %_ZNSt3__114__split_bufferINS_4pairINS1_IiiEES2_EERNS_9allocatorIS3_EEE5clearB8nn180100Ev.exit.i.i.i.us.i.1, label %.lr.ph.i.i.i.i.us.i.1

.lr.ph.i.i.i.i.us.i.1:                            ; preds = %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairINS2_IiiEES3_EEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i.i.i.us.i.1, %.lr.ph.i.i.i.i.us.i.1
  %i.lv = phi ptr [ %i.lw, %.lr.ph.i.i.i.i.us.i.1 ], [ %i.lp, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairINS2_IiiEES3_EEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i.i.i.us.i.1 ]
  %.sroa.18.014.i.i.i.i.us.i.1 = phi ptr [ %i.lx, %.lr.ph.i.i.i.i.us.i.1 ], [ %i.lt, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairINS2_IiiEES3_EEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i.i.i.us.i.1 ]
  %i.lw = getelementptr inbounds i8, ptr %i.lv, i64 -16 ; 3 uses
  %i.lx = getelementptr inbounds i8, ptr %.sroa.18.014.i.i.i.i.us.i.1, i64 -16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.lw, ptr noundef nonnull align 4 dereferenceable(16) %i.lx, i64 16, i1 false), !tbaa.struct !691, !noalias !661
  %.not.i.i.i.i.us.i.1 = icmp eq ptr %i.lx, %i.lu
  br i1 %.not.i.i.i.i.us.i.1, label %_ZNSt3__114__split_bufferINS_4pairINS1_IiiEES2_EERNS_9allocatorIS3_EEE5clearB8nn180100Ev.exit.i.i.i.us.i.1, label %.lr.ph.i.i.i.i.us.i.1, !llvm.loop !577

_ZNSt3__114__split_bufferINS_4pairINS1_IiiEES2_EERNS_9allocatorIS3_EEE5clearB8nn180100Ev.exit.i.i.i.us.i.1: ; preds = %.lr.ph.i.i.i.i.us.i.1, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairINS2_IiiEES3_EEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i.i.i.us.i.1
  %storemerge.i.i.us.i.1 = phi ptr [ %i.lp, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairINS2_IiiEES3_EEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i.i.i.us.i.1 ], [ %i.lw, %.lr.ph.i.i.i.i.us.i.1 ]
  store ptr %storemerge.i.i.us.i.1, ptr %25, align 8, !tbaa !692, !noalias !661
  store ptr %i.ls, ptr %i.ii, align 8, !tbaa !692, !noalias !661
  %i.ly = load ptr, ptr %i.hq, align 8, !tbaa !692, !noalias !661
  store ptr %i.lq, ptr %i.hq, align 8, !tbaa !692, !noalias !661
  %.not.i5.i.i.us.i.1 = icmp eq ptr %i.lu, null
  br i1 %.not.i5.i.i.us.i.1, label %_ZNSt3__16vectorINS_4pairINS1_IiiEES2_EENS_9allocatorIS3_EEE12emplace_backIJRS2_S8_EEERS3_DpOT_.exit.us.i.1, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt3__114__split_bufferINS_4pairINS1_IiiEES2_EERNS_9allocatorIS3_EEE5clearB8nn180100Ev.exit.i.i.i.us.i.1
  %i.lz = ptrtoint ptr %i.ly to i64
  %i.ma = ptrtoint ptr %i.lu to i64
  %i.mb = sub i64 %i.lz, %i.ma
  call void @_ZdlPvm(ptr noundef nonnull %i.lu, i64 noundef %i.mb) #21, !noalias !661
  br label %_ZNSt3__16vectorINS_4pairINS1_IiiEES2_EENS_9allocatorIS3_EEE12emplace_backIJRS2_S8_EEERS3_DpOT_.exit.us.i.1

bb.af:                                            ; preds = %._crit_edge.us.i
  %.sroa.0148.0.insert.ext154.us.i.1 = and i64 %.0332333.us.i.1, 4294967295
  %.sroa.0148.0.insert.insert156.us.i.1 = or disjoint i64 %.sroa.0148.0.insert.ext154.us.i.1, %.sroa.8161.0.insert.ext.us.i.1 ; 2 uses
  store i64 %.sroa.0148.0.insert.insert156.us.i.1, ptr %i.ky, align 4, !tbaa !209, !noalias !661
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  store i64 %.sroa.0148.0.insert.insert156.us.i.1, ptr %i.mc, align 4, !tbaa !209, !noalias !661
  %i.md = getelementptr inbounds nuw i8, ptr %i.ky, i64 16
  br label %_ZNSt3__16vectorINS_4pairINS1_IiiEES2_EENS_9allocatorIS3_EEE12emplace_backIJRS2_S8_EEERS3_DpOT_.exit.us.i.1

_ZNSt3__16vectorINS_4pairINS1_IiiEES2_EENS_9allocatorIS3_EEE12emplace_backIJRS2_S8_EEERS3_DpOT_.exit.us.i.1: ; preds = %bb.af, %bb.ae, %_ZNSt3__114__split_bufferINS_4pairINS1_IiiEES2_EERNS_9allocatorIS3_EEE5clearB8nn180100Ev.exit.i.i.i.us.i.1
  %.0.i414.us.i.1 = phi ptr [ %i.md, %bb.af ], [ %i.ls, %_ZNSt3__114__split_bufferINS_4pairINS1_IiiEES2_EERNS_9allocatorIS3_EEE5clearB8nn180100Ev.exit.i.i.i.us.i.1 ], [ %i.ls, %bb.ae ]
  store ptr %.0.i414.us.i.1, ptr %i.ii, align 8, !tbaa !689, !noalias !661
  %i.me = shl i64 %.0332333.us.i.1, 32
  %i.mf = ashr exact i64 %i.me, 32
  %i.mg = getelementptr i8, ptr %i.iw, i64 %i.mf
  store i8 1, ptr %i.mg, align 1, !tbaa !72, !noalias !661
  %i.mh = add nuw i64 %.0332333.us.i.1, 1         ; 2 uses
  %i.mi = icmp ult i64 %i.mh, %i.ji
  br i1 %i.mi, label %._crit_edge.us.i, label %._crit_edge.us.i.1, !llvm.loop !578

end_hunk_0
begin_hunk_1_@_ZN3jxl23FindBestPatchDictionaryERKNS_6Image3IfEEPNS_18PassesEncoderStateERK15JxlCmsInterfacePNS_10ThreadPoolEPNS_6AuxOutEb:bb.a
  call void @llvm.memset.p0.i64(ptr align 64 %i.bax, i8 0, i64 %i.baz, i1 false)
  %i.bba = add nuw nsw i64 %.07.i, 1              ; 2 uses
  %i.bbb = load i32, ptr %i.azs, align 4, !tbaa !100
  %i.bbc = zext i32 %i.bbb to i64
  %i.bbd = icmp samesign ult i64 %i.bba, %i.bbc
  br i1 %i.bbd, label %.lr.ph.i187, label %.lr.ph.preheader, !llvm.loop !567

.lr.ph.preheader:                                 ; preds = %.lr.ph.i187, %bb.eq
  %i.bbe = load ptr, ptr %i.azt, align 8, !tbaa !102 ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bbe, i64 64) ]
  %i.bbf = load i64, ptr %i.azu, align 8, !tbaa !101 ; 13 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge567.split
  %.0156569 = phi i64 [ %i.bdg, %._crit_edge567.split ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %.0400568 = phi i64 [ %.sroa.speculated, %._crit_edge567.split ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.bbg = getelementptr inbounds nuw [184 x i8], ptr %.sroa.0347.1, i64 %.0156569 ; 2 uses
  %i.bbh = load i64, ptr %i.bbg, align 8, !tbaa !231 ; 13 uses
  %i.bbi = getelementptr inbounds nuw i8, ptr %i.bbg, i64 8
  %i.bbj = load i64, ptr %i.bbi, align 8, !tbaa !232 ; 9 uses
  %.not552 = icmp ule i64 %i.bbj, %i.bag          ; 2 uses
  %.not165542 = icmp ule i64 %i.bbh, %i.bad
  %or.cond1074.not = select i1 %.not552, i1 %.not165542, i1 false
  br i1 %or.cond1074.not, label %.preheader473.preheader, label %.thread442

.preheader473.preheader:                          ; preds = %.lr.ph
  %i.bbk = add i64 %i.bbj, -1                     ; 2 uses
  %xtraiter = and i64 %i.bbj, 1
  %i.bbl = icmp eq i64 %i.bbk, 0
  %unroll_iter = and i64 %i.bbj, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod1369 = trunc i64 %i.bbj to i1
  br label %.preheader473

.preheader473:                                    ; preds = %.preheader473.preheader, %._crit_edge
  %.0553 = phi i64 [ %i.bcm, %._crit_edge ], [ 0, %.preheader473.preheader ] ; 8 uses
  %i.bbm = add i64 %.0553, %i.bbj                 ; 2 uses
  %i.bbn = icmp ult i64 %.0553, %i.bbm
  br i1 %i.bbn, label %.preheader471.us, label %.thread435.thread

.thread435.thread:                                ; preds = %.preheader473
  %i.bbo = load ptr, ptr %35, align 8, !tbaa !233
  %i.bbp = getelementptr inbounds nuw [16 x i8], ptr %i.bbo, i64 %.0156569 ; 2 uses
  store i64 0, ptr %i.bbp, align 8, !tbaa !707
  %i.bbq = getelementptr inbounds nuw i8, ptr %i.bbp, i64 8
  store i64 %.0553, ptr %i.bbq, align 8, !tbaa !708
  br label %._crit_edge567.split

.preheader471.us:                                 ; preds = %.preheader473, %bb.er
  %i.bbr = phi i64 [ %i.bbu, %bb.er ], [ %i.bbh, %.preheader473 ] ; 6 uses
  %storemerge543.us = phi i64 [ %i.bbt, %bb.er ], [ 0, %.preheader473 ] ; 8 uses
  %i.bbs = icmp ult i64 %storemerge543.us, %i.bbr
  br i1 %i.bbs, label %.preheader470.us.us.preheader, label %.thread435

.preheader470.us.us.preheader:                    ; preds = %.preheader471.us
  br i1 %i.bbl, label %.preheader470.us.us.epil.preheader, label %.preheader470.us.us

bb.er:                                            ; preds = %._crit_edge538.us
  %i.bbt = add i64 %.1148.lcssa.us.us.lcssa, 1    ; 2 uses
  %i.bbu = add i64 %i.bbt, %i.bbh                 ; 2 uses
  %.not165.us = icmp ugt i64 %i.bbu, %i.bad
  br i1 %.not165.us, label %._crit_edge, label %.preheader471.us, !llvm.loop !604

.preheader470.us.us:                              ; preds = %.preheader470.us.us.preheader, %._crit_edge.us.us.1
  %.0146537.us.us = phi i64 [ %i.bcg, %._crit_edge.us.us.1 ], [ %.0553, %.preheader470.us.us.preheader ] ; 3 uses
  %.0149536.us.us = phi i1 [ %.1150.us.us.1, %._crit_edge.us.us.1 ], [ false, %.preheader470.us.us.preheader ]
  %niter = phi i64 [ %niter.next.1, %._crit_edge.us.us.1 ], [ 0, %.preheader470.us.us.preheader ]
  %i.bbv = mul i64 %.0146537.us.us, %i.bbf
  %i.bbw = getelementptr i8, ptr %i.bbe, i64 %i.bbv
  br label %bb.es

bb.es:                                            ; preds = %bb.et, %.preheader470.us.us
  %.1148531.us.us = phi i64 [ %storemerge543.us, %.preheader470.us.us ], [ %i.bbz, %bb.et ] ; 2 uses
  %i.bbx = getelementptr i8, ptr %i.bbw, i64 %.1148531.us.us
  %i.bby = load i8, ptr %i.bbx, align 1, !tbaa !72
  %.not167.us.us = icmp eq i8 %i.bby, 0
  br i1 %.not167.us.us, label %bb.et, label %._crit_edge.us.us

bb.et:                                            ; preds = %bb.es
  %i.bbz = add i64 %.1148531.us.us, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.bbz, %i.bbr
  br i1 %exitcond.not, label %._crit_edge.us.us, label %bb.es, !llvm.loop !605

._crit_edge.us.us:                                ; preds = %bb.et, %bb.es
  %.1150.us.us = phi i1 [ true, %bb.es ], [ %.0149536.us.us, %bb.et ]
  %i.bca = add nuw i64 %.0146537.us.us, 1
  %i.bcb = mul i64 %i.bca, %i.bbf
  %i.bcc = getelementptr i8, ptr %i.bbe, i64 %i.bcb
  br label %bb.eu

bb.eu:                                            ; preds = %bb.ev, %._crit_edge.us.us
  %.1148531.us.us.1 = phi i64 [ %storemerge543.us, %._crit_edge.us.us ], [ %i.bcf, %bb.ev ] ; 3 uses
  %i.bcd = getelementptr i8, ptr %i.bcc, i64 %.1148531.us.us.1
  %i.bce = load i8, ptr %i.bcd, align 1, !tbaa !72
  %.not167.us.us.1 = icmp eq i8 %i.bce, 0
  br i1 %.not167.us.us.1, label %bb.ev, label %._crit_edge.us.us.1

bb.ev:                                            ; preds = %bb.eu
  %i.bcf = add i64 %.1148531.us.us.1, 1           ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.bcf, %i.bbr
  br i1 %exitcond.not.1, label %._crit_edge.us.us.1, label %bb.eu, !llvm.loop !605

._crit_edge.us.us.1:                              ; preds = %bb.ev, %bb.eu
  %.1148.lcssa.us.us.1 = phi i64 [ %.1148531.us.us.1, %bb.eu ], [ %i.bbr, %bb.ev ]
  %.1150.us.us.1 = phi i1 [ true, %bb.eu ], [ %.1150.us.us, %bb.ev ] ; 3 uses
  %i.bcg = add nuw i64 %.0146537.us.us, 2         ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge538.us.unr-lcssa, label %.preheader470.us.us, !llvm.loop !606

._crit_edge538.us.unr-lcssa:                      ; preds = %._crit_edge.us.us.1
  br i1 %lcmp.mod.not, label %._crit_edge538.us, label %.preheader470.us.us.epil.preheader

.preheader470.us.us.epil.preheader:               ; preds = %._crit_edge538.us.unr-lcssa, %.preheader470.us.us.preheader
  %.0146537.us.us.epil.init = phi i64 [ %.0553, %.preheader470.us.us.preheader ], [ %i.bcg, %._crit_edge538.us.unr-lcssa ]
  %.0149536.us.us.epil.init = phi i1 [ false, %.preheader470.us.us.preheader ], [ %.1150.us.us.1, %._crit_edge538.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1369)
  %i.bch = mul i64 %.0146537.us.us.epil.init, %i.bbf
  %i.bci = getelementptr i8, ptr %i.bbe, i64 %i.bch
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ex, %.preheader470.us.us.epil.preheader
  %.1148531.us.us.epil = phi i64 [ %storemerge543.us, %.preheader470.us.us.epil.preheader ], [ %i.bcl, %bb.ex ] ; 3 uses
  %i.bcj = getelementptr i8, ptr %i.bci, i64 %.1148531.us.us.epil
  %i.bck = load i8, ptr %i.bcj, align 1, !tbaa !72
  %.not167.us.us.epil = icmp eq i8 %i.bck, 0
  br i1 %.not167.us.us.epil, label %bb.ex, label %._crit_edge538.us

bb.ex:                                            ; preds = %bb.ew
  %i.bcl = add i64 %.1148531.us.us.epil, 1        ; 2 uses
  %exitcond.not.epil = icmp eq i64 %i.bcl, %i.bbr
  br i1 %exitcond.not.epil, label %._crit_edge538.us, label %bb.ew, !llvm.loop !605

._crit_edge538.us:                                ; preds = %bb.ew, %bb.ex, %._crit_edge538.us.unr-lcssa
  %.1148.lcssa.us.us.lcssa = phi i64 [ %.1148.lcssa.us.us.1, %._crit_edge538.us.unr-lcssa ], [ %.1148531.us.us.epil, %bb.ew ], [ %i.bbr, %bb.ex ]
  %.1150.us.us.lcssa = phi i1 [ %.1150.us.us.1, %._crit_edge538.us.unr-lcssa ], [ true, %bb.ew ], [ %.0149536.us.us.epil.init, %bb.ex ]
  br i1 %.1150.us.us.lcssa, label %bb.er, label %.thread435

._crit_edge:                                      ; preds = %bb.er
  %i.bcm = add nuw i64 %.0553, 1                  ; 2 uses
  %i.bcn = add i64 %i.bcm, %i.bbj
  %.not = icmp ugt i64 %i.bcn, %i.bag
  br i1 %.not, label %.thread442, label %.preheader473, !llvm.loop !607

.thread435:                                       ; preds = %.preheader471.us, %._crit_edge538.us
  %i.bco = load ptr, ptr %35, align 8, !tbaa !233
  %i.bcp = getelementptr inbounds nuw [16 x i8], ptr %i.bco, i64 %.0156569 ; 2 uses
  store i64 %storemerge543.us, ptr %i.bcp, align 8, !tbaa !707
  %i.bcq = getelementptr inbounds nuw i8, ptr %i.bcp, i64 8
  store i64 %.0553, ptr %i.bcq, align 8, !tbaa !708
  %i.bcr = add i64 %storemerge543.us, %i.bbh
  %i.bcs = icmp ult i64 %storemerge543.us, %i.bcr
  br i1 %i.bcs, label %.preheader472.preheader, label %._crit_edge567.split

.preheader472.preheader:                          ; preds = %.thread435
  %i.bct = mul i64 %i.bbf, %.0553
  %i.bcu = getelementptr i8, ptr %i.bbe, i64 %storemerge543.us
  %i.bcv = getelementptr i8, ptr %i.bcu, i64 %i.bct ; 9 uses
  %xtraiter1370 = and i64 %i.bbj, 7               ; 3 uses
  %i.bcw = icmp ult i64 %i.bbk, 7
  br i1 %i.bcw, label %.preheader472.epil.preheader, label %.preheader472.preheader.new

.preheader472.preheader.new:                      ; preds = %.preheader472.preheader
  %unroll_iter1373 = and i64 %i.bbj, -8
  br label %.preheader472

.preheader472:                                    ; preds = %.preheader472, %.preheader472.preheader.new
  %indvar = phi i64 [ 0, %.preheader472.preheader.new ], [ %indvar.next.7, %.preheader472 ] ; 9 uses
  %niter1374 = phi i64 [ 0, %.preheader472.preheader.new ], [ %niter1374.next.7, %.preheader472 ]
  %i.bcx = mul i64 %i.bbf, %indvar
  %scevgep = getelementptr i8, ptr %i.bcv, i64 %i.bcx
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 1, i64 %i.bbh, i1 false), !tbaa !72
  %indvar.next = or disjoint i64 %indvar, 1
  %i.bcy = mul i64 %i.bbf, %indvar.next
  %scevgep.1 = getelementptr i8, ptr %i.bcv, i64 %i.bcy
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.1, i8 1, i64 %i.bbh, i1 false), !tbaa !72
  %indvar.next.1 = or disjoint i64 %indvar, 2
  %i.bcz = mul i64 %i.bbf, %indvar.next.1
  %scevgep.2 = getelementptr i8, ptr %i.bcv, i64 %i.bcz
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.2, i8 1, i64 %i.bbh, i1 false), !tbaa !72
  %indvar.next.2 = or disjoint i64 %indvar, 3
  %i.bda = mul i64 %i.bbf, %indvar.next.2
  %scevgep.3 = getelementptr i8, ptr %i.bcv, i64 %i.bda
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.3, i8 1, i64 %i.bbh, i1 false), !tbaa !72
  %indvar.next.3 = or disjoint i64 %indvar, 4
  %i.bdb = mul i64 %i.bbf, %indvar.next.3
  %scevgep.4 = getelementptr i8, ptr %i.bcv, i64 %i.bdb
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.4, i8 1, i64 %i.bbh, i1 false), !tbaa !72
  %indvar.next.4 = or disjoint i64 %indvar, 5
  %i.bdc = mul i64 %i.bbf, %indvar.next.4
  %scevgep.5 = getelementptr i8, ptr %i.bcv, i64 %i.bdc
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.5, i8 1, i64 %i.bbh, i1 false), !tbaa !72
  %indvar.next.5 = or disjoint i64 %indvar, 6
  %i.bdd = mul i64 %i.bbf, %indvar.next.5
  %scevgep.6 = getelementptr i8, ptr %i.bcv, i64 %i.bdd
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.6, i8 1, i64 %i.bbh, i1 false), !tbaa !72
  %indvar.next.6 = or disjoint i64 %indvar, 7
  %i.bde = mul i64 %i.bbf, %indvar.next.6
  %scevgep.7 = getelementptr i8, ptr %i.bcv, i64 %i.bde
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.7, i8 1, i64 %i.bbh, i1 false), !tbaa !72
  %indvar.next.7 = add i64 %indvar, 8             ; 2 uses
  %niter1374.next.7 = add i64 %niter1374, 8       ; 2 uses
  %niter1374.ncmp.7 = icmp eq i64 %niter1374.next.7, %unroll_iter1373
  br i1 %niter1374.ncmp.7, label %._crit_edge567.split.loopexit.unr-lcssa, label %.preheader472, !llvm.loop !608

._crit_edge567.split.loopexit.unr-lcssa:          ; preds = %.preheader472
  %lcmp.mod1371.not = icmp eq i64 %xtraiter1370, 0
  br i1 %lcmp.mod1371.not, label %._crit_edge567.split, label %.preheader472.epil.preheader

.preheader472.epil.preheader:                     ; preds = %._crit_edge567.split.loopexit.unr-lcssa, %.preheader472.preheader
  %indvar.epil.init = phi i64 [ 0, %.preheader472.preheader ], [ %indvar.next.7, %._crit_edge567.split.loopexit.unr-lcssa ]
  %lcmp.mod1372 = icmp ne i64 %xtraiter1370, 0
  call void @llvm.assume(i1 %lcmp.mod1372)
  br label %.preheader472.epil

.preheader472.epil:                               ; preds = %.preheader472.epil, %.preheader472.epil.preheader
  %indvar.epil = phi i64 [ %indvar.epil.init, %.preheader472.epil.preheader ], [ %indvar.next.epil, %.preheader472.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader472.epil.preheader ], [ %epil.iter.next, %.preheader472.epil ]
  %i.bdf = mul i64 %i.bbf, %indvar.epil
  %scevgep.epil = getelementptr i8, ptr %i.bcv, i64 %i.bdf
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.epil, i8 1, i64 %i.bbh, i1 false), !tbaa !72
  %indvar.next.epil = add i64 %indvar.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1370
  br i1 %epil.iter.cmp.not, label %._crit_edge567.split, label %.preheader472.epil, !llvm.loop !609

._crit_edge567.split:                             ; preds = %._crit_edge567.split.loopexit.unr-lcssa, %.preheader472.epil, %.thread435.thread, %.thread435
  %.sroa.speculated = call i64 @llvm.umax.i64(i64 %.0400568, i64 %i.bbm) ; 2 uses
  %i.bdg = add nuw i64 %.0156569, 1               ; 2 uses
  %exitcond694.not = icmp eq i64 %i.bdg, %i.ays
  br i1 %exitcond694.not, label %.thread442, label %.lr.ph, !llvm.loop !610

.thread442:                                       ; preds = %._crit_edge567.split, %.lr.ph, %._crit_edge
  %.0400485 = phi i64 [ %.0400568, %._crit_edge ], [ %.0400568, %.lr.ph ], [ %.sroa.speculated, %._crit_edge567.split ] ; 2 uses
  %.2159 = phi i1 [ false, %._crit_edge ], [ false, %.lr.ph ], [ %.not552, %._crit_edge567.split ]
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.azq) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #19
  %.pr445 = load i32, ptr %i.azl, align 8, !tbaa !192
  %i.bdh = icmp eq i32 %.pr445, 0
  br i1 %i.bdh, label %bb.ey, label %_ZN3jxl8StatusOrINS_5PlaneIhEEED2Ev.exit

bb.ey:                                            ; preds = %.thread442
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.azm) #23
  br label %_ZN3jxl8StatusOrINS_5PlaneIhEEED2Ev.exit

_ZN3jxl8StatusOrINS_5PlaneIhEEED2Ev.exit:         ; preds = %.thread442, %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #19
  br i1 %.2159, label %bb.ez, label %bb.en

bb.ez:                                            ; preds = %_ZN3jxl8StatusOrINS_5PlaneIhEEED2Ev.exit
  %.not166 = icmp ugt i64 %.0400485, %i.bag
  br i1 %.not166, label %bb.gq, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #19
  call void @_ZN3jxl6Image3IfE6CreateEP22JxlMemoryManagerStructmm(ptr dead_on_unwind nonnull writable sret(%"class.jxl::StatusOr.210") align 8 %38, ptr noundef %i.ayn, i64 noundef %i.bad, i64 noundef %.0400485) #24
  %i.bdi = getelementptr inbounds nuw i8, ptr %38, i64 168 ; 2 uses
  %i.bdj = load i32, ptr %i.bdi, align 8, !tbaa !207 ; 2 uses
  %i.bdk = icmp eq i32 %i.bdj, 0
  br i1 %i.bdk, label %bb.fb, label %_ZN3jxl8StatusOrINS_6Image3IfEEED2Ev.exit

bb.fb:                                            ; preds = %bb.fa
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !710)
  %i.bdl = getelementptr inbounds nuw i8, ptr %39, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.bdl, i8 0, i64 144, i1 false), !alias.scope !710
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %39, ptr noundef nonnull align 8 dereferenceable(172) %38, i64 24, i1 false)
  %i.bdm = getelementptr inbounds nuw i8, ptr %38, i64 24 ; 2 uses
  %i.bdn = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.bdl, ptr noundef nonnull align 8 dereferenceable(24) %i.bdm) #23 ; 0 uses
  %i.bdo = getelementptr inbounds nuw i8, ptr %38, i64 48
  %i.bdp = load i64, ptr %i.bdo, align 8, !tbaa !193, !noalias !710
  %i.bdq = getelementptr inbounds nuw i8, ptr %39, i64 48
  store i64 %i.bdp, ptr %i.bdq, align 8, !tbaa !193, !alias.scope !710
  %i.bdr = getelementptr inbounds nuw i8, ptr %38, i64 56
  %i.bds = getelementptr inbounds nuw i8, ptr %39, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bds, ptr noundef nonnull align 8 dereferenceable(56) %i.bdr, i64 24, i1 false)
  %i.bdt = getelementptr inbounds nuw i8, ptr %39, i64 80 ; 2 uses
  %i.bdu = getelementptr inbounds nuw i8, ptr %38, i64 80 ; 2 uses
  %i.bdv = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.bdt, ptr noundef nonnull align 8 dereferenceable(24) %i.bdu) #23 ; 0 uses
  %i.bdw = getelementptr inbounds nuw i8, ptr %38, i64 104
  %i.bdx = load i64, ptr %i.bdw, align 8, !tbaa !193, !noalias !710
  %i.bdy = getelementptr inbounds nuw i8, ptr %39, i64 104
  store i64 %i.bdx, ptr %i.bdy, align 8, !tbaa !193, !alias.scope !710
  %i.bdz = getelementptr inbounds nuw i8, ptr %38, i64 112
  %i.bea = getelementptr inbounds nuw i8, ptr %39, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bea, ptr noundef nonnull align 8 dereferenceable(56) %i.bdz, i64 24, i1 false)
  %i.beb = getelementptr inbounds nuw i8, ptr %39, i64 136 ; 2 uses
  %i.bec = getelementptr inbounds nuw i8, ptr %38, i64 136 ; 2 uses
  %i.bed = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.beb, ptr noundef nonnull align 8 dereferenceable(24) %i.bec) #23 ; 0 uses
  %i.bee = getelementptr inbounds nuw i8, ptr %38, i64 160
  %i.bef = load i64, ptr %i.bee, align 8, !tbaa !193, !noalias !710
  %i.beg = getelementptr inbounds nuw i8, ptr %39, i64 160
  store i64 %i.bef, ptr %i.beg, align 8, !tbaa !193, !alias.scope !710
  %i.beh = getelementptr inbounds nuw i8, ptr %39, i64 4 ; 4 uses
  %i.bei = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 4 uses
  %i.bej = load i32, ptr %i.beh, align 4, !tbaa !100 ; 2 uses
  %.not13.i = icmp eq i32 %i.bej, 0
  br i1 %.not13.i, label %.lr.ph585, label %.lr.ph.i190

.lr.ph.i190:                                      ; preds = %bb.fb
  %i.bek = getelementptr inbounds nuw i8, ptr %39, i64 40
  %i.bel = load i32, ptr %39, align 8, !tbaa !194 ; 3 uses
  %i.bem = icmp eq i32 %i.bel, 0
  br i1 %i.bem, label %.lr.ph585, label %.lr.ph.split.i

._crit_edge.i193:                                 ; preds = %bb.fh
  %.not13.1.i = icmp eq i32 %i.bfz, 0
  br i1 %.not13.1.i, label %.lr.ph585, label %.lr.ph.1.i

.lr.ph.1.i:                                       ; preds = %._crit_edge.i193
  %i.ben = getelementptr inbounds nuw i8, ptr %39, i64 96
  %i.beo = icmp eq i32 %.pr.i194, 0
  br i1 %i.beo, label %.lr.ph585, label %.lr.ph.split.1.i

.lr.ph.split.1.i:                                 ; preds = %.lr.ph.1.i, %bb.fd
  %.pr41.i725 = phi i32 [ %.pr41.i, %bb.fd ], [ %.pr.i194, %.lr.ph.1.i ]
  %i.bep = phi i32 [ %i.bex, %bb.fd ], [ %i.bfz, %.lr.ph.1.i ]
  %i.beq = phi i32 [ %i.bey, %bb.fd ], [ %.pr.i194, %.lr.ph.1.i ] ; 2 uses
  %.011.1.i = phi i64 [ %i.bez, %bb.fd ], [ 0, %.lr.ph.1.i ] ; 2 uses
  %.not.1.i = icmp eq i32 %i.beq, 0
  br i1 %.not.1.i, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %.lr.ph.split.1.i
  %i.ber = zext i32 %i.beq to i64
  %i.bes = load ptr, ptr %i.ben, align 8, !tbaa !102
  %i.bet = load i64, ptr %i.bei, align 8, !tbaa !101
  %i.beu = mul i64 %i.bet, %.011.1.i
  %i.bev = getelementptr inbounds nuw i8, ptr %i.bes, i64 %i.beu
  %i.bew = shl nuw nsw i64 %i.ber, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.bev, i8 0, i64 %i.bew, i1 false)
  %.pre17.i = load i32, ptr %39, align 8, !tbaa !194 ; 2 uses
  %.pre19.i = load i32, ptr %i.beh, align 4, !tbaa !100
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %.lr.ph.split.1.i
  %.pr41.i = phi i32 [ %.pre17.i, %bb.fc ], [ %.pr41.i725, %.lr.ph.split.1.i ] ; 3 uses
  %i.bex = phi i32 [ %.pre19.i, %bb.fc ], [ %i.bep, %.lr.ph.split.1.i ] ; 4 uses
  %i.bey = phi i32 [ %.pre17.i, %bb.fc ], [ 0, %.lr.ph.split.1.i ]
  %i.bez = add nuw nsw i64 %.011.1.i, 1           ; 2 uses
  %i.bfa = zext i32 %i.bex to i64
  %i.bfb = icmp samesign ult i64 %i.bez, %i.bfa
  br i1 %i.bfb, label %.lr.ph.split.1.i, label %._crit_edge.1.i, !llvm.loop !576

._crit_edge.1.i:                                  ; preds = %bb.fd
  %.not13.2.i = icmp eq i32 %i.bex, 0
  br i1 %.not13.2.i, label %.lr.ph585, label %.lr.ph.2.i

.lr.ph.2.i:                                       ; preds = %._crit_edge.1.i
  %i.bfc = getelementptr inbounds nuw i8, ptr %39, i64 152
  %i.bfd = icmp eq i32 %.pr41.i, 0
  br i1 %i.bfd, label %.lr.ph585, label %.lr.ph.split.2.i

.lr.ph.split.2.i:                                 ; preds = %.lr.ph.2.i, %bb.ff
  %i.bfe = phi i32 [ %i.bfm, %bb.ff ], [ %i.bex, %.lr.ph.2.i ]
  %i.bff = phi i32 [ %i.bfn, %bb.ff ], [ %.pr41.i, %.lr.ph.2.i ] ; 2 uses
  %.011.2.i = phi i64 [ %i.bfo, %bb.ff ], [ 0, %.lr.ph.2.i ] ; 2 uses
  %.not.2.i = icmp eq i32 %i.bff, 0
  br i1 %.not.2.i, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %.lr.ph.split.2.i
  %i.bfg = zext i32 %i.bff to i64
  %i.bfh = load ptr, ptr %i.bfc, align 8, !tbaa !102
  %i.bfi = load i64, ptr %i.bei, align 8, !tbaa !101
  %i.bfj = mul i64 %i.bfi, %.011.2.i
  %i.bfk = getelementptr inbounds nuw i8, ptr %i.bfh, i64 %i.bfj
  %i.bfl = shl nuw nsw i64 %i.bfg, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.bfk, i8 0, i64 %i.bfl, i1 false)
  %.pre20.i = load i32, ptr %39, align 8, !tbaa !194
  %.pre22.i = load i32, ptr %i.beh, align 4, !tbaa !100
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %.lr.ph.split.2.i
  %i.bfm = phi i32 [ %.pre22.i, %bb.fe ], [ %i.bfe, %.lr.ph.split.2.i ] ; 2 uses
  %i.bfn = phi i32 [ %.pre20.i, %bb.fe ], [ 0, %.lr.ph.split.2.i ]
  %i.bfo = add nuw nsw i64 %.011.2.i, 1           ; 2 uses
  %i.bfp = zext i32 %i.bfm to i64
  %i.bfq = icmp samesign ult i64 %i.bfo, %i.bfp
  br i1 %i.bfq, label %.lr.ph.split.2.i, label %.lr.ph585, !llvm.loop !576

.lr.ph.split.i:                                   ; preds = %.lr.ph.i190, %bb.fh
  %.pr.i194723 = phi i32 [ %.pr.i194, %bb.fh ], [ %i.bel, %.lr.ph.i190 ]
  %i.bfr = phi i32 [ %i.bfz, %bb.fh ], [ %i.bej, %.lr.ph.i190 ]
  %i.bfs = phi i32 [ %i.bga, %bb.fh ], [ %i.bel, %.lr.ph.i190 ] ; 2 uses
  %.011.i = phi i64 [ %i.bgb, %bb.fh ], [ 0, %.lr.ph.i190 ] ; 2 uses
  %.not.i191 = icmp eq i32 %i.bfs, 0
  br i1 %.not.i191, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %.lr.ph.split.i
  %i.bft = zext i32 %i.bfs to i64
  %i.bfu = load ptr, ptr %i.bek, align 8, !tbaa !102
  %i.bfv = load i64, ptr %i.bei, align 8, !tbaa !101
  %i.bfw = mul i64 %i.bfv, %.011.i
  %i.bfx = getelementptr inbounds nuw i8, ptr %i.bfu, i64 %i.bfw
  %i.bfy = shl nuw nsw i64 %i.bft, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.bfx, i8 0, i64 %i.bfy, i1 false)
  %.pre.i192 = load i32, ptr %39, align 8, !tbaa !194 ; 2 uses
  %.pre16.i = load i32, ptr %i.beh, align 4, !tbaa !100
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %.lr.ph.split.i
  %.pr.i194 = phi i32 [ %.pre.i192, %bb.fg ], [ %.pr.i194723, %.lr.ph.split.i ] ; 4 uses
  %i.bfz = phi i32 [ %.pre16.i, %bb.fg ], [ %i.bfr, %.lr.ph.split.i ] ; 4 uses
  %i.bga = phi i32 [ %.pre.i192, %bb.fg ], [ 0, %.lr.ph.split.i ]
  %i.bgb = add nuw nsw i64 %.011.i, 1             ; 2 uses
  %i.bgc = zext i32 %i.bfz to i64
  %i.bgd = icmp samesign ult i64 %i.bgb, %i.bgc
  br i1 %i.bgd, label %.lr.ph.split.i, label %._crit_edge.i193, !llvm.loop !576

.lr.ph585:                                        ; preds = %bb.ff, %.lr.ph.2.i, %._crit_edge.1.i, %.lr.ph.1.i, %._crit_edge.i193, %.lr.ph.i190, %bb.fb
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %40, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %41, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %42, i8 0, i64 24, i1 false)
  %i.bge = getelementptr inbounds nuw i8, ptr %39, i64 40
  %i.bgf = load ptr, ptr %i.bge, align 8, !tbaa !102 ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bgf, i64 64) ]
  %i.bgg = getelementptr inbounds nuw i8, ptr %39, i64 96
  %i.bgh = load ptr, ptr %i.bgg, align 8, !tbaa !102 ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bgh, i64 64) ]
  %i.bgi = getelementptr inbounds nuw i8, ptr %39, i64 152
  %i.bgj = load ptr, ptr %i.bgi, align 8, !tbaa !102 ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bgj, i64 64) ]
  %i.bgk = load i64, ptr %i.bei, align 8, !tbaa !101 ; 5 uses
  %i.bgl = lshr i64 %i.bgk, 2                     ; 2 uses
  %i.bgm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bgn = load ptr, ptr %i.bgm, align 8, !tbaa !236
  %i.bgo = getelementptr inbounds nuw i8, ptr %i.bgn, i64 320
end_hunk_1
