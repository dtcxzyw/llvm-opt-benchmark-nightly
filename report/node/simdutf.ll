Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/simdutf?download=true
inline.NumInlined: 2210
inline.NumDeleted: 453
loop-unroll.NumCompletelyUnrolled: 91
loop-unroll.NumRuntimeUnrolled: 74
loop-unroll.NumUnrolled: 167
begin_hunk_0_@_ZNK7simdutf7haswell14implementation34convert_utf8_to_latin1_with_errorsEPKcmPc:bb.a
  %.02566.i = phi i64 [ 0, %bb.d ], [ %i.bv, %bb.g ] ; 6 uses
  %i.bp = sub nsw i64 0, %.02566.i                ; 2 uses
  %i.bq = getelementptr inbounds i8, ptr %i.p, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1             ; 2 uses
  %i.bs = icmp sgt i8 %i.br, -65
  br i1 %i.bs, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bt = icmp ne i64 %.02566.i, 0
  %i.bu = icmp sgt i8 %i.br, -1
  %or.cond.i = and i1 %i.bt, %i.bu
  br i1 %or.cond.i, label %bb.h, label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.bv = add i64 %.02566.i, 1                    ; 2 uses
  %.not.i2 = icmp ugt i64 %i.bv, %.0.i691
  br i1 %.not.i2, label %bb.i, label %bb.e, !llvm.loop !29

bb.h:                                             ; preds = %bb.f
  %i.bw = sub i64 1, %.02566.i
  br label %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit

bb.i:                                             ; preds = %bb.g
  %i.bx = sub i64 0, %.0.i691
  br label %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit

bb.j:                                             ; preds = %bb.f
  %i.by = getelementptr inbounds i8, ptr %i.p, i64 %i.bp
  %i.bz = add i64 %i.bo, %.02566.i
  %i.ca = tail call fastcc { i32, i64 } @_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin119convert_with_errorsEPKcmPc(ptr noundef nonnull readonly %i.by, i64 noundef %i.bz, ptr noundef %.0689) ; 2 uses
  %i.cb = extractvalue { i32, i64 } %i.ca, 0      ; 2 uses
  %i.cc = extractvalue { i32, i64 } %i.ca, 1
  %.not33.i = icmp eq i32 %i.cb, 0
  %i.cd = select i1 %.not33.i, i64 0, i64 %.02566.i
  %spec.select.i = sub i64 %i.cc, %i.cd
  br label %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit

_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit: ; preds = %bb.h, %bb.i, %bb.j
  %.sroa.4.3.i = phi i64 [ %spec.select.i, %bb.j ], [ %i.bx, %bb.i ], [ %i.bw, %bb.h ]
  %.sroa.0.3.i = phi i32 [ %i.cb, %bb.j ], [ 3, %bb.i ], [ 3, %bb.h ]
  %i.ce = add i64 %.sroa.4.3.i, %.0.i691
  br label %.loopexit

bb.k:                                             ; preds = %bb.c
  %i.cf = add i64 %.0.i691, 52
  %i.cg = icmp ult i64 %.0.i691, -52
  br i1 %i.cg, label %.lr.ph682.preheader, label %.loopexit.thread

.lr.ph682.preheader:                              ; preds = %bb.k
  %i.ch = shufflevector <4 x i64> %i.q, <4 x i64> %i.s, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ci = bitcast <8 x i64> %i.ch to <64 x i8>
  %i.cj = icmp sgt <64 x i8> %i.ci, splat (i8 -65)
  %i.ck = bitcast <64 x i1> %i.cj to i64
  %i.cl = lshr i64 %i.ck, 1
  br label %.lr.ph682

.lr.ph682:                                        ; preds = %.lr.ph682.preheader, %_ZN7simdutf7haswell12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit
  %.1.i680 = phi i64 [ %i.dm, %_ZN7simdutf7haswell12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit ], [ %.0.i691, %.lr.ph682.preheader ] ; 2 uses
  %.051.i679 = phi i64 [ %i.dn, %_ZN7simdutf7haswell12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit ], [ %i.cl, %.lr.ph682.preheader ] ; 3 uses
  %.1678 = phi ptr [ %.6, %_ZN7simdutf7haswell12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit ], [ %.0689, %.lr.ph682.preheader ] ; 5 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 %.1.i680
  %.val = load <2 x i64>, ptr %i.cm, align 1      ; 2 uses
  %i.cn = icmp eq i64 %.051.i679, 4095
  br i1 %i.cn, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph682
  store <2 x i64> %.val, ptr %.1678, align 1
  %i.co = getelementptr inbounds nuw i8, ptr %.1678, i64 12
  br label %_ZN7simdutf7haswell12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit

bb.m:                                             ; preds = %.lr.ph682
  %i.cp = and i64 %.051.i679, 4095
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr @_ZN7simdutf12_GLOBAL__N_16tables13utf8_to_utf1612utf8bigindexE, i64 %i.cp ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 2             ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 1
  %i.ct = load i8, ptr %i.cs, align 1
  %i.cu = icmp ugt i8 %i.cr, 63
  br i1 %i.cu, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cv = zext nneg i8 %i.cr to i64
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr @_ZN7simdutf12_GLOBAL__N_16tables13utf8_to_utf168shufutf8E, i64 %i.cv
  %i.cx = load <16 x i8>, ptr %i.cw, align 16
  %i.cy = bitcast <2 x i64> %.val to <16 x i8>
  %i.cz = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.cy, <16 x i8> %i.cx) ; 2 uses
  %i.da = bitcast <16 x i8> %i.cz to <2 x i64>
  %i.db = and <2 x i64> %i.da, splat (i64 35747867511423103)
  %i.dc = bitcast <16 x i8> %i.cz to <8 x i16>
  %i.dd = lshr <8 x i16> %i.dc, splat (i16 2)
  %i.de = bitcast <8 x i16> %i.dd to <2 x i64>
  %i.df = and <2 x i64> %i.de, splat (i64 558454875139082176)
  %i.dg = or <2 x i64> %i.df, %i.db
  %i.dh = bitcast <2 x i64> %i.dg to <8 x i16>
  %i.di = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.dh, <8 x i16> poison)
  %i.dj = bitcast <16 x i8> %i.di to <2 x i64>
  %i.dk = extractelement <2 x i64> %i.dj, i64 0
  store i64 %i.dk, ptr %.1678, align 1
  %i.dl = getelementptr inbounds nuw i8, ptr %.1678, i64 6
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.5 = phi ptr [ %.1678, %bb.m ], [ %i.dl, %bb.n ]
  %.0.i5 = zext i8 %i.ct to i64
  br label %_ZN7simdutf7haswell12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit

_ZN7simdutf7haswell12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit: ; preds = %bb.l, %bb.o
  %.6 = phi ptr [ %i.co, %bb.l ], [ %.5, %bb.o ]  ; 2 uses
  %.1.i6 = phi i64 [ 12, %bb.l ], [ %.0.i5, %bb.o ] ; 2 uses
  %i.dm = add i64 %.1.i6, %.1.i680                ; 3 uses
  %i.dn = lshr i64 %.051.i679, %.1.i6
  %i.do = icmp ult i64 %i.dm, %i.cf
  br i1 %i.do, label %.lr.ph682, label %.loopexit, !llvm.loop !569

.loopexit:                                        ; preds = %_ZN7simdutf7haswell12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit, %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit
  %.sroa.757.1 = phi i64 [ %i.ce, %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit ], [ %.sroa.757.0687, %_ZN7simdutf7haswell12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit ] ; 2 uses
  %.sroa.056.1 = phi i32 [ %.sroa.0.3.i, %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit ], [ %.sroa.056.0688, %_ZN7simdutf7haswell12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit ] ; 2 uses
  %.2 = phi ptr [ %.0689, %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit ], [ %.6, %_ZN7simdutf7haswell12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit ]
  %.2.i = phi i64 [ %.0.i691, %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit ], [ %i.dm, %_ZN7simdutf7haswell12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit ]
  br i1 %.not, label %_ZN7simdutf7haswell12_GLOBAL__N_114utf8_to_latin121validating_transcoder19convert_with_errorsEPKcmPc.exit, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %bb.k, %.loopexit, %bb.b
  %.sroa.757.2 = phi i64 [ %.sroa.757.0687, %bb.b ], [ %.sroa.757.1, %.loopexit ], [ %.sroa.757.0687, %bb.k ]
  %.sroa.056.2 = phi i32 [ %.sroa.056.0688, %bb.b ], [ %.sroa.056.1, %.loopexit ], [ %.sroa.056.0688, %bb.k ]
  %.3 = phi ptr [ %i.z, %bb.b ], [ %.2, %.loopexit ], [ %.0689, %bb.k ] ; 2 uses
  %.sroa.0.1 = phi <4 x i64> [ %.sroa.0.0690, %bb.b ], [ %i.bm, %.loopexit ], [ %i.bm, %bb.k ] ; 2 uses
  %.4.i = phi i64 [ %i.n, %bb.b ], [ %.2.i, %.loopexit ], [ %.0.i691, %bb.k ] ; 4 uses
  %i.dp = sub i64 0, %.4.i                        ; 2 uses
  %i.dq = add i64 %.4.i, 64                       ; 2 uses
  %i.dr = add i64 %i.l, %i.dq
  %.not.i = icmp ugt i64 %i.dr, %2
  br i1 %.not.i, label %._crit_edge694, label %.lr.ph693, !llvm.loop !570

._crit_edge694:                                   ; preds = %.loopexit.thread, %._crit_edge
  %.0.lcssa = phi ptr [ %3, %._crit_edge ], [ %.3, %.loopexit.thread ] ; 4 uses
  %.sroa.0.0.lcssa = phi <4 x i64> [ zeroinitializer, %._crit_edge ], [ %.sroa.0.1, %.loopexit.thread ] ; 2 uses
  %.0.i.lcssa = phi i64 [ 0, %._crit_edge ], [ %.4.i, %.loopexit.thread ] ; 8 uses
  %.lcssa671 = phi i64 [ 0, %._crit_edge ], [ %i.dp, %.loopexit.thread ] ; 3 uses
  %i.ds = tail call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %.sroa.0.0.lcssa, <4 x i64> %.sroa.0.0.lcssa)
  %.not656 = icmp eq i32 %i.ds, 0
  br i1 %.not656, label %bb.p, label %bb.w

bb.p:                                             ; preds = %._crit_edge694
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i.lcssa ; 2 uses
  %i.du = add i64 %.lcssa671, %2
  br label %bb.q

bb.q:                                             ; preds = %bb.s, %bb.p
  %.02566.i7 = phi i64 [ 0, %bb.p ], [ %i.eb, %bb.s ] ; 6 uses
  %i.dv = sub nsw i64 0, %.02566.i7               ; 2 uses
  %i.dw = getelementptr inbounds i8, ptr %i.dt, i64 %i.dv
  %i.dx = load i8, ptr %i.dw, align 1             ; 2 uses
  %i.dy = icmp sgt i8 %i.dx, -65
  br i1 %i.dy, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dz = icmp ne i64 %.02566.i7, 0
  %i.ea = icmp sgt i8 %i.dx, -1
  %or.cond.i13 = and i1 %i.dz, %i.ea
  br i1 %or.cond.i13, label %bb.t, label %bb.v

bb.s:                                             ; preds = %bb.q
  %i.eb = add i64 %.02566.i7, 1                   ; 2 uses
  %.not.i8 = icmp ugt i64 %i.eb, %.0.i.lcssa
  br i1 %.not.i8, label %bb.u, label %bb.q, !llvm.loop !29

bb.t:                                             ; preds = %bb.r
  %i.ec = sub i64 1, %.02566.i7
  br label %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit16

bb.u:                                             ; preds = %bb.s
  %i.ed = sub i64 0, %.0.i.lcssa
  br label %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit16

bb.v:                                             ; preds = %bb.r
  %i.ee = getelementptr inbounds i8, ptr %i.dt, i64 %i.dv
  %i.ef = add i64 %i.du, %.02566.i7
  %i.eg = tail call fastcc { i32, i64 } @_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin119convert_with_errorsEPKcmPc(ptr noundef nonnull readonly %i.ee, i64 noundef %i.ef, ptr noundef %.0.lcssa) ; 2 uses
  %i.eh = extractvalue { i32, i64 } %i.eg, 0      ; 2 uses
  %i.ei = extractvalue { i32, i64 } %i.eg, 1
  %.not33.i14 = icmp eq i32 %i.eh, 0
  %i.ej = select i1 %.not33.i14, i64 0, i64 %.02566.i7
  %spec.select.i15 = sub i64 %i.ei, %i.ej
  br label %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit16

_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit16: ; preds = %bb.t, %bb.u, %bb.v
  %.sroa.4.3.i9 = phi i64 [ %spec.select.i15, %bb.v ], [ %i.ed, %bb.u ], [ %i.ec, %bb.t ]
  %.sroa.0.3.i10 = phi i32 [ %i.eh, %bb.v ], [ 3, %bb.u ], [ 3, %bb.t ]
  %i.ek = add i64 %.sroa.4.3.i9, %.0.i.lcssa
  br label %_ZN7simdutf7haswell12_GLOBAL__N_114utf8_to_latin121validating_transcoder19convert_with_errorsEPKcmPc.exit

bb.w:                                             ; preds = %._crit_edge694
  %i.el = icmp ult i64 %.0.i.lcssa, %2
  br i1 %i.el, label %bb.x, label %bb.ad

bb.x:                                             ; preds = %bb.w
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i.lcssa ; 2 uses
  %i.en = add i64 %.lcssa671, %2
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %bb.x
  %.02566.i17 = phi i64 [ 0, %bb.x ], [ %i.eu, %bb.aa ] ; 7 uses
  %i.eo = sub nsw i64 0, %.02566.i17              ; 2 uses
  %i.ep = getelementptr inbounds i8, ptr %i.em, i64 %i.eo
  %i.eq = load i8, ptr %i.ep, align 1             ; 2 uses
  %i.er = icmp sgt i8 %i.eq, -65
  br i1 %i.er, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.es = icmp ne i64 %.02566.i17, 0
  %i.et = icmp sgt i8 %i.eq, -1
  %or.cond.i23 = and i1 %i.es, %i.et
  br i1 %or.cond.i23, label %bb.ab, label %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit26

bb.aa:                                            ; preds = %bb.y
  %i.eu = add nuw i64 %.02566.i17, 1
  %exitcond = icmp eq i64 %.02566.i17, %.0.i.lcssa
  br i1 %exitcond, label %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit26.thread, label %bb.y, !llvm.loop !29

bb.ab:                                            ; preds = %bb.z
  %i.ev = sub i64 1, %.02566.i17
  br label %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit26.thread

_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit26: ; preds = %bb.z
  %i.ew = getelementptr inbounds i8, ptr %i.em, i64 %i.eo
  %i.ex = add i64 %i.en, %.02566.i17
  %i.ey = tail call fastcc { i32, i64 } @_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin119convert_with_errorsEPKcmPc(ptr noundef nonnull readonly %i.ew, i64 noundef %i.ex, ptr noundef %.0.lcssa) ; 2 uses
  %i.ez = extractvalue { i32, i64 } %i.ey, 0      ; 2 uses
  %i.fa = extractvalue { i32, i64 } %i.ey, 1
  %.not33.i24 = icmp eq i32 %i.ez, 0              ; 2 uses
  %i.fb = select i1 %.not33.i24, i64 0, i64 %.02566.i17
  %spec.select.i25 = sub i64 %i.fa, %i.fb         ; 2 uses
  br i1 %.not33.i24, label %bb.ac, label %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit26.thread

_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit26.thread: ; preds = %bb.aa, %bb.ab, %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit26
  %.sroa.0.3.i20655 = phi i32 [ %i.ez, %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit26 ], [ 3, %bb.ab ], [ 3, %bb.aa ]
  %.sroa.4.3.i19654 = phi i64 [ %spec.select.i25, %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit26 ], [ %i.ev, %bb.ab ], [ %.lcssa671, %bb.aa ]
  %i.fc = add i64 %.sroa.4.3.i19654, %.0.i.lcssa
  br label %_ZN7simdutf7haswell12_GLOBAL__N_114utf8_to_latin121validating_transcoder19convert_with_errorsEPKcmPc.exit

bb.ac:                                            ; preds = %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit26
  %i.fd = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 %spec.select.i25
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.w
  %.4 = phi ptr [ %i.fd, %bb.ac ], [ %.0.lcssa, %bb.w ]
  %i.fe = ptrtoint ptr %.4 to i64
  %i.ff = ptrtoint ptr %3 to i64
  %i.fg = sub i64 %i.fe, %i.ff
  br label %_ZN7simdutf7haswell12_GLOBAL__N_114utf8_to_latin121validating_transcoder19convert_with_errorsEPKcmPc.exit

_ZN7simdutf7haswell12_GLOBAL__N_114utf8_to_latin121validating_transcoder19convert_with_errorsEPKcmPc.exit: ; preds = %.loopexit, %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit16, %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit26.thread, %bb.ad
  %.sroa.757.3 = phi i64 [ %i.ek, %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit16 ], [ %i.fg, %bb.ad ], [ %i.fc, %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit26.thread ], [ %.sroa.757.1, %.loopexit ]
  %.sroa.056.3 = phi i32 [ %.sroa.0.3.i10, %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit16 ], [ 0, %bb.ad ], [ %.sroa.0.3.i20655, %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit26.thread ], [ %.sroa.056.1, %.loopexit ]
  %.fca.0.insert.i = insertvalue { i32, i64 } poison, i32 %.sroa.056.3, 0
  %.fca.1.insert.i = insertvalue { i32, i64 } %.fca.0.insert.i, i64 %.sroa.757.3, 1
  ret { i32, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_ZNK7simdutf7haswell14implementation28convert_valid_utf8_to_latin1EPKcmPc(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3) unnamed_addr #19 align 2 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.035.i98 = phi i64 [ %i.g, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %.036.i97 = phi i64 [ %i.f, %.lr.ph ], [ 0, %bb.a ]
  %i.a = getelementptr i8, ptr %1, i64 %.035.i98
  %i.b = getelementptr i8, ptr %i.a, i64 -1
  %i.c = load i8, ptr %i.b, align 1
  %i.d = icmp sgt i8 %i.c, -65
  %i.e = zext i1 %i.d to i64
  %i.f = add nuw nsw i64 %.036.i97, %i.e          ; 2 uses
  %i.g = add i64 %.035.i98, -1                    ; 3 uses
  %i.h = icmp ne i64 %i.g, 0
  %i.i = icmp samesign ult i64 %i.f, 8
  %i.j = select i1 %i.h, i1 %i.i, i1 false
  br i1 %i.j, label %.lr.ph, label %._crit_edge, !llvm.loop !573

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.035.i.lcssa = phi i64 [ 0, %bb.a ], [ %i.g, %.lr.ph ]
  %i.k = add i64 %2, 1
  %i.l = sub i64 %i.k, %.035.i.lcssa              ; 2 uses
  %i.m = add i64 %i.l, 64
  %.not.i106 = icmp ugt i64 %i.m, %2
  br i1 %.not.i106, label %._crit_edge111, label %.lr.ph110

.lr.ph110:                                        ; preds = %._crit_edge, %.loopexit
  %i.n = phi i64 [ %i.bj, %.loopexit ], [ 64, %._crit_edge ]
  %.0.i108 = phi i64 [ %.2.i, %.loopexit ], [ 0, %._crit_edge ] ; 5 uses
  %.0107 = phi ptr [ %.2, %.loopexit ], [ %3, %._crit_edge ] ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i108 ; 2 uses
  %i.p = load <4 x i64>, ptr %i.o, align 1, !noalias !580 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.r = load <4 x i64>, ptr %i.q, align 1, !noalias !581 ; 3 uses
  %i.s = or <4 x i64> %i.r, %i.p
  %i.t = bitcast <4 x i64> %i.s to <32 x i8>
  %i.u = icmp slt <32 x i8> %i.t, zeroinitializer
  %i.v = bitcast <32 x i1> %i.u to i32
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph110
  store <4 x i64> %i.p, ptr %.0107, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %.0107, i64 32
  store <4 x i64> %i.r, ptr %i.x, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %.0107, i64 64
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph110
  %i.z = add i64 %.0.i108, 52
  %i.aa = icmp ult i64 %.0.i108, -52
  br i1 %i.aa, label %.lr.ph103.preheader, label %.loopexit

.lr.ph103.preheader:                              ; preds = %bb.c
  %i.ab = shufflevector <4 x i64> %i.p, <4 x i64> %i.r, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ac = bitcast <8 x i64> %i.ab to <64 x i8>
  %i.ad = icmp sgt <64 x i8> %i.ac, splat (i8 -65)
  %i.ae = bitcast <64 x i1> %i.ad to i64
  %i.af = lshr i64 %i.ae, 1
  br label %.lr.ph103

.lr.ph103:                                        ; preds = %.lr.ph103.preheader, %_ZN7simdutf7haswell12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit
  %.1.i101 = phi i64 [ %i.bg, %_ZN7simdutf7haswell12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit ], [ %.0.i108, %.lr.ph103.preheader ] ; 2 uses
  %.034.i100 = phi i64 [ %i.bh, %_ZN7simdutf7haswell12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit ], [ %i.af, %.lr.ph103.preheader ] ; 3 uses
  %.199 = phi ptr [ %.5, %_ZN7simdutf7haswell12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit ], [ %.0107, %.lr.ph103.preheader ] ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %.1.i101
  %.val = load <2 x i64>, ptr %i.ag, align 1      ; 2 uses
  %i.ah = icmp eq i64 %.034.i100, 4095
  br i1 %i.ah, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph103
  store <2 x i64> %.val, ptr %.199, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %.199, i64 12
  br label %_ZN7simdutf7haswell12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit

bb.e:                                             ; preds = %.lr.ph103
  %i.aj = and i64 %.034.i100, 4095
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr @_ZN7simdutf12_GLOBAL__N_16tables13utf8_to_utf1612utf8bigindexE, i64 %i.aj ; 2 uses
  %i.al = load i8, ptr %i.ak, align 2             ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = icmp ugt i8 %i.al, 63
  br i1 %i.ao, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = zext nneg i8 %i.al to i64
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr @_ZN7simdutf12_GLOBAL__N_16tables13utf8_to_utf168shufutf8E, i64 %i.ap
  %i.ar = load <16 x i8>, ptr %i.aq, align 16
  %i.as = bitcast <2 x i64> %.val to <16 x i8>
  %i.at = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.as, <16 x i8> %i.ar) ; 2 uses
  %i.au = bitcast <16 x i8> %i.at to <2 x i64>
  %i.av = and <2 x i64> %i.au, splat (i64 35747867511423103)
  %i.aw = bitcast <16 x i8> %i.at to <8 x i16>
  %i.ax = lshr <8 x i16> %i.aw, splat (i16 2)
  %i.ay = bitcast <8 x i16> %i.ax to <2 x i64>
  %i.az = and <2 x i64> %i.ay, splat (i64 558454875139082176)
  %i.ba = or <2 x i64> %i.az, %i.av
  %i.bb = bitcast <2 x i64> %i.ba to <8 x i16>
  %i.bc = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.bb, <8 x i16> poison)
  %i.bd = bitcast <16 x i8> %i.bc to <2 x i64>
  %i.be = extractelement <2 x i64> %i.bd, i64 0
  store i64 %i.be, ptr %.199, align 1
  %i.bf = getelementptr inbounds nuw i8, ptr %.199, i64 6
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.4 = phi ptr [ %.199, %bb.e ], [ %i.bf, %bb.f ]
  %.0.i2 = zext i8 %i.an to i64
  br label %_ZN7simdutf7haswell12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit

