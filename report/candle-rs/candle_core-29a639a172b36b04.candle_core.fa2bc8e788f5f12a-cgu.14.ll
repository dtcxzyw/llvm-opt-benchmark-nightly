Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_core-29a639a172b36b04.candle_core.fa2bc8e788f5f12a-cgu.14?download=true
inline.NumInlined: 1160
inline.NumDeleted: 448
loop-unroll.NumCompletelyUnrolled: 106
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 127
begin_hunk_0_@_RNvXs6_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_8BlockQ4KNtB5_8GgmlType8to_float:bb.a
  %i.bf = load atomic i64, ptr @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache5CACHE monotonic, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %bb.p, label %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit32, !prof !14

bb.p:                                             ; preds = %bb.o
  %i.bh = invoke noundef i128 @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache21detect_and_initialize()
          to label %.noexc31 unwind label %.loopexit57

.noexc31:                                         ; preds = %bb.p
  %i.bi = and i128 %i.bh, 18014398509481984
  %.not55 = icmp eq i128 %i.bi, 0
  br i1 %.not55, label %bb.q, label %bb.z

_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit32: ; preds = %bb.o
  %i.bj = and i64 %i.bf, 18014398509481984
  %.not54 = icmp eq i64 %i.bj, 0
  br i1 %.not54, label %bb.q, label %bb.z

bb.q:                                             ; preds = %.noexc31, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit32
  %i.bk = and i16 %i.be, 32767
  %i.bl = icmp eq i16 %i.bk, 0
  br i1 %i.bl, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bm = zext i16 %i.be to i32
  %i.bn = shl nuw i32 %i.bm, 16
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit36

bb.s:                                             ; preds = %bb.q
  %i.bo = and i16 %i.be, -32768
  %i.bp = zext i16 %i.bo to i32                   ; 2 uses
  %i.bq = and i16 %i.be, 31744                    ; 3 uses
  %i.br = and i16 %i.be, 1023                     ; 3 uses
  %i.bs = zext nneg i16 %i.br to i32              ; 3 uses
  %i.bt = icmp eq i16 %i.bq, 31744
  br i1 %i.bt, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bu = icmp eq i16 %i.br, 0
  %i.bv = shl nuw i32 %i.bp, 16                   ; 2 uses
  br i1 %i.bu, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.bw = shl nuw i32 %i.bp, 16                   ; 2 uses
  %i.bx = icmp eq i16 %i.bq, 0
  br i1 %i.bx, label %bb.x, label %bb.y

bb.v:                                             ; preds = %bb.t
  %i.by = or disjoint i32 %i.bv, 2139095040
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit36

bb.w:                                             ; preds = %bb.t
  %i.bz = shl nuw nsw i32 %i.bs, 13
  %i.ca = or disjoint i32 %i.bv, %i.bz
  %i.cb = or i32 %i.ca, 2143289344
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit36

bb.x:                                             ; preds = %bb.u
  %i.cc = call range(i16 6, 17) i16 @llvm.ctlz.i16(i16 %i.br, i1 false)
  %i.cd = zext nneg i16 %i.cc to i32              ; 2 uses
  %i.ce = add nuw nsw i32 %i.cd, 8
  %i.cf = shl i32 %i.bs, %i.ce
  %i.cg = and i32 %i.cf, 8388607
  %reass.sub.i35 = or disjoint i32 %i.bw, 989855744
  %i.ch = shl nuw nsw i32 %i.cd, 23
  %i.ci = sub nuw nsw i32 %reass.sub.i35, %i.ch
  %i.cj = or disjoint i32 %i.ci, %i.cg
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit36

bb.y:                                             ; preds = %bb.u
  %i.ck = lshr exact i16 %i.bq, 10
  %narrow.i33 = add nuw nsw i16 %i.ck, 112
  %i.cl = zext nneg i16 %narrow.i33 to i32
  %i.cm = shl nuw nsw i32 %i.cl, 23
  %i.cn = shl nuw nsw i32 %i.bs, 13
  %i.co = or disjoint i32 %i.cm, %i.cn
  %i.cp = or disjoint i32 %i.co, %i.bw
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit36

