Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PPCAsmPrinter?download=true
inline.NumInlined: 4176
inline.NumDeleted: 1764
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN12_GLOBAL__N_116PPCAIXAsmPrinter18emitTracebackTableEv:bb.a
  %i.yo = ptrtoint ptr %i.yn to i64
  %i.yp = ptrtoint ptr %i.yl to i64
  %i.yq = sub i64 %i.yo, %i.yp
  %i.yr = icmp ult i64 %i.yq, 3
  br i1 %i.yr, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit347
  %i.ys = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i346, ptr noundef nonnull @.str.83, i64 noundef 3) #21
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit350

bb.ej:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit347
  %i.yt = getelementptr inbounds nuw i8, ptr %.0.i.i346, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.yl, ptr noundef nonnull align 1 dereferenceable(3) @.str.83, i64 3, i1 false)
  %i.yu = load ptr, ptr %i.yt, align 8, !tbaa !814
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yu, i64 3
  store ptr %i.yv, ptr %i.yt, align 8, !tbaa !814
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit350

_ZN4llvm11raw_ostreamlsEPKc.exit350:              ; preds = %bb.ei, %bb.ej
  %.0.i.i349 = phi ptr [ %i.ys, %bb.ei ], [ %.0.i.i346, %bb.ej ]
  %i.yw = lshr exact i32 %.0165, 24
  %i.yx = zext nneg i32 %i.yw to i64
  %i.yy = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i349, i64 noundef %i.yx) #21 ; 0 uses
  %i.yz = load ptr, ptr %i.j, align 8, !tbaa !55  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  %i.za = load ptr, ptr %i.af, align 8, !tbaa !1307, !nonnull !27, !align !187 ; 2 uses
  %i.zb = load ptr, ptr %i.za, align 8, !tbaa !269
  %i.zc = getelementptr inbounds nuw i8, ptr %i.za, i64 8
  %i.zd = load i64, ptr %i.zc, align 8, !tbaa !270
  %i.ze = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i8 5, ptr %i.ze, align 8, !tbaa !283
  %i.zf = getelementptr inbounds nuw i8, ptr %15, i64 33
  store i8 1, ptr %i.zf, align 1, !tbaa !284
  store ptr %i.zb, ptr %15, align 8, !tbaa !60
  %i.zg = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.zd, ptr %i.zg, align 8, !tbaa !60
  %i.zh = load ptr, ptr %i.yz, align 8, !tbaa !20
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zh, i64 120
  %i.zj = load ptr, ptr %i.zi, align 8
  call void %i.zj(ptr noundef nonnull align 8 dereferenceable(304) %i.yz, ptr noundef nonnull align 8 dereferenceable(34) %15, i1 noundef zeroext true) #21, !inline_history !1294
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  store i64 0, ptr %i.z, align 8, !tbaa !270
  %i.zk = load ptr, ptr %i.j, align 8, !tbaa !55  ; 2 uses
  %i.zl = lshr exact i32 %i.wg, 24
  %i.zm = zext nneg i32 %i.zl to i64
  %i.zn = load ptr, ptr %i.zk, align 8, !tbaa !20
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zn, i64 552
  %i.zp = load ptr, ptr %i.zo, align 8
  call void %i.zp(ptr noundef nonnull align 8 dereferenceable(304) %i.zk, i64 noundef %i.zm, i32 noundef 1) #21
  %i.zq = call noundef zeroext i1 @_ZNK4llvm19MachineRegisterInfo13isPhysRegUsedENS_10MCRegisterEb(ptr noundef nonnull align 8 dereferenceable(520) %i.cx, i32 323, i1 noundef zeroext true) #21
  br i1 %i.zq, label %.lr.ph.preheader, label %bb.ek

