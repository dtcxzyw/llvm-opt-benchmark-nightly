Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/IndirectCallPromotion?download=true
inline.NumInlined: 6931
inline.NumDeleted: 3349
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNK4llvm4bolt21IndirectCallPromotion21findCallTargetSymbolsERSt6vectorINS1_8CallsiteESaIS3_EERmRNS0_16BinaryBasicBlockERNS_6MCInstERPSA_:bb.a

_ZNKSt6vectorISt4pairIPN4llvm8MCSymbolEmESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.bi = ashr exact i64 %i.bg, 4                 ; 3 uses
  %.sroa.speculated.i.i.i102 = tail call i64 @llvm.umax.i64(i64 %i.bi, i64 1)
  %i.bj = add nsw i64 %.sroa.speculated.i.i.i102, %i.bi ; 2 uses
  %i.bk = icmp ult i64 %i.bj, %i.bi
  %i.bl = tail call i64 @llvm.umin.i64(i64 %i.bj, i64 576460752303423487)
  %i.bm = select i1 %i.bk, i64 576460752303423487, i64 %i.bl ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bm, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bn = shl nuw nsw i64 %i.bm, 4
  %i.bo = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bn) #28 ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bg ; 2 uses
  %i.bq = load ptr, ptr %i.ba, align 8, !tbaa !84
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !403
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store i64 0, ptr %i.br, align 8, !tbaa !404
  %.not10.i.i.i.i.i103 = icmp eq ptr %i.ax, %i.av
  br i1 %.not10.i.i.i.i.i103, label %_ZNSt6vectorISt4pairIPN4llvm8MCSymbolEmESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23.i.i, label %.lr.ph.i.i.i.i.i104

.lr.ph.i.i.i.i.i104:                              ; preds = %_ZNKSt6vectorISt4pairIPN4llvm8MCSymbolEmESaIS4_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i104
  %.012.i.i.i.i.i105 = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i104 ], [ %i.bo, %_ZNKSt6vectorISt4pairIPN4llvm8MCSymbolEmESaIS4_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i104 ], [ %i.ax, %_ZNKSt6vectorISt4pairIPN4llvm8MCSymbolEmESaIS4_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i105, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !853
  %i.bs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i105, i64 16 ; 2 uses
  %.not.i.i.i.i.i106 = icmp eq ptr %i.bs, %i.av
  br i1 %.not.i.i.i.i.i106, label %_ZNSt6vectorISt4pairIPN4llvm8MCSymbolEmESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23.i.i, label %.lr.ph.i.i.i.i.i104, !llvm.loop !5

_ZNSt6vectorISt4pairIPN4llvm8MCSymbolEmESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23.i.i: ; preds = %.lr.ph.i.i.i.i.i104, %_ZNKSt6vectorISt4pairIPN4llvm8MCSymbolEmESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bo, %_ZNKSt6vectorISt4pairIPN4llvm8MCSymbolEmESaIS4_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.bt, %.lr.ph.i.i.i.i.i104 ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i24.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i24.i.i, label %_ZNSt6vectorISt4pairIPN4llvm8MCSymbolEmESaIS4_EE17_M_realloc_insertIJRS3_iEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt4pairIPN4llvm8MCSymbolEmESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bg) #26
  br label %_ZNSt6vectorISt4pairIPN4llvm8MCSymbolEmESaIS4_EE17_M_realloc_insertIJRS3_iEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIPN4llvm8MCSymbolEmESaIS4_EE17_M_realloc_insertIJRS3_iEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorISt4pairIPN4llvm8MCSymbolEmESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23.i.i
  store ptr %i.bu, ptr %i.at, align 8, !tbaa !407
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %i.bm ; 2 uses
  store ptr %i.bv, ptr %i.au, align 8, !tbaa !408
  br label %_ZNSt6vectorISt4pairIPN4llvm8MCSymbolEmESaIS4_EE12emplace_backIJRS3_iEEERS4_DpOT_.exit

_ZNSt6vectorISt4pairIPN4llvm8MCSymbolEmESaIS4_EE12emplace_backIJRS3_iEEERS4_DpOT_.exit: ; preds = %bb.e, %_ZNSt6vectorISt4pairIPN4llvm8MCSymbolEmESaIS4_EE17_M_realloc_insertIJRS3_iEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i
  %i.bw = phi ptr [ %i.av, %bb.e ], [ %i.bv, %_ZNSt6vectorISt4pairIPN4llvm8MCSymbolEmESaIS4_EE17_M_realloc_insertIJRS3_iEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ]
  %i.bx = phi ptr [ %i.bd, %bb.e ], [ %i.bu, %_ZNSt6vectorISt4pairIPN4llvm8MCSymbolEmESaIS4_EE17_M_realloc_insertIJRS3_iEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ]
  %i.by = phi ptr [ %i.ax, %bb.e ], [ %i.bo, %_ZNSt6vectorISt4pairIPN4llvm8MCSymbolEmESaIS4_EE17_M_realloc_insertIJRS3_iEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ] ; 2 uses
  %i.bz = add nuw i64 %.081298, 1                 ; 2 uses
  %i.ca = load i64, ptr %3, align 8, !tbaa !59
  %i.cb = icmp ult i64 %i.bz, %i.ca
  br i1 %i.cb, label %bb.d, label %.critedge.loopexit, !llvm.loop !842

select.unfold:                                    ; preds = %bb.c, %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @_ZNK4llvm4bolt21IndirectCallPromotion27maybeGetHotJumpTableTargetsERNS0_16BinaryBasicBlockERNS_6MCInstERPS4_PKNS0_9JumpTableE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.570") align 8 %8, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(192) %4, ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %i.u)
  %i.cc = load ptr, ptr %8, align 8, !tbaa !397   ; 8 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !397 ; 2 uses
  %i.cf = icmp eq ptr %i.cc, %i.ce
  br i1 %i.cf, label %bb.bw, label %bb.i

bb.i:                                             ; preds = %select.unfold
  %i.cg = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4opts9VerbosityE, i64 120), align 8, !tbaa !362
  %.not93 = icmp eq i32 %i.cg, 0
  %.pre331.a = ptrtoint ptr %i.ce to i64
  %.pre332 = ptrtoint ptr %i.cc to i64
  %.pre334 = sub i64 %.pre331.a, %.pre332
  %.pre336 = ashr exact i64 %.pre334, 4           ; 4 uses
  br i1 %.not93, label %.lr.ph252, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.d, i64 1608
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %_ZN4llvm11raw_ostreamlsEPKc.exit116
  %.084241 = phi i64 [ 0, %.lr.ph ], [ %i.ei, %_ZN4llvm11raw_ostreamlsEPKc.exit116 ] ; 3 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !642, !nonnull !39, !align !62 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !101
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 32 ; 3 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !102 ; 2 uses
  %i.cn = ptrtoint ptr %i.ck to i64
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = icmp ult i64 %i.cp, 21
  br i1 %i.cq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cr = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ci, ptr noundef nonnull @.str.85, i64 noundef 21) #25
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.cm, ptr noundef nonnull align 1 dereferenceable(21) @.str.85, i64 21, i1 false)
  %i.cs = load ptr, ptr %i.cl, align 8, !tbaa !102
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 21
  store ptr %i.ct, ptr %i.cl, align 8, !tbaa !102
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.k, %bb.l
  %.0.i.i107 = phi ptr [ %i.cr, %bb.k ], [ %i.ci, %bb.l ]
  %i.cu = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i107, i64 noundef %.084241) #25 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !101
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 32 ; 3 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !102 ; 2 uses
  %i.cz = ptrtoint ptr %i.cw to i64
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = icmp ult i64 %i.db, 5
  br i1 %i.dc, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.dd = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.cu, ptr noundef nonnull @.str.86, i64 noundef 5) #25
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit110

