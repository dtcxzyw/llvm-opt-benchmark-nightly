Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nanobind/original/error?download=true
inline.NumInlined: 169
inline.NumDeleted: 93
begin_hunk_0_@_ZN8nanobind6detail10error_whatEPNS0_13error_payloadE:bb.a
  %i.at = getelementptr inbounds i8, ptr %.sroa.0128.0174, i64 -8 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  store ptr %i.au, ptr %i.b, align 8
  %i.av = invoke ptr @PyFrame_GetCode(ptr noundef %i.au)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

bb.r:                                             ; preds = %.lr.ph176
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 112
  %i.ax = load ptr, ptr %i.aw, align 8            ; 7 uses
  %.not.i.i.i60 = icmp eq ptr %i.ax, null         ; 2 uses
  br i1 %.not.i.i.i60, label %_ZN8nanobind6borrowINS_3strEEET_NS_6handleE.exit53, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ay = load i32, ptr %i.ax, align 8
  %i.az = add i32 %i.ay, 1                        ; 2 uses
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %_ZN8nanobind6borrowINS_3strEEET_NS_6handleE.exit53, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i32 %i.az, ptr %i.ax, align 8
  br label %_ZN8nanobind6borrowINS_3strEEET_NS_6handleE.exit53

_ZN8nanobind6borrowINS_3strEEET_NS_6handleE.exit53: ; preds = %bb.r, %bb.s, %bb.t
  %i.bb = invoke noundef ptr @PyUnicode_AsUTF8AndSize(ptr noundef %i.ax, ptr noundef null)
          to label %_ZNK8nanobind3str5c_strEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZNK8nanobind3str5c_strEv.exit:                   ; preds = %_ZN8nanobind6borrowINS_3strEEET_NS_6handleE.exit53
  br i1 %.not.i.i.i60, label %_ZNKR8nanobind6handle7dec_refEv.exit, label %bb.u

bb.u:                                             ; preds = %_ZNK8nanobind3str5c_strEv.exit
  %i.bc = load i64, ptr %i.ax, align 8            ; 2 uses
  %i.bd = and i64 %i.bc, 2147483648
  %.not2.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not2.i.i, label %bb.v, label %_ZNKR8nanobind6handle7dec_refEv.exit

bb.v:                                             ; preds = %bb.u
  %i.be = add nsw i64 %i.bc, -1                   ; 2 uses
  store i64 %i.be, ptr %i.ax, align 8
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %bb.w, label %_ZNKR8nanobind6handle7dec_refEv.exit

bb.w:                                             ; preds = %bb.v
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.ax)
          to label %_ZNKR8nanobind6handle7dec_refEv.exit unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  call void @__clang_call_terminate(ptr %i.bh) #25
  unreachable

