Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_core-29a639a172b36b04.candle_core.fa2bc8e788f5f12a-cgu.14?download=true
inline.NumInlined: 1160
inline.NumDeleted: 448
loop-unroll.NumCompletelyUnrolled: 107
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 128
begin_hunk_0_@_RNvXs7_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_8BlockQ5KNtB5_8GgmlType8to_float:bb.a
  br i1 %i.bi, label %bb.o, label %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit43, !prof !14

bb.o:                                             ; preds = %bb.n
  %i.bj = invoke noundef i128 @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache21detect_and_initialize()
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc42:                                         ; preds = %bb.o
  %i.bk = and i128 %i.bj, 18014398509481984
  %.not97 = icmp eq i128 %i.bk, 0
  br i1 %.not97, label %bb.p, label %bb.y

_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit43: ; preds = %bb.n
  %i.bl = and i64 %i.bh, 18014398509481984
  %.not96 = icmp eq i64 %i.bl, 0
  br i1 %.not96, label %bb.p, label %bb.y

bb.p:                                             ; preds = %.noexc42, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit43
  %i.bm = and i16 %i.bg, 32767
  %i.bn = icmp eq i16 %i.bm, 0
  br i1 %i.bn, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bo = zext i16 %i.bg to i32
  %i.bp = shl nuw i32 %i.bo, 16
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit47

bb.r:                                             ; preds = %bb.p
  %i.bq = and i16 %i.bg, -32768
  %i.br = zext i16 %i.bq to i32                   ; 2 uses
  %i.bs = and i16 %i.bg, 31744                    ; 3 uses
  %i.bt = and i16 %i.bg, 1023                     ; 3 uses
  %i.bu = zext nneg i16 %i.bt to i32              ; 3 uses
  %i.bv = icmp eq i16 %i.bs, 31744
  br i1 %i.bv, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bw = icmp eq i16 %i.bt, 0
  %i.bx = shl nuw i32 %i.br, 16                   ; 2 uses
  br i1 %i.bw, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.by = shl nuw i32 %i.br, 16                   ; 2 uses
  %i.bz = icmp eq i16 %i.bs, 0
  br i1 %i.bz, label %bb.w, label %bb.x

bb.u:                                             ; preds = %bb.s
  %i.ca = or disjoint i32 %i.bx, 2139095040
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit47

bb.v:                                             ; preds = %bb.s
  %i.cb = shl nuw nsw i32 %i.bu, 13
  %i.cc = or disjoint i32 %i.bx, %i.cb
  %i.cd = or i32 %i.cc, 2143289344
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit47

bb.w:                                             ; preds = %bb.t
  %i.ce = call range(i16 6, 17) i16 @llvm.ctlz.i16(i16 %i.bt, i1 false)
  %i.cf = zext nneg i16 %i.ce to i32              ; 2 uses
  %i.cg = add nuw nsw i32 %i.cf, 8
  %i.ch = shl i32 %i.bu, %i.cg
  %i.ci = and i32 %i.ch, 8388607
  %reass.sub.i46 = or disjoint i32 %i.by, 989855744
  %i.cj = shl nuw nsw i32 %i.cf, 23
  %i.ck = sub nuw nsw i32 %reass.sub.i46, %i.cj
  %i.cl = or disjoint i32 %i.ck, %i.ci
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit47

bb.x:                                             ; preds = %bb.t
  %i.cm = lshr exact i16 %i.bs, 10
  %narrow.i44 = add nuw nsw i16 %i.cm, 112
  %i.cn = zext nneg i16 %narrow.i44 to i32
  %i.co = shl nuw nsw i32 %i.cn, 23
  %i.cp = shl nuw nsw i32 %i.bu, 13
  %i.cq = or disjoint i32 %i.co, %i.cp
  %i.cr = or disjoint i32 %i.cq, %i.by
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit47

