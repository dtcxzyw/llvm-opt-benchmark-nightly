inline.NumInlined: 8841
inline.NumDeleted: 3439
begin_hunk_0_@_ZN6google8protobuf8compiler20CommandLineInterface15ParseInputFilesEPNS0_14DescriptorPoolEPNS1_14DiskSourceTreeEPSt6vectorIPKNS0_14FileDescriptorESaISA_EE:bb.a
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.k
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 56
  %i.cd = load i8, ptr %i.cc, align 8, !tbaa !122
  %.not.i1.i.i = icmp eq i8 %i.cd, 0
  br i1 %.not.i1.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 67
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !34
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.n:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.cb)
  %i.cg = load ptr, ptr %i.cb, align 8, !tbaa !82
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 48
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = call noundef signext i8 %i.ci(ptr noundef nonnull align 8 dereferenceable(570) %i.cb, i8 noundef signext 10), !inline_history !554
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.m, %bb.n
  %.0.i.i.i = phi i8 [ %i.cf, %bb.m ], [ %i.cj, %bb.n ]
  %i.ck = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, i8 noundef signext %.0.i.i.i)
  %i.cl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ck) ; 0 uses
  br label %.thread138

bb.o:                                             ; preds = %bb.j, %_ZNSt6vectorIPKN6google8protobuf14FileDescriptorESaIS4_EE9push_backERKS4_.exit
  %i.cm = load i8, ptr %i.u, align 8, !tbaa !214, !range !75, !noundef !76
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %.preheader143, label %.critedge

.preheader143:                                    ; preds = %bb.o
  %i.co = getelementptr inbounds nuw i8, ptr %i.ap, i64 48 ; 3 uses
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !43
  %i.cq = icmp sgt i32 %i.cp, 0
  br i1 %i.cq, label %.lr.ph167, label %.critedge

.lr.ph167:                                        ; preds = %.preheader143
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  br label %.outer.a

.outer.a:                                         ; preds = %.thread209, %.lr.ph167
  %.049166.ph = phi i1 [ true, %.thread209 ], [ false, %.lr.ph167 ]
  %.051165.ph = phi i32 [ %i.et, %.thread209 ], [ 0, %.lr.ph167 ]
  br label %bb.p

._crit_edge:                                      ; preds = %bb.v
  br i1 %.049166.ph, label %.thread138, label %.critedge

bb.p:                                             ; preds = %.outer.a, %bb.v
  %.051165 = phi i32 [ %i.eq, %bb.v ], [ %.051165.ph, %.outer.a ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.cs = call noundef ptr @_ZNK6google8protobuf14FileDescriptor10dependencyEi(ptr noundef nonnull align 8 dereferenceable(184) %i.ap, i32 noundef %.051165)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !465 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !105
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !101
  store i64 %i.cx, ptr %4, align 8
  store ptr %i.cv, ptr %i.w, align 8
  %i.cy = call { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE4findISt17basic_string_viewIcS7_EEENSE_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.cz = extractvalue { ptr, ptr } %i.cy, 0
  %i.da = icmp eq ptr %i.cz, null
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br i1 %i.da, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.db = load ptr, ptr %i.cr, align 8, !tbaa !465 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !105
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !101
  %i.df = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.dc, i64 noundef %i.de) ; 2 uses
  %i.dg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.df, ptr noundef nonnull @.str.5, i64 noundef 2) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.dh = load ptr, ptr %i.x, align 8, !tbaa !105
  %i.di = load i64, ptr %i.y, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.dj = call noundef ptr @_ZNK6google8protobuf14FileDescriptor10dependencyEi(ptr noundef nonnull align 8 dereferenceable(184) %i.ap, i32 noundef %.051165)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !465 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !105
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !101
  store i64 2, ptr %6, align 8, !tbaa !555
  store ptr @.str.43, ptr %i.z, align 8, !tbaa !557
  store i64 %i.do, ptr %i.aa, align 8, !tbaa !30
  store ptr %i.dm, ptr %.sroa.5109.0..sroa_idx, align 8, !tbaa !192
  call void @_ZN4absl12lts_2025051213StrReplaceAllB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEESt16initializer_listISt4pairIS4_S4_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, i64 %i.di, ptr %i.dh, ptr nonnull %6, i64 1)
  %i.dp = load ptr, ptr %5, align 8, !tbaa !105
  %i.dq = load i64, ptr %i.ab, align 8, !tbaa !101
  %i.dr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.df, ptr noundef %i.dp, i64 noundef %i.dq)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %.loopexit144 ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.q
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !82
  %i.dt = getelementptr i8, ptr %i.ds, i64 -24
  %i.du = load i64, ptr %i.dt, align 8
  %i.dv = getelementptr inbounds i8, ptr %i.dr, i64 %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 240
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !115 ; 6 uses
  %.not.i.i.i85 = icmp eq ptr %i.dx, null
  br i1 %.not.i.i.i85, label %bb.r, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i86

