inline.NumInlined: 10360
inline.NumDeleted: 3521
begin_hunk_0_@_ZN6Assimp13glTF2Importer10ImportNodeERN5glTF25AssetERN10glTFCommon3RefINS1_4NodeEEE:bb.a
  %i.x = load ptr, ptr %i.t, align 8
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.w
  %i.z = load ptr, ptr %i.y, align 8              ; 35 uses
  %i.aa = tail call noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #37 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #34
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !126
  %i.ad = icmp eq i64 %i.ac, 0
  %.v.i = select i1 %i.ad, i64 16, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 %.v.i ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 7 uses
  store ptr %i.af, ptr %19, align 8, !alias.scope !126
  %i.ag = load ptr, ptr %i.ae, align 8, !noalias !126 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !noalias !126 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #34, !noalias !126
  store i64 %i.ai, ptr %i.p, align 8, !noalias !126
  %i.aj = icmp ugt i64 %i.ai, 15
  br i1 %i.aj, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.ak = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(8) %i.p, i64 noundef 0)
          to label %.noexc unwind label %bb.h     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.ak, ptr %19, align 8, !alias.scope !126
  %i.al = load i64, ptr %i.p, align 8, !noalias !126
  store i64 %i.al, ptr %i.af, align 8, !alias.scope !126
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.a
  %i.am = phi ptr [ %i.ak, %.noexc ], [ %i.af, %bb.a ] ; 2 uses
  switch i64 %i.ai, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.an = load i8, ptr %i.ag, align 1
  store i8 %i.an, ptr %i.am, align 1
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.am, ptr align 1 %i.ag, i64 %i.ai, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.ao = load i64, ptr %i.p, align 8, !noalias !126 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 %i.ao, ptr %i.ap, align 8, !alias.scope !126
  %i.aq = load ptr, ptr %19, align 8, !alias.scope !126
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ao
  store i8 0, ptr %i.ar, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #34, !noalias !126
  invoke void @_ZN6aiNodeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1144) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.as = load ptr, ptr %19, align 8              ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.af
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.au = load i64, ptr %i.af, align 8
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #34
  %i.aw = getelementptr inbounds nuw i8, ptr %i.z, i64 264 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.z, i64 272
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %i.ba = icmp eq ptr %i.ax, %i.az
  br i1 %i.ba, label %.loopexit264, label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ax to i64
  %i.bd = sub i64 %i.bb, %i.bc                    ; 2 uses
  %i.be = lshr exact i64 %i.bd, 4
  %i.bf = trunc i64 %i.be to i32                  ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aa, i64 1104 ; 2 uses
  store i32 %i.bf, ptr %i.bg, align 8
  %i.bh = lshr exact i64 %i.bd, 1
  %i.bi = and i64 %i.bh, 34359738360              ; 3 uses
  %i.bj = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bi) #37
          to label %bb.g unwind label %.loopexit.split-lp260 ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aa, i64 1112 ; 2 uses
  store ptr %i.bj, ptr %i.bk, align 8
  %.not4.i.i.i = icmp samesign eq i64 %i.bi, 0
  br i1 %.not4.i.i.i, label %_ZSt4fillIPP6aiNodeDnEvT_S3_RKT0_.exit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.g
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bj, i8 0, i64 %i.bi, i1 false)
  br label %_ZSt4fillIPP6aiNodeDnEvT_S3_RKT0_.exit

_ZSt4fillIPP6aiNodeDnEvT_S3_RKT0_.exit:           ; preds = %.lr.ph.preheader.i.i.i, %bb.g
  %.not360.a = icmp eq i32 %i.bf, 0
  br i1 %.not360.a, label %.loopexit264, label %.lr.ph

bb.h:                                             ; preds = %.noexc.i.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146

bb.i:                                             ; preds = %bb.d
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bn = load ptr, ptr %19, align 8              ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.af
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144: ; preds = %bb.i
  %i.bp = load i64, ptr %i.af, align 8
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bq) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144, %bb.h
  %.pn = phi { ptr, i32 } [ %i.bl, %bb.h ], [ %i.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144 ], [ %i.bm, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #34
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef 1144) #35
  br label %bb.iu

.loopexit259:                                     ; preds = %.lr.ph.i
  %lpad.loopexit261 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.is

.loopexit.split-lp260:                            ; preds = %bb.f, %.thread, %.thread227, %bb.ip, %.noexc194, %.noexc195
  %lpad.loopexit.split-lp262 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.is

.lr.ph:                                           ; preds = %_ZSt4fillIPP6aiNodeDnEvT_S3_RKT0_.exit, %bb.j
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.j ], [ 0, %_ZSt4fillIPP6aiNodeDnEvT_S3_RKT0_.exit ] ; 3 uses
  %i.br = load ptr, ptr %i.aw, align 8
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.br, i64 %indvars.iv
  %i.bt = invoke noundef ptr @_ZN6Assimp13glTF2Importer10ImportNodeERN5glTF25AssetERN10glTFCommon3RefINS1_4NodeEEE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(3624) %1, ptr noundef nonnull align 8 dereferenceable(12) %i.bs)
          to label %bb.j unwind label %bb.k       ; 2 uses

bb.j:                                             ; preds = %.lr.ph
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 1096
  store ptr %i.aa, ptr %i.bu, align 8
  %i.bv = load ptr, ptr %i.bk, align 8
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv
  store ptr %i.bt, ptr %i.bw, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bx = load i32, ptr %i.bg, align 8
  %i.by = zext i32 %i.bx to i64
  %i.bz = icmp samesign ult i64 %indvars.iv.next, %i.by
  br i1 %i.bz, label %.lr.ph, label %.loopexit264, !llvm.loop !129

bb.k:                                             ; preds = %.lr.ph
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.is

.loopexit264:                                     ; preds = %bb.j, %_ZSt4fillIPP6aiNodeDnEvT_S3_RKT0_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %i.z, i64 80
  %i.cc = getelementptr inbounds nuw i8, ptr %i.z, i64 232
  %i.cd = load i8, ptr %i.cc, align 8, !range !19, !noundef !20
  %i.ce = trunc nuw i8 %i.cd to i1                ; 2 uses
  br i1 %i.ce, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.loopexit264
  %i.cf = getelementptr inbounds nuw i8, ptr %i.z, i64 208
  %i.cg = getelementptr inbounds nuw i8, ptr %i.z, i64 216
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = load ptr, ptr %i.cf, align 8
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = sdiv exact i64 %i.cl, 160
  br label %bb.n

bb.m:                                             ; preds = %.loopexit264
  %i.cn = getelementptr inbounds nuw i8, ptr %i.z, i64 144
  %i.co = load i8, ptr %i.cn, align 8, !range !19, !noundef !20
  %i.cp = trunc nuw i8 %i.co to i1
  %i.cq = getelementptr inbounds nuw i8, ptr %i.z, i64 160
  %i.cr = load i8, ptr %i.cq, align 8, !range !19
  %i.cs = trunc nuw i8 %i.cr to i1
  %or.cond.i.i = select i1 %i.cp, i1 true, i1 %i.cs
  %i.ct = getelementptr inbounds nuw i8, ptr %i.z, i64 176
  %i.cu = load i8, ptr %i.ct, align 8, !range !19
  %i.cv = trunc nuw i8 %i.cu to i1
  %or.cond5.i.i = select i1 %or.cond.i.i, i1 true, i1 %i.cv
  %i.cw = getelementptr inbounds nuw i8, ptr %i.z, i64 192
  %i.cx = load i8, ptr %i.cw, align 8, !range !19
  %i.cy = trunc nuw i8 %i.cx to i1
  %or.cond8.i.i = select i1 %or.cond5.i.i, i1 true, i1 %i.cy
  %i.cz = getelementptr inbounds nuw i8, ptr %i.z, i64 201
  %i.da = load i8, ptr %i.cz, align 1, !range !19
  %i.db = zext nneg i8 %i.da to i64
  br i1 %or.cond8.i.i, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0.i.i = phi i64 [ %i.cm, %bb.l ], [ %i.db, %bb.m ]
  %.not232.a = icmp eq i64 %.0.i.i, 0
  br i1 %.not232.a, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.dc = getelementptr inbounds nuw i8, ptr %i.z, i64 240
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.z, i64 248
  %i.df = load ptr, ptr %i.de, align 8
  %.not233.a = icmp eq ptr %i.dd, %i.df
  br i1 %.not233.a, label %_Z11ParseExtrasP10aiMetadataRKN5glTF26ExtrasE.exit, label %.thread

.thread:                                          ; preds = %bb.m, %bb.o, %bb.n
  %i.dg = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #37
          to label %bb.p unwind label %.loopexit.split-lp260 ; 4 uses

bb.p:                                             ; preds = %.thread
  store i32 0, ptr %i.dg, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dh, i8 0, i64 16, i1 false)
  %i.di = getelementptr inbounds nuw i8, ptr %i.aa, i64 1136 ; 2 uses
  store ptr %i.dg, ptr %i.di, align 8
  br i1 %i.ce, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dj = getelementptr inbounds nuw i8, ptr %i.z, i64 208
  %i.dk = getelementptr inbounds nuw i8, ptr %i.z, i64 216
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = load ptr, ptr %i.dj, align 8
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = sdiv exact i64 %i.dp, 160
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.dr = getelementptr inbounds nuw i8, ptr %i.z, i64 144
  %i.ds = load i8, ptr %i.dr, align 8, !range !19, !noundef !20
  %i.dt = trunc nuw i8 %i.ds to i1
  %i.du = getelementptr inbounds nuw i8, ptr %i.z, i64 160
  %i.dv = load i8, ptr %i.du, align 8, !range !19
  %i.dw = trunc nuw i8 %i.dv to i1
  %or.cond.i.i147 = select i1 %i.dt, i1 true, i1 %i.dw
  %i.dx = getelementptr inbounds nuw i8, ptr %i.z, i64 176
  %i.dy = load i8, ptr %i.dx, align 8, !range !19
  %i.dz = trunc nuw i8 %i.dy to i1
  %or.cond5.i.i148 = select i1 %or.cond.i.i147, i1 true, i1 %i.dz
  %i.ea = getelementptr inbounds nuw i8, ptr %i.z, i64 192
  %i.eb = load i8, ptr %i.ea, align 8, !range !19
  %i.ec = trunc nuw i8 %i.eb to i1
  %or.cond8.i.i149 = select i1 %or.cond5.i.i148, i1 true, i1 %i.ec
  %i.ed = getelementptr inbounds nuw i8, ptr %i.z, i64 201
  %i.ee = load i8, ptr %i.ed, align 1, !range !19
  %i.ef = zext nneg i8 %i.ee to i64
  br i1 %or.cond8.i.i149, label %.thread227, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.0.i.i151 = phi i64 [ %i.dq, %bb.q ], [ %i.ef, %bb.r ]
  %.not234.a = icmp eq i64 %.0.i.i151, 0
  br i1 %.not234.a, label %bb.t, label %.thread227

.thread227:                                       ; preds = %bb.r, %bb.s
  invoke void @_Z15ParseExtensionsP10aiMetadataRKN5glTF215CustomExtensionE(ptr noundef nonnull %i.dg, ptr noundef nonnull align 8 dereferenceable(160) %i.cb)
          to label %bb.t unwind label %.loopexit.split-lp260

bb.t:                                             ; preds = %.thread227, %bb.s
  %i.eg = getelementptr inbounds nuw i8, ptr %i.z, i64 240
  %i.eh = load ptr, ptr %i.eg, align 8            ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.z, i64 248
  %i.ej = load ptr, ptr %i.ei, align 8            ; 2 uses
  %.not235 = icmp eq ptr %i.eh, %i.ej
  br i1 %.not235, label %_Z11ParseExtrasP10aiMetadataRKN5glTF26ExtrasE.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ek = load ptr, ptr %i.di, align 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.u, %.noexc153
  %.sroa.05.09.i = phi ptr [ %i.el, %.noexc153 ], [ %i.eh, %bb.u ] ; 2 uses
  invoke void @_Z15ParseExtensionsP10aiMetadataRKN5glTF215CustomExtensionE(ptr noundef %i.ek, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.05.09.i)
          to label %.noexc153 unwind label %.loopexit259

.noexc153:                                        ; preds = %.lr.ph.i
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 160 ; 2 uses
  %.not.i = icmp eq ptr %i.el, %i.ej
  br i1 %.not.i, label %_Z11ParseExtrasP10aiMetadataRKN5glTF26ExtrasE.exit, label %.lr.ph.i

_Z11ParseExtrasP10aiMetadataRKN5glTF26ExtrasE.exit: ; preds = %.noexc153, %bb.t, %bb.o
  %i.em = getelementptr inbounds nuw i8, ptr %i.aa, i64 1028
  call fastcc void @_ZL16GetNodeTransformR12aiMatrix4x4tIfERKN5glTF24NodeE(ptr noundef nonnull align 4 dereferenceable(64) %i.em, ptr noundef nonnull align 8 dereferenceable(552) %i.z)
  %i.en = getelementptr inbounds nuw i8, ptr %i.z, i64 288 ; 3 uses
  %i.eo = load ptr, ptr %i.en, align 8            ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.z, i64 296 ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8            ; 2 uses
  %i.er = icmp eq ptr %i.eo, %i.eq
  br i1 %i.er, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %_Z11ParseExtrasP10aiMetadataRKN5glTF26ExtrasE.exit
  %i.es = ptrtoint ptr %i.eq to i64
  %i.et = ptrtoint ptr %i.eo to i64
  %i.eu = sub i64 %i.es, %i.et
  %i.ev = icmp ugt i64 %i.eu, 16
  br i1 %i.ev, label %bb.w, label %bb.ab

bb.w:                                             ; preds = %bb.v
  %i.ew = call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #34
  %i.ex = load ptr, ptr %i.ep, align 8
  %i.ey = load ptr, ptr %i.en, align 8
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = ptrtoint ptr %i.ey to i64
  %i.fb = sub i64 %i.ez, %i.fa
  %i.fc = ashr exact i64 %i.fb, 4
  store i64 %i.fc, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #34
  %i.fd = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.fe = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  invoke void @_ZN5glTF226getContextForErrorMessagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, ptr noundef nonnull align 8 dereferenceable(32) %i.fd, ptr noundef nonnull align 8 dereferenceable(32) %i.fe)
          to label %bb.x unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156.thread

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN17DeadlyImportErrorC2IJRA28_KcmRA12_S1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA36_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ew, ptr noundef nonnull align 1 dereferenceable(28) @.str.29, ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 1 dereferenceable(12) @.str.30, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 1 dereferenceable(36) @.str.31)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  invoke void @__cxa_throw(ptr nonnull %i.ew, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
          to label %bb.iw unwind label %bb.z

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156.thread: ; preds = %bb.w
  %i.ff = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #34
  br label %bb.aa

bb.z:                                             ; preds = %bb.y, %bb.x
  %.0127 = phi i1 [ false, %bb.y ], [ true, %bb.x ] ; 2 uses
  %i.fg = landingpad { ptr, i32 }
          catch ptr null                          ; 4 uses
  %i.fh = load ptr, ptr %20, align 8              ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.fj = icmp eq ptr %i.fh, %i.fi
  br i1 %i.fj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154: ; preds = %bb.z
  %i.fk = load i64, ptr %i.fi, align 8
  %i.fl = add i64 %i.fk, 1
  call void @_ZdlPvm(ptr noundef %i.fh, i64 noundef %i.fl) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #34
  br i1 %.0127, label %bb.aa, label %bb.is

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #34
  br i1 %.0127, label %bb.aa, label %bb.is

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156
  %.pn138231 = phi { ptr, i32 } [ %i.ff, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156.thread ], [ %i.fg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156 ], [ %i.fg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154 ]
  call void @__cxa_free_exception(ptr %i.ew) #34
  br label %bb.is

bb.ab:                                            ; preds = %bb.v
  %i.fm = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.fn = load i32, ptr %i.fm, align 8            ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.fp = add nsw i32 %i.fn, 1
  %i.fq = sext i32 %i.fp to i64                   ; 3 uses
  %i.fr = load ptr, ptr %i.fo, align 8            ; 4 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.fq
  %i.ft = load i32, ptr %i.fs, align 4
  %i.fu = sext i32 %i.fn to i64                   ; 3 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.fu
  %i.fw = load i32, ptr %i.fv, align 4
  %i.fx = sub i32 %i.ft, %i.fw                    ; 5 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.aa, i64 1120
  store i32 %i.fx, ptr %i.fy, align 8
  %i.fz = sext i32 %i.fx to i64
  %i.ga = icmp slt i32 %i.fx, 0
  %i.gb = shl nsw i64 %i.fz, 2
  %i.gc = select i1 %i.ga, i64 -1, i64 %i.gb
  %i.gd = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.gc) #37
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ge = getelementptr inbounds nuw i8, ptr %i.aa, i64 1128 ; 2 uses
  store ptr %i.gd, ptr %i.ge, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %i.z, i64 488 ; 4 uses
  %i.gg = load ptr, ptr %i.gf, align 8            ; 3 uses
  %.not.i157 = icmp eq ptr %i.gg, null
  br i1 %.not.i157, label %_ZNK10glTFCommon3RefIN5glTF24SkinEEcvbEv.exit.thread, label %_ZNK10glTFCommon3RefIN5glTF24SkinEEcvbEv.exit

_ZNK10glTFCommon3RefIN5glTF24SkinEEcvbEv.exit:    ; preds = %bb.ac
  %i.gh = getelementptr inbounds nuw i8, ptr %i.z, i64 496 ; 4 uses
  %i.gi = load i32, ptr %i.gh, align 8
  %i.gj = zext i32 %i.gi to i64
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8
  %i.gm = load ptr, ptr %i.gg, align 8
  %i.gn = ptrtoint ptr %i.gl to i64
  %i.go = ptrtoint ptr %i.gm to i64
  %i.gp = sub i64 %i.gn, %i.go
  %i.gq = ashr exact i64 %i.gp, 3
  %i.gr = icmp ugt i64 %i.gq, %i.gj
  %i.gs = icmp sgt i32 %i.fx, 0
  %or.cond = and i1 %i.gr, %i.gs
  br i1 %or.cond, label %.lr.ph356, label %_ZNK10glTFCommon3RefIN5glTF24SkinEEcvbEv.exit.thread

.lr.ph356:                                        ; preds = %_ZNK10glTFCommon3RefIN5glTF24SkinEEcvbEv.exit
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.gv = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.gy = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 6 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 4 uses
  %wide.trip.count455 = zext nneg i32 %i.fx to i64
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.ha = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.is

bb.ae:                                            ; preds = %.lr.ph356, %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EED2Ev.exit
  %indvars.iv452 = phi i64 [ 0, %.lr.ph356 ], [ %indvars.iv.next453, %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EED2Ev.exit ] ; 3 uses
  %i.hb = load ptr, ptr %i.fo, align 8
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %i.fu
  %i.hd = load i32, ptr %i.hc, align 4
  %i.he = trunc nuw nsw i64 %indvars.iv452 to i32
  %i.hf = add i32 %i.hd, %i.he
  %i.hg = load ptr, ptr %i.gt, align 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 24
  %i.hi = load ptr, ptr %i.hh, align 8
  %i.hj = zext i32 %i.hf to i64                   ; 2 uses
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %i.hj
  %i.hl = load ptr, ptr %i.hk, align 8            ; 2 uses
  %i.hm = load ptr, ptr %i.gf, align 8
  %i.hn = load i32, ptr %i.gh, align 8
  %i.ho = zext i32 %i.hn to i64
  %i.hp = load ptr, ptr %i.hm, align 8
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %i.ho
  %i.hr = load ptr, ptr %i.hq, align 8            ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 352
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 360
  %i.hu = load ptr, ptr %i.ht, align 8
  %i.hv = load ptr, ptr %i.hs, align 8
  %i.hw = ptrtoint ptr %i.hu to i64
  %i.hx = ptrtoint ptr %i.hv to i64
  %i.hy = sub i64 %i.hw, %i.hx
  %i.hz = ashr exact i64 %i.hy, 4                 ; 3 uses
  %i.ia = trunc i64 %i.hz to i32                  ; 2 uses
  %i.ib = load ptr, ptr %i.gu, align 8
  %i.ic = getelementptr inbounds nuw [24 x i8], ptr %i.ib, i64 %i.hj ; 9 uses
  %i.id = load ptr, ptr %i.ic, align 8
end_hunk_0
begin_hunk_1_@_ZN10glTFCommon10ReadHelperIA4_fE4ReadERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEERS1_:bb.a
  %i.ba = and i32 %i.ax, 32
  %.not2.i.2 = icmp eq i32 %i.ba, 0
  br i1 %.not2.i.2, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bb = load i32, ptr %i.at, align 8
  %i.bc = sitofp i32 %i.bb to double
  br label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9GetDoubleEv.exit.2

bb.z:                                             ; preds = %bb.x
  %i.bd = and i32 %i.ax, 64
  %.not3.i.2 = icmp eq i32 %i.bd, 0
  br i1 %.not3.i.2, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.be = load i32, ptr %i.at, align 8
  %i.bf = uitofp i32 %i.be to double
  br label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9GetDoubleEv.exit.2

bb.ab:                                            ; preds = %bb.z
  %i.bg = and i32 %i.ax, 128
  %.not4.i.2 = icmp eq i32 %i.bg, 0
  %i.bh = load i64, ptr %i.at, align 8            ; 2 uses
  br i1 %.not4.i.2, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bi = sitofp i64 %i.bh to double
  br label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9GetDoubleEv.exit.2

bb.ad:                                            ; preds = %bb.ab
  %i.bj = uitofp i64 %i.bh to double
  br label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9GetDoubleEv.exit.2

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9GetDoubleEv.exit.2: ; preds = %bb.ad, %bb.ac, %bb.aa, %bb.y, %bb.w
  %.0.i.2 = phi double [ %i.az, %bb.w ], [ %i.bc, %bb.y ], [ %i.bf, %bb.aa ], [ %i.bi, %bb.ac ], [ %i.bj, %bb.ad ]
  %i.bk = fptrunc double %.0.i.2 to float
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.bk, ptr %i.bl, align 4
  %.pre15 = load ptr, ptr %i.e, align 8
  %.pre27 = ptrtoint ptr %.pre15 to i64
  %.pre29 = and i64 %.pre27, 281474976710655
  %.pre31 = inttoptr i64 %.pre29 to ptr
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9GetDoubleEv.exit.2, %bb.u
  %.pre-phi32 = phi ptr [ %.pre31, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9GetDoubleEv.exit.2 ], [ %.pre-phi26, %bb.u ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.pre-phi32, i64 48 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.pre-phi32, i64 62
  %i.bo = load i16, ptr %i.bn, align 2            ; 2 uses
  %i.bp = and i16 %i.bo, 16
  %.not11.3 = icmp eq i16 %i.bp, 0
  br i1 %.not11.3, label %.loopexit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bq = zext i16 %i.bo to i32                   ; 4 uses
  %i.br = and i32 %i.bq, 512
  %.not.i.3 = icmp eq i32 %i.br, 0
  br i1 %.not.i.3, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bs = load double, ptr %i.bm, align 8
  br label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9GetDoubleEv.exit.3

bb.ah:                                            ; preds = %bb.af
  %i.bt = and i32 %i.bq, 32
  %.not2.i.3 = icmp eq i32 %i.bt, 0
  br i1 %.not2.i.3, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bu = load i32, ptr %i.bm, align 8
  %i.bv = sitofp i32 %i.bu to double
  br label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9GetDoubleEv.exit.3

bb.aj:                                            ; preds = %bb.ah
  %i.bw = and i32 %i.bq, 64
  %.not3.i.3 = icmp eq i32 %i.bw, 0
  br i1 %.not3.i.3, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bx = load i32, ptr %i.bm, align 8
  %i.by = uitofp i32 %i.bx to double
  br label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9GetDoubleEv.exit.3

bb.al:                                            ; preds = %bb.aj
  %i.bz = and i32 %i.bq, 128
  %.not4.i.3 = icmp eq i32 %i.bz, 0
  %i.ca = load i64, ptr %i.bm, align 8            ; 2 uses
  br i1 %.not4.i.3, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cb = sitofp i64 %i.ca to double
  br label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9GetDoubleEv.exit.3

bb.an:                                            ; preds = %bb.al
  %i.cc = uitofp i64 %i.ca to double
  br label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9GetDoubleEv.exit.3

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9GetDoubleEv.exit.3: ; preds = %bb.an, %bb.am, %bb.ak, %bb.ai, %bb.ag
  %.0.i.3 = phi double [ %i.bs, %bb.ag ], [ %i.bv, %bb.ai ], [ %i.by, %bb.ak ], [ %i.cb, %bb.am ], [ %i.cc, %bb.an ]
  %i.cd = fptrunc double %.0.i.3 to float
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 12
  store float %i.cd, ptr %i.ce, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ae, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9GetDoubleEv.exit.3, %bb.a
  ret i1 %or.cond
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5glTF24Mesh4ReadERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEERNS_5AssetE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(3624) %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %4 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.d = load i16, ptr %i.c, align 2
  %i.e = icmp eq i16 %i.d, 3
  br i1 %i.e, label %bb.b, label %_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 14
  store i16 1029, ptr %i.f, align 2
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = and i64 %i.i, -281474976710656
  %i.k = or i64 %i.j, ptrtoint (ptr @.str.87 to i64) ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr
  store ptr %i.l, ptr %i.g, align 8
  store i32 4, ptr %4, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = and i64 %i.o, 281474976710655
  %i.q = inttoptr i64 %i.p to ptr                 ; 4 uses
  %i.r = load i32, ptr %1, align 8                ; 2 uses
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.s, 5
  %i.t = getelementptr i8, ptr %i.q, i64 %.idx.i.i.i.i ; 2 uses
  %.not9.i.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not9.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.u = lshr i64 ptrtoint (ptr @.str.87 to i64), 40
  %i.v = trunc i64 %i.u to i8
  %i.w = and i64 %i.k, 1152921504606846976
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.w, 0       ; 2 uses
  %i.x = sext i8 %i.v to i32
  %i.y = sub nsw i32 13, %i.x
  %i.z = select i1 %.not.i.i.i.i.i.i.i, i32 4, i32 %i.y ; 2 uses
  %i.aa = and i64 ptrtoint (ptr @.str.87 to i64), 281474976710655
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = select i1 %.not.i.i.i.i.i.i.i, ptr %i.ab, ptr %4 ; 2 uses
  %i.ad = zext i32 %i.z to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %.lr.ph.i.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i ], [ %i.av, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 8 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 14
  %i.af = load i16, ptr %i.ae, align 2
  %i.ag = and i16 %i.af, 4096
  %.not.i.i13.i.i.i.i.i = icmp eq i16 %i.ag, 0    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 13
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = sext i8 %i.ai to i32
  %i.ak = sub nsw i32 13, %i.aj
  %i.al = load i32, ptr %.010.i.i.i.i, align 8
  %i.am = select i1 %.not.i.i13.i.i.i.i.i, i32 %i.al, i32 %i.ak
  %.not.i.i.i.i.i = icmp eq i32 %i.z, %i.am
  br i1 %.not.i.i.i.i.i, label %bb.d, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = and i64 %i.ap, 281474976710655
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = select i1 %.not.i.i13.i.i.i.i.i, ptr %i.ar, ptr %.010.i.i.i.i ; 2 uses
  %i.at = icmp eq ptr %i.ac, %i.as
  br i1 %i.at, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %i.ac, ptr %i.as, i64 %i.ad)
  %i.au = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.au, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.av, %i.t
  br i1 %.not.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %bb.c, !llvm.loop !219

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.d, %bb.b
  %.0.lcssa.i.i.i.i = phi ptr [ %i.q, %bb.b ], [ %.010.i.i.i.i, %bb.d ], [ %.010.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i ], [ %i.t, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.aw = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %i.s
  %.not.i = icmp eq ptr %.0.lcssa.i.i.i.i, %i.aw
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 16
  br i1 %.not.i, label %_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread, label %_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit

_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 30
  %i.az = load i16, ptr %i.ay, align 2            ; 2 uses
  %i.ba = and i16 %i.az, 1024
  %.not = icmp eq i16 %i.ba, 0
  br i1 %.not, label %_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit
  %i.bb = and i16 %i.az, 4096
  %.not.i.i = icmp eq i16 %i.bb, 0
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = and i64 %i.be, 281474976710655
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = select i1 %.not.i.i, ptr %i.bg, ptr %i.ax ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bh) #34
  %i.bm = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, i64 noundef 0, i64 noundef %i.bk, ptr noundef nonnull %i.bh, i64 noundef %i.bl) ; 0 uses
  br label %_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread

_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, %bb.a, %bb.e, %_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 11 uses
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = call noundef ptr @_ZN10glTFCommon18FindArrayInContextERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKcSA_SA_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.200, ptr noundef %i.bo, ptr noundef %i.bq) ; 5 uses
  %.not140 = icmp eq ptr %i.br, null
  br i1 %.not140, label %bb.bo, label %bb.f

bb.f:                                             ; preds = %_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %i.bt = load i32, ptr %i.br, align 8
  %i.bu = zext i32 %i.bt to i64                   ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8            ; 3 uses
  %i.bx = load ptr, ptr %i.bs, align 8            ; 2 uses
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = sdiv exact i64 %i.ca, 264               ; 3 uses
  %i.cc = icmp ult i64 %i.cb, %i.bu
  br i1 %i.cc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cd = sub nuw nsw i64 %i.bu, %i.cb
  call void @_ZNSt6vectorIN5glTF24Mesh9PrimitiveESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i64 noundef %i.cd)
  br label %_ZNSt6vectorIN5glTF24Mesh9PrimitiveESaIS2_EE6resizeEm.exit

bb.h:                                             ; preds = %bb.f
  %i.ce = icmp ugt i64 %i.cb, %i.bu
  br i1 %i.ce, label %bb.i, label %_ZNSt6vectorIN5glTF24Mesh9PrimitiveESaIS2_EE6resizeEm.exit