_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit36: ; preds = %bb.r, %bb.v, %bb.w, %bb.x, %bb.y
  %.sroa.0.0.i34 = phi i32 [ %i.bn, %bb.r ], [ %i.by, %bb.v ], [ %i.cb, %bb.w ], [ %i.cj, %bb.x ], [ %i.cp, %bb.y ]
  %i.cq = bitcast i32 %.sroa.0.0.i34 to float
  br label %bb.aa

bb.z:                                             ; preds = %.noexc31, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit32
  %i.cr = call fastcc noundef float @_RNvNtNtNtCsdsILkMb8ZHY_4half8binary164arch3x8619f16_to_f32_x86_f16c(i16 noundef %i.be)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit36
  %.sroa.03.0 = phi float [ %i.cq, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit36 ], [ %i.cr, %bb.z ] ; 2 uses
  %i.cs = getelementptr i8, ptr %.sroa.0.0.copyload, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 4 ; 4 uses
  %scevgep137 = getelementptr i8, ptr %.sroa.6.0.copyload, i64 4
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ai, %bb.aa
  %indvar = phi i64 [ %indvar.next, %bb.ai ], [ 0, %bb.aa ] ; 3 uses
  %.sroa.05.079 = phi i64 [ %i.hi, %bb.ai ], [ 0, %bb.aa ] ; 8 uses
  %.sroa.08.078 = phi i64 [ %i.hp, %bb.ai ], [ 0, %bb.aa ] ; 12 uses
  %.sroa.019.077 = phi i64 [ %i.cy, %bb.ai ], [ 0, %bb.aa ] ; 2 uses
  %.sroa.022.076 = phi i64 [ %i.cz, %bb.ai ], [ 4, %bb.aa ]
  %i.cu = shl nuw nsw i64 %indvar, 5
  %i.cv = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %i.cu
  %scevgep140 = getelementptr i8, ptr %i.cv, i64 17
  %i.cw = shl nuw nsw i64 %indvar, 5
  %i.cx = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %i.cw
  %scevgep128 = getelementptr i8, ptr %i.cx, i64 17
  %i.cy = add nuw nsw i64 %.sroa.019.077, 64
  %i.cz = add nsw i64 %.sroa.022.076, -1          ; 2 uses
  %i.da = lshr exact i64 %.sroa.019.077, 1
  %i.db = getelementptr i8, ptr %i.cs, i64 %i.da  ; 6 uses
  %i.dc = icmp samesign ult i64 %.sroa.05.079, 4
  br i1 %i.dc, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dd = add nsw i64 %.sroa.05.079, -4           ; 2 uses
  %i.de = icmp ult i64 %i.dd, 12
  br i1 %i.de, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.dd, i64 noundef 12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #32
          to label %.noexc39 unwind label %.loopexit.split-lp

.noexc39:                                         ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.df = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.sroa.05.079
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  %i.dh = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %.sroa.05.079
  %i.di = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.sroa.05.079
  %i.dj = getelementptr i8, ptr %i.ct, i64 %.sroa.05.079
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 5
  %i.dl = load i8, ptr %i.dk, align 1, !alias.scope !1179, !noundef !7 ; 2 uses
  %i.dm = load i8, ptr %i.dg, align 1, !alias.scope !1180, !noundef !7 ; 2 uses
  %i.dn = load <2 x i8>, ptr %i.dh, align 1
  %i.do = lshr i8 %i.dl, 4
  %i.dp = and i8 %i.dl, 15
  %i.dq = lshr i8 %i.dm, 4
  %i.dr = and i8 %i.dm, 15
  %i.ds = load <2 x i8>, ptr %i.di, align 1
  %i.dt = shufflevector <2 x i8> %i.dn, <2 x i8> %i.ds, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.du = lshr <4 x i8> %i.dt, splat (i8 2)
  %i.dv = and <4 x i8> %i.du, splat (i8 48)
  %i.dw = insertelement <4 x i8> poison, i8 %i.dr, i64 0
  %i.dx = insertelement <4 x i8> %i.dw, i8 %i.dq, i64 1
  %i.dy = insertelement <4 x i8> %i.dx, i8 %i.dp, i64 2
  %i.dz = insertelement <4 x i8> %i.dy, i8 %i.do, i64 3
  %i.ea = or disjoint <4 x i8> %i.dv, %i.dz
  br label %bb.ag

