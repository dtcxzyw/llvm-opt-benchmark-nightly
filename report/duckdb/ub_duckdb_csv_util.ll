inline.NumInlined: 4368
inline.NumDeleted: 1499
begin_hunk_0_@_ZN6duckdb8CSVErrorC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12CSVErrorTypeEmS6_NS_16LinesPerBoundaryEmNS_12optional_idxERKNS_16CSVReaderOptionsERKS6_RKNS_6StringE:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !74
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %i.n, ptr %i.o, align 8, !tbaa !74
  store ptr %i.f, ptr %1, align 8, !tbaa !75
  store i64 0, ptr %i.m, align 8, !tbaa !74
  store i8 0, ptr %i.f, align 8, !tbaa !62
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !76
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  store i64 0, ptr %i.r, align 8, !tbaa !74
  store i8 0, ptr %i.q, align 8, !tbaa !62
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 %2, ptr %i.s, align 8, !tbaa !40
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %3, ptr %i.t, align 8, !tbaa !86
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  store ptr %i.v, ptr %i.u, align 8, !tbaa !76
  %i.w = load ptr, ptr %4, align 8, !tbaa !75     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !74  ; 2 uses
  %i.ab = icmp ult i64 %i.aa, 16
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = add nuw nsw i64 %i.aa, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.v, ptr noundef nonnull align 8 dereferenceable(1) %i.x, i64 %i.ac, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  store ptr %i.w, ptr %i.u, align 8, !tbaa !75
  %i.ad = load i64, ptr %i.x, align 8, !tbaa !62
  store i64 %i.ad, ptr %i.v, align 8, !tbaa !62
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit18: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !74
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !74
  store ptr %i.x, ptr %4, align 8, !tbaa !75
  store i64 0, ptr %i.ae, align 8, !tbaa !74
  store i8 0, ptr %i.x, align 8, !tbaa !62
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !81
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %6, ptr %i.ai, align 8, !tbaa !87
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %7, ptr %i.aj, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %11)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit18
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 145
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !98, !range !38, !noundef !39
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6duckdb8CSVError13RemoveNewLineERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.h unwind label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit18
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.g:                                             ; preds = %bb.s, %bb.r, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.e
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.h:                                             ; preds = %bb.e, %bb.d
  %i.ap = load i64, ptr %i.ag, align 8, !tbaa !74
  %i.aq = icmp ugt i64 %i.ap, 10000
  br i1 %i.aq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ar = load ptr, ptr %i.u, align 8, !tbaa !75
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 10000
  store i64 10000, ptr %i.ag, align 8, !tbaa !74
  store i8 0, ptr %i.as, align 1, !tbaa !62
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.at = load ptr, ptr %0, align 8, !tbaa !75
  %i.au = load i64, ptr %i.o, align 8, !tbaa !74
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef %i.at, i64 noundef %i.au)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.g ; 4 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 10, ptr %i.c, align 1, !tbaa !62
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !63
  %i.ax = getelementptr i8, ptr %i.aw, i64 -24
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = getelementptr inbounds i8, ptr %i.av, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !65
  %.not.i = icmp eq i64 %i.bb, 0
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.bc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %bb.m unwind label %bb.g       ; 0 uses

bb.l:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.bd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.av, i8 noundef signext 10)
          to label %bb.m unwind label %bb.g       ; 0 uses

bb.m:                                             ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.be = load ptr, ptr %9, align 8, !tbaa !75
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !74
  %i.bh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef %i.be, i64 noundef %i.bg)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit23 unwind label %bb.g ; 4 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit23: ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 10, ptr %i.b, align 1, !tbaa !62
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !63
  %i.bj = getelementptr i8, ptr %i.bi, i64 -24
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds i8, ptr %i.bh, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !65
  %.not.i24 = icmp eq i64 %i.bn, 0
  br i1 %.not.i24, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit23
  %i.bo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %bb.p unwind label %bb.g       ; 0 uses

bb.o:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit23
  %i.bp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, i8 noundef signext 10)
          to label %bb.p unwind label %bb.g       ; 0 uses

bb.p:                                             ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  invoke void @_ZNK6duckdb16CSVReaderOptions8ToStringB5cxx11ERKNS_6StringE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(1033) %8, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.q unwind label %bb.ad

bb.q:                                             ; preds = %bb.p
  %i.bq = load ptr, ptr %12, align 8, !tbaa !75
  %i.br = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !74
  %i.bt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef %i.bq, i64 noundef %i.bs)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit30 unwind label %bb.ae ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit30: ; preds = %bb.q
  %i.bu = load ptr, ptr %12, align 8, !tbaa !75   ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit30
  call void @_ZdlPv(ptr noundef %i.bu) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 10, ptr %i.a, align 1, !tbaa !62
  %i.bx = load ptr, ptr %11, align 8, !tbaa !63
  %i.by = getelementptr i8, ptr %i.bx, i64 -24
  %i.bz = load i64, ptr %i.by, align 8
  %i.ca = getelementptr inbounds i8, ptr %11, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !65
  %.not.i31 = icmp eq i64 %i.cc, 0
  br i1 %.not.i31, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.t unwind label %bb.g       ; 0 uses

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ce = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %11, i8 noundef signext 10)
          to label %bb.t unwind label %bb.g       ; 0 uses

bb.t:                                             ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !99)
  call void @llvm.experimental.noalias.scope.decl(metadata !102)
  %i.cf = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 8 uses
  store ptr %i.cf, ptr %13, align 8, !tbaa !76, !alias.scope !105
  %i.cg = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 6 uses
  store i64 0, ptr %i.cg, align 8, !tbaa !74, !alias.scope !105
  store i8 0, ptr %i.cf, align 8, !tbaa !62, !alias.scope !105
  %14 = getelementptr inbounds nuw i8, ptr %11, i64 48
  %15 = load ptr, ptr %14, align 8, !tbaa !106, !noalias !105 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %15, null
  %i.ch = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.ci = load ptr, ptr %i.ch, align 8, !noalias !105 ; 2 uses
  %16 = icmp ugt ptr %15, %i.ci
  %.08.i.i.i = select i1 %16, ptr %15, ptr %i.ci  ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cj = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !108, !noalias !105 ; 2 uses
  %i.cl = ptrtoint ptr %.08.i.i.i to i64
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef 0, i64 noundef 0, ptr noundef %i.ck, i64 noundef %i.cn)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.v ; 0 uses

bb.v:                                             ; preds = %bb.w, %bb.u
  %i.cp = landingpad { ptr, i32 }
          cleanup
  %i.cq = load ptr, ptr %13, align 8, !tbaa !75, !alias.scope !105 ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.cf
  br i1 %i.cr, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.v
  call void @_ZdlPv(ptr noundef %i.cq) #30
  br label %.body

bb.w:                                             ; preds = %bb.t
  %i.cs = getelementptr inbounds nuw i8, ptr %11, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.cs)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.v

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.w, %bb.u
  %i.ct = load ptr, ptr %i.p, align 8, !tbaa !75  ; 6 uses
  %i.cu = icmp eq ptr %i.ct, %i.q
  %i.cv = load ptr, ptr %13, align 8, !tbaa !75   ; 6 uses
  %i.cw = icmp eq ptr %i.cv, %i.cf                ; 2 uses
  br i1 %i.cu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i37: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.cw, label %bb.x, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.cw, label %bb.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i37
  %i.cx = load i64, ptr %i.cg, align 8, !tbaa !74 ; 3 uses
  %i.cy = icmp ult i64 %i.cx, 16
  call void @llvm.assume(i1 %i.cy)
  %.not21.i = icmp eq ptr %13, %i.p
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.y, !prof !58

bb.y:                                             ; preds = %bb.x
  switch i64 %i.cx, label %bb.aa [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y
  %i.cz = load i8, ptr %i.cv, align 1, !tbaa !62
  store i8 %i.cz, ptr %i.ct, align 1, !tbaa !62
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.aa:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ct, ptr align 1 %i.cv, i64 %i.cx, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.aa, %bb.z, %bb.y
  %i.da = load i64, ptr %i.cg, align 8, !tbaa !74 ; 2 uses
  store i64 %i.da, ptr %i.r, align 8, !tbaa !74
  %i.db = load ptr, ptr %i.p, align 8, !tbaa !75
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.da
  store i8 0, ptr %i.dc, align 1, !tbaa !62
  %.pre.i = load ptr, ptr %13, align 8, !tbaa !75
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i37
  store ptr %i.cv, ptr %i.p, align 8, !tbaa !75
  %i.dd = load <2 x i64>, ptr %i.cg, align 8, !tbaa !62
  store <2 x i64> %i.dd, ptr %i.r, align 8, !tbaa !62
  br label %bb.ac

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.de = load i64, ptr %i.q, align 8, !tbaa !62
  store ptr %i.cv, ptr %i.p, align 8, !tbaa !75
  %i.df = load <2 x i64>, ptr %i.cg, align 8, !tbaa !62
  store <2 x i64> %i.df, ptr %i.r, align 8, !tbaa !62
  %.not.i36 = icmp eq ptr %i.ct, null
  br i1 %.not.i36, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ct, ptr %13, align 8, !tbaa !75
  store i64 %i.de, ptr %i.cf, align 8, !tbaa !62
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.cf, ptr %13, align 8, !tbaa !75
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.ab, %bb.ac
  %i.dg = phi ptr [ %i.ct, %bb.ab ], [ %i.cf, %bb.ac ], [ %i.cv, %bb.x ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.cg, align 8, !tbaa !74
  store i8 0, ptr %i.dg, align 1, !tbaa !62
  %i.dh = load ptr, ptr %13, align 8, !tbaa !75   ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.cf
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  call void @_ZdlPv(ptr noundef %i.dh) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  %i.dj = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.dj, ptr %11, align 8, !tbaa !63
  %i.dk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.dl = getelementptr i8, ptr %i.dj, i64 -24
  %i.dm = load i64, ptr %i.dl, align 8
  %i.dn = getelementptr inbounds i8, ptr %11, i64 %i.dm
  store ptr %i.dk, ptr %i.dn, align 8, !tbaa !63
  %i.do = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.do, align 8, !tbaa !63
  %i.dp = getelementptr inbounds nuw i8, ptr %11, i64 80
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !75 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %11, i64 96
  %i.ds = icmp eq ptr %i.dq, %i.dr
  br i1 %i.ds, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  call void @_ZdlPv(ptr noundef %i.dq) #30
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.do, align 8, !tbaa !63
  %i.dt = getelementptr inbounds nuw i8, ptr %11, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dt) #28
  %i.du = getelementptr inbounds nuw i8, ptr %11, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.du) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  ret void

bb.ad:                                            ; preds = %bb.p
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

bb.ae:                                            ; preds = %bb.q
  %i.dw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dx = load ptr, ptr %12, align 8, !tbaa !75   ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.dz = icmp eq ptr %i.dx, %i.dy
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %bb.ae
  call void @_ZdlPv(ptr noundef %i.dx) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.dv, %bb.ad ], [ %i.dw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41 ], [ %i.dw, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %bb.af

.body:                                            ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %bb.af

bb.af:                                            ; preds = %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, %bb.g
  %.pn14 = phi { ptr, i32 } [ %i.cp, %.body ], [ %i.ao, %bb.g ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %11) #28
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.f
  %.pn14.pn = phi { ptr, i32 } [ %.pn14, %bb.af ], [ %i.an, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  %i.ea = load ptr, ptr %i.u, align 8, !tbaa !75  ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.v
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %bb.ag
  call void @_ZdlPv(ptr noundef %i.ea) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44
  %i.ec = load ptr, ptr %i.p, align 8, !tbaa !75  ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.q
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46
  call void @_ZdlPv(ptr noundef %i.ec) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
  %i.ee = load ptr, ptr %0, align 8, !tbaa !75    ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.d
  br i1 %i.ef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49
  call void @_ZdlPv(ptr noundef %i.ee) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  resume { ptr, i32 } %.pn14.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb8CSVError13RemoveNewLineERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
end_hunk_0
begin_hunk_1_@_ZN6duckdb8CSVError9CastErrorERKNS_16CSVReaderOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS9_mSC_NS_16LinesPerBoundaryEmNS_12optional_idxENS_13LogicalTypeIdERKNS_6StringE:bb.a
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !65
  %.not.i55 = icmp eq i64 %i.by, 0
  br i1 %.not.i55, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit54
  %i.bz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull %i.g, i64 noundef 1)
          to label %bb.p unwind label %bb.aa      ; 0 uses

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit54
  %i.ca = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %12, i8 noundef signext 10)
          to label %bb.p unwind label %bb.aa      ; 0 uses

bb.p:                                             ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.cb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull @.str.24, i64 noundef 91)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61 unwind label %bb.aa ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61: ; preds = %bb.p
  %i.cc = load ptr, ptr %2, align 8, !tbaa !75
  %i.cd = load i64, ptr %i.m, align 8, !tbaa !74
  %i.ce = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef %i.cc, i64 noundef %i.cd)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit63 unwind label %bb.aa ; 5 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit63: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61
  %i.cf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr noundef nonnull @.str.25, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit65 unwind label %bb.aa ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit65: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 10, ptr %i.f, align 1, !tbaa !62
  %i.cg = load ptr, ptr %i.ce, align 8, !tbaa !63
  %i.ch = getelementptr i8, ptr %i.cg, i64 -24
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = getelementptr inbounds i8, ptr %i.ce, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !65
  %.not.i66 = icmp eq i64 %i.cl, 0
  br i1 %.not.i66, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit65
  %i.cm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr noundef nonnull %i.f, i64 noundef 1)
          to label %bb.s unwind label %bb.aa      ; 0 uses

bb.r:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit65
  %i.cn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, i8 noundef signext 10)
          to label %bb.s unwind label %bb.aa      ; 0 uses

bb.s:                                             ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.co = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull @.str.26, i64 noundef 110)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72 unwind label %bb.aa ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72: ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 10, ptr %i.e, align 1, !tbaa !62
  %i.cp = load ptr, ptr %12, align 8, !tbaa !63
  %i.cq = getelementptr i8, ptr %i.cp, i64 -24
  %i.cr = load i64, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds i8, ptr %12, i64 %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !65
  %.not.i73 = icmp eq i64 %i.cu, 0
  br i1 %.not.i73, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72
  %i.cv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull %i.e, i64 noundef 1)
          to label %bb.v unwind label %bb.aa      ; 0 uses

bb.u:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72
  %i.cw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %12, i8 noundef signext 10)
          to label %bb.v unwind label %bb.aa      ; 0 uses

bb.v:                                             ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.cx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull @.str.27, i64 noundef 76)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79 unwind label %bb.aa ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79: ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 10, ptr %i.d, align 1, !tbaa !62
  %i.cy = load ptr, ptr %12, align 8, !tbaa !63
  %i.cz = getelementptr i8, ptr %i.cy, i64 -24
  %i.da = load i64, ptr %i.cz, align 8
  %i.db = getelementptr inbounds i8, ptr %12, i64 %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !65
  %.not.i80 = icmp eq i64 %i.dd, 0
  br i1 %.not.i80, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79
  %i.de = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull %i.d, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit84 unwind label %bb.aa ; 0 uses

bb.x:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79
  %i.df = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %12, i8 noundef signext 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit84 unwind label %bb.aa ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit84: ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.ag

bb.y:                                             ; preds = %bb.c, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.a
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.z:                                             ; preds = %bb.d
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.aa:                                            ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit63, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %_ZNK6duckdb16CSVReaderOptions18WasTypeManuallySetEm.exit.thread, %bb.j, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit33, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31, %bb.e
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ab:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

