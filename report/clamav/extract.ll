Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/extract?download=true
inline.NumInlined: 198
inline.NumDeleted: 103
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN10CmdExtract18ExtractCurrentFileER7ArchivemRb:bb.a
  store i32 24, ptr %i.kk, align 8, !tbaa !133
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  invoke void @_ZN12ErrorHandler12SetErrorCodeE8RAR_EXIT(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler, i32 noundef 11)
          to label %bb.cm unwind label %bb.cg

bb.cm:                                            ; preds = %bb.cl, %bb.cc, %bb.cb, %bb.ca
  %.2298 = phi i8 [ %.1297, %bb.cb ], [ %.1297, %bb.ca ], [ %.1297, %bb.cc ], [ 0, %bb.cl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @_ZN11SecPasswordD1Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.co

bb.cn:                                            ; preds = %bb.cg, %bb.cf
  %.pn = phi { ptr, i32 } [ %i.kg, %bb.cg ], [ %i.kf, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.cq

bb.co:                                            ; preds = %bb.cm, %bb.bx
  %.3299 = phi i8 [ %.2298, %bb.cm ], [ %.1297, %bb.bx ]
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV16RarCheckPassword, i64 16), ptr %7, align 8, !tbaa !129
  %i.km = load ptr, ptr %i.in, align 8, !tbaa !138 ; 3 uses
  %i.kn = icmp eq ptr %i.km, null
  br i1 %i.kn, label %_ZN16RarCheckPasswordD2Ev.exit, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  call void @_ZN9CryptDataD2Ev(ptr noundef nonnull align 8 dead_on_return(2516) dereferenceable(2516) %i.km) #21
  call void @_ZdlPv(ptr noundef nonnull %i.km) #20
  br label %_ZN16RarCheckPasswordD2Ev.exit

_ZN16RarCheckPasswordD2Ev.exit:                   ; preds = %bb.co, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br i1 %i.ja, label %bb.cs, label %bb.hn

bb.cq:                                            ; preds = %bb.cn, %bb.bu
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.cn ], [ %i.iz, %bb.bu ]
  call void @_ZN16RarCheckPasswordD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.ho

bb.cr:                                            ; preds = %bb.bp
  call void @_ZN11ComprDataIO13SetEncryptionEb12CRYPT_METHODP11SecPasswordPKhS4_jPhS5_(ptr noundef nonnull align 8 dereferenceable(266) %i.dr, i1 noundef zeroext false, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef null)
  br label %bb.cs

bb.cs:                                            ; preds = %_ZN16RarCheckPasswordD2Ev.exit, %bb.cr
  %.4300 = phi i8 [ %.3299, %_ZN16RarCheckPasswordD2Ev.exit ], [ %.1297, %bb.cr ]
  %.4300.fr = freeze i8 %.4300                    ; 3 uses
  %i.ko = load ptr, ptr %i.i, align 8, !tbaa !36
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 75228 ; 2 uses
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !18
  %.not336 = icmp eq i32 %i.kq, 0
  br i1 %.not336, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 8572
  call void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %i.kr, ptr noundef nonnull %i.kp, i64 noundef 2048)
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  call void @_ZN4FileC1Ev(ptr noundef nonnull align 8 dereferenceable(8256) %9)
  %i.ks = getelementptr inbounds nuw i8, ptr %1, i64 22440 ; 4 uses
  %i.kt = load i32, ptr %i.ks, align 8, !tbaa !125 ; 2 uses
  %.not337 = icmp eq i32 %i.kt, 0                 ; 3 uses
  switch i32 %i.kt, label %bb.cv [
    i32 5, label %bb.dc
    i32 0, label %bb.dc
  ]

bb.cv:                                            ; preds = %bb.cu
  %i.ku = trunc nuw i8 %.4300.fr to i1
  %i.kv = icmp ne i32 %i.l, 80
  %or.cond12 = select i1 %i.ku, i1 %i.kv, i1 false
  br i1 %or.cond12, label %bb.cw, label %bb.dl

bb.cw:                                            ; preds = %bb.cv
  %i.kw = load ptr, ptr %i.i, align 8, !tbaa !36
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 58617
  %i.ky = load i8, ptr %i.kx, align 1, !tbaa !116, !range !64, !noundef !65
  %i.kz = trunc nuw i8 %i.ky to i1
  br i1 %i.kz, label %.thread377, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  store i8 0, ptr %i.e, align 1, !tbaa !131
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 8572 ; 2 uses
  %i.lb = invoke noundef zeroext i1 @_Z9FileExistPKw(ptr noundef nonnull %i.la)
          to label %bb.cy unwind label %bb.da

