Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/USRGeneration?download=true
inline.NumInlined: 3066
inline.NumDeleted: 1310
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN12_GLOBAL__N_112USRGenerator17VisitFunctionDeclEPKN5clang12FunctionDeclE:bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %.tr6.i, i64 8 ; 2 uses
  %i.bk = load i16, ptr %i.bj, align 8            ; 2 uses
  %i.bl = and i16 %i.bk, 124
  %i.bm = add nsw i16 %i.bl, -20
  %i.bn = icmp ult i16 %i.bm, 64
  br i1 %i.bn, label %_ZN4llvm8dyn_castIN5clang9NamedDeclEKNS1_11DeclContextEEEDcPT0_.exit.i, label %_ZN4llvm8dyn_castIN5clang9NamedDeclEKNS1_11DeclContextEEEDcPT0_.exit.thread.i

_ZN4llvm8dyn_castIN5clang9NamedDeclEKNS1_11DeclContextEEEDcPT0_.exit.i: ; preds = %tailrecurse.i
  %i.bo = tail call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef nonnull %.tr6.i) #13, !inline_history !2 ; 2 uses
  %.not.i193 = icmp eq ptr %i.bo, null
  br i1 %.not.i193, label %_ZN4llvm8dyn_castIN5clang9NamedDeclEKNS1_11DeclContextEEEDcPT0_.exit._ZN4llvm8dyn_castIN5clang9NamedDeclEKNS1_11DeclContextEEEDcPT0_.exit.thread_crit_edge.i, label %bb.k

_ZN4llvm8dyn_castIN5clang9NamedDeclEKNS1_11DeclContextEEEDcPT0_.exit._ZN4llvm8dyn_castIN5clang9NamedDeclEKNS1_11DeclContextEEEDcPT0_.exit.thread_crit_edge.i: ; preds = %_ZN4llvm8dyn_castIN5clang9NamedDeclEKNS1_11DeclContextEEEDcPT0_.exit.i
  %.pre.i = load i16, ptr %i.bj, align 8
  br label %_ZN4llvm8dyn_castIN5clang9NamedDeclEKNS1_11DeclContextEEEDcPT0_.exit.thread.i

bb.k:                                             ; preds = %_ZN4llvm8dyn_castIN5clang9NamedDeclEKNS1_11DeclContextEEEDcPT0_.exit.i
  tail call fastcc void @_ZN5clang11declvisitor4BaseIN4llvm14make_const_ptrEN12_GLOBAL__N_112USRGeneratorEvE5VisitEPKNS_4DeclE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull %i.bo), !inline_history !2
  br label %_ZN12_GLOBAL__N_112USRGenerator16VisitDeclContextEPKN5clang11DeclContextE.exit

_ZN4llvm8dyn_castIN5clang9NamedDeclEKNS1_11DeclContextEEEDcPT0_.exit.thread.i: ; preds = %_ZN4llvm8dyn_castIN5clang9NamedDeclEKNS1_11DeclContextEEEDcPT0_.exit._ZN4llvm8dyn_castIN5clang9NamedDeclEKNS1_11DeclContextEEEDcPT0_.exit.thread_crit_edge.i, %tailrecurse.i
  %i.bp = phi i16 [ %.pre.i, %_ZN4llvm8dyn_castIN5clang9NamedDeclEKNS1_11DeclContextEEEDcPT0_.exit._ZN4llvm8dyn_castIN5clang9NamedDeclEKNS1_11DeclContextEEEDcPT0_.exit.thread_crit_edge.i ], [ %i.bk, %tailrecurse.i ]
  %i.bq = and i16 %i.bp, 127
  %i.br = icmp eq i16 %i.bq, 4
  br i1 %i.br, label %bb.l, label %_ZN12_GLOBAL__N_112USRGenerator16VisitDeclContextEPKN5clang11DeclContextE.exit

bb.l:                                             ; preds = %_ZN4llvm8dyn_castIN5clang9NamedDeclEKNS1_11DeclContextEEEDcPT0_.exit.thread.i
  %i.bs = tail call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(32) %.tr6.i) #13, !inline_history !2
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bt, align 8 ; 3 uses
  %i.bu = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, 4
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bw = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i to ptr
  br label %tailrecurse.i.backedge

