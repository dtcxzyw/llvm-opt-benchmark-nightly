Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ASTReaderDecl?download=true
inline.NumInlined: 19414
inline.NumDeleted: 7686
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN5clang13ASTDeclReader22ReadObjCDefinitionDataERNS_17ObjCInterfaceDecl14DefinitionDataE:bb.a
  %i.cp = load i32, ptr %i.bz, align 4, !tbaa !979
  %.not.i = icmp ult i32 %i.co, %i.cp
  br i1 %.not.i, label %bb.h, label %bb.g, !prof !980

bb.g:                                             ; preds = %.lr.ph
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang16ObjCProtocolDeclELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.cn)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang16ObjCProtocolDeclELb1EE9push_backES3_.exit

bb.h:                                             ; preds = %.lr.ph
  %i.cq = zext i32 %i.co to i64
  %i.cr = load ptr, ptr %2, align 8, !tbaa !164
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.cq
  store ptr %i.cn, ptr %i.cs, align 1
  %i.ct = load i32, ptr %i.by, align 8, !tbaa !975
  %i.cu = add i32 %i.ct, 1
  store i32 %i.cu, ptr %i.by, align 8, !tbaa !975
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang16ObjCProtocolDeclELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang16ObjCProtocolDeclELb1EE9push_backES3_.exit: ; preds = %bb.g, %bb.h
  %i.cv = add nuw i32 %.02336, 1                  ; 2 uses
  %.not = icmp eq i32 %i.cv, %i.bw
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1832

._crit_edge40:                                    ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang14SourceLocationELb1EE9push_backES2_.exit, %_ZN4llvm15SmallVectorImplIN5clang14SourceLocationEE7reserveEm.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cx = load ptr, ptr %2, align 8, !tbaa !164
  %i.cy = load ptr, ptr %3, align 8, !tbaa !164
  %i.cz = load ptr, ptr %0, align 8, !tbaa !167, !nonnull !155, !align !156
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 152
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !588
  call void @_ZN5clang16ObjCProtocolList3setEPKPNS_16ObjCProtocolDeclEjPKNS_14SourceLocationERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(24) %i.cw, ptr noundef %i.cx, i32 noundef %i.bw, ptr noundef %i.cy, ptr noundef nonnull align 8 dereferenceable(23904) %i.db) #25
  %i.dc = load ptr, ptr %i.a, align 8, !tbaa !154, !nonnull !155, !align !156 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 24 ; 2 uses
  %i.df = load i32, ptr %i.de, align 8, !tbaa !163 ; 2 uses
  %i.dg = add i32 %i.df, 1
  store i32 %i.dg, ptr %i.de, align 8, !tbaa !163
  %i.dh = zext i32 %i.df to i64
  %i.di = load ptr, ptr %i.dd, align 8, !tbaa !164
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.dh
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !165 ; 2 uses
  %i.dl = trunc i64 %i.dk to i32                  ; 3 uses
  store i32 0, ptr %i.by, align 8, !tbaa !975
  %i.dm = and i64 %i.dk, 4294967295               ; 2 uses
  %i.dn = load i32, ptr %i.bz, align 4, !tbaa !979
  %i.do = zext i32 %i.dn to i64
  %i.dp = icmp samesign ugt i64 %i.dm, %i.do
  br i1 %i.dp, label %bb.i, label %_ZN4llvm15SmallVectorImplIPN5clang16ObjCProtocolDeclEE7reserveEm.exit28

bb.i:                                             ; preds = %._crit_edge40
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.bx, i64 noundef %i.dm, i64 noundef 8) #25
  br label %_ZN4llvm15SmallVectorImplIPN5clang16ObjCProtocolDeclEE7reserveEm.exit28

_ZN4llvm15SmallVectorImplIPN5clang16ObjCProtocolDeclEE7reserveEm.exit28: ; preds = %._crit_edge40, %bb.i
  %.not2741 = icmp eq i32 %i.dl, 0
  br i1 %.not2741, label %._crit_edge44, label %.lr.ph43

.lr.ph39:                                         ; preds = %_ZN4llvm15SmallVectorImplIN5clang14SourceLocationEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIN5clang14SourceLocationELb1EE9push_backES2_.exit
  %.02238 = phi i32 [ %i.fc, %_ZN4llvm23SmallVectorTemplateBaseIN5clang14SourceLocationELb1EE9push_backES2_.exit ], [ 0, %_ZN4llvm15SmallVectorImplIN5clang14SourceLocationEE7reserveEm.exit ]
  %i.dq = load ptr, ptr %i.a, align 8, !tbaa !154, !nonnull !155, !align !156 ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !1032
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !973 ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 32
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dq, i64 24 ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !1081 ; 2 uses
  %i.dy = add i32 %i.dx, 1
  store i32 %i.dy, ptr %i.dw, align 8, !tbaa !1081
  %i.dz = zext i32 %i.dx to i64
  %i.ea = load ptr, ptr %i.dv, align 8, !tbaa !164
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.dz
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !165 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.du, i64 912
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !1196
  %i.ef = icmp eq i64 %i.ee, 0
  br i1 %i.ef, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph39
  call void @_ZNK5clang9ASTReader19ReadModuleOffsetMapERNS_13serialization10ModuleFileE(ptr noundef nonnull align 8 dereferenceable(16376) %i.ds, ptr noundef nonnull align 8 dereferenceable(3832) %i.du) #25
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph39
  %.sroa.4.0.extract.shift.i.i.i.i29 = lshr i64 %i.ec, 32 ; 2 uses
  %i.eg = icmp eq i64 %.sroa.4.0.extract.shift.i.i.i.i29, 0
  br i1 %i.eg, label %_ZN5clang13ASTDeclReader18readSourceLocationEv.exit31, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.eh = getelementptr inbounds nuw i8, ptr %i.du, i64 3688
  %i.ei = add nuw nsw i64 %.sroa.4.0.extract.shift.i.i.i.i29, 4294967295
  %i.ej = and i64 %i.ei, 4294967295
  %i.ek = load ptr, ptr %i.eh, align 8, !tbaa !164
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.ej
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !1197
  br label %_ZN5clang13ASTDeclReader18readSourceLocationEv.exit31

_ZN5clang13ASTDeclReader18readSourceLocationEv.exit31: ; preds = %bb.k, %bb.l
  %i.en = phi ptr [ %i.em, %bb.l ], [ %i.du, %bb.k ]
  %i.eo = trunc i64 %i.ec to i32                  ; 3 uses
  %i.ep = call i32 @llvm.fshl.i32(i32 %i.eo, i32 %i.eo, i32 31)
  %i.eq = icmp eq i32 %i.eo, 0
  %i.er = getelementptr inbounds nuw i8, ptr %i.en, i64 1712
  %i.es = load i32, ptr %i.er, align 8
  %i.et = add i32 %i.ep, -2
  %i.eu = add i32 %i.et, %i.es
  %.sroa.0.0.i.i.i.i.i30 = select i1 %i.eq, i32 0, i32 %i.eu ; 2 uses
  %i.ev = load i32, ptr %i.cd, align 8, !tbaa !975 ; 2 uses
  %i.ew = load i32, ptr %i.ce, align 4, !tbaa !979
  %.not.i32 = icmp ult i32 %i.ev, %i.ew
  br i1 %.not.i32, label %bb.n, label %bb.m, !prof !980

bb.m:                                             ; preds = %_ZN5clang13ASTDeclReader18readSourceLocationEv.exit31
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang14SourceLocationELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %3, i32 %.sroa.0.0.i.i.i.i.i30)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang14SourceLocationELb1EE9push_backES2_.exit

bb.n:                                             ; preds = %_ZN5clang13ASTDeclReader18readSourceLocationEv.exit31
  %i.ex = zext i32 %i.ev to i64
  %i.ey = load ptr, ptr %3, align 8, !tbaa !164
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.ex
  store i32 %.sroa.0.0.i.i.i.i.i30, ptr %i.ez, align 1
  %i.fa = load i32, ptr %i.cd, align 8, !tbaa !975
  %i.fb = add i32 %i.fa, 1
  store i32 %i.fb, ptr %i.cd, align 8, !tbaa !975
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang14SourceLocationELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIN5clang14SourceLocationELb1EE9push_backES2_.exit: ; preds = %bb.m, %bb.n
  %i.fc = add nuw i32 %.02238, 1                  ; 2 uses
  %.not26 = icmp eq i32 %i.fc, %i.bw
  br i1 %.not26, label %._crit_edge40, label %.lr.ph39, !llvm.loop !1833

._crit_edge44:                                    ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang16ObjCProtocolDeclELb1EE9push_backES3_.exit34, %_ZN4llvm15SmallVectorImplIPN5clang16ObjCProtocolDeclEE7reserveEm.exit28
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.fe = load ptr, ptr %2, align 8, !tbaa !164
  %i.ff = load ptr, ptr %0, align 8, !tbaa !167, !nonnull !155, !align !156
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 152
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !588
  call void @_ZN5clang12ObjCListBase3setEPKPvjRNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(12) %i.fd, ptr noundef %i.fe, i32 noundef %i.dl, ptr noundef nonnull align 8 dereferenceable(23904) %i.fh) #25
  %i.fi = load ptr, ptr %3, align 8, !tbaa !164   ; 2 uses
  %i.fj = icmp eq ptr %i.fi, %i.cc
  br i1 %i.fj, label %_ZN4llvm11SmallVectorIN5clang14SourceLocationELj16EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge44
  call void @free(ptr noundef %i.fi) #25
  br label %_ZN4llvm11SmallVectorIN5clang14SourceLocationELj16EED2Ev.exit

