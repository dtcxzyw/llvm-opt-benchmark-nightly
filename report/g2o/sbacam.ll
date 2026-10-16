Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/sbacam?download=true
inline.NumInlined: 2762
inline.NumDeleted: 1446
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN5Eigen8internal12print_matrixINS_6MatrixIdLi1ELi4ELi1ELi1ELi4EEEEERSoS4_RKT_RKNS_8IOFormatE:bb.a
  %i.i = load i64, ptr %i.h, align 8, !tbaa !50
  store i64 %.078122, ptr %i.h, align 8, !tbaa !50
  br label %.thread

.thread:                                          ; preds = %bb.a, %.thread119, %bb.b
  %.not118 = phi i1 [ false, %.thread119 ], [ true, %bb.b ], [ true, %bb.a ]
  %.077 = phi i64 [ %i.i, %.thread119 ], [ 0, %bb.b ], [ 0, %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 232
  %i.k = load i32, ptr %i.j, align 8, !tbaa !51
  %i.l = and i32 %i.k, 1
  %.not81 = icmp eq i32 %i.l, 0
  br i1 %.not81, label %.preheader124, label %.loopexit

.preheader124:                                    ; preds = %.thread
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 344
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 352
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 353
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 360
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 5 uses
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 4 uses
  %i.t = getelementptr i8, ptr %i.r, i64 -24      ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 32), align 8 ; 2 uses
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 40), align 8
  %i.y = getelementptr i8, ptr %i.w, i64 -24
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 48), align 8
  %i.ab = getelementptr i8, ptr %i.z, i64 -24
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ao = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.aq = getelementptr i8, ptr %i.ao, i64 -24
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader124, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %.076166 = phi i64 [ 0, %.preheader124 ], [ %i.de, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ] ; 2 uses
  %.0115165 = phi i64 [ 0, %.preheader124 ], [ %.sroa.speculated, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ]
  %i.as = getelementptr [8 x i8], ptr %1, i64 %.076166
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.m) #18
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.m, align 8, !tbaa !16
  store ptr null, ptr %i.n, align 8, !tbaa !52
  store i8 0, ptr %i.o, align 8, !tbaa !53
  store i8 0, ptr %i.p, align 1, !tbaa !54
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i8 0, i64 32, i1 false)
  store ptr %i.r, ptr %3, align 8, !tbaa !16
  %i.at = load i64, ptr %i.t, align 8
  %i.au = getelementptr inbounds i8, ptr %3, i64 %i.at
  store ptr %i.s, ptr %i.au, align 8, !tbaa !16
  store i64 0, ptr %i.u, align 8, !tbaa !56
  %i.av = load ptr, ptr %3, align 8, !tbaa !16
  %i.aw = getelementptr i8, ptr %i.av, i64 -24
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds i8, ptr %3, i64 %i.ax
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.ay, ptr noundef null)
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %.preheader
  store ptr %i.w, ptr %i.v, align 8, !tbaa !16
  %i.az = load i64, ptr %i.y, align 8
  %i.ba = getelementptr inbounds i8, ptr %i.v, i64 %i.az
  store ptr %i.x, ptr %i.ba, align 8, !tbaa !16
  %i.bb = load ptr, ptr %i.v, align 8, !tbaa !16
  %i.bc = getelementptr i8, ptr %i.bb, i64 -24
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = getelementptr inbounds i8, ptr %i.v, i64 %i.bd
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.be, ptr noundef null)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %.noexc.i
  %i.bf = landingpad { ptr, i32 }
          cleanup
  store ptr %i.r, ptr %3, align 8, !tbaa !16
  %i.bg = load i64, ptr %i.t, align 8
  %i.bh = getelementptr inbounds i8, ptr %3, i64 %i.bg
  store ptr %i.s, ptr %i.bh, align 8, !tbaa !16
  store i64 0, ptr %i.u, align 8, !tbaa !56
  br label %.body.i

