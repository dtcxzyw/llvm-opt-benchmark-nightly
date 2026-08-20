inline.NumInlined: 3123
inline.NumDeleted: 1535
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN10GenericCAO10addToSceneEP14ITextureSourcePN5scene13ISceneManagerE:bb.a
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.u), !inline_history !486
  %.v.i = select i1 %i.x, i64 976, i64 984
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 %.v.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr @.str.7, ptr %i.h, align 8, !tbaa !170
  %i.z = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %i.h) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 5 uses
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !487
  %i.ac = zext i8 %i.ab to i32
  %i.ad = call noundef ptr @_Z14enum_to_stringPK10EnumStringi(ptr noundef nonnull @es_ObjectVisual, i32 noundef %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.ad, ptr %i.g, align 8, !tbaa !170
  %i.ae = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !171 ; 5 uses
  %.not.i137 = icmp eq ptr %i.af, null
  br i1 %.not.i137, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.e

bb.e:                                             ; preds = %_ZTW10infostream.exit
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !41
  %i.ah = getelementptr i8, ptr %i.ag, i64 -24
  %i.ai = load i64, ptr %i.ah, align 8            ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %i.af, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !148
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.af)
  %.pre.i = load ptr, ptr %i.ae, align 8, !tbaa !171 ; 2 uses
  %.pre = load ptr, ptr %.pre.i, align 8, !tbaa !41
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre327 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.an = phi i64 [ %.pre327, %bb.f ], [ %i.ai, %bb.e ]
  %i.ao = phi ptr [ %.pre.i, %bb.f ], [ %i.af, %bb.e ] ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 %i.an
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 240
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !172 ; 6 uses
  %.not.i.i.i246 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i246, label %bb.h, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.h:                                             ; preds = %bb.g
  call void @_ZSt16__throw_bad_castv() #36
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  %i.at = load i8, ptr %i.as, align 8, !tbaa !178
  %.not.i1.i.i = icmp eq i8 %i.at, 0
  br i1 %.not.i1.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 67
  %i.av = load i8, ptr %i.au, align 1, !tbaa !48
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.j:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ar)
  %i.aw = load ptr, ptr %i.ar, align 8, !tbaa !41
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = call noundef signext i8 %i.ay(ptr noundef nonnull align 8 dereferenceable(570) %i.ar, i8 noundef signext 10), !inline_history !303
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.i, %bb.j
  %.0.i.i.i = phi i8 [ %i.av, %bb.i ], [ %i.az, %bb.j ]
  %i.ba = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, i8 noundef signext %.0.i.i.i)
  %i.bb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ba) ; 0 uses
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit

_ZN11StreamProxylsEPFRSoS0_E.exit:                ; preds = %_ZTW10infostream.exit, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.bc = load ptr, ptr %i.j, align 8, !tbaa !484 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !41
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 64
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = call noundef ptr %i.bf(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef null, i32 noundef -1) ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 6 uses
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !260
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !41
  %i.bj = getelementptr i8, ptr %i.bi, i64 -24
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds i8, ptr %i.bg, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !477
  %i.bo = add nsw i32 %i.bn, 1
  store i32 %i.bo, ptr %i.bm, align 8, !tbaa !477
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  store ptr %0, ptr %7, align 8, !tbaa !488
  %i.bp = load i8, ptr %i.aa, align 8, !tbaa !487
  switch i8 %i.bp, label %bb.ep [
    i8 2, label %bb.k
    i8 3, label %bb.al
    i8 4, label %bb.ao
    i8 6, label %bb.bi
    i8 5, label %bb.bi
    i8 7, label %bb.cy
  ]