_ZN7simdutf7haswell12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit: ; preds = %bb.d, %bb.g
  %.5 = phi ptr [ %i.ai, %bb.d ], [ %.4, %bb.g ]  ; 2 uses
  %.1.i3 = phi i64 [ 12, %bb.d ], [ %.0.i2, %bb.g ] ; 2 uses
  %i.bg = add i64 %.1.i3, %.1.i101                ; 3 uses
  %i.bh = lshr i64 %.034.i100, %.1.i3
  %i.bi = icmp ult i64 %i.bg, %i.z
  br i1 %i.bi, label %.lr.ph103, label %.loopexit, !llvm.loop !578

.loopexit:                                        ; preds = %_ZN7simdutf7haswell12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit, %bb.c, %bb.b
  %.2 = phi ptr [ %i.y, %bb.b ], [ %.0107, %bb.c ], [ %.5, %_ZN7simdutf7haswell12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit ] ; 2 uses
  %.2.i = phi i64 [ %i.n, %bb.b ], [ %.0.i108, %bb.c ], [ %i.bg, %_ZN7simdutf7haswell12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit ] ; 3 uses
  %i.bj = add i64 %.2.i, 64                       ; 2 uses
  %i.bk = add i64 %i.l, %i.bj
  %.not.i = icmp ugt i64 %i.bk, %2
  br i1 %.not.i, label %._crit_edge111, label %.lr.ph110, !llvm.loop !579

._crit_edge111:                                   ; preds = %.loopexit, %._crit_edge
  %.0.lcssa = phi ptr [ %3, %._crit_edge ], [ %.2, %.loopexit ] ; 4 uses
  %.0.i.lcssa = phi i64 [ 0, %._crit_edge ], [ %.2.i, %.loopexit ] ; 3 uses
  %i.bl = icmp ult i64 %.0.i.lcssa, %2
  br i1 %i.bl, label %bb.h, label %_ZN7simdutf7haswell12_GLOBAL__N_114utf8_to_latin113convert_validEPKcmPc.exit

bb.h:                                             ; preds = %._crit_edge111
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i.lcssa ; 2 uses
  %i.bn = sub nuw i64 %2, %.0.i.lcssa             ; 3 uses
  br label %.lr.ph76.i

.lr.ph76.i:                                       ; preds = %bb.h, %.backedge.i
  %.04475.i = phi i64 [ %.044.be.i, %.backedge.i ], [ 0, %bb.h ] ; 6 uses
  %.04774.i = phi ptr [ %.047.be.i, %.backedge.i ], [ %.0.lcssa, %bb.h ] ; 21 uses
  %i.bo = add i64 %.04475.i, 16                   ; 2 uses
  %.not.i4 = icmp ugt i64 %i.bo, %i.bn
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.04475.i ; 17 uses
  br i1 %.not.i4, label %.lr.ph76..thread_crit_edge.i, label %bb.i

.lr.ph76..thread_crit_edge.i:                     ; preds = %.lr.ph76.i
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1
  br label %.thread.i

bb.i:                                             ; preds = %.lr.ph76.i
  %.0.copyload10.i = load i64, ptr %.phi.trans.insert.i, align 1 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 8 ; 2 uses
  %.0.copyload.i = load i64, ptr %i.bp, align 1
  %i.bq = or i64 %.0.copyload.i, %.0.copyload10.i
  %i.br = and i64 %i.bq, -9187201950435737472
  %i.bs = icmp eq i64 %i.br, 0
end_hunk_0
begin_hunk_1_@_ZNK7simdutf7haswell14implementation35convert_utf8_to_utf16le_with_errorsEPKcmPDs:bb.a
  %i.fy = lshr <4 x i32> %i.fx, splat (i32 2)
  %i.fz = bitcast <4 x i32> %i.fy to <2 x i64>
  %i.ga = and <2 x i64> %i.fz, splat (i64 17317308141504)
  %i.gb = lshr <4 x i32> %i.fx, splat (i32 4)
  %i.gc = bitcast <4 x i32> %i.gb to <2 x i64>
  %i.gd = and <2 x i64> %i.gc, splat (i64 263882790727680)
  %i.ge = or <2 x i64> %i.ga, %i.fw
  %i.gf = or disjoint <2 x i64> %i.ge, %i.gd
  %i.gg = bitcast <2 x i64> %i.gf to <4 x i32>    ; 2 uses
  %i.gh = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.gg, <4 x i32> %i.gg)
  store <8 x i16> %i.gh, ptr %.11029, align 1
  br label %.sink.split.i

bb.t:                                             ; preds = %bb.r
  %i.gi = icmp samesign ult i8 %i.ez, -47
  br i1 %i.gi, label %bb.u, label %bb.ad

bb.u:                                             ; preds = %bb.t
  %i.gj = zext i8 %i.ez to i64
  %i.gk = getelementptr inbounds nuw [16 x i8], ptr @_ZN7simdutf12_GLOBAL__N_16tables13utf8_to_utf168shufutf8E, i64 %i.gj
  %i.gl = load <16 x i8>, ptr %i.gk, align 16
  %i.gm = bitcast <2 x i64> %.val to <16 x i8>
  %i.gn = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.gm, <16 x i8> %i.gl) ; 3 uses
  %i.go = bitcast <16 x i8> %i.gn to <2 x i64>
  %i.gp = and <2 x i64> %i.go, splat (i64 545460846719)
  %i.gq = bitcast <16 x i8> %i.gn to <4 x i32>    ; 3 uses
  %i.gr = lshr <4 x i32> %i.gq, splat (i32 2)
  %i.gs = bitcast <4 x i32> %i.gr to <2 x i64>
  %i.gt = and <2 x i64> %i.gs, splat (i64 17317308141504)
  %i.gu = bitcast <16 x i8> %i.gn to <2 x i64>
  %i.gv = and <2 x i64> %i.gu, splat (i64 17732923536900096)
  %i.gw = lshr <4 x i32> %i.gq, splat (i32 1)
  %i.gx = bitcast <4 x i32> %i.gw to <2 x i64>
  %i.gy = and <2 x i64> %i.gx, splat (i64 9007199256838144)
  %i.gz = xor <2 x i64> %i.gy, %i.gv
  %i.ha = bitcast <2 x i64> %i.gz to <4 x i32>
  %i.hb = lshr exact <4 x i32> %i.ha, splat (i32 4)
  %i.hc = lshr <4 x i32> %i.gq, splat (i32 6)
  %i.hd = bitcast <4 x i32> %i.hc to <2 x i64>
  %i.he = and <2 x i64> %i.hd, splat (i64 287104476311715840)
  %i.hf = or <2 x i64> %i.gt, %i.gp
  %i.hg = or disjoint <2 x i64> %i.hf, %i.he
  %i.hh = bitcast <2 x i64> %i.hg to <4 x i32>
  %i.hi = or disjoint <4 x i32> %i.hb, %i.hh      ; 5 uses
  %i.hj = add nuw nsw <4 x i32> %i.hi, splat (i32 983040)
  %i.hk = lshr <4 x i32> %i.hj, splat (i32 10)
  %.inner1153 = and <4 x i32> %i.hk, splat (i32 1023)
  %i.hl = shl <4 x i32> %i.hi, splat (i32 16)
  %.inner1154 = and <4 x i32> %i.hl, splat (i32 67043328)
  %.inner1155 = or disjoint <4 x i32> %.inner1154, splat (i32 -603924480)
  %.inner1156 = or disjoint <4 x i32> %.inner1155, %.inner1153 ; 3 uses
  %.sroa.03.0.vec.extract.i = extractelement <4 x i32> %i.hi, i64 0 ; 2 uses
  %i.hm = icmp samesign ugt i32 %.sroa.03.0.vec.extract.i, 62914560
  br i1 %i.hm, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.hn = bitcast <4 x i32> %.inner1156 to <8 x i16> ; 2 uses
  %i.ho = extractelement <8 x i16> %i.hn, i64 0
  %i.hp = extractelement <8 x i16> %i.hn, i64 1
  %i.hq = getelementptr inbounds nuw i8, ptr %.11029, i64 2
  store i16 %i.hp, ptr %i.hq, align 2
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.hr = trunc i32 %.sroa.03.0.vec.extract.i to i16
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sink = phi i16 [ %i.ho, %bb.v ], [ %i.hr, %bb.w ]
  %.sink7.i = phi i64 [ 4, %bb.v ], [ 2, %bb.w ]
  store i16 %.sink, ptr %.11029, align 2
  %i.hs = getelementptr inbounds nuw i8, ptr %.11029, i64 %.sink7.i ; 3 uses
  %.sroa.03.4.vec.extract.i = extractelement <4 x i32> %i.hi, i64 1 ; 2 uses
  %i.ht = icmp samesign ugt i32 %.sroa.03.4.vec.extract.i, 62914560
  br i1 %i.ht, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hu = trunc i32 %.sroa.03.4.vec.extract.i to i16
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.hv = bitcast <4 x i32> %.inner1156 to <8 x i16> ; 2 uses
  %i.hw = extractelement <8 x i16> %i.hv, i64 2
  %i.hx = extractelement <8 x i16> %i.hv, i64 3
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hs, i64 2
  store i16 %i.hx, ptr %i.hy, align 2
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.sink1073 = phi i16 [ %i.hw, %bb.z ], [ %i.hu, %bb.y ]
  %.sink8.i = phi i64 [ 4, %bb.z ], [ 2, %bb.y ]
  store i16 %.sink1073, ptr %i.hs, align 2
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hs, i64 %.sink8.i ; 4 uses
  %.sroa.03.8.vec.extract.i = extractelement <4 x i32> %i.hi, i64 2 ; 2 uses
  %i.ia = icmp samesign ugt i32 %.sroa.03.8.vec.extract.i, 62914560
  br i1 %i.ia, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ib = trunc i32 %.sroa.03.8.vec.extract.i to i16
  store i16 %i.ib, ptr %i.hz, align 2
  br label %.sink.split.i

bb.ac:                                            ; preds = %bb.aa
  %i.ic = bitcast <4 x i32> %.inner1156 to <8 x i16>
  %i.id = shufflevector <8 x i16> %i.ic, <8 x i16> poison, <2 x i32> <i32 4, i32 5>
  store <2 x i16> %i.id, ptr %i.hz, align 2
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.ac, %bb.ab, %bb.s, %bb.q
  %.5 = phi ptr [ %.11029, %bb.q ], [ %.11029, %bb.s ], [ %i.hz, %bb.ac ], [ %i.hz, %bb.ab ]
  %.sink11.i = phi i64 [ 12, %bb.q ], [ 8, %bb.s ], [ 4, %bb.ac ], [ 2, %bb.ab ]
  %i.ie = getelementptr inbounds nuw i8, ptr %.5, i64 %.sink11.i
  br label %bb.ad

bb.ad:                                            ; preds = %.sink.split.i, %bb.t
  %.4 = phi ptr [ %i.ie, %.sink.split.i ], [ %.11029, %bb.t ]
  %i.if = zext i8 %i.fb to i64
  br label %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE0EEEmPKcmRPDs.exit

_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE0EEEmPKcmRPDs.exit: ; preds = %bb.k, %bb.m, %bb.o, %bb.ad
  %.6 = phi ptr [ %i.dt, %bb.k ], [ %i.ef, %bb.m ], [ %i.ex, %bb.o ], [ %.4, %bb.ad ] ; 2 uses
  %.0101.i = phi i64 [ 12, %bb.k ], [ 16, %bb.m ], [ 12, %bb.o ], [ %i.if, %bb.ad ] ; 2 uses
  %i.ig = add i64 %.0101.i, %.1.i1031             ; 3 uses
  %i.ih = lshr i64 %.052.i1030, %.0101.i
  %i.ii = icmp ult i64 %i.ig, %i.dg
  br i1 %i.ii, label %.lr.ph1033, label %.loopexit, !llvm.loop !605

.loopexit:                                        ; preds = %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE0EEEmPKcmRPDs.exit, %bb.j, %bb.b
  %.2 = phi ptr [ %i.am, %bb.b ], [ %.01039, %bb.j ], [ %.6, %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE0EEEmPKcmRPDs.exit ] ; 2 uses
  %.sroa.0.1 = phi <4 x i64> [ %.sroa.0.01040, %bb.b ], [ %i.ci, %bb.j ], [ %i.ci, %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE0EEEmPKcmRPDs.exit ] ; 2 uses
  %.4.i = phi i64 [ %i.n, %bb.b ], [ %.0.i1041, %bb.j ], [ %i.ig, %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE0EEEmPKcmRPDs.exit ] ; 3 uses
  %i.ij = add i64 %.4.i, 64                       ; 2 uses
  %i.ik = add i64 %i.l, %i.ij
  %.not.i = icmp ugt i64 %i.ik, %2
  br i1 %.not.i, label %._crit_edge1044, label %.lr.ph1043, !llvm.loop !606

._crit_edge1044:                                  ; preds = %.loopexit, %._crit_edge
  %.0.i.lcssa1037 = phi i64 [ 0, %._crit_edge ], [ %.4.i, %.loopexit ] ; 10 uses
  %.0.lcssa = phi ptr [ %3, %._crit_edge ], [ %.2, %.loopexit ] ; 4 uses
  %.sroa.0.0.lcssa = phi <4 x i64> [ zeroinitializer, %._crit_edge ], [ %.sroa.0.1, %.loopexit ] ; 2 uses
  %i.il = sub i64 0, %.0.i.lcssa1037              ; 2 uses
  %i.im = tail call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %.sroa.0.0.lcssa, <4 x i64> %.sroa.0.0.lcssa)
  %.not = icmp eq i32 %i.im, 0
  br i1 %.not, label %bb.ae, label %bb.ak

bb.ae:                                            ; preds = %._crit_edge1044
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i.lcssa1037 ; 2 uses
  %i.io = sub i64 %2, %.0.i.lcssa1037
  br label %bb.af

bb.af:                                            ; preds = %bb.ah, %bb.ae
  %.02566.i6 = phi i64 [ 0, %bb.ae ], [ %i.iv, %bb.ah ] ; 6 uses
  %i.ip = sub nsw i64 0, %.02566.i6               ; 2 uses
  %i.iq = getelementptr inbounds i8, ptr %i.in, i64 %i.ip
  %i.ir = load i8, ptr %i.iq, align 1             ; 2 uses
  %i.is = icmp sgt i8 %i.ir, -65
  br i1 %i.is, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.it = icmp ne i64 %.02566.i6, 0
  %i.iu = icmp sgt i8 %i.ir, -1
  %or.cond.i12 = and i1 %i.it, %i.iu
  br i1 %or.cond.i12, label %bb.ai, label %bb.aj

bb.ah:                                            ; preds = %bb.af
  %i.iv = add i64 %.02566.i6, 1                   ; 2 uses
  %.not.i7 = icmp ugt i64 %i.iv, %.0.i.lcssa1037
  br i1 %.not.i7, label %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit15, label %bb.af, !llvm.loop !30

bb.ai:                                            ; preds = %bb.ag
  %i.iw = sub i64 1, %.02566.i6
  br label %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit15

bb.aj:                                            ; preds = %bb.ag
  %i.ix = getelementptr inbounds i8, ptr %i.in, i64 %i.ip
  %i.iy = add i64 %i.io, %.02566.i6
  %i.iz = tail call fastcc { i32, i64 } @_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1619convert_with_errorsILNS_10endiannessE0EEENS_6resultEPKcmPDs(ptr noundef nonnull readonly %i.ix, i64 noundef %i.iy, ptr noundef %.0.lcssa) ; 2 uses
  %i.ja = extractvalue { i32, i64 } %i.iz, 0      ; 2 uses
  %i.jb = extractvalue { i32, i64 } %i.iz, 1
  %.not33.i13 = icmp eq i32 %i.ja, 0
  %i.jc = select i1 %.not33.i13, i64 0, i64 %.02566.i6
  %spec.select.i14 = sub i64 %i.jb, %i.jc
  br label %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit15

_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit15: ; preds = %bb.ah, %bb.ai, %bb.aj
  %.sroa.4.3.i8 = phi i64 [ %spec.select.i14, %bb.aj ], [ %i.iw, %bb.ai ], [ %i.il, %bb.ah ]
  %.sroa.0.3.i9 = phi i32 [ %i.ja, %bb.aj ], [ 3, %bb.ai ], [ 3, %bb.ah ]
  %i.jd = add i64 %.sroa.4.3.i8, %.0.i.lcssa1037
  br label %_ZN7simdutf7haswell12_GLOBAL__N_113utf8_to_utf1621validating_transcoder19convert_with_errorsILNS_10endiannessE0EEENS_6resultEPKcmPDs.exit

bb.ak:                                            ; preds = %._crit_edge1044
  %i.je = icmp ult i64 %.0.i.lcssa1037, %2
  br i1 %i.je, label %bb.al, label %bb.ar

bb.al:                                            ; preds = %bb.ak
  %i.jf = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i.lcssa1037 ; 2 uses
  %i.jg = sub nuw i64 %2, %.0.i.lcssa1037
  br label %bb.am

bb.am:                                            ; preds = %bb.ao, %bb.al
  %.02566.i16 = phi i64 [ 0, %bb.al ], [ %i.jn, %bb.ao ] ; 7 uses
  %i.jh = sub nsw i64 0, %.02566.i16              ; 2 uses
  %i.ji = getelementptr inbounds i8, ptr %i.jf, i64 %i.jh
  %i.jj = load i8, ptr %i.ji, align 1             ; 2 uses
  %i.jk = icmp sgt i8 %i.jj, -65
  br i1 %i.jk, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.jl = icmp ne i64 %.02566.i16, 0
  %i.jm = icmp sgt i8 %i.jj, -1
  %or.cond.i22 = and i1 %i.jl, %i.jm
  br i1 %or.cond.i22, label %bb.ap, label %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit25

bb.ao:                                            ; preds = %bb.am
  %i.jn = add nuw i64 %.02566.i16, 1
  %exitcond = icmp eq i64 %.02566.i16, %.0.i.lcssa1037
  br i1 %exitcond, label %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit25.thread, label %bb.am, !llvm.loop !30

bb.ap:                                            ; preds = %bb.an
  %i.jo = sub i64 1, %.02566.i16
  br label %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit25.thread

_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit25: ; preds = %bb.an
  %i.jp = getelementptr inbounds i8, ptr %i.jf, i64 %i.jh
  %i.jq = add i64 %i.jg, %.02566.i16
  %i.jr = tail call fastcc { i32, i64 } @_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1619convert_with_errorsILNS_10endiannessE0EEENS_6resultEPKcmPDs(ptr noundef nonnull readonly %i.jp, i64 noundef %i.jq, ptr noundef %.0.lcssa) ; 2 uses
  %i.js = extractvalue { i32, i64 } %i.jr, 0      ; 2 uses
  %i.jt = extractvalue { i32, i64 } %i.jr, 1
  %.not33.i23 = icmp eq i32 %i.js, 0              ; 2 uses
  %i.ju = select i1 %.not33.i23, i64 0, i64 %.02566.i16
  %spec.select.i24 = sub i64 %i.jt, %i.ju         ; 2 uses
  br i1 %.not33.i23, label %bb.aq, label %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit25.thread