bb.d:                                             ; preds = %.noexc.i
  store ptr %i.z, ptr %3, align 8, !tbaa !16
  %i.bi = load i64, ptr %i.ab, align 8
  %i.bj = getelementptr inbounds i8, ptr %3, i64 %i.bi
  store ptr %i.aa, ptr %i.bj, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %3, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 104), ptr %i.m, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.v, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ac, align 8, !tbaa !16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ae) #18
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ac, align 8, !tbaa !16
  store i32 24, ptr %i.af, align 8, !tbaa !60
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !44
  store i64 0, ptr %i.ai, align 8, !tbaa !46
  store i8 0, ptr %i.ah, align 8, !tbaa !12
  %i.bk = load ptr, ptr %3, align 8, !tbaa !16
  %i.bl = getelementptr i8, ptr %i.bk, i64 -24
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds i8, ptr %3, i64 %i.bm
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.bn, ptr noundef nonnull %i.ac)
          to label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev.exit unwind label %bb.f

bb.e:                                             ; preds = %.preheader
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.f:                                             ; preds = %bb.d
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.ac) #18
  store ptr %i.r, ptr %3, align 8, !tbaa !16
  %i.bq = load i64, ptr %i.t, align 8
  %i.br = getelementptr inbounds i8, ptr %3, i64 %i.bq
  store ptr %i.s, ptr %i.br, align 8, !tbaa !16
  store i64 0, ptr %i.u, align 8, !tbaa !56
  br label %.body.i

common.resume:                                    ; preds = %bb.l, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.i, %.body.i ], [ %.pn, %bb.l ]
  resume { ptr, i32 } %common.resume.op

.body.i:                                          ; preds = %bb.f, %bb.e, %bb.c
  %.pn.pn.i = phi { ptr, i32 } [ %i.bp, %bb.f ], [ %i.bo, %bb.e ], [ %i.bf, %bb.c ]
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.m) #18
  br label %common.resume

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev.exit: ; preds = %bb.d
  %i.bs = load ptr, ptr %3, align 8, !tbaa !16
  %i.bt = getelementptr i8, ptr %i.bs, i64 -24
  %i.bu = load i64, ptr %i.bt, align 8
  %i.bv = getelementptr inbounds i8, ptr %3, i64 %i.bu
  %i.bw = load ptr, ptr %0, align 8, !tbaa !16
  %i.bx = getelementptr i8, ptr %i.bw, i64 -24
  %i.by = load i64, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds i8, ptr %0, i64 %i.by
  %i.ca = invoke noundef nonnull align 8 dereferenceable(264) ptr @_ZNSt9basic_iosIcSt11char_traitsIcEE7copyfmtERKS2_(ptr noundef nonnull align 8 dereferenceable(264) %i.bv, ptr noundef nonnull align 8 dereferenceable(264) %i.bz)
          to label %bb.g unwind label %bb.k       ; 0 uses

bb.g:                                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev.exit
  %i.cb = load double, ptr %i.as, align 8, !tbaa !11
  %i.cc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.v, double noundef %i.cb)
          to label %_ZNSolsEd.exit unwind label %bb.k ; 0 uses

_ZNSolsEd.exit:                                   ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !128)
  call void @llvm.experimental.noalias.scope.decl(metadata !129)
  store ptr %i.aj, ptr %4, align 8, !tbaa !44, !alias.scope !130
  store i64 0, ptr %i.ak, align 8, !tbaa !46, !alias.scope !130
  store i8 0, ptr %i.aj, align 8, !tbaa !12, !alias.scope !130
  %i.cd = load ptr, ptr %i.al, align 8, !tbaa !61, !noalias !130 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.cd, null
  %i.ce = load ptr, ptr %i.am, align 8, !noalias !130 ; 2 uses
  %i.cf = icmp ugt ptr %i.cd, %i.ce
  %.08.i.i.i = select i1 %i.cf, ptr %i.cd, ptr %i.ce ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZNSolsEd.exit
  %i.cg = load ptr, ptr %i.an, align 8, !tbaa !62, !noalias !130 ; 2 uses
  %i.ch = ptrtoint ptr %.08.i.i.i to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef %i.cg, i64 noundef %i.cj)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.cl = landingpad { ptr, i32 }
          cleanup
  %i.cm = load ptr, ptr %4, align 8, !tbaa !47, !alias.scope !130 ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.aj
  br i1 %i.cn, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.i
  %i.co = load i64, ptr %i.aj, align 8, !tbaa !12, !alias.scope !130
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cp) #20
  br label %.body