bb.i:                                             ; preds = %bb.h
  %i.cf = getelementptr inbounds nuw [264 x i8], ptr %i.bx, i64 %i.bu ; 3 uses
  %.not.i.i154 = icmp eq ptr %i.bw, %i.cf
  br i1 %.not.i.i154, label %_ZNSt6vectorIN5glTF24Mesh9PrimitiveESaIS2_EE6resizeEm.exit, label %.lr.ph.i.i.i.i155

.lr.ph.i.i.i.i155:                                ; preds = %bb.i, %.lr.ph.i.i.i.i155
  %.05.i.i.i.i = phi ptr [ %i.ci, %.lr.ph.i.i.i.i155 ], [ %i.cf, %bb.i ] ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 232
  call void @_ZNSt6vectorIN5glTF24Mesh9Primitive6TargetESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.cg) #34
  %i.ch = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  call void @_ZN5glTF24Mesh9Primitive10AttributesD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %i.ch) #34
  %i.ci = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 264 ; 2 uses
  %.not.i.i.i.i156 = icmp eq ptr %i.ci, %i.bw
  br i1 %.not.i.i.i.i156, label %_ZSt8_DestroyIPN5glTF24Mesh9PrimitiveES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i155, !llvm.loop !843

_ZSt8_DestroyIPN5glTF24Mesh9PrimitiveES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %.lr.ph.i.i.i.i155
  store ptr %i.cf, ptr %i.bv, align 8
  br label %_ZNSt6vectorIN5glTF24Mesh9PrimitiveESaIS2_EE6resizeEm.exit

_ZNSt6vectorIN5glTF24Mesh9PrimitiveESaIS2_EE6resizeEm.exit: ; preds = %bb.g, %bb.h, %bb.i, %_ZSt8_DestroyIPN5glTF24Mesh9PrimitiveES2_EvT_S4_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i32 0, ptr %i.a, align 4
  %i.cj = load i32, ptr %i.br, align 8
  %.not240 = icmp eq i32 %i.cj, 0
  br i1 %.not240, label %._crit_edge, label %.lr.ph235

.lr.ph235:                                        ; preds = %_ZNSt6vectorIN5glTF24Mesh9PrimitiveESaIS2_EE6resizeEm.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 14
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.cn = lshr i64 ptrtoint (ptr @.str.189 to i64), 40
  %i.co = trunc i64 %i.cn to i8
  %i.cp = sext i8 %i.co to i32
  %i.cq = sub nsw i32 13, %i.cp
  %i.cr = and i64 ptrtoint (ptr @.str.189 to i64), 281474976710655
  %i.cs = inttoptr i64 %i.cr to ptr
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 216 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 1840
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  br label %bb.j

._crit_edge:                                      ; preds = %.loopexit221, %_ZNSt6vectorIN5glTF24Mesh9PrimitiveESaIS2_EE6resizeEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %bb.bo

bb.j:                                             ; preds = %.lr.ph235, %.loopexit221
  %storemerge234 = phi i32 [ 0, %.lr.ph235 ], [ %i.pu, %.loopexit221 ]
  %i.cx = load ptr, ptr %i.ck, align 8
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = and i64 %i.cy, 281474976710655
  %i.da = inttoptr i64 %i.cz to ptr
  %i.db = zext i32 %storemerge234 to i64          ; 2 uses
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %i.da, i64 %i.db ; 8 uses
  %i.dd = load ptr, ptr %i.bs, align 8
  %i.de = getelementptr inbounds nuw [264 x i8], ptr %i.dd, i64 %i.db ; 7 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 14
  %i.dg = load i16, ptr %i.df, align 2
  %i.dh = icmp eq i16 %i.dg, 3
  br i1 %i.dh, label %bb.k, label %_ZN10glTFCommonL15MemberOrDefaultIN5glTF213PrimitiveModeEEET_RN9rapidjson12GenericValueINS4_4UTF8IcEENS4_19MemoryPoolAllocatorINS4_12CrtAllocatorEEEEEPKcS3_.exit

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  store i16 1029, ptr %i.cl, align 2
  %i.di = load ptr, ptr %i.cm, align 8
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = and i64 %i.dj, -281474976710656
  %i.dl = or i64 %i.dk, ptrtoint (ptr @.str.189 to i64) ; 2 uses
  %i.dm = inttoptr i64 %i.dl to ptr
  store ptr %i.dm, ptr %i.cm, align 8
  store i32 4, ptr %3, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = and i64 %i.dp, 281474976710655
  %i.dr = inttoptr i64 %i.dq to ptr               ; 4 uses
  %i.ds = load i32, ptr %i.dc, align 8            ; 2 uses
  %i.dt = zext i32 %i.ds to i64                   ; 2 uses
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.dt, 5
  %i.du = getelementptr i8, ptr %i.dr, i64 %.idx.i.i.i.i.i ; 2 uses
  %.not9.i.i.i.i.i = icmp eq i32 %i.ds, 0
  br i1 %.not9.i.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.k
  %i.dv = and i64 %i.dl, 1152921504606846976
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.dv, 0    ; 2 uses
  %i.dw = select i1 %.not.i.i.i.i.i.i.i.i, i32 4, i32 %i.cq ; 2 uses
  %i.dx = select i1 %.not.i.i.i.i.i.i.i.i, ptr %i.cs, ptr %3 ; 2 uses
  %i.dy = zext i32 %i.dw to i64
  br label %bb.l

bb.l:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.010.i.i.i.i.i = phi ptr [ %i.dr, %.lr.ph.i.i.i.i.i ], [ %i.eq, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i ] ; 8 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 14
  %i.ea = load i16, ptr %i.dz, align 2
  %i.eb = and i16 %i.ea, 4096
  %.not.i.i13.i.i.i.i.i.i = icmp eq i16 %i.eb, 0  ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 13
  %i.ed = load i8, ptr %i.ec, align 1
  %i.ee = sext i8 %i.ed to i32
  %i.ef = sub nsw i32 13, %i.ee
  %i.eg = load i32, ptr %.010.i.i.i.i.i, align 8
  %i.eh = select i1 %.not.i.i13.i.i.i.i.i.i, i32 %i.eg, i32 %i.ef
  %.not.i.i.i.i.i.i = icmp eq i32 %i.dw, %i.eh
  br i1 %.not.i.i.i.i.i.i, label %bb.m, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.ei = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = ptrtoint ptr %i.ej to i64
  %i.el = and i64 %i.ek, 281474976710655
  %i.em = inttoptr i64 %i.el to ptr
  %i.en = select i1 %.not.i.i13.i.i.i.i.i.i, ptr %i.em, ptr %.010.i.i.i.i.i ; 2 uses
  %i.eo = icmp eq ptr %i.dx, %i.en
  br i1 %i.eo, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i: ; preds = %bb.m
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr %i.dx, ptr %i.en, i64 %i.dy)
  %i.ep = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.ep, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i, %bb.l
  %i.eq = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i157 = icmp eq ptr %i.eq, %i.du
  br i1 %.not.i.i.i.i.i157, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i, label %bb.l, !llvm.loop !219

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i, %bb.m, %bb.k
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.dr, %bb.k ], [ %i.du, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i ], [ %.010.i.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i ], [ %.010.i.i.i.i.i, %bb.m ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.er = getelementptr inbounds nuw [32 x i8], ptr %i.dr, i64 %i.dt
  %.not.i.i158 = icmp eq ptr %.0.lcssa.i.i.i.i.i, %i.er
  br i1 %.not.i.i158, label %_ZN10glTFCommonL15MemberOrDefaultIN5glTF213PrimitiveModeEEET_RN9rapidjson12GenericValueINS4_4UTF8IcEENS4_19MemoryPoolAllocatorINS4_12CrtAllocatorEEEEEPKcS3_.exit, label %bb.n

bb.n:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i
  %i.es = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 30
  %i.et = load i16, ptr %i.es, align 2
  %i.eu = and i16 %i.et, 32
  %.not1.i.i = icmp eq i16 %i.eu, 0
  br i1 %.not1.i.i, label %_ZN10glTFCommonL15MemberOrDefaultIN5glTF213PrimitiveModeEEET_RN9rapidjson12GenericValueINS4_4UTF8IcEENS4_19MemoryPoolAllocatorINS4_12CrtAllocatorEEEEEPKcS3_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ev = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %i.ew = load i32, ptr %i.ev, align 8
end_hunk_1
begin_hunk_2_@_ZN5glTF28Material4ReadERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEERNS_5AssetE:bb.a
  store float 0.000000e+00, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.h = load i64, ptr %i.g, align 8
  %i.i = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 noundef 0, i64 noundef %i.h, ptr noundef nonnull @.str.144, i64 noundef 6) ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  store float 5.000000e-01, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 596 ; 2 uses
  store i8 0, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1368 ; 2 uses
  store i8 0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 12 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef ptr @_ZN10glTFCommon19FindObjectInContextERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKcSA_SA_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.138, ptr noundef %i.n, ptr noundef %i.p) ; 8 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 14 ; 3 uses
  %i.s = load i16, ptr %i.r, align 2
  %i.t = icmp eq i16 %i.s, 3
  br i1 %i.t, label %bb.c, label %_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit128

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %25, i8 0, i64 16, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %25, i64 14
  store i16 1029, ptr %i.u, align 2
  %i.v = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = and i64 %i.x, -281474976710656
  %i.z = or i64 %i.y, ptrtoint (ptr @.str.135 to i64) ; 2 uses
  %i.aa = inttoptr i64 %i.z to ptr
  store ptr %i.aa, ptr %i.v, align 8
  store i32 15, ptr %25, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = ptrtoint ptr %i.ac to i64               ; 2 uses
  %i.ae = and i64 %i.ad, 281474976710655
  %i.af = inttoptr i64 %i.ae to ptr               ; 4 uses
  %i.ag = load i32, ptr %i.q, align 8             ; 2 uses
  %i.ah = zext i32 %i.ag to i64                   ; 2 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.ah, 5
  %i.ai = getelementptr i8, ptr %i.af, i64 %.idx.i.i.i.i ; 2 uses
  %.not9.i.i.i.i = icmp eq i32 %i.ag, 0
  %i.aj = lshr i64 %i.ad, 48
  %i.ak = trunc nuw i64 %i.aj to i16
  br i1 %.not9.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c
  %i.al = lshr i64 ptrtoint (ptr @.str.135 to i64), 40
  %i.am = trunc i64 %i.al to i8
  %i.an = and i64 %i.z, 1152921504606846976
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.an, 0      ; 2 uses
  %i.ao = sext i8 %i.am to i32
  %i.ap = sub nsw i32 13, %i.ao
  %i.aq = select i1 %.not.i.i.i.i.i.i.i, i32 15, i32 %i.ap ; 2 uses
  %i.ar = and i64 ptrtoint (ptr @.str.135 to i64), 281474976710655
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = select i1 %.not.i.i.i.i.i.i.i, ptr %i.as, ptr %25 ; 2 uses
  %i.au = zext i32 %i.aq to i64
  br label %bb.d

bb.d:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %.lr.ph.i.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i ], [ %i.bm, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 8 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 14
  %i.aw = load i16, ptr %i.av, align 2
  %i.ax = and i16 %i.aw, 4096
  %.not.i.i13.i.i.i.i.i = icmp eq i16 %i.ax, 0    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 13
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = sext i8 %i.az to i32
  %i.bb = sub nsw i32 13, %i.ba
  %i.bc = load i32, ptr %.010.i.i.i.i, align 8
  %i.bd = select i1 %.not.i.i13.i.i.i.i.i, i32 %i.bc, i32 %i.bb
  %.not.i.i.i.i.i = icmp eq i32 %i.aq, %i.bd
  br i1 %.not.i.i.i.i.i, label %bb.e, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = and i64 %i.bg, 281474976710655
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = select i1 %.not.i.i13.i.i.i.i.i, ptr %i.bi, ptr %.010.i.i.i.i ; 2 uses
  %i.bk = icmp eq ptr %i.at, %i.bj
  br i1 %i.bk, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i: ; preds = %bb.e
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %i.at, ptr %i.bj, i64 %i.au)
  %i.bl = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.bl, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.d
  %i.bm = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bm, %i.ai
  br i1 %.not.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %bb.d, !llvm.loop !219

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.e, %bb.c
  %.0.lcssa.i.i.i.i = phi ptr [ %i.af, %bb.c ], [ %.010.i.i.i.i, %bb.e ], [ %.010.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i ], [ %i.ai, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #34
  %i.bn = getelementptr inbounds nuw [32 x i8], ptr %i.af, i64 %i.ah
  %.not.i = icmp eq ptr %.0.lcssa.i.i.i.i, %i.bn
  br i1 %.not.i, label %_ZN10glTFCommonL10ReadMemberIA4_fEEbRN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEEPKcRT_.exit, label %bb.f

bb.f:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 16
  %i.bp = call noundef zeroext i1 @_ZN10glTFCommon10ReadHelperIA4_fE4ReadERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEERS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, ptr noundef nonnull align 4 dereferenceable(16) %i.a) ; 0 uses
  %.pr.pre = load i16, ptr %i.r, align 2
  br label %_ZN10glTFCommonL10ReadMemberIA4_fEEbRN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEEPKcRT_.exit

_ZN10glTFCommonL10ReadMemberIA4_fEEbRN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEEPKcRT_.exit: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, %bb.f
  %.pr = phi i16 [ %i.ak, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i ], [ %.pr.pre, %bb.f ]
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.br = icmp eq i16 %.pr, 3
  br i1 %i.br, label %bb.g, label %_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit128

bb.g:                                             ; preds = %_ZN10glTFCommonL10ReadMemberIA4_fEEbRN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEEPKcRT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %24, i8 0, i64 16, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %24, i64 14
  store i16 1029, ptr %i.bs, align 2
  %i.bt = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = and i64 %i.bv, -281474976710656
  %i.bx = or i64 %i.bw, ptrtoint (ptr @.str.133 to i64) ; 2 uses
  %i.by = inttoptr i64 %i.bx to ptr
  store ptr %i.by, ptr %i.bt, align 8
  store i32 16, ptr %24, align 8
  %i.bz = load ptr, ptr %i.ab, align 8
  %i.ca = ptrtoint ptr %i.bz to i64               ; 2 uses
  %i.cb = and i64 %i.ca, 281474976710655
  %i.cc = inttoptr i64 %i.cb to ptr               ; 4 uses
  %i.cd = load i32, ptr %i.q, align 8             ; 2 uses
  %i.ce = zext i32 %i.cd to i64                   ; 2 uses
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ce, 5
  %i.cf = getelementptr i8, ptr %i.cc, i64 %.idx.i.i.i.i.i ; 2 uses
  %.not9.i.i.i.i.i = icmp eq i32 %i.cd, 0
  %i.cg = lshr i64 %i.ca, 48
  %i.ch = trunc nuw i64 %i.cg to i16
  br i1 %.not9.i.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g
  %i.ci = lshr i64 ptrtoint (ptr @.str.133 to i64), 40
  %i.cj = trunc i64 %i.ci to i8
  %i.ck = and i64 %i.bx, 1152921504606846976
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.ck, 0    ; 2 uses
  %i.cl = sext i8 %i.cj to i32
  %i.cm = sub nsw i32 13, %i.cl
  %i.cn = select i1 %.not.i.i.i.i.i.i.i.i, i32 16, i32 %i.cm ; 2 uses
  %i.co = and i64 ptrtoint (ptr @.str.133 to i64), 281474976710655
  %i.cp = inttoptr i64 %i.co to ptr
  %i.cq = select i1 %.not.i.i.i.i.i.i.i.i, ptr %i.cp, ptr %24 ; 2 uses
  %i.cr = zext i32 %i.cn to i64
  br label %bb.h

bb.h:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.010.i.i.i.i.i = phi ptr [ %i.cc, %.lr.ph.i.i.i.i.i ], [ %i.dj, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i ] ; 8 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 14
  %i.ct = load i16, ptr %i.cs, align 2
  %i.cu = and i16 %i.ct, 4096
  %.not.i.i13.i.i.i.i.i.i = icmp eq i16 %i.cu, 0  ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 13
  %i.cw = load i8, ptr %i.cv, align 1
  %i.cx = sext i8 %i.cw to i32
  %i.cy = sub nsw i32 13, %i.cx
  %i.cz = load i32, ptr %.010.i.i.i.i.i, align 8
  %i.da = select i1 %.not.i.i13.i.i.i.i.i.i, i32 %i.cz, i32 %i.cy
  %.not.i.i.i.i.i.i = icmp eq i32 %i.cn, %i.da
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.db = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 8
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = and i64 %i.dd, 281474976710655
  %i.df = inttoptr i64 %i.de to ptr
  %i.dg = select i1 %.not.i.i13.i.i.i.i.i.i, ptr %i.df, ptr %.010.i.i.i.i.i ; 2 uses
  %i.dh = icmp eq ptr %i.cq, %i.dg
  br i1 %i.dh, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i: ; preds = %bb.i
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr %i.cq, ptr %i.dg, i64 %i.cr)
  %i.di = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.di, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i, %bb.h
  %i.dj = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i111 = icmp eq ptr %i.dj, %i.cf
  br i1 %.not.i.i.i.i.i111, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i, label %bb.h, !llvm.loop !219

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i, %bb.i, %bb.g
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.cc, %bb.g ], [ %i.cf, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i ], [ %.010.i.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i ], [ %.010.i.i.i.i.i, %bb.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #34
  %i.dk = getelementptr inbounds nuw [32 x i8], ptr %i.cc, i64 %i.ce
  %.not.i.i = icmp eq ptr %.0.lcssa.i.i.i.i.i, %i.dk
  br i1 %.not.i.i, label %_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit, label %_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.i

_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.i: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  call void @_ZN5glTF28Material20SetTexturePropertiesERNS_5AssetEPN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEERNS_11TextureInfoE(ptr noundef nonnull align 8 dereferenceable(1369) %0, ptr noundef nonnull align 8 dereferenceable(3624) %2, ptr noundef nonnull %i.dl, ptr noundef nonnull align 8 dereferenceable(48) %i.bq)
  %.pr482.pre = load i16, ptr %i.r, align 2
  br label %_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit

_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i, %_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.i
  %.pr482 = phi i16 [ %i.ch, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i ], [ %.pr482.pre, %_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.i ]
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.dn = icmp eq i16 %.pr482, 3
  br i1 %i.dn, label %bb.j, label %_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit128

bb.j:                                             ; preds = %_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %23, i8 0, i64 16, i1 false)
  %i.do = getelementptr inbounds nuw i8, ptr %23, i64 14
  store i16 1029, ptr %i.do, align 2
  %i.dp = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = and i64 %i.dr, -281474976710656
  %i.dt = or i64 %i.ds, ptrtoint (ptr @.str.134 to i64) ; 2 uses
  %i.du = inttoptr i64 %i.dt to ptr
  store ptr %i.du, ptr %i.dp, align 8
  store i32 24, ptr %23, align 8
  %i.dv = load ptr, ptr %i.ab, align 8
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = and i64 %i.dw, 281474976710655
  %i.dy = inttoptr i64 %i.dx to ptr               ; 4 uses
  %i.dz = load i32, ptr %i.q, align 8             ; 2 uses
  %i.ea = zext i32 %i.dz to i64                   ; 2 uses
  %.idx.i.i.i.i.i112 = shl nuw nsw i64 %i.ea, 5
  %i.eb = getelementptr i8, ptr %i.dy, i64 %.idx.i.i.i.i.i112 ; 2 uses
  %.not9.i.i.i.i.i113 = icmp eq i32 %i.dz, 0
  br i1 %.not9.i.i.i.i.i113, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i121, label %.lr.ph.i.i.i.i.i114

.lr.ph.i.i.i.i.i114:                              ; preds = %bb.j
  %i.ec = lshr i64 ptrtoint (ptr @.str.134 to i64), 40
  %i.ed = trunc i64 %i.ec to i8
  %i.ee = and i64 %i.dt, 1152921504606846976
  %.not.i.i.i.i.i.i.i.i115 = icmp eq i64 %i.ee, 0 ; 2 uses
  %i.ef = sext i8 %i.ed to i32
  %i.eg = sub nsw i32 13, %i.ef
  %i.eh = select i1 %.not.i.i.i.i.i.i.i.i115, i32 24, i32 %i.eg ; 2 uses
  %i.ei = and i64 ptrtoint (ptr @.str.134 to i64), 281474976710655
  %i.ej = inttoptr i64 %i.ei to ptr
  %i.ek = select i1 %.not.i.i.i.i.i.i.i.i115, ptr %i.ej, ptr %23 ; 2 uses
  %i.el = zext i32 %i.eh to i64
  br label %bb.k

bb.k:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i119, %.lr.ph.i.i.i.i.i114
  %.010.i.i.i.i.i116 = phi ptr [ %i.dy, %.lr.ph.i.i.i.i.i114 ], [ %i.fd, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i119 ] ; 8 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i116, i64 14
  %i.en = load i16, ptr %i.em, align 2
  %i.eo = and i16 %i.en, 4096
  %.not.i.i13.i.i.i.i.i.i117 = icmp eq i16 %i.eo, 0 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i116, i64 13
  %i.eq = load i8, ptr %i.ep, align 1
  %i.er = sext i8 %i.eq to i32
  %i.es = sub nsw i32 13, %i.er
  %i.et = load i32, ptr %.010.i.i.i.i.i116, align 8
  %i.eu = select i1 %.not.i.i13.i.i.i.i.i.i117, i32 %i.et, i32 %i.es
  %.not.i.i.i.i.i.i118 = icmp eq i32 %i.eh, %i.eu
  br i1 %.not.i.i.i.i.i.i118, label %bb.l, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i119

bb.l:                                             ; preds = %bb.k
  %i.ev = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i116, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8
  %i.ex = ptrtoint ptr %i.ew to i64
  %i.ey = and i64 %i.ex, 281474976710655
  %i.ez = inttoptr i64 %i.ey to ptr
  %i.fa = select i1 %.not.i.i13.i.i.i.i.i.i117, ptr %i.ez, ptr %.010.i.i.i.i.i116 ; 2 uses
  %i.fb = icmp eq ptr %i.ek, %i.fa
  br i1 %i.fb, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i121, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i126

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i126: ; preds = %bb.l
  %bcmp.i.i.i.i.i.i127 = call i32 @bcmp(ptr %i.ek, ptr %i.fa, i64 %i.el)
  %i.fc = icmp eq i32 %bcmp.i.i.i.i.i.i127, 0
  br i1 %i.fc, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i121, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i119

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i119: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i126, %bb.k
  %i.fd = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i116, i64 32 ; 2 uses
  %.not.i.i.i.i.i120 = icmp eq ptr %i.fd, %i.eb
  br i1 %.not.i.i.i.i.i120, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i121, label %bb.k, !llvm.loop !219

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i121: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i119, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i126, %bb.l, %bb.j
  %.0.lcssa.i.i.i.i.i122 = phi ptr [ %i.dy, %bb.j ], [ %i.eb, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i119 ], [ %.010.i.i.i.i.i116, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i126 ], [ %.010.i.i.i.i.i116, %bb.l ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #34
  %i.fe = getelementptr inbounds nuw [32 x i8], ptr %i.dy, i64 %i.ea
  %.not.i.i123 = icmp eq ptr %.0.lcssa.i.i.i.i.i122, %i.fe
  br i1 %.not.i.i123, label %_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit128, label %_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.i125

_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.i125: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i121
  %i.ff = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i122, i64 16
  call void @_ZN5glTF28Material20SetTexturePropertiesERNS_5AssetEPN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEERNS_11TextureInfoE(ptr noundef nonnull align 8 dereferenceable(1369) %0, ptr noundef nonnull align 8 dereferenceable(3624) %2, ptr noundef nonnull %i.ff, ptr noundef nonnull align 8 dereferenceable(48) %i.dm)
  br label %_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit128

_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit128: ; preds = %bb.b, %_ZN10glTFCommonL10ReadMemberIA4_fEEbRN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEEPKcRT_.exit, %_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i121, %_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.i125
  %i.fg = call fastcc noundef zeroext i1 @_ZN10glTFCommonL10ReadMemberIfEEbRN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEPKcRT_(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull @.str.136, ptr noundef nonnull align 4 dereferenceable(4) %i.b) ; 0 uses
  %i.fh = call fastcc noundef zeroext i1 @_ZN10glTFCommonL10ReadMemberIfEEbRN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEPKcRT_(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull @.str.137, ptr noundef nonnull align 4 dereferenceable(4) %i.c) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit128, %bb.a
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 384
  call void @_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_17NormalTextureInfoE(ptr noundef nonnull align 8 dereferenceable(1369) %0, ptr noundef nonnull align 8 dereferenceable(3624) %2, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.139, ptr noundef nonnull align 8 dereferenceable(52) %i.fi)
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 440
  call void @_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_20OcclusionTextureInfoE(ptr noundef nonnull align 8 dereferenceable(1369) %0, ptr noundef nonnull align 8 dereferenceable(3624) %2, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.141, ptr noundef nonnull align 8 dereferenceable(52) %i.fj)
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 14 ; 4 uses
  %i.fm = load i16, ptr %i.fl, align 2
  %i.fn = icmp eq i16 %i.fm, 3
  br i1 %i.fn, label %bb.n, label %_ZN10glTFCommonL10ReadMemberINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRN9rapidjson12GenericValueINS7_4UTF8IcEENS7_19MemoryPoolAllocatorINS7_12CrtAllocatorEEEEEPKcRT_.exit

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, i8 0, i64 16, i1 false)
  %i.fo = getelementptr inbounds nuw i8, ptr %22, i64 14
  store i16 1029, ptr %i.fo, align 2
  %i.fp = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8
  %i.fr = ptrtoint ptr %i.fq to i64
  %i.fs = and i64 %i.fr, -281474976710656
  %i.ft = or i64 %i.fs, ptrtoint (ptr @.str.140 to i64) ; 2 uses
  %i.fu = inttoptr i64 %i.ft to ptr
  store ptr %i.fu, ptr %i.fp, align 8
  store i32 15, ptr %22, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.fw = load ptr, ptr %i.fv, align 8
  %i.fx = ptrtoint ptr %i.fw to i64               ; 2 uses
  %i.fy = and i64 %i.fx, 281474976710655
  %i.fz = inttoptr i64 %i.fy to ptr               ; 4 uses
  %i.ga = load i32, ptr %1, align 8               ; 2 uses
  %i.gb = zext i32 %i.ga to i64                   ; 2 uses
  %.idx.i.i.i.i.i129 = shl nuw nsw i64 %i.gb, 5
  %i.gc = getelementptr i8, ptr %i.fz, i64 %.idx.i.i.i.i.i129 ; 2 uses
  %.not9.i.i.i.i.i130 = icmp eq i32 %i.ga, 0
  %i.gd = lshr i64 %i.fx, 48
  %i.ge = trunc nuw i64 %i.gd to i16
  br i1 %.not9.i.i.i.i.i130, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i138, label %.lr.ph.i.i.i.i.i131

.lr.ph.i.i.i.i.i131:                              ; preds = %bb.n
  %i.gf = lshr i64 ptrtoint (ptr @.str.140 to i64), 40
  %i.gg = trunc i64 %i.gf to i8
  %i.gh = and i64 %i.ft, 1152921504606846976
  %.not.i.i.i.i.i.i.i.i132 = icmp eq i64 %i.gh, 0 ; 2 uses
  %i.gi = sext i8 %i.gg to i32
  %i.gj = sub nsw i32 13, %i.gi
  %i.gk = select i1 %.not.i.i.i.i.i.i.i.i132, i32 15, i32 %i.gj ; 2 uses
  %i.gl = and i64 ptrtoint (ptr @.str.140 to i64), 281474976710655
  %i.gm = inttoptr i64 %i.gl to ptr
  %i.gn = select i1 %.not.i.i.i.i.i.i.i.i132, ptr %i.gm, ptr %22 ; 2 uses
  %i.go = zext i32 %i.gk to i64
  br label %bb.o

bb.o:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i136, %.lr.ph.i.i.i.i.i131
  %.010.i.i.i.i.i133 = phi ptr [ %i.fz, %.lr.ph.i.i.i.i.i131 ], [ %i.hg, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i136 ] ; 8 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i133, i64 14
  %i.gq = load i16, ptr %i.gp, align 2
  %i.gr = and i16 %i.gq, 4096
  %.not.i.i13.i.i.i.i.i.i134 = icmp eq i16 %i.gr, 0 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i133, i64 13
  %i.gt = load i8, ptr %i.gs, align 1
  %i.gu = sext i8 %i.gt to i32
  %i.gv = sub nsw i32 13, %i.gu
  %i.gw = load i32, ptr %.010.i.i.i.i.i133, align 8
  %i.gx = select i1 %.not.i.i13.i.i.i.i.i.i134, i32 %i.gw, i32 %i.gv
  %.not.i.i.i.i.i.i135 = icmp eq i32 %i.gk, %i.gx
  br i1 %.not.i.i.i.i.i.i135, label %bb.p, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i136