bb.ek:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit350
  %i.zr = call noundef zeroext i1 @_ZNK4llvm19MachineRegisterInfo13isPhysRegUsedENS_10MCRegisterEb(ptr noundef nonnull align 8 dereferenceable(520) %i.cx, i32 324, i1 noundef zeroext true) #21
  br i1 %i.zr, label %.lr.ph.preheader, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.zs = call noundef zeroext i1 @_ZNK4llvm19MachineRegisterInfo13isPhysRegUsedENS_10MCRegisterEb(ptr noundef nonnull align 8 dereferenceable(520) %i.cx, i32 325, i1 noundef zeroext true) #21
  br i1 %i.zs, label %.lr.ph.preheader, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.zt = call noundef zeroext i1 @_ZNK4llvm19MachineRegisterInfo13isPhysRegUsedENS_10MCRegisterEb(ptr noundef nonnull align 8 dereferenceable(520) %i.cx, i32 326, i1 noundef zeroext true) #21
  br i1 %i.zt, label %.lr.ph.preheader, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.zu = call noundef zeroext i1 @_ZNK4llvm19MachineRegisterInfo13isPhysRegUsedENS_10MCRegisterEb(ptr noundef nonnull align 8 dereferenceable(520) %i.cx, i32 327, i1 noundef zeroext true) #21
  br i1 %i.zu, label %.lr.ph.preheader, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.zv = call noundef zeroext i1 @_ZNK4llvm19MachineRegisterInfo13isPhysRegUsedENS_10MCRegisterEb(ptr noundef nonnull align 8 dereferenceable(520) %i.cx, i32 328, i1 noundef zeroext true) #21
  br i1 %i.zv, label %.lr.ph.preheader, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.zw = call noundef zeroext i1 @_ZNK4llvm19MachineRegisterInfo13isPhysRegUsedENS_10MCRegisterEb(ptr noundef nonnull align 8 dereferenceable(520) %i.cx, i32 329, i1 noundef zeroext true) #21
  br i1 %i.zw, label %.lr.ph.preheader, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.zx = call noundef zeroext i1 @_ZNK4llvm19MachineRegisterInfo13isPhysRegUsedENS_10MCRegisterEb(ptr noundef nonnull align 8 dereferenceable(520) %i.cx, i32 330, i1 noundef zeroext true) #21
  br i1 %i.zx, label %.lr.ph.preheader, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.zy = call noundef zeroext i1 @_ZNK4llvm19MachineRegisterInfo13isPhysRegUsedENS_10MCRegisterEb(ptr noundef nonnull align 8 dereferenceable(520) %i.cx, i32 331, i1 noundef zeroext true) #21
  br i1 %i.zy, label %.lr.ph.preheader, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.zz = call noundef zeroext i1 @_ZNK4llvm19MachineRegisterInfo13isPhysRegUsedENS_10MCRegisterEb(ptr noundef nonnull align 8 dereferenceable(520) %i.cx, i32 332, i1 noundef zeroext true) #21
  br i1 %i.zz, label %.lr.ph.preheader, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.aaa = call noundef zeroext i1 @_ZNK4llvm19MachineRegisterInfo13isPhysRegUsedENS_10MCRegisterEb(ptr noundef nonnull align 8 dereferenceable(520) %i.cx, i32 333, i1 noundef zeroext true) #21
  br i1 %i.aaa, label %.lr.ph.preheader, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.aab = call noundef zeroext i1 @_ZNK4llvm19MachineRegisterInfo13isPhysRegUsedENS_10MCRegisterEb(ptr noundef nonnull align 8 dereferenceable(520) %i.cx, i32 334, i1 noundef zeroext true) #21
  br i1 %i.aab, label %.lr.ph.preheader, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.aac = call noundef zeroext i1 @_ZNK4llvm19MachineRegisterInfo13isPhysRegUsedENS_10MCRegisterEb(ptr noundef nonnull align 8 dereferenceable(520) %i.cx, i32 335, i1 noundef zeroext true) #21
  br i1 %i.aac, label %.lr.ph.preheader, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.aad = call noundef zeroext i1 @_ZNK4llvm19MachineRegisterInfo13isPhysRegUsedENS_10MCRegisterEb(ptr noundef nonnull align 8 dereferenceable(520) %i.cx, i32 336, i1 noundef zeroext true) #21
  br i1 %i.aad, label %.lr.ph.preheader, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.aae = call noundef zeroext i1 @_ZNK4llvm19MachineRegisterInfo13isPhysRegUsedENS_10MCRegisterEb(ptr noundef nonnull align 8 dereferenceable(520) %i.cx, i32 337, i1 noundef zeroext true) #21
  br i1 %i.aae, label %.lr.ph.preheader, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.aaf = call noundef zeroext i1 @_ZNK4llvm19MachineRegisterInfo13isPhysRegUsedENS_10MCRegisterEb(ptr noundef nonnull align 8 dereferenceable(520) %i.cx, i32 338, i1 noundef zeroext true) #21
  br i1 %i.aaf, label %.lr.ph.preheader, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.aag = call noundef zeroext i1 @_ZNK4llvm19MachineRegisterInfo13isPhysRegUsedENS_10MCRegisterEb(ptr noundef nonnull align 8 dereferenceable(520) %i.cx, i32 339, i1 noundef zeroext true) #21
  br i1 %i.aag, label %.lr.ph.preheader, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.aah = call noundef zeroext i1 @_ZNK4llvm19MachineRegisterInfo13isPhysRegUsedENS_10MCRegisterEb(ptr noundef nonnull align 8 dereferenceable(520) %i.cx, i32 340, i1 noundef zeroext true) #21
  br i1 %i.aah, label %.lr.ph.preheader, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.aai = call noundef zeroext i1 @_ZNK4llvm19MachineRegisterInfo13isPhysRegUsedENS_10MCRegisterEb(ptr noundef nonnull align 8 dereferenceable(520) %i.cx, i32 341, i1 noundef zeroext true) #21
  br i1 %i.aai, label %.lr.ph.preheader, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.aaj = call noundef zeroext i1 @_ZNK4llvm19MachineRegisterInfo13isPhysRegUsedENS_10MCRegisterEb(ptr noundef nonnull align 8 dereferenceable(520) %i.cx, i32 342, i1 noundef zeroext true) #21
  br i1 %i.aaj, label %.lr.ph.preheader, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.aak = call noundef zeroext i1 @_ZNK4llvm19MachineRegisterInfo13isPhysRegUsedENS_10MCRegisterEb(ptr noundef nonnull align 8 dereferenceable(520) %i.cx, i32 343, i1 noundef zeroext true) #21
  br i1 %i.aak, label %.lr.ph.preheader, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.aal = call noundef zeroext i1 @_ZNK4llvm19MachineRegisterInfo13isPhysRegUsedENS_10MCRegisterEb(ptr noundef nonnull align 8 dereferenceable(520) %i.cx, i32 344, i1 noundef zeroext true) #21
  br i1 %i.aal, label %.lr.ph.preheader, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.aam = call noundef zeroext i1 @_ZNK4llvm19MachineRegisterInfo13isPhysRegUsedENS_10MCRegisterEb(ptr noundef nonnull align 8 dereferenceable(520) %i.cx, i32 345, i1 noundef zeroext true) #21
  br i1 %i.aam, label %.lr.ph.preheader, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.aan = call noundef zeroext i1 @_ZNK4llvm19MachineRegisterInfo13isPhysRegUsedENS_10MCRegisterEb(ptr noundef nonnull align 8 dereferenceable(520) %i.cx, i32 346, i1 noundef zeroext true) #21
  br i1 %i.aan, label %.lr.ph.preheader, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.aao = call noundef zeroext i1 @_ZNK4llvm19MachineRegisterInfo13isPhysRegUsedENS_10MCRegisterEb(ptr noundef nonnull align 8 dereferenceable(520) %i.cx, i32 347, i1 noundef zeroext true) #21
  br i1 %i.aao, label %.lr.ph.preheader, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.aap = call noundef zeroext i1 @_ZNK4llvm19MachineRegisterInfo13isPhysRegUsedENS_10MCRegisterEb(ptr noundef nonnull align 8 dereferenceable(520) %i.cx, i32 348, i1 noundef zeroext true) #21
  br i1 %i.aap, label %.lr.ph.preheader, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.aaq = call noundef zeroext i1 @_ZNK4llvm19MachineRegisterInfo13isPhysRegUsedENS_10MCRegisterEb(ptr noundef nonnull align 8 dereferenceable(520) %i.cx, i32 349, i1 noundef zeroext true) #21
  br i1 %i.aaq, label %.lr.ph.preheader, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.aar = call noundef zeroext i1 @_ZNK4llvm19MachineRegisterInfo13isPhysRegUsedENS_10MCRegisterEb(ptr noundef nonnull align 8 dereferenceable(520) %i.cx, i32 350, i1 noundef zeroext true) #21
  br i1 %i.aar, label %.lr.ph.preheader, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.aas = call noundef zeroext i1 @_ZNK4llvm19MachineRegisterInfo13isPhysRegUsedENS_10MCRegisterEb(ptr noundef nonnull align 8 dereferenceable(520) %i.cx, i32 351, i1 noundef zeroext true) #21
  br i1 %i.aas, label %.lr.ph.preheader, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.aat = call noundef zeroext i1 @_ZNK4llvm19MachineRegisterInfo13isPhysRegUsedENS_10MCRegisterEb(ptr noundef nonnull align 8 dereferenceable(520) %i.cx, i32 352, i1 noundef zeroext true) #21
  br i1 %i.aat, label %.lr.ph.preheader, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.aau = call noundef zeroext i1 @_ZNK4llvm19MachineRegisterInfo13isPhysRegUsedENS_10MCRegisterEb(ptr noundef nonnull align 8 dereferenceable(520) %i.cx, i32 353, i1 noundef zeroext true) #21
  br i1 %i.aau, label %.lr.ph.preheader, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.aav = call noundef zeroext i1 @_ZNK4llvm19MachineRegisterInfo13isPhysRegUsedENS_10MCRegisterEb(ptr noundef nonnull align 8 dereferenceable(520) %i.cx, i32 354, i1 noundef zeroext true) #21
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.fo, %_ZN4llvm11raw_ostreamlsEPKc.exit350, %bb.ek, %bb.el, %bb.em, %bb.en, %bb.eo, %bb.ep, %bb.eq, %bb.er, %bb.es, %bb.et, %bb.eu, %bb.ev, %bb.ew, %bb.ex, %bb.ey, %bb.ez, %bb.fa, %bb.fb, %bb.fc, %bb.fd, %bb.fe, %bb.ff, %bb.fg, %bb.fh, %bb.fi, %bb.fj, %bb.fk, %bb.fl, %bb.fm, %bb.fn
  %.lcssa = phi i1 [ true, %_ZN4llvm11raw_ostreamlsEPKc.exit350 ], [ true, %bb.ez ], [ true, %bb.ek ], [ %i.aav, %bb.fo ], [ true, %bb.el ], [ true, %bb.fd ], [ true, %bb.em ], [ true, %bb.fn ], [ true, %bb.en ], [ true, %bb.fa ], [ true, %bb.eo ], [ true, %bb.fm ], [ true, %bb.ep ], [ true, %bb.fg ], [ true, %bb.eq ], [ true, %bb.fl ], [ true, %bb.er ], [ true, %bb.fb ], [ true, %bb.es ], [ true, %bb.fk ], [ true, %bb.et ], [ true, %bb.fe ], [ true, %bb.eu ], [ true, %bb.fj ], [ true, %bb.ev ], [ true, %bb.fc ], [ true, %bb.ew ], [ true, %bb.fi ], [ true, %bb.ex ], [ true, %bb.ff ], [ true, %bb.ey ], [ true, %bb.fh ] ; 2 uses
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.cv, i64 76 ; 3 uses
  %i.aax = load i32, ptr %i.aaw, align 4, !tbaa !1310
  %i.aay = icmp ne i32 %i.aax, 0
  %or.cond = or i1 %.lcssa, %i.aay
  %i.aaz = or disjoint i32 %i.wg, 4194304
  %spec.select186 = select i1 %or.cond, i32 %i.aaz, i32 %i.wg ; 2 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.val198 = load ptr, ptr %i.aba, align 8
  %.val199 = load ptr, ptr %i.a, align 8, !tbaa !625
  %i.abb = call fastcc noundef zeroext i16 @_ZN12_GLOBAL__N_116PPCAIXAsmPrinter18getNumberOfVRSavedEv(ptr %.val198, ptr %.val199) ; 3 uses
  %i.abc = load ptr, ptr %i.a, align 8, !tbaa !625
  %i.abd = call noundef zeroext i1 @_ZN4llvm29TargetLoweringObjectFileXCOFF17ShouldEmitEHBlockEPKNS_15MachineFunctionE(ptr noundef %i.abc) #21
  %i.abe = icmp ne i16 %i.abb, 0
  %i.abf = or i1 %i.abe, %i.abd                   ; 2 uses
  %i.abg = or disjoint i32 %spec.select186, 8388608
  %.1159 = select i1 %i.abf, i32 %i.abg, i32 %spec.select186 ; 2 uses
  %i.abh = load ptr, ptr %i.nd, align 8, !tbaa !403
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abh, i64 538
  %i.abj = load i8, ptr %i.abi, align 2, !tbaa !538, !range !26, !noundef !27
  %i.abk = trunc nuw i8 %i.abj to i1              ; 2 uses
  %i.abl = select i1 %i.abk, i32 562, i32 282     ; 2 uses
  %i.abm = select i1 %i.abk, i32 545, i32 264     ; 2 uses
  %umax = call i32 @llvm.umax.i32(i32 %i.abm, i32 %i.abl)
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.fq
  %.0160535 = phi i32 [ %i.abt, %bb.fq ], [ %i.abm, %.lr.ph.preheader ] ; 4 uses
  %i.abn = call noundef zeroext i1 @_ZNK4llvm19MachineRegisterInfo17isPhysRegModifiedENS_10MCRegisterEb(ptr noundef nonnull align 8 dereferenceable(520) %i.cx, i32 %.0160535, i1 noundef zeroext false) #21
  br i1 %i.abn, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %.lr.ph
  %i.abo = sub nuw nsw i32 %i.abl, %.0160535
  %i.abp = shl nuw nsw i32 %i.abo, 16
  %i.abq = add nuw nsw i32 %i.abp, 65536
  %i.abr = and i32 %i.abq, 4128768
  %i.abs = or i32 %i.abr, %.1159
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit353

