Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/signed_distance_isosurface?download=true
inline.NumInlined: 15413
inline.NumDeleted: 5213
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 85
begin_hunk_0_@_ZN5boost2io6detail3putIcSt11char_traitsIcESaIcERKNS1_10put_holderIcS4_EEEEvT2_RKNS1_11format_itemIT_T0_T1_EERNS_12basic_formatISC_SD_SE_E11string_typeERNSJ_20internal_streambuf_tEPSt6locale:bb.a

.noexc139:                                        ; preds = %bb.q
  %i.cd = load ptr, ptr %i.by, align 8, !tbaa !136
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 48
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = invoke noundef signext i8 %i.cf(ptr noundef nonnull align 8 dereferenceable(570) %i.by, i8 noundef signext 32)
          to label %.noexc139._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit141_crit_edge unwind label %bb.ad, !inline_history !2887

.noexc139._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit141_crit_edge: ; preds = %.noexc139
  %.pre234 = load ptr, ptr %5, align 8, !tbaa !136
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit141

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit141: ; preds = %.noexc139._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit141_crit_edge, %bb.p, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit133, %_ZN5boost2io6detail8put_lastIcSt11char_traitsIcEEEvRSt13basic_ostreamIT_T0_ERKNS1_10put_holderIS6_S7_EE.exit
  %i.ch = phi ptr [ %.pre, %_ZN5boost2io6detail8put_lastIcSt11char_traitsIcEEEvRSt13basic_ostreamIT_T0_ERKNS1_10put_holderIS6_S7_EE.exit ], [ %.pre236, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit133 ], [ %.pre235, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit ], [ %i.bt, %bb.p ], [ %.pre234, %.noexc139._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit141_crit_edge ]
  %.089 = phi i8 [ 0, %_ZN5boost2io6detail8put_lastIcSt11char_traitsIcEEEvRSt13basic_ostreamIT_T0_ERKNS1_10put_holderIS6_S7_EE.exit ], [ 0, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit133 ], [ 0, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit ], [ %i.cc, %bb.p ], [ %i.cg, %.noexc139._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit141_crit_edge ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !730
  %i.ck = icmp ne i8 %.089, 0
  %.neg = sext i1 %i.ck to i64
  %i.cl = add i64 %i.cj, %.neg
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !700
  %i.co = load ptr, ptr %i.aj, align 8, !tbaa !732
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %.sroa.speculated225 = call i64 @llvm.umin.i64(i64 %i.cr, i64 %i.cl)
  %i.cs = getelementptr i8, ptr %i.ch, i64 -24
  %i.ct = load i64, ptr %i.cs, align 8
  %i.cu = getelementptr inbounds i8, ptr %5, i64 %i.ct ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 225 ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !739, !range !82, !noundef !83
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %._crit_edge.i, label %bb.r

._crit_edge.i:                                    ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit141
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 224
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !tbaa !740
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit

bb.r:                                             ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit141
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 240
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !283 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.r
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 56
  %i.db = load i8, ptr %i.da, align 8, !tbaa !288
  %.not.i1.i.i = icmp eq i8 %i.db, 0
  br i1 %.not.i1.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 89
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !91
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.t:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.cz)
          to label %.noexc143 unwind label %bb.ad