_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit25.thread: ; preds = %bb.ao, %bb.ap, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit25
  %.sroa.0.3.i191006 = phi i32 [ %i.js, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit25 ], [ 3, %bb.ap ], [ 3, %bb.ao ]
  %.sroa.4.3.i181005 = phi i64 [ %spec.select.i24, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit25 ], [ %i.jo, %bb.ap ], [ %i.il, %bb.ao ]
  %i.jv = add i64 %.sroa.4.3.i181005, %.0.i.lcssa1037
  br label %_ZN7simdutf7haswell12_GLOBAL__N_113utf8_to_utf1621validating_transcoder19convert_with_errorsILNS_10endiannessE0EEENS_6resultEPKcmPDs.exit

bb.aq:                                            ; preds = %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit25
  %i.jw = getelementptr inbounds nuw [2 x i8], ptr %.0.lcssa, i64 %spec.select.i24
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ak
  %.3 = phi ptr [ %i.jw, %bb.aq ], [ %.0.lcssa, %bb.ak ]
  %i.jx = ptrtoint ptr %.3 to i64
  %i.jy = ptrtoint ptr %3 to i64
  %i.jz = sub i64 %i.jx, %i.jy
  %i.ka = ashr exact i64 %i.jz, 1
  br label %_ZN7simdutf7haswell12_GLOBAL__N_113utf8_to_utf1621validating_transcoder19convert_with_errorsILNS_10endiannessE0EEENS_6resultEPKcmPDs.exit

_ZN7simdutf7haswell12_GLOBAL__N_113utf8_to_utf1621validating_transcoder19convert_with_errorsILNS_10endiannessE0EEENS_6resultEPKcmPDs.exit: ; preds = %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit15, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit25.thread, %bb.ar
  %.sroa.770.0 = phi i64 [ %i.jd, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit15 ], [ %i.ka, %bb.ar ], [ %i.jv, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit25.thread ], [ %i.df, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit ]
  %.sroa.069.0 = phi i32 [ %.sroa.0.3.i9, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit15 ], [ 0, %bb.ar ], [ %.sroa.0.3.i191006, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit25.thread ], [ %.sroa.0.3.i, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit ]
  %.fca.0.insert.i = insertvalue { i32, i64 } poison, i32 %.sroa.069.0, 0
  %.fca.1.insert.i = insertvalue { i32, i64 } %.fca.0.insert.i, i64 %.sroa.770.0, 1
  ret { i32, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden { i32, i64 } @_ZNK7simdutf7haswell14implementation35convert_utf8_to_utf16be_with_errorsEPKcmPDs(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3) unnamed_addr #20 align 2 {
bb.a:
  %.not1067 = icmp eq i64 %2, 0
  br i1 %.not1067, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.055.i1043 = phi i64 [ %i.g, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %.056.i1042 = phi i64 [ %i.f, %.lr.ph ], [ 0, %bb.a ]
  %i.a = getelementptr i8, ptr %1, i64 %.055.i1043
  %i.b = getelementptr i8, ptr %i.a, i64 -1
  %i.c = load i8, ptr %i.b, align 1
  %i.d = icmp sgt i8 %i.c, -65
  %i.e = zext i1 %i.d to i64
  %i.f = add nuw nsw i64 %.056.i1042, %i.e        ; 2 uses
  %i.g = add i64 %.055.i1043, -1                  ; 3 uses
  %i.h = icmp ne i64 %i.g, 0
  %i.i = icmp samesign ult i64 %i.f, 8
  %i.j = select i1 %i.h, i1 %i.i, i1 false
  br i1 %i.j, label %.lr.ph, label %._crit_edge, !llvm.loop !609

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.055.i.lcssa = phi i64 [ 0, %bb.a ], [ %i.g, %.lr.ph ]
  %i.k = add i64 %2, 1
  %i.l = sub i64 %i.k, %.055.i.lcssa              ; 2 uses
  %i.m = add i64 %i.l, 64
  %.not.i1053 = icmp ugt i64 %i.m, %2
  br i1 %.not.i1053, label %._crit_edge1059, label %.lr.ph1058

.lr.ph1058:                                       ; preds = %._crit_edge, %.loopexit
  %i.n = phi i64 [ %i.jk, %.loopexit ], [ 64, %._crit_edge ]
  %.0.i1056 = phi i64 [ %.4.i, %.loopexit ], [ 0, %._crit_edge ] ; 9 uses
  %.sroa.0.01055 = phi <4 x i64> [ %.sroa.0.1, %.loopexit ], [ zeroinitializer, %._crit_edge ] ; 2 uses
  %.01054 = phi ptr [ %.2, %.loopexit ], [ %3, %._crit_edge ] ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i1056 ; 4 uses
  %i.p = load <4 x i64>, ptr %i.o, align 1, !noalias !616 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.r = load <4 x i64>, ptr %i.q, align 1, !noalias !617 ; 6 uses
  %i.s = or <4 x i64> %i.r, %i.p
  %i.t = bitcast <4 x i64> %i.s to <32 x i8>
  %i.u = icmp slt <32 x i8> %i.t, zeroinitializer
  %i.v = bitcast <32 x i1> %i.u to i32
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph1058
  %i.x = bitcast <4 x i64> %i.p to <32 x i8>
  %i.y = shufflevector <32 x i8> %i.x, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.z = zext <16 x i8> %i.y to <16 x i16>
  %i.aa = bitcast <4 x i64> %i.p to <32 x i8>
  %i.ab = shufflevector <32 x i8> %i.aa, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ac = zext <16 x i8> %i.ab to <16 x i16>
  %i.ad = bitcast <16 x i16> %i.z to <32 x i8>
  %i.ae = shufflevector <32 x i8> %i.ad, <32 x i8> poison, <32 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30>
  %i.af = bitcast <16 x i16> %i.ac to <32 x i8>
  %i.ag = shufflevector <32 x i8> %i.af, <32 x i8> poison, <32 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30>
  store <32 x i8> %i.ae, ptr %.01054, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %.01054, i64 32
  store <32 x i8> %i.ag, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %.01054, i64 64
  %i.aj = bitcast <4 x i64> %i.r to <32 x i8>
  %i.ak = shufflevector <32 x i8> %i.aj, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.al = zext <16 x i8> %i.ak to <16 x i16>
  %i.am = bitcast <4 x i64> %i.r to <32 x i8>
  %i.an = shufflevector <32 x i8> %i.am, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ao = zext <16 x i8> %i.an to <16 x i16>
  %i.ap = bitcast <16 x i16> %i.al to <32 x i8>
  %i.aq = shufflevector <32 x i8> %i.ap, <32 x i8> poison, <32 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30>
  %i.ar = bitcast <16 x i16> %i.ao to <32 x i8>
  %i.as = shufflevector <32 x i8> %i.ar, <32 x i8> poison, <32 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30>
  store <32 x i8> %i.aq, ptr %i.ai, align 1
  %i.at = getelementptr inbounds nuw i8, ptr %.01054, i64 96
  store <32 x i8> %i.as, ptr %i.at, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %.01054, i64 128
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph1058
  %i.av = bitcast <4 x i64> %i.p to <32 x i8>     ; 4 uses
  %i.aw = shufflevector <4 x i64> <i64 poison, i64 poison, i64 poison, i64 0>, <4 x i64> %i.p, <4 x i32> <i32 poison, i32 3, i32 poison, i32 5>
  %i.ax = bitcast <4 x i64> %i.aw to <32 x i8>    ; 3 uses
  %i.ay = shufflevector <32 x i8> %i.ax, <32 x i8> %i.av, <32 x i32> <i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62> ; 2 uses
  %i.az = bitcast <32 x i8> %i.ay to <16 x i16>
  %i.ba = lshr <16 x i16> %i.az, splat (i16 4)
  %i.bb = bitcast <16 x i16> %i.ba to <32 x i8>
  %i.bc = and <32 x i8> %i.bb, splat (i8 15)
  %i.bd = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <32 x i8> %i.bc)
  %i.be = and <32 x i8> %i.ay, splat (i8 15)
  %i.bf = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <32 x i8> %i.be)
  %i.bg = bitcast <4 x i64> %i.p to <16 x i16>
  %i.bh = lshr <16 x i16> %i.bg, splat (i16 4)
  %i.bi = bitcast <16 x i16> %i.bh to <32 x i8>
  %i.bj = and <32 x i8> %i.bi, splat (i8 15)
  %i.bk = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <32 x i8> %i.bj)
  %i.bl = and <32 x i8> %i.bf, %i.bd
  %i.bm = and <32 x i8> %i.bl, %i.bk
  %i.bn = shufflevector <32 x i8> %i.ax, <32 x i8> %i.av, <32 x i32> <i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61>
  %i.bo = shufflevector <32 x i8> %i.ax, <32 x i8> %i.av, <32 x i32> <i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60>
  %i.bp = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.bn, <32 x i8> splat (i8 96))
  %i.bq = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.bo, <32 x i8> splat (i8 112))
  %i.br = or <32 x i8> %i.bp, %i.bq
  %.inner1146 = and <32 x i8> %i.br, splat (i8 -128)
  %.inner1147 = xor <32 x i8> %.inner1146, %i.bm
  %i.bs = bitcast <4 x i64> %i.r to <32 x i8>     ; 4 uses
  %i.bt = shufflevector <4 x i64> %i.p, <4 x i64> %i.r, <4 x i32> <i32 poison, i32 3, i32 poison, i32 5>
  %i.bu = bitcast <4 x i64> %i.bt to <32 x i8>    ; 3 uses
  %i.bv = shufflevector <32 x i8> %i.bu, <32 x i8> %i.bs, <32 x i32> <i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62> ; 2 uses
  %i.bw = bitcast <32 x i8> %i.bv to <16 x i16>
  %i.bx = lshr <16 x i16> %i.bw, splat (i16 4)
  %i.by = bitcast <16 x i16> %i.bx to <32 x i8>
  %i.bz = and <32 x i8> %i.by, splat (i8 15)
  %i.ca = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <32 x i8> %i.bz)
  %i.cb = and <32 x i8> %i.bv, splat (i8 15)
  %i.cc = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <32 x i8> %i.cb)
  %i.cd = bitcast <4 x i64> %i.r to <16 x i16>
  %i.ce = lshr <16 x i16> %i.cd, splat (i16 4)
  %i.cf = bitcast <16 x i16> %i.ce to <32 x i8>
  %i.cg = and <32 x i8> %i.cf, splat (i8 15)
  %i.ch = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <32 x i8> %i.cg)
  %i.ci = and <32 x i8> %i.cc, %i.ca
  %i.cj = and <32 x i8> %i.ci, %i.ch
  %i.ck = shufflevector <32 x i8> %i.bu, <32 x i8> %i.bs, <32 x i32> <i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61>
  %i.cl = shufflevector <32 x i8> %i.bu, <32 x i8> %i.bs, <32 x i32> <i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60>
  %i.cm = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.ck, <32 x i8> splat (i8 96))
  %i.cn = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.cl, <32 x i8> splat (i8 112))
  %i.co = or <32 x i8> %i.cm, %i.cn
  %.inner1150 = and <32 x i8> %i.co, splat (i8 -128)
  %.inner1151 = xor <32 x i8> %.inner1150, %i.cj
  %.inner1152 = or <32 x i8> %.inner1147, %.inner1151
  %i.cp = bitcast <32 x i8> %.inner1152 to <4 x i64>
  %i.cq = or <4 x i64> %.sroa.0.01055, %i.cp      ; 4 uses
  %i.cr = icmp slt <32 x i8> %i.av, splat (i8 -64)
  %i.cs = bitcast <32 x i1> %i.cr to i32
  %i.ct = zext i32 %i.cs to i64                   ; 2 uses
  %i.cu = tail call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.cq, <4 x i64> %i.cq)
  %i.cv = icmp ne i32 %i.cu, 0
  %i.cw = and i64 %i.ct, 1
  %.not60.i = icmp eq i64 %i.cw, 0
  %or.cond.i = and i1 %.not60.i, %i.cv
  br i1 %or.cond.i, label %bb.j, label %.critedge.critedge.i

.critedge.critedge.i:                             ; preds = %bb.c
  %i.cx = sub i64 %2, %.0.i1056
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.critedge.critedge.i
  %.02566.i = phi i64 [ 0, %.critedge.critedge.i ], [ %i.de, %bb.f ] ; 6 uses
  %i.cy = sub nsw i64 0, %.02566.i                ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %i.o, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1             ; 2 uses
  %i.db = icmp sgt i8 %i.da, -65
  br i1 %i.db, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.dc = icmp ne i64 %.02566.i, 0
  %i.dd = icmp sgt i8 %i.da, -1
  %or.cond.i5 = and i1 %i.dc, %i.dd
  br i1 %or.cond.i5, label %bb.g, label %bb.i

end_hunk_1
begin_hunk_2_@_ZNK7simdutf7haswell14implementation35convert_utf8_to_utf16be_with_errorsEPKcmPDs:bb.a
  %i.gy = bitcast <8 x i16> %i.gx to <16 x i8>
  %i.gz = shufflevector <16 x i8> %i.gy, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  store <16 x i8> %i.gz, ptr %.11044, align 1
  br label %.sink.split.i

bb.t:                                             ; preds = %bb.r
  %i.ha = icmp samesign ult i8 %i.fn, -47
  br i1 %i.ha, label %bb.u, label %bb.ad

bb.u:                                             ; preds = %bb.t
  %i.hb = zext i8 %i.fn to i64
  %i.hc = getelementptr inbounds nuw [16 x i8], ptr @_ZN7simdutf12_GLOBAL__N_16tables13utf8_to_utf168shufutf8E, i64 %i.hb
  %i.hd = load <16 x i8>, ptr %i.hc, align 16
  %i.he = bitcast <2 x i64> %.val to <16 x i8>
  %i.hf = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.he, <16 x i8> %i.hd) ; 3 uses
  %i.hg = bitcast <16 x i8> %i.hf to <2 x i64>
  %i.hh = and <2 x i64> %i.hg, splat (i64 545460846719)
  %i.hi = bitcast <16 x i8> %i.hf to <4 x i32>    ; 3 uses
  %i.hj = lshr <4 x i32> %i.hi, splat (i32 2)
  %i.hk = bitcast <4 x i32> %i.hj to <2 x i64>
  %i.hl = and <2 x i64> %i.hk, splat (i64 17317308141504)
  %i.hm = bitcast <16 x i8> %i.hf to <2 x i64>
  %i.hn = and <2 x i64> %i.hm, splat (i64 17732923536900096)
  %i.ho = lshr <4 x i32> %i.hi, splat (i32 1)
  %i.hp = bitcast <4 x i32> %i.ho to <2 x i64>
  %i.hq = and <2 x i64> %i.hp, splat (i64 9007199256838144)
  %i.hr = xor <2 x i64> %i.hq, %i.hn
  %i.hs = bitcast <2 x i64> %i.hr to <4 x i32>
  %i.ht = lshr exact <4 x i32> %i.hs, splat (i32 4)
  %i.hu = bitcast <4 x i32> %i.ht to <2 x i64>
  %i.hv = lshr <4 x i32> %i.hi, splat (i32 6)
  %i.hw = bitcast <4 x i32> %i.hv to <2 x i64>
  %i.hx = and <2 x i64> %i.hw, splat (i64 287104476311715840)
  %i.hy = or <2 x i64> %i.hl, %i.hh
  %i.hz = or disjoint <2 x i64> %i.hy, %i.hx
  %i.ia = or disjoint <2 x i64> %i.hz, %i.hu      ; 2 uses
  %i.ib = bitcast <2 x i64> %i.ia to <4 x i32>    ; 5 uses
  %i.ic = add nuw nsw <4 x i32> %i.ib, splat (i32 983040)
  %i.id = lshr <4 x i32> %i.ic, splat (i32 10)
  %.inner1168 = and <4 x i32> %i.id, <i32 1023, i32 1023, i32 1023, i32 poison>
  %i.ie = shl <4 x i32> %i.ib, splat (i32 16)
  %.inner1169 = and <4 x i32> %i.ie, <i32 67043328, i32 67043328, i32 67043328, i32 poison>
  %.inner1170 = or disjoint <4 x i32> %.inner1168, %.inner1169
  %i.if = bitcast <2 x i64> %i.ia to <16 x i8>
  %i.ig = shufflevector <16 x i8> %i.if, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 poison, i32 poison, i32 poison, i32 poison> ; 3 uses
  %i.ih = bitcast <4 x i32> %.inner1170 to <16 x i8>
  %i.ii = or <16 x i8> %i.ih, <i8 0, i8 -40, i8 0, i8 -36, i8 0, i8 -40, i8 0, i8 -36, i8 0, i8 -40, i8 0, i8 -36, i8 poison, i8 poison, i8 poison, i8 poison>
  %i.ij = shufflevector <16 x i8> %i.ii, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 poison, i32 poison, i32 poison, i32 poison> ; 3 uses
  %.sroa.09.0.vec.extract.i = extractelement <4 x i32> %i.ib, i64 0
  %i.ik = icmp samesign ugt i32 %.sroa.09.0.vec.extract.i, 62914560
  br i1 %i.ik, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.il = bitcast <16 x i8> %i.ij to <8 x i16>    ; 2 uses
  %i.im = extractelement <8 x i16> %i.il, i64 0
  %i.in = extractelement <8 x i16> %i.il, i64 1
  %i.io = getelementptr inbounds nuw i8, ptr %.11044, i64 2
  store i16 %i.in, ptr %i.io, align 2
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.ip = bitcast <16 x i8> %i.ig to <8 x i16>
  %i.iq = extractelement <8 x i16> %i.ip, i64 0
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sink = phi i16 [ %i.im, %bb.v ], [ %i.iq, %bb.w ]
  %.sink13.i = phi i64 [ 4, %bb.v ], [ 2, %bb.w ]
  store i16 %.sink, ptr %.11044, align 2
  %i.ir = getelementptr inbounds nuw i8, ptr %.11044, i64 %.sink13.i ; 3 uses
  %.sroa.09.4.vec.extract.i = extractelement <4 x i32> %i.ib, i64 1
  %i.is = icmp samesign ugt i32 %.sroa.09.4.vec.extract.i, 62914560
  br i1 %i.is, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.it = bitcast <16 x i8> %i.ig to <8 x i16>
  %i.iu = extractelement <8 x i16> %i.it, i64 2
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.iv = bitcast <16 x i8> %i.ij to <8 x i16>    ; 2 uses
  %i.iw = extractelement <8 x i16> %i.iv, i64 2
  %i.ix = extractelement <8 x i16> %i.iv, i64 3
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ir, i64 2
  store i16 %i.ix, ptr %i.iy, align 2
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.sink1088 = phi i16 [ %i.iw, %bb.z ], [ %i.iu, %bb.y ]
  %.sink14.i = phi i64 [ 4, %bb.z ], [ 2, %bb.y ]
  store i16 %.sink1088, ptr %i.ir, align 2
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ir, i64 %.sink14.i ; 4 uses
  %.sroa.09.8.vec.extract.i = extractelement <4 x i32> %i.ib, i64 2
  %i.ja = icmp samesign ugt i32 %.sroa.09.8.vec.extract.i, 62914560
  br i1 %i.ja, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.jb = bitcast <16 x i8> %i.ig to <8 x i16>
  %i.jc = extractelement <8 x i16> %i.jb, i64 4
  store i16 %i.jc, ptr %i.iz, align 2
  br label %.sink.split.i

bb.ac:                                            ; preds = %bb.aa
  %i.jd = bitcast <16 x i8> %i.ij to <8 x i16>
  %i.je = shufflevector <8 x i16> %i.jd, <8 x i16> poison, <2 x i32> <i32 4, i32 5>
  store <2 x i16> %i.je, ptr %i.iz, align 2
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.ac, %bb.ab, %bb.s, %bb.q
  %.5 = phi ptr [ %.11044, %bb.q ], [ %.11044, %bb.s ], [ %i.iz, %bb.ac ], [ %i.iz, %bb.ab ]
  %.sink17.i = phi i64 [ 12, %bb.q ], [ 8, %bb.s ], [ 4, %bb.ac ], [ 2, %bb.ab ]
  %i.jf = getelementptr inbounds nuw i8, ptr %.5, i64 %.sink17.i
  br label %bb.ad

bb.ad:                                            ; preds = %.sink.split.i, %bb.t
  %.4 = phi ptr [ %i.jf, %.sink.split.i ], [ %.11044, %bb.t ]
  %i.jg = zext i8 %i.fp to i64
  br label %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE1EEEmPKcmRPDs.exit

_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE1EEEmPKcmRPDs.exit: ; preds = %bb.k, %bb.m, %bb.o, %bb.ad
  %.6 = phi ptr [ %i.ed, %bb.k ], [ %i.er, %bb.m ], [ %i.fl, %bb.o ], [ %.4, %bb.ad ] ; 2 uses
  %.0108.i = phi i64 [ 12, %bb.k ], [ 16, %bb.m ], [ 12, %bb.o ], [ %i.jg, %bb.ad ] ; 2 uses
  %i.jh = add i64 %.0108.i, %.1.i1046             ; 3 uses
  %i.ji = lshr i64 %.052.i1045, %.0108.i
  %i.jj = icmp ult i64 %i.jh, %i.do
  br i1 %i.jj, label %.lr.ph1048, label %.loopexit, !llvm.loop !614