bb.fq:                                            ; preds = %.lr.ph
  %i.abt = add nuw nsw i32 %.0160535, 1
  %exitcond.not = icmp eq i32 %.0160535, %umax
  br i1 %exitcond.not, label %_ZN4llvm11raw_ostreamlsEPKc.exit353, label %.lr.ph, !llvm.loop !1295

_ZN4llvm11raw_ostreamlsEPKc.exit353:              ; preds = %bb.fq, %bb.fp
  %.0161 = phi i32 [ %i.abs, %bb.fp ], [ %.1159, %bb.fq ] ; 4 uses
  %i.abu = and i32 %.0161, 8388608
  %.not174 = icmp eq i32 %i.abu, 0                ; 2 uses
  %i.abv = select i1 %.not174, ptr @.str.69, ptr @.str.68 ; 2 uses
  %i.abw = load ptr, ptr %i.ag, align 8, !tbaa !813
  %i.abx = load ptr, ptr %i.ai, align 8, !tbaa !814 ; 2 uses
  %i.aby = icmp eq ptr %i.abw, %i.abx
  br i1 %i.aby, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit353
  %i.abz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %28, ptr noundef nonnull %i.abv, i64 noundef 1) #21 ; 2 uses
  %.phi.trans.insert586 = getelementptr inbounds nuw i8, ptr %i.abz, i64 32
  %.pre587 = load ptr, ptr %.phi.trans.insert586, align 8, !tbaa !814
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit356