bb.n:                                             ; preds = %bb.l
  %i.bx = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -5
  %i.by = inttoptr i64 %i.bx to ptr
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !497
  br label %tailrecurse.i.backedge

tailrecurse.i.backedge:                           ; preds = %bb.n, %bb.m
  %.tr6.i.be = phi ptr [ %i.bw, %bb.m ], [ %i.bz, %bb.n ]
  br label %tailrecurse.i

_ZN12_GLOBAL__N_112USRGenerator16VisitDeclContextEPKN5clang11DeclContextE.exit: ; preds = %_ZN4llvm8dyn_castIN5clang9NamedDeclEKNS1_11DeclContextEEEDcPT0_.exit.thread.i, %bb.k
  %i.ca = load ptr, ptr %0, align 8, !tbaa !510, !nonnull !425, !align !426
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !512
  %i.cd = and i64 %i.bb, 4294967295
  %i.ce = icmp eq i64 %i.cc, %i.cd
  br i1 %i.ce, label %bb.o, label %_ZN12_GLOBAL__N_112USRGenerator21GenExtSymbolContainerEPKN5clang9NamedDeclE.exit

bb.o:                                             ; preds = %_ZN12_GLOBAL__N_112USRGenerator16VisitDeclContextEPKN5clang11DeclContextE.exit
  %i.cf = tail call noundef ptr @_ZNK5clang4Decl27getExternalSourceSymbolAttrEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #13 ; 3 uses
  %.not6.not.i.i = icmp eq ptr %i.cf, null
  br i1 %.not6.not.i.i, label %_ZN12_GLOBAL__N_112USRGenerator21GenExtSymbolContainerEPKN5clang9NamedDeclE.exit, label %_ZL26GetExternalSourceContainerPKN5clang9NamedDeclE.exit.i

_ZL26GetExternalSourceContainerPKN5clang9NamedDeclE.exit.i: ; preds = %bb.o
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 64
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !493 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 56
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !494 ; 2 uses
  %i.ck = zext i32 %i.cj to i64                   ; 4 uses
  %i.cl = icmp eq i32 %i.cj, 0
  br i1 %i.cl, label %_ZN12_GLOBAL__N_112USRGenerator21GenExtSymbolContainerEPKN5clang9NamedDeclE.exit, label %bb.p

bb.p:                                             ; preds = %_ZL26GetExternalSourceContainerPKN5clang9NamedDeclE.exit.i
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !22
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !23 ; 2 uses
  %i.cr = ptrtoint ptr %i.co to i64
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = sub i64 %i.cr, %i.cs
  %i.cu = icmp ult i64 %i.ct, 3
  br i1 %i.cu, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cv = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.cm, ptr noundef nonnull @.str.6, i64 noundef 3) #13
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i

bb.r:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.cq, ptr noundef nonnull align 1 dereferenceable(3) @.str.6, i64 3, i1 false)
  %i.cw = load ptr, ptr %i.cp, align 8, !tbaa !23
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 3
  store ptr %i.cx, ptr %i.cp, align 8, !tbaa !23
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i

_ZN4llvm11raw_ostreamlsEPKc.exit.i:               ; preds = %bb.r, %bb.q
  %.0.i.i.i = phi ptr [ %i.cv, %bb.q ], [ %i.cm, %bb.r ] ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !22
  %i.da = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 32 ; 3 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !23 ; 2 uses
  %i.dc = ptrtoint ptr %i.cz to i64
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = icmp ult i64 %i.de, %i.ck
  br i1 %i.df, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i
  %i.dg = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i, ptr noundef %i.ch, i64 noundef %i.ck) #13 ; 0 uses
  br label %_ZN12_GLOBAL__N_112USRGenerator21GenExtSymbolContainerEPKN5clang9NamedDeclE.exit