bb.ac:                                            ; preds = %bb.h, %bb.g, %bb.f
  %i.dk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dl = load ptr, ptr %13, align 8, !tbaa !75   ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %bb.ac
  call void @_ZdlPv(ptr noundef %i.dl) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85, %bb.ab
  %.pn = phi { ptr, i32 } [ %i.dj, %bb.ab ], [ %i.dk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85 ], [ %i.dk, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %.body

bb.ad:                                            ; preds = %_ZNK6duckdb16CSVReaderOptions18WasTypeManuallySetEm.exit
  %i.do = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull @.str.28, i64 noundef 124)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit89 unwind label %bb.aa ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit89: ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 10, ptr %i.c, align 1, !tbaa !62
  %i.dp = load ptr, ptr %12, align 8, !tbaa !63
  %i.dq = getelementptr i8, ptr %i.dp, i64 -24
  %i.dr = load i64, ptr %i.dq, align 8
  %i.ds = getelementptr inbounds i8, ptr %12, i64 %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !65
  %.not.i90 = icmp eq i64 %i.du, 0
  br i1 %.not.i90, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit89
  %i.dv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit94 unwind label %bb.aa ; 0 uses

bb.af:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit89
  %i.dw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %12, i8 noundef signext 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit94 unwind label %bb.aa ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit94: ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.ag

bb.ag:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit94, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit84
  %i.dx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull @.str.29, i64 noundef 78)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit96 unwind label %bb.aa ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit96: ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 10, ptr %i.b, align 1, !tbaa !62
  %i.dy = load ptr, ptr %12, align 8, !tbaa !63
  %i.dz = getelementptr i8, ptr %i.dy, i64 -24
  %i.ea = load i64, ptr %i.dz, align 8
  %i.eb = getelementptr inbounds i8, ptr %12, i64 %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !65
  %.not.i97 = icmp eq i64 %i.ed, 0
  br i1 %.not.i97, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit96
  %i.ee = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %bb.aj unwind label %bb.aa     ; 0 uses

bb.ai:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit96
  %i.ef = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %12, i8 noundef signext 10)
          to label %bb.aj unwind label %bb.aa     ; 0 uses

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !245)
  call void @llvm.experimental.noalias.scope.decl(metadata !248)
  %i.eg = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 5 uses
  store ptr %i.eg, ptr %14, align 8, !tbaa !76, !alias.scope !251
  %i.eh = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 0, ptr %i.eh, align 8, !tbaa !74, !alias.scope !251
  store i8 0, ptr %i.eg, align 8, !tbaa !62, !alias.scope !251
  %17 = getelementptr inbounds nuw i8, ptr %11, i64 48
  %18 = load ptr, ptr %17, align 8, !tbaa !106, !noalias !251 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %18, null
  %i.ei = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.ej = load ptr, ptr %i.ei, align 8, !noalias !251 ; 2 uses
  %19 = icmp ugt ptr %18, %i.ej
  %.08.i.i.i = select i1 %19, ptr %18, ptr %i.ej  ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ek = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !108, !noalias !251 ; 2 uses
  %i.em = ptrtoint ptr %.08.i.i.i to i64
  %i.en = ptrtoint ptr %i.el to i64
  %i.eo = sub i64 %i.em, %i.en
  %i.ep = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, i64 noundef 0, i64 noundef 0, ptr noundef %i.el, i64 noundef %i.eo)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.al ; 0 uses

bb.al:                                            ; preds = %bb.am, %bb.ak
  %i.eq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.er = load ptr, ptr %14, align 8, !tbaa !75, !alias.scope !251 ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.eg
  br i1 %i.es, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.al
  call void @_ZdlPv(ptr noundef %i.er) #30
  br label %.body

bb.am:                                            ; preds = %bb.aj
  %i.et = getelementptr inbounds nuw i8, ptr %11, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %i.et)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.al

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.am, %bb.ak
  %i.eu = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 5 uses
  store ptr %i.eu, ptr %15, align 8, !tbaa !76
  %i.ev = load ptr, ptr %5, align 8, !tbaa !75    ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !74 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.ex, ptr %i.a, align 8, !tbaa !35
  %i.ey = icmp ugt i64 %i.ex, 15
  br i1 %i.ey, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ez = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc102 unwind label %bb.au ; 2 uses

.noexc102:                                        ; preds = %.noexc.i
  store ptr %i.ez, ptr %15, align 8, !tbaa !75
  %i.fa = load i64, ptr %i.a, align 8, !tbaa !35
  store i64 %i.fa, ptr %i.eu, align 8, !tbaa !62
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc102, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.fb = phi ptr [ %i.ez, %.noexc102 ], [ %i.eu, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit ] ; 2 uses
  switch i64 %i.ex, label %bb.ao [
    i64 1, label %bb.an
    i64 0, label %bb.ap
  ]

bb.an:                                            ; preds = %._crit_edge.i.i
  %i.fc = load i8, ptr %i.ev, align 1, !tbaa !62
  store i8 %i.fc, ptr %i.fb, align 1, !tbaa !62
  br label %bb.ap

bb.ao:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fb, ptr align 1 %i.ev, i64 %i.ex, i1 false)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %._crit_edge.i.i
  %i.fd = load i64, ptr %i.a, align 8, !tbaa !35  ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.fd, ptr %i.fe, align 8, !tbaa !74
  %i.ff = load ptr, ptr %15, align 8, !tbaa !75
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fd
  store i8 0, ptr %i.fg, align 1, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !252)
  call void @llvm.experimental.noalias.scope.decl(metadata !255)
  %i.fh = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 5 uses
  store ptr %i.fh, ptr %16, align 8, !tbaa !76, !alias.scope !258
  %i.fi = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 0, ptr %i.fi, align 8, !tbaa !74, !alias.scope !258
  store i8 0, ptr %i.fh, align 8, !tbaa !62, !alias.scope !258
  %20 = getelementptr inbounds nuw i8, ptr %12, i64 48
  %21 = load ptr, ptr %20, align 8, !tbaa !106, !noalias !258 ; 3 uses
  %.not.i.not.i.i103 = icmp eq ptr %21, null
  %i.fj = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.fk = load ptr, ptr %i.fj, align 8, !noalias !258 ; 2 uses
  %22 = icmp ugt ptr %21, %i.fk
  %.08.i.i.i104 = select i1 %22, ptr %21, ptr %i.fk ; 2 uses
  %.not5.i.i105 = icmp eq ptr %.08.i.i.i104, null
  %.not.i.i106 = select i1 %.not.i.not.i.i103, i1 true, i1 %.not5.i.i105
  br i1 %.not.i.i106, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fl = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !108, !noalias !258 ; 2 uses
  %i.fn = ptrtoint ptr %.08.i.i.i104 to i64
  %i.fo = ptrtoint ptr %i.fm to i64
  %i.fp = sub i64 %i.fn, %i.fo
  %i.fq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %16, i64 noundef 0, i64 noundef 0, ptr noundef %i.fm, i64 noundef %i.fp)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit112 unwind label %bb.ar ; 0 uses

bb.ar:                                            ; preds = %bb.as, %bb.aq
  %i.fr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fs = load ptr, ptr %16, align 8, !tbaa !75, !alias.scope !258 ; 2 uses
  %i.ft = icmp eq ptr %i.fs, %i.fh
  br i1 %i.ft, label %.body110, label %.body110.sink.split

bb.as:                                            ; preds = %bb.ap
  %i.fu = getelementptr inbounds nuw i8, ptr %12, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %i.fu)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit112 unwind label %bb.ar

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit112: ; preds = %bb.as, %bb.aq
  invoke void @_ZN6duckdb8CSVErrorC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12CSVErrorTypeEmS6_NS_16LinesPerBoundaryEmNS_12optional_idxERKNS_16CSVReaderOptionsERKS6_RKNS_6StringE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull %14, i8 noundef zeroext 0, i64 noundef %4, ptr noundef nonnull %15, ptr noundef nonnull byval(%"class.duckdb::LinesPerBoundary") align 8 %6, i64 noundef %7, i64 %8, ptr noundef nonnull align 8 dereferenceable(1033) %1, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.at unwind label %bb.av

bb.at:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit112
  %i.fv = load ptr, ptr %16, align 8, !tbaa !75   ; 2 uses
  %i.fw = icmp eq ptr %i.fv, %i.fh
  br i1 %i.fw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113: ; preds = %bb.at
  call void @_ZdlPv(ptr noundef %i.fv) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  %i.fx = load ptr, ptr %15, align 8, !tbaa !75   ; 2 uses
  %i.fy = icmp eq ptr %i.fx, %i.eu
  br i1 %i.fy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115
  call void @_ZdlPv(ptr noundef %i.fx) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116
  %i.fz = load ptr, ptr %14, align 8, !tbaa !75   ; 2 uses
  %i.ga = icmp eq ptr %i.fz, %i.eg
  br i1 %i.ga, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118
  call void @_ZdlPv(ptr noundef %i.fz) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119
  %i.gb = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 3 uses
  store ptr %i.gb, ptr %12, align 8, !tbaa !63
  %i.gc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.gd = getelementptr i8, ptr %i.gb, i64 -24    ; 2 uses
  %i.ge = load i64, ptr %i.gd, align 8
  %i.gf = getelementptr inbounds i8, ptr %12, i64 %i.ge
  store ptr %i.gc, ptr %i.gf, align 8, !tbaa !63
  %i.gg = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.gg, align 8, !tbaa !63
  %i.gh = getelementptr inbounds nuw i8, ptr %12, i64 80
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !75 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %12, i64 96
  %i.gk = icmp eq ptr %i.gi, %i.gj
  br i1 %i.gk, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121
  call void @_ZdlPv(ptr noundef %i.gi) #30
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.gg, align 8, !tbaa !63
  %i.gl = getelementptr inbounds nuw i8, ptr %12, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.gl) #28
  %i.gm = getelementptr inbounds nuw i8, ptr %12, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.gm) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  store ptr %i.gb, ptr %11, align 8, !tbaa !63
  %i.gn = load i64, ptr %i.gd, align 8
  %i.go = getelementptr inbounds i8, ptr %11, i64 %i.gn
  store ptr %i.gc, ptr %i.go, align 8, !tbaa !63
  %i.gp = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.gp, align 8, !tbaa !63
  %i.gq = getelementptr inbounds nuw i8, ptr %11, i64 80
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !75 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %11, i64 96
  %i.gt = icmp eq ptr %i.gr, %i.gs
  br i1 %i.gt, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit124, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i122

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i122: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  call void @_ZdlPv(ptr noundef %i.gr) #30
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit124

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit124: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i122
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.gp, align 8, !tbaa !63
  %i.gu = getelementptr inbounds nuw i8, ptr %11, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.gu) #28
  %i.gv = getelementptr inbounds nuw i8, ptr %11, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.gv) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  ret void

bb.au:                                            ; preds = %.noexc.i
  %i.gw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130

bb.av:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit112
  %i.gx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gy = load ptr, ptr %16, align 8, !tbaa !75   ; 2 uses
  %i.gz = icmp eq ptr %i.gy, %i.fh
  br i1 %i.gz, label %.body110, label %.body110.sink.split

.body110.sink.split:                              ; preds = %bb.av, %bb.ar
  %.sink = phi ptr [ %i.fs, %bb.ar ], [ %i.gy, %bb.av ]
  %.pn21.ph = phi { ptr, i32 } [ %i.fr, %bb.ar ], [ %i.gx, %bb.av ]
  call void @_ZdlPv(ptr noundef %.sink) #30
  br label %.body110

.body110:                                         ; preds = %.body110.sink.split, %bb.av, %bb.ar
  %.pn21 = phi { ptr, i32 } [ %i.fr, %bb.ar ], [ %i.gx, %bb.av ], [ %.pn21.ph, %.body110.sink.split ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  %i.ha = load ptr, ptr %15, align 8, !tbaa !75   ; 2 uses
  %i.hb = icmp eq ptr %i.ha, %i.eu
  br i1 %i.hb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128: ; preds = %.body110
  call void @_ZdlPv(ptr noundef %i.ha) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130: ; preds = %.body110, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128, %bb.au
  %.pn21.pn = phi { ptr, i32 } [ %i.gw, %bb.au ], [ %.pn21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128 ], [ %.pn21, %.body110 ] ; 2 uses
  %i.hc = load ptr, ptr %14, align 8, !tbaa !75   ; 2 uses
  %i.hd = icmp eq ptr %i.hc, %i.eg
  br i1 %i.hd, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130
  call void @_ZdlPv(ptr noundef %i.hc) #30
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130, %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87
  %.pn21.pn.pn = phi { ptr, i32 } [ %.pn21.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87 ], [ %i.di, %bb.aa ], [ %i.eq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.eq, %bb.al ], [ %.pn21.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %12) #28
  br label %bb.aw

bb.aw:                                            ; preds = %.body, %bb.z
  %.pn21.pn.pn.pn = phi { ptr, i32 } [ %.pn21.pn.pn, %.body ], [ %i.dh, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.y
  %.pn21.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn21.pn.pn.pn, %bb.aw ], [ %i.dg, %bb.y ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  resume { ptr, i32 } %.pn21.pn.pn.pn.pn
}

declare void @_ZN6duckdb21LogicalTypeIdToStringB5cxx11ENS_13LogicalTypeIdE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6duckdb16CSVReaderOptions18WasTypeManuallySetEm(ptr noundef nonnull align 8 dereferenceable(1033) %0, i64 noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !243
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.e = load i32, ptr %i.d, align 8, !tbaa !244
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !243
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = shl nsw i64 %i.i, 3
  %i.k = zext i32 %i.e to i64
  %i.l = add nsw i64 %i.j, %i.k
  %.not = icmp ult i64 %1, %i.l
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = tail call noundef zeroext i1 @_ZNK6duckdb6vectorIbLb1ESaIbEE3getILb1EEEbm(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 noundef %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.m, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb8CSVError13LineSizeErrorERKNS_16CSVReaderOptionsENS_16LinesPerBoundaryERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmRKNS_6StringE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::CSVError") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1033) %1, i64 %2, i64 %3, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4, i64 noundef %5, ptr noundef nonnull align 8 dereferenceable(16) %6) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 20 uses
  %8 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 18 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.duckdb::LinesPerBoundary", align 8 ; 3 uses
  %12 = alloca %"class.duckdb::optional_idx", align 8 ; 2 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %7)
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull @.str.30, i64 noundef 21)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.q ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 496
  %i.e = load i64, ptr %i.d, align 8, !tbaa !35
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %i.e)
          to label %_ZNSolsEm.exit unwind label %bb.q

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.31, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21 unwind label %bb.q ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21: ; preds = %_ZNSolsEm.exit
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull @.str.32, i64 noundef 12)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit22 unwind label %bb.q ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit22: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !74
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %i.j)
          to label %_ZNSolsEm.exit23 unwind label %bb.q ; 5 uses

_ZNSolsEm.exit23:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit22
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.33, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit24 unwind label %bb.q ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit24: ; preds = %_ZNSolsEm.exit23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 10, ptr %i.b, align 1, !tbaa !62
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !63
  %i.n = getelementptr i8, ptr %i.m, i64 -24
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds i8, ptr %i.k, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !65
  %.not.i = icmp eq i64 %i.r, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit24
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %bb.d unwind label %bb.q       ; 0 uses

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit24
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i8 noundef signext 10)
          to label %bb.d unwind label %bb.q       ; 0 uses

bb.d:                                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %8)
          to label %bb.e unwind label %bb.r

bb.e:                                             ; preds = %bb.d
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull @.str.34, i64 noundef 71)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27 unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27: ; preds = %bb.e
  %i.v = load i64, ptr %i.i, align 8, !tbaa !74
  %i.w = add i64 %i.v, 2
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef %i.w)
          to label %_ZNSolsEm.exit29 unwind label %bb.s