bb.p:                                             ; preds = %bb.o
  %i.gy = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i133, i64 8
  %i.gz = load ptr, ptr %i.gy, align 8
  %i.ha = ptrtoint ptr %i.gz to i64
  %i.hb = and i64 %i.ha, 281474976710655
  %i.hc = inttoptr i64 %i.hb to ptr
  %i.hd = select i1 %.not.i.i13.i.i.i.i.i.i134, ptr %i.hc, ptr %.010.i.i.i.i.i133 ; 2 uses
  %i.he = icmp eq ptr %i.gn, %i.hd
  br i1 %i.he, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i138, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i143

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i143: ; preds = %bb.p
  %bcmp.i.i.i.i.i.i144 = call i32 @bcmp(ptr %i.gn, ptr %i.hd, i64 %i.go)
  %i.hf = icmp eq i32 %bcmp.i.i.i.i.i.i144, 0
  br i1 %i.hf, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i138, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i136

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i136: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i143, %bb.o
  %i.hg = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i133, i64 32 ; 2 uses
  %.not.i.i.i.i.i137 = icmp eq ptr %i.hg, %i.gc
  br i1 %.not.i.i.i.i.i137, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i138, label %bb.o, !llvm.loop !219

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i138: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i136, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i143, %bb.p, %bb.n
  %.0.lcssa.i.i.i.i.i139 = phi ptr [ %i.fz, %bb.n ], [ %i.gc, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i136 ], [ %.010.i.i.i.i.i133, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i143 ], [ %.010.i.i.i.i.i133, %bb.p ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #34
  %i.hh = getelementptr inbounds nuw [32 x i8], ptr %i.fz, i64 %i.gb
  %.not.i.i140 = icmp eq ptr %.0.lcssa.i.i.i.i.i139, %i.hh
  br i1 %.not.i.i140, label %_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit145, label %_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.i142

_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.i142: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i138
  %i.hi = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i139, i64 16
  call void @_ZN5glTF28Material20SetTexturePropertiesERNS_5AssetEPN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEERNS_11TextureInfoE(ptr noundef nonnull align 8 dereferenceable(1369) %0, ptr noundef nonnull align 8 dereferenceable(3624) %2, ptr noundef nonnull %i.hi, ptr noundef nonnull align 8 dereferenceable(48) %i.fk)
  %.pr483.pre = load i16, ptr %i.fl, align 2
  br label %_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit145

_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit145: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i138, %_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.i142
  %.pr483 = phi i16 [ %i.ge, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i138 ], [ %.pr483.pre, %_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.i142 ]
  %i.hj = icmp eq i16 %.pr483, 3
  br i1 %i.hj, label %bb.q, label %_ZN10glTFCommonL10ReadMemberINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRN9rapidjson12GenericValueINS7_4UTF8IcEENS7_19MemoryPoolAllocatorINS7_12CrtAllocatorEEEEEPKcRT_.exit

bb.q:                                             ; preds = %_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit145
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, i8 0, i64 16, i1 false)
  %i.hk = getelementptr inbounds nuw i8, ptr %21, i64 14
  store i16 1029, ptr %i.hk, align 2
  %i.hl = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.hm = load ptr, ptr %i.hl, align 8
  %i.hn = ptrtoint ptr %i.hm to i64
  %i.ho = and i64 %i.hn, -281474976710656
  %i.hp = or i64 %i.ho, ptrtoint (ptr @.str.142 to i64) ; 2 uses
  %i.hq = inttoptr i64 %i.hp to ptr
  store ptr %i.hq, ptr %i.hl, align 8
  store i32 14, ptr %21, align 8
  %i.hr = load ptr, ptr %i.fv, align 8
  %i.hs = ptrtoint ptr %i.hr to i64               ; 2 uses
  %i.ht = and i64 %i.hs, 281474976710655
  %i.hu = inttoptr i64 %i.ht to ptr               ; 4 uses
  %i.hv = load i32, ptr %1, align 8               ; 2 uses
  %i.hw = zext i32 %i.hv to i64                   ; 2 uses
  %.idx.i.i.i.i147 = shl nuw nsw i64 %i.hw, 5
  %i.hx = getelementptr i8, ptr %i.hu, i64 %.idx.i.i.i.i147 ; 2 uses
  %.not9.i.i.i.i148 = icmp eq i32 %i.hv, 0
  %i.hy = lshr i64 %i.hs, 48
  %i.hz = trunc nuw i64 %i.hy to i16
  br i1 %.not9.i.i.i.i148, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i156, label %.lr.ph.i.i.i.i149

.lr.ph.i.i.i.i149:                                ; preds = %bb.q
  %i.ia = lshr i64 ptrtoint (ptr @.str.142 to i64), 40
  %i.ib = trunc i64 %i.ia to i8
  %i.ic = and i64 %i.hp, 1152921504606846976
  %.not.i.i.i.i.i.i.i150 = icmp eq i64 %i.ic, 0   ; 2 uses
  %i.id = sext i8 %i.ib to i32
  %i.ie = sub nsw i32 13, %i.id
  %i.if = select i1 %.not.i.i.i.i.i.i.i150, i32 14, i32 %i.ie ; 2 uses
  %i.ig = and i64 ptrtoint (ptr @.str.142 to i64), 281474976710655
  %i.ih = inttoptr i64 %i.ig to ptr
  %i.ii = select i1 %.not.i.i.i.i.i.i.i150, ptr %i.ih, ptr %21 ; 2 uses
  %i.ij = zext i32 %i.if to i64
  br label %bb.r

bb.r:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i154, %.lr.ph.i.i.i.i149
  %.010.i.i.i.i151 = phi ptr [ %i.hu, %.lr.ph.i.i.i.i149 ], [ %i.jb, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i154 ] ; 8 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i151, i64 14
  %i.il = load i16, ptr %i.ik, align 2
  %i.im = and i16 %i.il, 4096
  %.not.i.i13.i.i.i.i.i152 = icmp eq i16 %i.im, 0 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i151, i64 13
  %i.io = load i8, ptr %i.in, align 1
  %i.ip = sext i8 %i.io to i32
  %i.iq = sub nsw i32 13, %i.ip
  %i.ir = load i32, ptr %.010.i.i.i.i151, align 8
  %i.is = select i1 %.not.i.i13.i.i.i.i.i152, i32 %i.ir, i32 %i.iq
  %.not.i.i.i.i.i153 = icmp eq i32 %i.if, %i.is
  br i1 %.not.i.i.i.i.i153, label %bb.s, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i154

bb.s:                                             ; preds = %bb.r
  %i.it = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i151, i64 8
  %i.iu = load ptr, ptr %i.it, align 8
  %i.iv = ptrtoint ptr %i.iu to i64
  %i.iw = and i64 %i.iv, 281474976710655
  %i.ix = inttoptr i64 %i.iw to ptr
  %i.iy = select i1 %.not.i.i13.i.i.i.i.i152, ptr %i.ix, ptr %.010.i.i.i.i151 ; 2 uses
  %i.iz = icmp eq ptr %i.ii, %i.iy
  br i1 %i.iz, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i156, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i159

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i159: ; preds = %bb.s
  %bcmp.i.i.i.i.i160 = call i32 @bcmp(ptr %i.ii, ptr %i.iy, i64 %i.ij)
  %i.ja = icmp eq i32 %bcmp.i.i.i.i.i160, 0
  br i1 %i.ja, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i156, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i154

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i154: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i159, %bb.r
  %i.jb = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i151, i64 32 ; 2 uses
  %.not.i.i.i.i155 = icmp eq ptr %i.jb, %i.hx
  br i1 %.not.i.i.i.i155, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i156, label %bb.r, !llvm.loop !219

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i156: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i154, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i159, %bb.s, %bb.q
  %.0.lcssa.i.i.i.i157 = phi ptr [ %i.hu, %bb.q ], [ %.010.i.i.i.i151, %bb.s ], [ %.010.i.i.i.i151, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i159 ], [ %i.hx, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i154 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #34
  %i.jc = getelementptr inbounds nuw [32 x i8], ptr %i.hu, i64 %i.hw
  %.not.i158 = icmp eq ptr %.0.lcssa.i.i.i.i157, %i.jc
  br i1 %.not.i158, label %_ZN10glTFCommonL10ReadMemberIA3_fEEbRN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEEPKcRT_.exit, label %bb.t

bb.t:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i156
  %i.jd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i157, i64 16
  %i.je = call noundef zeroext i1 @_ZN10glTFCommon10ReadHelperIA3_fE4ReadERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEERS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.jd, ptr noundef nonnull align 4 dereferenceable(12) %i.d) ; 0 uses
  %.pr484.pre = load i16, ptr %i.fl, align 2
  br label %_ZN10glTFCommonL10ReadMemberIA3_fEEbRN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEEPKcRT_.exit

_ZN10glTFCommonL10ReadMemberIA3_fEEbRN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEEPKcRT_.exit: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i156, %bb.t
  %.pr484 = phi i16 [ %i.hz, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i156 ], [ %.pr484.pre, %bb.t ]
  %i.jf = icmp eq i16 %.pr484, 3
  br i1 %i.jf, label %bb.u, label %_ZN10glTFCommonL10ReadMemberINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRN9rapidjson12GenericValueINS7_4UTF8IcEENS7_19MemoryPoolAllocatorINS7_12CrtAllocatorEEEEEPKcRT_.exit

bb.u:                                             ; preds = %_ZN10glTFCommonL10ReadMemberIA3_fEEbRN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEEPKcRT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, i8 0, i64 16, i1 false)
  %i.jg = getelementptr inbounds nuw i8, ptr %20, i64 14
  store i16 1029, ptr %i.jg, align 2
  %i.jh = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.ji = load ptr, ptr %i.jh, align 8
  %i.jj = ptrtoint ptr %i.ji to i64
  %i.jk = and i64 %i.jj, -281474976710656
  %i.jl = or i64 %i.jk, ptrtoint (ptr @.str.146 to i64) ; 2 uses
  %i.jm = inttoptr i64 %i.jl to ptr
  store ptr %i.jm, ptr %i.jh, align 8
  store i32 11, ptr %20, align 8
  %i.jn = load ptr, ptr %i.fv, align 8
  %i.jo = ptrtoint ptr %i.jn to i64               ; 2 uses
  %i.jp = and i64 %i.jo, 281474976710655
  %i.jq = inttoptr i64 %i.jp to ptr               ; 4 uses
  %i.jr = load i32, ptr %1, align 8               ; 2 uses
  %i.js = zext i32 %i.jr to i64                   ; 2 uses
  %.idx.i.i.i.i162 = shl nuw nsw i64 %i.js, 5
  %i.jt = getelementptr i8, ptr %i.jq, i64 %.idx.i.i.i.i162 ; 2 uses
  %.not9.i.i.i.i163 = icmp eq i32 %i.jr, 0
  %i.ju = lshr i64 %i.jo, 48
  %i.jv = trunc nuw i64 %i.ju to i16              ; 2 uses
  br i1 %.not9.i.i.i.i163, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i171, label %.lr.ph.i.i.i.i164

.lr.ph.i.i.i.i164:                                ; preds = %bb.u
  %i.jw = lshr i64 ptrtoint (ptr @.str.146 to i64), 40
  %i.jx = trunc i64 %i.jw to i8
  %i.jy = and i64 %i.jl, 1152921504606846976
  %.not.i.i.i.i.i.i.i165 = icmp eq i64 %i.jy, 0   ; 2 uses
  %i.jz = sext i8 %i.jx to i32
  %i.ka = sub nsw i32 13, %i.jz
  %i.kb = select i1 %.not.i.i.i.i.i.i.i165, i32 11, i32 %i.ka ; 2 uses
  %i.kc = and i64 ptrtoint (ptr @.str.146 to i64), 281474976710655
  %i.kd = inttoptr i64 %i.kc to ptr
  %i.ke = select i1 %.not.i.i.i.i.i.i.i165, ptr %i.kd, ptr %20 ; 2 uses
  %i.kf = zext i32 %i.kb to i64
  br label %bb.v

bb.v:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i169, %.lr.ph.i.i.i.i164
  %.010.i.i.i.i166 = phi ptr [ %i.jq, %.lr.ph.i.i.i.i164 ], [ %i.kx, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i169 ] ; 8 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i166, i64 14
  %i.kh = load i16, ptr %i.kg, align 2
  %i.ki = and i16 %i.kh, 4096
  %.not.i.i13.i.i.i.i.i167 = icmp eq i16 %i.ki, 0 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i166, i64 13
  %i.kk = load i8, ptr %i.kj, align 1
  %i.kl = sext i8 %i.kk to i32
  %i.km = sub nsw i32 13, %i.kl
  %i.kn = load i32, ptr %.010.i.i.i.i166, align 8
  %i.ko = select i1 %.not.i.i13.i.i.i.i.i167, i32 %i.kn, i32 %i.km
  %.not.i.i.i.i.i168 = icmp eq i32 %i.kb, %i.ko
  br i1 %.not.i.i.i.i.i168, label %bb.w, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i169

bb.w:                                             ; preds = %bb.v
  %i.kp = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i166, i64 8
  %i.kq = load ptr, ptr %i.kp, align 8
  %i.kr = ptrtoint ptr %i.kq to i64
  %i.ks = and i64 %i.kr, 281474976710655
  %i.kt = inttoptr i64 %i.ks to ptr
  %i.ku = select i1 %.not.i.i13.i.i.i.i.i167, ptr %i.kt, ptr %.010.i.i.i.i166 ; 2 uses
  %i.kv = icmp eq ptr %i.ke, %i.ku
  br i1 %i.kv, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i171, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i174

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i174: ; preds = %bb.w
  %bcmp.i.i.i.i.i175 = call i32 @bcmp(ptr %i.ke, ptr %i.ku, i64 %i.kf)
  %i.kw = icmp eq i32 %bcmp.i.i.i.i.i175, 0
  br i1 %i.kw, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i171, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i169

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i169: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i174, %bb.v
  %i.kx = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i166, i64 32 ; 2 uses
  %.not.i.i.i.i170 = icmp eq ptr %i.kx, %i.jt
  br i1 %.not.i.i.i.i170, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i171, label %bb.v, !llvm.loop !219

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i171: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i169, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i174, %bb.w, %bb.u
  %.0.lcssa.i.i.i.i172 = phi ptr [ %i.jq, %bb.u ], [ %.010.i.i.i.i166, %bb.w ], [ %.010.i.i.i.i166, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i174 ], [ %i.jt, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i169 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #34
  %i.ky = getelementptr inbounds nuw [32 x i8], ptr %i.jq, i64 %i.js
  %.not.i173 = icmp eq ptr %.0.lcssa.i.i.i.i172, %i.ky
  br i1 %.not.i173, label %_ZN10glTFCommonL10ReadMemberIbEEbRN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEPKcRT_.exit, label %bb.x

bb.x:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i171
  %i.kz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i172, i64 30
  %i.la = load i16, ptr %i.kz, align 2            ; 2 uses
  %i.lb = and i16 %i.la, 8
  %.not1.i = icmp eq i16 %i.lb, 0
  br i1 %.not1.i, label %_ZN10glTFCommonL10ReadMemberIbEEbRN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEPKcRT_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.lc = icmp eq i16 %i.la, 10
  %i.ld = zext i1 %i.lc to i8
  store i8 %i.ld, ptr %i.k, align 4
  %.pr485.pr.pre = load i16, ptr %i.fl, align 2
  br label %_ZN10glTFCommonL10ReadMemberIbEEbRN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEPKcRT_.exit
end_hunk_2
begin_hunk_3_@_ZN5glTF28Material4ReadERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEERNS_5AssetE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #34
  %i.ni = getelementptr inbounds nuw i8, ptr %26, i64 32 ; 2 uses
  store ptr null, ptr %i.ni, align 16
  %i.nj = getelementptr inbounds nuw i8, ptr %26, i64 40
  store i32 0, ptr %i.nj, align 8
  %i.nk = getelementptr inbounds nuw i8, ptr %26, i64 52
  store i32 0, ptr %i.nk, align 4
  %i.nl = getelementptr inbounds nuw i8, ptr %26, i64 56
  store i8 0, ptr %i.nl, align 8
  %i.nm = getelementptr inbounds nuw i8, ptr %26, i64 80 ; 2 uses
  store ptr null, ptr %i.nm, align 16
  %i.nn = getelementptr inbounds nuw i8, ptr %26, i64 88
  store i32 0, ptr %i.nn, align 8
  %i.no = getelementptr inbounds nuw i8, ptr %26, i64 100
  store i32 0, ptr %i.no, align 4
  %i.np = getelementptr inbounds nuw i8, ptr %26, i64 104
  store i8 0, ptr %i.np, align 8
  store <4 x float> splat (float 1.000000e+00), ptr %26, align 16
  %i.nq = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %26, i64 28
  store <4 x float> splat (float 1.000000e+00), ptr %i.nq, align 16
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nh, i64 14 ; 4 uses
  %i.nt = load i16, ptr %i.ns, align 2
  %i.nu = icmp eq i16 %i.nt, 3
  br i1 %i.nu, label %bb.ag, label %_ZN10glTFCommonL10ReadMemberIA3_fEEbRN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEEPKcRT_.exit256

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, i8 0, i64 16, i1 false)
  %i.nv = getelementptr inbounds nuw i8, ptr %18, i64 14
  store i16 1029, ptr %i.nv, align 2
  %i.nw = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.nx = load ptr, ptr %i.nw, align 8
  %i.ny = ptrtoint ptr %i.nx to i64
  %i.nz = and i64 %i.ny, -281474976710656
  %i.oa = or i64 %i.nz, ptrtoint (ptr @.str.147 to i64) ; 2 uses
  %i.ob = inttoptr i64 %i.oa to ptr
  store ptr %i.ob, ptr %i.nw, align 8
  store i32 13, ptr %18, align 8
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nh, i64 8 ; 4 uses
  %i.od = load ptr, ptr %i.oc, align 8
  %i.oe = ptrtoint ptr %i.od to i64               ; 2 uses
  %i.of = and i64 %i.oe, 281474976710655
  %i.og = inttoptr i64 %i.of to ptr               ; 4 uses
  %i.oh = load i32, ptr %i.nh, align 8            ; 2 uses
  %i.oi = zext i32 %i.oh to i64                   ; 2 uses
  %.idx.i.i.i.i192 = shl nuw nsw i64 %i.oi, 5
  %i.oj = getelementptr i8, ptr %i.og, i64 %.idx.i.i.i.i192 ; 2 uses
  %.not9.i.i.i.i193 = icmp eq i32 %i.oh, 0
  %i.ok = lshr i64 %i.oe, 48
  %i.ol = trunc nuw i64 %i.ok to i16
  br i1 %.not9.i.i.i.i193, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i201, label %.lr.ph.i.i.i.i194

.lr.ph.i.i.i.i194:                                ; preds = %bb.ag
  %i.om = lshr i64 ptrtoint (ptr @.str.147 to i64), 40
  %i.on = trunc i64 %i.om to i8
  %i.oo = and i64 %i.oa, 1152921504606846976
  %.not.i.i.i.i.i.i.i195 = icmp eq i64 %i.oo, 0   ; 2 uses
  %i.op = sext i8 %i.on to i32
  %i.oq = sub nsw i32 13, %i.op
  %i.or = select i1 %.not.i.i.i.i.i.i.i195, i32 13, i32 %i.oq ; 2 uses
  %i.os = and i64 ptrtoint (ptr @.str.147 to i64), 281474976710655
  %i.ot = inttoptr i64 %i.os to ptr
  %i.ou = select i1 %.not.i.i.i.i.i.i.i195, ptr %i.ot, ptr %18 ; 2 uses
  %i.ov = zext i32 %i.or to i64
  br label %bb.ah

bb.ah:                                            ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i199, %.lr.ph.i.i.i.i194
  %.010.i.i.i.i196 = phi ptr [ %i.og, %.lr.ph.i.i.i.i194 ], [ %i.pn, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i199 ] ; 8 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i196, i64 14
  %i.ox = load i16, ptr %i.ow, align 2
  %i.oy = and i16 %i.ox, 4096
  %.not.i.i13.i.i.i.i.i197 = icmp eq i16 %i.oy, 0 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i196, i64 13
  %i.pa = load i8, ptr %i.oz, align 1
  %i.pb = sext i8 %i.pa to i32
  %i.pc = sub nsw i32 13, %i.pb
  %i.pd = load i32, ptr %.010.i.i.i.i196, align 8
  %i.pe = select i1 %.not.i.i13.i.i.i.i.i197, i32 %i.pd, i32 %i.pc
  %.not.i.i.i.i.i198 = icmp eq i32 %i.or, %i.pe
  br i1 %.not.i.i.i.i.i198, label %bb.ai, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i199

bb.ai:                                            ; preds = %bb.ah
  %i.pf = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i196, i64 8
  %i.pg = load ptr, ptr %i.pf, align 8
  %i.ph = ptrtoint ptr %i.pg to i64
  %i.pi = and i64 %i.ph, 281474976710655
  %i.pj = inttoptr i64 %i.pi to ptr
  %i.pk = select i1 %.not.i.i13.i.i.i.i.i197, ptr %i.pj, ptr %.010.i.i.i.i196 ; 2 uses
  %i.pl = icmp eq ptr %i.ou, %i.pk
  br i1 %i.pl, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i201, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i204

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i204: ; preds = %bb.ai
  %bcmp.i.i.i.i.i205 = call i32 @bcmp(ptr %i.ou, ptr %i.pk, i64 %i.ov)
  %i.pm = icmp eq i32 %bcmp.i.i.i.i.i205, 0
  br i1 %i.pm, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i201, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i199

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i199: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i204, %bb.ah
  %i.pn = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i196, i64 32 ; 2 uses
  %.not.i.i.i.i200 = icmp eq ptr %i.pn, %i.oj
  br i1 %.not.i.i.i.i200, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i201, label %bb.ah, !llvm.loop !219

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i201: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i199, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i204, %bb.ai, %bb.ag
  %.0.lcssa.i.i.i.i202 = phi ptr [ %i.og, %bb.ag ], [ %.010.i.i.i.i196, %bb.ai ], [ %.010.i.i.i.i196, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i204 ], [ %i.oj, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i199 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #34
  %i.po = getelementptr inbounds nuw [32 x i8], ptr %i.og, i64 %i.oi
  %.not.i203 = icmp eq ptr %.0.lcssa.i.i.i.i202, %i.po
  br i1 %.not.i203, label %_ZN10glTFCommonL10ReadMemberIA4_fEEbRN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEEPKcRT_.exit206, label %bb.aj

bb.aj:                                            ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i201
  %i.pp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i202, i64 16
  %i.pq = call noundef zeroext i1 @_ZN10glTFCommon10ReadHelperIA4_fE4ReadERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEERS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.pp, ptr noundef nonnull align 4 dereferenceable(16) %26) ; 0 uses
  %.pr486.pre = load i16, ptr %i.ns, align 2
  br label %_ZN10glTFCommonL10ReadMemberIA4_fEEbRN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEEPKcRT_.exit206

_ZN10glTFCommonL10ReadMemberIA4_fEEbRN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEEPKcRT_.exit206: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i201, %bb.aj
  %.pr486 = phi i16 [ %i.ol, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i201 ], [ %.pr486.pre, %bb.aj ]
  %i.pr = icmp eq i16 %.pr486, 3
  br i1 %i.pr, label %bb.ak, label %_ZN10glTFCommonL10ReadMemberIA3_fEEbRN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEEPKcRT_.exit256

bb.ak:                                            ; preds = %_ZN10glTFCommonL10ReadMemberIA4_fEEbRN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEEPKcRT_.exit206
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  %i.ps = getelementptr inbounds nuw i8, ptr %17, i64 14
  store i16 1029, ptr %i.ps, align 2
  %i.pt = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.pu = load ptr, ptr %i.pt, align 8
  %i.pv = ptrtoint ptr %i.pu to i64
  %i.pw = and i64 %i.pv, -281474976710656
  %i.px = or i64 %i.pw, ptrtoint (ptr @.str.150 to i64) ; 2 uses
  %i.py = inttoptr i64 %i.px to ptr
  store ptr %i.py, ptr %i.pt, align 8
  store i32 14, ptr %17, align 8
  %i.pz = load ptr, ptr %i.oc, align 8
  %i.qa = ptrtoint ptr %i.pz to i64               ; 2 uses
  %i.qb = and i64 %i.qa, 281474976710655
  %i.qc = inttoptr i64 %i.qb to ptr               ; 4 uses
  %i.qd = load i32, ptr %i.nh, align 8            ; 2 uses
  %i.qe = zext i32 %i.qd to i64                   ; 2 uses
  %.idx.i.i.i.i.i207 = shl nuw nsw i64 %i.qe, 5
  %i.qf = getelementptr i8, ptr %i.qc, i64 %.idx.i.i.i.i.i207 ; 2 uses
  %.not9.i.i.i.i.i208 = icmp eq i32 %i.qd, 0
  %i.qg = lshr i64 %i.qa, 48
  %i.qh = trunc nuw i64 %i.qg to i16
  br i1 %.not9.i.i.i.i.i208, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i216, label %.lr.ph.i.i.i.i.i209

.lr.ph.i.i.i.i.i209:                              ; preds = %bb.ak
  %i.qi = lshr i64 ptrtoint (ptr @.str.150 to i64), 40
  %i.qj = trunc i64 %i.qi to i8
  %i.qk = and i64 %i.px, 1152921504606846976
  %.not.i.i.i.i.i.i.i.i210 = icmp eq i64 %i.qk, 0 ; 2 uses
  %i.ql = sext i8 %i.qj to i32
  %i.qm = sub nsw i32 13, %i.ql
  %i.qn = select i1 %.not.i.i.i.i.i.i.i.i210, i32 14, i32 %i.qm ; 2 uses
  %i.qo = and i64 ptrtoint (ptr @.str.150 to i64), 281474976710655
  %i.qp = inttoptr i64 %i.qo to ptr
  %i.qq = select i1 %.not.i.i.i.i.i.i.i.i210, ptr %i.qp, ptr %17 ; 2 uses
  %i.qr = zext i32 %i.qn to i64
  br label %bb.al

bb.al:                                            ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i214, %.lr.ph.i.i.i.i.i209
  %.010.i.i.i.i.i211 = phi ptr [ %i.qc, %.lr.ph.i.i.i.i.i209 ], [ %i.rj, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i214 ] ; 8 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i211, i64 14
  %i.qt = load i16, ptr %i.qs, align 2
  %i.qu = and i16 %i.qt, 4096
  %.not.i.i13.i.i.i.i.i.i212 = icmp eq i16 %i.qu, 0 ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i211, i64 13
  %i.qw = load i8, ptr %i.qv, align 1
  %i.qx = sext i8 %i.qw to i32
  %i.qy = sub nsw i32 13, %i.qx
  %i.qz = load i32, ptr %.010.i.i.i.i.i211, align 8
  %i.ra = select i1 %.not.i.i13.i.i.i.i.i.i212, i32 %i.qz, i32 %i.qy
  %.not.i.i.i.i.i.i213 = icmp eq i32 %i.qn, %i.ra
  br i1 %.not.i.i.i.i.i.i213, label %bb.am, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i214