bb.k:                                             ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !122 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !41
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 96
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = call noundef ptr %i.bu(ptr noundef nonnull align 8 dereferenceable(1674) %i.br), !inline_history !490 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 419
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !491, !range !31, !noundef !32
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.ca = load i8, ptr %i.bz, align 8, !tbaa !492
  %i.cb = icmp eq i8 %i.ca, 0
  br i1 %i.cb, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 418
  %i.cd = load i8, ptr %i.cc, align 2, !tbaa !493, !range !31, !noundef !32
  br label %._crit_edge.i.i.i

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 418
  %i.cf = load i8, ptr %i.ce, align 2, !tbaa !493, !range !31, !noundef !32
  %i.cg = or disjoint i8 %i.cf, 10
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.n, %bb.m
  %.08.i = phi i8 [ %i.cd, %bb.m ], [ %i.cg, %bb.n ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.ch, ptr %6, align 8, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.ch, ptr noundef nonnull align 1 dereferenceable(13) @.str.35, i64 13, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 13, ptr %i.ci, align 8, !tbaa !46
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 29
  store i8 0, ptr %i.cj, align 1, !tbaa !48
  %i.ck = invoke noundef i32 @_ZN13IShaderSource9getShaderERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE12MaterialType12NodeDrawTypebb(ptr noundef nonnull align 8 dereferenceable(8) %i.bv, ptr noundef nonnull align 8 dereferenceable(32) %6, i8 noundef zeroext %.08.i, i8 noundef zeroext 0, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %._crit_edge.i.i.i
  %i.cl = load ptr, ptr %6, align 8, !tbaa !121   ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.ch
  br i1 %i.cm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.o
  %i.cn = load i64, ptr %i.ch, align 8, !tbaa !48
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #35
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.p:                                             ; preds = %._crit_edge.i.i.i
  %i.cp = landingpad { ptr, i32 }
          cleanup
  %i.cq = load ptr, ptr %6, align 8, !tbaa !121   ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.ch
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i: ; preds = %bb.p
  %i.cs = load i64, ptr %i.ch, align 8, !tbaa !48
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.ct) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i

common.resume:                                    ; preds = %_ZN7irr_ptrIN5scene5SMeshEED2Ev.exit146, %_ZN7irr_ptrIN5scene5SMeshEED2Ev.exit74.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i
  %common.resume.op = phi { ptr, i32 } [ %i.cp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i ], [ %.pn46.pn.pn.pn.pn.pn.pn.i, %_ZN7irr_ptrIN5scene5SMeshEED2Ev.exit74.i ], [ %.pn120.pn.pn, %_ZN7irr_ptrIN5scene5SMeshEED2Ev.exit146 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %common.resume

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.cu = load ptr, ptr %i.bv, align 8, !tbaa !41
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = call noundef nonnull align 8 dereferenceable(96) ptr %i.cw(ptr noundef nonnull align 8 dereferenceable(8) %i.bv, i32 noundef %i.ck), !inline_history !490
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 36
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !494
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 3 uses
  store i32 %i.cz, ptr %i.da, align 8, !tbaa !107
  %i.db = call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #37, !noalias !501 ; 8 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 80 ; 5 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 88 ; 5 uses
  store i32 1, ptr %i.dd, align 8, !tbaa !477, !noalias !501
  store ptr getelementptr inbounds nuw inrange(-24, 112) (i8, ptr @_ZTVN5scene5SMeshE, i64 24), ptr %i.db, align 8, !tbaa !41, !noalias !501
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN5scene5SMeshE, i64 160), ptr %i.dc, align 8, !tbaa !41, !noalias !501
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.de, i8 0, i64 72, i1 false), !noalias !501
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 336
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.dg = load <2 x float>, ptr %i.df, align 8, !tbaa !33
  %i.dh = fmul nsz <2 x float> %i.dg, splat (float 1.000000e+01)
  %i.di = fmul nsz <2 x float> %i.dh, splat (float 5.000000e-01) ; 4 uses
  %i.dj = fneg nsz <2 x float> %i.di              ; 3 uses
  store <2 x float> %i.dj, ptr %8, align 16, !tbaa !33
  %i.dk = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 2 uses
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.dk, align 8, !tbaa !33
  %i.dn = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i32 -1, ptr %i.dn, align 8, !tbaa !504
  %i.do = getelementptr inbounds nuw i8, ptr %8, i64 28
  store <2 x float> splat (float 1.000000e+00), ptr %i.do, align 4, !tbaa !33
  %i.dp = getelementptr inbounds nuw i8, ptr %8, i64 36
  store i16 0, ptr %i.dp, align 4, !tbaa !505
  %i.dq = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 3 uses
  %i.dr = extractelement <2 x float> %i.di, i64 0
  store float %i.dr, ptr %i.dq, align 8, !tbaa !263
  %i.ds = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.dt = extractelement <2 x float> %i.dj, i64 1
  store float %i.dt, ptr %i.ds, align 4, !tbaa !264
  %i.du = getelementptr inbounds nuw i8, ptr %8, i64 48
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.du, align 16, !tbaa !33
  %i.dv = getelementptr inbounds nuw i8, ptr %8, i64 64
  store i32 -1, ptr %i.dv, align 16, !tbaa !504
  %i.dw = getelementptr inbounds nuw i8, ptr %8, i64 68
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.dw, align 4, !tbaa !33
  %i.dx = getelementptr inbounds nuw i8, ptr %8, i64 76
  store i16 0, ptr %i.dx, align 4, !tbaa !505
  %i.dy = getelementptr inbounds nuw i8, ptr %8, i64 80 ; 3 uses
  %32 = extractelement <2 x float> %i.di, i64 1   ; 5 uses
  store <2 x float> %i.di, ptr %i.dy, align 16, !tbaa !33
  %i.dz = getelementptr inbounds nuw i8, ptr %8, i64 88
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.dz, align 8, !tbaa !33
  %i.ea = getelementptr inbounds nuw i8, ptr %8, i64 104
  store i32 -1, ptr %i.ea, align 8, !tbaa !504
  %i.eb = getelementptr inbounds nuw i8, ptr %8, i64 108
  store <2 x float> zeroinitializer, ptr %i.eb, align 4, !tbaa !33
  %i.ec = getelementptr inbounds nuw i8, ptr %8, i64 116
  store i16 0, ptr %i.ec, align 4, !tbaa !505
  %i.ed = getelementptr inbounds nuw i8, ptr %8, i64 120
  %i.ee = extractelement <2 x float> %i.dj, i64 0
  store float %i.ee, ptr %i.ed, align 8, !tbaa !263
  %i.ef = getelementptr inbounds nuw i8, ptr %8, i64 124
  store float %32, ptr %i.ef, align 4, !tbaa !264
  %i.eg = getelementptr inbounds nuw i8, ptr %8, i64 128
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.eg, align 16, !tbaa !33
  %i.eh = getelementptr inbounds nuw i8, ptr %8, i64 144
  store i32 -1, ptr %i.eh, align 16, !tbaa !504
  %i.ei = getelementptr inbounds nuw i8, ptr %8, i64 148
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.ei, align 4, !tbaa !33
  %i.ej = getelementptr inbounds nuw i8, ptr %8, i64 156
  store i16 0, ptr %i.ej, align 4, !tbaa !505
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.el = load i8, ptr %i.ek, align 8, !tbaa !49, !range !31, !noundef !32
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %.preheader292.preheader, label %.loopexit

