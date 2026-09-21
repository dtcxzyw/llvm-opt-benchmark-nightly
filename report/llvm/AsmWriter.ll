Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AsmWriter?download=true
inline.NumInlined: 10254
inline.NumDeleted: 5067
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZL21writeConstantInternalRN4llvm11raw_ostreamEPKNS_8ConstantERN12_GLOBAL__N_116AsmWriterContextE:bb.a
  br label %_ZL20writeAPFloatInternalRN4llvm11raw_ostreamERKNS_7APFloatE.exit

_ZL20writeAPFloatInternalRN4llvm11raw_ostreamERKNS_7APFloatE.exit: ; preds = %bb.ax, %bb.ay, %_ZN4llvm5APIntD2Ev.exit52.i, %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit.i
  %i.lg = load i32, ptr %i.de, align 8
  %i.lh = and i32 %i.lg, 254
  %spec.select.i322 = icmp eq i32 %i.lh, 18
  br i1 %spec.select.i322, label %bb.ck, label %_ZN4llvm11raw_ostreamlsEPKc.exit328

bb.ck:                                            ; preds = %_ZL20writeAPFloatInternalRN4llvm11raw_ostreamERKNS_7APFloatE.exit
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !53
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !54 ; 2 uses
  %i.lm = icmp eq ptr %i.lj, %i.ll
  br i1 %i.lm, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.ln = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.49, i64 noundef 1) #26 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit328

bb.cm:                                            ; preds = %bb.ck
  store i8 41, ptr %i.ll, align 1
  %i.lo = load ptr, ptr %i.lk, align 8, !tbaa !54
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 1
  store ptr %i.lp, ptr %i.lk, align 8, !tbaa !54
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit328

bb.cn:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit290, %_ZN4llvm11raw_ostreamlsEPKc.exit290
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !53
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !54 ; 2 uses
  %i.lu = ptrtoint ptr %i.lr to i64
  %i.lv = ptrtoint ptr %i.lt to i64
  %i.lw = sub i64 %i.lu, %i.lv
  %i.lx = icmp ult i64 %i.lw, 15
  br i1 %i.lx, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.ly = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.416, i64 noundef 15) #26 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit328

bb.cp:                                            ; preds = %bb.cn
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.lt, ptr noundef nonnull align 1 dereferenceable(15) @.str.416, i64 15, i1 false)
  %i.lz = load ptr, ptr %i.ls, align 8, !tbaa !54
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 15
  store ptr %i.ma, ptr %i.ls, align 8, !tbaa !54
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit328

bb.cq:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit290
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !53
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 9 uses
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !54 ; 2 uses
  %i.mf = ptrtoint ptr %i.mc to i64
  %i.mg = ptrtoint ptr %i.me to i64
  %i.mh = sub i64 %i.mf, %i.mg
  %i.mi = icmp ult i64 %i.mh, 13
  br i1 %i.mi, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.mj = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.447, i64 noundef 13) #26 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit695

bb.cs:                                            ; preds = %bb.cq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.me, ptr noundef nonnull align 1 dereferenceable(13) @.str.447, i64 13, i1 false)
  %i.mk = load ptr, ptr %i.md, align 8, !tbaa !54
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 13
  store ptr %i.ml, ptr %i.md, align 8, !tbaa !54
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit695

_ZN4llvm11raw_ostreamlsEPKc.exit695:              ; preds = %bb.cr, %bb.cs
  %i.mm = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !426
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 72
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !414
  tail call fastcc void @_ZL22writeAsOperandInternalRN4llvm11raw_ostreamEPKNS_5ValueERN12_GLOBAL__N_116AsmWriterContextEb(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.mp, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext false)
  %i.mq = load ptr, ptr %i.mb, align 8, !tbaa !53
  %i.mr = load ptr, ptr %i.md, align 8, !tbaa !54 ; 2 uses
  %i.ms = ptrtoint ptr %i.mq to i64
  %i.mt = ptrtoint ptr %i.mr to i64
  %i.mu = sub i64 %i.ms, %i.mt
  %i.mv = icmp ult i64 %i.mu, 2
  br i1 %i.mv, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit695
  %i.mw = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.27, i64 noundef 2) #26 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit698

bb.cu:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit695
  store i16 8236, ptr %i.mr, align 1
  %i.mx = load ptr, ptr %i.md, align 8, !tbaa !54
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 2
  store ptr %i.my, ptr %i.md, align 8, !tbaa !54
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit698