.loopexit:                                        ; preds = %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE1EEEmPKcmRPDs.exit, %bb.j, %bb.b
  %.2 = phi ptr [ %i.au, %bb.b ], [ %.01054, %bb.j ], [ %.6, %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE1EEEmPKcmRPDs.exit ] ; 2 uses
  %.sroa.0.1 = phi <4 x i64> [ %.sroa.0.01055, %bb.b ], [ %i.cq, %bb.j ], [ %i.cq, %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE1EEEmPKcmRPDs.exit ] ; 2 uses
  %.4.i = phi i64 [ %i.n, %bb.b ], [ %.0.i1056, %bb.j ], [ %i.jh, %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE1EEEmPKcmRPDs.exit ] ; 3 uses
  %i.jk = add i64 %.4.i, 64                       ; 2 uses
  %i.jl = add i64 %i.l, %i.jk
  %.not.i = icmp ugt i64 %i.jl, %2
  br i1 %.not.i, label %._crit_edge1059, label %.lr.ph1058, !llvm.loop !615

._crit_edge1059:                                  ; preds = %.loopexit, %._crit_edge
  %.0.i.lcssa1052 = phi i64 [ 0, %._crit_edge ], [ %.4.i, %.loopexit ] ; 10 uses
  %.0.lcssa = phi ptr [ %3, %._crit_edge ], [ %.2, %.loopexit ] ; 4 uses
  %.sroa.0.0.lcssa = phi <4 x i64> [ zeroinitializer, %._crit_edge ], [ %.sroa.0.1, %.loopexit ] ; 2 uses
  %i.jm = sub i64 0, %.0.i.lcssa1052              ; 2 uses
  %i.jn = tail call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %.sroa.0.0.lcssa, <4 x i64> %.sroa.0.0.lcssa)
  %.not = icmp eq i32 %i.jn, 0
  br i1 %.not, label %bb.ae, label %bb.ak

bb.ae:                                            ; preds = %._crit_edge1059
  %i.jo = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i.lcssa1052 ; 2 uses
  %i.jp = sub i64 %2, %.0.i.lcssa1052
  br label %bb.af

bb.af:                                            ; preds = %bb.ah, %bb.ae
  %.02566.i6 = phi i64 [ 0, %bb.ae ], [ %i.jw, %bb.ah ] ; 6 uses
  %i.jq = sub nsw i64 0, %.02566.i6               ; 2 uses
  %i.jr = getelementptr inbounds i8, ptr %i.jo, i64 %i.jq
  %i.js = load i8, ptr %i.jr, align 1             ; 2 uses
  %i.jt = icmp sgt i8 %i.js, -65
  br i1 %i.jt, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ju = icmp ne i64 %.02566.i6, 0
  %i.jv = icmp sgt i8 %i.js, -1
  %or.cond.i12 = and i1 %i.ju, %i.jv
  br i1 %or.cond.i12, label %bb.ai, label %bb.aj

bb.ah:                                            ; preds = %bb.af
  %i.jw = add i64 %.02566.i6, 1                   ; 2 uses
  %.not.i7 = icmp ugt i64 %i.jw, %.0.i.lcssa1052
  br i1 %.not.i7, label %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE1EEENS_6resultEmPKcmPDs.exit15, label %bb.af, !llvm.loop !31

bb.ai:                                            ; preds = %bb.ag
  %i.jx = sub i64 1, %.02566.i6
  br label %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE1EEENS_6resultEmPKcmPDs.exit15

bb.aj:                                            ; preds = %bb.ag
  %i.jy = getelementptr inbounds i8, ptr %i.jo, i64 %i.jq
  %i.jz = add i64 %i.jp, %.02566.i6
  %i.ka = tail call fastcc { i32, i64 } @_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1619convert_with_errorsILNS_10endiannessE1EEENS_6resultEPKcmPDs(ptr noundef nonnull readonly %i.jy, i64 noundef %i.jz, ptr noundef %.0.lcssa) ; 2 uses
  %i.kb = extractvalue { i32, i64 } %i.ka, 0      ; 2 uses
  %i.kc = extractvalue { i32, i64 } %i.ka, 1
  %.not33.i13 = icmp eq i32 %i.kb, 0
  %i.kd = select i1 %.not33.i13, i64 0, i64 %.02566.i6
  %spec.select.i14 = sub i64 %i.kc, %i.kd
  br label %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE1EEENS_6resultEmPKcmPDs.exit15

_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE1EEENS_6resultEmPKcmPDs.exit15: ; preds = %bb.ah, %bb.ai, %bb.aj
  %.sroa.4.3.i8 = phi i64 [ %spec.select.i14, %bb.aj ], [ %i.jx, %bb.ai ], [ %i.jm, %bb.ah ]
  %.sroa.0.3.i9 = phi i32 [ %i.kb, %bb.aj ], [ 3, %bb.ai ], [ 3, %bb.ah ]
  %i.ke = add i64 %.sroa.4.3.i8, %.0.i.lcssa1052
  br label %_ZN7simdutf7haswell12_GLOBAL__N_113utf8_to_utf1621validating_transcoder19convert_with_errorsILNS_10endiannessE1EEENS_6resultEPKcmPDs.exit

bb.ak:                                            ; preds = %._crit_edge1059
  %i.kf = icmp ult i64 %.0.i.lcssa1052, %2
  br i1 %i.kf, label %bb.al, label %bb.ar

bb.al:                                            ; preds = %bb.ak
  %i.kg = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i.lcssa1052 ; 2 uses
  %i.kh = sub nuw i64 %2, %.0.i.lcssa1052
  br label %bb.am

bb.am:                                            ; preds = %bb.ao, %bb.al
  %.02566.i16 = phi i64 [ 0, %bb.al ], [ %i.ko, %bb.ao ] ; 7 uses
  %i.ki = sub nsw i64 0, %.02566.i16              ; 2 uses
  %i.kj = getelementptr inbounds i8, ptr %i.kg, i64 %i.ki
  %i.kk = load i8, ptr %i.kj, align 1             ; 2 uses
  %i.kl = icmp sgt i8 %i.kk, -65
  br i1 %i.kl, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.km = icmp ne i64 %.02566.i16, 0
  %i.kn = icmp sgt i8 %i.kk, -1
  %or.cond.i22 = and i1 %i.km, %i.kn
  br i1 %or.cond.i22, label %bb.ap, label %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE1EEENS_6resultEmPKcmPDs.exit25

bb.ao:                                            ; preds = %bb.am
  %i.ko = add nuw i64 %.02566.i16, 1
  %exitcond = icmp eq i64 %.02566.i16, %.0.i.lcssa1052
  br i1 %exitcond, label %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE1EEENS_6resultEmPKcmPDs.exit25.thread, label %bb.am, !llvm.loop !31

bb.ap:                                            ; preds = %bb.an
  %i.kp = sub i64 1, %.02566.i16
  br label %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE1EEENS_6resultEmPKcmPDs.exit25.thread

_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE1EEENS_6resultEmPKcmPDs.exit25: ; preds = %bb.an
  %i.kq = getelementptr inbounds i8, ptr %i.kg, i64 %i.ki
  %i.kr = add i64 %i.kh, %.02566.i16
  %i.ks = tail call fastcc { i32, i64 } @_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1619convert_with_errorsILNS_10endiannessE1EEENS_6resultEPKcmPDs(ptr noundef nonnull readonly %i.kq, i64 noundef %i.kr, ptr noundef %.0.lcssa) ; 2 uses
  %i.kt = extractvalue { i32, i64 } %i.ks, 0      ; 2 uses
  %i.ku = extractvalue { i32, i64 } %i.ks, 1
  %.not33.i23 = icmp eq i32 %i.kt, 0              ; 2 uses
  %i.kv = select i1 %.not33.i23, i64 0, i64 %.02566.i16
  %spec.select.i24 = sub i64 %i.ku, %i.kv         ; 2 uses
  br i1 %.not33.i23, label %bb.aq, label %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE1EEENS_6resultEmPKcmPDs.exit25.thread

_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE1EEENS_6resultEmPKcmPDs.exit25.thread: ; preds = %bb.ao, %bb.ap, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE1EEENS_6resultEmPKcmPDs.exit25
  %.sroa.0.3.i191021 = phi i32 [ %i.kt, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE1EEENS_6resultEmPKcmPDs.exit25 ], [ 3, %bb.ap ], [ 3, %bb.ao ]
  %.sroa.4.3.i181020 = phi i64 [ %spec.select.i24, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE1EEENS_6resultEmPKcmPDs.exit25 ], [ %i.kp, %bb.ap ], [ %i.jm, %bb.ao ]
  %i.kw = add i64 %.sroa.4.3.i181020, %.0.i.lcssa1052
  br label %_ZN7simdutf7haswell12_GLOBAL__N_113utf8_to_utf1621validating_transcoder19convert_with_errorsILNS_10endiannessE1EEENS_6resultEPKcmPDs.exit

bb.aq:                                            ; preds = %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE1EEENS_6resultEmPKcmPDs.exit25
  %i.kx = getelementptr inbounds nuw [2 x i8], ptr %.0.lcssa, i64 %spec.select.i24
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ak
  %.3 = phi ptr [ %i.kx, %bb.aq ], [ %.0.lcssa, %bb.ak ]
  %i.ky = ptrtoint ptr %.3 to i64
  %i.kz = ptrtoint ptr %3 to i64
  %i.la = sub i64 %i.ky, %i.kz
  %i.lb = ashr exact i64 %i.la, 1
  br label %_ZN7simdutf7haswell12_GLOBAL__N_113utf8_to_utf1621validating_transcoder19convert_with_errorsILNS_10endiannessE1EEENS_6resultEPKcmPDs.exit

_ZN7simdutf7haswell12_GLOBAL__N_113utf8_to_utf1621validating_transcoder19convert_with_errorsILNS_10endiannessE1EEENS_6resultEPKcmPDs.exit: ; preds = %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE1EEENS_6resultEmPKcmPDs.exit, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE1EEENS_6resultEmPKcmPDs.exit15, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE1EEENS_6resultEmPKcmPDs.exit25.thread, %bb.ar
  %.sroa.769.0 = phi i64 [ %i.ke, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE1EEENS_6resultEmPKcmPDs.exit15 ], [ %i.lb, %bb.ar ], [ %i.kw, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE1EEENS_6resultEmPKcmPDs.exit25.thread ], [ %i.dn, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE1EEENS_6resultEmPKcmPDs.exit ]
  %.sroa.068.0 = phi i32 [ %.sroa.0.3.i9, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE1EEENS_6resultEmPKcmPDs.exit15 ], [ 0, %bb.ar ], [ %.sroa.0.3.i191021, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE1EEENS_6resultEmPKcmPDs.exit25.thread ], [ %.sroa.0.3.i, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE1EEENS_6resultEmPKcmPDs.exit ]
  %.fca.0.insert.i = insertvalue { i32, i64 } poison, i32 %.sroa.068.0, 0
  %.fca.1.insert.i = insertvalue { i32, i64 } %.fca.0.insert.i, i64 %.sroa.769.0, 1
  ret { i32, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i64 -4611686018427387904, 4611686018427387904) i64 @_ZNK7simdutf7haswell14implementation29convert_valid_utf8_to_utf16leEPKcmPDs(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3) unnamed_addr #20 align 2 {
bb.a:
  %.not142.i = icmp ult i64 %2, 80
  br i1 %.not142.i, label %_ZN7simdutf7haswell12_GLOBAL__N_113utf8_to_utf1613convert_validILNS_10endiannessE0EEEmPKcmPDs.exit, label %.lr.ph145.i

.lr.ph145.i:                                      ; preds = %bb.a, %.loopexit.i
  %i.a = phi i64 [ %i.fb, %.loopexit.i ], [ 64, %bb.a ]
  %.0144.i = phi i64 [ %.2.i, %.loopexit.i ], [ 0, %bb.a ] ; 5 uses
  %.0135143.i = phi ptr [ %.2137.i, %.loopexit.i ], [ %3, %bb.a ] ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.0144.i ; 2 uses
  %i.c = load <4 x i64>, ptr %i.b, align 1, !noalias !624 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.e = load <4 x i64>, ptr %i.d, align 1, !noalias !625 ; 4 uses
  %i.f = or <4 x i64> %i.e, %i.c
  %i.g = bitcast <4 x i64> %i.f to <32 x i8>
  %i.h = icmp slt <32 x i8> %i.g, zeroinitializer
  %i.i = bitcast <32 x i1> %i.h to i32
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph145.i
  %i.k = bitcast <4 x i64> %i.c to <32 x i8>
  %i.l = shufflevector <32 x i8> %i.k, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.m = zext <16 x i8> %i.l to <16 x i16>
  %i.n = bitcast <4 x i64> %i.c to <32 x i8>
  %i.o = shufflevector <32 x i8> %i.n, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.p = zext <16 x i8> %i.o to <16 x i16>
  store <16 x i16> %i.m, ptr %.0135143.i, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %.0135143.i, i64 32
  store <16 x i16> %i.p, ptr %i.q, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %.0135143.i, i64 64
  %i.s = bitcast <4 x i64> %i.e to <32 x i8>
  %i.t = shufflevector <32 x i8> %i.s, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.u = zext <16 x i8> %i.t to <16 x i16>
  %i.v = bitcast <4 x i64> %i.e to <32 x i8>
  %i.w = shufflevector <32 x i8> %i.v, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.x = zext <16 x i8> %i.w to <16 x i16>
  store <16 x i16> %i.u, ptr %i.r, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %.0135143.i, i64 96
  store <16 x i16> %i.x, ptr %i.y, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %.0135143.i, i64 128
  br label %.loopexit.i

bb.c:                                             ; preds = %.lr.ph145.i
  %i.aa = add i64 %.0144.i, 52
  %i.ab = icmp ult i64 %.0144.i, -52
  br i1 %i.ab, label %.lr.ph.preheader.i, label %.loopexit.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.ac = shufflevector <4 x i64> %i.c, <4 x i64> %i.e, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ad = bitcast <8 x i64> %i.ac to <64 x i8>
  %i.ae = icmp sgt <64 x i8> %i.ad, splat (i8 -65)
  %i.af = bitcast <64 x i1> %i.ae to i64
  %i.ag = lshr i64 %i.af, 1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE0EEEmPKcmRPDs.exit.i, %.lr.ph.preheader.i
  %.1140.i = phi i64 [ %i.ey, %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE0EEEmPKcmRPDs.exit.i ], [ %.0144.i, %.lr.ph.preheader.i ] ; 2 uses
  %.021139.i = phi i64 [ %i.ez, %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE0EEEmPKcmRPDs.exit.i ], [ %i.ag, %.lr.ph.preheader.i ] ; 4 uses
  %.1136138.i = phi ptr [ %.5.i, %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE0EEEmPKcmRPDs.exit.i ], [ %.0135143.i, %.lr.ph.preheader.i ] ; 14 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %.1140.i
  %.val.i = load <2 x i64>, ptr %i.ah, align 1    ; 6 uses
  %i.ai = icmp eq i64 %.021139.i, 4095
  br i1 %i.ai, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  %i.aj = bitcast <2 x i64> %.val.i to <16 x i8>
  %i.ak = zext <16 x i8> %i.aj to <16 x i16>
  store <16 x i16> %i.ak, ptr %.1136138.i, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %.1136138.i, i64 24
  br label %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE0EEEmPKcmRPDs.exit.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.am = and i64 %.021139.i, 65535
  %i.an = icmp eq i64 %i.am, 43690
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ao = bitcast <2 x i64> %.val.i to <16 x i8>
  %i.ap = shufflevector <16 x i8> %i.ao, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14> ; 2 uses
  %i.aq = bitcast <16 x i8> %i.ap to <2 x i64>
  %i.ar = and <2 x i64> %i.aq, splat (i64 35747867511423103)
  %i.as = bitcast <16 x i8> %i.ap to <8 x i16>
  %i.at = lshr <8 x i16> %i.as, splat (i16 2)
  %i.au = bitcast <8 x i16> %i.at to <2 x i64>
  %i.av = and <2 x i64> %i.au, splat (i64 558454875139082176)
  %i.aw = or <2 x i64> %i.av, %i.ar
  store <2 x i64> %i.aw, ptr %.1136138.i, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %.1136138.i, i64 16
  br label %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE0EEEmPKcmRPDs.exit.i

bb.g:                                             ; preds = %bb.e
  %i.ay = and i64 %.021139.i, 4095                ; 2 uses
  %i.az = icmp eq i64 %i.ay, 2340
  br i1 %i.az, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ba = bitcast <2 x i64> %.val.i to <16 x i8>
  %i.bb = shufflevector <16 x i8> %i.ba, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 2, i32 1, i32 0, i32 16, i32 5, i32 4, i32 3, i32 16, i32 8, i32 7, i32 6, i32 16, i32 11, i32 10, i32 9, i32 16> ; 2 uses
  %i.bc = bitcast <16 x i8> %i.bb to <2 x i64>
  %i.bd = and <2 x i64> %i.bc, splat (i64 545460846719)
  %i.be = bitcast <16 x i8> %i.bb to <4 x i32>    ; 2 uses
  %i.bf = lshr <4 x i32> %i.be, splat (i32 2)
  %i.bg = bitcast <4 x i32> %i.bf to <2 x i64>
  %i.bh = and <2 x i64> %i.bg, splat (i64 17317308141504)
  %i.bi = lshr <4 x i32> %i.be, splat (i32 4)
  %i.bj = bitcast <4 x i32> %i.bi to <2 x i64>
  %i.bk = and <2 x i64> %i.bj, splat (i64 263882790727680)
  %i.bl = or <2 x i64> %i.bh, %i.bd
  %i.bm = or disjoint <2 x i64> %i.bl, %i.bk
  %i.bn = bitcast <2 x i64> %i.bm to <4 x i32>    ; 2 uses
  %i.bo = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bn, <4 x i32> %i.bn)
  store <8 x i16> %i.bo, ptr %.1136138.i, align 1
  %i.bp = getelementptr inbounds nuw i8, ptr %.1136138.i, i64 8
  br label %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE0EEEmPKcmRPDs.exit.i

bb.i:                                             ; preds = %bb.g
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr @_ZN7simdutf12_GLOBAL__N_16tables13utf8_to_utf1612utf8bigindexE, i64 %i.ay ; 2 uses
  %i.br = load i8, ptr %i.bq, align 2             ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  %i.bt = load i8, ptr %i.bs, align 1
  %i.bu = icmp ult i8 %i.br, 64
  br i1 %i.bu, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bv = zext nneg i8 %i.br to i64
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr @_ZN7simdutf12_GLOBAL__N_16tables13utf8_to_utf168shufutf8E, i64 %i.bv
  %i.bx = load <16 x i8>, ptr %i.bw, align 16
  %i.by = bitcast <2 x i64> %.val.i to <16 x i8>
  %i.bz = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.by, <16 x i8> %i.bx) ; 2 uses
  %i.ca = bitcast <16 x i8> %i.bz to <2 x i64>
  %i.cb = and <2 x i64> %i.ca, splat (i64 35747867511423103)
  %i.cc = bitcast <16 x i8> %i.bz to <8 x i16>
  %i.cd = lshr <8 x i16> %i.cc, splat (i16 2)
  %i.ce = bitcast <8 x i16> %i.cd to <2 x i64>
  %i.cf = and <2 x i64> %i.ce, splat (i64 558454875139082176)
  %i.cg = or <2 x i64> %i.cf, %i.cb
  store <2 x i64> %i.cg, ptr %.1136138.i, align 1
  br label %.sink.split.i.i

bb.k:                                             ; preds = %bb.i
  %i.ch = icmp ult i8 %i.br, -111
  br i1 %i.ch, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ci = zext i8 %i.br to i64
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr @_ZN7simdutf12_GLOBAL__N_16tables13utf8_to_utf168shufutf8E, i64 %i.ci
  %i.ck = load <16 x i8>, ptr %i.cj, align 16
  %i.cl = bitcast <2 x i64> %.val.i to <16 x i8>
  %i.cm = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.cl, <16 x i8> %i.ck) ; 2 uses
  %i.cn = bitcast <16 x i8> %i.cm to <2 x i64>
  %i.co = and <2 x i64> %i.cn, splat (i64 545460846719)
  %i.cp = bitcast <16 x i8> %i.cm to <4 x i32>    ; 2 uses
  %i.cq = lshr <4 x i32> %i.cp, splat (i32 2)
  %i.cr = bitcast <4 x i32> %i.cq to <2 x i64>
  %i.cs = and <2 x i64> %i.cr, splat (i64 17317308141504)
  %i.ct = lshr <4 x i32> %i.cp, splat (i32 4)
end_hunk_2
begin_hunk_3_@_ZNK7simdutf8westmere14implementation34convert_utf8_to_latin1_with_errorsEPKcmPc:bb.a
  %or.cond.i = and i1 %i.df, %i.dg
  br i1 %or.cond.i, label %bb.h, label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.dh = add i64 %.02566.i, 1                    ; 2 uses
  %.not.i5 = icmp ugt i64 %i.dh, %.0.i302
  br i1 %.not.i5, label %bb.i, label %bb.e, !llvm.loop !29

