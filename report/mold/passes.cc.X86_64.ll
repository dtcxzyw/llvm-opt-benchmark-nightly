Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/passes.cc.X86_64?download=true
inline.NumInlined: 23987
inline.NumDeleted: 9635
loop-unroll.NumCompletelyUnrolled: 73
loop-unroll.NumRuntimeUnrolled: 108
loop-unroll.NumUnrolled: 182
begin_hunk_0_@_ZN4mold18print_dependenciesINS_6X86_64EEEvRNS_7ContextIT_EE:bb.a
  store ptr %i.ax, ptr %i.q, align 8, !tbaa !169
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.af, align 8, !tbaa !169
  %i.ay = load ptr, ptr %i.aj, align 8, !tbaa !597 ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.ak
  br i1 %i.az, label %_ZN4mold3OutINS_6X86_64EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.ba = load i64, ptr %i.ak, align 8, !tbaa !176
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #34
  br label %_ZN4mold3OutINS_6X86_64EED2Ev.exit

_ZN4mold3OutINS_6X86_64EED2Ev.exit:               ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.af, align 8, !tbaa !169
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ah) #16
  store ptr %i.g, ptr %i.a, align 8, !tbaa !169
  %i.bc = load i64, ptr %i.i, align 8
  %i.bd = getelementptr inbounds i8, ptr %i.a, i64 %i.bc
  store ptr %i.h, ptr %i.bd, align 8, !tbaa !169
  store i64 0, ptr %i.l, align 8, !tbaa !771
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  store ptr %0, ptr %5, align 8, !tbaa !578
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 13088
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !576 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 13096
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !576 ; 2 uses
  %i.bi = icmp eq ptr %i.bf, %i.bh
  br i1 %i.bi, label %._crit_edge116, label %.lr.ph115

.lr.ph115:                                        ; preds = %_ZN4mold3OutINS_6X86_64EED2Ev.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 9 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 12 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 4 uses
  br label %bb.b

._crit_edge116:                                   ; preds = %._crit_edge113, %_ZN4mold3OutINS_6X86_64EED2Ev.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 13112
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !662 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 13120
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !662 ; 2 uses
  %i.bu = icmp eq ptr %i.br, %i.bt
  br i1 %i.bu, label %._crit_edge124, label %.lr.ph123

bb.b:                                             ; preds = %.lr.ph115, %._crit_edge113
  %.sroa.090.0114 = phi ptr [ %i.bf, %.lr.ph115 ], [ %i.ck, %._crit_edge113 ] ; 2 uses
  %i.bv = load ptr, ptr %.sroa.090.0114, align 8, !tbaa !298 ; 9 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 448 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 456
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !892 ; 2 uses
  %i.bz = load ptr, ptr %i.bw, align 8, !tbaa !893 ; 2 uses
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = ashr exact i64 %i.cc, 2
  %.not101109 = icmp eq ptr %i.by, %i.bz
  br i1 %.not101109, label %._crit_edge113, label %.lr.ph112

.lr.ph112:                                        ; preds = %bb.b
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bv, i64 360
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bv, i64 368
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bv, i64 384
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bv, i64 56
  br label %bb.c

._crit_edge113:                                   ; preds = %_ZNK4mold17InputSectionTableINS_6X86_64EE8IteratordeEv.exit.thread, %bb.b
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.090.0114, i64 8 ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.bh
  br i1 %i.cl, label %._crit_edge116, label %bb.b

bb.c:                                             ; preds = %.lr.ph112, %_ZNK4mold17InputSectionTableINS_6X86_64EE8IteratordeEv.exit.thread
  %.sroa.4.0110 = phi i64 [ 0, %.lr.ph112 ], [ %i.jc, %_ZNK4mold17InputSectionTableINS_6X86_64EE8IteratordeEv.exit.thread ] ; 2 uses
  %i.cm = load ptr, ptr %i.bw, align 8, !tbaa !893
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.sroa.4.0110
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !894 ; 2 uses
  %or.cond.i.i = icmp slt i32 %i.co, 1
  br i1 %or.cond.i.i, label %_ZNK4mold17InputSectionTableINS_6X86_64EE8IteratordeEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cp = add nsw i32 %i.co, -1
  %i.cq = zext nneg i32 %i.cp to i64              ; 2 uses
  %i.cr = load ptr, ptr %i.ce, align 8, !tbaa !895, !noalias !2375 ; 2 uses
  %i.cs = load ptr, ptr %i.cf, align 8, !tbaa !185, !noalias !2375
  %i.ct = load ptr, ptr %i.cg, align 8, !tbaa !184, !noalias !2375
  %i.cu = ptrtoint ptr %i.cr to i64
  %i.cv = ptrtoint ptr %i.cs to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = sdiv exact i64 %i.cw, 80
  %i.cy = add nsw i64 %i.cx, %i.cq                ; 5 uses
  %i.cz = icmp sgt i64 %i.cy, -1
  br i1 %i.cz, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.da = icmp samesign ult i64 %i.cy, 6
  br i1 %i.da, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.db = getelementptr inbounds nuw [80 x i8], ptr %i.cr, i64 %i.cq
  br label %_ZNK4mold17InputSectionTableINS_6X86_64EE8IteratordeEv.exit

bb.g:                                             ; preds = %bb.e
  %i.dc = udiv i64 %i.cy, 6
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.dd = xor i64 %i.cy, -1
  %i.de = udiv i64 %i.dd, 6
  %i.df = xor i64 %i.de, -1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.dg = phi i64 [ %i.dc, %bb.g ], [ %i.df, %bb.h ] ; 2 uses
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.dg
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !183, !noalias !2375
  %.idx.i.i.i.i.i.i = mul i64 %i.dg, -480
  %i.dj = getelementptr i8, ptr %i.di, i64 %.idx.i.i.i.i.i.i
  %i.dk = getelementptr [80 x i8], ptr %i.dj, i64 %i.cy
  br label %_ZNK4mold17InputSectionTableINS_6X86_64EE8IteratordeEv.exit