bb.t:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.db, ptr align 1 %i.ch, i64 %i.ck, i1 false)
  %i.dh = load ptr, ptr %i.da, align 8, !tbaa !23
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.ck
  store ptr %i.di, ptr %i.da, align 8, !tbaa !23
  br label %_ZN12_GLOBAL__N_112USRGenerator21GenExtSymbolContainerEPKN5clang9NamedDeclE.exit

_ZN12_GLOBAL__N_112USRGenerator21GenExtSymbolContainerEPKN5clang9NamedDeclE.exit: ; preds = %bb.t, %bb.s, %_ZL26GetExternalSourceContainerPKN5clang9NamedDeclE.exit.i, %bb.o, %_ZN12_GLOBAL__N_112USRGenerator16VisitDeclContextEPKN5clang11DeclContextE.exit
  %i.dj = tail call noundef ptr @_ZNK5clang12FunctionDecl28getDescribedFunctionTemplateEv(ptr noundef nonnull align 8 dereferenceable(168) %1) #13 ; 2 uses
  %.not.not = icmp eq ptr %i.dj, null             ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 13 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !22
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 30 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !23 ; 3 uses
  %i.do = ptrtoint ptr %i.dl to i64
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = sub i64 %i.do, %i.dp                    ; 2 uses
  br i1 %.not.not, label %bb.x, label %bb.u

bb.u:                                             ; preds = %_ZN12_GLOBAL__N_112USRGenerator21GenExtSymbolContainerEPKN5clang9NamedDeclE.exit
  %i.dr = icmp ult i64 %i.dq, 4
  br i1 %i.dr, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dt = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ds, ptr noundef nonnull @.str.488, i64 noundef 4) #13 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.w:                                             ; preds = %bb.u
  store i32 1079264832, ptr %i.dn, align 1
  %i.du = load ptr, ptr %i.dm, align 8, !tbaa !23
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 4
  store ptr %i.dv, ptr %i.dm, align 8, !tbaa !23
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.v, %bb.w
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dj, i64 56
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !498
  tail call fastcc void @_ZN12_GLOBAL__N_112USRGenerator26VisitTemplateParameterListEPKN5clang21TemplateParameterListE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.dx)
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit76

bb.x:                                             ; preds = %_ZN12_GLOBAL__N_112USRGenerator21GenExtSymbolContainerEPKN5clang9NamedDeclE.exit
  %i.dy = icmp ult i64 %i.dq, 3
  br i1 %i.dy, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ea = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.dz, ptr noundef nonnull @.str.489, i64 noundef 3) #13 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit76

bb.z:                                             ; preds = %bb.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.dn, ptr noundef nonnull align 1 dereferenceable(3) @.str.489, i64 3, i1 false)
  %i.eb = load ptr, ptr %i.dm, align 8, !tbaa !23
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 3
  store ptr %i.ec, ptr %i.dm, align 8, !tbaa !23
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit76

