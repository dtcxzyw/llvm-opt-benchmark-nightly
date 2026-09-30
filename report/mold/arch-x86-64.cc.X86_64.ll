Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/arch-x86-64.cc.X86_64?download=true
inline.NumInlined: 1418
inline.NumDeleted: 702
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN4mold12InputSectionINS_6X86_64EE17apply_reloc_allocERNS_7ContextIS1_EEPh:bb.a

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @_ZN4mold11decode_crelINS_6X86_64EEENS_10ExactArrayINS_6ElfRelIT_EEEERNS_7ContextIS4_EERNS_10ObjectFileIS4_EERKNS_7ElfShdrIS4_EE(ptr dead_on_unwind nonnull writable sret(%"class.mold::ExactArray") align 8 %3, ptr noundef nonnull align 8 dereferenceable(14448) %1, ptr noundef nonnull align 8 dereferenceable(992) %i.d, ptr noundef nonnull align 1 dereferenceable(64) %i.h) #16
  %i.o = load ptr, ptr %3, align 8, !tbaa !355
  store ptr null, ptr %3, align 8, !tbaa !355
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !355  ; 2 uses
  store ptr %i.o, ptr %i.m, align 8, !tbaa !355
  %.not.i.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4mold10ExactArrayINS_6ElfRelINS_6X86_64EEEEaSEOS4_.exit.thread.i, label %_ZN4mold10ExactArrayINS_6ElfRelINS_6X86_64EEEEaSEOS4_.exit.i

_ZN4mold10ExactArrayINS_6ElfRelINS_6X86_64EEEEaSEOS4_.exit.thread.i: ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !363
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %i.r, ptr %i.s, align 8, !tbaa !363
  br label %_ZN4mold10ExactArrayINS_6ElfRelINS_6X86_64EEEED2Ev.exit.i

_ZN4mold10ExactArrayINS_6ElfRelINS_6X86_64EEEEaSEOS4_.exit.i: ; preds = %bb.d
  call void @_ZdaPv(ptr noundef nonnull %i.p) #23
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !355 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !363
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %i.u, ptr %i.v, align 8, !tbaa !363
  %.not.i.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i.i, label %_ZN4mold10ExactArrayINS_6ElfRelINS_6X86_64EEEED2Ev.exit.i, label %_ZNKSt14default_deleteIA_N4mold6ElfRelINS0_6X86_64EEEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i.i.i

_ZNKSt14default_deleteIA_N4mold6ElfRelINS0_6X86_64EEEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i.i.i: ; preds = %_ZN4mold10ExactArrayINS_6ElfRelINS_6X86_64EEEEaSEOS4_.exit.i
  call void @_ZdaPv(ptr noundef nonnull %.pre.i) #23
  br label %_ZN4mold10ExactArrayINS_6ElfRelINS_6X86_64EEEED2Ev.exit.i

_ZN4mold10ExactArrayINS_6ElfRelINS_6X86_64EEEED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIA_N4mold6ElfRelINS0_6X86_64EEEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i.i.i, %_ZN4mold10ExactArrayINS_6ElfRelINS_6X86_64EEEEaSEOS4_.exit.i, %_ZN4mold10ExactArrayINS_6ElfRelINS_6X86_64EEEEaSEOS4_.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %.pre10.i = load ptr, ptr %i.m, align 8, !tbaa !355
  br label %bb.e

