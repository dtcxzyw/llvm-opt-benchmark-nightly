inline.NumInlined: 2755
inline.NumDeleted: 1034
begin_hunk_0_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a

bb.in:                                            ; preds = %bb.im
  %i.bin = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
  %i.bio = load i32, ptr %i.bin, align 1, !tbaa !81
  %i.bip = sext i32 %i.bio to i64
  br label %bb.io

bb.io:                                            ; preds = %bb.im, %bb.in
  %.sink4113 = phi i64 [ %i.bip, %bb.in ], [ 6, %bb.im ]
  %i.biq = getelementptr inbounds i8, ptr %.sink4081.sink.in, i64 %.sink4113
  br label %.backedge.backedge

bb.ip:                                            ; preds = %.backedge
  %i.bir = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2
  %i.bis = load i8, ptr %i.bir, align 1, !tbaa !81
  %i.bit = zext i8 %i.bis to i64
  %i.biu = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bit
  %.sroa.0137.0.copyload = load i64, ptr %i.biu, align 8, !tbaa !61
  %i.biv = call noundef zeroext i1 @_ZN6hermes2vm9toBooleanENS0_11HermesValueE(i64 %.sroa.0137.0.copyload) #10
  br i1 %i.biv, label %bb.ir, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  %i.biw = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
  %i.bix = load i8, ptr %i.biw, align 1, !tbaa !81
  %i.biy = sext i8 %i.bix to i64
  br label %bb.ir

bb.ir:                                            ; preds = %bb.ip, %bb.iq
  %.sink4114 = phi i64 [ %i.biy, %bb.iq ], [ 3, %bb.ip ]
  %i.biz = getelementptr inbounds i8, ptr %.sink4081.sink.in, i64 %.sink4114
  br label %.backedge.backedge

bb.is:                                            ; preds = %.backedge
  %i.bja = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 5
  %i.bjb = load i8, ptr %i.bja, align 1, !tbaa !81
  %i.bjc = zext i8 %i.bjb to i64
  %i.bjd = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bjc
  %.sroa.0136.0.copyload = load i64, ptr %i.bjd, align 8, !tbaa !61
  %i.bje = call noundef zeroext i1 @_ZN6hermes2vm9toBooleanENS0_11HermesValueE(i64 %.sroa.0136.0.copyload) #10
  br i1 %i.bje, label %bb.iu, label %bb.it

bb.it:                                            ; preds = %bb.is
  %i.bjf = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
  %i.bjg = load i32, ptr %i.bjf, align 1, !tbaa !81
  %i.bjh = sext i32 %i.bjg to i64
  br label %bb.iu

bb.iu:                                            ; preds = %bb.is, %bb.it
  %.sink4115 = phi i64 [ %i.bjh, %bb.it ], [ 6, %bb.is ]
  %i.bji = getelementptr inbounds i8, ptr %.sink4081.sink.in, i64 %.sink4115
  br label %.backedge.backedge

bb.iv:                                            ; preds = %.backedge
  %i.bjj = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2
  %i.bjk = load i8, ptr %i.bjj, align 1, !tbaa !81
  %i.bjl = zext i8 %i.bjk to i64
  %i.bjm = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bjl
  %i.bjn = load i64, ptr %i.bjm, align 8, !tbaa !69
  %.mask.i2925 = and i64 %i.bjn, -140737488355328
  %i.bjo = icmp eq i64 %.mask.i2925, -1688849860263936
  br i1 %i.bjo, label %bb.iw, label %bb.ix

bb.iw:                                            ; preds = %bb.iv
  %i.bjp = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
  %i.bjq = load i8, ptr %i.bjp, align 1, !tbaa !81
  %i.bjr = sext i8 %i.bjq to i64
  br label %bb.ix

bb.ix:                                            ; preds = %bb.iv, %bb.iw
  %.sink4116 = phi i64 [ %i.bjr, %bb.iw ], [ 3, %bb.iv ]
  %i.bjs = getelementptr inbounds i8, ptr %.sink4081.sink.in, i64 %.sink4116
  br label %.backedge.backedge

bb.iy:                                            ; preds = %.backedge
  %i.bjt = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 5
  %i.bju = load i8, ptr %i.bjt, align 1, !tbaa !81
  %i.bjv = zext i8 %i.bju to i64
  %i.bjw = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bjv
  %i.bjx = load i64, ptr %i.bjw, align 8, !tbaa !69
  %.mask.i2926 = and i64 %i.bjx, -140737488355328
  %i.bjy = icmp eq i64 %.mask.i2926, -1688849860263936
  br i1 %i.bjy, label %bb.iz, label %bb.ja

bb.iz:                                            ; preds = %bb.iy
  %i.bjz = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
  %i.bka = load i32, ptr %i.bjz, align 1, !tbaa !81
  %i.bkb = sext i32 %i.bka to i64
  br label %bb.ja

bb.ja:                                            ; preds = %bb.iy, %bb.iz
  %.sink4117 = phi i64 [ %i.bkb, %bb.iz ], [ 6, %bb.iy ]
  %i.bkc = getelementptr inbounds i8, ptr %.sink4081.sink.in, i64 %.sink4117
  br label %.backedge.backedge

bb.jb:                                            ; preds = %.backedge
  %i.bkd = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2 ; 2 uses
  %i.bke = load i8, ptr %i.bkd, align 1, !tbaa !81
  %i.bkf = zext i8 %i.bke to i64
  %i.bkg = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bkf
  %i.bkh = load i64, ptr %i.bkg, align 8          ; 2 uses
  %i.bki = icmp ult i64 %i.bkh, -1970324836974592
  br i1 %i.bki, label %bb.jc, label %bb.jd, !prof !60

bb.jc:                                            ; preds = %bb.jb
  %i.bkj = bitcast i64 %i.bkh to double
  %i.bkk = fadd double %i.bkj, 1.000000e+00
  %i.bkl = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
  %i.bkm = load i8, ptr %i.bkl, align 1, !tbaa !81
  %i.bkn = zext i8 %i.bkm to i64
  %i.bko = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bkn
  store double %i.bkk, ptr %i.bko, align 8, !tbaa !69
  %i.bkp = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3
  br label %.backedge.backedge

bb.jd:                                            ; preds = %bb.jb
  store ptr %.sink4081.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.bkq = load i8, ptr %i.bkd, align 1, !tbaa !81
  %i.bkr = zext i8 %i.bkq to i64
  %i.bks = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bkr
  %i.bkt = call { i32, i64 } @_ZN6hermes2vm20doIncDecOperSlowPathITnDaXadL_ZNS0_5doIncEdEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleIS3_EE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.bks) #10 ; 2 uses
  %i.bku = extractvalue { i32, i64 } %i.bkt, 0
  %i.bkv = load ptr, ptr %i.a, align 8, !tbaa !108 ; 3 uses
  %i.bkw = icmp eq i32 %i.bku, 0
  br i1 %i.bkw, label %.loopexitthread-pre-split.loopexit4201, label %bb.je, !prof !65

bb.je:                                            ; preds = %bb.jd
  %i.bkx = extractvalue { i32, i64 } %i.bkt, 1
  %i.bky = getelementptr inbounds nuw i8, ptr %i.bkv, i64 1
  %i.bkz = load i8, ptr %i.bky, align 1, !tbaa !81
  %i.bla = zext i8 %i.bkz to i64
  %i.blb = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bla
  store i64 %i.bkx, ptr %i.blb, align 8, !tbaa !69
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.blc = getelementptr inbounds nuw i8, ptr %i.bkv, i64 3
  br label %.backedge.backedge

bb.jf:                                            ; preds = %.backedge
  %i.bld = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2 ; 2 uses
  %i.ble = load i8, ptr %i.bld, align 1, !tbaa !81
  %i.blf = zext i8 %i.ble to i64
  %i.blg = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.blf
  %i.blh = load i64, ptr %i.blg, align 8          ; 2 uses
  %i.bli = icmp ult i64 %i.blh, -1970324836974592
  br i1 %i.bli, label %bb.jg, label %bb.jh, !prof !60

bb.jg:                                            ; preds = %bb.jf
  %i.blj = bitcast i64 %i.blh to double
  %i.blk = fadd double %i.blj, -1.000000e+00
  %i.bll = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
  %i.blm = load i8, ptr %i.bll, align 1, !tbaa !81
  %i.bln = zext i8 %i.blm to i64
  %i.blo = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bln
  store double %i.blk, ptr %i.blo, align 8, !tbaa !69
  %i.blp = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3
  br label %.backedge.backedge

bb.jh:                                            ; preds = %bb.jf
  store ptr %.sink4081.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.blq = load i8, ptr %i.bld, align 1, !tbaa !81
  %i.blr = zext i8 %i.blq to i64
  %i.bls = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.blr
  %i.blt = call { i32, i64 } @_ZN6hermes2vm20doIncDecOperSlowPathITnDaXadL_ZNS0_5doDecEdEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleIS3_EE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.bls) #10 ; 2 uses
  %i.blu = extractvalue { i32, i64 } %i.blt, 0
  %i.blv = load ptr, ptr %i.a, align 8, !tbaa !108 ; 3 uses
  %i.blw = icmp eq i32 %i.blu, 0
  br i1 %i.blw, label %.loopexitthread-pre-split.loopexit4201, label %bb.ji, !prof !65

bb.ji:                                            ; preds = %bb.jh
  %i.blx = extractvalue { i32, i64 } %i.blt, 1
  %i.bly = getelementptr inbounds nuw i8, ptr %i.blv, i64 1
  %i.blz = load i8, ptr %i.bly, align 1, !tbaa !81
  %i.bma = zext i8 %i.blz to i64
  %i.bmb = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bma
  store i64 %i.blx, ptr %i.bmb, align 8, !tbaa !69
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.bmc = getelementptr inbounds nuw i8, ptr %i.blv, i64 3
  br label %.backedge.backedge

bb.jj:                                            ; preds = %.backedge
  %i.bmd = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2 ; 2 uses
  %i.bme = load i8, ptr %i.bmd, align 1, !tbaa !81
  %i.bmf = zext i8 %i.bme to i64
  %i.bmg = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bmf
  %i.bmh = load i64, ptr %i.bmg, align 8, !tbaa !69
  %i.bmi = icmp ult i64 %i.bmh, -1970324836974592
  br i1 %i.bmi, label %bb.jk, label %.critedge2673, !prof !60

bb.jk:                                            ; preds = %bb.jj
  %i.bmj = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3
  %i.bmk = load i8, ptr %i.bmj, align 1, !tbaa !81
  %i.bml = zext i8 %i.bmk to i64
  %i.bmm = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bml
  %i.bmn = load i64, ptr %i.bmm, align 8, !tbaa !69
  %i.bmo = icmp ult i64 %i.bmn, -1970324836974592
  br i1 %i.bmo, label %bb.jl, label %.critedge2673, !prof !60

bb.jl:                                            ; preds = %.backedge, %bb.jk
  %i.bmp = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2
  %i.bmq = load i8, ptr %i.bmp, align 1, !tbaa !81
  %i.bmr = zext i8 %i.bmq to i64
  %i.bms = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bmr
  %i.bmt = load double, ptr %i.bms, align 8, !tbaa !69
  %i.bmu = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3
  %i.bmv = load i8, ptr %i.bmu, align 1, !tbaa !81
  %i.bmw = zext i8 %i.bmv to i64
  %i.bmx = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bmw
  %i.bmy = load double, ptr %i.bmx, align 8, !tbaa !69
  %i.bmz = fadd double %i.bmt, %i.bmy
  %i.bna = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
  %i.bnb = load i8, ptr %i.bna, align 1, !tbaa !81
  %i.bnc = zext i8 %i.bnb to i64
  %i.bnd = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bnc
  store double %i.bmz, ptr %i.bnd, align 8, !tbaa !69
  %i.bne = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 4
  br label %.backedge.backedge

.critedge2673:                                    ; preds = %bb.jj, %bb.jk
  store ptr %.sink4081.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.bnf = load i8, ptr %i.bmd, align 1, !tbaa !81
  %i.bng = zext i8 %i.bnf to i64
  %i.bnh = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bng
  %i.bni = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3
  %i.bnj = load i8, ptr %i.bni, align 1, !tbaa !81
  %i.bnk = zext i8 %i.bnj to i64
  %i.bnl = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bnk
  %i.bnm = call { i32, i64 } @_ZN6hermes2vm9addOp_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.bnh, ptr %i.bnl) #10 ; 2 uses
  %i.bnn = extractvalue { i32, i64 } %i.bnm, 0
  %i.bno = load ptr, ptr %i.a, align 8, !tbaa !108 ; 3 uses
  %i.bnp = icmp eq i32 %i.bnn, 0
  br i1 %i.bnp, label %.loopexitthread-pre-split.loopexit4201, label %bb.jm

bb.jm:                                            ; preds = %.critedge2673
  %i.bnq = extractvalue { i32, i64 } %i.bnm, 1
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.bnr = getelementptr inbounds nuw i8, ptr %i.bno, i64 1
  %i.bns = load i8, ptr %i.bnr, align 1, !tbaa !81
  %i.bnt = zext i8 %i.bns to i64
  %i.bnu = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bnt
  store i64 %i.bnq, ptr %i.bnu, align 8, !tbaa !69
  %i.bnv = getelementptr inbounds nuw i8, ptr %i.bno, i64 4
  br label %.backedge.backedge

bb.jn:                                            ; preds = %.backedge
  %i.bnw = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2 ; 2 uses
  %i.bnx = load i8, ptr %i.bnw, align 1, !tbaa !81
  %i.bny = zext i8 %i.bnx to i64
  %i.bnz = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bny
  %i.boa = load i64, ptr %i.bnz, align 8          ; 2 uses
  %i.bob = icmp ult i64 %i.boa, -1970324836974592
  %i.boc = bitcast i64 %i.boa to double           ; 3 uses
  br i1 %i.bob, label %bb.jo, label %bb.jq, !prof !60

bb.jo:                                            ; preds = %bb.jn
  %i.bod = fptoui double %i.boc to i64            ; 2 uses
  %i.boe = shl i64 %i.bod, 1
  %i.bof = ashr exact i64 %i.boe, 1
  %i.bog = sitofp i64 %i.bof to double
  %i.boh = fcmp une double %i.boc, %i.bog
  %i.boi = trunc i64 %i.bod to i32
  br i1 %i.boh, label %bb.jp, label %_ZN6hermes15truncateToInt32Ed.exit

bb.jp:                                            ; preds = %bb.jo
  %i.boj = call noundef i32 @_ZN6hermes23truncateToInt32SlowPathEd(double noundef %i.boc) #10
  br label %_ZN6hermes15truncateToInt32Ed.exit

_ZN6hermes15truncateToInt32Ed.exit:               ; preds = %bb.jo, %bb.jp
  %.1.i = phi i32 [ %i.boi, %bb.jo ], [ %i.boj, %bb.jp ]
  %i.bok = xor i32 %.1.i, -1
  %i.bol = sitofp i32 %i.bok to double
  %i.bom = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
  %i.bon = load i8, ptr %i.bom, align 1, !tbaa !81
  %i.boo = zext i8 %i.bon to i64
  %i.bop = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.boo
  store double %i.bol, ptr %i.bop, align 8, !tbaa !69
  %i.boq = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3
  br label %.backedge.backedge

bb.jq:                                            ; preds = %bb.jn
  store ptr %.sink4081.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.bor = load i8, ptr %i.bnw, align 1, !tbaa !81
  %i.bos = zext i8 %i.bor to i64
  %i.bot = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bos
  %i.bou = call { i32, i64 } @_ZN6hermes2vm16doBitNotSlowPathERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.bot) #10 ; 2 uses
  %i.bov = extractvalue { i32, i64 } %i.bou, 0
  %i.bow = load ptr, ptr %i.a, align 8, !tbaa !108 ; 3 uses
  %i.box = icmp eq i32 %i.bov, 0
  br i1 %i.box, label %.loopexitthread-pre-split.loopexit4201, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %i.boy = extractvalue { i32, i64 } %i.bou, 1
  %i.boz = getelementptr inbounds nuw i8, ptr %i.bow, i64 1
  %i.bpa = load i8, ptr %i.boz, align 1, !tbaa !81
  %i.bpb = zext i8 %i.bpa to i64
  %i.bpc = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bpb
  store i64 %i.boy, ptr %i.bpc, align 8, !tbaa !69
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.bpd = getelementptr inbounds nuw i8, ptr %i.bow, i64 3
  br label %.backedge.backedge

