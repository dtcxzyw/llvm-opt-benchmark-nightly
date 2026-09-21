Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/Formats?download=true
inline.NumInlined: 192
inline.NumDeleted: 71
begin_hunk_0_@_ZN7openvdb5v13_04util11printNumberERSomRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_bii:bb.a
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.d ; 0 uses

bb.i:                                             ; preds = %bb.g
  %.not35 = icmp samesign ult i64 %1, 1000
  %i.ao = load i64, ptr %i.f, align 8
  %i.ap = getelementptr inbounds i8, ptr %7, i64 %i.ao
  %i.aq = sext i32 %5 to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !28
  br i1 %.not35, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = uitofp nneg i64 %1 to double
  %i.at = fdiv double %i.as, 1.000000e+03
  %i.au = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %7, double noundef %i.at)
          to label %_ZNSolsEd.exit42 unwind label %bb.d

_ZNSolsEd.exit42:                                 ; preds = %bb.j
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull @.str.10, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.d ; 0 uses

bb.k:                                             ; preds = %bb.i
  %i.aw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNSolsEd.exit42, %_ZNSolsEd.exit40, %_ZNSolsEd.exit38, %_ZNSolsEd.exit
  %.0 = phi i32 [ 1, %_ZNSolsEd.exit42 ], [ 2, %_ZNSolsEd.exit40 ], [ 4, %_ZNSolsEd.exit ], [ 3, %_ZNSolsEd.exit38 ] ; 2 uses
  br i1 %4, label %bb.l, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull @.str.5, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44: ; preds = %bb.l
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %1)
          to label %_ZNSolsEm.exit45 unwind label %bb.d

_ZNSolsEm.exit45:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull @.str.11, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46: ; preds = %bb.k, %_ZNSolsEm.exit45, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.054 = phi i32 [ %.0, %_ZNSolsEm.exit45 ], [ %.0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ], [ 0, %bb.k ]
  %i.ba = load ptr, ptr %3, align 8, !tbaa !13
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !14
  %i.bd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %i.ba, i64 noundef %i.bc)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit47 unwind label %bb.d ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit47: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  call void @llvm.experimental.noalias.scope.decl(metadata !45)
  call void @llvm.experimental.noalias.scope.decl(metadata !46)
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.be, ptr %8, align 8, !tbaa !29, !alias.scope !47
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 0, ptr %i.bf, align 8, !tbaa !14, !alias.scope !47
  store i8 0, ptr %i.be, align 8, !tbaa !30, !alias.scope !47
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !32, !noalias !47 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.bh, null
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !47 ; 2 uses
  %i.bk = icmp ugt ptr %i.bh, %i.bj
  %.08.i.i.i = select i1 %i.bk, ptr %i.bh, ptr %i.bj ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit47
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !33, !noalias !47 ; 2 uses
  %i.bn = ptrtoint ptr %.08.i.i.i to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef 0, ptr noundef %i.bm, i64 noundef %i.bp)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %bb.o, %bb.m
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bs = load ptr, ptr %8, align 8, !tbaa !13, !alias.scope !47 ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.be
  br i1 %i.bt, label %.body, label %.body.sink.split

bb.o:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit47
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.bu)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.n

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.o, %bb.m
  %i.bv = load ptr, ptr %8, align 8, !tbaa !13
  %i.bw = load i64, ptr %i.bf, align 8, !tbaa !14
  %i.bx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.bv, i64 noundef %i.bw)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit48 unwind label %bb.p ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit48: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.by = load ptr, ptr %8, align 8, !tbaa !13    ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.be
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit48
  %i.ca = load i64, ptr %i.be, align 8, !tbaa !30
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cb) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit48, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  %i.cc = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.cc, ptr %7, align 8, !tbaa !16
  %i.cd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ce = getelementptr i8, ptr %i.cc, i64 -24
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds i8, ptr %7, i64 %i.cf
  store ptr %i.cd, ptr %i.cg, align 8, !tbaa !16
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ch, align 8, !tbaa !16
  %i.ci = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !13 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 2 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cm = load i64, ptr %i.ck, align 8, !tbaa !30
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cn) #10
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ch, align 8, !tbaa !16
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.co) #9
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.cp) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  ret i32 %.054