bb.e:                                             ; preds = %_ZN4mold10ExactArrayINS_6ElfRelINS_6X86_64EEEED2Ev.exit.i, %bb.c
  %i.w = phi ptr [ %.pre10.i, %_ZN4mold10ExactArrayINS_6ElfRelINS_6X86_64EEEED2Ev.exit.i ], [ %i.n, %bb.c ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !363
  br label %_ZNK4mold12InputSectionINS_6X86_64EE8get_relsERNS_7ContextIS1_EE.exit

bb.f:                                             ; preds = %bb.b
  %i.z = tail call { ptr, i64 } @_ZN4mold9InputFileINS_6X86_64EE8get_dataINS_6ElfRelIS1_EEEESt4spanIT_Lm18446744073709551615EERNS_7ContextIS1_EERKNS_7ElfShdrIS1_EE(ptr noundef nonnull align 8 dereferenceable(312) %i.d, ptr noundef nonnull align 8 dereferenceable(14448) %1, ptr noundef nonnull align 1 dereferenceable(64) %i.h) ; 2 uses
  %i.aa = extractvalue { ptr, i64 } %i.z, 0
  %i.ab = extractvalue { ptr, i64 } %i.z, 1
  br label %_ZNK4mold12InputSectionINS_6X86_64EE8get_relsERNS_7ContextIS1_EE.exit

_ZNK4mold12InputSectionINS_6X86_64EE8get_relsERNS_7ContextIS1_EE.exit: ; preds = %bb.e, %bb.f
  %.sroa.0.0.i = phi ptr [ %i.aa, %bb.f ], [ %i.w, %bb.e ] ; 4 uses
  %.sroa.4.0.i = phi i64 [ %i.ab, %bb.f ], [ %i.y, %bb.e ] ; 2 uses
  %.not465 = icmp eq i64 %.sroa.4.0.i, 0
  br i1 %.not465, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4mold12InputSectionINS_6X86_64EE8get_relsERNS_7ContextIS1_EE.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 13856 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 13864
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 14216 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 14224 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 14208
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 2685
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 2664
  br label %bb.g

._crit_edge:                                      ; preds = %bb.dy, %bb.a, %_ZNK4mold12InputSectionINS_6X86_64EE8get_relsERNS_7ContextIS1_EE.exit
  ret void

bb.g:                                             ; preds = %.lr.ph, %bb.dy
  %storemerge464 = phi i64 [ 0, %.lr.ph ], [ %i.qx, %bb.dy ] ; 63 uses
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.i, i64 %storemerge464 ; 7 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  %.0.copyload.i = load i32, ptr %i.am, align 1
  %i.an = icmp eq i32 %.0.copyload.i, 0
  br i1 %i.an, label %bb.dy, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = load ptr, ptr %0, align 8, !tbaa !348, !nonnull !337, !align !349
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %.0.copyload.i217 = load i32, ptr %i.ap, align 1
  %i.aq = zext i32 %.0.copyload.i217 to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 56
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !364
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.aq ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !366
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sext i32 %i.au to i64
  %i.ax = shl nsw i64 %i.aw, 2
  %i.ay = add nsw i64 %i.ax, %i.av
  %i.az = inttoptr i64 %i.ay to ptr               ; 27 uses
  %i.ba = load ptr, ptr @_ZN4mold20discarded_comdat_symINS_6X86_64EEE, align 8, !tbaa !299
  %i.bb = icmp eq ptr %i.ba, %i.az                ; 3 uses
  br i1 %i.bb, label %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !301
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sext i32 %i.bd to i64
  %i.bg = shl nsw i64 %i.bf, 2
  %i.bh = add nsw i64 %i.bg, %i.be
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.az, i64 20
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !310
  %i.bm = sext i32 %i.bl to i64
  %i.bn = load ptr, ptr %i.bj, align 8, !tbaa !312
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %i.bm
  br label %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i

_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i:      ; preds = %bb.i, %bb.h
  %.0.i.i = phi ptr [ %i.bo, %bb.i ], [ @_ZZNK4mold6SymbolINS_6X86_64EE4esymEvE5empty, %bb.h ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  %i.bq = load i8, ptr %i.bp, align 1
  %i.br = and i8 %i.bq, 15
  %i.bs = icmp eq i8 %i.br, 10
  br i1 %i.bs, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !301
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sext i32 %i.bu to i64
  %i.bx = shl nsw i64 %i.bw, 2
  %i.by = add nsw i64 %i.bx, %i.bv
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 120
  %i.cb = load i8, ptr %i.ca, align 8, !tbaa !335, !range !336, !noundef !337
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %_ZNK4mold6SymbolINS_6X86_64EE8get_typeEv.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i
  br i1 %i.bb, label %_ZNK4mold6SymbolINS_6X86_64EE8get_typeEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cd = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !301
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sext i32 %i.ce to i64
  %i.ch = shl nsw i64 %i.cg, 2
  %i.ci = add nsw i64 %i.ch, %i.cf
  %i.cj = inttoptr i64 %i.ci to ptr
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %i.cl = getelementptr inbounds nuw i8, ptr %i.az, i64 20
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !310
  %i.cn = sext i32 %i.cm to i64
  %i.co = load ptr, ptr %i.ck, align 8, !tbaa !312
  %i.cp = getelementptr inbounds nuw [24 x i8], ptr %i.co, i64 %i.cn
  br label %_ZNK4mold6SymbolINS_6X86_64EE8get_typeEv.exit

_ZNK4mold6SymbolINS_6X86_64EE8get_typeEv.exit:    ; preds = %bb.k, %bb.l
  %.0.i1.i = phi ptr [ %i.cp, %bb.l ], [ @_ZZNK4mold6SymbolINS_6X86_64EE4esymEvE5empty, %bb.k ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.i1.i, i64 4
  %i.cr = load i8, ptr %i.cq, align 1
  %i.cs = and i8 %i.cr, 15
  %i.ct = icmp eq i8 %i.cs, 6
  br i1 %i.ct, label %bb.m, label %_ZNK4mold6SymbolINS_6X86_64EE8get_typeEv.exit.thread

bb.m:                                             ; preds = %_ZNK4mold6SymbolINS_6X86_64EE8get_typeEv.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %i.az, i64 33
  %i.cv = load i16, ptr %i.cu, align 1
  %i.cw = and i16 %i.cv, 4
  %.not.i218 = icmp eq i16 %i.cw, 0
  br i1 %.not.i218, label %bb.n, label %_ZNK4mold6SymbolINS_6X86_64EE8get_typeEv.exit.thread

bb.n:                                             ; preds = %bb.m
  br i1 %i.bb, label %_ZNK4mold6SymbolINS_6X86_64EE23is_remaining_undef_weakEv.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cx = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !301
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = sext i32 %i.cy to i64
  %i.db = shl nsw i64 %i.da, 2
  %i.dc = add nsw i64 %i.db, %i.cz
  %i.dd = inttoptr i64 %i.dc to ptr
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  %i.df = getelementptr inbounds nuw i8, ptr %i.az, i64 20
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !310
  %i.dh = sext i32 %i.dg to i64
  %i.di = load ptr, ptr %i.de, align 8, !tbaa !312
  %i.dj = getelementptr inbounds nuw [24 x i8], ptr %i.di, i64 %i.dh
  br label %_ZNK4mold6SymbolINS_6X86_64EE23is_remaining_undef_weakEv.exit

_ZNK4mold6SymbolINS_6X86_64EE23is_remaining_undef_weakEv.exit: ; preds = %bb.n, %bb.o
  %.0.i.i220 = phi ptr [ %i.dj, %bb.o ], [ @_ZZNK4mold6SymbolINS_6X86_64EE4esymEvE5empty, %bb.n ] ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.0.i.i220, i64 6
  %.0.copyload.i.i.i.i = load i16, ptr %i.dk, align 1
  %i.dl = icmp eq i16 %.0.copyload.i.i.i.i, 0
  %i.dm = getelementptr inbounds nuw i8, ptr %.0.i.i220, i64 4
  %i.dn = load i8, ptr %i.dm, align 1
  %.mask.i.i.i = and i8 %i.dn, -16
  %i.do = icmp eq i8 %.mask.i.i.i, 32
  %i.dp = select i1 %i.dl, i1 %i.do, i1 false
  br i1 %i.dp, label %bb.dy, label %_ZNK4mold6SymbolINS_6X86_64EE8get_typeEv.exit.thread

_ZNK4mold6SymbolINS_6X86_64EE8get_typeEv.exit.thread: ; preds = %bb.m, %bb.j, %_ZNK4mold6SymbolINS_6X86_64EE23is_remaining_undef_weakEv.exit, %_ZNK4mold6SymbolINS_6X86_64EE8get_typeEv.exit
  %.0.copyload.i221 = load i64, ptr %i.al, align 1
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 %.0.copyload.i221 ; 56 uses
  %i.dr = call noundef i64 @_ZNK4mold6SymbolINS_6X86_64EE8get_addrERNS_7ContextIS1_EEl(ptr noundef nonnull align 8 dereferenceable(36) %i.az, ptr noundef nonnull align 8 dereferenceable(14448) %1, i64 noundef 0) ; 17 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %.0.copyload.i222 = load i64, ptr %i.ds, align 1 ; 29 uses
  %i.dt = load ptr, ptr %i.ac, align 8, !tbaa !367
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 40
  %.0.copyload.i.i223 = load i64, ptr %i.du, align 1
  %i.dv = load i64, ptr %i.ad, align 8, !tbaa !368
  %i.dw = add i64 %i.dv, %.0.copyload.i.i223
  %.0.copyload.i224 = load i64, ptr %i.al, align 1
  %i.dx = add i64 %i.dw, %.0.copyload.i224        ; 17 uses
  %i.dy = load ptr, ptr %i.ae, align 8, !tbaa !338 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 40
  %.0.copyload.i.i225 = load i64, ptr %i.dz, align 1 ; 6 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.az, i64 24 ; 3 uses
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !294 ; 2 uses
  %.not.i.i.i226 = icmp eq i32 %i.eb, 0
  %i.ec = ptrtoint ptr %i.ea to i64               ; 2 uses
  %i.ed = sext i32 %i.eb to i64
  %i.ee = shl nsw i64 %i.ed, 2
  %i.ef = add nsw i64 %i.ee, %i.ec                ; 7 uses
  %.not1.i.i = icmp eq i64 %i.ef, 0
  %.not.i.i = select i1 %.not.i.i.i226, i1 true, i1 %.not1.i.i ; 6 uses
  br i1 %.not.i.i, label %_ZNK4mold6SymbolINS_6X86_64EE12get_got_addrERNS_7ContextIS1_EE.exit, label %bb.p

bb.p:                                             ; preds = %_ZNK4mold6SymbolINS_6X86_64EE8get_typeEv.exit.thread
  %i.eg = inttoptr i64 %i.ef to ptr
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !339
  %i.ei = sext i32 %i.eh to i64
  %i.ej = shl nsw i64 %i.ei, 3
  br label %_ZNK4mold6SymbolINS_6X86_64EE12get_got_addrERNS_7ContextIS1_EE.exit

_ZNK4mold6SymbolINS_6X86_64EE12get_got_addrERNS_7ContextIS1_EE.exit: ; preds = %_ZNK4mold6SymbolINS_6X86_64EE8get_typeEv.exit.thread, %bb.p
  %i.ek = phi i64 [ %i.ej, %bb.p ], [ -8, %_ZNK4mold6SymbolINS_6X86_64EE8get_typeEv.exit.thread ]
  %i.el = add i64 %i.ek, %.0.copyload.i.i225      ; 4 uses
  %i.em = load ptr, ptr %i.af, align 8, !tbaa !291
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 40
  %.0.copyload.i227 = load i64, ptr %i.en, align 1 ; 4 uses
  %i.eo = sub i64 %i.el, %.0.copyload.i227        ; 2 uses
  %.0.copyload.i229 = load i32, ptr %i.am, align 1 ; 4 uses
  switch i32 %.0.copyload.i229, label %bb.dx [
    i32 14, label %bb.q
    i32 12, label %bb.r
    i32 10, label %bb.s
    i32 11, label %bb.t
    i32 1, label %bb.dy
    i32 15, label %bb.u
    i32 13, label %bb.v
    i32 2, label %bb.w
    i32 4, label %bb.w
    i32 24, label %bb.x
    i32 3, label %bb.y
    i32 27, label %bb.z
    i32 25, label %bb.aa
    i32 31, label %bb.aa
    i32 26, label %bb.ab
    i32 29, label %bb.ac
    i32 9, label %bb.ad
    i32 28, label %bb.ae
    i32 41, label %bb.af
    i32 42, label %bb.af
    i32 43, label %bb.af
    i32 19, label %bb.az
    i32 20, label %bb.be
    i32 21, label %bb.bl
    i32 17, label %bb.bm
    i32 23, label %bb.bn
    i32 18, label %bb.bo
    i32 22, label %bb.bp
    i32 44, label %bb.bp
    i32 50, label %bb.bq
    i32 34, label %bb.bs
    i32 45, label %bb.bs
    i32 35, label %bb.ds
    i32 32, label %bb.dt
    i32 33, label %bb.dv
  ]

bb.q:                                             ; preds = %_ZNK4mold6SymbolINS_6X86_64EE12get_got_addrERNS_7ContextIS1_EE.exit
  %i.ep = add i64 %.0.copyload.i222, %i.dr        ; 2 uses
  call void @_ZN4mold12InputSectionINS_6X86_64EE11check_rangeERNS_7ContextIS1_EEllll(ptr noundef nonnull align 8 dereferenceable(77) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1, i64 noundef %storemerge464, i64 noundef %i.ep, i64 noundef 0, i64 noundef 256)
  %i.eq = trunc i64 %i.ep to i8
  store i8 %i.eq, ptr %i.dq, align 1, !tbaa !343
  br label %bb.dy

bb.r:                                             ; preds = %_ZNK4mold6SymbolINS_6X86_64EE12get_got_addrERNS_7ContextIS1_EE.exit
  %i.er = add i64 %.0.copyload.i222, %i.dr        ; 2 uses
  call void @_ZN4mold12InputSectionINS_6X86_64EE11check_rangeERNS_7ContextIS1_EEllll(ptr noundef nonnull align 8 dereferenceable(77) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1, i64 noundef %storemerge464, i64 noundef %i.er, i64 noundef 0, i64 noundef 65536)
  %i.es = trunc i64 %i.er to i16
  store i16 %i.es, ptr %i.dq, align 1
  br label %bb.dy

bb.s:                                             ; preds = %_ZNK4mold6SymbolINS_6X86_64EE12get_got_addrERNS_7ContextIS1_EE.exit
  %i.et = add i64 %.0.copyload.i222, %i.dr        ; 2 uses
  call void @_ZN4mold12InputSectionINS_6X86_64EE11check_rangeERNS_7ContextIS1_EEllll(ptr noundef nonnull align 8 dereferenceable(77) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1, i64 noundef %storemerge464, i64 noundef %i.et, i64 noundef 0, i64 noundef 4294967296)
  %i.eu = trunc i64 %i.et to i32
  store i32 %i.eu, ptr %i.dq, align 1
  br label %bb.dy

bb.t:                                             ; preds = %_ZNK4mold6SymbolINS_6X86_64EE12get_got_addrERNS_7ContextIS1_EE.exit
  %i.ev = add i64 %.0.copyload.i222, %i.dr        ; 2 uses
  call void @_ZN4mold12InputSectionINS_6X86_64EE11check_rangeERNS_7ContextIS1_EEllll(ptr noundef nonnull align 8 dereferenceable(77) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1, i64 noundef %storemerge464, i64 noundef %i.ev, i64 noundef -2147483648, i64 noundef 2147483648)
  %i.ew = trunc i64 %i.ev to i32
  store i32 %i.ew, ptr %i.dq, align 1
  br label %bb.dy

bb.u:                                             ; preds = %_ZNK4mold6SymbolINS_6X86_64EE12get_got_addrERNS_7ContextIS1_EE.exit
  %i.ex = add i64 %.0.copyload.i222, %i.dr
  %i.ey = sub i64 %i.ex, %i.dx                    ; 2 uses
  call void @_ZN4mold12InputSectionINS_6X86_64EE11check_rangeERNS_7ContextIS1_EEllll(ptr noundef nonnull align 8 dereferenceable(77) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1, i64 noundef %storemerge464, i64 noundef %i.ey, i64 noundef -128, i64 noundef 128)
  %i.ez = trunc i64 %i.ey to i8
  store i8 %i.ez, ptr %i.dq, align 1, !tbaa !343
  br label %bb.dy

bb.v:                                             ; preds = %_ZNK4mold6SymbolINS_6X86_64EE12get_got_addrERNS_7ContextIS1_EE.exit
  %i.fa = add i64 %.0.copyload.i222, %i.dr
  %i.fb = sub i64 %i.fa, %i.dx                    ; 2 uses
  call void @_ZN4mold12InputSectionINS_6X86_64EE11check_rangeERNS_7ContextIS1_EEllll(ptr noundef nonnull align 8 dereferenceable(77) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1, i64 noundef %storemerge464, i64 noundef %i.fb, i64 noundef -32768, i64 noundef 32768)
  %i.fc = trunc i64 %i.fb to i16
  store i16 %i.fc, ptr %i.dq, align 1
  br label %bb.dy

bb.w:                                             ; preds = %_ZNK4mold6SymbolINS_6X86_64EE12get_got_addrERNS_7ContextIS1_EE.exit, %_ZNK4mold6SymbolINS_6X86_64EE12get_got_addrERNS_7ContextIS1_EE.exit
  %i.fd = add i64 %.0.copyload.i222, %i.dr
  %i.fe = sub i64 %i.fd, %i.dx                    ; 2 uses
  call void @_ZN4mold12InputSectionINS_6X86_64EE11check_rangeERNS_7ContextIS1_EEllll(ptr noundef nonnull align 8 dereferenceable(77) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1, i64 noundef %storemerge464, i64 noundef %i.fe, i64 noundef -2147483648, i64 noundef 2147483648)
  %i.ff = trunc i64 %i.fe to i32
  store i32 %i.ff, ptr %i.dq, align 1
  br label %bb.dy

bb.x:                                             ; preds = %_ZNK4mold6SymbolINS_6X86_64EE12get_got_addrERNS_7ContextIS1_EE.exit
  %i.fg = add i64 %.0.copyload.i222, %i.dr
  %i.fh = sub i64 %i.fg, %i.dx
  store i64 %i.fh, ptr %i.dq, align 1
  br label %bb.dy

bb.y:                                             ; preds = %_ZNK4mold6SymbolINS_6X86_64EE12get_got_addrERNS_7ContextIS1_EE.exit
  %i.fi = add i64 %i.eo, %.0.copyload.i222        ; 2 uses
  call void @_ZN4mold12InputSectionINS_6X86_64EE11check_rangeERNS_7ContextIS1_EEllll(ptr noundef nonnull align 8 dereferenceable(77) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1, i64 noundef %storemerge464, i64 noundef %i.fi, i64 noundef 0, i64 noundef 4294967296)
  %i.fj = trunc i64 %i.fi to i32
  store i32 %i.fj, ptr %i.dq, align 1
  br label %bb.dy

bb.z:                                             ; preds = %_ZNK4mold6SymbolINS_6X86_64EE12get_got_addrERNS_7ContextIS1_EE.exit
  %i.fk = add i64 %i.eo, %.0.copyload.i222
  store i64 %i.fk, ptr %i.dq, align 1
  br label %bb.dy

bb.aa:                                            ; preds = %_ZNK4mold6SymbolINS_6X86_64EE12get_got_addrERNS_7ContextIS1_EE.exit, %_ZNK4mold6SymbolINS_6X86_64EE12get_got_addrERNS_7ContextIS1_EE.exit
  %i.fl = add i64 %.0.copyload.i222, %i.dr
  %i.fm = sub i64 %i.fl, %.0.copyload.i227
  store i64 %i.fm, ptr %i.dq, align 1
  br label %bb.dy

bb.ab:                                            ; preds = %_ZNK4mold6SymbolINS_6X86_64EE12get_got_addrERNS_7ContextIS1_EE.exit
  %i.fn = sub i64 %.0.copyload.i222, %i.dx
  %i.fo = add i64 %i.fn, %.0.copyload.i227        ; 2 uses
  call void @_ZN4mold12InputSectionINS_6X86_64EE11check_rangeERNS_7ContextIS1_EEllll(ptr noundef nonnull align 8 dereferenceable(77) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1, i64 noundef %storemerge464, i64 noundef %i.fo, i64 noundef -2147483648, i64 noundef 2147483648)
  %i.fp = trunc i64 %i.fo to i32
  store i32 %i.fp, ptr %i.dq, align 1
  br label %bb.dy

bb.ac:                                            ; preds = %_ZNK4mold6SymbolINS_6X86_64EE12get_got_addrERNS_7ContextIS1_EE.exit
  %i.fq = sub i64 %.0.copyload.i222, %i.dx
  %i.fr = add i64 %i.fq, %.0.copyload.i227
  store i64 %i.fr, ptr %i.dq, align 1
  br label %bb.dy

bb.ad:                                            ; preds = %_ZNK4mold6SymbolINS_6X86_64EE12get_got_addrERNS_7ContextIS1_EE.exit
  %i.fs = sub i64 %.0.copyload.i222, %i.dx
  %i.ft = add i64 %i.fs, %i.el                    ; 2 uses
  call void @_ZN4mold12InputSectionINS_6X86_64EE11check_rangeERNS_7ContextIS1_EEllll(ptr noundef nonnull align 8 dereferenceable(77) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1, i64 noundef %storemerge464, i64 noundef %i.ft, i64 noundef -2147483648, i64 noundef 2147483648)
  %i.fu = trunc i64 %i.ft to i32
  store i32 %i.fu, ptr %i.dq, align 1
  br label %bb.dy

bb.ae:                                            ; preds = %_ZNK4mold6SymbolINS_6X86_64EE12get_got_addrERNS_7ContextIS1_EE.exit
  %i.fv = sub i64 %.0.copyload.i222, %i.dx
  %i.fw = add i64 %i.fv, %i.el
  store i64 %i.fw, ptr %i.dq, align 1
  br label %bb.dy

bb.af:                                            ; preds = %_ZNK4mold6SymbolINS_6X86_64EE12get_got_addrERNS_7ContextIS1_EE.exit, %_ZNK4mold6SymbolINS_6X86_64EE12get_got_addrERNS_7ContextIS1_EE.exit, %_ZNK4mold6SymbolINS_6X86_64EE12get_got_addrERNS_7ContextIS1_EE.exit
  %i.fx = getelementptr inbounds nuw i8, ptr %i.az, i64 33
  %i.fy = load i16, ptr %i.fx, align 1
  %i.fz = and i16 %i.fy, 4
  %.not.i230 = icmp eq i16 %i.fz, 0
  br i1 %.not.i230, label %bb.ag, label %_ZNK4mold6SymbolINS_6X86_64EE23is_pcrel_linktime_constERNS_7ContextIS1_EE.exit.thread435

bb.ag:                                            ; preds = %bb.af
  %i.ga = load ptr, ptr @_ZN4mold20discarded_comdat_symINS_6X86_64EEE, align 8, !tbaa !299
  %i.gb = icmp eq ptr %i.ga, %i.az                ; 3 uses
  br i1 %i.gb, label %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gc = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !301
  %i.ge = ptrtoint ptr %i.gc to i64
  %i.gf = sext i32 %i.gd to i64
  %i.gg = shl nsw i64 %i.gf, 2
  %i.gh = add nsw i64 %i.gg, %i.ge
  %i.gi = inttoptr i64 %i.gh to ptr
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 32
  %i.gk = getelementptr inbounds nuw i8, ptr %i.az, i64 20
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !310
  %i.gm = sext i32 %i.gl to i64
  %i.gn = load ptr, ptr %i.gj, align 8, !tbaa !312
  %i.go = getelementptr inbounds nuw [24 x i8], ptr %i.gn, i64 %i.gm
  br label %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i.i.i

_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i.i.i:  ; preds = %bb.ah, %bb.ag
  %.0.i.i.i.i = phi ptr [ %i.go, %bb.ah ], [ @_ZZNK4mold6SymbolINS_6X86_64EE4esymEvE5empty, %bb.ag ]
  %i.gp = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 4
  %i.gq = load i8, ptr %i.gp, align 1
  %i.gr = and i8 %i.gq, 15
  %i.gs = icmp eq i8 %i.gr, 10
  br i1 %i.gs, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i.i.i
  %i.gt = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !301
  %i.gv = ptrtoint ptr %i.gt to i64
  %i.gw = sext i32 %i.gu to i64
  %i.gx = shl nsw i64 %i.gw, 2
  %i.gy = add nsw i64 %i.gx, %i.gv
  %i.gz = inttoptr i64 %i.gy to ptr
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 120
  %i.hb = load i8, ptr %i.ha, align 8, !tbaa !335, !range !336, !noundef !337
  %i.hc = trunc nuw i8 %i.hb to i1
  br i1 %i.hc, label %_ZNK4mold6SymbolINS_6X86_64EE8is_ifuncEv.exit.thread.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i.i.i
  br i1 %i.gb, label %_ZNK4mold6SymbolINS_6X86_64EE8is_ifuncEv.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hd = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !301
  %i.hf = ptrtoint ptr %i.hd to i64
  %i.hg = sext i32 %i.he to i64
  %i.hh = shl nsw i64 %i.hg, 2
  %i.hi = add nsw i64 %i.hh, %i.hf
  %i.hj = inttoptr i64 %i.hi to ptr
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 32
  %i.hl = getelementptr inbounds nuw i8, ptr %i.az, i64 20
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !310
  %i.hn = sext i32 %i.hm to i64
  %i.ho = load ptr, ptr %i.hk, align 8, !tbaa !312
  %i.hp = getelementptr inbounds nuw [24 x i8], ptr %i.ho, i64 %i.hn
  br label %_ZNK4mold6SymbolINS_6X86_64EE8is_ifuncEv.exit.i

_ZNK4mold6SymbolINS_6X86_64EE8is_ifuncEv.exit.i:  ; preds = %bb.ak, %bb.aj
  %.0.i1.i.i.i = phi ptr [ %i.hp, %bb.ak ], [ @_ZZNK4mold6SymbolINS_6X86_64EE4esymEvE5empty, %bb.aj ]
  %i.hq = getelementptr inbounds nuw i8, ptr %.0.i1.i.i.i, i64 4
  %i.hr = load i8, ptr %i.hq, align 1
  %i.hs = and i8 %i.hr, 15
  %i.ht = icmp eq i8 %i.hs, 10
  br i1 %i.ht, label %_ZNK4mold6SymbolINS_6X86_64EE23is_pcrel_linktime_constERNS_7ContextIS1_EE.exit.thread435, label %_ZNK4mold6SymbolINS_6X86_64EE8is_ifuncEv.exit.thread.i

_ZNK4mold6SymbolINS_6X86_64EE8is_ifuncEv.exit.thread.i: ; preds = %_ZNK4mold6SymbolINS_6X86_64EE8is_ifuncEv.exit.i, %bb.ai
  br i1 %i.gb, label %_ZNK4mold6SymbolINS_6X86_64EE23is_remaining_undef_weakEv.exit.i.i.i, label %bb.al

bb.al:                                            ; preds = %_ZNK4mold6SymbolINS_6X86_64EE8is_ifuncEv.exit.thread.i
  %i.hu = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !301
  %i.hw = ptrtoint ptr %i.hu to i64
  %i.hx = sext i32 %i.hv to i64
  %i.hy = shl nsw i64 %i.hx, 2
  %i.hz = add nsw i64 %i.hy, %i.hw
  %i.ia = inttoptr i64 %i.hz to ptr
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 32
  %i.ic = getelementptr inbounds nuw i8, ptr %i.az, i64 20
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !310
  %i.ie = sext i32 %i.id to i64
  %i.if = load ptr, ptr %i.ib, align 8, !tbaa !312
  %i.ig = getelementptr inbounds nuw [24 x i8], ptr %i.if, i64 %i.ie
  br label %_ZNK4mold6SymbolINS_6X86_64EE23is_remaining_undef_weakEv.exit.i.i.i

_ZNK4mold6SymbolINS_6X86_64EE23is_remaining_undef_weakEv.exit.i.i.i: ; preds = %bb.al, %_ZNK4mold6SymbolINS_6X86_64EE8is_ifuncEv.exit.thread.i
  %.0.i.i.i.i.i = phi ptr [ %i.ig, %bb.al ], [ @_ZZNK4mold6SymbolINS_6X86_64EE4esymEvE5empty, %_ZNK4mold6SymbolINS_6X86_64EE8is_ifuncEv.exit.thread.i ] ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 6
  %.0.copyload.i.i.i.i.i.i.i = load i16, ptr %i.ih, align 1
  %i.ii = icmp eq i16 %.0.copyload.i.i.i.i.i.i.i, 0
  %i.ij = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 4
  %i.ik = load i8, ptr %i.ij, align 1
  %.mask.i.i.i.i.i.i = and i8 %i.ik, -16
  %i.il = icmp eq i8 %.mask.i.i.i.i.i.i, 32
  %i.im = select i1 %i.ii, i1 %i.il, i1 false
  br i1 %i.im, label %_ZNK4mold6SymbolINS_6X86_64EE23is_pcrel_linktime_constERNS_7ContextIS1_EE.exit, label %bb.am

bb.am:                                            ; preds = %_ZNK4mold6SymbolINS_6X86_64EE23is_remaining_undef_weakEv.exit.i.i.i
  %i.in = load i64, ptr %i.az, align 8, !tbaa !369 ; 3 uses
  %i.io = and i64 %i.in, 3                        ; 3 uses
  %.not3.i.i.i.i.i = icmp ne i64 %i.io, 2
  %.not210.i.i.i = icmp ult i64 %i.in, 4          ; 2 uses
  %.not2.i.i.i = or i1 %.not210.i.i.i, %.not3.i.i.i.i.i
  br i1 %.not2.i.i.i, label %bb.an, label %_ZNK4mold6SymbolINS_6X86_64EE23is_pcrel_linktime_constERNS_7ContextIS1_EE.exit.thread

bb.an:                                            ; preds = %bb.am
  %.not3.i.i6.i.i.i = icmp ne i64 %i.io, 0
  %.not311.i.i.i = icmp eq i64 %i.in, 0
  %.not3.i.i.i = or i1 %.not311.i.i.i, %.not3.i.i6.i.i.i
  %.not3.i.i8.i.i.i = icmp ne i64 %i.io, 1
  %.not4.i.i.i = or i1 %.not210.i.i.i, %.not3.i.i8.i.i.i
  %or.cond.i = and i1 %.not3.i.i.i, %.not4.i.i.i
  br i1 %or.cond.i, label %_ZNK4mold6SymbolINS_6X86_64EE23is_pcrel_linktime_constERNS_7ContextIS1_EE.exit, label %_ZNK4mold6SymbolINS_6X86_64EE23is_pcrel_linktime_constERNS_7ContextIS1_EE.exit.thread

_ZNK4mold6SymbolINS_6X86_64EE23is_pcrel_linktime_constERNS_7ContextIS1_EE.exit: ; preds = %_ZNK4mold6SymbolINS_6X86_64EE23is_remaining_undef_weakEv.exit.i.i.i, %bb.an
  %i.ip = load i8, ptr %i.aj, align 1, !tbaa !474, !range !336, !noundef !337
  %i.iq = trunc nuw i8 %i.ip to i1
  br i1 %i.iq, label %_ZNK4mold6SymbolINS_6X86_64EE23is_pcrel_linktime_constERNS_7ContextIS1_EE.exit.thread435, label %_ZNK4mold6SymbolINS_6X86_64EE23is_pcrel_linktime_constERNS_7ContextIS1_EE.exit.thread

_ZNK4mold6SymbolINS_6X86_64EE23is_pcrel_linktime_constERNS_7ContextIS1_EE.exit.thread: ; preds = %bb.an, %bb.am, %_ZNK4mold6SymbolINS_6X86_64EE23is_pcrel_linktime_constERNS_7ContextIS1_EE.exit
  %i.ir = add i64 %.0.copyload.i222, %i.dr
  %i.is = sub i64 %i.ir, %i.dx                    ; 2 uses
  %i.it = add i64 %i.is, 2147483648
  %i.iu = icmp ult i64 %i.it, 4294967296
  br i1 %i.iu, label %bb.ao, label %_ZNK4mold6SymbolINS_6X86_64EE23is_pcrel_linktime_constERNS_7ContextIS1_EE.exit.thread435

bb.ao:                                            ; preds = %_ZNK4mold6SymbolINS_6X86_64EE23is_pcrel_linktime_constERNS_7ContextIS1_EE.exit.thread
  %i.iv = icmp eq i32 %.0.copyload.i229, 41
  br i1 %i.iv, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.iw = getelementptr inbounds i8, ptr %i.dq, i64 -2
  %6 = load i16, ptr %i.iw, align 1
  switch i16 %6, label %_ZNK4mold6SymbolINS_6X86_64EE23is_pcrel_linktime_constERNS_7ContextIS1_EE.exit.thread435 [
    i16 5631, label %_ZN4moldL15relax_gotpcrelxEPhRKNS_6ElfRelINS_6X86_64EEE.exit.thread
    i16 9727, label %_ZN4moldL15relax_gotpcrelxEPhRKNS_6ElfRelINS_6X86_64EEE.exit.thread.fold.split
  ]

bb.aq:                                            ; preds = %bb.ao
  %i.ix = getelementptr inbounds i8, ptr %i.dq, i64 -3
  %7 = load i16, ptr %i.ix, align 1
  %8 = call i16 @llvm.bswap.i16(i16 %7)
  %i.iy = zext i16 %8 to i32
  %i.iz = shl nuw nsw i32 %i.iy, 8
  %i.ja = getelementptr inbounds i8, ptr %i.dq, i64 -1
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !343
  %i.jc = zext i8 %i.jb to i32
  %i.jd = or disjoint i32 %i.iz, %i.jc
  switch i32 %i.jd, label %_ZNK4mold6SymbolINS_6X86_64EE23is_pcrel_linktime_constERNS_7ContextIS1_EE.exit.thread435 [
    i32 4754181, label %_ZN4moldL15relax_gotpcrelxEPhRKNS_6ElfRelINS_6X86_64EEE.exit.thread
    i32 4754189, label %bb.ar
    i32 4754197, label %bb.as
    i32 4754205, label %bb.at
    i32 4754213, label %bb.au
    i32 4754221, label %bb.av
    i32 4754229, label %bb.aw
    i32 4754237, label %bb.ax
    i32 5016325, label %_ZN4moldL15relax_gotpcrelxEPhRKNS_6ElfRelINS_6X86_64EEE.exit.thread
    i32 5016333, label %bb.ar
    i32 5016341, label %bb.as
    i32 5016349, label %bb.at
    i32 5016357, label %bb.au
    i32 5016365, label %bb.av
    i32 5016373, label %bb.aw
    i32 5016381, label %bb.ax
  ]

bb.ar:                                            ; preds = %bb.aq, %bb.aq
  br label %_ZN4moldL15relax_gotpcrelxEPhRKNS_6ElfRelINS_6X86_64EEE.exit.thread

bb.as:                                            ; preds = %bb.aq, %bb.aq
  br label %_ZN4moldL15relax_gotpcrelxEPhRKNS_6ElfRelINS_6X86_64EEE.exit.thread

bb.at:                                            ; preds = %bb.aq, %bb.aq
  br label %_ZN4moldL15relax_gotpcrelxEPhRKNS_6ElfRelINS_6X86_64EEE.exit.thread

bb.au:                                            ; preds = %bb.aq, %bb.aq
  br label %_ZN4moldL15relax_gotpcrelxEPhRKNS_6ElfRelINS_6X86_64EEE.exit.thread

bb.av:                                            ; preds = %bb.aq, %bb.aq
  br label %_ZN4moldL15relax_gotpcrelxEPhRKNS_6ElfRelINS_6X86_64EEE.exit.thread

bb.aw:                                            ; preds = %bb.aq, %bb.aq
  br label %_ZN4moldL15relax_gotpcrelxEPhRKNS_6ElfRelINS_6X86_64EEE.exit.thread

bb.ax:                                            ; preds = %bb.aq, %bb.aq
  br label %_ZN4moldL15relax_gotpcrelxEPhRKNS_6ElfRelINS_6X86_64EEE.exit.thread

_ZN4moldL15relax_gotpcrelxEPhRKNS_6ElfRelINS_6X86_64EEE.exit.thread.fold.split: ; preds = %bb.ap
  br label %_ZN4moldL15relax_gotpcrelxEPhRKNS_6ElfRelINS_6X86_64EEE.exit.thread

_ZN4moldL15relax_gotpcrelxEPhRKNS_6ElfRelINS_6X86_64EEE.exit.thread: ; preds = %bb.ap, %_ZN4moldL15relax_gotpcrelxEPhRKNS_6ElfRelINS_6X86_64EEE.exit.thread.fold.split, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.aq
  %.0.i231438 = phi i32 [ 16616, %bb.ap ], [ 36101, %bb.aq ], [ 36157, %bb.ax ], [ 36149, %bb.aw ], [ 36141, %bb.av ], [ 36133, %bb.au ], [ 36125, %bb.at ], [ 36117, %bb.as ], [ 36109, %bb.ar ], [ 36101, %bb.aq ], [ 16617, %_ZN4moldL15relax_gotpcrelxEPhRKNS_6ElfRelINS_6X86_64EEE.exit.thread.fold.split ] ; 2 uses
  %i.je = lshr i32 %.0.i231438, 8
  %i.jf = trunc nuw i32 %i.je to i8
  %i.jg = getelementptr inbounds i8, ptr %i.dq, i64 -2
  store i8 %i.jf, ptr %i.jg, align 1, !tbaa !343
  %i.jh = trunc i32 %.0.i231438 to i8
  %i.ji = getelementptr inbounds i8, ptr %i.dq, i64 -1
  store i8 %i.jh, ptr %i.ji, align 1, !tbaa !343
  %i.jj = trunc nsw i64 %i.is to i32
  store i32 %i.jj, ptr %i.dq, align 1
  %i.jk = load i8, ptr %i.ak, align 8, !tbaa !475, !range !336, !noundef !337
  %i.jl = trunc nuw i8 %i.jk to i1
  br i1 %i.jl, label %bb.ay, label %bb.dy

bb.ay:                                            ; preds = %_ZN4moldL15relax_gotpcrelxEPhRKNS_6ElfRelINS_6X86_64EEE.exit.thread
  store i32 2, ptr %i.am, align 1
  br label %bb.dy

_ZNK4mold6SymbolINS_6X86_64EE23is_pcrel_linktime_constERNS_7ContextIS1_EE.exit.thread435: ; preds = %bb.ap, %bb.aq, %bb.af, %_ZNK4mold6SymbolINS_6X86_64EE8is_ifuncEv.exit.i, %_ZNK4mold6SymbolINS_6X86_64EE23is_pcrel_linktime_constERNS_7ContextIS1_EE.exit.thread, %_ZNK4mold6SymbolINS_6X86_64EE23is_pcrel_linktime_constERNS_7ContextIS1_EE.exit
  %i.jm = sub i64 %.0.copyload.i222, %i.dx
  %i.jn = add i64 %i.jm, %i.el                    ; 2 uses
  call void @_ZN4mold12InputSectionINS_6X86_64EE11check_rangeERNS_7ContextIS1_EEllll(ptr noundef nonnull align 8 dereferenceable(77) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1, i64 noundef %storemerge464, i64 noundef %i.jn, i64 noundef -2147483648, i64 noundef 2147483648)
  %i.jo = trunc i64 %i.jn to i32
  store i32 %i.jo, ptr %i.dq, align 1
  br label %bb.dy

bb.az:                                            ; preds = %_ZNK4mold6SymbolINS_6X86_64EE12get_got_addrERNS_7ContextIS1_EE.exit
  br i1 %.not.i.i, label %_ZNK4mold6SymbolINS_6X86_64EE9has_gottpERNS_7ContextIS1_EE.exit.thread, label %_ZNK4mold6SymbolINS_6X86_64EE9has_tlsgdERNS_7ContextIS1_EE.exit

_ZNK4mold6SymbolINS_6X86_64EE9has_tlsgdERNS_7ContextIS1_EE.exit: ; preds = %bb.az
  %i.jp = inttoptr i64 %i.ef to ptr               ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  %i.jr = load i32, ptr %i.jq, align 8, !tbaa !476 ; 2 uses
  %.not455 = icmp eq i32 %i.jr, -1
  br i1 %.not455, label %_ZNK4mold6SymbolINS_6X86_64EE9has_gottpERNS_7ContextIS1_EE.exit, label %_ZNK4mold6SymbolINS_6X86_64EE14get_tlsgd_addrERNS_7ContextIS1_EE.exit

_ZNK4mold6SymbolINS_6X86_64EE14get_tlsgd_addrERNS_7ContextIS1_EE.exit: ; preds = %_ZNK4mold6SymbolINS_6X86_64EE9has_tlsgdERNS_7ContextIS1_EE.exit
  %i.js = sext i32 %i.jr to i64
  %i.jt = shl nsw i64 %i.js, 3
  %i.ju = add i64 %.0.copyload.i.i225, %.0.copyload.i222
  %i.jv = sub i64 %i.ju, %i.dx
  %i.jw = add i64 %i.jv, %i.jt                    ; 2 uses
  call void @_ZN4mold12InputSectionINS_6X86_64EE11check_rangeERNS_7ContextIS1_EEllll(ptr noundef nonnull align 8 dereferenceable(77) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1, i64 noundef %storemerge464, i64 noundef %i.jw, i64 noundef -2147483648, i64 noundef 2147483648)
  %i.jx = trunc i64 %i.jw to i32
  store i32 %i.jx, ptr %i.dq, align 1
  br label %bb.dy

_ZNK4mold6SymbolINS_6X86_64EE9has_gottpERNS_7ContextIS1_EE.exit: ; preds = %_ZNK4mold6SymbolINS_6X86_64EE9has_tlsgdERNS_7ContextIS1_EE.exit
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jp, i64 4
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !477 ; 2 uses
  %.not456 = icmp eq i32 %i.jz, -1
  br i1 %.not456, label %_ZNK4mold6SymbolINS_6X86_64EE9has_gottpERNS_7ContextIS1_EE.exit.thread, label %_ZNK4mold6SymbolINS_6X86_64EE14get_gottp_addrERNS_7ContextIS1_EE.exit

_ZNK4mold6SymbolINS_6X86_64EE14get_gottp_addrERNS_7ContextIS1_EE.exit: ; preds = %_ZNK4mold6SymbolINS_6X86_64EE9has_gottpERNS_7ContextIS1_EE.exit
  %i.ka = add nuw nsw i64 %storemerge464, 1       ; 2 uses
  %i.kb = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.i, i64 %i.ka
  %i.kc = sext i32 %i.jz to i64
  %i.kd = shl nsw i64 %i.kc, 3
  %i.ke = sub i64 %.0.copyload.i.i225, %i.dx
  %i.kf = add i64 %i.ke, %i.kd
  %i.kg = getelementptr i8, ptr %i.kb, i64 8
  %.val211 = load i32, ptr %i.kg, align 1
  %i.kh = icmp eq i32 %.val211, 31
  br i1 %i.kh, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %_ZNK4mold6SymbolINS_6X86_64EE14get_gottp_addrERNS_7ContextIS1_EE.exit
  %i.ki = getelementptr inbounds i8, ptr %i.dq, i64 -4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ki, ptr noundef nonnull align 16 dereferenceable(16) @_ZZN4moldL14relax_gd_to_ieEPhRKNS_6ElfRelINS_6X86_64EEEmE4insn, i64 12, i1 false)
  br label %_ZN4moldL14relax_gd_to_ieEPhRKNS_6ElfRelINS_6X86_64EEEm.exit

bb.bb:                                            ; preds = %_ZNK4mold6SymbolINS_6X86_64EE14get_gottp_addrERNS_7ContextIS1_EE.exit
  %i.kj = getelementptr inbounds i8, ptr %i.dq, i64 -3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.kj, ptr noundef nonnull align 16 dereferenceable(22) @_ZZN4moldL14relax_gd_to_ieEPhRKNS_6ElfRelINS_6X86_64EEEmE4insn_0, i64 22, i1 false)
  br label %_ZN4moldL14relax_gd_to_ieEPhRKNS_6ElfRelINS_6X86_64EEEm.exit

_ZN4moldL14relax_gd_to_ieEPhRKNS_6ElfRelINS_6X86_64EEEm.exit: ; preds = %bb.ba, %bb.bb
  %.sink3.i = phi i32 [ -13, %bb.bb ], [ -12, %bb.ba ]
  %.sink2.i = phi i64 [ 9, %bb.bb ], [ 8, %bb.ba ]
  %i.kk = trunc i64 %i.kf to i32
  %i.kl = add i32 %.sink3.i, %i.kk
  %i.km = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.sink2.i
  store i32 %i.kl, ptr %i.km, align 1
  br label %bb.dy

_ZNK4mold6SymbolINS_6X86_64EE9has_gottpERNS_7ContextIS1_EE.exit.thread: ; preds = %bb.az, %_ZNK4mold6SymbolINS_6X86_64EE9has_gottpERNS_7ContextIS1_EE.exit
  %i.kn = add nuw nsw i64 %storemerge464, 1       ; 2 uses
  %i.ko = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.i, i64 %i.kn
  %i.kp = load i64, ptr %i.ag, align 8, !tbaa !478
  %i.kq = sub i64 %i.dr, %i.kp
  %i.kr = getelementptr i8, ptr %i.ko, i64 8
  %.val212 = load i32, ptr %i.kr, align 1
  %i.ks = icmp eq i32 %.val212, 31
  br i1 %i.ks, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %_ZNK4mold6SymbolINS_6X86_64EE9has_gottpERNS_7ContextIS1_EE.exit.thread
  %i.kt = getelementptr inbounds i8, ptr %i.dq, i64 -4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.kt, ptr noundef nonnull align 16 dereferenceable(16) @_ZZN4moldL14relax_gd_to_leEPhRKNS_6ElfRelINS_6X86_64EEEmE4insn, i64 12, i1 false)
  br label %_ZN4moldL14relax_gd_to_leEPhRKNS_6ElfRelINS_6X86_64EEEm.exit