bb.af:                                            ; preds = %bb.ab
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.sroa.05.079 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %i.ed = load <2 x i8>, ptr %i.eb, align 1
  %i.ee = load <2 x i8>, ptr %i.ec, align 1
  %i.ef = shufflevector <2 x i8> %i.ed, <2 x i8> %i.ee, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.eg = and <4 x i8> %i.ef, splat (i8 63)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.eh = phi <4 x i8> [ %i.eg, %bb.af ], [ %i.ea, %bb.ae ]
  %i.ei = uitofp <4 x i8> %i.eh to <4 x float>    ; 4 uses
  %i.ej = extractelement <4 x float> %i.ei, i64 0
  %i.ek = fmul float %.sroa.01.0, %i.ej           ; 2 uses
  %i.el = extractelement <4 x float> %i.ei, i64 1
  %i.em = fmul float %.sroa.03.0, %i.el           ; 2 uses
  %i.en = extractelement <4 x float> %i.ei, i64 2
  %i.eo = fmul float %.sroa.01.0, %i.en           ; 2 uses
  %i.ep = extractelement <4 x float> %i.ei, i64 3
  %i.eq = fmul float %.sroa.03.0, %i.ep           ; 2 uses
  %i.er = call i64 @llvm.usub.sat.i64(i64 %.sroa.7.0.copyload, i64 %.sroa.08.078) ; 6 uses
  %i.es = call i64 @llvm.umin.i64(i64 %i.er, i64 31)
  %i.et = add nuw nsw i64 %i.es, 1                ; 2 uses
  %min.iters.check146 = icmp ult i64 %i.er, 8
  br i1 %min.iters.check146, label %scalar.ph145.preheader, label %vector.memcheck135

vector.memcheck135:                               ; preds = %bb.ag
  %i.eu = shl i64 %.sroa.08.078, 2
  %scevgep136 = getelementptr i8, ptr %.sroa.6.0.copyload, i64 %i.eu
  %umin138 = call i64 @llvm.umin.i64(i64 %i.er, i64 31) ; 2 uses
  %i.ev = add i64 %.sroa.08.078, %umin138
  %i.ew = shl i64 %i.ev, 2
  %scevgep139 = getelementptr i8, ptr %scevgep137, i64 %i.ew
  %scevgep141 = getelementptr i8, ptr %scevgep140, i64 %umin138
  %bound0142 = icmp ult ptr %scevgep136, %scevgep141
  %bound1143 = icmp ult ptr %i.db, %scevgep139
  %found.conflict144 = and i1 %bound0142, %bound1143
  br i1 %found.conflict144, label %scalar.ph145.preheader, label %vector.ph147

vector.ph147:                                     ; preds = %vector.memcheck135
  %i.ex = and i64 %i.et, 7                        ; 2 uses
  %i.ey = icmp eq i64 %i.ex, 0
  %i.ez = select i1 %i.ey, i64 8, i64 %i.ex
  %n.vec148 = sub nsw i64 %i.et, %i.ez            ; 3 uses
  %i.fa = add i64 %.sroa.08.078, %n.vec148
  %broadcast.splatinsert149 = insertelement <4 x float> poison, float %i.ek, i64 0
  %broadcast.splat150 = shufflevector <4 x float> %broadcast.splatinsert149, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert151 = insertelement <4 x float> poison, float %i.em, i64 0
  %broadcast.splat152 = shufflevector <4 x float> %broadcast.splatinsert151, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.6.0.copyload, i64 %.sroa.08.078
  br label %vector.body153