_ZNSolsEm.exit29:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull @.str.17, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31 unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31: ; preds = %_ZNSolsEm.exit29
  call void @llvm.experimental.noalias.scope.decl(metadata !259)
  call void @llvm.experimental.noalias.scope.decl(metadata !262)
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  store ptr %i.z, ptr %9, align 8, !tbaa !76, !alias.scope !265
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.aa, align 8, !tbaa !74, !alias.scope !265
  store i8 0, ptr %i.z, align 8, !tbaa !62, !alias.scope !265
  %14 = getelementptr inbounds nuw i8, ptr %7, i64 48
  %15 = load ptr, ptr %14, align 8, !tbaa !106, !noalias !265 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %15, null
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !265 ; 2 uses
  %16 = icmp ugt ptr %15, %i.ac
  %.08.i.i.i = select i1 %16, ptr %15, ptr %i.ac  ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !108, !noalias !265 ; 2 uses
  %i.af = ptrtoint ptr %.08.i.i.i to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef 0, ptr noundef %i.ae, i64 noundef %i.ah)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ak = load ptr, ptr %9, align 8, !tbaa !75, !alias.scope !265 ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.z
  br i1 %i.al, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.ak) #30
  br label %.body

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.am)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.g

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.h, %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  store ptr %i.an, ptr %10, align 8, !tbaa !76
  %i.ao = load ptr, ptr %4, align 8, !tbaa !75    ; 2 uses
  %i.ap = load i64, ptr %i.i, align 8, !tbaa !74  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.ap, ptr %i.a, align 8, !tbaa !35
  %i.aq = icmp ugt i64 %i.ap, 15
  br i1 %i.aq, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ar = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc32 unwind label %bb.t   ; 2 uses

.noexc32:                                         ; preds = %.noexc.i
  store ptr %i.ar, ptr %10, align 8, !tbaa !75
  %i.as = load i64, ptr %i.a, align 8, !tbaa !35
  store i64 %i.as, ptr %i.an, align 8, !tbaa !62
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc32, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.at = phi ptr [ %i.ar, %.noexc32 ], [ %i.an, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit ] ; 2 uses
  switch i64 %i.ap, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %bb.k
  ]

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.au = load i8, ptr %i.ao, align 1, !tbaa !62
  store i8 %i.au, ptr %i.at, align 1, !tbaa !62
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.at, ptr align 1 %i.ao, i64 %i.ap, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %._crit_edge.i.i
  %i.av = load i64, ptr %i.a, align 8, !tbaa !35  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !74
  %i.ax = load ptr, ptr %10, align 8, !tbaa !75
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.av
  store i8 0, ptr %i.ay, align 1, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  store i64 %2, ptr %11, align 8, !tbaa !35
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %3, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !35
  invoke void @_ZN6duckdb12optional_idxC2Em(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef %5)
          to label %bb.l unwind label %bb.u

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !266)
  call void @llvm.experimental.noalias.scope.decl(metadata !269)
  %i.az = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  store ptr %i.az, ptr %13, align 8, !tbaa !76, !alias.scope !272
  %i.ba = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 0, ptr %i.ba, align 8, !tbaa !74, !alias.scope !272
  store i8 0, ptr %i.az, align 8, !tbaa !62, !alias.scope !272
  %17 = getelementptr inbounds nuw i8, ptr %8, i64 48
  %18 = load ptr, ptr %17, align 8, !tbaa !106, !noalias !272 ; 3 uses
  %.not.i.not.i.i33 = icmp eq ptr %18, null
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !272 ; 2 uses
  %19 = icmp ugt ptr %18, %i.bc
  %.08.i.i.i34 = select i1 %19, ptr %18, ptr %i.bc ; 2 uses
  %.not5.i.i35 = icmp eq ptr %.08.i.i.i34, null
  %.not.i.i36 = select i1 %.not.i.not.i.i33, i1 true, i1 %.not5.i.i35
  br i1 %.not.i.i36, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !108, !noalias !272 ; 2 uses
  %i.bf = ptrtoint ptr %.08.i.i.i34 to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef 0, i64 noundef 0, ptr noundef %i.be, i64 noundef %i.bh)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit42 unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %bb.o, %bb.m
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bk = load ptr, ptr %13, align 8, !tbaa !75, !alias.scope !272 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.az
  br i1 %i.bl, label %.body40, label %.body40.sink.split

bb.o:                                             ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.bm)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit42 unwind label %bb.n

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit42: ; preds = %bb.o, %bb.m
  %i.bn = load i64, ptr %12, align 8
  invoke void @_ZN6duckdb8CSVErrorC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12CSVErrorTypeEmS6_NS_16LinesPerBoundaryEmNS_12optional_idxERKNS_16CSVReaderOptionsERKS6_RKNS_6StringE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull %9, i8 noundef zeroext 6, i64 noundef 0, ptr noundef nonnull %10, ptr noundef nonnull byval(%"class.duckdb::LinesPerBoundary") align 8 %11, i64 noundef %5, i64 %i.bn, ptr noundef nonnull align 8 dereferenceable(1033) %1, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.p unwind label %bb.v

bb.p:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit42
  %i.bo = load ptr, ptr %13, align 8, !tbaa !75   ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.az
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.p
  call void @_ZdlPv(ptr noundef %i.bo) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  %i.bq = load ptr, ptr %10, align 8, !tbaa !75   ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.an
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.bq) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43
  %i.bs = load ptr, ptr %9, align 8, !tbaa !75    ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.z
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45
  call void @_ZdlPv(ptr noundef %i.bs) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46
  %i.bu = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 3 uses
  store ptr %i.bu, ptr %8, align 8, !tbaa !63
  %i.bv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bu, i64 -24    ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = getelementptr inbounds i8, ptr %8, i64 %i.bx
  store ptr %i.bv, ptr %i.by, align 8, !tbaa !63
  %i.bz = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bz, align 8, !tbaa !63
  %i.ca = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !75 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 96
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48
  call void @_ZdlPv(ptr noundef %i.cb) #30
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bz, align 8, !tbaa !63
  %i.ce = getelementptr inbounds nuw i8, ptr %8, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ce) #28
  %i.cf = getelementptr inbounds nuw i8, ptr %8, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.cf) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  store ptr %i.bu, ptr %7, align 8, !tbaa !63
  %i.cg = load i64, ptr %i.bw, align 8
  %i.ch = getelementptr inbounds i8, ptr %7, i64 %i.cg
  store ptr %i.bv, ptr %i.ch, align 8, !tbaa !63
  %i.ci = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ci, align 8, !tbaa !63
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !75 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i49: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  call void @_ZdlPv(ptr noundef %i.ck) #30
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit51

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit51: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i49
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ci, align 8, !tbaa !63
  %i.cn = getelementptr inbounds nuw i8, ptr %7, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cn) #28
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.co) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  ret void

bb.q:                                             ; preds = %bb.c, %bb.b, %_ZNSolsEm.exit23, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit22, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21, %_ZNSolsEm.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.a
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.r:                                             ; preds = %bb.d
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.s:                                             ; preds = %_ZNSolsEm.exit29, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27, %bb.e
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.t:                                             ; preds = %.noexc.i
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

bb.u:                                             ; preds = %bb.k
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit42
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cv = load ptr, ptr %13, align 8, !tbaa !75   ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.az
  br i1 %i.cw, label %.body40, label %.body40.sink.split

.body40.sink.split:                               ; preds = %bb.v, %bb.n
  %.sink = phi ptr [ %i.bk, %bb.n ], [ %i.cv, %bb.v ]
  %.pn.ph = phi { ptr, i32 } [ %i.bj, %bb.n ], [ %i.cu, %bb.v ]
  call void @_ZdlPv(ptr noundef %.sink) #30
  br label %.body40

.body40:                                          ; preds = %.body40.sink.split, %bb.v, %bb.n
  %.pn = phi { ptr, i32 } [ %i.bj, %bb.n ], [ %i.cu, %bb.v ], [ %.pn.ph, %.body40.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %bb.w

bb.w:                                             ; preds = %.body40, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body40 ], [ %i.ct, %bb.u ] ; 2 uses
  %i.cx = load ptr, ptr %10, align 8, !tbaa !75   ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.an
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %bb.w
  call void @_ZdlPv(ptr noundef %i.cx) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55, %bb.t
  %.pn.pn.pn = phi { ptr, i32 } [ %i.cs, %bb.t ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55 ], [ %.pn.pn, %bb.w ] ; 2 uses
  %i.cz = load ptr, ptr %9, align 8, !tbaa !75    ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.z
  br i1 %i.da, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
  call void @_ZdlPv(ptr noundef %i.cz) #30
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58, %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58 ], [ %i.cr, %bb.s ], [ %i.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.aj, %bb.g ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %8) #28
  br label %bb.x

bb.x:                                             ; preds = %.body, %bb.r
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %.body ], [ %i.cq, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.q
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %bb.x ], [ %i.cp, %bb.q ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb12optional_idxC2Em(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.5", align 1  ; 5 uses
  store i64 %1, ptr %0, align 8, !tbaa !88
  %i.a = icmp eq i64 %1, -1
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.209, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !75     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn11 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #28
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn10 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn11, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn10

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb8CSVError12InvalidStateERKNS_16CSVReaderOptionsEmNS_16LinesPerBoundaryERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmNS_12optional_idxERKNS_6StringE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::CSVError") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1033) %1, i64 noundef %2, i64 %3, i64 %4, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %5, i64 noundef %6, i64 %7, ptr noundef nonnull align 8 dereferenceable(16) %8) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %9 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 17 uses
  %10 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 26 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.duckdb::LinesPerBoundary", align 8 ; 3 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %9)
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull @.str.35, i64 noundef 181)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %10)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 49
  %i.f = load i8, ptr %i.e, align 1, !tbaa !98, !range !38, !noundef !39
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull @.str.36, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 10, ptr %i.c, align 1, !tbaa !62
  %i.i = load ptr, ptr %10, align 8, !tbaa !63
  %i.j = getelementptr i8, ptr %i.i, i64 -24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %10, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !65
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %bb.f unwind label %bb.k       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %10, i8 noundef signext 10)
          to label %bb.f unwind label %bb.k       ; 0 uses

bb.f:                                             ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull @.str.37, i64 noundef 118)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit22 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit22: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 10, ptr %i.b, align 1, !tbaa !62
  %i.r = load ptr, ptr %10, align 8, !tbaa !63
  %i.s = getelementptr i8, ptr %i.r, i64 -24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds i8, ptr %10, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !65
  %.not.i23 = icmp eq i64 %i.w, 0
  br i1 %.not.i23, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit22
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit27 unwind label %bb.k ; 0 uses

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit22
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %10, i8 noundef signext 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit27 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit27: ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.l

bb.i:                                             ; preds = %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.k:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit27, %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !273)
  call void @llvm.experimental.noalias.scope.decl(metadata !276)
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  store ptr %i.ac, ptr %11, align 8, !tbaa !76, !alias.scope !279
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.ad, align 8, !tbaa !74, !alias.scope !279
  store i8 0, ptr %i.ac, align 8, !tbaa !62, !alias.scope !279
  %15 = getelementptr inbounds nuw i8, ptr %9, i64 48
  %16 = load ptr, ptr %15, align 8, !tbaa !106, !noalias !279 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %16, null
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !279 ; 2 uses
  %17 = icmp ugt ptr %16, %i.af
  %.08.i.i.i = select i1 %17, ptr %16, ptr %i.af  ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !108, !noalias !279 ; 2 uses
  %i.ai = ptrtoint ptr %.08.i.i.i to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef %i.ah, i64 noundef %i.ak)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %bb.o, %bb.m
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %11, align 8, !tbaa !75, !alias.scope !279 ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.ac
  br i1 %i.ao, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.n
  call void @_ZdlPv(ptr noundef %i.an) #30
  br label %.body

bb.o:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.ap)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.n

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.o, %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  store ptr %i.aq, ptr %12, align 8, !tbaa !76
  %i.ar = load ptr, ptr %5, align 8, !tbaa !75    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !74 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.at, ptr %i.a, align 8, !tbaa !35
  %i.au = icmp ugt i64 %i.at, 15
  br i1 %i.au, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.av = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc28 unwind label %bb.w   ; 2 uses

.noexc28:                                         ; preds = %.noexc.i
  store ptr %i.av, ptr %12, align 8, !tbaa !75
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !35
  store i64 %i.aw, ptr %i.aq, align 8, !tbaa !62
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc28, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ax = phi ptr [ %i.av, %.noexc28 ], [ %i.aq, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit ] ; 2 uses
  switch i64 %i.at, label %bb.q [
    i64 1, label %bb.p
    i64 0, label %bb.r
  ]

bb.p:                                             ; preds = %._crit_edge.i.i
  %i.ay = load i8, ptr %i.ar, align 1, !tbaa !62
  store i8 %i.ay, ptr %i.ax, align 1, !tbaa !62
  br label %bb.r

bb.q:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ax, ptr align 1 %i.ar, i64 %i.at, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %._crit_edge.i.i
  %i.az = load i64, ptr %i.a, align 8, !tbaa !35  ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !74
  %i.bb = load ptr, ptr %12, align 8, !tbaa !75
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.az
  store i8 0, ptr %i.bc, align 1, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  store i64 %3, ptr %13, align 8, !tbaa !35
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %4, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !280)
  call void @llvm.experimental.noalias.scope.decl(metadata !283)
  %i.bd = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 5 uses
  store ptr %i.bd, ptr %14, align 8, !tbaa !76, !alias.scope !286
  %i.be = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 0, ptr %i.be, align 8, !tbaa !74, !alias.scope !286
  store i8 0, ptr %i.bd, align 8, !tbaa !62, !alias.scope !286
  %18 = getelementptr inbounds nuw i8, ptr %10, i64 48
  %19 = load ptr, ptr %18, align 8, !tbaa !106, !noalias !286 ; 3 uses
  %.not.i.not.i.i29 = icmp eq ptr %19, null
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !286 ; 2 uses
  %20 = icmp ugt ptr %19, %i.bg
  %.08.i.i.i30 = select i1 %20, ptr %19, ptr %i.bg ; 2 uses
  %.not5.i.i31 = icmp eq ptr %.08.i.i.i30, null
  %.not.i.i32 = select i1 %.not.i.not.i.i29, i1 true, i1 %.not5.i.i31
  br i1 %.not.i.i32, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !108, !noalias !286 ; 2 uses
  %i.bj = ptrtoint ptr %.08.i.i.i30 to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, i64 noundef 0, i64 noundef 0, ptr noundef %i.bi, i64 noundef %i.bl)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit38 unwind label %bb.t ; 0 uses

bb.t:                                             ; preds = %bb.u, %bb.s
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bo = load ptr, ptr %14, align 8, !tbaa !75, !alias.scope !286 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.bd
  br i1 %i.bp, label %.body36, label %.body36.sink.split

