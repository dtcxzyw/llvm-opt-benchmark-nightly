inline.NumInlined: 775
inline.NumDeleted: 123
begin_hunk_0_@_ZN2PP4Word7warningERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef signext i8 %i.n(ptr noundef nonnull align 8 dereferenceable(570) %i.g, i8 noundef signext 10), !inline_history !114
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi i8 [ %i.k, %bb.c ], [ %i.o, %bb.d ]
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i8 noundef signext %.0.i.i.i)
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p) ; 0 uses
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.62, i64 noundef 20) ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.t = load i32, ptr %i.s, align 4, !tbaa !42
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %i.t) ; 4 uses
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull @.str.46, i64 noundef 1) ; 0 uses
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !23
  %i.x = getelementptr i8, ptr %i.w, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %i.u, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 240
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !89 ; 6 uses
  %.not.i.i.i5 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i5, label %bb.e, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i6

bb.e:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  tail call void @_ZSt16__throw_bad_castv() #20
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i6: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !96
  %.not.i1.i.i7 = icmp eq i8 %i.ad, 0
  br i1 %.not.i1.i.i7, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i6
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 67
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !25
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit9

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i6
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ab)
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !23
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call noundef signext i8 %i.ai(ptr noundef nonnull align 8 dereferenceable(570) %i.ab, i8 noundef signext 10), !inline_history !114
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit9

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit9: ; preds = %bb.f, %bb.g
  %.0.i.i.i8 = phi i8 [ %i.af, %bb.f ], [ %i.aj, %bb.g ]
  %i.ak = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.u, i8 noundef signext %.0.i.i.i8)
  %i.al = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ak) ; 0 uses
  %i.am = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.47, i64 noundef 4) ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !40 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !41
  %i.ar = add nsw i32 %i.aq, -1
  %i.as = sext i32 %i.ar to i64                   ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !103, !noalias !149 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !111, !noalias !149
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !112, !noalias !149
  %i.az = ptrtoint ptr %i.au to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 5
  %i.bd = add nsw i64 %i.bc, %i.as                ; 5 uses
  %i.be = icmp sgt i64 %i.bd, -1
  br i1 %i.be, label %bb.h, label %bb.k

bb.h:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit9
  %i.bf = icmp samesign ult i64 %i.bd, 16
  br i1 %i.bf, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bg = getelementptr inbounds [32 x i8], ptr %i.au, i64 %i.as
  br label %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm.exit

bb.j:                                             ; preds = %bb.h
  %i.bh = lshr i64 %i.bd, 4
  br label %bb.l

bb.k:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit9
  %i.bi = ashr i64 %i.bd, 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bj = phi i64 [ %i.bh, %bb.j ], [ %i.bi, %bb.k ] ; 2 uses
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !113, !noalias !149
  %i.bm = shl nsw i64 %i.bj, 4
  %i.bn = sub nsw i64 %i.bd, %i.bm
  %i.bo = getelementptr inbounds [32 x i8], ptr %i.bl, i64 %i.bn
  br label %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm.exit

_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm.exit: ; preds = %bb.i, %bb.l
  %storemerge.i.i.i.i = phi ptr [ %i.bo, %bb.l ], [ %i.bg, %bb.i ] ; 2 uses
  %i.bp = load ptr, ptr %storemerge.i.i.i.i, align 8, !tbaa !18
  %i.bq = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !30
  %i.bs = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.bp, i64 noundef %i.br) ; 3 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !23
  %i.bu = getelementptr i8, ptr %i.bt, i64 -24
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds i8, ptr %i.bs, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 240
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !89 ; 6 uses
  %.not.i.i.i10 = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i10, label %bb.m, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i11

bb.m:                                             ; preds = %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm.exit
  tail call void @_ZSt16__throw_bad_castv() #20
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i11: ; preds = %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 56
  %i.ca = load i8, ptr %i.bz, align 8, !tbaa !96
  %.not.i1.i.i12 = icmp eq i8 %i.ca, 0
  br i1 %.not.i1.i.i12, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i11
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 67
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !25
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit14

