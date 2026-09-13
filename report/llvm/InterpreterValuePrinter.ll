Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/InterpreterValuePrinter?download=true
inline.NumInlined: 1973
inline.NumDeleted: 1234
begin_hunk_0_@_ZNK5clang11Interpreter17ValueDataToStringB5cxx11ERKNS_5ValueE:bb.a
  store ptr %i.cm, ptr %i.bk, align 16, !tbaa !703
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #20
  call void @_ZNK5clang11Interpreter17ValueDataToStringB5cxx11ERKNS_5ValueE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %40, ptr noundef nonnull align 16 dereferenceable(224) %1, ptr noundef nonnull align 16 dereferenceable(37) %39)
  %i.cn = load i64, ptr %i.bm, align 8, !tbaa !708 ; 2 uses
  %i.co = load i64, ptr %i.av, align 8, !tbaa !708
  %i.cp = sub i64 4611686018427387903, %i.co
  %i.cq = icmp ult i64 %i.cp, %i.cn
  br i1 %i.cq, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit

bb.m:                                             ; preds = %bb.l
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #21
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %bb.l
  %i.cr = load ptr, ptr %40, align 8, !tbaa !714
  %i.cs = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.cr, i64 noundef %i.cn) #20 ; 0 uses
  %i.ct = load ptr, ptr %40, align 8, !tbaa !714  ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.bn
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.cv = load i64, ptr %i.bn, align 8, !tbaa !703
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cw) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #20
  %i.cx = icmp samesign ult i64 %indvars.iv, %i.bp
  br i1 %i.cx, label %bb.n, label %bb.p

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cy = load i64, ptr %i.av, align 8, !tbaa !708
  %i.cz = and i64 %i.cy, -2
  %i.da = icmp eq i64 %i.cz, 4611686018427387902
  br i1 %i.da, label %bb.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit81

bb.o:                                             ; preds = %bb.n
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #21
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit81: ; preds = %bb.n
  %i.db = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.1, i64 noundef 2) #20 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit81, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZN5clang5ValueD2Ev(ptr noundef nonnull align 16 dead_on_return(37) dereferenceable(37) %39) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.i, !llvm.loop !1211

.critedge76:                                      ; preds = %bb.b, %bb.a
  %i.dc = tail call i64 @_ZN5clang8QualType16getDesugaredTypeES0_RKNS_10ASTContextE(i64 %i.l, ptr noundef nonnull align 8 dereferenceable(23904) %i.k) #20 ; 3 uses
  %i.dd = and i64 %i.dc, -16
  %i.de = inttoptr i64 %i.dd to ptr               ; 2 uses
  %i.df = load ptr, ptr %i.de, align 16, !tbaa !706 ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dh = load i8, ptr %i.dg, align 16
  %i.di = and i8 %i.dh, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i = icmp eq i8 %i.di, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i, label %bb.q

bb.q:                                             ; preds = %.critedge76
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i83 = load i64, ptr %i.dj, align 8, !tbaa !703
  %i.dk = and i64 %.sroa.0.0.copyload.i.i.i.i.i83, -16
  %i.dl = inttoptr i64 %i.dk to ptr
  %i.dm = load ptr, ptr %i.dl, align 16, !tbaa !706
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = load i8, ptr %i.dn, align 16
  %i.dp = and i8 %i.do, -2
  %spec.select.i.i.i.i.i.i.i.i5.i.i = icmp eq i8 %i.dp, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i5.i.i, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i, label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i: ; preds = %bb.q
  %i.dq = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.df) #20 ; 2 uses
  %.not.i84 = icmp eq ptr %i.dq, null
  br i1 %.not.i84, label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i: ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i, %.critedge76
  %.1.i8.i = phi ptr [ %i.dq, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i ], [ %i.df, %.critedge76 ] ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.1.i8.i, i64 16
  %i.ds = load i24, ptr %i.dr, align 16
  %i.dt = and i24 %i.ds, 1048576
  %.not4.i.i = icmp eq i24 %i.dt, 0
  br i1 %.not4.i.i, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i
  %.05.i.i = phi ptr [ %.1.i.i.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i ], [ %.1.i8.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i ]
  %i.du = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.du, align 8
  %i.dv = and i64 %.0.copyload.i.i.i.i.i.i.i, -16
  %i.dw = inttoptr i64 %i.dv to ptr
  %i.dx = load ptr, ptr %i.dw, align 16, !tbaa !706 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load i8, ptr %i.dy, align 16
  %i.ea = and i8 %i.dz, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i.i = icmp eq i8 %i.ea, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i.i, label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i
  %i.eb = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.dx) #20
  br label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i

