Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/metadata?download=true
inline.NumInlined: 1534
inline.NumDeleted: 728
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN5osgeo4proj8metadata10Identifier16canonicalizeNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a

"_ZZN5osgeo4proj8metadata10Identifier16canonicalizeNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbENK3$_1clEcPKcRmSD_RS8_.exit": ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %.noexc
  %i.dm = phi ptr [ %.pre.i.i, %.noexc ], [ %i.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.de
  store i8 110, ptr %i.dn, align 1, !tbaa !38
  store i64 %i.df, ptr %i.b, align 8, !tbaa !41
  %i.do = load ptr, ptr %0, align 8, !tbaa !37
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.df
  store i8 0, ptr %i.dp, align 1, !tbaa !38
  %i.dq = add i64 %storemerge168, 4
  br label %.thread145

bb.ab:                                            ; preds = %bb.k
  %.not.i76 = icmp eq i64 %storemerge168, 0
  br i1 %.not.i76, label %.thread150, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dr = getelementptr i8, ptr %i.c, i64 %storemerge168 ; 5 uses
  %i.ds = getelementptr i8, ptr %i.dr, i64 -1
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !38  ; 2 uses
  switch i8 %i.dt, label %_ZN5osgeo4proj8metadataL13isIgnoredCharEc.exit.i96 [
    i8 95, label %.lr.ph.i.i79.preheader
    i8 47, label %.lr.ph.i.i79.preheader
    i8 46, label %.lr.ph.i.i79.preheader
    i8 45, label %.lr.ph.i.i79.preheader
    i8 41, label %.lr.ph.i.i79.preheader
    i8 40, label %.lr.ph.i.i79.preheader
    i8 38, label %.lr.ph.i.i79.preheader
    i8 32, label %.lr.ph.i.i79.preheader
    i8 44, label %.lr.ph.i.i79.preheader
  ]

_ZN5osgeo4proj8metadataL13isIgnoredCharEc.exit.i96: ; preds = %bb.ac
  %i.du = add i8 %i.dt, -48
  %i.dv = icmp ult i8 %i.du, 10
  br i1 %i.dv, label %.lr.ph.i.i79.preheader, label %.thread150

.lr.ph.i.i79.preheader:                           ; preds = %_ZN5osgeo4proj8metadataL13isIgnoredCharEc.exit.i96, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 1
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !38  ; 4 uses
  %.not.i.i85 = icmp eq i8 %i.dx, 0
  br i1 %.not.i.i85, label %.thread150, label %.lr.ph.i.i79.1

.lr.ph.i.i79.1:                                   ; preds = %.lr.ph.i.i79.preheader
  %i.dy = add i8 %i.dx, -65
  %or.cond.i.i.i82.1 = icmp ult i8 %i.dy, 26
  %i.dz = add nuw nsw i8 %i.dx, 32
  %i.ea = select i1 %or.cond.i.i.i82.1, i8 %i.dz, i8 %i.dx
  %.not14.i.i84.1 = icmp eq i8 %i.ea, 111
  br i1 %.not14.i.i84.1, label %bb.ad, label %.thread150

bb.ad:                                            ; preds = %.lr.ph.i.i79.1
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dr, i64 2
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !38  ; 4 uses
  %.not.i.i85.1 = icmp eq i8 %i.ec, 0
  br i1 %.not.i.i85.1, label %.thread150, label %.lr.ph.i.i79.2

.lr.ph.i.i79.2:                                   ; preds = %bb.ad
  %i.ed = add i8 %i.ec, -65
  %or.cond.i.i.i82.2 = icmp ult i8 %i.ed, 26
  %i.ee = add nuw nsw i8 %i.ec, 32
  %i.ef = select i1 %or.cond.i.i.i82.2, i8 %i.ee, i8 %i.ec
  %.not14.i.i84.2 = icmp eq i8 %i.ef, 117
  br i1 %.not14.i.i84.2, label %bb.ae, label %.thread150

bb.ae:                                            ; preds = %.lr.ph.i.i79.2
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dr, i64 3
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !38  ; 4 uses
  %.not.i.i85.2 = icmp eq i8 %i.eh, 0
  br i1 %.not.i.i85.2, label %.thread150, label %.lr.ph.i.i79.3

.lr.ph.i.i79.3:                                   ; preds = %bb.ae
  %i.ei = add i8 %i.eh, -65
  %or.cond.i.i.i82.3 = icmp ult i8 %i.ei, 26
  %i.ej = add nuw nsw i8 %i.eh, 32
  %i.ek = select i1 %or.cond.i.i.i82.3, i8 %i.ej, i8 %i.eh
  %.not14.i.i84.3 = icmp eq i8 %i.ek, 116
  br i1 %.not14.i.i84.3, label %bb.af, label %.thread150

bb.af:                                            ; preds = %.lr.ph.i.i79.3
  %i.el = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  %i.em = load i8, ptr %i.el, align 1, !tbaa !38  ; 4 uses
  %.not.i.i85.3 = icmp eq i8 %i.em, 0
  br i1 %.not.i.i85.3, label %.thread150, label %.lr.ph.i.i79.4

.lr.ph.i.i79.4:                                   ; preds = %bb.af
  %i.en = add i8 %i.em, -65
  %or.cond.i.i.i82.4 = icmp ult i8 %i.en, 26
  %i.eo = add nuw nsw i8 %i.em, 32
  %i.ep = select i1 %or.cond.i.i.i82.4, i8 %i.eo, i8 %i.em
  %.not14.i.i84.4 = icmp eq i8 %i.ep, 104
  br i1 %.not14.i.i84.4, label %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread9.i90, label %.thread150

_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread9.i90: ; preds = %.lr.ph.i.i79.4
  %i.eq = load i64, ptr %i.b, align 8, !tbaa !41  ; 4 uses
  %i.er = add i64 %i.eq, 1                        ; 3 uses
  %i.es = load ptr, ptr %0, align 8, !tbaa !37    ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.a
  br i1 %i.et, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i95, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i95: ; preds = %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread9.i90
  %i.eu = icmp ult i64 %i.eq, 16
  tail call void @llvm.assume(i1 %i.eu)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i91: ; preds = %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread9.i90
  %i.ev = load i64, ptr %i.a, align 8, !tbaa !38
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i92: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i91, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i95
  %i.ew = phi i64 [ %i.ev, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i91 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i95 ]
  %i.ex = icmp ugt i64 %i.er, %i.ew
  br i1 %i.ex, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i92
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.eq, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc97 unwind label %bb.ai

.noexc97:                                         ; preds = %bb.ag
  %.pre.i.i94 = load ptr, ptr %0, align 8, !tbaa !37
  br label %bb.ah

bb.ah:                                            ; preds = %.noexc97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i92
  %i.ey = phi ptr [ %.pre.i.i94, %.noexc97 ], [ %i.es, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i92 ]
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.eq
  store i8 115, ptr %i.ez, align 1, !tbaa !38
  store i64 %i.er, ptr %i.b, align 8, !tbaa !41
  %i.fa = load ptr, ptr %0, align 8, !tbaa !37
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.er
  store i8 0, ptr %i.fb, align 1, !tbaa !38
  %i.fc = add i64 %storemerge168, 4
  br label %.thread145

bb.ai:                                            ; preds = %bb.ag, %bb.aa
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

.loopexit:                                        ; preds = %bb.k, %bb.j
  %i.fe = icmp slt i8 %i.i, 0
  br i1 %i.fe, label %bb.aj, label %.thread150

bb.aj:                                            ; preds = %.loopexit
  %i.ff = getelementptr inbounds nuw i8, ptr %i.c, i64 %storemerge168
  %i.fg = tail call fastcc noundef ptr @_ZN5osgeo4proj8metadataL21get_ascii_replacementEPKc(ptr noundef nonnull %i.ff) ; 3 uses
  %.not40 = icmp eq ptr %i.fg, null
  br i1 %.not40, label %.thread150, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fi = load i8, ptr %i.fh, align 8, !tbaa !153
  %i.fj = load i64, ptr %i.b, align 8, !tbaa !41  ; 4 uses
  %i.fk = add i64 %i.fj, 1                        ; 3 uses
  %i.fl = load ptr, ptr %0, align 8, !tbaa !37    ; 2 uses
  %i.fm = icmp eq ptr %i.fl, %i.a
  br i1 %i.fm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.ak
  %i.fn = icmp ult i64 %i.fj, 16
  tail call void @llvm.assume(i1 %i.fn)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ak
  %i.fo = load i64, ptr %i.a, align 8, !tbaa !38
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.fp = phi i64 [ %i.fo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  %i.fq = icmp ugt i64 %i.fk, %i.fp
  br i1 %i.fq, label %bb.al, label %bb.an

bb.al:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.fj, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc99 unwind label %bb.am

.noexc99:                                         ; preds = %bb.al
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !37
  br label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.an:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %.noexc99
  %i.fs = phi ptr [ %.pre.i, %.noexc99 ], [ %i.fl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.fj
  store i8 %i.fi, ptr %i.ft, align 1, !tbaa !38
  store i64 %i.fk, ptr %i.b, align 8, !tbaa !41
  %i.fu = load ptr, ptr %0, align 8, !tbaa !37
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fk
  store i8 0, ptr %i.fv, align 1, !tbaa !38
  %i.fw = load ptr, ptr %i.fg, align 8, !tbaa !154
  %i.fx = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fw) #39
  %i.fy = add i64 %storemerge168, -1
  %i.fz = add i64 %i.fy, %i.fx
  br label %.thread145

.thread150:                                       ; preds = %bb.af, %bb.ae, %bb.ad, %.lr.ph.i.i79.preheader, %bb.z, %bb.y, %bb.x, %.lr.ph.i.i63.preheader, %bb.u, %bb.t, %bb.s, %bb.r, %.lr.ph.i.i46.preheader, %bb.o, %bb.n, %.lr.ph.i.i, %.lr.ph.i.i.1, %.lr.ph.i.i.2, %.lr.ph.i.i.3, %.lr.ph.i.i46.1, %.lr.ph.i.i46.2, %.lr.ph.i.i46.3, %.lr.ph.i.i46.4, %.lr.ph.i.i46.5, %.lr.ph.i.i63.1, %.lr.ph.i.i63.2, %.lr.ph.i.i63.3, %.lr.ph.i.i63.4, %.lr.ph.i.i79.4, %.lr.ph.i.i79.3, %.lr.ph.i.i79.2, %.lr.ph.i.i79.1, %bb.m, %bb.l, %bb.q, %bb.p, %bb.aj, %bb.v, %_ZN5osgeo4proj8metadataL13isIgnoredCharEc.exit.i, %_ZN5osgeo4proj8metadataL13isIgnoredCharEc.exit.i96, %bb.ab, %.loopexit
  %i.ga = getelementptr inbounds nuw i8, ptr %i.c, i64 %storemerge168 ; 10 uses
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !38  ; 4 uses
  %.not17.i = icmp eq i8 %i.gb, 0
  br i1 %.not17.i, label %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.thread150
  %3 = add i8 %i.gb, -65
  %or.cond.i.i = icmp ult i8 %3, 26
  %4 = add nuw nsw i8 %i.gb, 32
  %5 = select i1 %or.cond.i.i, i8 %4, i8 %i.gb
  %.not14.i = icmp eq i8 %5, 95
  br i1 %.not14.i, label %bb.ao, label %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread

bb.ao:                                            ; preds = %.lr.ph.i.preheader
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 1
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !38  ; 4 uses
  %.not.i100 = icmp eq i8 %i.gd, 0
  br i1 %.not.i100, label %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.ao
  %i.ge = add i8 %i.gd, -65
  %or.cond.i.i.1 = icmp ult i8 %i.ge, 26
  %i.gf = add nuw nsw i8 %i.gd, 32
  %i.gg = select i1 %or.cond.i.i.1, i8 %i.gf, i8 %i.gd
  %.not14.i.1 = icmp eq i8 %i.gg, 105
  br i1 %.not14.i.1, label %bb.ap, label %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread

bb.ap:                                            ; preds = %.lr.ph.i.1
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ga, i64 2
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !38  ; 4 uses
  %.not.i100.1 = icmp eq i8 %i.gi, 0
  br i1 %.not.i100.1, label %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.ap
  %i.gj = add i8 %i.gi, -65
  %or.cond.i.i.2 = icmp ult i8 %i.gj, 26
  %i.gk = add nuw nsw i8 %i.gi, 32
  %i.gl = select i1 %or.cond.i.i.2, i8 %i.gk, i8 %i.gi
  %.not14.i.2 = icmp eq i8 %i.gl, 110
  br i1 %.not14.i.2, label %bb.aq, label %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread

bb.aq:                                            ; preds = %.lr.ph.i.2
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ga, i64 3
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !38  ; 4 uses
  %.not.i100.2 = icmp eq i8 %i.gn, 0
  br i1 %.not.i100.2, label %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.aq
  %i.go = add i8 %i.gn, -65
  %or.cond.i.i.3 = icmp ult i8 %i.go, 26
  %i.gp = add nuw nsw i8 %i.gn, 32
  %i.gq = select i1 %or.cond.i.i.3, i8 %i.gp, i8 %i.gn
  %.not14.i.3 = icmp eq i8 %i.gq, 116
  br i1 %.not14.i.3, label %bb.ar, label %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread

bb.ar:                                            ; preds = %.lr.ph.i.3
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !38  ; 4 uses
  %.not.i100.3 = icmp eq i8 %i.gs, 0
  br i1 %.not.i100.3, label %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread, label %.lr.ph.i.4

.lr.ph.i.4:                                       ; preds = %bb.ar
  %i.gt = add i8 %i.gs, -65
  %or.cond.i.i.4 = icmp ult i8 %i.gt, 26
  %i.gu = add nuw nsw i8 %i.gs, 32
  %i.gv = select i1 %or.cond.i.i.4, i8 %i.gu, i8 %i.gs
  %.not14.i.4 = icmp eq i8 %i.gv, 108
  br i1 %.not14.i.4, label %bb.as, label %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread

bb.as:                                            ; preds = %.lr.ph.i.4
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ga, i64 5
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !38  ; 4 uses
  %.not.i100.4 = icmp eq i8 %i.gx, 0
  br i1 %.not.i100.4, label %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread, label %.lr.ph.i.5

.lr.ph.i.5:                                       ; preds = %bb.as
  %i.gy = add i8 %i.gx, -65
  %or.cond.i.i.5 = icmp ult i8 %i.gy, 26
  %i.gz = add nuw nsw i8 %i.gx, 32
  %i.ha = select i1 %or.cond.i.i.5, i8 %i.gz, i8 %i.gx
  %.not14.i.5 = icmp eq i8 %i.ha, 102
  br i1 %.not14.i.5, label %bb.at, label %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread

bb.at:                                            ; preds = %.lr.ph.i.5
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ga, i64 6
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !38  ; 4 uses
  %.not.i100.5 = icmp eq i8 %i.hc, 0
  br i1 %.not.i100.5, label %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread, label %.lr.ph.i.6

.lr.ph.i.6:                                       ; preds = %bb.at
  %i.hd = add i8 %i.hc, -65
  %or.cond.i.i.6 = icmp ult i8 %i.hd, 26
  %i.he = add nuw nsw i8 %i.hc, 32
  %i.hf = select i1 %or.cond.i.i.6, i8 %i.he, i8 %i.hc
  %.not14.i.6 = icmp eq i8 %i.hf, 101
  br i1 %.not14.i.6, label %bb.au, label %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread

bb.au:                                            ; preds = %.lr.ph.i.6
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ga, i64 7
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !38  ; 4 uses
  %.not.i100.6 = icmp eq i8 %i.hh, 0
  br i1 %.not.i100.6, label %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread, label %.lr.ph.i.7

.lr.ph.i.7:                                       ; preds = %bb.au
  %i.hi = add i8 %i.hh, -65
  %or.cond.i.i.7 = icmp ult i8 %i.hi, 26
  %i.hj = add nuw nsw i8 %i.hh, 32
  %i.hk = select i1 %or.cond.i.i.7, i8 %i.hj, i8 %i.hh
  %.not14.i.7 = icmp eq i8 %i.hk, 101
  br i1 %.not14.i.7, label %bb.av, label %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread

bb.av:                                            ; preds = %.lr.ph.i.7
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !38  ; 4 uses
  %.not.i100.7 = icmp eq i8 %i.hm, 0
  br i1 %.not.i100.7, label %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread, label %.lr.ph.i.8

.lr.ph.i.8:                                       ; preds = %bb.av
  %i.hn = add i8 %i.hm, -65
  %or.cond.i.i.8 = icmp ult i8 %i.hn, 26
  %i.ho = add nuw nsw i8 %i.hm, 32
  %i.hp = select i1 %or.cond.i.i.8, i8 %i.ho, i8 %i.hm
  %.not14.i.8 = icmp eq i8 %i.hp, 116
  br i1 %.not14.i.8, label %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit, label %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread

_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit: ; preds = %.lr.ph.i.8
  %i.hq = getelementptr i8, ptr %i.ga, i64 9
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !38
  %i.hs = icmp eq i8 %i.hr, 0
  br i1 %i.hs, label %bb.aw, label %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread

bb.aw:                                            ; preds = %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit
  %i.ht = load i64, ptr %i.b, align 8, !tbaa !41
  %i.hu = and i64 %i.ht, -4
  %i.hv = icmp eq i64 %i.hu, 4611686018427387900
  br i1 %i.hv, label %bb.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #38
          to label %.noexc101 unwind label %.loopexit.split-lp

.noexc101:                                        ; preds = %bb.ax
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.aw
  %i.hw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.13, i64 noundef 4)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %.loopexit.split-lp ; 0 uses

_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread: ; preds = %bb.av, %bb.ar, %bb.at, %bb.aq, %bb.ap, %bb.as, %bb.au, %bb.ao, %.thread150, %.lr.ph.i.preheader, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %.lr.ph.i.4, %.lr.ph.i.5, %.lr.ph.i.6, %.lr.ph.i.7, %.lr.ph.i.8, %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit
  switch i8 %i.i, label %_ZN5osgeo4proj8metadataL13isIgnoredCharEc.exit [
    i8 95, label %.thread145
    i8 47, label %.thread145
    i8 46, label %.thread145
    i8 45, label %.thread145
    i8 41, label %.thread145
    i8 40, label %.thread145
    i8 38, label %.thread145
    i8 32, label %.thread145
    i8 44, label %.thread145
  ]

_ZN5osgeo4proj8metadataL13isIgnoredCharEc.exit:   ; preds = %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread
  %i.hx = load i64, ptr %i.b, align 8, !tbaa !41  ; 4 uses
  %i.hy = add i64 %i.hx, 1                        ; 3 uses
  %i.hz = load ptr, ptr %0, align 8, !tbaa !37    ; 2 uses
  %i.ia = icmp eq ptr %i.hz, %i.a
  br i1 %i.ia, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i106: ; preds = %_ZN5osgeo4proj8metadataL13isIgnoredCharEc.exit
  %i.ib = icmp ult i64 %i.hx, 16
  tail call void @llvm.assume(i1 %i.ib)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103: ; preds = %_ZN5osgeo4proj8metadataL13isIgnoredCharEc.exit
  %i.ic = load i64, ptr %i.a, align 8, !tbaa !38
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i104: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i106
  %i.id = phi i64 [ %i.ic, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i106 ]
  %i.ie = icmp ugt i64 %i.hy, %i.id
  br i1 %i.ie, label %bb.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit108

bb.ay:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i104
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.hx, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc107 unwind label %.loopexit163

.noexc107:                                        ; preds = %bb.ay
  %.pre.i105 = load ptr, ptr %0, align 8, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit108

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit108: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i104, %.noexc107
  %i.if = phi ptr [ %.pre.i105, %.noexc107 ], [ %i.hz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i104 ]
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 %i.hx
  store i8 %i.i, ptr %i.ig, align 1, !tbaa !38
  store i64 %i.hy, ptr %i.b, align 8, !tbaa !41
  %i.ih = load ptr, ptr %0, align 8, !tbaa !37
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.hy
  store i8 0, ptr %i.ii, align 1, !tbaa !38
  br label %.thread145

.thread145:                                       ; preds = %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread, %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread, %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread, %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread, %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread, %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread, %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread, %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread, %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread, %bb.ah, %"_ZZN5osgeo4proj8metadata10Identifier16canonicalizeNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbENK3$_1clEcPKcRmSD_RS8_.exit", %"_ZZN5osgeo4proj8metadata10Identifier16canonicalizeNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbENK3$_0clEcPKcRmSD_.exit58", %"_ZZN5osgeo4proj8metadata10Identifier16canonicalizeNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbENK3$_0clEcPKcRmSD_.exit", %bb.i, %bb.c, %bb.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit108
  %.5.ph = phi i64 [ %i.aj, %bb.i ], [ %i.m, %bb.c ], [ %i.fz, %bb.an ], [ %storemerge168, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit108 ], [ %i.bb, %"_ZZN5osgeo4proj8metadata10Identifier16canonicalizeNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbENK3$_0clEcPKcRmSD_.exit" ], [ %i.fc, %bb.ah ], [ %i.dq, %"_ZZN5osgeo4proj8metadata10Identifier16canonicalizeNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbENK3$_1clEcPKcRmSD_RS8_.exit" ], [ %i.ce, %"_ZZN5osgeo4proj8metadata10Identifier16canonicalizeNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbENK3$_0clEcPKcRmSD_.exit58" ], [ %storemerge168, %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread ], [ %storemerge168, %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread ], [ %storemerge168, %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread ], [ %storemerge168, %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread ], [ %storemerge168, %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread ], [ %storemerge168, %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread ], [ %storemerge168, %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread ], [ %storemerge168, %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread ], [ %storemerge168, %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread ]
  %i.ij = add i64 %.5.ph, 1                       ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ij ; 2 uses
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !38  ; 2 uses
  %.not = icmp eq i8 %i.il, 0
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, label %.lr.ph, !llvm.loop !279

bb.az:                                            ; preds = %.loopexit163, %.loopexit.split-lp, %bb.ai, %bb.am
  %.pn41 = phi { ptr, i32 } [ %i.fd, %bb.ai ], [ %i.fr, %bb.am ], [ %lpad.loopexit, %.loopexit163 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.im = load ptr, ptr %0, align 8, !tbaa !37    ; 2 uses
  %i.in = icmp eq ptr %i.im, %i.a
  br i1 %i.in, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109: ; preds = %bb.az
  %i.io = load i64, ptr %i.a, align 8, !tbaa !38
  %i.ip = add i64 %i.io, 1
  tail call void @_ZdlPvm(ptr noundef %i.im, i64 noundef %i.ip) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109
  resume { ptr, i32 } %.pn41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %.thread145, %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef ptr @_ZN5osgeo4proj8metadataL21get_ascii_replacementEPKc(ptr nofree noundef readonly captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !38
  switch i8 %i.a, label %.thread33 [
    i8 -61, label %bb.b
    i8 -60, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.16, i64 noundef 2) #39
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.17, i64 noundef 2) #39
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.l, label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.f = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.18, i64 noundef 2) #39
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.l, label %.thread33

bb.e:                                             ; preds = %bb.c
  %i.h = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.19, i64 noundef 2) #39
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.20, i64 noundef 2) #39
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.21, i64 noundef 2) #39
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.22, i64 noundef 2) #39
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.23, i64 noundef 2) #39
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.24, i64 noundef 2) #39
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.25, i64 noundef 2) #39
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.l, label %.thread33