.noexc143:                                        ; preds = %bb.t
  %i.de = load ptr, ptr %i.cz, align 8, !tbaa !136
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 48
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = invoke noundef signext i8 %i.dg(ptr noundef nonnull align 8 dereferenceable(570) %i.cz, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.ad, !inline_history !2888

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc143, %bb.s
  %.0.i.i.i = phi i8 [ %i.dd, %bb.s ], [ %i.dh, %.noexc143 ] ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.cu, i64 224
  store i8 %.0.i.i.i, ptr %i.di, align 8, !tbaa !740
  store i8 1, ptr %i.cv, align 1, !tbaa !739
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %._crit_edge.i
  %i.dj = phi i8 [ %.pre.i, %._crit_edge.i ], [ %.0.i.i.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i ]
  %i.dk = load i32, ptr %i.al, align 8, !tbaa !720
  %i.dl = and i32 %i.dk, 4
  %i.dm = icmp ne i32 %i.dl, 0
  invoke void @_ZN5boost2io6detail6mk_strIcSt11char_traitsIcESaIcEEEvRNSt7__cxx1112basic_stringIT_T0_T1_EEPKS8_NSB_9size_typeElS8_St13_Ios_FmtflagsS8_b(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.ak, i64 noundef %.sroa.speculated225, i64 noundef %i.v, i8 noundef signext %i.dj, i32 noundef %i.t, i8 noundef signext %.089, i1 noundef zeroext %i.dm)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit unwind label %bb.ad

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !539
  %i.dp = load ptr, ptr %0, align 8, !tbaa !537
  invoke void %i.do(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %i.dp)
          to label %_ZN5boost2io6detail8put_lastIcSt11char_traitsIcEEEvRSt13basic_ostreamIT_T0_ERKNS1_10put_holderIS6_S7_EE.exit146 unwind label %bb.ad, !inline_history !2886

_ZN5boost2io6detail8put_lastIcSt11char_traitsIcEEEvRSt13basic_ostreamIT_T0_ERKNS1_10put_holderIS6_S7_EE.exit146: ; preds = %bb.u
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 4 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !732 ; 6 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 4 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !700 ; 2 uses
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = ptrtoint ptr %i.dr to i64
  %i.dw = sub i64 %i.du, %i.dv                    ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !720
  %i.dz = and i32 %i.dy, 2
  %.not108 = icmp eq i32 %i.dz, 0
  br i1 %.not108, label %bb.ae, label %bb.v

bb.v:                                             ; preds = %_ZN5boost2io6detail8put_lastIcSt11char_traitsIcEEEvRSt13basic_ostreamIT_T0_ERKNS1_10put_holderIS6_S7_EE.exit146
  %i.ea = icmp eq ptr %i.dt, %i.dr
  br i1 %i.ea, label %bb.ac, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eb = load i8, ptr %i.dr, align 1, !tbaa !91
  %i.ec = load ptr, ptr %5, align 8, !tbaa !136
  %i.ed = getelementptr i8, ptr %i.ec, i64 -24
  %i.ee = load i64, ptr %i.ed, align 8
  %i.ef = getelementptr inbounds i8, ptr %5, i64 %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 240
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !283 ; 6 uses
  %.not.i.i147 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i147, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i148

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i148: ; preds = %bb.w
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 56
  %i.ej = load i8, ptr %i.ei, align 8, !tbaa !288
  %.not.i1.i149 = icmp eq i8 %i.ej, 0
  br i1 %.not.i1.i149, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i148
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 100
  %i.el = load i8, ptr %i.ek, align 4, !tbaa !91
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit154

bb.y:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i148
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.eh)
          to label %.noexc152 unwind label %bb.ad

.noexc152:                                        ; preds = %bb.y
  %i.em = load ptr, ptr %i.eh, align 8, !tbaa !136
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 48
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = invoke noundef signext i8 %i.eo(ptr noundef nonnull align 8 dereferenceable(570) %i.eh, i8 noundef signext 43)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit154 unwind label %bb.ad, !inline_history !2887

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit154: ; preds = %bb.x, %.noexc152
  %.0.i.i150 = phi i8 [ %i.el, %bb.x ], [ %i.ep, %.noexc152 ]
  %.not109 = icmp eq i8 %i.eb, %.0.i.i150
  br i1 %.not109, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit154
  %i.eq = load i8, ptr %i.dr, align 1, !tbaa !91
  %i.er = load ptr, ptr %5, align 8, !tbaa !136
  %i.es = getelementptr i8, ptr %i.er, i64 -24
  %i.et = load i64, ptr %i.es, align 8
  %i.eu = getelementptr inbounds i8, ptr %5, i64 %i.et
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 240
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !283 ; 6 uses
  %.not.i.i155 = icmp eq ptr %i.ew, null
  br i1 %.not.i.i155, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i156

