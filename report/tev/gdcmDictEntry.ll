Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/gdcmDictEntry?download=true
inline.NumInlined: 282
inline.NumDeleted: 148
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4gdcm9DictEntry23CheckKeywordAgainstNameEPKcS2_:bb.a
  %i.cx = sub i64 %.pre-phi202, %i.cw             ; 2 uses
  %i.cy = icmp slt i64 %i.cx, 2
  br i1 %i.cy, label %._crit_edge178, label %.lr.ph.i.i.i57, !llvm.loop !12

_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i64: ; preds = %bb.m
  %.pre20.i.i65 = ptrtoint ptr %i.cp to i64
  %i.cz = icmp eq ptr %i.cp, %i.cm
  %i.da = ptrtoint ptr %.pre-phi198 to i64
  %i.db = sub i64 %.pre20.i.i65, %i.da            ; 2 uses
  %.not35175 = icmp eq i64 %i.db, -1
  %or.cond335 = select i1 %i.cz, i1 true, i1 %.not35175
  br i1 %or.cond335, label %._crit_edge178, label %.lr.ph177

.lr.ph177:                                        ; preds = %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i64, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i74
  %.030176 = phi i64 [ %i.eb, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i74 ], [ %i.db, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i64 ]
  %i.dc = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.030176, i64 noundef 2, ptr noundef nonnull @.str.2, i64 noundef 1)
          to label %bb.o unwind label %bb.r       ; 0 uses

bb.o:                                             ; preds = %.lr.ph177
  %i.dd = load i8, ptr %2, align 8                ; 6 uses
  %i.de = trunc i8 %i.dd to i1                    ; 2 uses
  %i.df = load ptr, ptr %i.r, align 8             ; 5 uses
  %i.dg = select i1 %i.de, ptr %i.df, ptr %i.t    ; 7 uses
  %i.dh = load i64, ptr %i.v, align 8             ; 5 uses
  %i.di = lshr i8 %i.dd, 1
  %i.dj = zext nneg i8 %i.di to i64               ; 5 uses
  %i.dk = select i1 %i.de, i64 %i.dh, i64 %i.dj   ; 7 uses
  %i.dl = getelementptr i8, ptr %i.dg, i64 %i.dk  ; 2 uses
  %i.dm = ptrtoint ptr %i.dl to i64               ; 4 uses
  %i.dn = icmp slt i64 %i.dk, 2
  br i1 %i.dn, label %._crit_edge182, label %.lr.ph.i.i.i67

.lr.ph.i.i.i67:                                   ; preds = %bb.o, %bb.q
  %i.do = phi i64 [ %i.dx, %bb.q ], [ %i.dk, %bb.o ]
  %.02529.i.i.i68 = phi ptr [ %i.dv, %bb.q ], [ %i.dg, %bb.o ]
  %.reass.i.reass.i.reass.i70 = add nsw i64 %i.do, -1
  %i.dp = call noundef ptr @memchr(ptr noundef nonnull dereferenceable(1) %.02529.i.i.i68, i32 noundef -62, i64 noundef %.reass.i.reass.i.reass.i70) #14 ; 5 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %._crit_edge178, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i67
  %i.dr = load i16, ptr %i.dp, align 1
  %i.ds = icmp ne i16 %i.dr, -19006
  %i.dt = zext i1 %i.ds to i32
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i74, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dp, i64 1 ; 2 uses
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = sub i64 %i.dm, %i.dw                    ; 2 uses
  %i.dy = icmp slt i64 %i.dx, 2
  br i1 %i.dy, label %._crit_edge178, label %.lr.ph.i.i.i67, !llvm.loop !12

_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i74: ; preds = %bb.p
  %.pre20.i.i75 = ptrtoint ptr %i.dp to i64
  %i.dz = icmp eq ptr %i.dp, %i.dl
  %i.ea = ptrtoint ptr %i.dg to i64
  %i.eb = sub i64 %.pre20.i.i75, %i.ea            ; 2 uses
  %.not35 = icmp eq i64 %i.eb, -1
  %or.cond336 = select i1 %i.dz, i1 true, i1 %.not35
  br i1 %or.cond336, label %._crit_edge178, label %.lr.ph177, !llvm.loop !14

bb.r:                                             ; preds = %.lr.ph177
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

._crit_edge178:                                   ; preds = %bb.n, %.lr.ph.i.i.i57, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i74, %bb.q, %.lr.ph.i.i.i67, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i64
  %.pre-phi208 = phi i64 [ %.pre-phi202, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i64 ], [ %i.dm, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i74 ], [ %i.dm, %bb.q ], [ %i.dm, %.lr.ph.i.i.i67 ], [ %.pre-phi202, %.lr.ph.i.i.i57 ], [ %.pre-phi202, %bb.n ]
  %.pre-phi207 = phi i64 [ %.pre-phi201, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i64 ], [ %i.dk, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i74 ], [ %i.dk, %bb.q ], [ %i.dk, %.lr.ph.i.i.i67 ], [ %.pre-phi201, %.lr.ph.i.i.i57 ], [ %.pre-phi201, %bb.n ] ; 7 uses
  %.pre-phi206 = phi i64 [ %.pre-phi200, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i64 ], [ %i.dj, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i74 ], [ %i.dj, %bb.q ], [ %i.dj, %.lr.ph.i.i.i67 ], [ %.pre-phi200, %.lr.ph.i.i.i57 ], [ %.pre-phi200, %bb.n ] ; 4 uses
  %.pre-phi204 = phi ptr [ %.pre-phi198, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i64 ], [ %i.dg, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i74 ], [ %i.dg, %bb.q ], [ %i.dg, %.lr.ph.i.i.i67 ], [ %.pre-phi198, %.lr.ph.i.i.i57 ], [ %.pre-phi198, %bb.n ] ; 7 uses
  %i.ed = phi i64 [ %i.cj, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i64 ], [ %i.dh, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i74 ], [ %i.dh, %bb.q ], [ %i.dh, %.lr.ph.i.i.i67 ], [ %i.cj, %.lr.ph.i.i.i57 ], [ %i.cj, %bb.n ] ; 4 uses
  %i.ee = phi ptr [ %i.ck, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i64 ], [ %i.df, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i74 ], [ %i.df, %bb.q ], [ %i.df, %.lr.ph.i.i.i67 ], [ %i.ck, %.lr.ph.i.i.i57 ], [ %i.ck, %bb.n ] ; 4 uses
  %i.ef = phi i8 [ %i.cl, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i64 ], [ %i.dd, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i74 ], [ %i.dd, %bb.q ], [ %i.dd, %.lr.ph.i.i.i67 ], [ %i.cl, %.lr.ph.i.i.i57 ], [ %i.cl, %bb.n ] ; 4 uses
  %i.eg = getelementptr i8, ptr %.pre-phi204, i64 %.pre-phi207
  %i.eh = icmp slt i64 %.pre-phi207, 5
  br i1 %i.eh, label %._crit_edge182, label %.lr.ph.i.i.i77

