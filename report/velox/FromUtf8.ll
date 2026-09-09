Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/FromUtf8?download=true
inline.NumInlined: 7620
inline.NumDeleted: 2368
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_:bb.a
bb.ab:                                            ; preds = %.loopexit.i.i, %.lr.ph.i.i
  %i.cv = phi i32 [ %i.cm, %.lr.ph.i.i ], [ %i.dv, %.loopexit.i.i ]
  %indvars.iv.i.i = phi i64 [ %i.cu, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %.loopexit.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #27
  %i.cw = load ptr, ptr %i.cn, align 8, !tbaa !202
  %i.cx = load i8, ptr %i.co, align 2, !tbaa !203, !range !130, !noundef !131
  %i.cy = trunc nuw i8 %i.cx to i1
  %i.cz = trunc nsw i64 %indvars.iv.i.i to i32    ; 2 uses
  br i1 %i.cy, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.da = load i8, ptr %i.cp, align 1, !tbaa !179, !range !130, !noundef !131
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dc = load i32, ptr %i.cr, align 8, !tbaa !204
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.dd = load ptr, ptr %i.cq, align 8, !tbaa !205
  %i.de = getelementptr inbounds [4 x i8], ptr %i.dd, i64 %indvars.iv.i.i
  %i.df = load i32, ptr %i.de, align 4, !tbaa !116
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i.i: ; preds = %bb.ae, %bb.ad, %bb.ab
  %.0.i.i.i.i.i = phi i32 [ %i.df, %bb.ae ], [ %i.dc, %bb.ad ], [ %i.cz, %bb.ab ]
  %i.dg = sext i32 %.0.i.i.i.i.i to i64
  %i.dh = getelementptr inbounds [16 x i8], ptr %i.cw, i64 %i.dg ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.dh, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %.sroa.2.0.copyload.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !107
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %27, align 8
  store ptr %.sroa.2.0.copyload.i.i.i.i, ptr %i.cs, align 8
  %i.di = trunc i64 %.sroa.0.0.copyload.i.i.i.i to i32 ; 2 uses
  %i.dj = icmp eq i32 %i.di, 0
  br i1 %i.dj, label %.loopexit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i.i, %bb.af
  %i.dk = phi i32 [ %i.du, %bb.af ], [ %i.di, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i.i ] ; 2 uses
  %.0815.i.i.i = phi i32 [ %i.dt, %bb.af ], [ 0, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i.i ] ; 3 uses
  %i.dl = zext nneg i32 %.0815.i.i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  %i.dm = icmp ult i32 %i.dk, 13
  %i.dn = load ptr, ptr %i.cs, align 8
  %i.do = select i1 %i.dm, ptr %i.ct, ptr %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dl
  %narrow.i.i.i = sub nuw i32 %i.dk, %.0815.i.i.i
  %i.dq = zext i32 %narrow.i.i.i to i64
  %i.dr = invoke noundef i32 @_ZN8facebook5velox9functions20tryGetUtf8CharLengthEPKclRi(ptr noundef %i.dp, i64 noundef %i.dq, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
          to label %.noexc unwind label %.loopexit217 ; 2 uses

.noexc:                                           ; preds = %.lr.ph.i.i.i
  %i.ds = icmp sgt i32 %i.dr, -1
  br i1 %i.ds, label %bb.af, label %_ZZN8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function19findFirstInvalidRowERKNS0_13DecodedVectorERKNS0_17SelectivityVectorEENKUlT_E_clIiEEDaSA_.exit.i.i

bb.af:                                            ; preds = %.noexc
  %i.dt = add nuw nsw i32 %i.dr, %.0815.i.i.i     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  %i.du = load i32, ptr %27, align 8, !tbaa !207  ; 2 uses
  %.not.i.i.i = icmp ugt i32 %i.du, %i.dt
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.loopexit.i.i, !llvm.loop !729

_ZZN8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function19findFirstInvalidRowERKNS0_13DecodedVectorERKNS0_17SelectivityVectorEENKUlT_E_clIiEEDaSA_.exit.i.i: ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #27
  br label %.loopexit222.thread

.loopexit.loopexit.i.i:                           ; preds = %bb.af
  %.pre.i.i = load i32, ptr %i.cl, align 8, !tbaa !199
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.loopexit.loopexit.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i.i
  %i.dv = phi i32 [ %.pre.i.i, %.loopexit.loopexit.i.i ], [ %i.cv, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #27
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.dw = sext i32 %i.dv to i64
  %.not23.i.i = icmp slt i64 %indvars.iv.next.i.i, %i.dw
  br i1 %.not23.i.i, label %bb.ab, label %.loopexit222, !llvm.loop !730

bb.ag:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i
  %i.dx = load ptr, ptr %1, align 8, !tbaa !201   ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !187 ; 6 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !199 ; 7 uses
  %.not.i.i.i.i.i = icmp slt i32 %i.dz, %i.eb
  br i1 %.not.i.i.i.i.i, label %bb.ah, label %.loopexit222

bb.ah:                                            ; preds = %bb.ag
  %i.ec = add i32 %i.dz, 63                       ; 2 uses
  %i.ed = srem i32 %i.ec, 64
  %i.ee = sub nsw i32 %i.ec, %i.ed                ; 6 uses
  %i.ef = and i32 %i.eb, -64                      ; 6 uses
  %i.eg = icmp slt i32 %i.ef, %i.ee
  br i1 %i.eg, label %bb.ai, label %bb.ao

bb.ai:                                            ; preds = %bb.ah
  %i.eh = ashr i32 %i.eb, 6
  %i.ei = and i32 %i.eb, 63
  %i.ej = zext nneg i32 %i.ei to i64
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.ej
  %i.ek = xor i64 %notmask.i.i.i.i.i.i, -1
  %i.el = sub nsw i32 %i.ee, %i.dz                ; 2 uses
  %i.em = zext nneg i32 %i.el to i64
  %notmask.i.i.i.i.i.i.i = shl nsw i64 -1, %i.em
  %i.en = xor i64 %notmask.i.i.i.i.i.i.i, -1
  %i.eo = sub nsw i32 64, %i.el
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = shl i64 %i.en, %i.ep
  %i.er = and i64 %i.eq, %i.ek
  %i.es = sext i32 %i.eh to i64
  %i.et = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %i.es
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !154
  %i.ev = and i64 %i.er, %i.eu                    ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ev, 0
  br i1 %.not.i.i.i.i.i.i, label %.loopexit222, label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %bb.ai
  %i.ew = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %26, i64 4
  %i.ey = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ez = getelementptr inbounds nuw i8, ptr %i.i, i64 58
  %i.fa = getelementptr inbounds nuw i8, ptr %i.i, i64 59
  %i.fb = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  br label %bb.aj

bb.aj:                                            ; preds = %.loopexit.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i
  %.014.i.i.i.i.i.i = phi i64 [ %i.ev, %.preheader.i.i.i.i.i.i ], [ %i.gg, %.loopexit.i.i.i.i.i.i ] ; 3 uses
  %i.fd = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.014.i.i.i.i.i.i, i1 true)
  %i.fe = trunc nuw nsw i64 %i.fd to i32
  %i.ff = or disjoint i32 %i.ef, %i.fe            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #27
  %i.fg = load ptr, ptr %i.ey, align 8, !tbaa !202
  %i.fh = load i8, ptr %i.ez, align 2, !tbaa !203, !range !130, !noundef !131
  %i.fi = trunc nuw i8 %i.fh to i1
  br i1 %i.fi, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i.i.i.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fj = load i8, ptr %i.fa, align 1, !tbaa !179, !range !130, !noundef !131
  %i.fk = trunc nuw i8 %i.fj to i1
  br i1 %i.fk, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.fl = load i32, ptr %i.fc, align 8, !tbaa !204
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i.i.i.i.i.i

bb.am:                                            ; preds = %bb.ak
  %i.fm = load ptr, ptr %i.fb, align 8, !tbaa !205
  %i.fn = sext i32 %i.ff to i64
  %i.fo = getelementptr inbounds [4 x i8], ptr %i.fm, i64 %i.fn
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !116
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i.i.i.i.i.i: ; preds = %bb.am, %bb.al, %bb.aj
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.fp, %bb.am ], [ %i.fl, %bb.al ], [ %i.ff, %bb.aj ]
  %i.fq = sext i32 %.0.i.i.i.i.i.i.i.i.i to i64
  %i.fr = getelementptr inbounds [16 x i8], ptr %i.fg, i64 %i.fq ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.fr, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !tbaa !107
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, ptr %26, align 8
  store ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i, ptr %i.ew, align 8
  %i.fs = trunc i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i to i32 ; 2 uses
  %i.ft = icmp eq i32 %i.fs, 0
  br i1 %i.ft, label %.loopexit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i.i.i.i.i.i, %bb.an
  %i.fu = phi i32 [ %i.ge, %bb.an ], [ %i.fs, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.0815.i.i.i.i.i.i.i = phi i32 [ %i.gd, %bb.an ], [ 0, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i.i.i.i.i.i ] ; 3 uses
  %i.fv = zext nneg i32 %.0815.i.i.i.i.i.i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  %i.fw = icmp ult i32 %i.fu, 13
  %i.fx = load ptr, ptr %i.ew, align 8
  %i.fy = select i1 %i.fw, ptr %i.ex, ptr %i.fx
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.fv
  %narrow.i.i.i.i.i.i.i = sub nuw i32 %i.fu, %.0815.i.i.i.i.i.i.i
  %i.ga = zext i32 %narrow.i.i.i.i.i.i.i to i64
  %i.gb = invoke noundef i32 @_ZN8facebook5velox9functions20tryGetUtf8CharLengthEPKclRi(ptr noundef %i.fz, i64 noundef %i.ga, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %.noexc73 unwind label %.loopexit.split-lp218.loopexit ; 2 uses

.noexc73:                                         ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.gc = icmp sgt i32 %i.gb, -1
  br i1 %i.gc, label %bb.an, label %_ZZN8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function19findFirstInvalidRowERKNS0_13DecodedVectorERKNS0_17SelectivityVectorEENKUlT_E_clIiEEDaSA_.exit.i.i.i.i.i.i

bb.an:                                            ; preds = %.noexc73
  %i.gd = add nuw nsw i32 %i.gb, %.0815.i.i.i.i.i.i.i ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  %i.ge = load i32, ptr %26, align 8, !tbaa !207  ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp ugt i32 %i.ge, %i.gd
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i, !llvm.loop !729

_ZZN8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function19findFirstInvalidRowERKNS0_13DecodedVectorERKNS0_17SelectivityVectorEENKUlT_E_clIiEEDaSA_.exit.i.i.i.i.i.i: ; preds = %.noexc73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #27
  br label %.loopexit222.thread

.loopexit.i.i.i.i.i.i:                            ; preds = %bb.an, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #27
  %i.gf = add nuw i64 %.014.i.i.i.i.i.i, 9223372036854775807
  %i.gg = and i64 %i.gf, %.014.i.i.i.i.i.i        ; 2 uses
  %.not12.i.i.i.i.i.i = icmp eq i64 %i.gg, 0
  br i1 %.not12.i.i.i.i.i.i, label %.loopexit222, label %bb.aj, !llvm.loop !731

bb.ao:                                            ; preds = %bb.ah
  %.not36.i.i.i.i.i = icmp eq i32 %i.dz, %i.ee
  br i1 %.not36.i.i.i.i.i, label %_ZZN8facebook5velox4bits8testBitsIZNS0_9functions12_GLOBAL__N_116FromUtf8Function19findFirstInvalidRowERKNS0_13DecodedVectorERKNS0_17SelectivityVectorEEUlT_E_EEbPKmiibSC_ENKUlimE_clEim.exit58.thread.i.i.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gh = sdiv i32 %i.dz, 64                      ; 2 uses
  %i.gi = sub nsw i32 %i.ee, %i.dz                ; 2 uses
  %i.gj = zext nneg i32 %i.gi to i64
  %notmask.i.i39.i.i.i.i.i = shl nsw i64 -1, %i.gj
  %i.gk = xor i64 %notmask.i.i39.i.i.i.i.i, -1
  %i.gl = sub nsw i32 64, %i.gi
  %i.gm = zext nneg i32 %i.gl to i64
  %i.gn = shl i64 %i.gk, %i.gm
  %i.go = sext i32 %i.gh to i64
  %i.gp = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %i.go
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !154
  %i.gr = and i64 %i.gq, %i.gn                    ; 2 uses
  %.not.i40.i.i.i.i.i = icmp eq i64 %i.gr, 0
  br i1 %.not.i40.i.i.i.i.i, label %_ZZN8facebook5velox4bits8testBitsIZNS0_9functions12_GLOBAL__N_116FromUtf8Function19findFirstInvalidRowERKNS0_13DecodedVectorERKNS0_17SelectivityVectorEEUlT_E_EEbPKmiibSC_ENKUlimE_clEim.exit58.thread.i.i.i.i.i, label %.preheader.i41.i.i.i.i.i

.preheader.i41.i.i.i.i.i:                         ; preds = %bb.ap
  %i.gs = shl nsw i32 %i.gh, 6
  %i.gt = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %25, i64 4
  %i.gv = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.gw = getelementptr inbounds nuw i8, ptr %i.i, i64 58
  %i.gx = getelementptr inbounds nuw i8, ptr %i.i, i64 59
  %i.gy = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  br label %bb.aq

bb.aq:                                            ; preds = %.loopexit.i56.i.i.i.i.i, %.preheader.i41.i.i.i.i.i
  %.014.i42.i.i.i.i.i = phi i64 [ %i.gr, %.preheader.i41.i.i.i.i.i ], [ %i.id, %.loopexit.i56.i.i.i.i.i ] ; 3 uses
  %i.ha = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.014.i42.i.i.i.i.i, i1 true)
  %i.hb = trunc nuw nsw i64 %i.ha to i32
  %i.hc = or disjoint i32 %i.gs, %i.hb            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #27
  %i.hd = load ptr, ptr %i.gv, align 8, !tbaa !202
  %i.he = load i8, ptr %i.gw, align 2, !tbaa !203, !range !130, !noundef !131
  %i.hf = trunc nuw i8 %i.he to i1
  br i1 %i.hf, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i43.i.i.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hg = load i8, ptr %i.gx, align 1, !tbaa !179, !range !130, !noundef !131
  %i.hh = trunc nuw i8 %i.hg to i1
  br i1 %i.hh, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.hi = load i32, ptr %i.gz, align 8, !tbaa !204
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i43.i.i.i.i.i

bb.at:                                            ; preds = %bb.ar
  %i.hj = load ptr, ptr %i.gy, align 8, !tbaa !205
  %i.hk = sext i32 %i.hc to i64
  %i.hl = getelementptr inbounds [4 x i8], ptr %i.hj, i64 %i.hk
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !116
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i43.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i43.i.i.i.i.i: ; preds = %bb.at, %bb.as, %bb.aq
  %.0.i.i.i.i44.i.i.i.i.i = phi i32 [ %i.hm, %bb.at ], [ %i.hi, %bb.as ], [ %i.hc, %bb.aq ]
  %i.hn = sext i32 %.0.i.i.i.i44.i.i.i.i.i to i64
  %i.ho = getelementptr inbounds [16 x i8], ptr %i.hd, i64 %i.hn ; 2 uses
  %.sroa.0.0.copyload.i.i.i45.i.i.i.i.i = load i64, ptr %i.ho, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i46.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %.sroa.2.0.copyload.i.i.i47.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i46.i.i.i.i.i, align 8, !tbaa !107
  store i64 %.sroa.0.0.copyload.i.i.i45.i.i.i.i.i, ptr %25, align 8
  store ptr %.sroa.2.0.copyload.i.i.i47.i.i.i.i.i, ptr %i.gt, align 8
  %i.hp = trunc i64 %.sroa.0.0.copyload.i.i.i45.i.i.i.i.i to i32 ; 2 uses
  %i.hq = icmp eq i32 %i.hp, 0
  br i1 %i.hq, label %.loopexit.i56.i.i.i.i.i, label %.lr.ph.i.i48.i.i.i.i.i

.lr.ph.i.i48.i.i.i.i.i:                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i43.i.i.i.i.i, %bb.au
  %i.hr = phi i32 [ %i.ib, %bb.au ], [ %i.hp, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i43.i.i.i.i.i ] ; 2 uses
  %.0815.i.i49.i.i.i.i.i = phi i32 [ %i.ia, %bb.au ], [ 0, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i43.i.i.i.i.i ] ; 3 uses
  %i.hs = zext nneg i32 %.0815.i.i49.i.i.i.i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  %i.ht = icmp ult i32 %i.hr, 13
  %i.hu = load ptr, ptr %i.gt, align 8
  %i.hv = select i1 %i.ht, ptr %i.gu, ptr %i.hu
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.hs
  %narrow.i.i50.i.i.i.i.i = sub nuw i32 %i.hr, %.0815.i.i49.i.i.i.i.i
  %i.hx = zext i32 %narrow.i.i50.i.i.i.i.i to i64
  %i.hy = invoke noundef i32 @_ZN8facebook5velox9functions20tryGetUtf8CharLengthEPKclRi(ptr noundef %i.hw, i64 noundef %i.hx, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %.noexc74 unwind label %.loopexit.split-lp218.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc74:                                         ; preds = %.lr.ph.i.i48.i.i.i.i.i
  %i.hz = icmp sgt i32 %i.hy, -1
  br i1 %i.hz, label %bb.au, label %_ZZN8facebook5velox4bits8testBitsIZNS0_9functions12_GLOBAL__N_116FromUtf8Function19findFirstInvalidRowERKNS0_13DecodedVectorERKNS0_17SelectivityVectorEEUlT_E_EEbPKmiibSC_ENKUlimE_clEim.exit58.i.i.i.i.i

bb.au:                                            ; preds = %.noexc74
  %i.ia = add nuw nsw i32 %i.hy, %.0815.i.i49.i.i.i.i.i ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  %i.ib = load i32, ptr %25, align 8, !tbaa !207  ; 2 uses
  %.not.i.i55.i.i.i.i.i = icmp ugt i32 %i.ib, %i.ia
  br i1 %.not.i.i55.i.i.i.i.i, label %.lr.ph.i.i48.i.i.i.i.i, label %.loopexit.i56.i.i.i.i.i, !llvm.loop !729

.loopexit.i56.i.i.i.i.i:                          ; preds = %bb.au, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i43.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #27
  %i.ic = add i64 %.014.i42.i.i.i.i.i, -1
  %i.id = and i64 %i.ic, %.014.i42.i.i.i.i.i      ; 2 uses
  %.not12.i57.i.i.i.i.i = icmp eq i64 %i.id, 0
  br i1 %.not12.i57.i.i.i.i.i, label %_ZZN8facebook5velox4bits8testBitsIZNS0_9functions12_GLOBAL__N_116FromUtf8Function19findFirstInvalidRowERKNS0_13DecodedVectorERKNS0_17SelectivityVectorEEUlT_E_EEbPKmiibSC_ENKUlimE_clEim.exit58.thread.i.i.i.i.i, label %bb.aq, !llvm.loop !731

_ZZN8facebook5velox4bits8testBitsIZNS0_9functions12_GLOBAL__N_116FromUtf8Function19findFirstInvalidRowERKNS0_13DecodedVectorERKNS0_17SelectivityVectorEEUlT_E_EEbPKmiibSC_ENKUlimE_clEim.exit58.i.i.i.i.i: ; preds = %.noexc74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #27
  br label %.loopexit222.thread

_ZZN8facebook5velox4bits8testBitsIZNS0_9functions12_GLOBAL__N_116FromUtf8Function19findFirstInvalidRowERKNS0_13DecodedVectorERKNS0_17SelectivityVectorEEUlT_E_EEbPKmiibSC_ENKUlimE_clEim.exit58.thread.i.i.i.i.i: ; preds = %.loopexit.i56.i.i.i.i.i, %bb.ap, %bb.ao
  %i.ie = add nsw i32 %i.ee, 64                   ; 2 uses
  %.not37104.i.i.i.i.i = icmp sgt i32 %i.ie, %i.ef
  br i1 %.not37104.i.i.i.i.i, label %.critedge.i.i.i8.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZZN8facebook5velox4bits8testBitsIZNS0_9functions12_GLOBAL__N_116FromUtf8Function19findFirstInvalidRowERKNS0_13DecodedVectorERKNS0_17SelectivityVectorEEUlT_E_EEbPKmiibSC_ENKUlimE_clEim.exit58.thread.i.i.i.i.i
  %i.if = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %24, i64 4
  %i.ih = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ii = getelementptr inbounds nuw i8, ptr %i.i, i64 58
  %i.ij = getelementptr inbounds nuw i8, ptr %i.i, i64 59
  %i.ik = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.il = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  br label %bb.av

bb.av:                                            ; preds = %_ZZN8facebook5velox4bits8testBitsIZNS0_9functions12_GLOBAL__N_116FromUtf8Function19findFirstInvalidRowERKNS0_13DecodedVectorERKNS0_17SelectivityVectorEEUlT_E_EEbPKmiibSC_ENKUliE_clEi.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.im = phi i32 [ %i.ie, %.lr.ph.i.i.i.i.i ], [ %i.jw, %_ZZN8facebook5velox4bits8testBitsIZNS0_9functions12_GLOBAL__N_116FromUtf8Function19findFirstInvalidRowERKNS0_13DecodedVectorERKNS0_17SelectivityVectorEEUlT_E_EEbPKmiibSC_ENKUliE_clEi.exit.i.i.i.i.i ] ; 2 uses
  %.0105.i.i.i.i.i = phi i32 [ %i.ee, %.lr.ph.i.i.i.i.i ], [ %i.im, %_ZZN8facebook5velox4bits8testBitsIZNS0_9functions12_GLOBAL__N_116FromUtf8Function19findFirstInvalidRowERKNS0_13DecodedVectorERKNS0_17SelectivityVectorEEUlT_E_EEbPKmiibSC_ENKUliE_clEi.exit.i.i.i.i.i ]
  %i.in = sdiv i32 %.0105.i.i.i.i.i, 64           ; 2 uses
  %i.io = sext i32 %i.in to i64
  %i.ip = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %i.io
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !154 ; 2 uses
  %.not.i59.i.i.i.i.i = icmp eq i64 %i.iq, 0
  br i1 %.not.i59.i.i.i.i.i, label %_ZZN8facebook5velox4bits8testBitsIZNS0_9functions12_GLOBAL__N_116FromUtf8Function19findFirstInvalidRowERKNS0_13DecodedVectorERKNS0_17SelectivityVectorEEUlT_E_EEbPKmiibSC_ENKUliE_clEi.exit.i.i.i.i.i, label %.preheader.i60.i.i.i.i.i

.preheader.i60.i.i.i.i.i:                         ; preds = %bb.av
  %i.ir = shl nsw i32 %i.in, 6
  br label %bb.aw

bb.aw:                                            ; preds = %.loopexit.i73.i.i.i.i.i, %.preheader.i60.i.i.i.i.i
  %.013.i.i.i.i.i.i = phi i64 [ %i.iq, %.preheader.i60.i.i.i.i.i ], [ %i.jv, %.loopexit.i73.i.i.i.i.i ] ; 3 uses
  %i.is = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.013.i.i.i.i.i.i, i1 true)
  %i.it = trunc nuw nsw i64 %i.is to i32
  %i.iu = or disjoint i32 %i.ir, %i.it            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #27
  %i.iv = load ptr, ptr %i.ih, align 8, !tbaa !202
  %i.iw = load i8, ptr %i.ii, align 2, !tbaa !203, !range !130, !noundef !131
  %i.ix = trunc nuw i8 %i.iw to i1
  br i1 %i.ix, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i61.i.i.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.iy = load i8, ptr %i.ij, align 1, !tbaa !179, !range !130, !noundef !131
  %i.iz = trunc nuw i8 %i.iy to i1
  br i1 %i.iz, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.ja = load i32, ptr %i.il, align 8, !tbaa !204
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i61.i.i.i.i.i

bb.az:                                            ; preds = %bb.ax
  %i.jb = load ptr, ptr %i.ik, align 8, !tbaa !205
  %i.jc = sext i32 %i.iu to i64
  %i.jd = getelementptr inbounds [4 x i8], ptr %i.jb, i64 %i.jc
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !116
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i61.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i61.i.i.i.i.i: ; preds = %bb.az, %bb.ay, %bb.aw
  %.0.i.i.i.i62.i.i.i.i.i = phi i32 [ %i.je, %bb.az ], [ %i.ja, %bb.ay ], [ %i.iu, %bb.aw ]
  %i.jf = sext i32 %.0.i.i.i.i62.i.i.i.i.i to i64
  %i.jg = getelementptr inbounds [16 x i8], ptr %i.iv, i64 %i.jf ; 2 uses
  %.sroa.0.0.copyload.i.i.i63.i.i.i.i.i = load i64, ptr %i.jg, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i64.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %.sroa.2.0.copyload.i.i.i65.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i64.i.i.i.i.i, align 8, !tbaa !107
  store i64 %.sroa.0.0.copyload.i.i.i63.i.i.i.i.i, ptr %24, align 8
  store ptr %.sroa.2.0.copyload.i.i.i65.i.i.i.i.i, ptr %i.if, align 8
  %i.jh = trunc i64 %.sroa.0.0.copyload.i.i.i63.i.i.i.i.i to i32 ; 2 uses
  %i.ji = icmp eq i32 %i.jh, 0
  br i1 %i.ji, label %.loopexit.i73.i.i.i.i.i, label %.lr.ph.i.i66.i.i.i.i.i

.lr.ph.i.i66.i.i.i.i.i:                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i61.i.i.i.i.i, %bb.ba
  %i.jj = phi i32 [ %i.jt, %bb.ba ], [ %i.jh, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i61.i.i.i.i.i ] ; 2 uses
  %.0815.i.i67.i.i.i.i.i = phi i32 [ %i.js, %bb.ba ], [ 0, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i61.i.i.i.i.i ] ; 3 uses
  %i.jk = zext nneg i32 %.0815.i.i67.i.i.i.i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.jl = icmp ult i32 %i.jj, 13
  %i.jm = load ptr, ptr %i.if, align 8
  %i.jn = select i1 %i.jl, ptr %i.ig, ptr %i.jm
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 %i.jk
  %narrow.i.i68.i.i.i.i.i = sub nuw i32 %i.jj, %.0815.i.i67.i.i.i.i.i
  %i.jp = zext i32 %narrow.i.i68.i.i.i.i.i to i64
  %i.jq = invoke noundef i32 @_ZN8facebook5velox9functions20tryGetUtf8CharLengthEPKclRi(ptr noundef %i.jo, i64 noundef %i.jp, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %.noexc75 unwind label %.loopexit.split-lp218.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc75:                                         ; preds = %.lr.ph.i.i66.i.i.i.i.i
  %i.jr = icmp sgt i32 %i.jq, -1
  br i1 %i.jr, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %.noexc75
  %i.js = add nuw nsw i32 %i.jq, %.0815.i.i67.i.i.i.i.i ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %i.jt = load i32, ptr %24, align 8, !tbaa !207  ; 2 uses
  %.not.i.i72.i.i.i.i.i = icmp ugt i32 %i.jt, %i.js
  br i1 %.not.i.i72.i.i.i.i.i, label %.lr.ph.i.i66.i.i.i.i.i, label %.loopexit.i73.i.i.i.i.i, !llvm.loop !729

.loopexit.i73.i.i.i.i.i:                          ; preds = %bb.ba, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i61.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #27
  %i.ju = add i64 %.013.i.i.i.i.i.i, -1
  %i.jv = and i64 %i.ju, %.013.i.i.i.i.i.i        ; 2 uses
  %.not11.i.i.i.i.i.i = icmp eq i64 %i.jv, 0
  br i1 %.not11.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits8testBitsIZNS0_9functions12_GLOBAL__N_116FromUtf8Function19findFirstInvalidRowERKNS0_13DecodedVectorERKNS0_17SelectivityVectorEEUlT_E_EEbPKmiibSC_ENKUliE_clEi.exit.i.i.i.i.i, label %bb.aw, !llvm.loop !732

_ZZN8facebook5velox4bits8testBitsIZNS0_9functions12_GLOBAL__N_116FromUtf8Function19findFirstInvalidRowERKNS0_13DecodedVectorERKNS0_17SelectivityVectorEEUlT_E_EEbPKmiibSC_ENKUliE_clEi.exit.i.i.i.i.i: ; preds = %.loopexit.i73.i.i.i.i.i, %bb.av
  %i.jw = add nsw i32 %i.im, 64                   ; 2 uses
  %.not37.i.i.i.i.i = icmp sgt i32 %i.jw, %i.ef
  br i1 %.not37.i.i.i.i.i, label %.critedge.i.i.i8.i.i, label %bb.av, !llvm.loop !733

bb.bb:                                            ; preds = %.noexc75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #27
  br label %.loopexit222.thread

.critedge.i.i.i8.i.i:                             ; preds = %_ZZN8facebook5velox4bits8testBitsIZNS0_9functions12_GLOBAL__N_116FromUtf8Function19findFirstInvalidRowERKNS0_13DecodedVectorERKNS0_17SelectivityVectorEEUlT_E_EEbPKmiibSC_ENKUliE_clEi.exit.i.i.i.i.i, %_ZZN8facebook5velox4bits8testBitsIZNS0_9functions12_GLOBAL__N_116FromUtf8Function19findFirstInvalidRowERKNS0_13DecodedVectorERKNS0_17SelectivityVectorEEUlT_E_EEbPKmiibSC_ENKUlimE_clEim.exit58.thread.i.i.i.i.i
  %.not38.i.i.i9.i.i = icmp eq i32 %i.eb, %i.ef
  br i1 %.not38.i.i.i9.i.i, label %.loopexit222, label %bb.bc

bb.bc:                                            ; preds = %.critedge.i.i.i8.i.i
  %i.jx = ashr i32 %i.eb, 6
  %i.jy = and i32 %i.eb, 63
  %i.jz = zext nneg i32 %i.jy to i64
  %notmask.i74.i.i.i.i.i = shl nsw i64 -1, %i.jz
  %i.ka = xor i64 %notmask.i74.i.i.i.i.i, -1
  %i.kb = sext i32 %i.jx to i64
  %i.kc = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %i.kb
  %i.kd = load i64, ptr %i.kc, align 8, !tbaa !154
  %i.ke = and i64 %i.kd, %i.ka                    ; 2 uses
  %.not.i75.i.i.i.i.i = icmp eq i64 %i.ke, 0
  br i1 %.not.i75.i.i.i.i.i, label %.loopexit222, label %.preheader.i76.i.i.i.i.i

.preheader.i76.i.i.i.i.i:                         ; preds = %bb.bc
  %i.kf = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %23, i64 4
  %i.kh = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ki = getelementptr inbounds nuw i8, ptr %i.i, i64 58
  %i.kj = getelementptr inbounds nuw i8, ptr %i.i, i64 59
  %i.kk = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.kl = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  br label %bb.bd

bb.bd:                                            ; preds = %.loopexit.i91.i.i.i.i.i, %.preheader.i76.i.i.i.i.i
  %.014.i77.i.i.i.i.i = phi i64 [ %i.ke, %.preheader.i76.i.i.i.i.i ], [ %i.lp, %.loopexit.i91.i.i.i.i.i ] ; 3 uses
  %i.km = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.014.i77.i.i.i.i.i, i1 true)
  %i.kn = trunc nuw nsw i64 %i.km to i32
  %i.ko = or disjoint i32 %i.ef, %i.kn            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #27
  %i.kp = load ptr, ptr %i.kh, align 8, !tbaa !202
  %i.kq = load i8, ptr %i.ki, align 2, !tbaa !203, !range !130, !noundef !131
  %i.kr = trunc nuw i8 %i.kq to i1
  br i1 %i.kr, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i78.i.i.i.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ks = load i8, ptr %i.kj, align 1, !tbaa !179, !range !130, !noundef !131
  %i.kt = trunc nuw i8 %i.ks to i1
  br i1 %i.kt, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.ku = load i32, ptr %i.kl, align 8, !tbaa !204
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i78.i.i.i.i.i

bb.bg:                                            ; preds = %bb.be
  %i.kv = load ptr, ptr %i.kk, align 8, !tbaa !205
  %i.kw = sext i32 %i.ko to i64
  %i.kx = getelementptr inbounds [4 x i8], ptr %i.kv, i64 %i.kw
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !116
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i78.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i78.i.i.i.i.i: ; preds = %bb.bg, %bb.bf, %bb.bd
  %.0.i.i.i.i79.i.i.i.i.i = phi i32 [ %i.ky, %bb.bg ], [ %i.ku, %bb.bf ], [ %i.ko, %bb.bd ]
  %i.kz = sext i32 %.0.i.i.i.i79.i.i.i.i.i to i64
  %i.la = getelementptr inbounds [16 x i8], ptr %i.kp, i64 %i.kz ; 2 uses
  %.sroa.0.0.copyload.i.i.i80.i.i.i.i.i = load i64, ptr %i.la, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i81.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  %.sroa.2.0.copyload.i.i.i82.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i81.i.i.i.i.i, align 8, !tbaa !107
  store i64 %.sroa.0.0.copyload.i.i.i80.i.i.i.i.i, ptr %23, align 8
  store ptr %.sroa.2.0.copyload.i.i.i82.i.i.i.i.i, ptr %i.kf, align 8
  %i.lb = trunc i64 %.sroa.0.0.copyload.i.i.i80.i.i.i.i.i to i32 ; 2 uses
  %i.lc = icmp eq i32 %i.lb, 0
  br i1 %i.lc, label %.loopexit.i91.i.i.i.i.i, label %.lr.ph.i.i83.i.i.i.i.i

.lr.ph.i.i83.i.i.i.i.i:                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i78.i.i.i.i.i, %bb.bh
  %i.ld = phi i32 [ %i.ln, %bb.bh ], [ %i.lb, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i78.i.i.i.i.i ] ; 2 uses
  %.0815.i.i84.i.i.i.i.i = phi i32 [ %i.lm, %bb.bh ], [ 0, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i78.i.i.i.i.i ] ; 3 uses
  %i.le = zext nneg i32 %.0815.i.i84.i.i.i.i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.lf = icmp ult i32 %i.ld, 13
  %i.lg = load ptr, ptr %i.kf, align 8
  %i.lh = select i1 %i.lf, ptr %i.kg, ptr %i.lg
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 %i.le
  %narrow.i.i85.i.i.i.i.i = sub nuw i32 %i.ld, %.0815.i.i84.i.i.i.i.i
  %i.lj = zext i32 %narrow.i.i85.i.i.i.i.i to i64
  %i.lk = invoke noundef i32 @_ZN8facebook5velox9functions20tryGetUtf8CharLengthEPKclRi(ptr noundef %i.li, i64 noundef %i.lj, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %.noexc76 unwind label %.loopexit.split-lp218.loopexit.split-lp.loopexit ; 2 uses

.noexc76:                                         ; preds = %.lr.ph.i.i83.i.i.i.i.i
  %i.ll = icmp sgt i32 %i.lk, -1
  br i1 %i.ll, label %bb.bh, label %_ZZN8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function19findFirstInvalidRowERKNS0_13DecodedVectorERKNS0_17SelectivityVectorEENKUlT_E_clIiEEDaSA_.exit.i86.i.i.i.i.i

bb.bh:                                            ; preds = %.noexc76
  %i.lm = add nuw nsw i32 %i.lk, %.0815.i.i84.i.i.i.i.i ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.ln = load i32, ptr %23, align 8, !tbaa !207  ; 2 uses
  %.not.i.i90.i.i.i.i.i = icmp ugt i32 %i.ln, %i.lm
  br i1 %.not.i.i90.i.i.i.i.i, label %.lr.ph.i.i83.i.i.i.i.i, label %.loopexit.i91.i.i.i.i.i, !llvm.loop !729

_ZZN8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function19findFirstInvalidRowERKNS0_13DecodedVectorERKNS0_17SelectivityVectorEENKUlT_E_clIiEEDaSA_.exit.i86.i.i.i.i.i: ; preds = %.noexc76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27
  br label %.loopexit222.thread

.loopexit.i91.i.i.i.i.i:                          ; preds = %bb.bh, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i78.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27
  %i.lo = add nuw i64 %.014.i77.i.i.i.i.i, 9223372036854775807
  %i.lp = and i64 %i.lo, %.014.i77.i.i.i.i.i      ; 2 uses
  %.not12.i92.i.i.i.i.i = icmp eq i64 %i.lp, 0
  br i1 %.not12.i92.i.i.i.i.i, label %.loopexit222, label %bb.bd, !llvm.loop !731

.loopexit222.thread:                              ; preds = %_ZZN8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function19findFirstInvalidRowERKNS0_13DecodedVectorERKNS0_17SelectivityVectorEENKUlT_E_clIiEEDaSA_.exit.i.i, %_ZZN8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function19findFirstInvalidRowERKNS0_13DecodedVectorERKNS0_17SelectivityVectorEENKUlT_E_clIiEEDaSA_.exit.i.i.i.i.i.i, %_ZZN8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function19findFirstInvalidRowERKNS0_13DecodedVectorERKNS0_17SelectivityVectorEENKUlT_E_clIiEEDaSA_.exit.i86.i.i.i.i.i, %bb.bb, %_ZZN8facebook5velox4bits8testBitsIZNS0_9functions12_GLOBAL__N_116FromUtf8Function19findFirstInvalidRowERKNS0_13DecodedVectorERKNS0_17SelectivityVectorEEUlT_E_EEbPKmiibSC_ENKUlimE_clEim.exit58.i.i.i.i.i
  %.sroa.0.0.i.ph = phi i32 [ %i.hc, %_ZZN8facebook5velox4bits8testBitsIZNS0_9functions12_GLOBAL__N_116FromUtf8Function19findFirstInvalidRowERKNS0_13DecodedVectorERKNS0_17SelectivityVectorEEUlT_E_EEbPKmiibSC_ENKUlimE_clEim.exit58.i.i.i.i.i ], [ %i.iu, %bb.bb ], [ %i.ko, %_ZZN8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function19findFirstInvalidRowERKNS0_13DecodedVectorERKNS0_17SelectivityVectorEENKUlT_E_clIiEEDaSA_.exit.i86.i.i.i.i.i ], [ %i.ff, %_ZZN8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function19findFirstInvalidRowERKNS0_13DecodedVectorERKNS0_17SelectivityVectorEENKUlT_E_clIiEEDaSA_.exit.i.i.i.i.i.i ], [ %i.cz, %_ZZN8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function19findFirstInvalidRowERKNS0_13DecodedVectorERKNS0_17SelectivityVectorEENKUlT_E_clIiEEDaSA_.exit.i.i ]
  %.sroa.0.0.insert.ext.i466 = zext i32 %.sroa.0.0.i.ph to i64
  %.sroa.0.0.insert.insert.i467 = or disjoint i64 %.sroa.0.0.insert.ext.i466, 4294967296
  store i64 %.sroa.0.0.insert.insert.i467, ptr %31, align 8
  br label %bb.bj

.loopexit222:                                     ; preds = %.loopexit.i91.i.i.i.i.i, %.loopexit.i.i.i.i.i.i, %.loopexit.i.i, %bb.bc, %.critedge.i.i.i8.i.i, %bb.ai, %bb.ag, %bb.aa
  store i64 0, ptr %31, align 8
  br i1 %i.bf, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %.loopexit222
  invoke fastcc void @_ZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function15toVarcharNoCopyERKSt10shared_ptrINS0_10BaseVectorEERNS0_13DecodedVectorERKNS0_17SelectivityVectorERKNS0_4exec7EvalCtxERS6_(ptr noundef nonnull align 8 dereferenceable(120) %i.i, ptr noundef nonnull align 8 dereferenceable(38) %1, ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.hb unwind label %.loopexit.split-lp218.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit217:                                     ; preds = %.lr.ph.i.i.i
  %lpad.loopexit219 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp218

.loopexit.split-lp218.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.i.i
  %lpad.loopexit223 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp218

.loopexit.split-lp218.loopexit.split-lp.loopexit: ; preds = %.lr.ph.i.i83.i.i.i.i.i
  %lpad.loopexit227 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp218

.loopexit.split-lp218.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph.i.i66.i.i.i.i.i
  %lpad.loopexit231 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp218

.loopexit.split-lp218.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph.i.i48.i.i.i.i.i
  %lpad.loopexit234 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp218

.loopexit.split-lp218.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bi
  %lpad.loopexit.split-lp235 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp218

bb.bj:                                            ; preds = %.loopexit222.thread, %.loopexit222
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #27
  invoke void @_ZN8facebook5velox7VARCHAREv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.124") align 8 %33)
          to label %bb.bk unwind label %bb.dx

bb.bk:                                            ; preds = %bb.bj
  %i.lq = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 2 uses
  %i.lr = load <2 x ptr>, ptr %33, align 16, !tbaa !115
  store ptr null, ptr %i.lq, align 8, !tbaa !114
  store <2 x ptr> %i.lr, ptr %32, align 16, !tbaa !115
  store ptr null, ptr %33, align 16, !tbaa !210
  %i.ls = load ptr, ptr %4, align 8, !tbaa !225
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !247
  invoke void @_ZN8facebook5velox10BaseVector14ensureWritableERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEEPNS0_6memory10MemoryPoolERS5_IS1_EPNS0_10VectorPoolE(ptr noundef nonnull align 8 dereferenceable(38) %1, ptr noundef nonnull align 8 dereferenceable(16) %32, ptr noundef %i.lt, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef null)
          to label %bb.bl unwind label %bb.dy

bb.bl:                                            ; preds = %bb.bk
  %i.lu = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !114 ; 8 uses
  %.not.i.i77 = icmp eq ptr %i.lv, null
  br i1 %.not.i.i77, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 8 ; 4 uses
  %i.lx = load atomic i64, ptr %i.lw acquire, align 8 ; 2 uses
  %i.ly = icmp eq i64 %i.lx, 4294967297
  %i.lz = trunc i64 %i.lx to i32                  ; 2 uses
  br i1 %i.ly, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  store i32 0, ptr %i.lw, align 8, !tbaa !119
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lv, i64 12
  store i32 0, ptr %i.ma, align 4, !tbaa !120
  %i.mb = load ptr, ptr %i.lv, align 8, !tbaa !122
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 16
  %i.md = load ptr, ptr %i.mc, align 8
  call void %i.md(ptr noundef nonnull align 8 dereferenceable(16) %i.lv) #27, !inline_history !6
  %i.me = load ptr, ptr %i.lv, align 8, !tbaa !122
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 24
  %i.mg = load ptr, ptr %i.mf, align 8
  call void %i.mg(ptr noundef nonnull align 8 dereferenceable(16) %i.lv) #27, !inline_history !6
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bo:                                            ; preds = %bb.bm
  %i.mh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !107
  %.not.i.i.i78 = icmp eq i8 %i.mh, 0
  br i1 %.not.i.i.i78, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.mi = add nsw i32 %i.lz, -1
  store i32 %i.mi, ptr %i.lw, align 8, !tbaa !116
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.bq:                                            ; preds = %bb.bo
  %i.mj = atomicrmw volatile add ptr %i.lw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.bq, %bb.bp
  %.0.i.i.i.i = phi i32 [ %i.lz, %bb.bp ], [ %i.mj, %bb.bq ]
  %i.mk = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.mk, label %bb.br, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !123

bb.br:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.lv) #27
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.bl, %bb.bn, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.br
  %i.ml = load ptr, ptr %i.lq, align 8, !tbaa !114 ; 8 uses
  %.not.i.i79 = icmp eq ptr %i.ml, null
  br i1 %.not.i.i79, label %_ZNSt12__shared_ptrIKN8facebook5velox10ScalarTypeILNS1_8TypeKindE7EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bs

bb.bs:                                            ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 8 ; 4 uses
  %i.mn = load atomic i64, ptr %i.mm acquire, align 8 ; 2 uses
  %i.mo = icmp eq i64 %i.mn, 4294967297
  %i.mp = trunc i64 %i.mn to i32                  ; 2 uses
  br i1 %i.mo, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  store i32 0, ptr %i.mm, align 8, !tbaa !119
  %i.mq = getelementptr inbounds nuw i8, ptr %i.ml, i64 12
  store i32 0, ptr %i.mq, align 4, !tbaa !120
  %i.mr = load ptr, ptr %i.ml, align 8, !tbaa !122
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 16
  %i.mt = load ptr, ptr %i.ms, align 8
  call void %i.mt(ptr noundef nonnull align 8 dereferenceable(16) %i.ml) #27, !inline_history !7
  %i.mu = load ptr, ptr %i.ml, align 8, !tbaa !122
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 24
  %i.mw = load ptr, ptr %i.mv, align 8
  call void %i.mw(ptr noundef nonnull align 8 dereferenceable(16) %i.ml) #27, !inline_history !7
  br label %_ZNSt12__shared_ptrIKN8facebook5velox10ScalarTypeILNS1_8TypeKindE7EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bu:                                            ; preds = %bb.bs
  %i.mx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !107
  %.not.i.i.i80 = icmp eq i8 %i.mx, 0
  br i1 %.not.i.i.i80, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.my = add nsw i32 %i.mp, -1
  store i32 %i.my, ptr %i.mm, align 8, !tbaa !116
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i81

bb.bw:                                            ; preds = %bb.bu
  %i.mz = atomicrmw volatile add ptr %i.mm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i81

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i81: ; preds = %bb.bw, %bb.bv
  %.0.i.i.i.i82 = phi i32 [ %i.mp, %bb.bv ], [ %i.mz, %bb.bw ]
  %i.na = icmp eq i32 %.0.i.i.i.i82, 1
  br i1 %i.na, label %bb.bx, label %_ZNSt12__shared_ptrIKN8facebook5velox10ScalarTypeILNS1_8TypeKindE7EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !123

bb.bx:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i81
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ml) #27
  br label %_ZNSt12__shared_ptrIKN8facebook5velox10ScalarTypeILNS1_8TypeKindE7EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox10ScalarTypeILNS1_8TypeKindE7EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.bt, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i81, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  %i.nb = load ptr, ptr %5, align 8, !tbaa !181   ; 3 uses
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !122
  %i.nd = icmp eq ptr %i.nc, getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox10FlatVectorINS0_10StringViewEEE, i64 16)
  %i.ne = select i1 %i.nd, ptr %i.nb, ptr null
  store ptr %i.ne, ptr %i.f, align 8, !tbaa !249
  %i.nf = load i8, ptr %i.bh, align 1, !tbaa !198, !range !130, !noundef !131
  %i.ng = trunc nuw i8 %i.nf to i1
  br i1 %i.ng, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i, label %bb.by

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i:   ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox10ScalarTypeILNS1_8TypeKindE7EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.0.in.pre.i.i = load i8, ptr %i.bg, align 4, !tbaa !126, !range !130
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

bb.by:                                            ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox10ScalarTypeILNS1_8TypeKindE7EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.nh = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !187
  %i.nj = icmp eq i32 %i.ni, 0
  br i1 %i.nj, label %bb.bz, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.bz:                                            ; preds = %bb.by
  %i.nk = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.nl = load i32, ptr %i.nk, align 8, !tbaa !199 ; 6 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.nn = load i32, ptr %i.nm, align 8, !tbaa !200
  %i.no = icmp eq i32 %i.nl, %i.nn
  br i1 %i.no, label %bb.ca, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.ca:                                            ; preds = %bb.bz
  %i.np = load ptr, ptr %1, align 8, !tbaa !201   ; 2 uses
  %.not.i.i.i89 = icmp sgt i32 %i.nl, 0
  br i1 %.not.i.i.i89, label %bb.cb, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.cb:                                            ; preds = %bb.ca
  %i.nq = and i32 %i.nl, 2147483584               ; 3 uses
  %i.nr = zext nneg i32 %i.nq to i64
  %.not37.i.i.not.i.i594.not = icmp eq i32 %i.nq, 0
  br i1 %.not37.i.i.not.i.i594.not, label %.critedge.i.i.i.i, label %.lr.ph596

bb.cc:                                            ; preds = %.lr.ph596
  %indvars.iv.next.i.i91 = add nuw nsw i64 %indvars.iv.i.i90595, 64 ; 2 uses
  %.not37.i.i.not.i.i = icmp samesign ult i64 %indvars.iv.next.i.i91, %i.nr
  br i1 %.not37.i.i.not.i.i, label %.lr.ph596, label %.critedge.i.i.i.i, !llvm.loop !5

.lr.ph596:                                        ; preds = %bb.cb, %bb.cc
  %indvars.iv.i.i90595 = phi i64 [ %indvars.iv.next.i.i91, %bb.cc ], [ 0, %bb.cb ] ; 2 uses
  %i.ns = lshr exact i64 %indvars.iv.i.i90595, 3
  %i.nt = getelementptr inbounds nuw i8, ptr %i.np, i64 %i.ns
  %i.nu = load i64, ptr %i.nt, align 8, !tbaa !154
  %i.nv = icmp eq i64 %i.nu, -1
  br i1 %i.nv, label %bb.cc, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, !llvm.loop !5

.critedge.i.i.i.i:                                ; preds = %bb.cc, %bb.cb
  %.not38.i.i.i.i = icmp eq i32 %i.nl, %i.nq
  br i1 %.not38.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, label %bb.cd

bb.cd:                                            ; preds = %.critedge.i.i.i.i
  %i.nw = lshr i32 %i.nl, 6
  %i.nx = and i32 %i.nl, 63
  %i.ny = zext nneg i32 %i.nx to i64
  %notmask.i40.i.i.i.i = shl nsw i64 -1, %i.ny
  %i.nz = zext nneg i32 %i.nw to i64
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %i.np, i64 %i.nz
  %i.ob = load i64, ptr %i.oa, align 8, !tbaa !154
  %.demorgan.i.i = or i64 %i.ob, %notmask.i40.i.i.i.i
  %i.oc = icmp eq i64 %.demorgan.i.i, -1
  %i.od = zext i1 %i.oc to i16
  %i.oe = or disjoint i16 %i.od, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i: ; preds = %.lr.ph596, %bb.cd, %.critedge.i.i.i.i, %bb.ca, %bb.bz, %bb.by
  %.sroa.0.0.insert.ext.i.i = phi i16 [ 256, %bb.bz ], [ 256, %bb.by ], [ 257, %bb.ca ], [ 257, %.critedge.i.i.i.i ], [ %i.oe, %bb.cd ], [ 256, %.lr.ph596 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i, ptr %i.bg, align 4
  %i.of = trunc i16 %.sroa.0.0.insert.ext.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i
  %.0.in.i.i = phi i8 [ %.0.in.pre.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i ], [ %i.of, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i ]
  %.0.i.i = trunc nuw i8 %.0.in.i.i to i1
  br i1 %.0.i.i, label %bb.ce, label %bb.cj

bb.ce:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.og = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.oh = load i32, ptr %i.og, align 8, !tbaa !199 ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !187 ; 2 uses
  %i.ok = icmp slt i32 %i.oj, %i.oh
  br i1 %i.ok, label %.lr.ph.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E_EEvSO_.exit

.lr.ph.i:                                         ; preds = %bb.ce
  %i.ol = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !202
  %i.on = getelementptr inbounds nuw i8, ptr %i.i, i64 58
  %i.oo = load i8, ptr %i.on, align 2, !tbaa !203, !range !130, !noundef !131
  %i.op = trunc nuw i8 %i.oo to i1
  %i.oq = getelementptr inbounds nuw i8, ptr %i.i, i64 59
  %i.or = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.os = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.ot = sext i32 %i.oj to i64
  %wide.trip.count.i = sext i32 %i.oh to i64
  br label %bb.cf

bb.cf:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.ot, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i ] ; 3 uses
  %i.ou = phi i64 [ 0, %.lr.ph.i ], [ %i.pf, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i ]
  %i.ov = trunc nsw i64 %indvars.iv.i to i32
  br i1 %i.op, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ow = load i8, ptr %i.oq, align 1, !tbaa !179, !range !130, !noundef !131
  %i.ox = trunc nuw i8 %i.ow to i1
  br i1 %i.ox, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.oy = load i32, ptr %i.os, align 8, !tbaa !204
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i

bb.ci:                                            ; preds = %bb.cg
  %i.oz = load ptr, ptr %i.or, align 8, !tbaa !205
  %i.pa = getelementptr inbounds [4 x i8], ptr %i.oz, i64 %indvars.iv.i
  %i.pb = load i32, ptr %i.pa, align 4, !tbaa !116
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i: ; preds = %bb.ci, %bb.ch, %bb.cf
  %.0.i.i.i.i88 = phi i32 [ %i.pb, %bb.ci ], [ %i.oy, %bb.ch ], [ %i.ov, %bb.cf ]
  %i.pc = sext i32 %.0.i.i.i.i88 to i64
  %i.pd = getelementptr inbounds [16 x i8], ptr %i.om, i64 %i.pc
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.pd, align 8
  %i.pe = and i64 %.sroa.0.0.copyload.i.i.i, 4294967295
  %i.pf = add i64 %i.pe, %i.ou                    ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E_EEvSO_.exit, label %bb.cf, !llvm.loop !734

bb.cj:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.pg = load ptr, ptr %1, align 8, !tbaa !201   ; 4 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.pi = load i32, ptr %i.ph, align 4, !tbaa !187 ; 6 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.pk = load i32, ptr %i.pj, align 8, !tbaa !199 ; 7 uses
  %.not.i.i.i.i83 = icmp slt i32 %i.pi, %i.pk
  br i1 %.not.i.i.i.i83, label %bb.ck, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E_EEvSO_.exit

bb.ck:                                            ; preds = %bb.cj
  %i.pl = add i32 %i.pi, 63                       ; 2 uses
  %i.pm = srem i32 %i.pl, 64
  %i.pn = sub nsw i32 %i.pl, %i.pm                ; 6 uses
  %i.po = and i32 %i.pk, -64                      ; 8 uses
  %i.pp = icmp slt i32 %i.po, %i.pn
  br i1 %i.pp, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.pq = ashr i32 %i.pk, 6
  %i.pr = and i32 %i.pk, 63
  %i.ps = zext nneg i32 %i.pr to i64
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.ps
  %i.pt = xor i64 %notmask.i.i.i.i.i, -1
  %i.pu = sub nsw i32 %i.pn, %i.pi                ; 2 uses
  %i.pv = zext nneg i32 %i.pu to i64
  %notmask.i.i.i.i.i.i86 = shl nsw i64 -1, %i.pv
  %i.pw = xor i64 %notmask.i.i.i.i.i.i86, -1
  %i.px = sub nsw i32 64, %i.pu
  %i.py = zext nneg i32 %i.px to i64
  %i.pz = shl i64 %i.pw, %i.py
  %i.qa = and i64 %i.pz, %i.pt
  %i.qb = sext i32 %i.pq to i64
  %i.qc = getelementptr inbounds [8 x i8], ptr %i.pg, i64 %i.qb
  %i.qd = load i64, ptr %i.qc, align 8, !tbaa !154
  %i.qe = and i64 %i.qa, %i.qd                    ; 4 uses
  %.not.i.i.i.i.i87 = icmp eq i64 %i.qe, 0
  br i1 %.not.i.i.i.i.i87, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E_EEvSO_.exit, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.cl
  %i.qf = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !202 ; 3 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.i, i64 58
  %i.qi = load i8, ptr %i.qh, align 2, !tbaa !203, !range !130, !noundef !131
  %i.qj = trunc nuw i8 %i.qi to i1
  %i.qk = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ql = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  br i1 %i.qj, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.preheader.i.i.i.i.i, label %.preheader.split.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.preheader.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i
  %i.qm = sext i32 %i.po to i64
  %invariant.gep23.i.i.i.i.i = getelementptr [16 x i8], ptr %i.qg, i64 %i.qm
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.preheader.i.i.i.i.i
  %i.qn = phi i64 [ %i.qq, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i.i.i.i.i ], [ 0, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.preheader.i.i.i.i.i ]
  %.012.us.i.i.i.i.i = phi i64 [ %i.qs, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i.i.i.i.i ], [ %i.qe, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.preheader.i.i.i.i.i ] ; 3 uses
  %i.qo = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.012.us.i.i.i.i.i, i1 true)
  %gep24.i.i.i.i.i = getelementptr [16 x i8], ptr %invariant.gep23.i.i.i.i.i, i64 %i.qo
  %.sroa.0.0.copyload.i.i.us.i.i.i.i.i = load i64, ptr %gep24.i.i.i.i.i, align 8
  %i.qp = and i64 %.sroa.0.0.copyload.i.i.us.i.i.i.i.i, 4294967295
  %i.qq = add i64 %i.qp, %i.qn                    ; 2 uses
  %i.qr = add nuw i64 %.012.us.i.i.i.i.i, 9223372036854775807
  %i.qs = and i64 %i.qr, %.012.us.i.i.i.i.i       ; 2 uses
  %.not10.us.i.i.i.i.i = icmp eq i64 %i.qs, 0
  br i1 %.not10.us.i.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E_EEvSO_.exit, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i.i.i.i.i, !llvm.loop !735

.preheader.split.i.i.i.i.i:                       ; preds = %.preheader.i.i.i.i.i
  %i.qt = getelementptr inbounds nuw i8, ptr %i.i, i64 59
  %i.qu = load i8, ptr %i.qt, align 1, !tbaa !179, !range !130, !noundef !131
  %i.qv = trunc nuw i8 %i.qu to i1
  br i1 %i.qv, label %.preheader.split.split.us.i.i.i.i.i, label %.preheader.split.split.i.i.i.i.i

.preheader.split.split.us.i.i.i.i.i:              ; preds = %.preheader.split.i.i.i.i.i
  %i.qw = load i32, ptr %i.ql, align 8, !tbaa !204
  %i.qx = sext i32 %i.qw to i64
  %i.qy = getelementptr inbounds [16 x i8], ptr %i.qg, i64 %i.qx
  %.sroa.0.0.copyload.i.i.us17.i.i.i.i.i = load i64, ptr %i.qy, align 8
  %i.qz = and i64 %.sroa.0.0.copyload.i.i.us17.i.i.i.i.i, 4294967295
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us15.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us15.i.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us15.i.i.i.i.i, %.preheader.split.split.us.i.i.i.i.i
  %i.ra = phi i64 [ 0, %.preheader.split.split.us.i.i.i.i.i ], [ %i.rb, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us15.i.i.i.i.i ]
  %.012.us13.i.i.i.i.i = phi i64 [ %i.qe, %.preheader.split.split.us.i.i.i.i.i ], [ %i.rd, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us15.i.i.i.i.i ] ; 2 uses
  %i.rb = add i64 %i.qz, %i.ra                    ; 2 uses
  %i.rc = add nuw i64 %.012.us13.i.i.i.i.i, 9223372036854775807
  %i.rd = and i64 %i.rc, %.012.us13.i.i.i.i.i     ; 2 uses
  %.not10.us18.i.i.i.i.i = icmp eq i64 %i.rd, 0
  br i1 %.not10.us18.i.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E_EEvSO_.exit, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us15.i.i.i.i.i, !llvm.loop !735

.preheader.split.split.i.i.i.i.i:                 ; preds = %.preheader.split.i.i.i.i.i
  %i.re = load ptr, ptr %i.qk, align 8, !tbaa !205
  %i.rf = sext i32 %i.po to i64
  %invariant.gep.i.i.i.i.i = getelementptr [4 x i8], ptr %i.re, i64 %i.rf
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i, %.preheader.split.split.i.i.i.i.i
  %i.rg = phi i64 [ 0, %.preheader.split.split.i.i.i.i.i ], [ %i.rm, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i ]
  %.012.i.i.i.i.i = phi i64 [ %i.qe, %.preheader.split.split.i.i.i.i.i ], [ %i.ro, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i ] ; 3 uses
  %i.rh = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.012.i.i.i.i.i, i1 true)
  %gep.i.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i, i64 %i.rh
  %i.ri = load i32, ptr %gep.i.i.i.i.i, align 4, !tbaa !116
  %i.rj = sext i32 %i.ri to i64
  %i.rk = getelementptr inbounds [16 x i8], ptr %i.qg, i64 %i.rj
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.rk, align 8
  %i.rl = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 4294967295
  %i.rm = add i64 %i.rl, %i.rg                    ; 2 uses
  %i.rn = add nuw i64 %.012.i.i.i.i.i, 9223372036854775807
  %i.ro = and i64 %i.rn, %.012.i.i.i.i.i          ; 2 uses
  %.not10.i.i.i.i.i = icmp eq i64 %i.ro, 0
  br i1 %.not10.i.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E_EEvSO_.exit, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i, !llvm.loop !735

bb.cm:                                            ; preds = %bb.ck
  %.not32.i.i.i.i = icmp eq i32 %i.pi, %i.pn
  br i1 %.not32.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUlimE_clEim.exit62.i.i.i.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.rp = sdiv i32 %i.pi, 64                      ; 2 uses
  %i.rq = sub nsw i32 %i.pn, %i.pi                ; 2 uses
  %i.rr = zext nneg i32 %i.rq to i64
  %notmask.i.i35.i.i.i.i = shl nsw i64 -1, %i.rr
  %i.rs = xor i64 %notmask.i.i35.i.i.i.i, -1
  %i.rt = sub nsw i32 64, %i.rq
  %i.ru = zext nneg i32 %i.rt to i64
  %i.rv = shl i64 %i.rs, %i.ru
  %i.rw = sext i32 %i.rp to i64
  %i.rx = getelementptr inbounds [8 x i8], ptr %i.pg, i64 %i.rw
  %i.ry = load i64, ptr %i.rx, align 8, !tbaa !154
  %i.rz = and i64 %i.ry, %i.rv                    ; 4 uses
  %.not.i36.i.i.i.i = icmp eq i64 %i.rz, 0
  br i1 %.not.i36.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUlimE_clEim.exit62.i.i.i.i, label %.preheader.i37.i.i.i.i

.preheader.i37.i.i.i.i:                           ; preds = %bb.cn
  %i.sa = shl nsw i32 %i.rp, 6                    ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !202 ; 3 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.i, i64 58
  %i.se = load i8, ptr %i.sd, align 2, !tbaa !203, !range !130, !noundef !131
  %i.sf = trunc nuw i8 %i.se to i1
  %i.sg = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.sh = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  br i1 %i.sf, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.preheader.i54.i.i.i.i, label %.preheader.split.i39.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.preheader.i54.i.i.i.i: ; preds = %.preheader.i37.i.i.i.i
  %i.si = sext i32 %i.sa to i64
  %invariant.gep23.i55.i.i.i.i = getelementptr [16 x i8], ptr %i.sc, i64 %i.si
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i56.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i56.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i56.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.preheader.i54.i.i.i.i
  %i.sj = phi i64 [ %i.sm, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i56.i.i.i.i ], [ 0, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.preheader.i54.i.i.i.i ]
  %.012.us.i57.i.i.i.i = phi i64 [ %i.so, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i56.i.i.i.i ], [ %i.rz, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.preheader.i54.i.i.i.i ] ; 3 uses
  %i.sk = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.012.us.i57.i.i.i.i, i1 true)
  %gep24.i59.i.i.i.i = getelementptr [16 x i8], ptr %invariant.gep23.i55.i.i.i.i, i64 %i.sk
  %.sroa.0.0.copyload.i.i.us.i60.i.i.i.i = load i64, ptr %gep24.i59.i.i.i.i, align 8
  %i.sl = and i64 %.sroa.0.0.copyload.i.i.us.i60.i.i.i.i, 4294967295
  %i.sm = add i64 %i.sl, %i.sj                    ; 2 uses
  %i.sn = add i64 %.012.us.i57.i.i.i.i, -1
  %i.so = and i64 %i.sn, %.012.us.i57.i.i.i.i     ; 2 uses
  %.not10.us.i61.i.i.i.i = icmp eq i64 %i.so, 0
  br i1 %.not10.us.i61.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUlimE_clEim.exit62.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i56.i.i.i.i, !llvm.loop !735

.preheader.split.i39.i.i.i.i:                     ; preds = %.preheader.i37.i.i.i.i
  %i.sp = getelementptr inbounds nuw i8, ptr %i.i, i64 59
  %i.sq = load i8, ptr %i.sp, align 1, !tbaa !179, !range !130, !noundef !131
  %i.sr = trunc nuw i8 %i.sq to i1
  br i1 %i.sr, label %.preheader.split.split.us.i48.i.i.i.i, label %.preheader.split.split.i40.i.i.i.i

.preheader.split.split.us.i48.i.i.i.i:            ; preds = %.preheader.split.i39.i.i.i.i
  %i.ss = load i32, ptr %i.sh, align 8, !tbaa !204
  %i.st = sext i32 %i.ss to i64
  %i.su = getelementptr inbounds [16 x i8], ptr %i.sc, i64 %i.st
  %.sroa.0.0.copyload.i.i.us17.i52.i.i.i.i = load i64, ptr %i.su, align 8
  %i.sv = and i64 %.sroa.0.0.copyload.i.i.us17.i52.i.i.i.i, 4294967295
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us15.i49.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us15.i49.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us15.i49.i.i.i.i, %.preheader.split.split.us.i48.i.i.i.i
  %i.sw = phi i64 [ 0, %.preheader.split.split.us.i48.i.i.i.i ], [ %i.sx, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us15.i49.i.i.i.i ]
  %.012.us13.i50.i.i.i.i = phi i64 [ %i.rz, %.preheader.split.split.us.i48.i.i.i.i ], [ %i.sz, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us15.i49.i.i.i.i ] ; 2 uses
  %i.sx = add i64 %i.sv, %i.sw                    ; 2 uses
  %i.sy = add i64 %.012.us13.i50.i.i.i.i, -1
  %i.sz = and i64 %i.sy, %.012.us13.i50.i.i.i.i   ; 2 uses
  %.not10.us18.i53.i.i.i.i = icmp eq i64 %i.sz, 0
  br i1 %.not10.us18.i53.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUlimE_clEim.exit62.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us15.i49.i.i.i.i, !llvm.loop !735

.preheader.split.split.i40.i.i.i.i:               ; preds = %.preheader.split.i39.i.i.i.i
  %i.ta = load ptr, ptr %i.sg, align 8, !tbaa !205
  %i.tb = sext i32 %i.sa to i64
  %invariant.gep.i41.i.i.i.i = getelementptr [4 x i8], ptr %i.ta, i64 %i.tb
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i42.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i42.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i42.i.i.i.i, %.preheader.split.split.i40.i.i.i.i
  %i.tc = phi i64 [ 0, %.preheader.split.split.i40.i.i.i.i ], [ %i.ti, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i42.i.i.i.i ]
  %.012.i43.i.i.i.i = phi i64 [ %i.rz, %.preheader.split.split.i40.i.i.i.i ], [ %i.tk, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i42.i.i.i.i ] ; 3 uses
  %i.td = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.012.i43.i.i.i.i, i1 true)
  %gep.i45.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep.i41.i.i.i.i, i64 %i.td
  %i.te = load i32, ptr %gep.i45.i.i.i.i, align 4, !tbaa !116
  %i.tf = sext i32 %i.te to i64
  %i.tg = getelementptr inbounds [16 x i8], ptr %i.sc, i64 %i.tf
  %.sroa.0.0.copyload.i.i.i46.i.i.i.i = load i64, ptr %i.tg, align 8
  %i.th = and i64 %.sroa.0.0.copyload.i.i.i46.i.i.i.i, 4294967295
  %i.ti = add i64 %i.th, %i.tc                    ; 2 uses
  %i.tj = add i64 %.012.i43.i.i.i.i, -1
  %i.tk = and i64 %i.tj, %.012.i43.i.i.i.i        ; 2 uses
  %.not10.i47.i.i.i.i = icmp eq i64 %i.tk, 0
  br i1 %.not10.i47.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUlimE_clEim.exit62.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i42.i.i.i.i, !llvm.loop !735

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUlimE_clEim.exit62.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i42.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us15.i49.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i56.i.i.i.i, %bb.cn, %bb.cm
  %.0 = phi i64 [ 0, %bb.cm ], [ 0, %bb.cn ], [ %i.sm, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i56.i.i.i.i ], [ %i.sx, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us15.i49.i.i.i.i ], [ %i.ti, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i42.i.i.i.i ] ; 2 uses
  %i.tl = add nsw i32 %i.pn, 64                   ; 2 uses
  %.not33113.i.i.i.i = icmp sgt i32 %i.tl, %i.po
  br i1 %.not33113.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUlimE_clEim.exit62.i.i.i.i
  %i.tm = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %i.i, i64 58 ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %i.i, i64 59 ; 2 uses
  br label %bb.co

._crit_edge.i.i.i.i:                              ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUlimE_clEim.exit62.i.i.i.i
  %.3 = phi i64 [ %.0, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUlimE_clEim.exit62.i.i.i.i ], [ %.2, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i ] ; 5 uses
  %.not34.i.i.i.i = icmp eq i32 %i.pk, %i.po
  br i1 %.not34.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E_EEvSO_.exit, label %bb.cq

bb.co:                                            ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.1 = phi i64 [ %.0, %.lr.ph.i.i.i.i ], [ %.2, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i ] ; 13 uses
  %i.tr = phi i32 [ %i.tl, %.lr.ph.i.i.i.i ], [ %i.agp, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i ] ; 2 uses
  %.0114.i.i.i.i = phi i32 [ %i.pn, %.lr.ph.i.i.i.i ], [ %i.tr, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i ] ; 2 uses
  %i.ts = sdiv i32 %.0114.i.i.i.i, 64             ; 3 uses
  %i.tt = sext i32 %i.ts to i64
  %i.tu = getelementptr inbounds [8 x i8], ptr %i.pg, i64 %i.tt
  %i.tv = load i64, ptr %i.tu, align 8, !tbaa !154 ; 4 uses
  switch i64 %i.tv, label %.lr.ph.i.i.i.i.i85 [
    i64 -1, label %bb.cp
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i
  ]

.lr.ph.i.i.i.i.i85:                               ; preds = %bb.co
  %i.tw = shl nsw i32 %i.ts, 6                    ; 2 uses
  %i.tx = load ptr, ptr %i.tm, align 8, !tbaa !202 ; 3 uses
  %i.ty = load i8, ptr %i.tn, align 2, !tbaa !203, !range !130, !noundef !131
  %i.tz = trunc nuw i8 %i.ty to i1
  br i1 %i.tz, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.preheader.i70.i.i.i.i, label %.lr.ph.split.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.preheader.i70.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i85
  %i.ua = sext i32 %i.tw to i64
  %invariant.gep49.i.i.i.i.i = getelementptr [16 x i8], ptr %i.tx, i64 %i.ua
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i71.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i71.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i71.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.preheader.i70.i.i.i.i
  %i.ub = phi i64 [ %i.ue, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i71.i.i.i.i ], [ %.1, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.preheader.i70.i.i.i.i ]
  %.01524.us.i.i.i.i.i = phi i64 [ %i.ug, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i71.i.i.i.i ], [ %i.tv, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.preheader.i70.i.i.i.i ] ; 3 uses
  %i.uc = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01524.us.i.i.i.i.i, i1 true)
  %gep50.i.i.i.i.i = getelementptr [16 x i8], ptr %invariant.gep49.i.i.i.i.i, i64 %i.uc
  %.sroa.0.0.copyload.i.i21.us.i.i.i.i.i = load i64, ptr %gep50.i.i.i.i.i, align 8
  %i.ud = and i64 %.sroa.0.0.copyload.i.i21.us.i.i.i.i.i, 4294967295
  %i.ue = add i64 %i.ud, %i.ub                    ; 2 uses
  %i.uf = add i64 %.01524.us.i.i.i.i.i, -1
  %i.ug = and i64 %i.uf, %.01524.us.i.i.i.i.i     ; 2 uses
  %.not.us.i.i.i.i.i = icmp eq i64 %i.ug, 0
  br i1 %.not.us.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i71.i.i.i.i, !llvm.loop !736

.lr.ph.split.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i85
  %i.uh = load i8, ptr %i.tq, align 1, !tbaa !179, !range !130, !noundef !131
  %i.ui = trunc nuw i8 %i.uh to i1
  br i1 %i.ui, label %.lr.ph.split.split.us.i.i.i.i.i, label %.lr.ph.split.split.i.i.i.i.i

.lr.ph.split.split.us.i.i.i.i.i:                  ; preds = %.lr.ph.split.i.i.i.i.i
  %i.uj = load i32, ptr %i.tp, align 8, !tbaa !204
  %i.uk = sext i32 %i.uj to i64
  %i.ul = getelementptr inbounds [16 x i8], ptr %i.tx, i64 %i.uk
  %.sroa.0.0.copyload.i.i21.us29.i.i.i.i.i = load i64, ptr %i.ul, align 8
  %i.um = and i64 %.sroa.0.0.copyload.i.i21.us29.i.i.i.i.i, 4294967295
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us27.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us27.i.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us27.i.i.i.i.i, %.lr.ph.split.split.us.i.i.i.i.i
  %i.un = phi i64 [ %.1, %.lr.ph.split.split.us.i.i.i.i.i ], [ %i.uo, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us27.i.i.i.i.i ]
  %.01524.us25.i.i.i.i.i = phi i64 [ %i.tv, %.lr.ph.split.split.us.i.i.i.i.i ], [ %i.uq, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us27.i.i.i.i.i ] ; 2 uses
  %i.uo = add i64 %i.um, %i.un                    ; 2 uses
  %i.up = add i64 %.01524.us25.i.i.i.i.i, -1
  %i.uq = and i64 %i.up, %.01524.us25.i.i.i.i.i   ; 2 uses
  %.not.us30.i.i.i.i.i = icmp eq i64 %i.uq, 0
  br i1 %.not.us30.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us27.i.i.i.i.i, !llvm.loop !736

.lr.ph.split.split.i.i.i.i.i:                     ; preds = %.lr.ph.split.i.i.i.i.i
  %i.ur = load ptr, ptr %i.to, align 8, !tbaa !205
  %i.us = sext i32 %i.tw to i64
  %invariant.gep.i65.i.i.i.i = getelementptr [4 x i8], ptr %i.ur, i64 %i.us
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i66.i.i.i.i

bb.cp:                                            ; preds = %bb.co
  %i.ut = shl nsw i32 %i.ts, 6                    ; 4 uses
  %i.uu = sext i32 %i.ut to i64                   ; 19 uses
  %i.uv = add i32 %i.ut, 64
  %i.uw = sext i32 %i.uv to i64                   ; 7 uses
  %.0.off.i.i.i.i = add i32 %.0114.i.i.i.i, 127
  %.not38.i.i.i.i.i84 = icmp ult i32 %.0.off.i.i.i.i, 64
  br i1 %.not38.i.i.i.i.i84, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i, label %.lr.ph32.i.i.i.i.i

.lr.ph32.i.i.i.i.i:                               ; preds = %bb.cp
  %i.ux = load ptr, ptr %i.tm, align 8, !tbaa !202 ; 28 uses
  %i.uy = load i8, ptr %i.tn, align 2, !tbaa !203, !range !130, !noundef !131
  %i.uz = trunc nuw i8 %i.uy to i1
  br i1 %i.uz, label %iter.check, label %.lr.ph32.split.i.i.i.i.i

iter.check:                                       ; preds = %.lr.ph32.i.i.i.i.i
  %i.va = or disjoint i64 %i.uu, 1
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_:bb.a
  %i.abz = sext i32 %i.abj to i64
  %i.aca = sext i32 %i.abk to i64
  %i.acb = sext i32 %i.abl to i64
  %i.acc = getelementptr inbounds [16 x i8], ptr %i.ux, i64 %i.abm
  %i.acd = getelementptr inbounds [16 x i8], ptr %i.ux, i64 %i.abn
  %i.ace = getelementptr inbounds [16 x i8], ptr %i.ux, i64 %i.abo
  %i.acf = getelementptr inbounds [16 x i8], ptr %i.ux, i64 %i.abp
  %i.acg = getelementptr inbounds [16 x i8], ptr %i.ux, i64 %i.abq
  %i.ach = getelementptr inbounds [16 x i8], ptr %i.ux, i64 %i.abr
  %i.aci = getelementptr inbounds [16 x i8], ptr %i.ux, i64 %i.abs
  %i.acj = getelementptr inbounds [16 x i8], ptr %i.ux, i64 %i.abt
  %i.ack = getelementptr inbounds [16 x i8], ptr %i.ux, i64 %i.abu
  %i.acl = getelementptr inbounds [16 x i8], ptr %i.ux, i64 %i.abv
  %i.acm = getelementptr inbounds [16 x i8], ptr %i.ux, i64 %i.abw
  %i.acn = getelementptr inbounds [16 x i8], ptr %i.ux, i64 %i.abx
  %i.aco = getelementptr inbounds [16 x i8], ptr %i.ux, i64 %i.aby
  %i.acp = getelementptr inbounds [16 x i8], ptr %i.ux, i64 %i.abz
  %i.acq = getelementptr inbounds [16 x i8], ptr %i.ux, i64 %i.aca
  %i.acr = getelementptr inbounds [16 x i8], ptr %i.ux, i64 %i.acb
  %i.acs = load i64, ptr %i.acc, align 8
  %i.act = load i64, ptr %i.acd, align 8
  %i.acu = load i64, ptr %i.ace, align 8
  %i.acv = load i64, ptr %i.acf, align 8
  %i.acw = insertelement <4 x i64> poison, i64 %i.acs, i64 0
  %i.acx = insertelement <4 x i64> %i.acw, i64 %i.act, i64 1
  %i.acy = insertelement <4 x i64> %i.acx, i64 %i.acu, i64 2
  %i.acz = insertelement <4 x i64> %i.acy, i64 %i.acv, i64 3
  %i.ada = load i64, ptr %i.acg, align 8
  %i.adb = load i64, ptr %i.ach, align 8
  %i.adc = load i64, ptr %i.aci, align 8
  %i.add = load i64, ptr %i.acj, align 8
  %i.ade = insertelement <4 x i64> poison, i64 %i.ada, i64 0
  %i.adf = insertelement <4 x i64> %i.ade, i64 %i.adb, i64 1
  %i.adg = insertelement <4 x i64> %i.adf, i64 %i.adc, i64 2
  %i.adh = insertelement <4 x i64> %i.adg, i64 %i.add, i64 3
  %i.adi = load i64, ptr %i.ack, align 8
  %i.adj = load i64, ptr %i.acl, align 8
  %i.adk = load i64, ptr %i.acm, align 8
  %i.adl = load i64, ptr %i.acn, align 8
  %i.adm = insertelement <4 x i64> poison, i64 %i.adi, i64 0
  %i.adn = insertelement <4 x i64> %i.adm, i64 %i.adj, i64 1
  %i.ado = insertelement <4 x i64> %i.adn, i64 %i.adk, i64 2
  %i.adp = insertelement <4 x i64> %i.ado, i64 %i.adl, i64 3
  %i.adq = load i64, ptr %i.aco, align 8
  %i.adr = load i64, ptr %i.acp, align 8
  %i.ads = load i64, ptr %i.acq, align 8
  %i.adt = load i64, ptr %i.acr, align 8
  %i.adu = insertelement <4 x i64> poison, i64 %i.adq, i64 0
  %i.adv = insertelement <4 x i64> %i.adu, i64 %i.adr, i64 1
  %i.adw = insertelement <4 x i64> %i.adv, i64 %i.ads, i64 2
  %i.adx = insertelement <4 x i64> %i.adw, i64 %i.adt, i64 3
  %i.ady = and <4 x i64> %i.acz, splat (i64 4294967295)
  %i.adz = and <4 x i64> %i.adh, splat (i64 4294967295)
  %i.aea = and <4 x i64> %i.adp, splat (i64 4294967295)
  %i.aeb = and <4 x i64> %i.adx, splat (i64 4294967295)
  %i.aec = add <4 x i64> %i.ady, %vec.phi638      ; 2 uses
  %i.aed = add <4 x i64> %i.adz, %vec.phi639      ; 2 uses
  %i.aee = add <4 x i64> %i.aea, %vec.phi640      ; 2 uses
  %i.aef = add <4 x i64> %i.aeb, %vec.phi641      ; 2 uses
  %index.next642 = add nuw i64 %index637, 16      ; 2 uses
  %i.aeg = icmp eq i64 %index.next642, %n.vec654
  br i1 %i.aeg, label %middle.block643, label %vector.body636, !llvm.loop !740

middle.block643:                                  ; preds = %vector.body636
  %bin.rdx644 = add <4 x i64> %i.aed, %i.aec
  %bin.rdx645 = add <4 x i64> %i.aee, %bin.rdx644
  %bin.rdx646 = add <4 x i64> %i.aef, %bin.rdx645
  %i.aeh = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %bin.rdx646) ; 2 uses
  %cmp.n = icmp eq i64 %i.yh, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.preheader

vec.epilog.vector.body655:                        ; preds = %vector.main.loop.iter.check632, %vec.epilog.vector.body655
  %index656 = phi i64 [ %index.next658, %vec.epilog.vector.body655 ], [ 0, %vector.main.loop.iter.check632 ] ; 2 uses
  %vec.phi657 = phi <4 x i64> [ %i.aft, %vec.epilog.vector.body655 ], [ %i.yj, %vector.main.loop.iter.check632 ]
  %i.aei = add nuw i64 %index656, %i.uu           ; 4 uses
  %i.aej = shl i64 %i.aei, 32
  %i.aek = shl i64 %i.aei, 32
  %i.ael = shl i64 %i.aei, 32
  %i.aem = shl i64 %i.aei, 32
  %i.aen = ashr exact i64 %i.aej, 30
  %i.aeo = ashr exact i64 %i.aek, 30
  %i.aep = ashr exact i64 %i.ael, 30
  %i.aeq = ashr exact i64 %i.aem, 30
  %i.aer = getelementptr inbounds i8, ptr %i.xt, i64 %i.aen
  %i.aes = getelementptr i8, ptr %i.xt, i64 %i.aeo
  %i.aet = getelementptr i8, ptr %i.aes, i64 4
  %i.aeu = getelementptr i8, ptr %i.xt, i64 %i.aep
  %i.aev = getelementptr i8, ptr %i.aeu, i64 8
  %i.aew = getelementptr i8, ptr %i.xt, i64 %i.aeq
  %i.aex = getelementptr i8, ptr %i.aew, i64 12
  %i.aey = load i32, ptr %i.aer, align 4, !tbaa !116
  %i.aez = load i32, ptr %i.aet, align 4, !tbaa !116
  %i.afa = load i32, ptr %i.aev, align 4, !tbaa !116
  %i.afb = load i32, ptr %i.aex, align 4, !tbaa !116
  %i.afc = sext i32 %i.aey to i64
  %i.afd = sext i32 %i.aez to i64
  %i.afe = sext i32 %i.afa to i64
  %i.aff = sext i32 %i.afb to i64
  %i.afg = getelementptr inbounds [16 x i8], ptr %i.ux, i64 %i.afc
  %i.afh = getelementptr inbounds [16 x i8], ptr %i.ux, i64 %i.afd
  %i.afi = getelementptr inbounds [16 x i8], ptr %i.ux, i64 %i.afe
  %i.afj = getelementptr inbounds [16 x i8], ptr %i.ux, i64 %i.aff
  %i.afk = load i64, ptr %i.afg, align 8
  %i.afl = load i64, ptr %i.afh, align 8
  %i.afm = load i64, ptr %i.afi, align 8
  %i.afn = load i64, ptr %i.afj, align 8
  %i.afo = insertelement <4 x i64> poison, i64 %i.afk, i64 0
  %i.afp = insertelement <4 x i64> %i.afo, i64 %i.afl, i64 1
  %i.afq = insertelement <4 x i64> %i.afp, i64 %i.afm, i64 2
  %i.afr = insertelement <4 x i64> %i.afq, i64 %i.afn, i64 3
  %i.afs = and <4 x i64> %i.afr, splat (i64 4294967295)
  %i.aft = add <4 x i64> %i.afs, %vec.phi657      ; 2 uses
  %index.next658 = add nuw i64 %index656, 4       ; 2 uses
  %i.afu = icmp eq i64 %index.next658, %n.vec654
  br i1 %i.afu, label %vec.epilog.middle.block659, label %vec.epilog.vector.body655, !llvm.loop !741

vec.epilog.middle.block659:                       ; preds = %vec.epilog.vector.body655
  %i.afv = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.aft) ; 2 uses
  %cmp.n660 = icmp eq i64 %i.yh, 0
  br i1 %cmp.n660, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.preheader

_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.preheader: ; preds = %middle.block643, %vector.scevcheck625, %iter.check649, %vec.epilog.middle.block659
  %.ph698 = phi i64 [ %i.aeh, %middle.block643 ], [ %.1, %vector.scevcheck625 ], [ %.1, %iter.check649 ], [ %i.afv, %vec.epilog.middle.block659 ]
  %.031.i.i.i.i.i.ph = phi i64 [ %i.yi, %middle.block643 ], [ %i.uu, %vector.scevcheck625 ], [ %i.uu, %iter.check649 ], [ %i.yi, %vec.epilog.middle.block659 ]
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.preheader, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i
  %i.afw = phi i64 [ %i.agd, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i ], [ %.ph698, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.preheader ]
  %.031.i.i.i.i.i = phi i64 [ %i.age, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i ], [ %.031.i.i.i.i.i.ph, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.preheader ] ; 2 uses
  %sext.i.i.i.i.i.i = shl i64 %.031.i.i.i.i.i, 32
  %i.afx = ashr exact i64 %sext.i.i.i.i.i.i, 30
  %i.afy = getelementptr inbounds i8, ptr %i.xt, i64 %i.afx
  %i.afz = load i32, ptr %i.afy, align 4, !tbaa !116
  %i.aga = sext i32 %i.afz to i64
  %i.agb = getelementptr inbounds [16 x i8], ptr %i.ux, i64 %i.aga
  %.sroa.0.0.copyload.i.i.i63.i.i.i.i = load i64, ptr %i.agb, align 8
  %i.agc = and i64 %.sroa.0.0.copyload.i.i.i63.i.i.i.i, 4294967295
  %i.agd = add i64 %i.agc, %i.afw                 ; 2 uses
  %i.age = add nuw i64 %.031.i.i.i.i.i, 1         ; 2 uses
  %i.agf = icmp ult i64 %i.age, %i.uw
  br i1 %i.agf, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i, !llvm.loop !742

_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i66.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i66.i.i.i.i, %.lr.ph.split.split.i.i.i.i.i
  %i.agg = phi i64 [ %.1, %.lr.ph.split.split.i.i.i.i.i ], [ %i.agm, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i66.i.i.i.i ]
  %.01524.i.i.i.i.i = phi i64 [ %i.tv, %.lr.ph.split.split.i.i.i.i.i ], [ %i.ago, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i66.i.i.i.i ] ; 3 uses
  %i.agh = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01524.i.i.i.i.i, i1 true)
  %gep.i68.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep.i65.i.i.i.i, i64 %i.agh
  %i.agi = load i32, ptr %gep.i68.i.i.i.i, align 4, !tbaa !116
  %i.agj = sext i32 %i.agi to i64
  %i.agk = getelementptr inbounds [16 x i8], ptr %i.tx, i64 %i.agj
  %.sroa.0.0.copyload.i.i21.i.i.i.i.i = load i64, ptr %i.agk, align 8
  %i.agl = and i64 %.sroa.0.0.copyload.i.i21.i.i.i.i.i, 4294967295
  %i.agm = add i64 %i.agl, %i.agg                 ; 2 uses
  %i.agn = add i64 %.01524.i.i.i.i.i, -1
  %i.ago = and i64 %i.agn, %.01524.i.i.i.i.i      ; 2 uses
  %.not.i69.i.i.i.i = icmp eq i64 %i.ago, 0
  br i1 %.not.i69.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i66.i.i.i.i, !llvm.loop !736

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.us.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i66.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us27.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i71.i.i.i.i, %middle.block643, %vec.epilog.middle.block659, %.lr.ph32.split.split.us.i.i.i.i.i, %bb.cp, %bb.co
  %.2 = phi i64 [ %.1, %bb.co ], [ %i.ue, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i71.i.i.i.i ], [ %i.xs, %.lr.ph32.split.split.us.i.i.i.i.i ], [ %.1, %bb.cp ], [ %i.uo, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us27.i.i.i.i.i ], [ %i.agm, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i66.i.i.i.i ], [ %i.xg, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.us.i.i.i.i.i ], [ %i.afv, %vec.epilog.middle.block659 ], [ %i.aeh, %middle.block643 ], [ %i.agd, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i ] ; 2 uses
  %i.agp = add nsw i32 %i.tr, 64                  ; 2 uses
  %.not33.i.i.i.i = icmp sgt i32 %i.agp, %i.po
  br i1 %.not33.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.co, !llvm.loop !743

bb.cq:                                            ; preds = %._crit_edge.i.i.i.i
  %i.agq = ashr i32 %i.pk, 6
  %i.agr = and i32 %i.pk, 63
  %i.ags = zext nneg i32 %i.agr to i64
  %notmask.i73.i.i.i.i = shl nsw i64 -1, %i.ags
  %i.agt = xor i64 %notmask.i73.i.i.i.i, -1
  %i.agu = sext i32 %i.agq to i64
  %i.agv = getelementptr inbounds [8 x i8], ptr %i.pg, i64 %i.agu
  %i.agw = load i64, ptr %i.agv, align 8, !tbaa !154
  %i.agx = and i64 %i.agw, %i.agt                 ; 4 uses
  %.not.i74.i.i.i.i = icmp eq i64 %i.agx, 0
  br i1 %.not.i74.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E_EEvSO_.exit, label %.preheader.i75.i.i.i.i

.preheader.i75.i.i.i.i:                           ; preds = %bb.cq
  %i.agy = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.agz = load ptr, ptr %i.agy, align 8, !tbaa !202 ; 3 uses
  %i.aha = getelementptr inbounds nuw i8, ptr %i.i, i64 58
  %i.ahb = load i8, ptr %i.aha, align 2, !tbaa !203, !range !130, !noundef !131
  %i.ahc = trunc nuw i8 %i.ahb to i1
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  br i1 %i.ahc, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.preheader.i92.i.i.i.i, label %.preheader.split.i77.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.preheader.i92.i.i.i.i: ; preds = %.preheader.i75.i.i.i.i
  %i.ahf = sext i32 %i.po to i64
  %invariant.gep23.i93.i.i.i.i = getelementptr [16 x i8], ptr %i.agz, i64 %i.ahf
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i94.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i94.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i94.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.preheader.i92.i.i.i.i
  %i.ahg = phi i64 [ %i.ahj, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i94.i.i.i.i ], [ %.3, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.preheader.i92.i.i.i.i ]
  %.012.us.i95.i.i.i.i = phi i64 [ %i.ahl, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i94.i.i.i.i ], [ %i.agx, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.preheader.i92.i.i.i.i ] ; 3 uses
  %i.ahh = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.012.us.i95.i.i.i.i, i1 true)
  %gep24.i97.i.i.i.i = getelementptr [16 x i8], ptr %invariant.gep23.i93.i.i.i.i, i64 %i.ahh
  %.sroa.0.0.copyload.i.i.us.i98.i.i.i.i = load i64, ptr %gep24.i97.i.i.i.i, align 8
  %i.ahi = and i64 %.sroa.0.0.copyload.i.i.us.i98.i.i.i.i, 4294967295
  %i.ahj = add i64 %i.ahi, %i.ahg                 ; 2 uses
  %i.ahk = add nuw i64 %.012.us.i95.i.i.i.i, 9223372036854775807
  %i.ahl = and i64 %i.ahk, %.012.us.i95.i.i.i.i   ; 2 uses
  %.not10.us.i99.i.i.i.i = icmp eq i64 %i.ahl, 0
  br i1 %.not10.us.i99.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E_EEvSO_.exit, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i94.i.i.i.i, !llvm.loop !735

.preheader.split.i77.i.i.i.i:                     ; preds = %.preheader.i75.i.i.i.i
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.i, i64 59
  %i.ahn = load i8, ptr %i.ahm, align 1, !tbaa !179, !range !130, !noundef !131
  %i.aho = trunc nuw i8 %i.ahn to i1
  br i1 %i.aho, label %.preheader.split.split.us.i86.i.i.i.i, label %.preheader.split.split.i78.i.i.i.i

.preheader.split.split.us.i86.i.i.i.i:            ; preds = %.preheader.split.i77.i.i.i.i
  %i.ahp = load i32, ptr %i.ahe, align 8, !tbaa !204
  %i.ahq = sext i32 %i.ahp to i64
  %i.ahr = getelementptr inbounds [16 x i8], ptr %i.agz, i64 %i.ahq
  %.sroa.0.0.copyload.i.i.us17.i90.i.i.i.i = load i64, ptr %i.ahr, align 8
  %i.ahs = and i64 %.sroa.0.0.copyload.i.i.us17.i90.i.i.i.i, 4294967295
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us15.i87.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us15.i87.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us15.i87.i.i.i.i, %.preheader.split.split.us.i86.i.i.i.i
  %i.aht = phi i64 [ %.3, %.preheader.split.split.us.i86.i.i.i.i ], [ %i.ahu, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us15.i87.i.i.i.i ]
  %.012.us13.i88.i.i.i.i = phi i64 [ %i.agx, %.preheader.split.split.us.i86.i.i.i.i ], [ %i.ahw, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us15.i87.i.i.i.i ] ; 2 uses
  %i.ahu = add i64 %i.ahs, %i.aht                 ; 2 uses
  %i.ahv = add nuw i64 %.012.us13.i88.i.i.i.i, 9223372036854775807
  %i.ahw = and i64 %i.ahv, %.012.us13.i88.i.i.i.i ; 2 uses
  %.not10.us18.i91.i.i.i.i = icmp eq i64 %i.ahw, 0
  br i1 %.not10.us18.i91.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E_EEvSO_.exit, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us15.i87.i.i.i.i, !llvm.loop !735

.preheader.split.split.i78.i.i.i.i:               ; preds = %.preheader.split.i77.i.i.i.i
  %i.ahx = load ptr, ptr %i.ahd, align 8, !tbaa !205
  %i.ahy = sext i32 %i.po to i64
  %invariant.gep.i79.i.i.i.i = getelementptr [4 x i8], ptr %i.ahx, i64 %i.ahy
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i80.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i80.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i80.i.i.i.i, %.preheader.split.split.i78.i.i.i.i
  %i.ahz = phi i64 [ %.3, %.preheader.split.split.i78.i.i.i.i ], [ %i.aif, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i80.i.i.i.i ]
  %.012.i81.i.i.i.i = phi i64 [ %i.agx, %.preheader.split.split.i78.i.i.i.i ], [ %i.aih, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i80.i.i.i.i ] ; 3 uses
  %i.aia = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.012.i81.i.i.i.i, i1 true)
  %gep.i83.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep.i79.i.i.i.i, i64 %i.aia
  %i.aib = load i32, ptr %gep.i83.i.i.i.i, align 4, !tbaa !116
  %i.aic = sext i32 %i.aib to i64
  %i.aid = getelementptr inbounds [16 x i8], ptr %i.agz, i64 %i.aic
  %.sroa.0.0.copyload.i.i.i84.i.i.i.i = load i64, ptr %i.aid, align 8
  %i.aie = and i64 %.sroa.0.0.copyload.i.i.i84.i.i.i.i, 4294967295
  %i.aif = add i64 %i.aie, %i.ahz                 ; 2 uses
  %i.aig = add nuw i64 %.012.i81.i.i.i.i, 9223372036854775807
  %i.aih = and i64 %i.aig, %.012.i81.i.i.i.i      ; 2 uses
  %.not10.i85.i.i.i.i = icmp eq i64 %i.aih, 0
  br i1 %.not10.i85.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E_EEvSO_.exit, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i80.i.i.i.i, !llvm.loop !735

_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E_EEvSO_.exit: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i80.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us15.i87.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i94.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us15.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i, %bb.cq, %._crit_edge.i.i.i.i, %bb.cl, %bb.cj, %bb.ce
  %.4 = phi i64 [ 0, %bb.cj ], [ 0, %bb.ce ], [ 0, %bb.cl ], [ %i.rm, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i ], [ %i.ahj, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i94.i.i.i.i ], [ %i.ahu, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us15.i87.i.i.i.i ], [ %.3, %._crit_edge.i.i.i.i ], [ %.3, %bb.cq ], [ %i.pf, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i ], [ %i.qq, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i.i.i.i.i ], [ %i.rb, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us15.i.i.i.i.i ], [ %i.aif, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i80.i.i.i.i ]
  %i.aii = invoke noundef ptr @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE18getBufferWithSpaceEmb(ptr noundef nonnull align 8 dereferenceable(272) %i.nb, i64 noundef %.4, i1 noundef zeroext false)
          to label %bb.cr unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.cr:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E_EEvSO_.exit
  br i1 %i.bf, label %bb.cs, label %bb.ea

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  store ptr %i.f, ptr %22, align 8
  %.sroa.2157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %i.i, ptr %.sroa.2157.0..sroa_idx, align 8
  %.sroa.3158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 16
  store ptr %31, ptr %.sroa.3158.0..sroa_idx, align 8
  %.sroa.4159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 24
  store ptr %0, ptr %.sroa.4159.0..sroa_idx, align 8
  %.sroa.5160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 32
  store ptr %29, ptr %.sroa.5160.0..sroa_idx, align 8
  %i.aij = load i8, ptr %i.bh, align 1, !tbaa !198, !range !130, !noundef !131
  %i.aik = trunc nuw i8 %i.aij to i1
  br i1 %i.aik, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i127, label %bb.ct

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i127: ; preds = %bb.cs
  %.0.in.pre.i.i128 = load i8, ptr %i.bg, align 4, !tbaa !126, !range !130
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i94

bb.ct:                                            ; preds = %bb.cs
  %i.ail = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.aim = load i32, ptr %i.ail, align 4, !tbaa !187
  %i.ain = icmp eq i32 %i.aim, 0
  br i1 %i.ain, label %bb.cu, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i92

bb.cu:                                            ; preds = %bb.ct
  %i.aio = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aip = load i32, ptr %i.aio, align 8, !tbaa !199 ; 6 uses
  %i.aiq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.air = load i32, ptr %i.aiq, align 8, !tbaa !200
  %i.ais = icmp eq i32 %i.aip, %i.air
  br i1 %i.ais, label %bb.cv, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i92

bb.cv:                                            ; preds = %bb.cu
  %i.ait = load ptr, ptr %1, align 8, !tbaa !201  ; 2 uses
  %.not.i.i.i119 = icmp sgt i32 %i.aip, 0
  br i1 %.not.i.i.i119, label %bb.cw, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i92

bb.cw:                                            ; preds = %bb.cv
  %i.aiu = and i32 %i.aip, 2147483584             ; 3 uses
  %i.aiv = zext nneg i32 %i.aiu to i64
  %.not37.i.i.not.i.i121600.not = icmp eq i32 %i.aiu, 0
  br i1 %.not37.i.i.not.i.i121600.not, label %.critedge.i.i.i.i122, label %.lr.ph602

bb.cx:                                            ; preds = %.lr.ph602
  %indvars.iv.next.i.i126 = add nuw nsw i64 %indvars.iv.i.i120601, 64 ; 2 uses
  %.not37.i.i.not.i.i121 = icmp samesign ult i64 %indvars.iv.next.i.i126, %i.aiv
  br i1 %.not37.i.i.not.i.i121, label %.lr.ph602, label %.critedge.i.i.i.i122, !llvm.loop !5

.lr.ph602:                                        ; preds = %bb.cw, %bb.cx
  %indvars.iv.i.i120601 = phi i64 [ %indvars.iv.next.i.i126, %bb.cx ], [ 0, %bb.cw ] ; 2 uses
  %i.aiw = lshr exact i64 %indvars.iv.i.i120601, 3
  %i.aix = getelementptr inbounds nuw i8, ptr %i.ait, i64 %i.aiw
  %i.aiy = load i64, ptr %i.aix, align 8, !tbaa !154
  %i.aiz = icmp eq i64 %i.aiy, -1
  br i1 %i.aiz, label %bb.cx, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i92, !llvm.loop !5

.critedge.i.i.i.i122:                             ; preds = %bb.cx, %bb.cw
  %.not38.i.i.i.i123 = icmp eq i32 %i.aip, %i.aiu
  br i1 %.not38.i.i.i.i123, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i92, label %bb.cy

bb.cy:                                            ; preds = %.critedge.i.i.i.i122
  %i.aja = lshr i32 %i.aip, 6
  %i.ajb = and i32 %i.aip, 63
  %i.ajc = zext nneg i32 %i.ajb to i64
  %notmask.i40.i.i.i.i124 = shl nsw i64 -1, %i.ajc
  %i.ajd = zext nneg i32 %i.aja to i64
  %i.aje = getelementptr inbounds nuw [8 x i8], ptr %i.ait, i64 %i.ajd
  %i.ajf = load i64, ptr %i.aje, align 8, !tbaa !154
  %.demorgan.i.i125 = or i64 %i.ajf, %notmask.i40.i.i.i.i124
  %i.ajg = icmp eq i64 %.demorgan.i.i125, -1
  %i.ajh = zext i1 %i.ajg to i16
  %i.aji = or disjoint i16 %i.ajh, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i92

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i92: ; preds = %.lr.ph602, %bb.cy, %.critedge.i.i.i.i122, %bb.cv, %bb.cu, %bb.ct
  %.sroa.0.0.insert.ext.i.i93 = phi i16 [ 256, %bb.cu ], [ 256, %bb.ct ], [ 257, %bb.cv ], [ 257, %.critedge.i.i.i.i122 ], [ %i.aji, %bb.cy ], [ 256, %.lr.ph602 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i93, ptr %i.bg, align 4
  %i.ajj = trunc i16 %.sroa.0.0.insert.ext.i.i93 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i94

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i94: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i92, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i127
  %.0.in.i.i95 = phi i8 [ %.0.in.pre.i.i128, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i127 ], [ %i.ajj, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i92 ]
  %.0.i.i96 = trunc nuw i8 %.0.in.i.i95 to i1
  br i1 %.0.i.i96, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i94
  %i.ajk = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ajl = load i32, ptr %i.ajk, align 8, !tbaa !199 ; 2 uses
  %i.ajm = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ajn = load i32, ptr %i.ajm, align 4, !tbaa !187 ; 2 uses
  %i.ajo = icmp slt i32 %i.ajn, %i.ajl
  br i1 %i.ajo, label %.lr.ph.i117, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E0_EEvSO_.exit

.lr.ph.i117:                                      ; preds = %bb.cz, %.noexc129
  %.06.i = phi i32 [ %i.ajp, %.noexc129 ], [ %i.ajn, %bb.cz ] ; 2 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E0_clIiEEDaSN_(ptr noundef nonnull readonly align 8 dereferenceable(40) %22, i32 noundef %.06.i)
          to label %.noexc129 unwind label %.loopexit

.noexc129:                                        ; preds = %.lr.ph.i117
  %i.ajp = add i32 %.06.i, 1                      ; 2 uses
  %exitcond.not.i118 = icmp eq i32 %i.ajp, %i.ajl
  br i1 %exitcond.not.i118, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E0_EEvSO_.exit, label %.lr.ph.i117, !llvm.loop !744

bb.da:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i94
  %i.ajq = load ptr, ptr %1, align 8, !tbaa !201  ; 6 uses
  %i.ajr = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ajs = load i32, ptr %i.ajr, align 4, !tbaa !187 ; 6 uses
  %i.ajt = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aju = load i32, ptr %i.ajt, align 8, !tbaa !199 ; 7 uses
  %.sroa.39.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.39.0..sroa_idx.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(40) %22, i64 40, i1 false)
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3.0..sroa_idx.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(40) %22, i64 40, i1 false)
  store i8 1, ptr %20, align 8
  %.sroa.25.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %i.ajq, ptr %.sroa.25.0..sroa_idx.i.i.i, align 8
  store i8 1, ptr %21, align 8
  %.sroa.28.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr %i.ajq, ptr %.sroa.28.0..sroa_idx.i.i.i, align 8
  %.not.i.i.i.i97 = icmp slt i32 %i.ajs, %i.aju
  br i1 %.not.i.i.i.i97, label %bb.db, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E0_EEvPKmiiSP_.exit.i

bb.db:                                            ; preds = %bb.da
  %i.ajv = add i32 %i.ajs, 63                     ; 2 uses
  %i.ajw = srem i32 %i.ajv, 64
  %i.ajx = sub nsw i32 %i.ajv, %i.ajw             ; 6 uses
  %i.ajy = and i32 %i.aju, -64                    ; 6 uses
  %i.ajz = icmp slt i32 %i.ajy, %i.ajx
  br i1 %i.ajz, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.aka = ashr i32 %i.aju, 6
  %i.akb = and i32 %i.aju, 63
  %i.akc = zext nneg i32 %i.akb to i64
  %notmask.i.i.i.i.i112 = shl nsw i64 -1, %i.akc
  %i.akd = xor i64 %notmask.i.i.i.i.i112, -1
  %i.ake = sub nsw i32 %i.ajx, %i.ajs             ; 2 uses
  %i.akf = zext nneg i32 %i.ake to i64
  %notmask.i.i.i.i.i.i113 = shl nsw i64 -1, %i.akf
  %i.akg = xor i64 %notmask.i.i.i.i.i.i113, -1
  %i.akh = sub nsw i32 64, %i.ake
  %i.aki = zext nneg i32 %i.akh to i64
  %i.akj = shl i64 %i.akg, %i.aki
  %i.akk = and i64 %i.akj, %i.akd
  %i.akl = sext i32 %i.aka to i64
  %i.akm = getelementptr inbounds [8 x i8], ptr %i.ajq, i64 %i.akl
  %i.akn = load i64, ptr %i.akm, align 8, !tbaa !154
  %i.ako = and i64 %i.akk, %i.akn                 ; 2 uses
  %.not.i.i.i.i.i114 = icmp eq i64 %i.ako, 0
  br i1 %.not.i.i.i.i.i114, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E0_EEvPKmiiSP_.exit.i, label %.preheader.i.i.i.i.i115

.preheader.i.i.i.i.i115:                          ; preds = %bb.dc, %.noexc130
  %.011.i.i.i.i.i = phi i64 [ %i.akt, %.noexc130 ], [ %i.ako, %bb.dc ] ; 3 uses
  %i.akp = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i, i1 true)
  %i.akq = trunc nuw nsw i64 %i.akp to i32
  %i.akr = or disjoint i32 %i.ajy, %i.akq
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E0_clIiEEDaSN_(ptr noundef nonnull readonly align 8 dereferenceable(40) %.sroa.39.0..sroa_idx.i.i.i, i32 noundef %i.akr)
          to label %.noexc130 unwind label %.loopexit.split-lp.loopexit

.noexc130:                                        ; preds = %.preheader.i.i.i.i.i115
  %i.aks = add nuw i64 %.011.i.i.i.i.i, 9223372036854775807
  %i.akt = and i64 %i.aks, %.011.i.i.i.i.i        ; 2 uses
  %.not10.i.i.i.i.i116 = icmp eq i64 %i.akt, 0
  br i1 %.not10.i.i.i.i.i116, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E0_EEvPKmiiSP_.exit.i, label %.preheader.i.i.i.i.i115, !llvm.loop !745

bb.dd:                                            ; preds = %bb.db
  %.not32.i.i.i.i98 = icmp eq i32 %i.ajs, %i.ajx
  br i1 %.not32.i.i.i.i98, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E0_EEvPKmiibSP_ENKUlimE_clEim.exit40.i.i.i.i, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.aku = sdiv i32 %i.ajs, 64                    ; 2 uses
  %i.akv = sub nsw i32 %i.ajx, %i.ajs             ; 2 uses
  %i.akw = zext nneg i32 %i.akv to i64
  %notmask.i.i35.i.i.i.i99 = shl nsw i64 -1, %i.akw
  %i.akx = xor i64 %notmask.i.i35.i.i.i.i99, -1
  %i.aky = sub nsw i32 64, %i.akv
  %i.akz = zext nneg i32 %i.aky to i64
  %i.ala = shl i64 %i.akx, %i.akz
  %i.alb = sext i32 %i.aku to i64
  %i.alc = getelementptr inbounds [8 x i8], ptr %i.ajq, i64 %i.alb
  %i.ald = load i64, ptr %i.alc, align 8, !tbaa !154
  %i.ale = and i64 %i.ald, %i.ala                 ; 2 uses
  %.not.i36.i.i.i.i100 = icmp eq i64 %i.ale, 0
  br i1 %.not.i36.i.i.i.i100, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E0_EEvPKmiibSP_ENKUlimE_clEim.exit40.i.i.i.i, label %.preheader.i37.i.i.i.i101

.preheader.i37.i.i.i.i101:                        ; preds = %bb.de
  %i.alf = shl nsw i32 %i.aku, 6
  br label %bb.df

bb.df:                                            ; preds = %.noexc131, %.preheader.i37.i.i.i.i101
  %.011.i38.i.i.i.i = phi i64 [ %i.ale, %.preheader.i37.i.i.i.i101 ], [ %i.alk, %.noexc131 ] ; 3 uses
  %i.alg = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38.i.i.i.i, i1 true)
  %i.alh = trunc nuw nsw i64 %i.alg to i32
  %i.ali = or disjoint i32 %i.alf, %i.alh
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E0_clIiEEDaSN_(ptr noundef nonnull readonly align 8 dereferenceable(40) %.sroa.39.0..sroa_idx.i.i.i, i32 noundef %i.ali)
          to label %.noexc131 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc131:                                        ; preds = %bb.df
  %i.alj = add i64 %.011.i38.i.i.i.i, -1
  %i.alk = and i64 %i.alj, %.011.i38.i.i.i.i      ; 2 uses
  %.not10.i39.i.i.i.i = icmp eq i64 %i.alk, 0
  br i1 %.not10.i39.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E0_EEvPKmiibSP_ENKUlimE_clEim.exit40.i.i.i.i, label %bb.df, !llvm.loop !745

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E0_EEvPKmiibSP_ENKUlimE_clEim.exit40.i.i.i.i: ; preds = %.noexc131, %bb.de, %bb.dd
  %i.all = add nsw i32 %i.ajx, 64                 ; 2 uses
  %.not3355.i.i.i.i = icmp sgt i32 %i.all, %i.ajy
  br i1 %.not3355.i.i.i.i, label %._crit_edge.i.i.i.i104, label %.lr.ph.i.i.i.i102

.lr.ph.i.i.i.i102:                                ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E0_EEvPKmiibSP_ENKUlimE_clEim.exit40.i.i.i.i
  %i.alm = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 3 uses
  %i.aln = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.alo = getelementptr inbounds nuw i8, ptr %18, i64 40 ; 2 uses
  %i.alp = getelementptr inbounds nuw i8, ptr %18, i64 48
  %i.alq = getelementptr inbounds nuw i8, ptr %18, i64 56
  %i.alr = getelementptr inbounds nuw i8, ptr %18, i64 64 ; 3 uses
  %i.als = getelementptr inbounds nuw i8, ptr %18, i64 80 ; 6 uses
  %i.alt = getelementptr inbounds nuw i8, ptr %18, i64 72
  %i.alu = getelementptr inbounds nuw i8, ptr %20, i64 24
  %i.alv = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.alw = getelementptr inbounds nuw i8, ptr %20, i64 32
  %i.alx = getelementptr inbounds nuw i8, ptr %20, i64 48
  %i.aly = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.alz = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.ama = getelementptr inbounds nuw i8, ptr %19, i64 4
  %i.amb = load ptr, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !nonnull !131, !align !253
  %i.amc = load ptr, ptr %i.alu, align 8, !nonnull !131, !align !253 ; 5 uses
  %i.amd = getelementptr inbounds nuw i8, ptr %i.amc, i64 16
  %i.ame = getelementptr inbounds nuw i8, ptr %i.amc, i64 58
  %i.amf = load ptr, ptr %i.alw, align 8, !nonnull !131, !align !254 ; 2 uses
  %i.amg = getelementptr inbounds nuw i8, ptr %i.amf, i64 4
  %i.amh = getelementptr inbounds nuw i8, ptr %i.amc, i64 59
  %i.ami = getelementptr inbounds nuw i8, ptr %i.amc, i64 8
  %i.amj = getelementptr inbounds nuw i8, ptr %i.amc, i64 64
  %i.amk = load ptr, ptr %i.alx, align 8, !nonnull !131, !align !253
  br label %bb.dg

._crit_edge.i.i.i.i104:                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E0_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E0_EEvPKmiibSP_ENKUlimE_clEim.exit40.i.i.i.i
  %.not34.i.i.i.i105 = icmp eq i32 %i.aju, %i.ajy
  br i1 %.not34.i.i.i.i105, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E0_EEvPKmiiSP_.exit.i, label %bb.dw

bb.dg:                                            ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E0_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i, %.lr.ph.i.i.i.i102
  %i.aml = phi i32 [ %i.all, %.lr.ph.i.i.i.i102 ], [ %i.aox, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E0_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i ] ; 2 uses
  %.056.i.i.i.i = phi i32 [ %i.ajx, %.lr.ph.i.i.i.i102 ], [ %i.aml, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E0_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i ] ; 2 uses
  %i.amm = sdiv i32 %.056.i.i.i.i, 64             ; 3 uses
  %i.amn = sext i32 %i.amm to i64
  %i.amo = getelementptr inbounds [8 x i8], ptr %i.ajq, i64 %i.amn
  %i.amp = load i64, ptr %i.amo, align 8, !tbaa !154 ; 2 uses
  switch i64 %i.amp, label %.lr.ph.i.i.i.i.i111 [
    i64 -1, label %bb.dh
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E0_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i
  ]

.lr.ph.i.i.i.i.i111:                              ; preds = %bb.dg
  %i.amq = shl nsw i32 %i.amm, 6
  br label %bb.dv

bb.dh:                                            ; preds = %bb.dg
  %i.amr = shl nsw i32 %i.amm, 6                  ; 2 uses
  %i.ams = add i32 %i.amr, 64
  %i.amt = sext i32 %i.ams to i64
  %.0.off.i.i.i.i106 = add i32 %.056.i.i.i.i, 127
  %.not28.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i106, 64
  br i1 %.not28.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E0_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i, label %.lr.ph27.i.i.i.i.i

.lr.ph27.i.i.i.i.i:                               ; preds = %bb.dh
  %i.amu = sext i32 %i.amr to i64
  br label %bb.di

bb.di:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E0_clImEEDaSN_.exit.i.i.i.i.i, %.lr.ph27.i.i.i.i.i
  %.026.i.i.i.i.i = phi i64 [ %i.amu, %.lr.ph27.i.i.i.i.i ], [ %i.aoq, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E0_clImEEDaSN_.exit.i.i.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #27
  %i.amv = load ptr, ptr %i.amb, align 8, !tbaa !249 ; 2 uses
  %i.amw = trunc i64 %.026.i.i.i.i.i to i32       ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.alm, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8facebook5velox4exec12StringWriterE, i64 16), ptr %18, align 8, !tbaa !122
  store i8 0, ptr %i.aln, align 8, !tbaa !258
  store ptr null, ptr %i.alo, align 8, !tbaa !259
  store ptr %i.amv, ptr %i.alp, align 8, !tbaa !260
  store i32 %i.amw, ptr %i.alq, align 8, !tbaa !261
  store ptr %i.als, ptr %i.alr, align 8, !tbaa !104
  store i64 0, ptr %i.alt, align 8, !tbaa !106
  store i8 0, ptr %i.als, align 8, !tbaa !107
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #27
  %i.amx = load ptr, ptr %i.amd, align 8, !tbaa !202
  %i.amy = load i8, ptr %i.ame, align 2, !tbaa !203, !range !130, !noundef !131
  %i.amz = trunc nuw i8 %i.amy to i1
  br i1 %i.amz, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i.i.i.i.i, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.ana = load i8, ptr %i.amh, align 1, !tbaa !179, !range !130, !noundef !131
  %i.anb = trunc nuw i8 %i.ana to i1
  br i1 %i.anb, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.anc = load i32, ptr %i.amj, align 8, !tbaa !204
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i.i.i.i.i

bb.dl:                                            ; preds = %bb.dj
  %i.and = load ptr, ptr %i.ami, align 8, !tbaa !205
  %sext.i.i.i.i.i.i107 = shl i64 %.026.i.i.i.i.i, 32
  %i.ane = ashr exact i64 %sext.i.i.i.i.i.i107, 30
  %i.anf = getelementptr inbounds i8, ptr %i.and, i64 %i.ane
  %i.ang = load i32, ptr %i.anf, align 4, !tbaa !116
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i.i.i.i.i: ; preds = %bb.dl, %bb.dk, %bb.di
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ang, %bb.dl ], [ %i.anc, %bb.dk ], [ %i.amw, %bb.di ]
  %i.anh = sext i32 %.0.i.i.i.i.i.i.i.i to i64
  %i.ani = getelementptr inbounds [16 x i8], ptr %i.amx, i64 %i.anh ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i108 = load i64, ptr %i.ani, align 8 ; 4 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ani, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !107 ; 3 uses
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i108, ptr %19, align 8
  store ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i, ptr %i.alv, align 8
  %i.anj = load i8, ptr %i.amg, align 4, !tbaa !263, !range !130, !noundef !131
  %i.ank = trunc nuw i8 %i.anj to i1
  %i.anl = load i32, ptr %i.amf, align 4
  %i.anm = sext i32 %i.anl to i64
  %i.ann = icmp ult i64 %.026.i.i.i.i.i, %i.anm
  %i.ano = select i1 %i.ank, i1 %i.ann, i1 false
  %i.anp = trunc i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i108 to i32 ; 2 uses
  br i1 %i.ano, label %bb.dm, label %bb.dt

bb.dm:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i.i.i.i.i
  %i.anq = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i108, 4294967295 ; 4 uses
  %.not.i.i.i.i.i.i109 = icmp eq i64 %i.anq, 0
  br i1 %.not.i.i.i.i.i.i109, label %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i.i.i.i.i.i, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.anr = invoke noundef ptr @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE18getBufferWithSpaceEmb(ptr noundef nonnull align 8 dereferenceable(272) %i.amv, i64 noundef %i.anq, i1 noundef zeroext false)
          to label %.noexc.i.i.i.i.i.i unwind label %.loopexit17.i.i.i.i.i ; 5 uses

.noexc.i.i.i.i.i.i:                               ; preds = %bb.dn
  %i.ans = getelementptr inbounds nuw i8, ptr %i.anr, i64 32
  %i.ant = load i64, ptr %i.ans, align 8, !tbaa !268
  %i.anu = getelementptr inbounds nuw i8, ptr %i.anr, i64 24
  %i.anv = load i64, ptr %i.anu, align 8, !tbaa !269 ; 2 uses
  %i.anw = sub i64 %i.ant, %i.anv
  %i.anx = getelementptr inbounds nuw i8, ptr %i.anr, i64 44
  %i.any = load i8, ptr %i.anx, align 4, !tbaa !270
  %i.anz = and i8 %i.any, 2
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.anz, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox6Buffer9asMutableIcEEPT_v.exit.i.i.i.i.i.i.i, label %bb.do, !prof !155

bb.do:                                            ; preds = %.noexc.i.i.i.i.i.i
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIcEEPT_vE18veloxCheckFailArgs) #42
          to label %.noexc11.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i

.noexc11.i.i.i.i.i.i:                             ; preds = %bb.do
  unreachable

_ZNK8facebook5velox6Buffer9asMutableIcEEPT_v.exit.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.anr, i64 16
  %i.aob = load ptr, ptr %i.aoa, align 8, !tbaa !271
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.aob, i64 %i.anv ; 3 uses
  %i.aod = load i64, ptr %i.aly, align 8, !tbaa !272 ; 2 uses
  %.not10.i.i.i.i.i.i.i = icmp eq i64 %i.aod, 0
  br i1 %.not10.i.i.i.i.i.i.i, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %_ZNK8facebook5velox6Buffer9asMutableIcEEPT_v.exit.i.i.i.i.i.i.i
  %i.aoe = load ptr, ptr %i.alm, align 8, !tbaa !273
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aoc, ptr align 1 %i.aoe, i64 %i.aod, i1 false)
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %_ZNK8facebook5velox6Buffer9asMutableIcEEPT_v.exit.i.i.i.i.i.i.i
  store i64 %i.anw, ptr %i.alz, align 8, !tbaa !274
  store ptr %i.aoc, ptr %i.alm, align 8, !tbaa !273
  store ptr %i.anr, ptr %i.alo, align 8, !tbaa !259
  br label %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i.i.i.i.i.i

_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i.i.i.i.i.i: ; preds = %bb.dq, %bb.dm
  %i.aof = phi ptr [ null, %bb.dm ], [ %i.aoc, %bb.dq ]
  store i64 %i.anq, ptr %i.aly, align 8, !tbaa !272
  %.not.i.i.i.i.i.i.i110 = icmp eq i32 %i.anp, 0
  br i1 %.not.i.i.i.i.i.i.i110, label %_ZN8facebook5velox4exec12StringWriter6appendINS0_10StringViewEEEvRKT_.exit.i.i.i.i.i.i, label %bb.dr

bb.dr:                                            ; preds = %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i.i.i.i.i.i
  %i.aog = icmp ult i32 %i.anp, 13
  %i.aoh = select i1 %i.aog, ptr %i.ama, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aof, ptr align 1 %i.aoh, i64 %i.anq, i1 false)
  br label %_ZN8facebook5velox4exec12StringWriter6appendINS0_10StringViewEEEvRKT_.exit.i.i.i.i.i.i

_ZN8facebook5velox4exec12StringWriter6appendINS0_10StringViewEEEvRKT_.exit.i.i.i.i.i.i: ; preds = %bb.dr, %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i.i.i.i.i.i
  invoke void @_ZN8facebook5velox4exec12StringWriter8finalizeEv(ptr noundef nonnull align 8 dereferenceable(96) %18)
          to label %bb.du unwind label %.loopexit17.i.i.i.i.i

.loopexit17.i.i.i.i.i:                            ; preds = %bb.dt, %_ZN8facebook5velox4exec12StringWriter6appendINS0_10StringViewEEEvRKT_.exit.i.i.i.i.i.i, %bb.dn
  %lpad.loopexit.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

.loopexit.split-lp.i.i.i.i.i:                     ; preds = %bb.do
  %lpad.loopexit.split-lp.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

bb.ds:                                            ; preds = %.loopexit.split-lp.i.i.i.i.i, %.loopexit17.i.i.i.i.i
  %lpad.phi.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i, %.loopexit17.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8facebook5velox4exec12StringWriterE, i64 16), ptr %18, align 8, !tbaa !122
  %i.aoi = load ptr, ptr %i.alr, align 8, !tbaa !124 ; 2 uses
  %i.aoj = icmp eq ptr %i.aoi, %i.als
  br i1 %i.aoj, label %_ZN8facebook5velox4exec12StringWriterD2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.ds
  %i.aok = load i64, ptr %i.als, align 8, !tbaa !107
  %i.aol = add i64 %i.aok, 1
  call void @_ZdlPvm(ptr noundef %i.aoi, i64 noundef %i.aol) #40, !inline_history !275
  br label %_ZN8facebook5velox4exec12StringWriterD2Ev.exit.i.i.i.i.i.i

_ZN8facebook5velox4exec12StringWriterD2Ev.exit.i.i.i.i.i.i: ; preds = %bb.ds, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  br label %.body

bb.dt:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i.i.i.i.i
  invoke fastcc void @_ZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function14fixInvalidUtf8ENS0_10StringViewERKS4_RNS0_4exec12StringWriterE(i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i108, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.amk, ptr noundef nonnull align 8 dereferenceable(96) %18)
          to label %bb.du unwind label %.loopexit17.i.i.i.i.i

bb.du:                                            ; preds = %bb.dt, %_ZN8facebook5velox4exec12StringWriter6appendINS0_10StringViewEEEvRKT_.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8facebook5velox4exec12StringWriterE, i64 16), ptr %18, align 8, !tbaa !122
  %i.aom = load ptr, ptr %i.alr, align 8, !tbaa !124 ; 2 uses
  %i.aon = icmp eq ptr %i.aom, %i.als
  br i1 %i.aon, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E0_clImEEDaSN_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2.i.i.i.i.i.i: ; preds = %bb.du
  %i.aoo = load i64, ptr %i.als, align 8, !tbaa !107
  %i.aop = add i64 %i.aoo, 1
  call void @_ZdlPvm(ptr noundef %i.aom, i64 noundef %i.aop) #40, !inline_history !275
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E0_clImEEDaSN_.exit.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E0_clImEEDaSN_.exit.i.i.i.i.i: ; preds = %bb.du, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  %i.aoq = add nuw i64 %.026.i.i.i.i.i, 1         ; 2 uses
  %i.aor = icmp ult i64 %i.aoq, %i.amt
  br i1 %i.aor, label %bb.di, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E0_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i, !llvm.loop !746

bb.dv:                                            ; preds = %.noexc132, %.lr.ph.i.i.i.i.i111
  %.01525.i.i.i.i.i = phi i64 [ %i.amp, %.lr.ph.i.i.i.i.i111 ], [ %i.aow, %.noexc132 ] ; 3 uses
  %i.aos = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01525.i.i.i.i.i, i1 true)
  %i.aot = trunc nuw nsw i64 %i.aos to i32
  %i.aou = or disjoint i32 %i.amq, %i.aot
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E0_clIiEEDaSN_(ptr noundef nonnull readonly align 8 dereferenceable(40) %.sroa.3.0..sroa_idx.i.i.i, i32 noundef %i.aou)
          to label %.noexc132 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc132:                                        ; preds = %bb.dv
  %i.aov = add i64 %.01525.i.i.i.i.i, -1
  %i.aow = and i64 %i.aov, %.01525.i.i.i.i.i      ; 2 uses
  %.not.i41.i.i.i.i = icmp eq i64 %i.aow, 0
  br i1 %.not.i41.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E0_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i, label %bb.dv, !llvm.loop !747

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E0_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E0_clImEEDaSN_.exit.i.i.i.i.i, %.noexc132, %bb.dh, %bb.dg
  %i.aox = add nsw i32 %i.aml, 64                 ; 2 uses
  %.not33.i.i.i.i103 = icmp sgt i32 %i.aox, %i.ajy
  br i1 %.not33.i.i.i.i103, label %._crit_edge.i.i.i.i104, label %bb.dg, !llvm.loop !748

bb.dw:                                            ; preds = %._crit_edge.i.i.i.i104
  %i.aoy = ashr i32 %i.aju, 6
  %i.aoz = and i32 %i.aju, 63
  %i.apa = zext nneg i32 %i.aoz to i64
  %notmask.i42.i.i.i.i = shl nsw i64 -1, %i.apa
  %i.apb = xor i64 %notmask.i42.i.i.i.i, -1
  %i.apc = sext i32 %i.aoy to i64
  %i.apd = getelementptr inbounds [8 x i8], ptr %i.ajq, i64 %i.apc
  %i.ape = load i64, ptr %i.apd, align 8, !tbaa !154
  %i.apf = and i64 %i.ape, %i.apb                 ; 2 uses
  %.not.i43.i.i.i.i = icmp eq i64 %i.apf, 0
  br i1 %.not.i43.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E0_EEvPKmiiSP_.exit.i, label %.preheader.i44.i.i.i.i

.preheader.i44.i.i.i.i:                           ; preds = %bb.dw, %.noexc133
  %.011.i45.i.i.i.i = phi i64 [ %i.apk, %.noexc133 ], [ %i.apf, %bb.dw ] ; 3 uses
  %i.apg = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45.i.i.i.i, i1 true)
  %i.aph = trunc nuw nsw i64 %i.apg to i32
  %i.api = or disjoint i32 %i.ajy, %i.aph
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E0_clIiEEDaSN_(ptr noundef nonnull readonly align 8 dereferenceable(40) %.sroa.39.0..sroa_idx.i.i.i, i32 noundef %i.api)
          to label %.noexc133 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc133:                                        ; preds = %.preheader.i44.i.i.i.i
  %i.apj = add nuw i64 %.011.i45.i.i.i.i, 9223372036854775807
  %i.apk = and i64 %i.apj, %.011.i45.i.i.i.i      ; 2 uses
  %.not10.i46.i.i.i.i = icmp eq i64 %i.apk, 0
  br i1 %.not10.i46.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E0_EEvPKmiiSP_.exit.i, label %.preheader.i44.i.i.i.i, !llvm.loop !745

_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E0_EEvPKmiiSP_.exit.i: ; preds = %.noexc133, %.noexc130, %bb.dw, %._crit_edge.i.i.i.i104, %bb.dc, %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  br label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E0_EEvSO_.exit

_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E0_EEvSO_.exit: ; preds = %.noexc129, %bb.cz, %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E0_EEvPKmiiSP_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  br label %bb.ha

bb.dx:                                            ; preds = %bb.bj
  %i.apl = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

bb.dy:                                            ; preds = %bb.bk
  %i.apm = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %32) #27
  call void @_ZNSt12__shared_ptrIKN8facebook5velox10ScalarTypeILNS1_8TypeKindE7EEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %33) #27
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %.pn59 = phi { ptr, i32 } [ %i.apm, %bb.dy ], [ %i.apl, %bb.dx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #27
  br label %.loopexit.split-lp218

.loopexit:                                        ; preds = %.lr.ph.i117
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %.preheader.i.i.i.i.i115
  %lpad.loopexit178 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %.preheader.i44.i.i.i.i
  %lpad.loopexit181 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.dv
  %lpad.loopexit184 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.df
  %lpad.loopexit188 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E_EEvSO_.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ea:                                            ; preds = %bb.cr
  %i.apn = load ptr, ptr %28, align 8, !tbaa !161
  %i.apo = getelementptr inbounds nuw i8, ptr %i.apn, i64 16
  %i.app = invoke noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %i.apo)
          to label %_ZNK8facebook5velox4exec11DecodedArgs2atEi.exit135 unwind label %.loopexit.split-lp191.loopexit.split-lp.loopexit.split-lp

_ZNK8facebook5velox4exec11DecodedArgs2atEi.exit135: ; preds = %bb.ea
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  store ptr %0, ptr %17, align 8
  %.sroa.4173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  store ptr %2, ptr %.sroa.4173.0..sroa_idx, align 8
  %.sroa.5174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  store ptr %i.app, ptr %.sroa.5174.0..sroa_idx, align 8
  %.sroa.6175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 2 uses
  store ptr %i.f, ptr %.sroa.6175.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 32 ; 2 uses
  store ptr %i.i, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 40 ; 2 uses
  store ptr %31, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  %i.apq = load i8, ptr %i.bh, align 1, !tbaa !198, !range !130, !noundef !131
  %i.apr = trunc nuw i8 %i.apq to i1
  br i1 %i.apr, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i, label %bb.eb

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i: ; preds = %_ZNK8facebook5velox4exec11DecodedArgs2atEi.exit135
  %.0.in.pre.i.i.i.i = load i8, ptr %i.bg, align 4, !tbaa !126, !range !130
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i

bb.eb:                                            ; preds = %_ZNK8facebook5velox4exec11DecodedArgs2atEi.exit135
  %i.aps = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.apt = load i32, ptr %i.aps, align 4, !tbaa !187
  %i.apu = icmp eq i32 %i.apt, 0
  br i1 %i.apu, label %bb.ec, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i

bb.ec:                                            ; preds = %bb.eb
  %i.apv = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.apw = load i32, ptr %i.apv, align 8, !tbaa !199 ; 6 uses
  %i.apx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.apy = load i32, ptr %i.apx, align 8, !tbaa !200
  %i.apz = icmp eq i32 %i.apw, %i.apy
  br i1 %i.apz, label %bb.ed, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i

bb.ed:                                            ; preds = %bb.ec
  %i.aqa = load ptr, ptr %1, align 8, !tbaa !201  ; 2 uses
  %.not.i.i.i.i.i143 = icmp sgt i32 %i.apw, 0
  br i1 %.not.i.i.i.i.i143, label %bb.ee, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i

bb.ee:                                            ; preds = %bb.ed
  %i.aqb = and i32 %i.apw, 2147483584             ; 3 uses
  %i.aqc = zext nneg i32 %i.aqb to i64
  %.not37.i.i.not.i.i.i.i597.not = icmp eq i32 %i.aqb, 0
  br i1 %.not37.i.i.not.i.i.i.i597.not, label %.critedge.i.i.i.i.i.i, label %.lr.ph599

bb.ef:                                            ; preds = %.lr.ph599
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i598, 64 ; 2 uses
  %.not37.i.i.not.i.i.i.i = icmp samesign ult i64 %indvars.iv.next.i.i.i.i, %i.aqc
  br i1 %.not37.i.i.not.i.i.i.i, label %.lr.ph599, label %.critedge.i.i.i.i.i.i, !llvm.loop !5

.lr.ph599:                                        ; preds = %bb.ee, %bb.ef
  %indvars.iv.i.i.i.i598 = phi i64 [ %indvars.iv.next.i.i.i.i, %bb.ef ], [ 0, %bb.ee ] ; 2 uses
  %i.aqd = lshr exact i64 %indvars.iv.i.i.i.i598, 3
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.aqa, i64 %i.aqd
  %i.aqf = load i64, ptr %i.aqe, align 8, !tbaa !154
  %i.aqg = icmp eq i64 %i.aqf, -1
  br i1 %i.aqg, label %bb.ef, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i, !llvm.loop !5

.critedge.i.i.i.i.i.i:                            ; preds = %bb.ef, %bb.ee
  %.not38.i.i.i.i.i.i = icmp eq i32 %i.apw, %i.aqb
  br i1 %.not38.i.i.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i, label %bb.eg

bb.eg:                                            ; preds = %.critedge.i.i.i.i.i.i
  %i.aqh = lshr i32 %i.apw, 6
  %i.aqi = and i32 %i.apw, 63
  %i.aqj = zext nneg i32 %i.aqi to i64
  %notmask.i40.i.i.i.i.i.i = shl nsw i64 -1, %i.aqj
  %i.aqk = zext nneg i32 %i.aqh to i64
  %i.aql = getelementptr inbounds nuw [8 x i8], ptr %i.aqa, i64 %i.aqk
  %i.aqm = load i64, ptr %i.aql, align 8, !tbaa !154
  %.demorgan.i.i.i.i = or i64 %i.aqm, %notmask.i40.i.i.i.i.i.i
  %i.aqn = icmp eq i64 %.demorgan.i.i.i.i, -1
  %i.aqo = zext i1 %i.aqn to i16
  %i.aqp = or disjoint i16 %i.aqo, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i: ; preds = %.lr.ph599, %bb.eg, %.critedge.i.i.i.i.i.i, %bb.ed, %bb.ec, %bb.eb
  %.sroa.0.0.insert.ext.i.i.i.i = phi i16 [ 256, %bb.ec ], [ 256, %bb.eb ], [ 257, %bb.ed ], [ 257, %.critedge.i.i.i.i.i.i ], [ %i.aqp, %bb.eg ], [ 256, %.lr.ph599 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i, ptr %i.bg, align 4
  %i.aqq = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i
  %.0.in.i.i.i.i = phi i8 [ %.0.in.pre.i.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i ], [ %i.aqq, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i ]
  %.0.i.i.i.i136 = trunc nuw i8 %.0.in.i.i.i.i to i1
  br i1 %.0.i.i.i.i136, label %bb.eh, label %bb.ey

bb.eh:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i
  %i.aqr = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aqs = load i32, ptr %i.aqr, align 8, !tbaa !199 ; 2 uses
  %i.aqt = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.aqu = load i32, ptr %i.aqt, align 4, !tbaa !187 ; 2 uses
  %i.aqv = icmp slt i32 %i.aqu, %i.aqs
  br i1 %i.aqv, label %.lr.ph.i.i.i141, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_RSD_EUlT_E1_EEvS9_SO_.exit

.lr.ph.i.i.i141:                                  ; preds = %bb.eh, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_RSD_EUlT_E1_ZNS2_22applyToSelectedNoThrowISP_EEvS9_SO_EUlSO_E_EEvS9_SO_T0_ENKUlSO_E_clIiEEDaSO_.exit.i.i.i
  %.028.i.i.i = phi i32 [ %i.asc, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_RSD_EUlT_E1_ZNS2_22applyToSelectedNoThrowISP_EEvS9_SO_EUlSO_E_EEvS9_SO_T0_ENKUlSO_E_clIiEEDaSO_.exit.i.i.i ], [ %i.aqu, %bb.eh ] ; 4 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E1_clIiEEDaSN_(ptr noundef nonnull align 8 dereferenceable(48) %17, i32 noundef %.028.i.i.i)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_RSD_EUlT_E1_ZNS2_22applyToSelectedNoThrowISP_EEvS9_SO_EUlSO_E_EEvS9_SO_T0_ENKUlSO_E_clIiEEDaSO_.exit.i.i.i unwind label %bb.ei

bb.ei:                                            ; preds = %.lr.ph.i.i.i141
  %i.aqw = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.aqx = extractvalue { ptr, i32 } %i.aqw, 0    ; 2 uses
  %i.aqy = extractvalue { ptr, i32 } %i.aqw, 1    ; 2 uses
  %i.aqz = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #27
  %i.ara = icmp eq i32 %i.aqy, %i.aqz
  br i1 %i.ara, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.arb = call ptr @__cxa_begin_catch(ptr %i.aqx) #27
  %i.arc = getelementptr inbounds nuw i8, ptr %i.arb, i64 8
  %i.ard = load ptr, ptr %i.arc, align 8, !tbaa !278 ; 2 uses
  %i.are = getelementptr inbounds nuw i8, ptr %i.ard, i64 144
  %i.arf = load ptr, ptr %i.are, align 8, !tbaa !124 ; 4 uses
  %i.arg = getelementptr inbounds nuw i8, ptr %i.ard, i64 152
  %i.arh = load i64, ptr %i.arg, align 8, !tbaa !106
  %i.ari = icmp eq i64 %i.arh, 4
  br i1 %i.ari, label %.lr.ph.i.i.i.i.preheader.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i.preheader.i.i.i:                   ; preds = %bb.ej
  %i.arj = load i8, ptr %i.arf, align 1, !tbaa !107
  %or.cond.not.i.i.i.i.i.i = icmp eq i8 %i.arj, 85
  br i1 %or.cond.not.i.i.i.i.i.i, label %tailrecurse.i.i.i.i.i.i.i, label %.loopexit.i.i.i

tailrecurse.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i
  %i.ark = getelementptr inbounds nuw i8, ptr %i.arf, i64 1
  %i.arl = load i8, ptr %i.ark, align 1, !tbaa !107
  %or.cond.not.i.i.i.1.i.i.i = icmp eq i8 %i.arl, 83
end_hunk_1
begin_hunk_2_@_ZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function15toVarcharNoCopyERKSt10shared_ptrINS0_10BaseVectorEERNS0_13DecodedVectorERKNS0_17SelectivityVectorERKNS0_4exec7EvalCtxERS6_:bb.a
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

bb.bz:                                            ; preds = %bb.by
  %i.js = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !187
  %i.ju = icmp eq i32 %i.jt, 0
  br i1 %i.ju, label %bb.ca, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.ca:                                            ; preds = %bb.bz
  %i.jv = load i32, ptr %i.jc, align 8, !tbaa !199 ; 6 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.jx = load i32, ptr %i.jw, align 8, !tbaa !200
  %i.jy = icmp eq i32 %i.jv, %i.jx
  br i1 %i.jy, label %bb.cb, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.cb:                                            ; preds = %bb.ca
  %i.jz = load ptr, ptr %1, align 8, !tbaa !201   ; 2 uses
  %.not.i.i.i142 = icmp sgt i32 %i.jv, 0
  br i1 %.not.i.i.i142, label %bb.cc, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.cc:                                            ; preds = %bb.cb
  %i.ka = and i32 %i.jv, 2147483584               ; 3 uses
  %i.kb = zext nneg i32 %i.ka to i64
  %.not37.i.i.not.i.i97.not = icmp eq i32 %i.ka, 0
  br i1 %.not37.i.i.not.i.i97.not, label %.critedge.i.i.i.i, label %.lr.ph

bb.cd:                                            ; preds = %.lr.ph
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i98, 64 ; 2 uses
  %.not37.i.i.not.i.i = icmp samesign ult i64 %indvars.iv.next.i.i, %i.kb
  br i1 %.not37.i.i.not.i.i, label %.lr.ph, label %.critedge.i.i.i.i, !llvm.loop !5

.lr.ph:                                           ; preds = %bb.cc, %bb.cd
  %indvars.iv.i.i98 = phi i64 [ %indvars.iv.next.i.i, %bb.cd ], [ 0, %bb.cc ] ; 2 uses
  %i.kc = lshr exact i64 %indvars.iv.i.i98, 3
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jz, i64 %i.kc
  %i.ke = load i64, ptr %i.kd, align 8, !tbaa !154
  %i.kf = icmp eq i64 %i.ke, -1
  br i1 %i.kf, label %bb.cd, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, !llvm.loop !5

.critedge.i.i.i.i:                                ; preds = %bb.cd, %bb.cc
  %.not38.i.i.i.i = icmp eq i32 %i.jv, %i.ka
  br i1 %.not38.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, label %bb.ce

bb.ce:                                            ; preds = %.critedge.i.i.i.i
  %i.kg = lshr i32 %i.jv, 6
  %i.kh = and i32 %i.jv, 63
  %i.ki = zext nneg i32 %i.kh to i64
  %notmask.i40.i.i.i.i = shl nsw i64 -1, %i.ki
  %i.kj = zext nneg i32 %i.kg to i64
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %i.kj
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !154
  %.demorgan.i.i = or i64 %i.kl, %notmask.i40.i.i.i.i
  %i.km = icmp eq i64 %.demorgan.i.i, -1
  %i.kn = zext i1 %i.km to i16
  %i.ko = or disjoint i16 %i.kn, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i: ; preds = %.lr.ph, %bb.ce, %.critedge.i.i.i.i, %bb.cb, %bb.ca, %bb.bz
  %.sroa.0.0.insert.ext.i.i = phi i16 [ 256, %bb.ca ], [ 256, %bb.bz ], [ 257, %bb.cb ], [ 257, %.critedge.i.i.i.i ], [ %i.ko, %bb.ce ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i, ptr %i.jo, align 4
  %i.kp = trunc i16 %.sroa.0.0.insert.ext.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i
  %.0.in.i.i = phi i8 [ %.0.in.pre.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i ], [ %i.kp, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i ]
  %.0.i.i136 = trunc nuw i8 %.0.in.i.i to i1
  %i.kq = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !187 ; 8 uses
  br i1 %.0.i.i136, label %bb.cf, label %bb.ck

bb.cf:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.ks = load i32, ptr %i.jc, align 8, !tbaa !199 ; 2 uses
  %i.kt = icmp slt i32 %i.kr, %i.ks
  br i1 %i.kt, label %.lr.ph.i, label %.loopexit19

.lr.ph.i:                                         ; preds = %bb.cf
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.kx = sext i32 %i.kr to i64
  %wide.trip.count.i = sext i32 %i.ks to i64
  br label %bb.cg

bb.cg:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function15toVarcharNoCopyERKSt10shared_ptrINS0_10BaseVectorEERNS0_13DecodedVectorERKNS0_17SelectivityVectorERKNS0_4exec7EvalCtxERS6_ENKUlT_E_clIiEEDaSJ_.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.kx, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function15toVarcharNoCopyERKSt10shared_ptrINS0_10BaseVectorEERNS0_13DecodedVectorERKNS0_17SelectivityVectorERKNS0_4exec7EvalCtxERS6_ENKUlT_E_clIiEEDaSJ_.exit.i ] ; 4 uses
  %i.ky = load ptr, ptr %i.ku, align 8, !tbaa !202
  %i.kz = load i8, ptr %i.bq, align 2, !tbaa !203, !range !130, !noundef !131
  %i.la = trunc nuw i8 %i.kz to i1
  %i.lb = trunc nsw i64 %indvars.iv.i to i32
  br i1 %i.la, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function15toVarcharNoCopyERKSt10shared_ptrINS0_10BaseVectorEERNS0_13DecodedVectorERKNS0_17SelectivityVectorERKNS0_4exec7EvalCtxERS6_ENKUlT_E_clIiEEDaSJ_.exit.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.lc = load i8, ptr %i.m, align 1, !tbaa !179, !range !130, !noundef !131
  %i.ld = trunc nuw i8 %i.lc to i1
  br i1 %i.ld, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.le = load i32, ptr %i.kw, align 8, !tbaa !204
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function15toVarcharNoCopyERKSt10shared_ptrINS0_10BaseVectorEERNS0_13DecodedVectorERKNS0_17SelectivityVectorERKNS0_4exec7EvalCtxERS6_ENKUlT_E_clIiEEDaSJ_.exit.i

bb.cj:                                            ; preds = %bb.ch
  %i.lf = load ptr, ptr %i.kv, align 8, !tbaa !205
  %i.lg = getelementptr inbounds [4 x i8], ptr %i.lf, i64 %indvars.iv.i
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !116
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function15toVarcharNoCopyERKSt10shared_ptrINS0_10BaseVectorEERNS0_13DecodedVectorERKNS0_17SelectivityVectorERKNS0_4exec7EvalCtxERS6_ENKUlT_E_clIiEEDaSJ_.exit.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function15toVarcharNoCopyERKSt10shared_ptrINS0_10BaseVectorEERNS0_13DecodedVectorERKNS0_17SelectivityVectorERKNS0_4exec7EvalCtxERS6_ENKUlT_E_clIiEEDaSJ_.exit.i: ; preds = %bb.cj, %bb.ci, %bb.cg
  %.0.i.i.i.i141 = phi i32 [ %i.lh, %bb.cj ], [ %i.le, %bb.ci ], [ %i.lb, %bb.cg ]
  %i.li = sext i32 %.0.i.i.i.i141 to i64
  %i.lj = getelementptr inbounds [16 x i8], ptr %i.ky, i64 %i.li ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.lj, align 8
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !107
  %i.lk = getelementptr inbounds [16 x i8], ptr %i.jn, i64 %indvars.iv.i ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.lk, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.lk, i64 8
  store ptr %.sroa.2.0.copyload.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !107
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit19, label %bb.cg, !llvm.loop !778

bb.ck:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.ll = load ptr, ptr %1, align 8, !tbaa !201   ; 4 uses
  %i.lm = load i32, ptr %i.jc, align 8, !tbaa !199 ; 7 uses
  %.not.i.i.i.i137 = icmp slt i32 %i.kr, %i.lm
  br i1 %.not.i.i.i.i137, label %bb.cl, label %.loopexit19

bb.cl:                                            ; preds = %bb.ck
  %i.ln = add i32 %i.kr, 63                       ; 2 uses
  %i.lo = srem i32 %i.ln, 64
  %i.lp = sub nsw i32 %i.ln, %i.lo                ; 6 uses
  %i.lq = and i32 %i.lm, -64                      ; 6 uses
  %i.lr = icmp slt i32 %i.lq, %i.lp
  br i1 %i.lr, label %bb.cm, label %bb.cr

bb.cm:                                            ; preds = %bb.cl
  %i.ls = ashr i32 %i.lm, 6
  %i.lt = and i32 %i.lm, 63
  %i.lu = zext nneg i32 %i.lt to i64
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.lu
  %i.lv = xor i64 %notmask.i.i.i.i.i, -1
  %i.lw = sub nsw i32 %i.lp, %i.kr                ; 2 uses
  %i.lx = zext nneg i32 %i.lw to i64
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.lx
  %i.ly = xor i64 %notmask.i.i.i.i.i.i, -1
  %i.lz = sub nsw i32 64, %i.lw
  %i.ma = zext nneg i32 %i.lz to i64
  %i.mb = shl i64 %i.ly, %i.ma
  %i.mc = and i64 %i.mb, %i.lv
  %i.md = sext i32 %i.ls to i64
  %i.me = getelementptr inbounds [8 x i8], ptr %i.ll, i64 %i.md
  %i.mf = load i64, ptr %i.me, align 8, !tbaa !154
  %i.mg = and i64 %i.mc, %i.mf                    ; 2 uses
  %.not.i.i.i.i.i139 = icmp eq i64 %i.mg, 0
  br i1 %.not.i.i.i.i.i139, label %.loopexit19, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.cm
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.cn

bb.cn:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function15toVarcharNoCopyERKSt10shared_ptrINS0_10BaseVectorEERNS0_13DecodedVectorERKNS0_17SelectivityVectorERKNS0_4exec7EvalCtxERS6_ENKUlT_E_clIiEEDaSJ_.exit.i.i.i.i.i, %.preheader.i.i.i.i.i
  %.012.i.i.i.i.i140 = phi i64 [ %i.mg, %.preheader.i.i.i.i.i ], [ %i.nc, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function15toVarcharNoCopyERKSt10shared_ptrINS0_10BaseVectorEERNS0_13DecodedVectorERKNS0_17SelectivityVectorERKNS0_4exec7EvalCtxERS6_ENKUlT_E_clIiEEDaSJ_.exit.i.i.i.i.i ] ; 3 uses
  %i.mk = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.012.i.i.i.i.i140, i1 true)
  %i.ml = trunc nuw nsw i64 %i.mk to i32
  %i.mm = or disjoint i32 %i.lq, %i.ml            ; 3 uses
  %i.mn = load ptr, ptr %i.mh, align 8, !tbaa !202
  %i.mo = load i8, ptr %i.bq, align 2, !tbaa !203, !range !130, !noundef !131
  %i.mp = trunc nuw i8 %i.mo to i1
  br i1 %i.mp, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function15toVarcharNoCopyERKSt10shared_ptrINS0_10BaseVectorEERNS0_13DecodedVectorERKNS0_17SelectivityVectorERKNS0_4exec7EvalCtxERS6_ENKUlT_E_clIiEEDaSJ_.exit.i.i.i.i.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.mq = load i8, ptr %i.m, align 1, !tbaa !179, !range !130, !noundef !131
  %i.mr = trunc nuw i8 %i.mq to i1
  br i1 %i.mr, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.ms = load i32, ptr %i.mj, align 8, !tbaa !204
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function15toVarcharNoCopyERKSt10shared_ptrINS0_10BaseVectorEERNS0_13DecodedVectorERKNS0_17SelectivityVectorERKNS0_4exec7EvalCtxERS6_ENKUlT_E_clIiEEDaSJ_.exit.i.i.i.i.i

bb.cq:                                            ; preds = %bb.co
  %i.mt = load ptr, ptr %i.mi, align 8, !tbaa !205
  %i.mu = sext i32 %i.mm to i64
  %i.mv = getelementptr inbounds [4 x i8], ptr %i.mt, i64 %i.mu
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !116
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function15toVarcharNoCopyERKSt10shared_ptrINS0_10BaseVectorEERNS0_13DecodedVectorERKNS0_17SelectivityVectorERKNS0_4exec7EvalCtxERS6_ENKUlT_E_clIiEEDaSJ_.exit.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function15toVarcharNoCopyERKSt10shared_ptrINS0_10BaseVectorEERNS0_13DecodedVectorERKNS0_17SelectivityVectorERKNS0_4exec7EvalCtxERS6_ENKUlT_E_clIiEEDaSJ_.exit.i.i.i.i.i: ; preds = %bb.cq, %bb.cp, %bb.cn
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.mw, %bb.cq ], [ %i.ms, %bb.cp ], [ %i.mm, %bb.cn ]
  %i.mx = sext i32 %.0.i.i.i.i.i.i.i.i to i64
  %i.my = getelementptr inbounds [16 x i8], ptr %i.mn, i64 %i.mx ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.my, align 8
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.my, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !107
  %i.mz = sext i32 %i.mm to i64
  %i.na = getelementptr inbounds [16 x i8], ptr %i.jn, i64 %i.mz ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %i.na, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.na, i64 8
  store ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !107
  %i.nb = add nuw i64 %.012.i.i.i.i.i140, 9223372036854775807
  %i.nc = and i64 %i.nb, %.012.i.i.i.i.i140       ; 2 uses
  %.not10.i.i.i.i.i = icmp eq i64 %i.nc, 0
  br i1 %.not10.i.i.i.i.i, label %.loopexit19, label %bb.cn, !llvm.loop !779

bb.cr:                                            ; preds = %bb.cl
  %.not32.i.i.i.i = icmp eq i32 %i.kr, %i.lp
  br i1 %.not32.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function15toVarcharNoCopyERKSt10shared_ptrINS0_10BaseVectorEERNS0_13DecodedVectorERKNS0_17SelectivityVectorERKNS0_4exec7EvalCtxERS8_EUlT_E_EEvPKmiibSL_ENKUlimE_clEim.exit48.i.i.i.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.nd = sdiv i32 %i.kr, 64                      ; 2 uses
  %i.ne = sub nsw i32 %i.lp, %i.kr                ; 2 uses
  %i.nf = zext nneg i32 %i.ne to i64
  %notmask.i.i35.i.i.i.i = shl nsw i64 -1, %i.nf
  %i.ng = xor i64 %notmask.i.i35.i.i.i.i, -1
  %i.nh = sub nsw i32 64, %i.ne
  %i.ni = zext nneg i32 %i.nh to i64
  %i.nj = shl i64 %i.ng, %i.ni
  %i.nk = sext i32 %i.nd to i64
  %i.nl = getelementptr inbounds [8 x i8], ptr %i.ll, i64 %i.nk
  %i.nm = load i64, ptr %i.nl, align 8, !tbaa !154
  %i.nn = and i64 %i.nm, %i.nj                    ; 2 uses
  %.not.i36.i.i.i.i = icmp eq i64 %i.nn, 0
  br i1 %.not.i36.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function15toVarcharNoCopyERKSt10shared_ptrINS0_10BaseVectorEERNS0_13DecodedVectorERKNS0_17SelectivityVectorERKNS0_4exec7EvalCtxERS8_EUlT_E_EEvPKmiibSL_ENKUlimE_clEim.exit48.i.i.i.i, label %.preheader.i37.i.i.i.i

.preheader.i37.i.i.i.i:                           ; preds = %bb.cs
  %i.no = shl nsw i32 %i.nd, 6
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.ct

bb.ct:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function15toVarcharNoCopyERKSt10shared_ptrINS0_10BaseVectorEERNS0_13DecodedVectorERKNS0_17SelectivityVectorERKNS0_4exec7EvalCtxERS6_ENKUlT_E_clIiEEDaSJ_.exit.i41.i.i.i.i, %.preheader.i37.i.i.i.i
  %.012.i38.i.i.i.i = phi i64 [ %i.nn, %.preheader.i37.i.i.i.i ], [ %i.ok, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function15toVarcharNoCopyERKSt10shared_ptrINS0_10BaseVectorEERNS0_13DecodedVectorERKNS0_17SelectivityVectorERKNS0_4exec7EvalCtxERS6_ENKUlT_E_clIiEEDaSJ_.exit.i41.i.i.i.i ] ; 3 uses
  %i.ns = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.012.i38.i.i.i.i, i1 true)
  %i.nt = trunc nuw nsw i64 %i.ns to i32
  %i.nu = or disjoint i32 %i.no, %i.nt            ; 3 uses
  %i.nv = load ptr, ptr %i.np, align 8, !tbaa !202
  %i.nw = load i8, ptr %i.bq, align 2, !tbaa !203, !range !130, !noundef !131
  %i.nx = trunc nuw i8 %i.nw to i1
  br i1 %i.nx, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function15toVarcharNoCopyERKSt10shared_ptrINS0_10BaseVectorEERNS0_13DecodedVectorERKNS0_17SelectivityVectorERKNS0_4exec7EvalCtxERS6_ENKUlT_E_clIiEEDaSJ_.exit.i41.i.i.i.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.ny = load i8, ptr %i.m, align 1, !tbaa !179, !range !130, !noundef !131
  %i.nz = trunc nuw i8 %i.ny to i1
  br i1 %i.nz, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.oa = load i32, ptr %i.nr, align 8, !tbaa !204
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function15toVarcharNoCopyERKSt10shared_ptrINS0_10BaseVectorEERNS0_13DecodedVectorERKNS0_17SelectivityVectorERKNS0_4exec7EvalCtxERS6_ENKUlT_E_clIiEEDaSJ_.exit.i41.i.i.i.i

bb.cw:                                            ; preds = %bb.cu
  %i.ob = load ptr, ptr %i.nq, align 8, !tbaa !205
  %i.oc = sext i32 %i.nu to i64
  %i.od = getelementptr inbounds [4 x i8], ptr %i.ob, i64 %i.oc
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !116
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function15toVarcharNoCopyERKSt10shared_ptrINS0_10BaseVectorEERNS0_13DecodedVectorERKNS0_17SelectivityVectorERKNS0_4exec7EvalCtxERS6_ENKUlT_E_clIiEEDaSJ_.exit.i41.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function15toVarcharNoCopyERKSt10shared_ptrINS0_10BaseVectorEERNS0_13DecodedVectorERKNS0_17SelectivityVectorERKNS0_4exec7EvalCtxERS6_ENKUlT_E_clIiEEDaSJ_.exit.i41.i.i.i.i: ; preds = %bb.cw, %bb.cv, %bb.ct
  %.0.i.i.i.i42.i.i.i.i = phi i32 [ %i.oe, %bb.cw ], [ %i.oa, %bb.cv ], [ %i.nu, %bb.ct ]
  %i.of = sext i32 %.0.i.i.i.i42.i.i.i.i to i64
  %i.og = getelementptr inbounds [16 x i8], ptr %i.nv, i64 %i.of ; 2 uses
  %.sroa.0.0.copyload.i.i.i43.i.i.i.i = load i64, ptr %i.og, align 8
  %.sroa.2.0..sroa_idx.i.i.i44.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.og, i64 8
  %.sroa.2.0.copyload.i.i.i45.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i44.i.i.i.i, align 8, !tbaa !107
  %i.oh = sext i32 %i.nu to i64
  %i.oi = getelementptr inbounds [16 x i8], ptr %i.jn, i64 %i.oh ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i.i43.i.i.i.i, ptr %i.oi, align 8
  %.sroa.4.0..sroa_idx.i.i46.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.oi, i64 8
  store ptr %.sroa.2.0.copyload.i.i.i45.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i46.i.i.i.i, align 8, !tbaa !107
  %i.oj = add i64 %.012.i38.i.i.i.i, -1
  %i.ok = and i64 %i.oj, %.012.i38.i.i.i.i        ; 2 uses
  %.not10.i47.i.i.i.i = icmp eq i64 %i.ok, 0
  br i1 %.not10.i47.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function15toVarcharNoCopyERKSt10shared_ptrINS0_10BaseVectorEERNS0_13DecodedVectorERKNS0_17SelectivityVectorERKNS0_4exec7EvalCtxERS8_EUlT_E_EEvPKmiibSL_ENKUlimE_clEim.exit48.i.i.i.i, label %bb.ct, !llvm.loop !779

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function15toVarcharNoCopyERKSt10shared_ptrINS0_10BaseVectorEERNS0_13DecodedVectorERKNS0_17SelectivityVectorERKNS0_4exec7EvalCtxERS8_EUlT_E_EEvPKmiibSL_ENKUlimE_clEim.exit48.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function15toVarcharNoCopyERKSt10shared_ptrINS0_10BaseVectorEERNS0_13DecodedVectorERKNS0_17SelectivityVectorERKNS0_4exec7EvalCtxERS6_ENKUlT_E_clIiEEDaSJ_.exit.i41.i.i.i.i, %bb.cs, %bb.cr
  %i.ol = add nsw i32 %i.lp, 64                   ; 2 uses
  %.not3373.i.i.i.i = icmp sgt i32 %i.ol, %i.lq
  br i1 %.not3373.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function15toVarcharNoCopyERKSt10shared_ptrINS0_10BaseVectorEERNS0_13DecodedVectorERKNS0_17SelectivityVectorERKNS0_4exec7EvalCtxERS8_EUlT_E_EEvPKmiibSL_ENKUlimE_clEim.exit48.i.i.i.i
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  br label %bb.cx

._crit_edge.i.i.i.i:                              ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function15toVarcharNoCopyERKSt10shared_ptrINS0_10BaseVectorEERNS0_13DecodedVectorERKNS0_17SelectivityVectorERKNS0_4exec7EvalCtxERS8_EUlT_E_EEvPKmiibSL_ENKUliE_clEi.exit.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function15toVarcharNoCopyERKSt10shared_ptrINS0_10BaseVectorEERNS0_13DecodedVectorERKNS0_17SelectivityVectorERKNS0_4exec7EvalCtxERS8_EUlT_E_EEvPKmiibSL_ENKUlimE_clEim.exit48.i.i.i.i
  %.not34.i.i.i.i = icmp eq i32 %i.lm, %i.lq
  br i1 %.not34.i.i.i.i, label %.loopexit19, label %bb.dh

bb.cx:                                            ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function15toVarcharNoCopyERKSt10shared_ptrINS0_10BaseVectorEERNS0_13DecodedVectorERKNS0_17SelectivityVectorERKNS0_4exec7EvalCtxERS8_EUlT_E_EEvPKmiibSL_ENKUliE_clEi.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.op = phi i32 [ %i.ol, %.lr.ph.i.i.i.i ], [ %i.qi, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function15toVarcharNoCopyERKSt10shared_ptrINS0_10BaseVectorEERNS0_13DecodedVectorERKNS0_17SelectivityVectorERKNS0_4exec7EvalCtxERS8_EUlT_E_EEvPKmiibSL_ENKUliE_clEi.exit.i.i.i.i ] ; 2 uses
  %.074.i.i.i.i = phi i32 [ %i.lp, %.lr.ph.i.i.i.i ], [ %i.op, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function15toVarcharNoCopyERKSt10shared_ptrINS0_10BaseVectorEERNS0_13DecodedVectorERKNS0_17SelectivityVectorERKNS0_4exec7EvalCtxERS8_EUlT_E_EEvPKmiibSL_ENKUliE_clEi.exit.i.i.i.i ] ; 2 uses
  %i.oq = sdiv i32 %.074.i.i.i.i, 64              ; 3 uses
  %i.or = sext i32 %i.oq to i64
  %i.os = getelementptr inbounds [8 x i8], ptr %i.ll, i64 %i.or
  %i.ot = load i64, ptr %i.os, align 8, !tbaa !154 ; 2 uses
  switch i64 %i.ot, label %.lr.ph.i.i.i.i.i138 [
    i64 -1, label %bb.cy
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function15toVarcharNoCopyERKSt10shared_ptrINS0_10BaseVectorEERNS0_13DecodedVectorERKNS0_17SelectivityVectorERKNS0_4exec7EvalCtxERS8_EUlT_E_EEvPKmiibSL_ENKUliE_clEi.exit.i.i.i.i
  ]

.lr.ph.i.i.i.i.i138:                              ; preds = %bb.cx
  %i.ou = shl nsw i32 %i.oq, 6
  br label %bb.dd

bb.cy:                                            ; preds = %bb.cx
  %i.ov = shl nsw i32 %i.oq, 6                    ; 2 uses
  %i.ow = add i32 %i.ov, 64
  %i.ox = sext i32 %i.ow to i64
  %.0.off.i.i.i.i = add i32 %.074.i.i.i.i, 127
  %.not30.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i, 64
  br i1 %.not30.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function15toVarcharNoCopyERKSt10shared_ptrINS0_10BaseVectorEERNS0_13DecodedVectorERKNS0_17SelectivityVectorERKNS0_4exec7EvalCtxERS8_EUlT_E_EEvPKmiibSL_ENKUliE_clEi.exit.i.i.i.i, label %.lr.ph29.i.i.i.i.i

.lr.ph29.i.i.i.i.i:                               ; preds = %bb.cy
  %i.oy = sext i32 %i.ov to i64
  br label %bb.cz

bb.cz:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function15toVarcharNoCopyERKSt10shared_ptrINS0_10BaseVectorEERNS0_13DecodedVectorERKNS0_17SelectivityVectorERKNS0_4exec7EvalCtxERS6_ENKUlT_E_clImEEDaSJ_.exit.i.i.i.i.i, %.lr.ph29.i.i.i.i.i
  %.028.i.i.i.i.i = phi i64 [ %i.oy, %.lr.ph29.i.i.i.i.i ], [ %i.pn, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function15toVarcharNoCopyERKSt10shared_ptrINS0_10BaseVectorEERNS0_13DecodedVectorERKNS0_17SelectivityVectorERKNS0_4exec7EvalCtxERS6_ENKUlT_E_clImEEDaSJ_.exit.i.i.i.i.i ] ; 4 uses
  %i.oz = trunc i64 %.028.i.i.i.i.i to i32
  %i.pa = load ptr, ptr %i.om, align 8, !tbaa !202
  %i.pb = load i8, ptr %i.bq, align 2, !tbaa !203, !range !130, !noundef !131
  %i.pc = trunc nuw i8 %i.pb to i1
  br i1 %i.pc, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function15toVarcharNoCopyERKSt10shared_ptrINS0_10BaseVectorEERNS0_13DecodedVectorERKNS0_17SelectivityVectorERKNS0_4exec7EvalCtxERS6_ENKUlT_E_clImEEDaSJ_.exit.i.i.i.i.i, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.pd = load i8, ptr %i.m, align 1, !tbaa !179, !range !130, !noundef !131
  %i.pe = trunc nuw i8 %i.pd to i1
  br i1 %i.pe, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.pf = load i32, ptr %i.oo, align 8, !tbaa !204
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function15toVarcharNoCopyERKSt10shared_ptrINS0_10BaseVectorEERNS0_13DecodedVectorERKNS0_17SelectivityVectorERKNS0_4exec7EvalCtxERS6_ENKUlT_E_clImEEDaSJ_.exit.i.i.i.i.i

bb.dc:                                            ; preds = %bb.da
  %i.pg = load ptr, ptr %i.on, align 8, !tbaa !205
  %sext.i.i.i.i.i.i = shl i64 %.028.i.i.i.i.i, 32
  %i.ph = ashr exact i64 %sext.i.i.i.i.i.i, 30
  %i.pi = getelementptr inbounds i8, ptr %i.pg, i64 %i.ph
  %i.pj = load i32, ptr %i.pi, align 4, !tbaa !116
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function15toVarcharNoCopyERKSt10shared_ptrINS0_10BaseVectorEERNS0_13DecodedVectorERKNS0_17SelectivityVectorERKNS0_4exec7EvalCtxERS6_ENKUlT_E_clImEEDaSJ_.exit.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function15toVarcharNoCopyERKSt10shared_ptrINS0_10BaseVectorEERNS0_13DecodedVectorERKNS0_17SelectivityVectorERKNS0_4exec7EvalCtxERS6_ENKUlT_E_clImEEDaSJ_.exit.i.i.i.i.i: ; preds = %bb.dc, %bb.db, %bb.cz
  %.0.i.i.i.i49.i.i.i.i = phi i32 [ %i.pj, %bb.dc ], [ %i.pf, %bb.db ], [ %i.oz, %bb.cz ]
  %i.pk = sext i32 %.0.i.i.i.i49.i.i.i.i to i64
  %i.pl = getelementptr inbounds [16 x i8], ptr %i.pa, i64 %i.pk ; 2 uses
  %.sroa.0.0.copyload.i.i.i50.i.i.i.i = load i64, ptr %i.pl, align 8
  %.sroa.2.0..sroa_idx.i.i.i51.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.pl, i64 8
  %.sroa.2.0.copyload.i.i.i52.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i51.i.i.i.i, align 8, !tbaa !107
  %i.pm = getelementptr inbounds nuw [16 x i8], ptr %i.jn, i64 %.028.i.i.i.i.i ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i.i50.i.i.i.i, ptr %i.pm, align 8
  %.sroa.4.0..sroa_idx.i.i53.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.pm, i64 8
  store ptr %.sroa.2.0.copyload.i.i.i52.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i53.i.i.i.i, align 8, !tbaa !107
  %i.pn = add nuw i64 %.028.i.i.i.i.i, 1          ; 2 uses
  %i.po = icmp ult i64 %i.pn, %i.ox
  br i1 %i.po, label %bb.cz, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function15toVarcharNoCopyERKSt10shared_ptrINS0_10BaseVectorEERNS0_13DecodedVectorERKNS0_17SelectivityVectorERKNS0_4exec7EvalCtxERS8_EUlT_E_EEvPKmiibSL_ENKUliE_clEi.exit.i.i.i.i, !llvm.loop !780

bb.dd:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function15toVarcharNoCopyERKSt10shared_ptrINS0_10BaseVectorEERNS0_13DecodedVectorERKNS0_17SelectivityVectorERKNS0_4exec7EvalCtxERS6_ENKUlT_E_clIiEEDaSJ_.exit.i55.i.i.i.i, %.lr.ph.i.i.i.i.i138
  %.01527.i.i.i.i.i = phi i64 [ %i.ot, %.lr.ph.i.i.i.i.i138 ], [ %i.qh, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function15toVarcharNoCopyERKSt10shared_ptrINS0_10BaseVectorEERNS0_13DecodedVectorERKNS0_17SelectivityVectorERKNS0_4exec7EvalCtxERS6_ENKUlT_E_clIiEEDaSJ_.exit.i55.i.i.i.i ] ; 3 uses
  %i.pp = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01527.i.i.i.i.i, i1 true)
  %i.pq = trunc nuw nsw i64 %i.pp to i32
  %i.pr = or disjoint i32 %i.ou, %i.pq            ; 3 uses
  %i.ps = load ptr, ptr %i.om, align 8, !tbaa !202
  %i.pt = load i8, ptr %i.bq, align 2, !tbaa !203, !range !130, !noundef !131
  %i.pu = trunc nuw i8 %i.pt to i1
  br i1 %i.pu, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function15toVarcharNoCopyERKSt10shared_ptrINS0_10BaseVectorEERNS0_13DecodedVectorERKNS0_17SelectivityVectorERKNS0_4exec7EvalCtxERS6_ENKUlT_E_clIiEEDaSJ_.exit.i55.i.i.i.i, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.pv = load i8, ptr %i.m, align 1, !tbaa !179, !range !130, !noundef !131
  %i.pw = trunc nuw i8 %i.pv to i1
  br i1 %i.pw, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.px = load i32, ptr %i.oo, align 8, !tbaa !204
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function15toVarcharNoCopyERKSt10shared_ptrINS0_10BaseVectorEERNS0_13DecodedVectorERKNS0_17SelectivityVectorERKNS0_4exec7EvalCtxERS6_ENKUlT_E_clIiEEDaSJ_.exit.i55.i.i.i.i

bb.dg:                                            ; preds = %bb.de
  %i.py = load ptr, ptr %i.on, align 8, !tbaa !205
  %i.pz = sext i32 %i.pr to i64
  %i.qa = getelementptr inbounds [4 x i8], ptr %i.py, i64 %i.pz
  %i.qb = load i32, ptr %i.qa, align 4, !tbaa !116
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function15toVarcharNoCopyERKSt10shared_ptrINS0_10BaseVectorEERNS0_13DecodedVectorERKNS0_17SelectivityVectorERKNS0_4exec7EvalCtxERS6_ENKUlT_E_clIiEEDaSJ_.exit.i55.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function15toVarcharNoCopyERKSt10shared_ptrINS0_10BaseVectorEERNS0_13DecodedVectorERKNS0_17SelectivityVectorERKNS0_4exec7EvalCtxERS6_ENKUlT_E_clIiEEDaSJ_.exit.i55.i.i.i.i: ; preds = %bb.dg, %bb.df, %bb.dd
  %.0.i.i.i20.i.i.i.i.i = phi i32 [ %i.qb, %bb.dg ], [ %i.px, %bb.df ], [ %i.pr, %bb.dd ]
  %i.qc = sext i32 %.0.i.i.i20.i.i.i.i.i to i64
  %i.qd = getelementptr inbounds [16 x i8], ptr %i.ps, i64 %i.qc ; 2 uses
  %.sroa.0.0.copyload.i.i21.i.i.i.i.i = load i64, ptr %i.qd, align 8
  %.sroa.2.0..sroa_idx.i.i22.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.qd, i64 8
  %.sroa.2.0.copyload.i.i23.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i22.i.i.i.i.i, align 8, !tbaa !107
  %i.qe = sext i32 %i.pr to i64
  %i.qf = getelementptr inbounds [16 x i8], ptr %i.jn, i64 %i.qe ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i21.i.i.i.i.i, ptr %i.qf, align 8
  %.sroa.4.0..sroa_idx.i24.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.qf, i64 8
  store ptr %.sroa.2.0.copyload.i.i23.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i24.i.i.i.i.i, align 8, !tbaa !107
  %i.qg = add i64 %.01527.i.i.i.i.i, -1
  %i.qh = and i64 %i.qg, %.01527.i.i.i.i.i        ; 2 uses
  %.not.i56.i.i.i.i = icmp eq i64 %i.qh, 0
  br i1 %.not.i56.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function15toVarcharNoCopyERKSt10shared_ptrINS0_10BaseVectorEERNS0_13DecodedVectorERKNS0_17SelectivityVectorERKNS0_4exec7EvalCtxERS8_EUlT_E_EEvPKmiibSL_ENKUliE_clEi.exit.i.i.i.i, label %bb.dd, !llvm.loop !781

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_116FromUtf8Function15toVarcharNoCopyERKSt10shared_ptrINS0_10BaseVectorEERNS0_13DecodedVectorERKNS0_17SelectivityVectorERKNS0_4exec7EvalCtxERS8_EUlT_E_EEvPKmiibSL_ENKUliE_clEi.exit.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function15toVarcharNoCopyERKSt10shared_ptrINS0_10BaseVectorEERNS0_13DecodedVectorERKNS0_17SelectivityVectorERKNS0_4exec7EvalCtxERS6_ENKUlT_E_clImEEDaSJ_.exit.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function15toVarcharNoCopyERKSt10shared_ptrINS0_10BaseVectorEERNS0_13DecodedVectorERKNS0_17SelectivityVectorERKNS0_4exec7EvalCtxERS6_ENKUlT_E_clIiEEDaSJ_.exit.i55.i.i.i.i, %bb.cy, %bb.cx
  %i.qi = add nsw i32 %i.op, 64                   ; 2 uses
  %.not33.i.i.i.i = icmp sgt i32 %i.qi, %i.lq
  br i1 %.not33.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.cx, !llvm.loop !782

bb.dh:                                            ; preds = %._crit_edge.i.i.i.i
  %i.qj = ashr i32 %i.lm, 6
  %i.qk = and i32 %i.lm, 63
  %i.ql = zext nneg i32 %i.qk to i64
  %notmask.i57.i.i.i.i = shl nsw i64 -1, %i.ql
  %i.qm = xor i64 %notmask.i57.i.i.i.i, -1
  %i.qn = sext i32 %i.qj to i64
  %i.qo = getelementptr inbounds [8 x i8], ptr %i.ll, i64 %i.qn
  %i.qp = load i64, ptr %i.qo, align 8, !tbaa !154
  %i.qq = and i64 %i.qp, %i.qm                    ; 2 uses
  %.not.i58.i.i.i.i = icmp eq i64 %i.qq, 0
  br i1 %.not.i58.i.i.i.i, label %.loopexit19, label %.preheader.i59.i.i.i.i

.preheader.i59.i.i.i.i:                           ; preds = %bb.dh
  %i.qr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.qs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.di

bb.di:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function15toVarcharNoCopyERKSt10shared_ptrINS0_10BaseVectorEERNS0_13DecodedVectorERKNS0_17SelectivityVectorERKNS0_4exec7EvalCtxERS6_ENKUlT_E_clIiEEDaSJ_.exit.i63.i.i.i.i, %.preheader.i59.i.i.i.i
  %.012.i60.i.i.i.i = phi i64 [ %i.qq, %.preheader.i59.i.i.i.i ], [ %i.rm, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function15toVarcharNoCopyERKSt10shared_ptrINS0_10BaseVectorEERNS0_13DecodedVectorERKNS0_17SelectivityVectorERKNS0_4exec7EvalCtxERS6_ENKUlT_E_clIiEEDaSJ_.exit.i63.i.i.i.i ] ; 3 uses
  %i.qu = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.012.i60.i.i.i.i, i1 true)
  %i.qv = trunc nuw nsw i64 %i.qu to i32
  %i.qw = or disjoint i32 %i.lq, %i.qv            ; 3 uses
  %i.qx = load ptr, ptr %i.qr, align 8, !tbaa !202
  %i.qy = load i8, ptr %i.bq, align 2, !tbaa !203, !range !130, !noundef !131
  %i.qz = trunc nuw i8 %i.qy to i1
  br i1 %i.qz, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function15toVarcharNoCopyERKSt10shared_ptrINS0_10BaseVectorEERNS0_13DecodedVectorERKNS0_17SelectivityVectorERKNS0_4exec7EvalCtxERS6_ENKUlT_E_clIiEEDaSJ_.exit.i63.i.i.i.i, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.ra = load i8, ptr %i.m, align 1, !tbaa !179, !range !130, !noundef !131
  %i.rb = trunc nuw i8 %i.ra to i1
  br i1 %i.rb, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.rc = load i32, ptr %i.qt, align 8, !tbaa !204
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function15toVarcharNoCopyERKSt10shared_ptrINS0_10BaseVectorEERNS0_13DecodedVectorERKNS0_17SelectivityVectorERKNS0_4exec7EvalCtxERS6_ENKUlT_E_clIiEEDaSJ_.exit.i63.i.i.i.i

bb.dl:                                            ; preds = %bb.dj
  %i.rd = load ptr, ptr %i.qs, align 8, !tbaa !205
  %i.re = sext i32 %i.qw to i64
  %i.rf = getelementptr inbounds [4 x i8], ptr %i.rd, i64 %i.re
  %i.rg = load i32, ptr %i.rf, align 4, !tbaa !116
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function15toVarcharNoCopyERKSt10shared_ptrINS0_10BaseVectorEERNS0_13DecodedVectorERKNS0_17SelectivityVectorERKNS0_4exec7EvalCtxERS6_ENKUlT_E_clIiEEDaSJ_.exit.i63.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function15toVarcharNoCopyERKSt10shared_ptrINS0_10BaseVectorEERNS0_13DecodedVectorERKNS0_17SelectivityVectorERKNS0_4exec7EvalCtxERS6_ENKUlT_E_clIiEEDaSJ_.exit.i63.i.i.i.i: ; preds = %bb.dl, %bb.dk, %bb.di
  %.0.i.i.i.i64.i.i.i.i = phi i32 [ %i.rg, %bb.dl ], [ %i.rc, %bb.dk ], [ %i.qw, %bb.di ]
  %i.rh = sext i32 %.0.i.i.i.i64.i.i.i.i to i64
  %i.ri = getelementptr inbounds [16 x i8], ptr %i.qx, i64 %i.rh ; 2 uses
  %.sroa.0.0.copyload.i.i.i65.i.i.i.i = load i64, ptr %i.ri, align 8
  %.sroa.2.0..sroa_idx.i.i.i66.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ri, i64 8
  %.sroa.2.0.copyload.i.i.i67.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i66.i.i.i.i, align 8, !tbaa !107
  %i.rj = sext i32 %i.qw to i64
  %i.rk = getelementptr inbounds [16 x i8], ptr %i.jn, i64 %i.rj ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i.i65.i.i.i.i, ptr %i.rk, align 8
  %.sroa.4.0..sroa_idx.i.i68.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.rk, i64 8
  store ptr %.sroa.2.0.copyload.i.i.i67.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i68.i.i.i.i, align 8, !tbaa !107
  %i.rl = add nuw i64 %.012.i60.i.i.i.i, 9223372036854775807
  %i.rm = and i64 %i.rl, %.012.i60.i.i.i.i        ; 2 uses
  %.not10.i69.i.i.i.i = icmp eq i64 %i.rm, 0
  br i1 %.not10.i69.i.i.i.i, label %.loopexit19, label %bb.di, !llvm.loop !779

.loopexit19:                                      ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function15toVarcharNoCopyERKSt10shared_ptrINS0_10BaseVectorEERNS0_13DecodedVectorERKNS0_17SelectivityVectorERKNS0_4exec7EvalCtxERS6_ENKUlT_E_clIiEEDaSJ_.exit.i63.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function15toVarcharNoCopyERKSt10shared_ptrINS0_10BaseVectorEERNS0_13DecodedVectorERKNS0_17SelectivityVectorERKNS0_4exec7EvalCtxERS6_ENKUlT_E_clIiEEDaSJ_.exit.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116FromUtf8Function15toVarcharNoCopyERKSt10shared_ptrINS0_10BaseVectorEERNS0_13DecodedVectorERKNS0_17SelectivityVectorERKNS0_4exec7EvalCtxERS6_ENKUlT_E_clIiEEDaSJ_.exit.i, %bb.cf, %bb.ck, %bb.cm, %._crit_edge.i.i.i.i, %bb.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.rn = load ptr, ptr %2, align 8, !tbaa !225
  %i.ro = load ptr, ptr %i.rn, align 8, !tbaa !247
  store ptr %i.ro, ptr %i.j, align 8, !tbaa !302
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  invoke void @_ZN8facebook5velox7VARCHAREv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.124") align 8 %16)
          to label %bb.dm unwind label %bb.eh

bb.dm:                                            ; preds = %.loopexit19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #27
  store ptr null, ptr %i.k, align 8, !tbaa !789
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #27
  %i.rp = load i32, ptr %i.jc, align 8, !tbaa !199
  store i32 %i.rp, ptr %i.l, align 4, !tbaa !116
  %i.rq = invoke noalias noundef nonnull dereferenceable(288) ptr @_Znwm(i64 noundef 288) #39
          to label %.noexc144 unwind label %bb.ei ; 6 uses

.noexc144:                                        ; preds = %bb.dm
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 8
  store i32 1, ptr %i.rr, align 8, !tbaa !119, !noalias !792
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rq, i64 12
  store i32 1, ptr %i.rs, align 4, !tbaa !120, !noalias !792
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox10FlatVectorINS1_10StringViewEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.rq, align 8, !tbaa !122, !noalias !792
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rq, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN8facebook5velox10FlatVectorINS1_10StringViewEEEJPNS1_6memory10MemoryPoolESt10shared_ptrIKNS1_10ScalarTypeILNS1_8TypeKindE7EEEEDniN5boost13intrusive_ptrINS1_6BufferEEESt6vectorISH_SaISH_EEEEvPT_DpOT0_(ptr noundef nonnull %i.rt, ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 4 dereferenceable(4) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %_ZSt11make_sharedIN8facebook5velox10FlatVectorINS1_10StringViewEEEJPNS1_6memory10MemoryPoolESt10shared_ptrIKNS1_10ScalarTypeILNS1_8TypeKindE7EEEEDniN5boost13intrusive_ptrINS1_6BufferEEESt6vectorISH_SaISH_EEEES8_IT_EDpOT0_.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox10FlatVectorINS2_10StringViewEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit14.i.i.i.i143, !noalias !792

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox10FlatVectorINS2_10StringViewEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit14.i.i.i.i143: ; preds = %.noexc144
  %i.ru = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.rq, i64 noundef 288) #40, !noalias !792
  br label %.body145

_ZSt11make_sharedIN8facebook5velox10FlatVectorINS1_10StringViewEEEJPNS1_6memory10MemoryPoolESt10shared_ptrIKNS1_10ScalarTypeILNS1_8TypeKindE7EEEEDniN5boost13intrusive_ptrINS1_6BufferEEESt6vectorISH_SaISH_EEEES8_IT_EDpOT0_.exit: ; preds = %.noexc144
  store ptr %i.rt, ptr %5, align 8, !tbaa !303
  %i.rv = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !114 ; 8 uses
  store ptr %i.rq, ptr %i.rv, align 8, !tbaa !114
  %.not.i.i.i.i147 = icmp eq ptr %i.rw, null
  br i1 %.not.i.i.i.i147, label %_ZNSt12__shared_ptrIN8facebook5velox10FlatVectorINS1_10StringViewEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit156, label %bb.dn

bb.dn:                                            ; preds = %_ZSt11make_sharedIN8facebook5velox10FlatVectorINS1_10StringViewEEEJPNS1_6memory10MemoryPoolESt10shared_ptrIKNS1_10ScalarTypeILNS1_8TypeKindE7EEEEDniN5boost13intrusive_ptrINS1_6BufferEEESt6vectorISH_SaISH_EEEES8_IT_EDpOT0_.exit
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 8 ; 4 uses
  %i.ry = load atomic i64, ptr %i.rx acquire, align 8 ; 2 uses
  %i.rz = icmp eq i64 %i.ry, 4294967297
  %i.sa = trunc i64 %i.ry to i32                  ; 2 uses
  br i1 %i.rz, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  store i32 0, ptr %i.rx, align 8, !tbaa !119
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rw, i64 12
  store i32 0, ptr %i.sb, align 4, !tbaa !120
  %i.sc = load ptr, ptr %i.rw, align 8, !tbaa !122
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 16
  %i.se = load ptr, ptr %i.sd, align 8
  call void %i.se(ptr noundef nonnull align 8 dereferenceable(16) %i.rw) #27, !inline_history !775
  %i.sf = load ptr, ptr %i.rw, align 8, !tbaa !122
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 24
  %i.sh = load ptr, ptr %i.sg, align 8
  call void %i.sh(ptr noundef nonnull align 8 dereferenceable(16) %i.rw) #27, !inline_history !775
  br label %_ZNSt12__shared_ptrIN8facebook5velox10FlatVectorINS1_10StringViewEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit156

bb.dp:                                            ; preds = %bb.dn
  %i.si = load i8, ptr @__libc_single_threaded, align 1, !tbaa !107
  %.not.i.i.i.i.i148 = icmp eq i8 %i.si, 0
  br i1 %.not.i.i.i.i.i148, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.sj = add nsw i32 %i.sa, -1
  store i32 %i.sj, ptr %i.rx, align 8, !tbaa !116
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i149

bb.dr:                                            ; preds = %bb.dp
  %i.sk = atomicrmw volatile add ptr %i.rx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i149

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i149: ; preds = %bb.dr, %bb.dq
  %.0.i.i.i.i.i.i150 = phi i32 [ %i.sa, %bb.dq ], [ %i.sk, %bb.dr ]
  %i.sl = icmp eq i32 %.0.i.i.i.i.i.i150, 1
  br i1 %i.sl, label %bb.ds, label %_ZNSt12__shared_ptrIN8facebook5velox10FlatVectorINS1_10StringViewEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit156, !prof !123

bb.ds:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i149
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.rw) #27
  br label %_ZNSt12__shared_ptrIN8facebook5velox10FlatVectorINS1_10StringViewEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit156

_ZNSt12__shared_ptrIN8facebook5velox10FlatVectorINS1_10StringViewEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit156: ; preds = %bb.ds, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i149, %bb.do, %_ZSt11make_sharedIN8facebook5velox10FlatVectorINS1_10StringViewEEEJPNS1_6memory10MemoryPoolESt10shared_ptrIKNS1_10ScalarTypeILNS1_8TypeKindE7EEEEDniN5boost13intrusive_ptrINS1_6BufferEEESt6vectorISH_SaISH_EEEES8_IT_EDpOT0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #27
  %i.sm = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !114 ; 8 uses
  %.not.i.i157 = icmp eq ptr %i.sn, null
  br i1 %.not.i.i157, label %_ZNSt12__shared_ptrIKN8facebook5velox10ScalarTypeILNS1_8TypeKindE7EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit161, label %bb.dt

bb.dt:                                            ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10FlatVectorINS1_10StringViewEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit156
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 8 ; 4 uses
  %i.sp = load atomic i64, ptr %i.so acquire, align 8 ; 2 uses
  %i.sq = icmp eq i64 %i.sp, 4294967297
  %i.sr = trunc i64 %i.sp to i32                  ; 2 uses
  br i1 %i.sq, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  store i32 0, ptr %i.so, align 8, !tbaa !119
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sn, i64 12
  store i32 0, ptr %i.ss, align 4, !tbaa !120
  %i.st = load ptr, ptr %i.sn, align 8, !tbaa !122
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 16
  %i.sv = load ptr, ptr %i.su, align 8
  call void %i.sv(ptr noundef nonnull align 8 dereferenceable(16) %i.sn) #27, !inline_history !7
  %i.sw = load ptr, ptr %i.sn, align 8, !tbaa !122
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 24
  %i.sy = load ptr, ptr %i.sx, align 8
  call void %i.sy(ptr noundef nonnull align 8 dereferenceable(16) %i.sn) #27, !inline_history !7
  br label %_ZNSt12__shared_ptrIKN8facebook5velox10ScalarTypeILNS1_8TypeKindE7EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit161

bb.dv:                                            ; preds = %bb.dt
  %i.sz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !107
  %.not.i.i.i158 = icmp eq i8 %i.sz, 0
  br i1 %.not.i.i.i158, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.ta = add nsw i32 %i.sr, -1
  store i32 %i.ta, ptr %i.so, align 8, !tbaa !116
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i159

bb.dx:                                            ; preds = %bb.dv
  %i.tb = atomicrmw volatile add ptr %i.so, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i159

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i159: ; preds = %bb.dx, %bb.dw
  %.0.i.i.i.i160 = phi i32 [ %i.sr, %bb.dw ], [ %i.tb, %bb.dx ]
  %i.tc = icmp eq i32 %.0.i.i.i.i160, 1
  br i1 %i.tc, label %bb.dy, label %_ZNSt12__shared_ptrIKN8facebook5velox10ScalarTypeILNS1_8TypeKindE7EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit161, !prof !123

bb.dy:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i159
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.sn) #27
  br label %_ZNSt12__shared_ptrIKN8facebook5velox10ScalarTypeILNS1_8TypeKindE7EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit161

_ZNSt12__shared_ptrIKN8facebook5velox10ScalarTypeILNS1_8TypeKindE7EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit161: ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10FlatVectorINS1_10StringViewEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit156, %bb.du, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i159, %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  %i.td = load ptr, ptr %14, align 8, !tbaa !311  ; 7 uses
  %.not.i162 = icmp eq ptr %i.td, null
  br i1 %.not.i162, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.dz

bb.dz:                                            ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox10ScalarTypeILNS1_8TypeKindE7EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit161
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 40
  %i.tf = atomicrmw sub ptr %i.te, i32 1 acq_rel, align 4
  %i.tg = icmp eq i32 %i.tf, 1
  br i1 %i.tg, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.dz
  %i.th = load ptr, ptr %i.td, align 8, !tbaa !122
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 64
  %i.tj = load ptr, ptr %i.ti, align 8
  invoke void %i.tj(ptr noundef nonnull align 8 dereferenceable(64) %i.td)
          to label %.noexc.i unwind label %bb.ea, !inline_history !10

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.tk = getelementptr inbounds nuw i8, ptr %i.td, i64 8
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !321
  %.not.i.i163 = icmp eq ptr %i.tl, null
  %i.tm = load ptr, ptr %i.td, align 8, !tbaa !122
  %..i.i = select i1 %.not.i.i163, i64 8, i64 48
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 %..i.i
  %i.to = load ptr, ptr %i.tn, align 8
  invoke void %i.to(ptr noundef nonnull align 8 dereferenceable(64) %i.td)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.ea, !inline_history !10

bb.ea:                                            ; preds = %.noexc.i, %.sink.split.i.i
  %i.tp = landingpad { ptr, i32 }
          catch ptr null
  %i.tq = extractvalue { ptr, i32 } %i.tp, 0
  call void @__clang_call_terminate(ptr %i.tq) #41
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox10ScalarTypeILNS1_8TypeKindE7EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit161, %bb.dz, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  %i.tr = load ptr, ptr %13, align 8, !tbaa !307  ; 3 uses
  %i.ts = load ptr, ptr %i.is, align 8, !tbaa !306 ; 2 uses
  %.not4.i.i.i164 = icmp eq ptr %i.tr, %i.ts
  br i1 %.not4.i.i.i164, label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i172, label %.lr.ph.i.i.i165

.lr.ph.i.i.i165:                                  ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i168
  %.05.i.i.i166 = phi ptr [ %i.uh, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i168 ], [ %i.tr, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit ] ; 2 uses
  %i.tt = load ptr, ptr %.05.i.i.i166, align 8, !tbaa !311 ; 7 uses
  %.not.i.i.i.i.i.i167 = icmp eq ptr %i.tt, null
  br i1 %.not.i.i.i.i.i.i167, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i168, label %bb.eb

bb.eb:                                            ; preds = %.lr.ph.i.i.i165
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 40
  %i.tv = atomicrmw sub ptr %i.tu, i32 1 acq_rel, align 4
  %i.tw = icmp eq i32 %i.tv, 1
  br i1 %i.tw, label %.sink.split.i.i.i.i.i.i.i174, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i168

.sink.split.i.i.i.i.i.i.i174:                     ; preds = %bb.eb
end_hunk_2
begin_hunk_3_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmm:bb.a
._crit_edge:                                      ; preds = %.loopexit, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit
  %.0112152 = phi ptr [ %i.bx, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.0112151, %.loopexit ] ; 2 uses
  %i.eh = load i64, ptr %i.ar, align 8, !tbaa !490
  %i.ei = and i64 %i.eh, 255
  %i.ej = shl nuw i64 1, %i.ei
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge, %bb.w
  %.0.in = phi i64 [ %i.ej, %._crit_edge ], [ %.0, %bb.w ]
  %.0 = add i64 %.0.in, -1                        ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.0112152, i64 %.0
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !107 ; 3 uses
  %i.em = icmp eq i8 %i.el, 0
  br i1 %i.em, label %bb.w, label %bb.x, !llvm.loop !1711

bb.x:                                             ; preds = %bb.w
  %i.en = load ptr, ptr %0, align 8, !tbaa !486
  %i.eo = getelementptr inbounds nuw [128 x i8], ptr %i.en, i64 %.0 ; 2 uses
  %i.ep = zext nneg i8 %i.el to i64
  %i.eq = add nsw i64 %i.ep, -1                   ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.eq
  %i.et = icmp ne ptr %i.eo, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.et)
  %i.eu = icmp ult i8 %i.el, 17
  call void @llvm.assume(i1 %i.eu)
  %i.ev = lshr i64 %i.eq, 1
  %i.ew = ptrtoint ptr %i.es to i64
  %i.ex = or i64 %i.ev, %i.ew
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ex, ptr %i.ey, align 8, !tbaa !154
  br i1 %.not, label %bb.y, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit

bb.y:                                             ; preds = %bb.x
  call void @_ZdlPvm(ptr noundef nonnull %.0112152, i64 noundef %4) #40
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit: ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.z

bb.z:                                             ; preds = %bb.i, %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16initializeChunksEPhmm.exit
  store i8 1, ptr %i.j, align 1, !tbaa !126
  %i.ez = load i64, ptr %i.d, align 8, !tbaa !154
  %.not.i.i.i = icmp eq i64 %i.ez, 0
  br i1 %.not.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fa = load ptr, ptr %i.c, align 8, !tbaa !584 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fb = load i64, ptr %i.e, align 8, !tbaa !154
  call void @_ZdlPvm(ptr noundef nonnull %i.fa, i64 noundef %i.fb) #27
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit: ; preds = %bb.z, %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !586, !range !130, !noundef !131
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1720, !nonnull !131
  %i.e = load i8, ptr %i.d, align 1, !tbaa !126, !range !130, !noundef !131
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.e, !prof !155

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1721, !nonnull !131, !align !253
  %i.i = load i64, ptr %i.h, align 8, !tbaa !154
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1722, !nonnull !131, !align !253
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !584
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1723, !nonnull !131, !align !253
  %i.o = load i64, ptr %i.n, align 8, !tbaa !154
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1724 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1725, !nonnull !131, !align !253
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !434
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1726, !nonnull !131, !align !253
  %i.w = load i64, ptr %i.v, align 8, !tbaa !154
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1722, !nonnull !131, !align !253
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !584
  store ptr %i.z, ptr %i.q, align 8, !tbaa !486
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1727, !nonnull !131, !align !253
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !154 ; 2 uses
  %i.ae = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ad, i1 true)
  %i.af = icmp eq i64 %i.ad, 0
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !490
  %i.ah = and i64 %i.ag, -256
  %i.ai = select i1 %i.af, i64 4294967295, i64 %i.ae
  %i.aj = or i64 %i.ah, %i.ai
  store i64 %i.aj, ptr %i.aa, align 8, !tbaa !490
  tail call void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE2EE5checkEv() #27
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.02.i.i = phi ptr [ %i.l, %bb.d ], [ %i.t, %bb.e ] ; 2 uses
  %.0.i.i = phi i64 [ %i.o, %bb.d ], [ %i.w, %bb.e ]
  %.not.i.i.i = icmp eq ptr %.02.i.i, null
  br i1 %.not.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %.02.i.i, i64 noundef %.0.i.i) #27
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit: ; preds = %bb.g, %bb.f, %bb.c, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.x86.sse42.crc32.64.64(i64, i64) #31

; Function Attrs: cold noreturn nounwind
declare void @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef, ...) local_unnamed_addr #32

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.x86.bmi.bzhi.64(i64, i64) #31

; Function Attrs: nounwind
declare void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE2EE5checkEv() local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE19tryEmplaceValueImplIS8_JS8_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEEbESC_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.420") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #30 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !490  ; 3 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !486   ; 3 uses
  br i1 %.not, label %.thread64, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
  %.023.i75 = phi i64 [ %i.j, %bb.b ], [ %i.ae, %bb.f ]
  %.025.i74 = phi i64 [ %2, %bb.b ], [ %i.af, %bb.f ] ; 2 uses
  %i.k = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i74, i64 range(i64 0, 256) %i.i)
  %i.l = getelementptr inbounds nuw [128 x i8], ptr %.pre, i64 %i.k ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  tail call void @llvm.prefetch.p0(ptr nonnull %i.n, i32 0, i32 3, i32 1)
  %i.o = load <16 x i8>, ptr %i.l, align 16       ; 2 uses
  %i.p = icmp eq <16 x i8> %i.o, %i.h
  %i.q = bitcast <16 x i1> %i.p to i16
  %i.r = and i16 %i.q, 16383
  %i.s = zext nneg i16 %i.r to i32
  %i.t = icmp ne ptr %i.l, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.u = extractelement <16 x i8> %i.o, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %bb.c
  %.sroa.040.0 = phi i32 [ %i.s, %bb.c ], [ %i.x, %bb.d ] ; 4 uses
  %.not66 = icmp eq i32 %.sroa.040.0, 0
  br i1 %.not66, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.v = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.040.0, i1 true)
  %i.w = add nuw nsw i32 %.sroa.040.0, 16383
  %i.x = and i32 %i.w, %.sroa.040.0
  %i.y = zext nneg i32 %i.v to i64                ; 3 uses
  tail call void @llvm.assume(i1 %i.t)
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.y
  %i.aa = load ptr, ptr %4, align 8, !tbaa !574
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !574
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %bb.g, label %.critedge.i, !prof !155, !llvm.loop !62

bb.e:                                             ; preds = %.critedge.i
  %i.ad = icmp eq i8 %i.u, 0
  br i1 %i.ad, label %.thread64, label %bb.f, !prof !155

bb.f:                                             ; preds = %bb.e
  %i.ae = add i64 %.023.i75, -1                   ; 2 uses
  %i.af = add i64 %i.e, %.025.i74
  %.not.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i, label %.thread64, label %bb.c, !llvm.loop !63

bb.g:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.y
  br label %bb.p

.thread64:                                        ; preds = %bb.f, %bb.e, %bb.a
  %.pre-phi84 = phi i64 [ %i.b, %bb.a ], [ %i.i, %bb.e ], [ %i.i, %bb.f ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre, i64 14
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !107
  %i.aj = and i8 %i.ai, 15
  %i.ak = zext nneg i8 %i.aj to i64               ; 2 uses
  %i.al = shl i64 %i.ak, %.pre-phi84              ; 2 uses
  %.not.i30 = icmp ult i64 %i.c, %i.al
  br i1 %.not.i30, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16reserveForInsertEm.exit, label %bb.h

bb.h:                                             ; preds = %.thread64
  %i.am = shl nuw i64 1, %.pre-phi84
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.am, i64 noundef %i.ak, i64 noundef %i.al)
  %.pre80 = load ptr, ptr %1, align 8, !tbaa !486
  %.pre81 = load i64, ptr %i.a, align 8, !tbaa !490
  %.pre82 = and i64 %.pre81, 255
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16reserveForInsertEm.exit: ; preds = %.thread64, %bb.h
  %.pre-phi = phi i64 [ %.pre-phi84, %.thread64 ], [ %.pre82, %bb.h ] ; 2 uses
  %i.an = phi ptr [ %.pre, %.thread64 ], [ %.pre80, %bb.h ] ; 3 uses
  %i.ao = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi) ; 2 uses
  %i.ap = getelementptr inbounds nuw [128 x i8], ptr %i.an, i64 %i.ao ; 2 uses
  %i.aq = load <16 x i8>, ptr %i.ap, align 16, !tbaa !107
  %i.ar = icmp slt <16 x i8> %i.aq, zeroinitializer
  %i.as = bitcast <16 x i1> %i.ar to i16
  %i.at = and i16 %i.as, 16383                    ; 2 uses
  %.not67 = icmp eq i16 %i.at, 16383
  br i1 %.not67, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16reserveForInsertEm.exit
  %i.au = shl i64 %3, 1
  %i.av = or disjoint i64 %i.au, 1
  br label %bb.j

bb.j:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE25incrOutboundOverflowCountEv.exit, %bb.i
  %i.aw = phi i64 [ %i.ao, %bb.i ], [ %i.bc, %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE25incrOutboundOverflowCountEv.exit ]
  %.028 = phi i64 [ %2, %bb.i ], [ %i.bb, %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE25incrOutboundOverflowCountEv.exit ]
  %i.ax = getelementptr inbounds nuw [128 x i8], ptr %i.an, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 15 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !591 ; 2 uses
  %.not.i31 = icmp eq i8 %i.az, -2
  br i1 %.not.i31, label %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE25incrOutboundOverflowCountEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = add i8 %i.az, 1
  store i8 %i.ba, ptr %i.ay, align 1, !tbaa !591
  br label %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE25incrOutboundOverflowCountEv.exit: ; preds = %bb.j, %bb.k
  %i.bb = add i64 %i.av, %.028                    ; 2 uses
  %i.bc = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.bb, i64 range(i64 0, 256) %.pre-phi) ; 2 uses
  %i.bd = getelementptr inbounds nuw [128 x i8], ptr %i.an, i64 %i.bc ; 3 uses
  %i.be = load <16 x i8>, ptr %i.bd, align 16     ; 2 uses
  %i.bf = icmp slt <16 x i8> %i.be, zeroinitializer
  %i.bg = bitcast <16 x i1> %i.bf to i16
  %i.bh = and i16 %i.bg, 16383                    ; 2 uses
  %.not68 = icmp eq i16 %i.bh, 16383
  br i1 %.not68, label %bb.j, label %bb.l, !llvm.loop !1728

bb.l:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE25incrOutboundOverflowCountEv.exit
  %i.bi = extractelement <16 x i8> %i.be, i64 14
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 14
  %i.bk = add i8 %i.bi, 16
  store i8 %i.bk, ptr %i.bj, align 2, !tbaa !573
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16reserveForInsertEm.exit
  %.sroa.034.0.in.in = phi i16 [ %i.at, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16reserveForInsertEm.exit ], [ %i.bh, %bb.l ]
  %.1 = phi ptr [ %i.ap, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16reserveForInsertEm.exit ], [ %i.bd, %bb.l ] ; 3 uses
  %.sroa.034.0.in = xor i16 %.sroa.034.0.in.in, 16383
  %i.bl = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.034.0.in, i1 true)
  %i.bm = zext nneg i16 %i.bl to i64              ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bm ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !107
  %i.bp = icmp eq i8 %i.bo, 0
  br i1 %i.bp, label %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str) #46
  unreachable

_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE6setTagEmm.exit: ; preds = %bb.m
  %i.bq = trunc i64 %3 to i8
  store i8 %i.bq, ptr %i.bn, align 1, !tbaa !107
  %i.br = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bm ; 3 uses
  %i.bt = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bt)
  %i.bu = load ptr, ptr %5, align 8, !tbaa !574
  store ptr %i.bu, ptr %i.bs, align 8, !tbaa !574
  %i.bv = lshr i64 %i.bm, 1
  %i.bw = ptrtoint ptr %i.bs to i64
  %i.bx = or i64 %i.bv, %i.bw                     ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !592
  %i.ca = icmp ult i64 %i.bz, %i.bx
  br i1 %i.ca, label %bb.o, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit

bb.o:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE6setTagEmm.exit
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !154
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE6setTagEmm.exit, %bb.o
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !490 ; 2 uses
  %i.cc = and i64 %i.cb, -256
  %i.cd = add i64 %i.cc, 256
  %i.ce = and i64 %i.cb, 255
  %i.cf = or disjoint i64 %i.cd, %i.ce
  store i64 %i.cf, ptr %i.a, align 8, !tbaa !490
  br label %bb.p

bb.p:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit
  %.sink98 = phi ptr [ %i.ag, %bb.g ], [ %i.bs, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit ]
  %.lcssa96.sink = phi i64 [ %i.y, %bb.g ], [ %i.bm, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit ]
  store ptr %.sink98, ptr %0, align 8, !tbaa !1730
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa96.sink, ptr %.sroa.539.0..sroa_idx, align 8, !tbaa !154
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cg, align 8, !tbaa !1733
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #33

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 15
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1
  %i.k = udiv i64 %i.j, 12
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = sub nuw nsw i64 64, %i.l                 ; 2 uses
  %i.n = shl i64 12, %i.m
  %i.o = icmp ugt i64 %i.n, 72057594037927935
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #23
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = shl nuw nsw i64 1, %i.m
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !490
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

end_hunk_3
begin_hunk_4_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKS1_PKiEUlT_E3_EEvSC_:bb.a
  %i.df = and i64 %i.de, 536870911
  %i.dg = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.df ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !107
  %i.di = and i8 %i.dh, %i.dd
  store i8 %i.di, ptr %i.dg, align 1, !tbaa !107
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E3_clIiEEDaSB_.exit

_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E3_clIiEEDaSB_.exit: ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtImEET_i.exit.i, %bb.o, %bb.p
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.i, !llvm.loop !1865

bb.q:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.dj = load ptr, ptr %0, align 8, !tbaa !201
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !187
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !199
  tail call void @_ZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E3_EEvPKmiibSD_(ptr noundef %i.dj, i32 noundef %i.dl, i32 noundef %i.dn, i1 noundef zeroext true, ptr noundef nonnull byval(%class.anon.472) align 8 %1)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E3_clIiEEDaSB_.exit, %bb.h, %bb.q
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customIN8facebook5velox8TypeKindENS0_9formatterIS8_cvEEEEvPvRNS0_13parse_contextIcEERS3_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #1 comdat align 2 {
bb.a:
  %3 = alloca %"struct.fmt::v11::formatter.473", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  store i32 32768, ptr %3, align 8, !tbaa !407
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i8 32, ptr %i.b, align 4, !tbaa !107
  %scevgep.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %scevgep.i.i.i.i.i.i, i8 0, i64 7, i1 false)
  store i32 -1, ptr %i.c, align 4, !tbaa !409
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 0, ptr %i.d, align 8, !tbaa !107
  %i.e = load ptr, ptr %1, align 8, !tbaa !411    ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !412  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.g
  %i.i = icmp samesign eq i64 %i.g, 0
  br i1 %i.i, label %_ZN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseERNS0_13parse_contextIcEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i8, ptr %i.e, align 1, !tbaa !107
  %i.k = icmp eq i8 %i.j, 125
  br i1 %i.k, label %_ZN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseERNS0_13parse_contextIcEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = call noundef ptr @_ZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeE(ptr noundef nonnull %i.e, ptr noundef nonnull %i.h, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(20) %1, i32 noundef 13)
  %.pre = load ptr, ptr %1, align 8, !tbaa !411
  %.pre6 = load i64, ptr %i.f, align 8, !tbaa !412
  br label %_ZN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseERNS0_13parse_contextIcEE.exit

_ZN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseERNS0_13parse_contextIcEE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.m = phi i64 [ %.pre6, %bb.c ], [ %i.g, %bb.b ], [ 0, %bb.a ]
  %i.n = phi ptr [ %.pre, %bb.c ], [ %i.e, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  %.0.i = phi ptr [ %i.l, %bb.c ], [ %i.e, %bb.b ], [ %i.e, %bb.a ]
  %i.o = ptrtoint ptr %.0.i to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p                       ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  store ptr %i.r, ptr %1, align 8, !tbaa !411
  %i.s = sub i64 %i.m, %i.q
  store i64 %i.s, ptr %i.f, align 8, !tbaa !412
  %i.t = load i8, ptr %0, align 1, !tbaa !501
  %i.u = call ptr @_ZNK3fmt3v119formatterIN8facebook5velox8TypeKindEcvE6formatINS0_7contextEEEDaS4_RT_(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 noundef signext %i.t, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNK3fmt3v119formatterIN8facebook5velox8TypeKindEcvE6formatINS0_7contextEEEDaS4_RT_(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %3 = alloca %"struct.fmt::v11::format_specs", align 4 ; 7 uses
  %i.a = tail call { i64, ptr } @_ZN8facebook5velox12TypeKindName6toNameENS0_8TypeKindE(i8 noundef signext %1) ; 2 uses
  %i.b = extractvalue { i64, ptr } %i.a, 0        ; 2 uses
  %i.c = extractvalue { i64, ptr } %i.a, 1        ; 2 uses
  %i.d = load i32, ptr %0, align 8, !tbaa !407
  %i.e = and i32 %i.d, 960
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i.i = load ptr, ptr %2, align 8, !tbaa !414
  %i.f = tail call ptr @_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsE(ptr %.sroa.0.0.copyload.i.i, ptr %i.c, i64 %i.b, ptr noundef nonnull align 8 dereferenceable(48) %0)
  br label %_ZNK3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE6formatINS0_7contextEEEDTcldtfp0_3outEERKS4_RT_.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 16, i1 false)
  %i.g = load i32, ptr %3, align 4, !tbaa !407    ; 2 uses
  %i.h = lshr i32 %i.g, 6
  %i.i = and i32 %i.h, 3                          ; 2 uses
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = tail call noundef i32 @_ZN3fmt3v116detail16get_dynamic_specINS0_7contextEEEiNS0_11arg_id_kindERKNS1_7arg_refINT_9char_typeEEERS6_(i32 noundef %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2)
  store i32 %i.l, ptr %i.k, align 4, !tbaa !116
  br label %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit.i

_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit.i: ; preds = %bb.d, %bb.c
  %i.m = lshr i32 %i.g, 8
  %i.n = and i32 %i.m, 3                          ; 2 uses
  %.not.i17.i = icmp eq i32 %i.n, 0
  br i1 %.not.i17.i, label %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit18.i, label %bb.e

bb.e:                                             ; preds = %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.q = tail call noundef i32 @_ZN3fmt3v116detail16get_dynamic_specINS0_7contextEEEiNS0_11arg_id_kindERKNS1_7arg_refINT_9char_typeEEERS6_(i32 noundef %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %2)
  store i32 %i.q, ptr %i.p, align 4, !tbaa !116
  br label %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit18.i

_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit18.i: ; preds = %bb.e, %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit.i
  %.sroa.0.0.copyload.i19.i = load ptr, ptr %2, align 8, !tbaa !414
  %i.r = call ptr @_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsE(ptr %.sroa.0.0.copyload.i19.i, ptr %i.c, i64 %i.b, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %_ZNK3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE6formatINS0_7contextEEEDTcldtfp0_3outEERKS4_RT_.exit

_ZNK3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE6formatINS0_7contextEEEDTcldtfp0_3outEERKS4_RT_.exit: ; preds = %bb.b, %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit18.i
  %.sroa.015.0.i = phi ptr [ %i.r, %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit18.i ], [ %i.f, %bb.b ]
  ret ptr %.sroa.015.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.476) align 8 %2, ptr noundef byval(%class.anon.477) align 8 %3) local_unnamed_addr #11 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !641, !range !130, !noundef !131
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !642
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !154
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1870
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !1871, !nonnull !131, !align !253
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !363
  %i.ag = sext i32 %i.d to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1872, !nonnull !131, !align !253
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !421
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 144
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !568
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.av, %bb.d ] ; 3 uses
  %i.am = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.an = or disjoint i64 %i.am, %i.ag            ; 2 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !116
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !154
  %i.at = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.an
  store i64 %i.as, ptr %i.at, align 8, !tbaa !154
  %i.au = add nuw i64 %.011.i, 9223372036854775807
  %i.av = and i64 %i.au, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.av, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1866

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aw = sdiv i32 %0, 64                         ; 2 uses
  %i.ax = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.ay = zext nneg i32 %i.ax to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.ay
  %i.az = xor i64 %notmask.i.i35, -1
  %i.ba = sub nsw i32 64, %i.ax
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = shl i64 %i.az, %i.bb
  %i.bd = load i8, ptr %2, align 8, !tbaa !641, !range !130, !noundef !131
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !642
  %i.bg = sext i32 %i.aw to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.bg
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !154
  %i.bj = xor i8 %i.bd, 1
  %i.bk = zext nneg i8 %i.bj to i64
  %i.bl = sub nsw i64 0, %i.bk
  %i.bm = xor i64 %i.bi, %i.bl
  %i.bn = and i64 %i.bm, %i.bc                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bn, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bp = shl nsw i32 %i.aw, 6
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !1870
  %i.bs = load ptr, ptr %i.bo, align 8, !tbaa !1871, !nonnull !131, !align !253
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !363
  %i.bu = sext i32 %i.bp to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !1872, !nonnull !131, !align !253
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !421
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 144
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !568
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bn, %.preheader.i37 ], [ %i.cj, %bb.g ] ; 3 uses
  %i.ca = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.cb = or disjoint i64 %i.ca, %i.bu            ; 2 uses
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !116
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.ce
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !154
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.cb
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !154
  %i.ci = add i64 %.011.i38, -1
  %i.cj = and i64 %i.ci, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.cj, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !1866

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.ck = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.ck, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %i.cl = load i8, ptr %3, align 8, !tbaa !644, !range !130, !noundef !131
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !645
  %i.co = xor i8 %i.cl, 1
  %i.cp = zext nneg i8 %i.co to i64
  %i.cq = sub nsw i64 0, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = load ptr, ptr %i.cr, align 8, !nonnull !131, !align !253 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cw = load ptr, ptr %i.cv, align 8, !nonnull !131, !align !253 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 144 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.l

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit
  %i.cy = phi i32 [ %i.ck, %.lr.ph ], [ %i.ei, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.cy, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %i.cz = sdiv i32 %.051, 64                      ; 3 uses
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.da
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !154
  %i.dd = xor i64 %i.dc, %i.cq                    ; 2 uses
  switch i64 %i.dd, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.de = shl nsw i32 %i.cz, 6
  %i.df = load ptr, ptr %i.cu, align 8, !tbaa !363
  %i.dg = sext i32 %i.de to i64
  %i.dh = load ptr, ptr %i.cw, align 8, !tbaa !421
  %i.di = load ptr, ptr %i.cx, align 8, !tbaa !568
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.dj = shl nsw i32 %i.cz, 6                    ; 2 uses
  %i.dk = add nuw i32 %i.dj, 64
  %i.dl = sext i32 %i.dk to i64
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit, label %.lr.ph21.i

.lr.ph21.i:                                       ; preds = %bb.i
  %i.dm = sext i32 %i.dj to i64
  %i.dn = load ptr, ptr %i.cu, align 8, !tbaa !363
  %i.do = load ptr, ptr %i.cw, align 8, !tbaa !421
  %i.dp = load ptr, ptr %i.cx, align 8, !tbaa !568
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph21.i
  %.020.i = phi i64 [ %i.dm, %.lr.ph21.i ], [ %i.dw, %bb.j ] ; 3 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %.020.i
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !116
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.do, i64 %i.ds
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !154
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %.020.i
  store i64 %i.du, ptr %i.dv, align 8, !tbaa !154
  %i.dw = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.dx = icmp ult i64 %i.dw, %i.dl
  br i1 %i.dx, label %bb.j, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit, !llvm.loop !1867

bb.k:                                             ; preds = %bb.k, %.lr.ph.i
  %.01519.i = phi i64 [ %i.dd, %.lr.ph.i ], [ %i.eh, %bb.k ] ; 3 uses
  %i.dy = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.dz = or disjoint i64 %i.dy, %i.dg            ; 2 uses
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.df, i64 %i.dz
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !116
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.ec
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !154
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.dz
  store i64 %i.ee, ptr %i.ef, align 8, !tbaa !154
  %i.eg = add i64 %.01519.i, -1
  %i.eh = and i64 %i.eg, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.eh, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit, label %bb.k, !llvm.loop !1868

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit: ; preds = %bb.j, %bb.k, %bb.h, %bb.i
  %i.ei = add nsw i32 %i.cy, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.ei, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !1869

bb.l:                                             ; preds = %._crit_edge
  %i.ej = ashr i32 %1, 6
  %i.ek = and i32 %1, 63
  %i.el = zext nneg i32 %i.ek to i64
  %notmask.i42 = shl nsw i64 -1, %i.el
  %i.em = xor i64 %notmask.i42, -1
  %i.en = load i8, ptr %2, align 8, !tbaa !641, !range !130, !noundef !131
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !642
  %i.eq = sext i32 %i.ej to i64
  %i.er = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %i.eq
  %i.es = load i64, ptr %i.er, align 8, !tbaa !154
  %i.et = xor i8 %i.en, 1
  %i.eu = zext nneg i8 %i.et to i64
  %i.ev = sub nsw i64 0, %i.eu
  %i.ew = xor i64 %i.es, %i.ev
  %i.ex = and i64 %i.ew, %i.em                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.ex, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.l
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !1870
  %i.fb = load ptr, ptr %i.ey, align 8, !tbaa !1871, !nonnull !131, !align !253
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !363
  %i.fd = sext i32 %i.d to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !1872, !nonnull !131, !align !253
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !421
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fa, i64 144
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !568
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.preheader.i44
  %.011.i45 = phi i64 [ %i.ex, %.preheader.i44 ], [ %i.fs, %bb.m ] ; 3 uses
  %i.fj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.fk = or disjoint i64 %i.fj, %i.fd            ; 2 uses
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.fc, i64 %i.fk
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !116
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.fg, i64 %i.fn
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !154
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.fi, i64 %i.fk
  store i64 %i.fp, ptr %i.fq, align 8, !tbaa !154
  %i.fr = add nuw i64 %.011.i45, 9223372036854775807
  %i.fs = and i64 %i.fr, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fs, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.m, !llvm.loop !1866

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit: ; preds = %bb.m, %bb.d, %bb.l, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.478) align 8 %2, ptr noundef byval(%class.anon.479) align 8 %3) local_unnamed_addr #11 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !648, !range !130, !noundef !131
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !649
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !154
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1879
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1880, !nonnull !131, !align !253
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !421
  %i.ag = sext i32 %i.d to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !568
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ap, %bb.d ] ; 3 uses
  %i.aj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.ak = or disjoint i64 %i.aj, %i.ag            ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !154
  %i.an = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ak
  store i64 %i.am, ptr %i.an, align 8, !tbaa !154
  %i.ao = add nuw i64 %.011.i, 9223372036854775807
  %i.ap = and i64 %i.ao, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ap, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1873

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = sdiv i32 %0, 64                         ; 2 uses
  %i.ar = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.as = zext nneg i32 %i.ar to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.as
  %i.at = xor i64 %notmask.i.i35, -1
  %i.au = sub nsw i32 64, %i.ar
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = shl i64 %i.at, %i.av
  %i.ax = load i8, ptr %2, align 8, !tbaa !648, !range !130, !noundef !131
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !649
  %i.ba = sext i32 %i.aq to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !154
  %i.bd = xor i8 %i.ax, 1
  %i.be = zext nneg i8 %i.bd to i64
  %i.bf = sub nsw i64 0, %i.be
  %i.bg = xor i64 %i.bc, %i.bf
  %i.bh = and i64 %i.bg, %i.aw                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bh, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bj = shl nsw i32 %i.aq, 6
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !1879
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !1880, !nonnull !131, !align !253
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !421
  %i.bo = sext i32 %i.bj to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 144
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !568
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bh, %.preheader.i37 ], [ %i.bx, %bb.g ] ; 3 uses
  %i.br = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.bs = or disjoint i64 %i.br, %i.bo            ; 2 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !154
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.bs
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !154
  %i.bw = add i64 %.011.i38, -1
  %i.bx = and i64 %i.bw, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.bx, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !1873

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.by = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.by, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %i.bz = load i8, ptr %3, align 8, !tbaa !651, !range !130, !noundef !131
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !652
  %i.cc = xor i8 %i.bz, 1
  %i.cd = zext nneg i8 %i.cc to i64
  %i.ce = sub nsw i64 0, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !131, !align !253 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 144 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.k

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit
  %i.ck = phi i32 [ %i.by, %.lr.ph ], [ %i.eh, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.ck, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %i.cl = sdiv i32 %.051, 64                      ; 3 uses
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !154
  %i.cp = xor i64 %i.co, %i.ce                    ; 2 uses
  switch i64 %i.cp, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cq = shl nsw i32 %i.cl, 6
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !421
  %i.cs = sext i32 %i.cq to i64
  %i.ct = load ptr, ptr %i.cj, align 8, !tbaa !568
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cu = shl nsw i32 %i.cl, 6                    ; 2 uses
  %i.cv = add i32 %i.cu, 64
  %i.cw = sext i32 %i.cv to i64                   ; 2 uses
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.cx = sext i32 %i.cu to i64                   ; 6 uses
  %i.cy = load ptr, ptr %i.ci, align 8, !tbaa !421 ; 4 uses
  %i.cz = load ptr, ptr %i.cj, align 8, !tbaa !568 ; 4 uses
  %i.da = or disjoint i64 %i.cx, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.da, i64 %i.cw) ; 2 uses
  %i.db = sub i64 %umax, %i.cx                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.db, 4
  %i.dc = ptrtoaddr ptr %i.cz to i64
  %i.dd = ptrtoaddr ptr %i.cy to i64
  %i.de = sub i64 %i.dd, %i.dc
  %diff.check = icmp ugt i64 %i.de, -128
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check68 = icmp ult i64 %i.db, 16
  %i.df = and i64 %umax, 1                        ; 3 uses
  %n.vec72 = sub nuw i64 %i.db, %i.df             ; 3 uses
  %i.dg = add i64 %n.vec72, %i.cx                 ; 2 uses
  br i1 %min.iters.check68, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dh = add nuw i64 %index, %i.cx               ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.dh ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 96
  %wide.load = load <4 x i64>, ptr %i.di, align 8, !tbaa !154
  %wide.load69 = load <4 x i64>, ptr %i.dj, align 8, !tbaa !154
  %wide.load70 = load <4 x i64>, ptr %i.dk, align 8, !tbaa !154
  %wide.load71 = load <4 x i64>, ptr %i.dl, align 8, !tbaa !154
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.dh ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 64
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 96
  store <4 x i64> %wide.load, ptr %i.dm, align 8, !tbaa !154
  store <4 x i64> %wide.load69, ptr %i.dn, align 8, !tbaa !154
  store <4 x i64> %wide.load70, ptr %i.do, align 8, !tbaa !154
  store <4 x i64> %wide.load71, ptr %i.dp, align 8, !tbaa !154
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec72
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !1874

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.df, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index73 = phi i64 [ %index.next75, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dr = add nuw i64 %index73, %i.cx             ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.dr
  %wide.load74 = load <4 x i64>, ptr %i.ds, align 8, !tbaa !154
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.dr
  store <4 x i64> %wide.load74, ptr %i.dt, align 8, !tbaa !154
  %index.next75 = add nuw i64 %index73, 4         ; 2 uses
  %i.du = icmp eq i64 %index.next75, %n.vec72
  br i1 %i.du, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1875

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n76 = icmp eq i64 %i.df, 0
  br i1 %cmp.n76, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %iter.check, %vec.epilog.middle.block
  %.020.i.ph = phi i64 [ %i.dg, %middle.block ], [ %i.cx, %iter.check ], [ %i.dg, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.020.i = phi i64 [ %i.dy, %vec.epilog.scalar.ph ], [ %.020.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %.020.i
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !154
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %.020.i
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !154
  %i.dy = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.dz = icmp ult i64 %i.dy, %i.cw
  br i1 %i.dz, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, !llvm.loop !1876

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cp, %.lr.ph.i ], [ %i.eg, %bb.j ] ; 3 uses
  %i.ea = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.eb = or disjoint i64 %i.ea, %i.cs            ; 2 uses
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.eb
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !154
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.eb
  store i64 %i.ed, ptr %i.ee, align 8, !tbaa !154
  %i.ef = add i64 %.01519.i, -1
  %i.eg = and i64 %i.ef, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.eg, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !1877

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.eh = add nsw i32 %i.ck, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.eh, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !1878

bb.k:                                             ; preds = %._crit_edge
  %i.ei = ashr i32 %1, 6
  %i.ej = and i32 %1, 63
  %i.ek = zext nneg i32 %i.ej to i64
  %notmask.i42 = shl nsw i64 -1, %i.ek
  %i.el = xor i64 %notmask.i42, -1
  %i.em = load i8, ptr %2, align 8, !tbaa !648, !range !130, !noundef !131
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !649
  %i.ep = sext i32 %i.ei to i64
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.eo, i64 %i.ep
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !154
  %i.es = xor i8 %i.em, 1
  %i.et = zext nneg i8 %i.es to i64
  %i.eu = sub nsw i64 0, %i.et
  %i.ev = xor i64 %i.er, %i.eu
  %i.ew = and i64 %i.ev, %i.el                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.ew, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.k
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !1879
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !1880, !nonnull !131, !align !253
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !421
  %i.fc = sext i32 %i.d to i64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ey, i64 144
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !568
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i44
  %.011.i45 = phi i64 [ %i.ew, %.preheader.i44 ], [ %i.fl, %bb.l ] ; 3 uses
  %i.ff = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.fg = or disjoint i64 %i.ff, %i.fc            ; 2 uses
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.fb, i64 %i.fg
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !154
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.fe, i64 %i.fg
  store i64 %i.fi, ptr %i.fj, align 8, !tbaa !154
  %i.fk = add nuw i64 %.011.i45, 9223372036854775807
  %i.fl = and i64 %i.fk, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fl, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !1873

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.482) align 8 %2, ptr noundef byval(%class.anon.483) align 8 %3) local_unnamed_addr #11 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !667, !range !130, !noundef !131
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !668
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !154
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !663, !nonnull !131, !align !253
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !664, !nonnull !131, !align !253
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !665, !nonnull !131, !align !253
  br label %bb.d

bb.d:                                             ; preds = %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.bk, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i ] ; 3 uses
  %i.ah = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true) ; 2 uses
  %i.ai = trunc nuw nsw i64 %i.ah to i32
  %i.aj = or disjoint i32 %i.d, %i.ai             ; 2 uses
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !363
  %i.al = sext i32 %i.aj to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !116
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !421
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !421
  %i.aq = zext i32 %i.an to i64                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 6
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !154
  %i.au = and i64 %i.aq, 63
  %i.av = shl nuw i64 1, %i.au
  %i.aw = and i64 %i.at, %i.av
  %.not.i.i.i = icmp eq i64 %i.aw, 0
  %i.ax = zext i32 %i.aj to i64                   ; 2 uses
  %i.ay = lshr i64 %i.ax, 3
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ay ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !107 ; 2 uses
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bb = trunc nuw nsw i64 %i.ah to i8
  %i.bc = and i8 %i.bb, 7
  %i.bd = shl nuw i8 1, %i.bc
  %i.be = or i8 %i.ba, %i.bd
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.bf = and i64 %i.ax, 7
  %i.bg = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !107
  %i.bi = and i8 %i.bh, %i.ba
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i

_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i: ; preds = %bb.f, %bb.e
  %.sink.i.i.i.i = phi i8 [ %i.bi, %bb.f ], [ %i.be, %bb.e ]
  store i8 %.sink.i.i.i.i, ptr %i.az, align 1, !tbaa !107
  %i.bj = add nuw i64 %.011.i, 9223372036854775807
  %i.bk = and i64 %i.bj, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.bk, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1881

bb.g:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = sdiv i32 %0, 64                         ; 2 uses
  %i.bm = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.bn = zext nneg i32 %i.bm to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.bn
  %i.bo = xor i64 %notmask.i.i35, -1
  %i.bp = sub nsw i32 64, %i.bm
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = shl i64 %i.bo, %i.bq
  %i.bs = load i8, ptr %2, align 8, !tbaa !667, !range !130, !noundef !131
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !668
  %i.bv = sext i32 %i.bl to i64
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !154
  %i.by = xor i8 %i.bs, 1
  %i.bz = zext nneg i8 %i.by to i64
  %i.ca = sub nsw i64 0, %i.bz
  %i.cb = xor i64 %i.bx, %i.ca
  %i.cc = and i64 %i.cb, %i.br                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.cc, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.h
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ce = shl nsw i32 %i.bl, 6
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ch = load ptr, ptr %i.cd, align 8, !tbaa !663, !nonnull !131, !align !253
  %i.ci = load ptr, ptr %i.cf, align 8, !tbaa !664, !nonnull !131, !align !253
  %i.cj = load ptr, ptr %i.cg, align 8, !tbaa !665, !nonnull !131, !align !253
  br label %bb.i

bb.i:                                             ; preds = %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40, %.preheader.i37
  %.011.i38 = phi i64 [ %i.cc, %.preheader.i37 ], [ %i.dn, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40 ] ; 3 uses
  %i.ck = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true) ; 2 uses
  %i.cl = trunc nuw nsw i64 %i.ck to i32
  %i.cm = or disjoint i32 %i.ce, %i.cl            ; 2 uses
  %i.cn = load ptr, ptr %i.ch, align 8, !tbaa !363
  %i.co = sext i32 %i.cm to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !116
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !421
  %i.cs = load ptr, ptr %i.cj, align 8, !tbaa !421
  %i.ct = zext i32 %i.cq to i64                   ; 2 uses
  %i.cu = lshr i64 %i.ct, 6
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.cu
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !154
  %i.cx = and i64 %i.ct, 63
  %i.cy = shl nuw i64 1, %i.cx
  %i.cz = and i64 %i.cw, %i.cy
  %.not.i.i.i39 = icmp eq i64 %i.cz, 0
  %i.da = zext i32 %i.cm to i64                   ; 2 uses
  %i.db = lshr i64 %i.da, 3
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.db ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !107 ; 2 uses
  br i1 %.not.i.i.i39, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.de = trunc nuw nsw i64 %i.ck to i8
  %i.df = and i8 %i.de, 7
  %i.dg = shl nuw i8 1, %i.df
  %i.dh = or i8 %i.dd, %i.dg
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40

bb.k:                                             ; preds = %bb.i
  %i.di = and i64 %i.da, 7
  %i.dj = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !107
  %i.dl = and i8 %i.dk, %i.dd
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40

_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40: ; preds = %bb.k, %bb.j
  %.sink.i.i.i.i41 = phi i8 [ %i.dl, %bb.k ], [ %i.dh, %bb.j ]
  store i8 %.sink.i.i.i.i41, ptr %i.dc, align 1, !tbaa !107
  %i.dm = add i64 %.011.i38, -1
  %i.dn = and i64 %i.dm, %.011.i38                ; 2 uses
  %.not10.i42 = icmp eq i64 %i.dn, 0
  br i1 %.not10.i42, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43, label %bb.i, !llvm.loop !1881

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43: ; preds = %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40, %bb.h, %bb.g
  %i.do = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3354 = icmp sgt i32 %i.do, %i.d
  br i1 %.not3354, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.l

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43, %.lr.ph
  %i.dp = phi i32 [ %i.dr, %.lr.ph ], [ %i.do, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43 ] ; 2 uses
  %.055 = phi i32 [ %i.dp, %.lr.ph ], [ %i.c, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43 ]
  %i.dq = sdiv i32 %.055, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.dq)
  %i.dr = add nsw i32 %i.dp, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.dr, %i.d
  br i1 %.not33, label %._crit_edge, label %.lr.ph, !llvm.loop !1882

bb.l:                                             ; preds = %._crit_edge
  %i.ds = ashr i32 %1, 6
  %i.dt = and i32 %1, 63
  %i.du = zext nneg i32 %i.dt to i64
  %notmask.i44 = shl nsw i64 -1, %i.du
  %i.dv = xor i64 %notmask.i44, -1
  %i.dw = load i8, ptr %2, align 8, !tbaa !667, !range !130, !noundef !131
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !668
  %i.dz = sext i32 %i.ds to i64
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %i.dz
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !154
  %i.ec = xor i8 %i.dw, 1
  %i.ed = zext nneg i8 %i.ec to i64
  %i.ee = sub nsw i64 0, %i.ed
  %i.ef = xor i64 %i.eb, %i.ee
  %i.eg = and i64 %i.ef, %i.dv                    ; 2 uses
  %.not.i45 = icmp eq i64 %i.eg, 0
  br i1 %.not.i45, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i46

.preheader.i46:                                   ; preds = %bb.l
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ek = load ptr, ptr %i.eh, align 8, !tbaa !663, !nonnull !131, !align !253
  %i.el = load ptr, ptr %i.ei, align 8, !tbaa !664, !nonnull !131, !align !253
  %i.em = load ptr, ptr %i.ej, align 8, !tbaa !665, !nonnull !131, !align !253
  br label %bb.m

bb.m:                                             ; preds = %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49, %.preheader.i46
  %.011.i47 = phi i64 [ %i.eg, %.preheader.i46 ], [ %i.fq, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49 ] ; 3 uses
  %i.en = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i47, i1 true) ; 2 uses
  %i.eo = trunc nuw nsw i64 %i.en to i32
  %i.ep = or disjoint i32 %i.d, %i.eo             ; 2 uses
  %i.eq = load ptr, ptr %i.ek, align 8, !tbaa !363
  %i.er = sext i32 %i.ep to i64
  %i.es = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %i.er
  %i.et = load i32, ptr %i.es, align 4, !tbaa !116
  %i.eu = load ptr, ptr %i.el, align 8, !tbaa !421
  %i.ev = load ptr, ptr %i.em, align 8, !tbaa !421
  %i.ew = zext i32 %i.et to i64                   ; 2 uses
  %i.ex = lshr i64 %i.ew, 6
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %i.ex
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !154
  %i.fa = and i64 %i.ew, 63
  %i.fb = shl nuw i64 1, %i.fa
  %i.fc = and i64 %i.ez, %i.fb
  %.not.i.i.i48 = icmp eq i64 %i.fc, 0
  %i.fd = zext i32 %i.ep to i64                   ; 2 uses
  %i.fe = lshr i64 %i.fd, 3
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.fe ; 2 uses
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !107 ; 2 uses
  br i1 %.not.i.i.i48, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fh = trunc nuw nsw i64 %i.en to i8
  %i.fi = and i8 %i.fh, 7
  %i.fj = shl nuw i8 1, %i.fi
  %i.fk = or i8 %i.fg, %i.fj
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49

bb.o:                                             ; preds = %bb.m
  %i.fl = and i64 %i.fd, 7
  %i.fm = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.fl
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !107
  %i.fo = and i8 %i.fn, %i.fg
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49

_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49: ; preds = %bb.o, %bb.n
  %.sink.i.i.i.i50 = phi i8 [ %i.fo, %bb.o ], [ %i.fk, %bb.n ]
  store i8 %.sink.i.i.i.i50, ptr %i.ff, align 1, !tbaa !107
  %i.fp = add nuw i64 %.011.i47, 9223372036854775807
  %i.fq = and i64 %i.fp, %.011.i47                ; 2 uses
  %.not10.i51 = icmp eq i64 %i.fq, 0
  br i1 %.not10.i51, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.m, !llvm.loop !1881

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit: ; preds = %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i, %bb.l, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !670, !range !130, !noundef !131
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !671
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !154
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i                       ; 2 uses
  switch i64 %i.j, label %.lr.ph [
    i64 -1, label %bb.b
    i64 0, label %.loopexit
  ]

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = shl nsw i32 %1, 6
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.o = shl i32 %1, 6                            ; 3 uses
  %i.p = add i32 %i.o, 64
  %i.q = sext i32 %i.p to i64
  %.not24 = icmp eq i32 %i.o, -64
  br i1 %.not24, label %.loopexit, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.b
  %i.r = sext i32 %i.o to i64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph23, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit
  %.022 = phi i64 [ %i.r, %.lr.ph23 ], [ %i.aw, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit ] ; 5 uses
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !663, !nonnull !131, !align !253
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !363
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.022
  %i.y = load i32, ptr %i.x, align 4, !tbaa !116
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !664, !nonnull !131, !align !253
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !421
  %i.ab = load ptr, ptr %i.u, align 8, !tbaa !665, !nonnull !131, !align !253
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !421
  %i.ad = zext i32 %i.y to i64                    ; 2 uses
  %i.ae = lshr i64 %i.ad, 6
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !154
  %i.ah = and i64 %i.ad, 63
  %i.ai = shl nuw i64 1, %i.ah
  %i.aj = and i64 %i.ag, %i.ai
  %.not.i.i = icmp eq i64 %i.aj, 0
  %i.ak = lshr i64 %.022, 3
  %i.al = and i64 %i.ak, 536870911
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.al ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !107 ; 2 uses
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ao = trunc i64 %.022 to i8
  %i.ap = and i8 %i.ao, 7
  %i.aq = shl nuw i8 1, %i.ap
  %i.ar = or i8 %i.an, %i.aq
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit

bb.e:                                             ; preds = %bb.c
  %i.as = and i64 %.022, 7
  %i.at = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !107
  %i.av = and i8 %i.au, %i.an
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit

_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit: ; preds = %bb.d, %bb.e
  %.sink.i.i.i = phi i8 [ %i.av, %bb.e ], [ %i.ar, %bb.d ]
  store i8 %.sink.i.i.i, ptr %i.am, align 1, !tbaa !107
  %i.aw = add nuw i64 %.022, 1                    ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.q
  br i1 %i.ax, label %bb.c, label %.loopexit, !llvm.loop !1883

bb.f:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit
  %.01521 = phi i64 [ %i.j, %.lr.ph ], [ %i.ce, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit ] ; 3 uses
  %i.ay = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01521, i1 true) ; 2 uses
  %i.az = trunc nuw nsw i64 %i.ay to i32
  %i.ba = or disjoint i32 %i.l, %i.az             ; 2 uses
  %i.bb = load ptr, ptr %i.k, align 8, !tbaa !663, !nonnull !131, !align !253
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !363
  %i.bd = sext i32 %i.ba to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !116
  %i.bg = load ptr, ptr %i.m, align 8, !tbaa !664, !nonnull !131, !align !253
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !421
  %i.bi = load ptr, ptr %i.n, align 8, !tbaa !665, !nonnull !131, !align !253
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !421
  %i.bk = zext i32 %i.bf to i64                   ; 2 uses
  %i.bl = lshr i64 %i.bk, 6
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !154
  %i.bo = and i64 %i.bk, 63
  %i.bp = shl nuw i64 1, %i.bo
  %i.bq = and i64 %i.bn, %i.bp
  %.not.i.i17 = icmp eq i64 %i.bq, 0
  %i.br = zext i32 %i.ba to i64                   ; 2 uses
  %i.bs = lshr i64 %i.br, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bs ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !107 ; 2 uses
  br i1 %.not.i.i17, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bv = trunc nuw nsw i64 %i.ay to i8
  %i.bw = and i8 %i.bv, 7
  %i.bx = shl nuw i8 1, %i.bw
  %i.by = or i8 %i.bu, %i.bx
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit

bb.h:                                             ; preds = %bb.f
  %i.bz = and i64 %i.br, 7
  %i.ca = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !107
  %i.cc = and i8 %i.cb, %i.bu
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit

_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit: ; preds = %bb.g, %bb.h
  %.sink.i.i.i18 = phi i8 [ %i.cc, %bb.h ], [ %i.by, %bb.g ]
  store i8 %.sink.i.i.i18, ptr %i.bt, align 1, !tbaa !107
  %i.cd = add i64 %.01521, -1
  %i.ce = and i64 %i.cd, %.01521                  ; 2 uses
  %.not = icmp eq i64 %i.ce, 0
  br i1 %.not, label %.loopexit, label %bb.f, !llvm.loop !1884

.loopexit:                                        ; preds = %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit, %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_EUlimE_ZNS3_ISE_EEvSG_iibSH_EUliE_EEviiSH_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.484) align 8 %2, ptr noundef byval(%class.anon.485) align 8 %3) local_unnamed_addr #11 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !655, !range !130, !noundef !131
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !656
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !154
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1891
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1892, !nonnull !131, !align !253
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !568
  %i.ah = sext i32 %i.d to i64
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.ag, i64 %i.ah
  %.pre.i = load i64, ptr %i.ae, align 8, !tbaa !154
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ak, %bb.d ] ; 3 uses
  %i.ai = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.ai
  store i64 %.pre.i, ptr %gep.i, align 8, !tbaa !154
  %i.aj = add nuw i64 %.011.i, 9223372036854775807
  %i.ak = and i64 %i.aj, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ak, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1885

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = sdiv i32 %0, 64                         ; 2 uses
  %i.am = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.an = zext nneg i32 %i.am to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.an
  %i.ao = xor i64 %notmask.i.i35, -1
  %i.ap = sub nsw i32 64, %i.am
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = shl i64 %i.ao, %i.aq
  %i.as = load i8, ptr %2, align 8, !tbaa !655, !range !130, !noundef !131
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !656
  %i.av = sext i32 %i.al to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !154
  %i.ay = xor i8 %i.as, 1
  %i.az = zext nneg i8 %i.ay to i64
  %i.ba = sub nsw i64 0, %i.az
  %i.bb = xor i64 %i.ax, %i.ba
  %i.bc = and i64 %i.bb, %i.ar                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bc, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.be = shl nsw i32 %i.al, 6
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !1891
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1892, !nonnull !131, !align !253
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 144
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !568
  %i.bk = sext i32 %i.be to i64
  %invariant.gep.i38 = getelementptr [8 x i8], ptr %i.bj, i64 %i.bk
  %.pre.i39 = load i64, ptr %i.bh, align 8, !tbaa !154
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i40 = phi i64 [ %i.bc, %.preheader.i37 ], [ %i.bn, %bb.g ] ; 3 uses
  %i.bl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i40, i1 true)
  %gep.i41 = getelementptr [8 x i8], ptr %invariant.gep.i38, i64 %i.bl
  store i64 %.pre.i39, ptr %gep.i41, align 8, !tbaa !154
  %i.bm = add i64 %.011.i40, -1
  %i.bn = and i64 %i.bm, %.011.i40                ; 2 uses
  %.not10.i42 = icmp eq i64 %i.bn, 0
  br i1 %.not10.i42, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43, label %bb.g, !llvm.loop !1885

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43: ; preds = %bb.g, %bb.f, %bb.e
  %i.bo = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3359 = icmp sgt i32 %i.bo, %i.d
  br i1 %.not3359, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43
  %i.bp = load i8, ptr %3, align 8, !tbaa !658, !range !130, !noundef !131
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !659
  %i.bs = xor i8 %i.bp, 1
  %i.bt = zext nneg i8 %i.bs to i64
  %i.bu = sub nsw i64 0, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !131, !align !253 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 144 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.k

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  %i.ca = phi i32 [ %i.bo, %.lr.ph ], [ %i.dx, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %.060 = phi i32 [ %i.c, %.lr.ph ], [ %i.ca, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %i.cb = sdiv i32 %.060, 64                      ; 3 uses
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !154
  %i.cf = xor i64 %i.ce, %i.bu                    ; 2 uses
  switch i64 %i.cf, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cg = shl nsw i32 %i.cb, 6
  %i.ch = load ptr, ptr %i.bz, align 8, !tbaa !568
  %i.ci = sext i32 %i.cg to i64
  %invariant.gep.i45 = getelementptr [8 x i8], ptr %i.ch, i64 %i.ci
  %.pre24.i = load i64, ptr %i.by, align 8, !tbaa !154
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cj = shl nsw i32 %i.cb, 6                    ; 3 uses
  %i.ck = add i32 %i.cj, 64
  %i.cl = sext i32 %i.ck to i64                   ; 3 uses
  %.0.off = add i32 %.060, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.cm = sext i32 %i.cj to i64                   ; 9 uses
  %i.cn = load ptr, ptr %i.bz, align 8, !tbaa !568 ; 3 uses
  %.pre.i44 = load i64, ptr %i.by, align 8, !tbaa !154 ; 2 uses
  %i.co = or disjoint i64 %i.cm, 1
  %umax76 = tail call i64 @llvm.umax.i64(i64 %i.co, i64 %i.cl) ; 2 uses
  %i.cp = sub i64 %umax76, %i.cm                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.cp, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.cq = or disjoint i64 %i.cm, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.cq, i64 %i.cl)
  %i.cr = xor i64 %i.cm, -1
  %i.cs = add i64 %umax, %i.cr                    ; 2 uses
  %i.ct = sext i32 %i.cj to i35                   ; 2 uses
  %i.cu = shl nsw i35 %i.ct, 3
  %i.cv = trunc i64 %i.cs to i35
  %i.cw = add i35 %i.ct, %i.cv
  %i.cx = shl i35 %i.cw, 3
  %i.cy = icmp slt i35 %i.cx, %i.cu
  %i.cz = icmp ugt i64 %i.cs, 4294967295
  %i.da = or i1 %i.cy, %i.cz
  br i1 %i.da, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check77 = icmp ult i64 %i.cp, 16
  %i.db = and i64 %umax76, 1                      ; 3 uses
  %n.vec78 = sub i64 %i.cp, %i.db                 ; 3 uses
  %i.dc = add i64 %n.vec78, %i.cm                 ; 2 uses
  %broadcast.splatinsert79 = insertelement <4 x i64> poison, i64 %.pre.i44, i64 0
  %broadcast.splat80 = shufflevector <4 x i64> %broadcast.splatinsert79, <4 x i64> poison, <4 x i32> zeroinitializer ; 5 uses
  br i1 %min.iters.check77, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dd = add nuw i64 %index, %i.cm
  %i.de = shl i64 %i.dd, 32
  %i.df = ashr exact i64 %i.de, 29
  %i.dg = getelementptr inbounds i8, ptr %i.cn, i64 %i.df ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 96
  store <4 x i64> %broadcast.splat80, ptr %i.dg, align 8, !tbaa !154
  store <4 x i64> %broadcast.splat80, ptr %i.dh, align 8, !tbaa !154
  store <4 x i64> %broadcast.splat80, ptr %i.di, align 8, !tbaa !154
  store <4 x i64> %broadcast.splat80, ptr %i.dj, align 8, !tbaa !154
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dk = icmp eq i64 %index.next, %n.vec78
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !1886

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.db, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index81 = phi i64 [ %index.next82, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dl = add nuw i64 %index81, %i.cm
  %i.dm = shl i64 %i.dl, 32
  %i.dn = ashr exact i64 %i.dm, 29
  %i.do = getelementptr inbounds i8, ptr %i.cn, i64 %i.dn
  store <4 x i64> %broadcast.splat80, ptr %i.do, align 8, !tbaa !154
  %index.next82 = add nuw i64 %index81, 4         ; 2 uses
  %i.dp = icmp eq i64 %index.next82, %n.vec78
  br i1 %i.dp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1887

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n83 = icmp eq i64 %i.db, 0
  br i1 %cmp.n83, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %vector.scevcheck, %iter.check, %vec.epilog.middle.block
  %.020.i.ph = phi i64 [ %i.dc, %middle.block ], [ %i.cm, %vector.scevcheck ], [ %i.cm, %iter.check ], [ %i.dc, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.020.i = phi i64 [ %i.ds, %vec.epilog.scalar.ph ], [ %.020.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %sext.i = shl i64 %.020.i, 32
  %i.dq = ashr exact i64 %sext.i, 29
  %i.dr = getelementptr inbounds i8, ptr %i.cn, i64 %i.dq
  store i64 %.pre.i44, ptr %i.dr, align 8, !tbaa !154
  %i.ds = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.dt = icmp ult i64 %i.ds, %i.cl
  br i1 %i.dt, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, !llvm.loop !1888

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cf, %.lr.ph.i ], [ %i.dw, %bb.j ] ; 3 uses
  %i.du = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %gep.i46 = getelementptr [8 x i8], ptr %invariant.gep.i45, i64 %i.du
  store i64 %.pre24.i, ptr %gep.i46, align 8, !tbaa !154
  %i.dv = add i64 %.01519.i, -1
  %i.dw = and i64 %i.dv, %.01519.i                ; 2 uses
  %.not.i47 = icmp eq i64 %i.dw, 0
  br i1 %.not.i47, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !1889

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.dx = add nsw i32 %i.ca, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.dx, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !1890

bb.k:                                             ; preds = %._crit_edge
  %i.dy = ashr i32 %1, 6
  %i.dz = and i32 %1, 63
  %i.ea = zext nneg i32 %i.dz to i64
  %notmask.i48 = shl nsw i64 -1, %i.ea
  %i.eb = xor i64 %notmask.i48, -1
  %i.ec = load i8, ptr %2, align 8, !tbaa !655, !range !130, !noundef !131
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !656
  %i.ef = sext i32 %i.dy to i64
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.ee, i64 %i.ef
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !154
  %i.ei = xor i8 %i.ec, 1
  %i.ej = zext nneg i8 %i.ei to i64
  %i.ek = sub nsw i64 0, %i.ej
  %i.el = xor i64 %i.eh, %i.ek
  %i.em = and i64 %i.el, %i.eb                    ; 2 uses
  %.not.i49 = icmp eq i64 %i.em, 0
  br i1 %.not.i49, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i50

.preheader.i50:                                   ; preds = %bb.k
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !1891
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !1892, !nonnull !131, !align !253
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 144
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !568
  %i.et = sext i32 %i.d to i64
  %invariant.gep.i51 = getelementptr [8 x i8], ptr %i.es, i64 %i.et
  %.pre.i52 = load i64, ptr %i.eq, align 8, !tbaa !154
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i50
  %.011.i53 = phi i64 [ %i.em, %.preheader.i50 ], [ %i.ew, %bb.l ] ; 3 uses
  %i.eu = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i53, i1 true)
  %gep.i54 = getelementptr [8 x i8], ptr %invariant.gep.i51, i64 %i.eu
  store i64 %.pre.i52, ptr %gep.i54, align 8, !tbaa !154
  %i.ev = add nuw i64 %.011.i53, 9223372036854775807
  %i.ew = and i64 %i.ev, %.011.i53                ; 2 uses
  %.not10.i55 = icmp eq i64 %i.ew, 0
  br i1 %.not10.i55, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !1885

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr %4, ptr %5) local_unnamed_addr #1 comdat {
bb.a:
  %6 = alloca %class.anon.487, align 8            ; 7 uses
  %7 = alloca %class.anon.486, align 8            ; 9 uses
  %i.a = zext i1 %3 to i8                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i8 %i.a, ptr %6, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %0, ptr %.sroa.28.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %4, ptr %.sroa.3.0..sroa_idx9, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %5, ptr %.sroa.4.0..sroa_idx, align 8
  store i8 %i.a, ptr %7, align 8
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %0, ptr %.sroa.212.0..sroa_idx, align 8
  %.sroa.313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %4, ptr %.sroa.313.0..sroa_idx, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %5, ptr %.sroa.414.0..sroa_idx, align 8
  %.not.i = icmp slt i32 %1, %2
  br i1 %.not.i, label %bb.b, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %1, 63                           ; 2 uses
  %i.c = srem i32 %i.b, 64
  %i.d = sub nsw i32 %i.b, %i.c                   ; 6 uses
  %i.e = and i32 %2, -64                          ; 4 uses
  %i.f = icmp slt i32 %i.e, %i.d
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = ashr i32 %2, 6
  %i.h = and i32 %2, 63
  %i.i = zext nneg i32 %i.h to i64
  %notmask.i.i = shl nsw i64 -1, %i.i
  %i.j = xor i64 %notmask.i.i, -1
  %i.k = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.l = zext nneg i32 %i.k to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.l
  %i.m = xor i64 %notmask.i.i.i, -1
  %i.n = sub nsw i32 64, %i.k
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl i64 %i.m, %i.o
  %i.q = and i64 %i.p, %i.j
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.g, i64 noundef %i.q)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit

bb.d:                                             ; preds = %bb.b
  %.not32.i = icmp eq i32 %1, %i.d
  br i1 %.not32.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = sdiv i32 %1, 64
  %i.s = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.t = zext nneg i32 %i.s to i64
  %notmask.i.i35.i = shl nsw i64 -1, %i.t
  %i.u = xor i64 %notmask.i.i35.i, -1
  %i.v = sub nsw i32 64, %i.s
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl i64 %i.u, %i.w
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.r, i64 noundef %i.x)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = add nsw i32 %i.d, 64                     ; 2 uses
  %.not3337.i = icmp sgt i32 %i.y, %i.e
  br i1 %.not3337.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %.not34.i = icmp eq i32 %2, %i.e
  br i1 %.not34.i, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit, label %bb.g

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.z = phi i32 [ %i.ab, %.lr.ph.i ], [ %i.y, %bb.f ] ; 2 uses
  %.038.i = phi i32 [ %i.z, %.lr.ph.i ], [ %i.d, %bb.f ]
  %i.aa = sdiv i32 %.038.i, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef %i.aa)
  %i.ab = add nsw i32 %i.z, 64                    ; 2 uses
  %.not33.i = icmp sgt i32 %i.ab, %i.e
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1893

bb.g:                                             ; preds = %._crit_edge.i
  %i.ac = ashr i32 %2, 6
  %i.ad = and i32 %2, 63
  %i.ae = zext nneg i32 %i.ad to i64
  %notmask.i36.i = shl nsw i64 -1, %i.ae
  %i.af = xor i64 %notmask.i36.i, -1
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.ac, i64 noundef %i.af)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit

_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit: ; preds = %bb.a, %bb.c, %._crit_edge.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !1896, !range !130, !noundef !131
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1897
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !154
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 6 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6                        ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !676
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !677, !nonnull !131, !align !253 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !672  ; 5 uses
  %.not.i.i = icmp eq ptr %i.r, null
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.p, i64 58
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 2, !tbaa !203, !range !130
  %.pre.i.fr = freeze i8 %.pre.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 57
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 59 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 5 uses
  %i.w = trunc i8 %.pre.i.fr to i1                ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 64 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 144 ; 3 uses
  br i1 %.not.i.i, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !202  ; 3 uses
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !568 ; 3 uses
  br i1 %i.w, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us.preheader, label %.preheader.split.us.split

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us.preheader: ; preds = %.preheader.split.us
  %i.ab = sext i32 %i.m to i64
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us
  %.011.us.us = phi i64 [ %i.ai, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us ], [ %i.k, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us.preheader ] ; 3 uses
  %i.ac = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.us.us, i1 true)
  %i.ad = or disjoint i64 %i.ac, %i.ab            ; 2 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ad
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !154
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.ad
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !154
  %i.ah = add i64 %.011.us.us, -1
  %i.ai = and i64 %i.ah, %.011.us.us              ; 2 uses
  %.not10.us.us = icmp eq i64 %i.ai, 0
  br i1 %.not10.us.us, label %.loopexit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us, !llvm.loop !1894

.preheader.split.us.split:                        ; preds = %.preheader.split.us
  %i.aj = load i8, ptr %i.t, align 1, !tbaa !179, !range !130, !noundef !131
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %.preheader.split.us.split.split.us, label %.preheader.split.us.split.split

.preheader.split.us.split.split.us:               ; preds = %.preheader.split.us.split
  %i.al = load i32, ptr %i.x, align 8, !tbaa !204
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.am
  %.pre29 = load i64, ptr %i.an, align 8, !tbaa !154
  %i.ao = sext i32 %i.m to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.aa, i64 %i.ao
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19, %.preheader.split.us.split.split.us
  %.011.us.us20 = phi i64 [ %i.k, %.preheader.split.us.split.split.us ], [ %i.ar, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19 ] ; 3 uses
  %i.ap = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.us.us20, i1 true)
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ap
  store i64 %.pre29, ptr %gep, align 8, !tbaa !154
  %i.aq = add i64 %.011.us.us20, -1
  %i.ar = and i64 %i.aq, %.011.us.us20            ; 2 uses
  %.not10.us.us23 = icmp eq i64 %i.ar, 0
  br i1 %.not10.us.us23, label %.loopexit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19, !llvm.loop !1894

.preheader.split.us.split.split:                  ; preds = %.preheader.split.us.split
  %i.as = load ptr, ptr %i.u, align 8, !tbaa !205
  %i.at = sext i32 %i.m to i64
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us, %.preheader.split.us.split.split
  %.011.us = phi i64 [ %i.k, %.preheader.split.us.split.split ], [ %i.bd, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us ] ; 3 uses
  %i.au = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.us, i1 true)
  %i.av = or disjoint i64 %i.au, %i.at            ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN8facebook5velox13AlignedBuffer13fillNewMemoryIhEEvmmRKSt8optionalIT_E:bb.a
  %i.l = trunc nuw i8 %i.k to i1
  %or.cond = select i1 %.not8, i1 %i.l, i1 false
  br i1 %or.cond, label %bb.f, label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.n = load i8, ptr %i.m, align 4, !tbaa !270
  %i.o = and i8 %i.n, 2
  %.not.i = icmp eq i8 %i.o, 0
  br i1 %.not.i, label %_ZNK8facebook5velox6Buffer9asMutableIhEEPT_v.exit, label %bb.g, !prof !155

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIhEEPT_vE18veloxCheckFailArgs) #42
  unreachable

_ZNK8facebook5velox6Buffer9asMutableIhEEPT_v.exit: ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !271
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %1
  %gepdiff = sub nuw nsw i64 %2, %1
  %i.s = load i8, ptr %3, align 1, !tbaa !107
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.r, i8 %i.s, i64 %gepdiff, i1 false)
  br label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

_ZSt4fillIPhhEvT_S1_RKT0_.exit:                   ; preds = %_ZNK8facebook5velox6Buffer9asMutableIhEEPT_v.exit, %bb.e
  ret void
}

declare void @_ZN8facebook5velox6Buffer19sliceBufferZeroCopyEmbRKN5boost13intrusive_ptrIS1_EEmm(ptr dead_on_unwind writable sret(%"class.boost::intrusive_ptr") align 8, i64 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(8), i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt10_ConstructIN8facebook5velox10FlatVectorImEEJRKPNS1_6memory10MemoryPoolERKSt10shared_ptrIKNS1_4TypeEEN5boost13intrusive_ptrINS1_6BufferEEERiSI_St6vectorISI_SaISI_EEEEvPT_DpOT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %8 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %9 = alloca %"struct.facebook::velox::SimpleVectorStats.290", align 8 ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !302
  %i.b = load ptr, ptr %3, align 8, !tbaa !311
  store ptr %i.b, ptr %7, align 8, !tbaa !311
  store ptr null, ptr %3, align 8, !tbaa !311
  %i.c = load i32, ptr %4, align 4, !tbaa !116
  %i.d = load ptr, ptr %5, align 8, !tbaa !311
  store ptr %i.d, ptr %8, align 8, !tbaa !311
  store ptr null, ptr %5, align 8, !tbaa !311
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i8 0, ptr %i.e, align 8, !tbaa !368
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i8 0, ptr %i.f, align 8, !tbaa !368
  invoke void @_ZN8facebook5velox10FlatVectorImEC2EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSF_OSt6vectorISF_SaISF_EERKNS0_17SimpleVectorStatsImEESt8optionalIiESP_SO_IbESP_SP_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %i.a, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 %7, i32 noundef %i.c, ptr noundef nonnull align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 0, i64 0, i16 0, i64 0, i64 0)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %i.g = load ptr, ptr %8, align 8, !tbaa !311    ; 7 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = atomicrmw sub ptr %i.h, i32 1 acq_rel, align 4
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.c
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !122
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.m = load ptr, ptr %i.l, align 8
  invoke void %i.m(ptr noundef nonnull align 8 dereferenceable(64) %i.g)
          to label %.noexc.i unwind label %bb.d, !inline_history !10

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !321
  %.not.i.i = icmp eq ptr %i.o, null
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !122
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %..i.i
  %i.r = load ptr, ptr %i.q, align 8
  invoke void %i.r(ptr noundef nonnull align 8 dereferenceable(64) %i.g)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.d, !inline_history !10

bb.d:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #41
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.b, %bb.c, %.noexc.i
  %i.u = load ptr, ptr %7, align 8, !tbaa !311    ; 7 uses
  %.not.i8 = icmp eq ptr %i.u, null
  br i1 %.not.i8, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13, label %bb.e

bb.e:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.w = atomicrmw sub ptr %i.v, i32 1 acq_rel, align 4
  %i.x = icmp eq i32 %i.w, 1
  br i1 %i.x, label %.sink.split.i.i9, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13

.sink.split.i.i9:                                 ; preds = %bb.e
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !122
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.aa = load ptr, ptr %i.z, align 8
  invoke void %i.aa(ptr noundef nonnull align 8 dereferenceable(64) %i.u)
          to label %.noexc.i10 unwind label %bb.f, !inline_history !10

.noexc.i10:                                       ; preds = %.sink.split.i.i9
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !321
  %.not.i.i11 = icmp eq ptr %i.ac, null
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !122
  %..i.i12 = select i1 %.not.i.i11, i64 8, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %..i.i12
  %i.af = load ptr, ptr %i.ae, align 8
  invoke void %i.af(ptr noundef nonnull align 8 dereferenceable(64) %i.u)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13 unwind label %bb.f, !inline_history !10

bb.f:                                             ; preds = %.noexc.i10, %.sink.split.i.i9
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #41
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.e, %.noexc.i10
  ret void

bb.g:                                             ; preds = %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #27
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #27
  resume { ptr, i32 } %i.ai
}

declare void @_ZN8facebook5velox6Buffer5sliceIbEEN5boost13intrusive_ptrIS1_EERKS5_mmPNS0_6memory10MemoryPoolE(ptr dead_on_unwind writable sret(%"class.boost::intrusive_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(8), i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_EUlimE_ZNS3_IS9_EEvSB_iibSC_EUliE_EEviiSC_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.512) align 8 %2, ptr noundef byval(%class.anon.513) align 8 %3) local_unnamed_addr #11 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !578, !range !130, !noundef !131
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !579
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !154
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1937
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 144
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !568
  %i.ag = sext i32 %i.d to i64
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !1938, !nonnull !131, !align !253
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !421
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ap, %bb.d ] ; 3 uses
  %i.aj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.ak = or disjoint i64 %i.aj, %i.ag            ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !154
  %i.an = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ak
  store i64 %i.am, ptr %i.an, align 8, !tbaa !154
  %i.ao = add nuw i64 %.011.i, 9223372036854775807
  %i.ap = and i64 %i.ao, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ap, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1931

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = sdiv i32 %0, 64                         ; 2 uses
  %i.ar = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.as = zext nneg i32 %i.ar to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.as
  %i.at = xor i64 %notmask.i.i35, -1
  %i.au = sub nsw i32 64, %i.ar
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = shl i64 %i.at, %i.av
  %i.ax = load i8, ptr %2, align 8, !tbaa !578, !range !130, !noundef !131
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !579
  %i.ba = sext i32 %i.aq to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !154
  %i.bd = xor i8 %i.ax, 1
  %i.be = zext nneg i8 %i.bd to i64
  %i.bf = sub nsw i64 0, %i.be
  %i.bg = xor i64 %i.bc, %i.bf
  %i.bh = and i64 %i.bg, %i.aw                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bh, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bj = shl nsw i32 %i.aq, 6
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !1937
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 144
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !568
  %i.bo = sext i32 %i.bj to i64
  %i.bp = load ptr, ptr %i.bi, align 8, !tbaa !1938, !nonnull !131, !align !253
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !421
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bh, %.preheader.i37 ], [ %i.bx, %bb.g ] ; 3 uses
  %i.br = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.bs = or disjoint i64 %i.br, %i.bo            ; 2 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !154
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.bs
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !154
  %i.bw = add i64 %.011.i38, -1
  %i.bx = and i64 %i.bw, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.bx, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !1931

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.by = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.by, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %i.bz = load i8, ptr %3, align 8, !tbaa !582, !range !130, !noundef !131
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !583
  %i.cc = xor i8 %i.bz, 1
  %i.cd = zext nneg i8 %i.cc to i64
  %i.ce = sub nsw i64 0, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 144 ; 2 uses
  %i.cj = load ptr, ptr %i.cf, align 8, !nonnull !131, !align !253 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.k

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  %i.ck = phi i32 [ %i.by, %.lr.ph ], [ %i.eu, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.ck, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %i.cl = sdiv i32 %.051, 64                      ; 3 uses
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !154
  %i.cp = xor i64 %i.co, %i.ce                    ; 2 uses
  switch i64 %i.cp, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cq = shl nsw i32 %i.cl, 6
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !568
  %i.cs = sext i32 %i.cq to i64
  %i.ct = load ptr, ptr %i.cj, align 8, !tbaa !421
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cu = shl nsw i32 %i.cl, 6                    ; 4 uses
  %i.cv = add i32 %i.cu, 64
  %i.cw = sext i32 %i.cv to i64                   ; 3 uses
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.cx = sext i32 %i.cu to i64                   ; 9 uses
  %i.cy = load ptr, ptr %i.ci, align 8, !tbaa !568 ; 4 uses
  %i.cz = load ptr, ptr %i.cj, align 8, !tbaa !421 ; 4 uses
  %i.da = or disjoint i64 %i.cx, 1
  %umax67 = tail call i64 @llvm.umax.i64(i64 %i.da, i64 %i.cw) ; 2 uses
  %i.db = sub i64 %umax67, %i.cx                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.db, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.dc = ptrtoaddr ptr %i.cz to i64
  %i.dd = ptrtoaddr ptr %i.cy to i64
  %i.de = or disjoint i64 %i.cx, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.de, i64 %i.cw)
  %i.df = xor i64 %i.cx, -1
  %i.dg = add i64 %umax, %i.df                    ; 2 uses
  %i.dh = trunc i64 %i.dg to i32
  %i.di = add i32 %i.cu, %i.dh
  %i.dj = icmp slt i32 %i.di, %i.cu
  %i.dk = icmp ugt i64 %i.dg, 4294967295
  %i.dl = or i1 %i.dj, %i.dk
  %i.dm = sub i64 %i.dd, %i.dc
  %diff.check = icmp ugt i64 %i.dm, -128
  %or.cond = select i1 %i.dl, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check68 = icmp ult i64 %i.db, 16
  %i.dn = and i64 %umax67, 1                      ; 3 uses
  %n.vec72 = sub i64 %i.db, %i.dn                 ; 3 uses
  %i.do = add i64 %n.vec72, %i.cx                 ; 2 uses
  br i1 %min.iters.check68, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dp = add nuw i64 %index, %i.cx
  %i.dq = shl i64 %i.dp, 32
  %i.dr = ashr exact i64 %i.dq, 32                ; 2 uses
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.dr ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 32
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 96
  %wide.load = load <4 x i64>, ptr %i.ds, align 8, !tbaa !154
  %wide.load69 = load <4 x i64>, ptr %i.dt, align 8, !tbaa !154
  %wide.load70 = load <4 x i64>, ptr %i.du, align 8, !tbaa !154
  %wide.load71 = load <4 x i64>, ptr %i.dv, align 8, !tbaa !154
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.dr ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 96
  store <4 x i64> %wide.load, ptr %i.dw, align 8, !tbaa !154
  store <4 x i64> %wide.load69, ptr %i.dx, align 8, !tbaa !154
  store <4 x i64> %wide.load70, ptr %i.dy, align 8, !tbaa !154
  store <4 x i64> %wide.load71, ptr %i.dz, align 8, !tbaa !154
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ea = icmp eq i64 %index.next, %n.vec72
  br i1 %i.ea, label %middle.block, label %vector.body, !llvm.loop !1932

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dn, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index73 = phi i64 [ %index.next75, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.eb = add nuw i64 %index73, %i.cx
  %i.ec = shl i64 %i.eb, 32
  %i.ed = ashr exact i64 %i.ec, 32                ; 2 uses
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.ed
  %wide.load74 = load <4 x i64>, ptr %i.ee, align 8, !tbaa !154
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.ed
  store <4 x i64> %wide.load74, ptr %i.ef, align 8, !tbaa !154
  %index.next75 = add nuw i64 %index73, 4         ; 2 uses
  %i.eg = icmp eq i64 %index.next75, %n.vec72
  br i1 %i.eg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1933

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n76 = icmp eq i64 %i.dn, 0
  br i1 %cmp.n76, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %vector.scevcheck, %iter.check, %vec.epilog.middle.block
  %.020.i.ph = phi i64 [ %i.do, %middle.block ], [ %i.cx, %iter.check ], [ %i.cx, %vector.scevcheck ], [ %i.do, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.020.i = phi i64 [ %i.el, %vec.epilog.scalar.ph ], [ %.020.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %sext.i = shl i64 %.020.i, 32
  %i.eh = ashr exact i64 %sext.i, 32              ; 2 uses
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.eh
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !154
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.eh
  store i64 %i.ej, ptr %i.ek, align 8, !tbaa !154
  %i.el = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.em = icmp ult i64 %i.el, %i.cw
  br i1 %i.em, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, !llvm.loop !1934

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cp, %.lr.ph.i ], [ %i.et, %bb.j ] ; 3 uses
  %i.en = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.eo = or disjoint i64 %i.en, %i.cs            ; 2 uses
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.eo
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !154
  %i.er = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.eo
  store i64 %i.eq, ptr %i.er, align 8, !tbaa !154
  %i.es = add i64 %.01519.i, -1
  %i.et = and i64 %i.es, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.et, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !1935

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.eu = add nsw i32 %i.ck, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.eu, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !1936

bb.k:                                             ; preds = %._crit_edge
  %i.ev = ashr i32 %1, 6
  %i.ew = and i32 %1, 63
  %i.ex = zext nneg i32 %i.ew to i64
  %notmask.i42 = shl nsw i64 -1, %i.ex
  %i.ey = xor i64 %notmask.i42, -1
  %i.ez = load i8, ptr %2, align 8, !tbaa !578, !range !130, !noundef !131
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !579
  %i.fc = sext i32 %i.ev to i64
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.fb, i64 %i.fc
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !154
  %i.ff = xor i8 %i.ez, 1
  %i.fg = zext nneg i8 %i.ff to i64
  %i.fh = sub nsw i64 0, %i.fg
  %i.fi = xor i64 %i.fe, %i.fh
  %i.fj = and i64 %i.fi, %i.ey                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.fj, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.k
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !1937
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 144
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !568
  %i.fp = sext i32 %i.d to i64
  %i.fq = load ptr, ptr %i.fk, align 8, !tbaa !1938, !nonnull !131, !align !253
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !421
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i44
  %.011.i45 = phi i64 [ %i.fj, %.preheader.i44 ], [ %i.fy, %bb.l ] ; 3 uses
  %i.fs = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.ft = or disjoint i64 %i.fs, %i.fp            ; 2 uses
  %i.fu = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %i.ft
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !154
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.fr, i64 %i.ft
  store i64 %i.fv, ptr %i.fw, align 8, !tbaa !154
  %i.fx = add nuw i64 %.011.i45, 9223372036854775807
  %i.fy = and i64 %i.fx, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fy, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !1931

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(272) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.boost::intrusive_ptr", align 8 ; 8 uses
  %2 = alloca %"class.std::optional.116", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !311  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZNK8facebook5velox6Buffer9isMutableEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.d = load i8, ptr %i.c, align 4, !tbaa !270
  %i.e = and i8 %i.d, 2
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %_ZNK8facebook5velox6Buffer9isMutableEv.exit, label %_ZNK8facebook5velox6Buffer9isMutableEv.exit.thread

_ZNK8facebook5velox6Buffer9isMutableEv.exit:      ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.g = load atomic i32, ptr %i.f acquire, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.q, label %_ZNK8facebook5velox6Buffer9isMutableEv.exit.thread

_ZNK8facebook5velox6Buffer9isMutableEv.exit.thread: ; preds = %bb.b, %_ZNK8facebook5velox6Buffer9isMutableEv.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !320
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !333
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 0, ptr %i.n, align 8, !tbaa !324
  call void @_ZN8facebook5velox13AlignedBuffer8allocateINS0_10StringViewEEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %1, i64 noundef %i.k, ptr noundef %i.m, ptr noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !311
  %.not10 = icmp eq ptr %i.o, null
  br i1 %.not10, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZNK8facebook5velox6Buffer9isMutableEv.exit.thread
  %i.p = load ptr, ptr %1, align 8, !tbaa !311    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 44
  %i.r = load i8, ptr %i.q, align 4, !tbaa !270
  %i.s = and i8 %i.r, 2
  %.not.i5 = icmp eq i8 %i.s, 0
  br i1 %.not.i5, label %bb.e, label %bb.d, !prof !155

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIhEEPT_vE18veloxCheckFailArgs) #42
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.t = load i32, ptr %i.i, align 8, !tbaa !320
  %i.u = zext i32 %i.t to i64
  %i.v = shl i64 %i.u, 36
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !271
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !498
  %i.aa = ashr exact i64 %i.v, 32
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr align 8 %i.z, i64 %i.aa, i1 false)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.g:                                             ; preds = %bb.e, %_ZNK8facebook5velox6Buffer9isMutableEv.exit.thread
  %i.ac = load ptr, ptr %1, align 8, !tbaa !311   ; 3 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ae = atomicrmw add ptr %i.ad, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i: ; preds = %bb.h, %bb.g
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !311 ; 7 uses
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !311
  %.not.i2.i = icmp eq ptr %i.af, null
  br i1 %.not.i2.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ah = atomicrmw sub ptr %i.ag, i32 1 acq_rel, align 4
  %i.ai = icmp eq i32 %i.ah, 1
  br i1 %i.ai, label %.sink.split.i.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit

.sink.split.i.i.i:                                ; preds = %bb.i
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !122
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.al = load ptr, ptr %i.ak, align 8
  invoke void %i.al(ptr noundef nonnull align 8 dereferenceable(64) %i.af)
          to label %.noexc.i.i unwind label %bb.j, !inline_history !10

.noexc.i.i:                                       ; preds = %.sink.split.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !321
  %.not.i.i.i = icmp eq ptr %i.an, null
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !122
  %..i.i.i = select i1 %.not.i.i.i, i64 8, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %..i.i.i
  %i.aq = load ptr, ptr %i.ap, align 8
  invoke void %i.aq(ptr noundef nonnull align 8 dereferenceable(64) %i.af)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit unwind label %bb.j, !inline_history !10

bb.j:                                             ; preds = %.noexc.i.i, %.sink.split.i.i.i
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  call void @__clang_call_terminate(ptr %i.as) #41
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit: ; preds = %.noexc.i.i, %bb.i, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !311 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 44
  %i.av = load i8, ptr %i.au, align 4, !tbaa !270
  %i.aw = and i8 %i.av, 2
  %.not.i6 = icmp eq i8 %i.aw, 0
  br i1 %.not.i6, label %bb.l, label %bb.k, !prof !155

bb.k:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableINS0_10StringViewEEEPT_vE18veloxCheckFailArgs) #42
          to label %.noexc7 unwind label %bb.o

.noexc7:                                          ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !271
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !498
  %i.ba = load ptr, ptr %1, align 8, !tbaa !311   ; 7 uses
  %.not.i8 = icmp eq ptr %i.ba, null
  br i1 %.not.i8, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.bc = atomicrmw sub ptr %i.bb, i32 1 acq_rel, align 4
  %i.bd = icmp eq i32 %i.bc, 1
  br i1 %i.bd, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.m
  %i.be = load ptr, ptr %i.ba, align 8, !tbaa !122
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 64
  %i.bg = load ptr, ptr %i.bf, align 8
  invoke void %i.bg(ptr noundef nonnull align 8 dereferenceable(64) %i.ba)
          to label %.noexc.i unwind label %bb.n, !inline_history !10

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !321
  %.not.i.i9 = icmp eq ptr %i.bi, null
  %i.bj = load ptr, ptr %i.ba, align 8, !tbaa !122
  %..i.i = select i1 %.not.i.i9, i64 8, i64 48
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %..i.i
  %i.bl = load ptr, ptr %i.bk, align 8
  invoke void %i.bl(ptr noundef nonnull align 8 dereferenceable(64) %i.ba)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.n, !inline_history !10

bb.n:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  call void @__clang_call_terminate(ptr %i.bn) #41
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.l, %bb.m, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br label %bb.q

bb.o:                                             ; preds = %bb.k
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.f
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.o ], [ %i.ab, %bb.f ]
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  resume { ptr, i32 } %.pn

bb.q:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %_ZNK8facebook5velox6Buffer9isMutableEv.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !498
  ret ptr %i.bq
end_hunk_5
begin_hunk_6_@_ZN8facebook5velox10FlatVectorINS0_10StringViewEE18clearStringBuffersEv:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox14applyToEachRowIZNS0_10FlatVectorINS0_10StringViewEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS5_9CopyRangeEEEEUlT_T0_E_EEvSF_RKSG_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !383    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !384  ; 2 uses
  %.not16 = icmp eq ptr %i.a, %i.c
  br i1 %.not16, label %._crit_edge18, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.01417 = phi ptr [ %i.a, %.preheader.lr.ph ], [ %i.j, %._crit_edge ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.01417, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !380
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %.01417, i64 4
  br label %bb.b

._crit_edge18:                                    ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS4_9CopyRangeEEEENKUlT_T0_E_clIiiEEDaSF_SG_.exit, %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %.01417, i64 12 ; 2 uses
  %.not = icmp eq ptr %i.j, %i.c
  br i1 %.not, label %._crit_edge18, label %.preheader

bb.b:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS4_9CopyRangeEEEENKUlT_T0_E_clIiiEEDaSF_SG_.exit
  %.015 = phi i32 [ 0, %.lr.ph ], [ %i.ay, %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS4_9CopyRangeEEEENKUlT_T0_E_clIiiEEDaSF_SG_.exit ] ; 3 uses
  %i.k = load i32, ptr %i.i, align 4, !tbaa !379
  %i.l = add nsw i32 %i.k, %.015                  ; 2 uses
  %i.m = load i32, ptr %.01417, align 4, !tbaa !378
  %i.n = add nsw i32 %i.m, %.015                  ; 2 uses
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !507  ; 4 uses
  %i.p = load ptr, ptr %1, align 8, !tbaa !1978, !nonnull !131, !align !253
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !303  ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !122
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef zeroext i1 %i.t(ptr noundef nonnull align 8 dereferenceable(94) %i.q, i32 noundef %i.n), !inline_history !1976
  br i1 %i.u, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.x = load i32, ptr %i.w, align 8, !tbaa !320
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(272) %i.o, i32 noundef %i.x, i1 noundef zeroext true)
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !311  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 44
  %i.aa = load i8, ptr %i.z, align 4, !tbaa !270
  %i.ab = and i8 %i.aa, 2
  %.not.i3.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i3.i.i, label %_ZN8facebook5velox10FlatVectorINS0_10StringViewEE7setNullEib.exit.i, label %bb.d, !prof !155

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #42
  unreachable

_ZN8facebook5velox10FlatVectorINS0_10StringViewEE7setNullEib.exit.i: ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !271
  %i.ae = zext i32 %i.l to i64                    ; 2 uses
  %i.af = lshr i64 %i.ae, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.af ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !107
  %i.ai = and i64 %i.ae, 7
  %i.aj = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !107
  %i.al = and i8 %i.ak, %i.ah
  store i8 %i.al, ptr %i.ag, align 1, !tbaa !107
  br label %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS4_9CopyRangeEEEENKUlT_T0_E_clIiiEEDaSF_SG_.exit

bb.e:                                             ; preds = %bb.b
  %i.am = load ptr, ptr %i.e, align 8, !tbaa !1979, !nonnull !131, !align !253
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !503 ; 2 uses
  %i.ao = load ptr, ptr %1, align 8, !tbaa !1978, !nonnull !131, !align !253
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !303 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !122
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 136
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call noundef i32 %i.as(ptr noundef nonnull align 8 dereferenceable(94) %i.ap, i32 noundef %i.n), !inline_history !1976
  %i.au = load ptr, ptr %i.an, align 8, !tbaa !122
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 384
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.aw(ptr noundef nonnull align 8 dereferenceable(208) %i.an, i32 noundef %i.at), !inline_history !1976 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.ax, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !107
  tail call void @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE3setEiS2_(ptr noundef nonnull align 8 dereferenceable(272) %i.o, i32 noundef %i.l, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i)
  br label %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS4_9CopyRangeEEEENKUlT_T0_E_clIiiEEDaSF_SG_.exit

_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS4_9CopyRangeEEEENKUlT_T0_E_clIiiEEDaSF_SG_.exit: ; preds = %_ZN8facebook5velox10FlatVectorINS0_10StringViewEE7setNullEib.exit.i, %bb.e
  %i.ay = add nuw nsw i32 %.015, 1                ; 2 uses
  %i.az = load i32, ptr %i.f, align 4, !tbaa !380
  %i.ba = icmp slt i32 %i.ay, %i.az
  br i1 %i.ba, label %bb.b, label %._crit_edge, !llvm.loop !1977
}

declare void @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE26acquireSharedStringBuffersEPKNS0_10BaseVectorE(ptr noundef nonnull align 8 dereferenceable(272), ptr noundef) local_unnamed_addr #2

declare void @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE3setEiS2_(ptr noundef nonnull align 8 dereferenceable(272), i32 noundef, i64, ptr) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE30transferAndUpdateStringBuffersEPNS0_6memory10MemoryPoolE(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef %1) local_unnamed_addr #34 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.20", align 16 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"struct.std::pair.420", align 8    ; 4 uses
  %5 = alloca %"class.boost::intrusive_ptr", align 8 ; 5 uses
  %6 = alloca %"class.std::optional.337", align 1 ; 5 uses
  %7 = alloca %"struct.fmt::v11::detail::format_arg_store.532", align 16 ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %9 = alloca %"class.boost::intrusive_ptr", align 8 ; 11 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !308  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !308  ; 2 uses
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 1
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %bb.aj
  %i.l = icmp eq ptr %.sroa.0106.3, %.sroa.12.1
  br i1 %i.l, label %.loopexit, label %bb.ak

bb.b:                                             ; preds = %.lr.ph, %bb.aj
  %.sroa.0106.0213 = phi ptr [ null, %.lr.ph ], [ %.sroa.0106.3, %bb.aj ] ; 13 uses
  %.sroa.12.0212 = phi ptr [ null, %.lr.ph ], [ %.sroa.12.1, %bb.aj ] ; 9 uses
  %.sroa.19.0211 = phi ptr [ null, %.lr.ph ], [ %.sroa.19.3, %bb.aj ] ; 8 uses
  %.sroa.0103.0210 = phi ptr [ %i.d, %.lr.ph ], [ %i.ee, %bb.aj ] ; 10 uses
  %i.m = load ptr, ptr %.sroa.0103.0210, align 8, !tbaa !311 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !122
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = invoke noundef zeroext i1 %i.p(ptr noundef nonnull align 8 dereferenceable(64) %i.m, ptr noundef %1)
          to label %bb.c unwind label %bb.n

bb.c:                                             ; preds = %bb.b
  br i1 %i.q, label %bb.aj, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %.sroa.0103.0210, align 8, !tbaa !311 ; 3 uses
  %i.s = load i64, ptr %i.i, align 8, !tbaa !490  ; 2 uses
  %i.t = icmp ult i64 %i.s, 256
  br i1 %i.t, label %.loopexit131, label %bb.e, !prof !123

bb.e:                                             ; preds = %bb.d
  %i.u = ptrtoint ptr %i.r to i64                 ; 2 uses
  %i.v = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.u) ; 2 uses
  %i.w = lshr i64 %i.v, 24
  %i.x = or i64 %i.w, 128                         ; 3 uses
  %i.y = add i64 %i.v, %i.u                       ; 2 uses
  %i.z = shl nuw nsw i64 %i.x, 1
  %i.aa = or disjoint i64 %i.z, 1
  %i.ab = trunc nuw i64 %i.x to i8
  %i.ac = insertelement <16 x i8> poison, i8 %i.ab, i64 0
  %i.ad = shufflevector <16 x i8> %i.ac, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ae = and i64 %i.s, 255                       ; 2 uses
  %i.af = shl nuw i64 1, %i.ae
  %i.ag = load ptr, ptr %i.h, align 8, !tbaa !486
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %bb.e
  %.023.i39.i.i.i = phi i64 [ %i.af, %bb.e ], [ %i.ba, %bb.i ]
  %.025.i38.i.i.i = phi i64 [ %i.y, %bb.e ], [ %i.bb, %bb.i ] ; 2 uses
  %i.ah = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i38.i.i.i, i64 range(i64 0, 256) %i.ae)
  %i.ai = getelementptr inbounds nuw [128 x i8], ptr %i.ag, i64 %i.ah ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 80
  call void @llvm.prefetch.p0(ptr nonnull %i.ak, i32 0, i32 3, i32 1)
  %i.al = load <16 x i8>, ptr %i.ai, align 16     ; 2 uses
  %i.am = icmp eq <16 x i8> %i.al, %i.ad
  %i.an = bitcast <16 x i1> %i.am to i16
  %i.ao = and i16 %i.an, 16383
  %i.ap = zext nneg i16 %i.ao to i32
  %i.aq = icmp ne ptr %i.ai, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.ar = extractelement <16 x i8> %i.al, i64 15
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %bb.g, %bb.f
  %.sroa.012.0.i.i.i = phi i32 [ %i.ap, %bb.f ], [ %i.au, %bb.g ] ; 4 uses
  %.not.i.i.i = icmp eq i32 %.sroa.012.0.i.i.i, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.critedge.i.i.i.i
  %i.as = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.012.0.i.i.i, i1 true)
  %i.at = add nuw nsw i32 %.sroa.012.0.i.i.i, 16383
  %i.au = and i32 %i.at, %.sroa.012.0.i.i.i
  %i.av = zext nneg i32 %i.as to i64              ; 3 uses
  call void @llvm.assume(i1 %i.aq)
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !574
  %i.ay = icmp eq ptr %i.r, %i.ax
  br i1 %i.ay, label %bb.j, label %.critedge.i.i.i.i, !prof !155, !llvm.loop !62

bb.h:                                             ; preds = %.critedge.i.i.i.i
  %i.az = icmp eq i8 %i.ar, 0
  br i1 %i.az, label %.loopexit131, label %bb.i, !prof !155

bb.i:                                             ; preds = %bb.h
  %i.ba = add i64 %.023.i39.i.i.i, -1             ; 2 uses
  %i.bb = add i64 %i.aa, %.025.i38.i.i.i
  %.not.i.i.i.i = icmp eq i64 %i.ba, 0
  br i1 %.not.i.i.i.i, label %.loopexit131, label %bb.f, !llvm.loop !63

bb.j:                                             ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.av
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmE(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr nonnull %i.bc, i64 %i.av, i64 %i.y, i64 %i.x)
          to label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE5eraseERKS8_.exit unwind label %bb.o

.loopexit131:                                     ; preds = %bb.d, %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store ptr %i.r, ptr %i.a, align 8, !tbaa !574
  %i.bd = invoke noundef i64 @_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE5eraseERKS8_(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %.loopexit131
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27, !noalias !1996
  store i64 %i.bd, ptr %7, align 16, !tbaa !107, !alias.scope !1997, !noalias !1996
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 0, ptr %i.be, align 16, !tbaa !107, !alias.scope !1997, !noalias !1996
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr nonnull @.str.197, i64 67, i64 20, ptr nonnull %7)
          to label %bb.l unwind label %bb.q

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27, !noalias !1996
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE30transferAndUpdateStringBuffersEPNS0_6memory10MemoryPoolEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr nonnull @.str.197) #42
          to label %bb.m unwind label %bb.s

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.b
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %.body74

bb.o:                                             ; preds = %bb.j
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body74

bb.p:                                             ; preds = %.loopexit131
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.k
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn52 = phi { ptr, i32 } [ %i.bi, %bb.q ], [ %i.bh, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.s:                                             ; preds = %bb.l
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bk = load ptr, ptr %8, align 8, !tbaa !124   ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.s
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !107
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.r
  %.pn54 = phi { ptr, i32 } [ %i.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn52, %bb.r ], [ %i.bj, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %.body74

_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE5eraseERKS8_.exit: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !1998)
  %i.bp = load ptr, ptr %.sroa.0103.0210, align 8, !tbaa !311, !noalias !1998, !nonnull !131, !noundef !131
  store ptr null, ptr %9, align 8, !tbaa !311, !alias.scope !1998
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !269, !noalias !1998
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27, !noalias !1998
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27, !noalias !1998
  store i8 0, ptr %i.j, align 1, !tbaa !386, !noalias !1998
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIcEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %5, i64 noundef %i.br, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(2) %6, i1 noundef zeroext false)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i unwind label %bb.t, !noalias !1998

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i: ; preds = %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE5eraseERKS8_.exit
  %i.bs = load ptr, ptr %5, align 8, !tbaa !311, !noalias !1998 ; 4 uses
  store ptr %i.bs, ptr %9, align 8, !tbaa !311, !alias.scope !1998
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %.pre15.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !269, !noalias !1998
  %.pre.i = load ptr, ptr %.sroa.0103.0210, align 8, !tbaa !311, !noalias !1998
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27, !noalias !1998
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27, !noalias !1998
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !122, !noalias !1998
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 56
  %i.bv = load ptr, ptr %i.bu, align 8, !noalias !1998
  invoke void %i.bv(ptr noundef nonnull align 8 dereferenceable(64) %i.bs, ptr noundef %.pre.i, i64 noundef %.pre15.i)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i._ZN8facebook5velox13AlignedBuffer4copyIcEEN5boost13intrusive_ptrINS0_6BufferEEERKS6_PNS0_6memory10MemoryPoolE.exit_crit_edge unwind label %bb.u, !noalias !1998

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i._ZN8facebook5velox13AlignedBuffer4copyIcEEN5boost13intrusive_ptrINS0_6BufferEEERKS6_PNS0_6memory10MemoryPoolE.exit_crit_edge: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i
  %.pre = load ptr, ptr %.sroa.0103.0210, align 8, !tbaa !311 ; 3 uses
  %.pre270 = load ptr, ptr %9, align 8, !tbaa !311 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !271 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.pre270, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !271 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !269 ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.12.0212, %.sroa.19.0211
  br i1 %.not.i.i, label %bb.v, label %_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EE9push_backEOS8_.exit.thread

bb.t:                                             ; preds = %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE5eraseERKS8_.exit
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27, !noalias !1998
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27, !noalias !1998
  br label %.body

bb.u:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EE9push_backEOS8_.exit.thread: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i._ZN8facebook5velox13AlignedBuffer4copyIcEEN5boost13intrusive_ptrINS0_6BufferEEERKS6_PNS0_6memory10MemoryPoolE.exit_crit_edge
  store ptr %i.bx, ptr %.sroa.12.0212, align 8, !tbaa !434
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12.0212, i64 8
  store ptr %i.bz, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !434
  %.sroa.795.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12.0212, i64 16
  store i64 %i.cb, ptr %.sroa.795.0..sroa_idx, align 8, !tbaa !154
  %.sroa.12.2299 = getelementptr inbounds nuw i8, ptr %.sroa.12.0212, i64 24
  store ptr null, ptr %9, align 8, !tbaa !311
  store ptr %.pre270, ptr %.sroa.0103.0210, align 8, !tbaa !311
  br label %bb.z

bb.v:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i._ZN8facebook5velox13AlignedBuffer4copyIcEEN5boost13intrusive_ptrINS0_6BufferEEERKS6_PNS0_6memory10MemoryPoolE.exit_crit_edge
  %i.ce = ptrtoint ptr %.sroa.12.0212 to i64
  %i.cf = ptrtoint ptr %.sroa.0106.0213 to i64
  %i.cg = sub i64 %i.ce, %i.cf                    ; 6 uses
  %i.ch = icmp eq i64 %i.cg, 9223372036854775800
  br i1 %i.ch, label %bb.w, label %_ZNKSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EE12_M_check_lenEmPKc.exit.i.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #42
          to label %.noexc60 unwind label %.loopexit.split-lp

.noexc60:                                         ; preds = %bb.w
  unreachable

_ZNKSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.v
  %i.ci = sdiv exact i64 %i.cg, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ci, i64 1)
  %i.cj = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ci ; 2 uses
  %i.ck = icmp ult i64 %i.cj, %i.ci
  %i.cl = call i64 @llvm.umin.i64(i64 %i.cj, i64 384307168202282325)
  %i.cm = select i1 %i.ck, i64 384307168202282325, i64 %i.cl ; 3 uses
  %.not.i.i.i.i59 = icmp ne i64 %i.cm, 0
  call void @llvm.assume(i1 %.not.i.i.i.i59)
  %i.cn = mul nuw nsw i64 %i.cm, 24
  %i.co = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cn) #39
          to label %.noexc61 unwind label %.loopexit133 ; 5 uses

.noexc61:                                         ; preds = %_ZNKSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 %i.cg ; 4 uses
  store ptr %i.bx, ptr %i.cp, align 8, !tbaa !434
  %.sroa.6.0..sroa_idx93 = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store ptr %i.bz, ptr %.sroa.6.0..sroa_idx93, align 8, !tbaa !434
  %.sroa.795.0..sroa_idx96 = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store i64 %i.cb, ptr %.sroa.795.0..sroa_idx96, align 8, !tbaa !154
  %i.cq = icmp sgt i64 %i.cg, 0
  br i1 %i.cq, label %bb.x, label %_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit16.i.i.i

bb.x:                                             ; preds = %.noexc61
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.co, ptr align 8 %.sroa.0106.0213, i64 %i.cg, i1 false)
  br label %_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit16.i.i.i

_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit16.i.i.i: ; preds = %bb.x, %.noexc61
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0106.0213, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EE9push_backEOS8_.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0106.0213, i64 noundef %i.cg) #40
end_hunk_6
begin_hunk_7_@_ZN8facebook5velox10FlatVectorINS0_10StringViewEE30transferAndUpdateStringBuffersEPNS0_6memory10MemoryPoolE:bb.a
_ZNK8facebook5velox10BaseVector8isNullAtEi.exit:  ; preds = %bb.ao
  %i.fe = lshr i64 %indvars.iv, 6
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.fe
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !154
  %i.fh = and i64 %indvars.iv, 63
  %i.fi = shl nuw i64 1, %i.fh
  %i.fj = and i64 %i.fg, %i.fi
  %.not.i.i72 = icmp eq i64 %i.fj, 0
  br i1 %.not.i.i72, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEEPKcZNS6_30transferAndUpdateStringBuffersES9_EUlSI_RSB_E_ET_SL_SL_RKT0_T1_.exit.thread, label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread

_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread: ; preds = %bb.ao, %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit
  %i.fk = getelementptr inbounds nuw [16 x i8], ptr %i.et, i64 %indvars.iv ; 4 uses
  %i.fl = load i32, ptr %i.fk, align 8, !tbaa !207 ; 3 uses
  %i.fm = icmp ult i32 %i.fl, 13
  br i1 %i.fm, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEEPKcZNS6_30transferAndUpdateStringBuffersES9_EUlSI_RSB_E_ET_SL_SL_RKT0_T1_.exit.thread, label %bb.ap

bb.ap:                                            ; preds = %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 4
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8            ; 4 uses
  br i1 %i.ey, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEEPKcZNS6_30transferAndUpdateStringBuffersES9_EUlSI_RSB_E_ET_SL_SL_RKT0_T1_.exit.thread

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %bb.ap, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.016.i.i = phi i64 [ %.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.ez, %bb.ap ] ; 2 uses
  %.sroa.011.015.i.i = phi ptr [ %.sroa.011.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %.sroa.0106.3, %bb.ap ] ; 2 uses
  %i.fq = lshr i64 %.016.i.i, 1                   ; 3 uses
  %i.fr = getelementptr inbounds nuw [24 x i8], ptr %.sroa.011.015.i.i, i64 %i.fq ; 2 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !680
  %i.ft = icmp ult ptr %i.fp, %i.fs               ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 24
  %i.fv = xor i64 %i.fq, -1
  %i.fw = add nsw i64 %.016.i.i, %i.fv
  %.sroa.011.1.i.i = select i1 %i.ft, ptr %.sroa.011.015.i.i, ptr %i.fu ; 5 uses
  %.1.i.i = select i1 %i.ft, i64 %i.fq, i64 %i.fw ; 2 uses
  %i.fx = icmp sgt i64 %.1.i.i, 0
  br i1 %i.fx, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEEPKcZNS6_30transferAndUpdateStringBuffersES9_EUlSI_RSB_E_ET_SL_SL_RKT0_T1_.exit, !llvm.loop !1992

_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEEPKcZNS6_30transferAndUpdateStringBuffersES9_EUlSI_RSB_E_ET_SL_SL_RKT0_T1_.exit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %i.fy = icmp eq ptr %.sroa.011.1.i.i, %.sroa.0106.3
  br i1 %i.fy, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEEPKcZNS6_30transferAndUpdateStringBuffersES9_EUlSI_RSB_E_ET_SL_SL_RKT0_T1_.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEEPKcZNS6_30transferAndUpdateStringBuffersES9_EUlSI_RSB_E_ET_SL_SL_RKT0_T1_.exit
  %i.fz = getelementptr inbounds i8, ptr %.sroa.011.1.i.i, i64 -24
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !680 ; 3 uses
  %.not = icmp ult ptr %i.fp, %i.ga
  br i1 %.not, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEEPKcZNS6_30transferAndUpdateStringBuffersES9_EUlSI_RSB_E_ET_SL_SL_RKT0_T1_.exit.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gb = getelementptr inbounds i8, ptr %.sroa.011.1.i.i, i64 -8
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !2001
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.gc
  %i.ge = icmp ult ptr %i.fp, %i.gd
  br i1 %i.ge, label %bb.as, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEEPKcZNS6_30transferAndUpdateStringBuffersES9_EUlSI_RSB_E_ET_SL_SL_RKT0_T1_.exit.thread

bb.as:                                            ; preds = %bb.ar
  %i.gf = icmp slt i32 %i.fl, 0
  br i1 %i.gf, label %bb.at, label %bb.aw, !prof !123

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27, !noalias !2002
  store i32 %i.fl, ptr %2, align 16, !tbaa !107, !noalias !2002
  %i.gg = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.gg, align 16, !tbaa !107, !noalias !2002
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.8, i64 11, i64 17, ptr nonnull %2)
          to label %.noexc73 unwind label %bb.ax

.noexc73:                                         ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27, !noalias !2002
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10StringViewC1EPKciE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.8) #42
          to label %bb.au unwind label %bb.av

bb.au:                                            ; preds = %.noexc73
  unreachable

bb.av:                                            ; preds = %.noexc73
  %i.gh = landingpad { ptr, i32 }
          cleanup
  %i.gi = load ptr, ptr %3, align 8, !tbaa !124   ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.gk = icmp eq ptr %i.gi, %i.gj
  br i1 %i.gk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.av
  %i.gl = load i64, ptr %i.gj, align 8, !tbaa !107
  %i.gm = add i64 %i.gl, 1
  call void @_ZdlPvm(ptr noundef %i.gi, i64 noundef %i.gm) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %.body74

bb.aw:                                            ; preds = %bb.as
  %i.gn = getelementptr inbounds i8, ptr %.sroa.011.1.i.i, i64 -16
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !2003
  %i.gp = ptrtoint ptr %i.fp to i64
  %i.gq = ptrtoint ptr %i.ga to i64
  %i.gr = sub i64 %i.gp, %i.gq
  %i.gs = getelementptr inbounds i8, ptr %i.go, i64 %i.gr ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 1
  store i32 %i.gt, ptr %i.fn, align 4, !tbaa !107
  %.sroa.5.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  store ptr %i.gs, ptr %.sroa.5.sroa.5.0..sroa_idx, align 8, !tbaa !107
  %.pre273 = load i32, ptr %i.eu, align 8, !tbaa !320
  br label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEEPKcZNS6_30transferAndUpdateStringBuffersES9_EUlSI_RSB_E_ET_SL_SL_RKT0_T1_.exit.thread

bb.ax:                                            ; preds = %bb.at
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %.body74

_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEEPKcZNS6_30transferAndUpdateStringBuffersES9_EUlSI_RSB_E_ET_SL_SL_RKT0_T1_.exit.thread: ; preds = %bb.ap, %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEEPKcZNS6_30transferAndUpdateStringBuffersES9_EUlSI_RSB_E_ET_SL_SL_RKT0_T1_.exit, %bb.aw, %bb.ar, %bb.aq, %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread, %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit
  %i.gv = phi i32 [ %i.fc, %bb.ap ], [ %i.fc, %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEEPKcZNS6_30transferAndUpdateStringBuffersES9_EUlSI_RSB_E_ET_SL_SL_RKT0_T1_.exit ], [ %.pre273, %bb.aw ], [ %i.fc, %bb.ar ], [ %i.fc, %bb.aq ], [ %i.fc, %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread ], [ %i.fc, %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gw = sext i32 %i.gv to i64
  %i.gx = icmp slt i64 %indvars.iv.next, %i.gw
  br i1 %i.gx, label %bb.ao, label %.loopexit, !llvm.loop !1995

.loopexit:                                        ; preds = %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEEPKcZNS6_30transferAndUpdateStringBuffersES9_EUlSI_RSB_E_ET_SL_SL_RKT0_T1_.exit.thread, %_ZNK8facebook5velox6Buffer9asMutableINS0_10StringViewEEEPT_v.exit, %._crit_edge
  %.not.i.i.i76 = icmp eq ptr %.sroa.0106.3, null
  br i1 %.not.i.i.i76, label %_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EED2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %.loopexit
  %i.gy = ptrtoint ptr %.sroa.19.3 to i64
  %i.gz = ptrtoint ptr %.sroa.0106.3 to i64
  %i.ha = sub i64 %i.gy, %i.gz
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0106.3, i64 noundef %i.ha) #40
  br label %_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EED2Ev.exit

_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EED2Ev.exit: ; preds = %bb.a, %.loopexit, %bb.ay
  ret void

.body74:                                          ; preds = %bb.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.n, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.body, %bb.an, %bb.am
  %.sroa.19.5 = phi ptr [ %.sroa.19.0211, %bb.n ], [ %.sroa.19.3, %bb.an ], [ %.sroa.19.3, %bb.am ], [ %.sroa.19.0211, %bb.o ], [ %.sroa.19.2, %.body ], [ %.sroa.19.0211, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.sroa.19.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.sroa.19.3, %bb.ax ]
  %.sroa.0106.5 = phi ptr [ %.sroa.0106.0213, %bb.n ], [ %.sroa.0106.3, %bb.an ], [ %.sroa.0106.3, %bb.am ], [ %.sroa.0106.0213, %bb.o ], [ %.sroa.0106.2, %.body ], [ %.sroa.0106.0213, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.sroa.0106.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.sroa.0106.3, %bb.ax ] ; 3 uses
  %.pn54.pn.pn = phi { ptr, i32 } [ %i.bf, %bb.n ], [ %i.fb, %bb.an ], [ %i.fa, %bb.am ], [ %i.bg, %bb.o ], [ %.pn49.pn, %.body ], [ %.pn54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.gh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.gu, %bb.ax ]
  %.not.i.i.i77 = icmp eq ptr %.sroa.0106.5, null
  br i1 %.not.i.i.i77, label %_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EED2Ev.exit78, label %.thread

.thread:                                          ; preds = %.body74
  %i.hb = ptrtoint ptr %.sroa.19.5 to i64
  %i.hc = ptrtoint ptr %.sroa.0106.5 to i64
  %i.hd = sub i64 %i.hb, %i.hc
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0106.5, i64 noundef %i.hd) #40
  br label %_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EED2Ev.exit78

_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EED2Ev.exit78: ; preds = %.body74, %.thread
  resume { ptr, i32 } %.pn54.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE5eraseERKS8_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #30 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !490  ; 2 uses
  %i.c = icmp ult i64 %i.b, 256
  br i1 %i.c, label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE9eraseIntoIRKNS_16variadic_noop_fnEEEmRKS8_OT_.exit, label %bb.b, !prof !123

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !574    ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.e) ; 2 uses
  %i.g = lshr i64 %i.f, 24
  %i.h = or i64 %i.g, 128                         ; 3 uses
  %i.i = add i64 %i.f, %i.e                       ; 2 uses
  %i.j = shl nuw nsw i64 %i.h, 1
  %i.k = or disjoint i64 %i.j, 1
  %i.l = trunc nuw i64 %i.h to i8
  %i.m = insertelement <16 x i8> poison, i8 %i.l, i64 0
  %i.n = shufflevector <16 x i8> %i.m, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.o = and i64 %i.b, 255                        ; 2 uses
  %i.p = shl nuw i64 1, %i.o
  %i.q = load ptr, ptr %0, align 8, !tbaa !486
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %.023.i39.i.i = phi i64 [ %i.p, %bb.b ], [ %i.ak, %bb.f ]
  %.025.i38.i.i = phi i64 [ %i.i, %bb.b ], [ %i.al, %bb.f ] ; 2 uses
  %i.r = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i38.i.i, i64 range(i64 0, 256) %i.o)
  %i.s = getelementptr inbounds nuw [128 x i8], ptr %i.q, i64 %i.r ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  tail call void @llvm.prefetch.p0(ptr nonnull %i.u, i32 0, i32 3, i32 1)
  %i.v = load <16 x i8>, ptr %i.s, align 16       ; 2 uses
  %i.w = icmp eq <16 x i8> %i.v, %i.n
  %i.x = bitcast <16 x i1> %i.w to i16
  %i.y = and i16 %i.x, 16383
  %i.z = zext nneg i16 %i.y to i32
  %i.aa = icmp ne ptr %i.s, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.ab = extractelement <16 x i8> %i.v, i64 15
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %bb.d, %bb.c
  %.sroa.012.0.i.i = phi i32 [ %i.z, %bb.c ], [ %i.ae, %bb.d ] ; 4 uses
  %.not.i.i = icmp eq i32 %.sroa.012.0.i.i, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge.i.i.i
  %i.ac = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.012.0.i.i, i1 true)
  %i.ad = add nuw nsw i32 %.sroa.012.0.i.i, 16383
  %i.ae = and i32 %i.ad, %.sroa.012.0.i.i
  %i.af = zext nneg i32 %i.ac to i64              ; 3 uses
  tail call void @llvm.assume(i1 %i.aa)
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !574
  %i.ai = icmp eq ptr %i.d, %i.ah
  br i1 %i.ai, label %bb.g, label %.critedge.i.i.i, !prof !155, !llvm.loop !62

bb.e:                                             ; preds = %.critedge.i.i.i
  %i.aj = icmp eq i8 %i.ab, 0
  br i1 %i.aj, label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE9eraseIntoIRKNS_16variadic_noop_fnEEEmRKS8_OT_.exit, label %bb.f, !prof !155

bb.f:                                             ; preds = %bb.e
  %i.ak = add i64 %.023.i39.i.i, -1               ; 2 uses
  %i.al = add i64 %i.k, %.025.i38.i.i
  %.not.i.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i, label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE9eraseIntoIRKNS_16variadic_noop_fnEEEmRKS8_OT_.exit, label %bb.c, !llvm.loop !63

bb.g:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.af
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull %i.am, i64 %i.af, i64 %i.i, i64 %i.h)
  br label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE9eraseIntoIRKNS_16variadic_noop_fnEEEmRKS8_OT_.exit

_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE9eraseIntoIRKNS_16variadic_noop_fnEEEmRKS8_OT_.exit: ; preds = %bb.e, %bb.f, %bb.a, %bb.g
  %.1.i.i = phi i64 [ 0, %bb.a ], [ 1, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ]
  ret i64 %.1.i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #30 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !490
  %i.c = add i64 %i.b, -256                       ; 2 uses
  store i64 %i.c, ptr %i.a, align 8, !tbaa !490
  %i.d = and i64 %2, 255                          ; 2 uses
  %i.e = icmp samesign ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.e)
  %i.f = lshr i64 %i.d, 1
  %i.g = ptrtoint ptr %1 to i64
  %i.h = or i64 %i.f, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !592
  %i.k = icmp eq i64 %i.h, %i.j
  br i1 %i.k, label %bb.b, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEE.exit

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ult i64 %i.c, 256
  br i1 %i.l, label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIPKN8facebook5velox6BufferEEEE17precheckedAdvanceEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds i8, ptr %1, i64 -16
  %.neg.i.i.i.i = mul i64 %2, -8
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 %.neg.i.i.i.i ; 2 uses
  %.not19.i4.i.i = icmp eq i64 %2, 0
  br i1 %.not19.i4.i.i, label %.critedge.i.i.i.preheader, label %thread-pre-split.i.i

.critedge.i.i.i.preheader:                        ; preds = %bb.d, %bb.c
  br label %.critedge.i.i.i

bb.d:                                             ; preds = %thread-pre-split.i.i
  %.not19.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not19.i.i.i, label %.critedge.i.i.i.preheader, label %thread-pre-split.i.i

thread-pre-split.i.i:                             ; preds = %bb.c, %bb.d
  %i.o = phi i64 [ %i.q, %bb.d ], [ %2, %bb.c ]
  %i.p = phi ptr [ %i.r, %bb.d ], [ %1, %bb.c ]
  %i.q = add i64 %i.o, -1                         ; 4 uses
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 -8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  %i.t = load i8, ptr %i.s, align 1, !tbaa !107
  %.not.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i, label %bb.d, label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIPKN8facebook5velox6BufferEEEE17precheckedAdvanceEv.exit.i, !prof !123, !llvm.loop !2004

.critedge.i.i.i:                                  ; preds = %.critedge.i.i.i.preheader, %.critedge.i.i.i
  %.017.i.i.i = phi ptr [ %i.u, %.critedge.i.i.i ], [ %i.n, %.critedge.i.i.i.preheader ] ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %.017.i.i.i, i64 -128 ; 3 uses
  %i.v = load <16 x i8>, ptr %i.u, align 16, !tbaa !107
  %i.w = icmp slt <16 x i8> %i.v, zeroinitializer
  %i.x = bitcast <16 x i1> %i.w to i16
  %i.y = and i16 %i.x, 16383                      ; 2 uses
  %.not2.i.i = icmp eq i16 %i.y, 0
  br i1 %.not2.i.i, label %.critedge.i.i.i, label %bb.e, !prof !123, !llvm.loop !2005

bb.e:                                             ; preds = %.critedge.i.i.i
  %i.z = zext nneg i16 %i.y to i32
  %i.aa = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.z, i1 true)
  %i.ab = xor i32 %i.aa, 31
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = icmp ne ptr %i.u, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds i8, ptr %.017.i.i.i, i64 -112
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ac
  br label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIPKN8facebook5velox6BufferEEEE17precheckedAdvanceEv.exit.i

_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIPKN8facebook5velox6BufferEEEE17precheckedAdvanceEv.exit.i: ; preds = %thread-pre-split.i.i, %bb.e, %bb.b
  %.sroa.01.0.i = phi ptr [ null, %bb.b ], [ %i.af, %bb.e ], [ %i.r, %thread-pre-split.i.i ]
  %.sroa.7.0.i = phi i64 [ 0, %bb.b ], [ %i.ac, %bb.e ], [ %i.q, %thread-pre-split.i.i ]
  %i.ag = and i64 %.sroa.7.0.i, 255               ; 2 uses
  %i.ah = icmp samesign ult i64 %i.ag, 16
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = lshr i64 %i.ag, 1
  %i.aj = ptrtoint ptr %.sroa.01.0.i to i64
  %i.ak = or i64 %i.ai, %i.aj
  store i64 %i.ak, ptr %i.i, align 8, !tbaa !154
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEE.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEE.exit: ; preds = %bb.a, %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIPKN8facebook5velox6BufferEEEE17precheckedAdvanceEv.exit.i
  %i.al = getelementptr inbounds i8, ptr %1, i64 -16
  %.neg.i.i.i = mul i64 %2, -8
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 %.neg.i.i.i ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %2 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !107
  %.not.i.i7 = icmp sgt i8 %i.ao, -1
  br i1 %.not.i.i7, label %bb.f, label %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE8clearTagEm.exit.i

bb.f:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEE.exit
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE8clearTagEmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str) #46
  unreachable

_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE8clearTagEm.exit.i: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEE.exit
  store i8 0, ptr %i.an, align 1, !tbaa !107
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 14
  %i.aq = load i8, ptr %i.ap, align 2, !tbaa !573
  %.not.i = icmp ult i8 %i.aq, 16
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10eraseBlankENS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE8clearTagEm.exit.i
  %i.ar = shl i64 %4, 1
  %i.as = or disjoint i64 %i.ar, 1
  %i.at = load ptr, ptr %0, align 8, !tbaa !486   ; 4 uses
  %i.au = load i64, ptr %i.a, align 8, !tbaa !490
  %i.av = and i64 %i.au, 255                      ; 2 uses
  %i.aw = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %3, i64 range(i64 0, 256) %i.av) ; 3 uses
  %i.ax = getelementptr inbounds nuw [128 x i8], ptr %i.at, i64 %i.aw
  %i.ay = icmp eq ptr %i.ax, %i.am
  br i1 %i.ay, label %.thread.i, label %.lr.ph.i

.thread.i:                                        ; preds = %bb.i, %bb.g
  %.010.lcssa.i = phi i8 [ 0, %bb.g ], [ -16, %bb.i ]
  %i.az = phi i64 [ %i.aw, %bb.g ], [ %i.bk, %bb.i ]
  %i.ba = getelementptr inbounds nuw [128 x i8], ptr %i.at, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 14 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 2, !tbaa !573
  %i.bd = add i8 %i.bc, %.010.lcssa.i
  store i8 %i.bd, ptr %i.bb, align 2, !tbaa !573
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10eraseBlankENS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmE.exit

.lr.ph.i:                                         ; preds = %bb.g, %bb.i
  %i.be = phi i64 [ %i.bk, %bb.i ], [ %i.aw, %bb.g ]
  %.01126.i = phi i64 [ %i.bj, %bb.i ], [ %3, %bb.g ]
  %i.bf = getelementptr inbounds nuw [128 x i8], ptr %i.at, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 15 ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !591 ; 2 uses
  %.not.i17.i = icmp eq i8 %i.bh, -2
  br i1 %.not.i17.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.bi = add i8 %i.bh, -1
  store i8 %i.bi, ptr %i.bg, align 1, !tbaa !591
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i
  %i.bj = add i64 %i.as, %.01126.i                ; 2 uses
  %i.bk = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.bj, i64 range(i64 0, 256) %i.av) ; 3 uses
  %i.bl = getelementptr inbounds nuw [128 x i8], ptr %i.at, i64 %i.bk
  %i.bm = icmp eq ptr %i.bl, %i.am
  br i1 %i.bm, label %.thread.i, label %.lr.ph.i

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10eraseBlankENS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmE.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE8clearTagEm.exit.i, %.thread.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #24

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEElNS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_SM_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #1 comdat {
bb.a:
  %.sroa.4.i.i = alloca { ptr, i64 }, align 8     ; 4 uses
  %3 = alloca %struct.StringBufferRemapping, align 8 ; 4 uses
  %4 = alloca %struct.StringBufferRemapping, align 8 ; 4 uses
  %5 = alloca %struct.StringBufferRemapping, align 8 ; 4 uses
  %6 = alloca %struct.StringBufferRemapping, align 8 ; 4 uses
  %7 = alloca %struct.StringBufferRemapping, align 8 ; 4 uses
  %8 = alloca %struct.StringBufferRemapping, align 8 ; 4 uses
  %9 = alloca %struct.StringBufferRemapping, align 8 ; 4 uses
  %.sroa.4.i.i.i = alloca { ptr, i64 }, align 8   ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 384
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_SM_SM_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph50

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEET_SM_SM_T0_.exit
end_hunk_7
begin_hunk_8_@_ZN8facebook5velox10FlatVectorINS0_10StringViewEEC2EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSG_OSt6vectorISG_SaISG_EERKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESQ_SP_IbESQ_SQ_:bb.a
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ef
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !154
  %i.ei = and i64 %i.eh, %i.ee
  %i.ej = call range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.ei)
  %i.ek = trunc nuw nsw i64 %i.ej to i32
  %i.el = add nsw i32 %.1.i.i, %i.ek
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split.i.i.i, %._crit_edge.i.i.i
  %.3.i.i = phi i32 [ %i.el, %.sink.split.i.i.i ], [ %.1.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %.not26 = icmp eq i32 %.3.i.i, 0
  br i1 %.not26, label %.thread, label %bb.ac, !prof !569

bb.ac:                                            ; preds = %bb.ab
  %i.em = sext i32 %.3.i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27, !noalias !2029
  store i32 0, ptr %14, align 16, !tbaa !107, !alias.scope !2030, !noalias !2029
  %i.en = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i64 %i.em, ptr %i.en, align 16, !tbaa !107, !noalias !2029
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr nonnull @.str.164, i64 77, i64 65, ptr nonnull %14)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27, !noalias !2029
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10FlatVectorINS0_10StringViewEEC1EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSG_OSt6vectorISG_SaISG_EERKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESQ_SP_IbESQ_SQ_E18veloxCheckFailArgs_1, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr nonnull @.str.164) #42
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  unreachable

bb.af:                                            ; preds = %bb.ac
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.ag:                                            ; preds = %bb.ad
  %i.ep = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eq = load ptr, ptr %18, align 8, !tbaa !124  ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.es = icmp eq ptr %i.eq, %i.er
  br i1 %i.es, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ag
  %i.et = load i64, ptr %i.er, align 8, !tbaa !107
  %i.eu = add i64 %i.et, 1
  call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef %i.eu) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.af
  %.pn27 = phi { ptr, i32 } [ %i.ep, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.eo, %bb.af ], [ %i.ep, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  br label %bb.ap

.critedge:                                        ; preds = %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !320
  %i.ex = sext i32 %i.ew to i64
  %i.ey = shl nsw i64 %i.ex, 4                    ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !268 ; 2 uses
  %.not23 = icmp ult i64 %i.fa, %i.ey
  br i1 %.not23, label %bb.ah, label %bb.am, !prof !123

bb.ah:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27, !noalias !2031
  store i64 %i.fa, ptr %13, align 16, !tbaa !107, !alias.scope !2032, !noalias !2031
  %i.fb = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 %i.ey, ptr %i.fb, align 16, !tbaa !107, !alias.scope !2032, !noalias !2031
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr nonnull @.str.8, i64 11, i64 68, ptr nonnull %13)
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27, !noalias !2031
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10FlatVectorINS0_10StringViewEEC1EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSG_OSt6vectorISG_SaISG_EERKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESQ_SP_IbESQ_SQ_E18veloxCheckFailArgs_4, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr nonnull @.str.8) #42
          to label %bb.aj unwind label %bb.al

bb.aj:                                            ; preds = %bb.ai
  unreachable

bb.ak:                                            ; preds = %bb.ah
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

bb.al:                                            ; preds = %bb.ai
  %i.fd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fe = load ptr, ptr %19, align 8, !tbaa !124  ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.fg = icmp eq ptr %i.fe, %i.ff
  br i1 %i.fg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.al
  %i.fh = load i64, ptr %i.ff, align 8, !tbaa !107
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fi) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38, %bb.ak
  %.pn = phi { ptr, i32 } [ %i.fd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ], [ %i.fc, %bb.ak ], [ %i.fd, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  br label %bb.ap

bb.am:                                            ; preds = %.critedge
  %i.fj = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !269
  %i.fl = icmp ult i64 %i.fk, %i.ey
  br i1 %i.fl, label %bb.an, label %.thread

bb.an:                                            ; preds = %bb.am
  %i.fm = load ptr, ptr %i.bz, align 8, !tbaa !122
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8
  invoke void %i.fo(ptr noundef nonnull align 8 dereferenceable(64) %i.bz, i64 noundef %i.ey)
          to label %.thread unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

.thread:                                          ; preds = %bb.z, %bb.am, %bb.an, %bb.ab
  ret void

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.y, %bb.x
  %.pn30 = phi { ptr, i32 } [ %i.ce, %bb.y ], [ %i.cd, %bb.x ], [ %i.fp, %bb.ao ], [ %.pn27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ]
  call void @_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.aw) #27
  call void @_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.av) #27
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ao) #27
  call void @_ZN8facebook5velox12SimpleVectorINS0_10StringViewEED2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #27
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.w
  %.pn30.pn = phi { ptr, i32 } [ %.pn30, %bb.ap ], [ %i.cc, %bb.w ]
  resume { ptr, i32 } %.pn30.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_EUlimE_ZNS3_ISA_EEvSC_iibSD_EUliE_EEviiSD_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.544) align 8 %2, ptr noundef byval(%class.anon.545) align 8 %3) local_unnamed_addr #11 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !511, !range !130, !noundef !131
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !512
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !154
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = sext i32 %i.d to i64
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !2037
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 216
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !2038, !nonnull !131, !align !253
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ao, %bb.d ] ; 3 uses
  %i.ah = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !498
  %i.aj = or disjoint i64 %i.ah, %i.ad            ; 2 uses
  %i.ak = getelementptr inbounds [16 x i8], ptr %i.ai, i64 %i.aj
  %i.al = load ptr, ptr %i.ag, align 8, !tbaa !362
  %i.am = getelementptr inbounds [16 x i8], ptr %i.al, i64 %i.aj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i64 16, i1 false), !tbaa.struct !163
  %i.an = add nuw i64 %.011.i, 9223372036854775807
  %i.ao = and i64 %i.an, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ao, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !2033

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = sdiv i32 %0, 64                         ; 2 uses
  %i.aq = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.ar = zext nneg i32 %i.aq to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.ar
  %i.as = xor i64 %notmask.i.i35, -1
  %i.at = sub nsw i32 64, %i.aq
  %i.au = zext nneg i32 %i.at to i64
  %i.av = shl i64 %i.as, %i.au
  %i.aw = load i8, ptr %2, align 8, !tbaa !511, !range !130, !noundef !131
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !512
  %i.az = sext i32 %i.ap to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.az
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !154
  %i.bc = xor i8 %i.aw, 1
  %i.bd = zext nneg i8 %i.bc to i64
  %i.be = sub nsw i64 0, %i.bd
  %i.bf = xor i64 %i.bb, %i.be
  %i.bg = and i64 %i.bf, %i.av                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bg, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bi = shl nsw i32 %i.ap, 6
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bk = sext i32 %i.bi to i64
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !2037
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 216
  %i.bn = load ptr, ptr %i.bh, align 8, !tbaa !2038, !nonnull !131, !align !253
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bg, %.preheader.i37 ], [ %i.bv, %bb.g ] ; 3 uses
  %i.bo = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.bp = load ptr, ptr %i.bm, align 8, !tbaa !498
  %i.bq = or disjoint i64 %i.bo, %i.bk            ; 2 uses
  %i.br = getelementptr inbounds [16 x i8], ptr %i.bp, i64 %i.bq
  %i.bs = load ptr, ptr %i.bn, align 8, !tbaa !362
  %i.bt = getelementptr inbounds [16 x i8], ptr %i.bs, i64 %i.bq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(16) %i.br, i64 16, i1 false), !tbaa.struct !163
  %i.bu = add i64 %.011.i38, -1
  %i.bv = and i64 %i.bu, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.bv, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !2033

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.bw = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.bw, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %i.bx = load i8, ptr %3, align 8, !tbaa !514, !range !130, !noundef !131
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !515
  %i.ca = xor i8 %i.bx, 1
  %i.cb = zext nneg i8 %i.ca to i64
  %i.cc = sub nsw i64 0, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 216 ; 2 uses
  %i.ch = load ptr, ptr %i.cd, align 8, !nonnull !131, !align !253 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.l

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  %i.ci = phi i32 [ %i.bw, %.lr.ph ], [ %i.dj, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.ci, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %i.cj = sdiv i32 %.051, 64                      ; 3 uses
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.ck
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !154
  %i.cn = xor i64 %i.cm, %i.cc                    ; 2 uses
  switch i64 %i.cn, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.co = shl nsw i32 %i.cj, 6
  %i.cp = sext i32 %i.co to i64
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.cq = shl nsw i32 %i.cj, 6                    ; 2 uses
  %i.cr = add nuw i32 %i.cq, 64
  %i.cs = sext i32 %i.cr to i64
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %.lr.ph21.i

.lr.ph21.i:                                       ; preds = %bb.i
  %i.ct = sext i32 %i.cq to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph21.i
  %.020.i = phi i64 [ %i.ct, %.lr.ph21.i ], [ %i.cz, %bb.j ] ; 2 uses
  %i.cu = load ptr, ptr %i.cg, align 8, !tbaa !498
  %sext.i = shl i64 %.020.i, 32
  %i.cv = ashr exact i64 %sext.i, 32              ; 2 uses
  %i.cw = getelementptr inbounds [16 x i8], ptr %i.cu, i64 %i.cv
  %i.cx = load ptr, ptr %i.ch, align 8, !tbaa !362
  %i.cy = getelementptr inbounds [16 x i8], ptr %i.cx, i64 %i.cv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, ptr noundef nonnull align 8 dereferenceable(16) %i.cw, i64 16, i1 false), !tbaa.struct !163
  %i.cz = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.da = icmp ult i64 %i.cz, %i.cs
  br i1 %i.da, label %bb.j, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, !llvm.loop !2034

bb.k:                                             ; preds = %bb.k, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cn, %.lr.ph.i ], [ %i.di, %bb.k ] ; 3 uses
  %i.db = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.dc = load ptr, ptr %i.cg, align 8, !tbaa !498
  %i.dd = or disjoint i64 %i.db, %i.cp            ; 2 uses
  %i.de = getelementptr inbounds [16 x i8], ptr %i.dc, i64 %i.dd
  %i.df = load ptr, ptr %i.ch, align 8, !tbaa !362
  %i.dg = getelementptr inbounds [16 x i8], ptr %i.df, i64 %i.dd
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dg, ptr noundef nonnull align 8 dereferenceable(16) %i.de, i64 16, i1 false), !tbaa.struct !163
  %i.dh = add i64 %.01519.i, -1
  %i.di = and i64 %i.dh, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.di, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %bb.k, !llvm.loop !2035

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit: ; preds = %bb.j, %bb.k, %bb.h, %bb.i
  %i.dj = add nsw i32 %i.ci, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.dj, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !2036

bb.l:                                             ; preds = %._crit_edge
  %i.dk = ashr i32 %1, 6
  %i.dl = and i32 %1, 63
  %i.dm = zext nneg i32 %i.dl to i64
  %notmask.i42 = shl nsw i64 -1, %i.dm
  %i.dn = xor i64 %notmask.i42, -1
  %i.do = load i8, ptr %2, align 8, !tbaa !511, !range !130, !noundef !131
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !512
  %i.dr = sext i32 %i.dk to i64
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.dq, i64 %i.dr
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !154
  %i.du = xor i8 %i.do, 1
  %i.dv = zext nneg i8 %i.du to i64
  %i.dw = sub nsw i64 0, %i.dv
  %i.dx = xor i64 %i.dt, %i.dw
  %i.dy = and i64 %i.dx, %i.dn                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.dy, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.l
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.eb = sext i32 %i.d to i64
  %i.ec = load ptr, ptr %i.ea, align 8, !tbaa !2037
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 216
  %i.ee = load ptr, ptr %i.dz, align 8, !tbaa !2038, !nonnull !131, !align !253
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.preheader.i44
  %.011.i45 = phi i64 [ %i.dy, %.preheader.i44 ], [ %i.em, %bb.m ] ; 3 uses
  %i.ef = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.eg = load ptr, ptr %i.ed, align 8, !tbaa !498
  %i.eh = or disjoint i64 %i.ef, %i.eb            ; 2 uses
  %i.ei = getelementptr inbounds [16 x i8], ptr %i.eg, i64 %i.eh
  %i.ej = load ptr, ptr %i.ee, align 8, !tbaa !362
  %i.ek = getelementptr inbounds [16 x i8], ptr %i.ej, i64 %i.eh
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ek, ptr noundef nonnull align 8 dereferenceable(16) %i.ei, i64 16, i1 false), !tbaa.struct !163
  %i.el = add nuw i64 %.011.i45, 9223372036854775807
  %i.em = and i64 %i.el, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.em, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.m, !llvm.loop !2033

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit: ; preds = %bb.m, %bb.d, %bb.l, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt10_ConstructIN8facebook5velox10FlatVectorINS1_10StringViewEEEJPNS1_6memory10MemoryPoolESt10shared_ptrIKNS1_10ScalarTypeILNS1_8TypeKindE7EEEEDniRKN5boost13intrusive_ptrINS1_6BufferEEESt6vectorISH_SaISH_EEEEvPT_DpOT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::shared_ptr.102", align 16 ; 7 uses
  %8 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %9 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %10 = alloca %"struct.facebook::velox::SimpleVectorStats", align 8 ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !302
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load <2 x ptr>, ptr %2, align 8, !tbaa !115
  store ptr null, ptr %i.c, align 8, !tbaa !114
  store <2 x ptr> %i.d, ptr %7, align 16, !tbaa !115
  store ptr null, ptr %2, align 8, !tbaa !210
  store ptr null, ptr %8, align 8, !tbaa !311
  %i.e = load i32, ptr %4, align 4, !tbaa !116
  %i.f = load ptr, ptr %5, align 8, !tbaa !311    ; 3 uses
  store ptr %i.f, ptr %9, align 8, !tbaa !311
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = atomicrmw add ptr %i.g, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i8 0, ptr %i.i, align 8, !tbaa !324
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i8 0, ptr %i.j, align 8, !tbaa !324
  invoke void @_ZN8facebook5velox10FlatVectorINS0_10StringViewEEC2EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSG_OSt6vectorISG_SaISG_EERKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESQ_SP_IbESQ_SQ_(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef %i.a, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 %8, i32 noundef %i.e, ptr noundef nonnull align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(48) %10, i64 0, i64 0, i16 0, i64 0, i64 0)
          to label %bb.c unwind label %bb.n

bb.c:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  %i.k = load ptr, ptr %9, align 8, !tbaa !311    ; 7 uses
  %.not.i7 = icmp eq ptr %i.k, null
  br i1 %.not.i7, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = atomicrmw sub ptr %i.l, i32 1 acq_rel, align 4
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.d
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !122
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.q = load ptr, ptr %i.p, align 8
  invoke void %i.q(ptr noundef nonnull align 8 dereferenceable(64) %i.k)
          to label %.noexc.i unwind label %bb.e, !inline_history !10

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !321
  %.not.i.i = icmp eq ptr %i.s, null
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !122
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %..i.i
  %i.v = load ptr, ptr %i.u, align 8
  invoke void %i.v(ptr noundef nonnull align 8 dereferenceable(64) %i.k)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.e, !inline_history !10

bb.e:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #41
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.c, %bb.d, %.noexc.i
  %i.y = load ptr, ptr %8, align 8, !tbaa !311    ; 7 uses
  %.not.i8 = icmp eq ptr %i.y, null
  br i1 %.not.i8, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13, label %bb.f

bb.f:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.aa = atomicrmw sub ptr %i.z, i32 1 acq_rel, align 4
  %i.ab = icmp eq i32 %i.aa, 1
  br i1 %i.ab, label %.sink.split.i.i9, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13

.sink.split.i.i9:                                 ; preds = %bb.f
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !122
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.ae = load ptr, ptr %i.ad, align 8
  invoke void %i.ae(ptr noundef nonnull align 8 dereferenceable(64) %i.y)
          to label %.noexc.i10 unwind label %bb.g, !inline_history !10

.noexc.i10:                                       ; preds = %.sink.split.i.i9
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !321
  %.not.i.i11 = icmp eq ptr %i.ag, null
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !122
  %..i.i12 = select i1 %.not.i.i11, i64 8, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %..i.i12
  %i.aj = load ptr, ptr %i.ai, align 8
  invoke void %i.aj(ptr noundef nonnull align 8 dereferenceable(64) %i.y)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13 unwind label %bb.g, !inline_history !10

bb.g:                                             ; preds = %.noexc.i10, %.sink.split.i.i9
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #41
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.f, %.noexc.i10
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !114 ; 8 uses
  %.not.i.i14 = icmp eq ptr %i.am, null
  br i1 %.not.i.i14, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 4 uses
  %i.ao = load atomic i64, ptr %i.an acquire, align 8 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 4294967297
  %i.aq = trunc i64 %i.ao to i32                  ; 2 uses
  br i1 %i.ap, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.an, align 8, !tbaa !119
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  store i32 0, ptr %i.ar, align 4, !tbaa !120
  %i.as = load ptr, ptr %i.am, align 8, !tbaa !122
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #27, !inline_history !6
  %i.av = load ptr, ptr %i.am, align 8, !tbaa !122
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #27, !inline_history !6
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ay = load i8, ptr @__libc_single_threaded, align 1, !tbaa !107
  %.not.i.i.i = icmp eq i8 %i.ay, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = add nsw i32 %i.aq, -1
  store i32 %i.az, ptr %i.an, align 8, !tbaa !116
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ba = atomicrmw volatile add ptr %i.an, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.aq, %bb.k ], [ %i.ba, %bb.l ]
  %i.bb = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bb, label %bb.m, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !123

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #27
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  ret void

bb.n:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #27
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #27
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  resume { ptr, i32 } %i.bc
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt10_ConstructIN8facebook5velox10FlatVectorINS1_10StringViewEEEJPNS1_6memory10MemoryPoolESt10shared_ptrIKNS1_10ScalarTypeILNS1_8TypeKindE7EEEEDniN5boost13intrusive_ptrINS1_6BufferEEESt6vectorISH_SaISH_EEEEvPT_DpOT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::shared_ptr.102", align 16 ; 7 uses
  %8 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %9 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %10 = alloca %"struct.facebook::velox::SimpleVectorStats", align 8 ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !302
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load <2 x ptr>, ptr %2, align 8, !tbaa !115
  store ptr null, ptr %i.c, align 8, !tbaa !114
  store <2 x ptr> %i.d, ptr %7, align 16, !tbaa !115
  store ptr null, ptr %2, align 8, !tbaa !210
  store ptr null, ptr %8, align 8, !tbaa !311
  %i.e = load i32, ptr %4, align 4, !tbaa !116
  %i.f = load ptr, ptr %5, align 8, !tbaa !311
  store ptr %i.f, ptr %9, align 8, !tbaa !311
end_hunk_8