.invoke:                                          ; preds = %bb.z, %bb.w, %bb.r, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit133._crit_edge, %bb.m, %bb.j
  invoke void @_ZSt16__throw_bad_castv() #46
          to label %.cont unwind label %bb.ad

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i156: ; preds = %bb.z
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 56
  %i.ey = load i8, ptr %i.ex, align 8, !tbaa !288
  %.not.i1.i157 = icmp eq i8 %i.ey, 0
  br i1 %.not.i1.i157, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i156
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 102
  %i.fa = load i8, ptr %i.ez, align 2, !tbaa !91
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit162

bb.ab:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i156
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ew)
          to label %.noexc160 unwind label %bb.ad

.noexc160:                                        ; preds = %bb.ab
  %i.fb = load ptr, ptr %i.ew, align 8, !tbaa !136
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 48
  %i.fd = load ptr, ptr %i.fc, align 8
  %i.fe = invoke noundef signext i8 %i.fd(ptr noundef nonnull align 8 dereferenceable(570) %i.ew, i8 noundef signext 45)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit162 unwind label %bb.ad, !inline_history !2887

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit162: ; preds = %bb.aa, %.noexc160
  %.0.i.i158 = phi i8 [ %i.fa, %bb.aa ], [ %i.fe, %.noexc160 ]
  %.not110 = icmp eq i8 %i.eq, %.0.i.i158
  br i1 %.not110, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit162, %bb.v
  br label %bb.ae

bb.ad:                                            ; preds = %.invoke, %bb.bm, %bb.bl, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %.noexc160, %bb.ab, %.noexc152, %bb.y, %bb.u, %.noexc143, %bb.t, %.noexc139, %bb.q, %.noexc131, %bb.o, %.noexc124, %bb.l, %bb.h, %_ZN5boost2io6detail8put_headIcSt11char_traitsIcEEEvRSt13basic_ostreamIT_T0_ERKNS1_10put_holderIS6_S7_EE.exit, %bb.e, %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit, %bb.b, %bb.d
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.ae:                                            ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit154, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit162, %bb.ac, %_ZN5boost2io6detail8put_lastIcSt11char_traitsIcEEEvRSt13basic_ostreamIT_T0_ERKNS1_10put_holderIS6_S7_EE.exit146
  %8 = phi i1 [ true, %bb.ac ], [ false, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit162 ], [ false, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit154 ], [ false, %_ZN5boost2io6detail8put_lastIcSt11char_traitsIcEEEvRSt13basic_ostreamIT_T0_ERKNS1_10put_holderIS6_S7_EE.exit146 ] ; 4 uses
  %i.fg = icmp eq i64 %i.dw, %i.v
  br i1 %i.fg, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !730
  %i.fj = icmp sgt i64 %i.v, %i.fi
  %or.cond = or i1 %8, %i.fj
  br i1 %or.cond, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !90
  %i.fm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef %i.fl, ptr noundef %i.dr, i64 noundef %i.v)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit unwind label %bb.ad ; 0 uses

bb.ah:                                            ; preds = %bb.af, %bb.ae
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !90
  %i.fp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef %i.fo, ptr noundef %i.dr, i64 noundef %i.dw)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit165 unwind label %bb.ad ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit165: ; preds = %bb.ah
  %i.fq = load ptr, ptr %i.ds, align 8, !tbaa !700 ; 2 uses
  %i.fr = load ptr, ptr %i.dq, align 8, !tbaa !732
  %.not.i = icmp eq ptr %i.fq, null
  %.not10.i = icmp eq ptr %i.fq, %i.fr
  %or.cond.i = or i1 %.not.i, %.not10.i
  br i1 %or.cond.i, label %.noexc166, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit165
  %i.fs = load ptr, ptr %3, align 8, !tbaa !136
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 40
  %i.fu = load ptr, ptr %i.ft, align 8
  %i.fv = invoke { i64, i64 } %i.fu(ptr noundef nonnull align 8 dereferenceable(81) %3, i64 0, i64 0, i32 noundef 16)
          to label %.noexc166 unwind label %bb.ad, !inline_history !2889 ; 0 uses