bb.am:                                            ; preds = %bb.al
  %i.rb = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i211, i64 8
  %i.rc = load ptr, ptr %i.rb, align 8
  %i.rd = ptrtoint ptr %i.rc to i64
  %i.re = and i64 %i.rd, 281474976710655
  %i.rf = inttoptr i64 %i.re to ptr
  %i.rg = select i1 %.not.i.i13.i.i.i.i.i.i212, ptr %i.rf, ptr %.010.i.i.i.i.i211 ; 2 uses
  %i.rh = icmp eq ptr %i.qq, %i.rg
  br i1 %i.rh, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i216, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i221

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i221: ; preds = %bb.am
  %bcmp.i.i.i.i.i.i222 = call i32 @bcmp(ptr %i.qq, ptr %i.rg, i64 %i.qr)
  %i.ri = icmp eq i32 %bcmp.i.i.i.i.i.i222, 0
  br i1 %i.ri, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i216, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i214

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i214: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i221, %bb.al
  %i.rj = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i211, i64 32 ; 2 uses
  %.not.i.i.i.i.i215 = icmp eq ptr %i.rj, %i.qf
  br i1 %.not.i.i.i.i.i215, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i216, label %bb.al, !llvm.loop !219

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i216: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i214, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i221, %bb.am, %bb.ak
  %.0.lcssa.i.i.i.i.i217 = phi ptr [ %i.qc, %bb.ak ], [ %i.qf, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i214 ], [ %.010.i.i.i.i.i211, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i221 ], [ %.010.i.i.i.i.i211, %bb.am ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #34
  %i.rk = getelementptr inbounds nuw [32 x i8], ptr %i.qc, i64 %i.qe
  %.not.i.i218 = icmp eq ptr %.0.lcssa.i.i.i.i.i217, %i.rk
  br i1 %.not.i.i218, label %_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit223, label %_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.i220

_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.i220: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i216
  %i.rl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i217, i64 16
  call void @_ZN5glTF28Material20SetTexturePropertiesERNS_5AssetEPN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEERNS_11TextureInfoE(ptr noundef nonnull align 8 dereferenceable(1369) %0, ptr noundef nonnull align 8 dereferenceable(3624) %2, ptr noundef nonnull %i.rl, ptr noundef nonnull align 8 dereferenceable(48) %i.ni)
  %.pr487.pre = load i16, ptr %i.ns, align 2
  br label %_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit223

_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit223: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i216, %_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.i220
  %.pr487 = phi i16 [ %i.qh, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i216 ], [ %.pr487.pre, %_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.i220 ]
  %i.rm = icmp eq i16 %.pr487, 3
  br i1 %i.rm, label %bb.an, label %_ZN10glTFCommonL10ReadMemberIA3_fEEbRN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEEPKcRT_.exit256

bb.an:                                            ; preds = %_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit223
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  %i.rn = getelementptr inbounds nuw i8, ptr %16, i64 14
  store i16 1029, ptr %i.rn, align 2
  %i.ro = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.rp = load ptr, ptr %i.ro, align 8
  %i.rq = ptrtoint ptr %i.rp to i64
  %i.rr = and i64 %i.rq, -281474976710656
  %i.rs = or i64 %i.rr, ptrtoint (ptr @.str.151 to i64) ; 2 uses
  %i.rt = inttoptr i64 %i.rs to ptr
  store ptr %i.rt, ptr %i.ro, align 8
  store i32 25, ptr %16, align 8
  %i.ru = load ptr, ptr %i.oc, align 8
  %i.rv = ptrtoint ptr %i.ru to i64               ; 2 uses
  %i.rw = and i64 %i.rv, 281474976710655
  %i.rx = inttoptr i64 %i.rw to ptr               ; 4 uses
  %i.ry = load i32, ptr %i.nh, align 8            ; 2 uses
  %i.rz = zext i32 %i.ry to i64                   ; 2 uses
  %.idx.i.i.i.i.i224 = shl nuw nsw i64 %i.rz, 5
  %i.sa = getelementptr i8, ptr %i.rx, i64 %.idx.i.i.i.i.i224 ; 2 uses
  %.not9.i.i.i.i.i225 = icmp eq i32 %i.ry, 0
  %i.sb = lshr i64 %i.rv, 48
  %i.sc = trunc nuw i64 %i.sb to i16
  br i1 %.not9.i.i.i.i.i225, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i233, label %.lr.ph.i.i.i.i.i226

.lr.ph.i.i.i.i.i226:                              ; preds = %bb.an
  %i.sd = lshr i64 ptrtoint (ptr @.str.151 to i64), 40
  %i.se = trunc i64 %i.sd to i8
  %i.sf = and i64 %i.rs, 1152921504606846976
  %.not.i.i.i.i.i.i.i.i227 = icmp eq i64 %i.sf, 0 ; 2 uses
  %i.sg = sext i8 %i.se to i32
  %i.sh = sub nsw i32 13, %i.sg
  %i.si = select i1 %.not.i.i.i.i.i.i.i.i227, i32 25, i32 %i.sh ; 2 uses
  %i.sj = and i64 ptrtoint (ptr @.str.151 to i64), 281474976710655
  %i.sk = inttoptr i64 %i.sj to ptr
  %i.sl = select i1 %.not.i.i.i.i.i.i.i.i227, ptr %i.sk, ptr %16 ; 2 uses
  %i.sm = zext i32 %i.si to i64
  br label %bb.ao

bb.ao:                                            ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i231, %.lr.ph.i.i.i.i.i226
  %.010.i.i.i.i.i228 = phi ptr [ %i.rx, %.lr.ph.i.i.i.i.i226 ], [ %i.te, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i231 ] ; 8 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i228, i64 14
  %i.so = load i16, ptr %i.sn, align 2
  %i.sp = and i16 %i.so, 4096
  %.not.i.i13.i.i.i.i.i.i229 = icmp eq i16 %i.sp, 0 ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i228, i64 13
  %i.sr = load i8, ptr %i.sq, align 1
  %i.ss = sext i8 %i.sr to i32
  %i.st = sub nsw i32 13, %i.ss
  %i.su = load i32, ptr %.010.i.i.i.i.i228, align 8
  %i.sv = select i1 %.not.i.i13.i.i.i.i.i.i229, i32 %i.su, i32 %i.st
  %.not.i.i.i.i.i.i230 = icmp eq i32 %i.si, %i.sv
  br i1 %.not.i.i.i.i.i.i230, label %bb.ap, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i231

bb.ap:                                            ; preds = %bb.ao
  %i.sw = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i228, i64 8
  %i.sx = load ptr, ptr %i.sw, align 8
  %i.sy = ptrtoint ptr %i.sx to i64
  %i.sz = and i64 %i.sy, 281474976710655
  %i.ta = inttoptr i64 %i.sz to ptr
  %i.tb = select i1 %.not.i.i13.i.i.i.i.i.i229, ptr %i.ta, ptr %.010.i.i.i.i.i228 ; 2 uses
  %i.tc = icmp eq ptr %i.sl, %i.tb
  br i1 %i.tc, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i233, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i238

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i238: ; preds = %bb.ap
  %bcmp.i.i.i.i.i.i239 = call i32 @bcmp(ptr %i.sl, ptr %i.tb, i64 %i.sm)
  %i.td = icmp eq i32 %bcmp.i.i.i.i.i.i239, 0
  br i1 %i.td, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i233, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i231

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i231: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i238, %bb.ao
  %i.te = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i228, i64 32 ; 2 uses
  %.not.i.i.i.i.i232 = icmp eq ptr %i.te, %i.sa
  br i1 %.not.i.i.i.i.i232, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i233, label %bb.ao, !llvm.loop !219

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i233: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i231, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i238, %bb.ap, %bb.an
  %.0.lcssa.i.i.i.i.i234 = phi ptr [ %i.rx, %bb.an ], [ %i.sa, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i231 ], [ %.010.i.i.i.i.i228, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i238 ], [ %.010.i.i.i.i.i228, %bb.ap ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #34
  %i.tf = getelementptr inbounds nuw [32 x i8], ptr %i.rx, i64 %i.rz
  %.not.i.i235 = icmp eq ptr %.0.lcssa.i.i.i.i.i234, %i.tf
  br i1 %.not.i.i235, label %_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit240, label %_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.i237

_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.i237: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i233
  %i.tg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i234, i64 16
  call void @_ZN5glTF28Material20SetTexturePropertiesERNS_5AssetEPN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEERNS_11TextureInfoE(ptr noundef nonnull align 8 dereferenceable(1369) %0, ptr noundef nonnull align 8 dereferenceable(3624) %2, ptr noundef nonnull %i.tg, ptr noundef nonnull align 8 dereferenceable(48) %i.nm)
  %.pr488.pr.pre = load i16, ptr %i.ns, align 2
  br label %_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit240

_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit240: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i233, %_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.i237
  %.pr488.pr = phi i16 [ %i.sc, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i233 ], [ %.pr488.pr.pre, %_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.i237 ]
  %i.th = icmp eq i16 %.pr488.pr, 3
  br i1 %i.th, label %bb.aq, label %_ZN10glTFCommonL10ReadMemberIA3_fEEbRN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEEPKcRT_.exit256

bb.aq:                                            ; preds = %_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit240
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  %i.ti = getelementptr inbounds nuw i8, ptr %15, i64 14
  store i16 1029, ptr %i.ti, align 2
  %i.tj = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.tk = load ptr, ptr %i.tj, align 8
  %i.tl = ptrtoint ptr %i.tk to i64
  %i.tm = and i64 %i.tl, -281474976710656
  %i.tn = or i64 %i.tm, ptrtoint (ptr @.str.148 to i64) ; 2 uses
  %i.to = inttoptr i64 %i.tn to ptr
  store ptr %i.to, ptr %i.tj, align 8
  store i32 14, ptr %15, align 8
  %i.tp = load ptr, ptr %i.oc, align 8
  %i.tq = ptrtoint ptr %i.tp to i64
  %i.tr = and i64 %i.tq, 281474976710655
  %i.ts = inttoptr i64 %i.tr to ptr               ; 4 uses
  %i.tt = load i32, ptr %i.nh, align 8            ; 2 uses
  %i.tu = zext i32 %i.tt to i64                   ; 2 uses
  %.idx.i.i.i.i242 = shl nuw nsw i64 %i.tu, 5
  %i.tv = getelementptr i8, ptr %i.ts, i64 %.idx.i.i.i.i242 ; 2 uses
  %.not9.i.i.i.i243 = icmp eq i32 %i.tt, 0
  br i1 %.not9.i.i.i.i243, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i251, label %.lr.ph.i.i.i.i244

.lr.ph.i.i.i.i244:                                ; preds = %bb.aq
  %i.tw = lshr i64 ptrtoint (ptr @.str.148 to i64), 40
  %i.tx = trunc i64 %i.tw to i8
  %i.ty = and i64 %i.tn, 1152921504606846976
  %.not.i.i.i.i.i.i.i245 = icmp eq i64 %i.ty, 0   ; 2 uses
  %i.tz = sext i8 %i.tx to i32
  %i.ua = sub nsw i32 13, %i.tz
  %i.ub = select i1 %.not.i.i.i.i.i.i.i245, i32 14, i32 %i.ua ; 2 uses
  %i.uc = and i64 ptrtoint (ptr @.str.148 to i64), 281474976710655
  %i.ud = inttoptr i64 %i.uc to ptr
  %i.ue = select i1 %.not.i.i.i.i.i.i.i245, ptr %i.ud, ptr %15 ; 2 uses
  %i.uf = zext i32 %i.ub to i64
  br label %bb.ar

bb.ar:                                            ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i249, %.lr.ph.i.i.i.i244
  %.010.i.i.i.i246 = phi ptr [ %i.ts, %.lr.ph.i.i.i.i244 ], [ %i.ux, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i249 ] ; 8 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i246, i64 14
  %i.uh = load i16, ptr %i.ug, align 2
  %i.ui = and i16 %i.uh, 4096
  %.not.i.i13.i.i.i.i.i247 = icmp eq i16 %i.ui, 0 ; 2 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i246, i64 13
  %i.uk = load i8, ptr %i.uj, align 1
  %i.ul = sext i8 %i.uk to i32
  %i.um = sub nsw i32 13, %i.ul
  %i.un = load i32, ptr %.010.i.i.i.i246, align 8
  %i.uo = select i1 %.not.i.i13.i.i.i.i.i247, i32 %i.un, i32 %i.um
  %.not.i.i.i.i.i248 = icmp eq i32 %i.ub, %i.uo
  br i1 %.not.i.i.i.i.i248, label %bb.as, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i249

bb.as:                                            ; preds = %bb.ar
  %i.up = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i246, i64 8
  %i.uq = load ptr, ptr %i.up, align 8
  %i.ur = ptrtoint ptr %i.uq to i64
  %i.us = and i64 %i.ur, 281474976710655
  %i.ut = inttoptr i64 %i.us to ptr
  %i.uu = select i1 %.not.i.i13.i.i.i.i.i247, ptr %i.ut, ptr %.010.i.i.i.i246 ; 2 uses
  %i.uv = icmp eq ptr %i.ue, %i.uu
  br i1 %i.uv, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i251, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i254

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i254: ; preds = %bb.as
  %bcmp.i.i.i.i.i255 = call i32 @bcmp(ptr %i.ue, ptr %i.uu, i64 %i.uf)
  %i.uw = icmp eq i32 %bcmp.i.i.i.i.i255, 0
  br i1 %i.uw, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i251, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i249

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i249: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i254, %bb.ar
  %i.ux = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i246, i64 32 ; 2 uses
  %.not.i.i.i.i250 = icmp eq ptr %i.ux, %i.tv
  br i1 %.not.i.i.i.i250, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i251, label %bb.ar, !llvm.loop !219

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i251: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i249, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i254, %bb.as, %bb.aq
  %.0.lcssa.i.i.i.i252 = phi ptr [ %i.ts, %bb.aq ], [ %.010.i.i.i.i246, %bb.as ], [ %.010.i.i.i.i246, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i254 ], [ %i.tv, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i249 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
  %i.uy = getelementptr inbounds nuw [32 x i8], ptr %i.ts, i64 %i.tu
  %.not.i253 = icmp eq ptr %.0.lcssa.i.i.i.i252, %i.uy
  br i1 %.not.i253, label %_ZN10glTFCommonL10ReadMemberIA3_fEEbRN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEEPKcRT_.exit256, label %bb.at

bb.at:                                            ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i251
  %i.uz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i252, i64 16
  %i.va = call noundef zeroext i1 @_ZN10glTFCommon10ReadHelperIA3_fE4ReadERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEERS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.uz, ptr noundef nonnull align 4 dereferenceable(12) %i.nq) ; 0 uses
  br label %_ZN10glTFCommonL10ReadMemberIA3_fEEbRN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEEPKcRT_.exit256

_ZN10glTFCommonL10ReadMemberIA3_fEEbRN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEEPKcRT_.exit256: ; preds = %_ZN10glTFCommonL10ReadMemberIA4_fEEbRN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEEPKcRT_.exit206, %bb.af, %_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit223, %_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit240, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i251, %bb.at
  %i.vb = call fastcc noundef zeroext i1 @_ZN10glTFCommonL10ReadMemberIfEEbRN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEPKcRT_(ptr noundef nonnull align 8 dereferenceable(16) %i.nh, ptr noundef nonnull @.str.149, ptr noundef nonnull align 4 dereferenceable(4) %i.nr) ; 0 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %0, i64 600
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.vc, ptr noundef nonnull align 16 dereferenceable(128) %26, i64 128, i1 false)
  %.sroa.4480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 728
  store i8 1, ptr %.sroa.4480.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #34
  br label %bb.au

bb.au:                                            ; preds = %bb.ae, %_ZN10glTFCommonL10ReadMemberIA3_fEEbRN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEEPKcRT_.exit256, %bb.ad
  %i.vd = getelementptr inbounds nuw i8, ptr %2, i64 25
  %i.ve = load i8, ptr %i.vd, align 1, !range !19, !noundef !20
  %i.vf = trunc nuw i8 %i.ve to i1
  br i1 %i.vf, label %bb.av, label %bb.bh

bb.av:                                            ; preds = %bb.au
  %i.vg = load ptr, ptr %i.m, align 8
  %i.vh = load ptr, ptr %i.o, align 8
  %i.vi = call noundef ptr @_ZN10glTFCommon19FindObjectInContextERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKcSA_SA_(ptr noundef nonnull align 8 dereferenceable(16) %i.nb, ptr noundef nonnull @.str.157, ptr noundef %i.vg, ptr noundef %i.vh) ; 7 uses
  %.not103 = icmp eq ptr %i.vi, null
  br i1 %.not103, label %bb.bh, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #34
  %i.vj = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  store ptr null, ptr %i.vj, align 16
  %i.vk = getelementptr inbounds nuw i8, ptr %27, i64 24
  store i32 0, ptr %i.vk, align 8
  %i.vl = getelementptr inbounds nuw i8, ptr %27, i64 36
  store i32 0, ptr %i.vl, align 4
  %i.vm = getelementptr inbounds nuw i8, ptr %27, i64 40
  store i8 0, ptr %i.vm, align 8
  %i.vn = getelementptr inbounds nuw i8, ptr %27, i64 64 ; 2 uses
  store ptr null, ptr %i.vn, align 16
  %i.vo = getelementptr inbounds nuw i8, ptr %27, i64 72
  store i32 0, ptr %i.vo, align 8
  %i.vp = getelementptr inbounds nuw i8, ptr %27, i64 84
  store i32 0, ptr %i.vp, align 4
  %i.vq = getelementptr inbounds nuw i8, ptr %27, i64 88
  store i8 0, ptr %i.vq, align 8
  %i.vr = getelementptr inbounds nuw i8, ptr %27, i64 4
  store <4 x float> splat (float 1.000000e+00), ptr %27, align 16
  %i.vs = call fastcc noundef zeroext i1 @_ZN10glTFCommonL10ReadMemberIfEEbRN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEPKcRT_(ptr noundef nonnull align 8 dereferenceable(16) %i.vi, ptr noundef nonnull @.str.148, ptr noundef nonnull align 4 dereferenceable(4) %27) ; 0 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vi, i64 14 ; 3 uses
  %i.vu = load i16, ptr %i.vt, align 2
  %i.vv = icmp eq i16 %i.vu, 3
  br i1 %i.vv, label %bb.ax, label %_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit306

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  %i.vw = getelementptr inbounds nuw i8, ptr %14, i64 14
  store i16 1029, ptr %i.vw, align 2
  %i.vx = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.vy = load ptr, ptr %i.vx, align 8
  %i.vz = ptrtoint ptr %i.vy to i64
  %i.wa = and i64 %i.vz, -281474976710656
  %i.wb = or i64 %i.wa, ptrtoint (ptr @.str.155 to i64) ; 2 uses
  %i.wc = inttoptr i64 %i.wb to ptr
  store ptr %i.wc, ptr %i.vx, align 8
  store i32 15, ptr %14, align 8
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vi, i64 8 ; 3 uses
  %i.we = load ptr, ptr %i.wd, align 8
  %i.wf = ptrtoint ptr %i.we to i64               ; 2 uses
  %i.wg = and i64 %i.wf, 281474976710655
  %i.wh = inttoptr i64 %i.wg to ptr               ; 4 uses
  %i.wi = load i32, ptr %i.vi, align 8            ; 2 uses
  %i.wj = zext i32 %i.wi to i64                   ; 2 uses
  %.idx.i.i.i.i.i257 = shl nuw nsw i64 %i.wj, 5
  %i.wk = getelementptr i8, ptr %i.wh, i64 %.idx.i.i.i.i.i257 ; 2 uses
  %.not9.i.i.i.i.i258 = icmp eq i32 %i.wi, 0
  %i.wl = lshr i64 %i.wf, 48
  %i.wm = trunc nuw i64 %i.wl to i16
  br i1 %.not9.i.i.i.i.i258, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i266, label %.lr.ph.i.i.i.i.i259

.lr.ph.i.i.i.i.i259:                              ; preds = %bb.ax
  %i.wn = lshr i64 ptrtoint (ptr @.str.155 to i64), 40
  %i.wo = trunc i64 %i.wn to i8
  %i.wp = and i64 %i.wb, 1152921504606846976
  %.not.i.i.i.i.i.i.i.i260 = icmp eq i64 %i.wp, 0 ; 2 uses
  %i.wq = sext i8 %i.wo to i32
  %i.wr = sub nsw i32 13, %i.wq
  %i.ws = select i1 %.not.i.i.i.i.i.i.i.i260, i32 15, i32 %i.wr ; 2 uses
  %i.wt = and i64 ptrtoint (ptr @.str.155 to i64), 281474976710655
  %i.wu = inttoptr i64 %i.wt to ptr
  %i.wv = select i1 %.not.i.i.i.i.i.i.i.i260, ptr %i.wu, ptr %14 ; 2 uses
  %i.ww = zext i32 %i.ws to i64
  br label %bb.ay

bb.ay:                                            ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i264, %.lr.ph.i.i.i.i.i259
  %.010.i.i.i.i.i261 = phi ptr [ %i.wh, %.lr.ph.i.i.i.i.i259 ], [ %i.xo, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i264 ] ; 8 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i261, i64 14
  %i.wy = load i16, ptr %i.wx, align 2
  %i.wz = and i16 %i.wy, 4096
  %.not.i.i13.i.i.i.i.i.i262 = icmp eq i16 %i.wz, 0 ; 2 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i261, i64 13
  %i.xb = load i8, ptr %i.xa, align 1
  %i.xc = sext i8 %i.xb to i32
  %i.xd = sub nsw i32 13, %i.xc
  %i.xe = load i32, ptr %.010.i.i.i.i.i261, align 8
  %i.xf = select i1 %.not.i.i13.i.i.i.i.i.i262, i32 %i.xe, i32 %i.xd
  %.not.i.i.i.i.i.i263 = icmp eq i32 %i.ws, %i.xf
  br i1 %.not.i.i.i.i.i.i263, label %bb.az, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i264

bb.az:                                            ; preds = %bb.ay
  %i.xg = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i261, i64 8
  %i.xh = load ptr, ptr %i.xg, align 8
  %i.xi = ptrtoint ptr %i.xh to i64
  %i.xj = and i64 %i.xi, 281474976710655
  %i.xk = inttoptr i64 %i.xj to ptr
  %i.xl = select i1 %.not.i.i13.i.i.i.i.i.i262, ptr %i.xk, ptr %.010.i.i.i.i.i261 ; 2 uses
  %i.xm = icmp eq ptr %i.wv, %i.xl
  br i1 %i.xm, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i266, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i271

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i271: ; preds = %bb.az
  %bcmp.i.i.i.i.i.i272 = call i32 @bcmp(ptr %i.wv, ptr %i.xl, i64 %i.ww)
  %i.xn = icmp eq i32 %bcmp.i.i.i.i.i.i272, 0
  br i1 %i.xn, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i266, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i264

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i264: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i271, %bb.ay
  %i.xo = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i261, i64 32 ; 2 uses
  %.not.i.i.i.i.i265 = icmp eq ptr %i.xo, %i.wk
  br i1 %.not.i.i.i.i.i265, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i266, label %bb.ay, !llvm.loop !219

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i266: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i264, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i271, %bb.az, %bb.ax
  %.0.lcssa.i.i.i.i.i267 = phi ptr [ %i.wh, %bb.ax ], [ %i.wk, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i264 ], [ %.010.i.i.i.i.i261, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i271 ], [ %.010.i.i.i.i.i261, %bb.az ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  %i.xp = getelementptr inbounds nuw [32 x i8], ptr %i.wh, i64 %i.wj
  %.not.i.i268 = icmp eq ptr %.0.lcssa.i.i.i.i.i267, %i.xp
  br i1 %.not.i.i268, label %_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit273, label %_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.i270

_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.i270: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i266
  %i.xq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i267, i64 16
  call void @_ZN5glTF28Material20SetTexturePropertiesERNS_5AssetEPN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEERNS_11TextureInfoE(ptr noundef nonnull align 8 dereferenceable(1369) %0, ptr noundef nonnull align 8 dereferenceable(3624) %2, ptr noundef nonnull %i.xq, ptr noundef nonnull align 8 dereferenceable(48) %i.vj)
  %.pr489.pre = load i16, ptr %i.vt, align 2
  br label %_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit273

_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit273: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i266, %_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.i270
  %.pr489 = phi i16 [ %i.wm, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i266 ], [ %.pr489.pre, %_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.i270 ]
  %i.xr = icmp eq i16 %.pr489, 3
  br i1 %i.xr, label %bb.ba, label %_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit306

bb.ba:                                            ; preds = %_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit273
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  %i.xs = getelementptr inbounds nuw i8, ptr %13, i64 14
  store i16 1029, ptr %i.xs, align 2
  %i.xt = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.xu = load ptr, ptr %i.xt, align 8
  %i.xv = ptrtoint ptr %i.xu to i64
  %i.xw = and i64 %i.xv, -281474976710656
  %i.xx = or i64 %i.xw, ptrtoint (ptr @.str.154 to i64) ; 2 uses
  %i.xy = inttoptr i64 %i.xx to ptr
  store ptr %i.xy, ptr %i.xt, align 8
  store i32 19, ptr %13, align 8
  %i.xz = load ptr, ptr %i.wd, align 8
  %i.ya = ptrtoint ptr %i.xz to i64               ; 2 uses
  %i.yb = and i64 %i.ya, 281474976710655
  %i.yc = inttoptr i64 %i.yb to ptr               ; 4 uses
  %i.yd = load i32, ptr %i.vi, align 8            ; 2 uses
  %i.ye = zext i32 %i.yd to i64                   ; 2 uses
  %.idx.i.i.i.i275 = shl nuw nsw i64 %i.ye, 5
  %i.yf = getelementptr i8, ptr %i.yc, i64 %.idx.i.i.i.i275 ; 2 uses
  %.not9.i.i.i.i276 = icmp eq i32 %i.yd, 0
  %i.yg = lshr i64 %i.ya, 48
  %i.yh = trunc nuw i64 %i.yg to i16
  br i1 %.not9.i.i.i.i276, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i284, label %.lr.ph.i.i.i.i277

.lr.ph.i.i.i.i277:                                ; preds = %bb.ba
  %i.yi = lshr i64 ptrtoint (ptr @.str.154 to i64), 40
  %i.yj = trunc i64 %i.yi to i8
  %i.yk = and i64 %i.xx, 1152921504606846976
  %.not.i.i.i.i.i.i.i278 = icmp eq i64 %i.yk, 0   ; 2 uses
  %i.yl = sext i8 %i.yj to i32
  %i.ym = sub nsw i32 13, %i.yl
  %i.yn = select i1 %.not.i.i.i.i.i.i.i278, i32 19, i32 %i.ym ; 2 uses
  %i.yo = and i64 ptrtoint (ptr @.str.154 to i64), 281474976710655
  %i.yp = inttoptr i64 %i.yo to ptr
  %i.yq = select i1 %.not.i.i.i.i.i.i.i278, ptr %i.yp, ptr %13 ; 2 uses
  %i.yr = zext i32 %i.yn to i64
  br label %bb.bb

bb.bb:                                            ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i282, %.lr.ph.i.i.i.i277
  %.010.i.i.i.i279 = phi ptr [ %i.yc, %.lr.ph.i.i.i.i277 ], [ %i.zj, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i282 ] ; 8 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i279, i64 14
  %i.yt = load i16, ptr %i.ys, align 2
  %i.yu = and i16 %i.yt, 4096
  %.not.i.i13.i.i.i.i.i280 = icmp eq i16 %i.yu, 0 ; 2 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i279, i64 13
  %i.yw = load i8, ptr %i.yv, align 1
  %i.yx = sext i8 %i.yw to i32
  %i.yy = sub nsw i32 13, %i.yx
  %i.yz = load i32, ptr %.010.i.i.i.i279, align 8
  %i.za = select i1 %.not.i.i13.i.i.i.i.i280, i32 %i.yz, i32 %i.yy
  %.not.i.i.i.i.i281 = icmp eq i32 %i.yn, %i.za
  br i1 %.not.i.i.i.i.i281, label %bb.bc, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i282

bb.bc:                                            ; preds = %bb.bb
  %i.zb = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i279, i64 8
  %i.zc = load ptr, ptr %i.zb, align 8
  %i.zd = ptrtoint ptr %i.zc to i64
  %i.ze = and i64 %i.zd, 281474976710655
  %i.zf = inttoptr i64 %i.ze to ptr
  %i.zg = select i1 %.not.i.i13.i.i.i.i.i280, ptr %i.zf, ptr %.010.i.i.i.i279 ; 2 uses
  %i.zh = icmp eq ptr %i.yq, %i.zg
  br i1 %i.zh, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i284, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i287

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i287: ; preds = %bb.bc
  %bcmp.i.i.i.i.i288 = call i32 @bcmp(ptr %i.yq, ptr %i.zg, i64 %i.yr)
  %i.zi = icmp eq i32 %bcmp.i.i.i.i.i288, 0
  br i1 %i.zi, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i284, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i282

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i282: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i287, %bb.bb
  %i.zj = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i279, i64 32 ; 2 uses
  %.not.i.i.i.i283 = icmp eq ptr %i.zj, %i.yf
  br i1 %.not.i.i.i.i283, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i284, label %bb.bb, !llvm.loop !219

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i284: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i282, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i287, %bb.bc, %bb.ba
  %.0.lcssa.i.i.i.i285 = phi ptr [ %i.yc, %bb.ba ], [ %.010.i.i.i.i279, %bb.bc ], [ %.010.i.i.i.i279, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i287 ], [ %i.yf, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i282 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  %i.zk = getelementptr inbounds nuw [32 x i8], ptr %i.yc, i64 %i.ye
  %.not.i286 = icmp eq ptr %.0.lcssa.i.i.i.i285, %i.zk
  br i1 %.not.i286, label %_ZN10glTFCommonL10ReadMemberIA3_fEEbRN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEEPKcRT_.exit289, label %bb.bd

bb.bd:                                            ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i284
  %i.zl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i285, i64 16
  %i.zm = call noundef zeroext i1 @_ZN10glTFCommon10ReadHelperIA3_fE4ReadERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEERS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.zl, ptr noundef nonnull align 4 dereferenceable(12) %i.vr) ; 0 uses
  %.pr490.pre = load i16, ptr %i.vt, align 2
  br label %_ZN10glTFCommonL10ReadMemberIA3_fEEbRN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEEPKcRT_.exit289

_ZN10glTFCommonL10ReadMemberIA3_fEEbRN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEEPKcRT_.exit289: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i284, %bb.bd
  %.pr490 = phi i16 [ %i.yh, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i284 ], [ %.pr490.pre, %bb.bd ]
  %i.zn = icmp eq i16 %.pr490, 3
  br i1 %i.zn, label %bb.be, label %_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit306

bb.be:                                            ; preds = %_ZN10glTFCommonL10ReadMemberIA3_fEEbRN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEEPKcRT_.exit289
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  %i.zo = getelementptr inbounds nuw i8, ptr %12, i64 14
  store i16 1029, ptr %i.zo, align 2
  %i.zp = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.zq = load ptr, ptr %i.zp, align 8
  %i.zr = ptrtoint ptr %i.zq to i64
  %i.zs = and i64 %i.zr, -281474976710656
  %i.zt = or i64 %i.zs, ptrtoint (ptr @.str.156 to i64) ; 2 uses
  %i.zu = inttoptr i64 %i.zt to ptr
  store ptr %i.zu, ptr %i.zp, align 8
  store i32 20, ptr %12, align 8
  %i.zv = load ptr, ptr %i.wd, align 8
  %i.zw = ptrtoint ptr %i.zv to i64
  %i.zx = and i64 %i.zw, 281474976710655
  %i.zy = inttoptr i64 %i.zx to ptr               ; 4 uses
  %i.zz = load i32, ptr %i.vi, align 8            ; 2 uses
  %i.aaa = zext i32 %i.zz to i64                  ; 2 uses
  %.idx.i.i.i.i.i290 = shl nuw nsw i64 %i.aaa, 5
  %i.aab = getelementptr i8, ptr %i.zy, i64 %.idx.i.i.i.i.i290 ; 2 uses
  %.not9.i.i.i.i.i291 = icmp eq i32 %i.zz, 0
  br i1 %.not9.i.i.i.i.i291, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i299, label %.lr.ph.i.i.i.i.i292

.lr.ph.i.i.i.i.i292:                              ; preds = %bb.be
  %i.aac = lshr i64 ptrtoint (ptr @.str.156 to i64), 40
  %i.aad = trunc i64 %i.aac to i8
  %i.aae = and i64 %i.zt, 1152921504606846976
  %.not.i.i.i.i.i.i.i.i293 = icmp eq i64 %i.aae, 0 ; 2 uses
  %i.aaf = sext i8 %i.aad to i32
  %i.aag = sub nsw i32 13, %i.aaf
  %i.aah = select i1 %.not.i.i.i.i.i.i.i.i293, i32 20, i32 %i.aag ; 2 uses
  %i.aai = and i64 ptrtoint (ptr @.str.156 to i64), 281474976710655
  %i.aaj = inttoptr i64 %i.aai to ptr
  %i.aak = select i1 %.not.i.i.i.i.i.i.i.i293, ptr %i.aaj, ptr %12 ; 2 uses
  %i.aal = zext i32 %i.aah to i64
  br label %bb.bf

bb.bf:                                            ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i297, %.lr.ph.i.i.i.i.i292
  %.010.i.i.i.i.i294 = phi ptr [ %i.zy, %.lr.ph.i.i.i.i.i292 ], [ %i.abd, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i297 ] ; 8 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i294, i64 14
  %i.aan = load i16, ptr %i.aam, align 2
  %i.aao = and i16 %i.aan, 4096
  %.not.i.i13.i.i.i.i.i.i295 = icmp eq i16 %i.aao, 0 ; 2 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i294, i64 13
  %i.aaq = load i8, ptr %i.aap, align 1
  %i.aar = sext i8 %i.aaq to i32
  %i.aas = sub nsw i32 13, %i.aar
  %i.aat = load i32, ptr %.010.i.i.i.i.i294, align 8
  %i.aau = select i1 %.not.i.i13.i.i.i.i.i.i295, i32 %i.aat, i32 %i.aas
  %.not.i.i.i.i.i.i296 = icmp eq i32 %i.aah, %i.aau
  br i1 %.not.i.i.i.i.i.i296, label %bb.bg, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i297

bb.bg:                                            ; preds = %bb.bf
  %i.aav = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i294, i64 8
  %i.aaw = load ptr, ptr %i.aav, align 8
  %i.aax = ptrtoint ptr %i.aaw to i64
  %i.aay = and i64 %i.aax, 281474976710655
  %i.aaz = inttoptr i64 %i.aay to ptr
  %i.aba = select i1 %.not.i.i13.i.i.i.i.i.i295, ptr %i.aaz, ptr %.010.i.i.i.i.i294 ; 2 uses
  %i.abb = icmp eq ptr %i.aak, %i.aba
  br i1 %i.abb, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i299, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i304

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i304: ; preds = %bb.bg
  %bcmp.i.i.i.i.i.i305 = call i32 @bcmp(ptr %i.aak, ptr %i.aba, i64 %i.aal)
  %i.abc = icmp eq i32 %bcmp.i.i.i.i.i.i305, 0
  br i1 %i.abc, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i299, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i297

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i297: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i304, %bb.bf
  %i.abd = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i294, i64 32 ; 2 uses
  %.not.i.i.i.i.i298 = icmp eq ptr %i.abd, %i.aab
  br i1 %.not.i.i.i.i.i298, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i299, label %bb.bf, !llvm.loop !219

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i299: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i297, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i304, %bb.bg, %bb.be
  %.0.lcssa.i.i.i.i.i300 = phi ptr [ %i.zy, %bb.be ], [ %i.aab, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i297 ], [ %.010.i.i.i.i.i294, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i304 ], [ %.010.i.i.i.i.i294, %bb.bg ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  %i.abe = getelementptr inbounds nuw [32 x i8], ptr %i.zy, i64 %i.aaa
  %.not.i.i301 = icmp eq ptr %.0.lcssa.i.i.i.i.i300, %i.abe
  br i1 %.not.i.i301, label %_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit306, label %_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.i303

_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.i303: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i299
  %i.abf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i300, i64 16
  call void @_ZN5glTF28Material20SetTexturePropertiesERNS_5AssetEPN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEERNS_11TextureInfoE(ptr noundef nonnull align 8 dereferenceable(1369) %0, ptr noundef nonnull align 8 dereferenceable(3624) %2, ptr noundef nonnull %i.abf, ptr noundef nonnull align 8 dereferenceable(48) %i.vn)
  br label %_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit306

_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit306: ; preds = %bb.aw, %_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit273, %_ZN10glTFCommonL10ReadMemberIA3_fEEbRN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEEPKcRT_.exit289, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i299, %_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.i303
  %i.abg = getelementptr inbounds nuw i8, ptr %0, i64 736
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.abg, ptr noundef nonnull align 16 dereferenceable(112) %27, i64 112, i1 false)
  %.sroa.4477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 848
  store i8 1, ptr %.sroa.4477.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #34
  br label %bb.bh

bb.bh:                                            ; preds = %bb.av, %_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit306, %bb.au
  %i.abh = getelementptr inbounds nuw i8, ptr %2, i64 29
  %i.abi = load i8, ptr %i.abh, align 1, !range !19, !noundef !20
  %i.abj = trunc nuw i8 %i.abi to i1
  br i1 %i.abj, label %bb.bi, label %bb.bu

bb.bi:                                            ; preds = %bb.bh
  %i.abk = load ptr, ptr %i.m, align 8
  %i.abl = load ptr, ptr %i.o, align 8
  %i.abm = call noundef ptr @_ZN10glTFCommon19FindObjectInContextERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKcSA_SA_(ptr noundef nonnull align 8 dereferenceable(16) %i.nb, ptr noundef nonnull @.str.162, ptr noundef %i.abk, ptr noundef %i.abl) ; 8 uses
  %.not104 = icmp eq ptr %i.abm, null
  br i1 %.not104, label %bb.bu, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #34
  %i.abn = getelementptr inbounds nuw i8, ptr %28, i64 36
  store i32 0, ptr %i.abn, align 4
  %i.abo = getelementptr inbounds nuw i8, ptr %28, i64 40
  store i8 0, ptr %i.abo, align 8
  %i.abp = getelementptr inbounds nuw i8, ptr %28, i64 64 ; 2 uses
  store ptr null, ptr %i.abp, align 8
  %i.abq = getelementptr inbounds nuw i8, ptr %28, i64 72
  store i32 0, ptr %i.abq, align 8
  %i.abr = getelementptr inbounds nuw i8, ptr %28, i64 84
  store i32 0, ptr %i.abr, align 4
  %i.abs = getelementptr inbounds nuw i8, ptr %28, i64 88
  store i8 0, ptr %i.abs, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %28, i8 0, i64 28, i1 false)
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abm, i64 14 ; 3 uses
  %i.abu = load i16, ptr %i.abt, align 2
  %i.abv = icmp eq i16 %i.abu, 3
  br i1 %i.abv, label %bb.bk, label %_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit339

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  %i.abw = getelementptr inbounds nuw i8, ptr %11, i64 14
  store i16 1029, ptr %i.abw, align 2
  %i.abx = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.aby = load ptr, ptr %i.abx, align 8
  %i.abz = ptrtoint ptr %i.aby to i64
  %i.aca = and i64 %i.abz, -281474976710656
  %i.acb = or i64 %i.aca, ptrtoint (ptr @.str.158 to i64) ; 2 uses
  %i.acc = inttoptr i64 %i.acb to ptr
  store ptr %i.acc, ptr %i.abx, align 8
  store i32 16, ptr %11, align 8
  %i.acd = getelementptr inbounds nuw i8, ptr %i.abm, i64 8 ; 2 uses
  %i.ace = load ptr, ptr %i.acd, align 8
  %i.acf = ptrtoint ptr %i.ace to i64             ; 2 uses
  %i.acg = and i64 %i.acf, 281474976710655
  %i.ach = inttoptr i64 %i.acg to ptr             ; 4 uses
  %i.aci = load i32, ptr %i.abm, align 8          ; 2 uses
  %i.acj = zext i32 %i.aci to i64                 ; 2 uses
  %.idx.i.i.i.i308 = shl nuw nsw i64 %i.acj, 5
  %i.ack = getelementptr i8, ptr %i.ach, i64 %.idx.i.i.i.i308 ; 2 uses
  %.not9.i.i.i.i309 = icmp eq i32 %i.aci, 0
  %i.acl = lshr i64 %i.acf, 48
  %i.acm = trunc nuw i64 %i.acl to i16
  br i1 %.not9.i.i.i.i309, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i317, label %.lr.ph.i.i.i.i310

.lr.ph.i.i.i.i310:                                ; preds = %bb.bk
  %i.acn = lshr i64 ptrtoint (ptr @.str.158 to i64), 40
  %i.aco = trunc i64 %i.acn to i8
  %i.acp = and i64 %i.acb, 1152921504606846976
  %.not.i.i.i.i.i.i.i311 = icmp eq i64 %i.acp, 0  ; 2 uses
  %i.acq = sext i8 %i.aco to i32
  %i.acr = sub nsw i32 13, %i.acq
  %i.acs = select i1 %.not.i.i.i.i.i.i.i311, i32 16, i32 %i.acr ; 2 uses
  %i.act = and i64 ptrtoint (ptr @.str.158 to i64), 281474976710655
  %i.acu = inttoptr i64 %i.act to ptr
  %i.acv = select i1 %.not.i.i.i.i.i.i.i311, ptr %i.acu, ptr %11 ; 2 uses
  %i.acw = zext i32 %i.acs to i64
  br label %bb.bl

bb.bl:                                            ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i315, %.lr.ph.i.i.i.i310
  %.010.i.i.i.i312 = phi ptr [ %i.ach, %.lr.ph.i.i.i.i310 ], [ %i.ado, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i315 ] ; 8 uses
  %i.acx = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i312, i64 14
  %i.acy = load i16, ptr %i.acx, align 2
  %i.acz = and i16 %i.acy, 4096
  %.not.i.i13.i.i.i.i.i313 = icmp eq i16 %i.acz, 0 ; 2 uses
  %i.ada = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i312, i64 13
  %i.adb = load i8, ptr %i.ada, align 1
  %i.adc = sext i8 %i.adb to i32
  %i.add = sub nsw i32 13, %i.adc
  %i.ade = load i32, ptr %.010.i.i.i.i312, align 8
  %i.adf = select i1 %.not.i.i13.i.i.i.i.i313, i32 %i.ade, i32 %i.add
  %.not.i.i.i.i.i314 = icmp eq i32 %i.acs, %i.adf
  br i1 %.not.i.i.i.i.i314, label %bb.bm, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i315

bb.bm:                                            ; preds = %bb.bl
  %i.adg = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i312, i64 8
  %i.adh = load ptr, ptr %i.adg, align 8
  %i.adi = ptrtoint ptr %i.adh to i64
  %i.adj = and i64 %i.adi, 281474976710655
  %i.adk = inttoptr i64 %i.adj to ptr
  %i.adl = select i1 %.not.i.i13.i.i.i.i.i313, ptr %i.adk, ptr %.010.i.i.i.i312 ; 2 uses
  %i.adm = icmp eq ptr %i.acv, %i.adl
  br i1 %i.adm, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i317, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i320

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i320: ; preds = %bb.bm
  %bcmp.i.i.i.i.i321 = call i32 @bcmp(ptr %i.acv, ptr %i.adl, i64 %i.acw)
  %i.adn = icmp eq i32 %bcmp.i.i.i.i.i321, 0
  br i1 %i.adn, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i317, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i315

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i315: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i320, %bb.bl
  %i.ado = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i312, i64 32 ; 2 uses
  %.not.i.i.i.i316 = icmp eq ptr %i.ado, %i.ack
  br i1 %.not.i.i.i.i316, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i317, label %bb.bl, !llvm.loop !219

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i317: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i315, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i320, %bb.bm, %bb.bk
  %.0.lcssa.i.i.i.i318 = phi ptr [ %i.ach, %bb.bk ], [ %.010.i.i.i.i312, %bb.bm ], [ %.010.i.i.i.i312, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i320 ], [ %i.ack, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i315 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  %i.adp = getelementptr inbounds nuw [32 x i8], ptr %i.ach, i64 %i.acj
  %.not.i319 = icmp eq ptr %.0.lcssa.i.i.i.i318, %i.adp
  br i1 %.not.i319, label %_ZN10glTFCommonL10ReadMemberIA3_fEEbRN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEEPKcRT_.exit322, label %bb.bn

bb.bn:                                            ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i317
  %i.adq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i318, i64 16
  %i.adr = call noundef zeroext i1 @_ZN10glTFCommon10ReadHelperIA3_fE4ReadERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEERS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.adq, ptr noundef nonnull align 4 dereferenceable(12) %28) ; 0 uses
  %.pr491.pre = load i16, ptr %i.abt, align 2
  br label %_ZN10glTFCommonL10ReadMemberIA3_fEEbRN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEEPKcRT_.exit322

_ZN10glTFCommonL10ReadMemberIA3_fEEbRN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEEPKcRT_.exit322: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i317, %bb.bn
  %.pr491 = phi i16 [ %i.acm, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i317 ], [ %.pr491.pre, %bb.bn ]
  %i.ads = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.adt = icmp eq i16 %.pr491, 3
  br i1 %i.adt, label %bb.bo, label %_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit339

bb.bo:                                            ; preds = %_ZN10glTFCommonL10ReadMemberIA3_fEEbRN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEEPKcRT_.exit322
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  %i.adu = getelementptr inbounds nuw i8, ptr %10, i64 14
  store i16 1029, ptr %i.adu, align 2
  %i.adv = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.adw = load ptr, ptr %i.adv, align 8
  %i.adx = ptrtoint ptr %i.adw to i64
  %i.ady = and i64 %i.adx, -281474976710656
  %i.adz = or i64 %i.ady, ptrtoint (ptr @.str.160 to i64) ; 2 uses
  %i.aea = inttoptr i64 %i.adz to ptr
  store ptr %i.aea, ptr %i.adv, align 8
  store i32 17, ptr %10, align 8
  %i.aeb = load ptr, ptr %i.acd, align 8
  %i.aec = ptrtoint ptr %i.aeb to i64
  %i.aed = and i64 %i.aec, 281474976710655
  %i.aee = inttoptr i64 %i.aed to ptr             ; 4 uses
  %i.aef = load i32, ptr %i.abm, align 8          ; 2 uses
  %i.aeg = zext i32 %i.aef to i64                 ; 2 uses
  %.idx.i.i.i.i.i323 = shl nuw nsw i64 %i.aeg, 5
  %i.aeh = getelementptr i8, ptr %i.aee, i64 %.idx.i.i.i.i.i323 ; 2 uses
  %.not9.i.i.i.i.i324 = icmp eq i32 %i.aef, 0
  br i1 %.not9.i.i.i.i.i324, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i332, label %.lr.ph.i.i.i.i.i325

.lr.ph.i.i.i.i.i325:                              ; preds = %bb.bo
  %i.aei = lshr i64 ptrtoint (ptr @.str.160 to i64), 40
  %i.aej = trunc i64 %i.aei to i8
  %i.aek = and i64 %i.adz, 1152921504606846976
  %.not.i.i.i.i.i.i.i.i326 = icmp eq i64 %i.aek, 0 ; 2 uses
  %i.ael = sext i8 %i.aej to i32
  %i.aem = sub nsw i32 13, %i.ael
  %i.aen = select i1 %.not.i.i.i.i.i.i.i.i326, i32 17, i32 %i.aem ; 2 uses
  %i.aeo = and i64 ptrtoint (ptr @.str.160 to i64), 281474976710655
  %i.aep = inttoptr i64 %i.aeo to ptr
  %i.aeq = select i1 %.not.i.i.i.i.i.i.i.i326, ptr %i.aep, ptr %10 ; 2 uses
  %i.aer = zext i32 %i.aen to i64
  br label %bb.bp

bb.bp:                                            ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i330, %.lr.ph.i.i.i.i.i325
  %.010.i.i.i.i.i327 = phi ptr [ %i.aee, %.lr.ph.i.i.i.i.i325 ], [ %i.afj, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i330 ] ; 8 uses
  %i.aes = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i327, i64 14
  %i.aet = load i16, ptr %i.aes, align 2
  %i.aeu = and i16 %i.aet, 4096
  %.not.i.i13.i.i.i.i.i.i328 = icmp eq i16 %i.aeu, 0 ; 2 uses
  %i.aev = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i327, i64 13
  %i.aew = load i8, ptr %i.aev, align 1
  %i.aex = sext i8 %i.aew to i32
  %i.aey = sub nsw i32 13, %i.aex
  %i.aez = load i32, ptr %.010.i.i.i.i.i327, align 8
  %i.afa = select i1 %.not.i.i13.i.i.i.i.i.i328, i32 %i.aez, i32 %i.aey
  %.not.i.i.i.i.i.i329 = icmp eq i32 %i.aen, %i.afa
  br i1 %.not.i.i.i.i.i.i329, label %bb.bq, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i330

bb.bq:                                            ; preds = %bb.bp
  %i.afb = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i327, i64 8
  %i.afc = load ptr, ptr %i.afb, align 8
  %i.afd = ptrtoint ptr %i.afc to i64
  %i.afe = and i64 %i.afd, 281474976710655
  %i.aff = inttoptr i64 %i.afe to ptr
  %i.afg = select i1 %.not.i.i13.i.i.i.i.i.i328, ptr %i.aff, ptr %.010.i.i.i.i.i327 ; 2 uses
  %i.afh = icmp eq ptr %i.aeq, %i.afg
  br i1 %i.afh, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i332, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i337

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i337: ; preds = %bb.bq
  %bcmp.i.i.i.i.i.i338 = call i32 @bcmp(ptr %i.aeq, ptr %i.afg, i64 %i.aer)
  %i.afi = icmp eq i32 %bcmp.i.i.i.i.i.i338, 0
  br i1 %i.afi, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i332, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i330

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i330: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i337, %bb.bp
  %i.afj = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i327, i64 32 ; 2 uses
  %.not.i.i.i.i.i331 = icmp eq ptr %i.afj, %i.aeh
  br i1 %.not.i.i.i.i.i331, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i332, label %bb.bp, !llvm.loop !219

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i332: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i330, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i337, %bb.bq, %bb.bo
  %.0.lcssa.i.i.i.i.i333 = phi ptr [ %i.aee, %bb.bo ], [ %i.aeh, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i330 ], [ %.010.i.i.i.i.i327, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i337 ], [ %.010.i.i.i.i.i327, %bb.bq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  %i.afk = getelementptr inbounds nuw [32 x i8], ptr %i.aee, i64 %i.aeg
  %.not.i.i334 = icmp eq ptr %.0.lcssa.i.i.i.i.i333, %i.afk
  br i1 %.not.i.i334, label %_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit339, label %_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.i336

_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.i336: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i332
  %i.afl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i333, i64 16
  call void @_ZN5glTF28Material20SetTexturePropertiesERNS_5AssetEPN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEERNS_11TextureInfoE(ptr noundef nonnull align 8 dereferenceable(1369) %0, ptr noundef nonnull align 8 dereferenceable(3624) %2, ptr noundef nonnull %i.afl, ptr noundef nonnull align 8 dereferenceable(48) %i.ads)
  br label %_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit339

_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit339: ; preds = %bb.bj, %_ZN10glTFCommonL10ReadMemberIA3_fEEbRN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEEPKcRT_.exit322, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i332, %_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.i336
  %i.afm = getelementptr inbounds nuw i8, ptr %28, i64 12
  %i.afn = call fastcc noundef zeroext i1 @_ZN10glTFCommonL10ReadMemberIfEEbRN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEPKcRT_(ptr noundef nonnull align 8 dereferenceable(16) %i.abm, ptr noundef nonnull @.str.159, ptr noundef nonnull align 4 dereferenceable(4) %i.afm) ; 0 uses
  %i.afo = load i16, ptr %i.abt, align 2
  %i.afp = icmp eq i16 %i.afo, 3
  br i1 %i.afp, label %bb.br, label %_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit356

bb.br:                                            ; preds = %_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit339
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %i.afq = getelementptr inbounds nuw i8, ptr %9, i64 14
  store i16 1029, ptr %i.afq, align 2
  %i.afr = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.afs = load ptr, ptr %i.afr, align 8
  %i.aft = ptrtoint ptr %i.afs to i64
  %i.afu = and i64 %i.aft, -281474976710656
  %i.afv = or i64 %i.afu, ptrtoint (ptr @.str.161 to i64) ; 2 uses
  %i.afw = inttoptr i64 %i.afv to ptr
  store ptr %i.afw, ptr %i.afr, align 8
  store i32 21, ptr %9, align 8
  %i.afx = getelementptr inbounds nuw i8, ptr %i.abm, i64 8
  %i.afy = load ptr, ptr %i.afx, align 8
  %i.afz = ptrtoint ptr %i.afy to i64
  %i.aga = and i64 %i.afz, 281474976710655
  %i.agb = inttoptr i64 %i.aga to ptr             ; 4 uses
  %i.agc = load i32, ptr %i.abm, align 8          ; 2 uses
  %i.agd = zext i32 %i.agc to i64                 ; 2 uses
  %.idx.i.i.i.i.i340 = shl nuw nsw i64 %i.agd, 5
  %i.age = getelementptr i8, ptr %i.agb, i64 %.idx.i.i.i.i.i340 ; 2 uses
  %.not9.i.i.i.i.i341 = icmp eq i32 %i.agc, 0
  br i1 %.not9.i.i.i.i.i341, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i349, label %.lr.ph.i.i.i.i.i342

.lr.ph.i.i.i.i.i342:                              ; preds = %bb.br
  %i.agf = lshr i64 ptrtoint (ptr @.str.161 to i64), 40
  %i.agg = trunc i64 %i.agf to i8
  %i.agh = and i64 %i.afv, 1152921504606846976
  %.not.i.i.i.i.i.i.i.i343 = icmp eq i64 %i.agh, 0 ; 2 uses
  %i.agi = sext i8 %i.agg to i32
  %i.agj = sub nsw i32 13, %i.agi
  %i.agk = select i1 %.not.i.i.i.i.i.i.i.i343, i32 21, i32 %i.agj ; 2 uses
  %i.agl = and i64 ptrtoint (ptr @.str.161 to i64), 281474976710655
  %i.agm = inttoptr i64 %i.agl to ptr
  %i.agn = select i1 %.not.i.i.i.i.i.i.i.i343, ptr %i.agm, ptr %9 ; 2 uses
  %i.ago = zext i32 %i.agk to i64
  br label %bb.bs

bb.bs:                                            ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i347, %.lr.ph.i.i.i.i.i342
  %.010.i.i.i.i.i344 = phi ptr [ %i.agb, %.lr.ph.i.i.i.i.i342 ], [ %i.ahg, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i347 ] ; 8 uses
  %i.agp = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i344, i64 14
  %i.agq = load i16, ptr %i.agp, align 2
  %i.agr = and i16 %i.agq, 4096
  %.not.i.i13.i.i.i.i.i.i345 = icmp eq i16 %i.agr, 0 ; 2 uses
  %i.ags = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i344, i64 13
  %i.agt = load i8, ptr %i.ags, align 1
  %i.agu = sext i8 %i.agt to i32
  %i.agv = sub nsw i32 13, %i.agu
  %i.agw = load i32, ptr %.010.i.i.i.i.i344, align 8
  %i.agx = select i1 %.not.i.i13.i.i.i.i.i.i345, i32 %i.agw, i32 %i.agv
  %.not.i.i.i.i.i.i346 = icmp eq i32 %i.agk, %i.agx
  br i1 %.not.i.i.i.i.i.i346, label %bb.bt, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i347

bb.bt:                                            ; preds = %bb.bs
  %i.agy = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i344, i64 8
  %i.agz = load ptr, ptr %i.agy, align 8
  %i.aha = ptrtoint ptr %i.agz to i64
  %i.ahb = and i64 %i.aha, 281474976710655
  %i.ahc = inttoptr i64 %i.ahb to ptr
  %i.ahd = select i1 %.not.i.i13.i.i.i.i.i.i345, ptr %i.ahc, ptr %.010.i.i.i.i.i344 ; 2 uses
  %i.ahe = icmp eq ptr %i.agn, %i.ahd
  br i1 %i.ahe, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i349, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i354

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i354: ; preds = %bb.bt
  %bcmp.i.i.i.i.i.i355 = call i32 @bcmp(ptr %i.agn, ptr %i.ahd, i64 %i.ago)
  %i.ahf = icmp eq i32 %bcmp.i.i.i.i.i.i355, 0
  br i1 %i.ahf, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i349, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i347

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i347: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i354, %bb.bs
  %i.ahg = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i344, i64 32 ; 2 uses
  %.not.i.i.i.i.i348 = icmp eq ptr %i.ahg, %i.age
  br i1 %.not.i.i.i.i.i348, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i349, label %bb.bs, !llvm.loop !219

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i349: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i347, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i354, %bb.bt, %bb.br
  %.0.lcssa.i.i.i.i.i350 = phi ptr [ %i.agb, %bb.br ], [ %i.age, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i347 ], [ %.010.i.i.i.i.i344, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i354 ], [ %.010.i.i.i.i.i344, %bb.bt ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  %i.ahh = getelementptr inbounds nuw [32 x i8], ptr %i.agb, i64 %i.agd
  %.not.i.i351 = icmp eq ptr %.0.lcssa.i.i.i.i.i350, %i.ahh
  br i1 %.not.i.i351, label %_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit356, label %_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.i353

_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.i353: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i349
  %i.ahi = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i350, i64 16
  call void @_ZN5glTF28Material20SetTexturePropertiesERNS_5AssetEPN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEERNS_11TextureInfoE(ptr noundef nonnull align 8 dereferenceable(1369) %0, ptr noundef nonnull align 8 dereferenceable(3624) %2, ptr noundef nonnull %i.ahi, ptr noundef nonnull align 8 dereferenceable(48) %i.abp)
  br label %_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit356

_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit356: ; preds = %_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit339, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i349, %_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.i353
  %i.ahj = getelementptr inbounds nuw i8, ptr %0, i64 856
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ahj, ptr noundef nonnull align 8 dereferenceable(112) %28, i64 112, i1 false)
  %.sroa.4474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 968
  store i8 1, ptr %.sroa.4474.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #34
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bi, %_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit356, %bb.bh
  %i.ahk = getelementptr inbounds nuw i8, ptr %2, i64 30
  %i.ahl = load i8, ptr %i.ahk, align 2, !range !19, !noundef !20
  %i.ahm = trunc nuw i8 %i.ahl to i1
  br i1 %i.ahm, label %bb.bv, label %bb.cd

bb.bv:                                            ; preds = %bb.bu
  %i.ahn = load ptr, ptr %i.m, align 8
  %i.aho = load ptr, ptr %i.o, align 8
  %i.ahp = call noundef ptr @_ZN10glTFCommon19FindObjectInContextERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKcSA_SA_(ptr noundef nonnull align 8 dereferenceable(16) %i.nb, ptr noundef nonnull @.str.168, ptr noundef %i.ahn, ptr noundef %i.aho) ; 9 uses
  %.not105 = icmp eq ptr %i.ahp, null
  br i1 %.not105, label %bb.cd, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #34
  %i.ahq = getelementptr inbounds nuw i8, ptr %29, i64 28
  store i32 0, ptr %i.ahq, align 4
  %i.ahr = getelementptr inbounds nuw i8, ptr %29, i64 32
  store i8 0, ptr %i.ahr, align 8
  %i.ahs = getelementptr inbounds nuw i8, ptr %29, i64 56 ; 2 uses
  store ptr null, ptr %i.ahs, align 8
  %i.aht = getelementptr inbounds nuw i8, ptr %29, i64 64
  store i32 0, ptr %i.aht, align 8
  %i.ahu = getelementptr inbounds nuw i8, ptr %29, i64 76
  store i32 0, ptr %i.ahu, align 4
  %i.ahv = getelementptr inbounds nuw i8, ptr %29, i64 80
  store i8 0, ptr %i.ahv, align 8
  %i.ahw = getelementptr inbounds nuw i8, ptr %29, i64 104 ; 2 uses
  store ptr null, ptr %i.ahw, align 8
  %i.ahx = getelementptr inbounds nuw i8, ptr %29, i64 112
  store i32 0, ptr %i.ahx, align 8
  %i.ahy = getelementptr inbounds nuw i8, ptr %29, i64 124
  store i32 0, ptr %i.ahy, align 4
  %i.ahz = getelementptr inbounds nuw i8, ptr %29, i64 128
  store i8 0, ptr %i.ahz, align 8
  %i.aia = getelementptr inbounds nuw i8, ptr %29, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %29, i8 0, i64 20, i1 false)
  store float 1.000000e+00, ptr %i.aia, align 8
  %i.aib = call fastcc noundef zeroext i1 @_ZN10glTFCommonL10ReadMemberIfEEbRN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEPKcRT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ahp, ptr noundef nonnull @.str.163, ptr noundef nonnull align 4 dereferenceable(4) %29) ; 0 uses
  %i.aic = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.aid = getelementptr inbounds nuw i8, ptr %i.ahp, i64 14 ; 2 uses
  %i.aie = load i16, ptr %i.aid, align 2
  %i.aif = icmp eq i16 %i.aie, 3
  br i1 %i.aif, label %bb.bx, label %_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit373

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %i.aig = getelementptr inbounds nuw i8, ptr %8, i64 14
  store i16 1029, ptr %i.aig, align 2
  %i.aih = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.aii = load ptr, ptr %i.aih, align 8
  %i.aij = ptrtoint ptr %i.aii to i64
  %i.aik = and i64 %i.aij, -281474976710656
  %i.ail = or i64 %i.aik, ptrtoint (ptr @.str.165 to i64) ; 2 uses
  %i.aim = inttoptr i64 %i.ail to ptr
  store ptr %i.aim, ptr %i.aih, align 8
  store i32 16, ptr %8, align 8
  %i.ain = getelementptr inbounds nuw i8, ptr %i.ahp, i64 8
  %i.aio = load ptr, ptr %i.ain, align 8
  %i.aip = ptrtoint ptr %i.aio to i64
  %i.aiq = and i64 %i.aip, 281474976710655
  %i.air = inttoptr i64 %i.aiq to ptr             ; 4 uses
  %i.ais = load i32, ptr %i.ahp, align 8          ; 2 uses
  %i.ait = zext i32 %i.ais to i64                 ; 2 uses
  %.idx.i.i.i.i.i357 = shl nuw nsw i64 %i.ait, 5
  %i.aiu = getelementptr i8, ptr %i.air, i64 %.idx.i.i.i.i.i357 ; 2 uses
  %.not9.i.i.i.i.i358 = icmp eq i32 %i.ais, 0
  br i1 %.not9.i.i.i.i.i358, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i366, label %.lr.ph.i.i.i.i.i359