_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i: ; preds = %bb.r, %.lr.ph.i.i
  %.1.i.i.i = phi ptr [ %i.eb, %bb.r ], [ %i.dx, %.lr.ph.i.i ] ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 16
  %i.ed = load i24, ptr %i.ec, align 16
  %i.ee = and i24 %i.ed, 1048576
  %.not.i.i = icmp eq i24 %i.ee, 0
  br i1 %.not.i.i, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i, label %.lr.ph.i.i, !llvm.loop !0

_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i: ; preds = %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i
  %.0.lcssa.i.i = phi ptr [ %.1.i8.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i ], [ %.1.i.i.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i ]
  %i.ef = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 32
  %.sroa.0.0.in.i.sroa.speculate.load._ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i = load i64, ptr %i.ef, align 8, !tbaa !703
  br label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit

_ZNK5clang8QualType19getNonReferenceTypeEv.exit:  ; preds = %bb.q, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i
  %.sroa.0.0.in.i.sroa.speculated = phi i64 [ %.sroa.0.0.in.i.sroa.speculate.load._ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i ], [ %i.dc, %bb.q ], [ %i.dc, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i ]
  %i.eg = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !703
  %i.ei = and i64 %i.eh, -16
  %i.ej = inttoptr i64 %i.ei to ptr
  %i.ek = load ptr, ptr %i.ej, align 16, !tbaa !706
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %.sroa.0.0.copyload.i.i.i.i86 = load i64, ptr %i.el, align 8, !tbaa !703
  %i.em = and i64 %.sroa.0.0.copyload.i.i.i.i86, -16
  %i.en = inttoptr i64 %i.em to ptr
  %i.eo = load ptr, ptr %i.en, align 16, !tbaa !706 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16 ; 2 uses
  %i.eq = load i8, ptr %i.ep, align 16
  %i.er = icmp ne i8 %i.eq, 13
  %.not72239 = icmp eq ptr %i.eo, null
  %.not72 = or i1 %.not72239, %i.er
  br i1 %.not72, label %.critedge78, label %bb.s

bb.s:                                             ; preds = %_ZNK5clang8QualType19getNonReferenceTypeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #20
  %i.es = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 69 uses
  store ptr %i.es, ptr %41, align 8, !tbaa !707
  %i.et = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 40 uses
  store i64 0, ptr %i.et, align 8, !tbaa !708
  store i8 0, ptr %i.es, align 8, !tbaa !703
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #20
  %i.eu = getelementptr inbounds nuw i8, ptr %42, i64 8
  store i32 0, ptr %i.eu, align 8, !tbaa !719
  %i.ev = getelementptr inbounds nuw i8, ptr %42, i64 40
  store i8 0, ptr %i.ev, align 8, !tbaa !720
  %i.ew = getelementptr inbounds nuw i8, ptr %42, i64 44
  store i32 1, ptr %i.ew, align 4, !tbaa !721
  %i.ex = getelementptr inbounds nuw i8, ptr %42, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ex, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %42, align 8, !tbaa !723
  %i.ey = getelementptr inbounds nuw i8, ptr %42, i64 48
  store ptr %41, ptr %i.ey, align 8, !tbaa !725
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %42, ptr noundef null, i64 noundef 0, i32 noundef 0) #20
  %i.ez = load i32, ptr %i.ep, align 16
  %i.fa = lshr i32 %i.ez, 19
  %i.fb = and i32 %i.fa, 1023                     ; 8 uses
  switch i32 %i.fb, label %bb.t [
    i32 453, label %bb.aa
    i32 465, label %bb.ae
    i32 466, label %bb.am
    i32 454, label %bb.au
    i32 455, label %bb.bc
    i32 468, label %bb.bk
    i32 460, label %bb.bm
    i32 469, label %bb.bo
    i32 461, label %bb.bq
    i32 470, label %bb.bs
    i32 462, label %bb.bu
    i32 471, label %bb.bw
    i32 463, label %bb.by
    i32 498, label %bb.ca
    i32 499, label %bb.cp
    i32 500, label %bb.df
  ]

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !1260)
  %i.fc = icmp samesign ult i32 %i.fb, 10
  br i1 %i.fc, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i88