.lr.ph.i.i.i77:                                   ; preds = %._crit_edge178, %bb.t
  %i.ei = phi i64 [ %i.ex, %bb.t ], [ %.pre-phi207, %._crit_edge178 ]
  %.02529.i.i.i78 = phi ptr [ %i.ev, %bb.t ], [ %.pre-phi204, %._crit_edge178 ]
  %.reass.i.reass.i.reass.i80 = add nsw i64 %i.ei, -4
  %i.ej = call noundef ptr @memchr(ptr noundef nonnull dereferenceable(1) %.02529.i.i.i78, i32 noundef 32, i64 noundef %.reass.i.reass.i.reass.i80) #14 ; 6 uses
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %._crit_edge182, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.i77
  %i.el = load i32, ptr %i.ej, align 1
  %i.em = xor i32 %i.el, 1701344288
  %i.en = getelementptr i8, ptr %i.ej, i64 4
  %i.eo = load i8, ptr %i.en, align 1
  %i.ep = zext i8 %i.eo to i32
  %i.eq = xor i32 %i.ep, 32
  %i.er = or i32 %i.em, %i.eq
  %i.es = icmp ne i32 %i.er, 0
  %i.et = zext i1 %i.es to i32
  %i.eu = icmp eq i32 %i.et, 0
  br i1 %i.eu, label %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i84, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ej, i64 1 ; 2 uses
  %i.ew = ptrtoint ptr %i.ev to i64
  %i.ex = sub i64 %.pre-phi208, %i.ew             ; 2 uses
  %i.ey = icmp slt i64 %i.ex, 5
  br i1 %i.ey, label %._crit_edge182, label %.lr.ph.i.i.i77, !llvm.loop !12

_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i84: ; preds = %bb.s
  %.pre20.i.i85 = ptrtoint ptr %i.ej to i64
  %i.ez = icmp eq ptr %i.ej, %i.eg
  %i.fa = ptrtoint ptr %.pre-phi204 to i64
  %i.fb = sub i64 %.pre20.i.i85, %i.fa            ; 2 uses
  %.not36179 = icmp eq i64 %i.fb, -1
  %or.cond337 = select i1 %i.ez, i1 true, i1 %.not36179
  br i1 %or.cond337, label %._crit_edge182, label %.lr.ph181

.lr.ph181:                                        ; preds = %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i84
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 3 uses
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph181, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit139
  %.028180 = phi i64 [ %i.fb, %.lr.ph181 ], [ %.129, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit139 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.fe = call i64 @llvm.usub.sat.i64(i64 %.028180, i64 3) ; 4 uses
  %i.ff = load i8, ptr %2, align 8, !noalias !21  ; 2 uses
  %i.fg = trunc i8 %i.ff to i1                    ; 2 uses
  %i.fh = load i64, ptr %i.v, align 8, !noalias !21
  %i.fi = lshr i8 %i.ff, 1
  %i.fj = zext nneg i8 %i.fi to i64
  %i.fk = select i1 %i.fg, i64 %i.fh, i64 %i.fj   ; 13 uses
  %i.fl = icmp ugt i64 %i.fe, %i.fk
  br i1 %i.fl, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  invoke void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_out_of_rangeB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #15
          to label %.noexc87 unwind label %bb.ai

.noexc87:                                         ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.fm = load ptr, ptr %i.r, align 8, !noalias !21
  %i.fn = select i1 %i.fg, ptr %i.fm, ptr %i.t    ; 8 uses
  %i.fo = sub nuw i64 %i.fk, %i.fe                ; 2 uses
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.fo, i64 8) ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.fk, %i.fe
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fe
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.fc, ptr align 1 %i.fp, i64 %.sroa.speculated.i.i, i1 false)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fc, i64 %.sroa.speculated.i.i
  store i8 0, ptr %i.fq, align 1, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.fr = call i64 @llvm.usub.sat.i64(i64 %.028180, i64 4) ; 4 uses
  %i.fs = icmp ugt i64 %i.fr, %i.fk
  br i1 %i.fs, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  invoke void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_out_of_rangeB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #15
          to label %.noexc91 unwind label %bb.aj