bb.n:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.cy, ptr noundef nonnull align 1 dereferenceable(5) @.str.86, i64 5, i1 false)
  %i.de = load ptr, ptr %i.cx, align 8, !tbaa !102
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 5
  store ptr %i.df, ptr %i.cx, align 8, !tbaa !102
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit110

_ZN4llvm11raw_ostreamlsEPKc.exit110:              ; preds = %bb.m, %bb.n
  %.0.i.i109 = phi ptr [ %i.dd, %bb.m ], [ %i.cu, %bb.n ]
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %.084241 ; 2 uses
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !394
  %i.di = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i109, i64 noundef %i.dh) #25 ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !101
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 32 ; 3 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !102 ; 2 uses
  %i.dn = ptrtoint ptr %i.dk to i64
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = icmp ult i64 %i.dp, 2
  br i1 %i.dq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit110
  %i.dr = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.di, ptr noundef nonnull @.str.68, i64 noundef 2) #25
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit113

bb.p:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit110
  store i16 8236, ptr %i.dm, align 1
  %i.ds = load ptr, ptr %i.dl, align 8, !tbaa !102
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 2
  store ptr %i.dt, ptr %i.dl, align 8, !tbaa !102
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit113

_ZN4llvm11raw_ostreamlsEPKc.exit113:              ; preds = %bb.o, %bb.p
  %.0.i.i112 = phi ptr [ %i.dr, %bb.o ], [ %i.di, %bb.p ]
  %i.du = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !395
  %i.dw = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i112, i64 noundef %i.dv) #25 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !101
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 32 ; 3 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !102 ; 2 uses
  %i.eb = ptrtoint ptr %i.dy to i64
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = sub i64 %i.eb, %i.ec
  %i.ee = icmp ult i64 %i.ed, 2
  br i1 %i.ee, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit113
  %i.ef = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.dw, ptr noundef nonnull @.str.87, i64 noundef 2) #25 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit116

bb.r:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit113
  store i16 2601, ptr %i.ea, align 1
  %i.eg = load ptr, ptr %i.dz, align 8, !tbaa !102
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 2
  store ptr %i.eh, ptr %i.dz, align 8, !tbaa !102
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit116

_ZN4llvm11raw_ostreamlsEPKc.exit116:              ; preds = %bb.q, %bb.r
  %i.ei = add nuw i64 %.084241, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ei, %.pre336
  br i1 %exitcond.not, label %.lr.ph252, label %bb.j, !llvm.loop !843

.lr.ph252:                                        ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit116, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.ej = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  store i32 0, ptr %i.ej, align 8, !tbaa !383
  %i.ek = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr null, ptr %i.ek, align 8, !tbaa !261
  %i.el = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %i.ej, ptr %i.el, align 8, !tbaa !263
  %i.em = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %i.ej, ptr %i.em, align 8, !tbaa !384
  %i.en = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i64 0, ptr %i.en, align 8, !tbaa !385
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.s

.lr.ph273:                                        ; preds = %"_ZZNK4llvm4bolt21IndirectCallPromotion21findCallTargetSymbolsERSt6vectorINS1_8CallsiteESaIS3_EERmRNS0_16BinaryBasicBlockERNS_6MCInstERPSA_ENK3$_0clEm.exit"
  %i.ep = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL17ICPJumpTablesTopNE, i64 120), align 8, !tbaa !362 ; 2 uses
  %.not94 = icmp eq i32 %i.ep, 0
  %.val = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL7ICPTopNE, i64 120), align 8
  %11 = select i1 %.not94, i32 %.val, i32 %i.ep   ; 2 uses
  %i.eq = zext i32 %11 to i64
  %.not95 = icmp eq i32 %11, 0
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.es = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 6 uses
  %i.et = getelementptr inbounds nuw i8, ptr %9, i64 16
  br label %bb.ab

bb.s:                                             ; preds = %.lr.ph252, %"_ZZNK4llvm4bolt21IndirectCallPromotion21findCallTargetSymbolsERSt6vectorINS1_8CallsiteESaIS3_EERmRNS0_16BinaryBasicBlockERNS_6MCInstERPSA_ENK3$_0clEm.exit"
  %.085251 = phi i64 [ 0, %.lr.ph252 ], [ %i.gv, %"_ZZNK4llvm4bolt21IndirectCallPromotion21findCallTargetSymbolsERSt6vectorINS1_8CallsiteESaIS3_EERmRNS0_16BinaryBasicBlockERNS_6MCInstERPSA_ENK3$_0clEm.exit" ]
  %.086250 = phi i64 [ 0, %.lr.ph252 ], [ %i.gw, %"_ZZNK4llvm4bolt21IndirectCallPromotion21findCallTargetSymbolsERSt6vectorINS1_8CallsiteESaIS3_EERmRNS0_16BinaryBasicBlockERNS_6MCInstERPSA_ENK3$_0clEm.exit" ] ; 2 uses
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %.086250 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !395 ; 7 uses
  %i.ex = load ptr, ptr %i.eo, align 8, !tbaa !104 ; 2 uses
  %i.ey = load ptr, ptr %2, align 8, !tbaa !105   ; 4 uses
  %.not15.i = icmp eq ptr %i.ex, %i.ey
  br i1 %.not15.i, label %"_ZZNK4llvm4bolt21IndirectCallPromotion21findCallTargetSymbolsERSt6vectorINS1_8CallsiteESaIS3_EERmRNS0_16BinaryBasicBlockERNS_6MCInstERPSA_ENK3$_0clEm.exit", label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.s
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = ptrtoint ptr %i.ey to i64
  %i.fb = sub i64 %i.ez, %i.fa
  %i.fc = sdiv exact i64 %i.fb, 72                ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4llvm12is_containedIRSt6vectorImSaImEEmEEbOT_RKT0_.exit.thread.i, %.lr.ph.preheader.i
  %.013.i = phi i64 [ %i.go, %_ZN4llvm12is_containedIRSt6vectorImSaImEEmEEbOT_RKT0_.exit.thread.i ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %i.fd = getelementptr inbounds nuw [72 x i8], ptr %i.ey, i64 %.013.i ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 48
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !117 ; 4 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 56
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !117 ; 3 uses
  %i.fi = ptrtoint ptr %i.fh to i64               ; 2 uses
  %i.fj = ptrtoint ptr %i.ff to i64
  %i.fk = sub i64 %i.fi, %i.fj                    ; 3 uses
  %i.fl = ashr i64 %i.fk, 5                       ; 2 uses
  %i.fm = icmp sgt i64 %i.fl, 0
  br i1 %i.fm, label %.lr.ph.i.i.i.i.i118, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i118:                              ; preds = %.lr.ph.i
  %i.fn = and i64 %i.fk, -32
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.ff, i64 %i.fn ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.x, %.lr.ph.i.i.i.i.i118
  %.052.i.i.i.i.i = phi i64 [ %i.fl, %.lr.ph.i.i.i.i.i118 ], [ %i.ga, %bb.x ] ; 2 uses
  %.sroa.032.051.i.i.i.i.i = phi ptr [ %i.ff, %.lr.ph.i.i.i.i.i118 ], [ %i.fz, %bb.x ] ; 9 uses
  %i.fo = load i64, ptr %.sroa.032.051.i.i.i.i.i, align 8, !tbaa !59
  %i.fp = icmp eq i64 %i.fo, %i.ew
  br i1 %i.fp, label %_ZN4llvm12is_containedIRSt6vectorImSaImEEmEEbOT_RKT0_.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i, i64 8
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !59
  %i.fs = icmp eq i64 %i.fr, %i.ew
  br i1 %i.fs, label %_ZN4llvm12is_containedIRSt6vectorImSaImEEmEEbOT_RKT0_.exit.i.loopexit.split.loop.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i, i64 16
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !59
  %i.fv = icmp eq i64 %i.fu, %i.ew
  br i1 %i.fv, label %_ZN4llvm12is_containedIRSt6vectorImSaImEEmEEbOT_RKT0_.exit.i.loopexit.split.loop.exit411, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i, i64 24
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !59
  %i.fy = icmp eq i64 %i.fx, %i.ew
  br i1 %i.fy, label %_ZN4llvm12is_containedIRSt6vectorImSaImEEmEEbOT_RKT0_.exit.i.loopexit.split.loop.exit413, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i, i64 32
  %i.ga = add nsw i64 %.052.i.i.i.i.i, -1
  %i.gb = icmp sgt i64 %.052.i.i.i.i.i, 1
  br i1 %i.gb, label %bb.t, label %._crit_edge.loopexit.i.i.i.i.i, !llvm.loop !844

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %bb.x
  %.pre59.i.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i.i to i64
  %.pre60.i.i.i.i.i = sub i64 %i.fi, %.pre59.i.i.i.i.i
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.loopexit.i.i.i.i.i, %.lr.ph.i
  %.pre-phi61.i.i.i.i.i = phi i64 [ %.pre60.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %i.fk, %.lr.ph.i ]
  %.sroa.032.0.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %i.ff, %.lr.ph.i ] ; 5 uses
  %i.gc = ashr exact i64 %.pre-phi61.i.i.i.i.i, 3
  switch i64 %i.gc, label %_ZN4llvm12is_containedIRSt6vectorImSaImEEmEEbOT_RKT0_.exit.thread.i [
    i64 3, label %bb.y
    i64 2, label %._crit_edge._crit_edge.i.i.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i.i.i
  ]