.preheader292.preheader:                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.en = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.eo = fsub nsz float %32, %32                 ; 2 uses
  store float %i.eo, ptr %i.en, align 4, !tbaa !507
  %i.ep = getelementptr inbounds nuw i8, ptr %8, i64 44
  store float %i.eo, ptr %i.ep, align 4, !tbaa !507
  %i.eq = getelementptr inbounds nuw i8, ptr %8, i64 84
  %i.er = fadd nsz float %32, %32                 ; 2 uses
  store float %i.er, ptr %i.eq, align 4, !tbaa !507
  %i.es = getelementptr inbounds nuw i8, ptr %8, i64 124
  store float %i.er, ptr %i.es, align 4, !tbaa !507
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader292.preheader, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %i.i, ptr noundef nonnull align 2 dereferenceable(12) @__const._ZN10GenericCAO10addToSceneEP14ITextureSourcePN5scene13ISceneManagerE.indices, i64 12, i1 false)
  %i.et = invoke noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #37
          to label %.noexc unwind label %bb.r     ; 19 uses

.noexc:                                           ; preds = %.loopexit
  invoke void @_ZN5scene11CMeshBufferIN5video9S3DVertexEEC1Ev(ptr noundef nonnull align 8 dereferenceable(200) %i.et)
          to label %_Z8make_irrIN5scene11CMeshBufferIN5video9S3DVertexEEEJEE7irr_ptrIT_EDpOT0_.exit unwind label %bb.q, !noalias !508