bb.cy:                                            ; preds = %bb.cx
  %.not13 = xor i1 %i.lb, true
  %i.lc = load i8, ptr %i.e, align 1, !range !64  ; 2 uses
  %i.ld = trunc nuw i8 %i.lc to i1
  %or.cond15 = select i1 %.not13, i1 true, i1 %i.ld
  br i1 %or.cond15, label %bb.db, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.le = load ptr, ptr %i.i, align 8, !tbaa !36
  %i.lf = load i64, ptr %i.bl, align 8, !tbaa !130
  %i.lg = getelementptr inbounds nuw i8, ptr %1, i64 22240
  %i.lh = invoke noundef zeroext i1 @_Z10FileCreateP11CommandDataP4FilePwmPblP7RarTimeb(ptr noundef %i.le, ptr noundef null, ptr noundef nonnull %i.la, i64 noundef 2048, ptr noundef nonnull %i.e, i64 noundef %i.lf, ptr noundef nonnull %i.lg, i1 noundef zeroext false)
          to label %._crit_edge unwind label %bb.da ; 0 uses

._crit_edge:                                      ; preds = %bb.cz
  %.pre = load i8, ptr %i.e, align 1, !tbaa !131, !range !64
  br label %bb.db

bb.da:                                            ; preds = %bb.cz, %bb.cx
  %i.li = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  br label %bb.hg

bb.db:                                            ; preds = %._crit_edge, %bb.cy
  %.pre-phi = phi i8 [ %.pre, %._crit_edge ], [ %i.lc, %bb.cy ]
  %not..pre-phi = xor i8 %.pre-phi, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  br label %bb.dl

bb.dc:                                            ; preds = %bb.cu, %bb.cu
  %i.lj = invoke noundef zeroext i1 @_ZN7Archive8IsArcDirEv(ptr noundef nonnull align 8 dereferenceable(57108) %1)
          to label %bb.dd unwind label %bb.dg

bb.dd:                                            ; preds = %bb.dc
  %i.lk = trunc i8 %.4300.fr to i1                ; 2 uses
  br i1 %i.lj, label %bb.de, label %bb.di

bb.de:                                            ; preds = %bb.dd
  br i1 %i.lk, label %switch.early.test, label %bb.hf

switch.early.test:                                ; preds = %bb.de
  switch i32 %i.l, label %bb.df [
    i32 80, label %bb.hf
    i32 73, label %bb.hf
    i32 69, label %bb.hf
  ]

bb.df:                                            ; preds = %switch.early.test
  %i.ll = load ptr, ptr %i.i, align 8, !tbaa !36
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 57452
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !132
  %i.lo = icmp eq i32 %i.ln, 1
  br i1 %i.lo, label %bb.hf, label %bb.dh

bb.dg:                                            ; preds = %bb.dm, %bb.dj, %bb.dh, %bb.dc
  %i.lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.hg

bb.dh:                                            ; preds = %bb.df
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.lr = load i64, ptr %i.lq, align 8, !tbaa !39
  %i.ls = add i64 %i.lr, 1
  store i64 %i.ls, ptr %i.lq, align 8, !tbaa !39
  invoke void @_ZN10CmdExtract13ExtrCreateDirER7ArchivePKw(ptr noundef nonnull align 8 dereferenceable(16800) %0, ptr noundef nonnull align 8 dereferenceable(57108) %1, ptr nonnull poison)
          to label %bb.hf unwind label %bb.dg

bb.di:                                            ; preds = %bb.dd
  br i1 %i.lk, label %bb.dj, label %.thread379

bb.dj:                                            ; preds = %bb.di
  %i.lt = invoke noundef zeroext i1 @_ZN10CmdExtract14ExtrCreateFileER7ArchiveR4File(ptr noundef nonnull align 8 dereferenceable(16800) %0, ptr noundef nonnull align 8 dereferenceable(57108) %1, ptr noundef nonnull align 8 dereferenceable(8256) %9)
          to label %bb.dk unwind label %bb.dg