.noexc166:                                        ; preds = %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit165
  %i.fw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !731 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !699
  %.not11.i = icmp eq ptr %i.fx, null
  %.not12.i = icmp eq ptr %i.fx, %i.fz
  %or.cond13.i = or i1 %.not11.i, %.not12.i
  br i1 %or.cond13.i, label %_ZN5boost2io18basic_altstringbufIcSt11char_traitsIcESaIcEE12clear_bufferEv.exit, label %bb.aj

bb.aj:                                            ; preds = %.noexc166
  %i.ga = load ptr, ptr %3, align 8, !tbaa !136
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 40
  %i.gc = load ptr, ptr %i.gb, align 8
  %i.gd = invoke { i64, i64 } %i.gc(ptr noundef nonnull align 8 dereferenceable(81) %3, i64 0, i64 0, i32 noundef 8)
          to label %_ZN5boost2io18basic_altstringbufIcSt11char_traitsIcESaIcEE12clear_bufferEv.exit unwind label %bb.ad, !inline_history !2889 ; 0 uses

_ZN5boost2io18basic_altstringbufIcSt11char_traitsIcESaIcEE12clear_bufferEv.exit: ; preds = %.noexc166, %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #38
  invoke void @_ZN5boost2io22basic_oaltstringstreamIcSt11char_traitsIcESaIcEEC1EPNS0_18basic_altstringbufIcS3_S4_EE(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull %3)
          to label %bb.ak unwind label %bb.ap

bb.ak:                                            ; preds = %_ZN5boost2io18basic_altstringbufIcSt11char_traitsIcESaIcEE12clear_bufferEv.exit
  %i.ge = load ptr, ptr %7, align 8, !tbaa !136
  %i.gf = getelementptr i8, ptr %i.ge, i64 -24
  %i.gg = load i64, ptr %i.gf, align 8
  %i.gh = getelementptr inbounds i8, ptr %7, i64 %i.gg
  invoke void @_ZNK5boost2io6detail19stream_format_stateIcSt11char_traitsIcEE8apply_onERSt9basic_iosIcS4_EPSt6locale(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(264) %i.gh, ptr noundef %4)
          to label %bb.al unwind label %bb.bf

bb.al:                                            ; preds = %bb.ak
  %i.gi = load ptr, ptr %i.l, align 8, !tbaa !538
  %i.gj = load ptr, ptr %0, align 8, !tbaa !537
  invoke void %i.gi(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %i.gj)
          to label %_ZN5boost2io6detail8put_headIcSt11char_traitsIcEEEvRSt13basic_ostreamIT_T0_ERKNS1_10put_holderIS6_S7_EE.exit169 unwind label %bb.bf, !inline_history !2885

_ZN5boost2io6detail8put_headIcSt11char_traitsIcEEEvRSt13basic_ostreamIT_T0_ERKNS1_10put_holderIS6_S7_EE.exit169: ; preds = %bb.al
  %i.gk = load ptr, ptr %7, align 8, !tbaa !136
  %i.gl = getelementptr i8, ptr %i.gk, i64 -24    ; 2 uses
  %i.gm = load i64, ptr %i.gl, align 8
  %i.gn = getelementptr inbounds i8, ptr %7, i64 %i.gm
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  store i64 0, ptr %i.go, align 8, !tbaa !661
  br i1 %8, label %bb.am, label %bb.aq