.lr.ph.i.i88:                                     ; preds = %bb.t
  %i.fd = icmp samesign ult i32 %i.fb, 100
  br i1 %i.fd, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i88
  %i.fe = icmp samesign ult i32 %i.fb, 1000
  %. = select i1 %i.fe, i32 3, i32 4
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %bb.u, %.lr.ph.i.i88, %bb.t
  %.022.i.i = phi i32 [ 2, %.lr.ph.i.i88 ], [ 1, %bb.t ], [ %., %bb.u ] ; 2 uses
  %i.ff = zext nneg i32 %.022.i.i to i64          ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 3 uses
  store ptr %i.fg, ptr %44, align 8, !tbaa !707, !alias.scope !1260
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %44, i64 noundef %i.ff, i8 noundef signext 45) #20
  %i.fh = load ptr, ptr %44, align 8, !tbaa !714, !alias.scope !1260 ; 4 uses
  %i.fi = icmp samesign ugt i32 %i.fb, 99
  br i1 %i.fi, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i89

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %.lhs.trunc = trunc nuw nsw i32 %i.fb to i16
  %i.fj = urem i16 %.lhs.trunc, 100
  %i.fk = shl nuw nsw i16 %i.fj, 1
  %.lhs.trunc337 = trunc nuw nsw i32 %i.fb to i16
  %i.fl = udiv i16 %.lhs.trunc337, 100
  %.zext338 = zext nneg i16 %i.fl to i32
  %i.fm = zext nneg i16 %i.fk to i64
  %i.fn = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.fm ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 1
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !703, !noalias !1260
  %i.fq = getelementptr i8, ptr %i.fh, i64 %i.ff
  %i.fr = getelementptr i8, ptr %i.fq, i64 -1
  store i8 %i.fp, ptr %i.fr, align 1, !tbaa !703
  %i.fs = load i8, ptr %i.fn, align 2, !tbaa !703, !noalias !1260
  %i.ft = add nsw i32 %.022.i.i, -2
  %i.fu = zext i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.fu
  store i8 %i.fs, ptr %i.fv, align 1, !tbaa !703
  br label %._crit_edge.i.i89, !llvm.loop !1214