_ZN4llvm11SmallVectorIN5clang14SourceLocationELj16EED2Ev.exit: ; preds = %._crit_edge44, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.fk = load ptr, ptr %2, align 8, !tbaa !164   ; 2 uses
  %i.fl = icmp eq ptr %i.fk, %i.bx
  br i1 %i.fl, label %_ZN4llvm11SmallVectorIPN5clang16ObjCProtocolDeclELj16EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm11SmallVectorIN5clang14SourceLocationELj16EED2Ev.exit
  call void @free(ptr noundef %i.fk) #25
  br label %_ZN4llvm11SmallVectorIPN5clang16ObjCProtocolDeclELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang16ObjCProtocolDeclELj16EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIN5clang14SourceLocationELj16EED2Ev.exit, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

.lr.ph43:                                         ; preds = %_ZN4llvm15SmallVectorImplIPN5clang16ObjCProtocolDeclEE7reserveEm.exit28, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang16ObjCProtocolDeclELb1EE9push_backES3_.exit34
  %.042 = phi i32 [ %i.gc, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang16ObjCProtocolDeclELb1EE9push_backES3_.exit34 ], [ 0, %_ZN4llvm15SmallVectorImplIPN5clang16ObjCProtocolDeclEE7reserveEm.exit28 ]
  %i.fm = load ptr, ptr %i.a, align 8, !tbaa !154, !nonnull !155, !align !156 ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !1032 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !973
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fm, i64 32
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  %i.ft = call i64 @_ZN5clang9ASTReader10ReadDeclIDERNS_13serialization10ModuleFileERKN4llvm15SmallVectorImplImEERj(ptr noundef nonnull align 8 dereferenceable(16376) %i.fo, ptr noundef nonnull align 8 dereferenceable(3832) %i.fq, ptr noundef nonnull align 8 dereferenceable(16) %i.fr, ptr noundef nonnull align 4 dereferenceable(4) %i.fs) #25
  %i.fu = call noundef ptr @_ZN5clang9ASTReader7GetDeclENS_12GlobalDeclIDE(ptr noundef nonnull align 8 dereferenceable(16376) %i.fo, i64 %i.ft) #25 ; 2 uses
  %i.fv = load i32, ptr %i.by, align 8, !tbaa !975 ; 2 uses
  %i.fw = load i32, ptr %i.bz, align 4, !tbaa !979
  %.not.i33 = icmp ult i32 %i.fv, %i.fw
  br i1 %.not.i33, label %bb.r, label %bb.q, !prof !980

bb.q:                                             ; preds = %.lr.ph43
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang16ObjCProtocolDeclELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.fu)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang16ObjCProtocolDeclELb1EE9push_backES3_.exit34

bb.r:                                             ; preds = %.lr.ph43
  %i.fx = zext i32 %i.fv to i64
  %i.fy = load ptr, ptr %2, align 8, !tbaa !164
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %i.fx
  store ptr %i.fu, ptr %i.fz, align 1
  %i.ga = load i32, ptr %i.by, align 8, !tbaa !975
  %i.gb = add i32 %i.ga, 1
  store i32 %i.gb, ptr %i.by, align 8, !tbaa !975
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang16ObjCProtocolDeclELb1EE9push_backES3_.exit34

_ZN4llvm23SmallVectorTemplateBaseIPN5clang16ObjCProtocolDeclELb1EE9push_backES3_.exit34: ; preds = %bb.q, %bb.r
  %i.gc = add nuw i32 %.042, 1                    ; 2 uses
  %.not27 = icmp eq i32 %i.gc, %i.dl
  br i1 %.not27, label %._crit_edge44, label %.lr.ph43, !llvm.loop !1834
}

declare void @_ZN5clang16ObjCProtocolList3setEPKPNS_16ObjCProtocolDeclEjPKNS_14SourceLocationERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i32 noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(23904)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang13ASTDeclMerger19MergeDefinitionDataEPNS_17ObjCInterfaceDeclEONS1_14DefinitionDataE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(84) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"struct.std::pair.1018", align 16  ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.0.copyload.i.i.i.i = load i64, ptr %i.a, align 8
  %i.b = and i64 %.0.copyload.i.i.i.i, -8
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1284 ; 2 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !1284   ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang17ObjCInterfaceDeclEPNS3_14DefinitionDataEELb1EE9push_backES7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !1209, !nonnull !155, !align !156
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 13072
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %4 = insertelement <2 x ptr> poison, ptr %i.e, i64 0
  %5 = insertelement <2 x ptr> %4, ptr %i.d, i64 1 ; 2 uses
  %6 = icmp eq <2 x ptr> %5, splat (ptr null)
  %7 = getelementptr inbounds nuw i8, <2 x ptr> %5, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %8 = select <2 x i1> %6, <2 x ptr> splat (ptr null), <2 x ptr> %7
  store <2 x ptr> %8, ptr %3, align 16, !tbaa !1084
  %i.j = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang11DeclContextES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E24lookupOrInsertIntoBucketIS4_JS4_EEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.i), !noalias !1840 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.k = load ptr, ptr %0, align 8, !tbaa !1209, !nonnull !155, !align !156
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !1284
  %i.m = load ptr, ptr %2, align 8, !tbaa !1284
  call void @_ZN5clang9ASTReader25mergeDefinitionVisibilityEPNS_9NamedDeclES2_(ptr noundef nonnull align 8 dereferenceable(16376) %i.k, ptr noundef %i.l, ptr noundef %i.m) #25
  %i.n = call noundef i32 @_ZN5clang17ObjCInterfaceDecl10getODRHashEv(ptr noundef nonnull align 8 dereferenceable(128) %1) #25
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 76
  %i.p = load i32, ptr %i.o, align 4, !tbaa !1283
  %.not = icmp eq i32 %i.n, %i.p
  br i1 %.not, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang17ObjCInterfaceDeclEPNS3_14DefinitionDataEELb1EE9push_backES7_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %0, align 8, !tbaa !1209, !nonnull !155, !align !156
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 12456
  %i.s = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPN5clang17ObjCInterfaceDeclENS_11SmallVectorISt4pairIS4_PNS3_14DefinitionDataEELj2EEELj2ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E24lookupOrInsertIntoBucketIRKS4_JEEES6_IPSF_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.s, 0 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8 ; 2 uses
  %i.u = load ptr, ptr %2, align 8, !tbaa !1285   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 16 ; 3 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !975  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 20
  %i.y = load i32, ptr %i.x, align 4, !tbaa !979
  %.not.i = icmp ult i32 %i.w, %i.y
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !980

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang17ObjCInterfaceDeclEPNS3_14DefinitionDataEELb1EE15growAndPushBackES7_(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr %i.u, ptr nonnull %2)
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang17ObjCInterfaceDeclEPNS3_14DefinitionDataEELb1EE9push_backES7_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = zext i32 %i.w to i64
  %i.aa = load ptr, ptr %i.t, align 8, !tbaa !164
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.z ; 2 uses
  store ptr %i.u, ptr %i.ab, align 1
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %2, ptr %.sroa.3.0..sroa_idx.i, align 1
  %i.ac = load i32, ptr %i.v, align 8, !tbaa !975
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr %i.v, align 8, !tbaa !975
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang17ObjCInterfaceDeclEPNS3_14DefinitionDataEELb1EE9push_backES7_.exit

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang17ObjCInterfaceDeclEPNS3_14DefinitionDataEELb1EE9push_backES7_.exit: ; preds = %bb.e, %bb.d, %bb.b, %bb.a
  ret void
}