bb.bd:                                            ; preds = %_ZNK4mold6SymbolINS_6X86_64EE9has_gottpERNS_7ContextIS1_EE.exit.thread
  %i.ku = getelementptr inbounds i8, ptr %i.dq, i64 -3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.ku, ptr noundef nonnull align 16 dereferenceable(22) @_ZZN4moldL14relax_gd_to_leEPhRKNS_6ElfRelINS_6X86_64EEEmE4insn_0, i64 22, i1 false)
  br label %_ZN4moldL14relax_gd_to_leEPhRKNS_6ElfRelINS_6X86_64EEEm.exit

_ZN4moldL14relax_gd_to_leEPhRKNS_6ElfRelINS_6X86_64EEEm.exit: ; preds = %bb.bc, %bb.bd
  %.sink1.i = phi i64 [ 9, %bb.bd ], [ 8, %bb.bc ]
  %i.kv = trunc i64 %i.kq to i32
  %i.kw = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.sink1.i
  store i32 %i.kv, ptr %i.kw, align 1
  br label %bb.dy

bb.be:                                            ; preds = %_ZNK4mold6SymbolINS_6X86_64EE12get_got_addrERNS_7ContextIS1_EE.exit
  %i.kx = getelementptr inbounds nuw i8, ptr %i.dy, i64 280
  %i.ky = load i64, ptr %i.kx, align 8, !tbaa !484
  %.not454 = icmp eq i64 %i.ky, -1
  br i1 %.not454, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.kz = call noundef i64 @_ZNK4mold10GotSectionINS_6X86_64EE14get_tlsld_addrERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(288) %i.dy, ptr noundef nonnull align 8 dereferenceable(14448) %1) #16
  %i.la = sub i64 %.0.copyload.i222, %i.dx
  %i.lb = add i64 %i.la, %i.kz                    ; 2 uses
  call void @_ZN4mold12InputSectionINS_6X86_64EE11check_rangeERNS_7ContextIS1_EEllll(ptr noundef nonnull align 8 dereferenceable(77) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1, i64 noundef %storemerge464, i64 noundef %i.lb, i64 noundef -2147483648, i64 noundef 2147483648)
  %i.lc = trunc i64 %i.lb to i32
  store i32 %i.lc, ptr %i.dq, align 1
  br label %bb.dy

bb.bg:                                            ; preds = %bb.be
  %i.ld = add nuw nsw i64 %storemerge464, 1       ; 2 uses
  %i.le = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.i, i64 %i.ld
  %i.lf = load i64, ptr %i.ag, align 8, !tbaa !478
  %i.lg = load i64, ptr %i.ai, align 8, !tbaa !485
  %i.lh = sub i64 %i.lf, %i.lg
  %i.li = getelementptr i8, ptr %i.le, i64 8
  %.val213 = load i32, ptr %i.li, align 1
  %i.lj = getelementptr inbounds i8, ptr %i.dq, i64 -3 ; 3 uses
  switch i32 %.val213, label %bb.bk [
    i32 4, label %bb.bh
    i32 2, label %bb.bh
    i32 9, label %bb.bi
    i32 41, label %bb.bi
    i32 31, label %bb.bj
  ]

bb.bh:                                            ; preds = %bb.bg, %bb.bg
  store i64 3262858528244940849, ptr %i.lj, align 1
  br label %_ZN4moldL14relax_ld_to_leEPhRKNS_6ElfRelINS_6X86_64EEEl.exit

bb.bi:                                            ; preds = %bb.bg, %bb.bg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.lj, ptr noundef nonnull align 1 dereferenceable(13) @_ZZN4moldL14relax_ld_to_leEPhRKNS_6ElfRelINS_6X86_64EEElE4insn_0, i64 9, i1 false)
  br label %_ZN4moldL14relax_ld_to_leEPhRKNS_6ElfRelINS_6X86_64EEEl.exit

bb.bj:                                            ; preds = %bb.bg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.lj, ptr noundef nonnull align 16 dereferenceable(22) @_ZZN4moldL14relax_ld_to_leEPhRKNS_6ElfRelINS_6X86_64EEElE4insn_1, i64 22, i1 false)
  br label %_ZN4moldL14relax_ld_to_leEPhRKNS_6ElfRelINS_6X86_64EEEl.exit

bb.bk:                                            ; preds = %bb.bg
  unreachable

_ZN4moldL14relax_ld_to_leEPhRKNS_6ElfRelINS_6X86_64EEEl.exit: ; preds = %bb.bh, %bb.bi, %bb.bj
  %.sink1.i246 = phi i64 [ 8, %bb.bj ], [ 6, %bb.bi ], [ 5, %bb.bh ]
  %i.lk = trunc i64 %i.lh to i32
  %i.ll = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.sink1.i246
  store i32 %i.lk, ptr %i.ll, align 1
  br label %bb.dy

bb.bl:                                            ; preds = %_ZNK4mold6SymbolINS_6X86_64EE12get_got_addrERNS_7ContextIS1_EE.exit
  %i.lm = add i64 %.0.copyload.i222, %i.dr
  %i.ln = load i64, ptr %i.ah, align 8, !tbaa !370
  %i.lo = sub i64 %i.lm, %i.ln                    ; 2 uses
  call void @_ZN4mold12InputSectionINS_6X86_64EE11check_rangeERNS_7ContextIS1_EEllll(ptr noundef nonnull align 8 dereferenceable(77) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1, i64 noundef %storemerge464, i64 noundef %i.lo, i64 noundef -2147483648, i64 noundef 2147483648)
  %i.lp = trunc i64 %i.lo to i32
  store i32 %i.lp, ptr %i.dq, align 1
  br label %bb.dy

bb.bm:                                            ; preds = %_ZNK4mold6SymbolINS_6X86_64EE12get_got_addrERNS_7ContextIS1_EE.exit
  %i.lq = add i64 %.0.copyload.i222, %i.dr
  %i.lr = load i64, ptr %i.ah, align 8, !tbaa !370
  %i.ls = sub i64 %i.lq, %i.lr
  store i64 %i.ls, ptr %i.dq, align 1
  br label %bb.dy

bb.bn:                                            ; preds = %_ZNK4mold6SymbolINS_6X86_64EE12get_got_addrERNS_7ContextIS1_EE.exit
  %i.lt = add i64 %.0.copyload.i222, %i.dr
  %i.lu = load i64, ptr %i.ag, align 8, !tbaa !478
  %i.lv = sub i64 %i.lt, %i.lu                    ; 2 uses
  call void @_ZN4mold12InputSectionINS_6X86_64EE11check_rangeERNS_7ContextIS1_EEllll(ptr noundef nonnull align 8 dereferenceable(77) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1, i64 noundef %storemerge464, i64 noundef %i.lv, i64 noundef -2147483648, i64 noundef 2147483648)
  %i.lw = trunc i64 %i.lv to i32
  store i32 %i.lw, ptr %i.dq, align 1
  br label %bb.dy

bb.bo:                                            ; preds = %_ZNK4mold6SymbolINS_6X86_64EE12get_got_addrERNS_7ContextIS1_EE.exit
  %i.lx = add i64 %.0.copyload.i222, %i.dr
  %i.ly = load i64, ptr %i.ag, align 8, !tbaa !478
  %i.lz = sub i64 %i.lx, %i.ly
  store i64 %i.lz, ptr %i.dq, align 1
  br label %bb.dy

bb.bp:                                            ; preds = %_ZNK4mold6SymbolINS_6X86_64EE12get_got_addrERNS_7ContextIS1_EE.exit, %_ZNK4mold6SymbolINS_6X86_64EE12get_got_addrERNS_7ContextIS1_EE.exit
  br i1 %.not.i.i, label %_ZNK4mold6SymbolINS_6X86_64EE9has_gottpERNS_7ContextIS1_EE.exit250.thread, label %_ZNK4mold6SymbolINS_6X86_64EE9has_gottpERNS_7ContextIS1_EE.exit250

_ZNK4mold6SymbolINS_6X86_64EE9has_gottpERNS_7ContextIS1_EE.exit250: ; preds = %bb.bp
  %i.ma = inttoptr i64 %i.ef to ptr
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 4
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !477 ; 2 uses
  %.not453 = icmp eq i32 %i.mc, -1
  br i1 %.not453, label %_ZNK4mold6SymbolINS_6X86_64EE9has_gottpERNS_7ContextIS1_EE.exit250.thread, label %_ZNK4mold6SymbolINS_6X86_64EE14get_gottp_addrERNS_7ContextIS1_EE.exit255

