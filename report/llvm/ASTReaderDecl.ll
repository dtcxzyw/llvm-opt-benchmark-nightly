Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ASTReaderDecl?download=true
inline.NumInlined: 19414
inline.NumDeleted: 7686
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E8moveFromERSA_:bb.a
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !1534
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !1534
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIPN5clang4DeclES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang4DeclES7_NS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S7_EEEES7_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bg = zext i32 %i.bb to i64                   ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bl, i64 noundef 8) #25
  store i32 0, ptr %i.d, align 4, !tbaa !1532
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPN5clang4DeclES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE4killEv.exit

_ZN4llvm8DenseMapIPN5clang4DeclES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang4DeclES7_NS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S7_EEEES7_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #18

declare void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZN5clang7APValue24DestroyDataAndMakeUninitEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN5clang13ASTDeclReader16VisitVarDeclImplEPNS_7VarDeclE(ptr dead_on_unwind noalias nofree nonnull writable align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(89) %1, ptr noundef %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = icmp eq ptr %2, null                     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %spec.select = select i1 %i.b, ptr null, ptr %i.c ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2575)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 9 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !154, !noalias !2575, !nonnull !155, !align !156 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1032, !noalias !2575
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !973, !noalias !2575
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.l = tail call i64 @_ZN5clang9ASTReader10ReadDeclIDERNS_13serialization10ModuleFileERKN4llvm15SmallVectorImplImEERj(ptr noundef nonnull align 8 dereferenceable(16376) %i.g, ptr noundef nonnull align 8 dereferenceable(3832) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.k) #25, !noalias !2575 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = load i64, ptr %i.m, align 8, !tbaa !1013, !noalias !2575 ; 2 uses
  %i.o = icmp eq i64 %i.n, %i.l
  %i.p = icmp eq i64 %i.l, 0
  br i1 %i.p, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !154, !noalias !2575, !nonnull !155, !align !156 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 3 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !163, !noalias !2575 ; 2 uses
  %i.u = add i32 %i.t, 1                          ; 2 uses
  store i32 %i.u, ptr %i.s, align 8, !tbaa !163, !noalias !2575
  %i.v = zext i32 %i.t to i64
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !164, !noalias !2575 ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load i64, ptr %i.x, align 8, !tbaa !165, !noalias !2575
  %i.z = trunc i64 %i.y to i32                    ; 3 uses
  %.not.not.i = icmp eq i32 %i.z, 0
  br i1 %.not.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = icmp eq i32 %i.z, 1
  %i.ab = add i32 %i.z, -1                        ; 2 uses
  %.not2433.i = icmp eq i32 %i.ab, 0
  br i1 %.not2433.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !154, !noalias !2575 ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 24
  %.pre35.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !163, !noalias !2575
  %.phi.trans.insert36.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 32
  %.pre37.i = load ptr, ptr %.phi.trans.insert36.i, align 8, !tbaa !164, !noalias !2575
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.c
  %i.ac = phi ptr [ %i.w, %bb.c ], [ %.pre37.i, %._crit_edge.loopexit.i ]
  %i.ad = phi i32 [ %i.u, %bb.c ], [ %.pre35.i, %._crit_edge.loopexit.i ] ; 2 uses
  %i.ae = phi ptr [ %i.q, %bb.c ], [ %.pre.i, %._crit_edge.loopexit.i ]
  %.0.lcssa.i = phi ptr [ null, %bb.c ], [ %i.aw, %._crit_edge.loopexit.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = add i32 %i.ad, 1
  store i32 %i.ag, ptr %i.af, align 8, !tbaa !163, !noalias !2575
  %i.ah = zext i32 %i.ad to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ah
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !165, !noalias !2575 ; 2 uses
  %.not.i.i = icmp eq i64 %i.aj, 0
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.al = load i64, ptr %i.ak, align 8, !noalias !2575
  %i.am = sub i64 %i.al, %i.aj
  %i.an = select i1 %.not.i.i, i64 0, i64 %i.am
  br label %bb.e

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.02134.i = phi i32 [ %i.ax, %.lr.ph.i ], [ 0, %bb.c ]
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !154, !noalias !2575, !nonnull !155, !align !156 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1032, !noalias !2575 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !973, !noalias !2575
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.av = tail call i64 @_ZN5clang9ASTReader10ReadDeclIDERNS_13serialization10ModuleFileERKN4llvm15SmallVectorImplImEERj(ptr noundef nonnull align 8 dereferenceable(16376) %i.aq, ptr noundef nonnull align 8 dereferenceable(3832) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 4 dereferenceable(4) %i.au) #25, !noalias !2575
  %i.aw = tail call noundef ptr @_ZN5clang9ASTReader7GetDeclENS_12GlobalDeclIDE(ptr noundef nonnull align 8 dereferenceable(16376) %i.aq, i64 %i.av) #25, !noalias !2575
  %i.ax = add nuw i32 %.02134.i, 1                ; 2 uses
  %.not24.i = icmp eq i32 %i.ax, %i.ab
  br i1 %.not24.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !2571

bb.d:                                             ; preds = %bb.b
  %i.ay = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1032, !noalias !2575 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !973, !noalias !2575
  %i.bc = tail call i64 @_ZN5clang9ASTReader10ReadDeclIDERNS_13serialization10ModuleFileERKN4llvm15SmallVectorImplImEERj(ptr noundef nonnull align 8 dereferenceable(16376) %i.az, ptr noundef nonnull align 8 dereferenceable(3832) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 4 dereferenceable(4) %i.s) #25, !noalias !2575
  %i.bd = tail call noundef ptr @_ZN5clang9ASTReader7GetDeclENS_12GlobalDeclIDE(ptr noundef nonnull align 8 dereferenceable(16376) %i.az, i64 %i.bc) #25, !noalias !2575 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i, %bb.a
  %.032.i = phi i64 [ 0, %bb.d ], [ %i.an, %._crit_edge.i ], [ 0, %bb.a ] ; 2 uses
  %.sroa.028.0.i = phi i64 [ %i.l, %bb.d ], [ %i.l, %._crit_edge.i ], [ %i.n, %bb.a ] ; 2 uses
  %.120.i = phi i1 [ false, %bb.d ], [ true, %._crit_edge.i ], [ true, %bb.a ]
  %.118.i = phi i1 [ %i.o, %bb.d ], [ %i.aa, %._crit_edge.i ], [ true, %bb.a ]
  %.2.i = phi ptr [ null, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ], [ null, %bb.a ]
  %i.be = load ptr, ptr %1, align 8, !tbaa !167, !noalias !2575, !nonnull !155, !align !156
  %i.bf = tail call noundef ptr @_ZN5clang9ASTReader7GetDeclENS_12GlobalDeclIDE(ptr noundef nonnull align 8 dereferenceable(16376) %i.be, i64 %.sroa.028.0.i) #25, !noalias !2575 ; 5 uses
  %i.bg = icmp eq ptr %i.bf, null
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 72
  %.not25.i95 = icmp eq ptr %i.bh, %spec.select
  %.not25.i = select i1 %i.bg, i1 %i.b, i1 %.not25.i95
  br i1 %.not25.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bi = ptrtoint ptr %i.bf to i64
  store i64 %i.bi, ptr %i.c, align 8, !noalias !2575
  %i.bj = load ptr, ptr %i.bf, align 8, !tbaa !987, !noalias !2575
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !2575
  %i.bm = tail call noundef ptr %i.bl(ptr noundef nonnull align 8 dereferenceable(100) %i.bf) #25, !noalias !2575, !inline_history !2572
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 80
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !1399, !noalias !2575
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bo = getelementptr inbounds i8, ptr %spec.select, i64 -72
  %i.bp = select i1 %i.b, ptr null, ptr %i.bo     ; 2 uses
  br i1 %.120.i, label %bb.h, label %_ZN5clang13ASTDeclReader17VisitRedeclarableINS_7VarDeclEEEN12_GLOBAL__N_118RedeclarableResultEPNS_12RedeclarableIT_EE.exit

bb.h:                                             ; preds = %bb.g
  %i.bq = load ptr, ptr %1, align 8, !tbaa !167, !noalias !2575, !nonnull !155, !align !156 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 11088 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 11096 ; 3 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !975, !noalias !2575 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 11100
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !979, !noalias !2575
  %.not.i26.i = icmp ult i32 %i.bt, %i.bv
  br i1 %.not.i26.i, label %bb.j, label %bb.i, !prof !980

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang4DeclEmELb1EE15growAndPushBackES5_(ptr noundef nonnull align 8 dereferenceable(16) %i.br, ptr %i.bp, i64 %.032.i), !noalias !2575
  br label %_ZN5clang13ASTDeclReader17VisitRedeclarableINS_7VarDeclEEEN12_GLOBAL__N_118RedeclarableResultEPNS_12RedeclarableIT_EE.exit

bb.j:                                             ; preds = %bb.h
  %i.bw = zext i32 %i.bt to i64
  %i.bx = load ptr, ptr %i.br, align 8, !tbaa !164, !noalias !2575
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.bx, i64 %i.bw ; 2 uses
  store ptr %i.bp, ptr %i.by, align 1, !noalias !2575
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i64 %.032.i, ptr %.sroa.3.0..sroa_idx.i.i, align 1, !noalias !2575
  %i.bz = load i32, ptr %i.bs, align 8, !tbaa !975, !noalias !2575
  %i.ca = add i32 %i.bz, 1
  store i32 %i.ca, ptr %i.bs, align 8, !tbaa !975, !noalias !2575
  br label %_ZN5clang13ASTDeclReader17VisitRedeclarableINS_7VarDeclEEEN12_GLOBAL__N_118RedeclarableResultEPNS_12RedeclarableIT_EE.exit

_ZN5clang13ASTDeclReader17VisitRedeclarableINS_7VarDeclEEEN12_GLOBAL__N_118RedeclarableResultEPNS_12RedeclarableIT_EE.exit: ; preds = %bb.g, %bb.i, %bb.j
  %i.cb = zext i1 %.118.i to i8
  store ptr %.2.i, ptr %0, align 8, !tbaa !1207, !alias.scope !2575
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.028.0.i, ptr %i.cc, align 8, !alias.scope !2575
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.cb, ptr %i.cd, align 8, !tbaa !1208, !alias.scope !2575
  tail call void @_ZN5clang13ASTDeclReader19VisitDeclaratorDeclEPNS_14DeclaratorDeclE(ptr noundef nonnull align 8 dereferenceable(89) %1, ptr noundef %2)
  %i.ce = load ptr, ptr %i.d, align 8, !tbaa !154, !nonnull !155, !align !156 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 24 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !163 ; 2 uses
  %i.ci = add i32 %i.ch, 1
  store i32 %i.ci, ptr %i.cg, align 8, !tbaa !163
  %i.cj = zext i32 %i.ch to i64
  %i.ck = load ptr, ptr %i.cf, align 8, !tbaa !164
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.cj
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !165 ; 10 uses
  %i.cn = trunc i64 %i.cm to i32                  ; 2 uses
  %i.co = trunc i64 %i.cm to i8
  %i.cp = and i8 %i.co, 7                         ; 2 uses
  %i.cq = and i32 %i.cn, 8
  %.not96 = icmp eq i32 %i.cq, 0
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 4 uses
  %sh.diff = lshr i64 %i.cm, 4
  %tr.sh.diff = trunc i64 %sh.diff to i8
  store i8 %tr.sh.diff, ptr %i.cr, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 6 uses
  %i.ct = load i32, ptr %i.cs, align 4
  %i.cu = and i32 %i.ct, 127
  %i.cv = icmp eq i32 %i.cu, 44
  br i1 %i.cv, label %.critedge, label %bb.k

bb.k:                                             ; preds = %_ZN5clang13ASTDeclReader17VisitRedeclarableINS_7VarDeclEEEN12_GLOBAL__N_118RedeclarableResultEPNS_12RedeclarableIT_EE.exit
  %i.cw = load i16, ptr %i.cr, align 8
  %i.cx = trunc i64 %i.cm to i16
  %i.cy = lshr i16 %i.cx, 4
  %i.cz = and i16 %i.cw, 255
  %i.da = lshr i64 %i.cm, 3
  %i.db = trunc i64 %i.da to i16
  %i.dc = and i16 %i.cy, 3840
  %i.dd = and i16 %i.db, -8192
  %i.de = or disjoint i16 %i.dc, %i.dd
  %i.df = or disjoint i16 %i.de, %i.cz
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 98 ; 2 uses
  %i.dh = lshr i64 %i.cm, 19
  %i.di = trunc i64 %i.dh to i8
  %i.dj = load i8, ptr %i.dg, align 2
  %i.dk = and i8 %i.dj, 64
  %i.dl = lshr i64 %i.cm, 16
  %i.dm = trunc i64 %i.dl to i8
  %i.dn = and i8 %i.dm, 32
  %i.do = and i32 %i.cn, 4194304
  %.not112 = icmp eq i32 %i.do, 0
  %sh.diff113 = lshr i64 %i.cm, 21
  %tr.sh.diff114 = trunc i64 %sh.diff113 to i8
  %i.dp = and i8 %tr.sh.diff114, 28
  %i.dq = and i8 %i.di, 3
  %i.dr = or disjoint i8 %i.dq, %i.dn
  %i.ds = or disjoint i8 %i.dr, %i.dp
  %i.dt = or disjoint i8 %i.ds, %i.dk
  %i.du = lshr i64 %i.cm, 14
  %i.dv = trunc i64 %i.du to i16
  %i.dw = and i16 %i.dv, 4096
  %i.dx = or disjoint i16 %i.df, %i.dw
  store i16 %i.dx, ptr %i.cr, align 8
  %i.dy = lshr i64 %i.cm, 20
  %i.dz = trunc i64 %i.dy to i8
  %i.ea = and i8 %i.dz, -128
  %i.eb = or disjoint i8 %i.dt, %i.ea
  store i8 %i.eb, ptr %i.dg, align 2
  br i1 %.not112, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ec = load ptr, ptr %1, align 8, !tbaa !167, !nonnull !155, !align !156 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 10816 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !165 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 10824 ; 3 uses
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !975 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ec, i64 10828
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !979
  %.not.i = icmp ult i32 %i.eh, %i.ej
  br i1 %.not.i, label %bb.n, label %bb.m, !prof !980

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang7VarDeclEmELb1EE15growAndPushBackES5_(ptr noundef nonnull align 8 dereferenceable(16) %i.ed, ptr nonnull %2, i64 %i.ef)
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang7VarDeclEmELb1EE9push_backES5_.exit

bb.n:                                             ; preds = %bb.l
  %i.ek = zext i32 %i.eh to i64
  %i.el = load ptr, ptr %i.ed, align 8, !tbaa !164
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %i.el, i64 %i.ek ; 2 uses
  store ptr %2, ptr %i.em, align 1
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store i64 %i.ef, ptr %.sroa.3.0..sroa_idx.i, align 1
  %i.en = load i32, ptr %i.eg, align 8, !tbaa !975
  %i.eo = add i32 %i.en, 1
  store i32 %i.eo, ptr %i.eg, align 8, !tbaa !975
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang7VarDeclEmELb1EE9push_backES5_.exit

.critedge:                                        ; preds = %_ZN5clang13ASTDeclReader17VisitRedeclarableINS_7VarDeclEEEN12_GLOBAL__N_118RedeclarableResultEPNS_12RedeclarableIT_EE.exit, %bb.k
  %i.ep = load ptr, ptr %1, align 8, !tbaa !167, !nonnull !155, !align !156
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !998
  %i.es = tail call i64 @_ZN5clang9ASTReader7GetTypeEm(ptr noundef nonnull align 8 dereferenceable(16376) %i.ep, i64 noundef %i.er) #25
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 %i.es, ptr %i.et, align 8, !tbaa !974
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang7VarDeclEmELb1EE9push_backES5_.exit

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang7VarDeclEmELb1EE9push_backES5_.exit: ; preds = %bb.n, %bb.m, %.critedge
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 0, ptr %i.eu, align 8, !tbaa !998
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ew = load i8, ptr %i.ev, align 8
  %i.ex = and i8 %i.ew, -8
  %i.ey = or disjoint i8 %i.ex, %i.cp
  store i8 %i.ey, ptr %i.ev, align 8
  %i.ez = load i8, ptr %i.cr, align 8
  %i.fa = and i8 %i.ez, 7
  %i.fb = icmp eq i8 %i.fa, 1
  %i.fc = icmp ne i8 %i.cp, 1
  %or.cond = and i1 %i.fc, %i.fb
  br i1 %or.cond, label %bb.o, label %_ZN5clang4Decl18setLocalExternDeclEv.exit

bb.o:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang7VarDeclEmELb1EE9push_backES5_.exit
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.fd, align 8 ; 3 uses
  %i.fe = and i64 %.0.copyload.i.i.i.i.i.i.i, 4
  %i.ff = icmp eq i64 %i.fe, 0
  br i1 %i.ff, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.fg = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i to ptr
  br label %_ZN5clang4Decl21getLexicalDeclContextEv.exit

bb.q:                                             ; preds = %bb.o
  %i.fh = and i64 %.0.copyload.i.i.i.i.i.i.i, -5
  %i.fi = inttoptr i64 %i.fh to ptr
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !1434
  br label %_ZN5clang4Decl21getLexicalDeclContextEv.exit

_ZN5clang4Decl21getLexicalDeclContextEv.exit:     ; preds = %bb.p, %bb.q
  %.0.i = phi ptr [ %i.fg, %bb.p ], [ %i.fk, %bb.q ]
  %i.fl = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.fm = load i16, ptr %i.fl, align 8
  %i.fn = and i16 %i.fm, 127                      ; 2 uses
  switch i16 %i.fn, label %_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit [
    i16 9, label %_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit.thread
    i16 7, label %_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit.thread
    i16 20, label %_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit.thread
    i16 1, label %_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit.thread
  ]

_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit: ; preds = %_ZN5clang4Decl21getLexicalDeclContextEv.exit
  %i.fo = add nsw i16 %i.fn, -35
  %spec.select.i15 = icmp ult i16 %i.fo, 6
  br i1 %spec.select.i15, label %_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit.thread, label %_ZN5clang4Decl18setLocalExternDeclEv.exit

_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit.thread: ; preds = %_ZN5clang4Decl21getLexicalDeclContextEv.exit, %_ZN5clang4Decl21getLexicalDeclContextEv.exit, %_ZN5clang4Decl21getLexicalDeclContextEv.exit, %_ZN5clang4Decl21getLexicalDeclContextEv.exit, %_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit
  %i.fp = load ptr, ptr %2, align 8, !tbaa !987
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 48
  %i.fr = load ptr, ptr %i.fq, align 8
  %i.fs = tail call noundef ptr %i.fr(ptr noundef nonnull align 8 dereferenceable(33) %2) #25, !inline_history !2573 ; 2 uses
  %i.ft = load i32, ptr %i.cs, align 4            ; 2 uses
  %i.fu = and i32 %i.ft, -136314881
  %i.fv = or disjoint i32 %i.fu, 134217728
  store i32 %i.fv, ptr %i.cs, align 4
  %.not.i16 = icmp eq ptr %i.fs, null
  br i1 %.not.i16, label %_ZN5clang4Decl18setLocalExternDeclEv.exit, label %bb.r

bb.r:                                             ; preds = %_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit.thread
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fs, i64 28
  %i.fx = load i32, ptr %i.fw, align 4
  %i.fy = and i32 %i.fx, 2097152
  %.not3.i = icmp eq i32 %i.fy, 0
  br i1 %.not3.i, label %_ZN5clang4Decl18setLocalExternDeclEv.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fz = or i32 %i.ft, 136314880
  store i32 %i.fz, ptr %i.cs, align 4
  br label %_ZN5clang4Decl18setLocalExternDeclEv.exit

_ZN5clang4Decl18setLocalExternDeclEv.exit:        ; preds = %bb.s, %bb.r, %_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit.thread, %_ZNK5clang11DeclContext18isFunctionOrMethodEv.exit, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang7VarDeclEmELb1EE9push_backES5_.exit
  br i1 %.not96, label %bb.w, label %bb.t

bb.t:                                             ; preds = %_ZN5clang4Decl18setLocalExternDeclEv.exit
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !66
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 4
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !166
  %i.ge = icmp eq i32 %i.gd, 4
  %.pre = load ptr, ptr %1, align 8, !tbaa !167   ; 2 uses
  br i1 %i.ge, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gf = getelementptr inbounds nuw i8, ptr %.pre, i64 152
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !588
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 2600
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !970, !nonnull !155, !align !156
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.gk = load i64, ptr %i.gj, align 8
  %i.gl = lshr i64 %i.gk, 46
  %i.gm = trunc i64 %i.gl to i8
  %i.gn = and i8 %i.gm, 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.go = phi i8 [ 1, %bb.t ], [ %i.gn, %bb.u ]
  %i.gp = getelementptr inbounds nuw i8, ptr %.pre, i64 13328
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store ptr %2, ptr %i.a, align 8, !tbaa !971
  %i.gq = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4DeclEbNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_bEEEES5_bS7_SA_E24lookupOrInsertIntoBucketIS5_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.gp, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.gq, 0
  %i.gr = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8
  store i8 %i.go, ptr %i.gr, align 1, !tbaa !972
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZN5clang4Decl18setLocalExternDeclEv.exit
  %i.gs = load i32, ptr %i.cs, align 4
  %i.gt = and i32 %i.gs, 256
  %.not.i17 = icmp eq i32 %i.gt, 0
  br i1 %.not.i17, label %_ZNK5clang4Decl7hasAttrINS_10BlocksAttrEEEbv.exit.thread93, label %bb.x

bb.x:                                             ; preds = %bb.w
end_hunk_0