_ZNKR8nanobind6handle7dec_refEv.exit:             ; preds = %_ZNK8nanobind3str5c_strEv.exit, %bb.u, %bb.v, %bb.w
  %.not44 = icmp eq ptr %i.bb, null
  br i1 %.not44, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZNKR8nanobind6handle7dec_refEv.exit
  invoke void @PyErr_Clear()
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.z:                                             ; preds = %bb.y, %_ZNKR8nanobind6handle7dec_refEv.exit
  %.033 = phi ptr [ %i.bb, %_ZNKR8nanobind6handle7dec_refEv.exit ], [ @.str.2, %bb.y ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.av, i64 120
  %i.bj = load ptr, ptr %i.bi, align 8            ; 7 uses
  %.not.i.i.i63 = icmp eq ptr %i.bj, null         ; 2 uses
  br i1 %.not.i.i.i63, label %_ZN8nanobind6borrowINS_3strEEET_NS_6handleE.exit51, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bk = load i32, ptr %i.bj, align 8
  %i.bl = add i32 %i.bk, 1                        ; 2 uses
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %_ZN8nanobind6borrowINS_3strEEET_NS_6handleE.exit51, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i32 %i.bl, ptr %i.bj, align 8
  br label %_ZN8nanobind6borrowINS_3strEEET_NS_6handleE.exit51

_ZN8nanobind6borrowINS_3strEEET_NS_6handleE.exit51: ; preds = %bb.z, %bb.aa, %bb.ab
  %i.bn = invoke noundef ptr @PyUnicode_AsUTF8AndSize(ptr noundef %i.bj, ptr noundef null)
          to label %_ZNK8nanobind3str5c_strEv.exit66 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZNK8nanobind3str5c_strEv.exit66:                 ; preds = %_ZN8nanobind6borrowINS_3strEEET_NS_6handleE.exit51
  br i1 %.not.i.i.i63, label %_ZNKR8nanobind6handle7dec_refEv.exit69, label %bb.ac

bb.ac:                                            ; preds = %_ZNK8nanobind3str5c_strEv.exit66
  %i.bo = load i64, ptr %i.bj, align 8            ; 2 uses
  %i.bp = and i64 %i.bo, 2147483648
  %.not2.i.i68 = icmp eq i64 %i.bp, 0
  br i1 %.not2.i.i68, label %bb.ad, label %_ZNKR8nanobind6handle7dec_refEv.exit69

bb.ad:                                            ; preds = %bb.ac
  %i.bq = add nsw i64 %i.bo, -1                   ; 2 uses
  store i64 %i.bq, ptr %i.bj, align 8
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %bb.ae, label %_ZNKR8nanobind6handle7dec_refEv.exit69

bb.ae:                                            ; preds = %bb.ad
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.bj)
          to label %_ZNKR8nanobind6handle7dec_refEv.exit69 unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bs = landingpad { ptr, i32 }
          catch ptr null
  %i.bt = extractvalue { ptr, i32 } %i.bs, 0
  call void @__clang_call_terminate(ptr %i.bt) #25
  unreachable

_ZNKR8nanobind6handle7dec_refEv.exit69:           ; preds = %_ZNK8nanobind3str5c_strEv.exit66, %bb.ac, %bb.ad, %bb.ae
  %.not45 = icmp eq ptr %i.bn, null
  br i1 %.not45, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_ZNKR8nanobind6handle7dec_refEv.exit69
  invoke void @PyErr_Clear()
          to label %bb.ah unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ah:                                            ; preds = %bb.ag, %_ZNKR8nanobind6handle7dec_refEv.exit69
  %.032 = phi ptr [ %i.bn, %_ZNKR8nanobind6handle7dec_refEv.exit69 ], [ @.str.3, %bb.ag ] ; 2 uses
  %i.bu = load ptr, ptr %i.l, align 8             ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.n, align 8             ; 2 uses
  %.not.i.i70 = icmp ult ptr %i.bv, %i.bw
  br i1 %.not.i.i70, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %i.bu to i64
  %i.bz = add i64 %i.by, 9
  %i.ca = sub i64 %i.bz, %i.bx
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ca)
  %.pre.i.i71 = load ptr, ptr %i.l, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.cb = phi ptr [ %.pre.i.i71, %bb.ai ], [ %i.bu, %bb.ah ]
  store i64 2459076912841367584, ptr %i.cb, align 1
  %i.cc = load ptr, ptr %i.l, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 2 uses
  store ptr %i.cd, ptr %i.l, align 8
  store i8 0, ptr %i.cd, align 1
  %i.ce = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.033) #29 ; 4 uses
  %i.cf = load ptr, ptr %i.l, align 8             ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ce
  %i.ch = load ptr, ptr %i.n, align 8             ; 2 uses
  %.not.i.i72 = icmp ult ptr %i.cg, %i.ch
  br i1 %.not.i.i72, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = ptrtoint ptr %i.cf to i64
  %.neg.i.i = add i64 %i.ce, 1
  %i.ck = add i64 %.neg.i.i, %i.cj
  %i.cl = sub i64 %i.ck, %i.ci
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.cl)
  %.pre.i.i73 = load ptr, ptr %i.l, align 8
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.cm = phi ptr [ %.pre.i.i73, %bb.ak ], [ %i.cf, %bb.aj ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cm, ptr nonnull align 1 %.033, i64 %i.ce, i1 false)
  %i.cn = load ptr, ptr %i.l, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.ce ; 2 uses
  store ptr %i.co, ptr %i.l, align 8
  store i8 0, ptr %i.co, align 1
  %i.cp = load ptr, ptr %i.l, align 8             ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load ptr, ptr %i.n, align 8             ; 2 uses
  %.not.i.i74 = icmp ult ptr %i.cq, %i.cr
  br i1 %.not.i.i74, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = ptrtoint ptr %i.cp to i64
  %i.cu = add i64 %i.ct, 9
  %i.cv = sub i64 %i.cu, %i.cs
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.cv)
  %.pre.i.i75 = load ptr, ptr %i.l, align 8
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.cw = phi ptr [ %.pre.i.i75, %bb.am ], [ %i.cp, %bb.al ]
  store i64 2334393380926139426, ptr %i.cw, align 1
  %i.cx = load ptr, ptr %i.l, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 2 uses
  store ptr %i.cy, ptr %i.l, align 8
  store i8 0, ptr %i.cy, align 1
  %i.cz = load ptr, ptr %i.b, align 8
  %i.da = invoke i32 @PyFrame_GetLineNumber(ptr noundef %i.cz)
          to label %bb.ao unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %bb.ao
  %.07.i = phi i32 [ %i.da, %bb.ao ], [ %i.dh, %bb.ap ] ; 3 uses
  %.0.i = phi i64 [ 10, %bb.ao ], [ %i.df, %bb.ap ] ; 3 uses
  %i.db = urem i32 %.07.i, 10
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr @.str.15, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1
  %i.df = add i64 %.0.i, -1                       ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.df
  store i8 %i.de, ptr %i.dg, align 1
  %i.dh = udiv i32 %.07.i, 10
  %.not.i77 = icmp ult i32 %.07.i, 10
  br i1 %.not.i77, label %bb.aq, label %bb.ap, !llvm.loop !11