bb.js:                                            ; preds = %.backedge
  %i.bpe = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2 ; 2 uses
  %i.bpf = load i8, ptr %i.bpe, align 1, !tbaa !81
  %i.bpg = zext i8 %i.bpf to i64
  %i.bph = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bpg
  %i.bpi = load i64, ptr %i.bph, align 8, !tbaa !69
  %.mask.i2935 = and i64 %i.bpi, -140737488355328
  %i.bpj = icmp eq i64 %.mask.i2935, -1688849860263936
  br i1 %i.bpj, label %bb.jt, label %bb.ju

bb.jt:                                            ; preds = %bb.js
  %i.bpk = getelementptr inbounds i8, ptr %.32602, i64 -40
  %i.bpl = load i64, ptr %i.bpk, align 8, !tbaa !69
  %i.bpm = trunc i64 %i.bpl to i32
  %i.bpn = uitofp i32 %i.bpm to double
  %i.bpo = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
  %i.bpp = load i8, ptr %i.bpo, align 1, !tbaa !81
  %i.bpq = zext i8 %i.bpp to i64
  %i.bpr = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bpq
  store double %i.bpn, ptr %i.bpr, align 8, !tbaa !69
  %i.bps = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3
  br label %.backedge.backedge

bb.ju:                                            ; preds = %bb.js
  store ptr %.sink4081.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.bpt = load i8, ptr %i.bpe, align 1, !tbaa !81
  %i.bpu = zext i8 %i.bpt to i64
  %i.bpv = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bpu ; 2 uses
  %i.bpw = call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr %i.bpv, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 85, ptr %i.bpv, i32 0, ptr noundef null) #10 ; 2 uses
  %i.bpx = extractvalue { i32, i64 } %i.bpw, 0
  %i.bpy = load ptr, ptr %i.a, align 8, !tbaa !108 ; 3 uses
  %i.bpz = icmp eq i32 %i.bpx, 0
  br i1 %i.bpz, label %.loopexitthread-pre-split.loopexit4201, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  %i.bqa = extractvalue { i32, i64 } %i.bpw, 1
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.bqb = getelementptr inbounds nuw i8, ptr %i.bpy, i64 1
  %i.bqc = load i8, ptr %i.bqb, align 1, !tbaa !81
  %i.bqd = zext i8 %i.bqc to i64
  %i.bqe = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bqd
  store i64 %i.bqa, ptr %i.bqe, align 8, !tbaa !69
  %i.bqf = getelementptr inbounds nuw i8, ptr %i.bpy, i64 3
  br label %.backedge.backedge

bb.jw:                                            ; preds = %.backedge
  %i.bqg = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3 ; 2 uses
  %i.bqh = load i8, ptr %i.bqg, align 1, !tbaa !81
  %i.bqi = zext i8 %i.bqh to i64
  %i.bqj = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bqi
  %i.bqk = load i64, ptr %i.bqj, align 8, !tbaa !69
  %.mask.i2939 = and i64 %i.bqk, -140737488355328
  %i.bql = icmp eq i64 %.mask.i2939, -1688849860263936
  br i1 %i.bql, label %bb.jx, label %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit.thread

bb.jx:                                            ; preds = %bb.jw
  %i.bqm = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2
  %i.bqn = load i8, ptr %i.bqm, align 1, !tbaa !81
  %i.bqo = zext i8 %i.bqn to i64
  %i.bqp = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bqo
  %.sroa.0130.0.copyload = load i64, ptr %i.bqp, align 8, !tbaa !61 ; 2 uses
  %i.bqq = icmp ult i64 %.sroa.0130.0.copyload, -1970324836974592
  br i1 %i.bqq, label %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit, label %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit.thread

_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit: ; preds = %bb.jx
  %i.bqr = bitcast i64 %.sroa.0130.0.copyload to double ; 2 uses
  %i.bqs = fptoui double %i.bqr to i32            ; 3 uses
  %i.bqt = uitofp i32 %i.bqs to double
  %i.bqu = fcmp oeq double %i.bqr, %i.bqt
  %i.bqv = icmp ne i32 %i.bqs, -1
  %or.cond.i.i = and i1 %i.bqv, %i.bqu
  %i.bqw = zext i32 %i.bqs to i64
  %i.bqx = or disjoint i64 %i.bqw, 4294967296
  %i.bqy = trunc nuw nsw i64 %i.bqx to i40
  %i.bqz = select i1 %or.cond.i.i, i40 %i.bqy, i40 0 ; 2 uses
  %.sroa.03298.0.extract.trunc = trunc i40 %i.bqz to i32 ; 2 uses
  %.not3722 = icmp samesign ult i40 %i.bqz, 4294967296
  br i1 %.not3722, label %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit.thread, label %bb.jy

bb.jy:                                            ; preds = %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit
  %i.bra = getelementptr inbounds i8, ptr %.32602, i64 -40
  %i.brb = load i64, ptr %i.bra, align 8, !tbaa !69
  %i.brc = trunc i64 %i.brb to i32
  %i.brd = icmp ult i32 %.sroa.03298.0.extract.trunc, %i.brc
  br i1 %i.brd, label %bb.jz, label %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit.thread

bb.jz:                                            ; preds = %bb.jy
  %i.bre = sext i32 %.sroa.03298.0.extract.trunc to i64
  %i.brf = sub nsw i64 0, %i.bre
  %i.brg = getelementptr [8 x i8], ptr %.32602, i64 %i.brf
  %i.brh = getelementptr i8, ptr %i.brg, i64 -72
  %i.bri = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  %i.cnw = add i64 %i.cnv, 3
  %i.cnx = and i64 %i.cnw, -4
  %i.cny = inttoptr i64 %i.cnx to ptr
  %i.cnz = zext i32 %i.cnk to i64
  %i.coa = getelementptr inbounds nuw [4 x i8], ptr %i.cny, i64 %i.cnz
  %i.cob = zext i32 %i.cno to i64
  %i.coc = sub nsw i64 0, %i.cob
  %i.cod = getelementptr inbounds [4 x i8], ptr %i.coa, i64 %i.coc
  %i.coe = load i32, ptr %i.cod, align 4, !tbaa !3
  %i.cof = sext i32 %i.coe to i64
  %i.cog = getelementptr inbounds i8, ptr %.sink4081.sink.in, i64 %i.cof
  br label %.backedge.backedge

bb.ms:                                            ; preds = %bb.mo, %bb.mp, %bb.mq, %bb.mn
  %i.coh = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 6
  %i.coi = load i32, ptr %i.coh, align 1, !tbaa !81
  %i.coj = sext i32 %i.coi to i64
  %i.cok = getelementptr inbounds i8, ptr %.sink4081.sink.in, i64 %i.coj
  br label %.backedge.backedge

bb.mt:                                            ; preds = %.backedge
  %i.col = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2
  %i.com = load i8, ptr %i.col, align 1, !tbaa !81
  %i.con = uitofp i8 %i.com to double
  %i.coo = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
  %i.cop = load i8, ptr %i.coo, align 1, !tbaa !81
  %i.coq = zext i8 %i.cop to i64
  %i.cor = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.coq
  store double %i.con, ptr %i.cor, align 8, !tbaa !69
  %i.cos = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3
  br label %.backedge.backedge

bb.mu:                                            ; preds = %.backedge
  %i.cot = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2
  %i.cou = load i32, ptr %i.cot, align 1, !tbaa !81
  %i.cov = sitofp i32 %i.cou to double
  %i.cow = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
  %i.cox = load i8, ptr %i.cow, align 1, !tbaa !81
  %i.coy = zext i8 %i.cox to i64
  %i.coz = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.coy
  store double %i.cov, ptr %i.coz, align 8, !tbaa !69
  %i.cpa = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 6
  br label %.backedge.backedge

bb.mv:                                            ; preds = %.backedge
  %i.cpb = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2
  %i.cpc = load double, ptr %i.cpb, align 1, !tbaa !81 ; 2 uses
  %i.cpd = fcmp uno double %i.cpc, 0.000000e+00
  %i.cpe = bitcast double %i.cpc to i64
  %.sroa.0.0.i2993 = select i1 %i.cpd, i64 9221120237041090560, i64 %i.cpe, !prof !65
  %i.cpf = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
  %i.cpg = load i8, ptr %i.cpf, align 1, !tbaa !81
  %i.cph = zext i8 %i.cpg to i64
  %i.cpi = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cph
  store i64 %.sroa.0.0.i2993, ptr %i.cpi, align 8, !tbaa !69
  %i.cpj = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 10
  br label %.backedge.backedge

bb.mw:                                            ; preds = %.backedge
  store ptr %.sink4081.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.cpk = load ptr, ptr %.4, align 8, !tbaa !398
  %i.cpl = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2
  %i.cpm = load i16, ptr %i.cpl, align 1, !tbaa !81
  %i.cpn = zext i16 %i.cpm to i32
  %i.cpo = call noundef ptr @_ZN6hermes2vm13RuntimeModule36getStringPrimFromStringIDMayAllocateEj(ptr noundef nonnull align 8 dereferenceable(192) %i.cpk, i32 noundef %i.cpn) #10
  %i.cpp = ptrtoint ptr %i.cpo to i64
  %i.cpq = or i64 %i.cpp, -844424930131968
  %i.cpr = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
  %i.cps = load i8, ptr %i.cpr, align 1, !tbaa !81
  %i.cpt = zext i8 %i.cps to i64
  %i.cpu = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cpt
  store i64 %i.cpq, ptr %i.cpu, align 8, !tbaa !69
  %i.cpv = load ptr, ptr %i.a, align 8, !tbaa !108
  %i.cpw = getelementptr inbounds nuw i8, ptr %i.cpv, i64 4
  br label %.backedge.backedge

bb.mx:                                            ; preds = %.backedge
  store ptr %.sink4081.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.cpx = load ptr, ptr %.4, align 8, !tbaa !398
  %i.cpy = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2
  %i.cpz = load i32, ptr %i.cpy, align 1, !tbaa !81
  %i.cqa = call noundef ptr @_ZN6hermes2vm13RuntimeModule36getStringPrimFromStringIDMayAllocateEj(ptr noundef nonnull align 8 dereferenceable(192) %i.cpx, i32 noundef %i.cpz) #10
  %i.cqb = ptrtoint ptr %i.cqa to i64
  %i.cqc = or i64 %i.cqb, -844424930131968
  %i.cqd = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
  %i.cqe = load i8, ptr %i.cqd, align 1, !tbaa !81
  %i.cqf = zext i8 %i.cqe to i64
  %i.cqg = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cqf
  store i64 %i.cqc, ptr %i.cqg, align 8, !tbaa !69
  %i.cqh = load ptr, ptr %i.a, align 8, !tbaa !108
  %i.cqi = getelementptr inbounds nuw i8, ptr %i.cqh, i64 6
  br label %.backedge.backedge

bb.my:                                            ; preds = %.backedge
  %i.cqj = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
  %i.cqk = load i8, ptr %i.cqj, align 1, !tbaa !81
  %i.cql = zext i8 %i.cqk to i64
  %i.cqm = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cql
  store i64 -1970324836974592, ptr %i.cqm, align 8, !tbaa !69
  %i.cqn = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2
  br label %.backedge.backedge

bb.mz:                                            ; preds = %.backedge
  %i.cqo = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
  %i.cqp = load i8, ptr %i.cqo, align 1, !tbaa !81
  %i.cqq = zext i8 %i.cqp to i64
  %i.cqr = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cqq
  store i64 -1688849860263936, ptr %i.cqr, align 8, !tbaa !69
  %i.cqs = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2
  br label %.backedge.backedge

bb.na:                                            ; preds = %.backedge
  %i.cqt = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
  %i.cqu = load i8, ptr %i.cqt, align 1, !tbaa !81
  %i.cqv = zext i8 %i.cqu to i64
  %i.cqw = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cqv
  store i64 -1548112371908608, ptr %i.cqw, align 8, !tbaa !69
  %i.cqx = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2
  br label %.backedge.backedge

bb.nb:                                            ; preds = %.backedge
  %i.cqy = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
  %i.cqz = load i8, ptr %i.cqy, align 1, !tbaa !81
  %i.cra = zext i8 %i.cqz to i64
  %i.crb = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cra
  store i64 -1407374883553279, ptr %i.crb, align 8, !tbaa !69
  %i.crc = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2
  br label %.backedge.backedge

bb.nc:                                            ; preds = %.backedge
  %i.crd = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
  %i.cre = load i8, ptr %i.crd, align 1, !tbaa !81
  %i.crf = zext i8 %i.cre to i64
  %i.crg = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.crf
  store i64 -1407374883553280, ptr %i.crg, align 8, !tbaa !69
  %i.crh = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2
  br label %.backedge.backedge

bb.nd:                                            ; preds = %.backedge
  %i.cri = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
  %i.crj = load i8, ptr %i.cri, align 1, !tbaa !81
  %i.crk = zext i8 %i.crj to i64
  %i.crl = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.crk
  store i64 0, ptr %i.crl, align 8, !tbaa !69
  %i.crm = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2
  br label %.backedge.backedge

bb.ne:                                            ; preds = %.backedge
  %i.crn = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2
  %i.cro = load i16, ptr %i.crn, align 1, !tbaa !81
  %i.crp = zext i16 %i.cro to i32
  br label %bb.ng

bb.nf:                                            ; preds = %.backedge
  %i.crq = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2
  %i.crr = load i32, ptr %i.crq, align 1, !tbaa !81
  br label %bb.ng

bb.ng:                                            ; preds = %bb.nf, %bb.ne
  %.sink4128 = phi i64 [ 6, %bb.nf ], [ 4, %bb.ne ]
  %.82626 = phi i32 [ %i.crr, %bb.nf ], [ %i.crp, %bb.ne ]
  store ptr %.sink4081.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.crs = load ptr, ptr %.4, align 8, !tbaa !398
  %i.crt = call { ptr, i64 } @_ZNK6hermes2vm13RuntimeModule26getBigIntBytesFromBigIntIdEj(ptr noundef nonnull align 8 dereferenceable(192) %i.crs, i32 noundef %.82626) #10 ; 2 uses
  %i.cru = extractvalue { ptr, i64 } %i.crt, 0
  %i.crv = extractvalue { ptr, i64 } %i.crt, 1
  %i.crw = call { i32, i64 } @_ZN6hermes2vm15BigIntPrimitive9fromBytesERNS0_7RuntimeEN4llvh8ArrayRefIhEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.cru, i64 %i.crv) ; 2 uses
  %i.crx = extractvalue { i32, i64 } %i.crw, 0
  %i.cry = load ptr, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %i.crz = icmp eq i32 %i.crx, 0
  br i1 %i.crz, label %.loopexitthread-pre-split.loopexit4201, label %bb.nh, !prof !65

bb.nh:                                            ; preds = %bb.ng
  %i.csa = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 %.sink4128
  %i.csb = extractvalue { i32, i64 } %i.crw, 1
  %i.csc = getelementptr inbounds nuw i8, ptr %i.cry, i64 1
  %i.csd = load i8, ptr %i.csc, align 1, !tbaa !81
  %i.cse = zext i8 %i.csd to i64
  %i.csf = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cse
  store i64 %i.csb, ptr %i.csf, align 8, !tbaa !69
  br label %.backedge.backedge

bb.ni:                                            ; preds = %.backedge
  %i.csg = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2 ; 2 uses
  %i.csh = load i8, ptr %i.csg, align 1, !tbaa !81
  %i.csi = zext i8 %i.csh to i64
  %i.csj = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.csi
  %i.csk = load i64, ptr %i.csj, align 8, !tbaa !69
  %i.csl = icmp ult i64 %i.csk, -1970324836974592
  br i1 %i.csl, label %bb.nj, label %.critedge2677, !prof !60

bb.nj:                                            ; preds = %bb.ni
  %i.csm = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3
  %i.csn = load i8, ptr %i.csm, align 1, !tbaa !81
  %i.cso = zext i8 %i.csn to i64
  %i.csp = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cso
  %i.csq = load i64, ptr %i.csp, align 8, !tbaa !69
  %i.csr = icmp ult i64 %i.csq, -1970324836974592
  br i1 %i.csr, label %bb.nk, label %.critedge2677, !prof !60