.noexc91:                                         ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.ft = sub nuw i64 %i.fk, %i.fr                ; 2 uses
  %.sroa.speculated.i.i88 = call i64 @llvm.umin.i64(i64 %i.ft, i64 9) ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i90 = icmp eq i64 %i.fk, %i.fr
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i90, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fr
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.fd, ptr align 1 %i.fu, i64 %.sroa.speculated.i.i88, i1 false)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fd, i64 %.sroa.speculated.i.i88
  store i8 0, ptr %i.fv, align 1, !tbaa !9
  %.not.i.i = icmp ugt i64 %i.fo, 7
  br i1 %.not.i.i, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit97.thread

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit: ; preds = %bb.ac
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %i.fc, ptr nonnull @.str.4, i64 %.sroa.speculated.i.i)
  %i.fw = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.fw, label %bb.ad, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit97

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit97: ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit
  %bcmp.i.i96 = call i32 @bcmp(ptr nonnull %i.fc, ptr nonnull @.str.5, i64 %.sroa.speculated.i.i)
  %i.fx = icmp eq i32 %bcmp.i.i96, 0
  br i1 %i.fx, label %bb.ad, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit97.thread

bb.ad:                                            ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit97, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit
  %i.fy = add i64 %.028180, 5                     ; 3 uses
  %i.fz = icmp ugt i64 %i.fy, %i.fk
  br i1 %i.fz, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit139, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ga = getelementptr i8, ptr %i.fn, i64 %i.fk  ; 2 uses
  %i.gb = ptrtoint ptr %i.ga to i64
  %gepdiff.i.i = sub nuw nsw i64 %i.fk, %i.fy     ; 2 uses
  %i.gc = icmp slt i64 %gepdiff.i.i, 5
  br i1 %i.gc, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit139.thread, label %.lr.ph.i.i.i98

.lr.ph.i.i.i98:                                   ; preds = %bb.ae
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fy
  br label %bb.af

bb.af:                                            ; preds = %bb.ah, %.lr.ph.i.i.i98
  %i.ge = phi i64 [ %gepdiff.i.i, %.lr.ph.i.i.i98 ], [ %i.gt, %bb.ah ]
  %.02529.i.i.i99 = phi ptr [ %i.gd, %.lr.ph.i.i.i98 ], [ %i.gr, %bb.ah ]
  %.reass.i.reass.i.reass.i101 = add nsw i64 %i.ge, -4
  %i.gf = call noundef ptr @memchr(ptr noundef nonnull dereferenceable(1) %.02529.i.i.i99, i32 noundef 32, i64 noundef %.reass.i.reass.i.reass.i101) #14 ; 6 uses
  %i.gg = icmp eq ptr %i.gf, null
  br i1 %i.gg, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit139.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gh = load i32, ptr %i.gf, align 1
  %i.gi = xor i32 %i.gh, 1701344288
  %i.gj = getelementptr i8, ptr %i.gf, i64 4
  %i.gk = load i8, ptr %i.gj, align 1
  %i.gl = zext i8 %i.gk to i32
  %i.gm = xor i32 %i.gl, 32
  %i.gn = or i32 %i.gi, %i.gm
  %i.go = icmp ne i32 %i.gn, 0
  %i.gp = zext i1 %i.go to i32
  %i.gq = icmp eq i32 %i.gp, 0
  br i1 %i.gq, label %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i105, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gf, i64 1 ; 2 uses
  %i.gs = ptrtoint ptr %i.gr to i64
  %i.gt = sub i64 %i.gb, %i.gs                    ; 2 uses
  %i.gu = icmp slt i64 %i.gt, 5
  br i1 %i.gu, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit139.thread, label %bb.af, !llvm.loop !12

_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i105: ; preds = %bb.ag
  %.pre20.i.i106 = ptrtoint ptr %i.gf to i64
  %i.gv = icmp eq ptr %i.gf, %i.ga
  %i.gw = ptrtoint ptr %i.fn to i64
  %i.gx = sub i64 %.pre20.i.i106, %i.gw
  br i1 %i.gv, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit139.thread, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit139

bb.ai:                                            ; preds = %bb.v
  %i.gy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit140

bb.aj:                                            ; preds = %bb.z
  %i.gz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit97.thread: ; preds = %bb.ac, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit97
  %.not.i.i108 = icmp ugt i64 %i.ft, 8
  br i1 %.not.i.i108, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit112, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit112.thread

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit112: ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit97.thread
  %bcmp.i.i111 = call i32 @bcmp(ptr nonnull %i.fd, ptr nonnull @.str.6, i64 %.sroa.speculated.i.i88)
  %i.ha = icmp eq i32 %bcmp.i.i111, 0
  br i1 %i.ha, label %bb.ak, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit112.thread

bb.ak:                                            ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit112
  %i.hb = add i64 %.028180, 5                     ; 3 uses
  %i.hc = icmp ugt i64 %i.hb, %i.fk
  br i1 %i.hc, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit139, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hd = getelementptr i8, ptr %i.fn, i64 %i.fk  ; 2 uses
  %i.he = ptrtoint ptr %i.hd to i64
  %gepdiff.i.i113 = sub nuw nsw i64 %i.fk, %i.hb  ; 2 uses
  %i.hf = icmp slt i64 %gepdiff.i.i113, 5
  br i1 %i.hf, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit139.thread, label %.lr.ph.i.i.i114

.lr.ph.i.i.i114:                                  ; preds = %bb.al
  %i.hg = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.hb
  br label %bb.am