bb.am:                                            ; preds = %_ZN5boost2io6detail8put_headIcSt11char_traitsIcEEEvRSt13basic_ostreamIT_T0_ERKNS1_10put_holderIS6_S7_EE.exit169
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 32, ptr %i.b, align 1, !tbaa !91
  %i.gp = load i64, ptr %i.gl, align 8
  %i.gq = getelementptr inbounds i8, ptr %7, i64 %i.gp
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !661
  %.not.i170 = icmp eq i64 %i.gs, 0
  br i1 %.not.i170, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit unwind label %bb.bf ; 0 uses

bb.ao:                                            ; preds = %bb.am
  %i.gu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %7, i8 noundef signext 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit unwind label %bb.bf ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.ao, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.aq

bb.ap:                                            ; preds = %_ZN5boost2io18basic_altstringbufIcSt11char_traitsIcESaIcEE12clear_bufferEv.exit
  %i.gv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.aq:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %_ZN5boost2io6detail8put_headIcSt11char_traitsIcEEEvRSt13basic_ostreamIT_T0_ERKNS1_10put_holderIS6_S7_EE.exit169
  %i.gw = load ptr, ptr %i.dn, align 8, !tbaa !539
  %i.gx = load ptr, ptr %0, align 8, !tbaa !537
  invoke void %i.gw(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %i.gx)
          to label %_ZN5boost2io6detail8put_lastIcSt11char_traitsIcEEEvRSt13basic_ostreamIT_T0_ERKNS1_10put_holderIS6_S7_EE.exit174 unwind label %bb.bf, !inline_history !2886

_ZN5boost2io6detail8put_lastIcSt11char_traitsIcEEEvRSt13basic_ostreamIT_T0_ERKNS1_10put_holderIS6_S7_EE.exit174: ; preds = %bb.aq
  %i.gy = load ptr, ptr %i.ds, align 8, !tbaa !700 ; 3 uses
  %i.gz = load ptr, ptr %i.dq, align 8, !tbaa !732 ; 3 uses
  %i.ha = icmp eq ptr %i.gy, %i.gz
  br i1 %i.ha, label %bb.ar, label %bb.av

bb.ar:                                            ; preds = %_ZN5boost2io6detail8put_lastIcSt11char_traitsIcEEEvRSt13basic_ostreamIT_T0_ERKNS1_10put_holderIS6_S7_EE.exit174
  %i.hb = load i32, ptr %i.dx, align 8, !tbaa !720
  %i.hc = and i32 %i.hb, 2
  %.not111 = icmp eq i32 %i.hc, 0
  br i1 %.not111, label %bb.av, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 32, ptr %i.a, align 1, !tbaa !91
  %i.hd = load ptr, ptr %7, align 8, !tbaa !136
  %i.he = getelementptr i8, ptr %i.hd, i64 -24
  %i.hf = load i64, ptr %i.he, align 8
  %i.hg = getelementptr inbounds i8, ptr %7, i64 %i.hf
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !661
  %.not.i175 = icmp eq i64 %i.hi, 0
  br i1 %.not.i175, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit179 unwind label %bb.bf ; 0 uses

bb.au:                                            ; preds = %bb.as
  %i.hk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %7, i8 noundef signext 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit179 unwind label %bb.bf ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit179: ; preds = %bb.au, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.pre237 = load ptr, ptr %i.dq, align 8, !tbaa !732
  %.pre238 = load ptr, ptr %i.ds, align 8, !tbaa !700
  br label %bb.av