_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit47: ; preds = %bb.q, %bb.u, %bb.v, %bb.w, %bb.x
  %.sroa.0.0.i45 = phi i32 [ %i.bp, %bb.q ], [ %i.ca, %bb.u ], [ %i.cd, %bb.v ], [ %i.cl, %bb.w ], [ %i.cr, %bb.x ]
  %i.cs = bitcast i32 %.sroa.0.0.i45 to float
  br label %bb.z

bb.y:                                             ; preds = %.noexc42, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit43
  %i.ct = call fastcc noundef float @_RNvNtNtNtCsdsILkMb8ZHY_4half8binary164arch3x8619f16_to_f32_x86_f16c(i16 noundef %i.bg)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit47
  %.sroa.03.0 = phi float [ %i.cs, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit47 ], [ %i.ct, %bb.y ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 48 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 16 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 4 ; 4 uses
  %scevgep = getelementptr i8, ptr %.sroa.6.0.copyload, i64 4 ; 2 uses
  br label %bb.aa

bb.aa:                                            ; preds = %.thread89, %bb.z
  %.sroa.05.0130 = phi i64 [ 0, %bb.z ], [ %i.ho, %.thread89 ] ; 8 uses
  %.sroa.08.0129 = phi i8 [ 1, %bb.z ], [ %i.hp, %.thread89 ] ; 3 uses
  %.sroa.010.0128 = phi i8 [ 2, %bb.z ], [ %i.hq, %.thread89 ] ; 3 uses
  %.sroa.012.0127 = phi i64 [ 0, %bb.z ], [ %.sroa.012.2.lcssa, %.thread89 ] ; 11 uses
  %.sroa.028.0126 = phi i64 [ 0, %bb.z ], [ %i.cx, %.thread89 ] ; 2 uses
  %.sroa.031.0125 = phi i64 [ 4, %bb.z ], [ %i.cy, %.thread89 ]
  %i.cx = add nuw nsw i64 %.sroa.028.0126, 64
  %i.cy = add nsw i64 %.sroa.031.0125, -1         ; 2 uses
  %i.cz = lshr exact i64 %.sroa.028.0126, 1
  %i.da = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cz ; 3 uses
  %i.db = icmp samesign ult i64 %.sroa.05.0130, 4
  br i1 %i.db, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dc = add nsw i64 %.sroa.05.0130, -4          ; 2 uses
  %i.dd = icmp ult i64 %i.dc, 12
  br i1 %i.dd, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.dc, i64 noundef 12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #32
          to label %.noexc50 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc50:                                         ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.de = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.sroa.05.0130
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  %i.dg = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %.sroa.05.0130
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.sroa.05.0130
  %i.di = getelementptr i8, ptr %i.cw, i64 %.sroa.05.0130
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 5
  %i.dk = load i8, ptr %i.df, align 1, !alias.scope !1245, !noundef !7 ; 2 uses
  %i.dl = and i8 %i.dk, 15
  %i.dm = load <2 x i8>, ptr %i.dg, align 1
  %i.dn = load <2 x i8>, ptr %i.dh, align 1
  %i.do = shufflevector <2 x i8> %i.dm, <2 x i8> %i.dn, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.dp = lshr <4 x i8> %i.do, splat (i8 2)
  %i.dq = and <4 x i8> %i.dp, splat (i8 48)
  %i.dr = lshr i8 %i.dk, 4
  %i.ds = load i8, ptr %i.dj, align 1, !alias.scope !1246, !noundef !7 ; 2 uses
  %i.dt = and i8 %i.ds, 15
  %i.du = lshr i8 %i.ds, 4
  %i.dv = insertelement <4 x i8> poison, i8 %i.dl, i64 0
  %i.dw = insertelement <4 x i8> %i.dv, i8 %i.dr, i64 1
  %i.dx = insertelement <4 x i8> %i.dw, i8 %i.dt, i64 2
  %i.dy = insertelement <4 x i8> %i.dx, i8 %i.du, i64 3
  %i.dz = or disjoint <4 x i8> %i.dq, %i.dy
  br label %bb.af

bb.ae:                                            ; preds = %bb.aa
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.sroa.05.0130 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.ec = load <2 x i8>, ptr %i.ea, align 1
  %i.ed = load <2 x i8>, ptr %i.eb, align 1
  %i.ee = shufflevector <2 x i8> %i.ec, <2 x i8> %i.ed, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.ef = and <4 x i8> %i.ee, splat (i8 63)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.eg = phi <4 x i8> [ %i.ef, %bb.ae ], [ %i.dz, %bb.ad ]
  %i.eh = uitofp <4 x i8> %i.eg to <4 x float>    ; 4 uses
  %i.ei = extractelement <4 x float> %i.eh, i64 0
  %i.ej = fmul float %.sroa.01.0, %i.ei           ; 2 uses
  %i.ek = extractelement <4 x float> %i.eh, i64 1
  %i.el = fmul float %.sroa.03.0, %i.ek           ; 2 uses
  %i.em = extractelement <4 x float> %i.eh, i64 2
  %i.en = fmul float %.sroa.01.0, %i.em           ; 2 uses
  %i.eo = extractelement <4 x float> %i.eh, i64 3
  %i.ep = fmul float %.sroa.03.0, %i.eo           ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.da, i64 32 ; 2 uses
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull %i.da, ptr noundef nonnull %i.eq, ptr noundef nonnull readonly dereferenceable(32) %i.cv, ptr noundef nonnull readonly %i.cu)
          to label %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRAhj20_ECsltEA4u8Pgfu_11candle_core.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRAhj20_ECsltEA4u8Pgfu_11candle_core.exit: ; preds = %bb.af
  %.sroa.069.0.copyload = load ptr, ptr %i.b, align 8 ; 5 uses
  %.sroa.471.0.copyload = load ptr, ptr %.sroa.471.0..sroa_idx, align 8 ; 5 uses
  %.sroa.573.0.copyload = load i64, ptr %.sroa.573.0..sroa_idx, align 8 ; 12 uses
  %.sroa.774.0.copyload = load i64, ptr %.sroa.774.0..sroa_idx, align 8 ; 4 uses
  %i.er = icmp ult i64 %.sroa.573.0.copyload, %.sroa.774.0.copyload
  br i1 %i.er, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRAhj20_ECsltEA4u8Pgfu_11candle_core.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.069.0.copyload), "nonnull"(ptr %.sroa.471.0.copyload) ]
  %umax = call i64 @llvm.umax.i64(i64 %.sroa.012.0127, i64 %.sroa.7.0.copyload) ; 3 uses
  %i.es = add i64 %.sroa.012.0127, %.sroa.774.0.copyload
  %i.et = sub i64 %i.es, %.sroa.573.0.copyload    ; 2 uses
  %i.eu = xor i64 %.sroa.573.0.copyload, -1
  %i.ev = add i64 %.sroa.774.0.copyload, %i.eu
  %i.ew = sub i64 %umax, %.sroa.012.0127
  %i.ex = call i64 @llvm.umin.i64(i64 %i.ev, i64 %i.ew) ; 3 uses
  %i.ey = add i64 %i.ex, 1                        ; 3 uses
  %min.iters.check227 = icmp ult i64 %i.ey, 5
  br i1 %min.iters.check227, label %scalar.ph226.preheader, label %vector.memcheck228