bb.fs:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit353
  %i.aca = load i8, ptr %i.abv, align 1
  store i8 %i.aca, ptr %i.abx, align 1
  %i.acb = load ptr, ptr %i.ai, align 8, !tbaa !814
  %i.acc = getelementptr inbounds nuw i8, ptr %i.acb, i64 1 ; 2 uses
  store ptr %i.acc, ptr %i.ai, align 8, !tbaa !814
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit356

_ZN4llvm11raw_ostreamlsEPKc.exit356:              ; preds = %bb.fr, %bb.fs
  %i.acd = phi ptr [ %.pre587, %bb.fr ], [ %i.acc, %bb.fs ] ; 2 uses
  %.0.i.i355 = phi ptr [ %i.abz, %bb.fr ], [ %28, %bb.fs ] ; 3 uses
  %i.ace = getelementptr inbounds nuw i8, ptr %.0.i.i355, i64 24
  %i.acf = load ptr, ptr %i.ace, align 8, !tbaa !813
  %i.acg = ptrtoint ptr %i.acf to i64
  %i.ach = ptrtoint ptr %i.acd to i64
  %i.aci = sub i64 %i.acg, %i.ach
  %i.acj = icmp ult i64 %i.aci, 17
  br i1 %i.acj, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit356
  %i.ack = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i355, ptr noundef nonnull @.str.89, i64 noundef 17) #21 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit359