bb.p:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cr = load ptr, ptr %8, align 8, !tbaa !13    ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.be
  br i1 %i.cs, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.p, %bb.n
  %.sink = phi ptr [ %i.bs, %bb.n ], [ %i.cr, %bb.p ]
  %.pn.ph = phi { ptr, i32 } [ %i.br, %bb.n ], [ %i.cq, %bb.p ]
  %i.ct = load i64, ptr %i.be, align 8, !tbaa !30
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.cu) #10
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.p, %bb.n
  %.pn = phi { ptr, i32 } [ %i.br, %bb.n ], [ %i.cq, %bb.p ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  br label %bb.q

bb.q:                                             ; preds = %.body, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.x, %bb.d ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %7) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 5) i32 @_ZN7openvdb5v13_04util9printTimeERSodRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_iii(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 37 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %7)
  %i.a = load ptr, ptr %2, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !14
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %i.a, i64 noundef %i.c)
          to label %bb.b unwind label %bb.e       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %7, align 8, !tbaa !16
  %i.f = getelementptr i8, ptr %i.e, i64 -24      ; 3 uses
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %7, i64 %i.g
  %i.i = sext i32 %5 to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !25
  %i.k = load i64, ptr %i.f, align 8
  %i.l = getelementptr inbounds i8, ptr %7, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !26
  %i.o = or i32 %i.n, 4
  store i32 %i.o, ptr %i.m, align 8, !tbaa !27
  %i.p = fcmp ult double %1, 1.000000e+03
  br i1 %i.p, label %bb.t, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = insertelement <2 x double> poison, double %1, i64 0
  %i.r = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.s = fdiv <2 x double> %i.r, <double 1.000000e+03, double 6.000000e+04> ; 2 uses
  %9 = extractelement <2 x double> %i.s, i64 0    ; 2 uses
  %10 = fptoui double %9 to i32
  %11 = urem i32 %10, 60                          ; 4 uses
  %12 = extractelement <2 x double> %i.s, i64 1
  %13 = fptoui double %12 to i32
  %14 = urem i32 %13, 60                          ; 6 uses
  %i.t = fdiv <2 x double> %i.r, <double 3.600000e+06, double 8.640000e+07> ; 2 uses
  %i.u = extractelement <2 x double> %i.t, i64 0
  %i.v = fptoui double %i.u to i32
  %i.w = urem i32 %i.v, 24                        ; 6 uses
  %i.x = extractelement <2 x double> %i.t, i64 1
  %i.y = fptoui double %i.x to i32                ; 6 uses
  %.not77 = icmp eq i32 %i.y, 0
  br i1 %.not77, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = zext i32 %i.y to i64
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %i.z)
          to label %_ZNSolsEj.exit unwind label %bb.f

_ZNSolsEj.exit:                                   ; preds = %bb.d
  %i.ab = icmp eq i32 %6, 0
  %.not78 = icmp eq i32 %i.y, 1
  %i.ac = select i1 %.not78, ptr @.str.14, ptr @.str.13
  %i.ad = select i1 %i.ab, ptr @.str.12, ptr %i.ac ; 2 uses
  %i.ae = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ad) #9
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull %i.ad, i64 noundef %i.ae)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit112, %_ZNSolsEd.exit111, %bb.t, %bb.a
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.f:                                             ; preds = %_ZNSolsEj.exit98, %bb.k, %_ZNSolsEj.exit96, %bb.h, %_ZNSolsEj.exit94, %bb.g, %_ZNSolsEj.exit, %bb.d
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNSolsEj.exit, %bb.c
  %spec.store.select = phi i32 [ 3, %bb.c ], [ 4, %_ZNSolsEj.exit ]
  %.0 = phi i32 [ 0, %bb.c ], [ 4, %_ZNSolsEj.exit ]
  %.not79 = icmp eq i32 %i.w, 0
  br i1 %.not79, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95, label %bb.g

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ai = zext nneg i32 %i.w to i64
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %i.ai)
          to label %_ZNSolsEj.exit94 unwind label %bb.f