bb.r:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZSt16__throw_bad_castv() #41
          to label %.noexc unwind label %.loopexit.split-lp145

.noexc:                                           ; preds = %bb.r
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i86: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 56
  %i.dz = load i8, ptr %i.dy, align 8, !tbaa !122
  %.not.i1.i.i87 = icmp eq i8 %i.dz, 0
  br i1 %.not.i1.i.i87, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i86
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 67
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !34
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.t:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i86
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dx)
          to label %.noexc89 unwind label %.loopexit144

.noexc89:                                         ; preds = %bb.t
  %i.ec = load ptr, ptr %i.dx, align 8, !tbaa !82
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 48
  %i.ee = load ptr, ptr %i.ed, align 8
  %i.ef = invoke noundef signext i8 %i.ee(ptr noundef nonnull align 8 dereferenceable(570) %i.dx, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit144, !inline_history !136

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc89, %bb.s
  %.0.i.i.i88 = phi i8 [ %i.eb, %bb.s ], [ %i.ef, %.noexc89 ]
  %i.eg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.dr, i8 noundef signext %.0.i.i.i88)
          to label %.noexc91 unwind label %.loopexit144

.noexc91:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.eh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.eg)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %.loopexit144 ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc91
  %i.ei = load ptr, ptr %5, align 8, !tbaa !105   ; 2 uses
  %i.ej = icmp eq ptr %i.ei, %i.ac
  br i1 %i.ej, label %.thread209, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.ek = load i64, ptr %i.ac, align 8, !tbaa !34
  %i.el = add i64 %i.ek, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.el) #42
  br label %.thread209

.loopexit144:                                     ; preds = %bb.q, %bb.t, %.noexc89, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc91
  %lpad.loopexit146 = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit.split-lp145:                            ; preds = %bb.r
  %lpad.loopexit.split-lp147 = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %.loopexit.split-lp145, %.loopexit144
  %lpad.phi148 = phi { ptr, i32 } [ %lpad.loopexit146, %.loopexit144 ], [ %lpad.loopexit.split-lp147, %.loopexit.split-lp145 ]
  %i.em = load ptr, ptr %5, align 8, !tbaa !105   ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.ac
  br i1 %i.en, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69: ; preds = %bb.u
  %i.eo = load i64, ptr %i.ac, align 8, !tbaa !34
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.ep) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %bb.ad

bb.v:                                             ; preds = %bb.p
  %i.eq = add nuw nsw i32 %.051165, 1             ; 2 uses
  %i.er = load i32, ptr %i.co, align 8, !tbaa !43
  %i.es = icmp slt i32 %i.eq, %i.er
  br i1 %i.es, label %bb.p, label %._crit_edge, !llvm.loop !558

.thread209:                                       ; preds = %_ZNSolsEPFRSoS_E.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %i.et = add nuw nsw i32 %.051165, 1             ; 2 uses
  %i.eu = load i32, ptr %i.co, align 8, !tbaa !43
  %i.ev = icmp slt i32 %i.et, %i.eu
  br i1 %i.ev, label %.outer.a, label %.thread138, !llvm.loop !558