_ZNK4mold6SymbolINS_6X86_64EE14get_gottp_addrERNS_7ContextIS1_EE.exit255: ; preds = %_ZNK4mold6SymbolINS_6X86_64EE9has_gottpERNS_7ContextIS1_EE.exit250
  %i.md = sext i32 %i.mc to i64
  %i.me = shl nsw i64 %i.md, 3
  %i.mf = add i64 %.0.copyload.i.i225, %.0.copyload.i222
  %i.mg = sub i64 %i.mf, %i.dx
  %i.mh = add i64 %i.mg, %i.me                    ; 2 uses
  call void @_ZN4mold12InputSectionINS_6X86_64EE11check_rangeERNS_7ContextIS1_EEllll(ptr noundef nonnull align 8 dereferenceable(77) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1, i64 noundef %storemerge464, i64 noundef %i.mh, i64 noundef -2147483648, i64 noundef 2147483648)
  %i.mi = trunc i64 %i.mh to i32
  store i32 %i.mi, ptr %i.dq, align 1
  br label %bb.dy

_ZNK4mold6SymbolINS_6X86_64EE9has_gottpERNS_7ContextIS1_EE.exit250.thread: ; preds = %bb.bp, %_ZNK4mold6SymbolINS_6X86_64EE9has_gottpERNS_7ContextIS1_EE.exit250
  %i.mj = call fastcc noundef i32 @_ZN4moldL14relax_gottpoffEPhRKNS_6ElfRelINS_6X86_64EEE(ptr noundef %i.dq, i32 %.0.copyload.i229) ; 3 uses
  %i.mk = lshr i32 %i.mj, 16
  %i.ml = trunc nuw nsw i32 %i.mk to i8
  %i.mm = getelementptr inbounds i8, ptr %i.dq, i64 -3
  store i8 %i.ml, ptr %i.mm, align 1, !tbaa !343
  %i.mn = lshr i32 %i.mj, 8
  %i.mo = trunc i32 %i.mn to i8
  %i.mp = getelementptr inbounds i8, ptr %i.dq, i64 -2
  store i8 %i.mo, ptr %i.mp, align 1, !tbaa !343
  %i.mq = trunc i32 %i.mj to i8
  %i.mr = getelementptr inbounds i8, ptr %i.dq, i64 -1
  store i8 %i.mq, ptr %i.mr, align 1, !tbaa !343
  %i.ms = load i64, ptr %i.ag, align 8, !tbaa !478
  %i.mt = sub i64 %i.dr, %i.ms                    ; 2 uses
  call void @_ZN4mold12InputSectionINS_6X86_64EE11check_rangeERNS_7ContextIS1_EEllll(ptr noundef nonnull align 8 dereferenceable(77) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1, i64 noundef %storemerge464, i64 noundef %i.mt, i64 noundef -2147483648, i64 noundef 2147483648)
  %i.mu = trunc i64 %i.mt to i32
  store i32 %i.mu, ptr %i.dq, align 1
  br label %bb.dy

bb.bq:                                            ; preds = %_ZNK4mold6SymbolINS_6X86_64EE12get_got_addrERNS_7ContextIS1_EE.exit
  br i1 %.not.i.i, label %_ZNK4mold6SymbolINS_6X86_64EE14get_gottp_addrERNS_7ContextIS1_EE.exit260, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.mv = inttoptr i64 %i.ef to ptr
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 4
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !477
  %i.my = sext i32 %i.mx to i64
  %i.mz = shl nsw i64 %i.my, 3
  br label %_ZNK4mold6SymbolINS_6X86_64EE14get_gottp_addrERNS_7ContextIS1_EE.exit260

_ZNK4mold6SymbolINS_6X86_64EE14get_gottp_addrERNS_7ContextIS1_EE.exit260: ; preds = %bb.bq, %bb.br
  %i.na = phi i64 [ %i.mz, %bb.br ], [ -8, %bb.bq ]
  %i.nb = add i64 %.0.copyload.i.i225, %.0.copyload.i222
  %i.nc = sub i64 %i.nb, %i.dx
  %i.nd = add i64 %i.nc, %i.na                    ; 2 uses
  call void @_ZN4mold12InputSectionINS_6X86_64EE11check_rangeERNS_7ContextIS1_EEllll(ptr noundef nonnull align 8 dereferenceable(77) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1, i64 noundef %storemerge464, i64 noundef %i.nd, i64 noundef -2147483648, i64 noundef 2147483648)
  %i.ne = trunc i64 %i.nd to i32
  store i32 %i.ne, ptr %i.dq, align 1
  br label %bb.dy

bb.bs:                                            ; preds = %_ZNK4mold6SymbolINS_6X86_64EE12get_got_addrERNS_7ContextIS1_EE.exit, %_ZNK4mold6SymbolINS_6X86_64EE12get_got_addrERNS_7ContextIS1_EE.exit
  br i1 %.not.i.i, label %_ZNK4mold6SymbolINS_6X86_64EE9has_gottpERNS_7ContextIS1_EE.exit271.thread, label %_ZNK4mold6SymbolINS_6X86_64EE11has_tlsdescERNS_7ContextIS1_EE.exit

_ZNK4mold6SymbolINS_6X86_64EE11has_tlsdescERNS_7ContextIS1_EE.exit: ; preds = %bb.bs
  %i.nf = inttoptr i64 %i.ef to ptr               ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 12
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !486 ; 2 uses
  %.not451 = icmp eq i32 %i.nh, -1
  br i1 %.not451, label %_ZNK4mold6SymbolINS_6X86_64EE9has_gottpERNS_7ContextIS1_EE.exit271, label %_ZNK4mold6SymbolINS_6X86_64EE16get_tlsdesc_addrERNS_7ContextIS1_EE.exit

_ZNK4mold6SymbolINS_6X86_64EE16get_tlsdesc_addrERNS_7ContextIS1_EE.exit: ; preds = %_ZNK4mold6SymbolINS_6X86_64EE11has_tlsdescERNS_7ContextIS1_EE.exit
  %i.ni = sext i32 %i.nh to i64
  %i.nj = shl nsw i64 %i.ni, 3
  %i.nk = sub i64 %.0.copyload.i222, %i.dx
  %i.nl = add i64 %i.nk, %.0.copyload.i.i225
  %i.nm = add i64 %i.nl, %i.nj                    ; 2 uses
  call void @_ZN4mold12InputSectionINS_6X86_64EE11check_rangeERNS_7ContextIS1_EEllll(ptr noundef nonnull align 8 dereferenceable(77) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1, i64 noundef %storemerge464, i64 noundef %i.nm, i64 noundef -2147483648, i64 noundef 2147483648)
  %i.nn = trunc i64 %i.nm to i32
  store i32 %i.nn, ptr %i.dq, align 1
  br label %bb.dy

_ZNK4mold6SymbolINS_6X86_64EE9has_gottpERNS_7ContextIS1_EE.exit271: ; preds = %_ZNK4mold6SymbolINS_6X86_64EE11has_tlsdescERNS_7ContextIS1_EE.exit
  %i.no = getelementptr inbounds nuw i8, ptr %i.nf, i64 4
  %i.np = load i32, ptr %i.no, align 4, !tbaa !477
  %.not452 = icmp eq i32 %i.np, -1
  br i1 %.not452, label %_ZNK4mold6SymbolINS_6X86_64EE9has_gottpERNS_7ContextIS1_EE.exit271.thread, label %bb.bt

bb.bt:                                            ; preds = %_ZNK4mold6SymbolINS_6X86_64EE9has_gottpERNS_7ContextIS1_EE.exit271
  %i.nq = getelementptr inbounds i8, ptr %i.dq, i64 -3 ; 2 uses
  %9 = load i16, ptr %i.nq, align 1
  %10 = call i16 @llvm.bswap.i16(i16 %9)
  %i.nr = zext i16 %10 to i32
  %i.ns = shl nuw nsw i32 %i.nr, 8
  %i.nt = getelementptr inbounds i8, ptr %i.dq, i64 -1 ; 2 uses
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !343
  %i.nv = zext i8 %i.nu to i32
  %i.nw = or disjoint i32 %i.ns, %i.nv
  switch i32 %i.nw, label %_ZN4moldL19relax_tlsdesc_to_ieEPhRKNS_6ElfRelINS_6X86_64EEE.exit [
    i32 4754693, label %bb.cj
    i32 4754701, label %bb.bu
    i32 4754709, label %bb.bv
    i32 4754717, label %bb.bw
    i32 4754725, label %bb.bx
    i32 4754733, label %bb.by
    i32 4754741, label %bb.bz
    i32 4754749, label %bb.ca
    i32 5016837, label %bb.cb
    i32 5016845, label %bb.cc
    i32 5016853, label %bb.cd
    i32 5016861, label %bb.ce
    i32 5016869, label %bb.cf
    i32 5016877, label %bb.cg
    i32 5016885, label %bb.ch
    i32 5016893, label %bb.ci
  ]

bb.bu:                                            ; preds = %bb.bt
  br label %bb.cj

bb.bv:                                            ; preds = %bb.bt
  br label %bb.cj

bb.bw:                                            ; preds = %bb.bt
  br label %bb.cj

bb.bx:                                            ; preds = %bb.bt
  br label %bb.cj

bb.by:                                            ; preds = %bb.bt
  br label %bb.cj

bb.bz:                                            ; preds = %bb.bt
  br label %bb.cj

bb.ca:                                            ; preds = %bb.bt
  br label %bb.cj

bb.cb:                                            ; preds = %bb.bt
  br label %bb.cj

bb.cc:                                            ; preds = %bb.bt
  br label %bb.cj

bb.cd:                                            ; preds = %bb.bt
  br label %bb.cj

bb.ce:                                            ; preds = %bb.bt
  br label %bb.cj

bb.cf:                                            ; preds = %bb.bt
  br label %bb.cj

bb.cg:                                            ; preds = %bb.bt
  br label %bb.cj

bb.ch:                                            ; preds = %bb.bt
  br label %bb.cj

bb.ci:                                            ; preds = %bb.bt
  br label %bb.cj

_ZN4moldL19relax_tlsdesc_to_ieEPhRKNS_6ElfRelINS_6X86_64EEE.exit: ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @_ZN4mold5FatalINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(408) %4, ptr noundef nonnull align 8 dereferenceable(14448) %1) #16
  %i.nx = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRNS_12InputSectionIS1_EEEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %4, ptr noundef nonnull align 8 dereferenceable(77) %0)
  %i.ny = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA36_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.nx, ptr noundef nonnull align 1 dereferenceable(36) @.str.1)
  %i.nz = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRNS_6ElfRelIS1_EEEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.ny, ptr noundef nonnull align 1 dereferenceable(24) %i.al) ; 0 uses
  call void @_ZN4mold5FatalINS_6X86_64EED1Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %4) #24
  unreachable

bb.cj:                                            ; preds = %bb.ci, %bb.bt, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu
  %.0.i272.ph = phi i32 [ 4754189, %bb.bu ], [ 4754197, %bb.bv ], [ 4754205, %bb.bw ], [ 4754213, %bb.bx ], [ 4754221, %bb.by ], [ 4754229, %bb.bz ], [ 4754237, %bb.ca ], [ 5016325, %bb.cb ], [ 5016333, %bb.cc ], [ 5016341, %bb.cd ], [ 5016349, %bb.ce ], [ 5016357, %bb.cf ], [ 5016365, %bb.cg ], [ 5016373, %bb.ch ], [ 4754181, %bb.bt ], [ 5016381, %bb.ci ] ; 2 uses
  %i.oa = lshr i32 %.0.i272.ph, 16
  %i.ob = trunc nuw nsw i32 %i.oa to i8
  store i8 %i.ob, ptr %i.nq, align 1, !tbaa !343
  %11 = getelementptr inbounds i8, ptr %i.dq, i64 -2
  store i8 -117, ptr %11, align 1, !tbaa !343
  %i.oc = trunc i32 %.0.i272.ph to i8
  store i8 %i.oc, ptr %i.nt, align 1, !tbaa !343
  %i.od = load ptr, ptr %i.ae, align 8, !tbaa !338
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 40
  %.0.copyload.i.i273 = load i64, ptr %i.oe, align 1
  %i.of = load i32, ptr %i.ea, align 4, !tbaa !294 ; 2 uses
  %.not.i.i.i274 = icmp eq i32 %i.of, 0
  %i.og = sext i32 %i.of to i64
  %i.oh = shl nsw i64 %i.og, 2
  %i.oi = add nsw i64 %i.oh, %i.ec                ; 2 uses
  %.not1.i.i275 = icmp eq i64 %i.oi, 0
  %.not.i.i276 = select i1 %.not.i.i.i274, i1 true, i1 %.not1.i.i275
  br i1 %.not.i.i276, label %_ZNK4mold6SymbolINS_6X86_64EE14get_gottp_addrERNS_7ContextIS1_EE.exit277, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.oj = inttoptr i64 %i.oi to ptr
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 4
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !477
  %i.om = sext i32 %i.ol to i64
  %i.on = shl nsw i64 %i.om, 3
  br label %_ZNK4mold6SymbolINS_6X86_64EE14get_gottp_addrERNS_7ContextIS1_EE.exit277

_ZNK4mold6SymbolINS_6X86_64EE14get_gottp_addrERNS_7ContextIS1_EE.exit277: ; preds = %bb.cj, %bb.ck
  %i.oo = phi i64 [ %i.on, %bb.ck ], [ -8, %bb.cj ]
  %i.op = sub i64 %.0.copyload.i222, %i.dx
  %i.oq = add i64 %i.op, %.0.copyload.i.i273
  %i.or = add i64 %i.oq, %i.oo                    ; 2 uses
  call void @_ZN4mold12InputSectionINS_6X86_64EE11check_rangeERNS_7ContextIS1_EEllll(ptr noundef nonnull align 8 dereferenceable(77) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1, i64 noundef %storemerge464, i64 noundef %i.or, i64 noundef -2147483648, i64 noundef 2147483648)
  %i.os = trunc i64 %i.or to i32
  store i32 %i.os, ptr %i.dq, align 1
  br label %bb.dy

_ZNK4mold6SymbolINS_6X86_64EE9has_gottpERNS_7ContextIS1_EE.exit271.thread: ; preds = %bb.bs, %_ZNK4mold6SymbolINS_6X86_64EE9has_gottpERNS_7ContextIS1_EE.exit271
  %i.ot = icmp eq i32 %.0.copyload.i229, 34
  %i.ou = getelementptr inbounds i8, ptr %i.dq, i64 -3 ; 2 uses
  %12 = load i16, ptr %i.ou, align 1
  %13 = call i16 @llvm.bswap.i16(i16 %12)
  %i.ov = zext i16 %13 to i32
  %i.ow = shl nuw nsw i32 %i.ov, 8
  %i.ox = getelementptr inbounds i8, ptr %i.dq, i64 -1 ; 2 uses
  %i.oy = load i8, ptr %i.ox, align 1, !tbaa !343
  %i.oz = zext i8 %i.oy to i32
  %i.pa = or disjoint i32 %i.ow, %i.oz            ; 2 uses
  br i1 %i.ot, label %bb.cl, label %bb.db

bb.cl:                                            ; preds = %_ZNK4mold6SymbolINS_6X86_64EE9has_gottpERNS_7ContextIS1_EE.exit271.thread
  switch i32 %i.pa, label %_ZN4moldL19relax_tlsdesc_to_leEPhRKNS_6ElfRelINS_6X86_64EEE.exit [
    i32 4754693, label %bb.dr
    i32 4754701, label %bb.cm
    i32 4754709, label %bb.cn
    i32 4754717, label %bb.co
    i32 4754725, label %bb.cp
    i32 4754733, label %bb.cq
    i32 4754741, label %bb.cr
    i32 4754749, label %bb.cs
    i32 5016837, label %bb.ct
    i32 5016845, label %bb.cu
    i32 5016853, label %bb.cv
    i32 5016861, label %bb.cw
    i32 5016869, label %bb.cx
    i32 5016877, label %bb.cy
    i32 5016885, label %bb.cz
    i32 5016893, label %bb.da
  ]

bb.cm:                                            ; preds = %bb.cl
  br label %bb.dr

bb.cn:                                            ; preds = %bb.cl
  br label %bb.dr

bb.co:                                            ; preds = %bb.cl
  br label %bb.dr

bb.cp:                                            ; preds = %bb.cl
  br label %bb.dr

bb.cq:                                            ; preds = %bb.cl
  br label %bb.dr

bb.cr:                                            ; preds = %bb.cl
  br label %bb.dr

bb.cs:                                            ; preds = %bb.cl
  br label %bb.dr

bb.ct:                                            ; preds = %bb.cl
  br label %bb.dr

bb.cu:                                            ; preds = %bb.cl
  br label %bb.dr

bb.cv:                                            ; preds = %bb.cl
  br label %bb.dr

bb.cw:                                            ; preds = %bb.cl
  br label %bb.dr

bb.cx:                                            ; preds = %bb.cl
  br label %bb.dr

bb.cy:                                            ; preds = %bb.cl
  br label %bb.dr

bb.cz:                                            ; preds = %bb.cl
  br label %bb.dr

bb.da:                                            ; preds = %bb.cl
  br label %bb.dr

bb.db:                                            ; preds = %_ZNK4mold6SymbolINS_6X86_64EE9has_gottpERNS_7ContextIS1_EE.exit271.thread
  switch i32 %i.pa, label %_ZN4moldL19relax_tlsdesc_to_leEPhRKNS_6ElfRelINS_6X86_64EEE.exit [
    i32 4754693, label %bb.dr
    i32 4754701, label %bb.dc
    i32 4754709, label %bb.dd
    i32 4754717, label %bb.de
    i32 4754725, label %bb.df
    i32 4754733, label %bb.dg
    i32 4754741, label %bb.dh
    i32 4754749, label %bb.di
    i32 5016837, label %bb.dj
    i32 5016845, label %bb.dk
    i32 5016853, label %bb.dl
    i32 5016861, label %bb.dm
    i32 5016869, label %bb.dn
    i32 5016877, label %bb.do
    i32 5016885, label %bb.dp
    i32 5016893, label %bb.dq
  ]

bb.dc:                                            ; preds = %bb.db
  br label %bb.dr

bb.dd:                                            ; preds = %bb.db
  br label %bb.dr

bb.de:                                            ; preds = %bb.db
  br label %bb.dr

bb.df:                                            ; preds = %bb.db
  br label %bb.dr

bb.dg:                                            ; preds = %bb.db
  br label %bb.dr

bb.dh:                                            ; preds = %bb.db
  br label %bb.dr

bb.di:                                            ; preds = %bb.db
  br label %bb.dr

bb.dj:                                            ; preds = %bb.db
  br label %bb.dr

bb.dk:                                            ; preds = %bb.db
  br label %bb.dr

bb.dl:                                            ; preds = %bb.db
  br label %bb.dr

bb.dm:                                            ; preds = %bb.db
  br label %bb.dr

bb.dn:                                            ; preds = %bb.db
  br label %bb.dr

bb.do:                                            ; preds = %bb.db
  br label %bb.dr

bb.dp:                                            ; preds = %bb.db
  br label %bb.dr

bb.dq:                                            ; preds = %bb.db
  br label %bb.dr