bb.j:                                             ; preds = %_ZNSolsEd.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.ag)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.i

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.j, %bb.h
  %i.cq = load i64, ptr %i.ak, align 8, !tbaa !46 ; 2 uses
  %.sroa.speculated = call i64 @llvm.smax.i64(i64 %.0115165, i64 %i.cq) ; 2 uses
  %i.cr = load ptr, ptr %4, align 8, !tbaa !47    ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.aj
  br i1 %i.cs, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ct = icmp ult i64 %i.cq, 16
  call void @llvm.assume(i1 %i.ct)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cu = load i64, ptr %i.aj, align 8, !tbaa !12
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  store ptr %i.ao, ptr %3, align 8, !tbaa !16
  %i.cw = load i64, ptr %i.aq, align 8
  %i.cx = getelementptr inbounds i8, ptr %3, i64 %i.cw
  store ptr %i.ap, ptr %i.cx, align 8, !tbaa !16
  store ptr %i.ar, ptr %i.v, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ac, align 8, !tbaa !16
  %i.cy = load ptr, ptr %i.ag, align 8, !tbaa !47 ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.ah
  br i1 %i.cz, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.da = load i64, ptr %i.ah, align 8, !tbaa !12
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.db) #20
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ac, align 8, !tbaa !16
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ae) #18
  store ptr %i.r, ptr %3, align 8, !tbaa !16
  %i.dc = load i64, ptr %i.t, align 8
  %i.dd = getelementptr inbounds i8, ptr %3, i64 %i.dc
  store ptr %i.s, ptr %i.dd, align 8, !tbaa !16
  store i64 0, ptr %i.u, align 8, !tbaa !56
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.m) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.de = add nuw nsw i64 %.076166, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.de, 4
  br i1 %exitcond.not, label %.loopexit, label %.preheader, !llvm.loop !127

bb.k:                                             ; preds = %bb.g, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev.exit
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.body:                                            ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.l

bb.l:                                             ; preds = %.body, %bb.k
  %.pn = phi { ptr, i32 } [ %i.cl, %.body ], [ %i.df, %bb.k ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %common.resume

.loopexit:                                        ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %.thread
  %.2 = phi i64 [ 0, %.thread ], [ %.sroa.speculated, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ] ; 5 uses
  %i.dg = load ptr, ptr %0, align 8, !tbaa !16
  %i.dh = getelementptr i8, ptr %i.dg, i64 -24
  %i.di = load i64, ptr %i.dh, align 8
  %i.dj = getelementptr inbounds i8, ptr %0, i64 %i.di ; 5 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !64
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 225 ; 2 uses
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !54, !range !65, !noundef !41
  %i.do = trunc nuw i8 %i.dn to i1
  br i1 %i.do, label %._crit_edge.i, label %bb.m

._crit_edge.i:                                    ; preds = %.loopexit
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 224
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !tbaa !53
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit

bb.m:                                             ; preds = %.loopexit
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dj, i64 240
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !34 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i, label %bb.n, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.n:                                             ; preds = %bb.m
  call void @_ZSt16__throw_bad_castv() #19
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.m
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 56
  %i.ds = load i8, ptr %i.dr, align 8, !tbaa !40
  %.not.i1.i.i = icmp eq i8 %i.ds, 0
  br i1 %.not.i1.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 89
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !12
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.p:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dq)
  %i.dv = load ptr, ptr %i.dq, align 8, !tbaa !16
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 48
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = call noundef signext i8 %i.dx(ptr noundef nonnull align 8 dereferenceable(570) %i.dq, i8 noundef signext 32), !inline_history !0
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i = phi i8 [ %i.du, %bb.o ], [ %i.dy, %bb.p ] ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dj, i64 224
  store i8 %.0.i.i.i, ptr %i.dz, align 8, !tbaa !53
  store i8 1, ptr %i.dm, align 1, !tbaa !54
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit: ; preds = %._crit_edge.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.ea = phi i8 [ %.pre.i, %._crit_edge.i ], [ %.0.i.i.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i ]
  %i.eb = load ptr, ptr %2, align 8, !tbaa !47
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !46
  %i.ee = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.eb, i64 noundef %i.ed) ; 0 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 64
  %5 = load ptr, ptr %i.ef, align 8, !tbaa !47
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 72
  %6 = load i64, ptr %i.eg, align 8, !tbaa !46
  %7 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %5, i64 noundef %6) ; 0 uses
  %.not84 = icmp eq i64 %.2, 0                    ; 2 uses
  br i1 %.not84, label %.split.us.preheader, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit.split

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit.split: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit
  %i.eh = load ptr, ptr %0, align 8, !tbaa !16    ; 3 uses
  %i.ei = getelementptr i8, ptr %i.eh, i64 -24
  %i.ej = load i64, ptr %i.ei, align 8
  %8 = getelementptr inbounds i8, ptr %0, i64 %i.ej ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.el = load i8, ptr %i.ek, align 8, !tbaa !66
  %i.em = getelementptr inbounds nuw i8, ptr %8, i64 225 ; 2 uses
  %i.en = load i8, ptr %i.em, align 1, !tbaa !54, !range !65, !noundef !41
  %i.eo = trunc nuw i8 %i.en to i1
  br i1 %i.eo, label %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit, label %bb.q

