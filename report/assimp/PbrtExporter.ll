inline.NumInlined: 1466
inline.NumDeleted: 366
begin_hunk_0_@_ZN6Assimp12PbrtExporter9WriteMeshEP6aiMesh:._crit_edge.i.i
bb.bx:                                            ; preds = %bb.bw
  %i.rm = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.rn = load i32, ptr %i.rm, align 4
  %i.ro = icmp eq i32 %i.rn, 2
  br i1 %i.ro, label %bb.cd, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.rp = getelementptr inbounds nuw i8, ptr %1, i64 188
  %i.rq = load i32, ptr %i.rp, align 4
  %i.rr = icmp eq i32 %i.rq, 2
  br i1 %i.rr, label %bb.cd, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.rs = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.rt = load i32, ptr %i.rs, align 4
  %i.ru = icmp eq i32 %i.rt, 2
  br i1 %i.ru, label %bb.cd, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.rv = getelementptr inbounds nuw i8, ptr %1, i64 196
  %i.rw = load i32, ptr %i.rv, align 4
  %i.rx = icmp eq i32 %i.rw, 2
  br i1 %i.rx, label %bb.cd, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ry = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.rz = load i32, ptr %i.ry, align 4
  %i.sa = icmp eq i32 %i.rz, 2
  br i1 %i.sa, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.sb = getelementptr inbounds nuw i8, ptr %1, i64 204
  %i.sc = load i32, ptr %i.sb, align 4
  %i.sd = icmp eq i32 %i.sc, 2
  br i1 %i.sd, label %bb.cd, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit310

bb.cd:                                            ; preds = %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit292
  %.lcssa = phi i64 [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit292 ], [ 1, %bb.bw ], [ 2, %bb.bx ], [ 3, %bb.by ], [ 4, %bb.bz ], [ 5, %bb.ca ], [ 6, %bb.cb ], [ 7, %bb.cc ]
  %i.se = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.sf = getelementptr inbounds nuw [8 x i8], ptr %i.se, i64 %.lcssa
  %i.sg = load ptr, ptr %i.sf, align 8
  %i.sh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.150, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit308.preheader unwind label %bb.ce ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit308.preheader: ; preds = %bb.cd
  %i.si = load i32, ptr %i.oq, align 4
  %.not367 = icmp eq i32 %i.si, 0
  br i1 %.not367, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit308._crit_edge, label %.lr.ph363

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit308._crit_edge: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit320, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit308.preheader
  %i.sj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.35, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit310 unwind label %bb.ce ; 0 uses

bb.ce:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit308._crit_edge, %bb.cd
  %i.sk = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6aiFaceD2Ev.exit253

.lr.ph363:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit308.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit320
  %indvars.iv383 = phi i64 [ %indvars.iv.next384, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit320 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit308.preheader ] ; 3 uses
  %i.sl = getelementptr inbounds nuw [12 x i8], ptr %i.sg, i64 %indvars.iv383 ; 2 uses
  %i.sm = load float, ptr %i.sl, align 4
  %i.sn = fpext float %i.sm to double
  %i.so = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.d, double noundef %i.sn)
          to label %_ZNSolsEf.exit312 unwind label %bb.cg ; 2 uses

_ZNSolsEf.exit312:                                ; preds = %.lr.ph363
  %i.sp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.so, ptr noundef nonnull @.str.14, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit314 unwind label %bb.cg ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit314: ; preds = %_ZNSolsEf.exit312
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sl, i64 4
  %i.sr = load float, ptr %i.sq, align 4
  %i.ss = fpext float %i.sr to double
  %i.st = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.so, double noundef %i.ss)
          to label %_ZNSolsEf.exit316 unwind label %bb.cg

_ZNSolsEf.exit316:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit314
  %i.su = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.st, ptr noundef nonnull @.str.14, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit318 unwind label %bb.cg ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit318: ; preds = %_ZNSolsEf.exit316
  %i.sv = trunc nuw i64 %indvars.iv383 to i32
  %i.sw = urem i32 %i.sv, 6
  %i.sx = icmp eq i32 %i.sw, 5
  br i1 %i.sx, label %bb.cf, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit320

bb.cf:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit318
  %i.sy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.145, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit320 unwind label %bb.cg ; 0 uses

bb.cg:                                            ; preds = %bb.cf, %_ZNSolsEf.exit316, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit314, %_ZNSolsEf.exit312, %.lr.ph363
  %i.sz = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6aiFaceD2Ev.exit253

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit320: ; preds = %bb.cf, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit318
  %indvars.iv.next384 = add nuw nsw i64 %indvars.iv383, 1 ; 2 uses
  %i.ta = load i32, ptr %i.oq, align 4
  %i.tb = zext i32 %i.ta to i64
  %i.tc = icmp samesign ult i64 %indvars.iv.next384, %i.tb
  br i1 %i.tc, label %.lr.ph363, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit308._crit_edge, !llvm.loop !145

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit310: ; preds = %bb.cc, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit308._crit_edge
  %i.td = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.151, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit322 unwind label %bb.ab ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit322: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit310
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.te = load ptr, ptr %4, align 8               ; 2 uses
  %i.tf = icmp eq ptr %i.te, %i.bb
  br i1 %i.tf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit322
  %i.tg = load i64, ptr %i.bb, align 8
  %i.th = add i64 %i.tg, 1
  call void @_ZdlPvm(ptr noundef %i.te, i64 noundef %i.th) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit322, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.ch