vector.memcheck228:                               ; preds = %.lr.ph
  %i.ez = shl i64 %.sroa.012.0127, 2
  %i.fa = getelementptr i8, ptr %.sroa.6.0.copyload, i64 %i.ez ; 2 uses
  %i.fb = add i64 %.sroa.012.0127, %i.ex
  %i.fc = shl i64 %i.fb, 2
  %i.fd = getelementptr i8, ptr %scevgep, i64 %i.fc ; 2 uses
  %i.fe = getelementptr i8, ptr %.sroa.471.0.copyload, i64 %.sroa.573.0.copyload
  %i.ff = add i64 %.sroa.573.0.copyload, %i.ex
  %i.fg = add i64 %i.ff, 1                        ; 2 uses
  %i.fh = getelementptr i8, ptr %.sroa.471.0.copyload, i64 %i.fg
  %4 = getelementptr i8, ptr %.sroa.069.0.copyload, i64 %.sroa.573.0.copyload
  %5 = getelementptr i8, ptr %.sroa.069.0.copyload, i64 %i.fg
  %bound0229 = icmp ult ptr %i.fa, %i.fh
  %bound1230 = icmp ult ptr %i.fe, %i.fd
  %found.conflict231 = and i1 %bound0229, %bound1230
  %bound0232 = icmp ult ptr %i.fa, %5
  %bound1233 = icmp ult ptr %4, %i.fd
  %found.conflict234 = and i1 %bound0232, %bound1233
  %conflict.rdx235 = or i1 %found.conflict231, %found.conflict234
  br i1 %conflict.rdx235, label %scalar.ph226.preheader, label %vector.ph236