bb.h:                                             ; preds = %bb.f
  %i.di = sub i64 1, %.02566.i
  br label %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit

bb.i:                                             ; preds = %bb.g
  %i.dj = sub i64 0, %.0.i302
  br label %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit

bb.j:                                             ; preds = %bb.f
  %i.dk = getelementptr inbounds i8, ptr %i.p, i64 %i.db
  %i.dl = add i64 %i.da, %.02566.i
  %i.dm = tail call fastcc { i32, i64 } @_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin119convert_with_errorsEPKcmPc(ptr noundef nonnull readonly %i.dk, i64 noundef %i.dl, ptr noundef %.0300) ; 2 uses
  %i.dn = extractvalue { i32, i64 } %i.dm, 0      ; 2 uses
  %i.do = extractvalue { i32, i64 } %i.dm, 1
  %.not33.i = icmp eq i32 %i.dn, 0
  %i.dp = select i1 %.not33.i, i64 0, i64 %.02566.i
  %spec.select.i = sub i64 %i.do, %i.dp
  br label %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit

_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit: ; preds = %bb.h, %bb.i, %bb.j
  %.sroa.4.3.i = phi i64 [ %spec.select.i, %bb.j ], [ %i.dj, %bb.i ], [ %i.di, %bb.h ]
  %.sroa.0.3.i = phi i32 [ %i.dn, %bb.j ], [ 3, %bb.i ], [ 3, %bb.h ]
  %i.dq = add i64 %.sroa.4.3.i, %.0.i302
  br label %.loopexit

bb.k:                                             ; preds = %bb.c
  %i.dr = add i64 %.0.i302, 52
  %i.ds = icmp ult i64 %.0.i302, -52
  br i1 %i.ds, label %.lr.ph293.preheader, label %.loopexit.thread

.lr.ph293.preheader:                              ; preds = %bb.k
  %i.dt = icmp slt <16 x i8> %i.ay, splat (i8 -64)
  %i.du = bitcast <16 x i1> %i.dt to i16
  %i.dv = icmp slt <16 x i8> %i.ai, splat (i8 -64)
  %i.dw = bitcast <16 x i1> %i.dv to i16
  %i.dx = icmp slt <16 x i8> %i.bp, splat (i8 -64)
  %i.dy = bitcast <16 x i1> %i.dx to i16
  %i.dz = icmp slt <16 x i8> %i.cg, splat (i8 -64)
  %i.ea = bitcast <16 x i1> %i.dz to i16
  %i.eb = insertelement <4 x i16> poison, i16 %i.dw, i64 0
  %i.ec = insertelement <4 x i16> %i.eb, i16 %i.du, i64 1
  %i.ed = insertelement <4 x i16> %i.ec, i16 %i.dy, i64 2
  %i.ee = insertelement <4 x i16> %i.ed, i16 %i.ea, i64 3
  %i.ef = bitcast <4 x i16> %i.ee to i64
  %i.eg = xor i64 %i.ef, -1
  %i.eh = lshr i64 %i.eg, 1
  br label %.lr.ph293

.lr.ph293:                                        ; preds = %.lr.ph293.preheader, %_ZN7simdutf8westmere12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit
  %.1.i291 = phi i64 [ %i.fi, %_ZN7simdutf8westmere12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit ], [ %.0.i302, %.lr.ph293.preheader ] ; 2 uses
  %.058.i290 = phi i64 [ %i.fj, %_ZN7simdutf8westmere12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit ], [ %i.eh, %.lr.ph293.preheader ] ; 3 uses
  %.1289 = phi ptr [ %.6, %_ZN7simdutf8westmere12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit ], [ %.0300, %.lr.ph293.preheader ] ; 5 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 %.1.i291
  %.val = load <2 x i64>, ptr %i.ei, align 1      ; 2 uses
  %i.ej = icmp eq i64 %.058.i290, 4095
  br i1 %i.ej, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph293
  store <2 x i64> %.val, ptr %.1289, align 1
  %i.ek = getelementptr inbounds nuw i8, ptr %.1289, i64 12
  br label %_ZN7simdutf8westmere12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit

bb.m:                                             ; preds = %.lr.ph293
  %i.el = and i64 %.058.i290, 4095
  %i.em = getelementptr inbounds nuw [2 x i8], ptr @_ZN7simdutf12_GLOBAL__N_16tables13utf8_to_utf1612utf8bigindexE, i64 %i.el ; 2 uses
  %i.en = load i8, ptr %i.em, align 2             ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 1
  %i.ep = load i8, ptr %i.eo, align 1
  %i.eq = icmp ugt i8 %i.en, 63
  br i1 %i.eq, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.er = zext nneg i8 %i.en to i64
  %i.es = getelementptr inbounds nuw [16 x i8], ptr @_ZN7simdutf12_GLOBAL__N_16tables13utf8_to_utf168shufutf8E, i64 %i.er
  %i.et = load <16 x i8>, ptr %i.es, align 16
  %i.eu = bitcast <2 x i64> %.val to <16 x i8>
  %i.ev = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.eu, <16 x i8> %i.et) ; 2 uses
  %i.ew = bitcast <16 x i8> %i.ev to <2 x i64>
  %i.ex = and <2 x i64> %i.ew, splat (i64 35747867511423103)
  %i.ey = bitcast <16 x i8> %i.ev to <8 x i16>
  %i.ez = lshr <8 x i16> %i.ey, splat (i16 2)
  %i.fa = bitcast <8 x i16> %i.ez to <2 x i64>
  %i.fb = and <2 x i64> %i.fa, splat (i64 558454875139082176)
  %i.fc = or <2 x i64> %i.fb, %i.ex
  %i.fd = bitcast <2 x i64> %i.fc to <8 x i16>
  %i.fe = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.fd, <8 x i16> poison)
  %i.ff = bitcast <16 x i8> %i.fe to <2 x i64>
  %i.fg = extractelement <2 x i64> %i.ff, i64 0
  store i64 %i.fg, ptr %.1289, align 1
  %i.fh = getelementptr inbounds nuw i8, ptr %.1289, i64 6
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.5 = phi ptr [ %.1289, %bb.m ], [ %i.fh, %bb.n ]
  %.0.i8 = zext i8 %i.ep to i64
  br label %_ZN7simdutf8westmere12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit

_ZN7simdutf8westmere12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit: ; preds = %bb.l, %bb.o
  %.6 = phi ptr [ %i.ek, %bb.l ], [ %.5, %bb.o ]  ; 2 uses
  %.1.i9 = phi i64 [ 12, %bb.l ], [ %.0.i8, %bb.o ] ; 2 uses
  %i.fi = add i64 %.1.i9, %.1.i291                ; 3 uses
  %i.fj = lshr i64 %.058.i290, %.1.i9
  %i.fk = icmp ult i64 %i.fi, %i.dr
  br i1 %i.fk, label %.lr.ph293, label %.loopexit, !llvm.loop !1086

.loopexit:                                        ; preds = %_ZN7simdutf8westmere12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit, %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit
  %.sroa.765.1 = phi i64 [ %i.dq, %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit ], [ %.sroa.765.0298, %_ZN7simdutf8westmere12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit ] ; 2 uses
  %.sroa.064.1 = phi i32 [ %.sroa.0.3.i, %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit ], [ %.sroa.064.0299, %_ZN7simdutf8westmere12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit ] ; 2 uses
  %.2 = phi ptr [ %.0300, %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit ], [ %.6, %_ZN7simdutf8westmere12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit ]
  %.2.i = phi i64 [ %.0.i302, %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit ], [ %i.fi, %_ZN7simdutf8westmere12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit ]
  br i1 %.not, label %_ZN7simdutf8westmere12_GLOBAL__N_114utf8_to_latin121validating_transcoder19convert_with_errorsEPKcmPc.exit, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %bb.k, %.loopexit, %bb.b
  %.sroa.765.2 = phi i64 [ %.sroa.765.0298, %bb.b ], [ %.sroa.765.1, %.loopexit ], [ %.sroa.765.0298, %bb.k ]
  %.sroa.064.2 = phi i32 [ %.sroa.064.0299, %bb.b ], [ %.sroa.064.1, %.loopexit ], [ %.sroa.064.0299, %bb.k ]
  %.3 = phi ptr [ %i.ah, %bb.b ], [ %.2, %.loopexit ], [ %.0300, %bb.k ] ; 2 uses
  %.sroa.0.1 = phi <2 x i64> [ %.sroa.0.0301, %bb.b ], [ %i.cy, %.loopexit ], [ %i.cy, %bb.k ] ; 2 uses
  %.4.i = phi i64 [ %i.n, %bb.b ], [ %.2.i, %.loopexit ], [ %.0.i302, %bb.k ] ; 4 uses
  %i.fl = sub i64 0, %.4.i                        ; 2 uses
  %i.fm = add i64 %.4.i, 64                       ; 2 uses
  %i.fn = add i64 %i.l, %i.fm
  %.not.i = icmp ugt i64 %i.fn, %2
  br i1 %.not.i, label %._crit_edge305, label %.lr.ph304, !llvm.loop !1087

._crit_edge305:                                   ; preds = %.loopexit.thread, %._crit_edge
  %.0.lcssa = phi ptr [ %3, %._crit_edge ], [ %.3, %.loopexit.thread ] ; 4 uses
  %.sroa.0.0.lcssa = phi <2 x i64> [ zeroinitializer, %._crit_edge ], [ %.sroa.0.1, %.loopexit.thread ] ; 2 uses
  %.0.i.lcssa = phi i64 [ 0, %._crit_edge ], [ %.4.i, %.loopexit.thread ] ; 8 uses
  %.lcssa282 = phi i64 [ 0, %._crit_edge ], [ %i.fl, %.loopexit.thread ] ; 3 uses
  %i.fo = tail call noundef i32 @llvm.x86.sse41.ptestz(<2 x i64> %.sroa.0.0.lcssa, <2 x i64> %.sroa.0.0.lcssa)
  %.not267 = icmp eq i32 %i.fo, 0
  br i1 %.not267, label %bb.p, label %bb.w

bb.p:                                             ; preds = %._crit_edge305
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i.lcssa ; 2 uses
  %i.fq = add i64 %.lcssa282, %2
  br label %bb.q

bb.q:                                             ; preds = %bb.s, %bb.p
  %.02566.i10 = phi i64 [ 0, %bb.p ], [ %i.fx, %bb.s ] ; 6 uses
  %i.fr = sub nsw i64 0, %.02566.i10              ; 2 uses
  %i.fs = getelementptr inbounds i8, ptr %i.fp, i64 %i.fr
  %i.ft = load i8, ptr %i.fs, align 1             ; 2 uses
  %i.fu = icmp sgt i8 %i.ft, -65
  br i1 %i.fu, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.fv = icmp ne i64 %.02566.i10, 0
  %i.fw = icmp sgt i8 %i.ft, -1
  %or.cond.i16 = and i1 %i.fv, %i.fw
  br i1 %or.cond.i16, label %bb.t, label %bb.v

bb.s:                                             ; preds = %bb.q
  %i.fx = add i64 %.02566.i10, 1                  ; 2 uses
  %.not.i11 = icmp ugt i64 %i.fx, %.0.i.lcssa
  br i1 %.not.i11, label %bb.u, label %bb.q, !llvm.loop !29

bb.t:                                             ; preds = %bb.r
  %i.fy = sub i64 1, %.02566.i10
  br label %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit19

bb.u:                                             ; preds = %bb.s
  %i.fz = sub i64 0, %.0.i.lcssa
  br label %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit19

bb.v:                                             ; preds = %bb.r
  %i.ga = getelementptr inbounds i8, ptr %i.fp, i64 %i.fr
  %i.gb = add i64 %i.fq, %.02566.i10
  %i.gc = tail call fastcc { i32, i64 } @_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin119convert_with_errorsEPKcmPc(ptr noundef nonnull readonly %i.ga, i64 noundef %i.gb, ptr noundef %.0.lcssa) ; 2 uses
  %i.gd = extractvalue { i32, i64 } %i.gc, 0      ; 2 uses
  %i.ge = extractvalue { i32, i64 } %i.gc, 1
  %.not33.i17 = icmp eq i32 %i.gd, 0
  %i.gf = select i1 %.not33.i17, i64 0, i64 %.02566.i10
  %spec.select.i18 = sub i64 %i.ge, %i.gf
  br label %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit19

_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit19: ; preds = %bb.t, %bb.u, %bb.v
  %.sroa.4.3.i12 = phi i64 [ %spec.select.i18, %bb.v ], [ %i.fz, %bb.u ], [ %i.fy, %bb.t ]
  %.sroa.0.3.i13 = phi i32 [ %i.gd, %bb.v ], [ 3, %bb.u ], [ 3, %bb.t ]
  %i.gg = add i64 %.sroa.4.3.i12, %.0.i.lcssa
  br label %_ZN7simdutf8westmere12_GLOBAL__N_114utf8_to_latin121validating_transcoder19convert_with_errorsEPKcmPc.exit

bb.w:                                             ; preds = %._crit_edge305
  %i.gh = icmp ult i64 %.0.i.lcssa, %2
  br i1 %i.gh, label %bb.x, label %bb.ad

bb.x:                                             ; preds = %bb.w
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i.lcssa ; 2 uses
  %i.gj = add i64 %.lcssa282, %2
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %bb.x
  %.02566.i20 = phi i64 [ 0, %bb.x ], [ %i.gq, %bb.aa ] ; 7 uses
  %i.gk = sub nsw i64 0, %.02566.i20              ; 2 uses
  %i.gl = getelementptr inbounds i8, ptr %i.gi, i64 %i.gk
  %i.gm = load i8, ptr %i.gl, align 1             ; 2 uses
  %i.gn = icmp sgt i8 %i.gm, -65
  br i1 %i.gn, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.go = icmp ne i64 %.02566.i20, 0
  %i.gp = icmp sgt i8 %i.gm, -1
  %or.cond.i26 = and i1 %i.go, %i.gp
  br i1 %or.cond.i26, label %bb.ab, label %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit29

bb.aa:                                            ; preds = %bb.y
  %i.gq = add nuw i64 %.02566.i20, 1
  %exitcond = icmp eq i64 %.02566.i20, %.0.i.lcssa
  br i1 %exitcond, label %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit29.thread, label %bb.y, !llvm.loop !29

bb.ab:                                            ; preds = %bb.z
  %i.gr = sub i64 1, %.02566.i20
  br label %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit29.thread

_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit29: ; preds = %bb.z
  %i.gs = getelementptr inbounds i8, ptr %i.gi, i64 %i.gk
  %i.gt = add i64 %i.gj, %.02566.i20
  %i.gu = tail call fastcc { i32, i64 } @_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin119convert_with_errorsEPKcmPc(ptr noundef nonnull readonly %i.gs, i64 noundef %i.gt, ptr noundef %.0.lcssa) ; 2 uses
  %i.gv = extractvalue { i32, i64 } %i.gu, 0      ; 2 uses
  %i.gw = extractvalue { i32, i64 } %i.gu, 1
  %.not33.i27 = icmp eq i32 %i.gv, 0              ; 2 uses
  %i.gx = select i1 %.not33.i27, i64 0, i64 %.02566.i20
  %spec.select.i28 = sub i64 %i.gw, %i.gx         ; 2 uses
  br i1 %.not33.i27, label %bb.ac, label %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit29.thread

_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit29.thread: ; preds = %bb.aa, %bb.ab, %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit29
  %.sroa.0.3.i23266 = phi i32 [ %i.gv, %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit29 ], [ 3, %bb.ab ], [ 3, %bb.aa ]
  %.sroa.4.3.i22265 = phi i64 [ %spec.select.i28, %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit29 ], [ %i.gr, %bb.ab ], [ %.lcssa282, %bb.aa ]
  %i.gy = add i64 %.sroa.4.3.i22265, %.0.i.lcssa
  br label %_ZN7simdutf8westmere12_GLOBAL__N_114utf8_to_latin121validating_transcoder19convert_with_errorsEPKcmPc.exit

bb.ac:                                            ; preds = %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit29
  %i.gz = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 %spec.select.i28
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.w
  %.4 = phi ptr [ %i.gz, %bb.ac ], [ %.0.lcssa, %bb.w ]
  %i.ha = ptrtoint ptr %.4 to i64
  %i.hb = ptrtoint ptr %3 to i64
  %i.hc = sub i64 %i.ha, %i.hb
  br label %_ZN7simdutf8westmere12_GLOBAL__N_114utf8_to_latin121validating_transcoder19convert_with_errorsEPKcmPc.exit

_ZN7simdutf8westmere12_GLOBAL__N_114utf8_to_latin121validating_transcoder19convert_with_errorsEPKcmPc.exit: ; preds = %.loopexit, %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit19, %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit29.thread, %bb.ad
  %.sroa.765.3 = phi i64 [ %i.gg, %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit19 ], [ %i.hc, %bb.ad ], [ %i.gy, %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit29.thread ], [ %.sroa.765.1, %.loopexit ]
  %.sroa.064.3 = phi i32 [ %.sroa.0.3.i13, %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit19 ], [ 0, %bb.ad ], [ %.sroa.0.3.i23266, %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit29.thread ], [ %.sroa.064.1, %.loopexit ]
  %.fca.0.insert.i = insertvalue { i32, i64 } poison, i32 %.sroa.064.3, 0
  %.fca.1.insert.i = insertvalue { i32, i64 } %.fca.0.insert.i, i64 %.sroa.765.3, 1
  ret { i32, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_ZNK7simdutf8westmere14implementation28convert_valid_utf8_to_latin1EPKcmPc(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3) unnamed_addr #27 align 2 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.035.i46 = phi i64 [ %i.g, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %.036.i45 = phi i64 [ %i.f, %.lr.ph ], [ 0, %bb.a ]
  %i.a = getelementptr i8, ptr %1, i64 %.035.i46
  %i.b = getelementptr i8, ptr %i.a, i64 -1
  %i.c = load i8, ptr %i.b, align 1
  %i.d = icmp sgt i8 %i.c, -65
  %i.e = zext i1 %i.d to i64
  %i.f = add nuw nsw i64 %.036.i45, %i.e          ; 2 uses
  %i.g = add i64 %.035.i46, -1                    ; 3 uses
  %i.h = icmp ne i64 %i.g, 0
  %i.i = icmp samesign ult i64 %i.f, 8
  %i.j = select i1 %i.h, i1 %i.i, i1 false
  br i1 %i.j, label %.lr.ph, label %._crit_edge, !llvm.loop !1088

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.035.i.lcssa = phi i64 [ 0, %bb.a ], [ %i.g, %.lr.ph ]
  %i.k = add i64 %2, 1
  %i.l = sub i64 %i.k, %.035.i.lcssa              ; 2 uses
  %i.m = add i64 %i.l, 64
  %.not.i54 = icmp ugt i64 %i.m, %2
  br i1 %.not.i54, label %._crit_edge59, label %.lr.ph58

.lr.ph58:                                         ; preds = %._crit_edge, %.loopexit
  %i.n = phi i64 [ %i.cf, %.loopexit ], [ 64, %._crit_edge ]
  %.0.i56 = phi i64 [ %.2.i, %.loopexit ], [ 0, %._crit_edge ] ; 5 uses
  %.055 = phi ptr [ %.2, %.loopexit ], [ %3, %._crit_edge ] ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i56 ; 4 uses
  %i.p = load <2 x i64>, ptr %i.o, align 1        ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.r = load <2 x i64>, ptr %i.q, align 1        ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.t = load <2 x i64>, ptr %i.s, align 1        ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.v = load <2 x i64>, ptr %i.u, align 1        ; 3 uses
  %i.w = or <2 x i64> %i.r, %i.p
  %i.x = or <2 x i64> %i.w, %i.t
  %i.y = or <2 x i64> %i.x, %i.v
  %i.z = bitcast <2 x i64> %i.y to <16 x i8>
  %i.aa = icmp slt <16 x i8> %i.z, zeroinitializer
  %i.ab = bitcast <16 x i1> %i.aa to i16
  %i.ac = icmp eq i16 %i.ab, 0
  br i1 %i.ac, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph58
  store <2 x i64> %i.p, ptr %.055, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %.055, i64 16
  store <2 x i64> %i.r, ptr %i.ad, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %.055, i64 32
  store <2 x i64> %i.t, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %.055, i64 48
  store <2 x i64> %i.v, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %.055, i64 64
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph58
  %i.ah = add i64 %.0.i56, 52
  %i.ai = icmp ult i64 %.0.i56, -52
  br i1 %i.ai, label %.lr.ph51.preheader, label %.loopexit

.lr.ph51.preheader:                               ; preds = %bb.c
  %i.aj = bitcast <2 x i64> %i.r to <16 x i8>
  %i.ak = icmp slt <16 x i8> %i.aj, splat (i8 -64)
  %i.al = bitcast <16 x i1> %i.ak to i16
  %i.am = bitcast <2 x i64> %i.p to <16 x i8>
  %i.an = icmp slt <16 x i8> %i.am, splat (i8 -64)
  %i.ao = bitcast <16 x i1> %i.an to i16
  %i.ap = bitcast <2 x i64> %i.t to <16 x i8>
  %i.aq = icmp slt <16 x i8> %i.ap, splat (i8 -64)
  %i.ar = bitcast <16 x i1> %i.aq to i16
  %i.as = bitcast <2 x i64> %i.v to <16 x i8>
  %i.at = icmp slt <16 x i8> %i.as, splat (i8 -64)
  %i.au = bitcast <16 x i1> %i.at to i16
  %i.av = insertelement <4 x i16> poison, i16 %i.ao, i64 0
  %i.aw = insertelement <4 x i16> %i.av, i16 %i.al, i64 1
  %i.ax = insertelement <4 x i16> %i.aw, i16 %i.ar, i64 2
  %i.ay = insertelement <4 x i16> %i.ax, i16 %i.au, i64 3
  %i.az = bitcast <4 x i16> %i.ay to i64
  %i.ba = xor i64 %i.az, -1
  %i.bb = lshr i64 %i.ba, 1
  br label %.lr.ph51

.lr.ph51:                                         ; preds = %.lr.ph51.preheader, %_ZN7simdutf8westmere12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit
  %.1.i49 = phi i64 [ %i.cc, %_ZN7simdutf8westmere12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit ], [ %.0.i56, %.lr.ph51.preheader ] ; 2 uses
  %.034.i48 = phi i64 [ %i.cd, %_ZN7simdutf8westmere12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit ], [ %i.bb, %.lr.ph51.preheader ] ; 3 uses
  %.147 = phi ptr [ %.5, %_ZN7simdutf8westmere12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit ], [ %.055, %.lr.ph51.preheader ] ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 %.1.i49
  %.val = load <2 x i64>, ptr %i.bc, align 1      ; 2 uses
  %i.bd = icmp eq i64 %.034.i48, 4095
  br i1 %i.bd, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph51
  store <2 x i64> %.val, ptr %.147, align 1
  %i.be = getelementptr inbounds nuw i8, ptr %.147, i64 12
  br label %_ZN7simdutf8westmere12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit

bb.e:                                             ; preds = %.lr.ph51
  %i.bf = and i64 %.034.i48, 4095
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr @_ZN7simdutf12_GLOBAL__N_16tables13utf8_to_utf1612utf8bigindexE, i64 %i.bf ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 2             ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = icmp ugt i8 %i.bh, 63
  br i1 %i.bk, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bl = zext nneg i8 %i.bh to i64
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr @_ZN7simdutf12_GLOBAL__N_16tables13utf8_to_utf168shufutf8E, i64 %i.bl
  %i.bn = load <16 x i8>, ptr %i.bm, align 16
  %i.bo = bitcast <2 x i64> %.val to <16 x i8>
  %i.bp = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.bo, <16 x i8> %i.bn) ; 2 uses
  %i.bq = bitcast <16 x i8> %i.bp to <2 x i64>
  %i.br = and <2 x i64> %i.bq, splat (i64 35747867511423103)
  %i.bs = bitcast <16 x i8> %i.bp to <8 x i16>
  %i.bt = lshr <8 x i16> %i.bs, splat (i16 2)
  %i.bu = bitcast <8 x i16> %i.bt to <2 x i64>
  %i.bv = and <2 x i64> %i.bu, splat (i64 558454875139082176)
  %i.bw = or <2 x i64> %i.bv, %i.br
  %i.bx = bitcast <2 x i64> %i.bw to <8 x i16>
  %i.by = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.bx, <8 x i16> poison)
  %i.bz = bitcast <16 x i8> %i.by to <2 x i64>
  %i.ca = extractelement <2 x i64> %i.bz, i64 0
  store i64 %i.ca, ptr %.147, align 1
  %i.cb = getelementptr inbounds nuw i8, ptr %.147, i64 6
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.4 = phi ptr [ %.147, %bb.e ], [ %i.cb, %bb.f ]
  %.0.i2 = zext i8 %i.bj to i64
  br label %_ZN7simdutf8westmere12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit

_ZN7simdutf8westmere12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit: ; preds = %bb.d, %bb.g
  %.5 = phi ptr [ %i.be, %bb.d ], [ %.4, %bb.g ]  ; 2 uses
  %.1.i3 = phi i64 [ 12, %bb.d ], [ %.0.i2, %bb.g ] ; 2 uses
  %i.cc = add i64 %.1.i3, %.1.i49                 ; 3 uses
  %i.cd = lshr i64 %.034.i48, %.1.i3
  %i.ce = icmp ult i64 %i.cc, %i.ah
  br i1 %i.ce, label %.lr.ph51, label %.loopexit, !llvm.loop !1089

.loopexit:                                        ; preds = %_ZN7simdutf8westmere12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit, %bb.c, %bb.b
  %.2 = phi ptr [ %i.ag, %bb.b ], [ %.055, %bb.c ], [ %.5, %_ZN7simdutf8westmere12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit ] ; 2 uses
  %.2.i = phi i64 [ %i.n, %bb.b ], [ %.0.i56, %bb.c ], [ %i.cc, %_ZN7simdutf8westmere12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit ] ; 3 uses
  %i.cf = add i64 %.2.i, 64                       ; 2 uses
  %i.cg = add i64 %i.l, %i.cf
  %.not.i = icmp ugt i64 %i.cg, %2
  br i1 %.not.i, label %._crit_edge59, label %.lr.ph58, !llvm.loop !1090

._crit_edge59:                                    ; preds = %.loopexit, %._crit_edge
  %.0.lcssa = phi ptr [ %3, %._crit_edge ], [ %.2, %.loopexit ] ; 4 uses
  %.0.i.lcssa = phi i64 [ 0, %._crit_edge ], [ %.2.i, %.loopexit ] ; 3 uses
  %i.ch = icmp ult i64 %.0.i.lcssa, %2
  br i1 %i.ch, label %bb.h, label %_ZN7simdutf8westmere12_GLOBAL__N_114utf8_to_latin113convert_validEPKcmPc.exit

end_hunk_3
begin_hunk_4_@_ZNK7simdutf8westmere14implementation35convert_utf8_to_utf16le_with_errorsEPKcmPDs:bb.a
  %i.im = lshr <4 x i32> %i.il, splat (i32 2)
  %i.in = bitcast <4 x i32> %i.im to <2 x i64>
  %i.io = and <2 x i64> %i.in, splat (i64 17317308141504)
  %i.ip = lshr <4 x i32> %i.il, splat (i32 4)
  %i.iq = bitcast <4 x i32> %i.ip to <2 x i64>
  %i.ir = and <2 x i64> %i.iq, splat (i64 263882790727680)
  %i.is = or <2 x i64> %i.io, %i.ik
  %i.it = or disjoint <2 x i64> %i.is, %i.ir
  %i.iu = bitcast <2 x i64> %i.it to <4 x i32>    ; 2 uses
  %i.iv = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.iu, <4 x i32> %i.iu)
  store <8 x i16> %i.iv, ptr %.1433, align 1
  br label %.sink.split.i

bb.t:                                             ; preds = %bb.r
  %i.iw = icmp samesign ult i8 %i.hn, -47
  br i1 %i.iw, label %bb.u, label %bb.ad

bb.u:                                             ; preds = %bb.t
  %i.ix = zext i8 %i.hn to i64
  %i.iy = getelementptr inbounds nuw [16 x i8], ptr @_ZN7simdutf12_GLOBAL__N_16tables13utf8_to_utf168shufutf8E, i64 %i.ix
  %i.iz = load <16 x i8>, ptr %i.iy, align 16
  %i.ja = bitcast <2 x i64> %.val to <16 x i8>
  %i.jb = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.ja, <16 x i8> %i.iz) ; 3 uses
  %i.jc = bitcast <16 x i8> %i.jb to <2 x i64>
  %i.jd = and <2 x i64> %i.jc, splat (i64 545460846719)
  %i.je = bitcast <16 x i8> %i.jb to <4 x i32>    ; 3 uses
  %i.jf = lshr <4 x i32> %i.je, splat (i32 2)
  %i.jg = bitcast <4 x i32> %i.jf to <2 x i64>
  %i.jh = and <2 x i64> %i.jg, splat (i64 17317308141504)
  %i.ji = bitcast <16 x i8> %i.jb to <2 x i64>
  %i.jj = and <2 x i64> %i.ji, splat (i64 17732923536900096)
  %i.jk = lshr <4 x i32> %i.je, splat (i32 1)
  %i.jl = bitcast <4 x i32> %i.jk to <2 x i64>
  %i.jm = and <2 x i64> %i.jl, splat (i64 9007199256838144)
  %i.jn = xor <2 x i64> %i.jm, %i.jj
  %i.jo = bitcast <2 x i64> %i.jn to <4 x i32>
  %i.jp = lshr exact <4 x i32> %i.jo, splat (i32 4)
  %i.jq = lshr <4 x i32> %i.je, splat (i32 6)
  %i.jr = bitcast <4 x i32> %i.jq to <2 x i64>
  %i.js = and <2 x i64> %i.jr, splat (i64 287104476311715840)
  %i.jt = or <2 x i64> %i.jh, %i.jd
  %i.ju = or disjoint <2 x i64> %i.jt, %i.js
  %i.jv = bitcast <2 x i64> %i.ju to <4 x i32>
  %i.jw = or disjoint <4 x i32> %i.jp, %i.jv      ; 5 uses
  %i.jx = add nuw nsw <4 x i32> %i.jw, splat (i32 983040)
  %i.jy = lshr <4 x i32> %i.jx, splat (i32 10)
  %.inner567 = and <4 x i32> %i.jy, splat (i32 1023)
  %i.jz = shl <4 x i32> %i.jw, splat (i32 16)
  %.inner568 = and <4 x i32> %i.jz, splat (i32 67043328)
  %.inner569 = or disjoint <4 x i32> %.inner568, splat (i32 -603924480)
  %.inner570 = or disjoint <4 x i32> %.inner569, %.inner567 ; 3 uses
  %.sroa.03.0.vec.extract.i = extractelement <4 x i32> %i.jw, i64 0 ; 2 uses
  %i.ka = icmp samesign ugt i32 %.sroa.03.0.vec.extract.i, 62914560
  br i1 %i.ka, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.kb = bitcast <4 x i32> %.inner570 to <8 x i16> ; 2 uses
  %i.kc = extractelement <8 x i16> %i.kb, i64 0
  %i.kd = extractelement <8 x i16> %i.kb, i64 1
  %i.ke = getelementptr inbounds nuw i8, ptr %.1433, i64 2
  store i16 %i.kd, ptr %i.ke, align 2
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.kf = trunc i32 %.sroa.03.0.vec.extract.i to i16
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sink = phi i16 [ %i.kc, %bb.v ], [ %i.kf, %bb.w ]
  %.sink7.i = phi i64 [ 4, %bb.v ], [ 2, %bb.w ]
  store i16 %.sink, ptr %.1433, align 2
  %i.kg = getelementptr inbounds nuw i8, ptr %.1433, i64 %.sink7.i ; 3 uses
  %.sroa.03.4.vec.extract.i = extractelement <4 x i32> %i.jw, i64 1 ; 2 uses
  %i.kh = icmp samesign ugt i32 %.sroa.03.4.vec.extract.i, 62914560
  br i1 %i.kh, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ki = trunc i32 %.sroa.03.4.vec.extract.i to i16
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.kj = bitcast <4 x i32> %.inner570 to <8 x i16> ; 2 uses
  %i.kk = extractelement <8 x i16> %i.kj, i64 2
  %i.kl = extractelement <8 x i16> %i.kj, i64 3
  %i.km = getelementptr inbounds nuw i8, ptr %i.kg, i64 2
  store i16 %i.kl, ptr %i.km, align 2
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.sink477 = phi i16 [ %i.kk, %bb.z ], [ %i.ki, %bb.y ]
  %.sink8.i = phi i64 [ 4, %bb.z ], [ 2, %bb.y ]
  store i16 %.sink477, ptr %i.kg, align 2
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kg, i64 %.sink8.i ; 4 uses
  %.sroa.03.8.vec.extract.i = extractelement <4 x i32> %i.jw, i64 2 ; 2 uses
  %i.ko = icmp samesign ugt i32 %.sroa.03.8.vec.extract.i, 62914560
  br i1 %i.ko, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.kp = trunc i32 %.sroa.03.8.vec.extract.i to i16
  store i16 %i.kp, ptr %i.kn, align 2
  br label %.sink.split.i

bb.ac:                                            ; preds = %bb.aa
  %i.kq = bitcast <4 x i32> %.inner570 to <8 x i16>
  %i.kr = shufflevector <8 x i16> %i.kq, <8 x i16> poison, <2 x i32> <i32 4, i32 5>
  store <2 x i16> %i.kr, ptr %i.kn, align 2
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.ac, %bb.ab, %bb.s, %bb.q
  %.5 = phi ptr [ %.1433, %bb.q ], [ %.1433, %bb.s ], [ %i.kn, %bb.ac ], [ %i.kn, %bb.ab ]
  %.sink11.i = phi i64 [ 12, %bb.q ], [ 8, %bb.s ], [ 4, %bb.ac ], [ 2, %bb.ab ]
  %i.ks = getelementptr inbounds nuw i8, ptr %.5, i64 %.sink11.i
  br label %bb.ad

bb.ad:                                            ; preds = %.sink.split.i, %bb.t
  %.4 = phi ptr [ %i.ks, %.sink.split.i ], [ %.1433, %bb.t ]
  %i.kt = zext i8 %i.hp to i64
  br label %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE0EEEmPKcmRPDs.exit

_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE0EEEmPKcmRPDs.exit: ; preds = %bb.k, %bb.m, %bb.o, %bb.ad
  %.6 = phi ptr [ %i.gh, %bb.k ], [ %i.gt, %bb.m ], [ %i.hl, %bb.o ], [ %.4, %bb.ad ] ; 2 uses
  %.0104.i = phi i64 [ 12, %bb.k ], [ 16, %bb.m ], [ 12, %bb.o ], [ %i.kt, %bb.ad ] ; 2 uses
  %i.ku = add i64 %.0104.i, %.1.i435              ; 3 uses
  %i.kv = lshr i64 %.059.i434, %.0104.i
  %i.kw = icmp ult i64 %i.ku, %i.fj
  br i1 %i.kw, label %.lr.ph437, label %.loopexit, !llvm.loop !1098

.loopexit:                                        ; preds = %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE0EEEmPKcmRPDs.exit, %bb.j, %bb.b
  %.2 = phi ptr [ %i.be, %bb.b ], [ %.0443, %bb.j ], [ %.6, %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE0EEEmPKcmRPDs.exit ] ; 2 uses
  %.sroa.0.1 = phi <2 x i64> [ %.sroa.0.0444, %bb.b ], [ %i.el, %bb.j ], [ %i.el, %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE0EEEmPKcmRPDs.exit ] ; 2 uses
  %.4.i = phi i64 [ %i.n, %bb.b ], [ %.0.i445, %bb.j ], [ %i.ku, %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE0EEEmPKcmRPDs.exit ] ; 3 uses
  %i.kx = add i64 %.4.i, 64                       ; 2 uses
  %i.ky = add i64 %i.l, %i.kx
  %.not.i = icmp ugt i64 %i.ky, %2
  br i1 %.not.i, label %._crit_edge448, label %.lr.ph447, !llvm.loop !1099

._crit_edge448:                                   ; preds = %.loopexit, %._crit_edge
  %.0.i.lcssa441 = phi i64 [ 0, %._crit_edge ], [ %.4.i, %.loopexit ] ; 10 uses
  %.0.lcssa = phi ptr [ %3, %._crit_edge ], [ %.2, %.loopexit ] ; 4 uses
  %.sroa.0.0.lcssa = phi <2 x i64> [ zeroinitializer, %._crit_edge ], [ %.sroa.0.1, %.loopexit ] ; 2 uses
  %i.kz = sub i64 0, %.0.i.lcssa441               ; 2 uses
  %i.la = tail call noundef i32 @llvm.x86.sse41.ptestz(<2 x i64> %.sroa.0.0.lcssa, <2 x i64> %.sroa.0.0.lcssa)
  %.not = icmp eq i32 %i.la, 0
  br i1 %.not, label %bb.ae, label %bb.ak

bb.ae:                                            ; preds = %._crit_edge448
  %i.lb = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i.lcssa441 ; 2 uses
  %i.lc = sub i64 %2, %.0.i.lcssa441
  br label %bb.af

bb.af:                                            ; preds = %bb.ah, %bb.ae
  %.02566.i13 = phi i64 [ 0, %bb.ae ], [ %i.lj, %bb.ah ] ; 6 uses
  %i.ld = sub nsw i64 0, %.02566.i13              ; 2 uses
  %i.le = getelementptr inbounds i8, ptr %i.lb, i64 %i.ld
  %i.lf = load i8, ptr %i.le, align 1             ; 2 uses
  %i.lg = icmp sgt i8 %i.lf, -65
  br i1 %i.lg, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.lh = icmp ne i64 %.02566.i13, 0
  %i.li = icmp sgt i8 %i.lf, -1
  %or.cond.i19 = and i1 %i.lh, %i.li
  br i1 %or.cond.i19, label %bb.ai, label %bb.aj

bb.ah:                                            ; preds = %bb.af
  %i.lj = add i64 %.02566.i13, 1                  ; 2 uses
  %.not.i14 = icmp ugt i64 %i.lj, %.0.i.lcssa441
  br i1 %.not.i14, label %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit22, label %bb.af, !llvm.loop !30

bb.ai:                                            ; preds = %bb.ag
  %i.lk = sub i64 1, %.02566.i13
  br label %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit22

bb.aj:                                            ; preds = %bb.ag
  %i.ll = getelementptr inbounds i8, ptr %i.lb, i64 %i.ld
  %i.lm = add i64 %i.lc, %.02566.i13
  %i.ln = tail call fastcc { i32, i64 } @_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1619convert_with_errorsILNS_10endiannessE0EEENS_6resultEPKcmPDs(ptr noundef nonnull readonly %i.ll, i64 noundef %i.lm, ptr noundef %.0.lcssa) ; 2 uses
  %i.lo = extractvalue { i32, i64 } %i.ln, 0      ; 2 uses
  %i.lp = extractvalue { i32, i64 } %i.ln, 1
  %.not33.i20 = icmp eq i32 %i.lo, 0
  %i.lq = select i1 %.not33.i20, i64 0, i64 %.02566.i13
  %spec.select.i21 = sub i64 %i.lp, %i.lq
  br label %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit22

_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit22: ; preds = %bb.ah, %bb.ai, %bb.aj
  %.sroa.4.3.i15 = phi i64 [ %spec.select.i21, %bb.aj ], [ %i.lk, %bb.ai ], [ %i.kz, %bb.ah ]
  %.sroa.0.3.i16 = phi i32 [ %i.lo, %bb.aj ], [ 3, %bb.ai ], [ 3, %bb.ah ]
  %i.lr = add i64 %.sroa.4.3.i15, %.0.i.lcssa441
  br label %_ZN7simdutf8westmere12_GLOBAL__N_113utf8_to_utf1621validating_transcoder19convert_with_errorsILNS_10endiannessE0EEENS_6resultEPKcmPDs.exit

bb.ak:                                            ; preds = %._crit_edge448
  %i.ls = icmp ult i64 %.0.i.lcssa441, %2
  br i1 %i.ls, label %bb.al, label %bb.ar

bb.al:                                            ; preds = %bb.ak
  %i.lt = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i.lcssa441 ; 2 uses
  %i.lu = sub nuw i64 %2, %.0.i.lcssa441
  br label %bb.am

bb.am:                                            ; preds = %bb.ao, %bb.al
  %.02566.i23 = phi i64 [ 0, %bb.al ], [ %i.mb, %bb.ao ] ; 7 uses
  %i.lv = sub nsw i64 0, %.02566.i23              ; 2 uses
  %i.lw = getelementptr inbounds i8, ptr %i.lt, i64 %i.lv
  %i.lx = load i8, ptr %i.lw, align 1             ; 2 uses
  %i.ly = icmp sgt i8 %i.lx, -65
  br i1 %i.ly, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.lz = icmp ne i64 %.02566.i23, 0
  %i.ma = icmp sgt i8 %i.lx, -1
  %or.cond.i29 = and i1 %i.lz, %i.ma
  br i1 %or.cond.i29, label %bb.ap, label %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit32

bb.ao:                                            ; preds = %bb.am
  %i.mb = add nuw i64 %.02566.i23, 1
  %exitcond = icmp eq i64 %.02566.i23, %.0.i.lcssa441
  br i1 %exitcond, label %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit32.thread, label %bb.am, !llvm.loop !30

bb.ap:                                            ; preds = %bb.an
  %i.mc = sub i64 1, %.02566.i23
  br label %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit32.thread

_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit32: ; preds = %bb.an
  %i.md = getelementptr inbounds i8, ptr %i.lt, i64 %i.lv
  %i.me = add i64 %i.lu, %.02566.i23
  %i.mf = tail call fastcc { i32, i64 } @_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1619convert_with_errorsILNS_10endiannessE0EEENS_6resultEPKcmPDs(ptr noundef nonnull readonly %i.md, i64 noundef %i.me, ptr noundef %.0.lcssa) ; 2 uses
  %i.mg = extractvalue { i32, i64 } %i.mf, 0      ; 2 uses
  %i.mh = extractvalue { i32, i64 } %i.mf, 1
  %.not33.i30 = icmp eq i32 %i.mg, 0              ; 2 uses
  %i.mi = select i1 %.not33.i30, i64 0, i64 %.02566.i23
  %spec.select.i31 = sub i64 %i.mh, %i.mi         ; 2 uses
  br i1 %.not33.i30, label %bb.aq, label %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit32.thread