_ZN4llvm11raw_ostreamlsEPKc.exit76:               ; preds = %bb.z, %bb.y, %_ZN4llvm11raw_ostreamlsEPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !481, !nonnull !425, !align !426 ; 2 uses
  %i.ef = load i64, ptr %i.ee, align 8            ; 11 uses
  %i.eg = lshr i64 %i.ef, 3
  %i.eh = and i64 %i.eg, 512
  %i.ei = lshr i64 %i.ef, 5
  %i.ej = and i64 %i.ei, 8388608
  %i.ek = and i64 %i.ef, 8192
  %.not.i77 = icmp eq i64 %i.ek, 0
  %i.el = shl i64 %i.ef, 21
  %i.em = and i64 %i.el, 16777216
  %i.en = select i1 %.not.i77, i64 %i.em, i64 16777216
  %i.eo = shl i64 %i.ef, 13
  %i.ep = and i64 %i.eo, 33554432
  %i.eq = shl i64 %i.ef, 26
  %i.er = and i64 %i.eq, 67108864
  %i.es = shl i64 %i.ef, 14
  %i.et = and i64 %i.es, 134217728
  %i.eu = shl i64 %i.ef, 27
  %i.ev = and i64 %i.eu, 268435456
  %i.ew = shl i64 %i.ef, 17
  %i.ex = shl i64 %i.ef, 4                        ; 2 uses
  %i.ey = and i64 %i.ex, 8589934592
  %i.ez = and i64 %i.ef, 128
  %.not17.i = icmp eq i64 %i.ez, 0
  %i.fa = and i64 %i.ex, 17179869184
  %i.fb = xor i64 %i.fa, 112201725640704
  %i.fc = select i1 %.not17.i, i64 112184545771520, i64 %i.fb
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ee, i64 80
  %i.fe = load i64, ptr %i.fd, align 8
  %i.ff = shl i64 %i.fe, 7
  %i.fg = and i64 %i.ff, 140737488355328
  %4 = and i64 %i.ew, 1610612736
  %5 = or disjoint i64 %i.ej, %i.eh
  %6 = or disjoint i64 %5, %i.ep
  %i.fh = or disjoint i64 %6, %i.er
  %i.fi = or disjoint i64 %i.fh, %i.et
  %i.fj = or disjoint i64 %i.fi, %i.ev
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr null, ptr %7, align 8, !tbaa !516
  %.masked.masked.masked.masked.masked.masked.masked = or i64 %i.fj, %4
  %.masked187.masked.masked.masked.masked.masked = or i64 %.masked.masked.masked.masked.masked.masked.masked, %i.ey
  %.masked190.masked.masked.masked = or i64 %.masked187.masked.masked.masked.masked.masked, %i.en
  %.masked.masked.masked = or i64 %.masked190.masked.masked.masked, %i.fg
  %i.fk = or i64 %.masked.masked.masked, %i.fc
  %i.fl = xor i64 %i.fk, 1617182722
  store i64 %i.fl, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.0.0.copyload.i78 = load i64, ptr %i.fm, align 8, !tbaa !17
  store i64 %.sroa.0.0.copyload.i78, ptr %3, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 13 uses
  call void @_ZNK5clang15DeclarationName5printERN4llvm11raw_ostreamERKNS_14PrintingPolicyE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(48) %i.fn, ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.fo = load ptr, ptr %i.ed, align 8, !tbaa !481, !nonnull !425, !align !426
  %i.fp = load i64, ptr %i.fo, align 8
  %i.fq = and i64 %i.fp, 4096
  %.not64 = icmp eq i64 %i.fq, 0
  br i1 %.not64, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit76
  %i.fr = call noundef zeroext i1 @_ZNK5clang12FunctionDecl9isExternCEv(ptr noundef nonnull align 8 dereferenceable(168) %1) #13
  br i1 %i.fr, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa, %_ZN4llvm11raw_ostreamlsEPKc.exit76
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ft = load i32, ptr %i.fs, align 4
  %i.fu = and i32 %i.ft, 256
  %.not.i79 = icmp eq i32 %i.fu, 0
  br i1 %.not.i79, label %_ZN4llvm11raw_ostreamlsEc.exit122, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fv = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #13 ; 2 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !429 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !430 ; 2 uses
  %i.fz = zext i32 %i.fy to i64
  %.idx.i.i = shl nuw nsw i64 %i.fz, 3
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fw, i64 %.idx.i.i ; 2 uses
  %.not.i.i80 = icmp eq i32 %i.fy, 0
  br i1 %.not.i.i80, label %_ZN4llvm11raw_ostreamlsEc.exit122, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ac, %bb.ad
  %.sroa.07.1.i.i.i.i = phi ptr [ %i.gf, %bb.ad ], [ %i.fw, %bb.ac ] ; 3 uses
  %i.gb = load ptr, ptr %.sroa.07.1.i.i.i.i, align 8, !tbaa !432
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 36
  %i.gd = load i16, ptr %i.gc, align 4
  %i.ge = icmp eq i16 %i.gd, 458
  br i1 %i.ge, label %_ZNK5clang4Decl7hasAttrINS_16OverloadableAttrEEEbv.exit, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.gf, %i.ga
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm11raw_ostreamlsEc.exit122, label %.lr.ph.i.i.i.i.i, !llvm.loop !868