.critedge:                                        ; preds = %.preheader143, %._crit_edge, %bb.o
  %i.ew = load i8, ptr %i.ad, align 8, !tbaa !247, !range !75, !noundef !76
  %i.ex = trunc nuw i8 %i.ew to i1
  br i1 %i.ex, label %.preheader, label %.thread

.preheader:                                       ; preds = %.critedge
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ap, i64 60 ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !63
  %i.fa = icmp sgt i32 %i.ez, 0
  br i1 %i.fa, label %.lr.ph170, label %.thread

.lr.ph170:                                        ; preds = %.preheader
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  br label %bb.w

._crit_edge171:                                   ; preds = %bb.ac
  br i1 %.156, label %.thread138, label %.thread

bb.w:                                             ; preds = %.lr.ph170, %bb.ac
  %.054169 = phi i32 [ 0, %.lr.ph170 ], [ %i.gu, %bb.ac ] ; 3 uses
  %.055168 = phi i1 [ false, %.lr.ph170 ], [ %.156, %bb.ac ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  %i.fc = call { i64, ptr } @_ZNK6google8protobuf14FileDescriptor22option_dependency_nameEi(ptr noundef nonnull align 8 dereferenceable(184) %i.ap, i32 noundef %.054169) ; 2 uses
  %i.fd = extractvalue { i64, ptr } %i.fc, 0
  store i64 %i.fd, ptr %7, align 8
  %i.fe = extractvalue { i64, ptr } %i.fc, 1
  store ptr %i.fe, ptr %i.af, align 8
  %i.ff = call { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE4findISt17basic_string_viewIcS7_EEENSE_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %7)
  %i.fg = extractvalue { ptr, ptr } %i.ff, 0
  %i.fh = icmp eq ptr %i.fg, null
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br i1 %i.fh, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %bb.w
  %i.fi = load ptr, ptr %i.fb, align 8, !tbaa !465 ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !105
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !101
  %i.fm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.fj, i64 noundef %i.fl) ; 2 uses
  %i.fn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fm, ptr noundef nonnull @.str.5, i64 noundef 2) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  %i.fo = load ptr, ptr %i.ag, align 8, !tbaa !105
  %i.fp = load i64, ptr %i.ah, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  %i.fq = call { i64, ptr } @_ZNK6google8protobuf14FileDescriptor22option_dependency_nameEi(ptr noundef nonnull align 8 dereferenceable(184) %i.ap, i32 noundef %.054169) ; 2 uses
  %i.fr = extractvalue { i64, ptr } %i.fq, 0
  %i.fs = extractvalue { i64, ptr } %i.fq, 1
  store i64 2, ptr %9, align 8, !tbaa !555
  store ptr @.str.43, ptr %i.ai, align 8, !tbaa !557
  store i64 %i.fr, ptr %i.aj, align 8, !tbaa !30
  store ptr %i.fs, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !192
  call void @_ZN4absl12lts_2025051213StrReplaceAllB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEESt16initializer_listISt4pairIS4_S4_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, i64 %i.fp, ptr %i.fo, ptr nonnull %9, i64 1)
  %i.ft = load ptr, ptr %8, align 8, !tbaa !105
  %i.fu = load i64, ptr %i.ak, align 8, !tbaa !101
  %i.fv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fm, ptr noundef %i.ft, i64 noundef %i.fu)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit76 unwind label %.loopexit ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit76: ; preds = %bb.x
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !82
  %i.fx = getelementptr i8, ptr %i.fw, i64 -24
  %i.fy = load i64, ptr %i.fx, align 8
  %i.fz = getelementptr inbounds i8, ptr %i.fv, i64 %i.fy
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 240
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !115 ; 6 uses
  %.not.i.i.i94 = icmp eq ptr %i.gb, null
  br i1 %.not.i.i.i94, label %bb.y, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i95