_ZN4llvm11raw_ostreamlsEPKc.exit698:              ; preds = %bb.ct, %bb.cu
  %i.mz = load ptr, ptr %i.mm, align 8, !tbaa !426
  tail call fastcc void @_ZL22writeAsOperandInternalRN4llvm11raw_ostreamEPKNS_5ValueERN12_GLOBAL__N_116AsmWriterContextEb(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.mz, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext false)
  %i.na = load ptr, ptr %i.mb, align 8, !tbaa !53
  %i.nb = load ptr, ptr %i.md, align 8, !tbaa !54 ; 2 uses
  %i.nc = icmp eq ptr %i.na, %i.nb
  br i1 %i.nc, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit698
  %i.nd = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.49, i64 noundef 1) #26 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit328

bb.cw:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit698
  store i8 41, ptr %i.nb, align 1
  %i.ne = load ptr, ptr %i.md, align 8, !tbaa !54
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 1
  store ptr %i.nf, ptr %i.md, align 8, !tbaa !54
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit328

bb.cx:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit290
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !53
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !54 ; 2 uses
  %i.nk = ptrtoint ptr %i.nh to i64
  %i.nl = ptrtoint ptr %i.nj to i64
  %i.nm = sub i64 %i.nk, %i.nl
  %i.nn = icmp ult i64 %i.nm, 21
  br i1 %i.nn, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.no = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.448, i64 noundef 21) #26 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit704

bb.cz:                                            ; preds = %bb.cx
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.nj, ptr noundef nonnull align 1 dereferenceable(21) @.str.448, i64 21, i1 false)
  %i.np = load ptr, ptr %i.ni, align 8, !tbaa !54
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 21
  store ptr %i.nq, ptr %i.ni, align 8, !tbaa !54
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit704

_ZN4llvm11raw_ostreamlsEPKc.exit704:              ; preds = %bb.cy, %bb.cz
  %i.nr = getelementptr inbounds i8, ptr %1, i64 -32
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !194
  tail call fastcc void @_ZL22writeAsOperandInternalRN4llvm11raw_ostreamEPKNS_5ValueERN12_GLOBAL__N_116AsmWriterContextEb(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.ns, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext false)
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit328

bb.da:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit290
  %i.nt = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !53
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !54 ; 2 uses
  %i.nx = ptrtoint ptr %i.nu to i64
  %i.ny = ptrtoint ptr %i.nw to i64
  %i.nz = sub i64 %i.nx, %i.ny
  %i.oa = icmp ult i64 %i.nz, 7
  br i1 %i.oa, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.ob = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.449, i64 noundef 7) #26 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit707

bb.dc:                                            ; preds = %bb.da
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.nw, ptr noundef nonnull align 1 dereferenceable(7) @.str.449, i64 7, i1 false)
  %i.oc = load ptr, ptr %i.nv, align 8, !tbaa !54
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 7
  store ptr %i.od, ptr %i.nv, align 8, !tbaa !54
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit707

_ZN4llvm11raw_ostreamlsEPKc.exit707:              ; preds = %bb.db, %bb.dc
  %i.oe = getelementptr inbounds i8, ptr %1, i64 -32
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !194
  tail call fastcc void @_ZL22writeAsOperandInternalRN4llvm11raw_ostreamEPKNS_5ValueERN12_GLOBAL__N_116AsmWriterContextEb(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.of, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext false)
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit328

_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit.peel.next: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit290
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !53
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 8 uses
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !54 ; 2 uses
  %i.ok = ptrtoint ptr %i.oh to i64
  %i.ol = ptrtoint ptr %i.oj to i64
  %i.om = sub i64 %i.ok, %i.ol
  %i.on = icmp ult i64 %i.om, 9
  br i1 %i.on, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit.peel.next
  %i.oo = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.450, i64 noundef 9) #26 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit710

bb.de:                                            ; preds = %_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit.peel.next
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.oj, ptr noundef nonnull align 1 dereferenceable(9) @.str.450, i64 9, i1 false)
  %i.op = load ptr, ptr %i.oi, align 8, !tbaa !54
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 9
  store ptr %i.oq, ptr %i.oi, align 8, !tbaa !54
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit710