_ZNK4mold17InputSectionTableINS_6X86_64EE8IteratordeEv.exit: ; preds = %bb.f, %bb.i
  %.0.i.i = phi ptr [ %i.db, %bb.f ], [ %i.dk, %bb.i ] ; 4 uses
  %.not49 = icmp eq ptr %.0.i.i, null
  br i1 %.not49, label %_ZNK4mold17InputSectionTableINS_6X86_64EE8IteratordeEv.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZNK4mold17InputSectionTableINS_6X86_64EE8IteratordeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  store ptr %i.bj, ptr %6, align 8, !tbaa !2377
  store i64 1, ptr %i.bk, align 8, !tbaa !2378
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bm, align 8, !tbaa !641
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i8 0, i64 16, i1 false)
  %i.dl = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 52
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !897 ; 2 uses
  %i.dn = icmp eq i32 %i.dm, -1
  br i1 %i.dn, label %._crit_edge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.do = load ptr, ptr %.0.i.i, align 8, !tbaa !898, !nonnull !598, !align !599 ; 6 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dq = sext i32 %i.dm to i64                   ; 2 uses
  %i.dr = load ptr, ptr %i.dp, align 8, !tbaa !899
  %i.ds = getelementptr inbounds nuw [64 x i8], ptr %i.dr, i64 %i.dq ; 5 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  %.0.copyload.i.i = load i32, ptr %i.dt, align 1
  %i.du = icmp eq i32 %.0.copyload.i.i, 1073741844
  br i1 %i.du, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.dv = getelementptr inbounds nuw i8, ptr %i.do, i64 728
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !900
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %i.dw, i64 %i.dq ; 7 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !902 ; 2 uses
  %.not.i = icmp eq ptr %i.dy, null
  br i1 %.not.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @_ZN4mold11decode_crelINS_6X86_64EEENS_10ExactArrayINS_6ElfRelIT_EEEERNS_7ContextIS4_EERNS_10ObjectFileIS4_EERKNS_7ElfShdrIS4_EE(ptr dead_on_unwind nonnull writable sret(%"class.mold::ExactArray") align 8 %3, ptr noundef nonnull align 8 dereferenceable(14448) %0, ptr noundef nonnull align 8 dereferenceable(992) %i.do, ptr noundef nonnull align 1 dereferenceable(64) %i.ds) #16
  %i.dz = load ptr, ptr %3, align 8, !tbaa !902
  store ptr null, ptr %3, align 8, !tbaa !902
  %i.ea = load ptr, ptr %i.dx, align 8, !tbaa !902 ; 2 uses
  store ptr %i.dz, ptr %i.dx, align 8, !tbaa !902
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ea, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4mold10ExactArrayINS_6ElfRelINS_6X86_64EEEEaSEOS4_.exit.thread.i, label %_ZN4mold10ExactArrayINS_6ElfRelINS_6X86_64EEEEaSEOS4_.exit.i

_ZN4mold10ExactArrayINS_6ElfRelINS_6X86_64EEEEaSEOS4_.exit.thread.i: ; preds = %bb.m
  %i.eb = load i64, ptr %i.bo, align 8, !tbaa !910
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store i64 %i.eb, ptr %i.ec, align 8, !tbaa !910
  br label %_ZN4mold10ExactArrayINS_6ElfRelINS_6X86_64EEEED2Ev.exit.i

_ZN4mold10ExactArrayINS_6ElfRelINS_6X86_64EEEEaSEOS4_.exit.i: ; preds = %bb.m
  call void @_ZdaPv(ptr noundef nonnull %i.ea) #34
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !902 ; 2 uses
  %i.ed = load i64, ptr %i.bo, align 8, !tbaa !910
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store i64 %i.ed, ptr %i.ee, align 8, !tbaa !910
  %.not.i.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i.i, label %_ZN4mold10ExactArrayINS_6ElfRelINS_6X86_64EEEED2Ev.exit.i, label %_ZNKSt14default_deleteIA_N4mold6ElfRelINS0_6X86_64EEEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i.i.i

_ZNKSt14default_deleteIA_N4mold6ElfRelINS0_6X86_64EEEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i.i.i: ; preds = %_ZN4mold10ExactArrayINS_6ElfRelINS_6X86_64EEEEaSEOS4_.exit.i
  call void @_ZdaPv(ptr noundef nonnull %.pre.i) #34
  br label %_ZN4mold10ExactArrayINS_6ElfRelINS_6X86_64EEEED2Ev.exit.i

_ZN4mold10ExactArrayINS_6ElfRelINS_6X86_64EEEED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIA_N4mold6ElfRelINS0_6X86_64EEEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i.i.i, %_ZN4mold10ExactArrayINS_6ElfRelINS_6X86_64EEEEaSEOS4_.exit.i, %_ZN4mold10ExactArrayINS_6ElfRelINS_6X86_64EEEEaSEOS4_.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %.pre10.i = load ptr, ptr %i.dx, align 8, !tbaa !902
  br label %bb.n

bb.n:                                             ; preds = %_ZN4mold10ExactArrayINS_6ElfRelINS_6X86_64EEEED2Ev.exit.i, %bb.l
  %i.ef = phi ptr [ %.pre10.i, %_ZN4mold10ExactArrayINS_6ElfRelINS_6X86_64EEEED2Ev.exit.i ], [ %i.dy, %bb.l ]
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !910
  br label %_ZNK4mold12InputSectionINS_6X86_64EE8get_relsERNS_7ContextIS1_EE.exit

bb.o:                                             ; preds = %bb.k
  %i.ei = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !911 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %.0.copyload.i.i.i = load i64, ptr %i.ek, align 1 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ds, i64 32
  %.0.copyload.i10.i.i = load i64, ptr %i.el, align 1 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 40
  %i.en = load i64, ptr %i.em, align 8, !tbaa !913
  %i.eo = add nuw nsw i64 %.0.copyload.i10.i.i, %.0.copyload.i.i.i
  %i.ep = icmp slt i64 %i.en, %i.eo
  br i1 %i.ep, label %bb.p, label %_ZN4mold9InputFileINS_6X86_64EE10get_stringERNS_7ContextIS1_EERKNS_7ElfShdrIS1_EE.exit.i

bb.p:                                             ; preds = %bb.o
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  call void @_ZN4mold5FatalINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(408) %1, ptr noundef nonnull align 8 dereferenceable(14448) %0) #16
  %i.er = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRNS_9InputFileIS1_EEEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %1, ptr noundef nonnull align 8 dereferenceable(312) %i.do)
  %i.es = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA35_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.er, ptr noundef nonnull align 1 dereferenceable(35) @.str.219)
  %i.et = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRKNS_7IntegerImLb1ELi8EEEEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.es, ptr noundef nonnull align 1 dereferenceable(8) %i.eq) ; 0 uses
  call void @_ZN4mold5FatalINS_6X86_64EED1Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %1) #37
  unreachable

_ZN4mold9InputFileINS_6X86_64EE10get_stringERNS_7ContextIS1_EERKNS_7ElfShdrIS1_EE.exit.i: ; preds = %bb.o
  %i.eu = urem i64 %.0.copyload.i10.i.i, 24
  %7 = udiv i64 %.0.copyload.i10.i.i, 24
  %.not.i66 = icmp eq i64 %i.eu, 0
  br i1 %.not.i66, label %_ZN4mold9InputFileINS_6X86_64EE8get_dataINS_6ElfRelIS1_EEEESt4spanIT_Lm18446744073709551615EERNS_7ContextIS1_EERKNS_7ElfShdrIS1_EE.exit, label %bb.q

bb.q:                                             ; preds = %_ZN4mold9InputFileINS_6X86_64EE10get_stringERNS_7ContextIS1_EERKNS_7ElfShdrIS1_EE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @_ZN4mold5FatalINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(408) %2, ptr noundef nonnull align 8 dereferenceable(14448) %0) #16
  %i.ev = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRNS_9InputFileIS1_EEEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %2, ptr noundef nonnull align 8 dereferenceable(312) %i.do)
  %i.ew = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA20_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.ev, ptr noundef nonnull align 1 dereferenceable(20) @.str.218) ; 0 uses
  call void @_ZN4mold5FatalINS_6X86_64EED1Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %2) #37
  unreachable