bb.y:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.gd = load i64, ptr %.sroa.032.0.lcssa.i.i.i.i.i, align 8, !tbaa !59
  %i.ge = icmp eq i64 %i.gd, %i.ew
  br i1 %i.ge, label %_ZN4llvm12is_containedIRSt6vectorImSaImEEmEEbOT_RKT0_.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i.i

._crit_edge._crit_edge.i.i.i.i.i:                 ; preds = %bb.z, %._crit_edge.i.i.i.i.i
  %.sroa.032.1.i.i.i.i.i = phi ptr [ %i.gf, %bb.z ], [ %.sroa.032.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.gg = load i64, ptr %.sroa.032.1.i.i.i.i.i, align 8, !tbaa !59
  %i.gh = icmp eq i64 %i.gg, %i.ew
  br i1 %i.gh, label %_ZN4llvm12is_containedIRSt6vectorImSaImEEmEEbOT_RKT0_.exit.i, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i.i
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge57.i.i.i.i.i

._crit_edge._crit_edge57.i.i.i.i.i:               ; preds = %bb.aa, %._crit_edge.i.i.i.i.i
  %.sroa.032.2.i.i.i.i.i = phi ptr [ %i.gi, %bb.aa ], [ %.sroa.032.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.gj = load i64, ptr %.sroa.032.2.i.i.i.i.i, align 8, !tbaa !59
  %i.gk = icmp eq i64 %i.gj, %i.ew
  %spec.select.i.i.i.i.i = select i1 %i.gk, ptr %.sroa.032.2.i.i.i.i.i, ptr %i.fh
  br label %_ZN4llvm12is_containedIRSt6vectorImSaImEEmEEbOT_RKT0_.exit.i

_ZN4llvm12is_containedIRSt6vectorImSaImEEmEEbOT_RKT0_.exit.i.loopexit.split.loop.exit: ; preds = %bb.u
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i, i64 8
  br label %_ZN4llvm12is_containedIRSt6vectorImSaImEEmEEbOT_RKT0_.exit.i

_ZN4llvm12is_containedIRSt6vectorImSaImEEmEEbOT_RKT0_.exit.i.loopexit.split.loop.exit411: ; preds = %bb.v
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i, i64 16
  br label %_ZN4llvm12is_containedIRSt6vectorImSaImEEmEEbOT_RKT0_.exit.i

_ZN4llvm12is_containedIRSt6vectorImSaImEEmEEbOT_RKT0_.exit.i.loopexit.split.loop.exit413: ; preds = %bb.w
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i, i64 24
  br label %_ZN4llvm12is_containedIRSt6vectorImSaImEEmEEbOT_RKT0_.exit.i

_ZN4llvm12is_containedIRSt6vectorImSaImEEmEEbOT_RKT0_.exit.i: ; preds = %bb.t, %_ZN4llvm12is_containedIRSt6vectorImSaImEEmEEbOT_RKT0_.exit.i.loopexit.split.loop.exit, %_ZN4llvm12is_containedIRSt6vectorImSaImEEmEEbOT_RKT0_.exit.i.loopexit.split.loop.exit411, %_ZN4llvm12is_containedIRSt6vectorImSaImEEmEEbOT_RKT0_.exit.i.loopexit.split.loop.exit413, %._crit_edge._crit_edge57.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i, %bb.y
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i = phi ptr [ %.sroa.032.1.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i ], [ %spec.select.i.i.i.i.i, %._crit_edge._crit_edge57.i.i.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i.i.i, %bb.y ], [ %i.gn, %_ZN4llvm12is_containedIRSt6vectorImSaImEEmEEbOT_RKT0_.exit.i.loopexit.split.loop.exit413 ], [ %i.gl, %_ZN4llvm12is_containedIRSt6vectorImSaImEEmEEbOT_RKT0_.exit.i.loopexit.split.loop.exit ], [ %i.gm, %_ZN4llvm12is_containedIRSt6vectorImSaImEEmEEbOT_RKT0_.exit.i.loopexit.split.loop.exit411 ], [ %.sroa.032.051.i.i.i.i.i, %bb.t ]
  %.not.i117 = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i.i, %i.fh
  br i1 %.not.i117, label %_ZN4llvm12is_containedIRSt6vectorImSaImEEmEEbOT_RKT0_.exit.thread.i, label %"_ZZNK4llvm4bolt21IndirectCallPromotion21findCallTargetSymbolsERSt6vectorINS1_8CallsiteESaIS3_EERmRNS0_16BinaryBasicBlockERNS_6MCInstERPSA_ENK3$_0clEm.exit"

_ZN4llvm12is_containedIRSt6vectorImSaImEEmEEbOT_RKT0_.exit.thread.i: ; preds = %_ZN4llvm12is_containedIRSt6vectorImSaImEEmEEbOT_RKT0_.exit.i, %._crit_edge.i.i.i.i.i
  %i.go = add nuw i64 %.013.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.go, %i.fc
  br i1 %exitcond.not.i, label %"_ZZNK4llvm4bolt21IndirectCallPromotion21findCallTargetSymbolsERSt6vectorINS1_8CallsiteESaIS3_EERmRNS0_16BinaryBasicBlockERNS_6MCInstERPSA_ENK3$_0clEm.exit", label %.lr.ph.i, !llvm.loop !845

"_ZZNK4llvm4bolt21IndirectCallPromotion21findCallTargetSymbolsERSt6vectorINS1_8CallsiteESaIS3_EERmRNS0_16BinaryBasicBlockERNS_6MCInstERPSA_ENK3$_0clEm.exit": ; preds = %_ZN4llvm12is_containedIRSt6vectorImSaImEEmEEbOT_RKT0_.exit.i, %_ZN4llvm12is_containedIRSt6vectorImSaImEEmEEbOT_RKT0_.exit.thread.i, %bb.s
  %.0.lcssa.i = phi i64 [ 0, %bb.s ], [ %i.fc, %_ZN4llvm12is_containedIRSt6vectorImSaImEEmEEbOT_RKT0_.exit.thread.i ], [ %.013.i, %_ZN4llvm12is_containedIRSt6vectorImSaImEEmEEbOT_RKT0_.exit.i ]
  %i.gp = getelementptr inbounds nuw [72 x i8], ptr %i.ey, i64 %.0.lcssa.i
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %i.gr = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapIPKN4llvm8MCSymbolEjSt4lessIS3_ESaISt4pairIKS3_jEEEixERS7_(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.gq) ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !301
  %i.gt = add i32 %i.gs, 1
  store i32 %i.gt, ptr %i.gr, align 4, !tbaa !301
  %i.gu = load i64, ptr %i.eu, align 8, !tbaa !394
  %i.gv = add i64 %i.gu, %.085251                 ; 3 uses
  %i.gw = add nuw i64 %.086250, 1                 ; 2 uses
  %exitcond326.not = icmp eq i64 %i.gw, %.pre336
  br i1 %exitcond326.not, label %.lr.ph273, label %bb.s, !llvm.loop !846

bb.ab:                                            ; preds = %.lr.ph273, %bb.be
  %.087271 = phi i64 [ 0, %.lr.ph273 ], [ %i.ne, %bb.be ] ; 5 uses
  %.088270 = phi i64 [ %i.gv, %.lr.ph273 ], [ %i.hi, %bb.be ] ; 2 uses
  %i.gx = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %.087271 ; 2 uses
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !394 ; 2 uses
  %i.gz = mul i64 %i.gy, 100                      ; 2 uses
  %i.ha = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL26ICPJTTotalPercentThresholdE, i64 120), align 8, !tbaa !362
  %i.hb = zext i32 %i.ha to i64
  %i.hc = mul i64 %i.gv, %i.hb
  %i.hd = icmp ult i64 %i.gz, %i.hc
  br i1 %i.hd, label %.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.he = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL30ICPJTRemainingPercentThresholdE, i64 120), align 8, !tbaa !362
  %i.hf = zext i32 %i.he to i64
  %i.hg = mul i64 %.088270, %i.hf
  %i.hh = icmp uge i64 %i.gz, %i.hg
  %.not96 = icmp ult i64 %.087271, %i.eq
  %or.cond = or i1 %.not95, %.not96
  %or.cond301 = select i1 %i.hh, i1 %or.cond, i1 false
  br i1 %or.cond301, label %bb.ad, label %.thread