_ZN4llvm11raw_ostreamlsEPKc.exit710:              ; preds = %bb.dd, %bb.de
  %i.or = getelementptr inbounds i8, ptr %1, i64 -160 ; 2 uses
  %i.os = getelementptr inbounds i8, ptr %1, i64 -96
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !194
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 1
  %i.ov = load i8, ptr %i.ou, align 1
  %i.ow = icmp slt i8 %i.ov, 0
  %spec.select = select i1 %i.ow, i32 2, i32 3
  %i.ox = getelementptr inbounds i8, ptr %1, i64 -64
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !194
  %i.oz = load i8, ptr %i.oy, align 8, !tbaa !190
  %i.pa = icmp eq i8 %i.oz, 9
  %.1229 = select i1 %i.pa, i32 %spec.select, i32 4
  %i.pb = getelementptr inbounds i8, ptr %1, i64 -32
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !194
  %i.pd = load i8, ptr %i.pc, align 8, !tbaa !190
  %i.pe = icmp eq i8 %i.pd, 9
  %.2230 = select i1 %i.pe, i32 %.1229, i32 5
  %i.pf = load ptr, ptr %i.or, align 8, !tbaa !194
  tail call fastcc void @_ZL22writeAsOperandInternalRN4llvm11raw_ostreamEPKNS_5ValueERN12_GLOBAL__N_116AsmWriterContextEb(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.pf, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext true)
  br label %_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit

.loopexit:                                        ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  %i.pg = load ptr, ptr %i.oi, align 8, !tbaa !54 ; 3 uses
  %i.ph = load ptr, ptr %i.og, align 8, !tbaa !53
  %.not.i333 = icmp ult ptr %i.pg, %i.ph
  br i1 %.not.i333, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %.loopexit
  %i.pi = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 noundef zeroext 41) #26 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit328

bb.dg:                                            ; preds = %.loopexit
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pg, i64 1
  store ptr %i.pj, ptr %i.oi, align 8, !tbaa !54
  store i8 41, ptr %i.pg, align 1, !tbaa !48
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit328

_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit:   ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit710, %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  %indvars.iv = phi i64 [ 1, %_ZN4llvm11raw_ostreamlsEPKc.exit710 ], [ %indvars.iv.next, %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit ] ; 2 uses
  %i.pk = load ptr, ptr %i.og, align 8, !tbaa !53
  %i.pl = load ptr, ptr %i.oi, align 8, !tbaa !54 ; 2 uses
  %i.pm = ptrtoint ptr %i.pk to i64
  %i.pn = ptrtoint ptr %i.pl to i64
  %i.po = sub i64 %i.pm, %i.pn
  %i.pp = icmp ult i64 %i.po, 2
  br i1 %i.pp, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit
  %i.pq = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.27, i64 noundef 2) #26 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

bb.di:                                            ; preds = %_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit
  store i16 8236, ptr %i.pl, align 1
  %i.pr = load ptr, ptr %i.oi, align 8, !tbaa !54
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 2
  store ptr %i.ps, ptr %i.oi, align 8, !tbaa !54
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %bb.dh, %bb.di
  %i.pt = getelementptr inbounds nuw [32 x i8], ptr %i.or, i64 %indvars.iv
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !194
  tail call fastcc void @_ZL22writeAsOperandInternalRN4llvm11raw_ostreamEPKNS_5ValueERN12_GLOBAL__N_116AsmWriterContextEb(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.pu, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext true)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %.2230, %lftr.wideiv
  br i1 %exitcond, label %.loopexit, label %_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit, !llvm.loop !1076

bb.dj:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit290
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !54 ; 3 uses
  %i.px = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !53
  %.not.i336 = icmp ult ptr %i.pw, %i.py
  br i1 %.not.i336, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.pz = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 noundef zeroext 91) #26 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit338

bb.dl:                                            ; preds = %bb.dj
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pw, i64 1
  store ptr %i.qa, ptr %i.pv, align 8, !tbaa !54
  store i8 91, ptr %i.pw, align 1, !tbaa !48
  br label %_ZN4llvm11raw_ostreamlsEc.exit338

_ZN4llvm11raw_ostreamlsEc.exit338:                ; preds = %bb.dk, %bb.dl
  %i.qb = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.qc = load i32, ptr %i.qb, align 4            ; 3 uses
  %i.qd = and i32 %i.qc, 1073741824
  %.not.i.i.i = icmp eq i32 %i.qd, 0
  br i1 %.not.i.i.i, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit338
  %i.qe = getelementptr inbounds i8, ptr %1, i64 -8
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !200
  %.pre.i.i = and i32 %i.qc, 268435455
  %.pre1.i.i = zext nneg i32 %.pre.i.i to i64
  br label %_ZNK4llvm4User8operandsEv.exit

bb.dn:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit338
  %i.qg = and i32 %i.qc, 268435455
  %i.qh = zext nneg i32 %i.qg to i64              ; 2 uses
  %i.qi = sub nsw i64 0, %i.qh
  %i.qj = getelementptr inbounds [32 x i8], ptr %1, i64 %i.qi
  br label %_ZNK4llvm4User8operandsEv.exit