bb.av:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit179, %bb.ar, %_ZN5boost2io6detail8put_lastIcSt11char_traitsIcEEEvRSt13basic_ostreamIT_T0_ERKNS1_10put_holderIS6_S7_EE.exit174
  %i.hl = phi ptr [ %.pre238, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit179 ], [ %i.gy, %bb.ar ], [ %i.gy, %_ZN5boost2io6detail8put_lastIcSt11char_traitsIcEEEvRSt13basic_ostreamIT_T0_ERKNS1_10put_holderIS6_S7_EE.exit174 ]
  %i.hm = phi ptr [ %.pre237, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit179 ], [ %i.gz, %bb.ar ], [ %i.gz, %_ZN5boost2io6detail8put_lastIcSt11char_traitsIcEEEvRSt13basic_ostreamIT_T0_ERKNS1_10put_holderIS6_S7_EE.exit174 ] ; 5 uses
  %.188 = phi i1 [ true, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit179 ], [ %8, %bb.ar ], [ %8, %_ZN5boost2io6detail8put_lastIcSt11char_traitsIcEEEvRSt13basic_ostreamIT_T0_ERKNS1_10put_holderIS6_S7_EE.exit174 ]
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !730
  %i.hp = ptrtoint ptr %i.hl to i64
  %i.hq = ptrtoint ptr %i.hm to i64
  %i.hr = sub i64 %i.hp, %i.hq
  %.sroa.speculated215 = call i64 @llvm.umin.i64(i64 %i.hr, i64 %i.ho) ; 6 uses
  %.not112 = icmp ugt i64 %i.v, %.sroa.speculated215
  br i1 %.not112, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hs = load i64, ptr %i.fn, align 8, !tbaa !90
  %i.ht = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef %i.hs, ptr noundef %i.hm, i64 noundef %.sroa.speculated215)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit182 unwind label %bb.bf ; 0 uses

bb.ax:                                            ; preds = %bb.av
  %i.hu = zext i1 %.188 to i64                    ; 6 uses
  %i.hv = add i64 %i.dw, %i.hu
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %.sroa.speculated215, i64 %i.hv) ; 3 uses
  %i.hw = icmp ugt i64 %.sroa.speculated, %i.hu
  br i1 %i.hw, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.ax
  %i.hx = load ptr, ptr %2, align 8, !tbaa !93
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph, %bb.az
  %.0230 = phi i64 [ %i.hu, %.lr.ph ], [ %i.ie, %bb.az ] ; 4 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hm, i64 %.0230
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !91
  %i.ia = sub nuw i64 %.0230, %i.hu
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.ia
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !91
  %i.id = icmp eq i8 %i.hz, %i.ic
  br i1 %i.id, label %bb.az, label %.critedge

bb.az:                                            ; preds = %bb.ay
  %i.ie = add i64 %.0230, 1                       ; 2 uses
  %exitcond.not = icmp eq i64 %i.ie, %.sroa.speculated
  br i1 %exitcond.not, label %.critedge, label %bb.ay, !llvm.loop !2890

.critedge:                                        ; preds = %bb.ay, %bb.az, %bb.ax
  %.0.lcssa = phi i64 [ %i.hu, %bb.ax ], [ %.sroa.speculated, %bb.az ], [ %.0230, %bb.ay ] ; 2 uses
  %.not113 = icmp ult i64 %.0.lcssa, %.sroa.speculated215
  %spec.select = select i1 %.not113, i64 %.0.lcssa, i64 %i.hu ; 3 uses
  %i.if = load i64, ptr %i.fn, align 8, !tbaa !90
  %i.ig = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef %i.if, ptr noundef %i.hm, i64 noundef %spec.select)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit185 unwind label %bb.bf ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit185: ; preds = %.critedge
  %i.ih = load ptr, ptr %7, align 8, !tbaa !136
  %i.ii = getelementptr i8, ptr %i.ih, i64 -24
  %i.ij = load i64, ptr %i.ii, align 8
  %i.ik = getelementptr inbounds i8, ptr %7, i64 %i.ij ; 4 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 225 ; 2 uses
  %i.im = load i8, ptr %i.il, align 1, !tbaa !739, !range !82, !noundef !83
  %i.in = trunc nuw i8 %i.im to i1
  br i1 %i.in, label %._crit_edge.i191, label %bb.ba