bb.aq:                                            ; preds = %bb.ap
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.df
  %i.dj = sub i64 11, %.0.i                       ; 3 uses
  %i.dk = load ptr, ptr %i.l, align 8             ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dj
  %i.dm = load ptr, ptr %i.n, align 8             ; 2 uses
  %.not.i.i78 = icmp ult ptr %i.dl, %i.dm
  br i1 %.not.i.i78, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = ptrtoint ptr %i.dk to i64
  %i.dp = add i64 %i.do, 12
  %i.dq = add i64 %.0.i, %i.dn
  %i.dr = sub i64 %i.dp, %i.dq
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.dr)
  %.pre.i.i79 = load ptr, ptr %i.l, align 8
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.ds = phi ptr [ %.pre.i.i79, %bb.ar ], [ %i.dk, %bb.aq ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ds, ptr nonnull align 1 %i.di, i64 %i.dj, i1 false)
  %i.dt = load ptr, ptr %i.l, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dj ; 2 uses
  store ptr %i.du, ptr %i.l, align 8
  store i8 0, ptr %i.du, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.dv = load ptr, ptr %i.l, align 8             ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 5
  %i.dx = load ptr, ptr %i.n, align 8             ; 2 uses
  %.not.i.i80 = icmp ult ptr %i.dw, %i.dx
  br i1 %.not.i.i80, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = ptrtoint ptr %i.dv to i64
  %i.ea = add i64 %i.dz, 6
  %i.eb = sub i64 %i.ea, %i.dy
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.eb)
  %.pre.i.i81 = load ptr, ptr %i.l, align 8
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.ec = phi ptr [ %.pre.i.i81, %bb.at ], [ %i.dv, %bb.as ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.ec, ptr noundef nonnull align 1 dereferenceable(5) @.str.6, i64 5, i1 false)
  %i.ed = load ptr, ptr %i.l, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 5 ; 2 uses
  store ptr %i.ee, ptr %i.l, align 8
  store i8 0, ptr %i.ee, align 1
  %i.ef = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.032) #29 ; 4 uses
  %i.eg = load ptr, ptr %i.l, align 8             ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ef
  %i.ei = load ptr, ptr %i.n, align 8             ; 2 uses
  %.not.i.i82 = icmp ult ptr %i.eh, %i.ei
  br i1 %.not.i.i82, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = ptrtoint ptr %i.eg to i64
  %.neg.i.i83 = add i64 %i.ef, 1
  %i.el = add i64 %.neg.i.i83, %i.ek
  %i.em = sub i64 %i.el, %i.ej
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.em)
  %.pre.i.i84 = load ptr, ptr %i.l, align 8
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.en = phi ptr [ %.pre.i.i84, %bb.av ], [ %i.eg, %bb.au ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.en, ptr nonnull align 1 %.032, i64 %i.ef, i1 false)
  %i.eo = load ptr, ptr %i.l, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.ef ; 2 uses
  store ptr %i.ep, ptr %i.l, align 8
  store i8 0, ptr %i.ep, align 1
  %i.eq = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 1
  %i.es = load ptr, ptr %i.n, align 8
  %.not.i86 = icmp ult ptr %i.er, %i.es
  br i1 %.not.i86, label %_ZN8nanobind6detail6Buffer3putEc.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 2)
  %.pre.i = load ptr, ptr %i.l, align 8
  br label %_ZN8nanobind6detail6Buffer3putEc.exit