bb.ad:                                            ; preds = %bb.ac
  %i.hi = sub i64 %.088270, %i.gy
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !395 ; 16 uses
  %i.hl = load ptr, ptr %i.er, align 8, !tbaa !104 ; 2 uses
  %i.hm = load ptr, ptr %2, align 8, !tbaa !105   ; 4 uses
  %.not15.i119 = icmp eq ptr %i.hl, %i.hm
  br i1 %.not15.i119, label %"_ZZNK4llvm4bolt21IndirectCallPromotion21findCallTargetSymbolsERSt6vectorINS1_8CallsiteESaIS3_EERmRNS0_16BinaryBasicBlockERNS_6MCInstERPSA_ENK3$_0clEm.exit147", label %.lr.ph.preheader.i120

.lr.ph.preheader.i120:                            ; preds = %bb.ad
  %i.hn = ptrtoint ptr %i.hl to i64
  %i.ho = ptrtoint ptr %i.hm to i64
  %i.hp = sub i64 %i.hn, %i.ho
  %i.hq = sdiv exact i64 %i.hp, 72                ; 2 uses
  br label %.lr.ph.i121

.lr.ph.i121:                                      ; preds = %_ZN4llvm12is_containedIRSt6vectorImSaImEEmEEbOT_RKT0_.exit.thread.i133, %.lr.ph.preheader.i120
  %.013.i122 = phi i64 [ %i.jc, %_ZN4llvm12is_containedIRSt6vectorImSaImEEmEEbOT_RKT0_.exit.thread.i133 ], [ 0, %.lr.ph.preheader.i120 ] ; 3 uses
  %i.hr = getelementptr inbounds nuw [72 x i8], ptr %i.hm, i64 %.013.i122 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 48
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !117 ; 4 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hr, i64 56
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !117 ; 3 uses
  %i.hw = ptrtoint ptr %i.hv to i64               ; 2 uses
  %i.hx = ptrtoint ptr %i.ht to i64
  %i.hy = sub i64 %i.hw, %i.hx                    ; 3 uses
  %i.hz = ashr i64 %i.hy, 5                       ; 2 uses
  %i.ia = icmp sgt i64 %i.hz, 0
end_hunk_0
begin_hunk_1_@_ZN4llvm4bolt21IndirectCallPromotion18canPromoteCallsiteERKNS0_16BinaryBasicBlockERKNS_6MCInstERKSt6vectorINS1_8CallsiteESaIS9_EEm:bb.a
  br i1 %i.jj, label %_ZN4llvm4boltlsERNS_11raw_ostreamERKNS0_14BinaryFunctionE.exit174, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i172

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i172: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit171
  %i.jk = load i64, ptr %i.ji, align 8, !tbaa !66
  %i.jl = add i64 %i.jk, 1
  call void @_ZdlPvm(ptr noundef %i.jh, i64 noundef %i.jl) #26
  br label %_ZN4llvm4boltlsERNS_11raw_ostreamERKNS0_14BinaryFunctionE.exit174

_ZN4llvm4boltlsERNS_11raw_ostreamERKNS0_14BinaryFunctionE.exit174: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit171, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i172
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.jm = getelementptr inbounds nuw i8, ptr %.0.i.i170, i64 24
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !101
  %i.jo = getelementptr inbounds nuw i8, ptr %.0.i.i170, i64 32 ; 3 uses
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !102 ; 2 uses
  %i.jq = ptrtoint ptr %i.jn to i64
  %i.jr = ptrtoint ptr %i.jp to i64
  %i.js = sub i64 %i.jq, %i.jr
  %i.jt = icmp ult i64 %i.js, 3
  br i1 %i.jt, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_ZN4llvm4boltlsERNS_11raw_ostreamERKNS0_14BinaryFunctionE.exit174
  %i.ju = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i170, ptr noundef nonnull @.str.102, i64 noundef 3) #25
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit177

bb.am:                                            ; preds = %_ZN4llvm4boltlsERNS_11raw_ostreamERKNS0_14BinaryFunctionE.exit174
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.jp, ptr noundef nonnull align 1 dereferenceable(3) @.str.102, i64 3, i1 false)
  %i.jv = load ptr, ptr %i.jo, align 8, !tbaa !102
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 3
  store ptr %i.jw, ptr %i.jo, align 8, !tbaa !102
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit177

_ZN4llvm11raw_ostreamlsEPKc.exit177:              ; preds = %bb.al, %bb.am
  %.0.i.i176 = phi ptr [ %i.ju, %bb.al ], [ %.0.i.i170, %bb.am ]
  %i.jx = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i176, i64 noundef %i.ip) #25 ; 4 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 24
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !101
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jx, i64 32 ; 3 uses
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !102 ; 2 uses
  %i.kc = ptrtoint ptr %i.jz to i64
  %i.kd = ptrtoint ptr %i.kb to i64
  %i.ke = sub i64 %i.kc, %i.kd
  %i.kf = icmp ult i64 %i.ke, 4
  br i1 %i.kf, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit177
  %i.kg = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.jx, ptr noundef nonnull @.str.89, i64 noundef 4) #25
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit180