.lr.ph.i.i.i.i.i359:                              ; preds = %bb.bx
  %i.aiv = lshr i64 ptrtoint (ptr @.str.165 to i64), 40
  %i.aiw = trunc i64 %i.aiv to i8
  %i.aix = and i64 %i.ail, 1152921504606846976
  %.not.i.i.i.i.i.i.i.i360 = icmp eq i64 %i.aix, 0 ; 2 uses
  %i.aiy = sext i8 %i.aiw to i32
  %i.aiz = sub nsw i32 13, %i.aiy
  %i.aja = select i1 %.not.i.i.i.i.i.i.i.i360, i32 16, i32 %i.aiz ; 2 uses
  %i.ajb = and i64 ptrtoint (ptr @.str.165 to i64), 281474976710655
  %i.ajc = inttoptr i64 %i.ajb to ptr
  %i.ajd = select i1 %.not.i.i.i.i.i.i.i.i360, ptr %i.ajc, ptr %8 ; 2 uses
  %i.aje = zext i32 %i.aja to i64
  br label %bb.by

bb.by:                                            ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i364, %.lr.ph.i.i.i.i.i359
  %.010.i.i.i.i.i361 = phi ptr [ %i.air, %.lr.ph.i.i.i.i.i359 ], [ %i.ajw, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i364 ] ; 8 uses
  %i.ajf = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i361, i64 14
  %i.ajg = load i16, ptr %i.ajf, align 2
  %i.ajh = and i16 %i.ajg, 4096
  %.not.i.i13.i.i.i.i.i.i362 = icmp eq i16 %i.ajh, 0 ; 2 uses
  %i.aji = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i361, i64 13
  %i.ajj = load i8, ptr %i.aji, align 1
  %i.ajk = sext i8 %i.ajj to i32
  %i.ajl = sub nsw i32 13, %i.ajk
  %i.ajm = load i32, ptr %.010.i.i.i.i.i361, align 8
  %i.ajn = select i1 %.not.i.i13.i.i.i.i.i.i362, i32 %i.ajm, i32 %i.ajl
  %.not.i.i.i.i.i.i363 = icmp eq i32 %i.aja, %i.ajn
  br i1 %.not.i.i.i.i.i.i363, label %bb.bz, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i364