bb.fu:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit356
  %i.acl = getelementptr inbounds nuw i8, ptr %.0.i.i355, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.acd, ptr noundef nonnull align 1 dereferenceable(17) @.str.89, i64 17, i1 false)
  %i.acm = load ptr, ptr %i.acl, align 8, !tbaa !814
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acm, i64 17
  store ptr %i.acn, ptr %i.acl, align 8, !tbaa !814
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit359

_ZN4llvm11raw_ostreamlsEPKc.exit359:              ; preds = %bb.ft, %bb.fu
  %i.aco = load ptr, ptr %i.ag, align 8, !tbaa !813
  %i.acp = load ptr, ptr %i.ai, align 8, !tbaa !814 ; 2 uses
  %i.acq = ptrtoint ptr %i.aco to i64
  %i.acr = ptrtoint ptr %i.acp to i64
  %i.acs = sub i64 %i.acq, %i.acr
  %i.act = icmp ult i64 %i.acs, 2
  br i1 %i.act, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit359
  %i.acu = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %28, ptr noundef nonnull @.str.71, i64 noundef 2) #21 ; 2 uses
  %.phi.trans.insert588 = getelementptr inbounds nuw i8, ptr %i.acu, i64 32
  %.pre589 = load ptr, ptr %.phi.trans.insert588, align 8, !tbaa !814
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit362