bb.ao:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit177
  store i32 544106784, ptr %i.kb, align 1
  %i.kh = load ptr, ptr %i.ka, align 8, !tbaa !102
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 4
  store ptr %i.ki, ptr %i.ka, align 8, !tbaa !102
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit180

_ZN4llvm11raw_ostreamlsEPKc.exit180:              ; preds = %bb.an, %bb.ao
  %.0.i.i179 = phi ptr [ %i.kg, %bb.an ], [ %i.jx, %bb.ao ] ; 6 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !643 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %i.km = load i32, ptr %i.kl, align 8
  %i.kn = and i32 %i.km, 4
  %.not.i.i181 = icmp eq i32 %i.kn, 0
  br i1 %.not.i.i181, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit189, label %_ZNK4llvm4bolt16BinaryBasicBlock7getNameEv.exit186

_ZNK4llvm4bolt16BinaryBasicBlock7getNameEv.exit186: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit180
  %i.ko = getelementptr inbounds i8, ptr %i.kk, i64 -8
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !379 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 24 ; 2 uses
  %i.kr = load i64, ptr %i.kp, align 8, !tbaa !381 ; 5 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.0.i.i179, i64 24
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !101
  %i.ku = getelementptr inbounds nuw i8, ptr %.0.i.i179, i64 32 ; 3 uses
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !102 ; 2 uses
  %i.kw = ptrtoint ptr %i.kt to i64
  %i.kx = ptrtoint ptr %i.kv to i64
  %i.ky = sub i64 %i.kw, %i.kx
  %i.kz = icmp ugt i64 %i.kr, %i.ky
  br i1 %i.kz, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %_ZNK4llvm4bolt16BinaryBasicBlock7getNameEv.exit186
  %i.la = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i179, ptr noundef nonnull %i.kq, i64 noundef %i.kr) #25
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit189

bb.aq:                                            ; preds = %_ZNK4llvm4bolt16BinaryBasicBlock7getNameEv.exit186
  %.not.i187 = icmp eq i64 %i.kr, 0
  br i1 %.not.i187, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit189, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kv, ptr nonnull align 8 %i.kq, i64 %i.kr, i1 false)
  %i.lb = load ptr, ptr %i.ku, align 8, !tbaa !102
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 %i.kr
  store ptr %i.lc, ptr %i.ku, align 8, !tbaa !102
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit189

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit189:   ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit180, %bb.ap, %bb.aq, %bb.ar
  %.0.i188 = phi ptr [ %i.la, %bb.ap ], [ %.0.i.i179, %bb.ar ], [ %.0.i.i179, %bb.aq ], [ %.0.i.i179, %_ZN4llvm11raw_ostreamlsEPKc.exit180 ] ; 4 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %.0.i188, i64 24
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !101
  %i.lf = getelementptr inbounds nuw i8, ptr %.0.i188, i64 32 ; 3 uses
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !102 ; 2 uses
  %i.lh = ptrtoint ptr %i.le to i64
  %i.li = ptrtoint ptr %i.lg to i64
  %i.lj = sub i64 %i.lh, %i.li
  %i.lk = icmp ult i64 %i.lj, 10
  br i1 %i.lk, label %bb.as, label %bb.at

bb.as:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit189
  %i.ll = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i188, ptr noundef nonnull @.str.103, i64 noundef 10) #25
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit192

bb.at:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit189
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.lg, ptr noundef nonnull align 1 dereferenceable(10) @.str.103, i64 10, i1 false)
  %i.lm = load ptr, ptr %i.lf, align 8, !tbaa !102
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 10
  store ptr %i.ln, ptr %i.lf, align 8, !tbaa !102
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit192

_ZN4llvm11raw_ostreamlsEPKc.exit192:              ; preds = %bb.as, %bb.at
  %.0.i.i191 = phi ptr [ %i.ll, %bb.as ], [ %.0.i188, %bb.at ]
  %i.lo = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i191, i64 noundef %4) #25 ; 4 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 24
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !101
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lo, i64 32 ; 3 uses
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !102 ; 2 uses
  %i.lt = ptrtoint ptr %i.lq to i64
  %i.lu = ptrtoint ptr %i.ls to i64
  %i.lv = sub i64 %i.lt, %i.lu
  %i.lw = icmp ult i64 %i.lv, 23
  br i1 %i.lw, label %bb.au, label %bb.av

bb.au:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit192
  %i.lx = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.lo, ptr noundef nonnull @.str.106, i64 noundef 23) #25
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit195

bb.av:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.ls, ptr noundef nonnull align 1 dereferenceable(23) @.str.106, i64 23, i1 false)
  %i.ly = load ptr, ptr %i.lr, align 8, !tbaa !102
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 23
  store ptr %i.lz, ptr %i.lr, align 8, !tbaa !102
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit195

_ZN4llvm11raw_ostreamlsEPKc.exit195:              ; preds = %bb.au, %bb.av
  %.0.i.i194 = phi ptr [ %i.lx, %bb.au ], [ %i.lo, %bb.av ] ; 5 uses
  store ptr @.str.69, ptr %10, align 8, !tbaa !112, !alias.scope !969
  %i.ma = getelementptr inbounds nuw i8, ptr %10, i64 8
  store double %i.hv, ptr %i.ma, align 8, !tbaa !113, !alias.scope !969
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store ptr %10, ptr %7, align 8, !tbaa !115
  %i.mb = ptrtoint ptr %7 to i64
  %i.mc = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsENS_12function_refIFiPcmEEE(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i194, ptr nonnull @_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJdEEERNS_11raw_ostreamES7_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m, i64 %i.mb) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.md = getelementptr inbounds nuw i8, ptr %.0.i.i194, i64 24
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !101
  %i.mf = getelementptr inbounds nuw i8, ptr %.0.i.i194, i64 32 ; 3 uses
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !102 ; 2 uses
  %i.mh = ptrtoint ptr %i.me to i64
  %i.mi = ptrtoint ptr %i.mg to i64
  %i.mj = sub i64 %i.mh, %i.mi
  %i.mk = icmp ult i64 %i.mj, 4
  br i1 %i.mk, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit195
  %i.ml = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i194, ptr noundef nonnull @.str.107, i64 noundef 4) #25
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit198

bb.ax:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit195
  store i32 540811301, ptr %i.mg, align 1
  %i.mm = load ptr, ptr %i.mf, align 8, !tbaa !102
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 4
  store ptr %i.mn, ptr %i.mf, align 8, !tbaa !102
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit198

_ZN4llvm11raw_ostreamlsEPKc.exit198:              ; preds = %bb.aw, %bb.ax
  %.0.i.i197 = phi ptr [ %i.ml, %bb.aw ], [ %.0.i.i194, %bb.ax ]
  %i.mo = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL22ICPMispredictThresholdE, i64 120), align 8, !tbaa !362
  %i.mp = zext i32 %i.mo to i64
  %i.mq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i197, i64 noundef %i.mp) #25 ; 3 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 24
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !101
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mq, i64 32 ; 3 uses
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !102 ; 2 uses
  %i.mv = ptrtoint ptr %i.ms to i64
  %i.mw = ptrtoint ptr %i.mu to i64
  %i.mx = sub i64 %i.mv, %i.mw
  %i.my = icmp ult i64 %i.mx, 2
  br i1 %i.my, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit198
  %i.mz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.mq, ptr noundef nonnull @.str.108, i64 noundef 2) #25 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit167