_ZNK4llvm4User8operandsEv.exit:                   ; preds = %bb.dm, %bb.dn
  %i.qk = phi ptr [ %i.qf, %bb.dm ], [ %i.qj, %bb.dn ] ; 3 uses
  %.pre-phi2.i.i = phi i64 [ %.pre1.i.i, %bb.dm ], [ %i.qh, %bb.dn ] ; 3 uses
  %.idx = shl nuw nsw i64 %.pre-phi2.i.i, 5
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 %.idx
  %.not257610 = icmp eq i64 %.pre-phi2.i.i, 0
  br i1 %.not257610, label %._crit_edge, label %_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit355.preheader

_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit355.preheader: ; preds = %_ZNK4llvm4User8operandsEv.exit
  %i.qm = load ptr, ptr %i.qk, align 8, !tbaa !194
  tail call fastcc void @_ZL22writeAsOperandInternalRN4llvm11raw_ostreamEPKNS_5ValueERN12_GLOBAL__N_116AsmWriterContextEb(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.qm, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext true)
  %.not257.peel = icmp eq i64 %.pre-phi2.i.i, 1
  br i1 %.not257.peel, label %._crit_edge, label %_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit355.peel.next

_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit355.peel.next: ; preds = %_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit355.preheader
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qk, i64 32
  br label %_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit355

._crit_edge:                                      ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit715, %_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit355.preheader, %_ZNK4llvm4User8operandsEv.exit
  %i.qo = load ptr, ptr %i.pv, align 8, !tbaa !54 ; 3 uses
  %i.qp = load ptr, ptr %i.px, align 8, !tbaa !53
  %.not.i345 = icmp ult ptr %i.qo, %i.qp
  br i1 %.not.i345, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %._crit_edge
  %i.qq = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 noundef zeroext 93) #26 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit328

bb.dp:                                            ; preds = %._crit_edge
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qo, i64 1
  store ptr %i.qr, ptr %i.pv, align 8, !tbaa !54
  store i8 93, ptr %i.qo, align 1, !tbaa !48
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit328

_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit355: ; preds = %_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit355.peel.next, %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit715
  %.0233612 = phi ptr [ %i.rc, %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit715 ], [ %i.qn, %_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit355.peel.next ] ; 2 uses
  %i.qs = load ptr, ptr %.0233612, align 8, !tbaa !194
  %i.qt = load ptr, ptr %i.px, align 8, !tbaa !53
  %i.qu = load ptr, ptr %i.pv, align 8, !tbaa !54 ; 2 uses
  %i.qv = ptrtoint ptr %i.qt to i64
  %i.qw = ptrtoint ptr %i.qu to i64
  %i.qx = sub i64 %i.qv, %i.qw
  %i.qy = icmp ult i64 %i.qx, 2
  br i1 %i.qy, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit355
  %i.qz = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.27, i64 noundef 2) #26 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit715

bb.dr:                                            ; preds = %_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit355
  store i16 8236, ptr %i.qu, align 1
  %i.ra = load ptr, ptr %i.pv, align 8, !tbaa !54
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 2
  store ptr %i.rb, ptr %i.pv, align 8, !tbaa !54
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit715

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit715:   ; preds = %bb.dq, %bb.dr
  tail call fastcc void @_ZL22writeAsOperandInternalRN4llvm11raw_ostreamEPKNS_5ValueERN12_GLOBAL__N_116AsmWriterContextEb(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.qs, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext true)
  %i.rc = getelementptr inbounds nuw i8, ptr %.0233612, i64 32 ; 2 uses
  %.not257 = icmp eq ptr %i.rc, %i.ql
  br i1 %.not257, label %._crit_edge, label %_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit355, !llvm.loop !1077

bb.ds:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit290
  %i.rd = tail call noundef zeroext i1 @_ZNK4llvm22ConstantDataSequential8isStringEj(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef 8) #26
  br i1 %i.rd, label %bb.dt, label %bb.dw

bb.dt:                                            ; preds = %bb.ds
  %i.re = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.451) ; 0 uses
  %i.rf = tail call { ptr, i64 } @_ZNK4llvm22ConstantDataSequential16getRawDataValuesEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #26 ; 2 uses
  %i.rg = extractvalue { ptr, i64 } %i.rf, 0
  %i.rh = extractvalue { ptr, i64 } %i.rf, 1
  tail call void @_ZN4llvm18printEscapedStringENS_9StringRefERNS_11raw_ostreamE(ptr %i.rg, i64 %i.rh, ptr noundef nonnull align 8 dereferenceable(48) %0) #26
  %i.ri = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !54 ; 3 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !53
  %.not.i357 = icmp ult ptr %i.rj, %i.rl
  br i1 %.not.i357, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.rm = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 noundef zeroext 34) #26 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit328

