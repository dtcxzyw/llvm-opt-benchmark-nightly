inline.NumInlined: 1533
inline.NumDeleted: 511
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN16OpenColorIO_v2_5lsERSoRKNS_10ColorSpaceE:bb.a
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit156 unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit156: ; preds = %bb.q
  %i.eh = load ptr, ptr %3, align 8, !tbaa !7
  %i.ei = load i64, ptr %i.dk, align 8, !tbaa !32
  %i.ej = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.eh, i64 noundef %i.ei)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit158 unwind label %bb.p

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit158: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit156
  %i.ek = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ej, ptr noundef nonnull @.str.14, i64 noundef 2)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit158._ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit160_crit_edge unwind label %bb.p ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit158._ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit160_crit_edge: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit158
  %.pre341 = load i64, ptr %i.dk, align 8, !tbaa !32
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit160

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit160: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit158._ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit160_crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit154
  %i.el = phi i64 [ %.pre341, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit158._ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit160_crit_edge ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit154 ]
  %i.em = load ptr, ptr %1, align 8, !tbaa !70
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 64
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !7  ; 2 uses
  %i.ep = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.eo) #30
  %i.eq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef %i.el, ptr noundef nonnull %i.eo, i64 noundef %i.ep)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit162 unwind label %bb.p ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit162: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit160
  %i.er = load i64, ptr %i.dk, align 8, !tbaa !32
  %i.es = icmp eq i64 %i.er, 0
  br i1 %i.es, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit168, label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit162
  %i.et = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.20, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit164 unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit164: ; preds = %bb.r
  %i.eu = load ptr, ptr %3, align 8, !tbaa !7
  %i.ev = load i64, ptr %i.dk, align 8, !tbaa !32
  %i.ew = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.eu, i64 noundef %i.ev)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit166 unwind label %bb.p

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit166: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit164
  %i.ex = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ew, ptr noundef nonnull @.str.14, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit168 unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit168: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit166, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit162
  %i.ey = load ptr, ptr %1, align 8, !tbaa !70
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 264
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !42 ; 2 uses
  %.not93 = icmp eq i32 %i.fa, 0
  br i1 %.not93, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit176, label %bb.s

bb.s:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit168
  %i.fb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.21, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit170 unwind label %bb.w ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit170: ; preds = %bb.s
  %i.fc = invoke noundef ptr @_ZN16OpenColorIO_v2_516BitDepthToStringENS_8BitDepthE(i32 noundef %i.fa)
          to label %bb.t unwind label %bb.w       ; 3 uses

bb.t:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit170
  %.not.i171 = icmp eq ptr %i.fc, null
  br i1 %.not.i171, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fd = load ptr, ptr %0, align 8, !tbaa !23
  %i.fe = getelementptr i8, ptr %i.fd, i64 -24
  %i.ff = load i64, ptr %i.fe, align 8
  %i.fg = getelementptr inbounds i8, ptr %0, i64 %i.ff ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 32
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !137
  %i.fj = or i32 %i.fi, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.fg, i32 noundef %i.fj)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit174 unwind label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.fk = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fc) #30
  %i.fl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.fc, i64 noundef %i.fk)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit174 unwind label %bb.w ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit174: ; preds = %bb.u, %bb.v
  %i.fm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.14, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit176 unwind label %bb.w ; 0 uses

bb.w:                                             ; preds = %bb.cz, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit268, %bb.cn, %bb.cm, %bb.cl, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit246, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit244, %bb.bp, %bb.bo, %bb.bn, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit224, %bb.ay, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit220, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit218, %bb.ax, %bb.aw, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit192, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit190, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit188, %bb.ad, %bb.ac, %bb.aa, %bb.z, %bb.y, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit176, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit174, %bb.v, %bb.u, %bb.s, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit184, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit178, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit170
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit176: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit174, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit168
  %i.fo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.22, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit178 unwind label %bb.w ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit178: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit176
  %i.fp = load ptr, ptr %1, align 8, !tbaa !70
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 268
  %i.fr = load i8, ptr %i.fq, align 4, !tbaa !67, !range !82, !noundef !83
  %i.fs = trunc nuw i8 %i.fr to i1
  %i.ft = invoke noundef ptr @_ZN16OpenColorIO_v2_512BoolToStringEb(i1 noundef zeroext %i.fs)
          to label %bb.x unwind label %bb.w       ; 3 uses