bb.bz:                                            ; preds = %bb.by
  %i.ajo = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i361, i64 8
  %i.ajp = load ptr, ptr %i.ajo, align 8
  %i.ajq = ptrtoint ptr %i.ajp to i64
  %i.ajr = and i64 %i.ajq, 281474976710655
  %i.ajs = inttoptr i64 %i.ajr to ptr
  %i.ajt = select i1 %.not.i.i13.i.i.i.i.i.i362, ptr %i.ajs, ptr %.010.i.i.i.i.i361 ; 2 uses
  %i.aju = icmp eq ptr %i.ajd, %i.ajt
  br i1 %i.aju, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i366, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i371

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i371: ; preds = %bb.bz
  %bcmp.i.i.i.i.i.i372 = call i32 @bcmp(ptr %i.ajd, ptr %i.ajt, i64 %i.aje)
  %i.ajv = icmp eq i32 %bcmp.i.i.i.i.i.i372, 0
  br i1 %i.ajv, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i366, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i364

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i364: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i371, %bb.by
  %i.ajw = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i361, i64 32 ; 2 uses
  %.not.i.i.i.i.i365 = icmp eq ptr %i.ajw, %i.aiu
  br i1 %.not.i.i.i.i.i365, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i366, label %bb.by, !llvm.loop !219

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i366: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i364, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i371, %bb.bz, %bb.bx
  %.0.lcssa.i.i.i.i.i367 = phi ptr [ %i.air, %bb.bx ], [ %i.aiu, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i364 ], [ %.010.i.i.i.i.i361, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i371 ], [ %.010.i.i.i.i.i361, %bb.bz ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  %i.ajx = getelementptr inbounds nuw [32 x i8], ptr %i.air, i64 %i.ait
  %.not.i.i368 = icmp eq ptr %.0.lcssa.i.i.i.i.i367, %i.ajx
  br i1 %.not.i.i368, label %_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit373, label %_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.i370

_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.i370: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i366
  %i.ajy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i367, i64 16
  call void @_ZN5glTF28Material20SetTexturePropertiesERNS_5AssetEPN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEERNS_11TextureInfoE(ptr noundef nonnull align 8 dereferenceable(1369) %0, ptr noundef nonnull align 8 dereferenceable(3624) %2, ptr noundef nonnull %i.ajy, ptr noundef nonnull align 8 dereferenceable(48) %i.aic)
  br label %_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit373

_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit373: ; preds = %bb.bw, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i366, %_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.i370
  %i.ajz = getelementptr inbounds nuw i8, ptr %29, i64 4
  %i.aka = call fastcc noundef zeroext i1 @_ZN10glTFCommonL10ReadMemberIfEEbRN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEPKcRT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ahp, ptr noundef nonnull @.str.164, ptr noundef nonnull align 4 dereferenceable(4) %i.ajz) ; 0 uses
  %i.akb = load i16, ptr %i.aid, align 2
  %i.akc = icmp eq i16 %i.akb, 3
  br i1 %i.akc, label %bb.ca, label %_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit390

bb.ca:                                            ; preds = %_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit373
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %i.akd = getelementptr inbounds nuw i8, ptr %7, i64 14
  store i16 1029, ptr %i.akd, align 2
  %i.ake = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.akf = load ptr, ptr %i.ake, align 8
  %i.akg = ptrtoint ptr %i.akf to i64
  %i.akh = and i64 %i.akg, -281474976710656
  %i.aki = or i64 %i.akh, ptrtoint (ptr @.str.166 to i64) ; 2 uses
  %i.akj = inttoptr i64 %i.aki to ptr
  store ptr %i.akj, ptr %i.ake, align 8
  store i32 25, ptr %7, align 8
  %i.akk = getelementptr inbounds nuw i8, ptr %i.ahp, i64 8
  %i.akl = load ptr, ptr %i.akk, align 8
  %i.akm = ptrtoint ptr %i.akl to i64
  %i.akn = and i64 %i.akm, 281474976710655
  %i.ako = inttoptr i64 %i.akn to ptr             ; 4 uses
  %i.akp = load i32, ptr %i.ahp, align 8          ; 2 uses
  %i.akq = zext i32 %i.akp to i64                 ; 2 uses
  %.idx.i.i.i.i.i374 = shl nuw nsw i64 %i.akq, 5
  %i.akr = getelementptr i8, ptr %i.ako, i64 %.idx.i.i.i.i.i374 ; 2 uses
  %.not9.i.i.i.i.i375 = icmp eq i32 %i.akp, 0
  br i1 %.not9.i.i.i.i.i375, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i383, label %.lr.ph.i.i.i.i.i376

.lr.ph.i.i.i.i.i376:                              ; preds = %bb.ca
  %i.aks = lshr i64 ptrtoint (ptr @.str.166 to i64), 40
  %i.akt = trunc i64 %i.aks to i8
  %i.aku = and i64 %i.aki, 1152921504606846976
  %.not.i.i.i.i.i.i.i.i377 = icmp eq i64 %i.aku, 0 ; 2 uses
  %i.akv = sext i8 %i.akt to i32
  %i.akw = sub nsw i32 13, %i.akv
  %i.akx = select i1 %.not.i.i.i.i.i.i.i.i377, i32 25, i32 %i.akw ; 2 uses
  %i.aky = and i64 ptrtoint (ptr @.str.166 to i64), 281474976710655
  %i.akz = inttoptr i64 %i.aky to ptr
  %i.ala = select i1 %.not.i.i.i.i.i.i.i.i377, ptr %i.akz, ptr %7 ; 2 uses
  %i.alb = zext i32 %i.akx to i64
  br label %bb.cb

bb.cb:                                            ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i381, %.lr.ph.i.i.i.i.i376
  %.010.i.i.i.i.i378 = phi ptr [ %i.ako, %.lr.ph.i.i.i.i.i376 ], [ %i.alt, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i381 ] ; 8 uses
  %i.alc = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i378, i64 14
  %i.ald = load i16, ptr %i.alc, align 2
  %i.ale = and i16 %i.ald, 4096
  %.not.i.i13.i.i.i.i.i.i379 = icmp eq i16 %i.ale, 0 ; 2 uses
  %i.alf = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i378, i64 13
  %i.alg = load i8, ptr %i.alf, align 1
  %i.alh = sext i8 %i.alg to i32
  %i.ali = sub nsw i32 13, %i.alh
  %i.alj = load i32, ptr %.010.i.i.i.i.i378, align 8
  %i.alk = select i1 %.not.i.i13.i.i.i.i.i.i379, i32 %i.alj, i32 %i.ali
  %.not.i.i.i.i.i.i380 = icmp eq i32 %i.akx, %i.alk
  br i1 %.not.i.i.i.i.i.i380, label %bb.cc, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i381

bb.cc:                                            ; preds = %bb.cb
  %i.all = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i378, i64 8
  %i.alm = load ptr, ptr %i.all, align 8
  %i.aln = ptrtoint ptr %i.alm to i64
  %i.alo = and i64 %i.aln, 281474976710655
  %i.alp = inttoptr i64 %i.alo to ptr
  %i.alq = select i1 %.not.i.i13.i.i.i.i.i.i379, ptr %i.alp, ptr %.010.i.i.i.i.i378 ; 2 uses
  %i.alr = icmp eq ptr %i.ala, %i.alq
  br i1 %i.alr, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i383, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i388

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i388: ; preds = %bb.cc
  %bcmp.i.i.i.i.i.i389 = call i32 @bcmp(ptr %i.ala, ptr %i.alq, i64 %i.alb)
  %i.als = icmp eq i32 %bcmp.i.i.i.i.i.i389, 0
  br i1 %i.als, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i383, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i381

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i381: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i388, %bb.cb
  %i.alt = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i378, i64 32 ; 2 uses
  %.not.i.i.i.i.i382 = icmp eq ptr %i.alt, %i.akr
  br i1 %.not.i.i.i.i.i382, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i383, label %bb.cb, !llvm.loop !219

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i383: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i381, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i388, %bb.cc, %bb.ca
  %.0.lcssa.i.i.i.i.i384 = phi ptr [ %i.ako, %bb.ca ], [ %i.akr, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i381 ], [ %.010.i.i.i.i.i378, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i388 ], [ %.010.i.i.i.i.i378, %bb.cc ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  %i.alu = getelementptr inbounds nuw [32 x i8], ptr %i.ako, i64 %i.akq
  %.not.i.i385 = icmp eq ptr %.0.lcssa.i.i.i.i.i384, %i.alu
  br i1 %.not.i.i385, label %_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit390, label %_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.i387

_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.i387: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i383
  %i.alv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i384, i64 16
  call void @_ZN5glTF28Material20SetTexturePropertiesERNS_5AssetEPN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEERNS_11TextureInfoE(ptr noundef nonnull align 8 dereferenceable(1369) %0, ptr noundef nonnull align 8 dereferenceable(3624) %2, ptr noundef nonnull %i.alv, ptr noundef nonnull align 8 dereferenceable(48) %i.ahs)
  br label %_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit390

_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit390: ; preds = %_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit373, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i383, %_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.i387
  call void @_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_17NormalTextureInfoE(ptr noundef nonnull align 8 dereferenceable(1369) %0, ptr noundef nonnull align 8 dereferenceable(3624) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.ahp, ptr noundef nonnull @.str.167, ptr noundef nonnull align 8 dereferenceable(52) %i.ahw)
  %i.alw = getelementptr inbounds nuw i8, ptr %0, i64 976
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.alw, ptr noundef nonnull align 8 dereferenceable(160) %29, i64 160, i1 false)
  %.sroa.4471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1136
  store i8 1, ptr %.sroa.4471.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #34
  br label %bb.cd

bb.cd:                                            ; preds = %bb.bv, %_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit390, %bb.bu
  %i.alx = getelementptr inbounds nuw i8, ptr %2, i64 31
  %i.aly = load i8, ptr %i.alx, align 1, !range !19, !noundef !20
  %i.alz = trunc nuw i8 %i.aly to i1
  br i1 %i.alz, label %bb.ce, label %bb.cj

bb.ce:                                            ; preds = %bb.cd
  %i.ama = load ptr, ptr %i.m, align 8
  %i.amb = load ptr, ptr %i.o, align 8
  %i.amc = call noundef ptr @_ZN10glTFCommon19FindObjectInContextERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKcSA_SA_(ptr noundef nonnull align 8 dereferenceable(16) %i.nb, ptr noundef nonnull @.str.171, ptr noundef %i.ama, ptr noundef %i.amb) ; 5 uses
  %.not106 = icmp eq ptr %i.amc, null
  br i1 %.not106, label %bb.cj, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #34
  store ptr null, ptr %30, align 8
  %i.amd = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i32 0, ptr %i.amd, align 8
  %i.ame = getelementptr inbounds nuw i8, ptr %30, i64 20
  store i32 0, ptr %i.ame, align 4
  %i.amf = getelementptr inbounds nuw i8, ptr %30, i64 24
  store i8 0, ptr %i.amf, align 8
  %i.amg = getelementptr inbounds nuw i8, ptr %30, i64 48 ; 2 uses
  store float 0.000000e+00, ptr %i.amg, align 8
  %i.amh = call fastcc noundef zeroext i1 @_ZN10glTFCommonL10ReadMemberIfEEbRN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEPKcRT_(ptr noundef nonnull align 8 dereferenceable(16) %i.amc, ptr noundef nonnull @.str.169, ptr noundef nonnull align 4 dereferenceable(4) %i.amg) ; 0 uses
  %i.ami = getelementptr inbounds nuw i8, ptr %i.amc, i64 14
  %i.amj = load i16, ptr %i.ami, align 2
  %i.amk = icmp eq i16 %i.amj, 3
  br i1 %i.amk, label %bb.cg, label %_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit407

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.aml = getelementptr inbounds nuw i8, ptr %6, i64 14
  store i16 1029, ptr %i.aml, align 2
  %i.amm = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.amn = load ptr, ptr %i.amm, align 8
  %i.amo = ptrtoint ptr %i.amn to i64
  %i.amp = and i64 %i.amo, -281474976710656
  %i.amq = or i64 %i.amp, ptrtoint (ptr @.str.170 to i64) ; 2 uses
  %i.amr = inttoptr i64 %i.amq to ptr
  store ptr %i.amr, ptr %i.amm, align 8
  store i32 19, ptr %6, align 8
  %i.ams = getelementptr inbounds nuw i8, ptr %i.amc, i64 8
  %i.amt = load ptr, ptr %i.ams, align 8
  %i.amu = ptrtoint ptr %i.amt to i64
  %i.amv = and i64 %i.amu, 281474976710655
  %i.amw = inttoptr i64 %i.amv to ptr             ; 4 uses
  %i.amx = load i32, ptr %i.amc, align 8          ; 2 uses
  %i.amy = zext i32 %i.amx to i64                 ; 2 uses
  %.idx.i.i.i.i.i391 = shl nuw nsw i64 %i.amy, 5
  %i.amz = getelementptr i8, ptr %i.amw, i64 %.idx.i.i.i.i.i391 ; 2 uses
  %.not9.i.i.i.i.i392 = icmp eq i32 %i.amx, 0
  br i1 %.not9.i.i.i.i.i392, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i400, label %.lr.ph.i.i.i.i.i393

.lr.ph.i.i.i.i.i393:                              ; preds = %bb.cg
  %i.ana = lshr i64 ptrtoint (ptr @.str.170 to i64), 40
  %i.anb = trunc i64 %i.ana to i8
  %i.anc = and i64 %i.amq, 1152921504606846976
  %.not.i.i.i.i.i.i.i.i394 = icmp eq i64 %i.anc, 0 ; 2 uses
  %i.and = sext i8 %i.anb to i32
  %i.ane = sub nsw i32 13, %i.and
  %i.anf = select i1 %.not.i.i.i.i.i.i.i.i394, i32 19, i32 %i.ane ; 2 uses
  %i.ang = and i64 ptrtoint (ptr @.str.170 to i64), 281474976710655
  %i.anh = inttoptr i64 %i.ang to ptr
  %i.ani = select i1 %.not.i.i.i.i.i.i.i.i394, ptr %i.anh, ptr %6 ; 2 uses
  %i.anj = zext i32 %i.anf to i64
  br label %bb.ch

bb.ch:                                            ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i398, %.lr.ph.i.i.i.i.i393
  %.010.i.i.i.i.i395 = phi ptr [ %i.amw, %.lr.ph.i.i.i.i.i393 ], [ %i.aob, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i398 ] ; 8 uses
  %i.ank = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i395, i64 14
  %i.anl = load i16, ptr %i.ank, align 2
  %i.anm = and i16 %i.anl, 4096
  %.not.i.i13.i.i.i.i.i.i396 = icmp eq i16 %i.anm, 0 ; 2 uses
  %i.ann = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i395, i64 13
  %i.ano = load i8, ptr %i.ann, align 1
  %i.anp = sext i8 %i.ano to i32
  %i.anq = sub nsw i32 13, %i.anp
  %i.anr = load i32, ptr %.010.i.i.i.i.i395, align 8
  %i.ans = select i1 %.not.i.i13.i.i.i.i.i.i396, i32 %i.anr, i32 %i.anq
  %.not.i.i.i.i.i.i397 = icmp eq i32 %i.anf, %i.ans
  br i1 %.not.i.i.i.i.i.i397, label %bb.ci, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i398

bb.ci:                                            ; preds = %bb.ch
  %i.ant = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i395, i64 8
  %i.anu = load ptr, ptr %i.ant, align 8
  %i.anv = ptrtoint ptr %i.anu to i64
  %i.anw = and i64 %i.anv, 281474976710655
  %i.anx = inttoptr i64 %i.anw to ptr
  %i.any = select i1 %.not.i.i13.i.i.i.i.i.i396, ptr %i.anx, ptr %.010.i.i.i.i.i395 ; 2 uses
  %i.anz = icmp eq ptr %i.ani, %i.any
  br i1 %i.anz, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i400, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i405

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i405: ; preds = %bb.ci
  %bcmp.i.i.i.i.i.i406 = call i32 @bcmp(ptr %i.ani, ptr %i.any, i64 %i.anj)
  %i.aoa = icmp eq i32 %bcmp.i.i.i.i.i.i406, 0
  br i1 %i.aoa, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i400, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i398

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i398: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i405, %bb.ch
  %i.aob = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i395, i64 32 ; 2 uses
  %.not.i.i.i.i.i399 = icmp eq ptr %i.aob, %i.amz
  br i1 %.not.i.i.i.i.i399, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i400, label %bb.ch, !llvm.loop !219

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i400: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i398, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i405, %bb.ci, %bb.cg
  %.0.lcssa.i.i.i.i.i401 = phi ptr [ %i.amw, %bb.cg ], [ %i.amz, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i398 ], [ %.010.i.i.i.i.i395, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i405 ], [ %.010.i.i.i.i.i395, %bb.ci ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  %i.aoc = getelementptr inbounds nuw [32 x i8], ptr %i.amw, i64 %i.amy
  %.not.i.i402 = icmp eq ptr %.0.lcssa.i.i.i.i.i401, %i.aoc
  br i1 %.not.i.i402, label %_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit407, label %_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.i404

_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.i404: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i400
  %i.aod = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i401, i64 16
  call void @_ZN5glTF28Material20SetTexturePropertiesERNS_5AssetEPN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEERNS_11TextureInfoE(ptr noundef nonnull align 8 dereferenceable(1369) %0, ptr noundef nonnull align 8 dereferenceable(3624) %2, ptr noundef nonnull %i.aod, ptr noundef nonnull align 8 dereferenceable(48) %30)
  br label %_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit407

_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit407: ; preds = %bb.cf, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i400, %_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.i404
  %i.aoe = getelementptr inbounds nuw i8, ptr %0, i64 1144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aoe, ptr noundef nonnull align 8 dereferenceable(56) %30, i64 56, i1 false)
  %.sroa.4468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1200
  store i8 1, ptr %.sroa.4468.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #34
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ce, %_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit407, %bb.cd
  %i.aof = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aog = load i8, ptr %i.aof, align 8, !range !19, !noundef !20
  %i.aoh = trunc nuw i8 %i.aog to i1
  br i1 %i.aoh, label %bb.ck, label %bb.ct

bb.ck:                                            ; preds = %bb.cj
  %i.aoi = load ptr, ptr %i.m, align 8
  %i.aoj = load ptr, ptr %i.o, align 8
  %i.aok = call noundef ptr @_ZN10glTFCommon19FindObjectInContextERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKcSA_SA_(ptr noundef nonnull align 8 dereferenceable(16) %i.nb, ptr noundef nonnull @.str.176, ptr noundef %i.aoi, ptr noundef %i.aoj) ; 8 uses
  %.not107 = icmp eq ptr %i.aok, null
  br i1 %.not107, label %bb.ct, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #34
  %i.aol = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 2 uses
  store ptr null, ptr %i.aol, align 8
  %i.aom = getelementptr inbounds nuw i8, ptr %31, i64 16
  store i32 0, ptr %i.aom, align 8
  %i.aon = getelementptr inbounds nuw i8, ptr %31, i64 28
  store i32 0, ptr %i.aon, align 4
  %i.aoo = getelementptr inbounds nuw i8, ptr %31, i64 32
  store i8 0, ptr %i.aoo, align 8
  %i.aop = getelementptr inbounds nuw i8, ptr %31, i64 56 ; 2 uses
  store float 0.000000e+00, ptr %31, align 8
  %i.aoq = getelementptr inbounds nuw i8, ptr %31, i64 60
  store <4 x float> <float +inf, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %i.aop, align 8
  %i.aor = call fastcc noundef zeroext i1 @_ZN10glTFCommonL10ReadMemberIfEEbRN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEPKcRT_(ptr noundef nonnull align 8 dereferenceable(16) %i.aok, ptr noundef nonnull @.str.172, ptr noundef nonnull align 4 dereferenceable(4) %31) ; 0 uses
  %i.aos = getelementptr inbounds nuw i8, ptr %i.aok, i64 14 ; 2 uses
  %i.aot = load i16, ptr %i.aos, align 2
  %i.aou = icmp eq i16 %i.aot, 3
  br i1 %i.aou, label %bb.cm, label %_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit424

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.aov = getelementptr inbounds nuw i8, ptr %5, i64 14
  store i16 1029, ptr %i.aov, align 2
  %i.aow = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.aox = load ptr, ptr %i.aow, align 8
  %i.aoy = ptrtoint ptr %i.aox to i64
  %i.aoz = and i64 %i.aoy, -281474976710656
  %i.apa = or i64 %i.aoz, ptrtoint (ptr @.str.173 to i64) ; 2 uses
  %i.apb = inttoptr i64 %i.apa to ptr
  store ptr %i.apb, ptr %i.aow, align 8
  store i32 16, ptr %5, align 8
  %i.apc = getelementptr inbounds nuw i8, ptr %i.aok, i64 8
  %i.apd = load ptr, ptr %i.apc, align 8
  %i.ape = ptrtoint ptr %i.apd to i64
  %i.apf = and i64 %i.ape, 281474976710655
  %i.apg = inttoptr i64 %i.apf to ptr             ; 4 uses
  %i.aph = load i32, ptr %i.aok, align 8          ; 2 uses
  %i.api = zext i32 %i.aph to i64                 ; 2 uses
  %.idx.i.i.i.i.i408 = shl nuw nsw i64 %i.api, 5
  %i.apj = getelementptr i8, ptr %i.apg, i64 %.idx.i.i.i.i.i408 ; 2 uses
  %.not9.i.i.i.i.i409 = icmp eq i32 %i.aph, 0
  br i1 %.not9.i.i.i.i.i409, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i417, label %.lr.ph.i.i.i.i.i410

.lr.ph.i.i.i.i.i410:                              ; preds = %bb.cm
  %i.apk = lshr i64 ptrtoint (ptr @.str.173 to i64), 40
  %i.apl = trunc i64 %i.apk to i8
  %i.apm = and i64 %i.apa, 1152921504606846976
  %.not.i.i.i.i.i.i.i.i411 = icmp eq i64 %i.apm, 0 ; 2 uses
  %i.apn = sext i8 %i.apl to i32
  %i.apo = sub nsw i32 13, %i.apn
  %i.app = select i1 %.not.i.i.i.i.i.i.i.i411, i32 16, i32 %i.apo ; 2 uses
  %i.apq = and i64 ptrtoint (ptr @.str.173 to i64), 281474976710655
  %i.apr = inttoptr i64 %i.apq to ptr
  %i.aps = select i1 %.not.i.i.i.i.i.i.i.i411, ptr %i.apr, ptr %5 ; 2 uses
  %i.apt = zext i32 %i.app to i64
  br label %bb.cn

bb.cn:                                            ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i415, %.lr.ph.i.i.i.i.i410
  %.010.i.i.i.i.i412 = phi ptr [ %i.apg, %.lr.ph.i.i.i.i.i410 ], [ %i.aql, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i415 ] ; 8 uses
  %i.apu = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i412, i64 14
  %i.apv = load i16, ptr %i.apu, align 2
  %i.apw = and i16 %i.apv, 4096
  %.not.i.i13.i.i.i.i.i.i413 = icmp eq i16 %i.apw, 0 ; 2 uses
  %i.apx = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i412, i64 13
  %i.apy = load i8, ptr %i.apx, align 1
  %i.apz = sext i8 %i.apy to i32
  %i.aqa = sub nsw i32 13, %i.apz
  %i.aqb = load i32, ptr %.010.i.i.i.i.i412, align 8
  %i.aqc = select i1 %.not.i.i13.i.i.i.i.i.i413, i32 %i.aqb, i32 %i.aqa
  %.not.i.i.i.i.i.i414 = icmp eq i32 %i.app, %i.aqc
  br i1 %.not.i.i.i.i.i.i414, label %bb.co, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i415