vector.ph236:                                     ; preds = %vector.memcheck228
  %i.fi = and i64 %i.ey, 3                        ; 2 uses
  %i.fj = icmp eq i64 %i.fi, 0
  %i.fk = select i1 %i.fj, i64 4, i64 %i.fi
  %n.vec237 = sub i64 %i.ey, %i.fk                ; 3 uses
  %i.fl = add i64 %.sroa.012.0127, %n.vec237
  %i.fm = add i64 %.sroa.573.0.copyload, %n.vec237
  %broadcast.splatinsert238 = insertelement <4 x i8> poison, i8 %.sroa.08.0129, i64 0
  %broadcast.splat239 = shufflevector <4 x i8> %broadcast.splatinsert238, <4 x i8> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert240 = insertelement <4 x float> poison, float %i.ej, i64 0
  %broadcast.splat241 = shufflevector <4 x float> %broadcast.splatinsert240, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert242 = insertelement <4 x float> poison, float %i.el, i64 0
  %broadcast.splat243 = shufflevector <4 x float> %broadcast.splatinsert242, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fn = getelementptr [4 x i8], ptr %.sroa.6.0.copyload, i64 %.sroa.012.0127
  br label %vector.body244

vector.body244:                                   ; preds = %vector.body244, %vector.ph236
  %index245 = phi i64 [ 0, %vector.ph236 ], [ %index.next248, %vector.body244 ] ; 3 uses
  %i.fo = add nuw i64 %.sroa.573.0.copyload, %index245 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.069.0.copyload, i64 %i.fo
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.471.0.copyload, i64 %i.fo
  %wide.load246 = load <4 x i8>, ptr %i.fq, align 1, !alias.scope !1247
  %i.fr = and <4 x i8> %wide.load246, %broadcast.splat239
  %i.fs = icmp eq <4 x i8> %i.fr, zeroinitializer
  %i.ft = select <4 x i1> %i.fs, <4 x float> zeroinitializer, <4 x float> splat (float 1.600000e+01)
  %wide.load247 = load <4 x i8>, ptr %i.fp, align 1, !alias.scope !1248
  %i.fu = and <4 x i8> %wide.load247, splat (i8 15)
  %i.fv = uitofp nneg <4 x i8> %i.fu to <4 x float>
  %i.fw = fadd nnan <4 x float> %i.ft, %i.fv
  %i.fx = fmul <4 x float> %broadcast.splat241, %i.fw
  %i.fy = getelementptr [4 x i8], ptr %i.fn, i64 %index245
  %i.fz = fsub <4 x float> %i.fx, %broadcast.splat243
  store <4 x float> %i.fz, ptr %i.fy, align 4, !alias.scope !1249, !noalias !1250
  %index.next248 = add nuw i64 %index245, 4       ; 2 uses
  %i.ga = icmp eq i64 %index.next248, %n.vec237
  br i1 %i.ga, label %scalar.ph226.preheader, label %vector.body244, !llvm.loop !1235