bb.x:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit178
  %.not.i179 = icmp eq ptr %i.ft, null
  br i1 %.not.i179, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fu = load ptr, ptr %0, align 8, !tbaa !23
  %i.fv = getelementptr i8, ptr %i.fu, i64 -24
  %i.fw = load i64, ptr %i.fv, align 8
  %i.fx = getelementptr inbounds i8, ptr %0, i64 %i.fw ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 32
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !137
  %i.ga = or i32 %i.fz, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.fx, i32 noundef %i.ga)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit182 unwind label %bb.w

bb.z:                                             ; preds = %bb.x
  %i.gb = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ft) #30
  %i.gc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ft, i64 noundef %i.gb)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit182 unwind label %bb.w ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit182: ; preds = %bb.y, %bb.z
  br i1 %i.t, label %.loopexit319, label %bb.aa

bb.aa:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit182
  %i.gd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.23, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit184 unwind label %bb.w ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit184: ; preds = %bb.aa
  %i.ge = load ptr, ptr %1, align 8, !tbaa !70
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 276
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !69
  %i.gh = invoke noundef ptr @_ZN16OpenColorIO_v2_518AllocationToStringENS_10AllocationE(i32 noundef %i.gg)
          to label %bb.ab unwind label %bb.w      ; 3 uses

bb.ab:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit184
  %.not.i185 = icmp eq ptr %i.gh, null
  br i1 %.not.i185, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.gi = load ptr, ptr %0, align 8, !tbaa !23
  %i.gj = getelementptr i8, ptr %i.gi, i64 -24
  %i.gk = load i64, ptr %i.gj, align 8
  %i.gl = getelementptr inbounds i8, ptr %0, i64 %i.gk ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 32
  %i.gn = load i32, ptr %i.gm, align 8, !tbaa !137
  %i.go = or i32 %i.gn, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.gl, i32 noundef %i.go)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit188 unwind label %bb.w

bb.ad:                                            ; preds = %bb.ab
  %i.gp = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gh) #30
  %i.gq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.gh, i64 noundef %i.gp)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit188 unwind label %bb.w ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit188: ; preds = %bb.ac, %bb.ad
  %i.gr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.14, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit190 unwind label %bb.w ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit190: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit188
  %i.gs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.24, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit192 unwind label %bb.w ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit192: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit190
  %i.gt = load float, ptr %.sroa.0298.0, align 4, !tbaa !135
  %i.gu = fpext float %i.gt to double
  %i.gv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.gu)
          to label %_ZNSolsEf.exit.preheader unwind label %bb.w ; 0 uses

_ZNSolsEf.exit.preheader:                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit192
  %.not335 = icmp eq i32 %i.k, 1
  br i1 %.not335, label %.loopexit319, label %.lr.ph326.preheader

.lr.ph326.preheader:                              ; preds = %_ZNSolsEf.exit.preheader
  %wide.trip.count = and i64 %i.j, 2147483647
  br label %.lr.ph326

.lr.ph326:                                        ; preds = %.lr.ph326.preheader, %_ZNSolsEf.exit197
  %indvars.iv = phi i64 [ 1, %.lr.ph326.preheader ], [ %indvars.iv.next, %_ZNSolsEf.exit197 ] ; 2 uses
  %i.gw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.25, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit195 unwind label %bb.ae ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit195: ; preds = %.lr.ph326
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0298.0, i64 %indvars.iv
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !135
  %i.gz = fpext float %i.gy to double
  %i.ha = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.gz)
          to label %_ZNSolsEf.exit197 unwind label %bb.ae ; 0 uses

_ZNSolsEf.exit197:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit195
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond337.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond337.not, label %.loopexit319, label %.lr.ph326, !llvm.loop !147

bb.ae:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit195, %.lr.ph326
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

.loopexit319:                                     ; preds = %_ZNSolsEf.exit197, %_ZNSolsEf.exit.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit182
  %i.hc = load ptr, ptr %1, align 8, !tbaa !70    ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 352 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 360 ; 2 uses
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !74
  %i.hg = load ptr, ptr %i.hd, align 8, !tbaa !73
  %i.hh = ptrtoint ptr %i.hf to i64
  %i.hi = ptrtoint ptr %i.hg to i64
  %i.hj = sub i64 %i.hh, %i.hi
  %i.hk = and i64 %i.hj, 137438953440
  %.not94 = icmp eq i64 %i.hk, 0
  br i1 %.not94, label %bb.aw, label %bb.af