bb.am:                                            ; preds = %bb.ao, %.lr.ph.i.i.i114
  %i.hh = phi i64 [ %gepdiff.i.i113, %.lr.ph.i.i.i114 ], [ %i.hw, %bb.ao ]
  %.02529.i.i.i115 = phi ptr [ %i.hg, %.lr.ph.i.i.i114 ], [ %i.hu, %bb.ao ]
  %.reass.i.reass.i.reass.i117 = add nsw i64 %i.hh, -4
  %i.hi = call noundef ptr @memchr(ptr noundef nonnull dereferenceable(1) %.02529.i.i.i115, i32 noundef 32, i64 noundef %.reass.i.reass.i.reass.i117) #14 ; 6 uses
  %i.hj = icmp eq ptr %i.hi, null
  br i1 %i.hj, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit139.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hk = load i32, ptr %i.hi, align 1
  %i.hl = xor i32 %i.hk, 1701344288
  %i.hm = getelementptr i8, ptr %i.hi, i64 4
  %i.hn = load i8, ptr %i.hm, align 1
  %i.ho = zext i8 %i.hn to i32
  %i.hp = xor i32 %i.ho, 32
  %i.hq = or i32 %i.hl, %i.hp
  %i.hr = icmp ne i32 %i.hq, 0
  %i.hs = zext i1 %i.hr to i32
  %i.ht = icmp eq i32 %i.hs, 0
  br i1 %i.ht, label %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i121, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hi, i64 1 ; 2 uses
  %i.hv = ptrtoint ptr %i.hu to i64
  %i.hw = sub i64 %i.he, %i.hv                    ; 2 uses
  %i.hx = icmp slt i64 %i.hw, 5
  br i1 %i.hx, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit139.thread, label %bb.am, !llvm.loop !12

_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i121: ; preds = %bb.an
  %.pre20.i.i122 = ptrtoint ptr %i.hi to i64
  %i.hy = icmp eq ptr %i.hi, %i.hd
  %i.hz = ptrtoint ptr %i.fn to i64
  %i.ia = sub i64 %.pre20.i.i122, %i.hz
  br i1 %i.hy, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit139.thread, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit139

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit112.thread: ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit97.thread, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit112
  %i.ib = icmp ugt i64 %.028180, %i.fk
  br i1 %i.ib, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit112.thread
  invoke void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_out_of_rangeB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #15
          to label %.noexc124 unwind label %.loopexit.split-lp

.noexc124:                                        ; preds = %bb.ap
  unreachable

bb.aq:                                            ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit112.thread
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE26__erase_external_with_moveEmm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.028180, i64 noundef 5)
          to label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5eraseEmm.exit126 unwind label %.loopexit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5eraseEmm.exit126: ; preds = %bb.aq
  %i.ic = load i8, ptr %2, align 8                ; 2 uses
  %i.id = trunc i8 %i.ic to i1                    ; 2 uses
  %i.ie = load ptr, ptr %i.r, align 8
  %i.if = select i1 %i.id, ptr %i.ie, ptr %i.t    ; 3 uses
  %i.ig = load i64, ptr %i.v, align 8
  %i.ih = lshr i8 %i.ic, 1
  %i.ii = zext nneg i8 %i.ih to i64
  %i.ij = select i1 %i.id, i64 %i.ig, i64 %i.ii   ; 3 uses
  %i.ik = getelementptr i8, ptr %i.if, i64 %i.ij  ; 2 uses
  %i.il = ptrtoint ptr %i.ik to i64
  %i.im = icmp slt i64 %i.ij, 5
  br i1 %i.im, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit139.thread, label %.lr.ph.i.i.i128

.lr.ph.i.i.i128:                                  ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5eraseEmm.exit126, %bb.as
  %i.in = phi i64 [ %i.jc, %bb.as ], [ %i.ij, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5eraseEmm.exit126 ]
  %.02529.i.i.i129 = phi ptr [ %i.ja, %bb.as ], [ %i.if, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5eraseEmm.exit126 ]
  %.reass.i.reass.i.reass.i131 = add nsw i64 %i.in, -4
  %i.io = call noundef ptr @memchr(ptr noundef nonnull dereferenceable(1) %.02529.i.i.i129, i32 noundef 32, i64 noundef %.reass.i.reass.i.reass.i131) #14 ; 6 uses
  %i.ip = icmp eq ptr %i.io, null
  br i1 %i.ip, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit139.thread, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i.i.i128
  %i.iq = load i32, ptr %i.io, align 1
  %i.ir = xor i32 %i.iq, 1701344288
  %i.is = getelementptr i8, ptr %i.io, i64 4
  %i.it = load i8, ptr %i.is, align 1
  %i.iu = zext i8 %i.it to i32
  %i.iv = xor i32 %i.iu, 32
  %i.iw = or i32 %i.ir, %i.iv
  %i.ix = icmp ne i32 %i.iw, 0
  %i.iy = zext i1 %i.ix to i32
  %i.iz = icmp eq i32 %i.iy, 0
  br i1 %i.iz, label %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i135, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ja = getelementptr inbounds nuw i8, ptr %i.io, i64 1 ; 2 uses
  %i.jb = ptrtoint ptr %i.ja to i64
  %i.jc = sub i64 %i.il, %i.jb                    ; 2 uses
  %i.jd = icmp slt i64 %i.jc, 5
  br i1 %i.jd, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit139.thread, label %.lr.ph.i.i.i128, !llvm.loop !12

_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i135: ; preds = %bb.ar
  %.pre20.i.i136 = ptrtoint ptr %i.io to i64
  %i.je = icmp eq ptr %i.io, %i.ik
  %i.jf = ptrtoint ptr %i.if to i64
  %i.jg = sub i64 %.pre20.i.i136, %i.jf
  br i1 %i.je, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit139.thread, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit139

.loopexit:                                        ; preds = %bb.aq
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