bb.o:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i11
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.by)
  %i.cd = load ptr, ptr %i.by, align 8, !tbaa !23
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 48
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = tail call noundef signext i8 %i.cf(ptr noundef nonnull align 8 dereferenceable(570) %i.by, i8 noundef signext 10), !inline_history !114
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit14

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit14: ; preds = %bb.n, %bb.o
  %.0.i.i.i13 = phi i8 [ %i.cc, %bb.n ], [ %i.cg, %bb.o ]
  %i.ch = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, i8 noundef signext %.0.i.i.i13)
  %i.ci = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ch) ; 0 uses
  %i.cj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.48, i64 noundef 9) ; 0 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !18
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !30
  %i.co = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.cl, i64 noundef %i.cn) ; 3 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !23
  %i.cq = getelementptr i8, ptr %i.cp, i64 -24
  %i.cr = load i64, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds i8, ptr %i.co, i64 %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 240
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !89 ; 6 uses
  %.not.i.i.i15 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i15, label %bb.p, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i16

bb.p:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit14
  tail call void @_ZSt16__throw_bad_castv() #20
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i16: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit14
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 56
  %i.cw = load i8, ptr %i.cv, align 8, !tbaa !96
  %.not.i1.i.i17 = icmp eq i8 %i.cw, 0
  br i1 %.not.i1.i.i17, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i16
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 67
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !25
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit19

bb.r:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i16
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.cu)
  %i.cz = load ptr, ptr %i.cu, align 8, !tbaa !23
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 48
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = tail call noundef signext i8 %i.db(ptr noundef nonnull align 8 dereferenceable(570) %i.cu, i8 noundef signext 10), !inline_history !114
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit19

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit19: ; preds = %bb.q, %bb.r
  %.0.i.i.i18 = phi i8 [ %i.cy, %bb.q ], [ %i.dc, %bb.r ]
  %i.dd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.co, i8 noundef signext %.0.i.i.i18)
  %i.de = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dd) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN2PP4Word12negate_valueEv(ptr noundef nonnull align 8 dereferenceable(128) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !30   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !39
  %i.e = and i32 %i.d, -2
  %switch = icmp eq i32 %i.e, 2
  br i1 %switch, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.f = trunc i64 %i.b to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 37
  store i8 0, ptr %i.g, align 1, !tbaa !20
  %i.h = icmp sgt i32 %i.f, 0
  %.pre = load ptr, ptr %0, align 8, !tbaa !18, !noalias !152 ; 3 uses
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %wide.trip.count = and i64 %i.b, 2147483647
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.pre, i64 %indvars.iv
  %i.j = load i8, ptr %i.i, align 1, !tbaa !25
  switch i8 %i.j, label %._crit_edge [
    i8 32, label %bb.d
    i8 9, label %bb.d
    i8 45, label %.critedge
  ]

.critedge:                                        ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.pre, i64 %indvars.iv
  store i8 32, ptr %i.k, align 1, !tbaa !25
  br label %bb.h

bb.d:                                             ; preds = %bb.c, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !155

._crit_edge:                                      ; preds = %bb.d, %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  store ptr %i.l, ptr %1, align 8, !tbaa !29, !alias.scope !156
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store i64 0, ptr %i.m, align 8, !tbaa !30, !alias.scope !156
  store i8 0, ptr %i.l, align 8, !tbaa !25, !alias.scope !156
  %i.n = add i64 %i.b, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.n)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.o = load i64, ptr %i.m, align 8, !tbaa !30, !alias.scope !156
  %i.p = icmp eq i64 %i.o, 4611686018427387903
  br i1 %i.p, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.e
  %i.q = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.17, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.f ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.r = load i64, ptr %i.m, align 8, !tbaa !30, !alias.scope !156
  %i.s = sub i64 4611686018427387903, %i.r
  %i.t = icmp ult i64 %i.s, %i.b
  br i1 %i.t, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #20
          to label %.cont.i.i unwind label %bb.f

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.u = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %.pre, i64 noundef %i.b)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %._crit_edge
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = load ptr, ptr %1, align 8, !tbaa !18, !alias.scope !156 ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.l
  br i1 %i.x, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.f
  %i.y = load i64, ptr %i.l, align 8, !tbaa !25, !alias.scope !156
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #18
  br label %common.resume