scalar.ph226.preheader:                           ; preds = %vector.body244, %vector.memcheck228, %.lr.ph
  %.sroa.012.1120.ph = phi i64 [ %.sroa.012.0127, %vector.memcheck228 ], [ %.sroa.012.0127, %.lr.ph ], [ %i.fl, %vector.body244 ]
  %.sroa.573.0119.ph = phi i64 [ %.sroa.573.0.copyload, %vector.memcheck228 ], [ %.sroa.573.0.copyload, %.lr.ph ], [ %i.fm, %vector.body244 ]
  br label %scalar.ph226

scalar.ph226:                                     ; preds = %scalar.ph226.preheader, %bb.ah
  %.sroa.012.1120 = phi i64 [ %i.is, %bb.ah ], [ %.sroa.012.1120.ph, %scalar.ph226.preheader ] ; 3 uses
  %.sroa.573.0119 = phi i64 [ %i.ig, %bb.ah ], [ %.sroa.573.0119.ph, %scalar.ph226.preheader ] ; 3 uses
  %exitcond.not = icmp eq i64 %.sroa.012.1120, %umax
  br i1 %exitcond.not, label %.invoke, label %bb.ah

.thread:                                          ; preds = %bb.ah, %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRAhj20_ECsltEA4u8Pgfu_11candle_core.exit
  %.sroa.012.1.lcssa = phi i64 [ %.sroa.012.0127, %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRAhj20_ECsltEA4u8Pgfu_11candle_core.exit ], [ %i.et, %bb.ah ] ; 9 uses
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %i.da, ptr noundef nonnull %i.eq, ptr noundef nonnull readonly dereferenceable(32) %i.cv, ptr noundef nonnull readonly %i.cu)
          to label %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRAhj20_ECsltEA4u8Pgfu_11candle_core.exit60 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRAhj20_ECsltEA4u8Pgfu_11candle_core.exit60: ; preds = %.thread
  %.sroa.075.0.copyload = load ptr, ptr %i.a, align 8 ; 5 uses
  %.sroa.477.0.copyload = load ptr, ptr %.sroa.477.0..sroa_idx, align 8 ; 5 uses
  %.sroa.579.0.copyload = load i64, ptr %.sroa.579.0..sroa_idx, align 8 ; 10 uses
  %.sroa.780.0.copyload = load i64, ptr %.sroa.780.0..sroa_idx, align 8 ; 3 uses
  %i.gb = icmp ult i64 %.sroa.579.0.copyload, %.sroa.780.0.copyload
  br i1 %i.gb, label %.lr.ph123, label %.thread89