bb.dk:                                            ; preds = %bb.dj
  %i.lu = zext i1 %i.lt to i8
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.cv, %bb.db
  %.6302 = phi i8 [ %i.lu, %bb.dk ], [ %not..pre-phi, %bb.db ], [ %.4300.fr, %bb.cv ]
  %i.lv = trunc nuw i8 %.6302 to i1
  br i1 %i.lv, label %.thread377, label %.thread379

.thread379:                                       ; preds = %bb.di, %bb.dl
  %i.lw = getelementptr inbounds nuw i8, ptr %1, i64 48844
  %i.lx = load i8, ptr %i.lw, align 4, !tbaa !180, !range !64, !noundef !65
  %i.ly = trunc nuw i8 %i.lx to i1
  br i1 %i.ly, label %bb.dm, label %bb.hh

bb.dm:                                            ; preds = %.thread379
  %i.lz = invoke noundef zeroext i1 @_Z18uiStartFileExtractPKwbbb(ptr noundef nonnull %i.c, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %bb.dn unwind label %bb.dg

bb.dn:                                            ; preds = %bb.dm
  br i1 %i.lz, label %.thread377, label %bb.hf

.thread377:                                       ; preds = %bb.cw, %bb.dl, %bb.dn
  %.1293.ph = phi i8 [ %.0292, %bb.dl ], [ 1, %bb.dn ], [ %.0292, %bb.cw ] ; 8 uses
  %i.ma = load ptr, ptr %i.i, align 8, !tbaa !36  ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 58617
  %i.mc = load i8, ptr %i.mb, align 1, !tbaa !116, !range !64, !noundef !65 ; 2 uses
  %i.md = trunc nuw i8 %i.mc to i1
  br i1 %i.md, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %.thread377
  store i8 1, ptr %i.bg, align 1, !tbaa !113
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %.thread377
  %i.me = trunc nuw i8 %.1293.ph to i1            ; 6 uses
  %i.mf = or i8 %i.mc, %.1293.ph
  %i.mg = icmp ne i8 %i.mf, 0                     ; 5 uses
  br i1 %i.me, label %bb.dx, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.mh = icmp eq i32 %i.l, 80
  %or.cond25.not = select i1 %i.mg, i1 true, i1 %i.mh
  br i1 %or.cond25.not, label %bb.dw, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.mi = invoke noundef zeroext i1 @_ZN4File8IsDeviceEv(ptr noundef nonnull align 8 dereferenceable(8256) %9)
          to label %bb.ds unwind label %bb.dv

bb.ds:                                            ; preds = %bb.dr
  br i1 %i.mi, label %bb.dt, label %bb.dw

bb.dt:                                            ; preds = %bb.ds
  %i.mj = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 8572 ; 2 uses
  invoke void @_Z5uiMsgIJRA2048_wS1_EEv14UIMESSAGE_CODEDpOT_(i32 noundef 59, ptr noundef nonnull align 4 dereferenceable(8192) %i.mj, ptr noundef nonnull align 4 dereferenceable(8192) %i.mk)
          to label %bb.du unwind label %bb.dv

bb.du:                                            ; preds = %bb.dt
  invoke void @_ZN12ErrorHandler10WriteErrorEPKwS1_(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler, ptr noundef nonnull %i.mj, ptr noundef nonnull %i.mk)
          to label %bb.dw unwind label %bb.dv

bb.dv:                                            ; preds = %bb.eb, %bb.ea, %bb.dz, %bb.dy, %bb.du, %bb.dt, %bb.dr
  %i.ml = landingpad { ptr, i32 }
          cleanup
  br label %bb.hg

bb.dw:                                            ; preds = %bb.du, %bb.ds, %bb.dq
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.mn = load i64, ptr %i.mm, align 8, !tbaa !39
  %i.mo = add i64 %i.mn, 1
  store i64 %i.mo, ptr %i.mm, align 8, !tbaa !39
  %.pre418 = load ptr, ptr %i.i, align 8, !tbaa !36
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dp
  %i.mp = phi ptr [ %.pre418, %bb.dw ], [ %i.ma, %bb.dp ] ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.mr = load i64, ptr %i.mq, align 8, !tbaa !189
  %i.ms = add i64 %i.mr, 1
  store i64 %i.ms, ptr %i.mq, align 8, !tbaa !189
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mp, i64 57431
  %i.mu = load i8, ptr %i.mt, align 1, !tbaa !139, !range !64, !noundef !65
  %i.mv = trunc nuw i8 %i.mu to i1
  br i1 %i.mv, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  invoke void @_Z13uiEolAfterMsgv()
          to label %._crit_edge419 unwind label %bb.dv

._crit_edge419:                                   ; preds = %bb.dy
  %.pre420 = load ptr, ptr %i.i, align 8, !tbaa !36
  br label %bb.dz

bb.dz:                                            ; preds = %._crit_edge419, %bb.dx
  %i.mw = phi ptr [ %.pre420, %._crit_edge419 ], [ %i.mp, %bb.dx ]
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %1, i64 22288 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mx, i8 0, i64 16, i1 false)
  %i.nb = load i32, ptr %i.na, align 8, !tbaa !190
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mw, i64 75224
  %i.nd = load i32, ptr %i.nc, align 8, !tbaa !191
  invoke void @_ZN8DataHash4InitE9HASH_TYPEj(ptr noundef nonnull align 8 dereferenceable(16) %i.mz, i32 noundef %i.nb, i32 noundef %i.nd)
          to label %bb.ea unwind label %bb.dv