._crit_edge.i.i89:                                ; preds = %.lr.ph.preheader.i.i, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %.0.lcssa.i.i90 = phi i32 [ %i.fb, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i ], [ %.zext338, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.fw = icmp samesign ugt i32 %.0.lcssa.i.i90, 9
  br i1 %i.fw, label %bb.v, label %bb.w

bb.v:                                             ; preds = %._crit_edge.i.i89
  %i.fx = shl nuw nsw i32 %.0.lcssa.i.i90, 1
  %i.fy = zext nneg i32 %i.fx to i64
  %i.fz = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.fy ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 1
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !703, !noalias !1260
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fh, i64 1
  store i8 %i.gb, ptr %i.gc, align 1, !tbaa !703
  %i.gd = load i8, ptr %i.fz, align 2, !tbaa !703, !noalias !1260
  br label %_ZNSt7__cxx119to_stringEi.exit

bb.w:                                             ; preds = %._crit_edge.i.i89
  %i.ge = trunc nuw nsw i32 %.0.lcssa.i.i90 to i8
  %i.gf = or disjoint i8 %i.ge, 48
  br label %_ZNSt7__cxx119to_stringEi.exit

_ZNSt7__cxx119to_stringEi.exit:                   ; preds = %bb.v, %bb.w
  %storemerge.i.i = phi i8 [ %i.gf, %bb.w ], [ %i.gd, %bb.v ]
  store i8 %storemerge.i.i, ptr %i.fh, align 1, !tbaa !703
  call void @llvm.experimental.noalias.scope.decl(metadata !1261)
  %i.gg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %44, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.3, i64 noundef 31) #20, !noalias !1261 ; 6 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 5 uses
  store ptr %i.gh, ptr %43, align 8, !tbaa !707, !alias.scope !1261
  %i.gi = load ptr, ptr %i.gg, align 8, !tbaa !714 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 16 ; 5 uses
  %i.gk = icmp eq ptr %i.gi, %i.gj
  br i1 %i.gk, label %bb.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

bb.x:                                             ; preds = %_ZNSt7__cxx119to_stringEi.exit
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !708 ; 3 uses
  %i.gn = icmp ult i64 %i.gm, 16
  call void @llvm.assume(i1 %i.gn)
  %i.go = add nuw nsw i64 %i.gm, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gh, ptr noundef nonnull align 8 dereferenceable(1) %i.gj, i64 %i.go, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %_ZNSt7__cxx119to_stringEi.exit
  store ptr %i.gi, ptr %43, align 8, !tbaa !714, !alias.scope !1261
  %i.gp = load i64, ptr %i.gj, align 8, !tbaa !703
  store i64 %i.gp, ptr %i.gh, align 8, !tbaa !703, !alias.scope !1261
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !708
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91
  %i.gq = phi i64 [ %i.gm, %bb.x ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ] ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gs = getelementptr inbounds nuw i8, ptr %43, i64 8
  store i64 %i.gq, ptr %i.gs, align 8, !tbaa !708, !alias.scope !1261
  store ptr %i.gj, ptr %i.gg, align 8, !tbaa !714
  store i64 0, ptr %i.gr, align 8, !tbaa !708
  store i8 0, ptr %i.gj, align 8, !tbaa !703
  call void @llvm.experimental.noalias.scope.decl(metadata !1262)
  %i.gt = add i64 %i.gq, -4611686018427387901
  %i.gu = icmp ult i64 %i.gt, 3
  br i1 %i.gu, label %bb.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.y:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #21, !noalias !1262
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  %i.gv = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %43, ptr noundef nonnull @.str.4, i64 noundef 3) #20, !noalias !1262 ; 6 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.gw, ptr %0, align 8, !tbaa !707, !alias.scope !1262
  %i.gx = load ptr, ptr %i.gv, align 8, !tbaa !714 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gv, i64 16 ; 5 uses
  %i.gz = icmp eq ptr %i.gx, %i.gy
  br i1 %i.gz, label %bb.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !708 ; 3 uses
  %i.hc = icmp ult i64 %i.hb, 16
  call void @llvm.assume(i1 %i.hc)
  %i.hd = add nuw nsw i64 %i.hb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gw, ptr noundef nonnull align 8 dereferenceable(1) %i.gy, i64 %i.hd, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.gx, ptr %0, align 8, !tbaa !714, !alias.scope !1262
  %i.he = load i64, ptr %i.gy, align 8, !tbaa !703
  store i64 %i.he, ptr %i.gw, align 8, !tbaa !703, !alias.scope !1262
  %.phi.trans.insert.i93 = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %.pre.i94 = load i64, ptr %.phi.trans.insert.i93, align 8, !tbaa !708
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92
  %i.hf = phi i64 [ %i.hb, %bb.z ], [ %.pre.i94, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92 ]
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.hf, ptr %i.hh, align 8, !tbaa !708, !alias.scope !1262
  store ptr %i.gy, ptr %i.gv, align 8, !tbaa !714
  store i64 0, ptr %i.hg, align 8, !tbaa !708
  store i8 0, ptr %i.gy, align 8, !tbaa !703
  %i.hi = load ptr, ptr %43, align 8, !tbaa !714  ; 2 uses
  %i.hj = icmp eq ptr %i.hi, %i.gh
  br i1 %i.hj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  %i.hk = load i64, ptr %i.gh, align 8, !tbaa !703
  %i.hl = add i64 %i.hk, 1
  call void @_ZdlPvm(ptr noundef %i.hi, i64 noundef %i.hl) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95
  %i.hm = load ptr, ptr %44, align 8, !tbaa !714  ; 2 uses
  %i.hn = icmp eq ptr %i.hm, %i.fg
  br i1 %i.hn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97
  %i.ho = load i64, ptr %i.fg, align 8, !tbaa !703
  %i.hp = add i64 %i.ho, 1
  call void @_ZdlPvm(ptr noundef %i.hm, i64 noundef %i.hp) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #20
  br label %bb.dx