bb.u:                                             ; preds = %bb.r
  %i.bq = getelementptr inbounds nuw i8, ptr %10, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %i.bq)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit38 unwind label %bb.t

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit38: ; preds = %bb.u, %bb.s
  invoke void @_ZN6duckdb8CSVErrorC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12CSVErrorTypeEmS6_NS_16LinesPerBoundaryEmNS_12optional_idxERKNS_16CSVReaderOptionsERKS6_RKNS_6StringE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull %11, i8 noundef zeroext 9, i64 noundef %2, ptr noundef nonnull %12, ptr noundef nonnull byval(%"class.duckdb::LinesPerBoundary") align 8 %13, i64 noundef %6, i64 %7, ptr noundef nonnull align 8 dereferenceable(1033) %1, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit38
  %i.br = load ptr, ptr %14, align 8, !tbaa !75   ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.bd
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.v
  call void @_ZdlPv(ptr noundef %i.br) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  %i.bt = load ptr, ptr %12, align 8, !tbaa !75   ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.aq
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.bt) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  %i.bv = load ptr, ptr %11, align 8, !tbaa !75   ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.ac
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  call void @_ZdlPv(ptr noundef %i.bv) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  %i.bx = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 3 uses
  store ptr %i.bx, ptr %10, align 8, !tbaa !63
  %i.by = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.bz = getelementptr i8, ptr %i.bx, i64 -24    ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds i8, ptr %10, i64 %i.ca
  store ptr %i.by, ptr %i.cb, align 8, !tbaa !63
  %i.cc = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.cc, align 8, !tbaa !63
  %i.cd = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !75 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  call void @_ZdlPv(ptr noundef %i.ce) #30
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.cc, align 8, !tbaa !63
  %i.ch = getelementptr inbounds nuw i8, ptr %10, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ch) #28
  %i.ci = getelementptr inbounds nuw i8, ptr %10, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ci) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  store ptr %i.bx, ptr %9, align 8, !tbaa !63
  %i.cj = load i64, ptr %i.bz, align 8
  %i.ck = getelementptr inbounds i8, ptr %9, i64 %i.cj
  store ptr %i.by, ptr %i.ck, align 8, !tbaa !63
  %i.cl = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.cl, align 8, !tbaa !63
  %i.cm = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !75 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %9, i64 96
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i45: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  call void @_ZdlPv(ptr noundef %i.cn) #30
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit47

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit47: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i45
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.cl, align 8, !tbaa !63
  %i.cq = getelementptr inbounds nuw i8, ptr %9, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cq) #28
  %i.cr = getelementptr inbounds nuw i8, ptr %9, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.cr) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  ret void

bb.w:                                             ; preds = %.noexc.i
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

bb.x:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit38
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cu = load ptr, ptr %14, align 8, !tbaa !75   ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.bd
  br i1 %i.cv, label %.body36, label %.body36.sink.split

.body36.sink.split:                               ; preds = %bb.x, %bb.t
  %.sink = phi ptr [ %i.bo, %bb.t ], [ %i.cu, %bb.x ]
  %.pn.ph = phi { ptr, i32 } [ %i.bn, %bb.t ], [ %i.ct, %bb.x ]
  call void @_ZdlPv(ptr noundef %.sink) #30
  br label %.body36

.body36:                                          ; preds = %.body36.sink.split, %bb.x, %bb.t
  %.pn = phi { ptr, i32 } [ %i.bn, %bb.t ], [ %i.ct, %bb.x ], [ %.pn.ph, %.body36.sink.split ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  %i.cw = load ptr, ptr %12, align 8, !tbaa !75   ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.aq
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %.body36
  call void @_ZdlPv(ptr noundef %i.cw) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %.body36, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51, %bb.w
  %.pn.pn = phi { ptr, i32 } [ %i.cs, %bb.w ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51 ], [ %.pn, %.body36 ] ; 2 uses
  %i.cy = load ptr, ptr %11, align 8, !tbaa !75   ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.ac
  br i1 %i.cz, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  call void @_ZdlPv(ptr noundef %i.cy) #30
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.k
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54 ], [ %i.ab, %bb.k ], [ %i.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.am, %bb.n ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %10) #28
  br label %bb.y

bb.y:                                             ; preds = %.body, %bb.j
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body ], [ %i.aa, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.i
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.y ], [ %i.z, %bb.i ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb8CSVError19HeaderSniffingErrorERKNS_16CSVReaderOptionsERKNS_6vectorINS_11HeaderValueELb1ESaIS5_EEEmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::CSVError") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(1033) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  %i.i = alloca i8, align 1                       ; 4 uses
  %i.j = alloca i8, align 1                       ; 4 uses
  %i.k = alloca i8, align 1                       ; 4 uses
  %i.l = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 67 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.duckdb::LinesPerBoundary", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5)
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.38, i64 noundef 26)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 632
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !75
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 640
  %i.q = load i64, ptr %i.p, align 8, !tbaa !74
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %i.o, i64 noundef %i.q)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.m ; 5 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull @.str.39, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit24 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit24: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i8 10, ptr %i.l, align 1, !tbaa !62
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !63
  %i.u = getelementptr i8, ptr %i.t, i64 -24
end_hunk_1
begin_hunk_2_@_ZN6duckdb8CSVError19HeaderSniffingErrorERKNS_16CSVReaderOptionsERKNS_6vectorINS_11HeaderValueELb1ESaIS5_EEEmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

bb.ab:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77
  %i.dw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %i.f, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit82 unwind label %bb.m ; 0 uses

bb.ac:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77
  %i.dx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %5, i8 noundef signext 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit82 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit82: ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.ag

bb.ad:                                            ; preds = %bb.z
  %i.dy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.47, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit84 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit84: ; preds = %bb.ad
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 65
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !98, !range !38, !noundef !39
  %i.eb = trunc nuw i8 %i.ea to i1
  %i.ec = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %5, i1 noundef zeroext %i.eb)
          to label %_ZNSolsEb.exit unwind label %bb.m ; 5 uses

_ZNSolsEb.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit84
  %i.ed = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ec, ptr noundef nonnull @.str.48, i64 noundef 25)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit87 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit87: ; preds = %_ZNSolsEb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 10, ptr %i.e, align 1, !tbaa !62
  %i.ee = load ptr, ptr %i.ec, align 8, !tbaa !63
  %i.ef = getelementptr i8, ptr %i.ee, i64 -24
  %i.eg = load i64, ptr %i.ef, align 8
  %i.eh = getelementptr inbounds i8, ptr %i.ec, i64 %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !65
  %.not.i88 = icmp eq i64 %i.ej, 0
  br i1 %.not.i88, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit87
  %i.ek = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ec, ptr noundef nonnull %i.e, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit92 unwind label %bb.m ; 0 uses

bb.af:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit87
  %i.el = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ec, i8 noundef signext 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit92 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit92: ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.ag

bb.ag:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit92, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit82
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.en = load i8, ptr %i.em, align 8, !tbaa !295, !range !38, !noundef !39
  %i.eo = trunc nuw i8 %i.en to i1
  br i1 %i.eo, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ep = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.49, i64 noundef 64)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit94 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit94: ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 10, ptr %i.d, align 1, !tbaa !62
  %i.eq = load ptr, ptr %5, align 8, !tbaa !63
  %i.er = getelementptr i8, ptr %i.eq, i64 -24
  %i.es = load i64, ptr %i.er, align 8
  %i.et = getelementptr inbounds i8, ptr %5, i64 %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !65
  %.not.i95 = icmp eq i64 %i.ev, 0
  br i1 %.not.i95, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit94
  %i.ew = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %i.d, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit99 unwind label %bb.m ; 0 uses

bb.aj:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit94
  %i.ex = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %5, i8 noundef signext 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit99 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit99: ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.an

bb.ak:                                            ; preds = %bb.ag
  %i.ey = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.50, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit101 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit101: ; preds = %bb.ak
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !35
  %i.fb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %i.fa)
          to label %_ZNSolsEm.exit103 unwind label %bb.m ; 5 uses

_ZNSolsEm.exit103:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit101
  %i.fc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fb, ptr noundef nonnull @.str.48, i64 noundef 25)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit105 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit105: ; preds = %_ZNSolsEm.exit103
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 10, ptr %i.c, align 1, !tbaa !62
  %i.fd = load ptr, ptr %i.fb, align 8, !tbaa !63
  %i.fe = getelementptr i8, ptr %i.fd, i64 -24
  %i.ff = load i64, ptr %i.fe, align 8
  %i.fg = getelementptr inbounds i8, ptr %i.fb, i64 %i.ff
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !65
  %.not.i106 = icmp eq i64 %i.fi, 0
  br i1 %.not.i106, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit105
  %i.fj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fb, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit110 unwind label %bb.m ; 0 uses

bb.am:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit105
  %i.fk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.fb, i8 noundef signext 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit110 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit110: ; preds = %bb.am, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.an

bb.an:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit110, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit99
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 145
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !98, !range !38, !noundef !39
  %i.fn = trunc nuw i8 %i.fm to i1
  br i1 %i.fn, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.51, i64 noundef 70)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit112 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit112: ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 10, ptr %i.b, align 1, !tbaa !62
  %i.fp = load ptr, ptr %5, align 8, !tbaa !63
  %i.fq = getelementptr i8, ptr %i.fp, i64 -24
  %i.fr = load i64, ptr %i.fq, align 8
  %i.fs = getelementptr inbounds i8, ptr %5, i64 %i.fr
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !65
  %.not.i113 = icmp eq i64 %i.fu, 0
  br i1 %.not.i113, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit112
  %i.fv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit117 unwind label %bb.m ; 0 uses

bb.aq:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit112
  %i.fw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %5, i8 noundef signext 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit117 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit117: ; preds = %bb.aq, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ar

bb.ar:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit117, %bb.an
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 712
  %i.fy = load i8, ptr %i.fx, align 8, !tbaa !130, !range !38, !noundef !39
  %i.fz = trunc nuw i8 %i.fy to i1
  br i1 %i.fz, label %bb.av, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ga = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.52, i64 noundef 81)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit119 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit119: ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 10, ptr %i.a, align 1, !tbaa !62
  %i.gb = load ptr, ptr %5, align 8, !tbaa !63
  %i.gc = getelementptr i8, ptr %i.gb, i64 -24
  %i.gd = load i64, ptr %i.gc, align 8
  %i.ge = getelementptr inbounds i8, ptr %5, i64 %i.gd
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !65
  %.not.i120 = icmp eq i64 %i.gg, 0
  br i1 %.not.i120, label %bb.au, label %bb.at

bb.at:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit119
  %i.gh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit124 unwind label %bb.m ; 0 uses

bb.au:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit119
  %i.gi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %5, i8 noundef signext 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit124 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit124: ; preds = %bb.au, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.av

bb.av:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit124, %bb.ar
  call void @llvm.experimental.noalias.scope.decl(metadata !296)
  call void @llvm.experimental.noalias.scope.decl(metadata !299)
  %i.gj = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr %i.gj, ptr %6, align 8, !tbaa !76, !alias.scope !302
  %i.gk = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.gk, align 8, !tbaa !74, !alias.scope !302
  store i8 0, ptr %i.gj, align 8, !tbaa !62, !alias.scope !302
  %8 = getelementptr inbounds nuw i8, ptr %5, i64 48
  %9 = load ptr, ptr %8, align 8, !tbaa !106, !noalias !302 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %9, null
  %i.gl = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.gm = load ptr, ptr %i.gl, align 8, !noalias !302 ; 2 uses
  %10 = icmp ugt ptr %9, %i.gm
  %.08.i.i.i = select i1 %10, ptr %9, ptr %i.gm   ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gn = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !108, !noalias !302 ; 2 uses
  %i.gp = ptrtoint ptr %.08.i.i.i to i64
  %i.gq = ptrtoint ptr %i.go to i64
  %i.gr = sub i64 %i.gp, %i.gq
  %i.gs = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef %i.go, i64 noundef %i.gr)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.ax ; 0 uses

bb.ax:                                            ; preds = %bb.ay, %bb.aw
  %i.gt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gu = load ptr, ptr %6, align 8, !tbaa !75, !alias.scope !302 ; 2 uses
  %i.gv = icmp eq ptr %i.gu, %i.gj
  br i1 %i.gv, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.ax
  call void @_ZdlPv(ptr noundef %i.gu) #30
  br label %.body

bb.ay:                                            ; preds = %bb.av
  %i.gw = getelementptr inbounds nuw i8, ptr %5, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.gw)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.ax

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.ay, %bb.aw
  invoke void @_ZN6duckdb16LinesPerBoundaryC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.az unwind label %bb.bb

bb.az:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.gx = load i64, ptr %7, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.gz = load i64, ptr %i.gy, align 8
  invoke void @_ZN6duckdb8CSVErrorC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12CSVErrorTypeENS_16LinesPerBoundaryE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull %6, i8 noundef zeroext 5, i64 %i.gx, i64 %i.gz)
          to label %bb.ba unwind label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.ha = load ptr, ptr %6, align 8, !tbaa !75    ; 2 uses
  %i.hb = icmp eq ptr %i.ha, %i.gj
  br i1 %i.hb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ba
  call void @_ZdlPv(ptr noundef %i.ha) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.hc = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.hc, ptr %5, align 8, !tbaa !63
  %i.hd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.he = getelementptr i8, ptr %i.hc, i64 -24
  %i.hf = load i64, ptr %i.he, align 8
  %i.hg = getelementptr inbounds i8, ptr %5, i64 %i.hf
  store ptr %i.hd, ptr %i.hg, align 8, !tbaa !63
  %i.hh = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.hh, align 8, !tbaa !63
  %i.hi = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !75 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.hl = icmp eq ptr %i.hj, %i.hk
  br i1 %i.hl, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.hj) #30
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.hh, align 8, !tbaa !63
  %i.hm = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.hm) #28
  %i.hn = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.hn) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret void

bb.bb:                                            ; preds = %bb.az, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ho = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hp = load ptr, ptr %6, align 8, !tbaa !75    ; 2 uses
  %i.hq = icmp eq ptr %i.hp, %i.gj
  br i1 %i.hq, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125: ; preds = %bb.bb
  call void @_ZdlPv(ptr noundef %i.hp) #30
  br label %.body

.body:                                            ; preds = %bb.bb, %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.m, %bb.p
  %.pn = phi { ptr, i32 } [ %i.bu, %bb.p ], [ %i.ho, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125 ], [ %i.bq, %bb.m ], [ %i.gt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.gt, %bb.ax ], [ %i.ho, %bb.bb ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(40) ptr @_ZNK6duckdb6vectorINS_11HeaderValueELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.5", align 1  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !287
  %i.e = load ptr, ptr %0, align 8, !tbaa !290    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 40                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !35
  store i64 %i.i, ptr %i.b, align 8, !tbaa !35
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZNK6duckdb6vectorINS_11HeaderValueELb1ESaIS1_EE3getILb1EEERKS1_m.exit, label %bb.b, !prof !80

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.225, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !75     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #28
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZNK6duckdb6vectorINS_11HeaderValueELb1ESaIS1_EE3getILb1EEERKS1_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [40 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb8CSVError13SniffingErrorERKNS_16CSVReaderOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmRNS_10SetColumnsEb(ptr dead_on_unwind noalias writable sret(%"class.duckdb::CSVError") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(1033) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4, i1 noundef zeroext %5) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  %i.i = alloca i8, align 1                       ; 4 uses
  %i.j = alloca i8, align 1                       ; 4 uses
  %i.k = alloca i8, align 1                       ; 4 uses
  %i.l = alloca i8, align 1                       ; 4 uses
  %i.m = alloca i8, align 1                       ; 4 uses
  %i.n = alloca i8, align 1                       ; 4 uses
  %i.o = alloca i8, align 1                       ; 4 uses
  %i.p = alloca i8, align 1                       ; 4 uses
  %i.q = alloca i8, align 1                       ; 4 uses
  %i.r = alloca i8, align 1                       ; 4 uses
  %i.s = alloca i8, align 1                       ; 4 uses
  %i.t = alloca i8, align 1                       ; 4 uses
  %i.u = alloca i8, align 1                       ; 4 uses
  %i.v = alloca i8, align 1                       ; 4 uses
  %i.w = alloca i8, align 1                       ; 4 uses
  %i.x = alloca i8, align 1                       ; 4 uses
end_hunk_2
begin_hunk_3_@_ZN6duckdb8CSVError13SniffingErrorERKNS_16CSVReaderOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmRNS_10SetColumnsEb:bb.a

bb.bp:                                            ; preds = %bb.bl
  %i.ip = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str.71, i64 noundef 21)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit174 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit174: ; preds = %bb.bp
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 45
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !62  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 %i.ir, ptr %i.f, align 1, !tbaa !62
  %i.is = load ptr, ptr %6, align 8, !tbaa !63
  %i.it = getelementptr i8, ptr %i.is, i64 -24
  %i.iu = load i64, ptr %i.it, align 8
  %i.iv = getelementptr inbounds i8, ptr %6, i64 %i.iu
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !65
  %.not.i175 = icmp eq i64 %i.ix, 0
  br i1 %.not.i175, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit174
  %i.iy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %i.f, i64 noundef 1)
          to label %bb.bs unwind label %bb.h