bb.q:                                             ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit.split
  %i.ep = getelementptr inbounds nuw i8, ptr %8, i64 240
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !34 ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.eq, null
  br i1 %.not.i.i.i.i, label %.split171, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i

.split171:                                        ; preds = %bb.q
  call void @_ZSt16__throw_bad_castv() #19
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i: ; preds = %bb.q
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 56
  %i.es = load i8, ptr %i.er, align 8, !tbaa !40
  %.not.i1.i.i.i = icmp eq i8 %i.es, 0
  br i1 %.not.i1.i.i.i, label %bb.r, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i

bb.r:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.eq)
  %i.et = load ptr, ptr %i.eq, align 8, !tbaa !16
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 48
  %i.ev = load ptr, ptr %i.eu, align 8
  %i.ew = call noundef signext i8 %i.ev(ptr noundef nonnull align 8 dereferenceable(570) %i.eq, i8 noundef signext 32), !inline_history !1 ; 0 uses
  %.pre.pre = load ptr, ptr %0, align 8, !tbaa !16
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i: ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i, %bb.r
  %.pre = phi ptr [ %i.eh, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i ], [ %.pre.pre, %bb.r ]
  store i8 1, ptr %i.em, align 1, !tbaa !54
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit

_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit.split, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i
  %i.ex = phi ptr [ %i.eh, %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit.split ], [ %.pre, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i ]
  %i.ey = getelementptr inbounds nuw i8, ptr %8, i64 224
  store i8 %i.el, ptr %i.ey, align 8, !tbaa !53
  %i.ez = getelementptr i8, ptr %i.ex, i64 -24
  %i.fa = load i64, ptr %i.ez, align 8
  %i.fb = getelementptr inbounds i8, ptr %0, i64 %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  store i64 %.2, ptr %i.fc, align 8, !tbaa !64
  %i.fd = load double, ptr %1, align 16, !tbaa !11
  %i.fe = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.fd) ; 0 uses
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 3 uses
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 3 uses
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 224 ; 3 uses
  %i.ff = load ptr, ptr %9, align 8, !tbaa !47
  %i.fg = load i64, ptr %10, align 8, !tbaa !46
  %i.fh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.ff, i64 noundef %i.fg) ; 0 uses
  %i.fi = load ptr, ptr %0, align 8, !tbaa !16    ; 3 uses
  %i.fj = getelementptr i8, ptr %i.fi, i64 -24
  %i.fk = load i64, ptr %i.fj, align 8
  %i.fl = getelementptr inbounds i8, ptr %0, i64 %i.fk ; 3 uses
  %i.fm = load i8, ptr %11, align 8, !tbaa !66
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 225 ; 2 uses
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !54, !range !65, !noundef !41
  %i.fp = trunc nuw i8 %i.fo to i1
  br i1 %i.fp, label %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit96, label %bb.s

.split.us.preheader:                              ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit
  %12 = load double, ptr %1, align 16, !tbaa !11
  %13 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %12) ; 0 uses
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 3 uses
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 3 uses
  %16 = load ptr, ptr %14, align 8, !tbaa !47
  %17 = load i64, ptr %15, align 8, !tbaa !46
  %18 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %16, i64 noundef %17) ; 0 uses
  %19 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %20 = load double, ptr %19, align 8, !tbaa !11
  %21 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %20) ; 0 uses
  %22 = load ptr, ptr %14, align 8, !tbaa !47
  %23 = load i64, ptr %15, align 8, !tbaa !46
  %24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %22, i64 noundef %23) ; 0 uses
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %26 = load double, ptr %25, align 16, !tbaa !11
  %27 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %26) ; 0 uses
  %28 = load ptr, ptr %14, align 8, !tbaa !47
  %29 = load i64, ptr %15, align 8, !tbaa !46
  %30 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %28, i64 noundef %29) ; 0 uses
  br label %.critedge