bb.ch:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325, %bb.a
  ret void

_ZN6aiFaceD2Ev.exit253:                           ; preds = %bb.bi, %bb.bm, %.thread, %bb.ce, %bb.cg, %bb.bv, %bb.bs, %bb.bp, %bb.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184, %bb.ab
  %.pn113.pn.pn = phi { ptr, i32 } [ %i.sk, %bb.ce ], [ %i.pi, %bb.bp ], [ %i.qf, %bb.bs ], [ %i.rc, %bb.bv ], [ %.pn.pn.pn.pn, %bb.bd ], [ %i.gw, %bb.ab ], [ %.pn103.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184 ], [ %i.sz, %bb.cg ], [ %i.nr, %bb.bi ], [ %.pn113, %bb.bm ], [ %.pn113476, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.ti = load ptr, ptr %4, align 8               ; 2 uses
  %i.tj = icmp eq ptr %i.ti, %i.bb
  br i1 %i.tj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326: ; preds = %_ZN6aiFaceD2Ev.exit253
  %i.tk = load i64, ptr %i.bb, align 8
  %i.tl = add i64 %i.tk, 1
  call void @_ZdlPvm(ptr noundef %i.ti, i64 noundef %i.tl) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328: ; preds = %_ZN6aiFaceD2Ev.exit253, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  resume { ptr, i32 } %.pn113.pn.pn

bb.ci:                                            ; preds = %bb.bh
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyExportErrorC2IJRA17_KcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(17) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %2)
  invoke void @_ZN15DeadlyErrorBaseC2IJERA17_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %2, ptr noundef nonnull align 1 dereferenceable(17) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %2, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #26
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #24
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #24
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyExportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %2) #24
  resume { ptr, i32 } %i.o
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEEixEOi(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %2 = load i32, ptr %1, align 4                  ; 2 uses
  br label %.lr.ph.i.i.i.a

.lr.ph.i.i.i.a:                                   ; preds = %.lr.ph.i.i.i.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %.lr.ph.i.i.i.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %.lr.ph.i.i.i.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp slt i32 %i.e, %2                    ; 2 uses
  %.19.i.i.i = select i1 %i.f, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.f, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE11lower_boundERS3_.exit, label %.lr.ph.i.i.i.a, !llvm.loop !146

_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE11lower_boundERS3_.exit: ; preds = %.lr.ph.i.i.i.a
  %i.g = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.g, label %.critedge, label %bb.b

bb.b:                                             ; preds = %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE11lower_boundERS3_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp slt i32 %2, %i.i
  br i1 %i.j, label %.critedge, label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOiEESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE11lower_boundERS3_.exit, %bb.b
  %.08.lcssa.i.i.i14 = phi ptr [ %.19.i.i.i, %bb.b ], [ %.19.i.i.i, %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE11lower_boundERS3_.exit ], [ %i.c, %bb.a ]
  %i.k = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #29 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 3 uses
  %3 = load i32, ptr %1, align 4
  store i32 %3, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  store i32 0, ptr %i.m, align 4
  %i.n = invoke { ptr, ptr } @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i14, ptr noundef nonnull align 4 dereferenceable(4) %i.l)
          to label %bb.c unwind label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

bb.c:                                             ; preds = %.critedge
  %i.o = extractvalue { ptr, ptr } %i.n, 0        ; 2 uses
  %i.p = extractvalue { ptr, ptr } %i.n, 1        ; 4 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i4 = icmp ne ptr %i.o, null
  %i.q = icmp eq ptr %i.p, %i.c
  %or.cond.i.i.i = select i1 %.not.i.i.i4, i1 true, i1 %i.q
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.s = load i32, ptr %i.l, align 4
  %i.t = load i32, ptr %i.r, align 4
  %i.u = icmp slt i32 %i.s, %i.t
  br label %.thread.i

.thread.i:                                        ; preds = %bb.e, %bb.d
  %i.v = phi i1 [ %i.u, %bb.e ], [ true, %bb.d ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.v, ptr noundef nonnull %i.k, ptr noundef nonnull %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #24
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.w, align 8
  br label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOiEESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit

_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.critedge
  %i.z = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 40) #26
  resume { ptr, i32 } %i.z

bb.f:                                             ; preds = %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 40) #26
  br label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOiEESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit

_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOiEESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit: ; preds = %bb.f, %.thread.i, %bb.b
  %.sroa.09.0 = phi ptr [ %.19.i.i.i, %bb.b ], [ %i.k, %.thread.i ], [ %i.o, %bb.f ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 36
  ret ptr %i.aa
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp12PbrtExporterD0Ev(ptr noundef nonnull align 8 dead_on_return(624) dereferenceable(624) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN6Assimp12PbrtExporterD2Ev(ptr noundef nonnull align 8 dead_on_return(624) dereferenceable(624) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 624) #26
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #24 ; 0 uses
  tail call void @_ZSt9terminatev() #27
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyExportErrorC2IJRA38_KcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(38) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %2)
  invoke void @_ZN15DeadlyErrorBaseC2IJERA38_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %2, ptr noundef nonnull align 1 dereferenceable(38) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %2, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #26
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #24
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #24
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyExportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %2) #24
  resume { ptr, i32 } %i.o
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJERA38_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(38) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(38) %2) #24
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 1 dereferenceable(38) %2, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %3, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %3, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #26
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #24
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #24
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #24
  resume { ptr, i32 } %i.q
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #26
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #24
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN17DeadlyExportErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #24
end_hunk_0