_ZN8nanobind6detail6Buffer3putEc.exit:            ; preds = %bb.aw, %bb.ax
  %i.et = phi ptr [ %.pre.i, %bb.ax ], [ %i.eq, %bb.aw ] ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 1
  store ptr %i.eu, ptr %i.l, align 8
  store i8 10, ptr %i.et, align 1
  %i.ev = load ptr, ptr %i.l, align 8
  store i8 0, ptr %i.ev, align 1
  %i.ew = load i64, ptr %i.av, align 8            ; 2 uses
  %i.ex = and i64 %i.ew, 2147483648
  %.not151 = icmp eq i64 %i.ex, 0
  br i1 %.not151, label %bb.ay, label %_ZL9Py_DECREFP7_object.exit48

bb.ay:                                            ; preds = %_ZN8nanobind6detail6Buffer3putEc.exit
  %i.ey = add nsw i64 %i.ew, -1                   ; 2 uses
  store i64 %i.ey, ptr %i.av, align 8
  %i.ez = icmp eq i64 %i.ey, 0
  br i1 %i.ez, label %bb.az, label %_ZL9Py_DECREFP7_object.exit48

bb.az:                                            ; preds = %bb.ay
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.av)
          to label %_ZL9Py_DECREFP7_object.exit48 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZL9Py_DECREFP7_object.exit48:                    ; preds = %bb.ay, %_ZN8nanobind6detail6Buffer3putEc.exit, %bb.az
  %i.fa = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.fb = load i64, ptr %i.fa, align 8            ; 2 uses
  %i.fc = and i64 %i.fb, 2147483648
  %.not152 = icmp eq i64 %i.fc, 0
  br i1 %.not152, label %bb.ba, label %_ZL9Py_DECREFP7_object.exit

bb.ba:                                            ; preds = %_ZL9Py_DECREFP7_object.exit48
  %i.fd = add nsw i64 %i.fb, -1                   ; 2 uses
  store i64 %i.fd, ptr %i.fa, align 8
  %i.fe = icmp eq i64 %i.fd, 0
  br i1 %i.fe, label %bb.bb, label %_ZL9Py_DECREFP7_object.exit

bb.bb:                                            ; preds = %bb.ba
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.fa)
          to label %_ZL9Py_DECREFP7_object.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZL9Py_DECREFP7_object.exit:                      ; preds = %bb.ba, %_ZL9Py_DECREFP7_object.exit48, %bb.bb
  %i.ff = load ptr, ptr %2, align 8, !noalias !15 ; 2 uses
  %.not149 = icmp eq ptr %i.at, %i.ff
  br i1 %.not149, label %._crit_edge177, label %.lr.ph176, !llvm.loop !12