.thread33:                                        ; preds = %bb.a, %bb.d, %bb.k
  br label %bb.l

bb.l:                                             ; preds = %.thread33, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.v = phi ptr [ @_ZN5osgeo4proj8metadataL17map_utf8_to_lowerE, %bb.b ], [ null, %.thread33 ], [ getelementptr inbounds nuw (i8, ptr @_ZN5osgeo4proj8metadataL17map_utf8_to_lowerE, i64 16), %bb.c ], [ getelementptr inbounds nuw (i8, ptr @_ZN5osgeo4proj8metadataL17map_utf8_to_lowerE, i64 144), %bb.k ], [ getelementptr inbounds nuw (i8, ptr @_ZN5osgeo4proj8metadataL17map_utf8_to_lowerE, i64 32), %bb.d ], [ getelementptr inbounds nuw (i8, ptr @_ZN5osgeo4proj8metadataL17map_utf8_to_lowerE, i64 112), %bb.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN5osgeo4proj8metadataL17map_utf8_to_lowerE, i64 48), %bb.e ], [ getelementptr inbounds nuw (i8, ptr @_ZN5osgeo4proj8metadataL17map_utf8_to_lowerE, i64 128), %bb.j ], [ getelementptr inbounds nuw (i8, ptr @_ZN5osgeo4proj8metadataL17map_utf8_to_lowerE, i64 64), %bb.f ], [ getelementptr inbounds nuw (i8, ptr @_ZN5osgeo4proj8metadataL17map_utf8_to_lowerE, i64 96), %bb.h ], [ getelementptr inbounds nuw (i8, ptr @_ZN5osgeo4proj8metadataL17map_utf8_to_lowerE, i64 80), %bb.g ]
  ret ptr %i.v
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #25

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN5osgeo4proj8metadata10Identifier16isEquivalentNameEPKcS4_b(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i1 noundef zeroext %2) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !38      ; 2 uses
  %.not472 = icmp eq i8 %i.a, 0                   ; 2 uses
  %i.b = load i8, ptr %1, align 1, !tbaa !38      ; 2 uses
  %.not86473 = icmp eq i8 %i.b, 0
  %or.cond454474 = select i1 %.not472, i1 %.not86473, i1 false
  br i1 %or.cond454474, label %"_ZZN5osgeo4proj8metadata10Identifier16isEquivalentNameEPKcS4_bENK3$_1clEcS4_RmS4_.exit253.thread335", label %.critedge