bb.y:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit76
  invoke void @_ZSt16__throw_bad_castv() #41
          to label %.noexc99 unwind label %.loopexit.split-lp

.noexc99:                                         ; preds = %bb.y
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i95: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit76
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 56
  %i.gd = load i8, ptr %i.gc, align 8, !tbaa !122
  %.not.i1.i.i96 = icmp eq i8 %i.gd, 0
  br i1 %.not.i1.i.i96, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i95
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 67
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !34
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i97

bb.aa:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i95
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.gb)
          to label %.noexc100 unwind label %.loopexit

.noexc100:                                        ; preds = %bb.aa
  %i.gg = load ptr, ptr %i.gb, align 8, !tbaa !82
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 48
  %i.gi = load ptr, ptr %i.gh, align 8
  %i.gj = invoke noundef signext i8 %i.gi(ptr noundef nonnull align 8 dereferenceable(570) %i.gb, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i97 unwind label %.loopexit, !inline_history !136

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i97: ; preds = %.noexc100, %bb.z
  %.0.i.i.i98 = phi i8 [ %i.gf, %bb.z ], [ %i.gj, %.noexc100 ]
  %i.gk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.fv, i8 noundef signext %.0.i.i.i98)
          to label %.noexc102 unwind label %.loopexit

.noexc102:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i97
  %i.gl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gk)
          to label %_ZNSolsEPFRSoS_E.exit77 unwind label %.loopexit ; 0 uses

_ZNSolsEPFRSoS_E.exit77:                          ; preds = %.noexc102
  %i.gm = load ptr, ptr %8, align 8, !tbaa !105   ; 2 uses
  %i.gn = icmp eq ptr %i.gm, %i.al
  br i1 %i.gn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78: ; preds = %_ZNSolsEPFRSoS_E.exit77
  %i.go = load i64, ptr %i.al, align 8, !tbaa !34
  %i.gp = add i64 %i.go, 1
  call void @_ZdlPvm(ptr noundef %i.gm, i64 noundef %i.gp) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80: ; preds = %_ZNSolsEPFRSoS_E.exit77, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %bb.ac

.loopexit:                                        ; preds = %bb.x, %bb.aa, %.noexc100, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i97, %.noexc102
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.loopexit.split-lp:                               ; preds = %bb.y
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.gq = load ptr, ptr %8, align 8, !tbaa !105   ; 2 uses
  %i.gr = icmp eq ptr %i.gq, %i.al
  br i1 %i.gr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81: ; preds = %bb.ab
  %i.gs = load i64, ptr %i.al, align 8, !tbaa !34
  %i.gt = add i64 %i.gs, 1
  call void @_ZdlPvm(ptr noundef %i.gq, i64 noundef %i.gt) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %bb.ad

bb.ac:                                            ; preds = %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80
  %.156 = phi i1 [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80 ], [ %.055168, %bb.w ] ; 2 uses
  %i.gu = add nuw nsw i32 %.054169, 1             ; 2 uses
  %i.gv = load i32, ptr %i.ey, align 4, !tbaa !63
  %i.gw = icmp slt i32 %i.gu, %i.gv
  br i1 %i.gw, label %bb.w, label %._crit_edge171, !llvm.loop !559

.thread:                                          ; preds = %.preheader, %._crit_edge171, %.critedge
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.0126.0174, i64 32 ; 2 uses
  %.not142 = icmp eq ptr %i.gx, %i.q
  br i1 %.not142, label %.thread138, label %bb.c

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71
  %.pn = phi { ptr, i32 } [ %lpad.phi148, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ], [ %lpad.phi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83 ]
  resume { ptr, i32 } %.pn