bb.az:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit198
  store i16 2597, ptr %i.mu, align 1
  %i.na = load ptr, ptr %i.mt, align 8, !tbaa !102
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 2
  store ptr %i.nb, ptr %i.mt, align 8, !tbaa !102
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit167

.lr.ph:                                           ; preds = %bb.aa
  %.val328 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL33ICPCallsRemainingPercentThresholdE, i64 120), align 8
  %.val329 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL30ICPJTRemainingPercentThresholdE, i64 120), align 8
  %13 = select i1 %.not326, i32 %.val328, i32 %.val329
  %.val = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL29ICPCallsTotalPercentThresholdE, i64 120), align 8
  %.val327 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL26ICPJTTotalPercentThresholdE, i64 120), align 8
  %14 = select i1 %.not326, i32 %.val, i32 %.val327
  %i.nc = load ptr, ptr %3, align 8, !tbaa !105
  %i.nd = zext i32 %14 to i64
  %i.ne = mul i64 %4, %i.nd
  %i.nf = zext i32 %13 to i64
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph, %bb.bd
  %.0114344 = phi i64 [ 0, %.lr.ph ], [ %i.oc, %bb.bd ] ; 4 uses
  %.0115343 = phi i64 [ %4, %.lr.ph ], [ %i.ob, %bb.bd ] ; 2 uses
  %.1124341 = phi i64 [ 0, %.lr.ph ], [ %i.oa, %bb.bd ] ; 3 uses
  %.1128340 = phi i64 [ 0, %.lr.ph ], [ %.pre-phi, %bb.bd ] ; 5 uses
  %i.ng = getelementptr inbounds nuw [72 x i8], ptr %i.nc, i64 %.0114344 ; 4 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 40
  %i.ni = load i64, ptr %i.nh, align 8, !tbaa !106 ; 2 uses
  %i.nj = mul i64 %i.ni, 100                      ; 2 uses
  %i.nk = icmp ult i64 %i.nj, %i.ne
  %i.nl = mul i64 %.0115343, %i.nf
  %i.nm = icmp ult i64 %i.nj, %i.nl
  %or.cond318 = select i1 %i.nk, i1 true, i1 %i.nm
  br i1 %or.cond318, label %.thread296._crit_edge, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.nn = getelementptr inbounds nuw i8, ptr %i.ng, i64 48
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !117 ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.ng, i64 56
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !117 ; 2 uses
  %i.nr = icmp eq ptr %i.no, %i.nq
  br i1 %i.nr, label %bb.bc, label %.thread296

bb.bc:                                            ; preds = %bb.bb
  %i.ns = add i64 %.1128340, 1                    ; 2 uses
  %i.nt = icmp ugt i64 %i.ns, %i.fd
  br i1 %i.nt, label %.thread296._crit_edge, label %bb.bd

.thread296:                                       ; preds = %bb.bb
  %i.nu = ptrtoint ptr %i.nq to i64
  %i.nv = ptrtoint ptr %i.no to i64
  %i.nw = sub i64 %i.nu, %i.nv
  %i.nx = ashr exact i64 %i.nw, 3
  %i.ny = add i64 %i.nx, %.1128340                ; 2 uses
  %i.nz = icmp ugt i64 %i.ny, %i.fd
  br i1 %i.nz, label %.thread296._crit_edge, label %bb.bd

bb.bd:                                            ; preds = %.thread296, %bb.bc
  %.pre-phi = phi i64 [ %i.ns, %bb.bc ], [ %i.ny, %.thread296 ] ; 2 uses
  %.pn.in = getelementptr inbounds nuw i8, ptr %i.ng, i64 32
  %.pn = load i64, ptr %.pn.in, align 8, !tbaa !116
  %i.oa = add i64 %.pn, %.1124341                 ; 2 uses
  %i.ob = sub i64 %.0115343, %i.ni
  %i.oc = add nuw i64 %.0114344, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.oc, %i.fd
  br i1 %exitcond.not, label %.lr.ph.i203, label %bb.ba, !llvm.loop !963

.thread296._crit_edge:                            ; preds = %bb.ba, %bb.bc, %.thread296
  %.not.i202 = icmp eq i64 %.0114344, 0
  br i1 %.not.i202, label %"_ZZN4llvm4bolt21IndirectCallPromotion18canPromoteCallsiteERKNS0_16BinaryBasicBlockERKNS_6MCInstERKSt6vectorINS1_8CallsiteESaIS9_EEmENK3$_0clEm.exit214", label %.lr.ph.i203

.lr.ph.i203:                                      ; preds = %bb.bd, %.thread296._crit_edge
  %.0116.lcssa.ph428 = phi i64 [ %.0114344, %.thread296._crit_edge ], [ %i.fd, %bb.bd ] ; 6 uses
  %.1124.lcssa.ph427 = phi i64 [ %.1124341, %.thread296._crit_edge ], [ %i.oa, %bb.bd ] ; 2 uses
  %.1128.lcssa.ph425 = phi i64 [ %.1128340, %.thread296._crit_edge ], [ %.pre-phi, %bb.bd ] ; 3 uses
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.of = load ptr, ptr %3, align 8, !tbaa !105   ; 10 uses
  br i1 %.not326, label %.lr.ph.split.i204, label %.lr.ph.split.us.i209

.lr.ph.split.us.i209:                             ; preds = %.lr.ph.i203
  %.promoted6.i210 = load i64, ptr %i.oe, align 8, !tbaa !676 ; 2 uses
  %i.og = add i64 %.0116.lcssa.ph428, -1
  %xtraiter = and i64 %.0116.lcssa.ph428, 3       ; 3 uses
  %i.oh = icmp ult i64 %i.og, 3
  br i1 %i.oh, label %.epil.preheader, label %.lr.ph.split.us.i209.new

.lr.ph.split.us.i209.new:                         ; preds = %.lr.ph.split.us.i209
  %unroll_iter = and i64 %.0116.lcssa.ph428, -4
  br label %bb.be

bb.be:                                            ; preds = %bb.be, %.lr.ph.split.us.i209.new
  %i.oi = phi i64 [ %.promoted6.i210, %.lr.ph.split.us.i209.new ], [ %i.oy, %bb.be ]
  %.05.us.i211 = phi i64 [ 0, %.lr.ph.split.us.i209.new ], [ %i.oz, %bb.be ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.split.us.i209.new ], [ %niter.next.3, %bb.be ]
  %i.oj = getelementptr inbounds nuw [72 x i8], ptr %i.of, i64 %.05.us.i211
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 40
  %i.ol = load i64, ptr %i.ok, align 8, !tbaa !106
  %i.om = add i64 %i.ol, %i.oi
  %i.on = getelementptr inbounds nuw [72 x i8], ptr %i.of, i64 %.05.us.i211
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 112
  %i.op = load i64, ptr %i.oo, align 8, !tbaa !106
  %i.oq = add i64 %i.op, %i.om
  %i.or = getelementptr inbounds nuw [72 x i8], ptr %i.of, i64 %.05.us.i211
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 184
  %i.ot = load i64, ptr %i.os, align 8, !tbaa !106
  %i.ou = add i64 %i.ot, %i.oq
  %i.ov = getelementptr inbounds nuw [72 x i8], ptr %i.of, i64 %.05.us.i211
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 256
  %i.ox = load i64, ptr %i.ow, align 8, !tbaa !106
  %i.oy = add i64 %i.ox, %i.ou                    ; 3 uses
  %i.oz = add nuw i64 %.05.us.i211, 4             ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %"_ZZN4llvm4bolt21IndirectCallPromotion18canPromoteCallsiteERKNS0_16BinaryBasicBlockERKNS_6MCInstERKSt6vectorINS1_8CallsiteESaIS9_EEmENK3$_0clEm.exit214.thread.unr-lcssa", label %bb.be, !llvm.loop !957