bb.ea:                                            ; preds = %bb.dz
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.nf = load i32, ptr %i.na, align 8, !tbaa !190
  %i.ng = load ptr, ptr %i.i, align 8, !tbaa !36
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 75224
  %i.ni = load i32, ptr %i.nh, align 8, !tbaa !191
  invoke void @_ZN8DataHash4InitE9HASH_TYPEj(ptr noundef nonnull align 8 dereferenceable(16) %i.ne, i32 noundef %i.nf, i32 noundef %i.ni)
          to label %bb.eb unwind label %bb.dv

bb.eb:                                            ; preds = %bb.ea
  %i.nj = load i64, ptr %i.bi, align 8, !tbaa !168 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %i.nj, ptr %i.nk, align 8, !tbaa !192
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %i.nj, ptr %i.nl, align 8, !tbaa !193
  invoke void @_ZN11ComprDataIO8SetFilesEP4FileS1_(ptr noundef nonnull align 8 dereferenceable(266) %i.dr, ptr noundef nonnull %1, ptr noundef nonnull %9)
          to label %bb.ec unwind label %bb.dv

bb.ec:                                            ; preds = %bb.eb
  %i.nm = zext i1 %i.mg to i8
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 145
  store i8 %i.nm, ptr %i.nn, align 1, !tbaa !194
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 146
  store i8 %.1293.ph, ptr %i.no, align 2, !tbaa !195
  br i1 %i.mg, label %bb.en, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.np = getelementptr inbounds nuw i8, ptr %1, i64 48864
  %i.nq = load i8, ptr %i.np, align 8, !tbaa !185, !range !64, !noundef !65
  %i.nr = trunc nuw i8 %i.nq to i1
  br i1 %i.nr, label %bb.en, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.ns = load i64, ptr %i.bl, align 8, !tbaa !130 ; 4 uses
  %i.nt = icmp sgt i64 %i.ns, 1000000
  br i1 %i.nt, label %bb.ef, label %bb.en

bb.ef:                                            ; preds = %bb.ee
  %i.nu = load i64, ptr %i.bi, align 8, !tbaa !168
  %i.nv = shl nsw i64 %i.nu, 10
  %i.nw = icmp sgt i64 %i.nv, %i.ns
  br i1 %i.nw, label %bb.eg, label %bb.en

bb.eg:                                            ; preds = %bb.ef
  %i.nx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !76
  %.not414 = icmp eq i32 %i.ny, 1
  br i1 %.not414, label %bb.en, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.nz = icmp samesign ult i64 %i.ns, 100000000
  br i1 %i.nz, label %bb.ek, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.oa = invoke noundef i64 @_ZN4File10FileLengthEv(ptr noundef nonnull align 8 dereferenceable(8256) %1)
          to label %bb.ej unwind label %bb.em

bb.ej:                                            ; preds = %bb.ei
  %i.ob = load i64, ptr %i.bi, align 8, !tbaa !168
  %i.oc = icmp sgt i64 %i.oa, %i.ob
  br i1 %i.oc, label %._crit_edge421, label %bb.en

._crit_edge421:                                   ; preds = %bb.ej
  %.pre422 = load i64, ptr %i.bl, align 8, !tbaa !130
  br label %bb.ek

bb.ek:                                            ; preds = %._crit_edge421, %bb.eh
  %i.od = phi i64 [ %.pre422, %._crit_edge421 ], [ %i.ns, %bb.eh ]
  invoke void @_ZN4File8PreallocEl(ptr noundef nonnull align 8 dereferenceable(8256) %9, i64 noundef %i.od)
          to label %bb.el unwind label %bb.em