_ZN4mold9InputFileINS_6X86_64EE8get_dataINS_6ElfRelIS1_EEEESt4spanIT_Lm18446744073709551615EERNS_7ContextIS1_EERKNS_7ElfShdrIS1_EE.exit: ; preds = %_ZN4mold9InputFileINS_6X86_64EE10get_stringERNS_7ContextIS1_EERKNS_7ElfShdrIS1_EE.exit.i
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ej, i64 32
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !914
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %.0.copyload.i.i.i
  br label %_ZNK4mold12InputSectionINS_6X86_64EE8get_relsERNS_7ContextIS1_EE.exit

_ZNK4mold12InputSectionINS_6X86_64EE8get_relsERNS_7ContextIS1_EE.exit: ; preds = %bb.n, %_ZN4mold9InputFileINS_6X86_64EE8get_dataINS_6ElfRelIS1_EEEESt4spanIT_Lm18446744073709551615EERNS_7ContextIS1_EERKNS_7ElfShdrIS1_EE.exit
  %.sroa.0.0.i = phi ptr [ %i.ez, %_ZN4mold9InputFileINS_6X86_64EE8get_dataINS_6ElfRelIS1_EEEESt4spanIT_Lm18446744073709551615EERNS_7ContextIS1_EERKNS_7ElfShdrIS1_EE.exit ], [ %i.ef, %bb.n ] ; 2 uses
  %.sroa.4.0.i = phi i64 [ %7, %_ZN4mold9InputFileINS_6X86_64EE8get_dataINS_6ElfRelIS1_EEEESt4spanIT_Lm18446744073709551615EERNS_7ContextIS1_EERKNS_7ElfShdrIS1_EE.exit ], [ %i.eh, %bb.n ] ; 2 uses
  %.idx = mul nuw nsw i64 %.sroa.4.0.i, 24
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %.idx
  %i.fb = icmp eq i64 %.sroa.4.0.i, 0
  br i1 %i.fb, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.critedge, %bb.j, %_ZNK4mold12InputSectionINS_6X86_64EE8get_relsERNS_7ContextIS1_EE.exit
  %i.fc = load ptr, ptr %i.bl, align 8, !tbaa !2379 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.fc, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIPvS0_SaIS0_ENSt8__detail9_IdentityESt8equal_toIS0_ESt4hashIS0_ENS2_18_Mod_range_hashingENS2_20_Default_ranged_hashENS2_20_Prime_rehash_policyENS2_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.fd, %.lr.ph.i.i.i.i ], [ %i.fc, %._crit_edge ] ; 2 uses
  %i.fd = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !781 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 16) #34
  %.not.i.i.i.i = icmp eq ptr %i.fd, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIPvS0_SaIS0_ENSt8__detail9_IdentityESt8equal_toIS0_ESt4hashIS0_ENS2_18_Mod_range_hashingENS2_20_Default_ranged_hashENS2_20_Prime_rehash_policyENS2_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2370

_ZNSt10_HashtableIPvS0_SaIS0_ENSt8__detail9_IdentityESt8equal_toIS0_ESt4hashIS0_ENS2_18_Mod_range_hashingENS2_20_Default_ranged_hashENS2_20_Prime_rehash_policyENS2_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %._crit_edge
  %i.fe = load ptr, ptr %6, align 8, !tbaa !2377
  %i.ff = load i64, ptr %i.bk, align 8, !tbaa !2378
  %i.fg = shl i64 %i.ff, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.fe, i8 0, i64 %i.fg, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, i8 0, i64 16, i1 false)
  %i.fh = load ptr, ptr %6, align 8, !tbaa !2377  ; 2 uses
  %i.fi = icmp eq ptr %i.fh, %i.bj
  br i1 %i.fi, label %_ZNSt13unordered_setIPvSt4hashIS0_ESt8equal_toIS0_ESaIS0_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt10_HashtableIPvS0_SaIS0_ENSt8__detail9_IdentityESt8equal_toIS0_ESt4hashIS0_ENS2_18_Mod_range_hashingENS2_20_Default_ranged_hashENS2_20_Prime_rehash_policyENS2_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i
  %i.fj = load i64, ptr %i.bk, align 8, !tbaa !2378
  %i.fk = shl i64 %i.fj, 3
  call void @_ZdlPvm(ptr noundef %i.fh, i64 noundef %i.fk) #34
  br label %_ZNSt13unordered_setIPvSt4hashIS0_ESt8equal_toIS0_ESaIS0_EED2Ev.exit

_ZNSt13unordered_setIPvSt4hashIS0_ESt8equal_toIS0_ESaIS0_EED2Ev.exit: ; preds = %_ZNSt10_HashtableIPvS0_SaIS0_ENSt8__detail9_IdentityESt8equal_toIS0_ESt4hashIS0_ENS2_18_Mod_range_hashingENS2_20_Default_ranged_hashENS2_20_Prime_rehash_policyENS2_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %_ZNK4mold17InputSectionTableINS_6X86_64EE8IteratordeEv.exit.thread

.lr.ph:                                           ; preds = %_ZNK4mold12InputSectionINS_6X86_64EE8get_relsERNS_7ContextIS1_EE.exit, %.critedge
  %.sroa.080.0107 = phi ptr [ %i.ja, %.critedge ], [ %.sroa.0.0.i, %_ZNK4mold12InputSectionINS_6X86_64EE8get_relsERNS_7ContextIS1_EE.exit ] ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.080.0107, i64 8
  %.0.copyload.i = load i32, ptr %i.fl, align 1
  %i.fm = icmp eq i32 %.0.copyload.i, 0
  br i1 %i.fm, label %.critedge, label %bb.s

bb.s:                                             ; preds = %.lr.ph
  %i.fn = load i64, ptr %i.ch, align 8, !tbaa !915
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.080.0107, i64 12
  %.0.copyload.i57 = load i32, ptr %i.fo, align 1
  %i.fp = zext i32 %.0.copyload.i57 to i64        ; 3 uses
  %.not50 = icmp ugt i64 %i.fn, %i.fp
  br i1 %.not50, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.fq = load ptr, ptr %i.ci, align 8, !tbaa !861
  %i.fr = getelementptr inbounds nuw [24 x i8], ptr %i.fq, i64 %i.fp ; 2 uses
  %i.fs = load ptr, ptr %i.cj, align 8, !tbaa !916
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %i.fp ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !573
  %i.fv = ptrtoint ptr %i.ft to i64
  %i.fw = sext i32 %i.fu to i64
  %i.fx = shl nsw i64 %i.fw, 2
  %i.fy = add nsw i64 %i.fx, %i.fv                ; 4 uses
  %i.fz = inttoptr i64 %i.fy to ptr               ; 6 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fr, i64 6
  %.0.copyload.i.i60 = load i16, ptr %i.ga, align 1
  %i.gb = icmp eq i16 %.0.copyload.i.i60, 0
  br i1 %i.gb, label %bb.u, label %.critedge