bb.fw:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit359
  store i16 8236, ptr %i.acp, align 1
  %i.acv = load ptr, ptr %i.ai, align 8, !tbaa !814
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acv, i64 2 ; 2 uses
  store ptr %i.acw, ptr %i.ai, align 8, !tbaa !814
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit362

_ZN4llvm11raw_ostreamlsEPKc.exit362:              ; preds = %bb.fv, %bb.fw
  %i.acx = phi ptr [ %.pre589, %bb.fv ], [ %i.acw, %bb.fw ] ; 2 uses
  %.0.i.i361 = phi ptr [ %i.acu, %bb.fv ], [ %28, %bb.fw ] ; 4 uses
  %i.acy = and i32 %.0161, 4194304
  %.not175 = icmp eq i32 %i.acy, 0                ; 2 uses
  %i.acz = select i1 %.not175, ptr @.str.69, ptr @.str.68 ; 2 uses
  %i.ada = getelementptr inbounds nuw i8, ptr %.0.i.i361, i64 24
  %i.adb = load ptr, ptr %i.ada, align 8, !tbaa !813
  %i.adc = icmp eq ptr %i.adb, %i.acx
  br i1 %i.adc, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit362
  %i.add = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i361, ptr noundef nonnull %i.acz, i64 noundef 1) #21 ; 2 uses
  %.phi.trans.insert590 = getelementptr inbounds nuw i8, ptr %i.add, i64 32
  %.pre591 = load ptr, ptr %.phi.trans.insert590, align 8, !tbaa !814
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit365

bb.fy:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit362
  %i.ade = getelementptr inbounds nuw i8, ptr %.0.i.i361, i64 32 ; 2 uses
  %i.adf = load i8, ptr %i.acz, align 1
  store i8 %i.adf, ptr %i.acx, align 1
  %i.adg = load ptr, ptr %i.ade, align 8, !tbaa !814
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adg, i64 1 ; 2 uses
  store ptr %i.adh, ptr %i.ade, align 8, !tbaa !814
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit365

_ZN4llvm11raw_ostreamlsEPKc.exit365:              ; preds = %bb.fx, %bb.fy
  %i.adi = phi ptr [ %.pre591, %bb.fx ], [ %i.adh, %bb.fy ] ; 2 uses
  %.0.i.i364 = phi ptr [ %i.add, %bb.fx ], [ %.0.i.i361, %bb.fy ] ; 3 uses
  %i.adj = getelementptr inbounds nuw i8, ptr %.0.i.i364, i64 24
  %i.adk = load ptr, ptr %i.adj, align 8, !tbaa !813
  %i.adl = ptrtoint ptr %i.adk to i64
  %i.adm = ptrtoint ptr %i.adi to i64
  %i.adn = sub i64 %i.adl, %i.adm
  %i.ado = icmp ult i64 %i.adn, 13
  br i1 %i.ado, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit365
  %i.adp = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i364, ptr noundef nonnull @.str.90, i64 noundef 13) #21 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit368