vector.body153:                                   ; preds = %vector.body153, %vector.ph147
  %index154 = phi i64 [ 0, %vector.ph147 ], [ %index.next157, %vector.body153 ] ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.db, i64 %index154 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  %wide.load155 = load <4 x i8>, ptr %i.fc, align 1, !alias.scope !1181
  %wide.load156 = load <4 x i8>, ptr %i.fd, align 1, !alias.scope !1181
  %i.fe = and <4 x i8> %wide.load155, splat (i8 15)
  %i.ff = and <4 x i8> %wide.load156, splat (i8 15)
  %i.fg = uitofp nneg <4 x i8> %i.fe to <4 x float>
  %i.fh = uitofp nneg <4 x i8> %i.ff to <4 x float>
  %i.fi = fmul <4 x float> %broadcast.splat150, %i.fg
  %i.fj = fmul <4 x float> %broadcast.splat150, %i.fh
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %index154 ; 2 uses
  %i.fl = fsub <4 x float> %i.fi, %broadcast.splat152
  %i.fm = fsub <4 x float> %i.fj, %broadcast.splat152
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  store <4 x float> %i.fl, ptr %i.fk, align 4, !alias.scope !1182, !noalias !1181
  store <4 x float> %i.fm, ptr %i.fn, align 4, !alias.scope !1182, !noalias !1181
  %index.next157 = add nuw i64 %index154, 8       ; 2 uses
  %i.fo = icmp eq i64 %index.next157, %n.vec148
  br i1 %i.fo, label %scalar.ph145.preheader, label %vector.body153, !llvm.loop !1169

scalar.ph145.preheader:                           ; preds = %vector.body153, %vector.memcheck135, %bb.ag
  %.sroa.08.173.ph = phi i64 [ %.sroa.08.078, %vector.memcheck135 ], [ %.sroa.08.078, %bb.ag ], [ %i.fa, %vector.body153 ]
  %.sroa.014.0.idx72.ph = phi i64 [ 0, %vector.memcheck135 ], [ 0, %bb.ag ], [ %n.vec148, %vector.body153 ]
  br label %scalar.ph145

scalar.ph145:                                     ; preds = %scalar.ph145.preheader, %bb.ah
  %.sroa.08.173 = phi i64 [ %i.fv, %bb.ah ], [ %.sroa.08.173.ph, %scalar.ph145.preheader ] ; 3 uses
  %.sroa.014.0.idx72 = phi i64 [ %.sroa.014.0.add, %bb.ah ], [ %.sroa.014.0.idx72.ph, %scalar.ph145.preheader ] ; 4 uses
  %exitcond.not = icmp eq i64 %.sroa.014.0.idx72, %i.er
  br i1 %exitcond.not, label %.invoke, label %bb.ah

bb.ah:                                            ; preds = %scalar.ph145
  %.sroa.014.0.ptr = getelementptr inbounds nuw i8, ptr %i.db, i64 %.sroa.014.0.idx72
  %i.fp = load i8, ptr %.sroa.014.0.ptr, align 1, !noundef !7
  %i.fq = and i8 %i.fp, 15
  %i.fr = uitofp nneg i8 %i.fq to float
  %i.fs = fmul float %i.ek, %i.fr
  %.sroa.014.0.add = add nuw nsw i64 %.sroa.014.0.idx72, 1 ; 2 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %.sroa.6.0.copyload, i64 %.sroa.08.173
  %i.fu = fsub float %i.fs, %i.em
  store float %i.fu, ptr %i.ft, align 4
  %i.fv = add nuw i64 %.sroa.08.173, 1            ; 5 uses
  %i.fw = icmp eq i64 %.sroa.014.0.add, 32
  br i1 %i.fw, label %.preheader.preheader, label %scalar.ph145, !llvm.loop !1170

