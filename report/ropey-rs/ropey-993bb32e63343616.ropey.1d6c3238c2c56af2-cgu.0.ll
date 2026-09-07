Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ropey-rs/original/ropey-993bb32e63343616.ropey.1d6c3238c2c56af2-cgu.0?download=true
inline.NumInlined: 438
inline.NumDeleted: 74
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9text_infoNtB2_8TextInfo8from_str:bb.a
  %.sroa.0.0.i27 = select i1 %i.jv, i1 %i.jw, i1 false
  %bc = bitcast <2 x i64> %i.jh to <16 x i8>
  %i.jx = extractelement <16 x i8> %bc, i64 15    ; 4 uses
  %bc627 = bitcast <2 x i64> %i.jh to <16 x i8>
  %i.jy = extractelement <16 x i8> %bc627, i64 14
  br i1 %.sroa.0.0.i27, label %bb.t, label %bb.q

bb.q:                                             ; preds = %.lr.ph586
  %i.jz = icmp eq <16 x i8> %i.ji, splat (i8 -123)
  %i.ka = zext <16 x i1> %i.jz to <16 x i8>
  %i.kb = shufflevector <16 x i8> %i.ka, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.kc = select <16 x i1> %i.jj, <16 x i8> %i.kb, <16 x i8> zeroinitializer ; 3 uses
  %.not = icmp ne i64 %.sroa.15.1.i583, 16
  %i.kd = icmp eq i8 %i.jx, -62
  %or.cond = select i1 %.not, i1 %i.kd, i1 false
  br i1 %or.cond, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.ke = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i584, i64 16
  %i.kf = load i8, ptr %i.ke, align 16, !alias.scope !319, !noalias !320, !noundef !5
  %i.kg = icmp eq i8 %i.kf, -123
  br i1 %i.kg, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %.sroa.0454.15.vec.insert = insertelement <16 x i8> %i.kc, i8 1, i64 15
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %.lr.ph586
  %i.kh = phi <16 x i8> [ zeroinitializer, %.lr.ph586 ], [ %.sroa.0454.15.vec.insert, %bb.s ], [ %i.kc, %bb.r ], [ %i.kc, %bb.q ] ; 3 uses
  %.sroa.01.0.vec.extract.i22 = extractelement <2 x i64> %i.jo, i64 0
  %i.ki = icmp eq i64 %.sroa.01.0.vec.extract.i22, 0
  %.sroa.01.8.vec.extract.i23 = extractelement <2 x i64> %i.jo, i64 1
  %i.kj = icmp eq i64 %.sroa.01.8.vec.extract.i23, 0
  %.sroa.0.0.i24 = select i1 %i.ki, i1 %i.kj, i1 false
  br i1 %.sroa.0.0.i24, label %.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.kk = icmp eq <16 x i8> %i.ji, splat (i8 -128)
  %i.kl = zext <16 x i1> %i.kk to <16 x i8>
  %i.km = shufflevector <16 x i8> %i.kl, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.kn = select <16 x i1> %i.jm, <16 x i8> %i.km, <16 x i8> zeroinitializer ; 2 uses
  %i.ko = bitcast <16 x i8> %i.kn to <2 x i64>    ; 2 uses
  %.sroa.01.0.vec.extract.i19 = extractelement <2 x i64> %i.ko, i64 0
  %i.kp = icmp eq i64 %.sroa.01.0.vec.extract.i19, 0
  %.sroa.01.8.vec.extract.i20 = extractelement <2 x i64> %i.ko, i64 1
  %i.kq = icmp eq i64 %.sroa.01.8.vec.extract.i20, 0
  %.sroa.0.0.i21 = select i1 %i.kp, i1 %i.kq, i1 false
  br i1 %.sroa.0.0.i21, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.kr = lshr <2 x i64> %i.jh, splat (i64 1)
  %i.ks = bitcast <2 x i64> %i.kr to <16 x i8>
  %i.kt = and <16 x i8> %i.ks, splat (i8 127)
  %i.ku = icmp eq <16 x i8> %i.kt, splat (i8 84)
  %i.kv = zext <16 x i1> %i.ku to <16 x i8>
  %i.kw = shufflevector <16 x i8> %i.kv, <16 x i8> <i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17>
  %i.kx = and <16 x i8> %i.kw, %i.kn
  %i.ky = add nsw <16 x i8> %i.kh, %i.kx
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.kz = phi <16 x i8> [ %i.kh, %bb.u ], [ %i.ky, %bb.v ] ; 9 uses
  %.not532 = icmp eq i64 %.sroa.15.1.i583, 16
  br i1 %.not532, label %.thread, label %bb.y