bb.nk:                                            ; preds = %.backedge, %bb.nj
  %i.css = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2
  %i.cst = load i8, ptr %i.css, align 1, !tbaa !81
  %i.csu = zext i8 %i.cst to i64
  %i.csv = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.csu
  %i.csw = load double, ptr %i.csv, align 8, !tbaa !69
  %i.csx = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3
  %i.csy = load i8, ptr %i.csx, align 1, !tbaa !81
  %i.csz = zext i8 %i.csy to i64
  %i.cta = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.csz
  %i.ctb = load double, ptr %i.cta, align 8, !tbaa !69
  %i.ctc = fsub double %i.csw, %i.ctb
  %i.ctd = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
  %i.cte = load i8, ptr %i.ctd, align 1, !tbaa !81
  %i.ctf = zext i8 %i.cte to i64
  %i.ctg = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ctf
  store double %i.ctc, ptr %i.ctg, align 8, !tbaa !69
  %i.cth = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 4
  br label %.backedge.backedge

.critedge2677:                                    ; preds = %bb.ni, %bb.nj
  store ptr %.sink4081.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.cti = load i8, ptr %i.csg, align 1, !tbaa !81
  %i.ctj = zext i8 %i.cti to i64
  %i.ctk = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ctj
  %i.ctl = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3
  %i.ctm = load i8, ptr %i.ctl, align 1, !tbaa !81
  %i.ctn = zext i8 %i.ctm to i64
  %i.cto = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ctn
  %i.ctp = call { i32, i64 } @_ZN6hermes2vm14doOperSlowPathITnDaXadL_ZNS0_5doSubEddEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleIS3_EESA_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.ctk, ptr %i.cto) #10 ; 2 uses
  %i.ctq = extractvalue { i32, i64 } %i.ctp, 0
  %i.ctr = load ptr, ptr %i.a, align 8, !tbaa !108 ; 3 uses
  %i.cts = icmp eq i32 %i.ctq, 0
  br i1 %i.cts, label %.loopexitthread-pre-split.loopexit4201, label %bb.nl

bb.nl:                                            ; preds = %.critedge2677
  %i.ctt = extractvalue { i32, i64 } %i.ctp, 1
  %i.ctu = getelementptr inbounds nuw i8, ptr %i.ctr, i64 1
  %i.ctv = load i8, ptr %i.ctu, align 1, !tbaa !81
  %i.ctw = zext i8 %i.ctv to i64
  %i.ctx = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ctw
  store i64 %i.ctt, ptr %i.ctx, align 8, !tbaa !69
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.cty = getelementptr inbounds nuw i8, ptr %i.ctr, i64 4
  br label %.backedge.backedge

bb.nm:                                            ; preds = %.backedge
  %i.ctz = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2 ; 2 uses
  %i.cua = load i8, ptr %i.ctz, align 1, !tbaa !81
  %i.cub = zext i8 %i.cua to i64
  %i.cuc = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cub
  %i.cud = load i64, ptr %i.cuc, align 8, !tbaa !69
  %i.cue = icmp ult i64 %i.cud, -1970324836974592
  br i1 %i.cue, label %bb.nn, label %.critedge2679, !prof !60

bb.nn:                                            ; preds = %bb.nm
  %i.cuf = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3
  %i.cug = load i8, ptr %i.cuf, align 1, !tbaa !81
  %i.cuh = zext i8 %i.cug to i64
  %i.cui = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cuh
  %i.cuj = load i64, ptr %i.cui, align 8, !tbaa !69
  %i.cuk = icmp ult i64 %i.cuj, -1970324836974592
  br i1 %i.cuk, label %bb.no, label %.critedge2679, !prof !60

bb.no:                                            ; preds = %.backedge, %bb.nn
  %i.cul = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2
  %i.cum = load i8, ptr %i.cul, align 1, !tbaa !81
  %i.cun = zext i8 %i.cum to i64
  %i.cuo = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cun
  %i.cup = load double, ptr %i.cuo, align 8, !tbaa !69
  %i.cuq = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3
  %i.cur = load i8, ptr %i.cuq, align 1, !tbaa !81
  %i.cus = zext i8 %i.cur to i64
  %i.cut = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cus
  %i.cuu = load double, ptr %i.cut, align 8, !tbaa !69
  %i.cuv = fmul double %i.cup, %i.cuu
  %i.cuw = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
  %i.cux = load i8, ptr %i.cuw, align 1, !tbaa !81
  %i.cuy = zext i8 %i.cux to i64
  %i.cuz = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cuy
  store double %i.cuv, ptr %i.cuz, align 8, !tbaa !69
  %i.cva = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 4
  br label %.backedge.backedge

.critedge2679:                                    ; preds = %bb.nm, %bb.nn
  store ptr %.sink4081.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.cvb = load i8, ptr %i.ctz, align 1, !tbaa !81
  %i.cvc = zext i8 %i.cvb to i64
  %i.cvd = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cvc
  %i.cve = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3
  %i.cvf = load i8, ptr %i.cve, align 1, !tbaa !81
  %i.cvg = zext i8 %i.cvf to i64
  %i.cvh = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cvg
  %i.cvi = call { i32, i64 } @_ZN6hermes2vm14doOperSlowPathITnDaXadL_ZNS0_5doMulEddEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleIS3_EESA_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.cvd, ptr %i.cvh) #10 ; 2 uses
  %i.cvj = extractvalue { i32, i64 } %i.cvi, 0
  %i.cvk = load ptr, ptr %i.a, align 8, !tbaa !108 ; 3 uses
  %i.cvl = icmp eq i32 %i.cvj, 0
  br i1 %i.cvl, label %.loopexitthread-pre-split.loopexit4201, label %bb.np

bb.np:                                            ; preds = %.critedge2679
  %i.cvm = extractvalue { i32, i64 } %i.cvi, 1
  %i.cvn = getelementptr inbounds nuw i8, ptr %i.cvk, i64 1
  %i.cvo = load i8, ptr %i.cvn, align 1, !tbaa !81
  %i.cvp = zext i8 %i.cvo to i64
  %i.cvq = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cvp
  store i64 %i.cvm, ptr %i.cvq, align 8, !tbaa !69
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.cvr = getelementptr inbounds nuw i8, ptr %i.cvk, i64 4
  br label %.backedge.backedge

bb.nq:                                            ; preds = %.backedge
  %i.cvs = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2 ; 2 uses
  %i.cvt = load i8, ptr %i.cvs, align 1, !tbaa !81
  %i.cvu = zext i8 %i.cvt to i64
  %i.cvv = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cvu
  %i.cvw = load i64, ptr %i.cvv, align 8, !tbaa !69
  %i.cvx = icmp ult i64 %i.cvw, -1970324836974592
  br i1 %i.cvx, label %bb.nr, label %.critedge2681, !prof !60

bb.nr:                                            ; preds = %bb.nq
  %i.cvy = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3
  %i.cvz = load i8, ptr %i.cvy, align 1, !tbaa !81
  %i.cwa = zext i8 %i.cvz to i64
  %i.cwb = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cwa
  %i.cwc = load i64, ptr %i.cwb, align 8, !tbaa !69
  %i.cwd = icmp ult i64 %i.cwc, -1970324836974592
  br i1 %i.cwd, label %bb.ns, label %.critedge2681, !prof !60

bb.ns:                                            ; preds = %.backedge, %bb.nr
  %i.cwe = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2
  %i.cwf = load i8, ptr %i.cwe, align 1, !tbaa !81
  %i.cwg = zext i8 %i.cwf to i64
  %i.cwh = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cwg
  %i.cwi = load double, ptr %i.cwh, align 8, !tbaa !69
  %i.cwj = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3
  %i.cwk = load i8, ptr %i.cwj, align 1, !tbaa !81
  %i.cwl = zext i8 %i.cwk to i64
  %i.cwm = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cwl
  %i.cwn = load double, ptr %i.cwm, align 8, !tbaa !69
  %i.cwo = fdiv double %i.cwi, %i.cwn
  %i.cwp = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
  %i.cwq = load i8, ptr %i.cwp, align 1, !tbaa !81
  %i.cwr = zext i8 %i.cwq to i64
  %i.cws = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cwr
  store double %i.cwo, ptr %i.cws, align 8, !tbaa !69
  %i.cwt = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 4
  br label %.backedge.backedge

.critedge2681:                                    ; preds = %bb.nq, %bb.nr
  store ptr %.sink4081.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.cwu = load i8, ptr %i.cvs, align 1, !tbaa !81
  %i.cwv = zext i8 %i.cwu to i64
  %i.cww = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cwv
  %i.cwx = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3
  %i.cwy = load i8, ptr %i.cwx, align 1, !tbaa !81
  %i.cwz = zext i8 %i.cwy to i64
  %i.cxa = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cwz
  %i.cxb = call { i32, i64 } @_ZN6hermes2vm14doOperSlowPathITnDaXadL_ZNS0_5doDivEddEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleIS3_EESA_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.cww, ptr %i.cxa) #10 ; 2 uses
  %i.cxc = extractvalue { i32, i64 } %i.cxb, 0
  %i.cxd = load ptr, ptr %i.a, align 8, !tbaa !108 ; 3 uses
  %i.cxe = icmp eq i32 %i.cxc, 0
  br i1 %i.cxe, label %.loopexitthread-pre-split.loopexit4201, label %bb.nt

bb.nt:                                            ; preds = %.critedge2681
  %i.cxf = extractvalue { i32, i64 } %i.cxb, 1
  %i.cxg = getelementptr inbounds nuw i8, ptr %i.cxd, i64 1
  %i.cxh = load i8, ptr %i.cxg, align 1, !tbaa !81
  %i.cxi = zext i8 %i.cxh to i64
  %i.cxj = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cxi
  store i64 %i.cxf, ptr %i.cxj, align 8, !tbaa !69
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.cxk = getelementptr inbounds nuw i8, ptr %i.cxd, i64 4
  br label %.backedge.backedge

bb.nu:                                            ; preds = %.backedge
  %i.cxl = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2 ; 2 uses
  %i.cxm = load i8, ptr %i.cxl, align 1, !tbaa !81
  %i.cxn = zext i8 %i.cxm to i64
  %i.cxo = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cxn
  %i.cxp = load i64, ptr %i.cxo, align 8          ; 2 uses
  %i.cxq = icmp ult i64 %i.cxp, -1970324836974592
  %i.cxr = bitcast i64 %i.cxp to double           ; 3 uses
  br i1 %i.cxq, label %bb.nv, label %.critedge2683, !prof !60

bb.nv:                                            ; preds = %bb.nu
  %i.cxs = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3 ; 2 uses
  %i.cxt = load i8, ptr %i.cxs, align 1, !tbaa !81
  %i.cxu = zext i8 %i.cxt to i64
  %i.cxv = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cxu
  %i.cxw = load i64, ptr %i.cxv, align 8          ; 2 uses
  %i.cxx = icmp ult i64 %i.cxw, -1970324836974592
  br i1 %i.cxx, label %bb.nw, label %.critedge2683, !prof !60

bb.nw:                                            ; preds = %bb.nv
  %i.cxy = bitcast i64 %i.cxw to double
  %i.cxz = fptoui double %i.cxr to i64            ; 2 uses
  %i.cya = shl i64 %i.cxz, 1
  %i.cyb = ashr exact i64 %i.cya, 1
  %i.cyc = sitofp i64 %i.cyb to double
  %i.cyd = fcmp une double %i.cxr, %i.cyc
  %i.cye = trunc i64 %i.cxz to i32
  br i1 %i.cyd, label %bb.nx, label %_ZN6hermes15truncateToInt32Ed.exit3012

bb.nx:                                            ; preds = %bb.nw
  %i.cyf = call noundef i32 @_ZN6hermes23truncateToInt32SlowPathEd(double noundef %i.cxr) #10
  %.pre3940 = load i8, ptr %i.cxs, align 1, !tbaa !81
  %.phi.trans.insert3941 = zext i8 %.pre3940 to i64
  %.phi.trans.insert3942 = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %.phi.trans.insert3941
  %.pre3943 = load double, ptr %.phi.trans.insert3942, align 8, !tbaa !69
  br label %_ZN6hermes15truncateToInt32Ed.exit3012

_ZN6hermes15truncateToInt32Ed.exit3012:           ; preds = %bb.nx, %bb.nw
  %i.cyg = phi double [ %i.cxy, %bb.nw ], [ %.pre3943, %bb.nx ] ; 3 uses
  %.1.i3010 = phi i32 [ %i.cye, %bb.nw ], [ %i.cyf, %bb.nx ]
  %i.cyh = fptoui double %i.cyg to i64            ; 2 uses
  %i.cyi = shl i64 %i.cyh, 1
  %i.cyj = ashr exact i64 %i.cyi, 1
  %i.cyk = sitofp i64 %i.cyj to double
  %i.cyl = fcmp une double %i.cyg, %i.cyk
  %i.cym = trunc i64 %i.cyh to i32
  br i1 %i.cyl, label %bb.ny, label %_ZN6hermes15truncateToInt32Ed.exit3015

bb.ny:                                            ; preds = %_ZN6hermes15truncateToInt32Ed.exit3012
  %i.cyn = call noundef i32 @_ZN6hermes23truncateToInt32SlowPathEd(double noundef %i.cyg) #10
  br label %_ZN6hermes15truncateToInt32Ed.exit3015

_ZN6hermes15truncateToInt32Ed.exit3015:           ; preds = %_ZN6hermes15truncateToInt32Ed.exit3012, %bb.ny
  %.1.i3013 = phi i32 [ %i.cym, %_ZN6hermes15truncateToInt32Ed.exit3012 ], [ %i.cyn, %bb.ny ]
  %i.cyo = and i32 %.1.i3013, %.1.i3010
  %i.cyp = sitofp i32 %i.cyo to double
  %i.cyq = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
  %i.cyr = load i8, ptr %i.cyq, align 1, !tbaa !81
  %i.cys = zext i8 %i.cyr to i64
  %i.cyt = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cys
  store double %i.cyp, ptr %i.cyt, align 8, !tbaa !69
  %i.cyu = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 4
  br label %.backedge.backedge

.critedge2683:                                    ; preds = %bb.nu, %bb.nv
  store ptr %.sink4081.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.cyv = load i8, ptr %i.cxl, align 1, !tbaa !81
  %i.cyw = zext i8 %i.cyv to i64
  %i.cyx = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cyw
  %i.cyy = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3
  %i.cyz = load i8, ptr %i.cyy, align 1, !tbaa !81
  %i.cza = zext i8 %i.cyz to i64
  %i.czb = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cza
  %i.czc = call { i32, i64 } @_ZN6hermes2vm17doBitOperSlowPathITnDaXadL_ZNS0_8doBitAndEiiEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleIS3_EESA_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.cyx, ptr %i.czb) #10 ; 2 uses
  %i.czd = extractvalue { i32, i64 } %i.czc, 0
  %i.cze = load ptr, ptr %i.a, align 8, !tbaa !108 ; 3 uses
  %i.czf = icmp eq i32 %i.czd, 0
  br i1 %i.czf, label %.loopexitthread-pre-split.loopexit4201, label %bb.nz, !prof !65

bb.nz:                                            ; preds = %.critedge2683
  %i.czg = extractvalue { i32, i64 } %i.czc, 1
  %i.czh = getelementptr inbounds nuw i8, ptr %i.cze, i64 1
  %i.czi = load i8, ptr %i.czh, align 1, !tbaa !81
  %i.czj = zext i8 %i.czi to i64
  %i.czk = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.czj
  store i64 %i.czg, ptr %i.czk, align 8, !tbaa !69
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.czl = getelementptr inbounds nuw i8, ptr %i.cze, i64 4
  br label %.backedge.backedge

bb.oa:                                            ; preds = %.backedge
  %i.czm = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2 ; 2 uses
  %i.czn = load i8, ptr %i.czm, align 1, !tbaa !81
  %i.czo = zext i8 %i.czn to i64
  %i.czp = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.czo
  %i.czq = load i64, ptr %i.czp, align 8          ; 2 uses
  %i.czr = icmp ult i64 %i.czq, -1970324836974592
  %i.czs = bitcast i64 %i.czq to double           ; 3 uses
  br i1 %i.czr, label %bb.ob, label %.critedge2685, !prof !60

bb.ob:                                            ; preds = %bb.oa
  %i.czt = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3 ; 2 uses
  %i.czu = load i8, ptr %i.czt, align 1, !tbaa !81
  %i.czv = zext i8 %i.czu to i64
  %i.czw = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.czv
  %i.czx = load i64, ptr %i.czw, align 8          ; 2 uses
  %i.czy = icmp ult i64 %i.czx, -1970324836974592
  br i1 %i.czy, label %bb.oc, label %.critedge2685, !prof !60