bb.s:                                             ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fl, i64 240
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !34 ; 5 uses
  %.not.i.i.i.i88 = icmp eq ptr %i.fr, null
  br i1 %.not.i.i.i.i88, label %bb.t, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i89

bb.t:                                             ; preds = %bb.x, %bb.v, %bb.s
  call void @_ZSt16__throw_bad_castv() #19
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i89: ; preds = %bb.s
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 56
  %i.ft = load i8, ptr %i.fs, align 8, !tbaa !40
  %.not.i1.i.i.i90 = icmp eq i8 %i.ft, 0
  br i1 %.not.i1.i.i.i90, label %bb.u, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i91

bb.u:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i89
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.fr)
  %i.fu = load ptr, ptr %i.fr, align 8, !tbaa !16
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 48
  %i.fw = load ptr, ptr %i.fv, align 8
  %i.fx = call noundef signext i8 %i.fw(ptr noundef nonnull align 8 dereferenceable(570) %i.fr, i8 noundef signext 32), !inline_history !1 ; 0 uses
  %.pre176.pre = load ptr, ptr %0, align 8, !tbaa !16
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i91

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i91: ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i89, %bb.u
  %.pre176 = phi ptr [ %i.fi, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i89 ], [ %.pre176.pre, %bb.u ]
  store i8 1, ptr %i.fn, align 1, !tbaa !54
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit96

_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit96: ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i91
  %i.fy = phi ptr [ %i.fi, %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit ], [ %.pre176, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i91 ]
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fl, i64 224
  store i8 %i.fm, ptr %i.fz, align 8, !tbaa !53
  %i.ga = getelementptr i8, ptr %i.fy, i64 -24
  %i.gb = load i64, ptr %i.ga, align 8
  %i.gc = getelementptr inbounds i8, ptr %0, i64 %i.gb
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  store i64 %.2, ptr %i.gd, align 8, !tbaa !64
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !11
  %i.gg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.gf) ; 0 uses
  %i.gh = load ptr, ptr %9, align 8, !tbaa !47
  %i.gi = load i64, ptr %10, align 8, !tbaa !46
  %i.gj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.gh, i64 noundef %i.gi) ; 0 uses
  %i.gk = load ptr, ptr %0, align 8, !tbaa !16    ; 3 uses
  %i.gl = getelementptr i8, ptr %i.gk, i64 -24
  %i.gm = load i64, ptr %i.gl, align 8
  %i.gn = getelementptr inbounds i8, ptr %0, i64 %i.gm ; 3 uses
  %i.go = load i8, ptr %11, align 8, !tbaa !66
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 225 ; 2 uses
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !54, !range !65, !noundef !41
  %i.gr = trunc nuw i8 %i.gq to i1
  br i1 %i.gr, label %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit96.1, label %bb.v

bb.v:                                             ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit96
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gn, i64 240
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !34 ; 5 uses
  %.not.i.i.i.i88.1 = icmp eq ptr %i.gt, null
  br i1 %.not.i.i.i.i88.1, label %bb.t, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i89.1

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i89.1: ; preds = %bb.v
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 56
  %i.gv = load i8, ptr %i.gu, align 8, !tbaa !40
  %.not.i1.i.i.i90.1 = icmp eq i8 %i.gv, 0
  br i1 %.not.i1.i.i.i90.1, label %bb.w, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i91.1

bb.w:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i89.1
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.gt)
  %i.gw = load ptr, ptr %i.gt, align 8, !tbaa !16
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 48
  %i.gy = load ptr, ptr %i.gx, align 8
  %i.gz = call noundef signext i8 %i.gy(ptr noundef nonnull align 8 dereferenceable(570) %i.gt, i8 noundef signext 32), !inline_history !1 ; 0 uses
  %.pre177.pre = load ptr, ptr %0, align 8, !tbaa !16
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i91.1

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i91.1: ; preds = %bb.w, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i89.1
  %.pre177 = phi ptr [ %.pre177.pre, %bb.w ], [ %i.gk, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i89.1 ]
  store i8 1, ptr %i.gp, align 1, !tbaa !54
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit96.1