bb.el:                                            ; preds = %bb.ek
  %i.oe = load i64, ptr %i.bl, align 8, !tbaa !130
  br label %bb.en

bb.em:                                            ; preds = %bb.ek, %bb.ei
  %i.of = landingpad { ptr, i32 }
          cleanup
  br label %bb.hg

bb.en:                                            ; preds = %bb.el, %bb.ej, %bb.eg, %bb.ef, %bb.ee, %bb.ed, %bb.ec
  %.0274 = phi i64 [ 0, %bb.ec ], [ 0, %bb.ed ], [ %i.oe, %bb.el ], [ 0, %bb.ej ], [ 0, %bb.eg ], [ 0, %bb.ef ], [ 0, %bb.ee ] ; 2 uses
  %i.og = load ptr, ptr %i.i, align 8, !tbaa !36  ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 57500
  %i.oi = load i8, ptr %i.oh, align 4, !tbaa !196, !range !64, !noundef !65
  %i.oj = xor i8 %i.oi, 1
  %i.ok = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 %i.oj, ptr %i.ok, align 1, !tbaa !197
  %or.cond27 = or i1 %i.mg, %i.me
  %i.ol = icmp ne i32 %i.l, 80
  %not.or.cond27 = xor i1 %or.cond27, true
  %i.om = select i1 %not.or.cond27, i1 %i.ol, i1 false ; 4 uses
  br i1 %.not337, label %bb.fh, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.on = load i32, ptr %i.ks, align 8, !tbaa !125 ; 3 uses
  %i.oo = icmp eq i32 %i.on, 4
  %i.op = and i32 %i.on, -2
  %or.cond29 = icmp eq i32 %i.op, 4
  br i1 %or.cond29, label %bb.ep, label %bb.ey

bb.ep:                                            ; preds = %bb.eo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #21
  %i.oq = getelementptr inbounds nuw i8, ptr %1, i64 22444
  invoke void @_Z14DosSlashToUnixPKwPwm(ptr noundef nonnull %i.oq, ptr noundef nonnull %i.f, i64 noundef 2048)
          to label %_Z13SlashToNativePKwPwm.exit unwind label %bb.eu

_Z13SlashToNativePKwPwm.exit:                     ; preds = %bb.ep
  %i.or = invoke noundef ptr @_Z11ConvertPathPKwPwm(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f, i64 noundef 2048)
          to label %bb.eq unwind label %bb.eu     ; 0 uses

bb.eq:                                            ; preds = %_Z13SlashToNativePKwPwm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #21
  invoke void @_ZN10CmdExtract15ExtrPrepareNameER7ArchivePKwPwm(ptr noundef nonnull align 8 dereferenceable(16800) %0, ptr noundef nonnull align 8 dereferenceable(57108) %1, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, i64 noundef 2048)
          to label %bb.er unwind label %bb.ev

bb.er:                                            ; preds = %bb.eq
  %i.os = load i32, ptr %i.g, align 16
  %i.ot = icmp ne i32 %i.os, 0
  %or.cond32 = select i1 %i.om, i1 %i.ot, i1 false
  br i1 %or.cond32, label %bb.es, label %.split.thread

.split.thread:                                    ; preds = %bb.er
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #21
  br label %.thread388

bb.es:                                            ; preds = %bb.er
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 8572 ; 2 uses
  br i1 %i.oo, label %bb.et, label %bb.ew

bb.et:                                            ; preds = %bb.es
  %i.ov = load ptr, ptr %i.i, align 8, !tbaa !36
  %i.ow = invoke noundef zeroext i1 @_Z15ExtractHardlinkP11CommandDataPwS1_m(ptr noundef %i.ov, ptr noundef nonnull %i.ou, ptr noundef nonnull %i.g, i64 noundef 2048)
          to label %.split unwind label %bb.ev

bb.eu:                                            ; preds = %bb.ep, %_Z13SlashToNativePKwPwm.exit
  %i.ox = landingpad { ptr, i32 }
          cleanup
  br label %bb.ex

bb.ev:                                            ; preds = %bb.ew, %bb.et, %bb.eq
  %i.oy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #21
  br label %bb.ex