bb.oc:                                            ; preds = %bb.ob
  %i.czz = bitcast i64 %i.czx to double
  %i.daa = fptoui double %i.czs to i64            ; 2 uses
  %i.dab = shl i64 %i.daa, 1
  %i.dac = ashr exact i64 %i.dab, 1
  %i.dad = sitofp i64 %i.dac to double
  %i.dae = fcmp une double %i.czs, %i.dad
  %i.daf = trunc i64 %i.daa to i32
  br i1 %i.dae, label %bb.od, label %_ZN6hermes15truncateToInt32Ed.exit3020

bb.od:                                            ; preds = %bb.oc
  %i.dag = call noundef i32 @_ZN6hermes23truncateToInt32SlowPathEd(double noundef %i.czs) #10
  %.pre3932 = load i8, ptr %i.czt, align 1, !tbaa !81
  %.phi.trans.insert3933 = zext i8 %.pre3932 to i64
  %.phi.trans.insert3934 = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %.phi.trans.insert3933
  %.pre3935 = load double, ptr %.phi.trans.insert3934, align 8, !tbaa !69
  br label %_ZN6hermes15truncateToInt32Ed.exit3020

_ZN6hermes15truncateToInt32Ed.exit3020:           ; preds = %bb.od, %bb.oc
  %i.dah = phi double [ %i.czz, %bb.oc ], [ %.pre3935, %bb.od ] ; 3 uses
  %.1.i3018 = phi i32 [ %i.daf, %bb.oc ], [ %i.dag, %bb.od ]
  %i.dai = fptoui double %i.dah to i64            ; 2 uses
  %i.daj = shl i64 %i.dai, 1
  %i.dak = ashr exact i64 %i.daj, 1
  %i.dal = sitofp i64 %i.dak to double
  %i.dam = fcmp une double %i.dah, %i.dal
  %i.dan = trunc i64 %i.dai to i32
  br i1 %i.dam, label %bb.oe, label %_ZN6hermes15truncateToInt32Ed.exit3023

bb.oe:                                            ; preds = %_ZN6hermes15truncateToInt32Ed.exit3020
  %i.dao = call noundef i32 @_ZN6hermes23truncateToInt32SlowPathEd(double noundef %i.dah) #10
  br label %_ZN6hermes15truncateToInt32Ed.exit3023

_ZN6hermes15truncateToInt32Ed.exit3023:           ; preds = %_ZN6hermes15truncateToInt32Ed.exit3020, %bb.oe
  %.1.i3021 = phi i32 [ %i.dan, %_ZN6hermes15truncateToInt32Ed.exit3020 ], [ %i.dao, %bb.oe ]
  %i.dap = or i32 %.1.i3021, %.1.i3018
  %i.daq = sitofp i32 %i.dap to double
  %i.dar = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
  %i.das = load i8, ptr %i.dar, align 1, !tbaa !81
  %i.dat = zext i8 %i.das to i64
  %i.dau = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dat
  store double %i.daq, ptr %i.dau, align 8, !tbaa !69
end_hunk_1
begin_hunk_2_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  %i.dlo = bitcast i64 %i.dlm to double
  br i1 %i.dln, label %bb.pj, label %.critedge2697, !prof !60

bb.pj:                                            ; preds = %bb.pi
  %i.dlp = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3
  %i.dlq = load i8, ptr %i.dlp, align 1, !tbaa !81
  %i.dlr = zext i8 %i.dlq to i64
  %i.dls = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dlr
  %i.dlt = load i64, ptr %i.dls, align 8          ; 2 uses
  %i.dlu = icmp ult i64 %i.dlt, -1970324836974592
  br i1 %i.dlu, label %bb.pk, label %.critedge2697, !prof !60

bb.pk:                                            ; preds = %bb.pj
  %i.dlv = bitcast i64 %i.dlt to double
  %i.dlw = fcmp ole double %i.dlo, %i.dlv
  %i.dlx = zext i1 %i.dlw to i64
  %i.dly = or disjoint i64 %i.dlx, -1407374883553280
  %i.dlz = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
  %i.dma = load i8, ptr %i.dlz, align 1, !tbaa !81
  %i.dmb = zext i8 %i.dma to i64
  %i.dmc = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dmb
  store i64 %i.dly, ptr %i.dmc, align 8, !tbaa !69
  %i.dmd = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 4
  br label %.backedge.backedge

.critedge2697:                                    ; preds = %bb.pi, %bb.pj
  store ptr %.sink4081.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.dme = load i8, ptr %i.dli, align 1, !tbaa !81
  %i.dmf = zext i8 %i.dme to i64
  %i.dmg = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dmf
  %i.dmh = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3
  %i.dmi = load i8, ptr %i.dmh, align 1, !tbaa !81
  %i.dmj = zext i8 %i.dmi to i64
  %i.dmk = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dmj
  %i.dml = call i32 @_ZN6hermes2vm15lessEqualOp_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.dmg, ptr %i.dmk) #10 ; 2 uses
  %i.dmm = load ptr, ptr %i.a, align 8, !tbaa !108 ; 3 uses
  %.mask3753 = and i32 %i.dml, 255
  %i.dmn = icmp eq i32 %.mask3753, 0
  br i1 %i.dmn, label %.loopexitthread-pre-split.loopexit4201, label %bb.pl

bb.pl:                                            ; preds = %.critedge2697
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.dmo = lshr i32 %i.dml, 8
  %.lobit3754 = and i32 %i.dmo, 1
  %i.dmp = zext nneg i32 %.lobit3754 to i64
  %i.dmq = or disjoint i64 %i.dmp, -1407374883553280
  %i.dmr = getelementptr inbounds nuw i8, ptr %i.dmm, i64 1
  %i.dms = load i8, ptr %i.dmr, align 1, !tbaa !81
  %i.dmt = zext i8 %i.dms to i64
  %i.dmu = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dmt
  store i64 %i.dmq, ptr %i.dmu, align 8, !tbaa !69
  %i.dmv = getelementptr inbounds nuw i8, ptr %i.dmm, i64 4
  br label %.backedge.backedge

bb.pm:                                            ; preds = %.backedge
  %i.dmw = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2 ; 2 uses
  %i.dmx = load i8, ptr %i.dmw, align 1, !tbaa !81
  %i.dmy = zext i8 %i.dmx to i64
  %i.dmz = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dmy
  %i.dna = load i64, ptr %i.dmz, align 8          ; 2 uses
  %i.dnb = icmp ult i64 %i.dna, -1970324836974592
  %i.dnc = bitcast i64 %i.dna to double
  br i1 %i.dnb, label %bb.pn, label %.critedge2699, !prof !60

bb.pn:                                            ; preds = %bb.pm
  %i.dnd = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3
  %i.dne = load i8, ptr %i.dnd, align 1, !tbaa !81
  %i.dnf = zext i8 %i.dne to i64
  %i.dng = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dnf
  %i.dnh = load i64, ptr %i.dng, align 8          ; 2 uses
  %i.dni = icmp ult i64 %i.dnh, -1970324836974592
  br i1 %i.dni, label %bb.po, label %.critedge2699, !prof !60

bb.po:                                            ; preds = %bb.pn
  %i.dnj = bitcast i64 %i.dnh to double
  %i.dnk = fcmp ogt double %i.dnc, %i.dnj
  %i.dnl = zext i1 %i.dnk to i64
  %i.dnm = or disjoint i64 %i.dnl, -1407374883553280
  %i.dnn = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
  %i.dno = load i8, ptr %i.dnn, align 1, !tbaa !81
  %i.dnp = zext i8 %i.dno to i64
  %i.dnq = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dnp
  store i64 %i.dnm, ptr %i.dnq, align 8, !tbaa !69
  %i.dnr = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 4
  br label %.backedge.backedge

.critedge2699:                                    ; preds = %bb.pm, %bb.pn
  store ptr %.sink4081.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.dns = load i8, ptr %i.dmw, align 1, !tbaa !81
  %i.dnt = zext i8 %i.dns to i64
  %i.dnu = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dnt
  %i.dnv = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3
  %i.dnw = load i8, ptr %i.dnv, align 1, !tbaa !81
  %i.dnx = zext i8 %i.dnw to i64
  %i.dny = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dnx
  %i.dnz = call i32 @_ZN6hermes2vm13greaterOp_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.dnu, ptr %i.dny) #10 ; 2 uses
  %i.doa = load ptr, ptr %i.a, align 8, !tbaa !108 ; 3 uses
  %.mask3751 = and i32 %i.dnz, 255
  %i.dob = icmp eq i32 %.mask3751, 0
  br i1 %i.dob, label %.loopexitthread-pre-split.loopexit4201, label %bb.pp

bb.pp:                                            ; preds = %.critedge2699
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.doc = lshr i32 %i.dnz, 8
  %.lobit3752 = and i32 %i.doc, 1
  %i.dod = zext nneg i32 %.lobit3752 to i64
  %i.doe = or disjoint i64 %i.dod, -1407374883553280
  %i.dof = getelementptr inbounds nuw i8, ptr %i.doa, i64 1
  %i.dog = load i8, ptr %i.dof, align 1, !tbaa !81
  %i.doh = zext i8 %i.dog to i64
  %i.doi = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.doh
  store i64 %i.doe, ptr %i.doi, align 8, !tbaa !69
  %i.doj = getelementptr inbounds nuw i8, ptr %i.doa, i64 4
  br label %.backedge.backedge

bb.pq:                                            ; preds = %.backedge
  %i.dok = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2 ; 2 uses
  %i.dol = load i8, ptr %i.dok, align 1, !tbaa !81
  %i.dom = zext i8 %i.dol to i64
  %i.don = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dom
  %i.doo = load i64, ptr %i.don, align 8          ; 2 uses
  %i.dop = icmp ult i64 %i.doo, -1970324836974592
  %i.doq = bitcast i64 %i.doo to double
  br i1 %i.dop, label %bb.pr, label %.critedge2701, !prof !60

bb.pr:                                            ; preds = %bb.pq
  %i.dor = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3
  %i.dos = load i8, ptr %i.dor, align 1, !tbaa !81
  %i.dot = zext i8 %i.dos to i64
  %i.dou = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dot
  %i.dov = load i64, ptr %i.dou, align 8          ; 2 uses
  %i.dow = icmp ult i64 %i.dov, -1970324836974592
  br i1 %i.dow, label %bb.ps, label %.critedge2701, !prof !60

bb.ps:                                            ; preds = %bb.pr
  %i.dox = bitcast i64 %i.dov to double
  %i.doy = fcmp oge double %i.doq, %i.dox
  %i.doz = zext i1 %i.doy to i64
  %i.dpa = or disjoint i64 %i.doz, -1407374883553280
  %i.dpb = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
  %i.dpc = load i8, ptr %i.dpb, align 1, !tbaa !81
  %i.dpd = zext i8 %i.dpc to i64
  %i.dpe = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dpd
  store i64 %i.dpa, ptr %i.dpe, align 8, !tbaa !69
  %i.dpf = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 4
  br label %.backedge.backedge

.critedge2701:                                    ; preds = %bb.pq, %bb.pr
  store ptr %.sink4081.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.dpg = load i8, ptr %i.dok, align 1, !tbaa !81
  %i.dph = zext i8 %i.dpg to i64
  %i.dpi = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dph
  %i.dpj = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3
  %i.dpk = load i8, ptr %i.dpj, align 1, !tbaa !81
  %i.dpl = zext i8 %i.dpk to i64
  %i.dpm = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dpl
  %i.dpn = call i32 @_ZN6hermes2vm18greaterEqualOp_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.dpi, ptr %i.dpm) #10 ; 2 uses
  %i.dpo = load ptr, ptr %i.a, align 8, !tbaa !108 ; 3 uses
  %.mask3749 = and i32 %i.dpn, 255
  %i.dpp = icmp eq i32 %.mask3749, 0
  br i1 %i.dpp, label %.loopexitthread-pre-split.loopexit4201, label %bb.pt

bb.pt:                                            ; preds = %.critedge2701
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.dpq = lshr i32 %i.dpn, 8
  %.lobit3750 = and i32 %i.dpq, 1
  %i.dpr = zext nneg i32 %.lobit3750 to i64
  %i.dps = or disjoint i64 %i.dpr, -1407374883553280
  %i.dpt = getelementptr inbounds nuw i8, ptr %i.dpo, i64 1
  %i.dpu = load i8, ptr %i.dpt, align 1, !tbaa !81
  %i.dpv = zext i8 %i.dpu to i64
  %i.dpw = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dpv
  store i64 %i.dps, ptr %i.dpw, align 8, !tbaa !69
  %i.dpx = getelementptr inbounds nuw i8, ptr %i.dpo, i64 4
  br label %.backedge.backedge

bb.pu:                                            ; preds = %.backedge
  %i.dpy = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2 ; 2 uses
  %i.dpz = load i8, ptr %i.dpy, align 1, !tbaa !81
  %i.dqa = zext i8 %i.dpz to i64
  %i.dqb = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dqa
  %i.dqc = load i64, ptr %i.dqb, align 8, !tbaa !69
  %i.dqd = icmp ult i64 %i.dqc, -1970324836974592
  br i1 %i.dqd, label %bb.pv, label %.critedge2703, !prof !60

bb.pv:                                            ; preds = %bb.pu
  %i.dqe = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3
  %i.dqf = load i8, ptr %i.dqe, align 1, !tbaa !81
  %i.dqg = zext i8 %i.dqf to i64
  %i.dqh = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dqg
  %i.dqi = load i64, ptr %i.dqh, align 8, !tbaa !69
  %i.dqj = icmp ult i64 %i.dqi, -1970324836974592
  br i1 %i.dqj, label %bb.pw, label %.critedge2703, !prof !60

bb.pw:                                            ; preds = %.backedge, %bb.pv
  %i.dqk = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2
  %i.dql = load i8, ptr %i.dqk, align 1, !tbaa !81
  %i.dqm = zext i8 %i.dql to i64
  %i.dqn = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dqm
  %i.dqo = load double, ptr %i.dqn, align 8, !tbaa !69
  %i.dqp = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3
  %i.dqq = load i8, ptr %i.dqp, align 1, !tbaa !81
  %i.dqr = zext i8 %i.dqq to i64
  %i.dqs = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dqr
  %i.dqt = load double, ptr %i.dqs, align 8, !tbaa !69
  %i.dqu = fcmp olt double %i.dqo, %i.dqt
  br i1 %i.dqu, label %bb.px, label %bb.py

bb.px:                                            ; preds = %bb.pw
  %i.dqv = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
  %i.dqw = load i8, ptr %i.dqv, align 1, !tbaa !81
  %i.dqx = sext i8 %i.dqw to i64
  %i.dqy = getelementptr inbounds i8, ptr %.sink4081.sink.in, i64 %i.dqx
  br label %.backedge.backedge

bb.py:                                            ; preds = %bb.pw
  %i.dqz = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 4
  br label %.backedge.backedge

.critedge2703:                                    ; preds = %bb.pu, %bb.pv
  store ptr %.sink4081.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.dra = load i8, ptr %i.dpy, align 1, !tbaa !81
  %i.drb = zext i8 %i.dra to i64
  %i.drc = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.drb
  %i.drd = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3
  %i.dre = load i8, ptr %i.drd, align 1, !tbaa !81
  %i.drf = zext i8 %i.dre to i64
  %i.drg = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.drf
  %i.drh = call i32 @_ZN6hermes2vm10lessOp_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.drc, ptr %i.drg) #10 ; 2 uses
  %i.dri = load ptr, ptr %i.a, align 8, !tbaa !108 ; 4 uses
  %.mask3717 = and i32 %i.drh, 255
  %i.drj = icmp eq i32 %.mask3717, 0
  br i1 %i.drj, label %.loopexitthread-pre-split.loopexit4201, label %bb.pz

bb.pz:                                            ; preds = %.critedge2703
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.drk = and i32 %i.drh, 256
  %.not3718 = icmp eq i32 %i.drk, 0
  br i1 %.not3718, label %bb.qb, label %bb.qa

bb.qa:                                            ; preds = %bb.pz
  %i.drl = getelementptr inbounds nuw i8, ptr %i.dri, i64 1
  %i.drm = load i8, ptr %i.drl, align 1, !tbaa !81
  %i.drn = sext i8 %i.drm to i64
  %i.dro = getelementptr inbounds i8, ptr %i.dri, i64 %i.drn
  br label %.backedge.backedge

bb.qb:                                            ; preds = %bb.pz
  %i.drp = getelementptr inbounds nuw i8, ptr %i.dri, i64 4
  br label %.backedge.backedge