bb.u:                                             ; preds = %bb.t
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 16 ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !714 ; 2 uses
  %.not.i61 = icmp eq i32 %i.gd, 0
  %i.ge = ptrtoint ptr %i.gc to i64
  %i.gf = sext i32 %i.gd to i64
  %i.gg = shl nsw i64 %i.gf, 2
  %i.gh = add nsw i64 %i.gg, %i.ge
  %i.gi = inttoptr i64 %i.gh to ptr
  %i.gj = select i1 %.not.i61, ptr null, ptr %i.gi ; 2 uses
  %.not51 = icmp eq ptr %i.gj, null
  %.not52 = icmp eq ptr %i.gj, %i.bv
  %or.cond = or i1 %.not51, %.not52
  br i1 %or.cond, label %.critedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gk = load i64, ptr %i.bp, align 8, !tbaa !2380
  %.not.not.i = icmp eq i64 %i.gk, 0
  br i1 %.not.not.i, label %.preheader, label %.thread31.i

.thread31.i:                                      ; preds = %bb.v
  %i.gl = load i64, ptr %i.bk, align 8, !tbaa !2378 ; 2 uses
  %i.gm = urem i64 %i.fy, %i.gl                   ; 5 uses
  %i.gn = load ptr, ptr %6, align 8, !tbaa !2377
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %i.gm
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !917 ; 2 uses
  %.not.i.i.i69 = icmp eq ptr %i.gp, null
  br i1 %.not.i.i.i69, label %.critedge.i, label %bb.y

.preheader:                                       ; preds = %bb.v, %bb.w
  %.sroa.025.0.in.i = phi ptr [ %.sroa.025.0.i, %bb.w ], [ %i.bl, %bb.v ]
  %.sroa.025.0.i = load ptr, ptr %.sroa.025.0.in.i, align 8, !tbaa !781 ; 3 uses
  %i.gq = icmp eq ptr %.sroa.025.0.i, null
  br i1 %i.gq, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.preheader
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.025.0.i, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !671
  %i.gt = icmp eq ptr %i.gs, %i.fz
  br i1 %i.gt, label %.critedge, label %.preheader, !llvm.loop !2371

bb.x:                                             ; preds = %.preheader
  %i.gu = load i64, ptr %i.bk, align 8, !tbaa !2378
  %i.gv = urem i64 %i.fy, %i.gu
  br label %.critedge.i

bb.y:                                             ; preds = %.thread31.i
  %i.gw = load ptr, ptr %i.gp, align 8, !tbaa !781 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !671
  %i.gz = icmp eq ptr %i.gy, %i.fz
  br i1 %i.gz, label %.critedge, label %.lr.ph.i.i.i

bb.z:                                             ; preds = %bb.aa
  %i.ha = icmp eq ptr %i.hd, %i.fz
  br i1 %i.ha, label %.critedge, label %.lr.ph.i.i.i, !llvm.loop !2372

.lr.ph.i.i.i:                                     ; preds = %bb.y, %bb.z
  %.020.i.i.i = phi ptr [ %i.hb, %bb.z ], [ %i.gw, %bb.y ]
  %i.hb = load ptr, ptr %.020.i.i.i, align 8, !tbaa !781 ; 3 uses
  %.not18.i.i.i = icmp eq ptr %i.hb, null
  br i1 %.not18.i.i.i, label %.critedge.i, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.i.i
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !671 ; 2 uses
  %i.he = ptrtoint ptr %i.hd to i64
  %i.hf = urem i64 %i.he, %i.gl
  %.not19.i.i.i = icmp eq i64 %i.hf, %i.gm
  br i1 %.not19.i.i.i, label %bb.z, label %..loopexit_crit_edge21.i.i.i, !llvm.loop !2372

..loopexit_crit_edge21.i.i.i:                     ; preds = %bb.aa
  br label %.critedge.i, !llvm.loop !2372

.critedge.i:                                      ; preds = %.lr.ph.i.i.i, %..loopexit_crit_edge21.i.i.i, %bb.x, %.thread31.i
  %i.hg = phi i64 [ %i.gv, %bb.x ], [ %i.gm, %.thread31.i ], [ %i.gm, %..loopexit_crit_edge21.i.i.i ], [ %i.gm, %.lr.ph.i.i.i ]
  %i.hh = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #36 ; 7 uses
  store ptr null, ptr %i.hh, align 8, !tbaa !781
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  store ptr %i.fz, ptr %i.hi, align 8, !tbaa !671
  %i.hj = load i64, ptr %i.bk, align 8, !tbaa !2378
  %i.hk = load i64, ptr %i.bp, align 8, !tbaa !2380
  %i.hl = call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i64 noundef %i.hj, i64 noundef %i.hk, i64 noundef 1) #16 ; 2 uses
  %i.hm = extractvalue { i8, i64 } %i.hl, 0
  %i.hn = trunc i8 %i.hm to i1
  br i1 %i.hn, label %bb.ab, label %.critedge.i._crit_edge

.critedge.i._crit_edge:                           ; preds = %.critedge.i
  %.pre = load ptr, ptr %6, align 8, !tbaa !2377
  br label %bb.am

bb.ab:                                            ; preds = %.critedge.i
  %i.ho = extractvalue { i8, i64 } %i.hl, 1       ; 7 uses
  %i.hp = icmp eq i64 %i.ho, 1
  br i1 %i.hp, label %bb.ac, label %bb.ad, !prof !609

bb.ac:                                            ; preds = %bb.ab
  store ptr null, ptr %i.bj, align 8, !tbaa !2381
  br label %_ZNSt10_HashtableIPvS0_SaIS0_ENSt8__detail9_IdentityESt8equal_toIS0_ESt4hashIS0_ENS2_18_Mod_range_hashingENS2_20_Default_ranged_hashENS2_20_Prime_rehash_policyENS2_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit.i

bb.ad:                                            ; preds = %bb.ab
  %i.hq = icmp ugt i64 %i.ho, 1152921504606846975
  br i1 %i.hq, label %bb.ae, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIPvLb0EEEEE19_M_allocate_bucketsEm.exit.i.i, !prof !609

bb.ae:                                            ; preds = %bb.ad
  %i.hr = icmp ugt i64 %i.ho, 2305843009213693951
  br i1 %i.hr, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void @_ZSt28__throw_bad_array_new_lengthv() #37
  unreachable

bb.ag:                                            ; preds = %bb.ae
  call void @_ZSt17__throw_bad_allocv() #37
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIPvLb0EEEEE19_M_allocate_bucketsEm.exit.i.i: ; preds = %bb.ad
  %i.hs = shl nuw nsw i64 %i.ho, 3                ; 2 uses
  %i.ht = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hs) #36 ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ht, i8 0, i64 %i.hs, i1 false)
  br label %_ZNSt10_HashtableIPvS0_SaIS0_ENSt8__detail9_IdentityESt8equal_toIS0_ESt4hashIS0_ENS2_18_Mod_range_hashingENS2_20_Default_ranged_hashENS2_20_Prime_rehash_policyENS2_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit.i