bb.x:                                             ; preds = %bb.y
  %i.la = icmp samesign ugt i64 %.sroa.15.1.i583, 17
  %i.lb = icmp eq i8 %i.jx, -30
  %or.cond691 = select i1 %i.la, i1 %i.lb, i1 false
  br i1 %or.cond691, label %bb.ab, label %.thread

bb.y:                                             ; preds = %bb.w
  %i.lc = icmp eq i8 %i.jy, -30
  %i.ld = icmp eq i8 %i.jx, -128
  %or.cond690 = select i1 %i.lc, i1 %i.ld, i1 false
  br i1 %or.cond690, label %bb.z, label %bb.x

bb.z:                                             ; preds = %bb.y
  %i.le = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i584, i64 16
  %i.lf = load i8, ptr %i.le, align 16, !alias.scope !319, !noalias !320, !noundef !5
  %.mask.i = and i8 %i.lf, -2
  %i.lg = icmp eq i8 %.mask.i, -88
  br i1 %i.lg, label %bb.aa, label %.thread

bb.aa:                                            ; preds = %bb.z
  %.sroa.0457.14.vec.extract = extractelement <16 x i8> %i.kz, i64 14
  %i.lh = add i8 %.sroa.0457.14.vec.extract, 1
  %.sroa.0457.14.vec.insert = insertelement <16 x i8> %i.kz, i8 %i.lh, i64 14
  br label %.thread

bb.ab:                                            ; preds = %bb.x
  %i.li = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i584, i64 16
  %i.lj = load i8, ptr %i.li, align 16, !alias.scope !319, !noalias !320, !noundef !5
  %i.lk = icmp eq i8 %i.lj, -128
  br i1 %i.lk, label %bb.ac, label %.thread

bb.ac:                                            ; preds = %bb.ab
  %i.ll = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i584, i64 17
  %i.lm = load i8, ptr %i.ll, align 1, !alias.scope !319, !noalias !320, !noundef !5
  %.mask1.i = and i8 %i.lm, -2
  %i.ln = icmp eq i8 %.mask1.i, -88
  br i1 %i.ln, label %bb.ad, label %.thread

bb.ad:                                            ; preds = %bb.ac
  %.sroa.0460.15.vec.extract = extractelement <16 x i8> %i.kz, i64 15
  %i.lo = add i8 %.sroa.0460.15.vec.extract, 1
  %.sroa.0460.15.vec.insert = insertelement <16 x i8> %i.kz, i8 %i.lo, i64 15
  br label %.thread

.thread:                                          ; preds = %bb.z, %bb.w, %bb.x, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.t
  %i.lp = phi <16 x i8> [ %i.kh, %bb.t ], [ %.sroa.0457.14.vec.insert, %bb.aa ], [ %.sroa.0460.15.vec.insert, %bb.ad ], [ %i.kz, %bb.ac ], [ %i.kz, %bb.ab ], [ %i.kz, %bb.z ], [ %i.kz, %bb.x ], [ %i.kz, %bb.w ]
  %i.lq = add <16 x i8> %i.lp, %i.jr              ; 2 uses
  %.sroa.01.0.vec.extract.i = extractelement <2 x i64> %i.ju, i64 0
  %i.lr = icmp eq i64 %.sroa.01.0.vec.extract.i, 0
  %.sroa.01.8.vec.extract.i = extractelement <2 x i64> %i.ju, i64 1
  %i.ls = icmp eq i64 %.sroa.01.8.vec.extract.i, 0
  %.sroa.0.0.i18 = select i1 %i.lr, i1 %i.ls, i1 false
  br i1 %.sroa.0.0.i18, label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %bb.ae

