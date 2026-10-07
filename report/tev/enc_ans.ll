Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_ans?download=true
inline.NumInlined: 3179
inline.NumDeleted: 1812
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN3jxl11WriteTokensERKNSt3__16vectorINS_5TokenENS0_9allocatorIS2_EEEERKNS_19EntropyEncodingDataEmPNS_9BitWriterE:bb.a
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cy = load i8, ptr %i.cx, align 8, !tbaa !138, !range !77, !noundef !78
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEE7reserveEm.exit
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !89
  %i.dd = load ptr, ptr %i.da, align 8, !tbaa !86
  %i.de = ptrtoint ptr %i.dc to i64
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = sub i64 %i.de, %i.df
  %i.dh = icmp ugt i64 %i.dg, 1
  br i1 %i.dh, label %bb.o, label %.preheader

.preheader:                                       ; preds = %bb.n
  %i.di = icmp sgt i32 %i.cw, 0
  br i1 %i.di, label %.lr.ph, label %.loopexit197

.lr.ph:                                           ; preds = %.preheader
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dk = and i64 %.pre-phi252, 2147483647
  br label %bb.z

bb.o:                                             ; preds = %bb.n, %_ZNSt3__16vectorIhNS_9allocatorIhEEE7reserveEm.exit
  %i.dl = icmp sgt i32 %i.cw, 0
  br i1 %i.dl, label %.lr.ph211, label %.loopexit197

.lr.ph211:                                        ; preds = %bb.o
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.dq = and i64 %.pre-phi252, 2147483647
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph211, %"_ZZN3jxl11WriteTokensERKNSt3__16vectorINS_5TokenENS0_9allocatorIS2_EEEERKNS_19EntropyEncodingDataEmPNS_9BitWriterEENK3$_0clEmm.exit98"
  %i.dr = phi i64 [ 0, %.lr.ph211 ], [ %i.hg, %"_ZZN3jxl11WriteTokensERKNSt3__16vectorINS_5TokenENS0_9allocatorIS2_EEEERKNS_19EntropyEncodingDataEmPNS_9BitWriterEENK3$_0clEmm.exit98" ] ; 2 uses
  %indvars.iv233 = phi i64 [ %i.dq, %.lr.ph211 ], [ %indvars.iv.next234, %"_ZZN3jxl11WriteTokensERKNSt3__16vectorINS_5TokenENS0_9allocatorIS2_EEEERKNS_19EntropyEncodingDataEmPNS_9BitWriterEENK3$_0clEmm.exit98" ] ; 2 uses
  %.1209 = phi i64 [ 0, %.lr.ph211 ], [ %i.gb, %"_ZZN3jxl11WriteTokensERKNSt3__16vectorINS_5TokenENS0_9allocatorIS2_EEEERKNS_19EntropyEncodingDataEmPNS_9BitWriterEENK3$_0clEmm.exit98" ]
  %.sroa.0.0208 = phi i32 [ 1245184, %.lr.ph211 ], [ %i.gx, %"_ZZN3jxl11WriteTokensERKNSt3__16vectorINS_5TokenENS0_9allocatorIS2_EEEERKNS_19EntropyEncodingDataEmPNS_9BitWriterEENK3$_0clEmm.exit98" ] ; 4 uses
  %.0188207 = phi i64 [ 0, %.lr.ph211 ], [ %.6, %"_ZZN3jxl11WriteTokensERKNSt3__16vectorINS_5TokenENS0_9allocatorIS2_EEEERKNS_19EntropyEncodingDataEmPNS_9BitWriterEENK3$_0clEmm.exit98" ] ; 4 uses
  %indvars.iv.next234 = add nsw i64 %indvars.iv233, -1 ; 2 uses
  %i.ds = load ptr, ptr %0, align 8, !tbaa !155
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv.next234 ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %i.dt, align 4, !tbaa !88 ; 2 uses
  %i.du = lshr i32 %.sroa.0.0.copyload, 1
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = load ptr, ptr %i.dm, align 8, !tbaa !86
  %i.dx = getelementptr i8, ptr %i.dw, i64 %2
  %i.dy = getelementptr i8, ptr %i.dx, i64 %i.dv
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !88  ; 2 uses
  %i.ea = and i32 %.sroa.0.0.copyload, 1
  %.not = icmp eq i32 %i.ea, 0                    ; 2 uses
  br i1 %.not, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.eb = zext i8 %i.dz to i64
  %i.ec = load ptr, ptr %i.do, align 8, !tbaa !21
  %i.ed = getelementptr inbounds nuw [16 x i8], ptr %i.ec, i64 %i.eb
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.ee = phi ptr [ %i.ed, %bb.q ], [ %i.dn, %bb.p ] ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !158 ; 5 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !160, !noalias !324 ; 2 uses
  %i.ej = icmp ult i32 %i.eg, %i.ei
  br i1 %i.ej, label %_ZNK3jxl16HybridUintConfig6EncodeEjPjS1_S1_.exit79, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ek = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.eg, i1 true) ; 2 uses
  %i.el = xor i32 %i.ek, 31                       ; 3 uses
  %.neg.i75 = ashr exact i32 -2147483648, %i.ek
  %i.em = add i32 %.neg.i75, %i.eg                ; 2 uses
  %i.en = load i32, ptr %i.ee, align 4, !tbaa !162, !noalias !324
  %i.eo = sub i32 %i.el, %i.en
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !163, !noalias !324 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ee, i64 12
  %i.es = load i32, ptr %i.er, align 4, !tbaa !161, !noalias !324 ; 4 uses
  %i.et = add i32 %i.es, %i.eq                    ; 2 uses
  %i.eu = shl i32 %i.eo, %i.et
  %i.ev = add i32 %i.eu, %i.ei
  %i.ew = sub i32 %i.el, %i.eq
  %i.ex = lshr i32 %i.em, %i.ew
  %i.ey = shl i32 %i.ex, %i.es
  %i.ez = add i32 %i.ev, %i.ey
  %notmask.i76 = shl nsw i32 -1, %i.es
  %i.fa = xor i32 %notmask.i76, -1
  %i.fb = and i32 %i.em, %i.fa
  %i.fc = add i32 %i.ez, %i.fb
  %i.fd = sub i32 %i.el, %i.et
  %i.fe = lshr i32 %i.eg, %i.es
  %i.ff = zext i32 %i.fd to i64                   ; 2 uses
  %notmask18.i77 = shl nsw i64 -1, %i.ff
  %i.fg = trunc i64 %notmask18.i77 to i32
  %i.fh = xor i32 %i.fg, -1
  %i.fi = and i32 %i.fe, %i.fh
  %i.fj = zext i32 %i.fi to i64
  br label %_ZNK3jxl16HybridUintConfig6EncodeEjPjS1_S1_.exit79