_ZN4moldL19relax_tlsdesc_to_leEPhRKNS_6ElfRelINS_6X86_64EEE.exit: ; preds = %bb.db, %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @_ZN4mold5FatalINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(408) %5, ptr noundef nonnull align 8 dereferenceable(14448) %1) #16
  %i.pb = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRNS_12InputSectionIS1_EEEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %5, ptr noundef nonnull align 8 dereferenceable(77) %0)
  %i.pc = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA36_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.pb, ptr noundef nonnull align 1 dereferenceable(36) @.str.1)
  %i.pd = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRNS_6ElfRelIS1_EEEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.pc, ptr noundef nonnull align 1 dereferenceable(24) %i.al) ; 0 uses
  call void @_ZN4mold5FatalINS_6X86_64EED1Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %5) #24
  unreachable

bb.dr:                                            ; preds = %bb.dq, %bb.cm, %bb.cn, %bb.co, %bb.cp, %bb.cq, %bb.cr, %bb.cs, %bb.ct, %bb.cu, %bb.cv, %bb.cw, %bb.cx, %bb.cy, %bb.cz, %bb.da, %bb.cl, %bb.dc, %bb.dd, %bb.de, %bb.df, %bb.dg, %bb.dh, %bb.di, %bb.dj, %bb.dk, %bb.dl, %bb.dm, %bb.dn, %bb.do, %bb.dp, %bb.db
  %.0.i278.ph = phi i32 [ 1624000, %bb.db ], [ 1689542, %bb.dp ], [ 1689541, %bb.do ], [ 1689540, %bb.dn ], [ 1689539, %bb.dm ], [ 1689538, %bb.dl ], [ 1689537, %bb.dk ], [ 1689536, %bb.dj ], [ 1624007, %bb.di ], [ 1624006, %bb.dh ], [ 1624005, %bb.dg ], [ 1624004, %bb.df ], [ 1624003, %bb.de ], [ 1624002, %bb.dd ], [ 1624001, %bb.dc ], [ 4769728, %bb.cl ], [ 4835271, %bb.da ], [ 4835270, %bb.cz ], [ 4835269, %bb.cy ], [ 4835268, %bb.cx ], [ 4835267, %bb.cw ], [ 4835266, %bb.cv ], [ 4835265, %bb.cu ], [ 4835264, %bb.ct ], [ 4769735, %bb.cs ], [ 4769734, %bb.cr ], [ 4769733, %bb.cq ], [ 4769732, %bb.cp ], [ 4769731, %bb.co ], [ 4769730, %bb.cn ], [ 4769729, %bb.cm ], [ 1689543, %bb.dq ] ; 2 uses
  %i.pe = lshr i32 %.0.i278.ph, 16
  %i.pf = trunc nuw nsw i32 %i.pe to i8
  store i8 %i.pf, ptr %i.ou, align 1, !tbaa !343
  %14 = getelementptr inbounds i8, ptr %i.dq, i64 -2
  store i8 -57, ptr %14, align 1, !tbaa !343
  %i.pg = trunc i32 %.0.i278.ph to i8
  store i8 %i.pg, ptr %i.ox, align 1, !tbaa !343
  %i.ph = load i64, ptr %i.ag, align 8, !tbaa !478
  %i.pi = sub i64 %i.dr, %i.ph                    ; 2 uses
  call void @_ZN4mold12InputSectionINS_6X86_64EE11check_rangeERNS_7ContextIS1_EEllll(ptr noundef nonnull align 8 dereferenceable(77) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1, i64 noundef %storemerge464, i64 noundef %i.pi, i64 noundef -2147483648, i64 noundef 2147483648)
  %i.pj = trunc i64 %i.pi to i32
  store i32 %i.pj, ptr %i.dq, align 1
  br label %bb.dy

bb.ds:                                            ; preds = %_ZNK4mold6SymbolINS_6X86_64EE12get_got_addrERNS_7ContextIS1_EE.exit
  br i1 %.not.i.i, label %_ZNK4mold6SymbolINS_6X86_64EE11has_tlsdescERNS_7ContextIS1_EE.exit282.thread, label %_ZNK4mold6SymbolINS_6X86_64EE11has_tlsdescERNS_7ContextIS1_EE.exit282

_ZNK4mold6SymbolINS_6X86_64EE11has_tlsdescERNS_7ContextIS1_EE.exit282: ; preds = %bb.ds
  %i.pk = inttoptr i64 %i.ef to ptr
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 12
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !486
  %.not = icmp eq i32 %i.pm, -1
  br i1 %.not, label %_ZNK4mold6SymbolINS_6X86_64EE11has_tlsdescERNS_7ContextIS1_EE.exit282.thread, label %bb.dy

_ZNK4mold6SymbolINS_6X86_64EE11has_tlsdescERNS_7ContextIS1_EE.exit282.thread: ; preds = %bb.ds, %_ZNK4mold6SymbolINS_6X86_64EE11has_tlsdescERNS_7ContextIS1_EE.exit282
  store i8 102, ptr %i.dq, align 1, !tbaa !343
  %i.pn = getelementptr inbounds nuw i8, ptr %i.dq, i64 1
  store i8 -112, ptr %i.pn, align 1, !tbaa !343
  br label %bb.dy

bb.dt:                                            ; preds = %_ZNK4mold6SymbolINS_6X86_64EE12get_got_addrERNS_7ContextIS1_EE.exit
  %i.po = load ptr, ptr @_ZN4mold20discarded_comdat_symINS_6X86_64EEE, align 8, !tbaa !299
  %i.pp = icmp eq ptr %i.po, %i.az
  br i1 %i.pp, label %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.pq = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !301
  %i.ps = ptrtoint ptr %i.pq to i64
  %i.pt = sext i32 %i.pr to i64
  %i.pu = shl nsw i64 %i.pt, 2
  %i.pv = add nsw i64 %i.pu, %i.ps
  %i.pw = inttoptr i64 %i.pv to ptr
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 32
  %i.py = getelementptr inbounds nuw i8, ptr %i.az, i64 20
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !310
  %i.qa = sext i32 %i.pz to i64
  %i.qb = load ptr, ptr %i.px, align 8, !tbaa !312
  %i.qc = getelementptr inbounds nuw [24 x i8], ptr %i.qb, i64 %i.qa
  br label %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit

_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit:        ; preds = %bb.dt, %bb.du
  %.0.i283 = phi ptr [ %i.qc, %bb.du ], [ @_ZZNK4mold6SymbolINS_6X86_64EE4esymEvE5empty, %bb.dt ]
  %i.qd = getelementptr inbounds nuw i8, ptr %.0.i283, i64 16
  %.0.copyload.i284 = load i64, ptr %i.qd, align 1
  %i.qe = add i64 %.0.copyload.i284, %.0.copyload.i222 ; 2 uses
  call void @_ZN4mold12InputSectionINS_6X86_64EE11check_rangeERNS_7ContextIS1_EEllll(ptr noundef nonnull align 8 dereferenceable(77) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1, i64 noundef %storemerge464, i64 noundef %i.qe, i64 noundef 0, i64 noundef 4294967296)
  %i.qf = trunc i64 %i.qe to i32
  store i32 %i.qf, ptr %i.dq, align 1
  br label %bb.dy

bb.dv:                                            ; preds = %_ZNK4mold6SymbolINS_6X86_64EE12get_got_addrERNS_7ContextIS1_EE.exit
  %i.qg = load ptr, ptr @_ZN4mold20discarded_comdat_symINS_6X86_64EEE, align 8, !tbaa !299
  %i.qh = icmp eq ptr %i.qg, %i.az
  br i1 %i.qh, label %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit286, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.qi = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !301
  %i.qk = ptrtoint ptr %i.qi to i64
  %i.ql = sext i32 %i.qj to i64
  %i.qm = shl nsw i64 %i.ql, 2
  %i.qn = add nsw i64 %i.qm, %i.qk
  %i.qo = inttoptr i64 %i.qn to ptr
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 32
  %i.qq = getelementptr inbounds nuw i8, ptr %i.az, i64 20
  %i.qr = load i32, ptr %i.qq, align 4, !tbaa !310
  %i.qs = sext i32 %i.qr to i64
  %i.qt = load ptr, ptr %i.qp, align 8, !tbaa !312
  %i.qu = getelementptr inbounds nuw [24 x i8], ptr %i.qt, i64 %i.qs
  br label %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit286

_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit286:     ; preds = %bb.dv, %bb.dw
  %.0.i285 = phi ptr [ %i.qu, %bb.dw ], [ @_ZZNK4mold6SymbolINS_6X86_64EE4esymEvE5empty, %bb.dv ]
  %i.qv = getelementptr inbounds nuw i8, ptr %.0.i285, i64 16
  %.0.copyload.i287 = load i64, ptr %i.qv, align 1
  %i.qw = add i64 %.0.copyload.i287, %.0.copyload.i222
  store i64 %i.qw, ptr %i.dq, align 1
  br label %bb.dy

bb.dx:                                            ; preds = %_ZNK4mold6SymbolINS_6X86_64EE12get_got_addrERNS_7ContextIS1_EE.exit
  unreachable

bb.dy:                                            ; preds = %_ZNK4mold6SymbolINS_6X86_64EE12get_got_addrERNS_7ContextIS1_EE.exit, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %_ZNK4mold6SymbolINS_6X86_64EE23is_pcrel_linktime_constERNS_7ContextIS1_EE.exit.thread435, %bb.bl, %bb.bm, %bb.bn, %bb.bo, %_ZNK4mold6SymbolINS_6X86_64EE14get_gottp_addrERNS_7ContextIS1_EE.exit260, %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit, %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit286, %_ZN4moldL14relax_gd_to_ieEPhRKNS_6ElfRelINS_6X86_64EEEm.exit, %_ZN4moldL14relax_gd_to_leEPhRKNS_6ElfRelINS_6X86_64EEEm.exit, %_ZNK4mold6SymbolINS_6X86_64EE14get_tlsgd_addrERNS_7ContextIS1_EE.exit, %_ZN4moldL14relax_ld_to_leEPhRKNS_6ElfRelINS_6X86_64EEEl.exit, %bb.bf, %_ZNK4mold6SymbolINS_6X86_64EE9has_gottpERNS_7ContextIS1_EE.exit250.thread, %_ZNK4mold6SymbolINS_6X86_64EE14get_gottp_addrERNS_7ContextIS1_EE.exit255, %_ZNK4mold6SymbolINS_6X86_64EE14get_gottp_addrERNS_7ContextIS1_EE.exit277, %bb.dr, %_ZNK4mold6SymbolINS_6X86_64EE16get_tlsdesc_addrERNS_7ContextIS1_EE.exit, %_ZNK4mold6SymbolINS_6X86_64EE11has_tlsdescERNS_7ContextIS1_EE.exit282.thread, %_ZNK4mold6SymbolINS_6X86_64EE11has_tlsdescERNS_7ContextIS1_EE.exit282, %_ZN4moldL15relax_gotpcrelxEPhRKNS_6ElfRelINS_6X86_64EEE.exit.thread, %bb.ay, %_ZNK4mold6SymbolINS_6X86_64EE23is_remaining_undef_weakEv.exit, %bb.g
  %.1 = phi i64 [ %storemerge464, %bb.g ], [ %storemerge464, %_ZNK4mold6SymbolINS_6X86_64EE23is_remaining_undef_weakEv.exit ], [ %storemerge464, %bb.q ], [ %storemerge464, %bb.r ], [ %storemerge464, %bb.s ], [ %storemerge464, %bb.t ], [ %storemerge464, %_ZNK4mold6SymbolINS_6X86_64EE12get_got_addrERNS_7ContextIS1_EE.exit ], [ %storemerge464, %bb.u ], [ %storemerge464, %bb.v ], [ %storemerge464, %bb.w ], [ %storemerge464, %bb.x ], [ %storemerge464, %bb.y ], [ %storemerge464, %bb.z ], [ %storemerge464, %bb.aa ], [ %storemerge464, %bb.ab ], [ %storemerge464, %bb.ac ], [ %storemerge464, %bb.ad ], [ %storemerge464, %bb.ae ], [ %storemerge464, %_ZNK4mold6SymbolINS_6X86_64EE23is_pcrel_linktime_constERNS_7ContextIS1_EE.exit.thread435 ], [ %storemerge464, %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit286 ], [ %storemerge464, %_ZNK4mold6SymbolINS_6X86_64EE14get_tlsgd_addrERNS_7ContextIS1_EE.exit ], [ %i.ka, %_ZN4moldL14relax_gd_to_ieEPhRKNS_6ElfRelINS_6X86_64EEEm.exit ], [ %i.kn, %_ZN4moldL14relax_gd_to_leEPhRKNS_6ElfRelINS_6X86_64EEEm.exit ], [ %storemerge464, %bb.bf ], [ %i.ld, %_ZN4moldL14relax_ld_to_leEPhRKNS_6ElfRelINS_6X86_64EEEl.exit ], [ %storemerge464, %bb.bl ], [ %storemerge464, %bb.bm ], [ %storemerge464, %bb.bn ], [ %storemerge464, %bb.bo ], [ %storemerge464, %_ZNK4mold6SymbolINS_6X86_64EE14get_gottp_addrERNS_7ContextIS1_EE.exit255 ], [ %storemerge464, %_ZNK4mold6SymbolINS_6X86_64EE9has_gottpERNS_7ContextIS1_EE.exit250.thread ], [ %storemerge464, %_ZNK4mold6SymbolINS_6X86_64EE14get_gottp_addrERNS_7ContextIS1_EE.exit260 ], [ %storemerge464, %_ZNK4mold6SymbolINS_6X86_64EE16get_tlsdesc_addrERNS_7ContextIS1_EE.exit ], [ %storemerge464, %_ZNK4mold6SymbolINS_6X86_64EE14get_gottp_addrERNS_7ContextIS1_EE.exit277 ], [ %storemerge464, %bb.dr ], [ %storemerge464, %_ZNK4mold6SymbolINS_6X86_64EE11has_tlsdescERNS_7ContextIS1_EE.exit282 ], [ %storemerge464, %_ZNK4mold6SymbolINS_6X86_64EE11has_tlsdescERNS_7ContextIS1_EE.exit282.thread ], [ %storemerge464, %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit ], [ %storemerge464, %_ZN4moldL15relax_gotpcrelxEPhRKNS_6ElfRelINS_6X86_64EEE.exit.thread ], [ %storemerge464, %bb.ay ]
  %i.qx = add nsw i64 %.1, 1                      ; 2 uses
  %i.qy = icmp ult i64 %i.qx, %.sroa.4.0.i
  br i1 %i.qy, label %bb.g, label %._crit_edge, !llvm.loop !473
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef i64 @_ZNK4mold6SymbolINS_6X86_64EE8get_addrERNS_7ContextIS1_EEl(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %3 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %5 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %6 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %7 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %8 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %9 = alloca %"class.mold::Fatal", align 8       ; 4 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !369    ; 4 uses
  %i.b = and i64 %i.a, 3                          ; 2 uses
  %.not3.i.i = icmp ne i64 %i.b, 2
  %i.c = and i64 %i.a, -4                         ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr                 ; 3 uses
  %.not.not60 = icmp eq i64 %i.c, 0
  %.not.not = or i1 %.not3.i.i, %.not.not60
  br i1 %.not.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 13
  %i.f = load atomic i8, ptr %i.e monotonic, align 1, !range !336, !noundef !337
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %_ZNK4mold6SymbolINS_6X86_64EE12get_plt_addrERNS_7ContextIS1_EE.exit

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4176
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !373
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !374
  %i.l = zext i32 %i.j to i64
  %i.m = shl nuw nsw i64 %i.l, 2
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %.0.copyload.i.i = load i64, ptr %i.o, align 1
  %i.p = load i64, ptr %i.d, align 8, !tbaa !375
  %i.q = add i64 %i.p, %.0.copyload.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !376
  %i.t = add i64 %i.q, %i.s
  br label %_ZNK4mold6SymbolINS_6X86_64EE12get_plt_addrERNS_7ContextIS1_EE.exit

bb.d:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.v = load i16, ptr %i.u, align 1              ; 2 uses
  %i.w = and i16 %i.v, 32
  %.not31 = icmp eq i16 %i.w, 0
  br i1 %.not31, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = and i16 %i.v, 64
  %.not34 = icmp eq i16 %i.x, 0
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !376  ; 2 uses
  br i1 %.not34, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 14040
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !487
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %.0.copyload.i = load i64, ptr %i.ac, align 1
  %i.ad = add i64 %i.z, %.0.copyload.i
  br label %_ZNK4mold6SymbolINS_6X86_64EE12get_plt_addrERNS_7ContextIS1_EE.exit

bb.g:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 14032
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !488
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %.0.copyload.i35 = load i64, ptr %i.ag, align 1
  %i.ah = add i64 %i.z, %.0.copyload.i35
  br label %_ZNK4mold6SymbolINS_6X86_64EE12get_plt_addrERNS_7ContextIS1_EE.exit

bb.h:                                             ; preds = %bb.d
  %i.ai = and i64 %2, 1
  %.not32 = icmp eq i64 %i.ai, 0
  br i1 %.not32, label %bb.i, label %_ZNK4mold6SymbolINS_6X86_64EE7has_pltERNS_7ContextIS1_EE.exit.thread59

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !294 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.ak, 0
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sext i32 %i.ak to i64
  %i.an = shl nsw i64 %i.am, 2
  %i.ao = add nsw i64 %i.an, %i.al                ; 2 uses
  %.not1.i.i = icmp eq i64 %i.ao, 0
  %.not.i.i = select i1 %.not.i.i.i, i1 true, i1 %.not1.i.i
  br i1 %.not.i.i, label %_ZNK4mold6SymbolINS_6X86_64EE7has_pltERNS_7ContextIS1_EE.exit.thread59, label %_ZNK4mold6SymbolINS_6X86_64EE11get_plt_idxERNS_7ContextIS1_EE.exit.i

_ZNK4mold6SymbolINS_6X86_64EE11get_plt_idxERNS_7ContextIS1_EE.exit.i: ; preds = %bb.i
  %i.ap = inttoptr i64 %i.ao to ptr               ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !296 ; 2 uses
  %.not.i = icmp eq i32 %i.ar, -1
  br i1 %.not.i, label %_ZNK4mold6SymbolINS_6X86_64EE7has_pltERNS_7ContextIS1_EE.exit, label %_ZNK4mold6SymbolINS_6X86_64EE11get_plt_idxERNS_7ContextIS1_EE.exit.i39

_ZNK4mold6SymbolINS_6X86_64EE7has_pltERNS_7ContextIS1_EE.exit: ; preds = %_ZNK4mold6SymbolINS_6X86_64EE11get_plt_idxERNS_7ContextIS1_EE.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 20
  %i.at = load i32, ptr %i.as, align 4, !tbaa !297
  %.not = icmp eq i32 %i.at, -1
  br i1 %.not, label %_ZNK4mold6SymbolINS_6X86_64EE7has_pltERNS_7ContextIS1_EE.exit.thread59, label %_ZNK4mold6SymbolINS_6X86_64EE14get_pltgot_idxERNS_7ContextIS1_EE.exit.i

_ZNK4mold6SymbolINS_6X86_64EE11get_plt_idxERNS_7ContextIS1_EE.exit.i39: ; preds = %_ZNK4mold6SymbolINS_6X86_64EE11get_plt_idxERNS_7ContextIS1_EE.exit.i
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 13952
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !292
end_hunk_0
begin_hunk_1_@_ZNK4mold6SymbolINS_6X86_64EE8get_addrERNS_7ContextIS1_EEl:bb.a
  %i.cx = zext i8 %i.cw to i64
  %i.cy = xor i64 %i.cx, 101
  %i.cz = or i64 %i.cu, %i.cy
  %i.da = icmp ne i64 %i.cz, 0
  %i.db = zext i1 %i.da to i32
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit, label %_ZNK4mold6SymbolINS_6X86_64EE12get_plt_addrERNS_7ContextIS1_EE.exit

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.dd = tail call { i64, ptr } @_ZNK4mold6SymbolINS_6X86_64EE4nameEv(ptr noundef nonnull align 8 dereferenceable(36) %0) ; 2 uses
  %i.de = extractvalue { i64, ptr } %i.dd, 0
  store i64 %i.de, ptr %3, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dg = extractvalue { i64, ptr } %i.dd, 1
  store ptr %i.dg, ptr %i.df, align 8
  %i.dh = call noundef zeroext i1 @_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withEPKc(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef @.str.21) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  br i1 %i.dh, label %.critedge, label %bb.r

bb.r:                                             ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit
  %i.di = call { i64, ptr } @_ZNK4mold6SymbolINS_6X86_64EE4nameEv(ptr noundef nonnull align 8 dereferenceable(36) %0) ; 2 uses
  %i.dj = extractvalue { i64, ptr } %i.di, 0
  store i64 %i.dj, ptr %4, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dl = extractvalue { i64, ptr } %i.di, 1
  store ptr %i.dl, ptr %i.dk, align 8
  %i.dm = call noundef zeroext i1 @_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withEPKc(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef @.str.22) #16
  br i1 %i.dm, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dn = call { i64, ptr } @_ZNK4mold6SymbolINS_6X86_64EE4nameEv(ptr noundef nonnull align 8 dereferenceable(36) %0) ; 2 uses
  %i.do = extractvalue { i64, ptr } %i.dn, 0
  store i64 %i.do, ptr %5, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dq = extractvalue { i64, ptr } %i.dn, 1
  store ptr %i.dq, ptr %i.dp, align 8
  %i.dr = call noundef zeroext i1 @_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withEPKc(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef @.str.23) #16
  br i1 %i.dr, label %.critedge, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ds = load ptr, ptr @_ZN4mold20discarded_comdat_symINS_6X86_64EEE, align 8, !tbaa !299
  %i.dt = icmp eq ptr %0, %i.ds
  br i1 %i.dt, label %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !301
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = sext i32 %i.dv to i64
  %i.dy = shl nsw i64 %i.dx, 2
  %i.dz = add nsw i64 %i.dy, %i.dw
  %i.ea = inttoptr i64 %i.dz to ptr
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !310
  %i.ee = sext i32 %i.ed to i64
  %i.ef = load ptr, ptr %i.eb, align 8, !tbaa !312
  %i.eg = getelementptr inbounds nuw [24 x i8], ptr %i.ef, i64 %i.ee
  br label %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit

_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit:        ; preds = %bb.t, %bb.u
  %.0.i = phi ptr [ %i.eg, %bb.u ], [ @_ZZNK4mold6SymbolINS_6X86_64EE4esymEvE5empty, %bb.t ]
  %i.eh = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.ei = load i8, ptr %i.eh, align 1
  %i.ej = and i8 %i.ei, 15
  %i.ek = icmp eq i8 %i.ej, 3
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br i1 %i.ek, label %bb.v, label %bb.w

.critedge:                                        ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.v

bb.v:                                             ; preds = %.critedge, %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 13992
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !489
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 40
  %.0.copyload.i47 = load i64, ptr %i.en, align 1
  br label %_ZNK4mold6SymbolINS_6X86_64EE12get_plt_addrERNS_7ContextIS1_EE.exit

bb.w:                                             ; preds = %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.eo = call { i64, ptr } @_ZNK4mold6SymbolINS_6X86_64EE4nameEv(ptr noundef nonnull align 8 dereferenceable(36) %0) ; 2 uses
  %i.ep = extractvalue { i64, ptr } %i.eo, 0
  store i64 %i.ep, ptr %6, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.er = extractvalue { i64, ptr } %i.eo, 1
  store ptr %i.er, ptr %i.eq, align 8
  %i.es = call noundef zeroext i1 @_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withEPKc(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef @.str.24) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  br i1 %i.es, label %.critedge2, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.et = call { i64, ptr } @_ZNK4mold6SymbolINS_6X86_64EE4nameEv(ptr noundef nonnull align 8 dereferenceable(36) %0) ; 2 uses
  %i.eu = extractvalue { i64, ptr } %i.et, 0
  store i64 %i.eu, ptr %7, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ew = extractvalue { i64, ptr } %i.et, 1
  store ptr %i.ew, ptr %i.ev, align 8
  %i.ex = call noundef zeroext i1 @_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withEPKc(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef @.str.25) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br i1 %i.ex, label %bb.y, label %bb.z

.critedge2:                                       ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.y

bb.y:                                             ; preds = %.critedge2, %bb.x
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 13992
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !489 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 40
  %.0.copyload.i48 = load i64, ptr %i.fa, align 1
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 56
  %.0.copyload.i49 = load i64, ptr %i.fb, align 1
  %i.fc = add i64 %.0.copyload.i49, %.0.copyload.i48
  br label %_ZNK4mold6SymbolINS_6X86_64EE12get_plt_addrERNS_7ContextIS1_EE.exit

bb.z:                                             ; preds = %bb.x
  %i.fd = call { i64, ptr } @_ZNK4mold6SymbolINS_6X86_64EE4nameEv(ptr noundef nonnull align 8 dereferenceable(36) %0) ; 2 uses
  %i.fe = extractvalue { i64, ptr } %i.fd, 0
  %i.ff = icmp eq i64 %i.fe, 2
  br i1 %i.ff, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i50, label %bb.aa

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i50: ; preds = %bb.z
  %i.fg = extractvalue { i64, ptr } %i.fd, 1
  %i.fh = load i16, ptr %i.fg, align 1
  %i.fi = icmp ne i16 %i.fh, 25636
  %i.fj = zext i1 %i.fi to i32
  %i.fk = icmp eq i32 %i.fj, 0
  br i1 %i.fk, label %.critedge4, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i50
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %i.fl = call { i64, ptr } @_ZNK4mold6SymbolINS_6X86_64EE4nameEv(ptr noundef nonnull align 8 dereferenceable(36) %0) ; 2 uses
  %i.fm = extractvalue { i64, ptr } %i.fl, 0
  store i64 %i.fm, ptr %8, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.fo = extractvalue { i64, ptr } %i.fl, 1
  store ptr %i.fo, ptr %i.fn, align 8
  %i.fp = call noundef zeroext i1 @_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withEPKc(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef @.str.27) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br i1 %i.fp, label %.critedge4, label %bb.ab

.critedge4:                                       ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i50, %bb.aa
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 13992
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !489
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 40
  %.0.copyload.i54 = load i64, ptr %i.fs, align 1
  br label %_ZNK4mold6SymbolINS_6X86_64EE12get_plt_addrERNS_7ContextIS1_EE.exit

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  call void @_ZN4mold5FatalINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(408) %9, ptr noundef nonnull align 8 dereferenceable(14448) %1) #16
  %i.ft = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA49_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %9, ptr noundef nonnull align 1 dereferenceable(49) @.str.28)
  %i.fu = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRKNS_6SymbolIS1_EEEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.ft, ptr noundef nonnull align 8 dereferenceable(36) %0)
  %i.fv = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA2_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.fu, ptr noundef nonnull align 1 dereferenceable(2) @.str.29)
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !301
  %i.fy = ptrtoint ptr %i.fw to i64
  %i.fz = sext i32 %i.fx to i64
  %i.ga = shl nsw i64 %i.fz, 2
  %i.gb = add nsw i64 %i.ga, %i.fy
  %i.gc = inttoptr i64 %i.gb to ptr
  %i.gd = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRNS_9InputFileIS1_EEEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.fv, ptr noundef nonnull align 8 dereferenceable(312) %i.gc) ; 0 uses
  call void @_ZN4mold5FatalINS_6X86_64EED1Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %9) #24
  unreachable