bb.aa:                                            ; preds = %bb.s
  %i.hq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.hr = load i8, ptr %i.hq, align 16, !tbaa !703, !range !726, !noundef !701
  %i.hs = trunc nuw i8 %i.hr to i1                ; 2 uses
  %i.ht = select i1 %i.hs, ptr @.str.5, ptr @.str.6 ; 2 uses
  %i.hu = select i1 %i.hs, i64 4, i64 5           ; 4 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %42, i64 24
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !727
  %i.hx = getelementptr inbounds nuw i8, ptr %42, i64 32 ; 3 uses
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !728 ; 2 uses
  %i.hz = ptrtoint ptr %i.hw to i64
  %i.ia = ptrtoint ptr %i.hy to i64
  %i.ib = sub i64 %i.hz, %i.ia
  %i.ic = icmp ugt i64 %i.hu, %i.ib
  br i1 %i.ic, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.id = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %42, ptr noundef nonnull %i.ht, i64 noundef %i.hu) #20 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.hy, ptr noundef nonnull align 1 dereferenceable(4) %i.ht, i64 %i.hu, i1 false)
  %i.ie = load ptr, ptr %i.hx, align 8, !tbaa !728
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 %i.hu
  store ptr %i.if, ptr %i.hx, align 8, !tbaa !728
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.ab, %bb.ac
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ig, ptr %0, align 8, !tbaa !707
  %i.ih = load ptr, ptr %41, align 8, !tbaa !714  ; 2 uses
  %i.ii = icmp eq ptr %i.ih, %i.es
  br i1 %i.ii, label %bb.ad, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.ad:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.ij = load i64, ptr %i.et, align 8, !tbaa !708 ; 3 uses
  %i.ik = icmp ult i64 %i.ij, 16
  call void @llvm.assume(i1 %i.ik)
  %i.il = add nuw nsw i64 %i.ij, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ig, ptr noundef nonnull align 8 dereferenceable(1) %i.es, i64 %i.il, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  store ptr %i.ih, ptr %0, align 8, !tbaa !714
  %i.im = load i64, ptr %i.es, align 8, !tbaa !703
  store i64 %i.im, ptr %i.ig, align 8, !tbaa !703
  %.pre257 = load i64, ptr %i.et, align 8, !tbaa !708
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.in = phi i64 [ %i.ij, %bb.ad ], [ %.pre257, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.in, ptr %i.io, align 8, !tbaa !708
  store ptr %i.es, ptr %41, align 8, !tbaa !714
  store i64 0, ptr %i.et, align 8, !tbaa !708
  store i8 0, ptr %i.es, align 8, !tbaa !703
  br label %bb.dx

bb.ae:                                            ; preds = %bb.s
  %i.ip = getelementptr inbounds nuw i8, ptr %42, i64 32 ; 2 uses
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !728 ; 3 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %42, i64 24
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !727
  %.not.i102 = icmp ult ptr %i.iq, %i.is
end_hunk_0