bb.ew:                                            ; preds = %bb.es
  %i.oz = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.pa = load i64, ptr %i.bl, align 8, !tbaa !130
  %i.pb = invoke noundef zeroext i1 @_ZN10CmdExtract15ExtractFileCopyER4FilePwPKwS2_S2_ml(ptr noundef nonnull align 8 dereferenceable(16800) %0, ptr noundef nonnull align 8 dereferenceable(8256) %9, ptr noundef nonnull %i.oz, ptr noundef nonnull %i.f, ptr noundef nonnull %i.ou, ptr noundef nonnull %i.g, i64 poison, i64 noundef %i.pa)
          to label %.split unwind label %bb.ev

.split:                                           ; preds = %bb.ew, %bb.et
  %.0271.shrunk = phi i1 [ %i.pb, %bb.ew ], [ %i.ow, %bb.et ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #21
  br i1 %.0271.shrunk, label %.thread388, label %.thread393

bb.ex:                                            ; preds = %bb.ev, %bb.eu
  %.pn348 = phi { ptr, i32 } [ %i.oy, %bb.ev ], [ %i.ox, %bb.eu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #21
  br label %bb.hg

bb.ey:                                            ; preds = %bb.eo
  %i.pc = add i32 %i.on, -1
  %or.cond36 = icmp ult i32 %i.pc, 3
  br i1 %or.cond36, label %bb.ez, label %bb.fe

bb.ez:                                            ; preds = %bb.ey
  br i1 %i.om, label %bb.fa, label %.thread388

bb.fa:                                            ; preds = %bb.ez
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #21
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 8572 ; 2 uses
  %i.pe = invoke noundef zeroext i1 @_Z14ExtractSymlinkP11CommandDataR11ComprDataIOR7ArchivePKwRb(ptr noundef nonnull %i.og, ptr noundef nonnull align 8 dereferenceable(266) %i.dr, ptr noundef nonnull align 8 dereferenceable(57108) %1, ptr noundef nonnull %i.pd, ptr noundef nonnull align 1 dereferenceable(1) %i.h)
          to label %bb.fb unwind label %bb.fd     ; 4 uses

bb.fb:                                            ; preds = %bb.fa
  br i1 %i.pe, label %bb.fc, label %bb.fg

bb.fc:                                            ; preds = %bb.fb
  %i.pf = load ptr, ptr %i.i, align 8, !tbaa !36
  invoke void @_Z18SetFileHeaderExtraP11CommandDataR7ArchivePw(ptr noundef %i.pf, ptr noundef nonnull align 8 dereferenceable(57108) %1, ptr noundef nonnull %i.pd)
          to label %bb.fg unwind label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.fa
  %i.pg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #21
  br label %bb.hg

bb.fe:                                            ; preds = %bb.ey
  %i.ph = getelementptr inbounds nuw i8, ptr %1, i64 52
  invoke void @_Z5uiMsgIJRA2048_wS1_EEv14UIMESSAGE_CODEDpOT_(i32 noundef 71, ptr noundef nonnull align 4 dereferenceable(8192) %i.ph, ptr noundef nonnull align 4 dereferenceable(8192) %i.c)
          to label %.thread393 unwind label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.pi = landingpad { ptr, i32 }
          cleanup
  br label %bb.hg

bb.fg:                                            ; preds = %bb.fb, %bb.fc
  %i.pj = load i8, ptr %i.h, align 1, !range !64
  %i.pk = select i1 %i.pe, i8 %i.pj, i8 0
  %i.pl = getelementptr inbounds nuw i8, ptr %0, i64 16765 ; 2 uses
  %i.pm = load i8, ptr %i.pl, align 1, !tbaa !40, !range !64, !noundef !65
  %i.pn = or i8 %i.pk, %i.pm
  store i8 %i.pn, ptr %i.pl, align 1, !tbaa !40
  %i.po = getelementptr inbounds nuw i8, ptr %0, i64 16768
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 16776
  store i64 0, ptr %i.pp, align 8, !tbaa !16
  %i.pq = load ptr, ptr %i.po, align 8, !tbaa !42
  store i32 0, ptr %i.pq, align 4, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #21
  br label %.thread393

.thread388:                                       ; preds = %bb.ez, %.split.thread, %.split
  %i.pr = load i32, ptr %i.hn, align 8, !tbaa !122
  %i.ps = icmp ne i32 %i.pr, 2
  %or.cond38 = select i1 %i.ps, i1 true, i1 %i.om
  br label %.thread393

.thread393:                                       ; preds = %.thread388, %bb.fg, %bb.fe, %.split
  %.1.shrunk390 = phi i1 [ false, %.split ], [ false, %bb.fe ], [ true, %.thread388 ], [ %i.pe, %bb.fg ] ; 2 uses
  %.0272 = phi i1 [ false, %.split ], [ false, %bb.fe ], [ %or.cond38, %.thread388 ], [ %i.pe, %bb.fg ]
  %i.pt = and i1 %i.om, %.1.shrunk390
  %i.pu = zext i1 %i.pt to i8
  store i8 %i.pu, ptr %i.bg, align 1, !tbaa !113
  %i.pv = xor i1 %.0272, true
  %i.pw = or i1 %i.pv, %i.me
  br label %bb.fq

bb.fh:                                            ; preds = %bb.en
  %i.px = getelementptr inbounds nuw i8, ptr %1, i64 22328
  %i.py = load i8, ptr %i.px, align 8, !tbaa !123, !range !64, !noundef !65
  %i.pz = trunc nuw i8 %i.py to i1
  br i1 %i.pz, label %bb.fq, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.qa = load i8, ptr %i.hu, align 8, !tbaa !135
  %i.qb = icmp eq i8 %i.qa, 0
  br i1 %i.qb, label %bb.fj, label %bb.fl

bb.fj:                                            ; preds = %bb.fi
  %i.qc = load i64, ptr %i.bl, align 8, !tbaa !130
  invoke void @_ZN10CmdExtract11UnstoreFileER11ComprDataIOl(ptr noundef nonnull align 8 dereferenceable(266) %i.dr, i64 noundef %i.qc)
          to label %bb.fq unwind label %bb.fk

bb.fk:                                            ; preds = %.invoke, %bb.fq, %bb.fl, %bb.fj
  %i.qd = landingpad { ptr, i32 }
          cleanup
  br label %bb.hg

bb.fl:                                            ; preds = %bb.fi
  %i.qe = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !41
  %i.qg = getelementptr inbounds nuw i8, ptr %1, i64 22424
  %i.qh = load i64, ptr %i.qg, align 8, !tbaa !198
  %i.qi = getelementptr inbounds nuw i8, ptr %1, i64 22416 ; 2 uses
  %i.qj = load i8, ptr %i.qi, align 8, !tbaa !199, !range !64, !noundef !65
  %i.qk = trunc nuw i8 %i.qj to i1
  invoke void @_ZN6Unpack4InitEmb(ptr noundef nonnull align 8 dereferenceable(59688) %i.qf, i64 noundef %i.qh, i1 noundef zeroext %i.qk)
          to label %bb.fm unwind label %bb.fk

bb.fm:                                            ; preds = %bb.fl
  %i.ql = load ptr, ptr %i.qe, align 8, !tbaa !41 ; 3 uses
  %i.qm = load i64, ptr %i.bl, align 8, !tbaa !130
  %i.qn = getelementptr inbounds nuw i8, ptr %i.ql, i64 19840
  store i64 %i.qm, ptr %i.qn, align 8, !tbaa !222
  %i.qo = getelementptr inbounds nuw i8, ptr %i.ql, i64 19864
  store i8 0, ptr %i.qo, align 8, !tbaa !223
  %i.qp = load i32, ptr %i.hn, align 8, !tbaa !122
  %.not347 = icmp ne i32 %i.qp, 3
  %.pre423 = load i32, ptr %i.hq, align 4, !tbaa !134 ; 2 uses
  %i.qq = icmp ult i32 %.pre423, 16
  %or.cond446 = select i1 %.not347, i1 %i.qq, i1 false
  br i1 %or.cond446, label %bb.fn, label %bb.fp

bb.fn:                                            ; preds = %bb.fm
  %i.qr = load i64, ptr %i.mq, align 8, !tbaa !189
  %i.qs = icmp ugt i64 %i.qr, 1
  br i1 %i.qs, label %bb.fo, label %.invoke

bb.fo:                                            ; preds = %bb.fn
  %i.qt = getelementptr inbounds nuw i8, ptr %1, i64 48844
  %i.qu = load i8, ptr %i.qt, align 4, !tbaa !180, !range !64, !noundef !65
  %i.qv = trunc nuw i8 %i.qu to i1
  br label %.invoke

bb.fp:                                            ; preds = %bb.fm
  %i.qw = load i8, ptr %i.qi, align 8, !tbaa !199, !range !64, !noundef !65
end_hunk_0