declare noundef i32 @_ZN5clang17ObjCInterfaceDecl10getODRHashEv(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang13ASTDeclReader22VisitObjCInterfaceDeclEPNS_17ObjCInterfaceDeclE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(89) %0, ptr noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"class.clang::ASTDeclReader::FindExistingResult", align 8 ; 5 uses
  %i.c = icmp eq ptr %1, null                     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 5 uses
  %spec.select = select i1 %i.c, ptr null, ptr %i.d ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !154, !noalias !1848, !nonnull !155, !align !156 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1032, !noalias !1848
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !973, !noalias !1848
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.m = tail call i64 @_ZN5clang9ASTReader10ReadDeclIDERNS_13serialization10ModuleFileERKN4llvm15SmallVectorImplImEERj(ptr noundef nonnull align 8 dereferenceable(16376) %i.h, ptr noundef nonnull align 8 dereferenceable(3832) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 4 dereferenceable(4) %i.l) #25, !noalias !1848 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load i64, ptr %i.n, align 8, !tbaa !1013, !noalias !1848 ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.m
  %i.q = icmp eq i64 %i.m, 0
  br i1 %i.q, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !154, !noalias !1848, !nonnull !155, !align !156 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 3 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !163, !noalias !1848 ; 2 uses
  %i.v = add i32 %i.u, 1                          ; 2 uses
  store i32 %i.v, ptr %i.t, align 8, !tbaa !163, !noalias !1848
  %i.w = zext i32 %i.u to i64
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !164, !noalias !1848 ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.w
  %i.z = load i64, ptr %i.y, align 8, !tbaa !165, !noalias !1848
  %i.aa = trunc i64 %i.z to i32                   ; 3 uses
  %.not.not.i = icmp eq i32 %i.aa, 0
  br i1 %.not.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = icmp eq i32 %i.aa, 1
  %i.ac = add i32 %i.aa, -1                       ; 2 uses
  %.not2433.i = icmp eq i32 %i.ac, 0
  br i1 %.not2433.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !154, !noalias !1848 ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 24
  %.pre35.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !163, !noalias !1848
  %.phi.trans.insert36.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 32
  %.pre37.i = load ptr, ptr %.phi.trans.insert36.i, align 8, !tbaa !164, !noalias !1848
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.c
  %i.ad = phi ptr [ %i.x, %bb.c ], [ %.pre37.i, %._crit_edge.loopexit.i ]
  %i.ae = phi i32 [ %i.v, %bb.c ], [ %.pre35.i, %._crit_edge.loopexit.i ] ; 2 uses
  %i.af = phi ptr [ %i.r, %bb.c ], [ %.pre.i, %._crit_edge.loopexit.i ]
  %.0.lcssa.i = phi ptr [ null, %bb.c ], [ %i.ax, %._crit_edge.loopexit.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = add i32 %i.ae, 1
  store i32 %i.ah, ptr %i.ag, align 8, !tbaa !163, !noalias !1848
  %i.ai = zext i32 %i.ae to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ai
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !165, !noalias !1848 ; 2 uses
  %.not.i.i = icmp eq i64 %i.ak, 0
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.am = load i64, ptr %i.al, align 8, !noalias !1848
  %i.an = sub i64 %i.am, %i.ak
  %i.ao = select i1 %.not.i.i, i64 0, i64 %i.an
  br label %bb.e

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.02134.i = phi i32 [ %i.ay, %.lr.ph.i ], [ 0, %bb.c ]
  %i.ap = load ptr, ptr %i.e, align 8, !tbaa !154, !noalias !1848, !nonnull !155, !align !156 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1032, !noalias !1848 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !973, !noalias !1848
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.aw = tail call i64 @_ZN5clang9ASTReader10ReadDeclIDERNS_13serialization10ModuleFileERKN4llvm15SmallVectorImplImEERj(ptr noundef nonnull align 8 dereferenceable(16376) %i.ar, ptr noundef nonnull align 8 dereferenceable(3832) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 4 dereferenceable(4) %i.av) #25, !noalias !1848
  %i.ax = tail call noundef ptr @_ZN5clang9ASTReader7GetDeclENS_12GlobalDeclIDE(ptr noundef nonnull align 8 dereferenceable(16376) %i.ar, i64 %i.aw) #25, !noalias !1848
  %i.ay = add nuw i32 %.02134.i, 1                ; 2 uses
  %.not24.i = icmp eq i32 %i.ay, %i.ac
  br i1 %.not24.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !1843

bb.d:                                             ; preds = %bb.b
  %i.az = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !1032, !noalias !1848 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !973, !noalias !1848
  %i.bd = tail call i64 @_ZN5clang9ASTReader10ReadDeclIDERNS_13serialization10ModuleFileERKN4llvm15SmallVectorImplImEERj(ptr noundef nonnull align 8 dereferenceable(16376) %i.ba, ptr noundef nonnull align 8 dereferenceable(3832) %i.bc, ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 4 dereferenceable(4) %i.t) #25, !noalias !1848
  %i.be = tail call noundef ptr @_ZN5clang9ASTReader7GetDeclENS_12GlobalDeclIDE(ptr noundef nonnull align 8 dereferenceable(16376) %i.ba, i64 %i.bd) #25, !noalias !1848 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i, %bb.a
  %.032.i = phi i64 [ 0, %bb.d ], [ %i.ao, %._crit_edge.i ], [ 0, %bb.a ] ; 2 uses
  %.sroa.028.0.i = phi i64 [ %i.m, %bb.d ], [ %i.m, %._crit_edge.i ], [ %i.o, %bb.a ] ; 3 uses
  %.120.i = phi i1 [ false, %bb.d ], [ true, %._crit_edge.i ], [ true, %bb.a ]
  %.118.i = phi i1 [ %i.p, %bb.d ], [ %i.ab, %._crit_edge.i ], [ true, %bb.a ] ; 2 uses
  %.2.i = phi ptr [ null, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ], [ null, %bb.a ] ; 3 uses
  %i.bf = load ptr, ptr %0, align 8, !tbaa !167, !noalias !1848, !nonnull !155, !align !156
  %i.bg = tail call noundef ptr @_ZN5clang9ASTReader7GetDeclENS_12GlobalDeclIDE(ptr noundef nonnull align 8 dereferenceable(16376) %i.bf, i64 %.sroa.028.0.i) #25, !noalias !1848 ; 5 uses
  %i.bh = icmp eq ptr %i.bg, null
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 88
  %.not25.i30 = icmp eq ptr %i.bi, %spec.select
  %.not25.i = select i1 %i.bh, i1 %i.c, i1 %.not25.i30
  br i1 %.not25.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bj = ptrtoint ptr %i.bg to i64
  store i64 %i.bj, ptr %i.d, align 8, !noalias !1848
  %i.bk = load ptr, ptr %i.bg, align 8, !tbaa !987, !noalias !1848
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8, !noalias !1848
  %i.bn = tail call noundef ptr %i.bm(ptr noundef nonnull align 8 dereferenceable(128) %i.bg) #25, !noalias !1848, !inline_history !1844
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 96
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !1286, !noalias !1848
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bp = getelementptr inbounds i8, ptr %spec.select, i64 -88 ; 6 uses
  %i.bq = select i1 %i.c, ptr null, ptr %i.bp     ; 2 uses
  br i1 %.120.i, label %bb.h, label %_ZN5clang13ASTDeclReader17VisitRedeclarableINS_17ObjCInterfaceDeclEEEN12_GLOBAL__N_118RedeclarableResultEPNS_12RedeclarableIT_EE.exit

bb.h:                                             ; preds = %bb.g
  %i.br = load ptr, ptr %0, align 8, !tbaa !167, !noalias !1848, !nonnull !155, !align !156 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 11088 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 11096 ; 3 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !975, !noalias !1848 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 11100
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !979, !noalias !1848
  %.not.i26.i = icmp ult i32 %i.bu, %i.bw
  br i1 %.not.i26.i, label %bb.j, label %bb.i, !prof !980

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang4DeclEmELb1EE15growAndPushBackES5_(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, ptr %i.bq, i64 %.032.i), !noalias !1848
  br label %_ZN5clang13ASTDeclReader17VisitRedeclarableINS_17ObjCInterfaceDeclEEEN12_GLOBAL__N_118RedeclarableResultEPNS_12RedeclarableIT_EE.exit

bb.j:                                             ; preds = %bb.h
  %i.bx = zext i32 %i.bu to i64
  %i.by = load ptr, ptr %i.bs, align 8, !tbaa !164, !noalias !1848
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.by, i64 %i.bx ; 2 uses
  store ptr %i.bq, ptr %i.bz, align 1, !noalias !1848
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i64 %.032.i, ptr %.sroa.3.0..sroa_idx.i.i, align 1, !noalias !1848
  %i.ca = load i32, ptr %i.bt, align 8, !tbaa !975, !noalias !1848
  %i.cb = add i32 %i.ca, 1
  store i32 %i.cb, ptr %i.bt, align 8, !tbaa !975, !noalias !1848
  br label %_ZN5clang13ASTDeclReader17VisitRedeclarableINS_17ObjCInterfaceDeclEEEN12_GLOBAL__N_118RedeclarableResultEPNS_12RedeclarableIT_EE.exit

_ZN5clang13ASTDeclReader17VisitRedeclarableINS_17ObjCInterfaceDeclEEEN12_GLOBAL__N_118RedeclarableResultEPNS_12RedeclarableIT_EE.exit: ; preds = %bb.g, %bb.i, %bb.j
  tail call void @_ZN5clang13ASTDeclReader22VisitObjCContainerDeclEPNS_17ObjCContainerDeclE(ptr noundef nonnull align 8 dereferenceable(89) %0, ptr noundef %1)
end_hunk_0
begin_hunk_1_@_ZN5clang13ASTDeclReader22ReadObjCDefinitionDataERNS_16ObjCProtocolDecl14DefinitionDataE:bb.a
  %i.g = zext i32 %i.e to i64
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !164
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.g
  %i.j = load i64, ptr %i.i, align 8, !tbaa !165  ; 2 uses
  %i.k = trunc i64 %i.j to i32                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !164
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i32 0, ptr %i.m, align 8, !tbaa !975
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 16, ptr %i.n, align 4, !tbaa !979
  %i.o = and i64 %i.j, 4294967295                 ; 3 uses
  %i.p = icmp samesign ugt i64 %i.o, 16           ; 2 uses
  br i1 %i.p, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang16ObjCProtocolDeclEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.l, i64 noundef %i.o, i64 noundef 8) #25
  br label %_ZN4llvm15SmallVectorImplIPN5clang16ObjCProtocolDeclEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang16ObjCProtocolDeclEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %.not16 = icmp eq i32 %i.k, 0                   ; 2 uses
  br i1 %.not16, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang16ObjCProtocolDeclELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang16ObjCProtocolDeclEE7reserveEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.q, ptr %3, align 8, !tbaa !164
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i32 0, ptr %i.r, align 8, !tbaa !975
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i32 16, ptr %i.s, align 4, !tbaa !979
  br i1 %i.p, label %bb.c, label %_ZN4llvm15SmallVectorImplIN5clang14SourceLocationEE7reserveEm.exit

bb.c:                                             ; preds = %._crit_edge
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.q, i64 noundef %i.o, i64 noundef 4) #25
  br label %_ZN4llvm15SmallVectorImplIN5clang14SourceLocationEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIN5clang14SourceLocationEE7reserveEm.exit: ; preds = %._crit_edge, %bb.c
  br i1 %.not16, label %._crit_edge21, label %.lr.ph20

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang16ObjCProtocolDeclEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang16ObjCProtocolDeclELb1EE9push_backES3_.exit
  %.01217 = phi i32 [ %i.aj, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang16ObjCProtocolDeclELb1EE9push_backES3_.exit ], [ 0, %_ZN4llvm15SmallVectorImplIPN5clang16ObjCProtocolDeclEE7reserveEm.exit ]
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !154, !nonnull !155, !align !156 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1032 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !973
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.aa = call i64 @_ZN5clang9ASTReader10ReadDeclIDERNS_13serialization10ModuleFileERKN4llvm15SmallVectorImplImEERj(ptr noundef nonnull align 8 dereferenceable(16376) %i.v, ptr noundef nonnull align 8 dereferenceable(3832) %i.x, ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 4 dereferenceable(4) %i.z) #25
  %i.ab = call noundef ptr @_ZN5clang9ASTReader7GetDeclENS_12GlobalDeclIDE(ptr noundef nonnull align 8 dereferenceable(16376) %i.v, i64 %i.aa) #25 ; 2 uses
  %i.ac = load i32, ptr %i.m, align 8, !tbaa !975 ; 2 uses
  %i.ad = load i32, ptr %i.n, align 4, !tbaa !979
  %.not.i = icmp ult i32 %i.ac, %i.ad
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !980