_ZNK3jxl16HybridUintConfig6EncodeEjPjS1_S1_.exit79: ; preds = %bb.r, %bb.s
  %.0173 = phi i32 [ %i.fc, %bb.s ], [ %i.eg, %bb.r ]
  %.0172 = phi i64 [ %i.ff, %bb.s ], [ 0, %bb.r ] ; 5 uses
  %storemerge.i78 = phi i64 [ %i.fj, %bb.s ], [ 0, %bb.r ]
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZNK3jxl16HybridUintConfig6EncodeEjPjS1_S1_.exit79
  %i.fk = load i32, ptr %i.dp, align 4, !tbaa !159
  br label %bb.u

bb.u:                                             ; preds = %_ZNK3jxl16HybridUintConfig6EncodeEjPjS1_S1_.exit79, %bb.t
  %i.fl = phi i32 [ %i.fk, %bb.t ], [ 0, %_ZNK3jxl16HybridUintConfig6EncodeEjPjS1_S1_.exit79 ]
  %i.fm = add i32 %i.fl, %.0173
  %i.fn = zext i8 %i.dz to i64
  %i.fo = load ptr, ptr %1, align 8, !tbaa !166
  %i.fp = getelementptr inbounds nuw [24 x i8], ptr %i.fo, i64 %i.fn
  %i.fq = zext i32 %i.fm to i64
  %i.fr = load ptr, ptr %i.fp, align 8, !tbaa !62
  %i.fs = getelementptr inbounds nuw [48 x i8], ptr %i.fr, i64 %i.fq ; 3 uses
  %.not.i = icmp eq i64 %.0172, 0
  br i1 %.not.i, label %"_ZZN3jxl11WriteTokensERKNSt3__16vectorINS_5TokenENS0_9allocatorIS2_EEEERKNS_19EntropyEncodingDataEmPNS_9BitWriterEENK3$_0clEmm.exit", label %bb.v, !prof !325

bb.v:                                             ; preds = %bb.u
  %i.ft = add i64 %.0172, %.0188207
  %i.fu = icmp ugt i64 %i.ft, 56
  br i1 %i.fu, label %bb.w, label %._crit_edge.i, !prof !326