bb.co:                                            ; preds = %bb.cn
  %i.aqd = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i412, i64 8
  %i.aqe = load ptr, ptr %i.aqd, align 8
  %i.aqf = ptrtoint ptr %i.aqe to i64
  %i.aqg = and i64 %i.aqf, 281474976710655
  %i.aqh = inttoptr i64 %i.aqg to ptr
  %i.aqi = select i1 %.not.i.i13.i.i.i.i.i.i413, ptr %i.aqh, ptr %.010.i.i.i.i.i412 ; 2 uses
  %i.aqj = icmp eq ptr %i.aps, %i.aqi
  br i1 %i.aqj, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i417, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i422

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i422: ; preds = %bb.co
  %bcmp.i.i.i.i.i.i423 = call i32 @bcmp(ptr %i.aps, ptr %i.aqi, i64 %i.apt)
  %i.aqk = icmp eq i32 %bcmp.i.i.i.i.i.i423, 0
  br i1 %i.aqk, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i417, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i415

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i415: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i422, %bb.cn
  %i.aql = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i412, i64 32 ; 2 uses
  %.not.i.i.i.i.i416 = icmp eq ptr %i.aql, %i.apj
  br i1 %.not.i.i.i.i.i416, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i417, label %bb.cn, !llvm.loop !219

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i417: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i415, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i422, %bb.co, %bb.cm
  %.0.lcssa.i.i.i.i.i418 = phi ptr [ %i.apg, %bb.cm ], [ %i.apj, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i415 ], [ %.010.i.i.i.i.i412, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i422 ], [ %.010.i.i.i.i.i412, %bb.co ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  %i.aqm = getelementptr inbounds nuw [32 x i8], ptr %i.apg, i64 %i.api
  %.not.i.i419 = icmp eq ptr %.0.lcssa.i.i.i.i.i418, %i.aqm
  br i1 %.not.i.i419, label %_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit424, label %_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.i421

_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.i421: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i417
  %i.aqn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i418, i64 16
  call void @_ZN5glTF28Material20SetTexturePropertiesERNS_5AssetEPN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEERNS_11TextureInfoE(ptr noundef nonnull align 8 dereferenceable(1369) %0, ptr noundef nonnull align 8 dereferenceable(3624) %2, ptr noundef nonnull %i.aqn, ptr noundef nonnull align 8 dereferenceable(48) %i.aol)
  br label %_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit424

_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit424: ; preds = %bb.cl, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i417, %_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.i421
  %i.aqo = call fastcc noundef zeroext i1 @_ZN10glTFCommonL10ReadMemberIfEEbRN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEPKcRT_(ptr noundef nonnull align 8 dereferenceable(16) %i.aok, ptr noundef nonnull @.str.174, ptr noundef nonnull align 4 dereferenceable(4) %i.aop) ; 0 uses
  %i.aqp = load i16, ptr %i.aos, align 2
  %i.aqq = icmp eq i16 %i.aqp, 3
  br i1 %i.aqq, label %bb.cp, label %_ZN10glTFCommonL10ReadMemberIA3_fEEbRN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEEPKcRT_.exit440

bb.cp:                                            ; preds = %_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit424
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.aqr = getelementptr inbounds nuw i8, ptr %4, i64 14
  store i16 1029, ptr %i.aqr, align 2
  %i.aqs = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.aqt = load ptr, ptr %i.aqs, align 8
  %i.aqu = ptrtoint ptr %i.aqt to i64
  %i.aqv = and i64 %i.aqu, -281474976710656
  %i.aqw = or i64 %i.aqv, ptrtoint (ptr @.str.175 to i64) ; 2 uses
  %i.aqx = inttoptr i64 %i.aqw to ptr
  store ptr %i.aqx, ptr %i.aqs, align 8
  store i32 16, ptr %4, align 8
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.aok, i64 8
  %i.aqz = load ptr, ptr %i.aqy, align 8
  %i.ara = ptrtoint ptr %i.aqz to i64
  %i.arb = and i64 %i.ara, 281474976710655
  %i.arc = inttoptr i64 %i.arb to ptr             ; 4 uses
  %i.ard = load i32, ptr %i.aok, align 8          ; 2 uses
  %i.are = zext i32 %i.ard to i64                 ; 2 uses
  %.idx.i.i.i.i426 = shl nuw nsw i64 %i.are, 5
  %i.arf = getelementptr i8, ptr %i.arc, i64 %.idx.i.i.i.i426 ; 2 uses
  %.not9.i.i.i.i427 = icmp eq i32 %i.ard, 0
  br i1 %.not9.i.i.i.i427, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i435, label %.lr.ph.i.i.i.i428

.lr.ph.i.i.i.i428:                                ; preds = %bb.cp
  %i.arg = lshr i64 ptrtoint (ptr @.str.175 to i64), 40
  %i.arh = trunc i64 %i.arg to i8
  %i.ari = and i64 %i.aqw, 1152921504606846976
  %.not.i.i.i.i.i.i.i429 = icmp eq i64 %i.ari, 0  ; 2 uses
  %i.arj = sext i8 %i.arh to i32
  %i.ark = sub nsw i32 13, %i.arj
  %i.arl = select i1 %.not.i.i.i.i.i.i.i429, i32 16, i32 %i.ark ; 2 uses
  %i.arm = and i64 ptrtoint (ptr @.str.175 to i64), 281474976710655
  %i.arn = inttoptr i64 %i.arm to ptr
  %i.aro = select i1 %.not.i.i.i.i.i.i.i429, ptr %i.arn, ptr %4 ; 2 uses
  %i.arp = zext i32 %i.arl to i64
  br label %bb.cq

bb.cq:                                            ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i433, %.lr.ph.i.i.i.i428
  %.010.i.i.i.i430 = phi ptr [ %i.arc, %.lr.ph.i.i.i.i428 ], [ %i.ash, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i433 ] ; 8 uses
  %i.arq = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i430, i64 14
  %i.arr = load i16, ptr %i.arq, align 2
  %i.ars = and i16 %i.arr, 4096
  %.not.i.i13.i.i.i.i.i431 = icmp eq i16 %i.ars, 0 ; 2 uses
  %i.art = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i430, i64 13
  %i.aru = load i8, ptr %i.art, align 1
  %i.arv = sext i8 %i.aru to i32
  %i.arw = sub nsw i32 13, %i.arv
  %i.arx = load i32, ptr %.010.i.i.i.i430, align 8
  %i.ary = select i1 %.not.i.i13.i.i.i.i.i431, i32 %i.arx, i32 %i.arw
  %.not.i.i.i.i.i432 = icmp eq i32 %i.arl, %i.ary
  br i1 %.not.i.i.i.i.i432, label %bb.cr, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i433

bb.cr:                                            ; preds = %bb.cq
  %i.arz = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i430, i64 8
  %i.asa = load ptr, ptr %i.arz, align 8
  %i.asb = ptrtoint ptr %i.asa to i64
  %i.asc = and i64 %i.asb, 281474976710655
  %i.asd = inttoptr i64 %i.asc to ptr
  %i.ase = select i1 %.not.i.i13.i.i.i.i.i431, ptr %i.asd, ptr %.010.i.i.i.i430 ; 2 uses
  %i.asf = icmp eq ptr %i.aro, %i.ase
  br i1 %i.asf, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i435, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i438

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i438: ; preds = %bb.cr
  %bcmp.i.i.i.i.i439 = call i32 @bcmp(ptr %i.aro, ptr %i.ase, i64 %i.arp)
  %i.asg = icmp eq i32 %bcmp.i.i.i.i.i439, 0
  br i1 %i.asg, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i435, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i433

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i433: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i438, %bb.cq
  %i.ash = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i430, i64 32 ; 2 uses
  %.not.i.i.i.i434 = icmp eq ptr %i.ash, %i.arf
  br i1 %.not.i.i.i.i434, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i435, label %bb.cq, !llvm.loop !219

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i435: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i433, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i438, %bb.cr, %bb.cp
  %.0.lcssa.i.i.i.i436 = phi ptr [ %i.arc, %bb.cp ], [ %.010.i.i.i.i430, %bb.cr ], [ %.010.i.i.i.i430, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i438 ], [ %i.arf, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i433 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.asi = getelementptr inbounds nuw [32 x i8], ptr %i.arc, i64 %i.are
  %.not.i437 = icmp eq ptr %.0.lcssa.i.i.i.i436, %i.asi
  br i1 %.not.i437, label %_ZN10glTFCommonL10ReadMemberIA3_fEEbRN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEEPKcRT_.exit440, label %bb.cs

bb.cs:                                            ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i435
  %i.asj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i436, i64 16
  %i.ask = call noundef zeroext i1 @_ZN10glTFCommon10ReadHelperIA3_fE4ReadERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEERS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.asj, ptr noundef nonnull align 4 dereferenceable(12) %i.aoq) ; 0 uses
  br label %_ZN10glTFCommonL10ReadMemberIA3_fEEbRN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEEPKcRT_.exit440

_ZN10glTFCommonL10ReadMemberIA3_fEEbRN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEEPKcRT_.exit440: ; preds = %_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit424, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i435, %bb.cs
  %i.asl = getelementptr inbounds nuw i8, ptr %0, i64 1208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.asl, ptr noundef nonnull align 8 dereferenceable(72) %31, i64 72, i1 false)
  %.sroa.4465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1280
  store i8 1, ptr %.sroa.4465.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #34
  br label %bb.ct

bb.ct:                                            ; preds = %bb.ck, %_ZN10glTFCommonL10ReadMemberIA3_fEEbRN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEEPKcRT_.exit440, %bb.cj
  %i.asm = getelementptr inbounds nuw i8, ptr %2, i64 33
  %i.asn = load i8, ptr %i.asm, align 1, !range !19, !noundef !20
  %i.aso = trunc nuw i8 %i.asn to i1
  br i1 %i.aso, label %bb.cu, label %bb.cw

bb.cu:                                            ; preds = %bb.ct
  %i.asp = load ptr, ptr %i.m, align 8
  %i.asq = load ptr, ptr %i.o, align 8
  %i.asr = call noundef ptr @_ZN10glTFCommon19FindObjectInContextERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKcSA_SA_(ptr noundef nonnull align 8 dereferenceable(16) %i.nb, ptr noundef nonnull @.str.178, ptr noundef %i.asp, ptr noundef %i.asq) ; 2 uses
  %.not108 = icmp eq ptr %i.asr, null
  br i1 %.not108, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #34
  store float 1.500000e+00, ptr %32, align 4
  %i.ass = call fastcc noundef zeroext i1 @_ZN10glTFCommonL10ReadMemberIfEEbRN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEPKcRT_(ptr noundef nonnull align 8 dereferenceable(16) %i.asr, ptr noundef nonnull @.str.177, ptr noundef nonnull align 4 dereferenceable(4) %32) ; 0 uses
  %i.ast = load i32, ptr %32, align 4
  %i.asu = getelementptr inbounds nuw i8, ptr %0, i64 1288
  store i32 %i.ast, ptr %i.asu, align 8
  %.sroa.4462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1292
  store i8 1, ptr %.sroa.4462.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #34
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cu, %bb.cv, %bb.ct
  %i.asv = getelementptr inbounds nuw i8, ptr %2, i64 34
  %i.asw = load i8, ptr %i.asv, align 2, !range !19, !noundef !20
  %i.asx = trunc nuw i8 %i.asw to i1
  br i1 %i.asx, label %bb.cx, label %bb.cz

bb.cx:                                            ; preds = %bb.cw
  %i.asy = load ptr, ptr %i.m, align 8
  %i.asz = load ptr, ptr %i.o, align 8
  %i.ata = call noundef ptr @_ZN10glTFCommon19FindObjectInContextERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKcSA_SA_(ptr noundef nonnull align 8 dereferenceable(16) %i.nb, ptr noundef nonnull @.str.180, ptr noundef %i.asy, ptr noundef %i.asz) ; 2 uses
  %.not109 = icmp eq ptr %i.ata, null
  br i1 %.not109, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #34
  store float 0.000000e+00, ptr %33, align 4
  %i.atb = call fastcc noundef zeroext i1 @_ZN10glTFCommonL10ReadMemberIfEEbRN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEPKcRT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ata, ptr noundef nonnull @.str.179, ptr noundef nonnull align 4 dereferenceable(4) %33) ; 0 uses
  %i.atc = load i32, ptr %33, align 4
  %i.atd = getelementptr inbounds nuw i8, ptr %0, i64 1296
  store i32 %i.atc, ptr %i.atd, align 8
  %.sroa.4459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1300
  store i8 1, ptr %.sroa.4459.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #34
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cx, %bb.cy, %bb.cw
  %i.ate = getelementptr inbounds nuw i8, ptr %2, i64 35
  %i.atf = load i8, ptr %i.ate, align 1, !range !19, !noundef !20
  %i.atg = trunc nuw i8 %i.atf to i1
  br i1 %i.atg, label %bb.da, label %bb.df

bb.da:                                            ; preds = %bb.cz
  %i.ath = load ptr, ptr %i.m, align 8
  %i.ati = load ptr, ptr %i.o, align 8
  %i.atj = call noundef ptr @_ZN10glTFCommon19FindObjectInContextERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKcSA_SA_(ptr noundef nonnull align 8 dereferenceable(16) %i.nb, ptr noundef nonnull @.str.184, ptr noundef %i.ath, ptr noundef %i.ati) ; 6 uses
  %.not110 = icmp eq ptr %i.atj, null
  br i1 %.not110, label %bb.df, label %bb.db

bb.db:                                            ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #34
  %i.atk = getelementptr inbounds nuw i8, ptr %34, i64 28
  store i32 0, ptr %i.atk, align 4
  %i.atl = getelementptr inbounds nuw i8, ptr %34, i64 32
  store i8 0, ptr %i.atl, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %34, i8 0, i64 20, i1 false)
  %i.atm = call fastcc noundef zeroext i1 @_ZN10glTFCommonL10ReadMemberIfEEbRN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEPKcRT_(ptr noundef nonnull align 8 dereferenceable(16) %i.atj, ptr noundef nonnull @.str.181, ptr noundef nonnull align 4 dereferenceable(4) %34) ; 0 uses
  %i.atn = getelementptr inbounds nuw i8, ptr %34, i64 4
  %i.ato = call fastcc noundef zeroext i1 @_ZN10glTFCommonL10ReadMemberIfEEbRN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEPKcRT_(ptr noundef nonnull align 8 dereferenceable(16) %i.atj, ptr noundef nonnull @.str.182, ptr noundef nonnull align 4 dereferenceable(4) %i.atn) ; 0 uses
  %i.atp = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.atq = getelementptr inbounds nuw i8, ptr %i.atj, i64 14
  %i.atr = load i16, ptr %i.atq, align 2
  %i.ats = icmp eq i16 %i.atr, 3
  br i1 %i.ats, label %bb.dc, label %_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit457

bb.dc:                                            ; preds = %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.att = getelementptr inbounds nuw i8, ptr %3, i64 14
  store i16 1029, ptr %i.att, align 2
  %i.atu = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.atv = load ptr, ptr %i.atu, align 8
  %i.atw = ptrtoint ptr %i.atv to i64
  %i.atx = and i64 %i.atw, -281474976710656
  %i.aty = or i64 %i.atx, ptrtoint (ptr @.str.183 to i64) ; 2 uses
  %i.atz = inttoptr i64 %i.aty to ptr
  store ptr %i.atz, ptr %i.atu, align 8
  store i32 17, ptr %3, align 8
  %i.aua = getelementptr inbounds nuw i8, ptr %i.atj, i64 8
  %i.aub = load ptr, ptr %i.aua, align 8
  %i.auc = ptrtoint ptr %i.aub to i64
  %i.aud = and i64 %i.auc, 281474976710655
  %i.aue = inttoptr i64 %i.aud to ptr             ; 4 uses
  %i.auf = load i32, ptr %i.atj, align 8          ; 2 uses
  %i.aug = zext i32 %i.auf to i64                 ; 2 uses
  %.idx.i.i.i.i.i441 = shl nuw nsw i64 %i.aug, 5
  %i.auh = getelementptr i8, ptr %i.aue, i64 %.idx.i.i.i.i.i441 ; 2 uses
  %.not9.i.i.i.i.i442 = icmp eq i32 %i.auf, 0
  br i1 %.not9.i.i.i.i.i442, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i450, label %.lr.ph.i.i.i.i.i443

.lr.ph.i.i.i.i.i443:                              ; preds = %bb.dc
  %i.aui = lshr i64 ptrtoint (ptr @.str.183 to i64), 40
  %i.auj = trunc i64 %i.aui to i8
  %i.auk = and i64 %i.aty, 1152921504606846976
  %.not.i.i.i.i.i.i.i.i444 = icmp eq i64 %i.auk, 0 ; 2 uses
  %i.aul = sext i8 %i.auj to i32
  %i.aum = sub nsw i32 13, %i.aul
  %i.aun = select i1 %.not.i.i.i.i.i.i.i.i444, i32 17, i32 %i.aum ; 2 uses
  %i.auo = and i64 ptrtoint (ptr @.str.183 to i64), 281474976710655
  %i.aup = inttoptr i64 %i.auo to ptr
  %i.auq = select i1 %.not.i.i.i.i.i.i.i.i444, ptr %i.aup, ptr %3 ; 2 uses
  %i.aur = zext i32 %i.aun to i64
  br label %bb.dd

bb.dd:                                            ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i448, %.lr.ph.i.i.i.i.i443
  %.010.i.i.i.i.i445 = phi ptr [ %i.aue, %.lr.ph.i.i.i.i.i443 ], [ %i.avj, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i448 ] ; 8 uses
  %i.aus = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i445, i64 14
  %i.aut = load i16, ptr %i.aus, align 2
  %i.auu = and i16 %i.aut, 4096
  %.not.i.i13.i.i.i.i.i.i446 = icmp eq i16 %i.auu, 0 ; 2 uses
  %i.auv = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i445, i64 13
  %i.auw = load i8, ptr %i.auv, align 1
  %i.aux = sext i8 %i.auw to i32
  %i.auy = sub nsw i32 13, %i.aux
  %i.auz = load i32, ptr %.010.i.i.i.i.i445, align 8
  %i.ava = select i1 %.not.i.i13.i.i.i.i.i.i446, i32 %i.auz, i32 %i.auy
  %.not.i.i.i.i.i.i447 = icmp eq i32 %i.aun, %i.ava
  br i1 %.not.i.i.i.i.i.i447, label %bb.de, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i448

bb.de:                                            ; preds = %bb.dd
  %i.avb = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i445, i64 8
  %i.avc = load ptr, ptr %i.avb, align 8
  %i.avd = ptrtoint ptr %i.avc to i64
  %i.ave = and i64 %i.avd, 281474976710655
  %i.avf = inttoptr i64 %i.ave to ptr
  %i.avg = select i1 %.not.i.i13.i.i.i.i.i.i446, ptr %i.avf, ptr %.010.i.i.i.i.i445 ; 2 uses
  %i.avh = icmp eq ptr %i.auq, %i.avg
  br i1 %i.avh, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i450, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i455

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i455: ; preds = %bb.de
  %bcmp.i.i.i.i.i.i456 = call i32 @bcmp(ptr %i.auq, ptr %i.avg, i64 %i.aur)
  %i.avi = icmp eq i32 %bcmp.i.i.i.i.i.i456, 0
  br i1 %i.avi, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i450, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i448

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i448: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i455, %bb.dd
  %i.avj = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i445, i64 32 ; 2 uses
  %.not.i.i.i.i.i449 = icmp eq ptr %i.avj, %i.auh
  br i1 %.not.i.i.i.i.i449, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i450, label %bb.dd, !llvm.loop !219

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i450: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i448, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i455, %bb.de, %bb.dc
  %.0.lcssa.i.i.i.i.i451 = phi ptr [ %i.aue, %bb.dc ], [ %i.auh, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i448 ], [ %.010.i.i.i.i.i445, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i455 ], [ %.010.i.i.i.i.i445, %bb.de ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.avk = getelementptr inbounds nuw [32 x i8], ptr %i.aue, i64 %i.aug
  %.not.i.i452 = icmp eq ptr %.0.lcssa.i.i.i.i.i451, %i.avk
  br i1 %.not.i.i452, label %_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit457, label %_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.i454

_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.i454: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i450
  %i.avl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i451, i64 16
  call void @_ZN5glTF28Material20SetTexturePropertiesERNS_5AssetEPN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEERNS_11TextureInfoE(ptr noundef nonnull align 8 dereferenceable(1369) %0, ptr noundef nonnull align 8 dereferenceable(3624) %2, ptr noundef nonnull %i.avl, ptr noundef nonnull align 8 dereferenceable(48) %i.atp)
  br label %_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit457

_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit457: ; preds = %bb.db, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i450, %_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.i454
  %i.avm = getelementptr inbounds nuw i8, ptr %0, i64 1304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.avm, ptr noundef nonnull align 8 dereferenceable(56) %34, i64 56, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1360
  store i8 1, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #34
  br label %bb.df

bb.df:                                            ; preds = %bb.da, %_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_11TextureInfoE.exit457, %bb.cz
  %i.avn = load ptr, ptr %i.m, align 8
  %i.avo = load ptr, ptr %i.o, align 8
  %i.avp = call noundef ptr @_ZN10glTFCommon19FindObjectInContextERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKcSA_SA_(ptr noundef nonnull align 8 dereferenceable(16) %i.nb, ptr noundef nonnull @.str.153, ptr noundef %i.avn, ptr noundef %i.avo)
  %i.avq = icmp ne ptr %i.avp, null
  %i.avr = zext i1 %i.avq to i8
  store i8 %i.avr, ptr %i.l, align 8
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %_ZN10glTFCommonL10ReadMemberINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRN9rapidjson12GenericValueINS7_4UTF8IcEENS7_19MemoryPoolAllocatorINS7_12CrtAllocatorEEEEEPKcRT_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN5glTF28LazyDictINS_8MaterialEE3AddEPS1_(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 6 uses
  %i.h = ashr exact i64 %i.g, 3                   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %.not.i = icmp eq ptr %i.c, %i.j
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %i.c, align 8
  %i.k = load ptr, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.l, ptr %i.b, align 8
  br label %_ZNSt6vectorIPN5glTF28MaterialESaIS2_EE9push_backERKS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.m = icmp eq i64 %i.g, 9223372036854775800
  br i1 %i.m, label %bb.d, label %_ZNKSt6vectorIPN5glTF28MaterialESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.74) #36
  unreachable

_ZNKSt6vectorIPN5glTF28MaterialESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i, %i.h ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.h
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 1152921504606846975)
  %i.q = select i1 %i.o, i64 1152921504606846975, i64 %i.p ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #37 ; 4 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 %i.g ; 2 uses
  store ptr %1, ptr %i.t, align 8
  %i.u = icmp sgt i64 %i.g, 0
  br i1 %i.u, label %bb.e, label %_ZNSt6vectorIPN5glTF28MaterialESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIPN5glTF28MaterialESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr align 8 %i.d, i64 %i.g, i1 false)
  br label %_ZNSt6vectorIPN5glTF28MaterialESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN5glTF28MaterialESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIPN5glTF28MaterialESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.not.i17.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN5glTF28MaterialESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPN5glTF28MaterialESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.g) #35
  br label %_ZNSt6vectorIPN5glTF28MaterialESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN5glTF28MaterialESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIPN5glTF28MaterialESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.s, ptr %i.a, align 8
  store ptr %i.v, ptr %i.b, align 8
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q
  store ptr %i.w, ptr %i.i, align 8
  br label %_ZNSt6vectorIPN5glTF28MaterialESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN5glTF28MaterialESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.b, %_ZNSt6vectorIPN5glTF28MaterialESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.z = load i32, ptr %i.y, align 4              ; 4 uses
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ac = load i64, ptr %i.ab, align 8            ; 2 uses
  %i.ad = urem i64 %i.aa, %i.ac                   ; 3 uses
  %i.ae = load ptr, ptr %i.x, align 8
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ad
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN5glTF28MaterialESaIS2_EE9push_backERKS2_.exit
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = icmp eq i32 %i.z, %i.aj
  br i1 %i.ak, label %_ZNSt13unordered_mapIjjSt4hashIjESt8equal_toIjESaISt4pairIKjjEEEixEOj.exit, label %.lr.ph.i.i.i.i

bb.h:                                             ; preds = %bb.i
  %i.al = icmp eq i32 %i.z, %i.ao
  br i1 %i.al, label %_ZNSt13unordered_mapIjjSt4hashIjESt8equal_toIjESaISt4pairIKjjEEEixEOj.exit, label %.lr.ph.i.i.i.i, !llvm.loop !484

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %bb.h
  %.020.i.i.i.i = phi ptr [ %i.am, %bb.h ], [ %i.ah, %bb.g ]
  %i.am = load ptr, ptr %.020.i.i.i.i, align 8    ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load i32, ptr %i.an, align 4            ; 2 uses
  %i.ap = zext i32 %i.ao to i64
  %i.aq = urem i64 %i.ap, %i.ac
  %.not19.i.i.i.i = icmp eq i64 %i.aq, %i.ad
  br i1 %.not19.i.i.i.i, label %bb.h, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !484

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.i
  br label %.loopexit.i.i, !llvm.loop !484

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i, %_ZNSt6vectorIPN5glTF28MaterialESaIS2_EE9push_backERKS2_.exit
  %i.ar = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #37 ; 5 uses
  store ptr null, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i32 %i.z, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  store i32 0, ptr %i.at, align 4
  %i.au = invoke ptr @_ZNSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.x, i64 noundef %i.ad, i64 noundef %i.aa, ptr noundef nonnull %i.ar, i64 noundef 1)
          to label %_ZNSt13unordered_mapIjjSt4hashIjESt8equal_toIjESaISt4pairIKjjEEEixEOj.exit unwind label %_ZNSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i

_ZNSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i: ; preds = %.loopexit.i.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef 16) #35
  resume { ptr, i32 } %i.av

_ZNSt13unordered_mapIjjSt4hashIjESt8equal_toIjESaISt4pairIKjjEEEixEOj.exit: ; preds = %bb.h, %bb.g, %.loopexit.i.i
  %.pn.i.i = phi ptr [ %i.au, %.loopexit.i.i ], [ %i.ah, %bb.g ], [ %i.am, %bb.h ]
  %i.aw = trunc i64 %i.h to i32                   ; 3 uses
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 12
  store i32 %i.aw, ptr %.1.i.i, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.az = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_jESaIS9_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %i.ay)
  store i32 %i.aw, ptr %i.az, align 4
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %i.a, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %i.aw, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN10glTFCommonL10ReadMemberIfEEbRN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEPKcRT_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2) unnamed_addr #28 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.b = load i16, ptr %i.a, align 2
  %i.c = icmp eq i16 %i.b, 3
  br i1 %i.c, label %bb.b, label %_ZN10glTFCommon10ReadHelperIfE4ReadERN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEERf.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #39, !noalias !935
  %i.e = trunc i64 %i.d to i32                    ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 14
  store i16 1029, ptr %i.f, align 2
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = and i64 %i.i, -281474976710656
  %i.k = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.l = or i64 %i.j, %i.k                        ; 2 uses
  %i.m = inttoptr i64 %i.l to ptr
  store ptr %i.m, ptr %i.g, align 8
  store i32 %i.e, ptr %3, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = and i64 %i.p, 281474976710655
  %i.r = inttoptr i64 %i.q to ptr                 ; 4 uses
  %i.s = load i32, ptr %0, align 8                ; 2 uses
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.t, 5
  %i.u = getelementptr i8, ptr %i.r, i64 %.idx.i.i.i ; 2 uses
  %.not9.i.i.i = icmp eq i32 %i.s, 0