_ZNSt10_HashtableIPvS0_SaIS0_ENSt8__detail9_IdentityESt8equal_toIS0_ESt4hashIS0_ENS2_18_Mod_range_hashingENS2_20_Default_ranged_hashENS2_20_Prime_rehash_policyENS2_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIPvLb0EEEEE19_M_allocate_bucketsEm.exit.i.i, %bb.ac
  %.0.i.i72 = phi ptr [ %i.bj, %bb.ac ], [ %i.ht, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIPvLb0EEEEE19_M_allocate_bucketsEm.exit.i.i ] ; 4 uses
  %i.hu = load ptr, ptr %i.bl, align 8, !tbaa !2379 ; 2 uses
  store ptr null, ptr %i.bl, align 8, !tbaa !2379
  %.not29.i = icmp eq ptr %i.hu, null
  br i1 %.not29.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt10_HashtableIPvS0_SaIS0_ENSt8__detail9_IdentityESt8equal_toIS0_ESt4hashIS0_ENS2_18_Mod_range_hashingENS2_20_Default_ranged_hashENS2_20_Prime_rehash_policyENS2_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit.i, %bb.ak
  %.031.i = phi i64 [ %.1.i, %bb.ak ], [ 0, %_ZNSt10_HashtableIPvS0_SaIS0_ENSt8__detail9_IdentityESt8equal_toIS0_ESt4hashIS0_ENS2_18_Mod_range_hashingENS2_20_Default_ranged_hashENS2_20_Prime_rehash_policyENS2_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit.i ] ; 2 uses
  %.02530.i = phi ptr [ %i.hv, %bb.ak ], [ %i.hu, %_ZNSt10_HashtableIPvS0_SaIS0_ENSt8__detail9_IdentityESt8equal_toIS0_ESt4hashIS0_ENS2_18_Mod_range_hashingENS2_20_Default_ranged_hashENS2_20_Prime_rehash_policyENS2_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit.i ] ; 8 uses
  %i.hv = load ptr, ptr %.02530.i, align 8, !tbaa !781 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.02530.i, i64 8
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !671
end_hunk_0
begin_hunk_1_@_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIA_hSt14default_deleteIS4_EENS1_23cache_aligned_allocatorIS7_EEE14create_segmentEPSt6atomicIPS7_Emm:bb.a
  %i.cy = shl i32 %.sroa.0.09.us.i26, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i27

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i27: ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i29, %bb.n
  %.sroa.0.1.us.i28 = phi i32 [ %i.cy, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i29 ], [ %.sroa.0.09.us.i26, %bb.n ]
  %i.cz = load atomic ptr, ptr %i.co acquire, align 8
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %.lr.ph.i25, label %_ZN3tbb6detail2d015spin_wait_whileIPSt10unique_ptrIA_hSt14default_deleteIS4_EEZNS1_18spin_wait_while_eqIS8_S8_EET_RKSt6atomicISA_ET0_St12memory_orderEUlS8_E_EESA_SE_SF_SG_.exit, !llvm.loop !66

_ZN3tbb6detail2d015spin_wait_whileIPSt10unique_ptrIA_hSt14default_deleteIS4_EEZNS1_18spin_wait_while_eqIS8_S8_EET_RKSt6atomicISA_ET0_St12memory_orderEUlS8_E_EESA_SE_SF_SG_.exit.loopexit.unr-lcssa: ; preds = %.lr.ph89
  %lcmp.mod118.not = icmp eq i64 %xtraiter116, 0
  br i1 %lcmp.mod118.not, label %_ZN3tbb6detail2d015spin_wait_whileIPSt10unique_ptrIA_hSt14default_deleteIS4_EEZNS1_18spin_wait_while_eqIS8_S8_EET_RKSt6atomicISA_ET0_St12memory_orderEUlS8_E_EESA_SE_SF_SG_.exit, label %.lr.ph89.epil.preheader

.lr.ph89.epil.preheader:                          ; preds = %_ZN3tbb6detail2d015spin_wait_whileIPSt10unique_ptrIA_hSt14default_deleteIS4_EEZNS1_18spin_wait_while_eqIS8_S8_EET_RKSt6atomicISA_ET0_St12memory_orderEUlS8_E_EESA_SE_SF_SG_.exit.loopexit.unr-lcssa, %.preheader
  %.088.epil.init = phi i64 [ 1, %.preheader ], [ %i.bo, %_ZN3tbb6detail2d015spin_wait_whileIPSt10unique_ptrIA_hSt14default_deleteIS4_EEZNS1_18spin_wait_while_eqIS8_S8_EET_RKSt6atomicISA_ET0_St12memory_orderEUlS8_E_EESA_SE_SF_SG_.exit.loopexit.unr-lcssa ]
  %lcmp.mod119 = icmp ne i64 %xtraiter116, 0
  call void @llvm.assume(i1 %lcmp.mod119)
  br label %.lr.ph89.epil

.lr.ph89.epil:                                    ; preds = %.lr.ph89.epil, %.lr.ph89.epil.preheader
  %.088.epil = phi i64 [ %i.dc, %.lr.ph89.epil ], [ %.088.epil.init, %.lr.ph89.epil.preheader ] ; 2 uses
  %epil.iter117 = phi i64 [ %epil.iter117.next, %.lr.ph89.epil ], [ 0, %.lr.ph89.epil.preheader ]
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.088.epil
  store atomic ptr %i.v, ptr %i.db release, align 8
  %i.dc = add nuw nsw i64 %.088.epil, 1
  %epil.iter117.next = add i64 %epil.iter117, 1   ; 2 uses
  %epil.iter117.cmp.not = icmp eq i64 %epil.iter117.next, %xtraiter116
  br i1 %epil.iter117.cmp.not, label %_ZN3tbb6detail2d015spin_wait_whileIPSt10unique_ptrIA_hSt14default_deleteIS4_EEZNS1_18spin_wait_while_eqIS8_S8_EET_RKSt6atomicISA_ET0_St12memory_orderEUlS8_E_EESA_SE_SF_SG_.exit, label %.lr.ph89.epil, !llvm.loop !3422