bb.w:                                             ; preds = %bb.v
  call void @_ZNSt3__16vectorImNS_9allocatorImEEE9push_backB8nn180100ERKm(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.e) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  %i.fv = trunc i64 %.0188207 to i8
  store i8 %i.fv, ptr %i.d, align 1, !tbaa !88
  call void @_ZNSt3__16vectorIhNS_9allocatorIhEEE9push_backB8nn180100EOh(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 1 dereferenceable(1) %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.v, %bb.w
  %i.fw = phi i64 [ 0, %bb.w ], [ %i.dr, %bb.v ]
  %.3191 = phi i64 [ 0, %bb.w ], [ %.0188207, %bb.v ]
  %i.fx = shl i64 %i.fw, %.0172
  %i.fy = or i64 %i.fx, %storemerge.i78           ; 2 uses
  store i64 %i.fy, ptr %i.e, align 8, !tbaa !49
  %i.fz = add i64 %.3191, %.0172
  br label %"_ZZN3jxl11WriteTokensERKNSt3__16vectorINS_5TokenENS0_9allocatorIS2_EEEERKNS_19EntropyEncodingDataEmPNS_9BitWriterEENK3$_0clEmm.exit"

"_ZZN3jxl11WriteTokensERKNSt3__16vectorINS_5TokenENS0_9allocatorIS2_EEEERKNS_19EntropyEncodingDataEmPNS_9BitWriterEENK3$_0clEmm.exit": ; preds = %bb.u, %._crit_edge.i
  %i.ga = phi i64 [ %i.dr, %bb.u ], [ %i.fy, %._crit_edge.i ] ; 2 uses
  %.4 = phi i64 [ %.0188207, %bb.u ], [ %i.fz, %._crit_edge.i ] ; 4 uses
  %i.gb = add i64 %.0172, %.1209                  ; 2 uses
  %i.gc = lshr i32 %.sroa.0.0208, 20
  %i.gd = load i16, ptr %i.fs, align 8, !tbaa !126
  %i.ge = zext i16 %i.gd to i32                   ; 2 uses
  %.not.i92 = icmp samesign ult i32 %i.gc, %i.ge  ; 3 uses
  %i.gf = and i32 %.sroa.0.0208, 65535
  %i.gg = lshr i32 %.sroa.0.0208, 16
  %i.gh = select i1 %.not.i92, i32 %.sroa.0.0208, i32 %i.gg ; 2 uses
  %.0.i = select i1 %.not.i92, i32 0, i32 %i.gf
  %i.gi = zext i32 %i.gh to i64
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fs, i64 32
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !127
  %i.gl = mul i64 %i.gk, %i.gi
  %i.gm = lshr i64 %i.gl, 44
  %i.gn = trunc nuw nsw i64 %i.gm to i32          ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.gp = mul i32 %i.gn, %i.ge
  %i.gq = sub i32 %i.gh, %i.gp
  %i.gr = zext i32 %i.gq to i64
  %i.gs = load ptr, ptr %i.go, align 8, !tbaa !94
  %i.gt = getelementptr inbounds nuw [2 x i8], ptr %i.gs, i64 %i.gr
  %i.gu = load i16, ptr %i.gt, align 2, !tbaa !97
  %i.gv = zext i16 %i.gu to i32
  %i.gw = shl nuw i32 %i.gn, 12
  %i.gx = add i32 %i.gw, %i.gv                    ; 2 uses
  %i.gy = zext nneg i32 %.0.i to i64
  br i1 %.not.i92, label %"_ZZN3jxl11WriteTokensERKNSt3__16vectorINS_5TokenENS0_9allocatorIS2_EEEERKNS_19EntropyEncodingDataEmPNS_9BitWriterEENK3$_0clEmm.exit98", label %bb.x, !prof !325

bb.x:                                             ; preds = %"_ZZN3jxl11WriteTokensERKNSt3__16vectorINS_5TokenENS0_9allocatorIS2_EEEERKNS_19EntropyEncodingDataEmPNS_9BitWriterEENK3$_0clEmm.exit"
  %i.gz = add i64 %.4, -41
  %i.ha = icmp ult i64 %i.gz, -57
  br i1 %i.ha, label %bb.y, label %._crit_edge.i95, !prof !326

bb.y:                                             ; preds = %bb.x
  call void @_ZNSt3__16vectorImNS_9allocatorImEEE9push_backB8nn180100ERKm(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.e) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  %i.hb = trunc i64 %.4 to i8
  store i8 %i.hb, ptr %i.c, align 1, !tbaa !88
  call void @_ZNSt3__16vectorIhNS_9allocatorIhEEE9push_backB8nn180100EOh(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 1 dereferenceable(1) %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  br label %._crit_edge.i95

._crit_edge.i95:                                  ; preds = %bb.x, %bb.y
  %i.hc = phi i64 [ 0, %bb.y ], [ %i.ga, %bb.x ]
  %.5 = phi i64 [ 0, %bb.y ], [ %.4, %bb.x ]
  %i.hd = shl i64 %i.hc, 16
  %i.he = or disjoint i64 %i.hd, %i.gy            ; 2 uses
  store i64 %i.he, ptr %i.e, align 8, !tbaa !49
  %i.hf = add i64 %.5, 16
  br label %"_ZZN3jxl11WriteTokensERKNSt3__16vectorINS_5TokenENS0_9allocatorIS2_EEEERKNS_19EntropyEncodingDataEmPNS_9BitWriterEENK3$_0clEmm.exit98"

"_ZZN3jxl11WriteTokensERKNSt3__16vectorINS_5TokenENS0_9allocatorIS2_EEEERKNS_19EntropyEncodingDataEmPNS_9BitWriterEENK3$_0clEmm.exit98": ; preds = %"_ZZN3jxl11WriteTokensERKNSt3__16vectorINS_5TokenENS0_9allocatorIS2_EEEERKNS_19EntropyEncodingDataEmPNS_9BitWriterEENK3$_0clEmm.exit", %._crit_edge.i95
  %i.hg = phi i64 [ %i.ga, %"_ZZN3jxl11WriteTokensERKNSt3__16vectorINS_5TokenENS0_9allocatorIS2_EEEERKNS_19EntropyEncodingDataEmPNS_9BitWriterEENK3$_0clEmm.exit" ], [ %i.he, %._crit_edge.i95 ]
  %.6 = phi i64 [ %.4, %"_ZZN3jxl11WriteTokensERKNSt3__16vectorINS_5TokenENS0_9allocatorIS2_EEEERKNS_19EntropyEncodingDataEmPNS_9BitWriterEENK3$_0clEmm.exit" ], [ %i.hf, %._crit_edge.i95 ] ; 2 uses
  %i.hh = icmp samesign ugt i64 %indvars.iv233, 1
  br i1 %i.hh, label %bb.p, label %.loopexit197, !llvm.loop !316

bb.z:                                             ; preds = %.lr.ph, %"_ZZN3jxl11WriteTokensERKNSt3__16vectorINS_5TokenENS0_9allocatorIS2_EEEERKNS_19EntropyEncodingDataEmPNS_9BitWriterEENK3$_0clEmm.exit115"
  %i.hi = phi i64 [ 0, %.lr.ph ], [ %i.ko, %"_ZZN3jxl11WriteTokensERKNSt3__16vectorINS_5TokenENS0_9allocatorIS2_EEEERKNS_19EntropyEncodingDataEmPNS_9BitWriterEENK3$_0clEmm.exit115" ] ; 3 uses
  %indvars.iv = phi i64 [ %i.dk, %.lr.ph ], [ %indvars.iv.next, %"_ZZN3jxl11WriteTokensERKNSt3__16vectorINS_5TokenENS0_9allocatorIS2_EEEERKNS_19EntropyEncodingDataEmPNS_9BitWriterEENK3$_0clEmm.exit115" ] ; 2 uses
  %.2203 = phi i64 [ 0, %.lr.ph ], [ %i.jj, %"_ZZN3jxl11WriteTokensERKNSt3__16vectorINS_5TokenENS0_9allocatorIS2_EEEERKNS_19EntropyEncodingDataEmPNS_9BitWriterEENK3$_0clEmm.exit115" ]
  %.sroa.0.1201 = phi i32 [ 1245184, %.lr.ph ], [ %i.kf, %"_ZZN3jxl11WriteTokensERKNSt3__16vectorINS_5TokenENS0_9allocatorIS2_EEEERKNS_19EntropyEncodingDataEmPNS_9BitWriterEENK3$_0clEmm.exit115" ] ; 4 uses
  %.1189200 = phi i64 [ 0, %.lr.ph ], [ %.10, %"_ZZN3jxl11WriteTokensERKNSt3__16vectorINS_5TokenENS0_9allocatorIS2_EEEERKNS_19EntropyEncodingDataEmPNS_9BitWriterEENK3$_0clEmm.exit115" ] ; 5 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.hj = load ptr, ptr %i.dj, align 8, !tbaa !21 ; 4 uses
  %i.hk = load ptr, ptr %0, align 8, !tbaa !155
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %indvars.iv.next
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 4
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !158 ; 5 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hj, i64 4
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !160, !noalias !327 ; 2 uses
  %i.hq = icmp ult i32 %i.hn, %i.hp
  br i1 %i.hq, label %_ZNK3jxl16HybridUintConfig6EncodeEjPjS1_S1_.exit.thread, label %_ZNK3jxl16HybridUintConfig6EncodeEjPjS1_S1_.exit

_ZNK3jxl16HybridUintConfig6EncodeEjPjS1_S1_.exit.thread: ; preds = %bb.z
  %i.hr = load ptr, ptr %1, align 8, !tbaa !166
  %i.hs = zext i32 %i.hn to i64
  %i.ht = load ptr, ptr %i.hr, align 8, !tbaa !62
  %i.hu = getelementptr inbounds nuw [48 x i8], ptr %i.ht, i64 %i.hs
  br label %"_ZZN3jxl11WriteTokensERKNSt3__16vectorINS_5TokenENS0_9allocatorIS2_EEEERKNS_19EntropyEncodingDataEmPNS_9BitWriterEENK3$_0clEmm.exit103"

_ZNK3jxl16HybridUintConfig6EncodeEjPjS1_S1_.exit: ; preds = %bb.z
  %i.hv = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.hn, i1 true) ; 2 uses
  %i.hw = xor i32 %i.hv, 31                       ; 4 uses
  %.neg.i = ashr exact i32 -2147483648, %i.hv
  %i.hx = add i32 %.neg.i, %i.hn                  ; 2 uses
  %i.hy = load i32, ptr %i.hj, align 4, !tbaa !162, !noalias !327
  %i.hz = sub i32 %i.hw, %i.hy
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !163, !noalias !327 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hj, i64 12
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !161, !noalias !327 ; 4 uses
  %i.ie = add i32 %i.id, %i.ib                    ; 3 uses
  %i.if = shl i32 %i.hz, %i.ie
  %i.ig = add i32 %i.if, %i.hp
  %i.ih = sub i32 %i.hw, %i.ib
  %i.ii = lshr i32 %i.hx, %i.ih
  %i.ij = shl i32 %i.ii, %i.id
  %i.ik = add i32 %i.ig, %i.ij
  %notmask.i = shl nsw i32 -1, %i.id
  %i.il = xor i32 %notmask.i, -1
  %i.im = and i32 %i.hx, %i.il
  %i.in = add i32 %i.ik, %i.im
  %i.io = sub i32 %i.hw, %i.ie
  %i.ip = lshr i32 %i.hn, %i.id
  %i.iq = zext i32 %i.io to i64                   ; 5 uses
  %notmask18.i = shl nsw i64 -1, %i.iq
  %i.ir = trunc i64 %notmask18.i to i32
  %i.is = xor i32 %i.ir, -1
  %i.it = and i32 %i.ip, %i.is
  %i.iu = load ptr, ptr %1, align 8, !tbaa !166
  %i.iv = zext i32 %i.in to i64
  %i.iw = load ptr, ptr %i.iu, align 8, !tbaa !62
  %i.ix = getelementptr inbounds nuw [48 x i8], ptr %i.iw, i64 %i.iv ; 2 uses
  %i.iy = zext i32 %i.it to i64
  %.not.i99 = icmp eq i32 %i.hw, %i.ie
  br i1 %.not.i99, label %"_ZZN3jxl11WriteTokensERKNSt3__16vectorINS_5TokenENS0_9allocatorIS2_EEEERKNS_19EntropyEncodingDataEmPNS_9BitWriterEENK3$_0clEmm.exit103", label %bb.aa, !prof !328

bb.aa:                                            ; preds = %_ZNK3jxl16HybridUintConfig6EncodeEjPjS1_S1_.exit
  %i.iz = add i64 %.1189200, %i.iq
  %i.ja = icmp ugt i64 %i.iz, 56
  br i1 %i.ja, label %bb.ab, label %._crit_edge.i100, !prof !326

bb.ab:                                            ; preds = %bb.aa
  call void @_ZNSt3__16vectorImNS_9allocatorImEEE9push_backB8nn180100ERKm(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.e) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.jb = trunc i64 %.1189200 to i8
  store i8 %i.jb, ptr %i.b, align 1, !tbaa !88
  call void @_ZNSt3__16vectorIhNS_9allocatorIhEEE9push_backB8nn180100EOh(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 1 dereferenceable(1) %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %._crit_edge.i100

._crit_edge.i100:                                 ; preds = %bb.aa, %bb.ab
  %i.jc = phi i64 [ 0, %bb.ab ], [ %i.hi, %bb.aa ]
  %.7 = phi i64 [ 0, %bb.ab ], [ %.1189200, %bb.aa ]
  %i.jd = shl i64 %i.jc, %i.iq
  %i.je = or i64 %i.jd, %i.iy                     ; 2 uses
  store i64 %i.je, ptr %i.e, align 8, !tbaa !49
  %i.jf = add i64 %.7, %i.iq
  br label %"_ZZN3jxl11WriteTokensERKNSt3__16vectorINS_5TokenENS0_9allocatorIS2_EEEERKNS_19EntropyEncodingDataEmPNS_9BitWriterEENK3$_0clEmm.exit103"

"_ZZN3jxl11WriteTokensERKNSt3__16vectorINS_5TokenENS0_9allocatorIS2_EEEERKNS_19EntropyEncodingDataEmPNS_9BitWriterEENK3$_0clEmm.exit103": ; preds = %_ZNK3jxl16HybridUintConfig6EncodeEjPjS1_S1_.exit.thread, %_ZNK3jxl16HybridUintConfig6EncodeEjPjS1_S1_.exit, %._crit_edge.i100
  %i.jg = phi i64 [ %i.hi, %_ZNK3jxl16HybridUintConfig6EncodeEjPjS1_S1_.exit ], [ %i.je, %._crit_edge.i100 ], [ %i.hi, %_ZNK3jxl16HybridUintConfig6EncodeEjPjS1_S1_.exit.thread ] ; 2 uses
  %i.jh = phi i64 [ 0, %_ZNK3jxl16HybridUintConfig6EncodeEjPjS1_S1_.exit ], [ %i.iq, %._crit_edge.i100 ], [ 0, %_ZNK3jxl16HybridUintConfig6EncodeEjPjS1_S1_.exit.thread ]
  %i.ji = phi ptr [ %i.ix, %_ZNK3jxl16HybridUintConfig6EncodeEjPjS1_S1_.exit ], [ %i.ix, %._crit_edge.i100 ], [ %i.hu, %_ZNK3jxl16HybridUintConfig6EncodeEjPjS1_S1_.exit.thread ] ; 3 uses
  %.8 = phi i64 [ %.1189200, %_ZNK3jxl16HybridUintConfig6EncodeEjPjS1_S1_.exit ], [ %i.jf, %._crit_edge.i100 ], [ %.1189200, %_ZNK3jxl16HybridUintConfig6EncodeEjPjS1_S1_.exit.thread ] ; 4 uses
  %i.jj = add i64 %i.jh, %.2203                   ; 2 uses
  %i.jk = lshr i32 %.sroa.0.1201, 20
  %i.jl = load i16, ptr %i.ji, align 8, !tbaa !126
  %i.jm = zext i16 %i.jl to i32                   ; 2 uses
  %.not.i104 = icmp samesign ult i32 %i.jk, %i.jm ; 3 uses
  %i.jn = and i32 %.sroa.0.1201, 65535
  %i.jo = lshr i32 %.sroa.0.1201, 16
  %i.jp = select i1 %.not.i104, i32 %.sroa.0.1201, i32 %i.jo ; 2 uses
  %.0.i109 = select i1 %.not.i104, i32 0, i32 %i.jn
  %i.jq = zext i32 %i.jp to i64
  %i.jr = getelementptr inbounds nuw i8, ptr %i.ji, i64 32
  %i.js = load i64, ptr %i.jr, align 8, !tbaa !127
  %i.jt = mul i64 %i.js, %i.jq
  %i.ju = lshr i64 %i.jt, 44
  %i.jv = trunc nuw nsw i64 %i.ju to i32          ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.jx = mul i32 %i.jv, %i.jm
  %i.jy = sub i32 %i.jp, %i.jx
  %i.jz = zext i32 %i.jy to i64
  %i.ka = load ptr, ptr %i.jw, align 8, !tbaa !94
  %i.kb = getelementptr inbounds nuw [2 x i8], ptr %i.ka, i64 %i.jz
  %i.kc = load i16, ptr %i.kb, align 2, !tbaa !97
  %i.kd = zext i16 %i.kc to i32
  %i.ke = shl nuw i32 %i.jv, 12
  %i.kf = add i32 %i.ke, %i.kd                    ; 2 uses
  %i.kg = zext nneg i32 %.0.i109 to i64
  br i1 %.not.i104, label %"_ZZN3jxl11WriteTokensERKNSt3__16vectorINS_5TokenENS0_9allocatorIS2_EEEERKNS_19EntropyEncodingDataEmPNS_9BitWriterEENK3$_0clEmm.exit115", label %bb.ac, !prof !325

bb.ac:                                            ; preds = %"_ZZN3jxl11WriteTokensERKNSt3__16vectorINS_5TokenENS0_9allocatorIS2_EEEERKNS_19EntropyEncodingDataEmPNS_9BitWriterEENK3$_0clEmm.exit103"
  %i.kh = add i64 %.8, -41
  %i.ki = icmp ult i64 %i.kh, -57
  br i1 %i.ki, label %bb.ad, label %._crit_edge.i112, !prof !326

bb.ad:                                            ; preds = %bb.ac
  call void @_ZNSt3__16vectorImNS_9allocatorImEEE9push_backB8nn180100ERKm(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.e) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.kj = trunc i64 %.8 to i8
  store i8 %i.kj, ptr %i.a, align 1, !tbaa !88
  call void @_ZNSt3__16vectorIhNS_9allocatorIhEEE9push_backB8nn180100EOh(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 1 dereferenceable(1) %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %._crit_edge.i112

._crit_edge.i112:                                 ; preds = %bb.ac, %bb.ad
  %i.kk = phi i64 [ 0, %bb.ad ], [ %i.jg, %bb.ac ]
  %.9 = phi i64 [ 0, %bb.ad ], [ %.8, %bb.ac ]
  %i.kl = shl i64 %i.kk, 16
  %i.km = or disjoint i64 %i.kl, %i.kg            ; 2 uses
  store i64 %i.km, ptr %i.e, align 8, !tbaa !49
  %i.kn = add i64 %.9, 16
  br label %"_ZZN3jxl11WriteTokensERKNSt3__16vectorINS_5TokenENS0_9allocatorIS2_EEEERKNS_19EntropyEncodingDataEmPNS_9BitWriterEENK3$_0clEmm.exit115"

"_ZZN3jxl11WriteTokensERKNSt3__16vectorINS_5TokenENS0_9allocatorIS2_EEEERKNS_19EntropyEncodingDataEmPNS_9BitWriterEENK3$_0clEmm.exit115": ; preds = %"_ZZN3jxl11WriteTokensERKNSt3__16vectorINS_5TokenENS0_9allocatorIS2_EEEERKNS_19EntropyEncodingDataEmPNS_9BitWriterEENK3$_0clEmm.exit103", %._crit_edge.i112
  %i.ko = phi i64 [ %i.jg, %"_ZZN3jxl11WriteTokensERKNSt3__16vectorINS_5TokenENS0_9allocatorIS2_EEEERKNS_19EntropyEncodingDataEmPNS_9BitWriterEENK3$_0clEmm.exit103" ], [ %i.km, %._crit_edge.i112 ]
  %.10 = phi i64 [ %.8, %"_ZZN3jxl11WriteTokensERKNSt3__16vectorINS_5TokenENS0_9allocatorIS2_EEEERKNS_19EntropyEncodingDataEmPNS_9BitWriterEENK3$_0clEmm.exit103" ], [ %i.kn, %._crit_edge.i112 ] ; 2 uses
  %i.kp = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.kp, label %bb.z, label %.loopexit197, !llvm.loop !321

.loopexit197:                                     ; preds = %"_ZZN3jxl11WriteTokensERKNSt3__16vectorINS_5TokenENS0_9allocatorIS2_EEEERKNS_19EntropyEncodingDataEmPNS_9BitWriterEENK3$_0clEmm.exit115", %"_ZZN3jxl11WriteTokensERKNSt3__16vectorINS_5TokenENS0_9allocatorIS2_EEEERKNS_19EntropyEncodingDataEmPNS_9BitWriterEENK3$_0clEmm.exit98", %.preheader, %bb.o
  %.2190 = phi i64 [ %.6, %"_ZZN3jxl11WriteTokensERKNSt3__16vectorINS_5TokenENS0_9allocatorIS2_EEEERKNS_19EntropyEncodingDataEmPNS_9BitWriterEENK3$_0clEmm.exit98" ], [ 0, %bb.o ], [ 0, %.preheader ], [ %.10, %"_ZZN3jxl11WriteTokensERKNSt3__16vectorINS_5TokenENS0_9allocatorIS2_EEEERKNS_19EntropyEncodingDataEmPNS_9BitWriterEENK3$_0clEmm.exit115" ]
  %.sroa.0.2 = phi i32 [ %i.gx, %"_ZZN3jxl11WriteTokensERKNSt3__16vectorINS_5TokenENS0_9allocatorIS2_EEEERKNS_19EntropyEncodingDataEmPNS_9BitWriterEENK3$_0clEmm.exit98" ], [ 1245184, %bb.o ], [ 1245184, %.preheader ], [ %i.kf, %"_ZZN3jxl11WriteTokensERKNSt3__16vectorINS_5TokenENS0_9allocatorIS2_EEEERKNS_19EntropyEncodingDataEmPNS_9BitWriterEENK3$_0clEmm.exit115" ]
  %.3 = phi i64 [ %i.gb, %"_ZZN3jxl11WriteTokensERKNSt3__16vectorINS_5TokenENS0_9allocatorIS2_EEEERKNS_19EntropyEncodingDataEmPNS_9BitWriterEENK3$_0clEmm.exit98" ], [ 0, %bb.o ], [ 0, %.preheader ], [ %i.jj, %"_ZZN3jxl11WriteTokensERKNSt3__16vectorINS_5TokenENS0_9allocatorIS2_EEEERKNS_19EntropyEncodingDataEmPNS_9BitWriterEENK3$_0clEmm.exit115" ]
  %i.kq = zext i32 %.sroa.0.2 to i64
  call void @_ZN3jxl9BitWriter5WriteEmm(ptr noundef nonnull align 8 dereferenceable(64) %3, i64 noundef 32, i64 noundef %i.kq) #21
  %i.kr = load i64, ptr %i.e, align 8, !tbaa !49
  call void @_ZN3jxl9BitWriter5WriteEmm(ptr noundef nonnull align 8 dereferenceable(64) %3, i64 noundef %.2190, i64 noundef %i.kr) #21
  %i.ks = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !202
  %i.ku = load ptr, ptr %4, align 8, !tbaa !203
  %i.kv = ptrtoint ptr %i.kt to i64
  %i.kw = ptrtoint ptr %i.ku to i64
  %i.kx = sub i64 %i.kv, %i.kw
  %i.ky = lshr exact i64 %i.kx, 3                 ; 2 uses
  %i.kz = trunc i64 %i.ky to i32
  %i.la = icmp sgt i32 %i.kz, 0
  br i1 %i.la, label %.lr.ph216.preheader, label %._crit_edge

.lr.ph216.preheader:                              ; preds = %.loopexit197
  %i.lb = and i64 %i.ky, 2147483647
  br label %.lr.ph216

._crit_edge:                                      ; preds = %.lr.ph216, %.loopexit197
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  %i.lc = load ptr, ptr %5, align 8, !tbaa !86    ; 4 uses
  %.not.i.i116 = icmp eq ptr %i.lc, null
  br i1 %.not.i.i116, label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8nn180100Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %._crit_edge
  %i.ld = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.lc, ptr %i.ld, align 8, !tbaa !89
  %i.le = load ptr, ptr %i.cv, align 8, !tbaa !87
  %i.lf = ptrtoint ptr %i.le to i64
  %i.lg = ptrtoint ptr %i.lc to i64
  %i.lh = sub i64 %i.lf, %i.lg
  call void @_ZdlPvm(ptr noundef nonnull %i.lc, i64 noundef %i.lh) #24
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8nn180100Ev.exit

_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8nn180100Ev.exit: ; preds = %._crit_edge, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.li = load ptr, ptr %4, align 8, !tbaa !203   ; 4 uses
  %.not.i.i117 = icmp eq ptr %i.li, null
  br i1 %.not.i.i117, label %_ZNSt3__16vectorImNS_9allocatorImEEED2B8nn180100Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8nn180100Ev.exit
  store ptr %i.li, ptr %i.ks, align 8, !tbaa !202
  %i.lj = load ptr, ptr %i.ci, align 8, !tbaa !111
  %i.lk = ptrtoint ptr %i.lj to i64
  %i.ll = ptrtoint ptr %i.li to i64
  %i.lm = sub i64 %i.lk, %i.ll
  call void @_ZdlPvm(ptr noundef nonnull %i.li, i64 noundef %i.lm) #24
  br label %_ZNSt3__16vectorImNS_9allocatorImEEED2B8nn180100Ev.exit

_ZNSt3__16vectorImNS_9allocatorImEEED2B8nn180100Ev.exit: ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8nn180100Ev.exit, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %.loopexit

.lr.ph216:                                        ; preds = %.lr.ph216.preheader, %.lr.ph216
  %indvars.iv236 = phi i64 [ %i.lb, %.lr.ph216.preheader ], [ %indvars.iv.next237, %.lr.ph216 ] ; 2 uses
  %indvars.iv.next237 = add nsw i64 %indvars.iv236, -1 ; 3 uses
  %i.ln = load ptr, ptr %5, align 8, !tbaa !86
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 %indvars.iv.next237
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !88
  %i.lq = zext i8 %i.lp to i64
  %i.lr = load ptr, ptr %4, align 8, !tbaa !203
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.lr, i64 %indvars.iv.next237
  %i.lt = load i64, ptr %i.ls, align 8, !tbaa !49
  call void @_ZN3jxl9BitWriter5WriteEmm(ptr noundef nonnull align 8 dereferenceable(64) %3, i64 noundef %i.lq, i64 noundef %i.lt) #21
  %i.lu = icmp samesign ugt i64 %indvars.iv236, 1
  br i1 %i.lu, label %.lr.ph216, label %._crit_edge, !llvm.loop !322

.loopexit:                                        ; preds = %bb.h, %bb.b, %_ZNSt3__16vectorImNS_9allocatorImEEED2B8nn180100Ev.exit
  %.069 = phi i64 [ %.3, %_ZNSt3__16vectorImNS_9allocatorImEEED2B8nn180100Ev.exit ], [ 0, %bb.b ], [ %i.ca, %bb.h ]
  ret i64 %.069
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @_ZN3jxl11WriteTokensERKNSt3__16vectorINS_5TokenENS0_9allocatorIS2_EEEERKNS_19EntropyEncodingDataEmPNS_9BitWriterENS_9LayerTypeEPNS_6AuxOutE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(160) %1, i64 noundef %2, ptr noundef %3, i8 noundef zeroext %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %i.c = alloca i8, align 1                       ; 2 uses
  %i.d = alloca ptr, align 8                      ; 2 uses
  %6 = alloca %"class.std::__1::function", align 16 ; 5 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !49
  store ptr %3, ptr %i.b, align 8, !tbaa !116
  store i8 %4, ptr %i.c, align 1, !tbaa !185
  store ptr %5, ptr %i.d, align 8, !tbaa !187
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !156
  %i.g = load ptr, ptr %0, align 8, !tbaa !155
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 3
  %i.l = mul i64 %i.k, 46
  %i.m = add i64 %i.l, 131072
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.o = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #25 ; 8 uses
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @"_ZTVNSt3__110__function6__funcIZN3jxl11WriteTokensERKNS_6vectorINS2_5TokenENS_9allocatorIS4_EEEERKNS2_19EntropyEncodingDataEmPNS2_9BitWriterENS2_9LayerTypeEPNS2_6AuxOutEE3$_0NS5_ISI_EEFNS2_6StatusEvEEE", i64 16), ptr %i.o, align 8, !tbaa !107
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %0, ptr %i.p, align 8, !tbaa !193
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %1, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !173
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %i.a, ptr %.sroa.55.0..sroa_idx, align 8, !tbaa !111
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr %i.b, ptr %.sroa.66.0..sroa_idx, align 8, !tbaa !182
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store ptr %i.d, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !190
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store ptr %i.c, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !188
  store ptr %i.o, ptr %i.n, align 16, !tbaa !120
  %i.q = call i32 @_ZN3jxl9BitWriter11WithMaxBitsEmNS_9LayerTypeEPNS_6AuxOutERKNSt3__18functionIFNS_6StatusEvEEEb(ptr noundef nonnull align 8 dereferenceable(64) %3, i64 noundef %i.m, i8 noundef zeroext %4, ptr noundef %5, ptr noundef nonnull align 16 dereferenceable(48) %6, i1 noundef zeroext false) #21
  %i.r = load ptr, ptr %i.n, align 16, !tbaa !120 ; 4 uses
  %i.s = icmp eq ptr %i.r, %6
  br i1 %i.s, label %.sink.split.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %_ZNSt3__18functionIFN3jxl6StatusEvEED2Ev.exit, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.b, %bb.a
  %.sink2.i.i = phi i64 [ 32, %bb.a ], [ 40, %bb.b ]
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !107
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sink2.i.i
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.r) #21, !inline_history !1
  br label %_ZNSt3__18functionIFN3jxl6StatusEvEED2Ev.exit

_ZNSt3__18functionIFN3jxl6StatusEvEED2Ev.exit:    ; preds = %bb.b, %.sink.split.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  ret i32 %i.q
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN3jxl20SetANSFuzzerFriendlyEb(i1 noundef zeroext %0) local_unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN3jxl15HistogramParams10ForModularERKNS_14CompressParamsERKNSt3__16vectorIhNS4_9allocatorIhEEEEb(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.jxl::HistogramParams") align 8 captures(none) initializes((0, 53)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(648) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, i1 noundef zeroext %3) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = zext i1 %3 to i8
  store i32 2, ptr %0, align 8, !tbaa !199
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  store i32 4, ptr %i.b, align 4, !tbaa !144
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 2, ptr %i.d, align 4, !tbaa !183
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i64 -1, ptr %i.f, align 8, !tbaa !329
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %i.g, align 8, !tbaa !191
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 49
  store i8 1, ptr %i.h, align 1, !tbaa !198
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 50
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 51
  store i8 0, ptr %i.j, align 1, !tbaa !197
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i8 0, ptr %i.k, align 4, !tbaa !200
  store i8 %i.a, ptr %i.i, align 2, !tbaa !137
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.m = load i32, ptr %i.l, align 4, !tbaa !361  ; 7 uses
  %i.n = icmp sgt i32 %i.m, 2
  br i1 %i.n, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %0, align 8, !tbaa !199
  %i.o = icmp samesign ult i32 %i.m, 9
  %i.p = zext i1 %i.o to i32
  store i32 %i.p, ptr %i.d, align 4, !tbaa !183
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.r = load i8, ptr %i.q, align 4, !tbaa !362, !range !77, !noundef !78
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = icmp samesign ult i32 %i.m, 6
  %narrow = select i1 %i.s, i1 %i.t, i1 false     ; 3 uses
  %i.u = zext i1 %narrow to i32
  store i32 %i.u, ptr %i.c, align 8, !tbaa !363
  %i.v = load ptr, ptr %2, align 8, !tbaa !86     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !89
  %i.y = icmp eq ptr %i.v, %i.x
  br i1 %i.y, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = load i8, ptr %i.v, align 1, !tbaa !88
end_hunk_0