end_hunk_3
begin_hunk_4_@_ZN10glTFCommonL10ReadMemberIfEEbRN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEPKcRT_:bb.a
  %i.ad = select i1 %.not.i.i.i.i.i.i, ptr %i.ac, ptr %3 ; 2 uses
  %i.ae = zext i32 %i.aa to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i ], [ %i.aw, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i ] ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 14
  %i.ag = load i16, ptr %i.af, align 2
  %i.ah = and i16 %i.ag, 4096
  %.not.i.i13.i.i.i.i = icmp eq i16 %i.ah, 0      ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 13
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = sext i8 %i.aj to i32
  %i.al = sub nsw i32 13, %i.ak
  %i.am = load i32, ptr %.010.i.i.i, align 8
  %i.an = select i1 %.not.i.i13.i.i.i.i, i32 %i.am, i32 %i.al
  %.not.i.i.i.i = icmp eq i32 %i.aa, %i.an
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = and i64 %i.aq, 281474976710655
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = select i1 %.not.i.i13.i.i.i.i, ptr %i.as, ptr %.010.i.i.i ; 2 uses
  %i.au = icmp eq ptr %i.ad, %i.at
  br i1 %i.au, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i = call i32 @bcmp(ptr %i.ad, ptr %i.at, i64 %i.ae)
  %i.av = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.av, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i, %bb.c
  %i.aw = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aw, %i.u
  br i1 %.not.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit, label %bb.c, !llvm.loop !219

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit: ; preds = %bb.d, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i, %bb.b
  %.0.lcssa.i.i.i = phi ptr [ %i.r, %bb.b ], [ %i.u, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i ], [ %.010.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i ], [ %.010.i.i.i, %bb.d ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %i.t
  %.not = icmp eq ptr %.0.lcssa.i.i.i, %i.ax
  br i1 %.not, label %_ZN10glTFCommon10ReadHelperIfE4ReadERN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEERf.exit, label %bb.e

bb.e:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 30
  %i.ba = load i16, ptr %i.az, align 2            ; 2 uses
  %i.bb = and i16 %i.ba, 16
  %.not9 = icmp eq i16 %i.bb, 0
  br i1 %.not9, label %_ZN10glTFCommon10ReadHelperIfE4ReadERN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEERf.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bc = zext i16 %i.ba to i32                   ; 4 uses
  %i.bd = and i32 %i.bc, 512
  %.not.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.be = load double, ptr %i.ay, align 8
  br label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9GetDoubleEv.exit.i

bb.h:                                             ; preds = %bb.f
  %i.bf = and i32 %i.bc, 32
  %.not2.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not2.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = load i32, ptr %i.ay, align 8
  %i.bh = sitofp i32 %i.bg to double
  br label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9GetDoubleEv.exit.i

bb.j:                                             ; preds = %bb.h
  %i.bi = and i32 %i.bc, 64
  %.not3.i.i = icmp eq i32 %i.bi, 0
  br i1 %.not3.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bj = load i32, ptr %i.ay, align 8
  %i.bk = uitofp i32 %i.bj to double
  br label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9GetDoubleEv.exit.i

bb.l:                                             ; preds = %bb.j
  %i.bl = and i32 %i.bc, 128
  %.not4.i.i = icmp eq i32 %i.bl, 0
  %i.bm = load i64, ptr %i.ay, align 8            ; 2 uses
  br i1 %.not4.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = sitofp i64 %i.bm to double
  br label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9GetDoubleEv.exit.i

bb.n:                                             ; preds = %bb.l
  %i.bo = uitofp i64 %i.bm to double
  br label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9GetDoubleEv.exit.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9GetDoubleEv.exit.i: ; preds = %bb.n, %bb.m, %bb.k, %bb.i, %bb.g
  %.0.i.i = phi double [ %i.be, %bb.g ], [ %i.bh, %bb.i ], [ %i.bk, %bb.k ], [ %i.bn, %bb.m ], [ %i.bo, %bb.n ]
  %i.bp = fptrunc double %.0.i.i to float
  store float %i.bp, ptr %2, align 4
  br label %_ZN10glTFCommon10ReadHelperIfE4ReadERN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEERf.exit

_ZN10glTFCommon10ReadHelperIfE4ReadERN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEERf.exit: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9GetDoubleEv.exit.i, %bb.e, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit ], [ false, %bb.e ], [ true, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9GetDoubleEv.exit.i ]
  ret i1 %.1
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_17NormalTextureInfoE(ptr noundef nonnull align 8 dereferenceable(1369) %0, ptr noundef nonnull align 8 dereferenceable(3624) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(52) %4) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.b = load i16, ptr %i.a, align 2
  %i.c = icmp eq i16 %i.b, 3
  br i1 %i.c, label %bb.b, label %_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #39, !noalias !938
  %i.e = trunc i64 %i.d to i32                    ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 14
  store i16 1029, ptr %i.f, align 2
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = and i64 %i.i, -281474976710656
  %i.k = ptrtoint ptr %3 to i64                   ; 3 uses
  %i.l = or i64 %i.j, %i.k                        ; 2 uses
  %i.m = inttoptr i64 %i.l to ptr
  store ptr %i.m, ptr %i.g, align 8
  store i32 %i.e, ptr %5, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = and i64 %i.p, 281474976710655
  %i.r = inttoptr i64 %i.q to ptr                 ; 4 uses
  %i.s = load i32, ptr %2, align 8                ; 2 uses
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.t, 5
  %i.u = getelementptr i8, ptr %i.r, i64 %.idx.i.i.i.i ; 2 uses
  %.not9.i.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not9.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.v = lshr i64 %i.k, 40
  %i.w = trunc i64 %i.v to i8
  %i.x = and i64 %i.l, 1152921504606846976
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.x, 0       ; 2 uses
  %i.y = sext i8 %i.w to i32
  %i.z = sub nsw i32 13, %i.y
  %i.aa = select i1 %.not.i.i.i.i.i.i.i, i32 %i.e, i32 %i.z ; 2 uses
  %i.ab = and i64 %i.k, 281474976710655
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = select i1 %.not.i.i.i.i.i.i.i, ptr %i.ac, ptr %5 ; 2 uses
  %i.ae = zext i32 %i.aa to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %.lr.ph.i.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i ], [ %i.aw, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 14
  %i.ag = load i16, ptr %i.af, align 2
  %i.ah = and i16 %i.ag, 4096
  %.not.i.i13.i.i.i.i.i = icmp eq i16 %i.ah, 0    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 13
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = sext i8 %i.aj to i32
  %i.al = sub nsw i32 13, %i.ak
  %i.am = load i32, ptr %.010.i.i.i.i, align 8
  %i.an = select i1 %.not.i.i13.i.i.i.i.i, i32 %i.am, i32 %i.al
  %.not.i.i.i.i.i = icmp eq i32 %i.aa, %i.an
  br i1 %.not.i.i.i.i.i, label %bb.d, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = and i64 %i.aq, 281474976710655
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = select i1 %.not.i.i13.i.i.i.i.i, ptr %i.as, ptr %.010.i.i.i.i ; 2 uses
  %i.au = icmp eq ptr %i.ad, %i.at
  br i1 %i.au, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %i.ad, ptr %i.at, i64 %i.ae)
  %i.av = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.av, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.c
  %i.aw = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aw, %i.u
  br i1 %.not.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %bb.c, !llvm.loop !219

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.d, %bb.b
  %.0.lcssa.i.i.i.i = phi ptr [ %i.r, %bb.b ], [ %.010.i.i.i.i, %bb.d ], [ %.010.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i ], [ %i.u, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %i.t
  %.not.i = icmp eq ptr %.0.lcssa.i.i.i.i, %i.ax
  br i1 %.not.i, label %_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread, label %_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit

_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 16 ; 2 uses
  call void @_ZN5glTF28Material20SetTexturePropertiesERNS_5AssetEPN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEERNS_11TextureInfoE(ptr noundef nonnull align 8 dereferenceable(1369) %0, ptr noundef nonnull align 8 dereferenceable(3624) %1, ptr noundef nonnull %i.ay, ptr noundef nonnull align 8 dereferenceable(48) %4)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = call noundef ptr @_ZN10glTFCommon19FindNumberInContextERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKcSA_SA_(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull @.str.110, ptr noundef %i.ba, ptr noundef %i.bc) ; 6 uses
  %.not12 = icmp eq ptr %i.bd, null
  br i1 %.not12, label %_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 14
  %i.bf = load i16, ptr %i.be, align 2
  %i.bg = zext i16 %i.bf to i32                   ; 4 uses
  %i.bh = and i32 %i.bg, 512
  %.not.i13 = icmp eq i32 %i.bh, 0
  br i1 %.not.i13, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bi = load double, ptr %i.bd, align 8
  br label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9GetDoubleEv.exit

bb.g:                                             ; preds = %bb.e
  %i.bj = and i32 %i.bg, 32
  %.not2.i = icmp eq i32 %i.bj, 0
  br i1 %.not2.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bk = load i32, ptr %i.bd, align 8
  %i.bl = sitofp i32 %i.bk to double
  br label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9GetDoubleEv.exit

bb.i:                                             ; preds = %bb.g
  %i.bm = and i32 %i.bg, 64
  %.not3.i = icmp eq i32 %i.bm, 0
  br i1 %.not3.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bn = load i32, ptr %i.bd, align 8
  %i.bo = uitofp i32 %i.bn to double
  br label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9GetDoubleEv.exit

bb.k:                                             ; preds = %bb.i
  %i.bp = and i32 %i.bg, 128
  %.not4.i = icmp eq i32 %i.bp, 0
  %i.bq = load i64, ptr %i.bd, align 8            ; 2 uses
  br i1 %.not4.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.br = sitofp i64 %i.bq to double
  br label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9GetDoubleEv.exit

bb.m:                                             ; preds = %bb.k
  %i.bs = uitofp i64 %i.bq to double
  br label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9GetDoubleEv.exit

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9GetDoubleEv.exit: ; preds = %bb.f, %bb.h, %bb.j, %bb.l, %bb.m
  %.0.i14 = phi double [ %i.bi, %bb.f ], [ %i.bl, %bb.h ], [ %i.bo, %bb.j ], [ %i.br, %bb.l ], [ %i.bs, %bb.m ]
  %i.bt = fptrunc double %.0.i14 to float
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 48
  store float %i.bt, ptr %i.bu, align 8
  br label %_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread

_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, %bb.a, %_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9GetDoubleEv.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5glTF28Material19ReadTexturePropertyERNS_5AssetERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRNS_20OcclusionTextureInfoE(ptr noundef nonnull align 8 dereferenceable(1369) %0, ptr noundef nonnull align 8 dereferenceable(3624) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(52) %4) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.b = load i16, ptr %i.a, align 2
  %i.c = icmp eq i16 %i.b, 3
  br i1 %i.c, label %bb.b, label %_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #39, !noalias !941
  %i.e = trunc i64 %i.d to i32                    ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 14
  store i16 1029, ptr %i.f, align 2
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = and i64 %i.i, -281474976710656
  %i.k = ptrtoint ptr %3 to i64                   ; 3 uses
  %i.l = or i64 %i.j, %i.k                        ; 2 uses
  %i.m = inttoptr i64 %i.l to ptr
  store ptr %i.m, ptr %i.g, align 8
  store i32 %i.e, ptr %5, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = and i64 %i.p, 281474976710655
  %i.r = inttoptr i64 %i.q to ptr                 ; 4 uses
  %i.s = load i32, ptr %2, align 8                ; 2 uses
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.t, 5
  %i.u = getelementptr i8, ptr %i.r, i64 %.idx.i.i.i.i ; 2 uses
  %.not9.i.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not9.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.v = lshr i64 %i.k, 40
  %i.w = trunc i64 %i.v to i8
  %i.x = and i64 %i.l, 1152921504606846976
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.x, 0       ; 2 uses
  %i.y = sext i8 %i.w to i32
  %i.z = sub nsw i32 13, %i.y
  %i.aa = select i1 %.not.i.i.i.i.i.i.i, i32 %i.e, i32 %i.z ; 2 uses
  %i.ab = and i64 %i.k, 281474976710655
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = select i1 %.not.i.i.i.i.i.i.i, ptr %i.ac, ptr %5 ; 2 uses
  %i.ae = zext i32 %i.aa to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %.lr.ph.i.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i ], [ %i.aw, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 14
  %i.ag = load i16, ptr %i.af, align 2
  %i.ah = and i16 %i.ag, 4096
  %.not.i.i13.i.i.i.i.i = icmp eq i16 %i.ah, 0    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 13
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = sext i8 %i.aj to i32
  %i.al = sub nsw i32 13, %i.ak
  %i.am = load i32, ptr %.010.i.i.i.i, align 8
  %i.an = select i1 %.not.i.i13.i.i.i.i.i, i32 %i.am, i32 %i.al
  %.not.i.i.i.i.i = icmp eq i32 %i.aa, %i.an
  br i1 %.not.i.i.i.i.i, label %bb.d, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = and i64 %i.aq, 281474976710655
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = select i1 %.not.i.i13.i.i.i.i.i, ptr %i.as, ptr %.010.i.i.i.i ; 2 uses
  %i.au = icmp eq ptr %i.ad, %i.at
  br i1 %i.au, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %i.ad, ptr %i.at, i64 %i.ae)
  %i.av = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.av, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.c
  %i.aw = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aw, %i.u
  br i1 %.not.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %bb.c, !llvm.loop !219

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.d, %bb.b
  %.0.lcssa.i.i.i.i = phi ptr [ %i.r, %bb.b ], [ %.010.i.i.i.i, %bb.d ], [ %.010.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i ], [ %i.u, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %i.t
  %.not.i = icmp eq ptr %.0.lcssa.i.i.i.i, %i.ax
  br i1 %.not.i, label %_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread, label %_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit

_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 16 ; 2 uses
  call void @_ZN5glTF28Material20SetTexturePropertiesERNS_5AssetEPN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEERNS_11TextureInfoE(ptr noundef nonnull align 8 dereferenceable(1369) %0, ptr noundef nonnull align 8 dereferenceable(3624) %1, ptr noundef nonnull %i.ay, ptr noundef nonnull align 8 dereferenceable(48) %4)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = call noundef ptr @_ZN10glTFCommon19FindNumberInContextERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKcSA_SA_(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull @.str.187, ptr noundef %i.ba, ptr noundef %i.bc) ; 6 uses
  %.not12 = icmp eq ptr %i.bd, null
  br i1 %.not12, label %_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 14
  %i.bf = load i16, ptr %i.be, align 2
  %i.bg = zext i16 %i.bf to i32                   ; 4 uses
  %i.bh = and i32 %i.bg, 512
  %.not.i13 = icmp eq i32 %i.bh, 0
  br i1 %.not.i13, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bi = load double, ptr %i.bd, align 8
  br label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9GetDoubleEv.exit

bb.g:                                             ; preds = %bb.e
  %i.bj = and i32 %i.bg, 32
  %.not2.i = icmp eq i32 %i.bj, 0
  br i1 %.not2.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bk = load i32, ptr %i.bd, align 8
  %i.bl = sitofp i32 %i.bk to double
  br label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9GetDoubleEv.exit

bb.i:                                             ; preds = %bb.g
  %i.bm = and i32 %i.bg, 64
  %.not3.i = icmp eq i32 %i.bm, 0
  br i1 %.not3.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bn = load i32, ptr %i.bd, align 8
  %i.bo = uitofp i32 %i.bn to double
  br label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9GetDoubleEv.exit

bb.k:                                             ; preds = %bb.i
  %i.bp = and i32 %i.bg, 128
  %.not4.i = icmp eq i32 %i.bp, 0
  %i.bq = load i64, ptr %i.bd, align 8            ; 2 uses
  br i1 %.not4.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.br = sitofp i64 %i.bq to double
  br label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9GetDoubleEv.exit

bb.m:                                             ; preds = %bb.k
  %i.bs = uitofp i64 %i.bq to double
  br label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9GetDoubleEv.exit

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9GetDoubleEv.exit: ; preds = %bb.f, %bb.h, %bb.j, %bb.l, %bb.m
  %.0.i14 = phi double [ %i.bi, %bb.f ], [ %i.bl, %bb.h ], [ %i.bo, %bb.j ], [ %i.br, %bb.l ], [ %i.bs, %bb.m ]
  %i.bt = fptrunc double %.0.i14 to float
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 48
  store float %i.bt, ptr %i.bu, align 8
  br label %_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread

_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, %bb.a, %_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9GetDoubleEv.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5glTF28Material20SetTexturePropertiesERNS_5AssetEPN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEERNS_11TextureInfoE(ptr noundef nonnull align 8 dereferenceable(1369) %0, ptr noundef nonnull align 8 dereferenceable(3624) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(48) %3) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.b = load i8, ptr %i.a, align 4, !range !19, !noundef !20
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN5glTF26Object13FindExtensionERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEPKc.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = tail call noundef ptr @_ZN10glTFCommon19FindObjectInContextERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKcSA_SA_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.75, ptr noundef %i.e, ptr noundef %i.g) ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZN5glTF26Object13FindExtensionERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEPKc.exit.thread, label %_ZN5glTF26Object13FindExtensionERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEPKc.exit

_ZN5glTF26Object13FindExtensionERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEPKc.exit: ; preds = %bb.b
  %i.i = tail call noundef ptr @_ZN10glTFCommon19FindObjectInContextERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKcSA_SA_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull @.str.330, ptr noundef %i.e, ptr noundef %i.g) ; 4 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %_ZN5glTF26Object13FindExtensionERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEPKc.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN5glTF26Object13FindExtensionERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEPKc.exit
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i8 1, ptr %i.j, align 8
  %i.k = load ptr, ptr %i.d, align 8
  %i.l = load ptr, ptr %i.f, align 8
  %i.m = tail call noundef ptr @_ZN10glTFCommon18FindArrayInContextERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKcSA_SA_(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull @.str.375, ptr noundef %i.k, ptr noundef %i.l) ; 2 uses
  %.not38 = icmp eq ptr %i.m, null
  br i1 %.not38, label %bb.u, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = and i64 %i.p, 281474976710655
  %i.r = inttoptr i64 %i.q to ptr                 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 14
  %i.t = load i16, ptr %i.s, align 2
  %i.u = zext i16 %i.t to i32                     ; 4 uses
  %i.v = and i32 %i.u, 512
  %.not.i.i42 = icmp eq i32 %i.v, 0
  br i1 %.not.i.i42, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = load double, ptr %i.r, align 8
  br label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE8GetFloatEv.exit

bb.f:                                             ; preds = %bb.d
  %i.x = and i32 %i.u, 32
  %.not2.i.i = icmp eq i32 %i.x, 0
  br i1 %.not2.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = load i32, ptr %i.r, align 8
  %i.z = sitofp i32 %i.y to double
  br label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE8GetFloatEv.exit

bb.h:                                             ; preds = %bb.f
  %i.aa = and i32 %i.u, 64
  %.not3.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not3.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = load i32, ptr %i.r, align 8
  %i.ac = uitofp i32 %i.ab to double
  br label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE8GetFloatEv.exit

bb.j:                                             ; preds = %bb.h
  %i.ad = and i32 %i.u, 128
  %.not4.i.i = icmp eq i32 %i.ad, 0
  %i.ae = load i64, ptr %i.r, align 8             ; 2 uses
  br i1 %.not4.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = sitofp i64 %i.ae to double
  br label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE8GetFloatEv.exit

bb.l:                                             ; preds = %bb.j
  %i.ag = uitofp i64 %i.ae to double
  br label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE8GetFloatEv.exit

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE8GetFloatEv.exit: ; preds = %bb.e, %bb.g, %bb.i, %bb.k, %bb.l
  %.0.i.i = phi double [ %i.w, %bb.e ], [ %i.z, %bb.g ], [ %i.ac, %bb.i ], [ %i.af, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = fptrunc double %.0.i.i to float
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 28
  store float %i.ah, ptr %i.ai, align 4
  %i.aj = load ptr, ptr %i.n, align 8
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = and i64 %i.ak, 281474976710655
  %i.am = inttoptr i64 %i.al to ptr               ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 30
  %i.ap = load i16, ptr %i.ao, align 2
  %i.aq = zext i16 %i.ap to i32                   ; 4 uses
  %i.ar = and i32 %i.aq, 512
  %.not.i.i43 = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i43, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE8GetFloatEv.exit
  %i.as = load double, ptr %i.an, align 8
  br label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE8GetFloatEv.exit48

bb.n:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE8GetFloatEv.exit
  %i.at = and i32 %i.aq, 32
  %.not2.i.i45 = icmp eq i32 %i.at, 0
  br i1 %.not2.i.i45, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = load i32, ptr %i.an, align 8
  %i.av = sitofp i32 %i.au to double
  br label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE8GetFloatEv.exit48

bb.p:                                             ; preds = %bb.n
  %i.aw = and i32 %i.aq, 64
  %.not3.i.i46 = icmp eq i32 %i.aw, 0
  br i1 %.not3.i.i46, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ax = load i32, ptr %i.an, align 8
  %i.ay = uitofp i32 %i.ax to double
  br label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE8GetFloatEv.exit48

bb.r:                                             ; preds = %bb.p
  %i.az = and i32 %i.aq, 128
  %.not4.i.i47 = icmp eq i32 %i.az, 0
  %i.ba = load i64, ptr %i.an, align 8            ; 2 uses
  br i1 %.not4.i.i47, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bb = sitofp i64 %i.ba to double
end_hunk_4
begin_hunk_5_@_ZNSt6vectorIfSaIfEE17_M_default_appendEm:bb.a
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %0, align 8                ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store float 0.000000e+00, ptr %i.b, align 4
  %i.p = getelementptr i8, ptr %i.b, i64 4        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 2       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.236) #36
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 2305843009213693951) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #37 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store float 0.000000e+00, ptr %i.y, align 4
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit
  %i.ad = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #35
  br label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36

_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36: ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %1
  store ptr %i.ae, ptr %i.a, align 8
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v
  store ptr %i.af, ptr %i.h, align 8
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5glTF26Camera4ReadERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEERNS_5AssetE(ptr noundef nonnull align 8 dereferenceable(284) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(3624) %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %i.d = alloca float, align 4                    ; 4 uses
  %i.e = alloca float, align 4                    ; 4 uses
  %i.f = alloca float, align 4                    ; 4 uses
  %i.g = alloca float, align 4                    ; 4 uses
  %i.h = alloca float, align 4                    ; 4 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.k = load i16, ptr %i.j, align 2
  %i.l = icmp eq i16 %i.k, 3
  br i1 %i.l, label %bb.b, label %_ZN10glTFCommonL15MemberOrDefaultIPKcEET_RN9rapidjson12GenericValueINS4_4UTF8IcEENS4_19MemoryPoolAllocatorINS4_12CrtAllocatorEEEEES2_S3_.exit.thread

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 14
  store i16 1029, ptr %i.m, align 2
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = and i64 %i.p, -281474976710656
  %i.r = or i64 %i.q, ptrtoint (ptr @.str.92 to i64) ; 2 uses
  %i.s = inttoptr i64 %i.r to ptr
  store ptr %i.s, ptr %i.n, align 8
  store i32 4, ptr %3, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = and i64 %i.v, 281474976710655
  %i.x = inttoptr i64 %i.w to ptr                 ; 4 uses
  %i.y = load i32, ptr %1, align 8                ; 2 uses
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.z, 5
  %i.aa = getelementptr i8, ptr %i.x, i64 %.idx.i.i.i.i.i ; 2 uses
  %.not9.i.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not9.i.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b
  %i.ab = lshr i64 ptrtoint (ptr @.str.92 to i64), 40
  %i.ac = trunc i64 %i.ab to i8
  %i.ad = and i64 %i.r, 1152921504606846976
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.ad, 0    ; 2 uses
  %i.ae = sext i8 %i.ac to i32
  %i.af = sub nsw i32 13, %i.ae
  %i.ag = select i1 %.not.i.i.i.i.i.i.i.i, i32 4, i32 %i.af ; 2 uses
  %i.ah = and i64 ptrtoint (ptr @.str.92 to i64), 281474976710655
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = select i1 %.not.i.i.i.i.i.i.i.i, ptr %i.ai, ptr %3 ; 2 uses
  %i.ak = zext i32 %i.ag to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.010.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i ], [ %i.bc, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i ] ; 8 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 14
  %i.am = load i16, ptr %i.al, align 2
  %i.an = and i16 %i.am, 4096
  %.not.i.i13.i.i.i.i.i.i = icmp eq i16 %i.an, 0  ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 13
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = sext i8 %i.ap to i32
  %i.ar = sub nsw i32 13, %i.aq
  %i.as = load i32, ptr %.010.i.i.i.i.i, align 8
  %i.at = select i1 %.not.i.i13.i.i.i.i.i.i, i32 %i.as, i32 %i.ar
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ag, %i.at
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = and i64 %i.aw, 281474976710655
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = select i1 %.not.i.i13.i.i.i.i.i.i, ptr %i.ay, ptr %.010.i.i.i.i.i ; 2 uses
  %i.ba = icmp eq ptr %i.aj, %i.az
  br i1 %i.ba, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr %i.aj, ptr %i.az, i64 %i.ak)
  %i.bb = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.bb, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i, %bb.c
  %i.bc = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bc, %i.aa
  br i1 %.not.i.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i, label %bb.c, !llvm.loop !219

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i, %bb.d, %bb.b
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.x, %bb.b ], [ %i.aa, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i ], [ %.010.i.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i ], [ %.010.i.i.i.i.i, %bb.d ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %i.z
  %.not.i.i = icmp eq ptr %.0.lcssa.i.i.i.i.i, %i.bd
  br i1 %.not.i.i, label %_ZN10glTFCommonL15MemberOrDefaultIPKcEET_RN9rapidjson12GenericValueINS4_4UTF8IcEENS4_19MemoryPoolAllocatorINS4_12CrtAllocatorEEEEES2_S3_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 30
  %i.bf = load i16, ptr %i.be, align 2            ; 2 uses
  %i.bg = and i16 %i.bf, 1024
  %.not10.i.i = icmp eq i16 %i.bg, 0
  br i1 %.not10.i.i, label %_ZN10glTFCommonL15MemberOrDefaultIPKcEET_RN9rapidjson12GenericValueINS4_4UTF8IcEENS4_19MemoryPoolAllocatorINS4_12CrtAllocatorEEEEES2_S3_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %i.bi = and i16 %i.bf, 4096
  %.not.i.i.i9.i.i = icmp eq i16 %i.bi, 0
  br i1 %.not.i.i.i9.i.i, label %_ZN10glTFCommonL15MemberOrDefaultIPKcEET_RN9rapidjson12GenericValueINS4_4UTF8IcEENS4_19MemoryPoolAllocatorINS4_12CrtAllocatorEEEEES2_S3_.exit, label %_ZN10glTFCommonL15MemberOrDefaultIPKcEET_RN9rapidjson12GenericValueINS4_4UTF8IcEENS4_19MemoryPoolAllocatorINS4_12CrtAllocatorEEEEES2_S3_.exit.thread

_ZN10glTFCommonL15MemberOrDefaultIPKcEET_RN9rapidjson12GenericValueINS4_4UTF8IcEENS4_19MemoryPoolAllocatorINS4_12CrtAllocatorEEEEES2_S3_.exit.thread: ; preds = %bb.f, %bb.a, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i, %bb.e
  %.ph = phi ptr [ @.str.381, %bb.e ], [ @.str.381, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i ], [ @.str.381, %bb.a ], [ %i.bh, %bb.f ]
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.bj, ptr %4, align 8
  br label %bb.g

_ZN10glTFCommonL15MemberOrDefaultIPKcEET_RN9rapidjson12GenericValueINS4_4UTF8IcEENS4_19MemoryPoolAllocatorINS4_12CrtAllocatorEEEEES2_S3_.exit: ; preds = %bb.f
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = and i64 %i.bm, 281474976710655          ; 2 uses
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.bp, ptr %4, align 8
  %i.bq = icmp eq i64 %i.bn, 0
  br i1 %i.bq, label %.noexc, label %bb.g

.noexc:                                           ; preds = %_ZN10glTFCommonL15MemberOrDefaultIPKcEET_RN9rapidjson12GenericValueINS4_4UTF8IcEENS4_19MemoryPoolAllocatorINS4_12CrtAllocatorEEEEES2_S3_.exit
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.264) #36
  unreachable

bb.g:                                             ; preds = %_ZN10glTFCommonL15MemberOrDefaultIPKcEET_RN9rapidjson12GenericValueINS4_4UTF8IcEENS4_19MemoryPoolAllocatorINS4_12CrtAllocatorEEEEES2_S3_.exit.thread, %_ZN10glTFCommonL15MemberOrDefaultIPKcEET_RN9rapidjson12GenericValueINS4_4UTF8IcEENS4_19MemoryPoolAllocatorINS4_12CrtAllocatorEEEEES2_S3_.exit
  %i.br = phi ptr [ %i.bj, %_ZN10glTFCommonL15MemberOrDefaultIPKcEET_RN9rapidjson12GenericValueINS4_4UTF8IcEENS4_19MemoryPoolAllocatorINS4_12CrtAllocatorEEEEES2_S3_.exit.thread ], [ %i.bp, %_ZN10glTFCommonL15MemberOrDefaultIPKcEET_RN9rapidjson12GenericValueINS4_4UTF8IcEENS4_19MemoryPoolAllocatorINS4_12CrtAllocatorEEEEES2_S3_.exit ] ; 6 uses
  %i.bs = phi ptr [ %.ph, %_ZN10glTFCommonL15MemberOrDefaultIPKcEET_RN9rapidjson12GenericValueINS4_4UTF8IcEENS4_19MemoryPoolAllocatorINS4_12CrtAllocatorEEEEES2_S3_.exit.thread ], [ %i.bo, %_ZN10glTFCommonL15MemberOrDefaultIPKcEET_RN9rapidjson12GenericValueINS4_4UTF8IcEENS4_19MemoryPoolAllocatorINS4_12CrtAllocatorEEEEES2_S3_.exit ] ; 3 uses
  %i.bt = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bs) #34 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #34
  store i64 %i.bt, ptr %i.i, align 8
  %i.bu = icmp ugt i64 %i.bt, 15
  br i1 %i.bu, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.g
  %i.bv = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 0) ; 2 uses
  store ptr %i.bv, ptr %4, align 8
  %i.bw = load i64, ptr %i.i, align 8
  store i64 %i.bw, ptr %i.br, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.g
  %i.bx = phi ptr [ %i.bv, %.noexc.i ], [ %i.br, %bb.g ] ; 2 uses
  switch i64 %i.bt, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.by = load i8, ptr %i.bs, align 1
  store i8 %i.by, ptr %i.bx, align 1
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bx, ptr nonnull align 1 %i.bs, i64 %i.bt, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i
  %i.bz = load i64, ptr %i.i, align 8             ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.bz, ptr %i.ca, align 8
  %i.cb = load ptr, ptr %4, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.bz
  store i8 0, ptr %i.cc, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #34
  %i.cd = load i64, ptr %i.ca, align 8
  %i.ce = icmp eq i64 %i.cd, 12
  br i1 %i.ce, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread24

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.j
  %i.cf = load ptr, ptr %4, align 8               ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 1
  %i.ch = xor i64 %i.cg, 7021788497215517295
  %i.ci = getelementptr i8, ptr %i.cf, i64 8
  %i.cj = load i32, ptr %i.ci, align 1
  %i.ck = zext i32 %i.cj to i64
  %i.cl = xor i64 %i.ck, 1667852400
  %i.cm = or i64 %i.ch, %i.cl
  %i.cn = icmp ne i64 %i.cm, 0
  %i.co = zext i1 %i.cn to i32
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread24

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread24: ; preds = %bb.j, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread24
  %.sink33 = phi i32 [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread24 ], [ 1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ]
  %i.cq = phi ptr [ @.str.381, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread24 ], [ @.str.382, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ]
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i32 %.sink33, ptr %i.cr, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = invoke noundef ptr @_ZN10glTFCommon19FindObjectInContextERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKcSA_SA_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.cq, ptr noundef %i.cu, ptr noundef %i.cw)
          to label %_ZN5glTF26Object10FindObjectERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEPKc.exit unwind label %bb.m ; 9 uses

_ZN5glTF26Object10FindObjectERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEPKc.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.not = icmp eq ptr %i.cx, null
  br i1 %.not, label %bb.k, label %bb.o

bb.k:                                             ; preds = %_ZN5glTF26Object10FindObjectERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEPKc.exit
  %i.cy = call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, ptr noundef nonnull @.str.383)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  invoke void @__cxa_throw(ptr nonnull %i.cy, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
          to label %bb.t unwind label %bb.m

bb.m:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.l
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.n:                                             ; preds = %bb.k
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.cy) #34
  br label %bb.s

bb.o:                                             ; preds = %_ZN5glTF26Object10FindObjectERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEPKc.exit
  %i.db = load i32, ptr %i.cs, align 8
  %i.dc = icmp eq i32 %i.db, 0
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 2 uses
  br i1 %i.dc, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #34
  %i.dg = call fastcc noundef zeroext i1 @_ZN10glTFCommonL10ReadMemberIfEEbRN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEPKcRT_(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.cx, ptr noundef nonnull @.str.384, ptr noundef nonnull align 4 dereferenceable(4) %i.h)
  %i.dh = load float, ptr %i.h, align 4
  %i.di = select i1 %i.dg, float %i.dh, float 0.000000e+00
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #34
  store float %i.di, ptr %i.dd, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #34
  %i.dj = call fastcc noundef zeroext i1 @_ZN10glTFCommonL10ReadMemberIfEEbRN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEPKcRT_(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.cx, ptr noundef nonnull @.str.385, ptr noundef nonnull align 4 dereferenceable(4) %i.g)
  %i.dk = load float, ptr %i.g, align 4
  %i.dl = select i1 %i.dj, float %i.dk, float 1.570750e+00
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #34
  store float %i.dl, ptr %i.de, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #34
  %i.dm = call fastcc noundef zeroext i1 @_ZN10glTFCommonL10ReadMemberIfEEbRN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEPKcRT_(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.cx, ptr noundef nonnull @.str.386, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
  %i.dn = load float, ptr %i.f, align 4
  %i.do = select i1 %i.dm, float %i.dn, float 1.000000e+02
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #34
  store float %i.do, ptr %i.df, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  %i.dp = call fastcc noundef zeroext i1 @_ZN10glTFCommonL10ReadMemberIfEEbRN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEPKcRT_(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.cx, ptr noundef nonnull @.str.387, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
  %i.dq = load float, ptr %i.e, align 4
  %i.dr = select i1 %i.dp, float %i.dq, float f0x3C23D70A
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  %i.ds = call fastcc noundef zeroext i1 @_ZN10glTFCommonL10ReadMemberIfEEbRN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEPKcRT_(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.cx, ptr noundef nonnull @.str.388, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  %i.dt = load float, ptr %i.d, align 4
  %i.du = select i1 %i.ds, float %i.dt, float 1.000000e+00
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  store float %i.du, ptr %i.dd, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.dv = call fastcc noundef zeroext i1 @_ZN10glTFCommonL10ReadMemberIfEEbRN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEPKcRT_(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.cx, ptr noundef nonnull @.str.389, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  %i.dw = load float, ptr %i.c, align 4
  %i.dx = select i1 %i.dv, float %i.dw, float 1.000000e+00
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  store float %i.dx, ptr %i.de, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  %i.dy = call fastcc noundef zeroext i1 @_ZN10glTFCommonL10ReadMemberIfEEbRN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEPKcRT_(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.cx, ptr noundef nonnull @.str.386, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %i.dz = load float, ptr %i.b, align 4
  %i.ea = select i1 %i.dy, float %i.dz, float 1.000000e+02
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  store float %i.ea, ptr %i.df, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.eb = call fastcc noundef zeroext i1 @_ZN10glTFCommonL10ReadMemberIfEEbRN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEPKcRT_(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.cx, ptr noundef nonnull @.str.387, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.ec = load float, ptr %i.a, align 4
  %i.ed = select i1 %i.eb, float %i.ec, float f0x3C23D70A
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sink = phi float [ %i.dr, %bb.p ], [ %i.ed, %bb.q ]
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 280
  store float %.sink, ptr %i.ee, align 8
  %i.ef = load ptr, ptr %4, align 8               ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.br
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.r
  %i.eh = load i64, ptr %i.br, align 8
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ei) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  ret void

end_hunk_5