_ZNSolsEj.exit94:                                 ; preds = %bb.g
  %i.ak = icmp eq i32 %6, 0
  %.not80 = icmp eq i32 %i.w, 1
  %i.al = select i1 %.not80, ptr @.str.17, ptr @.str.16
  %i.am = select i1 %i.ak, ptr @.str.15, ptr %i.al ; 2 uses
  %i.an = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.am) #9
  %i.ao = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull %i.am, i64 noundef %i.an)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95: ; preds = %_ZNSolsEj.exit94, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.1 = phi i32 [ %.0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ], [ %spec.store.select, %_ZNSolsEj.exit94 ] ; 3 uses
  %.not82 = icmp eq i32 %14, 0
  br i1 %.not82, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95
  %i.ap = zext nneg i32 %14 to i64
  %i.aq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %i.ap)
          to label %_ZNSolsEj.exit96 unwind label %bb.f

_ZNSolsEj.exit96:                                 ; preds = %bb.h
  %i.ar = icmp eq i32 %6, 0
  %.not83 = icmp eq i32 %14, 1
  %i.as = select i1 %.not83, ptr @.str.20, ptr @.str.19
  %i.at = select i1 %i.ar, ptr @.str.18, ptr %i.as ; 2 uses
  %i.au = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.at) #9
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull %i.at, i64 noundef %i.au)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit97 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit97: ; preds = %_ZNSolsEj.exit96
  %.not84 = icmp eq i32 %.1, 0
  %spec.store.select1 = select i1 %.not84, i32 2, i32 %.1
  br label %bb.i

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit97, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95
  %.2 = phi i32 [ %spec.store.select1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit97 ], [ %.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95 ]
  %.not85 = icmp eq i32 %11, 0
  br i1 %.not85, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not87 = icmp eq i32 %6, 0
  br i1 %.not87, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = zext nneg i32 %11 to i64
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %i.aw)
          to label %_ZNSolsEj.exit98 unwind label %bb.f

_ZNSolsEj.exit98:                                 ; preds = %bb.k
  %.not88 = icmp eq i32 %11, 1                    ; 2 uses
  %i.ay = select i1 %.not88, ptr @.str.22, ptr @.str.21
  %i.az = select i1 %.not88, i64 12, i64 13
  %i.ba = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull %i.ay, i64 noundef %i.az)
          to label %bb.l unwind label %bb.f       ; 0 uses

bb.l:                                             ; preds = %_ZNSolsEj.exit98
  %i.bb = load ptr, ptr %7, align 8, !tbaa !16
  %i.bc = getelementptr i8, ptr %i.bb, i64 -24
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = getelementptr inbounds i8, ptr %7, i64 %i.bd
  %i.bf = sext i32 %4 to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !28
  %i.bh = mul i32 %i.y, 24
  %i.bi = add i32 %i.w, %i.bh
  %i.bj = mul i32 %i.bi, 60
  %i.bk = add i32 %i.bj, %14
  %i.bl = mul i32 %i.bk, 60
  %i.bm = add i32 %i.bl, %11
  %i.bn = uitofp i32 %i.bm to double
  %i.bo = fneg double %i.bn
  %i.bp = call double @llvm.fmuladd.f64(double %i.bo, double 1.000000e+03, double %1)
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %7, double noundef %i.bp)
          to label %_ZNSolsEd.exit unwind label %bb.m ; 2 uses

_ZNSolsEd.exit:                                   ; preds = %bb.l
  %i.br = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bq, ptr noundef nonnull @.str.23, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100: ; preds = %_ZNSolsEd.exit
  %i.bs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bq, double noundef %1)
          to label %_ZNSolsEd.exit101 unwind label %bb.m

_ZNSolsEd.exit101:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100
  %i.bt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, ptr noundef nonnull @.str.24, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit102 unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %_ZNSolsEd.exit101, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100, %_ZNSolsEd.exit, %bb.l
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.n:                                             ; preds = %bb.j
  %i.bv = load ptr, ptr %7, align 8, !tbaa !16
  %i.bw = getelementptr i8, ptr %i.bv, i64 -24
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = getelementptr inbounds i8, ptr %7, i64 %i.bx
  %i.bz = sext i32 %4 to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !28
  %i.cb = mul i32 %i.y, 24
  %i.cc = add i32 %i.w, %i.cb
  %i.cd = mul i32 %i.cc, 60
  %i.ce = add i32 %i.cd, %14
  %i.cf = mul i32 %i.ce, 60
  %i.cg = uitofp i32 %i.cf to double
  %i.ch = fsub double %9, %i.cg
  %i.ci = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %7, double noundef %i.ch)
          to label %_ZNSolsEd.exit103 unwind label %bb.o