_ZNK5clang4Decl7hasAttrINS_16OverloadableAttrEEEbv.exit: ; preds = %.lr.ph.i.i.i.i.i
  %.not148 = icmp eq ptr %.sroa.07.1.i.i.i.i, %i.ga
  br i1 %.not148, label %_ZN4llvm11raw_ostreamlsEc.exit122, label %bb.ae

bb.ae:                                            ; preds = %_ZNK5clang4Decl7hasAttrINS_16OverloadableAttrEEEbv.exit, %bb.aa
  %i.gg = call noundef zeroext i1 @_ZNK5clang12FunctionDecl32isFunctionTemplateSpecializationEv(ptr noundef nonnull align 8 dereferenceable(168) %1) #13
  br i1 %i.gg, label %bb.af, label %_ZN4llvm11raw_ostreamlsEc.exit91

bb.af:                                            ; preds = %bb.ae
  %i.gh = load ptr, ptr %i.dm, align 8, !tbaa !23 ; 3 uses
  %i.gi = load ptr, ptr %i.dk, align 8, !tbaa !22
  %.not.i81 = icmp ult ptr %i.gh, %i.gi
  br i1 %.not.i81, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gj = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.fn, i8 noundef zeroext 60) #13 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.ah:                                            ; preds = %bb.af
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 1
  store ptr %i.gk, ptr %i.dm, align 8, !tbaa !23
  store i8 60, ptr %i.gh, align 1, !tbaa !24
  br label %_ZN4llvm11raw_ostreamlsEc.exit

_ZN4llvm11raw_ostreamlsEc.exit:                   ; preds = %bb.ag, %bb.ah
  %i.gl = call noundef ptr @_ZNK5clang12FunctionDecl29getTemplateSpecializationArgsEv(ptr noundef nonnull align 8 dereferenceable(168) %1) #13 ; 3 uses
  %.not65 = icmp eq ptr %i.gl, null
  br i1 %.not65, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !515 ; 2 uses
  %i.gn = zext i32 %i.gm to i64
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 8 ; 2 uses
  %.idx = mul nuw nsw i64 %i.gn, 24
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 %.idx
  %.not68151 = icmp eq i32 %i.gm, 0
  br i1 %.not68151, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ai, %_ZN4llvm11raw_ostreamlsEc.exit85
  %.057152 = phi ptr [ %i.gu, %_ZN4llvm11raw_ostreamlsEc.exit85 ], [ %i.go, %bb.ai ] ; 2 uses
  %i.gq = load ptr, ptr %i.dm, align 8, !tbaa !23 ; 3 uses
  %i.gr = load ptr, ptr %i.dk, align 8, !tbaa !22
  %.not.i83 = icmp ult ptr %i.gq, %i.gr
  br i1 %.not.i83, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph
  %i.gs = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.fn, i8 noundef zeroext 35) #13 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit85

bb.ak:                                            ; preds = %.lr.ph
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 1
  store ptr %i.gt, ptr %i.dm, align 8, !tbaa !23
  store i8 35, ptr %i.gq, align 1, !tbaa !24
  br label %_ZN4llvm11raw_ostreamlsEc.exit85

_ZN4llvm11raw_ostreamlsEc.exit85:                 ; preds = %bb.aj, %bb.ak
  call fastcc void @_ZN12_GLOBAL__N_112USRGenerator21VisitTemplateArgumentERKN5clang16TemplateArgumentE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(24) %.057152)
  %i.gu = getelementptr inbounds nuw i8, ptr %.057152, i64 24 ; 2 uses
  %.not68 = icmp eq ptr %i.gu, %i.gp
  br i1 %.not68, label %.loopexit, label %.lr.ph

bb.al:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit
  %i.gv = call noundef ptr @_ZNK5clang12FunctionDecl38getTemplateSpecializationArgsAsWrittenEv(ptr noundef nonnull align 8 dereferenceable(168) %1) #13 ; 3 uses
  %.not66 = icmp eq ptr %i.gv, null
  br i1 %.not66, label %.loopexit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.gy = load i32, ptr %i.gx, align 8, !tbaa !870 ; 2 uses
  %i.gz = zext i32 %i.gy to i64
  %.idx159 = shl nuw nsw i64 %i.gz, 5
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gw, i64 %.idx159
  %.not67153 = icmp eq i32 %i.gy, 0
  br i1 %.not67153, label %.loopexit, label %.lr.ph155