_ZN3tbb6detail2d015spin_wait_whileIPSt10unique_ptrIA_hSt14default_deleteIS4_EEZNS1_18spin_wait_while_eqIS8_S8_EET_RKSt6atomicISA_ET0_St12memory_orderEUlS8_E_EESA_SE_SF_SG_.exit: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i27, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i18, %_ZN3tbb6detail2d015spin_wait_whileIPSt10unique_ptrIA_hSt14default_deleteIS4_EEZNS1_18spin_wait_while_eqIS8_S8_EET_RKSt6atomicISA_ET0_St12memory_orderEUlS8_E_EESA_SE_SF_SG_.exit.loopexit.unr-lcssa, %.lr.ph89.epil, %_ZN3tbb6detail2d113segment_tableISt10unique_ptrIA_hSt14default_deleteIS4_EENS1_23cache_aligned_allocatorIS7_EENS1_17concurrent_vectorIS7_S9_EELm3EE25extend_table_if_necessaryERPSt6atomicIPS7_Emm.exit, %bb.m, %_ZNSt6atomicIPSt10unique_ptrIA_hSt14default_deleteIS1_EEE23compare_exchange_strongERS5_S5_St12memory_order.exit, %bb.h, %bb.c, %bb.l
  ret ptr null
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local ptr @_ZNSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_mESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS5_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !862
  %.not = icmp ugt i64 %i.b, 20
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.06.014 = load ptr, ptr %i.c, align 8, !tbaa !781 ; 3 uses
  %i.d = icmp eq ptr %.sroa.06.014, null
  br i1 %i.d, label %_ZNKSt8__detail15_Hashtable_baseISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS4_mENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS6_RKNS_16_Hash_node_valueIS7_Lb1EEE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %.sroa.01.0.copyload.i.i = load i64, ptr %1, align 8, !tbaa !593
  %.sroa.01.0.copyload.i.i.fr = freeze i64 %.sroa.01.0.copyload.i.i ; 3 uses
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.22.0.copyload.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !tbaa !613
  %i.e = icmp eq i64 %.sroa.01.0.copyload.i.i.fr, 0
  br i1 %i.e, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.c
  %.sroa.06.015.us = phi ptr [ %.sroa.06.0.us, %bb.c ], [ %.sroa.06.014, %.lr.ph ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.06.015.us, i64 8
  %.sroa.0.0.copyload.i.i.us = load i64, ptr %i.f, align 8, !tbaa !593
  %i.g = icmp eq i64 %.sroa.0.0.copyload.i.i.us, 0
  br i1 %i.g, label %_ZNKSt8__detail15_Hashtable_baseISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS4_mENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS6_RKNS_16_Hash_node_valueIS7_Lb1EEE.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.us
  %.sroa.06.0.us = load ptr, ptr %.sroa.06.015.us, align 8, !tbaa !781 ; 2 uses
  %i.h = icmp eq ptr %.sroa.06.0.us, null
  br i1 %i.h, label %_ZNKSt8__detail15_Hashtable_baseISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS4_mENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS6_RKNS_16_Hash_node_valueIS7_Lb1EEE.exit, label %.lr.ph.split.us, !llvm.loop !14

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.d
  %.sroa.06.015 = phi ptr [ %.sroa.06.0, %bb.d ], [ %.sroa.06.014, %.lr.ph ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.015, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.i, align 8, !tbaa !593
  %i.j = icmp eq i64 %.sroa.01.0.copyload.i.i.fr, %.sroa.0.0.copyload.i.i
  br i1 %i.j, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, label %bb.d

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %.lr.ph.split
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.015, i64 16
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !613
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %.sroa.22.0.copyload.i.i, ptr %.sroa.2.0.copyload.i.i, i64 %.sroa.01.0.copyload.i.i.fr)
  %i.k = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.k, label %_ZNKSt8__detail15_Hashtable_baseISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS4_mENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS6_RKNS_16_Hash_node_valueIS7_Lb1EEE.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %.sroa.06.0 = load ptr, ptr %.sroa.06.015, align 8, !tbaa !781 ; 2 uses
  %i.l = icmp eq ptr %.sroa.06.0, null
  br i1 %i.l, label %_ZNKSt8__detail15_Hashtable_baseISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS4_mENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS6_RKNS_16_Hash_node_valueIS7_Lb1EEE.exit, label %.lr.ph.split, !llvm.loop !14

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !604
  %i.o = load i64, ptr %1, align 8, !tbaa !603
  %i.p = tail call noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.n, i64 noundef %i.o, i64 noundef 3339675911) #16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1021 ; 3 uses
  %i.s = urem i64 %i.p, %i.r                      ; 3 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !1022
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !917  ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %_ZNKSt8__detail15_Hashtable_baseISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS4_mENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS6_RKNS_16_Hash_node_valueIS7_Lb1EEE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !781  ; 3 uses
  %.sroa.01.0.copyload.i.i.i.i.i = load i64, ptr %1, align 8
  %.sroa.01.0.copyload.i.i.i.fr.i.i = freeze i64 %.sroa.01.0.copyload.i.i.i.i.i ; 3 uses
  %.sroa.22.0.copyload.i.i.i.i.i = load ptr, ptr %i.m, align 8
  %i.x = icmp eq i64 %.sroa.01.0.copyload.i.i.i.fr.i.i, 0
  %.phi.trans.insert25.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %.pre26.i.i = load i64, ptr %.phi.trans.insert25.i.i, align 8, !tbaa !942 ; 2 uses
  br i1 %i.x, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.f, %bb.i
  %i.y = phi i64 [ %i.ae, %bb.i ], [ %.pre26.i.i, %bb.f ]
  %.0.us.i.i = phi ptr [ %i.ac, %bb.i ], [ %i.w, %bb.f ] ; 3 uses
  %i.z = icmp eq i64 %i.p, %i.y
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split.us.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.us.i.i, i64 8
  %.sroa.0.0.copyload.i.i.i.us.i.i = load i64, ptr %i.aa, align 8, !tbaa !593
  %i.ab = icmp eq i64 %.sroa.0.0.copyload.i.i.i.us.i.i, 0
  br i1 %i.ab, label %_ZNKSt8__detail15_Hashtable_baseISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS4_mENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS6_RKNS_16_Hash_node_valueIS7_Lb1EEE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %.split.us.i.i
  %i.ac = load ptr, ptr %.0.us.i.i, align 8, !tbaa !781 ; 3 uses
  %.not18.us.i.i = icmp eq ptr %i.ac, null
  br i1 %.not18.us.i.i, label %_ZNKSt8__detail15_Hashtable_baseISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS4_mENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS6_RKNS_16_Hash_node_valueIS7_Lb1EEE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !942 ; 2 uses
  %i.af = urem i64 %i.ae, %i.r
  %.not19.us.i.i = icmp eq i64 %i.af, %i.s
  br i1 %.not19.us.i.i, label %.split.us.i.i, label %_ZNKSt8__detail15_Hashtable_baseISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS4_mENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS6_RKNS_16_Hash_node_valueIS7_Lb1EEE.exit, !llvm.loop !15