bb.q:                                             ; preds = %.noexc.1, %.noexc
  %.lcssa = phi ptr [ %i.et, %.noexc ], [ %i.fq, %.noexc.1 ]
  %i.eu = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %.lcssa, i64 noundef 200) #35, !noalias !508
  br label %.body

bb.r:                                             ; preds = %_ZN7irr_ptrIN5scene11CMeshBufferIN5video9S3DVertexEEEED2Ev.exit, %.loopexit
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %.body

_Z8make_irrIN5scene11CMeshBufferIN5video9S3DVertexEEEJEE7irr_ptrIT_EDpOT0_.exit: ; preds = %.noexc
  invoke void @_ZN5scene11CMeshBufferIN5video9S3DVertexEE6appendEPKvjPKtj(ptr noundef nonnull align 8 dereferenceable(200) %i.et, ptr noundef nonnull %8, i32 noundef 4, ptr noundef nonnull %i.i, i32 noundef 6)
          to label %bb.s unwind label %bb.ad

bb.s:                                             ; preds = %_Z8make_irrIN5scene11CMeshBufferIN5video9S3DVertexEEEJEE7irr_ptrIT_EDpOT0_.exit
  %.val125.val = load i32, ptr %i.da, align 8, !tbaa !107 ; 2 uses
  %.not.i138 = icmp eq i32 %.val125.val, -1
  br i1 %.not.i138, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 104
  store i32 %.val125.val, ptr %i.ew, align 8, !tbaa !511
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 134 ; 2 uses
  %i.ey = load i8, ptr %i.ex, align 2
  %i.ez = or i8 %i.ey, 64
  store i8 %i.ez, ptr %i.ex, align 2
  %i.fa = getelementptr inbounds nuw i8, ptr %i.et, i64 18
  store i8 0, ptr %i.fa, align 2, !tbaa !518
  %i.fb = getelementptr inbounds nuw i8, ptr %i.et, i64 19
  store i8 0, ptr %i.fb, align 1, !tbaa !524
  %i.fc = getelementptr inbounds nuw i8, ptr %i.et, i64 42
  store i8 0, ptr %i.fc, align 2, !tbaa !518
  %i.fd = getelementptr inbounds nuw i8, ptr %i.et, i64 43
  store i8 0, ptr %i.fd, align 1, !tbaa !524
  %i.fe = getelementptr inbounds nuw i8, ptr %i.et, i64 66
  store i8 0, ptr %i.fe, align 2, !tbaa !518
  %i.ff = getelementptr inbounds nuw i8, ptr %i.et, i64 67
  store i8 0, ptr %i.ff, align 1, !tbaa !524
  %i.fg = getelementptr inbounds nuw i8, ptr %i.et, i64 90
  store i8 0, ptr %i.fg, align 2, !tbaa !518
  %i.fh = getelementptr inbounds nuw i8, ptr %i.et, i64 91
  store i8 0, ptr %i.fh, align 1, !tbaa !524
  %i.fi = getelementptr inbounds nuw i8, ptr %i.et, i64 108
  store i32 -1, ptr %i.fi, align 4, !tbaa !504
  invoke void @_ZN5scene5SMesh13addMeshBufferEPNS_11IMeshBufferE(ptr noundef nonnull align 8 dereferenceable(96) %i.db, ptr noundef nonnull %i.et)
          to label %bb.v unwind label %bb.ad

bb.v:                                             ; preds = %bb.u
  %i.fj = getelementptr inbounds nuw i8, ptr %i.et, i64 192 ; 2 uses
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !477
  %i.fl = add nsw i32 %i.fk, -1                   ; 2 uses
  store i32 %i.fl, ptr %i.fj, align 8, !tbaa !477
  %.not.i.i.i = icmp eq i32 %i.fl, 0
  br i1 %.not.i.i.i, label %bb.w, label %_ZN7irr_ptrIN5scene11CMeshBufferIN5video9S3DVertexEEEED2Ev.exit

bb.w:                                             ; preds = %bb.v
  %i.fm = getelementptr inbounds nuw i8, ptr %i.et, i64 184 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !41
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8
  call void %i.fp(ptr noundef nonnull align 8 dereferenceable(12) %i.fm) #28, !inline_history !525
  br label %_ZN7irr_ptrIN5scene11CMeshBufferIN5video9S3DVertexEEEED2Ev.exit