bb.af:                                            ; preds = %.loopexit319
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %10 = load ptr, ptr %i.he, align 8, !tbaa !74
  %11 = load ptr, ptr %i.hd, align 8, !tbaa !73   ; 2 uses
  %12 = ptrtoint ptr %10 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %i.hl = lshr exact i64 %14, 5
  %i.hm = trunc i64 %i.hl to i32
  %i.hn = icmp sgt i32 %i.hm, 0
  br i1 %i.hn, label %.lr.ph329, label %._crit_edge330

.lr.ph329:                                        ; preds = %bb.af
  %i.ho = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 11 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.ag

._crit_edge330:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.af
  %i.hs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.26, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit199 unwind label %bb.as ; 0 uses

bb.ag:                                            ; preds = %.lr.ph329, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %indvars.iv338 = phi i64 [ 0, %.lr.ph329 ], [ %indvars.iv.next339, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.ht = phi ptr [ %11, %.lr.ph329 ], [ %i.iz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.hu = getelementptr inbounds nuw [32 x i8], ptr %i.ht, i64 %indvars.iv338
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !7  ; 4 uses
  store ptr %i.ho, ptr %5, align 8, !tbaa !31
  %i.hw = icmp eq ptr %i.hv, null
  br i1 %i.hw, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.36) #31
          to label %.noexc200 unwind label %.loopexit.split-lp

.noexc200:                                        ; preds = %bb.ah
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.hx = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.hv) #30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.hx, ptr %i.a, align 8, !tbaa !89
  %i.hy = icmp ugt i64 %i.hx, 15
  br i1 %i.hy, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.ai
  %i.hz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc201 unwind label %.loopexit ; 2 uses

.noexc201:                                        ; preds = %.noexc.i
  store ptr %i.hz, ptr %5, align 8, !tbaa !7
  %i.ia = load i64, ptr %i.a, align 8, !tbaa !89
  store i64 %i.ia, ptr %i.ho, align 8, !tbaa !13
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc201, %bb.ai
  %i.ib = phi ptr [ %i.hz, %.noexc201 ], [ %i.ho, %bb.ai ] ; 2 uses
  switch i64 %i.hx, label %bb.ak [
    i64 1, label %bb.aj
    i64 0, label %bb.al
  ]

bb.aj:                                            ; preds = %._crit_edge.i.i
  %i.ic = load i8, ptr %i.hv, align 1, !tbaa !13
  store i8 %i.ic, ptr %i.ib, align 1, !tbaa !13
  br label %bb.al