.lr.ph155:                                        ; preds = %bb.am, %_ZN4llvm11raw_ostreamlsEc.exit88
  %.056154 = phi ptr [ %i.hf, %_ZN4llvm11raw_ostreamlsEc.exit88 ], [ %i.gw, %bb.am ] ; 2 uses
  %i.hb = load ptr, ptr %i.dm, align 8, !tbaa !23 ; 3 uses
  %i.hc = load ptr, ptr %i.dk, align 8, !tbaa !22
  %.not.i86 = icmp ult ptr %i.hb, %i.hc
  br i1 %.not.i86, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.lr.ph155
  %i.hd = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.fn, i8 noundef zeroext 35) #13 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit88

bb.ao:                                            ; preds = %.lr.ph155
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 1
  store ptr %i.he, ptr %i.dm, align 8, !tbaa !23
  store i8 35, ptr %i.hb, align 1, !tbaa !24
  br label %_ZN4llvm11raw_ostreamlsEc.exit88

_ZN4llvm11raw_ostreamlsEc.exit88:                 ; preds = %bb.an, %bb.ao
  call fastcc void @_ZN12_GLOBAL__N_112USRGenerator21VisitTemplateArgumentERKN5clang16TemplateArgumentE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(24) %.056154)
  %i.hf = getelementptr inbounds nuw i8, ptr %.056154, i64 32 ; 2 uses
  %.not67 = icmp eq ptr %i.hf, %i.ha
  br i1 %.not67, label %.loopexit, label %.lr.ph155

.loopexit:                                        ; preds = %_ZN4llvm11raw_ostreamlsEc.exit85, %_ZN4llvm11raw_ostreamlsEc.exit88, %bb.ai, %bb.am, %bb.al
  %i.hg = load ptr, ptr %i.dm, align 8, !tbaa !23 ; 3 uses
  %i.hh = load ptr, ptr %i.dk, align 8, !tbaa !22
  %.not.i89 = icmp ult ptr %i.hg, %i.hh
  br i1 %.not.i89, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.loopexit
  %i.hi = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.fn, i8 noundef zeroext 62) #13 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit91

bb.aq:                                            ; preds = %.loopexit
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hg, i64 1
  store ptr %i.hj, ptr %i.dm, align 8, !tbaa !23
  store i8 62, ptr %i.hg, align 1, !tbaa !24
  br label %_ZN4llvm11raw_ostreamlsEc.exit91

_ZN4llvm11raw_ostreamlsEc.exit91:                 ; preds = %bb.aq, %bb.ap, %bb.ae
  %.sroa.0.0.copyload.i92 = load i64, ptr %i.aw, align 8, !tbaa !24
  %i.hk = and i64 %.sroa.0.0.copyload.i92, -16
  %i.hl = inttoptr i64 %i.hk to ptr
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !24
  %i.ho = and i64 %i.hn, -16
  %i.hp = inttoptr i64 %i.ho to ptr
  %i.hq = load ptr, ptr %i.hp, align 16, !tbaa !478 ; 4 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %i.hs = load i8, ptr %i.hr, align 16
  %.not.i94 = icmp eq i8 %i.hs, 24
  br i1 %.not.i94, label %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.thread144, label %bb.ar

bb.ar:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit91
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.ht, align 8, !tbaa !24
  %i.hu = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.hv = inttoptr i64 %i.hu to ptr
  %i.hw = load ptr, ptr %i.hv, align 16, !tbaa !478
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %i.hy = load i8, ptr %i.hx, align 16
  %i.hz = icmp eq i8 %i.hy, 24
  br i1 %i.hz, label %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit, label %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.thread

_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit: ; preds = %bb.ar
  %i.ia = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.hq) #13 ; 2 uses
  %.not69 = icmp eq ptr %i.ia, null
  br i1 %.not69, label %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.thread, label %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.thread144

_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.thread144: ; preds = %_ZN4llvm11raw_ostreamlsEc.exit91, %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit
end_hunk_0