_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit96.1: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i91.1, %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit96
  %i.ha = phi ptr [ %.pre177, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i91.1 ], [ %i.gk, %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit96 ]
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gn, i64 224
  store i8 %i.go, ptr %i.hb, align 8, !tbaa !53
  %i.hc = getelementptr i8, ptr %i.ha, i64 -24
  %i.hd = load i64, ptr %i.hc, align 8
  %i.he = getelementptr inbounds i8, ptr %0, i64 %i.hd
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  store i64 %.2, ptr %i.hf, align 8, !tbaa !64
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.hh = load double, ptr %i.hg, align 16, !tbaa !11
  %i.hi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.hh) ; 0 uses
  %i.hj = load ptr, ptr %9, align 8, !tbaa !47
  %i.hk = load i64, ptr %10, align 8, !tbaa !46
  %i.hl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.hj, i64 noundef %i.hk) ; 0 uses
  %i.hm = load ptr, ptr %0, align 8, !tbaa !16    ; 3 uses
  %i.hn = getelementptr i8, ptr %i.hm, i64 -24
  %i.ho = load i64, ptr %i.hn, align 8
  %i.hp = getelementptr inbounds i8, ptr %0, i64 %i.ho ; 3 uses
  %i.hq = load i8, ptr %11, align 8, !tbaa !66
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hp, i64 225 ; 2 uses
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !54, !range !65, !noundef !41
  %i.ht = trunc nuw i8 %i.hs to i1
  br i1 %i.ht, label %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit96.2, label %bb.x

bb.x:                                             ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit96.1
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hp, i64 240
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !34 ; 5 uses
  %.not.i.i.i.i88.2 = icmp eq ptr %i.hv, null
  br i1 %.not.i.i.i.i88.2, label %bb.t, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i89.2

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i89.2: ; preds = %bb.x
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 56
  %i.hx = load i8, ptr %i.hw, align 8, !tbaa !40
  %.not.i1.i.i.i90.2 = icmp eq i8 %i.hx, 0
  br i1 %.not.i1.i.i.i90.2, label %bb.y, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i91.2

bb.y:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i89.2
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.hv)
  %i.hy = load ptr, ptr %i.hv, align 8, !tbaa !16
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 48
  %i.ia = load ptr, ptr %i.hz, align 8
  %i.ib = call noundef signext i8 %i.ia(ptr noundef nonnull align 8 dereferenceable(570) %i.hv, i8 noundef signext 32), !inline_history !1 ; 0 uses
  %.pre178.pre = load ptr, ptr %0, align 8, !tbaa !16
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i91.2

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i91.2: ; preds = %bb.y, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i89.2
  %.pre178 = phi ptr [ %.pre178.pre, %bb.y ], [ %i.hm, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i89.2 ]
  store i8 1, ptr %i.hr, align 1, !tbaa !54
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit96.2

_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit96.2: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i91.2, %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit96.1
  %i.ic = phi ptr [ %.pre178, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i91.2 ], [ %i.hm, %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit96.1 ]
  %i.id = getelementptr inbounds nuw i8, ptr %i.hp, i64 224
  store i8 %i.hq, ptr %i.id, align 8, !tbaa !53
  %i.ie = getelementptr i8, ptr %i.ic, i64 -24
  %i.if = load i64, ptr %i.ie, align 8
  %i.ig = getelementptr inbounds i8, ptr %0, i64 %i.if
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  store i64 %.2, ptr %i.ih, align 8, !tbaa !64
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit96.2, %.split.us.preheader
  %31 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %32 = load double, ptr %31, align 8, !tbaa !11
  %33 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %32) ; 0 uses
  %34 = getelementptr inbounds nuw i8, ptr %2, i64 96
  %35 = load ptr, ptr %34, align 8, !tbaa !47
  %36 = getelementptr inbounds nuw i8, ptr %2, i64 104
  %37 = load i64, ptr %36, align 8, !tbaa !46
  %38 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %35, i64 noundef %37) ; 0 uses
  %39 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %40 = load ptr, ptr %39, align 8, !tbaa !47
  %41 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %42 = load i64, ptr %41, align 8, !tbaa !46
  %43 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %40, i64 noundef %42) ; 0 uses
  br i1 %.not118, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.critedge
  %i.ii = load ptr, ptr %0, align 8, !tbaa !16
  %i.ij = getelementptr i8, ptr %i.ii, i64 -24
  %i.ik = load i64, ptr %i.ij, align 8
  %i.il = getelementptr inbounds i8, ptr %0, i64 %i.ik
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  store i64 %.077, ptr %i.im, align 8, !tbaa !50
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.critedge
  br i1 %.not84, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.in = load ptr, ptr %0, align 8, !tbaa !16    ; 3 uses
  %i.io = getelementptr i8, ptr %i.in, i64 -24
  %i.ip = load i64, ptr %i.io, align 8
  %i.iq = getelementptr inbounds i8, ptr %0, i64 %i.ip ; 3 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 225 ; 2 uses
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !54, !range !65, !noundef !41
  %i.it = trunc nuw i8 %i.is to i1
  br i1 %i.it, label %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit106, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.iu = getelementptr inbounds nuw i8, ptr %i.iq, i64 240
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !34 ; 5 uses
  %.not.i.i.i.i98 = icmp eq ptr %i.iv, null
  br i1 %.not.i.i.i.i98, label %bb.ad, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i99