bb.dv:                                            ; preds = %bb.dt
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rj, i64 1
  store ptr %i.rn, ptr %i.ri, align 8, !tbaa !54
  store i8 34, ptr %i.rj, align 1, !tbaa !48
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit328

bb.dw:                                            ; preds = %bb.ds
  %i.ro = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !54 ; 3 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !53
  %.not.i360 = icmp ult ptr %i.rp, %i.rr
  br i1 %.not.i360, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.rs = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 noundef zeroext 91) #26 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit362

bb.dy:                                            ; preds = %bb.dw
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rp, i64 1
  store ptr %i.rt, ptr %i.ro, align 8, !tbaa !54
  store i8 91, ptr %i.rp, align 1, !tbaa !48
  br label %_ZN4llvm11raw_ostreamlsEc.exit362

_ZN4llvm11raw_ostreamlsEc.exit362:                ; preds = %bb.dx, %bb.dy
  %i.ru = tail call noundef i64 @_ZNK4llvm22ConstantDataSequential14getNumElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #26 ; 3 uses
  %.not259619 = icmp eq i64 %i.ru, 0
  br i1 %.not259619, label %._crit_edge622, label %_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit377.preheader

_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit377.preheader: ; preds = %_ZN4llvm11raw_ostreamlsEc.exit362
  %i.rv = tail call noundef ptr @_ZNK4llvm22ConstantDataSequential20getElementAsConstantEm(ptr noundef nonnull align 8 dereferenceable(40) %1, i64 noundef 0) #26
  tail call fastcc void @_ZL22writeAsOperandInternalRN4llvm11raw_ostreamEPKNS_5ValueERN12_GLOBAL__N_116AsmWriterContextEb(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.rv, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext true)
  %.not259.peel = icmp eq i64 %i.ru, 1
  br i1 %.not259.peel, label %._crit_edge622, label %_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit377

._crit_edge622:                                   ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit718, %_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit377.preheader, %_ZN4llvm11raw_ostreamlsEc.exit362
  %i.rw = load ptr, ptr %i.ro, align 8, !tbaa !54 ; 3 uses
  %i.rx = load ptr, ptr %i.rq, align 8, !tbaa !53
  %.not.i367 = icmp ult ptr %i.rw, %i.rx
  br i1 %.not.i367, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %._crit_edge622
  %i.ry = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 noundef zeroext 93) #26 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit328

bb.ea:                                            ; preds = %._crit_edge622
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rw, i64 1
  store ptr %i.rz, ptr %i.ro, align 8, !tbaa !54
  store i8 93, ptr %i.rw, align 1, !tbaa !48
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit328

_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit377: ; preds = %_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit377.preheader, %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit718
  %.0231621 = phi i64 [ %i.sk, %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit718 ], [ 1, %_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit377.preheader ] ; 2 uses
  %i.sa = load ptr, ptr %i.rq, align 8, !tbaa !53
  %i.sb = load ptr, ptr %i.ro, align 8, !tbaa !54 ; 2 uses
  %i.sc = ptrtoint ptr %i.sa to i64
  %i.sd = ptrtoint ptr %i.sb to i64
  %i.se = sub i64 %i.sc, %i.sd
  %i.sf = icmp ult i64 %i.se, 2
  br i1 %i.sf, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit377
  %i.sg = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.27, i64 noundef 2) #26 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit718

bb.ec:                                            ; preds = %_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit377
  store i16 8236, ptr %i.sb, align 1
  %i.sh = load ptr, ptr %i.ro, align 8, !tbaa !54
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 2
  store ptr %i.si, ptr %i.ro, align 8, !tbaa !54
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit718

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit718:   ; preds = %bb.eb, %bb.ec
  %i.sj = tail call noundef ptr @_ZNK4llvm22ConstantDataSequential20getElementAsConstantEm(ptr noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %.0231621) #26
  tail call fastcc void @_ZL22writeAsOperandInternalRN4llvm11raw_ostreamEPKNS_5ValueERN12_GLOBAL__N_116AsmWriterContextEb(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.sj, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext true)
  %i.sk = add nuw i64 %.0231621, 1                ; 2 uses
end_hunk_0