_ZN7irr_ptrIN5scene11CMeshBufferIN5video9S3DVertexEEEED2Ev.exit: ; preds = %bb.v, %bb.w
  %i.fq = invoke noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #37
          to label %.noexc.1 unwind label %bb.r   ; 19 uses

.noexc.1:                                         ; preds = %_ZN7irr_ptrIN5scene11CMeshBufferIN5video9S3DVertexEEEED2Ev.exit
  invoke void @_ZN5scene11CMeshBufferIN5video9S3DVertexEEC1Ev(ptr noundef nonnull align 8 dereferenceable(200) %i.fq)
          to label %bb.x unwind label %bb.q, !noalias !508

bb.x:                                             ; preds = %.noexc.1
  %i.fr = load <2 x float>, ptr %i.dl, align 4, !tbaa !33
  %i.fs = fneg nsz <2 x float> %i.fr
  store <2 x float> %i.fs, ptr %i.dl, align 4, !tbaa !33
  %i.ft = load float, ptr %i.dm, align 4, !tbaa !146
  %i.fu = fneg nsz float %i.ft
  store float %i.fu, ptr %i.dm, align 4, !tbaa !146
  %i.fv = getelementptr inbounds nuw i8, ptr %8, i64 52 ; 2 uses
  %i.fw = load <2 x float>, ptr %i.fv, align 4, !tbaa !33
  %i.fx = fneg nsz <2 x float> %i.fw
  store <2 x float> %i.fx, ptr %i.fv, align 4, !tbaa !33
  %i.fy = getelementptr inbounds nuw i8, ptr %8, i64 60 ; 2 uses
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !146
  %i.ga = fneg nsz float %i.fz
  store float %i.ga, ptr %i.fy, align 4, !tbaa !146
  %i.gb = getelementptr inbounds nuw i8, ptr %8, i64 92 ; 2 uses
  %i.gc = load <2 x float>, ptr %i.gb, align 4, !tbaa !33
  %i.gd = fneg nsz <2 x float> %i.gc
  store <2 x float> %i.gd, ptr %i.gb, align 4, !tbaa !33
  %i.ge = getelementptr inbounds nuw i8, ptr %8, i64 100 ; 2 uses
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !146
  %i.gg = fneg nsz float %i.gf
  store float %i.gg, ptr %i.ge, align 4, !tbaa !146
  %i.gh = getelementptr inbounds nuw i8, ptr %8, i64 132 ; 2 uses
  %i.gi = load <2 x float>, ptr %i.gh, align 4, !tbaa !33
  %i.gj = fneg nsz <2 x float> %i.gi
  store <2 x float> %i.gj, ptr %i.gh, align 4, !tbaa !33
  %i.gk = getelementptr inbounds nuw i8, ptr %8, i64 140 ; 2 uses
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !146
  %i.gm = fneg nsz float %i.gl
  store float %i.gm, ptr %i.gk, align 4, !tbaa !146
  %.sroa.0.0.copyload422 = load <3 x float>, ptr %8, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %8, ptr noundef nonnull align 8 dereferenceable(12) %i.dq, i64 12, i1 false), !tbaa.struct !466
  store <3 x float> %.sroa.0.0.copyload422, ptr %i.dq, align 8
  %i.gn = getelementptr inbounds nuw i8, ptr %8, i64 120 ; 2 uses
  %.sroa.0.0.copyload424 = load <3 x float>, ptr %i.dy, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.dy, ptr noundef nonnull align 8 dereferenceable(12) %i.gn, i64 12, i1 false), !tbaa.struct !466
  store <3 x float> %.sroa.0.0.copyload424, ptr %i.gn, align 8
  invoke void @_ZN5scene11CMeshBufferIN5video9S3DVertexEE6appendEPKvjPKtj(ptr noundef nonnull align 8 dereferenceable(200) %i.fq, ptr noundef nonnull %8, i32 noundef 4, ptr noundef nonnull %i.i, i32 noundef 6)
          to label %bb.y unwind label %bb.ad