.thread138:                                       ; preds = %.thread, %bb.c, %._crit_edge, %._crit_edge171, %.thread209, %.loopexit149, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %.6 = phi i1 [ false, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ true, %.loopexit149 ], [ false, %.thread209 ], [ false, %bb.c ], [ false, %._crit_edge ], [ true, %.thread ], [ false, %._crit_edge171 ]
  call void @_ZN6google8protobuf14DescriptorPool21ClearDirectInputFilesEv(ptr noundef nonnull align 8 dereferenceable(120) %1)
  ret i1 %.6
}

; Function Attrs: nounwind
declare void @_ZN6google8protobuf19FileDescriptorProtoD1Ev(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6google8protobuf8compiler20CommandLineInterface28EnforceProtocEditionsSupportERKSt6vectorIPKNS0_14FileDescriptorESaIS6_EE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(647) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [3 x %"class.std::basic_string_view"], align 16 ; 9 uses
  %3 = alloca [1 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 5 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %5 = alloca [1 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 5 uses
  %6 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.absl::lts_20250512::strings_internal::StringifySink", align 8 ; 11 uses
  %9 = alloca %"class.absl::lts_20250512::strings_internal::StringifySink", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.b = load i8, ptr %i.a, align 8, !tbaa !248, !range !75, !noundef !76
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !447    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !447  ; 2 uses
  %.not6772 = icmp eq ptr %i.d, %i.f
  br i1 %.not6772, label %.loopexit, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.063.073, i64 8 ; 2 uses
  %.not67 = icmp eq ptr %i.g, %i.f
  br i1 %.not67, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.063.073 = phi ptr [ %i.g, %bb.c ], [ %i.d, %bb.b ] ; 2 uses
  %i.h = load ptr, ptr %.sroa.063.073, align 8, !tbaa !31 ; 3 uses
  %i.i = tail call noundef i32 @_ZNK6google8protobuf14FileDescriptor7editionEv(ptr noundef nonnull align 8 dereferenceable(184) %i.h) ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !465  ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !105
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !101
  %i.o = tail call noundef zeroext i1 @_ZN6google8protobuf8compiler19CanSkipEditionCheckESt17basic_string_viewIcSt11char_traitsIcEE(i64 %i.n, ptr %i.l)
  %i.p = icmp slt i32 %i.i, 1002
  %or.cond.not = or i1 %i.p, %i.o
  br i1 %or.cond.not, label %bb.c, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !465  ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !105
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  store ptr %i.w, ptr %8, align 8, !tbaa !132
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 0, ptr %i.x, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.y = invoke { i64, ptr } @_ZN6google8protobuf8internal16ShortEditionNameENS0_7EditionE(i32 noundef %i.i)
          to label %.noexc unwind label %bb.l     ; 2 uses

.noexc:                                           ; preds = %bb.d
  %i.z = extractvalue { i64, ptr } %i.y, 0
  store i64 %i.z, ptr %6, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ab = extractvalue { i64, ptr } %i.y, 1
  store ptr %i.ab, ptr %i.aa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  store ptr %6, ptr %5, align 8, !tbaa !34
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchISt17basic_string_viewIcSt11char_traitsIcEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.ac, align 8, !tbaa !560
  %i.ad = invoke noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal13FormatUntypedENS1_17FormatRawSinkImplENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr nonnull align 8 dereferenceable(32) %8, ptr nonnull @_ZN4absl12lts_2025051219str_format_internal17FormatRawSinkImpl5FlushINS0_16strings_internal13StringifySinkEEEvPvSt17basic_string_viewIcSt11char_traitsIcEE, ptr nonnull @.str.228, i64 2, ptr nonnull %5, i64 1)
          to label %bb.e unwind label %bb.l       ; 0 uses

bb.e:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  %i.ae = load ptr, ptr %8, align 8, !tbaa !105
  %i.af = load i64, ptr %i.x, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  store ptr %i.ah, ptr %9, align 8, !tbaa !132
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 0, ptr %i.ai, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.aj = invoke { i64, ptr } @_ZN6google8protobuf8internal16ShortEditionNameENS0_7EditionE(i32 noundef 1001)
          to label %.noexc25 unwind label %bb.m   ; 2 uses

.noexc25:                                         ; preds = %bb.e
  %i.ak = extractvalue { i64, ptr } %i.aj, 0
  store i64 %i.ak, ptr %4, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.am = extractvalue { i64, ptr } %i.aj, 1
  store ptr %i.am, ptr %i.al, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  store ptr %4, ptr %3, align 8, !tbaa !34
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchISt17basic_string_viewIcSt11char_traitsIcEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.an, align 8, !tbaa !560
  %i.ao = invoke noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal13FormatUntypedENS1_17FormatRawSinkImplENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr nonnull align 8 dereferenceable(32) %9, ptr nonnull @_ZN4absl12lts_2025051219str_format_internal17FormatRawSinkImpl5FlushINS0_16strings_internal13StringifySinkEEEvPvSt17basic_string_viewIcSt11char_traitsIcEE, ptr nonnull @.str.228, i64 2, ptr nonnull %3, i64 1)
          to label %bb.f unwind label %bb.m       ; 0 uses

bb.f:                                             ; preds = %.noexc25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  %i.ap = load ptr, ptr %9, align 8, !tbaa !105
  %i.aq = load i64, ptr %i.ai, align 8, !tbaa !101
  call void @llvm.experimental.noalias.scope.decl(metadata !562)
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 8 uses
  store ptr %i.ar, ptr %7, align 8, !tbaa !132, !alias.scope !562
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 0, ptr %i.as, align 8, !tbaa !101, !alias.scope !562
  store i8 0, ptr %i.ar, align 8, !tbaa !34, !alias.scope !562
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37, !noalias !562
  store i64 %i.u, ptr %2, align 16, !noalias !562
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.s, ptr %i.at, align 8, !noalias !562
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.af, ptr %i.au, align 16, !noalias !562
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.ae, ptr %i.av, align 8, !noalias !562
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 %i.aq, ptr %i.aw, align 16, !noalias !562
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.ap, ptr %i.ax, align 8, !noalias !562
  invoke void @_ZN4absl12lts_2025051219substitute_internal24SubstituteAndAppendArrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EPKSA_m(ptr noundef nonnull align 8 %7, i64 92, ptr nonnull @.str.146, ptr noundef nonnull %2, i64 noundef 3)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.az = load ptr, ptr %7, align 8, !tbaa !105, !alias.scope !562 ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.ar
  br i1 %i.ba, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  %i.bb = load i64, ptr %i.ar, align 8, !tbaa !34, !alias.scope !562
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #42
  br label %.body

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37, !noalias !562
  %i.bd = load ptr, ptr %7, align 8, !tbaa !105
  %i.be = load i64, ptr %i.as, align 8, !tbaa !101
  %i.bf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.bd, i64 noundef %i.be)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.n ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.h
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !82
  %i.bh = getelementptr i8, ptr %i.bg, i64 -24
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds i8, ptr %i.bf, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 240
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !115 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i, label %bb.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.i:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZSt16__throw_bad_castv() #41
          to label %.noexc48 unwind label %bb.n

.noexc48:                                         ; preds = %bb.i
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 56
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !122
  %.not.i1.i.i = icmp eq i8 %i.bn, 0
  br i1 %.not.i1.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 67
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !34
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.k:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bl)
          to label %.noexc49 unwind label %bb.n

.noexc49:                                         ; preds = %bb.k
  %i.bq = load ptr, ptr %i.bl, align 8, !tbaa !82
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = invoke noundef signext i8 %i.bs(ptr noundef nonnull align 8 dereferenceable(570) %i.bl, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.n, !inline_history !136

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc49, %bb.j
  %.0.i.i.i = phi i8 [ %i.bp, %bb.j ], [ %i.bt, %.noexc49 ]
  %i.bu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, i8 noundef signext %.0.i.i.i)
          to label %.noexc51 unwind label %bb.n

.noexc51:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.bv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bu)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.n ; 0 uses
end_hunk_0