_ZNSolsEd.exit103:                                ; preds = %bb.n
  %i.cj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ci, ptr noundef nonnull @.str.25, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit102 unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %_ZNSolsEd.exit103, %bb.n
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.p:                                             ; preds = %bb.i
  %i.cl = mul i32 %i.y, 24
  %i.cm = add i32 %i.w, %i.cl
  %i.cn = mul i32 %i.cm, 60
  %i.co = add i32 %i.cn, %14
  %i.cp = mul i32 %i.co, 60
  %i.cq = uitofp i32 %i.cp to double
  %i.cr = fneg double %i.cq
  %i.cs = call double @llvm.fmuladd.f64(double %i.cr, double 1.000000e+03, double %1) ; 2 uses
  %.not86 = icmp eq i32 %6, 0
  %i.ct = load ptr, ptr %7, align 8, !tbaa !16
  %i.cu = getelementptr i8, ptr %i.ct, i64 -24
  %i.cv = load i64, ptr %i.cu, align 8
  %i.cw = getelementptr inbounds i8, ptr %7, i64 %i.cv
  %i.cx = sext i32 %4 to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store i64 %i.cx, ptr %i.cy, align 8, !tbaa !28
  br i1 %.not86, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %7, double noundef %i.cs)
          to label %_ZNSolsEd.exit105 unwind label %bb.r ; 2 uses

_ZNSolsEd.exit105:                                ; preds = %bb.q
  %i.da = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cz, ptr noundef nonnull @.str.23, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit106 unwind label %bb.r ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit106: ; preds = %_ZNSolsEd.exit105
  %i.db = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cz, double noundef %1)
          to label %_ZNSolsEd.exit109.invoke unwind label %bb.r

bb.r:                                             ; preds = %_ZNSolsEd.exit109.invoke, %bb.s, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit106, %_ZNSolsEd.exit105, %bb.q
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.s:                                             ; preds = %bb.p
  %i.dd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %7, double noundef %i.cs)
          to label %_ZNSolsEd.exit109.invoke unwind label %bb.r

_ZNSolsEd.exit109.invoke:                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit106, %bb.s
  %i.de = phi ptr [ %i.dd, %bb.s ], [ %i.db, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit106 ]
  %i.df = phi ptr [ @.str.26, %bb.s ], [ @.str.24, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit106 ]
  %i.dg = phi i64 [ 2, %bb.s ], [ 3, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit106 ]
  %i.dh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.de, ptr noundef nonnull %i.df, i64 noundef %i.dg)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit102 unwind label %bb.r ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit102: ; preds = %_ZNSolsEd.exit109.invoke, %_ZNSolsEd.exit103, %_ZNSolsEd.exit101
  %spec.store.select2 = call i32 @llvm.umax.i32(i32 %.2, i32 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit112

bb.t:                                             ; preds = %bb.b
  %i.di = load i64, ptr %i.f, align 8
  %i.dj = getelementptr inbounds i8, ptr %7, i64 %i.di
  %i.dk = sext i32 %4 to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store i64 %i.dk, ptr %i.dl, align 8, !tbaa !28
  %i.dm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %7, double noundef %1)
          to label %_ZNSolsEd.exit111 unwind label %bb.e