bb.br:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit174
  %i.iz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %6, i8 noundef signext %i.ir)
          to label %bb.bs unwind label %bb.h      ; 0 uses

bb.bs:                                            ; preds = %bb.bq, %bb.br
  %.0.i176 = phi ptr [ %i.iy, %bb.bq ], [ %6, %bb.br ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ja = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i176, ptr noundef nonnull @.str.48, i64 noundef 25)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit181 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit181: ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 10, ptr %i.e, align 1, !tbaa !62
  %i.jb = load ptr, ptr %.0.i176, align 8, !tbaa !63
  %i.jc = getelementptr i8, ptr %i.jb, i64 -24
  %i.jd = load i64, ptr %i.jc, align 8
  %i.je = getelementptr inbounds i8, ptr %.0.i176, i64 %i.jd
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !65
  %.not.i182 = icmp eq i64 %i.jg, 0
  br i1 %.not.i182, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit181
  %i.jh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i176, ptr noundef nonnull %i.e, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit186 unwind label %bb.h ; 0 uses

bb.bu:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit181
  %i.ji = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i176, i8 noundef signext 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit186 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit186: ; preds = %bb.bu, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.bv

bb.bv:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit186, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit172
  %i.jj = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.jk = load i8, ptr %i.jj, align 8, !tbaa !295, !range !38, !noundef !39
  %i.jl = trunc nuw i8 %i.jk to i1
  br i1 %i.jl, label %bb.bz, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.jm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str.49, i64 noundef 64)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit188 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit188: ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 10, ptr %i.d, align 1, !tbaa !62
  %i.jn = load ptr, ptr %6, align 8, !tbaa !63
  %i.jo = getelementptr i8, ptr %i.jn, i64 -24
  %i.jp = load i64, ptr %i.jo, align 8
  %i.jq = getelementptr inbounds i8, ptr %6, i64 %i.jp
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 16
  %i.js = load i64, ptr %i.jr, align 8, !tbaa !65
  %.not.i189 = icmp eq i64 %i.js, 0
  br i1 %.not.i189, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit188
  %i.jt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %i.d, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit193 unwind label %bb.h ; 0 uses

bb.by:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit188
  %i.ju = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %6, i8 noundef signext 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit193 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit193: ; preds = %bb.by, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.bz

bb.bz:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit193, %bb.bv
  %i.jv = getelementptr inbounds nuw i8, ptr %1, i64 145
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !98, !range !38, !noundef !39
  %i.jx = trunc nuw i8 %i.jw to i1
  br i1 %i.jx, label %bb.cd, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.jy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str.51, i64 noundef 70)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit195 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit195: ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 10, ptr %i.c, align 1, !tbaa !62
  %i.jz = load ptr, ptr %6, align 8, !tbaa !63
  %i.ka = getelementptr i8, ptr %i.jz, i64 -24
  %i.kb = load i64, ptr %i.ka, align 8
  %i.kc = getelementptr inbounds i8, ptr %6, i64 %i.kb
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 16
  %i.ke = load i64, ptr %i.kd, align 8, !tbaa !65
  %.not.i196 = icmp eq i64 %i.ke, 0
  br i1 %.not.i196, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit195
  %i.kf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit200 unwind label %bb.h ; 0 uses

bb.cc:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit195
  %i.kg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %6, i8 noundef signext 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit200 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit200: ; preds = %bb.cc, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.cd

bb.cd:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit200, %bb.bz
  %i.kh = getelementptr inbounds nuw i8, ptr %1, i64 712
  %i.ki = load i8, ptr %i.kh, align 8, !tbaa !130, !range !38, !noundef !39
  %i.kj = trunc nuw i8 %i.ki to i1
  br i1 %i.kj, label %bb.ch, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.kk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str.52, i64 noundef 81)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit202 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit202: ; preds = %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 10, ptr %i.b, align 1, !tbaa !62
  %i.kl = load ptr, ptr %6, align 8, !tbaa !63
  %i.km = getelementptr i8, ptr %i.kl, i64 -24
  %i.kn = load i64, ptr %i.km, align 8
  %i.ko = getelementptr inbounds i8, ptr %6, i64 %i.kn
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 16
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !65
  %.not.i203 = icmp eq i64 %i.kq, 0
  br i1 %.not.i203, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit202
  %i.kr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit207 unwind label %bb.h ; 0 uses

bb.cg:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit202
  %i.ks = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %6, i8 noundef signext 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit207 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit207: ; preds = %bb.cg, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ch

bb.ch:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit207, %bb.cd
  %i.kt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str.72, i64 noundef 97)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit209 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit209: ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 10, ptr %i.a, align 1, !tbaa !62
  %i.ku = load ptr, ptr %6, align 8, !tbaa !63
  %i.kv = getelementptr i8, ptr %i.ku, i64 -24
  %i.kw = load i64, ptr %i.kv, align 8
  %i.kx = getelementptr inbounds i8, ptr %6, i64 %i.kw
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 16
  %i.kz = load i64, ptr %i.ky, align 8, !tbaa !65
  %.not.i210 = icmp eq i64 %i.kz, 0
  br i1 %.not.i210, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit209
  %i.la = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.ck unwind label %bb.h      ; 0 uses

bb.cj:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit209
  %i.lb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %6, i8 noundef signext 10)
          to label %bb.ck unwind label %bb.h      ; 0 uses

bb.ck:                                            ; preds = %bb.ci, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.lc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str.73, i64 noundef 116)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit216 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit216: ; preds = %bb.ck
  %i.ld = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str.17, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit218 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit218: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit216
  call void @llvm.experimental.noalias.scope.decl(metadata !306)
  call void @llvm.experimental.noalias.scope.decl(metadata !309)
  %i.le = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  store ptr %i.le, ptr %8, align 8, !tbaa !76, !alias.scope !312
  %i.lf = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.lf, align 8, !tbaa !74, !alias.scope !312
  store i8 0, ptr %i.le, align 8, !tbaa !62, !alias.scope !312
  %10 = getelementptr inbounds nuw i8, ptr %6, i64 48
  %11 = load ptr, ptr %10, align 8, !tbaa !106, !noalias !312 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %11, null
  %i.lg = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.lh = load ptr, ptr %i.lg, align 8, !noalias !312 ; 2 uses
  %12 = icmp ugt ptr %11, %i.lh
  %.08.i.i.i = select i1 %12, ptr %11, ptr %i.lh  ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.cn, label %bb.cl

bb.cl:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit218
  %i.li = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !108, !noalias !312 ; 2 uses
  %i.lk = ptrtoint ptr %.08.i.i.i to i64
  %i.ll = ptrtoint ptr %i.lj to i64
  %i.lm = sub i64 %i.lk, %i.ll
  %i.ln = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef 0, ptr noundef %i.lj, i64 noundef %i.lm)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.cm ; 0 uses

bb.cm:                                            ; preds = %bb.cn, %bb.cl
  %i.lo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lp = load ptr, ptr %8, align 8, !tbaa !75, !alias.scope !312 ; 2 uses
  %i.lq = icmp eq ptr %i.lp, %i.le
  br i1 %i.lq, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.cm
  call void @_ZdlPv(ptr noundef %i.lp) #30
  br label %.body

bb.cn:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit218
  %i.lr = getelementptr inbounds nuw i8, ptr %6, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.lr)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.cm

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.cn, %bb.cl
  invoke void @_ZN6duckdb16LinesPerBoundaryC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.co unwind label %bb.cq

bb.co:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ls = load i64, ptr %9, align 8
  %i.lt = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.lu = load i64, ptr %i.lt, align 8
  invoke void @_ZN6duckdb8CSVErrorC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12CSVErrorTypeENS_16LinesPerBoundaryE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull %8, i8 noundef zeroext 5, i64 %i.ls, i64 %i.lu)
          to label %bb.cp unwind label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.lv = load ptr, ptr %8, align 8, !tbaa !75    ; 2 uses
  %i.lw = icmp eq ptr %i.lv, %i.le
  br i1 %i.lw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219: ; preds = %bb.cp
  call void @_ZdlPv(ptr noundef %i.lv) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221: ; preds = %bb.cp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219
  %i.lx = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.lx, ptr %6, align 8, !tbaa !63
  %i.ly = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.lz = getelementptr i8, ptr %i.lx, i64 -24
  %i.ma = load i64, ptr %i.lz, align 8
  %i.mb = getelementptr inbounds i8, ptr %6, i64 %i.ma
  store ptr %i.ly, ptr %i.mb, align 8, !tbaa !63
  %i.mc = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.mc, align 8, !tbaa !63
  %i.md = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !75 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.mg = icmp eq ptr %i.me, %i.mf
  br i1 %i.mg, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221
  call void @_ZdlPv(ptr noundef %i.me) #30
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.mc, align 8, !tbaa !63
  %i.mh = getelementptr inbounds nuw i8, ptr %6, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.mh) #28
  %i.mi = getelementptr inbounds nuw i8, ptr %6, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.mi) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  ret void

bb.cq:                                            ; preds = %bb.co, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.mj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mk = load ptr, ptr %8, align 8, !tbaa !75    ; 2 uses
  %i.ml = icmp eq ptr %i.mk, %i.le
  br i1 %i.ml, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222: ; preds = %bb.cq
  call void @_ZdlPv(ptr noundef %i.mk) #30
  br label %.body

.body:                                            ; preds = %bb.cq, %bb.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98
  %.pn24 = phi { ptr, i32 } [ %i.mj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98 ], [ %i.ax, %bb.h ], [ %i.lo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.lo, %bb.cm ], [ %i.mj, %bb.cq ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  resume { ptr, i32 } %.pn24
}

declare void @_ZNK6duckdb10SetColumns8ToStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #7

declare noundef i64 @_ZNK6duckdb10SetColumns4SizeEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb8CSVError15NullPaddingFailERKNS_16CSVReaderOptionsENS_16LinesPerBoundaryERKNS_6StringE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::CSVError") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1033) %1, i64 %2, i64 %3, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %4) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 22 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.74, i64 noundef 148)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 10, ptr %i.a, align 1, !tbaa !62
  %i.c = load ptr, ptr %5, align 8, !tbaa !63
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %5, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !65
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.d unwind label %bb.j       ; 0 uses

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %5, i8 noundef signext 10)
          to label %bb.d unwind label %bb.j       ; 0 uses

bb.d:                                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  invoke void @_ZNK6duckdb16CSVReaderOptions8ToStringB5cxx11ERKNS_6StringE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(1033) %1, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %6, align 8, !tbaa !75
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !74
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %i.k, i64 noundef %i.m)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.l ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.e
  %i.o = load ptr, ptr %6, align 8, !tbaa !75     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  call void @_ZdlPv(ptr noundef %i.o) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !313)
  call void @llvm.experimental.noalias.scope.decl(metadata !316)
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.r, ptr %7, align 8, !tbaa !76, !alias.scope !319
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.s, align 8, !tbaa !74, !alias.scope !319
  store i8 0, ptr %i.r, align 8, !tbaa !62, !alias.scope !319
  %8 = getelementptr inbounds nuw i8, ptr %5, i64 48
  %9 = load ptr, ptr %8, align 8, !tbaa !106, !noalias !319 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %9, null
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !noalias !319 ; 2 uses
  %10 = icmp ugt ptr %9, %i.u
  %.08.i.i.i = select i1 %10, ptr %9, ptr %i.u    ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !108, !noalias !319 ; 2 uses
  %i.x = ptrtoint ptr %.08.i.i.i to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef 0, ptr noundef %i.w, i64 noundef %i.z)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = load ptr, ptr %7, align 8, !tbaa !75, !alias.scope !319 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.r
  br i1 %i.ad, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.ac) #30
  br label %.body

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.ae)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.g

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.h, %bb.f
  invoke void @_ZN6duckdb8CSVErrorC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12CSVErrorTypeENS_16LinesPerBoundaryE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull %7, i8 noundef zeroext 7, i64 %2, i64 %3)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.af = load ptr, ptr %7, align 8, !tbaa !75    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.r
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.i
  call void @_ZdlPv(ptr noundef %i.af) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  %i.ah = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ah, ptr %5, align 8, !tbaa !63
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.aj = getelementptr i8, ptr %i.ah, i64 -24
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = getelementptr inbounds i8, ptr %5, i64 %i.ak
  store ptr %i.ai, ptr %i.al, align 8, !tbaa !63
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.am, align 8, !tbaa !63
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !75 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  call void @_ZdlPv(ptr noundef %i.ao) #30
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.am, align 8, !tbaa !63
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ar) #28
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.as) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret void

bb.j:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.d
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

bb.l:                                             ; preds = %bb.e
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aw = load ptr, ptr %6, align 8, !tbaa !75    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.l
  call void @_ZdlPv(ptr noundef %i.aw) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15, %bb.k
  %.pn = phi { ptr, i32 } [ %i.au, %bb.k ], [ %i.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15 ], [ %i.av, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %.body

bb.m:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ba = load ptr, ptr %7, align 8, !tbaa !75    ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.r
  br i1 %i.bb, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %bb.m
  call void @_ZdlPv(ptr noundef %i.ba) #30
  br label %.body

.body:                                            ; preds = %bb.m, %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18, %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %.pn8 = phi { ptr, i32 } [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17 ], [ %i.at, %bb.j ], [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ab, %bb.g ], [ %i.az, %bb.m ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  resume { ptr, i32 } %.pn8
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb8CSVError23UnterminatedQuotesErrorERKNS_16CSVReaderOptionsEmNS_16LinesPerBoundaryERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmNS_12optional_idxERKNS_6StringE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::CSVError") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1033) %1, i64 noundef %2, i64 %3, i64 %4, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %5, i64 noundef %6, i64 %7, ptr noundef nonnull align 8 dereferenceable(16) %8) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %9 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 21 uses
  %10 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 36 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.duckdb::LinesPerBoundary", align 8 ; 3 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %9)
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull @.str.75, i64 noundef 36)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 10, ptr %i.f, align 1, !tbaa !62
  %i.h = load ptr, ptr %9, align 8, !tbaa !63
  %i.i = getelementptr i8, ptr %i.h, i64 -24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds i8, ptr %9, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !65
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull %i.f, i64 noundef 1)
          to label %bb.d unwind label %bb.l       ; 0 uses

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %9, i8 noundef signext 10)
          to label %bb.d unwind label %bb.l       ; 0 uses

bb.d:                                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %10)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull @.str.36, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21 unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 10, ptr %i.e, align 1, !tbaa !62
  %i.q = load ptr, ptr %10, align 8, !tbaa !63
  %i.r = getelementptr i8, ptr %i.q, i64 -24
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr inbounds i8, ptr %10, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !65
  %.not.i22 = icmp eq i64 %i.v, 0
  br i1 %.not.i22, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull %i.e, i64 noundef 1)
          to label %bb.h unwind label %bb.n       ; 0 uses

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %10, i8 noundef signext 10)
          to label %bb.h unwind label %bb.n       ; 0 uses

bb.h:                                             ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 49
  %i.z = load i8, ptr %i.y, align 1, !tbaa !98, !range !38, !noundef !39
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull @.str.37, i64 noundef 118)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28 unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 10, ptr %i.d, align 1, !tbaa !62
  %i.ac = load ptr, ptr %10, align 8, !tbaa !63
  %i.ad = getelementptr i8, ptr %i.ac, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %10, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !65
  %.not.i29 = icmp eq i64 %i.ah, 0
  br i1 %.not.i29, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull %i.d, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit33 unwind label %bb.n ; 0 uses

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %10, i8 noundef signext 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit33 unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit33: ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.o