bb.d:                                             ; preds = %.lr.ph
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang16ObjCProtocolDeclELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.ab)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang16ObjCProtocolDeclELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %.lr.ph
  %i.ae = zext i32 %i.ac to i64
  %i.af = load ptr, ptr %2, align 8, !tbaa !164
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ae
  store ptr %i.ab, ptr %i.ag, align 1
  %i.ah = load i32, ptr %i.m, align 8, !tbaa !975
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr %i.m, align 8, !tbaa !975
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang16ObjCProtocolDeclELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang16ObjCProtocolDeclELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.aj = add nuw i32 %.01217, 1                  ; 2 uses
  %.not = icmp eq i32 %i.aj, %i.k
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1856

._crit_edge21:                                    ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang14SourceLocationELb1EE9push_backES2_.exit, %_ZN4llvm15SmallVectorImplIN5clang14SourceLocationEE7reserveEm.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load ptr, ptr %2, align 8, !tbaa !164
  %i.am = load ptr, ptr %3, align 8, !tbaa !164
  %i.an = load ptr, ptr %0, align 8, !tbaa !167, !nonnull !155, !align !156
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 152
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !588
  call void @_ZN5clang16ObjCProtocolList3setEPKPNS_16ObjCProtocolDeclEjPKNS_14SourceLocationERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef %i.al, i32 noundef %i.k, ptr noundef %i.am, ptr noundef nonnull align 8 dereferenceable(23904) %i.ap) #25
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !154, !nonnull !155, !align !156 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 24 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !163 ; 2 uses
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr %i.as, align 8, !tbaa !163
  %i.av = zext i32 %i.at to i64
  %i.aw = load ptr, ptr %i.ar, align 8, !tbaa !164
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.av
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !165
  %i.az = trunc i64 %i.ay to i32
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !1298
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 8
  %i.bd = or i8 %i.bc, 1
  store i8 %i.bd, ptr %i.bb, align 8
  %i.be = load ptr, ptr %3, align 8, !tbaa !164   ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.q
  br i1 %i.bf, label %_ZN4llvm11SmallVectorIN5clang14SourceLocationELj16EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge21
  call void @free(ptr noundef %i.be) #25
  br label %_ZN4llvm11SmallVectorIN5clang14SourceLocationELj16EED2Ev.exit

_ZN4llvm11SmallVectorIN5clang14SourceLocationELj16EED2Ev.exit: ; preds = %._crit_edge21, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.bg = load ptr, ptr %2, align 8, !tbaa !164   ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.l
  br i1 %i.bh, label %_ZN4llvm11SmallVectorIPN5clang16ObjCProtocolDeclELj16EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm11SmallVectorIN5clang14SourceLocationELj16EED2Ev.exit
  call void @free(ptr noundef %i.bg) #25
  br label %_ZN4llvm11SmallVectorIPN5clang16ObjCProtocolDeclELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang16ObjCProtocolDeclELj16EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIN5clang14SourceLocationELj16EED2Ev.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

.lr.ph20:                                         ; preds = %_ZN4llvm15SmallVectorImplIN5clang14SourceLocationEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIN5clang14SourceLocationELb1EE9push_backES2_.exit
  %.019 = phi i32 [ %i.cu, %_ZN4llvm23SmallVectorTemplateBaseIN5clang14SourceLocationELb1EE9push_backES2_.exit ], [ 0, %_ZN4llvm15SmallVectorImplIN5clang14SourceLocationEE7reserveEm.exit ]
  %i.bi = load ptr, ptr %i.a, align 8, !tbaa !154, !nonnull !155, !align !156 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !1032
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !973 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 24 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !1081 ; 2 uses
  %i.bq = add i32 %i.bp, 1
  store i32 %i.bq, ptr %i.bo, align 8, !tbaa !1081
  %i.br = zext i32 %i.bp to i64
  %i.bs = load ptr, ptr %i.bn, align 8, !tbaa !164
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.br
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !165 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bm, i64 912
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !1196
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph20
  call void @_ZNK5clang9ASTReader19ReadModuleOffsetMapERNS_13serialization10ModuleFileE(ptr noundef nonnull align 8 dereferenceable(16376) %i.bk, ptr noundef nonnull align 8 dereferenceable(3832) %i.bm) #25
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph20
  %.sroa.4.0.extract.shift.i.i.i.i = lshr i64 %i.bu, 32 ; 2 uses
  %i.by = icmp eq i64 %.sroa.4.0.extract.shift.i.i.i.i, 0
  br i1 %i.by, label %_ZN5clang13ASTDeclReader18readSourceLocationEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bm, i64 3688
  %i.ca = add nuw nsw i64 %.sroa.4.0.extract.shift.i.i.i.i, 4294967295
  %i.cb = and i64 %i.ca, 4294967295
  %i.cc = load ptr, ptr %i.bz, align 8, !tbaa !164
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cb
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !1197
  br label %_ZN5clang13ASTDeclReader18readSourceLocationEv.exit

_ZN5clang13ASTDeclReader18readSourceLocationEv.exit: ; preds = %bb.i, %bb.j
  %i.cf = phi ptr [ %i.ce, %bb.j ], [ %i.bm, %bb.i ]
  %i.cg = trunc i64 %i.bu to i32                  ; 3 uses
  %i.ch = call i32 @llvm.fshl.i32(i32 %i.cg, i32 %i.cg, i32 31)
  %i.ci = icmp eq i32 %i.cg, 0
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 1712
  %i.ck = load i32, ptr %i.cj, align 8
  %i.cl = add i32 %i.ch, -2
  %i.cm = add i32 %i.cl, %i.ck
  %.sroa.0.0.i.i.i.i.i = select i1 %i.ci, i32 0, i32 %i.cm ; 2 uses
  %i.cn = load i32, ptr %i.r, align 8, !tbaa !975 ; 2 uses
  %i.co = load i32, ptr %i.s, align 4, !tbaa !979
  %.not.i15 = icmp ult i32 %i.cn, %i.co
  br i1 %.not.i15, label %bb.l, label %bb.k, !prof !980

bb.k:                                             ; preds = %_ZN5clang13ASTDeclReader18readSourceLocationEv.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang14SourceLocationELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %3, i32 %.sroa.0.0.i.i.i.i.i)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang14SourceLocationELb1EE9push_backES2_.exit