"_ZZN4llvm4bolt21IndirectCallPromotion18canPromoteCallsiteERKNS0_16BinaryBasicBlockERKNS_6MCInstERKSt6vectorINS1_8CallsiteESaIS9_EEmENK3$_0clEm.exit214.thread.unr-lcssa": ; preds = %bb.be
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZZN4llvm4bolt21IndirectCallPromotion18canPromoteCallsiteERKNS0_16BinaryBasicBlockERKNS_6MCInstERKSt6vectorINS1_8CallsiteESaIS9_EEmENK3$_0clEm.exit214.thread", label %.epil.preheader

.epil.preheader:                                  ; preds = %"_ZZN4llvm4bolt21IndirectCallPromotion18canPromoteCallsiteERKNS0_16BinaryBasicBlockERKNS_6MCInstERKSt6vectorINS1_8CallsiteESaIS9_EEmENK3$_0clEm.exit214.thread.unr-lcssa", %.lr.ph.split.us.i209
  %.epil.init = phi i64 [ %.promoted6.i210, %.lr.ph.split.us.i209 ], [ %i.oy, %"_ZZN4llvm4bolt21IndirectCallPromotion18canPromoteCallsiteERKNS0_16BinaryBasicBlockERKNS_6MCInstERKSt6vectorINS1_8CallsiteESaIS9_EEmENK3$_0clEm.exit214.thread.unr-lcssa" ]
  %.05.us.i211.epil.init = phi i64 [ 0, %.lr.ph.split.us.i209 ], [ %i.oz, %"_ZZN4llvm4bolt21IndirectCallPromotion18canPromoteCallsiteERKNS0_16BinaryBasicBlockERKNS_6MCInstERKSt6vectorINS1_8CallsiteESaIS9_EEmENK3$_0clEm.exit214.thread.unr-lcssa" ]
  %lcmp.mod460 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod460)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bf, %.epil.preheader
  %i.pa = phi i64 [ %.epil.init, %.epil.preheader ], [ %i.pe, %bb.bf ]
  %.05.us.i211.epil = phi i64 [ %.05.us.i211.epil.init, %.epil.preheader ], [ %i.pf, %bb.bf ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.bf ]
  %i.pb = getelementptr inbounds nuw [72 x i8], ptr %i.of, i64 %.05.us.i211.epil
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 40
  %i.pd = load i64, ptr %i.pc, align 8, !tbaa !106
  %i.pe = add i64 %i.pd, %i.pa                    ; 2 uses
  %i.pf = add nuw i64 %.05.us.i211.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %"_ZZN4llvm4bolt21IndirectCallPromotion18canPromoteCallsiteERKNS0_16BinaryBasicBlockERKNS_6MCInstERKSt6vectorINS1_8CallsiteESaIS9_EEmENK3$_0clEm.exit214.thread", label %bb.bf, !llvm.loop !964

"_ZZN4llvm4bolt21IndirectCallPromotion18canPromoteCallsiteERKNS0_16BinaryBasicBlockERKNS_6MCInstERKSt6vectorINS1_8CallsiteESaIS9_EEmENK3$_0clEm.exit214.thread": ; preds = %bb.bf, %"_ZZN4llvm4bolt21IndirectCallPromotion18canPromoteCallsiteERKNS0_16BinaryBasicBlockERKNS_6MCInstERKSt6vectorINS1_8CallsiteESaIS9_EEmENK3$_0clEm.exit214.thread.unr-lcssa"
  %.lcssa454 = phi i64 [ %i.oy, %"_ZZN4llvm4bolt21IndirectCallPromotion18canPromoteCallsiteERKNS0_16BinaryBasicBlockERKNS_6MCInstERKSt6vectorINS1_8CallsiteESaIS9_EEmENK3$_0clEm.exit214.thread.unr-lcssa" ], [ %i.pe, %bb.bf ]
  store i64 %.lcssa454, ptr %i.oe, align 8, !tbaa !676
  br i1 %i.fk, label %bb.bi, label %.critedge151.thread

.lr.ph.split.i204:                                ; preds = %.lr.ph.i203
  %.promoted.i205 = load i64, ptr %i.od, align 8, !tbaa !678 ; 2 uses
  %i.pg = add i64 %.0116.lcssa.ph428, -1
  %xtraiter462 = and i64 %.0116.lcssa.ph428, 3    ; 3 uses
  %i.ph = icmp ult i64 %i.pg, 3
  br i1 %i.ph, label %.epil.preheader461, label %.lr.ph.split.i204.new

.lr.ph.split.i204.new:                            ; preds = %.lr.ph.split.i204
  %unroll_iter469 = and i64 %.0116.lcssa.ph428, -4
  br label %bb.bh

"_ZZN4llvm4bolt21IndirectCallPromotion18canPromoteCallsiteERKNS0_16BinaryBasicBlockERKNS_6MCInstERKSt6vectorINS1_8CallsiteESaIS9_EEmENK3$_0clEm.exit214.thread298.unr-lcssa": ; preds = %bb.bh
  %lcmp.mod466.not = icmp eq i64 %xtraiter462, 0
  br i1 %lcmp.mod466.not, label %"_ZZN4llvm4bolt21IndirectCallPromotion18canPromoteCallsiteERKNS0_16BinaryBasicBlockERKNS_6MCInstERKSt6vectorINS1_8CallsiteESaIS9_EEmENK3$_0clEm.exit214.thread298", label %.epil.preheader461

.epil.preheader461:                               ; preds = %"_ZZN4llvm4bolt21IndirectCallPromotion18canPromoteCallsiteERKNS0_16BinaryBasicBlockERKNS_6MCInstERKSt6vectorINS1_8CallsiteESaIS9_EEmENK3$_0clEm.exit214.thread298.unr-lcssa", %.lr.ph.split.i204
  %.epil.init465 = phi i64 [ %.promoted.i205, %.lr.ph.split.i204 ], [ %i.qe, %"_ZZN4llvm4bolt21IndirectCallPromotion18canPromoteCallsiteERKNS0_16BinaryBasicBlockERKNS_6MCInstERKSt6vectorINS1_8CallsiteESaIS9_EEmENK3$_0clEm.exit214.thread298.unr-lcssa" ]
  %.05.i206.epil.init = phi i64 [ 0, %.lr.ph.split.i204 ], [ %i.qf, %"_ZZN4llvm4bolt21IndirectCallPromotion18canPromoteCallsiteERKNS0_16BinaryBasicBlockERKNS_6MCInstERKSt6vectorINS1_8CallsiteESaIS9_EEmENK3$_0clEm.exit214.thread298.unr-lcssa" ]
  %lcmp.mod468 = icmp ne i64 %xtraiter462, 0
  tail call void @llvm.assume(i1 %lcmp.mod468)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bg, %.epil.preheader461
  %i.pi = phi i64 [ %.epil.init465, %.epil.preheader461 ], [ %i.pm, %bb.bg ]
  %.05.i206.epil = phi i64 [ %.05.i206.epil.init, %.epil.preheader461 ], [ %i.pn, %bb.bg ] ; 2 uses
  %epil.iter463 = phi i64 [ 0, %.epil.preheader461 ], [ %epil.iter463.next, %bb.bg ]
  %i.pj = getelementptr inbounds nuw [72 x i8], ptr %i.of, i64 %.05.i206.epil
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 40
  %i.pl = load i64, ptr %i.pk, align 8, !tbaa !106
  %i.pm = add i64 %i.pl, %i.pi                    ; 2 uses
  %i.pn = add nuw i64 %.05.i206.epil, 1
  %epil.iter463.next = add i64 %epil.iter463, 1   ; 2 uses
  %epil.iter463.cmp.not = icmp eq i64 %epil.iter463.next, %xtraiter462
  br i1 %epil.iter463.cmp.not, label %"_ZZN4llvm4bolt21IndirectCallPromotion18canPromoteCallsiteERKNS0_16BinaryBasicBlockERKNS_6MCInstERKSt6vectorINS1_8CallsiteESaIS9_EEmENK3$_0clEm.exit214.thread298", label %bb.bg, !llvm.loop !965