bb.ac:                                            ; preds = %bb.k
  %i.ge = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !367
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 40
  %.0.copyload.i.i55 = load i64, ptr %i.gg, align 1
  %i.gh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !368
  %i.gj = add i64 %i.gi, %.0.copyload.i.i55
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !376
  %i.gm = add i64 %i.gj, %i.gl
  br label %_ZNK4mold6SymbolINS_6X86_64EE12get_plt_addrERNS_7ContextIS1_EE.exit

_ZNK4mold6SymbolINS_6X86_64EE12get_plt_addrERNS_7ContextIS1_EE.exit: ; preds = %bb.n, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %_ZNK4mold12InputSectionINS_6X86_64EE4nameEv.exit, %bb.c, %bb.b, %_ZNK4mold6SymbolINS_6X86_64EE14get_pltgot_idxERNS_7ContextIS1_EE.exit.i, %_ZNK4mold6SymbolINS_6X86_64EE11get_plt_idxERNS_7ContextIS1_EE.exit.i39, %bb.j, %bb.m, %bb.v, %bb.y, %.critedge4, %bb.ac, %bb.f, %bb.g
  %.2 = phi i64 [ %i.ba, %_ZNK4mold6SymbolINS_6X86_64EE11get_plt_idxERNS_7ContextIS1_EE.exit.i39 ], [ %i.ah, %bb.g ], [ %i.t, %bb.c ], [ %i.ad, %bb.f ], [ %i.gm, %bb.ac ], [ %i.bx, %bb.m ], [ %.0.copyload.i47, %bb.v ], [ %i.fc, %bb.y ], [ %.0.copyload.i54, %.critedge4 ], [ %i.bi, %bb.j ], [ %i.bf, %_ZNK4mold6SymbolINS_6X86_64EE14get_pltgot_idxERNS_7ContextIS1_EE.exit.i ], [ 0, %bb.b ], [ 0, %_ZNK4mold12InputSectionINS_6X86_64EE4nameEv.exit ], [ 0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ], [ 0, %bb.n ]
  ret i64 %.2
}

declare noundef i64 @_ZNK4mold10GotSectionINS_6X86_64EE14get_tlsld_addrERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(288), ptr noundef nonnull align 8 dereferenceable(14448)) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read)
define internal fastcc noundef range(i32 0, 4835272) i32 @_ZN4moldL14relax_gottpoffEPhRKNS_6ElfRelINS_6X86_64EEE(ptr nofree noundef readonly captures(none) %0, i32 %.8.val) unnamed_addr #7 {
bb.a:
  %i.a = icmp eq i32 %.8.val, 22
  %i.b = getelementptr inbounds i8, ptr %0, i64 -3
  %1 = load i16, ptr %i.b, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %i.c = zext i16 %2 to i32
  %i.d = shl nuw nsw i32 %i.c, 8
  %i.e = getelementptr inbounds i8, ptr %0, i64 -1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !343
  %i.g = zext i8 %i.f to i32
  %i.h = or disjoint i32 %i.d, %i.g               ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  switch i32 %i.h, label %bb.ah [
    i32 4754181, label %bb.ai
    i32 4754189, label %bb.c
    i32 4754197, label %bb.d
    i32 4754205, label %bb.e
    i32 4754213, label %bb.f
    i32 4754221, label %bb.g
    i32 4754229, label %bb.h
    i32 4754237, label %bb.i
    i32 5016325, label %bb.j
    i32 5016333, label %bb.k
    i32 5016341, label %bb.l
    i32 5016349, label %bb.m
    i32 5016357, label %bb.n
    i32 5016365, label %bb.o
    i32 5016373, label %bb.p
    i32 5016381, label %bb.q
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.ai

bb.d:                                             ; preds = %bb.b
  br label %bb.ai

bb.e:                                             ; preds = %bb.b
  br label %bb.ai

bb.f:                                             ; preds = %bb.b
  br label %bb.ai

bb.g:                                             ; preds = %bb.b
  br label %bb.ai

bb.h:                                             ; preds = %bb.b
  br label %bb.ai

bb.i:                                             ; preds = %bb.b
  br label %bb.ai

bb.j:                                             ; preds = %bb.b
  br label %bb.ai

bb.k:                                             ; preds = %bb.b
  br label %bb.ai

bb.l:                                             ; preds = %bb.b
  br label %bb.ai

bb.m:                                             ; preds = %bb.b
  br label %bb.ai

bb.n:                                             ; preds = %bb.b
  br label %bb.ai

bb.o:                                             ; preds = %bb.b
  br label %bb.ai

bb.p:                                             ; preds = %bb.b
  br label %bb.ai

bb.q:                                             ; preds = %bb.b
  br label %bb.ai

bb.r:                                             ; preds = %bb.a
  switch i32 %i.h, label %bb.ah [
    i32 4754181, label %bb.ai
    i32 4754189, label %bb.s
    i32 4754197, label %bb.t
    i32 4754205, label %bb.u
    i32 4754213, label %bb.v
    i32 4754221, label %bb.w
    i32 4754229, label %bb.x
    i32 4754237, label %bb.y
    i32 5016325, label %bb.z
    i32 5016333, label %bb.aa
    i32 5016341, label %bb.ab
    i32 5016349, label %bb.ac
    i32 5016357, label %bb.ad
    i32 5016365, label %bb.ae
    i32 5016373, label %bb.af
    i32 5016381, label %bb.ag
  ]

bb.s:                                             ; preds = %bb.r
  br label %bb.ai

bb.t:                                             ; preds = %bb.r
  br label %bb.ai

bb.u:                                             ; preds = %bb.r
  br label %bb.ai

bb.v:                                             ; preds = %bb.r
  br label %bb.ai

bb.w:                                             ; preds = %bb.r
  br label %bb.ai

bb.x:                                             ; preds = %bb.r
  br label %bb.ai

bb.y:                                             ; preds = %bb.r
  br label %bb.ai

bb.z:                                             ; preds = %bb.r
  br label %bb.ai

bb.aa:                                            ; preds = %bb.r
  br label %bb.ai

bb.ab:                                            ; preds = %bb.r
  br label %bb.ai

bb.ac:                                            ; preds = %bb.r
  br label %bb.ai

bb.ad:                                            ; preds = %bb.r
  br label %bb.ai

bb.ae:                                            ; preds = %bb.r
  br label %bb.ai

bb.af:                                            ; preds = %bb.r
  br label %bb.ai

bb.ag:                                            ; preds = %bb.r
  br label %bb.ai

bb.ah:                                            ; preds = %bb.r, %bb.b
  br label %bb.ai

bb.ai:                                            ; preds = %bb.r, %bb.b, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.0 = phi i32 [ 0, %bb.ah ], [ 1689543, %bb.ag ], [ 4769729, %bb.c ], [ 4769730, %bb.d ], [ 4769731, %bb.e ], [ 4769732, %bb.f ], [ 4769733, %bb.g ], [ 4769734, %bb.h ], [ 4769735, %bb.i ], [ 4835264, %bb.j ], [ 4835265, %bb.k ], [ 4835266, %bb.l ], [ 4835267, %bb.m ], [ 4835268, %bb.n ], [ 4835269, %bb.o ], [ 4835270, %bb.p ], [ 4835271, %bb.q ], [ 4769728, %bb.b ], [ 1624001, %bb.s ], [ 1624002, %bb.t ], [ 1624003, %bb.u ], [ 1624004, %bb.v ], [ 1624005, %bb.w ], [ 1624006, %bb.x ], [ 1624007, %bb.y ], [ 1689536, %bb.z ], [ 1689537, %bb.aa ], [ 1689538, %bb.ab ], [ 1689539, %bb.ac ], [ 1689540, %bb.ad ], [ 1689541, %bb.ae ], [ 1689542, %bb.af ], [ 1624000, %bb.r ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRNS_12InputSectionIS1_EEEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(77) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(401) ptr @_ZN4mold10SyncStreamlsIRNS_12InputSectionINS_6X86_64EEEEERS0_OT_(ptr noundef nonnull align 8 dereferenceable(401) %0, ptr noundef nonnull align 8 dereferenceable(77) %1) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA36_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 1 dereferenceable(36) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(36) %1) #16
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(36) %1, i64 noundef %i.b) #16 ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRNS_6ElfRelIS1_EEEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 1 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.0.copyload.i.i.i = load i32, ptr %i.b, align 1
  call void @_ZN4mold13rel_to_stringINS_6X86_64EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, i32 noundef %.0.copyload.i.i.i) #16
  %i.c = load ptr, ptr %2, align 8, !tbaa !341
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !342
  %i.f = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.c, i64 noundef %i.e) #16 ; 0 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !341    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4mold10SyncStreamlsIRNS_6ElfRelINS_6X86_64EEEEERS0_OT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.a
  %i.j = load i64, ptr %i.h, align 8, !tbaa !343
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #23
  br label %_ZN4mold10SyncStreamlsIRNS_6ElfRelINS_6X86_64EEEEERS0_OT_.exit

_ZN4mold10SyncStreamlsIRNS_6ElfRelINS_6X86_64EEEEERS0_OT_.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret ptr %0
}

; Function Attrs: mustprogress nounwind
define dso_local void @_ZN4mold12InputSectionINS_6X86_64EE20apply_reloc_nonallocERNS_7ContextIS1_EEPh(ptr noundef nonnull align 8 dereferenceable(77) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %3 = alloca %"class.mold::Fatal", align 8       ; 4 uses
  %4 = alloca %"struct.mold::ElfRel", align 8     ; 10 uses
  %5 = alloca %"class.mold::Fatal", align 8       ; 4 uses
  %6 = alloca %"class.mold::CrelReader", align 8  ; 7 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !348   ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52
  %.val3 = load i32, ptr %i.a, align 4, !tbaa !347 ; 2 uses
  %.not.i = icmp eq i32 %.val3, -1
  br i1 %.not.i, label %"_ZNK4mold12InputSectionINS_6X86_64EE14for_each_relocIZNS2_20apply_reloc_nonallocERNS_7ContextIS1_EEPhE3$_0EEvS6_T_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 16
end_hunk_1
begin_hunk_2_@"_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_13rewrite_endbrERNS9_7ContextISB_EEE3$_2SD_EEKNS1_16auto_partitionerEE8run_bodyERS4_":bb.a

bb.ac:                                            ; preds = %_ZNK4mold12InputSectionINS_6X86_64EE12get_contentsEv.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dv, i64 48
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !378
  %i.fa = sext i32 %i.ez to i64                   ; 3 uses
  %i.fb = load ptr, ptr %i.dv, align 8, !tbaa !348, !nonnull !337, !align !349 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !379 ; 2 uses
  %i.fe = icmp ugt i64 %i.fd, %i.fa
  br i1 %i.fe, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !350
  %i.fh = getelementptr inbounds nuw [64 x i8], ptr %i.fg, i64 %i.fa
  br label %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fb, i64 480
  %i.fj = sub nuw i64 %i.fa, %i.fd
  %i.fk = load ptr, ptr %i.fi, align 8, !tbaa !403
  %i.fl = getelementptr inbounds nuw [64 x i8], ptr %i.fk, i64 %i.fj
  br label %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ae, %bb.ad
  %.0.i.i33.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.fh, %bb.ad ], [ %i.fl, %bb.ae ]
  %i.fm = getelementptr inbounds nuw i8, ptr %.0.i.i33.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %.0.copyload.i.i34.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.fm, align 1
  %i.fn = and i64 %.0.copyload.i.i34.i.i.i.i.i.i.i.i.i.i.i, 4
  %i.fo = icmp eq i64 %i.fn, 0
  %i.fp = icmp slt i64 %.0.copyload.i31.i.i.i.i.i.i.i.i.i.i.i, 0
  %or.cond.not3.i.i.i.i.i.i.i.i.i.i.i.i = or i1 %i.fp, %i.fo
  %.not17.i.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i64 %.0.copyload.i31.i.i.i.i.i.i.i.i.i.i.i, %i.ev
  %or.cond18.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %or.cond.not3.i.i.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not17.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond18.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZZN4mold13rewrite_endbrERNS_7ContextINS_6X86_64EEEENK3$_1clEPNS_12InputSectionIS1_EEl.exit.i.i.i.i.i.i.i.i.i.i.i", label %bb.af