bb.l:                                             ; preds = %_ZN5clang13ASTDeclReader18readSourceLocationEv.exit
  %i.cp = zext i32 %i.cn to i64
  %i.cq = load ptr, ptr %3, align 8, !tbaa !164
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.cp
  store i32 %.sroa.0.0.i.i.i.i.i, ptr %i.cr, align 1
  %i.cs = load i32, ptr %i.r, align 8, !tbaa !975
  %i.ct = add i32 %i.cs, 1
  store i32 %i.ct, ptr %i.r, align 8, !tbaa !975
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang14SourceLocationELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIN5clang14SourceLocationELb1EE9push_backES2_.exit: ; preds = %bb.k, %bb.l
  %i.cu = add nuw i32 %.019, 1                    ; 2 uses
  %.not14 = icmp eq i32 %i.cu, %i.k
  br i1 %.not14, label %._crit_edge21, label %.lr.ph20, !llvm.loop !1857
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang13ASTDeclMerger19MergeDefinitionDataEPNS_16ObjCProtocolDeclEONS1_14DefinitionDataE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"struct.std::pair.1018", align 16  ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.0.copyload.i.i.i.i = load i64, ptr %i.a, align 8
  %i.b = and i64 %.0.copyload.i.i.i.i, -8
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1862 ; 2 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !1862   ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang16ObjCProtocolDeclEPNS3_14DefinitionDataEELb1EE9push_backES7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !1209, !nonnull !155, !align !156
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 13072
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %4 = insertelement <2 x ptr> poison, ptr %i.e, i64 0
  %5 = insertelement <2 x ptr> %4, ptr %i.d, i64 1 ; 2 uses
  %6 = icmp eq <2 x ptr> %5, splat (ptr null)
  %7 = getelementptr inbounds nuw i8, <2 x ptr> %5, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %8 = select <2 x i1> %6, <2 x ptr> splat (ptr null), <2 x ptr> %7
  store <2 x ptr> %8, ptr %3, align 16, !tbaa !1084
  %i.j = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang11DeclContextES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E24lookupOrInsertIntoBucketIS4_JS4_EEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.i), !noalias !1863 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.k = load ptr, ptr %0, align 8, !tbaa !1209, !nonnull !155, !align !156
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !1862
  %i.m = load ptr, ptr %2, align 8, !tbaa !1862
  call void @_ZN5clang9ASTReader25mergeDefinitionVisibilityEPNS_9NamedDeclES2_(ptr noundef nonnull align 8 dereferenceable(16376) %i.k, ptr noundef %i.l, ptr noundef %i.m) #25
  %i.n = call noundef i32 @_ZN5clang16ObjCProtocolDecl10getODRHashEv(ptr noundef nonnull align 8 dereferenceable(112) %1) #25
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.p = load i32, ptr %i.o, align 4, !tbaa !1298
  %.not = icmp eq i32 %i.n, %i.p
  br i1 %.not, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang16ObjCProtocolDeclEPNS3_14DefinitionDataEELb1EE9push_backES7_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %0, align 8, !tbaa !1209, !nonnull !155, !align !156
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 12584
  %i.s = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPN5clang16ObjCProtocolDeclENS_11SmallVectorISt4pairIS4_PNS3_14DefinitionDataEELj2EEELj2ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E24lookupOrInsertIntoBucketIRKS4_JEEES6_IPSF_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.s, 0 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8 ; 2 uses
  %i.u = load ptr, ptr %2, align 8, !tbaa !1299   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 16 ; 3 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !975  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 20
  %i.y = load i32, ptr %i.x, align 4, !tbaa !979
  %.not.i = icmp ult i32 %i.w, %i.y
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !980

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang16ObjCProtocolDeclEPNS3_14DefinitionDataEELb1EE15growAndPushBackES7_(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr %i.u, ptr nonnull %2)
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang16ObjCProtocolDeclEPNS3_14DefinitionDataEELb1EE9push_backES7_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = zext i32 %i.w to i64
  %i.aa = load ptr, ptr %i.t, align 8, !tbaa !164
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.z ; 2 uses
  store ptr %i.u, ptr %i.ab, align 1
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %2, ptr %.sroa.3.0..sroa_idx.i, align 1
  %i.ac = load i32, ptr %i.v, align 8, !tbaa !975
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr %i.v, align 8, !tbaa !975
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang16ObjCProtocolDeclEPNS3_14DefinitionDataEELb1EE9push_backES7_.exit

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang16ObjCProtocolDeclEPNS3_14DefinitionDataEELb1EE9push_backES7_.exit: ; preds = %bb.e, %bb.d, %bb.b, %bb.a
  ret void
}