_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit32.thread: ; preds = %bb.ao, %bb.ap, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit32
  %.sroa.0.3.i26410 = phi i32 [ %i.mg, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit32 ], [ 3, %bb.ap ], [ 3, %bb.ao ]
  %.sroa.4.3.i25409 = phi i64 [ %spec.select.i31, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit32 ], [ %i.mc, %bb.ap ], [ %i.kz, %bb.ao ]
  %i.mj = add i64 %.sroa.4.3.i25409, %.0.i.lcssa441
  br label %_ZN7simdutf8westmere12_GLOBAL__N_113utf8_to_utf1621validating_transcoder19convert_with_errorsILNS_10endiannessE0EEENS_6resultEPKcmPDs.exit

bb.aq:                                            ; preds = %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit32
  %i.mk = getelementptr inbounds nuw [2 x i8], ptr %.0.lcssa, i64 %spec.select.i31
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ak
  %.3 = phi ptr [ %i.mk, %bb.aq ], [ %.0.lcssa, %bb.ak ]
  %i.ml = ptrtoint ptr %.3 to i64
  %i.mm = ptrtoint ptr %3 to i64
  %i.mn = sub i64 %i.ml, %i.mm
  %i.mo = ashr exact i64 %i.mn, 1
  br label %_ZN7simdutf8westmere12_GLOBAL__N_113utf8_to_utf1621validating_transcoder19convert_with_errorsILNS_10endiannessE0EEENS_6resultEPKcmPDs.exit

_ZN7simdutf8westmere12_GLOBAL__N_113utf8_to_utf1621validating_transcoder19convert_with_errorsILNS_10endiannessE0EEENS_6resultEPKcmPDs.exit: ; preds = %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit22, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit32.thread, %bb.ar
  %.sroa.785.0 = phi i64 [ %i.lr, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit22 ], [ %i.mo, %bb.ar ], [ %i.mj, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit32.thread ], [ %i.fi, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit ]
  %.sroa.084.0 = phi i32 [ %.sroa.0.3.i16, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit22 ], [ 0, %bb.ar ], [ %.sroa.0.3.i26410, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit32.thread ], [ %.sroa.0.3.i, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE0EEENS_6resultEmPKcmPDs.exit ]
  %.fca.0.insert.i = insertvalue { i32, i64 } poison, i32 %.sroa.084.0, 0
  %.fca.1.insert.i = insertvalue { i32, i64 } %.fca.0.insert.i, i64 %.sroa.785.0, 1
  ret { i32, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden { i32, i64 } @_ZNK7simdutf8westmere14implementation35convert_utf8_to_utf16be_with_errorsEPKcmPDs(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3) unnamed_addr #28 align 2 {
bb.a:
  %.not455 = icmp eq i64 %2, 0
  br i1 %.not455, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.062.i431 = phi i64 [ %i.f, %.lr.ph ], [ 0, %bb.a ]
  %.063.i430 = phi i64 [ %i.g, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %i.a = getelementptr i8, ptr %1, i64 %.063.i430
  %i.b = getelementptr i8, ptr %i.a, i64 -1
  %i.c = load i8, ptr %i.b, align 1
  %i.d = icmp sgt i8 %i.c, -65
  %i.e = zext i1 %i.d to i64
  %i.f = add nuw nsw i64 %.062.i431, %i.e         ; 2 uses
  %i.g = add i64 %.063.i430, -1                   ; 3 uses
  %i.h = icmp ne i64 %i.g, 0
  %i.i = icmp samesign ult i64 %i.f, 8
  %i.j = select i1 %i.h, i1 %i.i, i1 false
  br i1 %i.j, label %.lr.ph, label %._crit_edge, !llvm.loop !1100

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.063.i.lcssa = phi i64 [ 0, %bb.a ], [ %i.g, %.lr.ph ]
  %i.k = add i64 %2, 1
  %i.l = sub i64 %i.k, %.063.i.lcssa              ; 2 uses
  %i.m = add i64 %i.l, 64
  %.not.i441 = icmp ugt i64 %i.m, %2
  br i1 %.not.i441, label %._crit_edge447, label %.lr.ph446

.lr.ph446:                                        ; preds = %._crit_edge, %.loopexit
  %i.n = phi i64 [ %i.mi, %.loopexit ], [ 64, %._crit_edge ]
  %.0.i444 = phi i64 [ %.4.i, %.loopexit ], [ 0, %._crit_edge ] ; 9 uses
  %.sroa.0.0443 = phi <2 x i64> [ %.sroa.0.1, %.loopexit ], [ zeroinitializer, %._crit_edge ] ; 2 uses
  %.0442 = phi ptr [ %.2, %.loopexit ], [ %3, %._crit_edge ] ; 12 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i444 ; 6 uses
  %i.p = load <2 x i64>, ptr %i.o, align 1        ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.r = load <2 x i64>, ptr %i.q, align 1        ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.t = load <2 x i64>, ptr %i.s, align 1        ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.v = load <2 x i64>, ptr %i.u, align 1        ; 5 uses
  %i.w = or <2 x i64> %i.r, %i.p
  %i.x = or <2 x i64> %i.w, %i.t
  %i.y = or <2 x i64> %i.x, %i.v
  %i.z = bitcast <2 x i64> %i.y to <16 x i8>
  %i.aa = icmp slt <16 x i8> %i.z, zeroinitializer
  %i.ab = bitcast <16 x i1> %i.aa to i16
  %i.ac = icmp eq i16 %i.ab, 0
  %i.ad = bitcast <2 x i64> %i.p to <16 x i8>     ; 9 uses
  br i1 %i.ac, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph446
  %i.ae = shufflevector <16 x i8> %i.ad, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.af = zext <8 x i8> %i.ae to <8 x i16>
  %i.ag = shufflevector <16 x i8> %i.ad, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ah = zext <8 x i8> %i.ag to <8 x i16>
  %i.ai = bitcast <8 x i16> %i.af to <16 x i8>
  %i.aj = shufflevector <16 x i8> %i.ai, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %i.ak = bitcast <8 x i16> %i.ah to <16 x i8>
  %i.al = shufflevector <16 x i8> %i.ak, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  store <16 x i8> %i.aj, ptr %.0442, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %.0442, i64 16
  store <16 x i8> %i.al, ptr %i.am, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %.0442, i64 32
  %i.ao = bitcast <2 x i64> %i.r to <16 x i8>     ; 2 uses
  %i.ap = shufflevector <16 x i8> %i.ao, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aq = zext <8 x i8> %i.ap to <8 x i16>
  %i.ar = shufflevector <16 x i8> %i.ao, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.as = zext <8 x i8> %i.ar to <8 x i16>
  %i.at = bitcast <8 x i16> %i.aq to <16 x i8>
  %i.au = shufflevector <16 x i8> %i.at, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %i.av = bitcast <8 x i16> %i.as to <16 x i8>
  %i.aw = shufflevector <16 x i8> %i.av, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  store <16 x i8> %i.au, ptr %i.an, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %.0442, i64 48
  store <16 x i8> %i.aw, ptr %i.ax, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %.0442, i64 64
  %i.az = bitcast <2 x i64> %i.t to <16 x i8>     ; 2 uses
  %i.ba = shufflevector <16 x i8> %i.az, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bb = zext <8 x i8> %i.ba to <8 x i16>
  %i.bc = shufflevector <16 x i8> %i.az, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bd = zext <8 x i8> %i.bc to <8 x i16>
  %i.be = bitcast <8 x i16> %i.bb to <16 x i8>
  %i.bf = shufflevector <16 x i8> %i.be, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %i.bg = bitcast <8 x i16> %i.bd to <16 x i8>
  %i.bh = shufflevector <16 x i8> %i.bg, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  store <16 x i8> %i.bf, ptr %i.ay, align 1
  %i.bi = getelementptr inbounds nuw i8, ptr %.0442, i64 80
  store <16 x i8> %i.bh, ptr %i.bi, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %.0442, i64 96
  %i.bk = bitcast <2 x i64> %i.v to <16 x i8>     ; 2 uses
  %i.bl = shufflevector <16 x i8> %i.bk, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bm = zext <8 x i8> %i.bl to <8 x i16>
  %i.bn = shufflevector <16 x i8> %i.bk, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bo = zext <8 x i8> %i.bn to <8 x i16>
  %i.bp = bitcast <8 x i16> %i.bm to <16 x i8>
  %i.bq = shufflevector <16 x i8> %i.bp, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %i.br = bitcast <8 x i16> %i.bo to <16 x i8>
  %i.bs = shufflevector <16 x i8> %i.br, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  store <16 x i8> %i.bq, ptr %i.bj, align 1
  %i.bt = getelementptr inbounds nuw i8, ptr %.0442, i64 112
  store <16 x i8> %i.bs, ptr %i.bt, align 1
  %i.bu = getelementptr inbounds nuw i8, ptr %.0442, i64 128
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph446
  %i.bv = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0>, <16 x i8> %i.ad, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30> ; 2 uses
  %i.bw = bitcast <16 x i8> %i.bv to <8 x i16>
  %i.bx = lshr <8 x i16> %i.bw, splat (i16 4)
  %i.by = bitcast <8 x i16> %i.bx to <16 x i8>
  %i.bz = and <16 x i8> %i.by, splat (i8 15)
  %i.ca = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <16 x i8> %i.bz)
  %i.cb = and <16 x i8> %i.bv, splat (i8 15)
  %i.cc = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <16 x i8> %i.cb)
  %i.cd = bitcast <2 x i64> %i.p to <8 x i16>
  %i.ce = lshr <8 x i16> %i.cd, splat (i16 4)
  %i.cf = bitcast <8 x i16> %i.ce to <16 x i8>
  %i.cg = and <16 x i8> %i.cf, splat (i8 15)
  %i.ch = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.cg)
  %i.ci = and <16 x i8> %i.cc, %i.ca
  %i.cj = and <16 x i8> %i.ci, %i.ch
  %i.ck = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %i.ad, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.cl = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0>, <16 x i8> %i.ad, <16 x i32> <i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28>
  %i.cm = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.ck, <16 x i8> splat (i8 96))
  %i.cn = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.cl, <16 x i8> splat (i8 112))
  %i.co = or <16 x i8> %i.cm, %i.cn
  %.inner534 = and <16 x i8> %i.co, splat (i8 -128)
  %.inner535 = xor <16 x i8> %.inner534, %i.cj
  %i.cp = bitcast <2 x i64> %i.r to <16 x i8>     ; 7 uses
  %i.cq = shufflevector <16 x i8> %i.ad, <16 x i8> %i.cp, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30> ; 2 uses
  %i.cr = bitcast <16 x i8> %i.cq to <8 x i16>
  %i.cs = lshr <8 x i16> %i.cr, splat (i16 4)
  %i.ct = bitcast <8 x i16> %i.cs to <16 x i8>
  %i.cu = and <16 x i8> %i.ct, splat (i8 15)
  %i.cv = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <16 x i8> %i.cu)
  %i.cw = and <16 x i8> %i.cq, splat (i8 15)
  %i.cx = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <16 x i8> %i.cw)
  %i.cy = bitcast <2 x i64> %i.r to <8 x i16>
  %i.cz = lshr <8 x i16> %i.cy, splat (i16 4)
  %i.da = bitcast <8 x i16> %i.cz to <16 x i8>
  %i.db = and <16 x i8> %i.da, splat (i8 15)
  %i.dc = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.db)
  %i.dd = and <16 x i8> %i.cx, %i.cv
  %i.de = and <16 x i8> %i.dd, %i.dc
  %i.df = shufflevector <16 x i8> %i.ad, <16 x i8> %i.cp, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.dg = shufflevector <16 x i8> %i.ad, <16 x i8> %i.cp, <16 x i32> <i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28>
  %i.dh = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.df, <16 x i8> splat (i8 96))
  %i.di = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.dg, <16 x i8> splat (i8 112))
  %i.dj = or <16 x i8> %i.dh, %i.di
  %.inner538 = and <16 x i8> %i.dj, splat (i8 -128)
  %.inner539 = xor <16 x i8> %.inner538, %i.de
  %i.dk = bitcast <2 x i64> %i.t to <16 x i8>     ; 6 uses
  %i.dl = shufflevector <16 x i8> %i.cp, <16 x i8> %i.dk, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30> ; 2 uses
  %i.dm = bitcast <16 x i8> %i.dl to <8 x i16>
  %i.dn = lshr <8 x i16> %i.dm, splat (i16 4)
  %i.do = bitcast <8 x i16> %i.dn to <16 x i8>
  %i.dp = and <16 x i8> %i.do, splat (i8 15)
end_hunk_4
begin_hunk_5_@_ZNK7simdutf8westmere14implementation35convert_utf8_to_utf16be_with_errorsEPKcmPDs:bb.a
  %i.jw = bitcast <8 x i16> %i.jv to <16 x i8>
  %i.jx = shufflevector <16 x i8> %i.jw, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  store <16 x i8> %i.jx, ptr %.1432, align 1
  br label %.sink.split.i

bb.t:                                             ; preds = %bb.r
  %i.jy = icmp samesign ult i8 %i.il, -47
  br i1 %i.jy, label %bb.u, label %bb.ad

bb.u:                                             ; preds = %bb.t
  %i.jz = zext i8 %i.il to i64
  %i.ka = getelementptr inbounds nuw [16 x i8], ptr @_ZN7simdutf12_GLOBAL__N_16tables13utf8_to_utf168shufutf8E, i64 %i.jz
  %i.kb = load <16 x i8>, ptr %i.ka, align 16
  %i.kc = bitcast <2 x i64> %.val to <16 x i8>
  %i.kd = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.kc, <16 x i8> %i.kb) ; 3 uses
  %i.ke = bitcast <16 x i8> %i.kd to <2 x i64>
  %i.kf = and <2 x i64> %i.ke, splat (i64 545460846719)
  %i.kg = bitcast <16 x i8> %i.kd to <4 x i32>    ; 3 uses
  %i.kh = lshr <4 x i32> %i.kg, splat (i32 2)
  %i.ki = bitcast <4 x i32> %i.kh to <2 x i64>
  %i.kj = and <2 x i64> %i.ki, splat (i64 17317308141504)
  %i.kk = bitcast <16 x i8> %i.kd to <2 x i64>
  %i.kl = and <2 x i64> %i.kk, splat (i64 17732923536900096)
  %i.km = lshr <4 x i32> %i.kg, splat (i32 1)
  %i.kn = bitcast <4 x i32> %i.km to <2 x i64>
  %i.ko = and <2 x i64> %i.kn, splat (i64 9007199256838144)
  %i.kp = xor <2 x i64> %i.ko, %i.kl
  %i.kq = bitcast <2 x i64> %i.kp to <4 x i32>
  %i.kr = lshr exact <4 x i32> %i.kq, splat (i32 4)
  %i.ks = bitcast <4 x i32> %i.kr to <2 x i64>
  %i.kt = lshr <4 x i32> %i.kg, splat (i32 6)
  %i.ku = bitcast <4 x i32> %i.kt to <2 x i64>
  %i.kv = and <2 x i64> %i.ku, splat (i64 287104476311715840)
  %i.kw = or <2 x i64> %i.kj, %i.kf
  %i.kx = or disjoint <2 x i64> %i.kw, %i.kv
  %i.ky = or disjoint <2 x i64> %i.kx, %i.ks      ; 2 uses
  %i.kz = bitcast <2 x i64> %i.ky to <4 x i32>    ; 5 uses
  %i.la = add nuw nsw <4 x i32> %i.kz, splat (i32 983040)
  %i.lb = lshr <4 x i32> %i.la, splat (i32 10)
  %.inner566 = and <4 x i32> %i.lb, <i32 1023, i32 1023, i32 1023, i32 poison>
  %i.lc = shl <4 x i32> %i.kz, splat (i32 16)
  %.inner567 = and <4 x i32> %i.lc, <i32 67043328, i32 67043328, i32 67043328, i32 poison>
  %.inner568 = or disjoint <4 x i32> %.inner566, %.inner567
  %i.ld = bitcast <2 x i64> %i.ky to <16 x i8>
  %i.le = shufflevector <16 x i8> %i.ld, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 poison, i32 poison, i32 poison, i32 poison> ; 3 uses
  %i.lf = bitcast <4 x i32> %.inner568 to <16 x i8>
  %i.lg = or <16 x i8> %i.lf, <i8 0, i8 -40, i8 0, i8 -36, i8 0, i8 -40, i8 0, i8 -36, i8 0, i8 -40, i8 0, i8 -36, i8 poison, i8 poison, i8 poison, i8 poison>
  %i.lh = shufflevector <16 x i8> %i.lg, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 poison, i32 poison, i32 poison, i32 poison> ; 3 uses
  %.sroa.05.0.vec.extract.i = extractelement <4 x i32> %i.kz, i64 0
  %i.li = icmp samesign ugt i32 %.sroa.05.0.vec.extract.i, 62914560
  br i1 %i.li, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.lj = bitcast <16 x i8> %i.lh to <8 x i16>    ; 2 uses
  %i.lk = extractelement <8 x i16> %i.lj, i64 0
  %i.ll = extractelement <8 x i16> %i.lj, i64 1
  %i.lm = getelementptr inbounds nuw i8, ptr %.1432, i64 2
  store i16 %i.ll, ptr %i.lm, align 2
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.ln = bitcast <16 x i8> %i.le to <8 x i16>
  %i.lo = extractelement <8 x i16> %i.ln, i64 0
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sink = phi i16 [ %i.lk, %bb.v ], [ %i.lo, %bb.w ]
  %.sink9.i = phi i64 [ 4, %bb.v ], [ 2, %bb.w ]
  store i16 %.sink, ptr %.1432, align 2
  %i.lp = getelementptr inbounds nuw i8, ptr %.1432, i64 %.sink9.i ; 3 uses
  %.sroa.05.4.vec.extract.i = extractelement <4 x i32> %i.kz, i64 1
  %i.lq = icmp samesign ugt i32 %.sroa.05.4.vec.extract.i, 62914560
  br i1 %i.lq, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.lr = bitcast <16 x i8> %i.le to <8 x i16>
  %i.ls = extractelement <8 x i16> %i.lr, i64 2
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.lt = bitcast <16 x i8> %i.lh to <8 x i16>    ; 2 uses
  %i.lu = extractelement <8 x i16> %i.lt, i64 2
  %i.lv = extractelement <8 x i16> %i.lt, i64 3
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lp, i64 2
  store i16 %i.lv, ptr %i.lw, align 2
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.sink476 = phi i16 [ %i.lu, %bb.z ], [ %i.ls, %bb.y ]
  %.sink10.i = phi i64 [ 4, %bb.z ], [ 2, %bb.y ]
  store i16 %.sink476, ptr %i.lp, align 2
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lp, i64 %.sink10.i ; 4 uses
  %.sroa.05.8.vec.extract.i = extractelement <4 x i32> %i.kz, i64 2
  %i.ly = icmp samesign ugt i32 %.sroa.05.8.vec.extract.i, 62914560
  br i1 %i.ly, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.lz = bitcast <16 x i8> %i.le to <8 x i16>
  %i.ma = extractelement <8 x i16> %i.lz, i64 4
  store i16 %i.ma, ptr %i.lx, align 2
  br label %.sink.split.i

bb.ac:                                            ; preds = %bb.aa
  %i.mb = bitcast <16 x i8> %i.lh to <8 x i16>
  %i.mc = shufflevector <8 x i16> %i.mb, <8 x i16> poison, <2 x i32> <i32 4, i32 5>
  store <2 x i16> %i.mc, ptr %i.lx, align 2
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.ac, %bb.ab, %bb.s, %bb.q
  %.5 = phi ptr [ %.1432, %bb.q ], [ %.1432, %bb.s ], [ %i.lx, %bb.ac ], [ %i.lx, %bb.ab ]
  %.sink13.i = phi i64 [ 12, %bb.q ], [ 8, %bb.s ], [ 4, %bb.ac ], [ 2, %bb.ab ]
  %i.md = getelementptr inbounds nuw i8, ptr %.5, i64 %.sink13.i
  br label %bb.ad

bb.ad:                                            ; preds = %.sink.split.i, %bb.t
  %.4 = phi ptr [ %i.md, %.sink.split.i ], [ %.1432, %bb.t ]
  %i.me = zext i8 %i.in to i64
  br label %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE1EEEmPKcmRPDs.exit

_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE1EEEmPKcmRPDs.exit: ; preds = %bb.k, %bb.m, %bb.o, %bb.ad
  %.6 = phi ptr [ %i.hb, %bb.k ], [ %i.hp, %bb.m ], [ %i.ij, %bb.o ], [ %.4, %bb.ad ] ; 2 uses
  %.0112.i = phi i64 [ 12, %bb.k ], [ 16, %bb.m ], [ 12, %bb.o ], [ %i.me, %bb.ad ] ; 2 uses
  %i.mf = add i64 %.0112.i, %.1.i434              ; 3 uses
  %i.mg = lshr i64 %.059.i433, %.0112.i
  %i.mh = icmp ult i64 %i.mf, %i.fz
  br i1 %i.mh, label %.lr.ph436, label %.loopexit, !llvm.loop !1101