._crit_edge.i191:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit185
  %.phi.trans.insert.i192 = getelementptr inbounds nuw i8, ptr %i.ik, i64 224
  %.pre.i193 = load i8, ptr %.phi.trans.insert.i192, align 8, !tbaa !740
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit197

bb.ba:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit185
  %i.io = getelementptr inbounds nuw i8, ptr %i.ik, i64 240
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !283 ; 6 uses
  %.not.i.i.i186 = icmp eq ptr %i.ip, null
  br i1 %.not.i.i.i186, label %bb.bb, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i187

bb.bb:                                            ; preds = %bb.ba
  invoke void @_ZSt16__throw_bad_castv() #46
          to label %.noexc194 unwind label %bb.bf

.noexc194:                                        ; preds = %bb.bb
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i187: ; preds = %bb.ba
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 56
  %i.ir = load i8, ptr %i.iq, align 8, !tbaa !288
  %.not.i1.i.i188 = icmp eq i8 %i.ir, 0
  br i1 %.not.i1.i.i188, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i187
  %i.is = getelementptr inbounds nuw i8, ptr %i.ip, i64 89
  %i.it = load i8, ptr %i.is, align 1, !tbaa !91
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i189

bb.bd:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i187
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ip)
          to label %.noexc195 unwind label %bb.bf

.noexc195:                                        ; preds = %bb.bd
  %i.iu = load ptr, ptr %i.ip, align 8, !tbaa !136
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 48
  %i.iw = load ptr, ptr %i.iv, align 8
  %i.ix = invoke noundef signext i8 %i.iw(ptr noundef nonnull align 8 dereferenceable(570) %i.ip, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i189 unwind label %bb.bf, !inline_history !2888

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i189: ; preds = %.noexc195, %bb.bc
  %.0.i.i.i190 = phi i8 [ %i.it, %bb.bc ], [ %i.ix, %.noexc195 ] ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ik, i64 224
  store i8 %.0.i.i.i190, ptr %i.iy, align 8, !tbaa !740
  store i8 1, ptr %i.il, align 1, !tbaa !739
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit197

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit197: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i189, %._crit_edge.i191
  %i.iz = phi i8 [ %.pre.i193, %._crit_edge.i191 ], [ %.0.i.i.i190, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i189 ]
  %i.ja = sub nuw nsw i64 %i.v, %.sroa.speculated215
  %i.jb = load i64, ptr %i.fn, align 8, !tbaa !90
  %i.jc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.jb, i64 noundef 0, i64 noundef %i.ja, i8 noundef signext %i.iz)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit unwind label %bb.bf ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit197
  %i.jd = sub i64 %.sroa.speculated215, %spec.select ; 2 uses
  %i.je = load i64, ptr %i.fn, align 8, !tbaa !90
  %i.jf = sub i64 4611686018427387903, %i.je
  %i.jg = icmp ult i64 %i.jf, %i.jd
  br i1 %i.jg, label %bb.be, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.be:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.62) #46
          to label %.noexc199 unwind label %bb.bf

.noexc199:                                        ; preds = %bb.be
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit
  %i.jh = getelementptr inbounds nuw i8, ptr %i.hm, i64 %spec.select
  %i.ji = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.jh, i64 noundef %i.jd)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit182 unwind label %bb.bf ; 0 uses

bb.bf:                                            ; preds = %bb.ak, %bb.al, %bb.an, %bb.ao, %bb.aq, %bb.at, %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i, %bb.be, %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit197, %.noexc195, %bb.bd, %bb.bb, %.critedge, %bb.aw
  %i.jj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost2io22basic_oaltstringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #38
  br label %bb.bk

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit182: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i, %bb.aw
  %i.jk = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !743 ; 7 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.jl, null
  br i1 %.not.i.i.i.i.i, label %_ZN5boost2io22basic_oaltstringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit182
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jn = atomicrmw add ptr %i.jm, i32 -1 acq_rel, align 4
  %i.jo = icmp eq i32 %i.jn, 1
  br i1 %i.jo, label %bb.bh, label %_ZN5boost2io22basic_oaltstringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