bb.ad:                                            ; preds = %bb.ac
  call void @_ZSt16__throw_bad_castv() #19
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i99: ; preds = %bb.ac
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 56
  %i.ix = load i8, ptr %i.iw, align 8, !tbaa !40
  %.not.i1.i.i.i100 = icmp eq i8 %i.ix, 0
  br i1 %.not.i1.i.i.i100, label %bb.ae, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i101

bb.ae:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i99
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.iv)
  %i.iy = load ptr, ptr %i.iv, align 8, !tbaa !16
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 48
  %i.ja = load ptr, ptr %i.iz, align 8
  %i.jb = call noundef signext i8 %i.ja(ptr noundef nonnull align 8 dereferenceable(570) %i.iv, i8 noundef signext 32), !inline_history !1 ; 0 uses
  %.pre179.pre = load ptr, ptr %0, align 8, !tbaa !16
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i101

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i101: ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i99, %bb.ae
  %.pre179 = phi ptr [ %i.in, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i99 ], [ %.pre179.pre, %bb.ae ]
  store i8 1, ptr %i.ir, align 1, !tbaa !54
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit106

_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit106: ; preds = %bb.ab, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i101
  %i.jc = phi ptr [ %i.in, %bb.ab ], [ %.pre179, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i101 ]
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iq, i64 224
  store i8 %i.ea, ptr %i.jd, align 8, !tbaa !53
  %i.je = getelementptr i8, ptr %i.jc, i64 -24
  %i.jf = load i64, ptr %i.je, align 8
  %i.jg = getelementptr inbounds i8, ptr %0, i64 %i.jf
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  store i64 %i.dl, ptr %i.jh, align 8, !tbaa !64
  br label %bb.af

bb.af:                                            ; preds = %bb.aa, %_ZNSt9basic_iosIcSt11char_traitsIcEE4fillEc.exit106
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN5Eigen8internal12print_matrixINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEERSoS4_RKT_RKNS_8IOFormatE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(236) %2) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 39 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 228
  %i.b = load i32, ptr %i.a, align 4, !tbaa !49   ; 3 uses
  switch i32 %i.b, label %bb.b [
    i32 -1, label %.thread
    i32 -2, label %.thread118
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = sext i32 %i.b to i64
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.thread, label %.thread118

.thread118:                                       ; preds = %bb.a, %bb.b
  %.078121 = phi i64 [ %i.c, %bb.b ], [ 15, %bb.a ]
  %i.d = load ptr, ptr %0, align 8, !tbaa !16
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !50
  store i64 %.078121, ptr %i.h, align 8, !tbaa !50
  br label %.thread

.thread:                                          ; preds = %bb.a, %.thread118, %bb.b
  %.not117 = phi i1 [ false, %.thread118 ], [ true, %bb.b ], [ true, %bb.a ]
  %.077 = phi i64 [ %i.i, %.thread118 ], [ 0, %bb.b ], [ 0, %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 232
  %i.k = load i32, ptr %i.j, align 8, !tbaa !51
  %i.l = and i32 %i.k, 1
  %.not81 = icmp eq i32 %i.l, 0
  br i1 %.not81, label %.preheader124, label %.loopexit

.preheader124:                                    ; preds = %.thread
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 344
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 352
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 353
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 360
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 5 uses
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 4 uses
  %i.t = getelementptr i8, ptr %i.r, i64 -24      ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 32), align 8 ; 2 uses
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 40), align 8
  %i.y = getelementptr i8, ptr %i.w, i64 -24
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 48), align 8
  %i.ab = getelementptr i8, ptr %i.z, i64 -24
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ao = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.aq = getelementptr i8, ptr %i.ao, i64 -24
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader124, %bb.c
  %.076167 = phi i64 [ 0, %.preheader124 ], [ %i.as, %bb.c ] ; 2 uses
  %.0114166 = phi i64 [ 0, %.preheader124 ], [ %.sroa.speculated, %bb.c ]
  %.idx.i = mul nuw nsw i64 %.076167, 24
  %invariant.gep = getelementptr i8, ptr %1, i64 %.idx.i
  br label %bb.d