bb.qc:                                            ; preds = %.backedge
  %i.drq = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 5 ; 2 uses
  %i.drr = load i8, ptr %i.drq, align 1, !tbaa !81
  %i.drs = zext i8 %i.drr to i64
  %i.drt = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.drs
  %i.dru = load i64, ptr %i.drt, align 8, !tbaa !69
  %i.drv = icmp ult i64 %i.dru, -1970324836974592
  br i1 %i.drv, label %bb.qd, label %.critedge2705, !prof !60

bb.qd:                                            ; preds = %bb.qc
  %i.drw = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 6
  %i.drx = load i8, ptr %i.drw, align 1, !tbaa !81
  %i.dry = zext i8 %i.drx to i64
  %i.drz = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dry
  %i.dsa = load i64, ptr %i.drz, align 8, !tbaa !69
  %i.dsb = icmp ult i64 %i.dsa, -1970324836974592
  br i1 %i.dsb, label %bb.qe, label %.critedge2705, !prof !60

bb.qe:                                            ; preds = %.backedge, %bb.qd
  %i.dsc = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 5
  %i.dsd = load i8, ptr %i.dsc, align 1, !tbaa !81
  %i.dse = zext i8 %i.dsd to i64
  %i.dsf = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dse
  %i.dsg = load double, ptr %i.dsf, align 8, !tbaa !69
  %i.dsh = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 6
  %i.dsi = load i8, ptr %i.dsh, align 1, !tbaa !81
  %i.dsj = zext i8 %i.dsi to i64
  %i.dsk = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dsj
  %i.dsl = load double, ptr %i.dsk, align 8, !tbaa !69
  %i.dsm = fcmp olt double %i.dsg, %i.dsl
  br i1 %i.dsm, label %bb.qf, label %bb.qg

bb.qf:                                            ; preds = %bb.qe
  %i.dsn = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
  %i.dso = load i32, ptr %i.dsn, align 1, !tbaa !81
  %i.dsp = sext i32 %i.dso to i64
  %i.dsq = getelementptr inbounds i8, ptr %.sink4081.sink.in, i64 %i.dsp
  br label %.backedge.backedge

bb.qg:                                            ; preds = %bb.qe
  %i.dsr = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 7
  br label %.backedge.backedge

.critedge2705:                                    ; preds = %bb.qc, %bb.qd
  store ptr %.sink4081.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.dss = load i8, ptr %i.drq, align 1, !tbaa !81
  %i.dst = zext i8 %i.dss to i64
  %i.dsu = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dst
  %i.dsv = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 6
  %i.dsw = load i8, ptr %i.dsv, align 1, !tbaa !81
  %i.dsx = zext i8 %i.dsw to i64
  %i.dsy = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dsx
  %i.dsz = call i32 @_ZN6hermes2vm10lessOp_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.dsu, ptr %i.dsy) #10 ; 2 uses
  %i.dta = load ptr, ptr %i.a, align 8, !tbaa !108 ; 4 uses
  %.mask3715 = and i32 %i.dsz, 255
  %i.dtb = icmp eq i32 %.mask3715, 0
  br i1 %i.dtb, label %.loopexitthread-pre-split.loopexit4201, label %bb.qh

bb.qh:                                            ; preds = %.critedge2705
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.dtc = and i32 %i.dsz, 256
  %.not3716 = icmp eq i32 %i.dtc, 0
  br i1 %.not3716, label %bb.qj, label %bb.qi

bb.qi:                                            ; preds = %bb.qh
  %i.dtd = getelementptr inbounds nuw i8, ptr %i.dta, i64 1
  %i.dte = load i32, ptr %i.dtd, align 1, !tbaa !81
  %i.dtf = sext i32 %i.dte to i64
  %i.dtg = getelementptr inbounds i8, ptr %i.dta, i64 %i.dtf
  br label %.backedge.backedge

bb.qj:                                            ; preds = %bb.qh
  %i.dth = getelementptr inbounds nuw i8, ptr %i.dta, i64 7
  br label %.backedge.backedge

bb.qk:                                            ; preds = %.backedge
  %i.dti = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2 ; 2 uses
  %i.dtj = load i8, ptr %i.dti, align 1, !tbaa !81
  %i.dtk = zext i8 %i.dtj to i64
  %i.dtl = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dtk
  %i.dtm = load i64, ptr %i.dtl, align 8, !tbaa !69
  %i.dtn = icmp ult i64 %i.dtm, -1970324836974592
  br i1 %i.dtn, label %bb.ql, label %.critedge2707, !prof !60

bb.ql:                                            ; preds = %bb.qk
  %i.dto = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3
  %i.dtp = load i8, ptr %i.dto, align 1, !tbaa !81
  %i.dtq = zext i8 %i.dtp to i64
  %i.dtr = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dtq
  %i.dts = load i64, ptr %i.dtr, align 8, !tbaa !69
  %i.dtt = icmp ult i64 %i.dts, -1970324836974592
  br i1 %i.dtt, label %bb.qm, label %.critedge2707, !prof !60

bb.qm:                                            ; preds = %.backedge, %bb.ql
  %i.dtu = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2
  %i.dtv = load i8, ptr %i.dtu, align 1, !tbaa !81
  %i.dtw = zext i8 %i.dtv to i64
  %i.dtx = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dtw
  %i.dty = load double, ptr %i.dtx, align 8, !tbaa !69
  %i.dtz = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3
  %i.dua = load i8, ptr %i.dtz, align 1, !tbaa !81
  %i.dub = zext i8 %i.dua to i64
  %i.duc = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dub
  %i.dud = load double, ptr %i.duc, align 8, !tbaa !69
  %i.due = fcmp olt double %i.dty, %i.dud
  br i1 %i.due, label %bb.qn, label %bb.qo

bb.qn:                                            ; preds = %bb.qm
  %i.duf = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 4
  br label %.backedge.backedge

bb.qo:                                            ; preds = %bb.qm
  %i.dug = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
  %i.duh = load i8, ptr %i.dug, align 1, !tbaa !81
  %i.dui = sext i8 %i.duh to i64
  %i.duj = getelementptr inbounds i8, ptr %.sink4081.sink.in, i64 %i.dui
  br label %.backedge.backedge

.critedge2707:                                    ; preds = %bb.qk, %bb.ql
  store ptr %.sink4081.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.duk = load i8, ptr %i.dti, align 1, !tbaa !81
  %i.dul = zext i8 %i.duk to i64
  %i.dum = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dul
  %i.dun = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3
  %i.duo = load i8, ptr %i.dun, align 1, !tbaa !81
  %i.dup = zext i8 %i.duo to i64
  %i.duq = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dup
  %i.dur = call i32 @_ZN6hermes2vm10lessOp_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.dum, ptr %i.duq) #10 ; 2 uses
  %i.dus = load ptr, ptr %i.a, align 8, !tbaa !108 ; 4 uses
  %.mask3713 = and i32 %i.dur, 255
  %i.dut = icmp eq i32 %.mask3713, 0
  br i1 %i.dut, label %.loopexitthread-pre-split.loopexit4201, label %bb.qp

bb.qp:                                            ; preds = %.critedge2707
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.duu = and i32 %i.dur, 256
  %.not3714 = icmp eq i32 %i.duu, 0
  br i1 %.not3714, label %bb.qr, label %bb.qq

bb.qq:                                            ; preds = %bb.qp
  %i.duv = getelementptr inbounds nuw i8, ptr %i.dus, i64 4
  br label %.backedge.backedge

bb.qr:                                            ; preds = %bb.qp
  %i.duw = getelementptr inbounds nuw i8, ptr %i.dus, i64 1
  %i.dux = load i8, ptr %i.duw, align 1, !tbaa !81
  %i.duy = sext i8 %i.dux to i64
  %i.duz = getelementptr inbounds i8, ptr %i.dus, i64 %i.duy
  br label %.backedge.backedge

bb.qs:                                            ; preds = %.backedge
  %i.dva = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 5 ; 2 uses
  %i.dvb = load i8, ptr %i.dva, align 1, !tbaa !81
  %i.dvc = zext i8 %i.dvb to i64
  %i.dvd = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dvc
  %i.dve = load i64, ptr %i.dvd, align 8, !tbaa !69
  %i.dvf = icmp ult i64 %i.dve, -1970324836974592
  br i1 %i.dvf, label %bb.qt, label %.critedge2709, !prof !60

bb.qt:                                            ; preds = %bb.qs
  %i.dvg = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 6
  %i.dvh = load i8, ptr %i.dvg, align 1, !tbaa !81
  %i.dvi = zext i8 %i.dvh to i64
  %i.dvj = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dvi
  %i.dvk = load i64, ptr %i.dvj, align 8, !tbaa !69
  %i.dvl = icmp ult i64 %i.dvk, -1970324836974592
  br i1 %i.dvl, label %bb.qu, label %.critedge2709, !prof !60

bb.qu:                                            ; preds = %.backedge, %bb.qt
  %i.dvm = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 5
  %i.dvn = load i8, ptr %i.dvm, align 1, !tbaa !81
  %i.dvo = zext i8 %i.dvn to i64
  %i.dvp = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dvo
  %i.dvq = load double, ptr %i.dvp, align 8, !tbaa !69
  %i.dvr = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 6
  %i.dvs = load i8, ptr %i.dvr, align 1, !tbaa !81
  %i.dvt = zext i8 %i.dvs to i64
  %i.dvu = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dvt
  %i.dvv = load double, ptr %i.dvu, align 8, !tbaa !69
  %i.dvw = fcmp olt double %i.dvq, %i.dvv
  br i1 %i.dvw, label %bb.qv, label %bb.qw

bb.qv:                                            ; preds = %bb.qu
  %i.dvx = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 7
  br label %.backedge.backedge

bb.qw:                                            ; preds = %bb.qu
  %i.dvy = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
  %i.dvz = load i32, ptr %i.dvy, align 1, !tbaa !81
  %i.dwa = sext i32 %i.dvz to i64
  %i.dwb = getelementptr inbounds i8, ptr %.sink4081.sink.in, i64 %i.dwa
  br label %.backedge.backedge

.critedge2709:                                    ; preds = %bb.qs, %bb.qt
  store ptr %.sink4081.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.dwc = load i8, ptr %i.dva, align 1, !tbaa !81
  %i.dwd = zext i8 %i.dwc to i64
  %i.dwe = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dwd
  %i.dwf = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 6
  %i.dwg = load i8, ptr %i.dwf, align 1, !tbaa !81
  %i.dwh = zext i8 %i.dwg to i64
  %i.dwi = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dwh
  %i.dwj = call i32 @_ZN6hermes2vm10lessOp_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.dwe, ptr %i.dwi) #10 ; 2 uses
  %i.dwk = load ptr, ptr %i.a, align 8, !tbaa !108 ; 4 uses
  %.mask3711 = and i32 %i.dwj, 255
  %i.dwl = icmp eq i32 %.mask3711, 0
  br i1 %i.dwl, label %.loopexitthread-pre-split.loopexit4201, label %bb.qx

bb.qx:                                            ; preds = %.critedge2709
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.dwm = and i32 %i.dwj, 256
  %.not3712 = icmp eq i32 %i.dwm, 0
  br i1 %.not3712, label %bb.qz, label %bb.qy

bb.qy:                                            ; preds = %bb.qx
  %i.dwn = getelementptr inbounds nuw i8, ptr %i.dwk, i64 7
  br label %.backedge.backedge

bb.qz:                                            ; preds = %bb.qx
  %i.dwo = getelementptr inbounds nuw i8, ptr %i.dwk, i64 1
  %i.dwp = load i32, ptr %i.dwo, align 1, !tbaa !81
  %i.dwq = sext i32 %i.dwp to i64
  %i.dwr = getelementptr inbounds i8, ptr %i.dwk, i64 %i.dwq
  br label %.backedge.backedge

bb.ra:                                            ; preds = %.backedge
  %i.dws = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2 ; 2 uses
  %i.dwt = load i8, ptr %i.dws, align 1, !tbaa !81
  %i.dwu = zext i8 %i.dwt to i64
  %i.dwv = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dwu
  %i.dww = load i64, ptr %i.dwv, align 8, !tbaa !69
  %i.dwx = icmp ult i64 %i.dww, -1970324836974592
  br i1 %i.dwx, label %bb.rb, label %.critedge2711, !prof !60

bb.rb:                                            ; preds = %bb.ra
  %i.dwy = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3
  %i.dwz = load i8, ptr %i.dwy, align 1, !tbaa !81
  %i.dxa = zext i8 %i.dwz to i64
  %i.dxb = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dxa
  %i.dxc = load i64, ptr %i.dxb, align 8, !tbaa !69
  %i.dxd = icmp ult i64 %i.dxc, -1970324836974592
  br i1 %i.dxd, label %bb.rc, label %.critedge2711, !prof !60

bb.rc:                                            ; preds = %.backedge, %bb.rb
  %i.dxe = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2
  %i.dxf = load i8, ptr %i.dxe, align 1, !tbaa !81
  %i.dxg = zext i8 %i.dxf to i64
  %i.dxh = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dxg
  %i.dxi = load double, ptr %i.dxh, align 8, !tbaa !69
  %i.dxj = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3
  %i.dxk = load i8, ptr %i.dxj, align 1, !tbaa !81
  %i.dxl = zext i8 %i.dxk to i64
  %i.dxm = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dxl
  %i.dxn = load double, ptr %i.dxm, align 8, !tbaa !69
  %i.dxo = fcmp ugt double %i.dxi, %i.dxn
  br i1 %i.dxo, label %bb.re, label %bb.rd

bb.rd:                                            ; preds = %bb.rc
  %i.dxp = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
  %i.dxq = load i8, ptr %i.dxp, align 1, !tbaa !81
  %i.dxr = sext i8 %i.dxq to i64
  %i.dxs = getelementptr inbounds i8, ptr %.sink4081.sink.in, i64 %i.dxr
  br label %.backedge.backedge

bb.re:                                            ; preds = %bb.rc
  %i.dxt = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 4
  br label %.backedge.backedge

.critedge2711:                                    ; preds = %bb.ra, %bb.rb
  store ptr %.sink4081.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.dxu = load i8, ptr %i.dws, align 1, !tbaa !81
  %i.dxv = zext i8 %i.dxu to i64
  %i.dxw = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dxv
  %i.dxx = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3
  %i.dxy = load i8, ptr %i.dxx, align 1, !tbaa !81
  %i.dxz = zext i8 %i.dxy to i64
  %i.dya = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dxz
  %i.dyb = call i32 @_ZN6hermes2vm15lessEqualOp_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.dxw, ptr %i.dya) #10 ; 2 uses
  %i.dyc = load ptr, ptr %i.a, align 8, !tbaa !108 ; 4 uses
  %.mask3709 = and i32 %i.dyb, 255
  %i.dyd = icmp eq i32 %.mask3709, 0
  br i1 %i.dyd, label %.loopexitthread-pre-split.loopexit4201, label %bb.rf

bb.rf:                                            ; preds = %.critedge2711
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.dye = and i32 %i.dyb, 256
  %.not3710 = icmp eq i32 %i.dye, 0
  br i1 %.not3710, label %bb.rh, label %bb.rg

bb.rg:                                            ; preds = %bb.rf
  %i.dyf = getelementptr inbounds nuw i8, ptr %i.dyc, i64 1
  %i.dyg = load i8, ptr %i.dyf, align 1, !tbaa !81
  %i.dyh = sext i8 %i.dyg to i64
  %i.dyi = getelementptr inbounds i8, ptr %i.dyc, i64 %i.dyh
  br label %.backedge.backedge

bb.rh:                                            ; preds = %bb.rf
  %i.dyj = getelementptr inbounds nuw i8, ptr %i.dyc, i64 4
  br label %.backedge.backedge

bb.ri:                                            ; preds = %.backedge
  %i.dyk = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 5 ; 2 uses
  %i.dyl = load i8, ptr %i.dyk, align 1, !tbaa !81
  %i.dym = zext i8 %i.dyl to i64
  %i.dyn = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dym
  %i.dyo = load i64, ptr %i.dyn, align 8, !tbaa !69
  %i.dyp = icmp ult i64 %i.dyo, -1970324836974592
  br i1 %i.dyp, label %bb.rj, label %.critedge2713, !prof !60