bb.y:                                             ; preds = %bb.x
  %.val125.val.1 = load i32, ptr %i.da, align 8, !tbaa !107 ; 2 uses
  %.not.i138.1 = icmp eq i32 %.val125.val.1, -1
  br i1 %.not.i138.1, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.go = getelementptr inbounds nuw i8, ptr %i.fq, i64 104
  store i32 %.val125.val.1, ptr %i.go, align 8, !tbaa !511
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fq, i64 134 ; 2 uses
  %i.gq = load i8, ptr %i.gp, align 2
  %i.gr = or i8 %i.gq, 64
  store i8 %i.gr, ptr %i.gp, align 2
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fq, i64 18
  store i8 0, ptr %i.gs, align 2, !tbaa !518
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fq, i64 19
  store i8 0, ptr %i.gt, align 1, !tbaa !524
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fq, i64 42
  store i8 0, ptr %i.gu, align 2, !tbaa !518
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fq, i64 43
  store i8 0, ptr %i.gv, align 1, !tbaa !524
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fq, i64 66
  store i8 0, ptr %i.gw, align 2, !tbaa !518
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fq, i64 67
  store i8 0, ptr %i.gx, align 1, !tbaa !524
  %i.gy = getelementptr inbounds nuw i8, ptr %i.fq, i64 90
  store i8 0, ptr %i.gy, align 2, !tbaa !518
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fq, i64 91
  store i8 0, ptr %i.gz, align 1, !tbaa !524
  %i.ha = getelementptr inbounds nuw i8, ptr %i.fq, i64 108
  store i32 -1, ptr %i.ha, align 4, !tbaa !504
  invoke void @_ZN5scene5SMesh13addMeshBufferEPNS_11IMeshBufferE(ptr noundef nonnull align 8 dereferenceable(96) %i.db, ptr noundef nonnull %i.fq)
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.hb = getelementptr inbounds nuw i8, ptr %i.fq, i64 192 ; 2 uses
  %i.hc = load i32, ptr %i.hb, align 8, !tbaa !477
  %i.hd = add nsw i32 %i.hc, -1                   ; 2 uses
  store i32 %i.hd, ptr %i.hb, align 8, !tbaa !477
  %.not.i.i.i.1 = icmp eq i32 %i.hd, 0
  br i1 %.not.i.i.i.1, label %bb.ac, label %_ZN7irr_ptrIN5scene11CMeshBufferIN5video9S3DVertexEEEED2Ev.exit.1

bb.ac:                                            ; preds = %bb.ab
  %i.he = getelementptr inbounds nuw i8, ptr %i.fq, i64 184 ; 2 uses
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !41
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hh = load ptr, ptr %i.hg, align 8
  call void %i.hh(ptr noundef nonnull align 8 dereferenceable(12) %i.he) #28, !inline_history !525
  br label %_ZN7irr_ptrIN5scene11CMeshBufferIN5video9S3DVertexEEEED2Ev.exit.1

_ZN7irr_ptrIN5scene11CMeshBufferIN5video9S3DVertexEEEED2Ev.exit.1: ; preds = %bb.ac, %bb.ab
  invoke void @_ZN5scene5SMesh22recalculateBoundingBoxEv(ptr noundef nonnull align 8 dereferenceable(96) %i.db)
          to label %bb.af unwind label %bb.ai

bb.ad:                                            ; preds = %bb.aa, %bb.x, %_Z8make_irrIN5scene11CMeshBufferIN5video9S3DVertexEEEJEE7irr_ptrIT_EDpOT0_.exit, %bb.u
  %.lcssa314 = phi ptr [ %i.et, %_Z8make_irrIN5scene11CMeshBufferIN5video9S3DVertexEEEJEE7irr_ptrIT_EDpOT0_.exit ], [ %i.et, %bb.u ], [ %i.fq, %bb.x ], [ %i.fq, %bb.aa ] ; 2 uses
  %i.hi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.lcssa314, i64 192 ; 2 uses
  %i.hk = load i32, ptr %i.hj, align 8, !tbaa !477
  %i.hl = add nsw i32 %i.hk, -1                   ; 2 uses
  store i32 %i.hl, ptr %i.hj, align 8, !tbaa !477
  %.not.i.i.i140 = icmp eq i32 %i.hl, 0
  br i1 %.not.i.i.i140, label %bb.ae, label %.body

bb.ae:                                            ; preds = %bb.ad
end_hunk_0