bb.bh:                                            ; preds = %bb.bg
  %i.jp = load ptr, ptr %i.jl, align 8, !tbaa !136
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  %i.jr = load ptr, ptr %i.jq, align 8
  invoke void %i.jr(ptr noundef nonnull align 8 dereferenceable(16) %i.jl)
          to label %.noexc.i.i.i.i.i unwind label %bb.bj, !inline_history !66

.noexc.i.i.i.i.i:                                 ; preds = %bb.bh
  %i.js = getelementptr inbounds nuw i8, ptr %i.jl, i64 12
  %i.jt = atomicrmw add ptr %i.js, i32 -1 acq_rel, align 4
  %i.ju = icmp eq i32 %i.jt, 1
  br i1 %i.ju, label %bb.bi, label %_ZN5boost2io22basic_oaltstringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

bb.bi:                                            ; preds = %.noexc.i.i.i.i.i
  %i.jv = load ptr, ptr %i.jl, align 8, !tbaa !136
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 24
  %i.jx = load ptr, ptr %i.jw, align 8
  invoke void %i.jx(ptr noundef nonnull align 8 dereferenceable(16) %i.jl)
          to label %_ZN5boost2io22basic_oaltstringstreamIcSt11char_traitsIcESaIcEED1Ev.exit unwind label %bb.bj, !inline_history !66

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.jy = landingpad { ptr, i32 }
          catch ptr null
  %i.jz = extractvalue { ptr, i32 } %i.jy, 0
  call void @__clang_call_terminate(ptr %i.jz) #44, !inline_history !744
  unreachable

_ZN5boost2io22basic_oaltstringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit182, %bb.bg, %.noexc.i.i.i.i.i, %bb.bi
  %i.ka = getelementptr inbounds nuw i8, ptr %7, i64 24
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ka) #38, !inline_history !744
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit

bb.bk:                                            ; preds = %bb.bf, %bb.ap
  %.pn116.pn.pn = phi { ptr, i32 } [ %i.jj, %bb.bf ], [ %i.gv, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  br label %bb.br

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit: ; preds = %bb.ag, %_ZN5boost2io22basic_oaltstringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit
  %i.kb = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !700 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !732
  %.not.i201 = icmp eq ptr %i.kc, null
  %.not10.i202 = icmp eq ptr %i.kc, %i.ke
  %or.cond.i203 = or i1 %.not.i201, %.not10.i202
  br i1 %or.cond.i203, label %.noexc207, label %bb.bl

bb.bl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit
  %i.kf = load ptr, ptr %3, align 8, !tbaa !136
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 40
  %i.kh = load ptr, ptr %i.kg, align 8
  %i.ki = invoke { i64, i64 } %i.kh(ptr noundef nonnull align 8 dereferenceable(81) %3, i64 0, i64 0, i32 noundef 16)
          to label %.noexc207 unwind label %bb.ad, !inline_history !2889 ; 0 uses

.noexc207:                                        ; preds = %bb.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit
  %i.kj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !731 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !699
  %.not11.i204 = icmp eq ptr %i.kk, null
  %.not12.i205 = icmp eq ptr %i.kk, %i.km
  %or.cond13.i206 = or i1 %.not11.i204, %.not12.i205
  br i1 %or.cond13.i206, label %_ZN5boost2io18basic_altstringbufIcSt11char_traitsIcESaIcEE12clear_bufferEv.exit209, label %bb.bm

bb.bm:                                            ; preds = %.noexc207
  %i.kn = load ptr, ptr %3, align 8, !tbaa !136
end_hunk_0