common.resume:                                    ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %common.resume.op = phi { ptr, i32 } [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14 ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.v, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.aa = load ptr, ptr %1, align 8, !tbaa !18    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.l
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.ac = load i64, ptr %i.l, align 8, !tbaa !25
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %bb.h

bb.g:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = load ptr, ptr %1, align 8, !tbaa !18    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.l
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.g
  %i.ah = load i64, ptr %i.l, align 8, !tbaa !25
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %common.resume

bb.h:                                             ; preds = %bb.a, %.critedge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isalpha(i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @tolower(i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #12

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #13

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIlEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #13

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #16

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind memory(readwrite, inaccessiblemem: read, target_mem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #17 = { nounwind }
attributes #18 = { builtin nounwind }
attributes #19 = { nounwind willreturn memory(read) }
attributes #20 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !16, i64 36}
!9 = !{!"_ZTSN2PP4WordE", !10, i64 0, !15, i64 32, !16, i64 36, !16, i64 37, !5, i64 40, !5, i64 44, !10, i64 48, !5, i64 80, !5, i64 84, !10, i64 88, !17, i64 120}
!10 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0, !14, i64 8, !6, i64 16}
!11 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !12, i64 0}
!12 = !{!"p1 omnipotent char", !13, i64 0}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!"long", !6, i64 0}
!15 = !{!"_ZTSN2PP8WordTypeE", !6, i64 0}
!16 = !{!"bool", !6, i64 0}
!17 = !{!"p1 _ZTSSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !13, i64 0}
!18 = !{!10, !12, i64 0}
!19 = distinct !{null}
!20 = !{!9, !16, i64 37}
!21 = !{i8 0, i8 2}
!22 = !{}
!23 = !{!24, !24, i64 0}
!24 = !{!"vtable pointer", !7, i64 0}
!25 = !{!6, !6, i64 0}
!26 = !{!27, !14, i64 8}
!27 = !{!"_ZTSSi", !14, i64 8}
!28 = !{!14, !14, i64 0}
!29 = !{!11, !12, i64 0}
!30 = !{!10, !14, i64 8}
!31 = distinct !{null}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.mustprogress"}
!34 = distinct !{!34, !33}
!35 = !{!36}
!36 = distinct !{!36, !37, !"_ZNK2PP4Word17convertFromStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_: argument 0"}
!37 = distinct !{!37, !"_ZNK2PP4Word17convertFromStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_"}
!38 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!39 = !{!9, !15, i64 32}
!40 = !{!9, !17, i64 120}
!41 = !{!9, !5, i64 80}
!42 = !{!9, !5, i64 84}
!43 = !{!9, !5, i64 40}
!44 = !{!9, !5, i64 44}
!45 = distinct !{!45, !33}
!46 = distinct !{!46, !33}
!47 = distinct !{!47, !33}
!48 = !{!49, !14, i64 8}
!49 = !{!"_ZTSSt8ios_base", !14, i64 8, !14, i64 16, !50, i64 24, !51, i64 28, !51, i64 32, !52, i64 40, !53, i64 48, !6, i64 64, !5, i64 192, !54, i64 200, !55, i64 208}
!50 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!51 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!52 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !13, i64 0}
!53 = !{!"_ZTSNSt8ios_base6_WordsE", !13, i64 0, !14, i64 8}
!54 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !13, i64 0}
!55 = !{!"_ZTSSt6locale", !56, i64 0}
!56 = !{!"p1 _ZTSNSt6locale5_ImplE", !13, i64 0}
!57 = !{!58}
!58 = distinct !{!58, !59, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!59 = distinct !{!59, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!60 = !{!61}
!61 = distinct !{!61, !62, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!62 = distinct !{!62, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!63 = !{!61, !58}
!64 = !{!65, !12, i64 40}
!65 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !55, i64 56}
!66 = !{!65, !12, i64 32}
!67 = !{!68}
!68 = distinct !{!68, !69, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!69 = distinct !{!69, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!72 = distinct !{!72, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!73 = !{!71, !68}
!74 = !{!75}
!75 = distinct !{!75, !76, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!76 = distinct !{!76, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!77 = !{!78}
!78 = distinct !{!78, !79, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!79 = distinct !{!79, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!80 = !{!78, !75}
!81 = distinct !{!81, !33}
!82 = distinct !{!82, !33}
!83 = distinct !{!83, !33}
!84 = distinct !{!84, !33}
!85 = distinct !{!85, !33}
!86 = distinct !{!86, !33}
!87 = distinct !{!87, !33}
!88 = distinct !{!88, !33}
!89 = !{!90, !93, i64 240}
!90 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !49, i64 0, !91, i64 216, !6, i64 224, !16, i64 225, !92, i64 232, !93, i64 240, !94, i64 248, !95, i64 256}
!91 = !{!"p1 _ZTSSo", !13, i64 0}
!92 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !13, i64 0}
!93 = !{!"p1 _ZTSSt5ctypeIcE", !13, i64 0}
!94 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !13, i64 0}
!95 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !13, i64 0}
!96 = !{!97, !6, i64 56}
!97 = !{!"_ZTSSt5ctypeIcE", !98, i64 0, !99, i64 16, !16, i64 24, !100, i64 32, !100, i64 40, !101, i64 48, !6, i64 56, !6, i64 57, !6, i64 313, !6, i64 569}
!98 = !{!"_ZTSNSt6locale5facetE", !5, i64 8}
!99 = !{!"p1 _ZTS15__locale_struct", !13, i64 0}
!100 = !{!"p1 int", !13, i64 0}
!101 = !{!"p1 short", !13, i64 0}
!102 = distinct !{null, null}
!103 = !{!104, !105, i64 0}
!104 = !{!"_ZTSSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_E", !105, i64 0, !105, i64 8, !105, i64 16, !106, i64 24}
!105 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0}
!106 = !{!"p2 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !107, i64 0}
!107 = !{!"any p2 pointer", !13, i64 0}
!108 = !{!109}
!109 = distinct !{!109, !110, !"_ZStplRKSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_El: argument 0"}
!110 = distinct !{!110, !"_ZStplRKSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_El"}
!111 = !{!104, !105, i64 8}
!112 = !{!104, !106, i64 24}
!113 = !{!105, !105, i64 0}
!114 = distinct !{null, null, null, null}
!115 = !{!116}
!116 = distinct !{!116, !117, !"_ZStplRKSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_El: argument 0"}
!117 = distinct !{!117, !"_ZStplRKSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_El"}
!118 = distinct !{!118, !33}
!119 = !{!120}
!120 = distinct !{!120, !121, !"_ZStplRKSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_El: argument 0"}
!121 = distinct !{!121, !"_ZStplRKSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_El"}
!122 = !{!123}
!123 = distinct !{!123, !124, !"_ZStplRKSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_El: argument 0"}
!124 = distinct !{!124, !"_ZStplRKSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_El"}
!125 = distinct !{!125, !33}
!126 = !{!127}
!127 = distinct !{!127, !128, !"_ZStplRKSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_El: argument 0"}
!128 = distinct !{!128, !"_ZStplRKSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_El"}
!129 = !{!130}
!130 = distinct !{!130, !131, !"_ZStplRKSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_El: argument 0"}
!131 = distinct !{!131, !"_ZStplRKSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_El"}
!132 = distinct !{!132, !33}
!133 = !{!134}
!134 = distinct !{!134, !135, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!135 = distinct !{!135, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!136 = !{!137}
!137 = distinct !{!137, !138, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!138 = distinct !{!138, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!139 = !{!137, !134}
!140 = !{!141}
!141 = distinct !{!141, !142, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!142 = distinct !{!142, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!143 = !{!144}
!144 = distinct !{!144, !145, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!145 = distinct !{!145, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!146 = !{!147}
!147 = distinct !{!147, !148, !"_ZStplRKSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_El: argument 0"}
!148 = distinct !{!148, !"_ZStplRKSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_El"}
!149 = !{!150}
!150 = distinct !{!150, !151, !"_ZStplRKSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_El: argument 0"}
!151 = distinct !{!151, !"_ZStplRKSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_El"}
!152 = !{!153}
!153 = distinct !{!153, !154, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!154 = distinct !{!154, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!155 = distinct !{!155, !33}
!156 = !{!157, !153}
!157 = distinct !{!157, !158, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!158 = distinct !{!158, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
end_hunk_0