bb.rj:                                            ; preds = %bb.ri
  %i.dyq = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 6
  %i.dyr = load i8, ptr %i.dyq, align 1, !tbaa !81
  %i.dys = zext i8 %i.dyr to i64
  %i.dyt = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dys
  %i.dyu = load i64, ptr %i.dyt, align 8, !tbaa !69
  %i.dyv = icmp ult i64 %i.dyu, -1970324836974592
  br i1 %i.dyv, label %bb.rk, label %.critedge2713, !prof !60

bb.rk:                                            ; preds = %.backedge, %bb.rj
  %i.dyw = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 5
  %i.dyx = load i8, ptr %i.dyw, align 1, !tbaa !81
  %i.dyy = zext i8 %i.dyx to i64
  %i.dyz = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dyy
  %i.dza = load double, ptr %i.dyz, align 8, !tbaa !69
  %i.dzb = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 6
  %i.dzc = load i8, ptr %i.dzb, align 1, !tbaa !81
  %i.dzd = zext i8 %i.dzc to i64
  %i.dze = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dzd
  %i.dzf = load double, ptr %i.dze, align 8, !tbaa !69
  %i.dzg = fcmp ugt double %i.dza, %i.dzf
  br i1 %i.dzg, label %bb.rm, label %bb.rl

bb.rl:                                            ; preds = %bb.rk
  %i.dzh = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
  %i.dzi = load i32, ptr %i.dzh, align 1, !tbaa !81
  %i.dzj = sext i32 %i.dzi to i64
  %i.dzk = getelementptr inbounds i8, ptr %.sink4081.sink.in, i64 %i.dzj
  br label %.backedge.backedge

bb.rm:                                            ; preds = %bb.rk
  %i.dzl = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 7
  br label %.backedge.backedge

.critedge2713:                                    ; preds = %bb.ri, %bb.rj
  store ptr %.sink4081.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.dzm = load i8, ptr %i.dyk, align 1, !tbaa !81
  %i.dzn = zext i8 %i.dzm to i64
  %i.dzo = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dzn
  %i.dzp = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 6
  %i.dzq = load i8, ptr %i.dzp, align 1, !tbaa !81
  %i.dzr = zext i8 %i.dzq to i64
  %i.dzs = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dzr
  %i.dzt = call i32 @_ZN6hermes2vm15lessEqualOp_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.dzo, ptr %i.dzs) #10 ; 2 uses
  %i.dzu = load ptr, ptr %i.a, align 8, !tbaa !108 ; 4 uses
  %.mask3707 = and i32 %i.dzt, 255
  %i.dzv = icmp eq i32 %.mask3707, 0
  br i1 %i.dzv, label %.loopexitthread-pre-split.loopexit4201, label %bb.rn

bb.rn:                                            ; preds = %.critedge2713
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.dzw = and i32 %i.dzt, 256
  %.not3708 = icmp eq i32 %i.dzw, 0
  br i1 %.not3708, label %bb.rp, label %bb.ro

bb.ro:                                            ; preds = %bb.rn
  %i.dzx = getelementptr inbounds nuw i8, ptr %i.dzu, i64 1
  %i.dzy = load i32, ptr %i.dzx, align 1, !tbaa !81
  %i.dzz = sext i32 %i.dzy to i64
  %i.eaa = getelementptr inbounds i8, ptr %i.dzu, i64 %i.dzz
  br label %.backedge.backedge

bb.rp:                                            ; preds = %bb.rn
  %i.eab = getelementptr inbounds nuw i8, ptr %i.dzu, i64 7
  br label %.backedge.backedge

bb.rq:                                            ; preds = %.backedge
  %i.eac = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2 ; 2 uses
  %i.ead = load i8, ptr %i.eac, align 1, !tbaa !81
  %i.eae = zext i8 %i.ead to i64
  %i.eaf = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.eae
  %i.eag = load i64, ptr %i.eaf, align 8, !tbaa !69
  %i.eah = icmp ult i64 %i.eag, -1970324836974592
  br i1 %i.eah, label %bb.rr, label %.critedge2715, !prof !60

bb.rr:                                            ; preds = %bb.rq
  %i.eai = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3
  %i.eaj = load i8, ptr %i.eai, align 1, !tbaa !81
  %i.eak = zext i8 %i.eaj to i64
  %i.eal = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.eak
  %i.eam = load i64, ptr %i.eal, align 8, !tbaa !69
  %i.ean = icmp ult i64 %i.eam, -1970324836974592
  br i1 %i.ean, label %bb.rs, label %.critedge2715, !prof !60

bb.rs:                                            ; preds = %.backedge, %bb.rr
  %i.eao = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2
  %i.eap = load i8, ptr %i.eao, align 1, !tbaa !81
  %i.eaq = zext i8 %i.eap to i64
  %i.ear = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.eaq
  %i.eas = load double, ptr %i.ear, align 8, !tbaa !69
  %i.eat = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3
  %i.eau = load i8, ptr %i.eat, align 1, !tbaa !81
  %i.eav = zext i8 %i.eau to i64
  %i.eaw = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.eav
  %i.eax = load double, ptr %i.eaw, align 8, !tbaa !69
  %i.eay = fcmp ugt double %i.eas, %i.eax
  br i1 %i.eay, label %bb.ru, label %bb.rt

bb.rt:                                            ; preds = %bb.rs
  %i.eaz = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 4
  br label %.backedge.backedge

bb.ru:                                            ; preds = %bb.rs
  %i.eba = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
  %i.ebb = load i8, ptr %i.eba, align 1, !tbaa !81
  %i.ebc = sext i8 %i.ebb to i64
  %i.ebd = getelementptr inbounds i8, ptr %.sink4081.sink.in, i64 %i.ebc
  br label %.backedge.backedge

.critedge2715:                                    ; preds = %bb.rq, %bb.rr
  store ptr %.sink4081.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.ebe = load i8, ptr %i.eac, align 1, !tbaa !81
  %i.ebf = zext i8 %i.ebe to i64
  %i.ebg = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ebf
  %i.ebh = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3
  %i.ebi = load i8, ptr %i.ebh, align 1, !tbaa !81
  %i.ebj = zext i8 %i.ebi to i64
  %i.ebk = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ebj
  %i.ebl = call i32 @_ZN6hermes2vm15lessEqualOp_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.ebg, ptr %i.ebk) #10 ; 2 uses
  %i.ebm = load ptr, ptr %i.a, align 8, !tbaa !108 ; 4 uses
  %.mask3705 = and i32 %i.ebl, 255
  %i.ebn = icmp eq i32 %.mask3705, 0
  br i1 %i.ebn, label %.loopexitthread-pre-split.loopexit4201, label %bb.rv

bb.rv:                                            ; preds = %.critedge2715
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.ebo = and i32 %i.ebl, 256
  %.not3706 = icmp eq i32 %i.ebo, 0
  br i1 %.not3706, label %bb.rx, label %bb.rw

bb.rw:                                            ; preds = %bb.rv
  %i.ebp = getelementptr inbounds nuw i8, ptr %i.ebm, i64 4
  br label %.backedge.backedge

bb.rx:                                            ; preds = %bb.rv
  %i.ebq = getelementptr inbounds nuw i8, ptr %i.ebm, i64 1
  %i.ebr = load i8, ptr %i.ebq, align 1, !tbaa !81
  %i.ebs = sext i8 %i.ebr to i64
  %i.ebt = getelementptr inbounds i8, ptr %i.ebm, i64 %i.ebs
  br label %.backedge.backedge

bb.ry:                                            ; preds = %.backedge
  %i.ebu = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 5 ; 2 uses
  %i.ebv = load i8, ptr %i.ebu, align 1, !tbaa !81
  %i.ebw = zext i8 %i.ebv to i64
  %i.ebx = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ebw
  %i.eby = load i64, ptr %i.ebx, align 8, !tbaa !69
  %i.ebz = icmp ult i64 %i.eby, -1970324836974592
  br i1 %i.ebz, label %bb.rz, label %.critedge2717, !prof !60

bb.rz:                                            ; preds = %bb.ry
  %i.eca = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 6
  %i.ecb = load i8, ptr %i.eca, align 1, !tbaa !81
  %i.ecc = zext i8 %i.ecb to i64
  %i.ecd = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ecc
  %i.ece = load i64, ptr %i.ecd, align 8, !tbaa !69
  %i.ecf = icmp ult i64 %i.ece, -1970324836974592
  br i1 %i.ecf, label %bb.sa, label %.critedge2717, !prof !60

bb.sa:                                            ; preds = %.backedge, %bb.rz
  %i.ecg = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 5
  %i.ech = load i8, ptr %i.ecg, align 1, !tbaa !81
  %i.eci = zext i8 %i.ech to i64
  %i.ecj = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.eci
  %i.eck = load double, ptr %i.ecj, align 8, !tbaa !69
  %i.ecl = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 6
  %i.ecm = load i8, ptr %i.ecl, align 1, !tbaa !81
  %i.ecn = zext i8 %i.ecm to i64
  %i.eco = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ecn
  %i.ecp = load double, ptr %i.eco, align 8, !tbaa !69
  %i.ecq = fcmp ugt double %i.eck, %i.ecp
  br i1 %i.ecq, label %bb.sc, label %bb.sb

bb.sb:                                            ; preds = %bb.sa
  %i.ecr = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 7
  br label %.backedge.backedge

bb.sc:                                            ; preds = %bb.sa
  %i.ecs = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
  %i.ect = load i32, ptr %i.ecs, align 1, !tbaa !81
  %i.ecu = sext i32 %i.ect to i64
  %i.ecv = getelementptr inbounds i8, ptr %.sink4081.sink.in, i64 %i.ecu
  br label %.backedge.backedge

.critedge2717:                                    ; preds = %bb.ry, %bb.rz
  store ptr %.sink4081.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.ecw = load i8, ptr %i.ebu, align 1, !tbaa !81
  %i.ecx = zext i8 %i.ecw to i64
  %i.ecy = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ecx
  %i.ecz = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 6
  %i.eda = load i8, ptr %i.ecz, align 1, !tbaa !81
  %i.edb = zext i8 %i.eda to i64
  %i.edc = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.edb
  %i.edd = call i32 @_ZN6hermes2vm15lessEqualOp_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.ecy, ptr %i.edc) #10 ; 2 uses
  %i.ede = load ptr, ptr %i.a, align 8, !tbaa !108 ; 4 uses
  %.mask3703 = and i32 %i.edd, 255
  %i.edf = icmp eq i32 %.mask3703, 0
  br i1 %i.edf, label %.loopexitthread-pre-split.loopexit4201, label %bb.sd

bb.sd:                                            ; preds = %.critedge2717
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.edg = and i32 %i.edd, 256
  %.not3704 = icmp eq i32 %i.edg, 0
  br i1 %.not3704, label %bb.sf, label %bb.se

bb.se:                                            ; preds = %bb.sd
  %i.edh = getelementptr inbounds nuw i8, ptr %i.ede, i64 7
  br label %.backedge.backedge

bb.sf:                                            ; preds = %bb.sd
  %i.edi = getelementptr inbounds nuw i8, ptr %i.ede, i64 1
  %i.edj = load i32, ptr %i.edi, align 1, !tbaa !81
  %i.edk = sext i32 %i.edj to i64
  %i.edl = getelementptr inbounds i8, ptr %i.ede, i64 %i.edk
  br label %.backedge.backedge

bb.sg:                                            ; preds = %.backedge
  %i.edm = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2 ; 2 uses
  %i.edn = load i8, ptr %i.edm, align 1, !tbaa !81
  %i.edo = zext i8 %i.edn to i64
  %i.edp = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.edo
  %i.edq = load i64, ptr %i.edp, align 8, !tbaa !69
  %i.edr = icmp ult i64 %i.edq, -1970324836974592
  br i1 %i.edr, label %bb.sh, label %.critedge2719, !prof !60

bb.sh:                                            ; preds = %bb.sg
  %i.eds = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3
  %i.edt = load i8, ptr %i.eds, align 1, !tbaa !81
  %i.edu = zext i8 %i.edt to i64
  %i.edv = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.edu
  %i.edw = load i64, ptr %i.edv, align 8, !tbaa !69
  %i.edx = icmp ult i64 %i.edw, -1970324836974592
  br i1 %i.edx, label %bb.si, label %.critedge2719, !prof !60

bb.si:                                            ; preds = %.backedge, %bb.sh
  %i.edy = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2
  %i.edz = load i8, ptr %i.edy, align 1, !tbaa !81
  %i.eea = zext i8 %i.edz to i64
  %i.eeb = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.eea
  %i.eec = load double, ptr %i.eeb, align 8, !tbaa !69
  %i.eed = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3
  %i.eee = load i8, ptr %i.eed, align 1, !tbaa !81
  %i.eef = zext i8 %i.eee to i64
  %i.eeg = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.eef
  %i.eeh = load double, ptr %i.eeg, align 8, !tbaa !69
  %i.eei = fcmp ogt double %i.eec, %i.eeh
  br i1 %i.eei, label %bb.sj, label %bb.sk

bb.sj:                                            ; preds = %bb.si
  %i.eej = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
  %i.eek = load i8, ptr %i.eej, align 1, !tbaa !81
  %i.eel = sext i8 %i.eek to i64
  %i.eem = getelementptr inbounds i8, ptr %.sink4081.sink.in, i64 %i.eel
  br label %.backedge.backedge

bb.sk:                                            ; preds = %bb.si
  %i.een = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 4
  br label %.backedge.backedge

.critedge2719:                                    ; preds = %bb.sg, %bb.sh
  store ptr %.sink4081.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.eeo = load i8, ptr %i.edm, align 1, !tbaa !81
  %i.eep = zext i8 %i.eeo to i64
  %i.eeq = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.eep
  %i.eer = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3
  %i.ees = load i8, ptr %i.eer, align 1, !tbaa !81
  %i.eet = zext i8 %i.ees to i64
  %i.eeu = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.eet
  %i.eev = call i32 @_ZN6hermes2vm13greaterOp_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.eeq, ptr %i.eeu) #10 ; 2 uses
  %i.eew = load ptr, ptr %i.a, align 8, !tbaa !108 ; 4 uses
  %.mask3701 = and i32 %i.eev, 255
  %i.eex = icmp eq i32 %.mask3701, 0
  br i1 %i.eex, label %.loopexitthread-pre-split.loopexit4201, label %bb.sl

bb.sl:                                            ; preds = %.critedge2719
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.eey = and i32 %i.eev, 256
  %.not3702 = icmp eq i32 %i.eey, 0
  br i1 %.not3702, label %bb.sn, label %bb.sm

bb.sm:                                            ; preds = %bb.sl
  %i.eez = getelementptr inbounds nuw i8, ptr %i.eew, i64 1
  %i.efa = load i8, ptr %i.eez, align 1, !tbaa !81
  %i.efb = sext i8 %i.efa to i64
  %i.efc = getelementptr inbounds i8, ptr %i.eew, i64 %i.efb
  br label %.backedge.backedge

bb.sn:                                            ; preds = %bb.sl
  %i.efd = getelementptr inbounds nuw i8, ptr %i.eew, i64 4
  br label %.backedge.backedge

bb.so:                                            ; preds = %.backedge
  %i.efe = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 5 ; 2 uses
  %i.eff = load i8, ptr %i.efe, align 1, !tbaa !81
  %i.efg = zext i8 %i.eff to i64
  %i.efh = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.efg
  %i.efi = load i64, ptr %i.efh, align 8, !tbaa !69
  %i.efj = icmp ult i64 %i.efi, -1970324836974592
  br i1 %i.efj, label %bb.sp, label %.critedge2721, !prof !60

bb.sp:                                            ; preds = %bb.so
  %i.efk = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 6
  %i.efl = load i8, ptr %i.efk, align 1, !tbaa !81
  %i.efm = zext i8 %i.efl to i64
  %i.efn = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.efm
  %i.efo = load i64, ptr %i.efn, align 8, !tbaa !69
  %i.efp = icmp ult i64 %i.efo, -1970324836974592
  br i1 %i.efp, label %bb.sq, label %.critedge2721, !prof !60

bb.sq:                                            ; preds = %.backedge, %bb.sp
  %i.efq = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 5
  %i.efr = load i8, ptr %i.efq, align 1, !tbaa !81
  %i.efs = zext i8 %i.efr to i64
  %i.eft = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.efs
  %i.efu = load double, ptr %i.eft, align 8, !tbaa !69
  %i.efv = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 6
  %i.efw = load i8, ptr %i.efv, align 1, !tbaa !81
  %i.efx = zext i8 %i.efw to i64
  %i.efy = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.efx
  %i.efz = load double, ptr %i.efy, align 8, !tbaa !69
  %i.ega = fcmp ogt double %i.efu, %i.efz
  br i1 %i.ega, label %bb.sr, label %bb.ss