_ZNSolsEd.exit111:                                ; preds = %bb.t
  %.not = icmp eq i32 %6, 0                       ; 2 uses
  %i.dn = select i1 %.not, ptr @.str.26, ptr @.str.27
  %i.do = select i1 %.not, i64 2, i64 13
  %i.dp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dm, ptr noundef nonnull %i.dn, i64 noundef %i.do)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit112 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit112: ; preds = %_ZNSolsEd.exit111, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit102
  %.3 = phi i32 [ %spec.store.select2, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit102 ], [ 0, %_ZNSolsEd.exit111 ]
  %i.dq = load ptr, ptr %3, align 8, !tbaa !13
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !14
  %i.dt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %i.dq, i64 noundef %i.ds)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit113 unwind label %bb.e ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit113: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit112
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  call void @llvm.experimental.noalias.scope.decl(metadata !52)
  call void @llvm.experimental.noalias.scope.decl(metadata !53)
  %i.du = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.du, ptr %8, align 8, !tbaa !29, !alias.scope !54
  %i.dv = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 0, ptr %i.dv, align 8, !tbaa !14, !alias.scope !54
  store i8 0, ptr %i.du, align 8, !tbaa !30, !alias.scope !54
  %i.dw = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !32, !noalias !54 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.dx, null
  %i.dy = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.dz = load ptr, ptr %i.dy, align 8, !noalias !54 ; 2 uses
  %i.ea = icmp ugt ptr %i.dx, %i.dz
  %.08.i.i.i = select i1 %i.ea, ptr %i.dx, ptr %i.dz ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.w, label %bb.u

bb.u:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit113
  %i.eb = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !33, !noalias !54 ; 2 uses
  %i.ed = ptrtoint ptr %.08.i.i.i to i64
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = sub i64 %i.ed, %i.ee
  %i.eg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef 0, ptr noundef %i.ec, i64 noundef %i.ef)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.v ; 0 uses

bb.v:                                             ; preds = %bb.w, %bb.u
  %i.eh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ei = load ptr, ptr %8, align 8, !tbaa !13, !alias.scope !54 ; 2 uses
  %i.ej = icmp eq ptr %i.ei, %i.du
  br i1 %i.ej, label %.body, label %.body.sink.split

bb.w:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit113
  %i.ek = getelementptr inbounds nuw i8, ptr %7, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.ek)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.v

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.w, %bb.u
  %i.el = load ptr, ptr %8, align 8, !tbaa !13
  %i.em = load i64, ptr %i.dv, align 8, !tbaa !14
  %i.en = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.el, i64 noundef %i.em)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit114 unwind label %bb.x ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit114: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.eo = load ptr, ptr %8, align 8, !tbaa !13    ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %i.du
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit114
  %i.eq = load i64, ptr %i.du, align 8, !tbaa !30
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.er) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit114, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  %i.es = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.es, ptr %7, align 8, !tbaa !16
  %i.et = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.eu = getelementptr i8, ptr %i.es, i64 -24
  %i.ev = load i64, ptr %i.eu, align 8
  %i.ew = getelementptr inbounds i8, ptr %7, i64 %i.ev
  store ptr %i.et, ptr %i.ew, align 8, !tbaa !16
  %i.ex = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ex, align 8, !tbaa !16
  %i.ey = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !13 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 2 uses
  %i.fb = icmp eq ptr %i.ez, %i.fa
  br i1 %i.fb, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fc = load i64, ptr %i.fa, align 8, !tbaa !30
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fd) #10
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ex, align 8, !tbaa !16
  %i.fe = getelementptr inbounds nuw i8, ptr %7, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.fe) #9
  %i.ff = getelementptr inbounds nuw i8, ptr %7, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ff) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  ret i32 %.3

bb.x:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.fg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fh = load ptr, ptr %8, align 8, !tbaa !13    ; 2 uses
  %i.fi = icmp eq ptr %i.fh, %i.du
  br i1 %i.fi, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.x, %bb.v
  %.sink = phi ptr [ %i.ei, %bb.v ], [ %i.fh, %bb.x ]
  %.pn91.ph = phi { ptr, i32 } [ %i.eh, %bb.v ], [ %i.fg, %bb.x ]
  %i.fj = load i64, ptr %i.du, align 8, !tbaa !30
  %i.fk = add i64 %i.fj, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.fk) #10
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.x, %bb.v
  %.pn91 = phi { ptr, i32 } [ %i.eh, %bb.v ], [ %i.fg, %bb.x ], [ %.pn91.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  br label %bb.y

bb.y:                                             ; preds = %bb.f, %bb.m, %bb.o, %bb.r, %.body, %bb.e
  %.pn91.pn = phi { ptr, i32 } [ %.pn91, %.body ], [ %i.ag, %bb.e ], [ %i.bu, %bb.m ], [ %i.ah, %bb.f ], [ %i.ck, %bb.o ], [ %i.dc, %bb.r ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %7) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  resume { ptr, i32 } %.pn91.pn
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #6
end_hunk_0