bb.c:                                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.as = add nuw nsw i64 %.076167, 1             ; 2 uses
  %exitcond173.not = icmp eq i64 %i.as, 3
  br i1 %exitcond173.not, label %.loopexit, label %.preheader, !llvm.loop !131

bb.d:                                             ; preds = %.preheader, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %.075165 = phi i64 [ 0, %.preheader ], [ %i.de, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ] ; 2 uses
  %.1164 = phi i64 [ %.0114166, %.preheader ], [ %.sroa.speculated, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.m) #18
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.m, align 8, !tbaa !16
  store ptr null, ptr %i.n, align 8, !tbaa !52
  store i8 0, ptr %i.o, align 8, !tbaa !53
  store i8 0, ptr %i.p, align 1, !tbaa !54
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i8 0, i64 32, i1 false)
  store ptr %i.r, ptr %3, align 8, !tbaa !16
  %i.at = load i64, ptr %i.t, align 8
  %i.au = getelementptr inbounds i8, ptr %3, i64 %i.at
  store ptr %i.s, ptr %i.au, align 8, !tbaa !16
  store i64 0, ptr %i.u, align 8, !tbaa !56
  %i.av = load ptr, ptr %3, align 8, !tbaa !16
  %i.aw = getelementptr i8, ptr %i.av, i64 -24
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds i8, ptr %3, i64 %i.ax
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.ay, ptr noundef null)
          to label %.noexc.i unwind label %bb.g

.noexc.i:                                         ; preds = %bb.d
  store ptr %i.w, ptr %i.v, align 8, !tbaa !16
  %i.az = load i64, ptr %i.y, align 8
  %i.ba = getelementptr inbounds i8, ptr %i.v, i64 %i.az
  store ptr %i.x, ptr %i.ba, align 8, !tbaa !16
  %i.bb = load ptr, ptr %i.v, align 8, !tbaa !16
  %i.bc = getelementptr i8, ptr %i.bb, i64 -24
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = getelementptr inbounds i8, ptr %i.v, i64 %i.bd
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.be, ptr noundef null)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %.noexc.i
  %i.bf = landingpad { ptr, i32 }
          cleanup
  store ptr %i.r, ptr %3, align 8, !tbaa !16
  %i.bg = load i64, ptr %i.t, align 8
  %i.bh = getelementptr inbounds i8, ptr %3, i64 %i.bg
  store ptr %i.s, ptr %i.bh, align 8, !tbaa !16
  store i64 0, ptr %i.u, align 8, !tbaa !56
  br label %.body.i

bb.f:                                             ; preds = %.noexc.i
  %i.bi = load i64, ptr %i.ab, align 8
  %i.bj = getelementptr inbounds i8, ptr %3, i64 %i.bi
  store ptr %i.aa, ptr %i.bj, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %3, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 104), ptr %i.m, align 8, !tbaa !16
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16)>, ptr %i.v, align 8, !tbaa !16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ae) #18
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ac, align 8, !tbaa !16
  store i32 24, ptr %i.af, align 8, !tbaa !60
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !44
  store i64 0, ptr %i.ai, align 8, !tbaa !46
  store i8 0, ptr %i.ah, align 8, !tbaa !12
  %i.bk = load ptr, ptr %3, align 8, !tbaa !16
end_hunk_0