bb.sr:                                            ; preds = %bb.sq
  %i.egb = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
  %i.egc = load i32, ptr %i.egb, align 1, !tbaa !81
  %i.egd = sext i32 %i.egc to i64
  %i.ege = getelementptr inbounds i8, ptr %.sink4081.sink.in, i64 %i.egd
  br label %.backedge.backedge

bb.ss:                                            ; preds = %bb.sq
  %i.egf = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 7
  br label %.backedge.backedge

.critedge2721:                                    ; preds = %bb.so, %bb.sp
  store ptr %.sink4081.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.egg = load i8, ptr %i.efe, align 1, !tbaa !81
  %i.egh = zext i8 %i.egg to i64
  %i.egi = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.egh
  %i.egj = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 6
  %i.egk = load i8, ptr %i.egj, align 1, !tbaa !81
  %i.egl = zext i8 %i.egk to i64
  %i.egm = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.egl
  %i.egn = call i32 @_ZN6hermes2vm13greaterOp_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.egi, ptr %i.egm) #10 ; 2 uses
  %i.ego = load ptr, ptr %i.a, align 8, !tbaa !108 ; 4 uses
  %.mask3699 = and i32 %i.egn, 255
  %i.egp = icmp eq i32 %.mask3699, 0
  br i1 %i.egp, label %.loopexitthread-pre-split.loopexit4201, label %bb.st

bb.st:                                            ; preds = %.critedge2721
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.egq = and i32 %i.egn, 256
  %.not3700 = icmp eq i32 %i.egq, 0
  br i1 %.not3700, label %bb.sv, label %bb.su

bb.su:                                            ; preds = %bb.st
  %i.egr = getelementptr inbounds nuw i8, ptr %i.ego, i64 1
  %i.egs = load i32, ptr %i.egr, align 1, !tbaa !81
  %i.egt = sext i32 %i.egs to i64
  %i.egu = getelementptr inbounds i8, ptr %i.ego, i64 %i.egt
  br label %.backedge.backedge

bb.sv:                                            ; preds = %bb.st
  %i.egv = getelementptr inbounds nuw i8, ptr %i.ego, i64 7
  br label %.backedge.backedge

bb.sw:                                            ; preds = %.backedge
  %i.egw = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2 ; 2 uses
  %i.egx = load i8, ptr %i.egw, align 1, !tbaa !81
  %i.egy = zext i8 %i.egx to i64
  %i.egz = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.egy
  %i.eha = load i64, ptr %i.egz, align 8, !tbaa !69
  %i.ehb = icmp ult i64 %i.eha, -1970324836974592
  br i1 %i.ehb, label %bb.sx, label %.critedge2723, !prof !60

bb.sx:                                            ; preds = %bb.sw
  %i.ehc = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3
  %i.ehd = load i8, ptr %i.ehc, align 1, !tbaa !81
  %i.ehe = zext i8 %i.ehd to i64
  %i.ehf = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ehe
  %i.ehg = load i64, ptr %i.ehf, align 8, !tbaa !69
  %i.ehh = icmp ult i64 %i.ehg, -1970324836974592
  br i1 %i.ehh, label %bb.sy, label %.critedge2723, !prof !60

bb.sy:                                            ; preds = %.backedge, %bb.sx
  %i.ehi = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2
  %i.ehj = load i8, ptr %i.ehi, align 1, !tbaa !81
  %i.ehk = zext i8 %i.ehj to i64
  %i.ehl = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ehk
  %i.ehm = load double, ptr %i.ehl, align 8, !tbaa !69
  %i.ehn = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3
  %i.eho = load i8, ptr %i.ehn, align 1, !tbaa !81
  %i.ehp = zext i8 %i.eho to i64
  %i.ehq = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ehp
  %i.ehr = load double, ptr %i.ehq, align 8, !tbaa !69
  %i.ehs = fcmp ogt double %i.ehm, %i.ehr
  br i1 %i.ehs, label %bb.sz, label %bb.ta

bb.sz:                                            ; preds = %bb.sy
  %i.eht = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 4
  br label %.backedge.backedge

bb.ta:                                            ; preds = %bb.sy
  %i.ehu = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
  %i.ehv = load i8, ptr %i.ehu, align 1, !tbaa !81
  %i.ehw = sext i8 %i.ehv to i64
  %i.ehx = getelementptr inbounds i8, ptr %.sink4081.sink.in, i64 %i.ehw
  br label %.backedge.backedge

.critedge2723:                                    ; preds = %bb.sw, %bb.sx
  store ptr %.sink4081.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.ehy = load i8, ptr %i.egw, align 1, !tbaa !81
  %i.ehz = zext i8 %i.ehy to i64
  %i.eia = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ehz
  %i.eib = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3
  %i.eic = load i8, ptr %i.eib, align 1, !tbaa !81
  %i.eid = zext i8 %i.eic to i64
  %i.eie = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.eid
  %i.eif = call i32 @_ZN6hermes2vm13greaterOp_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.eia, ptr %i.eie) #10 ; 2 uses
  %i.eig = load ptr, ptr %i.a, align 8, !tbaa !108 ; 4 uses
  %.mask3697 = and i32 %i.eif, 255
  %i.eih = icmp eq i32 %.mask3697, 0
  br i1 %i.eih, label %.loopexitthread-pre-split.loopexit4201, label %bb.tb

bb.tb:                                            ; preds = %.critedge2723
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.eii = and i32 %i.eif, 256
  %.not3698 = icmp eq i32 %i.eii, 0
  br i1 %.not3698, label %bb.td, label %bb.tc

bb.tc:                                            ; preds = %bb.tb
  %i.eij = getelementptr inbounds nuw i8, ptr %i.eig, i64 4
  br label %.backedge.backedge

bb.td:                                            ; preds = %bb.tb
  %i.eik = getelementptr inbounds nuw i8, ptr %i.eig, i64 1
  %i.eil = load i8, ptr %i.eik, align 1, !tbaa !81
  %i.eim = sext i8 %i.eil to i64
  %i.ein = getelementptr inbounds i8, ptr %i.eig, i64 %i.eim
  br label %.backedge.backedge

bb.te:                                            ; preds = %.backedge
  %i.eio = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 5 ; 2 uses
  %i.eip = load i8, ptr %i.eio, align 1, !tbaa !81
  %i.eiq = zext i8 %i.eip to i64
  %i.eir = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.eiq
  %i.eis = load i64, ptr %i.eir, align 8, !tbaa !69
  %i.eit = icmp ult i64 %i.eis, -1970324836974592
  br i1 %i.eit, label %bb.tf, label %.critedge2725, !prof !60

bb.tf:                                            ; preds = %bb.te
  %i.eiu = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 6
  %i.eiv = load i8, ptr %i.eiu, align 1, !tbaa !81
  %i.eiw = zext i8 %i.eiv to i64
  %i.eix = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.eiw
  %i.eiy = load i64, ptr %i.eix, align 8, !tbaa !69
  %i.eiz = icmp ult i64 %i.eiy, -1970324836974592
  br i1 %i.eiz, label %bb.tg, label %.critedge2725, !prof !60

bb.tg:                                            ; preds = %.backedge, %bb.tf
  %i.eja = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 5
  %i.ejb = load i8, ptr %i.eja, align 1, !tbaa !81
  %i.ejc = zext i8 %i.ejb to i64
  %i.ejd = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ejc
  %i.eje = load double, ptr %i.ejd, align 8, !tbaa !69
  %i.ejf = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 6
  %i.ejg = load i8, ptr %i.ejf, align 1, !tbaa !81
  %i.ejh = zext i8 %i.ejg to i64
  %i.eji = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ejh
  %i.ejj = load double, ptr %i.eji, align 8, !tbaa !69
  %i.ejk = fcmp ogt double %i.eje, %i.ejj
  br i1 %i.ejk, label %bb.th, label %bb.ti

bb.th:                                            ; preds = %bb.tg
  %i.ejl = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 7
  br label %.backedge.backedge

bb.ti:                                            ; preds = %bb.tg
  %i.ejm = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
  %i.ejn = load i32, ptr %i.ejm, align 1, !tbaa !81
  %i.ejo = sext i32 %i.ejn to i64
  %i.ejp = getelementptr inbounds i8, ptr %.sink4081.sink.in, i64 %i.ejo
  br label %.backedge.backedge

.critedge2725:                                    ; preds = %bb.te, %bb.tf
  store ptr %.sink4081.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.ejq = load i8, ptr %i.eio, align 1, !tbaa !81
  %i.ejr = zext i8 %i.ejq to i64
  %i.ejs = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ejr
  %i.ejt = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 6
  %i.eju = load i8, ptr %i.ejt, align 1, !tbaa !81
  %i.ejv = zext i8 %i.eju to i64
  %i.ejw = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ejv
  %i.ejx = call i32 @_ZN6hermes2vm13greaterOp_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.ejs, ptr %i.ejw) #10 ; 2 uses
  %i.ejy = load ptr, ptr %i.a, align 8, !tbaa !108 ; 4 uses
  %.mask3695 = and i32 %i.ejx, 255
  %i.ejz = icmp eq i32 %.mask3695, 0
  br i1 %i.ejz, label %.loopexitthread-pre-split.loopexit4201, label %bb.tj

bb.tj:                                            ; preds = %.critedge2725
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.eka = and i32 %i.ejx, 256
  %.not3696 = icmp eq i32 %i.eka, 0
  br i1 %.not3696, label %bb.tl, label %bb.tk

bb.tk:                                            ; preds = %bb.tj
  %i.ekb = getelementptr inbounds nuw i8, ptr %i.ejy, i64 7
  br label %.backedge.backedge

bb.tl:                                            ; preds = %bb.tj
  %i.ekc = getelementptr inbounds nuw i8, ptr %i.ejy, i64 1
  %i.ekd = load i32, ptr %i.ekc, align 1, !tbaa !81
  %i.eke = sext i32 %i.ekd to i64
  %i.ekf = getelementptr inbounds i8, ptr %i.ejy, i64 %i.eke
  br label %.backedge.backedge

bb.tm:                                            ; preds = %.backedge
  %i.ekg = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2 ; 2 uses
  %i.ekh = load i8, ptr %i.ekg, align 1, !tbaa !81
  %i.eki = zext i8 %i.ekh to i64
  %i.ekj = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.eki
  %i.ekk = load i64, ptr %i.ekj, align 8, !tbaa !69
  %i.ekl = icmp ult i64 %i.ekk, -1970324836974592
  br i1 %i.ekl, label %bb.tn, label %.critedge2727, !prof !60

bb.tn:                                            ; preds = %bb.tm
  %i.ekm = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3
  %i.ekn = load i8, ptr %i.ekm, align 1, !tbaa !81
  %i.eko = zext i8 %i.ekn to i64
  %i.ekp = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.eko
  %i.ekq = load i64, ptr %i.ekp, align 8, !tbaa !69
  %i.ekr = icmp ult i64 %i.ekq, -1970324836974592
  br i1 %i.ekr, label %bb.to, label %.critedge2727, !prof !60

bb.to:                                            ; preds = %.backedge, %bb.tn
  %i.eks = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2
  %i.ekt = load i8, ptr %i.eks, align 1, !tbaa !81
  %i.eku = zext i8 %i.ekt to i64
  %i.ekv = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.eku
  %i.ekw = load double, ptr %i.ekv, align 8, !tbaa !69
  %i.ekx = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3
  %i.eky = load i8, ptr %i.ekx, align 1, !tbaa !81
  %i.ekz = zext i8 %i.eky to i64
  %i.ela = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ekz
  %i.elb = load double, ptr %i.ela, align 8, !tbaa !69
  %i.elc = fcmp ult double %i.ekw, %i.elb
  br i1 %i.elc, label %bb.tq, label %bb.tp

bb.tp:                                            ; preds = %bb.to
  %i.eld = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
  %i.ele = load i8, ptr %i.eld, align 1, !tbaa !81
  %i.elf = sext i8 %i.ele to i64
  %i.elg = getelementptr inbounds i8, ptr %.sink4081.sink.in, i64 %i.elf
  br label %.backedge.backedge

bb.tq:                                            ; preds = %bb.to
  %i.elh = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 4
  br label %.backedge.backedge

.critedge2727:                                    ; preds = %bb.tm, %bb.tn
  store ptr %.sink4081.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.eli = load i8, ptr %i.ekg, align 1, !tbaa !81
  %i.elj = zext i8 %i.eli to i64
  %i.elk = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.elj
  %i.ell = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3
  %i.elm = load i8, ptr %i.ell, align 1, !tbaa !81
  %i.eln = zext i8 %i.elm to i64
  %i.elo = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.eln
  %i.elp = call i32 @_ZN6hermes2vm18greaterEqualOp_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.elk, ptr %i.elo) #10 ; 2 uses
  %i.elq = load ptr, ptr %i.a, align 8, !tbaa !108 ; 4 uses
  %.mask3693 = and i32 %i.elp, 255
  %i.elr = icmp eq i32 %.mask3693, 0
  br i1 %i.elr, label %.loopexitthread-pre-split.loopexit4201, label %bb.tr

bb.tr:                                            ; preds = %.critedge2727
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.els = and i32 %i.elp, 256
  %.not3694 = icmp eq i32 %i.els, 0
  br i1 %.not3694, label %bb.tt, label %bb.ts

bb.ts:                                            ; preds = %bb.tr
  %i.elt = getelementptr inbounds nuw i8, ptr %i.elq, i64 1
  %i.elu = load i8, ptr %i.elt, align 1, !tbaa !81
  %i.elv = sext i8 %i.elu to i64
  %i.elw = getelementptr inbounds i8, ptr %i.elq, i64 %i.elv
  br label %.backedge.backedge

bb.tt:                                            ; preds = %bb.tr
  %i.elx = getelementptr inbounds nuw i8, ptr %i.elq, i64 4
  br label %.backedge.backedge

bb.tu:                                            ; preds = %.backedge
  %i.ely = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 5 ; 2 uses
  %i.elz = load i8, ptr %i.ely, align 1, !tbaa !81
  %i.ema = zext i8 %i.elz to i64
  %i.emb = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ema
  %i.emc = load i64, ptr %i.emb, align 8, !tbaa !69
  %i.emd = icmp ult i64 %i.emc, -1970324836974592
  br i1 %i.emd, label %bb.tv, label %.critedge2729, !prof !60

bb.tv:                                            ; preds = %bb.tu
  %i.eme = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 6
  %i.emf = load i8, ptr %i.eme, align 1, !tbaa !81
  %i.emg = zext i8 %i.emf to i64
  %i.emh = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.emg
  %i.emi = load i64, ptr %i.emh, align 8, !tbaa !69
  %i.emj = icmp ult i64 %i.emi, -1970324836974592
  br i1 %i.emj, label %bb.tw, label %.critedge2729, !prof !60

bb.tw:                                            ; preds = %.backedge, %bb.tv
  %i.emk = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 5
  %i.eml = load i8, ptr %i.emk, align 1, !tbaa !81
  %i.emm = zext i8 %i.eml to i64
  %i.emn = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.emm
  %i.emo = load double, ptr %i.emn, align 8, !tbaa !69
  %i.emp = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 6
  %i.emq = load i8, ptr %i.emp, align 1, !tbaa !81
  %i.emr = zext i8 %i.emq to i64
  %i.ems = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.emr
  %i.emt = load double, ptr %i.ems, align 8, !tbaa !69
  %i.emu = fcmp ult double %i.emo, %i.emt
  br i1 %i.emu, label %bb.ty, label %bb.tx

bb.tx:                                            ; preds = %bb.tw
  %i.emv = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
  %i.emw = load i32, ptr %i.emv, align 1, !tbaa !81
  %i.emx = sext i32 %i.emw to i64
  %i.emy = getelementptr inbounds i8, ptr %.sink4081.sink.in, i64 %i.emx
  br label %.backedge.backedge

bb.ty:                                            ; preds = %bb.tw
  %i.emz = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 7
  br label %.backedge.backedge