.critedge:                                        ; preds = %bb.a, %"_ZZN5osgeo4proj8metadata10Identifier16isEquivalentNameEPKcS4_bENK3$_1clEcS4_RmS4_.exit253"
  %i.c = phi i8 [ %i.px, %"_ZZN5osgeo4proj8metadata10Identifier16isEquivalentNameEPKcS4_bENK3$_1clEcS4_RmS4_.exit253" ], [ %i.b, %bb.a ] ; 7 uses
  %.not479 = phi i1 [ %.not, %"_ZZN5osgeo4proj8metadata10Identifier16isEquivalentNameEPKcS4_bENK3$_1clEcS4_RmS4_.exit253" ], [ %.not472, %bb.a ] ; 2 uses
  %i.d = phi i8 [ %i.pv, %"_ZZN5osgeo4proj8metadata10Identifier16isEquivalentNameEPKcS4_bENK3$_1clEcS4_RmS4_.exit253" ], [ %i.a, %bb.a ] ; 3 uses
  %i.e = phi ptr [ %i.pu, %"_ZZN5osgeo4proj8metadata10Identifier16isEquivalentNameEPKcS4_bENK3$_1clEcS4_RmS4_.exit253" ], [ %0, %bb.a ] ; 23 uses
  %.075478 = phi i8 [ %.176, %"_ZZN5osgeo4proj8metadata10Identifier16isEquivalentNameEPKcS4_bENK3$_1clEcS4_RmS4_.exit253" ], [ 0, %bb.a ] ; 10 uses
  %.077477 = phi i8 [ %.178, %"_ZZN5osgeo4proj8metadata10Identifier16isEquivalentNameEPKcS4_bENK3$_1clEcS4_RmS4_.exit253" ], [ 0, %bb.a ] ; 10 uses
  %.0476 = phi i64 [ %.6, %"_ZZN5osgeo4proj8metadata10Identifier16isEquivalentNameEPKcS4_bENK3$_1clEcS4_RmS4_.exit253" ], [ 0, %bb.a ] ; 18 uses
  %.0292475 = phi i64 [ %.5297, %"_ZZN5osgeo4proj8metadata10Identifier16isEquivalentNameEPKcS4_bENK3$_1clEcS4_RmS4_.exit253" ], [ 0, %bb.a ] ; 38 uses
  %i.f = add i8 %i.d, -65
  %or.cond.i = icmp ult i8 %i.f, 26
  %i.g = add nuw nsw i8 %i.d, 32
  %i.h = select i1 %or.cond.i, i8 %i.g, i8 %i.d   ; 10 uses
  %i.i = getelementptr i8, ptr %1, i64 %.0292475  ; 41 uses
  %i.j = add i8 %i.c, -65
  %or.cond.i95 = icmp ult i8 %i.j, 26
  %i.k = add nuw nsw i8 %i.c, 32
  %i.l = select i1 %or.cond.i95, i8 %i.k, i8 %i.c ; 11 uses
  %i.m = icmp eq i8 %i.h, 32
  br i1 %i.m, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.critedge
  %i.n = getelementptr i8, ptr %i.e, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !38
  %i.p = icmp eq i8 %i.o, 43
  br i1 %i.p, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr i8, ptr %i.e, i64 2
  %i.r = load i8, ptr %i.q, align 1, !tbaa !38
  %i.s = icmp eq i8 %i.r, 32
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = add i64 %.0476, 3                        ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !38
  %.not87 = icmp eq i8 %i.v, 0
  br i1 %.not87, label %bb.e, label %"_ZZN5osgeo4proj8metadata10Identifier16isEquivalentNameEPKcS4_bENK3$_1clEcS4_RmS4_.exit253", !llvm.loop !280

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %.critedge
  %i.w = icmp eq i8 %i.l, 32
end_hunk_0