.loopexit.split-lp:                               ; preds = %bb.ap
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit139.thread: ; preds = %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i105, %bb.ae, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i121, %bb.al, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i135, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5eraseEmm.exit126, %bb.as, %.lr.ph.i.i.i128, %bb.ao, %bb.am, %bb.ah, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %._crit_edge182.loopexit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit139: ; preds = %bb.ak, %bb.ad, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i135, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i121, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i105
  %.129 = phi i64 [ %i.ia, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i121 ], [ %i.gx, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i105 ], [ %i.jg, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i135 ], [ -1, %bb.ad ], [ -1, %bb.ak ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  %.not36 = icmp eq i64 %.129, -1
  br i1 %.not36, label %._crit_edge182.loopexit, label %bb.u, !llvm.loop !17

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %.loopexit, %.loopexit.split-lp, %bb.aj
  %.pn38 = phi { ptr, i32 } [ %i.gz, %bb.aj ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit140

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit140: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, %bb.ai
  %.pn38.pn = phi { ptr, i32 } [ %i.gy, %bb.ai ], [ %.pn38, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %bb.bh

._crit_edge182.loopexit:                          ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit139, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit139.thread
  %.pre = load i8, ptr %2, align 8                ; 3 uses
  %.pre191 = load ptr, ptr %i.r, align 8          ; 2 uses
  %.pre192 = load i64, ptr %i.v, align 8          ; 2 uses
  %.pre209 = trunc i8 %.pre to i1                 ; 2 uses
  %.pre211 = select i1 %.pre209, ptr %.pre191, ptr %i.t
  %.pre213 = lshr i8 %.pre, 1
  %.pre215 = zext nneg i8 %.pre213 to i64         ; 2 uses
  %.pre217 = select i1 %.pre209, i64 %.pre192, i64 %.pre215
  br label %._crit_edge182

._crit_edge182:                                   ; preds = %bb.o, %bb.t, %.lr.ph.i.i.i77, %._crit_edge, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i84, %._crit_edge178, %._crit_edge182.loopexit
  %.pre-phi218 = phi i64 [ %.pre217, %._crit_edge182.loopexit ], [ %.pre-phi207, %bb.t ], [ %.pre-phi207, %._crit_edge178 ], [ %.pre-phi207, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i84 ], [ %.pre-phi201, %._crit_edge ], [ %.pre-phi207, %.lr.ph.i.i.i77 ], [ %i.dk, %bb.o ] ; 3 uses
  %.pre-phi216 = phi i64 [ %.pre215, %._crit_edge182.loopexit ], [ %.pre-phi206, %bb.t ], [ %.pre-phi206, %._crit_edge178 ], [ %.pre-phi206, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i84 ], [ %.pre-phi200, %._crit_edge ], [ %.pre-phi206, %.lr.ph.i.i.i77 ], [ %i.dj, %bb.o ] ; 2 uses
  %.pre-phi212 = phi ptr [ %.pre211, %._crit_edge182.loopexit ], [ %.pre-phi204, %bb.t ], [ %.pre-phi204, %._crit_edge178 ], [ %.pre-phi204, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i84 ], [ %.pre-phi198, %._crit_edge ], [ %.pre-phi204, %.lr.ph.i.i.i77 ], [ %i.dg, %bb.o ] ; 4 uses
  %i.jh = phi i64 [ %.pre192, %._crit_edge182.loopexit ], [ %i.ed, %bb.t ], [ %i.ed, %._crit_edge178 ], [ %i.ed, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i84 ], [ %i.cj, %._crit_edge ], [ %i.ed, %.lr.ph.i.i.i77 ], [ %i.dh, %bb.o ] ; 2 uses
  %i.ji = phi ptr [ %.pre191, %._crit_edge182.loopexit ], [ %i.ee, %bb.t ], [ %i.ee, %._crit_edge178 ], [ %i.ee, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i84 ], [ %i.ck, %._crit_edge ], [ %i.ee, %.lr.ph.i.i.i77 ], [ %i.df, %bb.o ] ; 2 uses
  %i.jj = phi i8 [ %.pre, %._crit_edge182.loopexit ], [ %i.ef, %bb.t ], [ %i.ef, %._crit_edge178 ], [ %i.ef, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i84 ], [ %i.cl, %._crit_edge ], [ %i.ef, %.lr.ph.i.i.i77 ], [ %i.dd, %bb.o ] ; 2 uses
  %.pre-phi212444 = ptrtoaddr ptr %.pre-phi212 to i64
  %i.jk = getelementptr i8, ptr %.pre-phi212, i64 %.pre-phi218 ; 5 uses
  %.not4.i.i = icmp samesign eq i64 %.pre-phi218, 0
  br i1 %.not4.i.i, label %_ZNSt3__17find_ifB8ne180100INS_11__wrap_iterIPcEERPFbiEEET_S7_S7_T0_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %._crit_edge182
  %i.jl = tail call ptr @__ctype_b_loc() #17
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !24
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZN4gdcmL13IsToBeRemovedEi.exit149
  %.sroa.01.05.i.i = phi ptr [ %i.js, %_ZN4gdcmL13IsToBeRemovedEi.exit149 ], [ %.pre-phi212, %.lr.ph.i.i.preheader ] ; 10 uses
  %i.jn = load i8, ptr %.sroa.01.05.i.i, align 1, !tbaa !9 ; 2 uses
  %i.jo = sext i8 %i.jn to i64
  %i.jp = getelementptr inbounds [2 x i8], ptr %i.jm, i64 %i.jo
  %i.jq = load i16, ptr %i.jp, align 2, !tbaa !26
  %i.jr = and i16 %i.jq, 8192
  %.not.i147 = icmp eq i16 %i.jr, 0
  br i1 %.not.i147, label %bb.at, label %_ZNSt3__17find_ifB8ne180100INS_11__wrap_iterIPcEERPFbiEEET_S7_S7_T0_.exit.i

bb.at:                                            ; preds = %.lr.ph.i.i
  switch i8 %i.jn, label %_ZN4gdcmL13IsToBeRemovedEi.exit149 [
    i8 45, label %_ZNSt3__17find_ifB8ne180100INS_11__wrap_iterIPcEERPFbiEEET_S7_S7_T0_.exit.i
    i8 47, label %_ZNSt3__17find_ifB8ne180100INS_11__wrap_iterIPcEERPFbiEEET_S7_S7_T0_.exit.i
    i8 39, label %_ZNSt3__17find_ifB8ne180100INS_11__wrap_iterIPcEERPFbiEEET_S7_S7_T0_.exit.i
    i8 40, label %_ZNSt3__17find_ifB8ne180100INS_11__wrap_iterIPcEERPFbiEEET_S7_S7_T0_.exit.i
    i8 41, label %_ZNSt3__17find_ifB8ne180100INS_11__wrap_iterIPcEERPFbiEEET_S7_S7_T0_.exit.i
    i8 38, label %_ZNSt3__17find_ifB8ne180100INS_11__wrap_iterIPcEERPFbiEEET_S7_S7_T0_.exit.i
    i8 44, label %_ZNSt3__17find_ifB8ne180100INS_11__wrap_iterIPcEERPFbiEEET_S7_S7_T0_.exit.i
  ]

_ZN4gdcmL13IsToBeRemovedEi.exit149:               ; preds = %bb.at
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 1 ; 2 uses
  %.not.i.i141 = icmp eq ptr %i.js, %i.jk
  br i1 %.not.i.i141, label %_ZNSt3__19remove_ifB8ne180100INS_11__wrap_iterIPcEEPFbiEEET_S6_S6_T0_.exit, label %.lr.ph.i.i, !llvm.loop !18

_ZNSt3__17find_ifB8ne180100INS_11__wrap_iterIPcEERPFbiEEET_S7_S7_T0_.exit.i: ; preds = %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %.lr.ph.i.i, %._crit_edge182
  %.sroa.01.0.lcssa.i.i = phi ptr [ %.pre-phi212, %._crit_edge182 ], [ %.sroa.01.05.i.i, %.lr.ph.i.i ], [ %.sroa.01.05.i.i, %bb.at ], [ %.sroa.01.05.i.i, %bb.at ], [ %.sroa.01.05.i.i, %bb.at ], [ %.sroa.01.05.i.i, %bb.at ], [ %.sroa.01.05.i.i, %bb.at ], [ %.sroa.01.05.i.i, %bb.at ], [ %.sroa.01.05.i.i, %bb.at ] ; 16 uses
  %.not.i = icmp eq ptr %.sroa.01.0.lcssa.i.i, %i.jk
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.01.0.lcssa.i.i, i64 1 ; 3 uses
  %.not1314.i = icmp eq ptr %i.jt, %i.jk
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1314.i
  br i1 %or.cond.i, label %_ZNSt3__19remove_ifB8ne180100INS_11__wrap_iterIPcEEPFbiEEET_S6_S6_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZNSt3__17find_ifB8ne180100INS_11__wrap_iterIPcEERPFbiEEET_S7_S7_T0_.exit.i
  %.sroa.01.0.lcssa.i.i445 = ptrtoaddr ptr %.sroa.01.0.lcssa.i.i to i64 ; 2 uses
  %i.ju = tail call ptr @__ctype_b_loc() #17      ; 4 uses
  %.pre194 = load ptr, ptr %i.ju, align 8, !tbaa !24 ; 10 uses
  %i.jv = add i64 %.pre-phi218, %.pre-phi212444   ; 2 uses
  %i.jw = add i64 %i.jv, -2
  %i.jx = sub i64 %.sroa.01.0.lcssa.i.i445, %i.jv
  %i.jy = and i64 %i.jx, 1
  %lcmp.mod.not.not = icmp eq i64 %i.jy, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.jz = load i8, ptr %i.jt, align 1, !tbaa !9   ; 3 uses
  %i.ka = sext i8 %i.jz to i64
  %i.kb = getelementptr inbounds [2 x i8], ptr %.pre194, i64 %i.ka
  %i.kc = load i16, ptr %i.kb, align 2, !tbaa !26
  %i.kd = and i16 %i.kc, 8192
  %.not.i146.prol = icmp eq i16 %i.kd, 0
  br i1 %.not.i146.prol, label %bb.au, label %_ZN4gdcmL13IsToBeRemovedEi.exit.thread.prol

bb.au:                                            ; preds = %.lr.ph.i.prol
  switch i8 %i.jz, label %_ZN4gdcmL13IsToBeRemovedEi.exit.prol [
    i8 45, label %_ZN4gdcmL13IsToBeRemovedEi.exit.thread.prol
    i8 47, label %_ZN4gdcmL13IsToBeRemovedEi.exit.thread.prol
    i8 39, label %_ZN4gdcmL13IsToBeRemovedEi.exit.thread.prol
    i8 40, label %_ZN4gdcmL13IsToBeRemovedEi.exit.thread.prol
    i8 41, label %_ZN4gdcmL13IsToBeRemovedEi.exit.thread.prol
    i8 38, label %_ZN4gdcmL13IsToBeRemovedEi.exit.thread.prol
    i8 44, label %_ZN4gdcmL13IsToBeRemovedEi.exit.thread.prol
  ]

_ZN4gdcmL13IsToBeRemovedEi.exit.prol:             ; preds = %bb.au
  store i8 %i.jz, ptr %.sroa.01.0.lcssa.i.i, align 1, !tbaa !9
  %i.ke = getelementptr inbounds nuw i8, ptr %.sroa.01.0.lcssa.i.i, i64 1
  %.pre193.prol = load ptr, ptr %i.ju, align 8, !tbaa !24
  br label %_ZN4gdcmL13IsToBeRemovedEi.exit.thread.prol

_ZN4gdcmL13IsToBeRemovedEi.exit.thread.prol:      ; preds = %_ZN4gdcmL13IsToBeRemovedEi.exit.prol, %bb.au, %bb.au, %bb.au, %bb.au, %bb.au, %bb.au, %bb.au, %.lr.ph.i.prol
  %i.kf = phi ptr [ %.pre193.prol, %_ZN4gdcmL13IsToBeRemovedEi.exit.prol ], [ %.pre194, %.lr.ph.i.prol ], [ %.pre194, %bb.au ], [ %.pre194, %bb.au ], [ %.pre194, %bb.au ], [ %.pre194, %bb.au ], [ %.pre194, %bb.au ], [ %.pre194, %bb.au ], [ %.pre194, %bb.au ]
  %.sroa.010.1.i.prol = phi ptr [ %i.ke, %_ZN4gdcmL13IsToBeRemovedEi.exit.prol ], [ %.sroa.01.0.lcssa.i.i, %.lr.ph.i.prol ], [ %.sroa.01.0.lcssa.i.i, %bb.au ], [ %.sroa.01.0.lcssa.i.i, %bb.au ], [ %.sroa.01.0.lcssa.i.i, %bb.au ], [ %.sroa.01.0.lcssa.i.i, %bb.au ], [ %.sroa.01.0.lcssa.i.i, %bb.au ], [ %.sroa.01.0.lcssa.i.i, %bb.au ], [ %.sroa.01.0.lcssa.i.i, %bb.au ] ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.sroa.01.0.lcssa.i.i, i64 2
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %_ZN4gdcmL13IsToBeRemovedEi.exit.thread.prol, %.lr.ph.i.preheader
  %.sroa.010.1.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.sroa.010.1.i.prol, %_ZN4gdcmL13IsToBeRemovedEi.exit.thread.prol ]
  %.unr = phi ptr [ %.pre194, %.lr.ph.i.preheader ], [ %i.kf, %_ZN4gdcmL13IsToBeRemovedEi.exit.thread.prol ]
  %.unr446 = phi ptr [ %i.jt, %.lr.ph.i.preheader ], [ %i.kg, %_ZN4gdcmL13IsToBeRemovedEi.exit.thread.prol ]
  %.sroa.010.015.i.unr = phi ptr [ %.sroa.01.0.lcssa.i.i, %.lr.ph.i.preheader ], [ %.sroa.010.1.i.prol, %_ZN4gdcmL13IsToBeRemovedEi.exit.thread.prol ]
  %i.kh = icmp eq i64 %i.jw, %.sroa.01.0.lcssa.i.i445
  br i1 %i.kh, label %_ZNSt3__19remove_ifB8ne180100INS_11__wrap_iterIPcEEPFbiEEET_S6_S6_T0_.exit.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %_ZN4gdcmL13IsToBeRemovedEi.exit.thread.1
  %i.ki = phi ptr [ %i.ky, %_ZN4gdcmL13IsToBeRemovedEi.exit.thread.1 ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.kj = phi ptr [ %i.kz, %_ZN4gdcmL13IsToBeRemovedEi.exit.thread.1 ], [ %.unr446, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.sroa.010.015.i = phi ptr [ %.sroa.010.1.i.1, %_ZN4gdcmL13IsToBeRemovedEi.exit.thread.1 ], [ %.sroa.010.015.i.unr, %.lr.ph.i.prol.loopexit ] ; 10 uses
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !9   ; 3 uses
  %i.kl = sext i8 %i.kk to i64
  %i.km = getelementptr inbounds [2 x i8], ptr %i.ki, i64 %i.kl
  %i.kn = load i16, ptr %i.km, align 2, !tbaa !26
  %i.ko = and i16 %i.kn, 8192
  %.not.i146 = icmp eq i16 %i.ko, 0
  br i1 %.not.i146, label %bb.av, label %_ZN4gdcmL13IsToBeRemovedEi.exit.thread

bb.av:                                            ; preds = %.lr.ph.i
  switch i8 %i.kk, label %_ZN4gdcmL13IsToBeRemovedEi.exit [
    i8 45, label %_ZN4gdcmL13IsToBeRemovedEi.exit.thread
    i8 47, label %_ZN4gdcmL13IsToBeRemovedEi.exit.thread
    i8 39, label %_ZN4gdcmL13IsToBeRemovedEi.exit.thread
    i8 40, label %_ZN4gdcmL13IsToBeRemovedEi.exit.thread
    i8 41, label %_ZN4gdcmL13IsToBeRemovedEi.exit.thread
    i8 38, label %_ZN4gdcmL13IsToBeRemovedEi.exit.thread
    i8 44, label %_ZN4gdcmL13IsToBeRemovedEi.exit.thread
  ]

_ZN4gdcmL13IsToBeRemovedEi.exit:                  ; preds = %bb.av
  store i8 %i.kk, ptr %.sroa.010.015.i, align 1, !tbaa !9
  %i.kp = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i, i64 1
  %.pre193 = load ptr, ptr %i.ju, align 8, !tbaa !24
  br label %_ZN4gdcmL13IsToBeRemovedEi.exit.thread

_ZN4gdcmL13IsToBeRemovedEi.exit.thread:           ; preds = %bb.av, %bb.av, %bb.av, %bb.av, %bb.av, %bb.av, %bb.av, %.lr.ph.i, %_ZN4gdcmL13IsToBeRemovedEi.exit
  %i.kq = phi ptr [ %.pre193, %_ZN4gdcmL13IsToBeRemovedEi.exit ], [ %i.ki, %.lr.ph.i ], [ %i.ki, %bb.av ], [ %i.ki, %bb.av ], [ %i.ki, %bb.av ], [ %i.ki, %bb.av ], [ %i.ki, %bb.av ], [ %i.ki, %bb.av ], [ %i.ki, %bb.av ] ; 9 uses
  %.sroa.010.1.i = phi ptr [ %i.kp, %_ZN4gdcmL13IsToBeRemovedEi.exit ], [ %.sroa.010.015.i, %.lr.ph.i ], [ %.sroa.010.015.i, %bb.av ], [ %.sroa.010.015.i, %bb.av ], [ %.sroa.010.015.i, %bb.av ], [ %.sroa.010.015.i, %bb.av ], [ %.sroa.010.015.i, %bb.av ], [ %.sroa.010.015.i, %bb.av ], [ %.sroa.010.015.i, %bb.av ] ; 10 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kj, i64 1
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !9   ; 3 uses
  %i.kt = sext i8 %i.ks to i64
  %i.ku = getelementptr inbounds [2 x i8], ptr %i.kq, i64 %i.kt
  %i.kv = load i16, ptr %i.ku, align 2, !tbaa !26
  %i.kw = and i16 %i.kv, 8192
  %.not.i146.1 = icmp eq i16 %i.kw, 0
  br i1 %.not.i146.1, label %bb.aw, label %_ZN4gdcmL13IsToBeRemovedEi.exit.thread.1

bb.aw:                                            ; preds = %_ZN4gdcmL13IsToBeRemovedEi.exit.thread
  switch i8 %i.ks, label %_ZN4gdcmL13IsToBeRemovedEi.exit.1 [
    i8 45, label %_ZN4gdcmL13IsToBeRemovedEi.exit.thread.1
    i8 47, label %_ZN4gdcmL13IsToBeRemovedEi.exit.thread.1
    i8 39, label %_ZN4gdcmL13IsToBeRemovedEi.exit.thread.1
    i8 40, label %_ZN4gdcmL13IsToBeRemovedEi.exit.thread.1
    i8 41, label %_ZN4gdcmL13IsToBeRemovedEi.exit.thread.1
    i8 38, label %_ZN4gdcmL13IsToBeRemovedEi.exit.thread.1
    i8 44, label %_ZN4gdcmL13IsToBeRemovedEi.exit.thread.1
  ]

_ZN4gdcmL13IsToBeRemovedEi.exit.1:                ; preds = %bb.aw
  store i8 %i.ks, ptr %.sroa.010.1.i, align 1, !tbaa !9
  %i.kx = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i, i64 1
  %.pre193.1 = load ptr, ptr %i.ju, align 8, !tbaa !24
  br label %_ZN4gdcmL13IsToBeRemovedEi.exit.thread.1

_ZN4gdcmL13IsToBeRemovedEi.exit.thread.1:         ; preds = %_ZN4gdcmL13IsToBeRemovedEi.exit.1, %bb.aw, %bb.aw, %bb.aw, %bb.aw, %bb.aw, %bb.aw, %bb.aw, %_ZN4gdcmL13IsToBeRemovedEi.exit.thread
  %i.ky = phi ptr [ %.pre193.1, %_ZN4gdcmL13IsToBeRemovedEi.exit.1 ], [ %i.kq, %_ZN4gdcmL13IsToBeRemovedEi.exit.thread ], [ %i.kq, %bb.aw ], [ %i.kq, %bb.aw ], [ %i.kq, %bb.aw ], [ %i.kq, %bb.aw ], [ %i.kq, %bb.aw ], [ %i.kq, %bb.aw ], [ %i.kq, %bb.aw ]
  %.sroa.010.1.i.1 = phi ptr [ %i.kx, %_ZN4gdcmL13IsToBeRemovedEi.exit.1 ], [ %.sroa.010.1.i, %_ZN4gdcmL13IsToBeRemovedEi.exit.thread ], [ %.sroa.010.1.i, %bb.aw ], [ %.sroa.010.1.i, %bb.aw ], [ %.sroa.010.1.i, %bb.aw ], [ %.sroa.010.1.i, %bb.aw ], [ %.sroa.010.1.i, %bb.aw ], [ %.sroa.010.1.i, %bb.aw ], [ %.sroa.010.1.i, %bb.aw ] ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kj, i64 2 ; 2 uses
  %.not13.i.1 = icmp eq ptr %i.kz, %i.jk
  br i1 %.not13.i.1, label %_ZNSt3__19remove_ifB8ne180100INS_11__wrap_iterIPcEEPFbiEEET_S6_S6_T0_.exit.loopexit, label %.lr.ph.i, !llvm.loop !19

_ZNSt3__19remove_ifB8ne180100INS_11__wrap_iterIPcEEPFbiEEET_S6_S6_T0_.exit.loopexit: ; preds = %_ZN4gdcmL13IsToBeRemovedEi.exit.thread.1, %.lr.ph.i.prol.loopexit
  %.sroa.010.1.i.lcssa = phi ptr [ %.sroa.010.1.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.sroa.010.1.i.1, %_ZN4gdcmL13IsToBeRemovedEi.exit.thread.1 ]
  %.pre195 = load i8, ptr %2, align 8             ; 2 uses
  %.pre196 = load ptr, ptr %i.r, align 8
  %.pre197 = load i64, ptr %i.v, align 8
  %.pre219 = lshr i8 %.pre195, 1
  %.pre221 = zext nneg i8 %.pre219 to i64
end_hunk_0