.preheader.preheader:                             ; preds = %bb.ah
  %i.fx = call i64 @llvm.umin.i64(i64 %i.er, i64 31) ; 2 uses
  %i.fy = add i64 %.sroa.08.078, %i.fx
  %i.fz = add i64 %i.fy, 1
  %i.ga = call i64 @llvm.umax.i64(i64 %.sroa.7.0.copyload, i64 %i.fz)
  %i.gb = xor i64 %.sroa.08.078, -1
  %i.gc = add i64 %i.ga, %i.gb
  %i.gd = sub i64 %i.gc, %i.fx                    ; 2 uses
  %i.ge = call i64 @llvm.umin.i64(i64 %i.gd, i64 31)
  %i.gf = add nuw nsw i64 %i.ge, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.gd, 8
  br i1 %min.iters.check, label %.preheader.preheader161, label %vector.memcheck

.preheader.preheader161:                          ; preds = %vector.body, %vector.memcheck, %.preheader.preheader
  %.sroa.08.275.ph = phi i64 [ %i.fv, %vector.memcheck ], [ %i.fv, %.preheader.preheader ], [ %i.gq, %vector.body ]
  %.sroa.016.0.idx74.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader.preheader ], [ %n.vec, %vector.body ]
  br label %.preheader

vector.memcheck:                                  ; preds = %.preheader.preheader
  %4 = shl i64 %.sroa.08.078, 2                   ; 2 uses
  %i.gg = shl nuw nsw i64 %.sroa.014.0.idx72, 2   ; 2 uses
  %5 = getelementptr i8, ptr %.sroa.6.0.copyload, i64 %i.gg
  %6 = getelementptr i8, ptr %5, i64 %4
  %scevgep = getelementptr i8, ptr %6, i64 4
  %i.gh = add i64 %.sroa.08.078, 1
  %umin = call i64 @llvm.umin.i64(i64 %i.er, i64 31) ; 2 uses
  %i.gi = add i64 %i.gh, %umin
  %umax = call i64 @llvm.umax.i64(i64 %.sroa.7.0.copyload, i64 %i.gi)
  %i.gj = xor i64 %.sroa.08.078, -1
  %i.gk = add i64 %umax, %i.gj
  %i.gl = sub i64 %i.gk, %umin
  %umin126 = call i64 @llvm.umin.i64(i64 %i.gl, i64 31) ; 2 uses
  %7 = shl nuw nsw i64 %umin126, 2
  %8 = getelementptr i8, ptr %.sroa.6.0.copyload, i64 %i.gg
  %9 = getelementptr i8, ptr %8, i64 %4
  %i.gm = getelementptr i8, ptr %9, i64 8
  %scevgep127 = getelementptr i8, ptr %i.gm, i64 %7
  %scevgep129 = getelementptr i8, ptr %scevgep128, i64 %umin126
  %bound0 = icmp ult ptr %scevgep, %scevgep129
  %bound1 = icmp ult ptr %i.db, %scevgep127
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader.preheader161, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.gn = and i64 %i.gf, 7                        ; 2 uses
  %i.go = icmp eq i64 %i.gn, 0
  %i.gp = select i1 %i.go, i64 8, i64 %i.gn
  %n.vec = sub nsw i64 %i.gf, %i.gp               ; 3 uses
  %i.gq = add i64 %i.fv, %n.vec
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.eo, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert130 = insertelement <4 x float> poison, float %i.eq, i64 0
  %broadcast.splat131 = shufflevector <4 x float> %broadcast.splatinsert130, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.6.0.copyload, i64 %i.fv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.db, i64 %index ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 4
  %wide.load = load <4 x i8>, ptr %i.gs, align 1, !alias.scope !1183
  %wide.load132 = load <4 x i8>, ptr %i.gt, align 1, !alias.scope !1183
  %i.gu = lshr <4 x i8> %wide.load, splat (i8 4)
  %i.gv = lshr <4 x i8> %wide.load132, splat (i8 4)
  %i.gw = uitofp nneg <4 x i8> %i.gu to <4 x float>
  %i.gx = uitofp nneg <4 x i8> %i.gv to <4 x float>
  %i.gy = fmul <4 x float> %broadcast.splat, %i.gw
  %i.gz = fmul <4 x float> %broadcast.splat, %i.gx
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %index ; 2 uses
  %i.hb = fsub <4 x float> %i.gy, %broadcast.splat131
  %i.hc = fsub <4 x float> %i.gz, %broadcast.splat131
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  store <4 x float> %i.hb, ptr %i.ha, align 4, !alias.scope !1184, !noalias !1183
  store <4 x float> %i.hc, ptr %i.hd, align 4, !alias.scope !1184, !noalias !1183
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.he = icmp eq i64 %index.next, %n.vec
  br i1 %i.he, label %.preheader.preheader161, label %vector.body, !llvm.loop !1174