.lr.ph123:                                        ; preds = %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRAhj20_ECsltEA4u8Pgfu_11candle_core.exit60
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.075.0.copyload), "nonnull"(ptr %.sroa.477.0.copyload) ]
  %umax156 = call i64 @llvm.umax.i64(i64 %.sroa.012.1.lcssa, i64 %.sroa.7.0.copyload) ; 3 uses
  %i.gc = add i64 %.sroa.012.1.lcssa, %.sroa.780.0.copyload
  %i.gd = sub i64 %i.gc, %.sroa.579.0.copyload    ; 2 uses
  %i.ge = call i64 @llvm.umax.i64(i64 %.sroa.774.0.copyload, i64 %.sroa.573.0.copyload)
  %i.gf = add i64 %.sroa.573.0.copyload, %umax156
  %i.gg = add i64 %.sroa.012.0127, %i.ge
  %i.gh = sub i64 %i.gf, %i.gg
  %i.gi = xor i64 %.sroa.579.0.copyload, -1
  %i.gj = add i64 %.sroa.780.0.copyload, %i.gi
  %i.gk = call i64 @llvm.umin.i64(i64 %i.gh, i64 %i.gj) ; 3 uses
  %i.gl = add i64 %i.gk, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.gl, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph123
  %i.gm = shl i64 %.sroa.012.1.lcssa, 2
  %i.gn = getelementptr i8, ptr %.sroa.6.0.copyload, i64 %i.gm ; 2 uses
  %i.go = add i64 %i.gk, %.sroa.012.1.lcssa
  %i.gp = shl i64 %i.go, 2
  %i.gq = getelementptr i8, ptr %scevgep, i64 %i.gp ; 2 uses
  %i.gr = getelementptr i8, ptr %.sroa.477.0.copyload, i64 %.sroa.579.0.copyload
  %i.gs = add i64 %.sroa.579.0.copyload, %i.gk
  %i.gt = add i64 %i.gs, 1                        ; 2 uses
  %i.gu = getelementptr i8, ptr %.sroa.477.0.copyload, i64 %i.gt
  %6 = getelementptr i8, ptr %.sroa.075.0.copyload, i64 %.sroa.579.0.copyload
  %7 = getelementptr i8, ptr %.sroa.075.0.copyload, i64 %i.gt
  %bound0 = icmp ult ptr %i.gn, %i.gu
  %bound1 = icmp ult ptr %i.gr, %i.gq
  %found.conflict = and i1 %bound0, %bound1
  %bound0200 = icmp ult ptr %i.gn, %7
  %bound1201 = icmp ult ptr %6, %i.gq
  %found.conflict202 = and i1 %bound0200, %bound1201
  %conflict.rdx = or i1 %found.conflict, %found.conflict202
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.gv = and i64 %i.gl, 3                        ; 2 uses
  %i.gw = icmp eq i64 %i.gv, 0
  %i.gx = select i1 %i.gw, i64 4, i64 %i.gv
  %n.vec = sub i64 %i.gl, %i.gx                   ; 3 uses
  %i.gy = add i64 %.sroa.012.1.lcssa, %n.vec
  %i.gz = add i64 %.sroa.579.0.copyload, %n.vec
  %broadcast.splatinsert = insertelement <4 x i8> poison, i8 %.sroa.010.0128, i64 0
  %broadcast.splat = shufflevector <4 x i8> %broadcast.splatinsert, <4 x i8> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert203 = insertelement <4 x float> poison, float %i.en, i64 0
  %broadcast.splat204 = shufflevector <4 x float> %broadcast.splatinsert203, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert205 = insertelement <4 x float> poison, float %i.ep, i64 0
  %broadcast.splat206 = shufflevector <4 x float> %broadcast.splatinsert205, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ha = getelementptr [4 x i8], ptr %.sroa.6.0.copyload, i64 %.sroa.012.1.lcssa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.hb = add nuw i64 %.sroa.579.0.copyload, %index ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.075.0.copyload, i64 %i.hb
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.477.0.copyload, i64 %i.hb
  %wide.load = load <4 x i8>, ptr %i.hd, align 1, !alias.scope !1251
  %i.he = and <4 x i8> %wide.load, %broadcast.splat
  %i.hf = icmp eq <4 x i8> %i.he, zeroinitializer
  %i.hg = select <4 x i1> %i.hf, <4 x float> zeroinitializer, <4 x float> splat (float 1.600000e+01)
  %wide.load207 = load <4 x i8>, ptr %i.hc, align 1, !alias.scope !1252
  %i.hh = lshr <4 x i8> %wide.load207, splat (i8 4)
  %i.hi = uitofp nneg <4 x i8> %i.hh to <4 x float>
  %i.hj = fadd nnan <4 x float> %i.hg, %i.hi
  %i.hk = fmul <4 x float> %broadcast.splat204, %i.hj
  %i.hl = getelementptr [4 x i8], ptr %i.ha, i64 %index
  %i.hm = fsub <4 x float> %i.hk, %broadcast.splat206
  store <4 x float> %i.hm, ptr %i.hl, align 4, !alias.scope !1253, !noalias !1254
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hn = icmp eq i64 %index.next, %n.vec
  br i1 %i.hn, label %scalar.ph.preheader, label %vector.body, !llvm.loop !1240

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph123
  %.sroa.012.2122.ph = phi i64 [ %.sroa.012.1.lcssa, %vector.memcheck ], [ %.sroa.012.1.lcssa, %.lr.ph123 ], [ %i.gy, %vector.body ]
  %.sroa.579.0121.ph = phi i64 [ %.sroa.579.0.copyload, %vector.memcheck ], [ %.sroa.579.0.copyload, %.lr.ph123 ], [ %i.gz, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.ag
  %.sroa.012.2122 = phi i64 [ %i.ie, %bb.ag ], [ %.sroa.012.2122.ph, %scalar.ph.preheader ] ; 3 uses
  %.sroa.579.0121 = phi i64 [ %i.hs, %bb.ag ], [ %.sroa.579.0121.ph, %scalar.ph.preheader ] ; 3 uses
  %exitcond157.not = icmp eq i64 %.sroa.012.2122, %umax156
  br i1 %exitcond157.not, label %.invoke, label %bb.ag

.thread89:                                        ; preds = %bb.ag, %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRAhj20_ECsltEA4u8Pgfu_11candle_core.exit60
  %.sroa.012.2.lcssa = phi i64 [ %.sroa.012.1.lcssa, %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRAhj20_ECsltEA4u8Pgfu_11candle_core.exit60 ], [ %i.gd, %bb.ag ]
  %i.ho = add nuw nsw i64 %.sroa.05.0130, 2
  %i.hp = shl i8 %.sroa.08.0129, 2
  %i.hq = shl i8 %.sroa.010.0128, 2
  %.not37 = icmp eq i64 %i.cy, 0
  br i1 %.not37, label %.loopexit, label %bb.aa

bb.ag:                                            ; preds = %scalar.ph
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.075.0.copyload, i64 %.sroa.579.0121
  %i.hs = add nuw i64 %.sroa.579.0121, 1
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.477.0.copyload, i64 %.sroa.579.0121
  %i.hu = load i8, ptr %i.ht, align 1, !noundef !7
  %i.hv = and i8 %i.hu, %.sroa.010.0128
  %i.hw = icmp eq i8 %i.hv, 0
  %.40 = select i1 %i.hw, float 0.000000e+00, float 1.600000e+01
  %i.hx = load i8, ptr %i.hr, align 1, !noundef !7
  %i.hy = lshr i8 %i.hx, 4
  %i.hz = uitofp nneg i8 %i.hy to float
  %i.ia = fadd nnan float %.40, %i.hz
  %i.ib = fmul float %i.en, %i.ia
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %.sroa.6.0.copyload, i64 %.sroa.012.2122
  %i.id = fsub float %i.ib, %i.ep
  store float %i.id, ptr %i.ic, align 4
  %i.ie = add i64 %.sroa.012.2122, 1              ; 2 uses
  %exitcond158.not = icmp eq i64 %i.ie, %i.gd
  br i1 %exitcond158.not, label %.thread89, label %scalar.ph, !llvm.loop !1241

bb.ah:                                            ; preds = %scalar.ph226
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.069.0.copyload, i64 %.sroa.573.0119
  %i.ig = add nuw i64 %.sroa.573.0119, 1
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.471.0.copyload, i64 %.sroa.573.0119
  %i.ii = load i8, ptr %i.ih, align 1, !noundef !7
  %i.ij = and i8 %i.ii, %.sroa.08.0129
  %i.ik = icmp eq i8 %i.ij, 0
  %. = select i1 %i.ik, float 0.000000e+00, float 1.600000e+01
  %i.il = load i8, ptr %i.if, align 1, !noundef !7
  %i.im = and i8 %i.il, 15
  %i.in = uitofp nneg i8 %i.im to float
  %i.io = fadd nnan float %., %i.in
  %i.ip = fmul float %i.ej, %i.io
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.6.0.copyload, i64 %.sroa.012.1120
  %i.ir = fsub float %i.ip, %i.el
  store float %i.ir, ptr %i.iq, align 4
  %i.is = add i64 %.sroa.012.1120, 1              ; 2 uses
  %exitcond155.not = icmp eq i64 %i.is, %i.et
  br i1 %exitcond155.not, label %.thread, label %scalar.ph226, !llvm.loop !1242

.invoke:                                          ; preds = %scalar.ph226, %scalar.ph
  %i.it = phi i64 [ %umax156, %scalar.ph ], [ %umax, %scalar.ph226 ]
  %i.iu = phi ptr [ @161, %scalar.ph ], [ @162, %scalar.ph226 ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.it, i64 noundef %.sroa.7.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.iu) #28
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.ai:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.iv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ5KQSfEEEB1x_.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp254
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs8_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_8BlockQ6KNtB5_8GgmlType10from_float(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef nonnull align 2 %2, i64 noundef range(i64 0, 43920819223117981) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [64 x i8], align 4                ; 6 uses
  %i.c = alloca [256 x i8], align 16              ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.c, i8 0, i64 256, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.b, i8 0, i64 64, i1 false)
  %.idx = mul nuw nsw i64 %3, 210
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %i.e = icmp eq i64 %3, 0
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.760.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %vector.body113
  %.sroa.0.0100 = phi ptr [ %0, %.lr.ph ], [ %i.hd, %vector.body113 ] ; 3 uses
  %.sroa.03.099 = phi ptr [ %2, %.lr.ph ], [ %i.ad, %vector.body113 ] ; 16 uses
  br label %bb.c

._crit_edge:                                      ; preds = %vector.body113, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.c:                                             ; preds = %bb.b, %bb.c
  %.sroa.05.089 = phi float [ 0.000000e+00, %bb.b ], [ %.sroa.05.1, %bb.c ]
  %.sroa.06.088 = phi float [ 0.000000e+00, %bb.b ], [ %.sroa.06.1, %bb.c ] ; 2 uses
  %.sroa.0.066.idx87 = phi i64 [ 0, %bb.b ], [ %.sroa.0.066.add, %bb.c ] ; 2 uses
  %.sroa.7.086 = phi i64 [ 0, %bb.b ], [ %i.v, %bb.c ] ; 2 uses
  %.sroa.0.066.ptr = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.0.066.idx87
  %.sroa.0.066.add = add nuw nsw i64 %.sroa.0.066.idx87, 4 ; 2 uses
  %i.v = add nuw nsw i64 %.sroa.7.086, 1
  %i.w = shl nuw nsw i64 %.sroa.7.086, 4          ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0100, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.w
  %i.z = call noundef float @_RNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils14make_qx_quants(i64 noundef 16, i32 noundef 32, ptr noundef nonnull %i.x, ptr noundef nonnull %i.y, i32 noundef 1, ptr noundef null) ; 3 uses
  store float %i.z, ptr %.sroa.0.066.ptr, align 4
  %i.aa = call float @llvm.fabs.f32(float %i.z)   ; 2 uses
  %i.ab = fcmp ogt float %i.aa, %.sroa.06.088     ; 2 uses
  %.sroa.06.1 = select i1 %i.ab, float %i.aa, float %.sroa.06.088
  %.sroa.05.1 = select i1 %i.ab, float %i.z, float %.sroa.05.089 ; 2 uses
  %i.ac = icmp eq i64 %.sroa.0.066.add, 64
  br i1 %i.ac, label %bb.d, label %bb.c

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.03.099, i64 210 ; 2 uses
  %i.ae = fdiv float -1.280000e+02, %.sroa.05.1   ; 5 uses
  %i.af = fdiv float 1.000000e+00, %i.ae          ; 2 uses
  %i.ag = load atomic i64, ptr @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache5CACHE monotonic, align 8 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %.split, label %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit, !prof !14

.split:                                           ; preds = %bb.d
  %i.ai = call noundef i128 @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache21detect_and_initialize()
  %i.aj = and i128 %i.ai, 18014398509481984
  %.not82 = icmp eq i128 %i.aj, 0
end_hunk_0