bb.af:                                            ; preds = %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.dz, i64 %.0.copyload.i31.i.i.i.i.i.i.i.i.i.i.i
  %i.fr = load i32, ptr %i.fq, align 1
  %i.fs = load i32, ptr %.val20.i.i.i.i.i.i.i.i.i.i.i, align 1
  %i.ft = icmp ne i32 %i.fr, %i.fs
  %i.fu = zext i1 %i.ft to i32
  %i.fv = icmp eq i32 %i.fu, 0
  br i1 %i.fv, label %"_ZZN4mold13rewrite_endbrERNS_7ContextINS_6X86_64EEEENK3$_1clEPNS_12InputSectionIS1_EEl.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i", label %"_ZZN4mold13rewrite_endbrERNS_7ContextINS_6X86_64EEEENK3$_1clEPNS_12InputSectionIS1_EEl.exit.i.i.i.i.i.i.i.i.i.i.i"

bb.ag:                                            ; preds = %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.fw = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !376 ; 4 uses
  br i1 %.not.i32.i.i.i.i.i.i.i.i.i.i.i, label %"_ZZN4mold13rewrite_endbrERNS_7ContextINS_6X86_64EEEENK3$_1clEPNS_12InputSectionIS1_EEl.exit.i.i.i.i.i.i.i.i.i.i.i", label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fy = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !387 ; 2 uses
  %.not.i.i38.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fz, null
  br i1 %.not.i.i38.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK4mold12InputSectionINS_6X86_64EE12get_contentsEv.exit.i45.i.i.i.i.i.i.i.i.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ga = getelementptr inbounds nuw i8, ptr %i.dv, i64 48
  %i.gb = load i32, ptr %i.ga, align 8, !tbaa !378
  %i.gc = sext i32 %i.gb to i64                   ; 3 uses
  %i.gd = load ptr, ptr %i.dv, align 8, !tbaa !348, !nonnull !337, !align !349 ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 24
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !379 ; 2 uses
  %i.gg = icmp ugt i64 %i.gf, %i.gc
  br i1 %i.gg, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !350
  %i.gj = getelementptr inbounds nuw [64 x i8], ptr %i.gi, i64 %i.gc
  br label %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit3.i.i39.i.i.i.i.i.i.i.i.i.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gd, i64 480
  %i.gl = sub nuw i64 %i.gc, %i.gf
  %i.gm = load ptr, ptr %i.gk, align 8, !tbaa !403
  %i.gn = getelementptr inbounds nuw [64 x i8], ptr %i.gm, i64 %i.gl
  br label %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit3.i.i39.i.i.i.i.i.i.i.i.i.i.i

_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit3.i.i39.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ak, %bb.aj
  %.pn.i.i40.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gj, %bb.aj ], [ %i.gn, %bb.ak ] ; 2 uses
  %.0.copyload.i7.in.i.i41.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i40.i.i.i.i.i.i.i.i.i.i.i, i64 32
  %.0.copyload.i7.i.i42.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.0.copyload.i7.in.i.i41.i.i.i.i.i.i.i.i.i.i.i, align 1 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.pn.i.i40.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %.0.copyload.i4.i.i43.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.go, align 1
  %i.gp = and i64 %.0.copyload.i4.i.i43.i.i.i.i.i.i.i.i.i.i.i, 2048
  %.not1.i.i44.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.gp, 0
  br i1 %.not1.i.i44.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK4mold12InputSectionINS_6X86_64EE12get_contentsEv.exit.i45.i.i.i.i.i.i.i.i.i.i.i, label %bb.al

bb.al:                                            ; preds = %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit3.i.i39.i.i.i.i.i.i.i.i.i.i.i
  %i.gq = getelementptr inbounds nuw i8, ptr %i.dv, i64 62
  %i.gr = load i8, ptr %i.gq, align 2, !tbaa !404, !range !336, !noundef !337
  %i.gs = trunc nuw i8 %i.gr to i1
  br i1 %i.gs, label %bb.am, label %_ZNK4mold12InputSectionINS_6X86_64EE12get_contentsEv.exit.i45.i.i.i.i.i.i.i.i.i.i.i

bb.am:                                            ; preds = %bb.al
  %i.gt = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !405
  br label %_ZNK4mold12InputSectionINS_6X86_64EE12get_contentsEv.exit.i45.i.i.i.i.i.i.i.i.i.i.i

_ZNK4mold12InputSectionINS_6X86_64EE12get_contentsEv.exit.i45.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.am, %bb.al, %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit3.i.i39.i.i.i.i.i.i.i.i.i.i.i, %bb.ah
  %.sroa.0.0.i.i46.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.ah ], [ %i.gu, %bb.am ], [ %.0.copyload.i7.i.i42.i.i.i.i.i.i.i.i.i.i.i, %bb.al ], [ %.0.copyload.i7.i.i42.i.i.i.i.i.i.i.i.i.i.i, %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit3.i.i39.i.i.i.i.i.i.i.i.i.i.i ]
  %i.gv = add nsw i64 %.sroa.0.0.i.i46.i.i.i.i.i.i.i.i.i.i.i, -4
  %i.gw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !367 ; 2 uses
  %.not16.i47.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gx, null
  br i1 %.not16.i47.i.i.i.i.i.i.i.i.i.i.i, label %"_ZZN4mold13rewrite_endbrERNS_7ContextINS_6X86_64EEEENK3$_1clEPNS_12InputSectionIS1_EEl.exit.i.i.i.i.i.i.i.i.i.i.i", label %bb.an

bb.an:                                            ; preds = %_ZNK4mold12InputSectionINS_6X86_64EE12get_contentsEv.exit.i45.i.i.i.i.i.i.i.i.i.i.i
  %i.gy = getelementptr inbounds nuw i8, ptr %i.dv, i64 48
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !378
  %i.ha = sext i32 %i.gz to i64                   ; 3 uses
  %i.hb = load ptr, ptr %i.dv, align 8, !tbaa !348, !nonnull !337, !align !349 ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 24
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !379 ; 2 uses
  %i.he = icmp ugt i64 %i.hd, %i.ha
  br i1 %i.he, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !350
  %i.hh = getelementptr inbounds nuw [64 x i8], ptr %i.hg, i64 %i.ha
  br label %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit.i48.i.i.i.i.i.i.i.i.i.i.i

bb.ap:                                            ; preds = %bb.an
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hb, i64 480
  %i.hj = sub nuw i64 %i.ha, %i.hd
  %i.hk = load ptr, ptr %i.hi, align 8, !tbaa !403
  %i.hl = getelementptr inbounds nuw [64 x i8], ptr %i.hk, i64 %i.hj
  br label %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit.i48.i.i.i.i.i.i.i.i.i.i.i

_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit.i48.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ap, %bb.ao
  %.0.i.i49.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.hh, %bb.ao ], [ %i.hl, %bb.ap ]
  %i.hm = getelementptr inbounds nuw i8, ptr %.0.i.i49.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %.0.copyload.i.i50.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.hm, align 1
  %i.hn = and i64 %.0.copyload.i.i50.i.i.i.i.i.i.i.i.i.i.i, 4
  %i.ho = icmp eq i64 %i.hn, 0
  %i.hp = icmp slt i64 %i.fx, 0
  %or.cond.not3.i51.i.i.i.i.i.i.i.i.i.i.i = or i1 %i.hp, %i.ho
  %.not17.i52.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i64 %i.fx, %i.gv
  %or.cond18.i53.i.i.i.i.i.i.i.i.i.i.i = select i1 %or.cond.not3.i51.i.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not17.i52.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond18.i53.i.i.i.i.i.i.i.i.i.i.i, label %"_ZZN4mold13rewrite_endbrERNS_7ContextINS_6X86_64EEEENK3$_1clEPNS_12InputSectionIS1_EEl.exit.i.i.i.i.i.i.i.i.i.i.i", label %bb.aq

bb.aq:                                            ; preds = %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit.i48.i.i.i.i.i.i.i.i.i.i.i
  %i.hq = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.fx
  %i.hr = load i32, ptr %i.hq, align 1
  %i.hs = load i32, ptr %.val20.i.i.i.i.i.i.i.i.i.i.i, align 1
  %i.ht = icmp ne i32 %i.hr, %i.hs
  %i.hu = zext i1 %i.ht to i32
  %i.hv = icmp eq i32 %i.hu, 0
  br i1 %i.hv, label %"_ZZN4mold13rewrite_endbrERNS_7ContextINS_6X86_64EEEENK3$_1clEPNS_12InputSectionIS1_EEl.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i", label %"_ZZN4mold13rewrite_endbrERNS_7ContextINS_6X86_64EEEENK3$_1clEPNS_12InputSectionIS1_EEl.exit.i.i.i.i.i.i.i.i.i.i.i"

"_ZZN4mold13rewrite_endbrERNS_7ContextINS_6X86_64EEEENK3$_1clEPNS_12InputSectionIS1_EEl.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.aq, %bb.af
  %.sink107.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ex, %bb.af ], [ %i.gx, %bb.aq ]
  %.sink103.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.0.copyload.i31.i.i.i.i.i.i.i.i.i.i.i, %bb.af ], [ %i.fx, %bb.aq ]
  %i.hw = getelementptr inbounds nuw i8, ptr %.val21.i.i.i.i.i.i.i.i.i.i.i, i64 13176
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !340
  %i.hy = getelementptr inbounds nuw i8, ptr %.sink107.i.i.i.i.i.i.i.i.i.i.i, i64 48
  %.0.copyload.i19.i55.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.hy, align 1
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hx, i64 %.0.copyload.i19.i55.i.i.i.i.i.i.i.i.i.i.i
  %i.ia = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !368
  %i.ic = getelementptr inbounds i8, ptr %i.hz, i64 %i.ib
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 %.sink103.i.i.i.i.i.i.i.i.i.i.i
  %i.ie = load i32, ptr %.val20.i.i.i.i.i.i.i.i.i.i.i, align 1
  store i32 %i.ie, ptr %i.id, align 1
  br label %"_ZZN4mold13rewrite_endbrERNS_7ContextINS_6X86_64EEEENK3$_1clEPNS_12InputSectionIS1_EEl.exit.i.i.i.i.i.i.i.i.i.i.i"

"_ZZN4mold13rewrite_endbrERNS_7ContextINS_6X86_64EEEENK3$_1clEPNS_12InputSectionIS1_EEl.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZZN4mold13rewrite_endbrERNS_7ContextINS_6X86_64EEEENK3$_1clEPNS_12InputSectionIS1_EEl.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i", %bb.aq, %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit.i48.i.i.i.i.i.i.i.i.i.i.i, %_ZNK4mold12InputSectionINS_6X86_64EE12get_contentsEv.exit.i45.i.i.i.i.i.i.i.i.i.i.i, %bb.ag, %bb.af, %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNK4mold12InputSectionINS_6X86_64EE12get_contentsEv.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.v, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.057.071.i.i.i.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.ig = icmp eq ptr %i.if, %i.cl
  br i1 %i.ig, label %_ZNK4mold17InputSectionTableINS_6X86_64EE8IteratordeEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_ZNK4mold17InputSectionTableINS_6X86_64EE8IteratordeEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i: ; preds = %"_ZZN4mold13rewrite_endbrERNS_7ContextINS_6X86_64EEEENK3$_1clEPNS_12InputSectionIS1_EEl.exit.i.i.i.i.i.i.i.i.i.i.i", %_ZNK4mold12InputSectionINS_6X86_64EE8get_relsERNS_7ContextIS1_EE.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.n, %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.j, %_ZNK4mold17InputSectionTableINS_6X86_64EE8IteratordeEv.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.c
  %i.ih = add nuw nsw i64 %.sroa.4.073.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.not68.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ih, %i.n
  br i1 %.not68.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZN4mold13rewrite_endbrERNS3_7ContextINS3_6X86_64EEEE3$_2E4callIRPNS3_10ObjectFileIS5_EENS1_11feeder_implIS8_SD_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIT_Efp0_EEcvv_EERKS8_OSH_PT0_.exit.i.i.i.i.i", label %bb.c

"_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZN4mold13rewrite_endbrERNS3_7ContextINS3_6X86_64EEEE3$_2E4callIRPNS3_10ObjectFileIS5_EENS1_11feeder_implIS8_SD_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIT_Efp0_EEcvv_EERKS8_OSH_PT0_.exit.i.i.i.i.i": ; preds = %_ZNK4mold17InputSectionTableINS_6X86_64EE8IteratordeEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i, %bb.b
  %i.ii = add i64 %.02.i.i.i.i.i, 1               ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ii, %.0.val
  br i1 %.not.i.i.i.i.i, label %"_ZN3tbb6detail2d06invokeIRKNS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS7_6X86_64EEESt6vectorISB_SaISB_EEEEZNS7_13rewrite_endbrERNS7_7ContextIS9_EEE3$_2SB_EEJRNS0_2d113blocked_rangeImEEEEENSt13invoke_resultIT_JDpT0_EE4typeEOST_DpOSU_.exit", label %bb.b, !llvm.loop !621

"_ZN3tbb6detail2d06invokeIRKNS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS7_6X86_64EEESt6vectorISB_SaISB_EEEEZNS7_13rewrite_endbrERNS7_7ContextIS9_EEE3$_2SB_EEJRNS0_2d113blocked_rangeImEEEEENSt13invoke_resultIT_JDpT0_EE4typeEOST_DpOSU_.exit": ; preds = %"_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZN4mold13rewrite_endbrERNS3_7ContextINS3_6X86_64EEEE3$_2E4callIRPNS3_10ObjectFileIS5_EENS1_11feeder_implIS8_SD_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIT_Efp0_EEcvv_EERKS8_OSH_PT0_.exit.i.i.i.i.i", %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #22

attributes #0 = { nounwind "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { mustprogress nounwind "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { builtin nounwind }
attributes #24 = { noreturn nounwind }
attributes #25 = { nounwind willreturn memory(read) }
attributes #26 = { builtin nounwind allocsize(0) }
attributes #27 = { cold nounwind }