.invoke:                                          ; preds = %scalar.ph145, %.preheader
  %i.hf = phi i64 [ %.sroa.08.275, %.preheader ], [ %.sroa.08.173, %scalar.ph145 ]
  %i.hg = phi ptr [ @129, %.preheader ], [ @128, %scalar.ph145 ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.hf, i64 noundef %.sroa.7.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hg) #28
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

.preheader:                                       ; preds = %.preheader.preheader161, %bb.aj
  %.sroa.08.275 = phi i64 [ %i.hp, %bb.aj ], [ %.sroa.08.275.ph, %.preheader.preheader161 ] ; 4 uses
  %.sroa.016.0.idx74 = phi i64 [ %.sroa.016.0.add, %bb.aj ], [ %.sroa.016.0.idx74.ph, %.preheader.preheader161 ] ; 2 uses
  %i.hh = icmp ult i64 %.sroa.08.275, %.sroa.7.0.copyload
  br i1 %i.hh, label %bb.aj, label %.invoke

bb.ai:                                            ; preds = %bb.aj
  %i.hi = add nuw nsw i64 %.sroa.05.079, 2
  %.not29 = icmp eq i64 %i.cz, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not29, label %.loopexit, label %bb.ab

bb.aj:                                            ; preds = %.preheader
  %.sroa.016.0.ptr = getelementptr inbounds nuw i8, ptr %i.db, i64 %.sroa.016.0.idx74
  %i.hj = load i8, ptr %.sroa.016.0.ptr, align 1, !noundef !7
  %i.hk = lshr i8 %i.hj, 4
  %i.hl = uitofp nneg i8 %i.hk to float
  %i.hm = fmul float %i.eo, %i.hl
  %.sroa.016.0.add = add nuw nsw i64 %.sroa.016.0.idx74, 1 ; 2 uses
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.6.0.copyload, i64 %.sroa.08.275
  %i.ho = fsub float %i.hm, %i.eq
  store float %i.ho, ptr %i.hn, align 4
  %i.hp = add nuw i64 %.sroa.08.275, 1            ; 2 uses
  %i.hq = icmp eq i64 %.sroa.016.0.add, 32
  br i1 %i.hq, label %bb.ai, label %.preheader, !llvm.loop !1175