bb.l:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.m:                                             ; preds = %bb.d
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.n:                                             ; preds = %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.k, %bb.j, %bb.i, %bb.g, %bb.f, %bb.e
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit33, %bb.h
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull @.str.76, i64 noundef 60)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35 unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35: ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 10, ptr %i.c, align 1, !tbaa !62
  %i.ao = load ptr, ptr %10, align 8, !tbaa !63
  %i.ap = getelementptr i8, ptr %i.ao, i64 -24
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds i8, ptr %10, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !65
  %.not.i36 = icmp eq i64 %i.at, 0
  br i1 %.not.i36, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35
  %i.au = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %bb.r unwind label %bb.n       ; 0 uses

bb.q:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %10, i8 noundef signext 10)
          to label %bb.r unwind label %bb.n       ; 0 uses

bb.r:                                             ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.aw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull @.str.77, i64 noundef 61)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42 unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42: ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 10, ptr %i.b, align 1, !tbaa !62
  %i.ax = load ptr, ptr %10, align 8, !tbaa !63
  %i.ay = getelementptr i8, ptr %i.ax, i64 -24
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds i8, ptr %10, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !65
  %.not.i43 = icmp eq i64 %i.bc, 0
  br i1 %.not.i43, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42
  %i.bd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %bb.u unwind label %bb.n       ; 0 uses

bb.t:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42
  %i.be = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %10, i8 noundef signext 10)
          to label %bb.u unwind label %bb.n       ; 0 uses

bb.u:                                             ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !320)
  call void @llvm.experimental.noalias.scope.decl(metadata !323)
  %i.bf = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  store ptr %i.bf, ptr %11, align 8, !tbaa !76, !alias.scope !326
  %i.bg = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.bg, align 8, !tbaa !74, !alias.scope !326
  store i8 0, ptr %i.bf, align 8, !tbaa !62, !alias.scope !326
  %15 = getelementptr inbounds nuw i8, ptr %9, i64 48
  %16 = load ptr, ptr %15, align 8, !tbaa !106, !noalias !326 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %16, null
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !326 ; 2 uses
  %17 = icmp ugt ptr %16, %i.bi
  %.08.i.i.i = select i1 %17, ptr %16, ptr %i.bi  ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !108, !noalias !326 ; 2 uses
  %i.bl = ptrtoint ptr %.08.i.i.i to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef %i.bk, i64 noundef %i.bn)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.w ; 0 uses

bb.w:                                             ; preds = %bb.x, %bb.v
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = load ptr, ptr %11, align 8, !tbaa !75, !alias.scope !326 ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.bf
  br i1 %i.br, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.w
  call void @_ZdlPv(ptr noundef %i.bq) #30
  br label %.body

bb.x:                                             ; preds = %bb.u
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.bs)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.w

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.x, %bb.v
  %i.bt = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  store ptr %i.bt, ptr %12, align 8, !tbaa !76
  %i.bu = load ptr, ptr %5, align 8, !tbaa !75    ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !74 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.bw, ptr %i.a, align 8, !tbaa !35
  %i.bx = icmp ugt i64 %i.bw, 15
  br i1 %i.bx, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.by = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc48 unwind label %bb.af  ; 2 uses

.noexc48:                                         ; preds = %.noexc.i
  store ptr %i.by, ptr %12, align 8, !tbaa !75
  %i.bz = load i64, ptr %i.a, align 8, !tbaa !35
  store i64 %i.bz, ptr %i.bt, align 8, !tbaa !62
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc48, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ca = phi ptr [ %i.by, %.noexc48 ], [ %i.bt, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit ] ; 2 uses
  switch i64 %i.bw, label %bb.z [
    i64 1, label %bb.y
    i64 0, label %bb.aa
  ]

bb.y:                                             ; preds = %._crit_edge.i.i
  %i.cb = load i8, ptr %i.bu, align 1, !tbaa !62
  store i8 %i.cb, ptr %i.ca, align 1, !tbaa !62
  br label %bb.aa

bb.z:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ca, ptr align 1 %i.bu, i64 %i.bw, i1 false)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %._crit_edge.i.i
  %i.cc = load i64, ptr %i.a, align 8, !tbaa !35  ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.cc, ptr %i.cd, align 8, !tbaa !74
  %i.ce = load ptr, ptr %12, align 8, !tbaa !75
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cc
  store i8 0, ptr %i.cf, align 1, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  store i64 %3, ptr %13, align 8, !tbaa !35
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %4, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !327)
  call void @llvm.experimental.noalias.scope.decl(metadata !330)
  %i.cg = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 5 uses
  store ptr %i.cg, ptr %14, align 8, !tbaa !76, !alias.scope !333
  %i.ch = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 0, ptr %i.ch, align 8, !tbaa !74, !alias.scope !333
  store i8 0, ptr %i.cg, align 8, !tbaa !62, !alias.scope !333
  %18 = getelementptr inbounds nuw i8, ptr %10, i64 48
  %19 = load ptr, ptr %18, align 8, !tbaa !106, !noalias !333 ; 3 uses
  %.not.i.not.i.i49 = icmp eq ptr %19, null
  %i.ci = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.cj = load ptr, ptr %i.ci, align 8, !noalias !333 ; 2 uses
  %20 = icmp ugt ptr %19, %i.cj
  %.08.i.i.i50 = select i1 %20, ptr %19, ptr %i.cj ; 2 uses
  %.not5.i.i51 = icmp eq ptr %.08.i.i.i50, null
  %.not.i.i52 = select i1 %.not.i.not.i.i49, i1 true, i1 %.not5.i.i51
  br i1 %.not.i.i52, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ck = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !108, !noalias !333 ; 2 uses
  %i.cm = ptrtoint ptr %.08.i.i.i50 to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, i64 noundef 0, i64 noundef 0, ptr noundef %i.cl, i64 noundef %i.co)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit58 unwind label %bb.ac ; 0 uses

bb.ac:                                            ; preds = %bb.ad, %bb.ab
  %i.cq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cr = load ptr, ptr %14, align 8, !tbaa !75, !alias.scope !333 ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.cg
  br i1 %i.cs, label %.body56, label %.body56.sink.split

bb.ad:                                            ; preds = %bb.aa
  %i.ct = getelementptr inbounds nuw i8, ptr %10, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %i.ct)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit58 unwind label %bb.ac

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit58: ; preds = %bb.ad, %bb.ab
  invoke void @_ZN6duckdb8CSVErrorC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12CSVErrorTypeEmS6_NS_16LinesPerBoundaryEmNS_12optional_idxERKNS_16CSVReaderOptionsERKS6_RKNS_6StringE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull %11, i8 noundef zeroext 4, i64 noundef %2, ptr noundef nonnull %12, ptr noundef nonnull byval(%"class.duckdb::LinesPerBoundary") align 8 %13, i64 noundef %6, i64 %7, ptr noundef nonnull align 8 dereferenceable(1033) %1, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit58
  %i.cu = load ptr, ptr %14, align 8, !tbaa !75   ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.cg
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ae
  call void @_ZdlPv(ptr noundef %i.cu) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  %i.cw = load ptr, ptr %12, align 8, !tbaa !75   ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.bt
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.cw) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  %i.cy = load ptr, ptr %11, align 8, !tbaa !75   ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.bf
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  call void @_ZdlPv(ptr noundef %i.cy) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  %i.da = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 3 uses
  store ptr %i.da, ptr %10, align 8, !tbaa !63
  %i.db = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.dc = getelementptr i8, ptr %i.da, i64 -24    ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8
  %i.de = getelementptr inbounds i8, ptr %10, i64 %i.dd
  store ptr %i.db, ptr %i.de, align 8, !tbaa !63
  %i.df = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.df, align 8, !tbaa !63
  %i.dg = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !75 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64
  call void @_ZdlPv(ptr noundef %i.dh) #30
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.df, align 8, !tbaa !63
  %i.dk = getelementptr inbounds nuw i8, ptr %10, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dk) #28
  %i.dl = getelementptr inbounds nuw i8, ptr %10, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.dl) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  store ptr %i.da, ptr %9, align 8, !tbaa !63
  %i.dm = load i64, ptr %i.dc, align 8
  %i.dn = getelementptr inbounds i8, ptr %9, i64 %i.dm
  store ptr %i.db, ptr %i.dn, align 8, !tbaa !63
  %i.do = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.do, align 8, !tbaa !63
  %i.dp = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !75 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %9, i64 96
  %i.ds = icmp eq ptr %i.dq, %i.dr
  br i1 %i.ds, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i65: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  call void @_ZdlPv(ptr noundef %i.dq) #30
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit67

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit67: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i65
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.do, align 8, !tbaa !63
  %i.dt = getelementptr inbounds nuw i8, ptr %9, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dt) #28
  %i.du = getelementptr inbounds nuw i8, ptr %9, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.du) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  ret void

bb.af:                                            ; preds = %.noexc.i
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

bb.ag:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit58
  %i.dw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dx = load ptr, ptr %14, align 8, !tbaa !75   ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.cg
  br i1 %i.dy, label %.body56, label %.body56.sink.split

.body56.sink.split:                               ; preds = %bb.ag, %bb.ac
  %.sink = phi ptr [ %i.cr, %bb.ac ], [ %i.dx, %bb.ag ]
  %.pn.ph = phi { ptr, i32 } [ %i.cq, %bb.ac ], [ %i.dw, %bb.ag ]
  call void @_ZdlPv(ptr noundef %.sink) #30
  br label %.body56

.body56:                                          ; preds = %.body56.sink.split, %bb.ag, %bb.ac
  %.pn = phi { ptr, i32 } [ %i.cq, %bb.ac ], [ %i.dw, %bb.ag ], [ %.pn.ph, %.body56.sink.split ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  %i.dz = load ptr, ptr %12, align 8, !tbaa !75   ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.bt
  br i1 %i.ea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %.body56
  call void @_ZdlPv(ptr noundef %i.dz) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %.body56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71, %bb.af
  %.pn.pn = phi { ptr, i32 } [ %i.dv, %bb.af ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71 ], [ %.pn, %.body56 ] ; 2 uses
  %i.eb = load ptr, ptr %11, align 8, !tbaa !75   ; 2 uses
  %i.ec = icmp eq ptr %i.eb, %i.bf
  br i1 %i.ec, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  call void @_ZdlPv(ptr noundef %i.eb) #30
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.n
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74 ], [ %i.am, %bb.n ], [ %i.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.bp, %bb.w ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %10) #28
  br label %bb.ah

bb.ah:                                            ; preds = %.body, %bb.m
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body ], [ %i.al, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.l
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.ah ], [ %i.ak, %bb.l ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb8CSVError26IncorrectColumnAmountErrorERKNS_16CSVReaderOptionsEmNS_16LinesPerBoundaryERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmNS_12optional_idxERKNS_6StringE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::CSVError") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1033) %1, i64 noundef %2, i64 %3, i64 %4, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %5, i64 noundef %6, i64 %7, ptr noundef nonnull align 8 dereferenceable(16) %8) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %9 = alloca %"class.duckdb::optional_idx", align 8 ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 20 uses
  %11 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 40 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.duckdb::LinesPerBoundary", align 8 ; 3 uses
  %15 = alloca %"class.duckdb::optional_idx", align 8 ; 2 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %19 = alloca %"class.duckdb::LinesPerBoundary", align 8 ; 3 uses
  %20 = alloca %"class.duckdb::optional_idx", align 8 ; 2 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  store i64 %7, ptr %9, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %11)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull @.str.36, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 10, ptr %i.f, align 1, !tbaa !62
  %i.h = load ptr, ptr %11, align 8, !tbaa !63
  %i.i = getelementptr i8, ptr %i.h, i64 -24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds i8, ptr %11, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !65
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull %i.f, i64 noundef 1)
          to label %bb.e unwind label %bb.j       ; 0 uses

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %11, i8 noundef signext 10)
          to label %bb.e unwind label %bb.j       ; 0 uses

bb.e:                                             ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 49
  %i.q = load i8, ptr %i.p, align 1, !tbaa !98, !range !38, !noundef !39
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull @.str.37, i64 noundef 118)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 10, ptr %i.e, align 1, !tbaa !62
  %i.t = load ptr, ptr %11, align 8, !tbaa !63
  %i.u = getelementptr i8, ptr %i.t, i64 -24
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds i8, ptr %11, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !65
  %.not.i47 = icmp eq i64 %i.y, 0
  br i1 %.not.i47, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull %i.e, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit51 unwind label %bb.j ; 0 uses

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %11, i8 noundef signext 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit51 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit51: ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.k

bb.i:                                             ; preds = %bb.a
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit70, %_ZNSolsEm.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit67, %bb.s, %bb.r, %bb.q, %bb.p, %bb.n, %bb.m, %bb.l, %bb.h, %bb.g, %bb.f, %bb.d, %bb.c, %bb.b
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit51, %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 712
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !130, !range !38, !noundef !39
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull @.str.78, i64 noundef 77)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53: ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 10, ptr %i.d, align 1, !tbaa !62
  %i.ah = load ptr, ptr %11, align 8, !tbaa !63
  %i.ai = getelementptr i8, ptr %i.ah, i64 -24
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds i8, ptr %11, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load i64, ptr %i.al, align 8, !tbaa !65
  %.not.i54 = icmp eq i64 %i.am, 0
  br i1 %.not.i54, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull %i.d, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit58 unwind label %bb.j ; 0 uses

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53
  %i.ao = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %11, i8 noundef signext 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit58 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit58: ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.o

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit58, %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 145
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !98, !range !38, !noundef !39
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull @.str.76, i64 noundef 60)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60: ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 10, ptr %i.c, align 1, !tbaa !62
  %i.at = load ptr, ptr %11, align 8, !tbaa !63
  %i.au = getelementptr i8, ptr %i.at, i64 -24
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = getelementptr inbounds i8, ptr %11, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !65
  %.not.i61 = icmp eq i64 %i.ay, 0
  br i1 %.not.i61, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit65 unwind label %bb.j ; 0 uses

bb.r:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60
  %i.ba = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %11, i8 noundef signext 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit65 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit65: ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.s

bb.s:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit65, %bb.o
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull @.str.79, i64 noundef 28)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit67 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit67: ; preds = %bb.s
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !334
  %i.be = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef %i.bd)
          to label %_ZNSolsEm.exit unwind label %bb.j ; 2 uses

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit67
  %i.bf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef nonnull @.str.80, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit70 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit70: ; preds = %_ZNSolsEm.exit
  %i.bg = add i64 %2, 1
  %i.bh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.be, i64 noundef %i.bg)
          to label %_ZNSolsEm.exit72 unwind label %bb.j ; 0 uses

_ZNSolsEm.exit72:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit70
  %i.bi = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.t unwind label %bb.aj

bb.t:                                             ; preds = %_ZNSolsEm.exit72
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bk = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.v unwind label %bb.aj

bb.v:                                             ; preds = %bb.u
  %i.bl = add i64 %i.bk, -1
  br label %bb.w