declare noundef i32 @_ZN5clang16ObjCProtocolDecl10getODRHashEv(ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang13ASTDeclReader21VisitObjCProtocolDeclEPNS_16ObjCProtocolDeclE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(89) %0, ptr noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"class.clang::ASTDeclReader::FindExistingResult", align 8 ; 5 uses
  %i.c = icmp eq ptr %1, null                     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 5 uses
  %spec.select = select i1 %i.c, ptr null, ptr %i.d ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !154, !noalias !1871, !nonnull !155, !align !156 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1032, !noalias !1871
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !973, !noalias !1871
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.m = tail call i64 @_ZN5clang9ASTReader10ReadDeclIDERNS_13serialization10ModuleFileERKN4llvm15SmallVectorImplImEERj(ptr noundef nonnull align 8 dereferenceable(16376) %i.h, ptr noundef nonnull align 8 dereferenceable(3832) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 4 dereferenceable(4) %i.l) #25, !noalias !1871 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load i64, ptr %i.n, align 8, !tbaa !1013, !noalias !1871 ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.m
  %i.q = icmp eq i64 %i.m, 0
  br i1 %i.q, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !154, !noalias !1871, !nonnull !155, !align !156 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 3 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !163, !noalias !1871 ; 2 uses
  %i.v = add i32 %i.u, 1                          ; 2 uses
  store i32 %i.v, ptr %i.t, align 8, !tbaa !163, !noalias !1871
  %i.w = zext i32 %i.u to i64
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !164, !noalias !1871 ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.w
  %i.z = load i64, ptr %i.y, align 8, !tbaa !165, !noalias !1871
  %i.aa = trunc i64 %i.z to i32                   ; 3 uses
  %.not.not.i = icmp eq i32 %i.aa, 0
  br i1 %.not.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = icmp eq i32 %i.aa, 1
  %i.ac = add i32 %i.aa, -1                       ; 2 uses
  %.not2433.i = icmp eq i32 %i.ac, 0
  br i1 %.not2433.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !154, !noalias !1871 ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 24
  %.pre35.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !163, !noalias !1871
  %.phi.trans.insert36.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 32
  %.pre37.i = load ptr, ptr %.phi.trans.insert36.i, align 8, !tbaa !164, !noalias !1871
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.c
  %i.ad = phi ptr [ %i.x, %bb.c ], [ %.pre37.i, %._crit_edge.loopexit.i ]
  %i.ae = phi i32 [ %i.v, %bb.c ], [ %.pre35.i, %._crit_edge.loopexit.i ] ; 2 uses
  %i.af = phi ptr [ %i.r, %bb.c ], [ %.pre.i, %._crit_edge.loopexit.i ]
  %.0.lcssa.i = phi ptr [ null, %bb.c ], [ %i.ax, %._crit_edge.loopexit.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = add i32 %i.ae, 1
  store i32 %i.ah, ptr %i.ag, align 8, !tbaa !163, !noalias !1871
  %i.ai = zext i32 %i.ae to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ai
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !165, !noalias !1871 ; 2 uses
  %.not.i.i = icmp eq i64 %i.ak, 0
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.am = load i64, ptr %i.al, align 8, !noalias !1871
  %i.an = sub i64 %i.am, %i.ak
  %i.ao = select i1 %.not.i.i, i64 0, i64 %i.an
  br label %bb.e

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.02134.i = phi i32 [ %i.ay, %.lr.ph.i ], [ 0, %bb.c ]
  %i.ap = load ptr, ptr %i.e, align 8, !tbaa !154, !noalias !1871, !nonnull !155, !align !156 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1032, !noalias !1871 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !973, !noalias !1871
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.aw = tail call i64 @_ZN5clang9ASTReader10ReadDeclIDERNS_13serialization10ModuleFileERKN4llvm15SmallVectorImplImEERj(ptr noundef nonnull align 8 dereferenceable(16376) %i.ar, ptr noundef nonnull align 8 dereferenceable(3832) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 4 dereferenceable(4) %i.av) #25, !noalias !1871
  %i.ax = tail call noundef ptr @_ZN5clang9ASTReader7GetDeclENS_12GlobalDeclIDE(ptr noundef nonnull align 8 dereferenceable(16376) %i.ar, i64 %i.aw) #25, !noalias !1871
  %i.ay = add nuw i32 %.02134.i, 1                ; 2 uses
  %.not24.i = icmp eq i32 %i.ay, %i.ac
  br i1 %.not24.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !1866

bb.d:                                             ; preds = %bb.b
  %i.az = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !1032, !noalias !1871 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !973, !noalias !1871
  %i.bd = tail call i64 @_ZN5clang9ASTReader10ReadDeclIDERNS_13serialization10ModuleFileERKN4llvm15SmallVectorImplImEERj(ptr noundef nonnull align 8 dereferenceable(16376) %i.ba, ptr noundef nonnull align 8 dereferenceable(3832) %i.bc, ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 4 dereferenceable(4) %i.t) #25, !noalias !1871
  %i.be = tail call noundef ptr @_ZN5clang9ASTReader7GetDeclENS_12GlobalDeclIDE(ptr noundef nonnull align 8 dereferenceable(16376) %i.ba, i64 %i.bd) #25, !noalias !1871 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i, %bb.a
  %.032.i = phi i64 [ 0, %bb.d ], [ %i.ao, %._crit_edge.i ], [ 0, %bb.a ] ; 2 uses
  %.sroa.028.0.i = phi i64 [ %i.m, %bb.d ], [ %i.m, %._crit_edge.i ], [ %i.o, %bb.a ] ; 3 uses
  %.120.i = phi i1 [ false, %bb.d ], [ true, %._crit_edge.i ], [ true, %bb.a ]
  %.118.i = phi i1 [ %i.p, %bb.d ], [ %i.ab, %._crit_edge.i ], [ true, %bb.a ] ; 2 uses
  %.2.i = phi ptr [ null, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ], [ null, %bb.a ] ; 3 uses
  %i.bf = load ptr, ptr %0, align 8, !tbaa !167, !noalias !1871, !nonnull !155, !align !156
  %i.bg = tail call noundef ptr @_ZN5clang9ASTReader7GetDeclENS_12GlobalDeclIDE(ptr noundef nonnull align 8 dereferenceable(16376) %i.bf, i64 %.sroa.028.0.i) #25, !noalias !1871 ; 5 uses
  %i.bh = icmp eq ptr %i.bg, null
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 88
  %.not25.i26 = icmp eq ptr %i.bi, %spec.select
  %.not25.i = select i1 %i.bh, i1 %i.c, i1 %.not25.i26
  br i1 %.not25.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bj = ptrtoint ptr %i.bg to i64
  store i64 %i.bj, ptr %i.d, align 8, !noalias !1871
  %i.bk = load ptr, ptr %i.bg, align 8, !tbaa !987, !noalias !1871
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8, !noalias !1871
  %i.bn = tail call noundef ptr %i.bm(ptr noundef nonnull align 8 dereferenceable(112) %i.bg) #25, !noalias !1871, !inline_history !1867
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 96
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !1302, !noalias !1871
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bp = getelementptr inbounds i8, ptr %spec.select, i64 -88 ; 6 uses
  %i.bq = select i1 %i.c, ptr null, ptr %i.bp     ; 2 uses
  br i1 %.120.i, label %bb.h, label %_ZN5clang13ASTDeclReader17VisitRedeclarableINS_16ObjCProtocolDeclEEEN12_GLOBAL__N_118RedeclarableResultEPNS_12RedeclarableIT_EE.exit

bb.h:                                             ; preds = %bb.g
  %i.br = load ptr, ptr %0, align 8, !tbaa !167, !noalias !1871, !nonnull !155, !align !156 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 11088 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 11096 ; 3 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !975, !noalias !1871 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 11100
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !979, !noalias !1871
  %.not.i26.i = icmp ult i32 %i.bu, %i.bw
  br i1 %.not.i26.i, label %bb.j, label %bb.i, !prof !980

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang4DeclEmELb1EE15growAndPushBackES5_(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, ptr %i.bq, i64 %.032.i), !noalias !1871
  br label %_ZN5clang13ASTDeclReader17VisitRedeclarableINS_16ObjCProtocolDeclEEEN12_GLOBAL__N_118RedeclarableResultEPNS_12RedeclarableIT_EE.exit

bb.j:                                             ; preds = %bb.h
  %i.bx = zext i32 %i.bu to i64
  %i.by = load ptr, ptr %i.bs, align 8, !tbaa !164, !noalias !1871
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.by, i64 %i.bx ; 2 uses
  store ptr %i.bq, ptr %i.bz, align 1, !noalias !1871
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i64 %.032.i, ptr %.sroa.3.0..sroa_idx.i.i, align 1, !noalias !1871
  %i.ca = load i32, ptr %i.bt, align 8, !tbaa !975, !noalias !1871
  %i.cb = add i32 %i.ca, 1
  store i32 %i.cb, ptr %i.bt, align 8, !tbaa !975, !noalias !1871
  br label %_ZN5clang13ASTDeclReader17VisitRedeclarableINS_16ObjCProtocolDeclEEEN12_GLOBAL__N_118RedeclarableResultEPNS_12RedeclarableIT_EE.exit

_ZN5clang13ASTDeclReader17VisitRedeclarableINS_16ObjCProtocolDeclEEEN12_GLOBAL__N_118RedeclarableResultEPNS_12RedeclarableIT_EE.exit: ; preds = %bb.g, %bb.i, %bb.j
  tail call void @_ZN5clang13ASTDeclReader22VisitObjCContainerDeclEPNS_17ObjCContainerDeclE(ptr noundef nonnull align 8 dereferenceable(89) %0, ptr noundef %1)
end_hunk_1
begin_hunk_2_@_ZN5clang13ASTDeclReader21ReadCXXDefinitionDataERNS_13CXXRecordDecl14DefinitionDataEPKS1_PNS_4DeclEj:bb.a
bb.p:                                             ; preds = %bb.o
  %i.ib = load ptr, ptr %0, align 8, !tbaa !167, !nonnull !155, !align !156
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 152
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !588 ; 3 uses
  %i.ie = lshr i64 %i.hz, 1
  %i.if = and i64 %i.ie, 524272                   ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.id, i64 2632 ; 3 uses
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !1039 ; 2 uses
  %i.ii = ptrtoint ptr %i.ih to i64
  %i.ij = add i64 %i.if, %i.ii                    ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.id, i64 2640
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !1040
  %i.im = icmp ult i64 %i.ij, %i.il
  br i1 %i.im, label %bb.q, label %bb.r, !prof !980

bb.q:                                             ; preds = %bb.p
  %i.in = inttoptr i64 %i.ij to ptr
  store ptr %i.in, ptr %i.ig, align 8, !tbaa !1039
  br label %_ZNK5clang10ASTContext8AllocateEmj.exit

bb.r:                                             ; preds = %bb.p
  %i.io = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.ig, i64 noundef %i.if, i64 noundef %i.if, i8 3)
  %.pre355 = load ptr, ptr %0, align 8, !tbaa !167
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre355, i64 152
  %.pre356 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !588
  br label %_ZNK5clang10ASTContext8AllocateEmj.exit

_ZNK5clang10ASTContext8AllocateEmj.exit:          ; preds = %bb.q, %bb.r
  %i.ip = phi ptr [ %i.id, %bb.q ], [ %.pre356, %bb.r ]
  %.0.i.i.i = phi ptr [ %i.ih, %bb.q ], [ %i.io, %bb.r ] ; 2 uses
  call void @_ZN5clang13CXXRecordDecl20LambdaDefinitionData14AddCaptureListERNS_10ASTContextEPNS_13LambdaCaptureE(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(23904) %i.ip, ptr noundef %.0.i.i.i) #25
  br label %bb.s

bb.s:                                             ; preds = %_ZNK5clang10ASTContext8AllocateEmj.exit, %bb.o
  %.0 = phi ptr [ %.0.i.i.i, %_ZNK5clang10ASTContext8AllocateEmj.exit ], [ null, %bb.o ]
  %i.iq = load ptr, ptr %i.c, align 8, !tbaa !154, !nonnull !155, !align !156
  %i.ir = call noundef ptr @_ZN5clang15ASTRecordReader18readTypeSourceInfoEv(ptr noundef nonnull align 8 dereferenceable(560) %i.iq) #25
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 136
  store ptr %i.ir, ptr %i.is, align 8, !tbaa !2032
  %i.it = load i64, ptr %i.fy, align 8
  %i.iu = trunc i64 %i.it to i32
  %i.iv = lshr i32 %i.iu, 5
  %i.iw = and i32 %i.iv, 32767                    ; 2 uses
  %.not117319 = icmp eq i32 %i.iw, 0
  br i1 %.not117319, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.s, %bb.ab
  %.1321 = phi ptr [ %.2, %bb.ab ], [ %.0, %bb.s ] ; 5 uses
  %.0109320 = phi i32 [ %i.mc, %bb.ab ], [ 0, %bb.s ]
  %i.ix = load ptr, ptr %i.c, align 8, !tbaa !154, !nonnull !155, !align !156 ; 4 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !1032
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !973 ; 4 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ix, i64 32
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ix, i64 24 ; 2 uses
  %i.je = load i32, ptr %i.jd, align 8, !tbaa !1081 ; 2 uses
  %i.jf = add i32 %i.je, 1
  store i32 %i.jf, ptr %i.jd, align 8, !tbaa !1081
  %i.jg = zext i32 %i.je to i64
  %i.jh = load ptr, ptr %i.jc, align 8, !tbaa !164
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.jh, i64 %i.jg
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !165 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jb, i64 912
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !1196
  %i.jm = icmp eq i64 %i.jl, 0
  br i1 %i.jm, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph
  call void @_ZNK5clang9ASTReader19ReadModuleOffsetMapERNS_13serialization10ModuleFileE(ptr noundef nonnull align 8 dereferenceable(16376) %i.iz, ptr noundef nonnull align 8 dereferenceable(3832) %i.jb) #25
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph
  %.sroa.4.0.extract.shift.i.i.i.i = lshr i64 %i.jj, 32 ; 2 uses
  %i.jn = icmp eq i64 %.sroa.4.0.extract.shift.i.i.i.i, 0
  br i1 %i.jn, label %_ZN5clang13ASTDeclReader18readSourceLocationEv.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jb, i64 3688
  %i.jp = add nuw nsw i64 %.sroa.4.0.extract.shift.i.i.i.i, 4294967295
  %i.jq = and i64 %i.jp, 4294967295
  %i.jr = load ptr, ptr %i.jo, align 8, !tbaa !164
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %i.jq
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !1197
  br label %_ZN5clang13ASTDeclReader18readSourceLocationEv.exit

_ZN5clang13ASTDeclReader18readSourceLocationEv.exit: ; preds = %bb.u, %bb.v
  %i.ju = phi ptr [ %i.jt, %bb.v ], [ %i.jb, %bb.u ]
  %i.jv = trunc i64 %i.jj to i32                  ; 3 uses
  %i.jw = call i32 @llvm.fshl.i32(i32 %i.jv, i32 %i.jv, i32 31)
  %i.jx = icmp eq i32 %i.jv, 0
  %i.jy = getelementptr inbounds nuw i8, ptr %i.ju, i64 1712
  %i.jz = load i32, ptr %i.jy, align 8
  %i.ka = add i32 %i.jw, -2
  %i.kb = add i32 %i.ka, %i.jz
  %.sroa.0.0.i.i.i.i.i = select i1 %i.jx, i32 0, i32 %i.kb ; 2 uses
  %i.kc = load ptr, ptr %i.c, align 8, !tbaa !154, !nonnull !155, !align !156 ; 4 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 32 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kc, i64 24 ; 3 uses
  %i.kf = load i32, ptr %i.ke, align 8, !tbaa !163 ; 2 uses
  %i.kg = add i32 %i.kf, 1
  store i32 %i.kg, ptr %i.ke, align 8, !tbaa !163
  %i.kh = zext i32 %i.kf to i64
  %i.ki = load ptr, ptr %i.kd, align 8, !tbaa !164
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.ki, i64 %i.kh
  %i.kk = load i64, ptr %i.kj, align 8, !tbaa !165 ; 2 uses
  %i.kl = trunc i64 %i.kk to i32
  %i.km = trunc i64 %i.kk to i1                   ; 2 uses
  %i.kn = lshr i32 %i.kl, 1
  %i.ko = and i32 %i.kn, 7                        ; 3 uses
  switch i32 %i.ko, label %bb.ab [
    i32 1, label %bb.w
    i32 0, label %bb.w
    i32 4, label %bb.w
    i32 2, label %bb.x
    i32 3, label %bb.x
  ]

bb.w:                                             ; preds = %_ZN5clang13ASTDeclReader18readSourceLocationEv.exit, %_ZN5clang13ASTDeclReader18readSourceLocationEv.exit, %_ZN5clang13ASTDeclReader18readSourceLocationEv.exit
  call void @_ZN5clang13LambdaCaptureC1ENS_14SourceLocationEbNS_17LambdaCaptureKindEPNS_9ValueDeclES1_(ptr noundef nonnull align 8 dereferenceable(16) %.1321, i32 %.sroa.0.0.i.i.i.i.i, i1 noundef zeroext %i.km, i32 noundef %i.ko, ptr noundef null, i32 0) #25
  %i.kp = getelementptr inbounds nuw i8, ptr %.1321, i64 16
  br label %bb.ab

bb.x:                                             ; preds = %_ZN5clang13ASTDeclReader18readSourceLocationEv.exit, %_ZN5clang13ASTDeclReader18readSourceLocationEv.exit
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !1032 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kc, i64 16
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !973
  %i.ku = call i64 @_ZN5clang9ASTReader10ReadDeclIDERNS_13serialization10ModuleFileERKN4llvm15SmallVectorImplImEERj(ptr noundef nonnull align 8 dereferenceable(16376) %i.kr, ptr noundef nonnull align 8 dereferenceable(3832) %i.kt, ptr noundef nonnull align 8 dereferenceable(16) %i.kd, ptr noundef nonnull align 4 dereferenceable(4) %i.ke) #25
  %i.kv = call noundef ptr @_ZN5clang9ASTReader7GetDeclENS_12GlobalDeclIDE(ptr noundef nonnull align 8 dereferenceable(16376) %i.kr, i64 %i.ku) #25
  %i.kw = load ptr, ptr %i.c, align 8, !tbaa !154, !nonnull !155, !align !156 ; 4 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !1032
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kw, i64 16
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !973 ; 4 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kw, i64 32
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kw, i64 24 ; 2 uses
  %i.ld = load i32, ptr %i.lc, align 8, !tbaa !1081 ; 2 uses
  %i.le = add i32 %i.ld, 1
  store i32 %i.le, ptr %i.lc, align 8, !tbaa !1081
  %i.lf = zext i32 %i.ld to i64
  %i.lg = load ptr, ptr %i.lb, align 8, !tbaa !164
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.lg, i64 %i.lf
  %i.li = load i64, ptr %i.lh, align 8, !tbaa !165 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.la, i64 912
  %i.lk = load i64, ptr %i.lj, align 8, !tbaa !1196
  %i.ll = icmp eq i64 %i.lk, 0
  br i1 %i.ll, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_ZNK5clang9ASTReader19ReadModuleOffsetMapERNS_13serialization10ModuleFileE(ptr noundef nonnull align 8 dereferenceable(16376) %i.ky, ptr noundef nonnull align 8 dereferenceable(3832) %i.la) #25
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.sroa.4.0.extract.shift.i.i.i.i125 = lshr i64 %i.li, 32 ; 2 uses
  %i.lm = icmp eq i64 %.sroa.4.0.extract.shift.i.i.i.i125, 0
  br i1 %i.lm, label %_ZN5clang13ASTDeclReader18readSourceLocationEv.exit127, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ln = getelementptr inbounds nuw i8, ptr %i.la, i64 3688
  %i.lo = add nuw nsw i64 %.sroa.4.0.extract.shift.i.i.i.i125, 4294967295
  %i.lp = and i64 %i.lo, 4294967295
  %i.lq = load ptr, ptr %i.ln, align 8, !tbaa !164
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.lq, i64 %i.lp
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !1197
  br label %_ZN5clang13ASTDeclReader18readSourceLocationEv.exit127

_ZN5clang13ASTDeclReader18readSourceLocationEv.exit127: ; preds = %bb.z, %bb.aa
  %i.lt = phi ptr [ %i.ls, %bb.aa ], [ %i.la, %bb.z ]
  %i.lu = trunc i64 %i.li to i32                  ; 3 uses
  %i.lv = call i32 @llvm.fshl.i32(i32 %i.lu, i32 %i.lu, i32 31)
  %i.lw = icmp eq i32 %i.lu, 0
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lt, i64 1712
  %i.ly = load i32, ptr %i.lx, align 8
  %i.lz = add i32 %i.lv, -2
  %i.ma = add i32 %i.lz, %i.ly
  %.sroa.0.0.i.i.i.i.i126 = select i1 %i.lw, i32 0, i32 %i.ma
  call void @_ZN5clang13LambdaCaptureC1ENS_14SourceLocationEbNS_17LambdaCaptureKindEPNS_9ValueDeclES1_(ptr noundef nonnull align 8 dereferenceable(16) %.1321, i32 %.sroa.0.0.i.i.i.i.i, i1 noundef zeroext %i.km, i32 noundef %i.ko, ptr noundef %i.kv, i32 %.sroa.0.0.i.i.i.i.i126) #25
  %i.mb = getelementptr inbounds nuw i8, ptr %.1321, i64 16
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN5clang13ASTDeclReader18readSourceLocationEv.exit127, %bb.w, %_ZN5clang13ASTDeclReader18readSourceLocationEv.exit
  %.2 = phi ptr [ %.1321, %_ZN5clang13ASTDeclReader18readSourceLocationEv.exit ], [ %i.kp, %bb.w ], [ %i.mb, %_ZN5clang13ASTDeclReader18readSourceLocationEv.exit127 ]
  %i.mc = add nuw nsw i32 %.0109320, 1            ; 2 uses
  %.not117 = icmp eq i32 %i.mc, %i.iw
  br i1 %.not117, label %.loopexit, label %.lr.ph, !llvm.loop !2031

.loopexit:                                        ; preds = %bb.ab, %bb.s, %bb.l
  ret void
}