bb.ak:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ib, ptr nonnull align 1 %i.hv, i64 %i.hx, i1 false)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %._crit_edge.i.i
  %i.id = load i64, ptr %i.a, align 8, !tbaa !89  ; 2 uses
  store i64 %i.id, ptr %i.hp, align 8, !tbaa !32
  %i.ie = load ptr, ptr %5, align 8, !tbaa !7
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 %i.id
  store i8 0, ptr %i.if, align 1, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.ig = load ptr, ptr %i.hq, align 8, !tbaa !74 ; 7 uses
  %i.ih = load ptr, ptr %i.hr, align 8, !tbaa !78
  %.not.i.i202 = icmp eq ptr %i.ig, %i.ih
  br i1 %.not.i.i202, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ig, i64 16 ; 3 uses
  store ptr %i.ii, ptr %i.ig, align 8, !tbaa !31
  %i.ij = load ptr, ptr %5, align 8, !tbaa !7     ; 2 uses
  %i.ik = icmp eq ptr %i.ij, %i.ho
  br i1 %i.ik, label %bb.an, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.an:                                            ; preds = %bb.am
  %i.il = load i64, ptr %i.hp, align 8, !tbaa !32 ; 3 uses
  %i.im = icmp ult i64 %i.il, 16
  call void @llvm.assume(i1 %i.im)
  %i.in = add nuw nsw i64 %i.il, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ii, ptr noundef nonnull align 8 dereferenceable(1) %i.ho, i64 %i.in, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.am
  store ptr %i.ij, ptr %i.ig, align 8, !tbaa !7
  %i.io = load i64, ptr %i.ho, align 8, !tbaa !13
  store i64 %i.io, ptr %i.ii, align 8, !tbaa !13
  %.pre342 = load i64, ptr %i.hp, align 8, !tbaa !32
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ip = phi i64 [ %.pre342, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.il, %bb.an ]
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  store i64 %i.ip, ptr %i.iq, align 8, !tbaa !32
  store ptr %i.ho, ptr %5, align 8, !tbaa !7
  store i64 0, ptr %i.hp, align 8, !tbaa !32
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ig, i64 32
  store ptr %i.ir, ptr %i.hq, align 8, !tbaa !74
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.ao:                                            ; preds = %bb.al
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.ig, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.ap

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.ao
  %.pre343 = load ptr, ptr %5, align 8, !tbaa !7  ; 2 uses
  %i.is = icmp eq ptr %.pre343, %i.ho
  br i1 %i.is, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.it = load i64, ptr %i.ho, align 8, !tbaa !13
  %i.iu = add i64 %i.it, 1
  call void @_ZdlPvm(ptr noundef %.pre343, i64 noundef %i.iu) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %indvars.iv.next339 = add nuw nsw i64 %indvars.iv338, 1 ; 2 uses
  %i.iv = load ptr, ptr %1, align 8, !tbaa !70    ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 352
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iv, i64 360
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !74
  %i.iz = load ptr, ptr %i.iw, align 8, !tbaa !73 ; 2 uses
  %i.ja = ptrtoint ptr %i.iy to i64
  %i.jb = ptrtoint ptr %i.iz to i64
  %i.jc = sub i64 %i.ja, %i.jb
  %sext398 = shl i64 %i.jc, 27
  %i.jd = ashr i64 %sext398, 32
  %i.je = icmp slt i64 %indvars.iv.next339, %i.jd
  br i1 %i.je, label %bb.ag, label %._crit_edge330, !llvm.loop !148

.loopexit:                                        ; preds = %.noexc.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206

.loopexit.split-lp:                               ; preds = %bb.ah
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206

bb.ap:                                            ; preds = %bb.ao
  %i.jf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jg = load ptr, ptr %5, align 8, !tbaa !7     ; 2 uses
  %i.jh = icmp eq ptr %i.jg, %i.ho
  br i1 %i.jh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204: ; preds = %bb.ap
  %i.ji = load i64, ptr %i.ho, align 8, !tbaa !13
  %i.jj = add i64 %i.ji, 1
  call void @_ZdlPvm(ptr noundef %i.jg, i64 noundef %i.jj) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206: ; preds = %bb.ap, %.loopexit, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204
  %.pn96.pn = phi { ptr, i32 } [ %i.jf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %i.jf, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.av

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit199: ; preds = %._crit_edge330
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  invoke void @_ZN11StringUtils4JoinERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef signext 44)
          to label %bb.aq unwind label %bb.at

bb.aq:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit199
  %i.jk = load ptr, ptr %6, align 8, !tbaa !7
  %i.jl = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !32
  %i.jn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.jk, i64 noundef %i.jm)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit208 unwind label %bb.au ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit208: ; preds = %bb.aq
  %i.jo = load ptr, ptr %6, align 8, !tbaa !7     ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.jq = icmp eq ptr %i.jo, %i.jp
  br i1 %i.jq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit208
  %i.jr = load i64, ptr %i.jp, align 8, !tbaa !13
  %i.js = add i64 %i.jr, 1
  call void @_ZdlPvm(ptr noundef %i.jo, i64 noundef %i.js) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit208, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.jt = load ptr, ptr %4, align 8, !tbaa !73    ; 3 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !74 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.jt, %i.jv
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.kb, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.jt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211 ] ; 3 uses
  %i.jw = load ptr, ptr %.05.i.i.i, align 8, !tbaa !7 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.jy = icmp eq ptr %i.jw, %i.jx
  br i1 %i.jy, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.jz = load i64, ptr %i.jx, align 8, !tbaa !13
  %i.ka = add i64 %i.jz, 1
  call void @_ZdlPvm(ptr noundef %i.jw, i64 noundef %i.ka) #28
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.kb = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.kb, %i.jv
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !76

end_hunk_0