!llvm.module.flags = !{!6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !371}
!1 = distinct !{!1, !371}
!2 = distinct !{!2, !371}
!3 = distinct !{!3, !371}
!4 = distinct !{null}
!5 = distinct !{null}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"any pointer", !10, i64 0}
!15 = !{!"any p2 pointer", !14, i64 0}
!16 = !{!"_ZTSN4mold13BsymbolicKindE", !10, i64 0}
!17 = !{!"_ZTSN4mold7BuildIdUt_E", !10, i64 0}
!18 = !{!"p1 omnipotent char", !14, i64 0}
!19 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !18, i64 0, !18, i64 8, !18, i64 16}
!20 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE12_Vector_implE", !19, i64 0}
!21 = !{!"_ZTSSt12_Vector_baseIhSaIhEE", !20, i64 0}
!22 = !{!"_ZTSSt6vectorIhSaIhEE", !21, i64 0}
!23 = !{!"long", !10, i64 0}
!24 = !{!"_ZTSN4mold7BuildIdE", !17, i64 0, !22, i64 8, !23, i64 32}
!25 = !{!"_ZTSN4mold13CetReportKindE", !10, i64 0}
!26 = !{!"_ZTSSt9once_flag", !11, i64 0}
!27 = !{!"bool", !10, i64 0}
!28 = !{!"p1 _ZTSN4mold4Glob14LiteralPatternE", !14, i64 0}
!29 = !{!"_ZTSNSt12_Vector_baseIN4mold4Glob14LiteralPatternESaIS2_EE17_Vector_impl_dataE", !28, i64 0, !28, i64 8, !28, i64 16}
!30 = !{!"_ZTSNSt12_Vector_baseIN4mold4Glob14LiteralPatternESaIS2_EE12_Vector_implE", !29, i64 0}
!31 = !{!"_ZTSSt12_Vector_baseIN4mold4Glob14LiteralPatternESaIS2_EE", !30, i64 0}
!32 = !{!"_ZTSSt6vectorIN4mold4Glob14LiteralPatternESaIS2_EE", !31, i64 0}
!33 = !{!"p1 _ZTSN4mold4Glob7PatternE", !14, i64 0}
!34 = !{!"_ZTSNSt12_Vector_baseIN4mold4Glob7PatternESaIS2_EE17_Vector_impl_dataE", !33, i64 0, !33, i64 8, !33, i64 16}
!35 = !{!"_ZTSNSt12_Vector_baseIN4mold4Glob7PatternESaIS2_EE12_Vector_implE", !34, i64 0}
!36 = !{!"_ZTSSt12_Vector_baseIN4mold4Glob7PatternESaIS2_EE", !35, i64 0}
!37 = !{!"_ZTSSt6vectorIN4mold4Glob7PatternESaIS2_EE", !36, i64 0}
!38 = !{!"p1 long", !14, i64 0}
!39 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !38, i64 0, !38, i64 8, !38, i64 16}
!40 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !39, i64 0}
!41 = !{!"_ZTSSt12_Vector_baseImSaImEE", !40, i64 0}
!42 = !{!"_ZTSSt6vectorImSaImEE", !41, i64 0}
!43 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataE", !38, i64 0, !38, i64 8, !38, i64 16}
!44 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE12_Vector_implE", !43, i64 0}
!45 = !{!"_ZTSSt12_Vector_baseIlSaIlEE", !44, i64 0}
!46 = !{!"_ZTSSt6vectorIlSaIlEE", !45, i64 0}
!47 = !{!"_ZTSN4mold4Glob3NfaE", !42, i64 0, !42, i64 24, !42, i64 48, !42, i64 72, !46, i64 96}
!48 = !{!"_ZTSSt5arrayIiLm256EE", !10, i64 0}
!49 = !{!"p1 _ZTSN4mold11AhoCorasick8TrieNodeE", !14, i64 0}
!50 = !{!"_ZTSNSt12_Vector_baseIN4mold11AhoCorasick8TrieNodeESaIS2_EE17_Vector_impl_dataE", !49, i64 0, !49, i64 8, !49, i64 16}
!51 = !{!"_ZTSNSt12_Vector_baseIN4mold11AhoCorasick8TrieNodeESaIS2_EE12_Vector_implE", !50, i64 0}
!52 = !{!"_ZTSSt12_Vector_baseIN4mold11AhoCorasick8TrieNodeESaIS2_EE", !51, i64 0}
!53 = !{!"_ZTSSt6vectorIN4mold11AhoCorasick8TrieNodeESaIS2_EE", !52, i64 0}
!54 = !{!"_ZTSN4mold11AhoCorasickE", !48, i64 0, !53, i64 1024}
!55 = !{!"_ZTSN4mold4GlobE", !26, i64 0, !27, i64 4, !27, i64 5, !23, i64 8, !32, i64 16, !32, i64 40, !32, i64 64, !37, i64 88, !47, i64 112, !54, i64 232}
!56 = !{!"_ZTSN4mold16SeparateCodeKindE", !10, i64 0}
!57 = !{!"_ZTSN4mold19ShuffleSectionsKindE", !10, i64 0}
!58 = !{!"p1 _ZTSN4mold6SymbolINS_6X86_64EEE", !14, i64 0}
!59 = !{!"_ZTSN4mold14UnresolvedKindE", !10, i64 0}
!60 = !{!"_ZTSSt22_Optional_payload_baseIlE", !10, i64 0, !27, i64 8}
!61 = !{!"_ZTSSt17_Optional_payloadIlLb1ELb1ELb1EE", !60, i64 0}
!62 = !{!"_ZTSSt14_Optional_baseIlLb1ELb1EE", !61, i64 0}
!63 = !{!"_ZTSSt8optionalIlE", !62, i64 0}
!64 = !{!"_ZTSSt22_Optional_payload_baseISt6vectorIPN4mold6SymbolINS1_6X86_64EEESaIS5_EEE", !10, i64 0, !27, i64 24}
!65 = !{!"_ZTSSt17_Optional_payloadISt6vectorIPN4mold6SymbolINS1_6X86_64EEESaIS5_EELb1ELb0ELb0EE", !64, i64 0}
!66 = !{!"_ZTSSt17_Optional_payloadISt6vectorIPN4mold6SymbolINS1_6X86_64EEESaIS5_EELb0ELb0ELb0EE", !65, i64 0}
!67 = !{!"_ZTSSt14_Optional_baseISt6vectorIPN4mold6SymbolINS1_6X86_64EEESaIS5_EELb0ELb0EE", !66, i64 0}
!68 = !{!"_ZTSSt8optionalISt6vectorIPN4mold6SymbolINS1_6X86_64EEESaIS5_EEE", !67, i64 0}
!69 = !{!"_ZTSSt22_Optional_payload_baseImE", !10, i64 0, !27, i64 8}
!70 = !{!"_ZTSSt17_Optional_payloadImLb1ELb1ELb1EE", !69, i64 0}
!71 = !{!"_ZTSSt14_Optional_baseImLb1ELb1EE", !70, i64 0}
!72 = !{!"_ZTSSt8optionalImE", !71, i64 0}
!73 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !18, i64 0}
!74 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !73, i64 0, !23, i64 8, !10, i64 16}
!75 = !{!"_ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !23, i64 0, !18, i64 8}
!76 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !15, i64 0}
!77 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !14, i64 0}
!78 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !77, i64 0}
!79 = !{!"float", !10, i64 0}
!80 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !79, i64 0, !23, i64 8}
!81 = !{!"_ZTSSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_mESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE", !76, i64 0, !23, i64 8, !78, i64 16, !23, i64 24, !80, i64 32, !77, i64 48}
!82 = !{!"_ZTSSt13unordered_mapISt17basic_string_viewIcSt11char_traitsIcEEmSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_mEEE", !81, i64 0}
!83 = !{!"_ZTSSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE", !76, i64 0, !23, i64 8, !78, i64 16, !23, i64 24, !80, i64 32, !77, i64 48}
!84 = !{!"_ZTSSt13unordered_setISt17basic_string_viewIcSt11char_traitsIcEESt4hashIS3_ESt8equal_toIS3_ESaIS3_EE", !83, i64 0}
!85 = !{!"p1 _ZTSN4mold12SectionOrderE", !14, i64 0}
!86 = !{!"_ZTSNSt12_Vector_baseIN4mold12SectionOrderESaIS1_EE17_Vector_impl_dataE", !85, i64 0, !85, i64 8, !85, i64 16}
!87 = !{!"_ZTSNSt12_Vector_baseIN4mold12SectionOrderESaIS1_EE12_Vector_implE", !86, i64 0}
!88 = !{!"_ZTSSt12_Vector_baseIN4mold12SectionOrderESaIS1_EE", !87, i64 0}
!89 = !{!"_ZTSSt6vectorIN4mold12SectionOrderESaIS1_EE", !88, i64 0}
!90 = !{!"p2 _ZTSN4mold6SymbolINS_6X86_64EEE", !15, i64 0}
!91 = !{!"_ZTSNSt12_Vector_baseIPN4mold6SymbolINS0_6X86_64EEESaIS4_EE17_Vector_impl_dataE", !90, i64 0, !90, i64 8, !90, i64 16}
!92 = !{!"_ZTSNSt12_Vector_baseIPN4mold6SymbolINS0_6X86_64EEESaIS4_EE12_Vector_implE", !91, i64 0}
!93 = !{!"_ZTSSt12_Vector_baseIPN4mold6SymbolINS0_6X86_64EEESaIS4_EE", !92, i64 0}
!94 = !{!"_ZTSSt6vectorIPN4mold6SymbolINS0_6X86_64EEESaIS4_EE", !93, i64 0}
!95 = !{!"p1 _ZTSSt4pairIPN4mold6SymbolINS0_6X86_64EEESt7variantIJS4_mEEE", !14, i64 0}
!96 = !{!"_ZTSNSt12_Vector_baseISt4pairIPN4mold6SymbolINS1_6X86_64EEESt7variantIJS5_mEEESaIS8_EE17_Vector_impl_dataE", !95, i64 0, !95, i64 8, !95, i64 16}
!97 = !{!"_ZTSNSt12_Vector_baseISt4pairIPN4mold6SymbolINS1_6X86_64EEESt7variantIJS5_mEEESaIS8_EE12_Vector_implE", !96, i64 0}
!98 = !{!"_ZTSSt12_Vector_baseISt4pairIPN4mold6SymbolINS1_6X86_64EEESt7variantIJS5_mEEESaIS8_EE", !97, i64 0}
!99 = !{!"_ZTSSt6vectorISt4pairIPN4mold6SymbolINS1_6X86_64EEESt7variantIJS5_mEEESaIS8_EE", !98, i64 0}
!100 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !14, i64 0}
!101 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !100, i64 0, !100, i64 8, !100, i64 16}
!102 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !101, i64 0}
!103 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !102, i64 0}
!104 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !103, i64 0}
!105 = !{!"p1 _ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !14, i64 0}
!106 = !{!"_ZTSNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_Vector_impl_dataE", !105, i64 0, !105, i64 8, !105, i64 16}
!107 = !{!"_ZTSNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_Vector_implE", !106, i64 0}
!108 = !{!"_ZTSSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE", !107, i64 0}
!109 = !{!"_ZTSSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE", !108, i64 0}
!110 = !{!"_ZTSN4mold7ContextINS_6X86_64EEUt_E", !16, i64 0, !24, i64 8, !25, i64 48, !55, i64 56, !55, i64 1336, !56, i64 2616, !57, i64 2620, !58, i64 2624, !58, i64 2632, !58, i64 2640, !59, i64 2648, !27, i64 2652, !27, i64 2653, !27, i64 2654, !27, i64 2655, !27, i64 2656, !27, i64 2657, !27, i64 2658, !27, i64 2659, !27, i64 2660, !27, i64 2661, !27, i64 2662, !27, i64 2663, !27, i64 2664, !27, i64 2665, !27, i64 2666, !27, i64 2667, !27, i64 2668, !27, i64 2669, !27, i64 2670, !27, i64 2671, !27, i64 2672, !27, i64 2673, !27, i64 2674, !27, i64 2675, !27, i64 2676, !27, i64 2677, !27, i64 2678, !27, i64 2679, !27, i64 2680, !27, i64 2681, !27, i64 2682, !27, i64 2683, !27, i64 2684, !27, i64 2685, !27, i64 2686, !27, i64 2687, !27, i64 2688, !27, i64 2689, !27, i64 2690, !27, i64 2691, !27, i64 2692, !27, i64 2693, !27, i64 2694, !27, i64 2695, !27, i64 2696, !27, i64 2697, !27, i64 2698, !27, i64 2699, !27, i64 2700, !27, i64 2701, !27, i64 2702, !27, i64 2703, !27, i64 2704, !27, i64 2705, !27, i64 2706, !27, i64 2707, !27, i64 2708, !27, i64 2709, !27, i64 2710, !27, i64 2711, !27, i64 2712, !27, i64 2713, !27, i64 2714, !27, i64 2715, !27, i64 2716, !27, i64 2717, !27, i64 2718, !27, i64 2719, !27, i64 2720, !27, i64 2721, !27, i64 2722, !27, i64 2723, !27, i64 2724, !27, i64 2725, !27, i64 2726, !27, i64 2727, !27, i64 2728, !27, i64 2729, !23, i64 2736, !23, i64 2744, !23, i64 2752, !23, i64 2760, !23, i64 2768, !23, i64 2776, !63, i64 2784, !68, i64 2800, !72, i64 2832, !72, i64 2848, !74, i64 2864, !74, i64 2896, !74, i64 2928, !74, i64 2960, !74, i64 2992, !74, i64 3024, !74, i64 3056, !74, i64 3088, !74, i64 3120, !74, i64 3152, !74, i64 3184, !74, i64 3216, !74, i64 3248, !74, i64 3280, !74, i64 3312, !74, i64 3344, !75, i64 3376, !82, i64 3392, !82, i64 3448, !84, i64 3504, !84, i64 3560, !84, i64 3616, !84, i64 3672, !89, i64 3728, !94, i64 3752, !94, i64 3776, !99, i64 3800, !104, i64 3824, !104, i64 3848, !104, i64 3872, !109, i64 3896, !109, i64 3920, !109, i64 3944, !11, i64 3968, !23, i64 3976, !23, i64 3984}
!111 = !{!"_ZTSSt22_Optional_payload_baseIN3tbb6detail2d114global_controlEE", !10, i64 0, !27, i64 24}
!112 = !{!"_ZTSSt17_Optional_payloadIN3tbb6detail2d114global_controlELb1ELb0ELb0EE", !111, i64 0}
!113 = !{!"_ZTSSt17_Optional_payloadIN3tbb6detail2d114global_controlELb0ELb0ELb0EE", !112, i64 0}
!114 = !{!"_ZTSSt14_Optional_baseIN3tbb6detail2d114global_controlELb0ELb0EE", !113, i64 0}
!115 = !{!"_ZTSSt8optionalIN3tbb6detail2d114global_controlEE", !114, i64 0}
!116 = !{!"p1 _ZTSN4mold14VersionPatternE", !14, i64 0}
!117 = !{!"_ZTSNSt12_Vector_baseIN4mold14VersionPatternESaIS1_EE17_Vector_impl_dataE", !116, i64 0, !116, i64 8, !116, i64 16}
!118 = !{!"_ZTSNSt12_Vector_baseIN4mold14VersionPatternESaIS1_EE12_Vector_implE", !117, i64 0}
!119 = !{!"_ZTSSt12_Vector_baseIN4mold14VersionPatternESaIS1_EE", !118, i64 0}
!120 = !{!"_ZTSSt6vectorIN4mold14VersionPatternESaIS1_EE", !119, i64 0}
!121 = !{!"p1 _ZTSN4mold14DynamicPatternE", !14, i64 0}
!122 = !{!"_ZTSNSt12_Vector_baseIN4mold14DynamicPatternESaIS1_EE17_Vector_impl_dataE", !121, i64 0, !121, i64 8, !121, i64 16}
!123 = !{!"_ZTSNSt12_Vector_baseIN4mold14DynamicPatternESaIS1_EE12_Vector_implE", !122, i64 0}
!124 = !{!"_ZTSSt12_Vector_baseIN4mold14DynamicPatternESaIS1_EE", !123, i64 0}
!125 = !{!"_ZTSSt6vectorIN4mold14DynamicPatternESaIS1_EE", !124, i64 0}
!126 = !{!"p1 _ZTSSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS3_6X86_64EEEE", !14, i64 0}
!127 = !{!"_ZTSN3tbb6detail2d123cache_aligned_allocatorISt6atomicIPSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEEEEE"}
!128 = !{!"p1 _ZTSSt6atomicIPSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS4_6X86_64EEEEE", !14, i64 0}
!129 = !{!"_ZTSSt13__atomic_baseIPSt6atomicIPSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS5_6X86_64EEEEEE", !128, i64 0}
!130 = !{!"_ZTSSt6atomicIPS_IPSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS4_6X86_64EEEEEE", !129, i64 0}
!131 = !{!"_ZTSSt13__atomic_baseImE", !23, i64 0}
!132 = !{!"_ZTSSt6atomicImE", !131, i64 0}
!133 = !{!"_ZTSSt13__atomic_baseIbE", !27, i64 0}
!134 = !{!"_ZTSSt6atomicIbE", !133, i64 0}
!135 = !{!"_ZTSN3tbb6detail2d113segment_tableISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS7_6X86_64EEEENS1_23cache_aligned_allocatorISC_EENS1_17concurrent_vectorISC_SE_EELm3EEE", !126, i64 0, !127, i64 8, !130, i64 16, !10, i64 24, !132, i64 48, !132, i64 56, !134, i64 64}
!136 = !{!"_ZTSN3tbb6detail2d117concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS7_6X86_64EEEENS1_23cache_aligned_allocatorISC_EEEE", !135, i64 0}
!137 = !{!"_ZTSN4mold13ArenaResourceE", !18, i64 0, !132, i64 8}
!138 = !{!"p1 _ZTSN3tbb6detail2d18ets_baseILNS1_18ets_key_usage_typeE1EE5arrayE", !14, i64 0}
!139 = !{!"_ZTSSt13__atomic_baseIPN3tbb6detail2d18ets_baseILNS2_18ets_key_usage_typeE1EE5arrayEE", !138, i64 0}
!140 = !{!"_ZTSSt6atomicIPN3tbb6detail2d18ets_baseILNS2_18ets_key_usage_typeE1EE5arrayEE", !139, i64 0}
!141 = !{!"_ZTSN3tbb6detail2d18ets_baseILNS1_18ets_key_usage_typeE1EEE", !140, i64 8, !132, i64 16}
!142 = !{!"p1 _ZTSN3tbb6detail2d113callback_baseE", !14, i64 0}
!143 = !{!"p1 _ZTSN3tbb6detail2d06paddedINS0_2d111ets_elementISt5arrayISt6vectorIN4mold10ShardedMapINS7_6SymbolINS7_6X86_64EEEE7PendingESaISD_EELm64EEEELm128EEE", !14, i64 0}
!144 = !{!"_ZTSN3tbb6detail2d123cache_aligned_allocatorISt6atomicIPNS0_2d06paddedINS1_11ets_elementISt5arrayISt6vectorIN4mold10ShardedMapINS9_6SymbolINS9_6X86_64EEEE7PendingESaISF_EELm64EEEELm128EEEEEE"}
!145 = !{!"p1 _ZTSSt6atomicIPN3tbb6detail2d06paddedINS1_2d111ets_elementISt5arrayISt6vectorIN4mold10ShardedMapINS8_6SymbolINS8_6X86_64EEEE7PendingESaISE_EELm64EEEELm128EEEE", !14, i64 0}
!146 = !{!"_ZTSSt13__atomic_baseIPSt6atomicIPN3tbb6detail2d06paddedINS2_2d111ets_elementISt5arrayISt6vectorIN4mold10ShardedMapINS9_6SymbolINS9_6X86_64EEEE7PendingESaISF_EELm64EEEELm128EEEEE", !145, i64 0}
!147 = !{!"_ZTSSt6atomicIPS_IPN3tbb6detail2d06paddedINS1_2d111ets_elementISt5arrayISt6vectorIN4mold10ShardedMapINS8_6SymbolINS8_6X86_64EEEE7PendingESaISE_EELm64EEEELm128EEEEE", !146, i64 0}
!148 = !{!"_ZTSN3tbb6detail2d113segment_tableINS0_2d06paddedINS1_11ets_elementISt5arrayISt6vectorIN4mold10ShardedMapINS8_6SymbolINS8_6X86_64EEEE7PendingESaISE_EELm64EEEELm128EEENS1_23cache_aligned_allocatorISJ_EENS1_17concurrent_vectorISJ_SL_EELm3EEE", !143, i64 0, !144, i64 8, !147, i64 16, !10, i64 24, !132, i64 48, !132, i64 56, !134, i64 64}
!149 = !{!"_ZTSN3tbb6detail2d117concurrent_vectorINS0_2d06paddedINS1_11ets_elementISt5arrayISt6vectorIN4mold10ShardedMapINS8_6SymbolINS8_6X86_64EEEE7PendingESaISE_EELm64EEEELm128EEENS1_23cache_aligned_allocatorISJ_EEEE", !148, i64 0}
!150 = !{!"_ZTSN3tbb6detail2d126enumerable_thread_specificISt5arrayISt6vectorIN4mold10ShardedMapINS5_6SymbolINS5_6X86_64EEEE7PendingESaISB_EELm64EENS1_23cache_aligned_allocatorISE_EELNS1_18ets_key_usage_typeE1EEE", !141, i64 0, !142, i64 24, !149, i64 32}
!151 = !{!"_ZTSN4mold10ShardedMapINS_6SymbolINS_6X86_64EEEEE", !10, i64 0, !150, i64 8192}
!152 = !{!"p1 _ZTSSt10unique_ptrIN4mold13MergedSectionINS0_6X86_64EEENS0_18ArenaObjectDeleterIS3_EEE", !14, i64 0}
!153 = !{!"_ZTSN3tbb6detail2d123cache_aligned_allocatorISt6atomicIPSt10unique_ptrIN4mold13MergedSectionINS5_6X86_64EEENS5_18ArenaObjectDeleterIS8_EEEEEE"}
!154 = !{!"p1 _ZTSSt6atomicIPSt10unique_ptrIN4mold13MergedSectionINS1_6X86_64EEENS1_18ArenaObjectDeleterIS4_EEEE", !14, i64 0}
!155 = !{!"_ZTSSt13__atomic_baseIPSt6atomicIPSt10unique_ptrIN4mold13MergedSectionINS2_6X86_64EEENS2_18ArenaObjectDeleterIS5_EEEEE", !154, i64 0}
!156 = !{!"_ZTSSt6atomicIPS_IPSt10unique_ptrIN4mold13MergedSectionINS1_6X86_64EEENS1_18ArenaObjectDeleterIS4_EEEEE", !155, i64 0}
!157 = !{!"_ZTSN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold13MergedSectionINS4_6X86_64EEENS4_18ArenaObjectDeleterIS7_EEENS1_23cache_aligned_allocatorISA_EENS1_17concurrent_vectorISA_SC_EELm3EEE", !152, i64 0, !153, i64 8, !156, i64 16, !10, i64 24, !132, i64 48, !132, i64 56, !134, i64 64}
!158 = !{!"_ZTSN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold13MergedSectionINS4_6X86_64EEENS4_18ArenaObjectDeleterIS7_EEENS1_23cache_aligned_allocatorISA_EEEE", !157, i64 0}
!159 = !{!"p1 _ZTSSt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS1_EE", !14, i64 0}
!160 = !{!"_ZTSN3tbb6detail2d123cache_aligned_allocatorISt6atomicIPSt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS6_EEEEE"}
!161 = !{!"p1 _ZTSSt6atomicIPSt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS2_EEE", !14, i64 0}
!162 = !{!"_ZTSSt13__atomic_baseIPSt6atomicIPSt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS3_EEEE", !161, i64 0}
!163 = !{!"_ZTSSt6atomicIPS_IPSt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS2_EEEE", !162, i64 0}
!164 = !{!"_ZTSN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EENS1_17concurrent_vectorIS8_SA_EELm3EEE", !159, i64 0, !160, i64 8, !163, i64 16, !10, i64 24, !132, i64 48, !132, i64 56, !134, i64 64}
end_hunk_2