.split.i.i:                                       ; preds = %bb.f, %bb.l
  %i.ag = phi i64 [ %i.an, %bb.l ], [ %.pre26.i.i, %bb.f ]
  %.0.i.i = phi ptr [ %i.al, %bb.l ], [ %i.w, %bb.f ] ; 4 uses
  %i.ah = icmp eq i64 %i.p, %i.ag
  br i1 %i.ah, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.split.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.ai, align 8, !tbaa !593
  %i.aj = icmp eq i64 %.sroa.01.0.copyload.i.i.i.fr.i.i, %.sroa.0.0.copyload.i.i.i.i.i
  br i1 %i.aj, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, label %bb.k

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %bb.j
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %.sroa.2.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !613
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %.sroa.22.0.copyload.i.i.i.i.i, ptr %.sroa.2.0.copyload.i.i.i.i.i, i64 %.sroa.01.0.copyload.i.i.i.fr.i.i)
  %i.ak = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.ak, label %_ZNKSt8__detail15_Hashtable_baseISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS4_mENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS6_RKNS_16_Hash_node_valueIS7_Lb1EEE.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %bb.j, %.split.i.i
  %i.al = load ptr, ptr %.0.i.i, align 8, !tbaa !781 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.al, null
  br i1 %.not18.i.i, label %_ZNKSt8__detail15_Hashtable_baseISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS4_mENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS6_RKNS_16_Hash_node_valueIS7_Lb1EEE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load i64, ptr %i.am, align 8, !tbaa !942 ; 2 uses
  %i.ao = urem i64 %i.an, %i.r
  %.not19.i.i = icmp eq i64 %i.ao, %i.s
  br i1 %.not19.i.i, label %.split.i.i, label %_ZNKSt8__detail15_Hashtable_baseISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS4_mENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS6_RKNS_16_Hash_node_valueIS7_Lb1EEE.exit, !llvm.loop !15

_ZNKSt8__detail15_Hashtable_baseISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS4_mENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS6_RKNS_16_Hash_node_valueIS7_Lb1EEE.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.d, %.lr.ph.split.us, %bb.c, %bb.l, %bb.k, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %bb.i, %bb.h, %bb.g, %bb.b, %bb.e
  %.sroa.06.1 = phi ptr [ null, %bb.b ], [ null, %bb.e ], [ null, %bb.l ], [ null, %bb.c ], [ null, %bb.h ], [ %.0.us.i.i, %bb.g ], [ null, %bb.i ], [ null, %bb.k ], [ %.0.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ], [ %.sroa.06.015.us, %.lr.ph.split.us ], [ null, %bb.d ], [ %.sroa.06.015, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ]
  ret ptr %.sroa.06.1
}

declare void @_ZN4mold11decode_crelINS_6X86_64EEENS_10ExactArrayINS_6ElfRelIT_EEEERNS_7ContextIS4_EERNS_10ObjectFileIS4_EERKNS_7ElfShdrIS4_EE(ptr dead_on_unwind writable sret(%"class.mold::ExactArray") align 8, ptr noundef nonnull align 8 dereferenceable(14448), ptr noundef nonnull align 8 dereferenceable(992), ptr noundef nonnull align 1 dereferenceable(64)) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind
define linkonce_odr dso_local { ptr, i64 } @_ZN4mold9InputFileINS_6X86_64EE8get_dataINS_6ElfRelIS1_EEEESt4spanIT_Lm18446744073709551615EERNS_7ContextIS1_EERKNS_7ElfShdrIS1_EE(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1, ptr noundef nonnull align 1 dereferenceable(64) %2) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %3 = alloca %"class.mold::Fatal", align 8       ; 4 uses
  %4 = alloca %"class.mold::Fatal", align 8       ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !911  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.0.copyload.i.i = load i64, ptr %i.c, align 1  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.0.copyload.i10.i = load i64, ptr %i.d, align 1 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !913
  %i.g = add nuw nsw i64 %.0.copyload.i10.i, %.0.copyload.i.i
  %i.h = icmp slt i64 %i.f, %i.g
  br i1 %i.h, label %bb.b, label %_ZN4mold9InputFileINS_6X86_64EE10get_stringERNS_7ContextIS1_EERKNS_7ElfShdrIS1_EE.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @_ZN4mold5FatalINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(408) %3, ptr noundef nonnull align 8 dereferenceable(14448) %1) #16
  %i.i = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRNS_9InputFileIS1_EEEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %3, ptr noundef nonnull align 8 dereferenceable(312) %0)
  %i.j = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA35_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.i, ptr noundef nonnull align 1 dereferenceable(35) @.str.219)
  %i.k = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRKNS_7IntegerImLb1ELi8EEEEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.j, ptr noundef nonnull align 1 dereferenceable(8) %i.c) ; 0 uses
  call void @_ZN4mold5FatalINS_6X86_64EED1Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %3) #37
  unreachable

_ZN4mold9InputFileINS_6X86_64EE10get_stringERNS_7ContextIS1_EERKNS_7ElfShdrIS1_EE.exit: ; preds = %bb.a
  %i.l = urem i64 %.0.copyload.i10.i, 24
  %i.m = udiv i64 %.0.copyload.i10.i, 24
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN4mold9InputFileINS_6X86_64EE10get_stringERNS_7ContextIS1_EERKNS_7ElfShdrIS1_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @_ZN4mold5FatalINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(408) %4, ptr noundef nonnull align 8 dereferenceable(14448) %1) #16
  %i.n = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRNS_9InputFileIS1_EEEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %4, ptr noundef nonnull align 8 dereferenceable(312) %0)
  %i.o = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA20_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.n, ptr noundef nonnull align 1 dereferenceable(20) @.str.218) ; 0 uses
  call void @_ZN4mold5FatalINS_6X86_64EED1Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %4) #37
  unreachable

bb.d:                                             ; preds = %_ZN4mold9InputFileINS_6X86_64EE10get_stringERNS_7ContextIS1_EERKNS_7ElfShdrIS1_EE.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !914
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %.0.copyload.i.i
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %i.r, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %i.m, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRNS_9InputFileIS1_EEEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(312) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4moldlsINS_6X86_64EEERSoS2_RKNS_9InputFileIT_EE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(312) %1) #16 ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA35_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 1 dereferenceable(35) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(35) %1) #16
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(35) %1, i64 noundef %i.b) #16 ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRKNS_7IntegerImLb1ELi8EEEEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 1 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.0.copyload.i.i = load i64, ptr %1, align 1
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %.0.copyload.i.i) #16 ; 0 uses
  ret ptr %0
}

; Function Attrs: nounwind
declare void @_ZN4mold9TarWriterD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40)) unnamed_addr #14

declare void @_ZNSt10filesystem12current_pathB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::filesystem::__cxx11::path") align 8) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local { ptr, i8 } @_ZNSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIS3_S3_NS5_10_AllocNodeISaINS5_10_Hash_nodeIS3_Lb1EEEEEEEESt4pairINS5_14_Node_iteratorIS3_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !602
  %.not = icmp ugt i64 %i.b, 20
  br i1 %.not, label %..thread_crit_edge, label %bb.b