bb.w:                                             ; preds = %bb.t, %bb.v
  %i.bm = phi i64 [ %i.bl, %bb.v ], [ 0, %bb.t ]  ; 2 uses
  %i.bn = load i64, ptr %i.bc, align 8, !tbaa !334
  %.not = icmp ult i64 %2, %i.bn
  %22 = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  br i1 %.not, label %bb.ao, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !335)
  call void @llvm.experimental.noalias.scope.decl(metadata !338)
  %i.bp = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  store ptr %i.bp, ptr %12, align 8, !tbaa !76, !alias.scope !341
  %i.bq = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 0, ptr %i.bq, align 8, !tbaa !74, !alias.scope !341
  store i8 0, ptr %i.bp, align 8, !tbaa !62, !alias.scope !341
  %23 = load ptr, ptr %22, align 8, !tbaa !106, !noalias !341 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %23, null
  %i.br = load ptr, ptr %i.bo, align 8, !noalias !341 ; 2 uses
  %24 = icmp ugt ptr %23, %i.br
  %.08.i.i.i = select i1 %24, ptr %23, ptr %i.br  ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bs = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !108, !noalias !341 ; 2 uses
  %i.bu = ptrtoint ptr %.08.i.i.i to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef 0, i64 noundef 0, ptr noundef %i.bt, i64 noundef %i.bw)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.z ; 0 uses

bb.z:                                             ; preds = %bb.aa, %bb.y
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bz = load ptr, ptr %12, align 8, !tbaa !75, !alias.scope !341 ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.bp
  br i1 %i.ca, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.z
  call void @_ZdlPv(ptr noundef %i.bz) #30
  br label %.body

bb.aa:                                            ; preds = %bb.x
  %i.cb = getelementptr inbounds nuw i8, ptr %10, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %i.cb)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.z

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.aa, %bb.y
  %i.cc = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  store ptr %i.cc, ptr %13, align 8, !tbaa !76
  %i.cd = load ptr, ptr %5, align 8, !tbaa !75    ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !74 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 %i.cf, ptr %i.b, align 8, !tbaa !35
  %i.cg = icmp ugt i64 %i.cf, 15
  br i1 %i.cg, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ch = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc73 unwind label %bb.ak  ; 2 uses

.noexc73:                                         ; preds = %.noexc.i
  store ptr %i.ch, ptr %13, align 8, !tbaa !75
  %i.ci = load i64, ptr %i.b, align 8, !tbaa !35
  store i64 %i.ci, ptr %i.cc, align 8, !tbaa !62
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc73, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cj = phi ptr [ %i.ch, %.noexc73 ], [ %i.cc, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit ] ; 2 uses
  switch i64 %i.cf, label %bb.ac [
    i64 1, label %bb.ab
    i64 0, label %bb.ad
  ]

bb.ab:                                            ; preds = %._crit_edge.i.i
  %i.ck = load i8, ptr %i.cd, align 1, !tbaa !62
  store i8 %i.ck, ptr %i.cj, align 1, !tbaa !62
  br label %bb.ad

bb.ac:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cj, ptr align 1 %i.cd, i64 %i.cf, i1 false)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %._crit_edge.i.i
  %i.cl = load i64, ptr %i.b, align 8, !tbaa !35  ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.cl, ptr %i.cm, align 8, !tbaa !74
  %i.cn = load ptr, ptr %13, align 8, !tbaa !75
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cl
  store i8 0, ptr %i.co, align 1, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  store i64 %3, ptr %14, align 8, !tbaa !35
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %4, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !35
  invoke void @_ZN6duckdb12optional_idxC2Em(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef %i.bm)
          to label %bb.ae unwind label %bb.al

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !342)
  call void @llvm.experimental.noalias.scope.decl(metadata !345)
  %i.cp = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 5 uses
  store ptr %i.cp, ptr %16, align 8, !tbaa !76, !alias.scope !348
  %i.cq = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 0, ptr %i.cq, align 8, !tbaa !74, !alias.scope !348
  store i8 0, ptr %i.cp, align 8, !tbaa !62, !alias.scope !348
  %25 = getelementptr inbounds nuw i8, ptr %11, i64 48
  %26 = load ptr, ptr %25, align 8, !tbaa !106, !noalias !348 ; 3 uses
  %.not.i.not.i.i74 = icmp eq ptr %26, null
  %i.cr = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8, !noalias !348 ; 2 uses
  %27 = icmp ugt ptr %26, %i.cs
  %.08.i.i.i75 = select i1 %27, ptr %26, ptr %i.cs ; 2 uses
  %.not5.i.i76 = icmp eq ptr %.08.i.i.i75, null
  %.not.i.i77 = select i1 %.not.i.not.i.i74, i1 true, i1 %.not5.i.i76
  br i1 %.not.i.i77, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ct = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !108, !noalias !348 ; 2 uses
  %i.cv = ptrtoint ptr %.08.i.i.i75 to i64
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %16, i64 noundef 0, i64 noundef 0, ptr noundef %i.cu, i64 noundef %i.cx)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit83 unwind label %bb.ag ; 0 uses

bb.ag:                                            ; preds = %bb.ah, %bb.af
  %i.cz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.da = load ptr, ptr %16, align 8, !tbaa !75, !alias.scope !348 ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.cp
  br i1 %i.db, label %.body81, label %.body81.sink.split

bb.ah:                                            ; preds = %bb.ae
  %i.dc = getelementptr inbounds nuw i8, ptr %11, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %i.dc)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit83 unwind label %bb.ag

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit83: ; preds = %bb.ah, %bb.af
  %i.dd = load i64, ptr %15, align 8
  invoke void @_ZN6duckdb8CSVErrorC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12CSVErrorTypeEmS6_NS_16LinesPerBoundaryEmNS_12optional_idxERKNS_16CSVReaderOptionsERKS6_RKNS_6StringE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull %12, i8 noundef zeroext 3, i64 noundef %2, ptr noundef nonnull %13, ptr noundef nonnull byval(%"class.duckdb::LinesPerBoundary") align 8 %14, i64 noundef %6, i64 %i.dd, ptr noundef nonnull align 8 dereferenceable(1033) %1, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.ai unwind label %bb.am

bb.ai:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit83
  %i.de = load ptr, ptr %16, align 8, !tbaa !75   ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.cp
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ai
  call void @_ZdlPv(ptr noundef %i.de) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  %i.dg = load ptr, ptr %13, align 8, !tbaa !75   ; 2 uses
  %i.dh = icmp eq ptr %i.dg, %i.cc
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.dg) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84
  %i.di = load ptr, ptr %12, align 8, !tbaa !75   ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.bp
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.sink.split

bb.aj:                                            ; preds = %bb.u, %_ZNSolsEm.exit72
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ak:                                            ; preds = %.noexc.i
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95

bb.al:                                            ; preds = %bb.ad
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.am:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit83
  %i.dn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.do = load ptr, ptr %16, align 8, !tbaa !75   ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.cp
  br i1 %i.dp, label %.body81, label %.body81.sink.split

.body81.sink.split:                               ; preds = %bb.am, %bb.ag
  %.sink = phi ptr [ %i.da, %bb.ag ], [ %i.do, %bb.am ]
  %.pn37.ph = phi { ptr, i32 } [ %i.cz, %bb.ag ], [ %i.dn, %bb.am ]
  call void @_ZdlPv(ptr noundef %.sink) #30
  br label %.body81

.body81:                                          ; preds = %.body81.sink.split, %bb.am, %bb.ag
  %.pn37 = phi { ptr, i32 } [ %i.cz, %bb.ag ], [ %i.dn, %bb.am ], [ %.pn37.ph, %.body81.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  br label %bb.an

bb.an:                                            ; preds = %.body81, %bb.al
  %.pn37.pn = phi { ptr, i32 } [ %.pn37, %.body81 ], [ %i.dm, %bb.al ] ; 2 uses
  %i.dq = load ptr, ptr %13, align 8, !tbaa !75   ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.cc
  br i1 %i.dr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93: ; preds = %bb.an
  call void @_ZdlPv(ptr noundef %i.dq) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93, %bb.ak
  %.pn37.pn.pn = phi { ptr, i32 } [ %i.dl, %bb.ak ], [ %.pn37.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93 ], [ %.pn37.pn, %bb.an ] ; 2 uses
  %i.ds = load ptr, ptr %12, align 8, !tbaa !75   ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.bp
  br i1 %i.dt, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95
  call void @_ZdlPv(ptr noundef %i.ds) #30
  br label %.body

bb.ao:                                            ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !349)
  call void @llvm.experimental.noalias.scope.decl(metadata !352)
  %i.du = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 5 uses
  store ptr %i.du, ptr %17, align 8, !tbaa !76, !alias.scope !355
  %i.dv = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 0, ptr %i.dv, align 8, !tbaa !74, !alias.scope !355
  store i8 0, ptr %i.du, align 8, !tbaa !62, !alias.scope !355
  %28 = load ptr, ptr %22, align 8, !tbaa !106, !noalias !355 ; 3 uses
  %.not.i.not.i.i99 = icmp eq ptr %28, null
  %i.dw = load ptr, ptr %i.bo, align 8, !noalias !355 ; 2 uses
  %29 = icmp ugt ptr %28, %i.dw
  %.08.i.i.i100 = select i1 %29, ptr %28, ptr %i.dw ; 2 uses
  %.not5.i.i101 = icmp eq ptr %.08.i.i.i100, null
  %.not.i.i102 = select i1 %.not.i.not.i.i99, i1 true, i1 %.not5.i.i101
  br i1 %.not.i.i102, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dx = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !108, !noalias !355 ; 2 uses
  %i.dz = ptrtoint ptr %.08.i.i.i100 to i64
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef 0, i64 noundef 0, ptr noundef %i.dy, i64 noundef %i.eb)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit108 unwind label %bb.aq ; 0 uses

bb.aq:                                            ; preds = %bb.ar, %bb.ap
  %i.ed = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ee = load ptr, ptr %17, align 8, !tbaa !75, !alias.scope !355 ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.du
  br i1 %i.ef, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i103: ; preds = %bb.aq
  call void @_ZdlPv(ptr noundef %i.ee) #30
  br label %.body

bb.ar:                                            ; preds = %bb.ao
  %i.eg = getelementptr inbounds nuw i8, ptr %10, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %i.eg)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit108 unwind label %bb.aq

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit108: ; preds = %bb.ar, %bb.ap
  %i.eh = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 5 uses
  store ptr %i.eh, ptr %18, align 8, !tbaa !76
  %i.ei = load ptr, ptr %5, align 8, !tbaa !75    ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !74 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.ek, ptr %i.a, align 8, !tbaa !35
  %i.el = icmp ugt i64 %i.ek, 15
  br i1 %i.el, label %.noexc.i110, label %._crit_edge.i.i109

.noexc.i110:                                      ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit108
  %i.em = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc111 unwind label %bb.ba ; 2 uses

.noexc111:                                        ; preds = %.noexc.i110
  store ptr %i.em, ptr %18, align 8, !tbaa !75
  %i.en = load i64, ptr %i.a, align 8, !tbaa !35
  store i64 %i.en, ptr %i.eh, align 8, !tbaa !62
  br label %._crit_edge.i.i109

._crit_edge.i.i109:                               ; preds = %.noexc111, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit108
  %i.eo = phi ptr [ %i.em, %.noexc111 ], [ %i.eh, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit108 ] ; 2 uses
  switch i64 %i.ek, label %bb.at [
    i64 1, label %bb.as
    i64 0, label %bb.au
  ]

bb.as:                                            ; preds = %._crit_edge.i.i109
  %i.ep = load i8, ptr %i.ei, align 1, !tbaa !62
  store i8 %i.ep, ptr %i.eo, align 1, !tbaa !62
  br label %bb.au

bb.at:                                            ; preds = %._crit_edge.i.i109
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eo, ptr align 1 %i.ei, i64 %i.ek, i1 false)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %._crit_edge.i.i109
  %i.eq = load i64, ptr %i.a, align 8, !tbaa !35  ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %i.eq, ptr %i.er, align 8, !tbaa !74
  %i.es = load ptr, ptr %18, align 8, !tbaa !75
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.eq
  store i8 0, ptr %i.et, align 1, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  store i64 %3, ptr %19, align 8, !tbaa !35
  %.sroa.3.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 %4, ptr %.sroa.3.0..sroa_idx21, align 8, !tbaa !35
  invoke void @_ZN6duckdb12optional_idxC2Em(ptr noundef nonnull align 8 dereferenceable(8) %20, i64 noundef %i.bm)
          to label %bb.av unwind label %bb.bb

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !356)
  call void @llvm.experimental.noalias.scope.decl(metadata !359)
  %i.eu = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 5 uses
  store ptr %i.eu, ptr %21, align 8, !tbaa !76, !alias.scope !362
  %i.ev = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 0, ptr %i.ev, align 8, !tbaa !74, !alias.scope !362
  store i8 0, ptr %i.eu, align 8, !tbaa !62, !alias.scope !362
  %30 = getelementptr inbounds nuw i8, ptr %11, i64 48
  %31 = load ptr, ptr %30, align 8, !tbaa !106, !noalias !362 ; 3 uses
  %.not.i.not.i.i113 = icmp eq ptr %31, null
  %i.ew = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.ex = load ptr, ptr %i.ew, align 8, !noalias !362 ; 2 uses
  %32 = icmp ugt ptr %31, %i.ex
  %.08.i.i.i114 = select i1 %32, ptr %31, ptr %i.ex ; 2 uses
  %.not5.i.i115 = icmp eq ptr %.08.i.i.i114, null
  %.not.i.i116 = select i1 %.not.i.not.i.i113, i1 true, i1 %.not5.i.i115
  br i1 %.not.i.i116, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ey = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !108, !noalias !362 ; 2 uses
  %i.fa = ptrtoint ptr %.08.i.i.i114 to i64
  %i.fb = ptrtoint ptr %i.ez to i64
  %i.fc = sub i64 %i.fa, %i.fb
  %i.fd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %21, i64 noundef 0, i64 noundef 0, ptr noundef %i.ez, i64 noundef %i.fc)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit122 unwind label %bb.ax ; 0 uses

bb.ax:                                            ; preds = %bb.ay, %bb.aw
  %i.fe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ff = load ptr, ptr %21, align 8, !tbaa !75, !alias.scope !362 ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.eu
  br i1 %i.fg, label %.body120, label %.body120.sink.split

bb.ay:                                            ; preds = %bb.av
  %i.fh = getelementptr inbounds nuw i8, ptr %11, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(32) %i.fh)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit122 unwind label %bb.ax

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit122: ; preds = %bb.ay, %bb.aw
  %i.fi = load i64, ptr %20, align 8
  invoke void @_ZN6duckdb8CSVErrorC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12CSVErrorTypeEmS6_NS_16LinesPerBoundaryEmNS_12optional_idxERKNS_16CSVReaderOptionsERKS6_RKNS_6StringE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull %17, i8 noundef zeroext 2, i64 noundef %2, ptr noundef nonnull %18, ptr noundef nonnull byval(%"class.duckdb::LinesPerBoundary") align 8 %19, i64 noundef %6, i64 %i.fi, ptr noundef nonnull align 8 dereferenceable(1033) %1, ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.az unwind label %bb.bc

bb.az:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit122
  %i.fj = load ptr, ptr %21, align 8, !tbaa !75   ; 2 uses
  %i.fk = icmp eq ptr %i.fj, %i.eu
  br i1 %i.fk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123: ; preds = %bb.az
  call void @_ZdlPv(ptr noundef %i.fj) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  %i.fl = load ptr, ptr %18, align 8, !tbaa !75   ; 2 uses
  %i.fm = icmp eq ptr %i.fl, %i.eh
  br i1 %i.fm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125
  call void @_ZdlPv(ptr noundef %i.fl) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126
  %i.fn = load ptr, ptr %17, align 8, !tbaa !75   ; 2 uses
  %i.fo = icmp eq ptr %i.fn, %i.du
  br i1 %i.fo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.sink.split

bb.ba:                                            ; preds = %.noexc.i110
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137

bb.bb:                                            ; preds = %bb.au
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bc:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit122
  %i.fr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fs = load ptr, ptr %21, align 8, !tbaa !75   ; 2 uses
  %i.ft = icmp eq ptr %i.fs, %i.eu
  br i1 %i.ft, label %.body120, label %.body120.sink.split