declare void @_ZN5clang15ASTRecordReader17readUnresolvedSetERNS_20LazyASTUnresolvedSetE(ptr noundef nonnull align 8 dereferenceable(560), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare void @_ZN5clang13CXXRecordDecl20LambdaDefinitionData14AddCaptureListERNS_10ASTContextEPNS_13LambdaCaptureE(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef nonnull align 8 dereferenceable(23904), ptr noundef) local_unnamed_addr #3

declare void @_ZN5clang13LambdaCaptureC1ENS_14SourceLocationEbNS_17LambdaCaptureKindEPNS_9ValueDeclES1_(ptr noundef nonnull align 8 dereferenceable(16), i32, i1 noundef zeroext, i32 noundef, ptr noundef, i32) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang13ASTDeclMerger19MergeDefinitionDataEPNS_13CXXRecordDeclEONS1_14DefinitionDataE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(104) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"struct.std::pair.1018", align 16  ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1060 ; 57 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1077 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 7 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1077 ; 2 uses
  %.not = icmp eq ptr %i.d, %i.f
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !1209, !nonnull !155, !align !156
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 13072
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %4 = insertelement <2 x ptr> poison, ptr %i.f, i64 0
  %5 = insertelement <2 x ptr> %4, ptr %i.d, i64 1 ; 2 uses
  %6 = icmp eq <2 x ptr> %5, splat (ptr null)
  %7 = getelementptr inbounds nuw i8, <2 x ptr> %5, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %8 = select <2 x i1> %6, <2 x ptr> splat (ptr null), <2 x ptr> %7
  store <2 x ptr> %8, ptr %3, align 16, !tbaa !1084
  %i.j = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang11DeclContextES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E24lookupOrInsertIntoBucketIS4_JS4_EEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.i), !noalias !2048 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.k = load ptr, ptr %0, align 8, !tbaa !1209, !nonnull !155, !align !156 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 3920 ; 3 uses
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !1077 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 3936
  %i.o = load i8, ptr %i.n, align 8, !tbaa !1287, !range !985, !noundef !155
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !1288 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 3932 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !1289 ; 3 uses
  %i.t = zext i32 %i.s to i64
  %.idx.i.i = shl nuw nsw i64 %i.t, 3
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx.i.i
  %.not1923.i.i = icmp eq i32 %i.s, 0
  br i1 %.not1923.i.i, label %_ZN4llvm15SmallPtrSetImplIPN5clang4DeclEE5eraseES3_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.critedge.i.i
  %.01524.i.i = phi ptr [ %i.w, %.critedge.i.i ], [ %i.q, %bb.c ] ; 3 uses
  %i.v = load ptr, ptr %.01524.i.i, align 8, !tbaa !1234
  %.not20.i.i = icmp eq ptr %i.v, %i.m
  br i1 %.not20.i.i, label %bb.d, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.01524.i.i, i64 8 ; 2 uses
  %.not19.i.i = icmp eq ptr %i.w, %i.u
  br i1 %.not19.i.i, label %_ZN4llvm15SmallPtrSetImplIPN5clang4DeclEE5eraseES3_.exit, label %.lr.ph.i.i

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.x = add i32 %i.s, -1                         ; 2 uses
  store i32 %i.x, ptr %i.r, align 4, !tbaa !1289
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1234
  store ptr %i.aa, ptr %.01524.i.i, align 8, !tbaa !1234
  br label %_ZN4llvm15SmallPtrSetImplIPN5clang4DeclEE5eraseES3_.exit