..thread_crit_edge:                               ; preds = %bb.a
  %.pre = load i64, ptr %1, align 8, !tbaa !603
  br label %.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.025.039 = load ptr, ptr %i.c, align 8, !tbaa !781 ; 3 uses
  %i.d = icmp eq ptr %.sroa.025.039, null
  %.pre51 = load i64, ptr %1, align 8, !tbaa !593
  %.sroa.01.0.copyload.i.i.fr = freeze i64 %.pre51 ; 6 uses
  br i1 %i.d, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.22.0.copyload.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !tbaa !613
  %i.e = icmp eq i64 %.sroa.01.0.copyload.i.i.fr, 0
  br i1 %i.e, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.c
  %.sroa.025.040.us = phi ptr [ %.sroa.025.0.us, %bb.c ], [ %.sroa.025.039, %.lr.ph ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.025.040.us, i64 8
  %.sroa.0.0.copyload.i.i.us = load i64, ptr %i.f, align 8, !tbaa !593
  %i.g = icmp eq i64 %.sroa.0.0.copyload.i.i.us, 0
  br i1 %i.g, label %_ZNKSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS3_EEPNS5_10_Hash_nodeIS3_Lb1EEEmRKT_m.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.us
  %.sroa.025.0.us = load ptr, ptr %.sroa.025.040.us, align 8, !tbaa !781 ; 2 uses
  %i.h = icmp eq ptr %.sroa.025.0.us, null
  br i1 %i.h, label %.thread, label %.lr.ph.split.us, !llvm.loop !3423

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.d
  %.sroa.025.040 = phi ptr [ %.sroa.025.0, %bb.d ], [ %.sroa.025.039, %.lr.ph ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.025.040, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.i, align 8, !tbaa !593
  %i.j = icmp eq i64 %.sroa.01.0.copyload.i.i.fr, %.sroa.0.0.copyload.i.i
  br i1 %i.j, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, label %bb.d

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %.lr.ph.split
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.025.040, i64 16
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !613
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %.sroa.22.0.copyload.i.i, ptr %.sroa.2.0.copyload.i.i, i64 %.sroa.01.0.copyload.i.i.fr)
  %i.k = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.k, label %_ZNKSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS3_EEPNS5_10_Hash_nodeIS3_Lb1EEEmRKT_m.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %.sroa.025.0 = load ptr, ptr %.sroa.025.040, align 8, !tbaa !781 ; 2 uses
  %i.l = icmp eq ptr %.sroa.025.0, null
  br i1 %i.l, label %.thread, label %.lr.ph.split, !llvm.loop !3423

.thread:                                          ; preds = %bb.d, %bb.c, %..thread_crit_edge, %bb.b
  %i.m = phi i64 [ %.pre, %..thread_crit_edge ], [ %.sroa.01.0.copyload.i.i.fr, %bb.c ], [ %.sroa.01.0.copyload.i.i.fr, %bb.b ], [ %.sroa.01.0.copyload.i.i.fr, %bb.d ]
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !604
  %i.p = tail call noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.o, i64 noundef %i.m, i64 noundef 3339675911) #16 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !927  ; 3 uses
  %i.s = urem i64 %i.p, %i.r                      ; 4 uses
  %i.t = load i64, ptr %i.a, align 8, !tbaa !602
  %i.u = icmp ugt i64 %i.t, 20
  br i1 %i.u, label %bb.e, label %.critedge

bb.e:                                             ; preds = %.thread
  %i.v = load ptr, ptr %0, align 8, !tbaa !926
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.s
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !917  ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !781  ; 3 uses
  %.sroa.01.0.copyload.i.i.i.i.i = load i64, ptr %1, align 8
  %.sroa.01.0.copyload.i.i.i.fr.i.i = freeze i64 %.sroa.01.0.copyload.i.i.i.i.i ; 3 uses
  %.sroa.22.0.copyload.i.i.i.i.i = load ptr, ptr %i.n, align 8
  %i.z = icmp eq i64 %.sroa.01.0.copyload.i.i.i.fr.i.i, 0
  %.phi.trans.insert25.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %.pre26.i.i = load i64, ptr %.phi.trans.insert25.i.i, align 8, !tbaa !942 ; 2 uses
  br i1 %i.z, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.f, %bb.i
  %i.aa = phi i64 [ %i.ag, %bb.i ], [ %.pre26.i.i, %bb.f ]
  %.0.us.i.i = phi ptr [ %i.ae, %bb.i ], [ %i.y, %bb.f ] ; 3 uses
  %i.ab = icmp eq i64 %i.p, %i.aa
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split.us.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.us.i.i, i64 8
  %.sroa.0.0.copyload.i.i.i.us.i.i = load i64, ptr %i.ac, align 8, !tbaa !593
  %i.ad = icmp eq i64 %.sroa.0.0.copyload.i.i.i.us.i.i, 0
  br i1 %i.ad, label %_ZNKSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS3_EEPNS5_10_Hash_nodeIS3_Lb1EEEmRKT_m.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %.split.us.i.i
  %i.ae = load ptr, ptr %.0.us.i.i, align 8, !tbaa !781 ; 3 uses
  %.not18.us.i.i = icmp eq ptr %i.ae, null
  br i1 %.not18.us.i.i, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !942 ; 2 uses
  %i.ah = urem i64 %i.ag, %i.r
  %.not19.us.i.i = icmp eq i64 %i.ah, %i.s
  br i1 %.not19.us.i.i, label %.split.us.i.i, label %.critedge, !llvm.loop !3424

.split.i.i:                                       ; preds = %bb.f, %bb.l
  %i.ai = phi i64 [ %i.ap, %bb.l ], [ %.pre26.i.i, %bb.f ]
  %.0.i.i = phi ptr [ %i.an, %bb.l ], [ %i.y, %bb.f ] ; 4 uses
  %i.aj = icmp eq i64 %i.p, %i.ai
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.split.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.ak, align 8, !tbaa !593
  %i.al = icmp eq i64 %.sroa.01.0.copyload.i.i.i.fr.i.i, %.sroa.0.0.copyload.i.i.i.i.i
  br i1 %i.al, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, label %bb.k

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %bb.j
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %.sroa.2.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !613
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %.sroa.22.0.copyload.i.i.i.i.i, ptr %.sroa.2.0.copyload.i.i.i.i.i, i64 %.sroa.01.0.copyload.i.i.i.fr.i.i)
  %i.am = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.am, label %_ZNKSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS3_EEPNS5_10_Hash_nodeIS3_Lb1EEEmRKT_m.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %bb.j, %.split.i.i
  %i.an = load ptr, ptr %.0.i.i, align 8, !tbaa !781 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.an, null
  br i1 %.not18.i.i, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !942 ; 2 uses
  %i.aq = urem i64 %i.ap, %i.r
  %.not19.i.i = icmp eq i64 %i.aq, %i.s
  br i1 %.not19.i.i, label %.split.i.i, label %.critedge, !llvm.loop !3424

.critedge:                                        ; preds = %bb.k, %bb.l, %bb.i, %bb.h, %bb.e, %.thread
  %i.ar = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #36 ; 9 uses
  store ptr null, ptr %i.ar, align 8, !tbaa !781
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !1344
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load i64, ptr %i.q, align 8, !tbaa !927
  %i.av = load i64, ptr %i.a, align 8, !tbaa !602
end_hunk_1