.loopexit:                                        ; preds = %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE1EEEmPKcmRPDs.exit, %bb.j, %bb.b
  %.2 = phi ptr [ %i.bu, %bb.b ], [ %.0442, %bb.j ], [ %.6, %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE1EEEmPKcmRPDs.exit ] ; 2 uses
  %.sroa.0.1 = phi <2 x i64> [ %.sroa.0.0443, %bb.b ], [ %i.fb, %bb.j ], [ %i.fb, %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE1EEEmPKcmRPDs.exit ] ; 2 uses
  %.4.i = phi i64 [ %i.n, %bb.b ], [ %.0.i444, %bb.j ], [ %i.mf, %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE1EEEmPKcmRPDs.exit ] ; 3 uses
  %i.mi = add i64 %.4.i, 64                       ; 2 uses
  %i.mj = add i64 %i.l, %i.mi
  %.not.i = icmp ugt i64 %i.mj, %2
  br i1 %.not.i, label %._crit_edge447, label %.lr.ph446, !llvm.loop !1102

._crit_edge447:                                   ; preds = %.loopexit, %._crit_edge
  %.0.i.lcssa440 = phi i64 [ 0, %._crit_edge ], [ %.4.i, %.loopexit ] ; 10 uses
  %.0.lcssa = phi ptr [ %3, %._crit_edge ], [ %.2, %.loopexit ] ; 4 uses
  %.sroa.0.0.lcssa = phi <2 x i64> [ zeroinitializer, %._crit_edge ], [ %.sroa.0.1, %.loopexit ] ; 2 uses
  %i.mk = sub i64 0, %.0.i.lcssa440               ; 2 uses
  %i.ml = tail call noundef i32 @llvm.x86.sse41.ptestz(<2 x i64> %.sroa.0.0.lcssa, <2 x i64> %.sroa.0.0.lcssa)
  %.not = icmp eq i32 %i.ml, 0
  br i1 %.not, label %bb.ae, label %bb.ak

bb.ae:                                            ; preds = %._crit_edge447
  %i.mm = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i.lcssa440 ; 2 uses
  %i.mn = sub i64 %2, %.0.i.lcssa440
  br label %bb.af

bb.af:                                            ; preds = %bb.ah, %bb.ae
  %.02566.i13 = phi i64 [ 0, %bb.ae ], [ %i.mu, %bb.ah ] ; 6 uses
  %i.mo = sub nsw i64 0, %.02566.i13              ; 2 uses
  %i.mp = getelementptr inbounds i8, ptr %i.mm, i64 %i.mo
  %i.mq = load i8, ptr %i.mp, align 1             ; 2 uses
  %i.mr = icmp sgt i8 %i.mq, -65
  br i1 %i.mr, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ms = icmp ne i64 %.02566.i13, 0
  %i.mt = icmp sgt i8 %i.mq, -1
  %or.cond.i19 = and i1 %i.ms, %i.mt
  br i1 %or.cond.i19, label %bb.ai, label %bb.aj

bb.ah:                                            ; preds = %bb.af
  %i.mu = add i64 %.02566.i13, 1                  ; 2 uses
  %.not.i14 = icmp ugt i64 %i.mu, %.0.i.lcssa440
  br i1 %.not.i14, label %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE1EEENS_6resultEmPKcmPDs.exit22, label %bb.af, !llvm.loop !31

bb.ai:                                            ; preds = %bb.ag
  %i.mv = sub i64 1, %.02566.i13
  br label %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE1EEENS_6resultEmPKcmPDs.exit22

bb.aj:                                            ; preds = %bb.ag
  %i.mw = getelementptr inbounds i8, ptr %i.mm, i64 %i.mo
  %i.mx = add i64 %i.mn, %.02566.i13
  %i.my = tail call fastcc { i32, i64 } @_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1619convert_with_errorsILNS_10endiannessE1EEENS_6resultEPKcmPDs(ptr noundef nonnull readonly %i.mw, i64 noundef %i.mx, ptr noundef %.0.lcssa) ; 2 uses
  %i.mz = extractvalue { i32, i64 } %i.my, 0      ; 2 uses
  %i.na = extractvalue { i32, i64 } %i.my, 1
  %.not33.i20 = icmp eq i32 %i.mz, 0
  %i.nb = select i1 %.not33.i20, i64 0, i64 %.02566.i13
  %spec.select.i21 = sub i64 %i.na, %i.nb
  br label %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE1EEENS_6resultEmPKcmPDs.exit22

_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE1EEENS_6resultEmPKcmPDs.exit22: ; preds = %bb.ah, %bb.ai, %bb.aj
  %.sroa.4.3.i15 = phi i64 [ %spec.select.i21, %bb.aj ], [ %i.mv, %bb.ai ], [ %i.mk, %bb.ah ]
  %.sroa.0.3.i16 = phi i32 [ %i.mz, %bb.aj ], [ 3, %bb.ai ], [ 3, %bb.ah ]
  %i.nc = add i64 %.sroa.4.3.i15, %.0.i.lcssa440
  br label %_ZN7simdutf8westmere12_GLOBAL__N_113utf8_to_utf1621validating_transcoder19convert_with_errorsILNS_10endiannessE1EEENS_6resultEPKcmPDs.exit

bb.ak:                                            ; preds = %._crit_edge447
  %i.nd = icmp ult i64 %.0.i.lcssa440, %2
  br i1 %i.nd, label %bb.al, label %bb.ar

bb.al:                                            ; preds = %bb.ak
  %i.ne = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i.lcssa440 ; 2 uses
  %i.nf = sub nuw i64 %2, %.0.i.lcssa440
  br label %bb.am

bb.am:                                            ; preds = %bb.ao, %bb.al
  %.02566.i23 = phi i64 [ 0, %bb.al ], [ %i.nm, %bb.ao ] ; 7 uses
  %i.ng = sub nsw i64 0, %.02566.i23              ; 2 uses
  %i.nh = getelementptr inbounds i8, ptr %i.ne, i64 %i.ng
  %i.ni = load i8, ptr %i.nh, align 1             ; 2 uses
  %i.nj = icmp sgt i8 %i.ni, -65
  br i1 %i.nj, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.nk = icmp ne i64 %.02566.i23, 0
  %i.nl = icmp sgt i8 %i.ni, -1
  %or.cond.i29 = and i1 %i.nk, %i.nl
  br i1 %or.cond.i29, label %bb.ap, label %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE1EEENS_6resultEmPKcmPDs.exit32

bb.ao:                                            ; preds = %bb.am
  %i.nm = add nuw i64 %.02566.i23, 1
  %exitcond = icmp eq i64 %.02566.i23, %.0.i.lcssa440
  br i1 %exitcond, label %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE1EEENS_6resultEmPKcmPDs.exit32.thread, label %bb.am, !llvm.loop !31

bb.ap:                                            ; preds = %bb.an
  %i.nn = sub i64 1, %.02566.i23
  br label %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE1EEENS_6resultEmPKcmPDs.exit32.thread

_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE1EEENS_6resultEmPKcmPDs.exit32: ; preds = %bb.an
  %i.no = getelementptr inbounds i8, ptr %i.ne, i64 %i.ng
  %i.np = add i64 %i.nf, %.02566.i23
  %i.nq = tail call fastcc { i32, i64 } @_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1619convert_with_errorsILNS_10endiannessE1EEENS_6resultEPKcmPDs(ptr noundef nonnull readonly %i.no, i64 noundef %i.np, ptr noundef %.0.lcssa) ; 2 uses
  %i.nr = extractvalue { i32, i64 } %i.nq, 0      ; 2 uses
  %i.ns = extractvalue { i32, i64 } %i.nq, 1
  %.not33.i30 = icmp eq i32 %i.nr, 0              ; 2 uses
  %i.nt = select i1 %.not33.i30, i64 0, i64 %.02566.i23
  %spec.select.i31 = sub i64 %i.ns, %i.nt         ; 2 uses
  br i1 %.not33.i30, label %bb.aq, label %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE1EEENS_6resultEmPKcmPDs.exit32.thread

_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE1EEENS_6resultEmPKcmPDs.exit32.thread: ; preds = %bb.ao, %bb.ap, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE1EEENS_6resultEmPKcmPDs.exit32
  %.sroa.0.3.i26409 = phi i32 [ %i.nr, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE1EEENS_6resultEmPKcmPDs.exit32 ], [ 3, %bb.ap ], [ 3, %bb.ao ]
  %.sroa.4.3.i25408 = phi i64 [ %spec.select.i31, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE1EEENS_6resultEmPKcmPDs.exit32 ], [ %i.nn, %bb.ap ], [ %i.mk, %bb.ao ]
  %i.nu = add i64 %.sroa.4.3.i25408, %.0.i.lcssa440
  br label %_ZN7simdutf8westmere12_GLOBAL__N_113utf8_to_utf1621validating_transcoder19convert_with_errorsILNS_10endiannessE1EEENS_6resultEPKcmPDs.exit

bb.aq:                                            ; preds = %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE1EEENS_6resultEmPKcmPDs.exit32
  %i.nv = getelementptr inbounds nuw [2 x i8], ptr %.0.lcssa, i64 %spec.select.i31
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ak
  %.3 = phi ptr [ %i.nv, %bb.aq ], [ %.0.lcssa, %bb.ak ]
  %i.nw = ptrtoint ptr %.3 to i64
  %i.nx = ptrtoint ptr %3 to i64
  %i.ny = sub i64 %i.nw, %i.nx
  %i.nz = ashr exact i64 %i.ny, 1
  br label %_ZN7simdutf8westmere12_GLOBAL__N_113utf8_to_utf1621validating_transcoder19convert_with_errorsILNS_10endiannessE1EEENS_6resultEPKcmPDs.exit

_ZN7simdutf8westmere12_GLOBAL__N_113utf8_to_utf1621validating_transcoder19convert_with_errorsILNS_10endiannessE1EEENS_6resultEPKcmPDs.exit: ; preds = %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE1EEENS_6resultEmPKcmPDs.exit, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE1EEENS_6resultEmPKcmPDs.exit22, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE1EEENS_6resultEmPKcmPDs.exit32.thread, %bb.ar
  %.sroa.784.0 = phi i64 [ %i.nc, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE1EEENS_6resultEmPKcmPDs.exit22 ], [ %i.nz, %bb.ar ], [ %i.nu, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE1EEENS_6resultEmPKcmPDs.exit32.thread ], [ %i.fy, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE1EEENS_6resultEmPKcmPDs.exit ]
  %.sroa.083.0 = phi i32 [ %.sroa.0.3.i16, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE1EEENS_6resultEmPKcmPDs.exit22 ], [ 0, %bb.ar ], [ %.sroa.0.3.i26409, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE1EEENS_6resultEmPKcmPDs.exit32.thread ], [ %.sroa.0.3.i, %_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf1630rewind_and_convert_with_errorsILNS_10endiannessE1EEENS_6resultEmPKcmPDs.exit ]
  %.fca.0.insert.i = insertvalue { i32, i64 } poison, i32 %.sroa.083.0, 0
  %.fca.1.insert.i = insertvalue { i32, i64 } %.fca.0.insert.i, i64 %.sroa.784.0, 1
  ret { i32, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i64 -4611686018427387904, 4611686018427387904) i64 @_ZNK7simdutf8westmere14implementation29convert_valid_utf8_to_utf16leEPKcmPDs(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3) unnamed_addr #28 align 2 {
bb.a:
  %.not84.i = icmp ult i64 %2, 80
  br i1 %.not84.i, label %_ZN7simdutf8westmere12_GLOBAL__N_113utf8_to_utf1613convert_validILNS_10endiannessE0EEEmPKcmPDs.exit, label %.lr.ph87.i

.lr.ph87.i:                                       ; preds = %bb.a, %.loopexit.i
  %i.a = phi i64 [ %i.gl, %.loopexit.i ], [ 64, %bb.a ]
  %.086.i = phi i64 [ %.2.i, %.loopexit.i ], [ 0, %bb.a ] ; 5 uses
  %.07785.i = phi ptr [ %.279.i, %.loopexit.i ], [ %3, %bb.a ] ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.086.i ; 4 uses
  %i.c = load <2 x i64>, ptr %i.b, align 1        ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load <2 x i64>, ptr %i.d, align 1        ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.g = load <2 x i64>, ptr %i.f, align 1        ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.i = load <2 x i64>, ptr %i.h, align 1        ; 3 uses
  %i.j = or <2 x i64> %i.e, %i.c
  %i.k = or <2 x i64> %i.j, %i.g
  %i.l = or <2 x i64> %i.k, %i.i
  %i.m = bitcast <2 x i64> %i.l to <16 x i8>
  %i.n = icmp slt <16 x i8> %i.m, zeroinitializer
  %i.o = bitcast <16 x i1> %i.n to i16
  %i.p = icmp eq i16 %i.o, 0
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph87.i
  %i.q = bitcast <2 x i64> %i.c to <16 x i8>      ; 2 uses
  %i.r = shufflevector <16 x i8> %i.q, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.s = zext <8 x i8> %i.r to <8 x i16>
  %i.t = shufflevector <16 x i8> %i.q, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.u = zext <8 x i8> %i.t to <8 x i16>
  store <8 x i16> %i.s, ptr %.07785.i, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %.07785.i, i64 16
  store <8 x i16> %i.u, ptr %i.v, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %.07785.i, i64 32
  %i.x = bitcast <2 x i64> %i.e to <16 x i8>      ; 2 uses
  %i.y = shufflevector <16 x i8> %i.x, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.z = zext <8 x i8> %i.y to <8 x i16>
  %i.aa = shufflevector <16 x i8> %i.x, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ab = zext <8 x i8> %i.aa to <8 x i16>
  store <8 x i16> %i.z, ptr %i.w, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %.07785.i, i64 48
  store <8 x i16> %i.ab, ptr %i.ac, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %.07785.i, i64 64
  %i.ae = bitcast <2 x i64> %i.g to <16 x i8>     ; 2 uses
  %i.af = shufflevector <16 x i8> %i.ae, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ag = zext <8 x i8> %i.af to <8 x i16>
  %i.ah = shufflevector <16 x i8> %i.ae, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ai = zext <8 x i8> %i.ah to <8 x i16>
  store <8 x i16> %i.ag, ptr %i.ad, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %.07785.i, i64 80
  store <8 x i16> %i.ai, ptr %i.aj, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %.07785.i, i64 96
  %i.al = bitcast <2 x i64> %i.i to <16 x i8>     ; 2 uses
  %i.am = shufflevector <16 x i8> %i.al, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.an = zext <8 x i8> %i.am to <8 x i16>
  %i.ao = shufflevector <16 x i8> %i.al, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ap = zext <8 x i8> %i.ao to <8 x i16>
  store <8 x i16> %i.an, ptr %i.ak, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %.07785.i, i64 112
  store <8 x i16> %i.ap, ptr %i.aq, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %.07785.i, i64 128
  br label %.loopexit.i

bb.c:                                             ; preds = %.lr.ph87.i
  %i.as = add i64 %.086.i, 52
  %i.at = icmp ult i64 %.086.i, -52
  br i1 %i.at, label %.lr.ph.preheader.i, label %.loopexit.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.au = bitcast <2 x i64> %i.e to <16 x i8>
  %i.av = icmp slt <16 x i8> %i.au, splat (i8 -64)
  %i.aw = bitcast <16 x i1> %i.av to i16
  %i.ax = bitcast <2 x i64> %i.c to <16 x i8>
  %i.ay = icmp slt <16 x i8> %i.ax, splat (i8 -64)
  %i.az = bitcast <16 x i1> %i.ay to i16
  %i.ba = bitcast <2 x i64> %i.g to <16 x i8>
  %i.bb = icmp slt <16 x i8> %i.ba, splat (i8 -64)
  %i.bc = bitcast <16 x i1> %i.bb to i16
  %i.bd = bitcast <2 x i64> %i.i to <16 x i8>
  %i.be = icmp slt <16 x i8> %i.bd, splat (i8 -64)
  %i.bf = bitcast <16 x i1> %i.be to i16
  %i.bg = insertelement <4 x i16> poison, i16 %i.az, i64 0
  %i.bh = insertelement <4 x i16> %i.bg, i16 %i.aw, i64 1
  %i.bi = insertelement <4 x i16> %i.bh, i16 %i.bc, i64 2
  %i.bj = insertelement <4 x i16> %i.bi, i16 %i.bf, i64 3
  %i.bk = bitcast <4 x i16> %i.bj to i64
  %i.bl = xor i64 %i.bk, -1
  %i.bm = lshr i64 %i.bl, 1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE0EEEmPKcmRPDs.exit.i, %.lr.ph.preheader.i
  %.182.i = phi i64 [ %i.gi, %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE0EEEmPKcmRPDs.exit.i ], [ %.086.i, %.lr.ph.preheader.i ] ; 2 uses
  %.02181.i = phi i64 [ %i.gj, %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE0EEEmPKcmRPDs.exit.i ], [ %i.bm, %.lr.ph.preheader.i ] ; 4 uses
  %.17880.i = phi ptr [ %.5.i, %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE0EEEmPKcmRPDs.exit.i ], [ %.07785.i, %.lr.ph.preheader.i ] ; 15 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 %.182.i
  %.val.i = load <2 x i64>, ptr %i.bn, align 1    ; 6 uses
  %i.bo = icmp eq i64 %.02181.i, 4095
  br i1 %i.bo, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  %i.bp = bitcast <2 x i64> %.val.i to <16 x i8>  ; 2 uses
  %i.bq = shufflevector <16 x i8> %i.bp, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.br = zext <8 x i8> %i.bq to <8 x i16>
  %i.bs = shufflevector <16 x i8> %i.bp, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bt = zext <8 x i8> %i.bs to <8 x i16>
  store <8 x i16> %i.br, ptr %.17880.i, align 1
  %i.bu = getelementptr inbounds nuw i8, ptr %.17880.i, i64 16
  store <8 x i16> %i.bt, ptr %i.bu, align 1
  %i.bv = getelementptr inbounds nuw i8, ptr %.17880.i, i64 24
  br label %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE0EEEmPKcmRPDs.exit.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.bw = and i64 %.02181.i, 65535
  %i.bx = icmp eq i64 %i.bw, 43690
  br i1 %i.bx, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.by = bitcast <2 x i64> %.val.i to <16 x i8>
  %i.bz = shufflevector <16 x i8> %i.by, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14> ; 2 uses
  %i.ca = bitcast <16 x i8> %i.bz to <2 x i64>
  %i.cb = and <2 x i64> %i.ca, splat (i64 35747867511423103)
  %i.cc = bitcast <16 x i8> %i.bz to <8 x i16>
  %i.cd = lshr <8 x i16> %i.cc, splat (i16 2)
  %i.ce = bitcast <8 x i16> %i.cd to <2 x i64>
  %i.cf = and <2 x i64> %i.ce, splat (i64 558454875139082176)
  %i.cg = or <2 x i64> %i.cf, %i.cb
  store <2 x i64> %i.cg, ptr %.17880.i, align 1
  %i.ch = getelementptr inbounds nuw i8, ptr %.17880.i, i64 16
  br label %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE0EEEmPKcmRPDs.exit.i

bb.g:                                             ; preds = %bb.e
  %i.ci = and i64 %.02181.i, 4095                 ; 2 uses
  %i.cj = icmp eq i64 %i.ci, 2340
  br i1 %i.cj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ck = bitcast <2 x i64> %.val.i to <16 x i8>
  %i.cl = shufflevector <16 x i8> %i.ck, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 2, i32 1, i32 0, i32 16, i32 5, i32 4, i32 3, i32 16, i32 8, i32 7, i32 6, i32 16, i32 11, i32 10, i32 9, i32 16> ; 2 uses
  %i.cm = bitcast <16 x i8> %i.cl to <2 x i64>
  %i.cn = and <2 x i64> %i.cm, splat (i64 545460846719)
  %i.co = bitcast <16 x i8> %i.cl to <4 x i32>    ; 2 uses
  %i.cp = lshr <4 x i32> %i.co, splat (i32 2)
  %i.cq = bitcast <4 x i32> %i.cp to <2 x i64>
  %i.cr = and <2 x i64> %i.cq, splat (i64 17317308141504)
  %i.cs = lshr <4 x i32> %i.co, splat (i32 4)
  %i.ct = bitcast <4 x i32> %i.cs to <2 x i64>
  %i.cu = and <2 x i64> %i.ct, splat (i64 263882790727680)
  %i.cv = or <2 x i64> %i.cr, %i.cn
  %i.cw = or disjoint <2 x i64> %i.cv, %i.cu
  %i.cx = bitcast <2 x i64> %i.cw to <4 x i32>    ; 2 uses
  %i.cy = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.cx, <4 x i32> %i.cx)
  store <8 x i16> %i.cy, ptr %.17880.i, align 1
  %i.cz = getelementptr inbounds nuw i8, ptr %.17880.i, i64 8
  br label %_ZN7simdutf8westmere12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE0EEEmPKcmRPDs.exit.i

end_hunk_5