bb.e:                                             ; preds = %bb.b
  %i.ab = call noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17) %i.l, ptr noundef %i.m) #25 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.not.i.i, label %_ZN4llvm15SmallPtrSetImplIPN5clang4DeclEE5eraseES3_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm19SmallPtrSetImplBase15eraseFromBucketEPPKv(ptr noundef nonnull align 8 dereferenceable(17) %i.l, ptr noundef nonnull %i.ab) #25
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 3932 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !1289
  %i.ae = add i32 %i.ad, -1
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !1289
  br label %_ZN4llvm15SmallPtrSetImplIPN5clang4DeclEE5eraseES3_.exit

_ZN4llvm15SmallPtrSetImplIPN5clang4DeclEE5eraseES3_.exit: ; preds = %.critedge.i.i, %bb.c, %bb.d, %bb.e, %bb.f
  %i.af = load ptr, ptr %i.e, align 8, !tbaa !1077
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 74 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 2
  %i.ai = and i8 %i.ah, -34
  %i.aj = or disjoint i8 %i.ai, 32
  store i8 %i.aj, ptr %i.ag, align 2
  %i.ak = load ptr, ptr %0, align 8, !tbaa !1209, !nonnull !155, !align !156
  %i.al = load ptr, ptr %i.c, align 8, !tbaa !1077
  %i.am = load ptr, ptr %i.e, align 8, !tbaa !1077
  call void @_ZN5clang9ASTReader25mergeDefinitionVisibilityEPNS_9NamedDeclES2_(ptr noundef nonnull align 8 dereferenceable(16376) %i.ak, ptr noundef %i.al, ptr noundef %i.am) #25
  br label %bb.g

bb.g:                                             ; preds = %_ZN4llvm15SmallPtrSetImplIPN5clang4DeclEE5eraseES3_.exit, %bb.a
  %i.an = load ptr, ptr %0, align 8, !tbaa !1209, !nonnull !155, !align !156 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 3232
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1350, !noalias !2049 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 3240
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1351, !noalias !2049 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 3252
  %i.at = load i32, ptr %i.as, align 4, !tbaa !1352, !noalias !2049 ; 4 uses
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %.loopexit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = add i32 %i.at, -1                       ; 2 uses
  %i.aw = ptrtoint ptr %i.b to i64
  %i.ax = mul i64 %i.aw, -4658895280553007687     ; 2 uses
  %i.ay = lshr i64 %i.ax, 31
  %i.az = xor i64 %i.ay, %i.ax
  %i.ba = trunc i64 %i.az to i32
  %i.bb = and i32 %i.av, %i.ba                    ; 3 uses
  %i.bc = zext i32 %i.bb to i64                   ; 2 uses
  %i.bd = lshr i64 %i.bc, 5
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !1081, !noalias !2050
  %i.bg = and i32 %i.bb, 31
  %i.bh = lshr i32 %i.bf, %i.bg
  %i.bi = trunc i32 %i.bh to i1
  br i1 %i.bi, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !1082

.lr.ph.i.i.i.i:                                   ; preds = %bb.h, %bb.i
  %i.bj = phi i64 [ %i.bp, %bb.i ], [ %i.bc, %bb.h ]
  %.017.i.i.i.i = phi i32 [ %i.bo, %bb.i ], [ %i.bb, %bb.h ]
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %i.bj ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !1234, !noalias !2050
  %i.bm = icmp eq ptr %i.b, %i.bl
  br i1 %i.bm, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPvN5clang9ASTReader25PendingFakeDefinitionKindENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEEES2_S5_S7_SA_E4findEPKv.exit.loopexit, label %bb.i, !prof !980

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bn = add nuw i32 %.017.i.i.i.i, 1
  %i.bo = and i32 %i.bn, %i.av                    ; 3 uses
  %i.bp = zext i32 %i.bo to i64                   ; 2 uses
  %i.bq = lshr i64 %i.bp, 5
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !1081, !noalias !2050
  %i.bt = and i32 %i.bo, 31
  %i.bu = lshr i32 %i.bs, %i.bt
  %i.bv = trunc i32 %i.bu to i1
  br i1 %i.bv, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !1085

.loopexit.i.i:                                    ; preds = %bb.i, %bb.h, %bb.g
  %i.bw = zext i32 %i.at to i64                   ; 2 uses
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %i.bw
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPvN5clang9ASTReader25PendingFakeDefinitionKindENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEEES2_S5_S7_SA_E4findEPKv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPvN5clang9ASTReader25PendingFakeDefinitionKindENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEEES2_S5_S7_SA_E4findEPKv.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre385 = zext i32 %i.at to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPvN5clang9ASTReader25PendingFakeDefinitionKindENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEEES2_S5_S7_SA_E4findEPKv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPvN5clang9ASTReader25PendingFakeDefinitionKindENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEEES2_S5_S7_SA_E4findEPKv.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPvN5clang9ASTReader25PendingFakeDefinitionKindENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEEES2_S5_S7_SA_E4findEPKv.exit.loopexit, %.loopexit.i.i
  %.pre-phi = phi i64 [ %.pre385, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPvN5clang9ASTReader25PendingFakeDefinitionKindENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEEES2_S5_S7_SA_E4findEPKv.exit.loopexit ], [ %i.bw, %.loopexit.i.i ]
  %.lcssa.sink.i.i = phi ptr [ %i.bk, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPvN5clang9ASTReader25PendingFakeDefinitionKindENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEEES2_S5_S7_SA_E4findEPKv.exit.loopexit ], [ %i.bx, %.loopexit.i.i ] ; 2 uses
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %.pre-phi
  %.not374 = icmp eq ptr %.lcssa.sink.i.i, %i.by
  br i1 %.not374, label %.critedge, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPvN5clang9ASTReader25PendingFakeDefinitionKindENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEEES2_S5_S7_SA_E4findEPKv.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i, i64 8 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !1065
  %i.cb = icmp eq i32 %i.ca, 1
  br i1 %i.cb, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  store i32 2, ptr %i.bz, align 8, !tbaa !1065
  %i.cc = load ptr, ptr %i.c, align 8, !tbaa !1077 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 40, i1 false)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !974 ; 2 uses
  %i.ch = and i64 %i.cg, 3
  %i.ci = load <2 x ptr>, ptr %i.ce, align 8, !tbaa !2051
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ce, i8 0, i64 16, i1 false)
  store i64 %i.ch, ptr %i.cf, align 8
  store <2 x ptr> %i.ci, ptr %i.cd, align 8, !tbaa !2051
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %i.cg, ptr %i.cj, align 8, !tbaa !974
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !974 ; 2 uses
  %i.co = and i64 %i.cn, 3
  %i.cp = load <2 x ptr>, ptr %i.cl, align 8, !tbaa !2051
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, i8 0, i64 16, i1 false)
  store i64 %i.co, ptr %i.cm, align 8
  store <2 x ptr> %i.cp, ptr %i.ck, align 8, !tbaa !2051
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i64 %i.cn, ptr %i.cq, align 8, !tbaa !974
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false)
  store ptr %i.cc, ptr %i.c, align 8, !tbaa !1077
  %i.cr = load ptr, ptr %i.cc, align 8, !tbaa !987
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = call noundef ptr %i.ct(ptr noundef nonnull align 8 dereferenceable(33) %i.cc) #25, !inline_history !2052
  %i.cv = call noundef ptr @_ZN5clang13ASTDeclReader17getMostRecentDeclEPNS_4DeclE(ptr noundef %i.cu) ; 2 uses
  %.not349377 = icmp eq ptr %i.cv, null
  br i1 %.not349377, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang13CXXRecordDeclEPNS3_14DefinitionDataEELb1EE9push_backES7_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %.lr.ph
  %.0338378 = phi ptr [ %i.da, %.lr.ph ], [ %i.cv, %bb.k ] ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.0338378, i64 128
  store ptr %i.b, ptr %i.cw, align 8, !tbaa !1060
  %i.cx = load ptr, ptr %.0338378, align 8, !tbaa !987
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 48
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = call noundef ptr %i.cz(ptr noundef nonnull align 8 dereferenceable(33) %.0338378) #25, !inline_history !2045 ; 2 uses
  %.not349 = icmp eq ptr %i.da, null
  br i1 %.not349, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang13CXXRecordDeclEPNS3_14DefinitionDataEELb1EE9push_backES7_.exit, label %.lr.ph, !llvm.loop !2046

.critedge:                                        ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPvN5clang9ASTReader25PendingFakeDefinitionKindENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEEES2_S5_S7_SA_E4findEPKv.exit, %bb.j
  %i.db = load i64, ptr %i.b, align 8             ; 14 uses
  %i.dc = trunc i64 %i.db to i32                  ; 27 uses
  %i.dd = and i32 %i.dc, 1                        ; 2 uses
  %i.de = load i64, ptr %2, align 8
  %i.df = trunc i64 %i.de to i32
  %i.dg = and i32 %i.df, 1                        ; 2 uses
  %i.dh = or i32 %i.dg, %i.dd
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = and i64 %i.db, -2
  %i.dk = or disjoint i64 %i.dj, %i.di            ; 2 uses
  store i64 %i.dk, ptr %i.b, align 8
  %i.dl = lshr i32 %i.dc, 1
  %i.dm = and i32 %i.dl, 63                       ; 2 uses
  %i.dn = load i64, ptr %2, align 8
  %i.do = trunc i64 %i.dn to i32
  %i.dp = lshr i32 %i.do, 1
  %i.dq = and i32 %i.dp, 63                       ; 2 uses
end_hunk_2