bb.ae:                                            ; preds = %.thread
  %i.lt = icmp eq <16 x i8> %i.ji, splat (i8 10)
  %.neg = sext <16 x i1> %i.lt to <16 x i8>
  %.neg533 = shufflevector <16 x i8> %.neg, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %.neg534 = select <16 x i1> %i.js, <16 x i8> %.neg533, <16 x i8> zeroinitializer
  %i.lu = add <16 x i8> %i.lq, %.neg534           ; 4 uses
  %.not535 = icmp ne i64 %.sroa.15.1.i583, 16
  %i.lv = icmp eq i8 %i.jx, 13
  %or.cond692 = select i1 %.not535, i1 %i.lv, i1 false
  br i1 %or.cond692, label %bb.af, label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit

bb.af:                                            ; preds = %bb.ae
  %i.lw = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i584, i64 16
  %i.lx = load i8, ptr %i.lw, align 16, !alias.scope !319, !noalias !320, !noundef !5
  %i.ly = icmp eq i8 %i.lx, 10
  br i1 %i.ly, label %bb.ag, label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit

bb.ag:                                            ; preds = %bb.af
  %.sroa.0.15.vec.extract.i = extractelement <16 x i8> %i.lu, i64 15
  %i.lz = add i8 %.sroa.0.15.vec.extract.i, -1
  %.sroa.0.15.vec.insert.i = insertelement <16 x i8> %i.lu, i8 %i.lz, i64 15
  br label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit

_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit: ; preds = %bb.ae, %bb.af, %bb.ag, %.thread
  %.sroa.0228.5.in = phi <16 x i8> [ %i.lq, %.thread ], [ %.sroa.0.15.vec.insert.i, %bb.ag ], [ %i.lu, %bb.af ], [ %i.lu, %bb.ae ]
  %i.ma = add <16 x i8> %.sroa.0228.5.in, %i.jg   ; 2 uses
  %i.mb = add i64 %.sroa.028.0.i581, 1            ; 2 uses
  %i.mc = icmp eq i64 %i.mb, 255
  br i1 %i.mc, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit
  %i.md = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.ma, <16 x i8> zeroinitializer) ; 2 uses
  %.sroa.0.0.vec.extract.i28 = extractelement <2 x i64> %i.md, i64 0
  %.sroa.0.8.vec.extract.i29 = extractelement <2 x i64> %i.md, i64 1
  %i.me = add i64 %.sroa.0.8.vec.extract.i29, %.sroa.023.1.i582
  %i.mf = add i64 %i.me, %.sroa.0.0.vec.extract.i28
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit
  %i.mg = phi <16 x i8> [ zeroinitializer, %bb.ah ], [ %i.ma, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit ] ; 2 uses
  %.sroa.028.1.i = phi i64 [ 0, %bb.ah ], [ %i.mb, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit ]
  %.sroa.023.2.i = phi i64 [ %i.mf, %bb.ah ], [ %.sroa.023.1.i582, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit ] ; 2 uses
  %i.mh = add nsw i64 %.sroa.15.1.i583, -16       ; 3 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i584, i64 16 ; 2 uses
  %i.mj = icmp ugt i64 %i.mh, 15
  br i1 %i.mj, label %.lr.ph586, label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit.preheader

.lr.ph594:                                        ; preds = %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit.preheader, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit
  %.sroa.0.0.i8593 = phi i64 [ %i.ne, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit ], [ 0, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit.preheader ] ; 5 uses
  %.sroa.012.0.i7592 = phi i64 [ %.sroa.012.1.i, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit ], [ 0, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit.preheader ] ; 8 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.lcssa, i64 %.sroa.0.0.i8593 ; 2 uses
  %i.ml = load i8, ptr %i.mk, align 1, !alias.scope !321, !noundef !5 ; 3 uses
  %i.mm = add i8 %i.ml, -10
  %spec.select.i163 = icmp ult i8 %i.mm, 4
  br i1 %spec.select.i163, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph594
  switch i8 %i.ml, label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit [
    i8 -62, label %bb.al
    i8 -30, label %bb.an
  ]

bb.ak:                                            ; preds = %.lr.ph594
  %i.mn = add nuw nsw i64 %.sroa.012.0.i7592, 1   ; 3 uses
  %i.mo = icmp eq i8 %i.ml, 13
  br i1 %i.mo, label %bb.aq, label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit

bb.al:                                            ; preds = %bb.aj
  %i.mp = add nuw nsw i64 %.sroa.0.0.i8593, 1     ; 2 uses
  %i.mq = icmp samesign ult i64 %i.mp, %.sroa.15.1.i.lcssa
  br i1 %i.mq, label %bb.am, label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit

bb.am:                                            ; preds = %bb.al
  %i.mr = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.lcssa, i64 %i.mp
  %i.ms = load i8, ptr %i.mr, align 1, !alias.scope !321, !noundef !5
  %i.mt = icmp eq i8 %i.ms, -123
  %i.mu = zext i1 %i.mt to i64
  %spec.select531 = add nuw nsw i64 %.sroa.012.0.i7592, %i.mu
  br label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit

bb.an:                                            ; preds = %bb.aj
  %i.mv = add nuw nsw i64 %.sroa.0.0.i8593, 2     ; 2 uses
  %i.mw = icmp samesign ult i64 %i.mv, %.sroa.15.1.i.lcssa
  br i1 %i.mw, label %bb.ao, label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit

bb.ao:                                            ; preds = %bb.an
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mk, i64 1
  %i.my = load i8, ptr %i.mx, align 1, !alias.scope !321, !noundef !5
  %i.mz = icmp eq i8 %i.my, -128
  br i1 %i.mz, label %bb.ap, label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit

bb.ap:                                            ; preds = %bb.ao
  %i.na = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.lcssa, i64 %i.mv
  %i.nb = load i8, ptr %i.na, align 1, !alias.scope !321, !noundef !5
  %.mask.i9 = and i8 %i.nb, -2
  %i.nc = icmp eq i8 %.mask.i9, -88
  %i.nd = zext i1 %i.nc to i64
  %spec.select.i = add nuw nsw i64 %.sroa.012.0.i7592, %i.nd
  br label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit

_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit: ; preds = %bb.am, %bb.al, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.ak, %bb.aj
  %.sroa.012.1.i = phi i64 [ %.sroa.012.0.i7592, %bb.an ], [ %spec.select22.i, %bb.ar ], [ %i.mn, %bb.aq ], [ %i.mn, %bb.ak ], [ %.sroa.012.0.i7592, %bb.al ], [ %.sroa.012.0.i7592, %bb.aj ], [ %spec.select.i, %bb.ap ], [ %.sroa.012.0.i7592, %bb.ao ], [ %spec.select531, %bb.am ] ; 3 uses
  %i.ne = add nuw nsw i64 %.sroa.0.0.i8593, 1     ; 2 uses
  %i.nf = icmp samesign ult i64 %i.ne, %.sroa.15.1.i.lcssa
  %i.ng = icmp ult i64 %.sroa.012.1.i, %.sroa.15.1.i.lcssa
  %or.cond.i = select i1 %i.nf, i1 %i.ng, i1 false
  br i1 %or.cond.i, label %.lr.ph594, label %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit

bb.aq:                                            ; preds = %bb.ak
  %i.nh = add nuw nsw i64 %.sroa.0.0.i8593, 1     ; 2 uses
  %i.ni = icmp samesign ult i64 %i.nh, %.sroa.15.1.i.lcssa
  br i1 %i.ni, label %bb.ar, label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit

bb.ar:                                            ; preds = %bb.aq
  %i.nj = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.lcssa, i64 %i.nh
  %i.nk = load i8, ptr %i.nj, align 1, !alias.scope !321, !noundef !5
  %i.nl = icmp eq i8 %i.nk, 10
  %spec.select22.i = select i1 %i.nl, i64 %.sroa.012.0.i7592, i64 %i.mn
  br label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit

_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit: ; preds = %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, %bb.c, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit.preheader
  %.sroa.023.1.i.lcssa674 = phi i64 [ %.sroa.023.1.i.lcssa, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit.preheader ], [ 0, %bb.c ], [ %.sroa.023.1.i.lcssa, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit ]
  %.lcssa673 = phi <16 x i8> [ %.lcssa, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit.preheader ], [ zeroinitializer, %bb.c ], [ %.lcssa, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit ]
  %.sroa.0.3.i640654672 = phi i64 [ %.sroa.0.3.i, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit.preheader ], [ 0, %bb.c ], [ %.sroa.0.3.i, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit ]
  %.sroa.0.0.i629638655671 = phi i64 [ %.sroa.0.0.i629, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit.preheader ], [ 0, %bb.c ], [ %.sroa.0.0.i629, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit ]
  %.sroa.012.0.i7.lcssa = phi i64 [ 0, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit.preheader ], [ 0, %bb.c ], [ %.sroa.012.1.i, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit ]
  %i.nm = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %.lcssa673, <16 x i8> zeroinitializer) ; 2 uses
  %.sroa.0.0.vec.extract.i30 = extractelement <2 x i64> %i.nm, i64 0
  %.sroa.0.8.vec.extract.i31 = extractelement <2 x i64> %i.nm, i64 1
  %i.nn = add i64 %.sroa.012.0.i7.lcssa, %.sroa.023.1.i.lcssa674
  %i.no = add i64 %i.nn, %.sroa.0.8.vec.extract.i31
  %i.np = add i64 %i.no, %.sroa.0.0.vec.extract.i30
  store i64 %2, ptr %0, align 8
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.i629638655671, ptr %i.nq, align 8
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.3.i640654672, ptr %i.nr, align 8
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.np, ptr %i.ns, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMsB_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE8make_mutBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.e = cmpxchg ptr %i.d, i64 1, i64 0 acquire monotonic, align 8
  %i.f = extractvalue { i64, i1 } %i.e, 1
  %i.g = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 8 uses
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load atomic i64, ptr %i.h monotonic, align 8
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.e, label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.l = tail call noundef nonnull ptr @_RNvMsk_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE17clone_from_ref_inBM_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.k) ; 3 uses
  %i.m = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !326
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit unwind label %bb.l

bb.e:                                             ; preds = %bb.b
  store atomic i64 1, ptr %i.g release, align 8
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.g, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  invoke void @_RNvMs1m_NtCsexYYUdYSQU6_5alloc4syncINtB6_15UniqueArcUninitNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeNtNtB8_5alloc6GlobalE3newB10_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.o)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.p = load i64, ptr %i.b, align 8, !range !327, !noundef !5 ; 2 uses
  %i.q = add nuw i64 %i.p, 15
  %i.r = sub i64 0, %i.p
  %i.s = and i64 %i.q, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !5, !noundef !5
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1008) %i.v, ptr noundef nonnull align 8 dereferenceable(1008) %i.o, i64 1008, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.g, ptr %i.a, align 8
  %i.w = invoke noundef nonnull ptr @_RNvMs1m_NtCsexYYUdYSQU6_5alloc4syncINtB6_15UniqueArcUninitNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeNtNtB8_5alloc6GlobalE8into_arcB10_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1g_.exit7 unwind label %bb.h ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsO_NtCsexYYUdYSQU6_5alloc4syncINtB5_4WeakNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.thread unwind label %bb.j

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1g_.exit7: ; preds = %bb.g
  store ptr %i.w, ptr %0, align 8
  call void @_RNvXsO_NtCsexYYUdYSQU6_5alloc4syncINtB5_4WeakNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1g_.exit7, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit
  %i.y = phi ptr [ %i.g, %bb.e ], [ %i.w, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1g_.exit7 ], [ %i.l, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  ret ptr %i.z

bb.j:                                             ; preds = %bb.k, %bb.h
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

.thread:                                          ; preds = %bb.k, %bb.h, %bb.l
  %.pn3 = phi { ptr, i32 } [ %i.ac, %bb.l ], [ %i.x, %bb.h ], [ %i.ab, %bb.k ]
  resume { ptr, i32 } %.pn3

bb.k:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNvMsB_NtCsexYYUdYSQU6_5alloc4syncINtB8_3ArcppE8make_mutINtB2_5GuardNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.thread unwind label %bb.j

bb.l:                                             ; preds = %bb.d
  %i.ac = landingpad { ptr, i32 }
          cleanup
  store ptr %i.l, ptr %0, align 8
  br label %.thread

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit: ; preds = %bb.c, %bb.d
  store ptr %i.l, ptr %0, align 8
  br label %bb.i
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren5nodes(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(968)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren13combined_info(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(968)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren14compact_leaves(ptr noalias nofree noundef align 8 dereferenceable(968)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4info(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(968)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren9nodes_mut(ptr noalias nofree noundef align 8 dereferenceable(968)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren8info_mut(ptr noalias nofree noundef align 8 dereferenceable(968)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren12insert_split(ptr dead_on_unwind noalias nofree noundef writable sret([968 x i8]) align 8 captures(address) dereferenceable(968), ptr noalias nofree noundef align 8 dereferenceable(968), i64 noundef, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

end_hunk_0