"_ZZN4llvm4bolt21IndirectCallPromotion18canPromoteCallsiteERKNS0_16BinaryBasicBlockERKNS_6MCInstERKSt6vectorINS1_8CallsiteESaIS9_EEmENK3$_0clEm.exit214.thread298": ; preds = %bb.bg, %"_ZZN4llvm4bolt21IndirectCallPromotion18canPromoteCallsiteERKNS0_16BinaryBasicBlockERKNS_6MCInstERKSt6vectorINS1_8CallsiteESaIS9_EEmENK3$_0clEm.exit214.thread298.unr-lcssa"
  %.lcssa453 = phi i64 [ %i.qe, %"_ZZN4llvm4bolt21IndirectCallPromotion18canPromoteCallsiteERKNS0_16BinaryBasicBlockERKNS_6MCInstERKSt6vectorINS1_8CallsiteESaIS9_EEmENK3$_0clEm.exit214.thread298.unr-lcssa" ], [ %i.pm, %bb.bg ]
  store i64 %.lcssa453, ptr %i.od, align 8, !tbaa !678
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bh, %.lr.ph.split.i204.new
  %i.po = phi i64 [ %.promoted.i205, %.lr.ph.split.i204.new ], [ %i.qe, %bb.bh ]
  %.05.i206 = phi i64 [ 0, %.lr.ph.split.i204.new ], [ %i.qf, %bb.bh ] ; 5 uses
  %niter470 = phi i64 [ 0, %.lr.ph.split.i204.new ], [ %niter470.next.3, %bb.bh ]
  %i.pp = getelementptr inbounds nuw [72 x i8], ptr %i.of, i64 %.05.i206
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 40
  %i.pr = load i64, ptr %i.pq, align 8, !tbaa !106
  %i.ps = add i64 %i.pr, %i.po
  %i.pt = getelementptr inbounds nuw [72 x i8], ptr %i.of, i64 %.05.i206
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 112
  %i.pv = load i64, ptr %i.pu, align 8, !tbaa !106
  %i.pw = add i64 %i.pv, %i.ps
  %i.px = getelementptr inbounds nuw [72 x i8], ptr %i.of, i64 %.05.i206
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 184
  %i.pz = load i64, ptr %i.py, align 8, !tbaa !106
  %i.qa = add i64 %i.pz, %i.pw
  %i.qb = getelementptr inbounds nuw [72 x i8], ptr %i.of, i64 %.05.i206
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 256
  %i.qd = load i64, ptr %i.qc, align 8, !tbaa !106
  %i.qe = add i64 %i.qd, %i.qa                    ; 3 uses
  %i.qf = add nuw i64 %.05.i206, 4                ; 2 uses
  %niter470.next.3 = add i64 %niter470, 4         ; 2 uses
  %niter470.ncmp.3 = icmp eq i64 %niter470.next.3, %unroll_iter469
  br i1 %niter470.ncmp.3, label %"_ZZN4llvm4bolt21IndirectCallPromotion18canPromoteCallsiteERKNS0_16BinaryBasicBlockERKNS_6MCInstERKSt6vectorINS1_8CallsiteESaIS9_EEmENK3$_0clEm.exit214.thread298.unr-lcssa", label %bb.bh, !llvm.loop !957

"_ZZN4llvm4bolt21IndirectCallPromotion18canPromoteCallsiteERKNS0_16BinaryBasicBlockERKNS_6MCInstERKSt6vectorINS1_8CallsiteESaIS9_EEmENK3$_0clEm.exit214": ; preds = %.thread296._crit_edge
  br i1 %or.cond, label %bb.bi, label %.critedge151.thread

bb.bi:                                            ; preds = %"_ZZN4llvm4bolt21IndirectCallPromotion18canPromoteCallsiteERKNS0_16BinaryBasicBlockERKNS_6MCInstERKSt6vectorINS1_8CallsiteESaIS9_EEmENK3$_0clEm.exit214.thread298", %"_ZZN4llvm4bolt21IndirectCallPromotion18canPromoteCallsiteERKNS0_16BinaryBasicBlockERKNS_6MCInstERKSt6vectorINS1_8CallsiteESaIS9_EEmENK3$_0clEm.exit214.thread", %"_ZZN4llvm4bolt21IndirectCallPromotion18canPromoteCallsiteERKNS0_16BinaryBasicBlockERKNS_6MCInstERKSt6vectorINS1_8CallsiteESaIS9_EEmENK3$_0clEm.exit214"
  %.1124.lcssa.ph426 = phi i64 [ %.1124.lcssa.ph427, %"_ZZN4llvm4bolt21IndirectCallPromotion18canPromoteCallsiteERKNS0_16BinaryBasicBlockERKNS_6MCInstERKSt6vectorINS1_8CallsiteESaIS9_EEmENK3$_0clEm.exit214.thread298" ], [ %.1124.lcssa.ph427, %"_ZZN4llvm4bolt21IndirectCallPromotion18canPromoteCallsiteERKNS0_16BinaryBasicBlockERKNS_6MCInstERKSt6vectorINS1_8CallsiteESaIS9_EEmENK3$_0clEm.exit214.thread" ], [ %.1124341, %"_ZZN4llvm4bolt21IndirectCallPromotion18canPromoteCallsiteERKNS0_16BinaryBasicBlockERKNS_6MCInstERKSt6vectorINS1_8CallsiteESaIS9_EEmENK3$_0clEm.exit214" ]
  %.1128.lcssa.ph424 = phi i64 [ %.1128.lcssa.ph425, %"_ZZN4llvm4bolt21IndirectCallPromotion18canPromoteCallsiteERKNS0_16BinaryBasicBlockERKNS_6MCInstERKSt6vectorINS1_8CallsiteESaIS9_EEmENK3$_0clEm.exit214.thread298" ], [ %.1128.lcssa.ph425, %"_ZZN4llvm4bolt21IndirectCallPromotion18canPromoteCallsiteERKNS0_16BinaryBasicBlockERKNS_6MCInstERKSt6vectorINS1_8CallsiteESaIS9_EEmENK3$_0clEm.exit214.thread" ], [ %.1128340, %"_ZZN4llvm4bolt21IndirectCallPromotion18canPromoteCallsiteERKNS0_16BinaryBasicBlockERKNS_6MCInstERKSt6vectorINS1_8CallsiteESaIS9_EEmENK3$_0clEm.exit214" ]
  %i.qg = uitofp i64 %.1124.lcssa.ph426 to double
  %i.qh = fmul nnan double %i.qg, 1.000000e+02
end_hunk_1