.critedge2729:                                    ; preds = %bb.tu, %bb.tv
  store ptr %.sink4081.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.ena = load i8, ptr %i.ely, align 1, !tbaa !81
  %i.enb = zext i8 %i.ena to i64
  %i.enc = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.enb
  %i.end = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 6
  %i.ene = load i8, ptr %i.end, align 1, !tbaa !81
  %i.enf = zext i8 %i.ene to i64
  %i.eng = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.enf
  %i.enh = call i32 @_ZN6hermes2vm18greaterEqualOp_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.enc, ptr %i.eng) #10 ; 2 uses
  %i.eni = load ptr, ptr %i.a, align 8, !tbaa !108 ; 4 uses
  %.mask3691 = and i32 %i.enh, 255
  %i.enj = icmp eq i32 %.mask3691, 0
  br i1 %i.enj, label %.loopexitthread-pre-split.loopexit4201, label %bb.tz

bb.tz:                                            ; preds = %.critedge2729
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.enk = and i32 %i.enh, 256
  %.not3692 = icmp eq i32 %i.enk, 0
  br i1 %.not3692, label %bb.ub, label %bb.ua

bb.ua:                                            ; preds = %bb.tz
  %i.enl = getelementptr inbounds nuw i8, ptr %i.eni, i64 1
  %i.enm = load i32, ptr %i.enl, align 1, !tbaa !81
  %i.enn = sext i32 %i.enm to i64
  %i.eno = getelementptr inbounds i8, ptr %i.eni, i64 %i.enn
  br label %.backedge.backedge

bb.ub:                                            ; preds = %bb.tz
  %i.enp = getelementptr inbounds nuw i8, ptr %i.eni, i64 7
  br label %.backedge.backedge

bb.uc:                                            ; preds = %.backedge
  %i.enq = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2 ; 2 uses
  %i.enr = load i8, ptr %i.enq, align 1, !tbaa !81
  %i.ens = zext i8 %i.enr to i64
  %i.ent = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ens
  %i.enu = load i64, ptr %i.ent, align 8, !tbaa !69
  %i.env = icmp ult i64 %i.enu, -1970324836974592
  br i1 %i.env, label %bb.ud, label %.critedge2731, !prof !60

bb.ud:                                            ; preds = %bb.uc
  %i.enw = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3
  %i.enx = load i8, ptr %i.enw, align 1, !tbaa !81
  %i.eny = zext i8 %i.enx to i64
  %i.enz = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.eny
  %i.eoa = load i64, ptr %i.enz, align 8, !tbaa !69
  %i.eob = icmp ult i64 %i.eoa, -1970324836974592
  br i1 %i.eob, label %bb.ue, label %.critedge2731, !prof !60

bb.ue:                                            ; preds = %.backedge, %bb.ud
  %i.eoc = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2
  %i.eod = load i8, ptr %i.eoc, align 1, !tbaa !81
  %i.eoe = zext i8 %i.eod to i64
  %i.eof = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.eoe
  %i.eog = load double, ptr %i.eof, align 8, !tbaa !69
  %i.eoh = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3
  %i.eoi = load i8, ptr %i.eoh, align 1, !tbaa !81
  %i.eoj = zext i8 %i.eoi to i64
  %i.eok = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.eoj
  %i.eol = load double, ptr %i.eok, align 8, !tbaa !69
  %i.eom = fcmp ult double %i.eog, %i.eol
  br i1 %i.eom, label %bb.ug, label %bb.uf

bb.uf:                                            ; preds = %bb.ue
  %i.eon = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 4
  br label %.backedge.backedge

bb.ug:                                            ; preds = %bb.ue
  %i.eoo = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
  %i.eop = load i8, ptr %i.eoo, align 1, !tbaa !81
  %i.eoq = sext i8 %i.eop to i64
  %i.eor = getelementptr inbounds i8, ptr %.sink4081.sink.in, i64 %i.eoq
  br label %.backedge.backedge

.critedge2731:                                    ; preds = %bb.uc, %bb.ud
  store ptr %.sink4081.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.eos = load i8, ptr %i.enq, align 1, !tbaa !81
  %i.eot = zext i8 %i.eos to i64
  %i.eou = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.eot
  %i.eov = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3
  %i.eow = load i8, ptr %i.eov, align 1, !tbaa !81
  %i.eox = zext i8 %i.eow to i64
  %i.eoy = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.eox
  %i.eoz = call i32 @_ZN6hermes2vm18greaterEqualOp_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.eou, ptr %i.eoy) #10 ; 2 uses
  %i.epa = load ptr, ptr %i.a, align 8, !tbaa !108 ; 4 uses
  %.mask3689 = and i32 %i.eoz, 255
  %i.epb = icmp eq i32 %.mask3689, 0
  br i1 %i.epb, label %.loopexitthread-pre-split.loopexit4201, label %bb.uh

bb.uh:                                            ; preds = %.critedge2731
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.epc = and i32 %i.eoz, 256
  %.not3690 = icmp eq i32 %i.epc, 0
  br i1 %.not3690, label %bb.uj, label %bb.ui

bb.ui:                                            ; preds = %bb.uh
  %i.epd = getelementptr inbounds nuw i8, ptr %i.epa, i64 4
  br label %.backedge.backedge

bb.uj:                                            ; preds = %bb.uh
  %i.epe = getelementptr inbounds nuw i8, ptr %i.epa, i64 1
  %i.epf = load i8, ptr %i.epe, align 1, !tbaa !81
  %i.epg = sext i8 %i.epf to i64
  %i.eph = getelementptr inbounds i8, ptr %i.epa, i64 %i.epg
  br label %.backedge.backedge

bb.uk:                                            ; preds = %.backedge
  %i.epi = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 5 ; 2 uses
  %i.epj = load i8, ptr %i.epi, align 1, !tbaa !81
  %i.epk = zext i8 %i.epj to i64
  %i.epl = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.epk
  %i.epm = load i64, ptr %i.epl, align 8, !tbaa !69
  %i.epn = icmp ult i64 %i.epm, -1970324836974592
  br i1 %i.epn, label %bb.ul, label %.critedge2733, !prof !60

bb.ul:                                            ; preds = %bb.uk
  %i.epo = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 6
  %i.epp = load i8, ptr %i.epo, align 1, !tbaa !81
  %i.epq = zext i8 %i.epp to i64
  %i.epr = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.epq
  %i.eps = load i64, ptr %i.epr, align 8, !tbaa !69
  %i.ept = icmp ult i64 %i.eps, -1970324836974592
  br i1 %i.ept, label %bb.um, label %.critedge2733, !prof !60

bb.um:                                            ; preds = %.backedge, %bb.ul
  %i.epu = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 5
  %i.epv = load i8, ptr %i.epu, align 1, !tbaa !81
  %i.epw = zext i8 %i.epv to i64
  %i.epx = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.epw
  %i.epy = load double, ptr %i.epx, align 8, !tbaa !69
  %i.epz = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 6
  %i.eqa = load i8, ptr %i.epz, align 1, !tbaa !81
  %i.eqb = zext i8 %i.eqa to i64
  %i.eqc = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.eqb
  %i.eqd = load double, ptr %i.eqc, align 8, !tbaa !69
  %i.eqe = fcmp ult double %i.epy, %i.eqd
  br i1 %i.eqe, label %bb.uo, label %bb.un

bb.un:                                            ; preds = %bb.um
  %i.eqf = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 7
  br label %.backedge.backedge

bb.uo:                                            ; preds = %bb.um
  %i.eqg = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
  %i.eqh = load i32, ptr %i.eqg, align 1, !tbaa !81
  %i.eqi = sext i32 %i.eqh to i64
  %i.eqj = getelementptr inbounds i8, ptr %.sink4081.sink.in, i64 %i.eqi
  br label %.backedge.backedge

.critedge2733:                                    ; preds = %bb.uk, %bb.ul
  store ptr %.sink4081.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.eqk = load i8, ptr %i.epi, align 1, !tbaa !81
  %i.eql = zext i8 %i.eqk to i64
  %i.eqm = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.eql
  %i.eqn = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 6
  %i.eqo = load i8, ptr %i.eqn, align 1, !tbaa !81
  %i.eqp = zext i8 %i.eqo to i64
  %i.eqq = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.eqp
  %i.eqr = call i32 @_ZN6hermes2vm18greaterEqualOp_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.eqm, ptr %i.eqq) #10 ; 2 uses
  %i.eqs = load ptr, ptr %i.a, align 8, !tbaa !108 ; 4 uses
  %.mask3687 = and i32 %i.eqr, 255
  %i.eqt = icmp eq i32 %.mask3687, 0
  br i1 %i.eqt, label %.loopexitthread-pre-split.loopexit4201, label %bb.up

bb.up:                                            ; preds = %.critedge2733
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.equ = and i32 %i.eqr, 256
  %.not3688 = icmp eq i32 %i.equ, 0
  br i1 %.not3688, label %bb.ur, label %bb.uq

bb.uq:                                            ; preds = %bb.up
  %i.eqv = getelementptr inbounds nuw i8, ptr %i.eqs, i64 7
  br label %.backedge.backedge

bb.ur:                                            ; preds = %bb.up
  %i.eqw = getelementptr inbounds nuw i8, ptr %i.eqs, i64 1
  %i.eqx = load i32, ptr %i.eqw, align 1, !tbaa !81
  %i.eqy = sext i32 %i.eqx to i64
  %i.eqz = getelementptr inbounds i8, ptr %i.eqs, i64 %i.eqy
  br label %.backedge.backedge

bb.us:                                            ; preds = %.backedge
  %i.era = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2
  %i.erb = load i8, ptr %i.era, align 1, !tbaa !81
  %i.erc = zext i8 %i.erb to i64
  %i.erd = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.erc
  %.sroa.023.0.copyload = load i64, ptr %i.erd, align 8, !tbaa !61
  %i.ere = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3
  %i.erf = load i8, ptr %i.ere, align 1, !tbaa !81
  %i.erg = zext i8 %i.erf to i64
  %i.erh = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.erg
  %.sroa.022.0.copyload = load i64, ptr %i.erh, align 8, !tbaa !61
  %i.eri = call noundef zeroext i1 @_ZN6hermes2vm18strictEqualityTestENS0_11HermesValueES1_(i64 %.sroa.023.0.copyload, i64 %.sroa.022.0.copyload) #10
  br i1 %i.eri, label %bb.ut, label %bb.uu

bb.ut:                                            ; preds = %bb.us
  %i.erj = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
  %i.erk = load i8, ptr %i.erj, align 1, !tbaa !81
  %i.erl = sext i8 %i.erk to i64
  %i.erm = getelementptr inbounds i8, ptr %.sink4081.sink.in, i64 %i.erl
  br label %.backedge.backedge

bb.uu:                                            ; preds = %bb.us
  %i.ern = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 4
  br label %.backedge.backedge

bb.uv:                                            ; preds = %.backedge
  %i.ero = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 5
  %i.erp = load i8, ptr %i.ero, align 1, !tbaa !81
  %i.erq = zext i8 %i.erp to i64
  %i.err = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.erq
  %.sroa.021.0.copyload = load i64, ptr %i.err, align 8, !tbaa !61
  %i.ers = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 6
  %i.ert = load i8, ptr %i.ers, align 1, !tbaa !81
  %i.eru = zext i8 %i.ert to i64
  %i.erv = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.eru
  %.sroa.020.0.copyload = load i64, ptr %i.erv, align 8, !tbaa !61
  %i.erw = call noundef zeroext i1 @_ZN6hermes2vm18strictEqualityTestENS0_11HermesValueES1_(i64 %.sroa.021.0.copyload, i64 %.sroa.020.0.copyload) #10
  br i1 %i.erw, label %bb.uw, label %bb.ux

bb.uw:                                            ; preds = %bb.uv
  %i.erx = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
  %i.ery = load i32, ptr %i.erx, align 1, !tbaa !81
  %i.erz = sext i32 %i.ery to i64
  %i.esa = getelementptr inbounds i8, ptr %.sink4081.sink.in, i64 %i.erz
  br label %.backedge.backedge

bb.ux:                                            ; preds = %bb.uv
  %i.esb = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 7
  br label %.backedge.backedge

bb.uy:                                            ; preds = %.backedge
  %i.esc = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2
  %i.esd = load i8, ptr %i.esc, align 1, !tbaa !81
  %i.ese = zext i8 %i.esd to i64
  %i.esf = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ese
  %.sroa.019.0.copyload = load i64, ptr %i.esf, align 8, !tbaa !61
  %i.esg = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3
  %i.esh = load i8, ptr %i.esg, align 1, !tbaa !81
  %i.esi = zext i8 %i.esh to i64
  %i.esj = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.esi
  %.sroa.018.0.copyload = load i64, ptr %i.esj, align 8, !tbaa !61
  %i.esk = call noundef zeroext i1 @_ZN6hermes2vm18strictEqualityTestENS0_11HermesValueES1_(i64 %.sroa.019.0.copyload, i64 %.sroa.018.0.copyload) #10
  br i1 %i.esk, label %bb.uz, label %bb.va

bb.uz:                                            ; preds = %bb.uy
  %i.esl = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 4
  br label %.backedge.backedge

bb.va:                                            ; preds = %bb.uy
  %i.esm = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
  %i.esn = load i8, ptr %i.esm, align 1, !tbaa !81
  %i.eso = sext i8 %i.esn to i64
  %i.esp = getelementptr inbounds i8, ptr %.sink4081.sink.in, i64 %i.eso
  br label %.backedge.backedge

bb.vb:                                            ; preds = %.backedge
  %i.esq = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 5
  %i.esr = load i8, ptr %i.esq, align 1, !tbaa !81
  %i.ess = zext i8 %i.esr to i64
  %i.est = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ess
  %.sroa.017.0.copyload = load i64, ptr %i.est, align 8, !tbaa !61
  %i.esu = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 6
  %i.esv = load i8, ptr %i.esu, align 1, !tbaa !81
  %i.esw = zext i8 %i.esv to i64
  %i.esx = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.esw
  %.sroa.016.0.copyload = load i64, ptr %i.esx, align 8, !tbaa !61
  %i.esy = call noundef zeroext i1 @_ZN6hermes2vm18strictEqualityTestENS0_11HermesValueES1_(i64 %.sroa.017.0.copyload, i64 %.sroa.016.0.copyload) #10
  br i1 %i.esy, label %bb.vc, label %bb.vd

bb.vc:                                            ; preds = %bb.vb
  %i.esz = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 7
  br label %.backedge.backedge

bb.vd:                                            ; preds = %bb.vb
  %i.eta = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 1
  %i.etb = load i32, ptr %i.eta, align 1, !tbaa !81
  %i.etc = sext i32 %i.etb to i64
  %i.etd = getelementptr inbounds i8, ptr %.sink4081.sink.in, i64 %i.etc
  br label %.backedge.backedge

bb.ve:                                            ; preds = %.backedge
  store ptr %.sink4081.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.ete = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 2
  %i.etf = load i8, ptr %i.ete, align 1, !tbaa !81
  %i.etg = zext i8 %i.etf to i64
  %i.eth = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.etg
  %i.eti = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 3
  %i.etj = load i8, ptr %i.eti, align 1, !tbaa !81
  %i.etk = zext i8 %i.etj to i64
  %i.etl = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.etk
  %i.etm = call i32 @_ZN6hermes2vm24abstractEqualityTest_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.eth, ptr %i.etl) #10 ; 2 uses
  %i.etn = load ptr, ptr %i.a, align 8, !tbaa !108 ; 4 uses
  %.mask3685 = and i32 %i.etm, 255
  %i.eto = icmp eq i32 %.mask3685, 0
  br i1 %i.eto, label %.loopexitthread-pre-split.loopexit4201, label %bb.vf

bb.vf:                                            ; preds = %bb.ve
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.etp = and i32 %i.etm, 256
  %.not3686 = icmp eq i32 %i.etp, 0
  br i1 %.not3686, label %bb.vh, label %bb.vg

bb.vg:                                            ; preds = %bb.vf
  %i.etq = getelementptr inbounds nuw i8, ptr %i.etn, i64 1
  %i.etr = load i8, ptr %i.etq, align 1, !tbaa !81
  %i.ets = sext i8 %i.etr to i64
  %i.ett = getelementptr inbounds i8, ptr %i.etn, i64 %i.ets
  br label %.backedge.backedge

bb.vh:                                            ; preds = %bb.vf
  %i.etu = getelementptr inbounds nuw i8, ptr %i.etn, i64 4
  br label %.backedge.backedge

bb.vi:                                            ; preds = %.backedge
  store ptr %.sink4081.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.etv = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 5
  %i.etw = load i8, ptr %i.etv, align 1, !tbaa !81
  %i.etx = zext i8 %i.etw to i64
  %i.ety = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.etx
  %i.etz = getelementptr inbounds nuw i8, ptr %.sink4081.sink.in, i64 6
end_hunk_2