bb.bc:                                            ; preds = %bb.g, %_ZNSt6vectorIP6_frameN8nanobind6detail12py_allocatorIS1_EEED2Ev.exit
  %.not150 = icmp eq ptr %.val, null
  br i1 %.not150, label %bb.by, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.fg = invoke ptr @PyObject_GetAttrString(ptr noundef nonnull %.val, ptr noundef nonnull @.str.7)
          to label %bb.be unwind label %bb.bu     ; 6 uses

bb.be:                                            ; preds = %bb.bd
  %.not.i54 = icmp eq ptr %i.fg, null
  br i1 %.not.i54, label %bb.bf, label %bb.bg, !prof !3

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZN8nanobind6detail18raise_python_errorEv() #30
          to label %.noexc55 unwind label %bb.bu

.noexc55:                                         ; preds = %bb.bf
  unreachable

bb.bg:                                            ; preds = %bb.be
  store ptr %i.fg, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr %i.fg, ptr %4, align 8
  %i.fh = load i32, ptr %i.fg, align 8
  %i.fi = add i32 %i.fh, 1                        ; 2 uses
  %i.fj = icmp eq i32 %i.fi, 0
  br i1 %i.fj, label %_ZN8nanobind6borrowINS_3strEEET_NS_6handleE.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  store i32 %i.fi, ptr %i.fg, align 8
  %.pre = load ptr, ptr %4, align 8
  br label %_ZN8nanobind6borrowINS_3strEEET_NS_6handleE.exit

_ZN8nanobind6borrowINS_3strEEET_NS_6handleE.exit: ; preds = %bb.bg, %bb.bh
  %i.fk = phi ptr [ %i.fg, %bb.bg ], [ %.pre, %bb.bh ]
  %i.fl = invoke noundef ptr @PyUnicode_AsUTF8AndSize(ptr noundef %i.fk, ptr noundef null)
          to label %_ZNK8nanobind3str5c_strEv.exit90 unwind label %bb.bv ; 2 uses

_ZNK8nanobind3str5c_strEv.exit90:                 ; preds = %_ZN8nanobind6borrowINS_3strEEET_NS_6handleE.exit
  %i.fm = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fl) #29 ; 4 uses
  %i.fn = load ptr, ptr %i.l, align 8             ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fm
  %i.fp = load ptr, ptr %i.n, align 8             ; 2 uses
  %.not.i.i91 = icmp ult ptr %i.fo, %i.fp
  br i1 %.not.i.i91, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %_ZNK8nanobind3str5c_strEv.exit90
  %i.fq = ptrtoint ptr %i.fp to i64
  %i.fr = ptrtoint ptr %i.fn to i64
  %.neg.i.i92 = add i64 %i.fm, 1
  %i.fs = add i64 %.neg.i.i92, %i.fr
  %i.ft = sub i64 %i.fs, %i.fq
  call void @_ZN8nanobind6detail6Buffer6expandEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ft)
  %.pre.i.i93 = load ptr, ptr %i.l, align 8
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %_ZNK8nanobind3str5c_strEv.exit90
  %i.fu = phi ptr [ %.pre.i.i93, %bb.bi ], [ %i.fn, %_ZNK8nanobind3str5c_strEv.exit90 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fu, ptr nonnull align 1 %i.fl, i64 %i.fm, i1 false)
  %i.fv = load ptr, ptr %i.l, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.fm ; 2 uses
  store ptr %i.fw, ptr %i.l, align 8
  store i8 0, ptr %i.fw, align 1
  %i.fx = load ptr, ptr %4, align 8               ; 4 uses
  %.not.i.i95 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i95, label %_ZNKR8nanobind6handle7dec_refEv.exit97, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.fy = load i64, ptr %i.fx, align 8            ; 2 uses
  %i.fz = and i64 %i.fy, 2147483648
  %.not2.i.i96 = icmp eq i64 %i.fz, 0
  br i1 %.not2.i.i96, label %bb.bl, label %_ZNKR8nanobind6handle7dec_refEv.exit97

bb.bl:                                            ; preds = %bb.bk
end_hunk_0