.body120.sink.split:                              ; preds = %bb.bc, %bb.ax
  %.sink162 = phi ptr [ %i.ff, %bb.ax ], [ %i.fs, %bb.bc ]
  %.pn.ph = phi { ptr, i32 } [ %i.fe, %bb.ax ], [ %i.fr, %bb.bc ]
  call void @_ZdlPv(ptr noundef %.sink162) #30
  br label %.body120

.body120:                                         ; preds = %.body120.sink.split, %bb.bc, %bb.ax
  %.pn = phi { ptr, i32 } [ %i.fe, %bb.ax ], [ %i.fr, %bb.bc ], [ %.pn.ph, %.body120.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  br label %bb.bd

bb.bd:                                            ; preds = %.body120, %bb.bb
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body120 ], [ %i.fq, %bb.bb ] ; 2 uses
  %i.fu = load ptr, ptr %18, align 8, !tbaa !75   ; 2 uses
  %i.fv = icmp eq ptr %i.fu, %i.eh
  br i1 %i.fv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135: ; preds = %bb.bd
  call void @_ZdlPv(ptr noundef %i.fu) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137: ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135, %bb.ba
  %.pn.pn.pn = phi { ptr, i32 } [ %i.fp, %bb.ba ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135 ], [ %.pn.pn, %bb.bd ] ; 2 uses
  %i.fw = load ptr, ptr %17, align 8, !tbaa !75   ; 2 uses
  %i.fx = icmp eq ptr %i.fw, %i.du
  br i1 %i.fx, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137
  call void @_ZdlPv(ptr noundef %i.fw) #30
  br label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.sink.split: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86
  %.sink163 = phi ptr [ %i.di, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86 ], [ %i.fn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128 ]
  call void @_ZdlPv(ptr noundef %.sink163) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86
  %i.fy = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 3 uses
  store ptr %i.fy, ptr %11, align 8, !tbaa !63
  %i.fz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.ga = getelementptr i8, ptr %i.fy, i64 -24    ; 2 uses
  %i.gb = load i64, ptr %i.ga, align 8
  %i.gc = getelementptr inbounds i8, ptr %11, i64 %i.gb
  store ptr %i.fz, ptr %i.gc, align 8, !tbaa !63
  %i.gd = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.gd, align 8, !tbaa !63
  %i.ge = getelementptr inbounds nuw i8, ptr %11, i64 80
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !75 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %11, i64 96
  %i.gh = icmp eq ptr %i.gf, %i.gg
  br i1 %i.gh, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89
  call void @_ZdlPv(ptr noundef %i.gf) #30
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.gd, align 8, !tbaa !63
  %i.gi = getelementptr inbounds nuw i8, ptr %11, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.gi) #28
  %i.gj = getelementptr inbounds nuw i8, ptr %11, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.gj) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  store ptr %i.fy, ptr %10, align 8, !tbaa !63
  %i.gk = load i64, ptr %i.ga, align 8
  %i.gl = getelementptr inbounds i8, ptr %10, i64 %i.gk
  store ptr %i.fz, ptr %i.gl, align 8, !tbaa !63
  %i.gm = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.gm, align 8, !tbaa !63
  %i.gn = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !75 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.gq = icmp eq ptr %i.go, %i.gp
  br i1 %i.gq, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit143, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i141

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i141: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  call void @_ZdlPv(ptr noundef %i.go) #30
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit143

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit143: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i141
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.gm, align 8, !tbaa !63
  %i.gr = getelementptr inbounds nuw i8, ptr %10, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.gr) #28
  %i.gs = getelementptr inbounds nuw i8, ptr %10, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.gs) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  ret void

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137, %bb.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i103, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.aj, %bb.j
  %.pn37.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ac, %bb.j ], [ %.pn37.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96 ], [ %.pn37.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95 ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138 ], [ %i.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.dk, %bb.aj ], [ %i.by, %bb.z ], [ %i.ed, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i103 ], [ %i.ed, %bb.aq ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %11) #28
  br label %bb.be

bb.be:                                            ; preds = %.body, %bb.i
  %.pn37.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn37.pn.pn.pn.pn, %.body ], [ %i.ab, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  resume { ptr, i32 } %.pn37.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb8CSVError11InvalidUTF8ERKNS_16CSVReaderOptionsEmNS_16LinesPerBoundaryERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmNS_12optional_idxERKNS_6StringE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::CSVError") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1033) %1, i64 noundef %2, i64 %3, i64 %4, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %5, i64 noundef %6, i64 %7, ptr noundef nonnull align 8 dereferenceable(16) %8) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %9 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 18 uses
  %10 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 26 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.duckdb::LinesPerBoundary", align 8 ; 3 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %9)
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull @.str.81, i64 noundef 68)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.v ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 720
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !75
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 728
  %i.i = load i64, ptr %i.h, align 8, !tbaa !74
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %i.g, i64 noundef %i.i)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.v ; 5 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.82, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19 unwind label %bb.v ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 10, ptr %i.d, align 1, !tbaa !62
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !63
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %i.j, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !65
  %.not.i = icmp eq i64 %i.q, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull %i.d, i64 noundef 1)
          to label %bb.d unwind label %bb.v       ; 0 uses

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i8 noundef signext 10)
          to label %bb.d unwind label %bb.v       ; 0 uses

bb.d:                                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %10)
          to label %bb.e unwind label %bb.w

bb.e:                                             ; preds = %bb.d
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull @.str.83, i64 noundef 106)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit22 unwind label %bb.x ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit22: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 10, ptr %i.c, align 1, !tbaa !62
  %i.u = load ptr, ptr %10, align 8, !tbaa !63
  %i.v = getelementptr i8, ptr %i.u, i64 -24
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds i8, ptr %10, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !65
  %.not.i23 = icmp eq i64 %i.z, 0
  br i1 %.not.i23, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit22
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %bb.h unwind label %bb.x       ; 0 uses

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit22
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %10, i8 noundef signext 10)
          to label %bb.h unwind label %bb.x       ; 0 uses

bb.h:                                             ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull @.str.84, i64 noundef 77)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29 unwind label %bb.x ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 10, ptr %i.b, align 1, !tbaa !62
  %i.ad = load ptr, ptr %10, align 8, !tbaa !63
  %i.ae = getelementptr i8, ptr %i.ad, i64 -24
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds i8, ptr %10, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !65
  %.not.i30 = icmp eq i64 %i.ai, 0
  br i1 %.not.i30, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %bb.k unwind label %bb.x       ; 0 uses

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %10, i8 noundef signext 10)
          to label %bb.k unwind label %bb.x       ; 0 uses

bb.k:                                             ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !363)
  call void @llvm.experimental.noalias.scope.decl(metadata !366)
  %i.al = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  store ptr %i.al, ptr %11, align 8, !tbaa !76, !alias.scope !369
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.am, align 8, !tbaa !74, !alias.scope !369
  store i8 0, ptr %i.al, align 8, !tbaa !62, !alias.scope !369
  %15 = getelementptr inbounds nuw i8, ptr %9, i64 48
  %16 = load ptr, ptr %15, align 8, !tbaa !106, !noalias !369 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %16, null
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !369 ; 2 uses
  %17 = icmp ugt ptr %16, %i.ao
  %.08.i.i.i = select i1 %17, ptr %16, ptr %i.ao  ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !108, !noalias !369 ; 2 uses
  %i.ar = ptrtoint ptr %.08.i.i.i to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef %i.aq, i64 noundef %i.at)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.n, %bb.l
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aw = load ptr, ptr %11, align 8, !tbaa !75, !alias.scope !369 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.al
  br i1 %i.ax, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.m
  call void @_ZdlPv(ptr noundef %i.aw) #30
  br label %.body

bb.n:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.ay)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.m

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.n, %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  store ptr %i.az, ptr %12, align 8, !tbaa !76
  %i.ba = load ptr, ptr %5, align 8, !tbaa !75    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !74 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.bc, ptr %i.a, align 8, !tbaa !35
  %i.bd = icmp ugt i64 %i.bc, 15
  br i1 %i.bd, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.be = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc35 unwind label %bb.y   ; 2 uses

.noexc35:                                         ; preds = %.noexc.i
  store ptr %i.be, ptr %12, align 8, !tbaa !75
  %i.bf = load i64, ptr %i.a, align 8, !tbaa !35
  store i64 %i.bf, ptr %i.az, align 8, !tbaa !62
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc35, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bg = phi ptr [ %i.be, %.noexc35 ], [ %i.az, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit ] ; 2 uses
  switch i64 %i.bc, label %bb.p [
    i64 1, label %bb.o
    i64 0, label %bb.q
  ]

bb.o:                                             ; preds = %._crit_edge.i.i
  %i.bh = load i8, ptr %i.ba, align 1, !tbaa !62
  store i8 %i.bh, ptr %i.bg, align 1, !tbaa !62
  br label %bb.q

bb.p:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bg, ptr align 1 %i.ba, i64 %i.bc, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %._crit_edge.i.i
  %i.bi = load i64, ptr %i.a, align 8, !tbaa !35  ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !74
  %i.bk = load ptr, ptr %12, align 8, !tbaa !75
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bi
  store i8 0, ptr %i.bl, align 1, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  store i64 %3, ptr %13, align 8, !tbaa !35
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %4, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !370)
  call void @llvm.experimental.noalias.scope.decl(metadata !373)
  %i.bm = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 5 uses
  store ptr %i.bm, ptr %14, align 8, !tbaa !76, !alias.scope !376
  %i.bn = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 0, ptr %i.bn, align 8, !tbaa !74, !alias.scope !376
  store i8 0, ptr %i.bm, align 8, !tbaa !62, !alias.scope !376
  %18 = getelementptr inbounds nuw i8, ptr %10, i64 48
  %19 = load ptr, ptr %18, align 8, !tbaa !106, !noalias !376 ; 3 uses
  %.not.i.not.i.i36 = icmp eq ptr %19, null
  %i.bo = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !noalias !376 ; 2 uses
  %20 = icmp ugt ptr %19, %i.bp
  %.08.i.i.i37 = select i1 %20, ptr %19, ptr %i.bp ; 2 uses
  %.not5.i.i38 = icmp eq ptr %.08.i.i.i37, null
  %.not.i.i39 = select i1 %.not.i.not.i.i36, i1 true, i1 %.not5.i.i38
  br i1 %.not.i.i39, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bq = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !108, !noalias !376 ; 2 uses
  %i.bs = ptrtoint ptr %.08.i.i.i37 to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, i64 noundef 0, i64 noundef 0, ptr noundef %i.br, i64 noundef %i.bu)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit45 unwind label %bb.s ; 0 uses

bb.s:                                             ; preds = %bb.t, %bb.r
  %i.bw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bx = load ptr, ptr %14, align 8, !tbaa !75, !alias.scope !376 ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.bm
  br i1 %i.by, label %.body43, label %.body43.sink.split

bb.t:                                             ; preds = %bb.q
  %i.bz = getelementptr inbounds nuw i8, ptr %10, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %i.bz)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit45 unwind label %bb.s

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit45: ; preds = %bb.t, %bb.r
  invoke void @_ZN6duckdb8CSVErrorC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12CSVErrorTypeEmS6_NS_16LinesPerBoundaryEmNS_12optional_idxERKNS_16CSVReaderOptionsERKS6_RKNS_6StringE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull %11, i8 noundef zeroext 8, i64 noundef %2, ptr noundef nonnull %12, ptr noundef nonnull byval(%"class.duckdb::LinesPerBoundary") align 8 %13, i64 noundef %6, i64 %7, ptr noundef nonnull align 8 dereferenceable(1033) %1, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.u unwind label %bb.z

bb.u:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit45
  %i.ca = load ptr, ptr %14, align 8, !tbaa !75   ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.bm
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.u
  call void @_ZdlPv(ptr noundef %i.ca) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  %i.cc = load ptr, ptr %12, align 8, !tbaa !75   ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.az
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.cc) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46
  %i.ce = load ptr, ptr %11, align 8, !tbaa !75   ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.al
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48
  call void @_ZdlPv(ptr noundef %i.ce) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49
  %i.cg = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 3 uses
  store ptr %i.cg, ptr %10, align 8, !tbaa !63
  %i.ch = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.ci = getelementptr i8, ptr %i.cg, i64 -24    ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8
  %i.ck = getelementptr inbounds i8, ptr %10, i64 %i.cj
  store ptr %i.ch, ptr %i.ck, align 8, !tbaa !63
  %i.cl = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.cl, align 8, !tbaa !63
  %i.cm = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !75 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
  call void @_ZdlPv(ptr noundef %i.cn) #30
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.cl, align 8, !tbaa !63
  %i.cq = getelementptr inbounds nuw i8, ptr %10, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cq) #28
  %i.cr = getelementptr inbounds nuw i8, ptr %10, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.cr) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  store ptr %i.cg, ptr %9, align 8, !tbaa !63
  %i.cs = load i64, ptr %i.ci, align 8
  %i.ct = getelementptr inbounds i8, ptr %9, i64 %i.cs
  store ptr %i.ch, ptr %i.ct, align 8, !tbaa !63
  %i.cu = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.cu, align 8, !tbaa !63
  %i.cv = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !75 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %9, i64 96
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i52: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  call void @_ZdlPv(ptr noundef %i.cw) #30
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit54

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit54: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i52
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.cu, align 8, !tbaa !63
  %i.cz = getelementptr inbounds nuw i8, ptr %9, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cz) #28
  %i.da = getelementptr inbounds nuw i8, ptr %9, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.da) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  ret void

bb.v:                                             ; preds = %bb.c, %bb.b, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.a
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.w:                                             ; preds = %bb.d
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.x:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.y:                                             ; preds = %.noexc.i
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

bb.z:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit45
  %i.df = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dg = load ptr, ptr %14, align 8, !tbaa !75   ; 2 uses
  %i.dh = icmp eq ptr %i.dg, %i.bm
  br i1 %i.dh, label %.body43, label %.body43.sink.split

.body43.sink.split:                               ; preds = %bb.z, %bb.s
  %.sink = phi ptr [ %i.bx, %bb.s ], [ %i.dg, %bb.z ]
  %.pn.ph = phi { ptr, i32 } [ %i.bw, %bb.s ], [ %i.df, %bb.z ]
  call void @_ZdlPv(ptr noundef %.sink) #30
  br label %.body43

.body43:                                          ; preds = %.body43.sink.split, %bb.z, %bb.s
  %.pn = phi { ptr, i32 } [ %i.bw, %bb.s ], [ %i.df, %bb.z ], [ %.pn.ph, %.body43.sink.split ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  %i.di = load ptr, ptr %12, align 8, !tbaa !75   ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.az
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %.body43
  call void @_ZdlPv(ptr noundef %i.di) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %.body43, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58, %bb.y
  %.pn.pn = phi { ptr, i32 } [ %i.de, %bb.y ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58 ], [ %.pn, %.body43 ] ; 2 uses
  %i.dk = load ptr, ptr %11, align 8, !tbaa !75   ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.al
  br i1 %i.dl, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60
  call void @_ZdlPv(ptr noundef %i.dk) #30
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61, %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61 ], [ %i.dd, %bb.x ], [ %i.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.av, %bb.m ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %10) #28
  br label %bb.aa

bb.aa:                                            ; preds = %.body, %bb.w
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body ], [ %i.dc, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.v
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.aa ], [ %i.db, %bb.v ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN6duckdb15CSVErrorHandler7GetLineERKNS_16LinesPerBoundaryE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %0) #28 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #31
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !10
  %i.e = add i64 %i.d, 1                          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 0, ptr %i.a, align 8, !tbaa !35
  %i.f = load i64, ptr %1, align 8, !tbaa !7
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.c
end_hunk_3