bb.ga:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit365
  %i.adq = getelementptr inbounds nuw i8, ptr %.0.i.i364, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.adi, ptr noundef nonnull align 1 dereferenceable(13) @.str.90, i64 13, i1 false)
  %i.adr = load ptr, ptr %i.adq, align 8, !tbaa !814
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adr, i64 13
  store ptr %i.ads, ptr %i.adq, align 8, !tbaa !814
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit368

_ZN4llvm11raw_ostreamlsEPKc.exit368:              ; preds = %bb.fz, %bb.ga
  %i.adt = load ptr, ptr %i.ag, align 8, !tbaa !813
  %i.adu = load ptr, ptr %i.ai, align 8, !tbaa !814 ; 2 uses
  %i.adv = ptrtoint ptr %i.adt to i64
  %i.adw = ptrtoint ptr %i.adu to i64
  %i.adx = sub i64 %i.adv, %i.adw
  %i.ady = icmp ult i64 %i.adx, 16
  br i1 %i.ady, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit368
  %i.adz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %28, ptr noundef nonnull @.str.91, i64 noundef 16) #21 ; 2 uses
  %.phi.trans.insert592 = getelementptr inbounds nuw i8, ptr %i.adz, i64 32
  %.pre593 = load ptr, ptr %.phi.trans.insert592, align 8, !tbaa !814
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit371

bb.gc:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.adu, ptr noundef nonnull align 1 dereferenceable(16) @.str.91, i64 16, i1 false)
  %i.aea = load ptr, ptr %i.ai, align 8, !tbaa !814
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.aea, i64 16 ; 2 uses
  store ptr %i.aeb, ptr %i.ai, align 8, !tbaa !814
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit371

_ZN4llvm11raw_ostreamlsEPKc.exit371:              ; preds = %bb.gb, %bb.gc
  %i.aec = phi ptr [ %.pre593, %bb.gb ], [ %i.aeb, %bb.gc ] ; 2 uses
  %.0.i.i370 = phi ptr [ %i.adz, %bb.gb ], [ %28, %bb.gc ] ; 4 uses
  %i.aed = getelementptr inbounds nuw i8, ptr %.0.i.i370, i64 24
  %i.aee = load ptr, ptr %i.aed, align 8, !tbaa !813
  %i.aef = ptrtoint ptr %i.aee to i64
  %i.aeg = ptrtoint ptr %i.aec to i64
  %i.aeh = sub i64 %i.aef, %i.aeg
  %i.aei = icmp ult i64 %i.aeh, 3
  br i1 %i.aei, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit371
  %i.aej = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i370, ptr noundef nonnull @.str.83, i64 noundef 3) #21
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit374

bb.ge:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit371
  %i.aek = getelementptr inbounds nuw i8, ptr %.0.i.i370, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.aec, ptr noundef nonnull align 1 dereferenceable(3) @.str.83, i64 3, i1 false)
  %i.ael = load ptr, ptr %i.aek, align 8, !tbaa !814
  %i.aem = getelementptr inbounds nuw i8, ptr %i.ael, i64 3
  store ptr %i.aem, ptr %i.aek, align 8, !tbaa !814
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit374

_ZN4llvm11raw_ostreamlsEPKc.exit374:              ; preds = %bb.gd, %bb.ge
  %.0.i.i373 = phi ptr [ %i.aej, %bb.gd ], [ %.0.i.i370, %bb.ge ]
  %i.aen = lshr i32 %.0161, 16                    ; 2 uses
  %i.aeo = and i32 %i.aen, 63
  %i.aep = zext nneg i32 %i.aeo to i64
  %i.aeq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i373, i64 noundef %i.aep) #21 ; 0 uses
  %i.aer = load ptr, ptr %i.j, align 8, !tbaa !55 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  %i.aes = load ptr, ptr %i.af, align 8, !tbaa !1307, !nonnull !27, !align !187 ; 2 uses
  %i.aet = load ptr, ptr %i.aes, align 8, !tbaa !269
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aes, i64 8
  %i.aev = load i64, ptr %i.aeu, align 8, !tbaa !270
  %i.aew = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i8 5, ptr %i.aew, align 8, !tbaa !283
  %i.aex = getelementptr inbounds nuw i8, ptr %14, i64 33
  store i8 1, ptr %i.aex, align 1, !tbaa !284
  store ptr %i.aet, ptr %14, align 8, !tbaa !60
end_hunk_0