bb.ak:                                            ; preds = %bb.b
  %i.hr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ4KQSfEEEB1x_.exit: ; preds = %bb.b
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs6_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_8BlockQ4KNtB5_8GgmlType9vec_dot_4(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) initializes((0, 16)) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %2, i64 noundef range(i64 0, 64051194700380388) %3, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %4, i64 noundef range(i64 0, 64051194700380388) %5, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %6, i64 noundef range(i64 0, 64051194700380388) %7, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %8, i64 noundef range(i64 0, 64051194700380388) %9, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %10, i64 noundef range(i64 0, 31586890537173890) %11) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef float @_RNvXs6_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_8BlockQ4KNtB5_8GgmlType13vec_dot_unopt(i64 poison, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %2, i64 noundef range(i64 0, 64051194700380388) %3, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %10, i64 noundef range(i64 0, 31586890537173890) %11)
  %i.b = tail call noundef float @_RNvXs6_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_8BlockQ4KNtB5_8GgmlType13vec_dot_unopt(i64 poison, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %4, i64 noundef range(i64 0, 64051194700380388) %5, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %10, i64 noundef range(i64 0, 31586890537173890) %11)
  %i.c = tail call noundef float @_RNvXs6_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_8BlockQ4KNtB5_8GgmlType13vec_dot_unopt(i64 poison, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %6, i64 noundef range(i64 0, 64051194700380388) %7, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %10, i64 noundef range(i64 0, 31586890537173890) %11)
  %i.d = tail call noundef float @_RNvXs6_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_8BlockQ4KNtB5_8GgmlType13vec_dot_unopt(i64 poison, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %8, i64 noundef range(i64 0, 64051194700380388) %9, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %10, i64 noundef range(i64 0, 31586890537173890) %11)
  store float %i.a, ptr %0, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.b, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.c, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.d, ptr %i.g, align 4
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs7_NtCsltEA4u8Pgfu_11candle_core9quantizedNtB5_9GgmlDTypeNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !1185, !noundef !7 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs7_NtCsltEA4u8Pgfu_11candle_core9quantizedNtB5_9GgmlDTypeNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs7_NtCsltEA4u8Pgfu_11candle_core9quantizedNtB5_9GgmlDTypeNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt.126, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs7_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_8BlockQ5KNtB5_8GgmlType10from_float(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef nonnull align 2 %2, i64 noundef range(i64 0, 52405522936674863) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 1               ; 13 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RINvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils22group_for_quantizationNtNtB4_8k_quants8BlockQ5KEB6_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull align 2 %2, i64 noundef %3)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !7, !noundef !7 ; 4 uses
  %i.f = load i64, ptr %i.c, align 8, !range !22, !noundef !7
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !7 ; 3 uses
  %i.i = icmp ult i64 %i.h, 384307168202282326
  call void @llvm.assume(i1 %i.i)
  %.idx = mul nuw nsw i64 %i.h, 24
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.f, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store ptr %i.j, ptr %.sroa.6.0..sroa_idx, align 8
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ5KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.thread, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ5KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit

.loopexit130:                                     ; preds = %bb.az, %bb.bm
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.loopexit:             ; preds = %.lr.ph.preheader, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %.lr.ph.4, %.lr.ph.5, %.lr.ph.6, %.lr.ph.7
  %lpad.loopexit289 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.loopexit.split-lp:    ; preds = %.lr.ph.8
  %lpad.loopexit.split-lp290 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.c, %bb.p
  %lpad.loopexit134 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.loopexit, %.loopexit.split-lp.loopexit.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit130
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit130 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit134, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit289, %.loopexit.split-lp.loopexit.loopexit ], [ %lpad.loopexit.split-lp290, %.loopexit.split-lp.loopexit.loopexit.split-lp ]
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ5KRSfEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB14_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ5KRSfEEEB1x_.exit unwind label %bb.ch

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ5KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit: ; preds = %bb.a, %bb.as
  %i.l = phi ptr [ %i.kt, %bb.as ], [ %i.e, %bb.a ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1194)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1194, !noalias !1195
  %.sroa.0.0.copyload = load ptr, ptr %i.l, align 8, !noalias !1194 ; 15 uses
  %.sroa.6.0..sroa_idx97 = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx97, align 8, !noalias !1194 ; 12 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !1194 ; 4 uses
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ5KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.thread, label %bb.b

bb.b:                                             ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ5KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload) ]
  %i.n = and i64 %.sroa.7.0.copyload, -32         ; 9 uses
  %.not.i.i153 = icmp eq i64 %i.n, 0
  br i1 %.not.i.i153, label %.peel.next192, label %.lr.ph.preheader

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ5KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.thread: ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ5KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit, %bb.as, %bb.a
  call void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ5KRSfEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB14_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
end_hunk_0
