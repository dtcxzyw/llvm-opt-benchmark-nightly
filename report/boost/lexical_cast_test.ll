Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/lexical_cast_test?download=true
inline.NumInlined: 4748
inline.NumDeleted: 1558
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_Z34test_conversion_with_nonconst_charv:_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ap = load i8, ptr %i.am, align 1
  store i8 %i.ap, ptr %i.an, align 1
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef 1) #35
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 2 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #33
  %i.ar = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.an) #33 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ar
  %i.at = icmp samesign eq i64 %i.ar, 0
  br i1 %i.at, label %_ZN5boost10conversion6detail19try_lexical_convertIiPhEEbRKT0_RT_.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %.noexc46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  store i32 0, ptr %i.c, align 4, !tbaa !80
  %i.au = load i8, ptr %i.an, align 1, !tbaa !25  ; 2 uses
  %i.av = icmp eq i8 %i.au, 45
  switch i8 %i.au, label %bb.h [
    i8 45, label %bb.g
    i8 43, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aw = phi ptr [ %i.an, %bb.f ], [ %i.ao, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  store i8 0, ptr %5, align 8, !tbaa !85
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 1, ptr %i.ax, align 4, !tbaa !86
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.c, ptr %i.ay, align 8, !tbaa !87
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.aw, ptr %i.az, align 8, !tbaa !88
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.as, ptr %i.ba, align 8, !tbaa !89
  %i.bb = invoke noundef zeroext i1 @_ZN5boost6detail18lcast_ret_unsignedISt11char_traitsIcEjcE7convertEv(ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %.noexc50 unwind label %bb.y   ; 2 uses

.noexc50:                                         ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  %i.bc = load i32, ptr %i.c, align 4             ; 4 uses
  br i1 %i.av, label %_ZN5boost10conversion6detail19try_lexical_convertIiPhEEbRKT0_RT_.exit.i, label %.split.i48

.split.i48:                                       ; preds = %.noexc50
  %i.bd = icmp sgt i32 %i.bc, -1
  %i.be = select i1 %i.bb, i1 %i.bd, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  br i1 %i.be, label %_ZN5boost12lexical_castIiPhEET_RKT0_.exit, label %_ZN5boost10conversion6detail19try_lexical_convertIiPhEEbRKT0_RT_.exit.thread.i

_ZN5boost10conversion6detail19try_lexical_convertIiPhEEbRKT0_RT_.exit.i: ; preds = %.noexc50
  %i.bf = icmp ult i32 %i.bc, -2147483647
  %i.bg = select i1 %i.bb, i1 %i.bf, i1 false
  %i.bh = sub i32 0, %i.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  br i1 %i.bg, label %_ZN5boost12lexical_castIiPhEET_RKT0_.exit, label %_ZN5boost10conversion6detail19try_lexical_convertIiPhEEbRKT0_RT_.exit.thread.i

_ZN5boost10conversion6detail19try_lexical_convertIiPhEEbRKT0_RT_.exit.thread.i: ; preds = %.noexc46, %_ZN5boost10conversion6detail19try_lexical_convertIiPhEEbRKT0_RT_.exit.i, %.split.i48
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %4, align 8, !tbaa !37
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @_ZTIPh, ptr %i.bi, align 8, !tbaa !42
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @_ZTIi, ptr %i.bj, align 8, !tbaa !43
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %4) #34
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_ZN5boost10conversion6detail19try_lexical_convertIiPhEEbRKT0_RT_.exit.thread.i
  unreachable

bb.j:                                             ; preds = %_ZN5boost10conversion6detail19try_lexical_convertIiPhEEbRKT0_RT_.exit.thread.i
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %.body51

_ZN5boost12lexical_castIiPhEET_RKT0_.exit:        ; preds = %_ZN5boost10conversion6detail19try_lexical_convertIiPhEEbRKT0_RT_.exit.i, %.split.i48
  %.03.i49 = phi i32 [ %i.bc, %.split.i48 ], [ %i.bh, %_ZN5boost10conversion6detail19try_lexical_convertIiPhEEbRKT0_RT_.exit.i ]
  store i32 %.03.i49, ptr %i.g, align 4, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #33
  store i32 1, ptr %i.h, align 4, !tbaa !80
  %i.bl = invoke noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqEiiEEbT_PKcS5_S5_iS5_RKT0_RKT1_(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.2, i32 noundef 134, ptr noundef nonnull @__PRETTY_FUNCTION__._Z34test_conversion_with_nonconst_charv, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.h)
          to label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i54 unwind label %bb.z ; 0 uses

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i54: ; preds = %_ZN5boost12lexical_castIiPhEET_RKT0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #33
  %i.bm = invoke noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #38
          to label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i64 unwind label %_ZNSt6vectorIwSaIwEED2Ev.exit107 ; 5 uses

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i64: ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i54
  store i8 49, ptr %i.bm, align 1, !tbaa !25
  %i.bn = invoke noalias noundef nonnull dereferenceable(2) ptr @_Znwm(i64 noundef 2) #38
          to label %.noexc71 unwind label %bb.aa  ; 11 uses

.noexc71:                                         ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 1 ; 2 uses
  store i8 0, ptr %i.bo, align 1, !tbaa !25
  %i.bp = load i8, ptr %i.bm, align 1
  store i8 %i.bp, ptr %i.bn, align 1
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef 1) #35
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 2 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #33
  %i.br = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bn) #33 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.br
  %i.bt = icmp samesign eq i64 %i.br, 0
  br i1 %i.bt, label %_ZN5boost10conversion6detail19try_lexical_convertIiPhEEbRKT0_RT_.exit.thread.i76, label %bb.k

bb.k:                                             ; preds = %.noexc71
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store i32 0, ptr %i.b, align 4, !tbaa !80
  %i.bu = load i8, ptr %i.bn, align 1, !tbaa !25  ; 2 uses
  %i.bv = icmp eq i8 %i.bu, 45
  switch i8 %i.bu, label %bb.m [
    i8 45, label %bb.l
    i8 43, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k, %bb.k
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bw = phi ptr [ %i.bn, %bb.k ], [ %i.bo, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  store i8 0, ptr %3, align 8, !tbaa !85
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 1, ptr %i.bx, align 4, !tbaa !86
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.b, ptr %i.by, align 8, !tbaa !87
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.bw, ptr %i.bz, align 8, !tbaa !88
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.bs, ptr %i.ca, align 8, !tbaa !89
  %i.cb = invoke noundef zeroext i1 @_ZN5boost6detail18lcast_ret_unsignedISt11char_traitsIcEjcE7convertEv(ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.noexc77 unwind label %bb.ab  ; 2 uses

.noexc77:                                         ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.cc = load i32, ptr %i.b, align 4             ; 4 uses
  br i1 %i.bv, label %_ZN5boost10conversion6detail19try_lexical_convertIiPhEEbRKT0_RT_.exit.i75, label %.split.i73

.split.i73:                                       ; preds = %.noexc77
  %i.cd = icmp sgt i32 %i.cc, -1
  %i.ce = select i1 %i.cb, i1 %i.cd, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  br i1 %i.ce, label %_ZN5boost12lexical_castIiPhEET_RKT0_.exit80, label %_ZN5boost10conversion6detail19try_lexical_convertIiPhEEbRKT0_RT_.exit.thread.i76

_ZN5boost10conversion6detail19try_lexical_convertIiPhEEbRKT0_RT_.exit.i75: ; preds = %.noexc77
  %i.cf = icmp ult i32 %i.cc, -2147483647
  %i.cg = select i1 %i.cb, i1 %i.cf, i1 false
  %i.ch = sub i32 0, %i.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  br i1 %i.cg, label %_ZN5boost12lexical_castIiPhEET_RKT0_.exit80, label %_ZN5boost10conversion6detail19try_lexical_convertIiPhEEbRKT0_RT_.exit.thread.i76

_ZN5boost10conversion6detail19try_lexical_convertIiPhEEbRKT0_RT_.exit.thread.i76: ; preds = %.noexc71, %_ZN5boost10conversion6detail19try_lexical_convertIiPhEEbRKT0_RT_.exit.i75, %.split.i73
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %2, align 8, !tbaa !37
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @_ZTIPh, ptr %i.ci, align 8, !tbaa !42
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr @_ZTIi, ptr %i.cj, align 8, !tbaa !43
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %2) #34
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %_ZN5boost10conversion6detail19try_lexical_convertIiPhEEbRKT0_RT_.exit.thread.i76
  unreachable

bb.o:                                             ; preds = %_ZN5boost10conversion6detail19try_lexical_convertIiPhEEbRKT0_RT_.exit.thread.i76
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %.body78

_ZN5boost12lexical_castIiPhEET_RKT0_.exit80:      ; preds = %_ZN5boost10conversion6detail19try_lexical_convertIiPhEEbRKT0_RT_.exit.i75, %.split.i73
  %.03.i74 = phi i32 [ %i.cc, %.split.i73 ], [ %i.ch, %_ZN5boost10conversion6detail19try_lexical_convertIiPhEEbRKT0_RT_.exit.i75 ]
  store i32 %.03.i74, ptr %i.i, align 4, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #33
  store i32 1, ptr %i.j, align 4, !tbaa !80
  %i.cl = invoke noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqEiiEEbT_PKcS5_S5_iS5_RKT0_RKT1_(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.2, i32 noundef 139, ptr noundef nonnull @__PRETTY_FUNCTION__._Z34test_conversion_with_nonconst_charv, ptr noundef nonnull align 4 dereferenceable(4) %i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.j)
          to label %_ZNKSt6vectorIwSaIwEE12_M_check_lenEmPKc.exit.i.i.i unwind label %bb.ac ; 0 uses

_ZNKSt6vectorIwSaIwEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %_ZN5boost12lexical_castIiPhEET_RKT0_.exit80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #33
  %i.cm = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #38
          to label %_ZNKSt6vectorIwSaIwEE12_M_check_lenEmPKc.exit.i.i.i88 unwind label %bb.ag ; 4 uses

_ZNKSt6vectorIwSaIwEE12_M_check_lenEmPKc.exit.i.i.i88: ; preds = %_ZNKSt6vectorIwSaIwEE12_M_check_lenEmPKc.exit.i.i.i
  store i32 49, ptr %i.cm, align 4, !tbaa !91
  %i.cn = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #38
          to label %.noexc95 unwind label %bb.ad  ; 9 uses

.noexc95:                                         ; preds = %_ZNKSt6vectorIwSaIwEE12_M_check_lenEmPKc.exit.i.i.i88
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 4 ; 2 uses
  store i32 0, ptr %i.co, align 4, !tbaa !91
  store i32 49, ptr %i.cn, align 4
  call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef 4) #35
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #33
  %i.cq = call noundef i64 @wcslen(ptr noundef nonnull %i.cn) #37 ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.cq, 2
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.idx.i.i.i
  %i.cs = icmp eq i64 %i.cq, 0
  br i1 %i.cs, label %_ZN5boost10conversion6detail19try_lexical_convertIiPwEEbRKT0_RT_.exit.thread.i, label %bb.p

bb.p:                                             ; preds = %.noexc95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i32 0, ptr %i.a, align 4, !tbaa !80
  %i.ct = load i32, ptr %i.cn, align 4, !tbaa !91 ; 2 uses
  %i.cu = icmp eq i32 %i.ct, 45
  switch i32 %i.ct, label %bb.r [
    i32 45, label %bb.q
    i32 43, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p, %bb.p
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cv = phi ptr [ %i.cn, %bb.p ], [ %i.co, %bb.q ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  store i8 0, ptr %1, align 8, !tbaa !94
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 1, ptr %i.cw, align 4, !tbaa !95
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %i.cx, align 8, !tbaa !87
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.cv, ptr %i.cy, align 8, !tbaa !96
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.cr, ptr %i.cz, align 8, !tbaa !97
  %i.da = invoke noundef zeroext i1 @_ZN5boost6detail18lcast_ret_unsignedISt11char_traitsIwEjwE7convertEv(ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %.noexc99 unwind label %bb.ae  ; 2 uses

.noexc99:                                         ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  %i.db = load i32, ptr %i.a, align 4             ; 4 uses
  br i1 %i.cu, label %_ZN5boost10conversion6detail19try_lexical_convertIiPwEEbRKT0_RT_.exit.i, label %.split.i97

.split.i97:                                       ; preds = %.noexc99
  %i.dc = icmp sgt i32 %i.db, -1
  %i.dd = select i1 %i.da, i1 %i.dc, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br i1 %i.dd, label %_ZN5boost12lexical_castIiPwEET_RKT0_.exit, label %_ZN5boost10conversion6detail19try_lexical_convertIiPwEEbRKT0_RT_.exit.thread.i

_ZN5boost10conversion6detail19try_lexical_convertIiPwEEbRKT0_RT_.exit.i: ; preds = %.noexc99
  %i.de = icmp ult i32 %i.db, -2147483647
  %i.df = select i1 %i.da, i1 %i.de, i1 false
  %i.dg = sub i32 0, %i.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br i1 %i.df, label %_ZN5boost12lexical_castIiPwEET_RKT0_.exit, label %_ZN5boost10conversion6detail19try_lexical_convertIiPwEEbRKT0_RT_.exit.thread.i

_ZN5boost10conversion6detail19try_lexical_convertIiPwEEbRKT0_RT_.exit.thread.i: ; preds = %.noexc95, %_ZN5boost10conversion6detail19try_lexical_convertIiPwEEbRKT0_RT_.exit.i, %.split.i97
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #33
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %0, align 8, !tbaa !37
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_ZTIPw, ptr %i.dh, align 8, !tbaa !42
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @_ZTIi, ptr %i.di, align 8, !tbaa !43
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %0) #34
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %_ZN5boost10conversion6detail19try_lexical_convertIiPwEEbRKT0_RT_.exit.thread.i
  unreachable

bb.t:                                             ; preds = %_ZN5boost10conversion6detail19try_lexical_convertIiPwEEbRKT0_RT_.exit.thread.i
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #33
  br label %.body100

_ZN5boost12lexical_castIiPwEET_RKT0_.exit:        ; preds = %_ZN5boost10conversion6detail19try_lexical_convertIiPwEEbRKT0_RT_.exit.i, %.split.i97
  %.03.i98 = phi i32 [ %i.db, %.split.i97 ], [ %i.dg, %_ZN5boost10conversion6detail19try_lexical_convertIiPwEEbRKT0_RT_.exit.i ]
  store i32 %.03.i98, ptr %i.k, align 4, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #33
  store i32 1, ptr %i.l, align 4, !tbaa !80
  %i.dk = invoke noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqEiiEEbT_PKcS5_S5_iS5_RKT0_RKT1_(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.2, i32 noundef 145, ptr noundef nonnull @__PRETTY_FUNCTION__._Z34test_conversion_with_nonconst_charv, ptr noundef nonnull align 4 dereferenceable(4) %i.k, ptr noundef nonnull align 4 dereferenceable(4) %i.l)
          to label %_ZNSt6vectorIcSaIcEED2Ev.exit unwind label %bb.af ; 0 uses

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %_ZN5boost12lexical_castIiPwEET_RKT0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #33
  call void @_ZdlPvm(ptr noundef nonnull %i.cn, i64 noundef 8) #35
  call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef 2) #35
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef 2) #35
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef 2) #35
  ret void

bb.u:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i
  %i.dl = landingpad { ptr, i32 }
          cleanup
  %i.dm = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit113

bb.v:                                             ; preds = %bb.c
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.w:                                             ; preds = %_ZN5boost12lexical_castIiPcEET_RKT0_.exit
  %i.do = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #33
  br label %.body

.body:                                            ; preds = %bb.v, %bb.e, %bb.w
  %.pn = phi { ptr, i32 } [ %i.do, %bb.w ], [ %i.dn, %bb.v ], [ %i.ak, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit113

bb.x:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i39
  %i.dp = landingpad { ptr, i32 }
          cleanup
  %i.dq = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  br label %bb.aj

bb.y:                                             ; preds = %bb.h
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %.body51

bb.z:                                             ; preds = %_ZN5boost12lexical_castIiPhEET_RKT0_.exit
  %i.ds = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #33
  br label %.body51

.body51:                                          ; preds = %bb.y, %bb.j, %bb.z
  %.pn10 = phi { ptr, i32 } [ %i.ds, %bb.z ], [ %i.dr, %bb.y ], [ %i.bk, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #33
  br label %bb.aj

bb.aa:                                            ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i64
  %i.dt = landingpad { ptr, i32 }
          cleanup
  %i.du = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  br label %bb.ai

bb.ab:                                            ; preds = %bb.m
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %.body78

bb.ac:                                            ; preds = %_ZN5boost12lexical_castIiPhEET_RKT0_.exit80
  %i.dw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #33
  br label %.body78

.body78:                                          ; preds = %bb.ab, %bb.o, %bb.ac
  %.pn12 = phi { ptr, i32 } [ %i.dw, %bb.ac ], [ %i.dv, %bb.ab ], [ %i.ck, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #33
  br label %bb.ai

bb.ad:                                            ; preds = %_ZNKSt6vectorIwSaIwEE12_M_check_lenEmPKc.exit.i.i.i88
  %i.dx = landingpad { ptr, i32 }
          cleanup
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  br label %bb.ah

bb.ae:                                            ; preds = %bb.r
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %.body100

bb.af:                                            ; preds = %_ZN5boost12lexical_castIiPwEET_RKT0_.exit
  %i.ea = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #33
  br label %.body100

.body100:                                         ; preds = %bb.ae, %bb.t, %bb.af
  %.pn14 = phi { ptr, i32 } [ %i.ea, %bb.af ], [ %i.dz, %bb.ae ], [ %i.dj, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #33
  br label %bb.ah

bb.ag:                                            ; preds = %_ZNKSt6vectorIwSaIwEE12_M_check_lenEmPKc.exit.i.i.i
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ad, %.body100
  %.sroa.0.0.ph = phi ptr [ %i.cn, %.body100 ], [ %i.cm, %bb.ad ] ; 2 uses
  %.sroa.17.0.ph = phi ptr [ %i.cp, %.body100 ], [ %i.dy, %bb.ad ]
  %.pn14.pn.ph = phi { ptr, i32 } [ %.pn14, %.body100 ], [ %i.dx, %bb.ad ]
  %i.ec = ptrtoint ptr %.sroa.17.0.ph to i64
  %i.ed = ptrtoint ptr %.sroa.0.0.ph to i64
  %i.ee = sub i64 %i.ec, %i.ed
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0.ph, i64 noundef %i.ee) #35
  br label %bb.ai

_ZNSt6vectorIwSaIwEED2Ev.exit107:                 ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i54
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ai:                                            ; preds = %bb.aa, %.body78, %bb.ag, %bb.ah
  %.sroa.0132.0.ph = phi ptr [ %i.bn, %bb.ah ], [ %i.bn, %bb.ag ], [ %i.bn, %.body78 ], [ %i.bm, %bb.aa ] ; 2 uses
  %.sroa.19.0.ph = phi ptr [ %i.bq, %bb.ah ], [ %i.bq, %bb.ag ], [ %i.bq, %.body78 ], [ %i.du, %bb.aa ]
  %.pn14.pn.pn.ph = phi { ptr, i32 } [ %.pn14.pn.ph, %bb.ah ], [ %i.eb, %bb.ag ], [ %.pn12, %.body78 ], [ %i.dt, %bb.aa ]
end_hunk_0
begin_hunk_1_@_Z28test_conversion_from_wstringv:bb.a

.lr.ph.i.i.i.i173:                                ; preds = %bb.ag, %.lr.ph.i.preheader.i.i.i171
  %i.fg = phi ptr [ %i.fj, %bb.ag ], [ %spec.select.i.i.i172, %.lr.ph.i.preheader.i.i.i171 ] ; 2 uses
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !91
  %i.fi = icmp eq i32 %i.fh, 48
  br i1 %i.fi, label %bb.ag, label %_ZN5boost10conversion6detail19try_lexical_convertIbNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEbRKT0_RT_.exit.i166

bb.ag:                                            ; preds = %.lr.ph.i.i.i.i173
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 4 ; 2 uses
  %.not.i.i.i.i174 = icmp eq ptr %i.fj, %i.ew
  br i1 %.not.i.i.i.i174, label %_ZN5boost12lexical_castIbNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEET_RKT0_.exit177, label %.lr.ph.i.i.i.i173, !llvm.loop !2

_ZN5boost10conversion6detail19try_lexical_convertIbNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEbRKT0_RT_.exit.i166: ; preds = %.lr.ph.i.i.i.i173, %bb.ad, %.noexc163
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #33
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %0, align 8, !tbaa !37
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_ZTINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE, ptr %i.fk, align 8, !tbaa !42
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @_ZTIb, ptr %i.fl, align 8, !tbaa !43
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %0) #34
          to label %bb.ah unwind label %.body175

bb.ah:                                            ; preds = %_ZN5boost10conversion6detail19try_lexical_convertIbNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEbRKT0_RT_.exit.i166
  unreachable

.body175:                                         ; preds = %_ZN5boost10conversion6detail19try_lexical_convertIbNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEbRKT0_RT_.exit.i166
  %i.fm = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null                          ; 2 uses
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #33
  %i.fn = load ptr, ptr %13, align 8, !tbaa !147  ; 2 uses
  %i.fo = icmp eq ptr %i.fn, %i.eo
  br i1 %i.fo, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit183, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i181

_ZN5boost12lexical_castIbNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEET_RKT0_.exit177: ; preds = %bb.ag, %bb.af, %bb.ae
  %i.fp = icmp eq ptr %.pre7.i.i161, %i.eo
  br i1 %i.fp, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i179, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i178

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i179: ; preds = %_ZN5boost12lexical_castIbNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEET_RKT0_.exit177
  %i.fq = icmp ult i64 %.pre6.i.i160, 4
  call void @llvm.assume(i1 %i.fq)
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit180

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i178: ; preds = %_ZN5boost12lexical_castIbNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEET_RKT0_.exit177
  %i.fr = load i64, ptr %i.eo, align 8, !tbaa !25
  %i.fs = shl i64 %i.fr, 2
  %i.ft = add i64 %i.fs, 4
  call void @_ZdlPvm(ptr noundef %.pre7.i.i161, i64 noundef %i.ft) #35
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit180

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit180: ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i179, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i178
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.228, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.2, i32 noundef 342, ptr noundef nonnull @__PRETTY_FUNCTION__._Z28test_conversion_from_wstringv)
          to label %bb.ap unwind label %bb.am

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit158
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.227, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.2, i32 noundef 340, ptr noundef nonnull @__PRETTY_FUNCTION__._Z28test_conversion_from_wstringv)
          to label %.noexc.i162 unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fu = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.av unwind label %bb.aw

bb.ak:                                            ; preds = %bb.ac
  %i.fv = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.av unwind label %bb.aw

bb.al:                                            ; preds = %.noexc.i162
  %i.fw = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit183

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i181: ; preds = %.body175
  %i.fx = load i64, ptr %i.eo, align 8, !tbaa !25
  %i.fy = shl i64 %i.fx, 2
  %i.fz = add i64 %i.fy, 4
  call void @_ZdlPvm(ptr noundef %i.fn, i64 noundef %i.fz) #35
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit183

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit183: ; preds = %.body175, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i181, %bb.al
  %.pn42 = phi { ptr, i32 } [ %i.fw, %bb.al ], [ %i.fm, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i181 ], [ %i.fm, %.body175 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  br label %bb.an

bb.am:                                            ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit180
  %i.ga = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit183
  %.pn44 = phi { ptr, i32 } [ %i.ga, %bb.am ], [ %.pn42, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit183 ] ; 2 uses
  %.10 = extractvalue { ptr, i32 } %.pn44, 1
  %.1023 = extractvalue { ptr, i32 } %.pn44, 0
  %i.gb = icmp eq i32 %.10, %i.bc
  %i.gc = call ptr @__cxa_begin_catch(ptr %.1023) #33 ; 0 uses
  br i1 %i.gb, label %bb.ao, label %bb.as

bb.ao:                                            ; preds = %bb.an
  %i.gd = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split unwind label %bb.au ; 0 uses

.sink.split:                                      ; preds = %bb.ao, %bb.as
  call void @__cxa_end_catch()
  br label %bb.ap

bb.ap:                                            ; preds = %.sink.split, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit180
  %i.ge = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.gf = icmp eq i8 %i.ge, 0
  br i1 %i.gf, label %bb.aq, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit, !prof !53

bb.aq:                                            ; preds = %bb.ap
  %i.gg = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #33
  %.not.i.i = icmp eq i32 %i.gg, 0
  br i1 %.not.i.i, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !56
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !57
  %i.gh = call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #33 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #33
  br label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit

_ZN5boost6detail9test_implEPKcS2_iS2_b.exit:      ; preds = %bb.ap, %bb.aq, %bb.ar
  ret void

bb.as:                                            ; preds = %bb.an
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.228, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.2, i32 noundef 342, ptr noundef nonnull @__PRETTY_FUNCTION__._Z28test_conversion_from_wstringv)
          to label %.sink.split unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gi = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.av unwind label %bb.aw

bb.au:                                            ; preds = %bb.ao
  %i.gj = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.av unwind label %bb.aw

bb.av:                                            ; preds = %bb.au, %bb.ak, %bb.ab, %bb.q, %bb.at, %bb.aj, %bb.aa, %bb.p, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit155, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit152, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit69
  %.pn46 = phi { ptr, i32 } [ %i.fv, %bb.ak ], [ %i.gi, %bb.at ], [ %i.dx, %bb.ab ], [ %i.fu, %bb.aj ], [ %i.ed, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit155 ], [ %i.dy, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit152 ], [ %i.cl, %bb.q ], [ %i.dw, %bb.aa ], [ %eh.lpad-body, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit69 ], [ %i.ck, %bb.p ], [ %i.gj, %bb.au ]
  resume { ptr, i32 } %.pn46

bb.aw:                                            ; preds = %bb.au, %bb.at, %bb.ak, %bb.aj, %bb.ab, %bb.aa, %bb.q, %bb.p
  %i.gk = landingpad { ptr, i32 }
          catch ptr null
  %i.gl = extractvalue { ptr, i32 } %i.gk, 0
  call void @__clang_call_terminate(ptr %i.gl) #36
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z26test_conversion_to_wstringv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %0 = alloca %"class.boost::bad_lexical_cast", align 8 ; 7 uses
  %1 = alloca %"class.boost::bad_lexical_cast", align 8 ; 7 uses
  %2 = alloca %"class.boost::detail::lcast::optimized_src_stream.55", align 8 ; 8 uses
  %3 = alloca %"class.boost::detail::lcast::optimized_src_stream.55", align 8 ; 8 uses
  %4 = alloca %"class.boost::detail::lcast_put_unsigned.86", align 8 ; 7 uses
  %5 = alloca %"class.boost::detail::lcast::optimized_src_stream.85", align 8 ; 6 uses
  %i.b = alloca [6 x i32], align 16               ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string.10", align 8 ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string.10", align 8 ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string.10", align 8 ; 10 uses
  %i.c = alloca double, align 8                   ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string.10", align 8 ; 11 uses
  %10 = alloca %"class.std::__cxx11::basic_string.10", align 8 ; 11 uses
  %11 = alloca %"class.std::__cxx11::basic_string.10", align 8 ; 11 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string.10", align 8 ; 11 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %13 = alloca %"class.std::__cxx11::basic_string.10", align 8 ; 10 uses
  %i.f = alloca i8, align 1                       ; 5 uses
  %14 = alloca %"class.std::__cxx11::basic_string.10", align 8 ; 11 uses
  %15 = alloca %"class.std::__cxx11::basic_string.10", align 8 ; 11 uses
  %16 = alloca %"class.std::__cxx11::basic_string.10", align 8 ; 10 uses
  %17 = alloca %"class.std::__cxx11::basic_string.10", align 8 ; 11 uses
  %18 = alloca %"class.std::__cxx11::basic_string.10", align 8 ; 11 uses
  %19 = alloca %"class.std::__cxx11::basic_string.10", align 8 ; 11 uses
  %20 = alloca %"class.std::__cxx11::basic_string.10", align 8 ; 9 uses
  %21 = alloca %"class.std::__cxx11::basic_string.10", align 8 ; 10 uses
  %22 = alloca %"class.std::__cxx11::basic_string.10", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.b, ptr noundef nonnull align 16 dereferenceable(24) @__const._Z26test_conversion_to_wstringv.buf, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 8 uses
  store ptr %i.g, ptr %6, align 8, !tbaa !144, !alias.scope !398
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %i.h, align 8, !tbaa !146, !alias.scope !398
  store i32 0, ptr %i.g, align 8, !tbaa !91, !alias.scope !398
  %i.i = call noundef i64 @wcslen(ptr noundef nonnull %i.b) #37
  %i.j = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE10_M_replaceEmmPKwm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %i.b, i64 noundef %i.i)
          to label %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEPwEET_RKT0_.exit unwind label %.body.i ; 0 uses

.body.i:                                          ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = load ptr, ptr %6, align 8, !tbaa !147, !alias.scope !398 ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.g
  br i1 %i.m, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i: ; preds = %.body.i
  %i.n = load i64, ptr %i.g, align 8, !tbaa !25, !alias.scope !398
  %i.o = shl i64 %i.n, 2
  %i.p = add i64 %i.o, 4
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #35
  br label %common.resume

common.resume:                                    ; preds = %.body.i85, %.body.i77, %.body.i69, %.body.i54, %.body.i46, %.body.i37, %.body.i29, %.body.i17, %.body.i, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i86, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i78, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i70, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i56, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i47, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i38, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i30, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i18, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i, %bb.bb
  %common.resume.op = phi { ptr, i32 } [ %.pn13.pn.pn, %bb.bb ], [ %i.hd, %.body.i77 ], [ %i.k, %.body.i ], [ %i.at, %.body.i17 ], [ %i.cf, %.body.i29 ], [ %i.dd, %.body.i37 ], [ %eh.lpad-body.i, %.body.i46 ], [ %eh.lpad-body.i55, %.body.i54 ], [ %i.gi, %.body.i69 ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i18 ], [ %i.cf, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i30 ], [ %i.dd, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i38 ], [ %eh.lpad-body.i, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i47 ], [ %eh.lpad-body.i55, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i56 ], [ %i.gi, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i70 ], [ %i.hd, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i78 ], [ %i.hy, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i86 ], [ %i.hy, %.body.i85 ]
  resume { ptr, i32 } %common.resume.op

_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEPwEET_RKT0_.exit: ; preds = %bb.a
  %i.q = load i64, ptr %i.h, align 8, !tbaa !146  ; 3 uses
  %i.r = call noundef i64 @wcslen(ptr noundef nonnull %i.b) #37
  %i.s = icmp eq i64 %i.q, %i.r
  br i1 %i.s, label %bb.b, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit

bb.b:                                             ; preds = %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEPwEET_RKT0_.exit
  %i.t = icmp eq i64 %i.q, 0
  br i1 %i.t, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %6, align 8, !tbaa !147
  %i.v = call i32 @wmemcmp(ptr noundef %i.u, ptr noundef nonnull %i.b, i64 noundef %i.q) #37
  %i.w = icmp eq i32 %i.v, 0
  br label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit

_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit: ; preds = %bb.c, %bb.b, %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEPwEET_RKT0_.exit
  %i.x = phi i1 [ false, %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEPwEET_RKT0_.exit ], [ %i.w, %bb.c ], [ true, %bb.b ]
  %i.y = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.229, ptr noundef nonnull @.str.2, i32 noundef 352, ptr noundef nonnull @__PRETTY_FUNCTION__._Z26test_conversion_to_wstringv, i1 noundef zeroext %i.x)
          to label %bb.d unwind label %bb.am      ; 0 uses

bb.d:                                             ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit
  %i.z = load ptr, ptr %6, align 8, !tbaa !147    ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.g
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.ab = load i64, ptr %i.g, align 8, !tbaa !25
  %i.ac = shl i64 %i.ab, 2
  %i.ad = add i64 %i.ac, 4
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #35
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !399)
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 8 uses
  store ptr %i.ae, ptr %7, align 8, !tbaa !144, !alias.scope !399
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i64 0, ptr %i.af, align 8, !tbaa !146, !alias.scope !399
  store i32 0, ptr %i.ae, align 8, !tbaa !91, !alias.scope !399
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33, !noalias !399
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 2 uses
  store ptr %5, ptr %i.ag, align 8, !tbaa !133, !noalias !399
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 84 ; 4 uses
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !134, !noalias !399
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33, !noalias !399
  store i32 123, ptr %4, align 8, !tbaa !136, !noalias !399
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !137, !noalias !399
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 48, ptr %i.ak, align 8, !tbaa !138, !noalias !399
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 48, ptr %i.al, align 4, !tbaa !139, !noalias !399
  %i.am = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIwEjwE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEiE11try_convertERKiRS7_.exit.i.i unwind label %.body.i17 ; 3 uses

_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEiE11try_convertERKiRS7_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33, !noalias !399
  store ptr %i.am, ptr %i.ag, align 8, !tbaa !133, !noalias !399
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !134, !noalias !399
  %i.an = load i64, ptr %i.af, align 8, !tbaa !146, !alias.scope !399
  %i.ao = ptrtoint ptr %i.ai to i64
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 2
  %i.as = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE10_M_replaceEmmPKwm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef %i.an, ptr noundef %i.am, i64 noundef %i.ar)
          to label %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEiEET_RKT0_.exit unwind label %.body.i17 ; 0 uses

.body.i17:                                        ; preds = %_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEiE11try_convertERKiRS7_.exit.i.i, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = load ptr, ptr %7, align 8, !tbaa !147, !alias.scope !399 ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.ae
  br i1 %i.av, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i18

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i18: ; preds = %.body.i17
  %i.aw = load i64, ptr %i.ae, align 8, !tbaa !25, !alias.scope !399
  %i.ax = shl i64 %i.aw, 2
  %i.ay = add i64 %i.ax, 4
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #35
  br label %common.resume

_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEiEET_RKT0_.exit: ; preds = %_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEiE11try_convertERKiRS7_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33, !noalias !399
  %i.az = load i64, ptr %i.af, align 8, !tbaa !146
  %i.ba = icmp eq i64 %i.az, 3
  br i1 %i.ba, label %bb.e, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit21

bb.e:                                             ; preds = %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEiEET_RKT0_.exit
  %i.bb = load ptr, ptr %7, align 8, !tbaa !147
  %i.bc = call i32 @wmemcmp(ptr noundef %i.bb, ptr noundef nonnull @.str.180, i64 noundef 3) #37
  %i.bd = icmp eq i32 %i.bc, 0
  br label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit21

_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit21: ; preds = %bb.e, %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEiEET_RKT0_.exit
  %i.be = phi i1 [ false, %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEiEET_RKT0_.exit ], [ %i.bd, %bb.e ]
  %i.bf = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.230, ptr noundef nonnull @.str.2, i32 noundef 353, ptr noundef nonnull @__PRETTY_FUNCTION__._Z26test_conversion_to_wstringv, i1 noundef zeroext %i.be)
          to label %bb.f unwind label %bb.an      ; 0 uses

bb.f:                                             ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit21
  %i.bg = load ptr, ptr %7, align 8, !tbaa !147   ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.ae
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i22: ; preds = %bb.f
  %i.bi = load i64, ptr %i.ae, align 8, !tbaa !25
  %i.bj = shl i64 %i.bi, 2
  %i.bk = add i64 %i.bj, 4
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #35
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit24: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  store double 1.230000e+00, ptr %i.c, align 8, !tbaa !99
  call void @_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEdEET_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.10") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !146
  %i.bn = icmp eq i64 %i.bm, 4
  br i1 %i.bn, label %bb.g, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit25

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit24
  %i.bo = load ptr, ptr %8, align 8, !tbaa !147
  %i.bp = call i32 @wmemcmp(ptr noundef %i.bo, ptr noundef nonnull @.str.189, i64 noundef 4) #37
  %i.bq = icmp eq i32 %i.bp, 0
  br label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit25

_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit25: ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit24
  %i.br = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit24 ], [ %i.bq, %bb.g ]
  %i.bs = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.231, ptr noundef nonnull @.str.2, i32 noundef 354, ptr noundef nonnull @__PRETTY_FUNCTION__._Z26test_conversion_to_wstringv, i1 noundef zeroext %i.br)
          to label %bb.h unwind label %bb.ao      ; 0 uses

bb.h:                                             ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit25
  %i.bt = load ptr, ptr %8, align 8, !tbaa !147   ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i26: ; preds = %bb.h
  %i.bw = load i64, ptr %i.bu, align 8, !tbaa !25
  %i.bx = shl i64 %i.bw, 2
  %i.by = add i64 %i.bx, 4
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.by) #35
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit28: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !400)
  %i.bz = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 8 uses
  store ptr %i.bz, ptr %9, align 8, !tbaa !144, !alias.scope !400
  %i.ca = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 0, ptr %i.ca, align 8, !tbaa !146, !alias.scope !400
  store i32 0, ptr %i.bz, align 8, !tbaa !91, !alias.scope !400
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33, !noalias !400
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %3, ptr %i.cb, align 8, !tbaa !402, !noalias !400
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 49, ptr %3, align 8, !tbaa !91, !noalias !400
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 4
  store ptr %i.cd, ptr %i.cc, align 8, !tbaa !403, !noalias !400
  %i.ce = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE10_M_replaceEmmPKwm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %3, i64 noundef 1)
          to label %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEbEET_RKT0_.exit unwind label %.body.i29 ; 0 uses

.body.i29:                                        ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit28
  %i.cf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cg = load ptr, ptr %9, align 8, !tbaa !147, !alias.scope !400 ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.bz
  br i1 %i.ch, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i30

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i30: ; preds = %.body.i29
  %i.ci = load i64, ptr %i.bz, align 8, !tbaa !25, !alias.scope !400
  %i.cj = shl i64 %i.ci, 2
  %i.ck = add i64 %i.cj, 4
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.ck) #35
  br label %common.resume

_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEbEET_RKT0_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33, !noalias !400
  %i.cl = load i64, ptr %i.ca, align 8, !tbaa !146
  %i.cm = icmp eq i64 %i.cl, 1
  br i1 %i.cm, label %bb.i, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit33

bb.i:                                             ; preds = %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEbEET_RKT0_.exit
  %i.cn = load ptr, ptr %9, align 8, !tbaa !147
  %i.co = call i32 @wmemcmp(ptr noundef %i.cn, ptr noundef nonnull @.str.196, i64 noundef 1) #37
  %i.cp = icmp eq i32 %i.co, 0
  br label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit33

_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit33: ; preds = %bb.i, %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEbEET_RKT0_.exit
  %i.cq = phi i1 [ false, %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEbEET_RKT0_.exit ], [ %i.cp, %bb.i ]
  %i.cr = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.232, ptr noundef nonnull @.str.2, i32 noundef 355, ptr noundef nonnull @__PRETTY_FUNCTION__._Z26test_conversion_to_wstringv, i1 noundef zeroext %i.cq)
          to label %bb.j unwind label %bb.ap      ; 0 uses

bb.j:                                             ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit33
  %i.cs = load ptr, ptr %9, align 8, !tbaa !147   ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.bz
end_hunk_1
begin_hunk_2_@_Z26test_conversion_to_wstringv:bb.a
  %i.np = load i64, ptr %i.gf, align 8, !tbaa !25
  %i.nq = shl i64 %i.np, 2
  %i.nr = add i64 %i.nq, 4
  call void @_ZdlPvm(ptr noundef %i.nn, i64 noundef %i.nr) #35
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit171

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit171: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i169
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #33
  br label %bb.bb

bb.av:                                            ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit81
  %i.ns = landingpad { ptr, i32 }
          cleanup
  %i.nt = load ptr, ptr %15, align 8, !tbaa !147  ; 2 uses
  %i.nu = icmp eq ptr %i.nt, %i.ha
  br i1 %i.nu, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit174, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i172

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i172: ; preds = %bb.av
  %i.nv = load i64, ptr %i.ha, align 8, !tbaa !25
  %i.nw = shl i64 %i.nv, 2
  %i.nx = add i64 %i.nw, 4
  call void @_ZdlPvm(ptr noundef %i.nt, i64 noundef %i.nx) #35
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit174

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit174: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i172
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #33
  br label %bb.bb

bb.aw:                                            ; preds = %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEA1_wEET_RKT0_.exit
  %i.ny = landingpad { ptr, i32 }
          cleanup
  %i.nz = load ptr, ptr %16, align 8, !tbaa !147  ; 2 uses
  %i.oa = icmp eq ptr %i.nz, %i.hv
  br i1 %i.oa, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit177, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i175

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i175: ; preds = %bb.aw
  %i.ob = load i64, ptr %i.hv, align 8, !tbaa !25
  %i.oc = shl i64 %i.ob, 2
  %i.od = add i64 %i.oc, 4
  call void @_ZdlPvm(ptr noundef %i.nz, i64 noundef %i.od) #35
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit177

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit177: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i175
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #33
  br label %bb.bb

bb.ax:                                            ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit92
  %i.oe = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit183

bb.ay:                                            ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit98
  %i.of = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.og = load ptr, ptr %17, align 8, !tbaa !147  ; 2 uses
  %i.oh = icmp eq ptr %i.og, %i.is
  br i1 %i.oh, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.ay, %.body.i94
  %.sink = phi ptr [ %i.iw, %.body.i94 ], [ %i.og, %bb.ay ]
  %.pn.ph = phi { ptr, i32 } [ %i.iv, %.body.i94 ], [ %i.of, %bb.ay ]
  %i.oi = load i64, ptr %i.is, align 8, !tbaa !25
  %i.oj = shl i64 %i.oi, 2
  %i.ok = add i64 %i.oj, 4
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ok) #35
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.ay, %.body.i94
  %.pn = phi { ptr, i32 } [ %i.iv, %.body.i94 ], [ %i.of, %bb.ay ], [ %.pn.ph, %.body.sink.split ] ; 2 uses
  %i.ol = load ptr, ptr %18, align 8, !tbaa !147  ; 2 uses
  %i.om = icmp eq ptr %i.ol, %i.im
  br i1 %i.om, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit183, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i181

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i181: ; preds = %.body
  %i.on = load i64, ptr %i.im, align 8, !tbaa !25
  %i.oo = shl i64 %i.on, 2
  %i.op = add i64 %i.oo, 4
  call void @_ZdlPvm(ptr noundef %i.ol, i64 noundef %i.op) #35
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit183

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit183: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i181, %bb.ax
  %.pn.pn = phi { ptr, i32 } [ %i.oe, %bb.ax ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i181 ], [ %.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #33
  br label %bb.bb

bb.az:                                            ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit118
  %i.oq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.or = load ptr, ptr %19, align 8, !tbaa !147  ; 2 uses
  %i.os = icmp eq ptr %i.or, %i.js
  br i1 %i.os, label %.body115, label %.body115.sink.split

.body115.sink.split:                              ; preds = %bb.az, %.body.i111
  %.sink294 = phi ptr [ %i.jw, %.body.i111 ], [ %i.or, %bb.az ]
  %.pn10.ph = phi { ptr, i32 } [ %i.jv, %.body.i111 ], [ %i.oq, %bb.az ]
  %i.ot = load i64, ptr %i.js, align 8, !tbaa !25
  %i.ou = shl i64 %i.ot, 2
  %i.ov = add i64 %i.ou, 4
  call void @_ZdlPvm(ptr noundef %.sink294, i64 noundef %i.ov) #35
  br label %.body115

.body115:                                         ; preds = %.body115.sink.split, %bb.az, %.body.i111
  %.pn10 = phi { ptr, i32 } [ %i.jv, %.body.i111 ], [ %i.oq, %bb.az ], [ %.pn10.ph, %.body115.sink.split ]
  %i.ow = load ptr, ptr %20, align 8, !tbaa !147  ; 2 uses
  %i.ox = icmp eq ptr %i.ow, %i.jp
  br i1 %i.ox, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit189, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i187

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i187: ; preds = %.body115
  %i.oy = load i64, ptr %i.jp, align 8, !tbaa !25
  %i.oz = shl i64 %i.oy, 2
  %i.pa = add i64 %i.oz, 4
  call void @_ZdlPvm(ptr noundef %i.ow, i64 noundef %i.pa) #35
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit189

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit189: ; preds = %.body115, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i187
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #33
  br label %bb.bb

bb.ba:                                            ; preds = %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES6_EET_RKT0_.exit137
  %i.pb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pc = load ptr, ptr %21, align 8, !tbaa !147  ; 2 uses
  %i.pd = icmp eq ptr %i.pc, %i.kr
  br i1 %i.pd, label %.body135, label %.body135.sink.split

.body135.sink.split:                              ; preds = %bb.ba, %.body.i131
  %.sink298 = phi ptr [ %i.kv, %.body.i131 ], [ %i.pc, %bb.ba ]
  %.pn13.ph = phi { ptr, i32 } [ %i.ku, %.body.i131 ], [ %i.pb, %bb.ba ]
  %i.pe = load i64, ptr %i.kr, align 8, !tbaa !25
  %i.pf = shl i64 %i.pe, 2
  %i.pg = add i64 %i.pf, 4
  call void @_ZdlPvm(ptr noundef %.sink298, i64 noundef %i.pg) #35
  br label %.body135

.body135:                                         ; preds = %.body135.sink.split, %bb.ba, %.body.i131
  %.pn13 = phi { ptr, i32 } [ %i.ku, %.body.i131 ], [ %i.pb, %bb.ba ], [ %.pn13.ph, %.body135.sink.split ]
  %i.ph = load ptr, ptr %22, align 8, !tbaa !147  ; 2 uses
  %i.pi = icmp eq ptr %i.ph, %i.kp
  br i1 %i.pi, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit195, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i193

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i193: ; preds = %.body135
  %i.pj = load i64, ptr %i.kp, align 8, !tbaa !25
  %i.pk = shl i64 %i.pj, 2
  %i.pl = add i64 %i.pk, 4
  call void @_ZdlPvm(ptr noundef %i.ph, i64 noundef %i.pl) #35
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit195

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit195: ; preds = %.body135, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i193
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #33
  br label %bb.bb

bb.bb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit195, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit189, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit183, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit177, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit174, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit171, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit168, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit165, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit162, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit159, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit156, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit153, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit150, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit147
  %.pn13.pn.pn = phi { ptr, i32 } [ %.pn13, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit195 ], [ %.pn10, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit189 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit183 ], [ %i.ny, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit177 ], [ %i.ns, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit174 ], [ %i.nm, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit171 ], [ %i.nf, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit168 ], [ %i.mz, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit165 ], [ %i.mt, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit162 ], [ %i.mn, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit159 ], [ %i.mh, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit156 ], [ %i.ma, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit153 ], [ %i.lu, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit150 ], [ %i.lo, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit147 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEdEET_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string.10") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::bad_lexical_cast", align 8 ; 7 uses
  %3 = alloca %"class.boost::detail::lcast::optimized_src_stream.89", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !144
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !146
  store i32 0, ptr %i.a, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 3 uses
  store ptr %3, ptr %i.c, align 8, !tbaa !141
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 116
  store ptr %i.e, ptr %i.d, align 8, !tbaa !142
  %i.f = load double, ptr %1, align 8, !tbaa !99  ; 5 uses
  %i.g = fcmp uno double %i.f, 0.000000e+00
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = bitcast double %i.f to i64
  %i.i = icmp slt i64 %i.h, 0
  %..i.i.i.i.i = select i1 %i.i, ptr @.str.336, ptr @.str.333
  br label %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm29EE9stream_inIdEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i

bb.c:                                             ; preds = %bb.a
  %i.j = call double @llvm.fabs.f64(double %i.f)
  %i.k = fcmp oeq double %i.j, +inf
  br i1 %i.k, label %bb.d, label %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm29EE9stream_inIdEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.l = bitcast double %i.f to i64
  %i.m = icmp slt i64 %i.l, 0
  %.9.i.i.i.i.i = select i1 %i.m, ptr @.str.338, ptr @.str.337
  br label %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm29EE9stream_inIdEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i

_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm29EE9stream_inIdEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i: ; preds = %bb.d, %bb.b
  %.0.i.i.ph.i.i.i = phi ptr [ %.9.i.i.i.i.i, %bb.d ], [ %..i.i.i.i.i, %bb.b ] ; 4 uses
  store ptr %.0.i.i.ph.i.i.i, ptr %i.c, align 8, !tbaa !141
  %i.n = call noundef i64 @wcslen(ptr noundef nonnull %.0.i.i.ph.i.i.i) #37
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.ph.i.i.i, i64 %i.n ; 2 uses
  store ptr %i.o, ptr %i.d, align 8, !tbaa !142
  br label %bb.e

_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm29EE9stream_inIdEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i: ; preds = %bb.c
  %i.p = call i32 (ptr, i64, ptr, ...) @swprintf(ptr noundef nonnull align 8 dereferenceable(136) %3, i64 noundef 29, ptr noundef nonnull @.str.339, i32 noundef 17, double noundef %i.f) #33
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [4 x i8], ptr %3, i64 %i.q ; 3 uses
  store ptr %i.r, ptr %i.d, align 8, !tbaa !142
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !141  ; 2 uses
  %i.t = icmp ugt ptr %i.r, %i.s
  br i1 %i.t, label %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm29EE9stream_inIdEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i._crit_edge, label %bb.f

_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm29EE9stream_inIdEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i._crit_edge: ; preds = %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm29EE9stream_inIdEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i
  %.pre = load i64, ptr %i.b, align 8, !tbaa !146
  br label %bb.e

bb.e:                                             ; preds = %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm29EE9stream_inIdEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i._crit_edge, %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm29EE9stream_inIdEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i
  %i.u = phi i64 [ 0, %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm29EE9stream_inIdEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i ], [ %.pre, %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm29EE9stream_inIdEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i._crit_edge ]
  %i.v = phi ptr [ %i.o, %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm29EE9stream_inIdEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i ], [ %i.r, %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm29EE9stream_inIdEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i._crit_edge ]
  %i.w = phi ptr [ %.0.i.i.ph.i.i.i, %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm29EE9stream_inIdEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.thread.i.i ], [ %i.s, %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm29EE9stream_inIdEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i._crit_edge ] ; 2 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 2
  %i.ab = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE10_M_replaceEmmPKwm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef %i.u, ptr noundef %i.w, i64 noundef %i.aa)
          to label %.thread unwind label %bb.i    ; 0 uses

.thread:                                          ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  ret void

bb.f:                                             ; preds = %_ZN5boost6detail5lcast20optimized_src_streamIwSt11char_traitsIwELm29EE9stream_inIdEEDTcl13shl_real_typefp_dtdefpT6bufferEENS1_5exactIT_EE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %2, align 8, !tbaa !37
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @_ZTId, ptr %i.ac, align 8, !tbaa !42
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr @_ZTINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE, ptr %i.ad, align 8, !tbaa !43
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %2) #34
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %.body

bb.i:                                             ; preds = %bb.e
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.i ], [ %i.ae, %bb.h ]
  %i.ag = load ptr, ptr %0, align 8, !tbaa !147   ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.a
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %.body
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !25
  %i.aj = shl i64 %i.ai, 2
  %i.ak = add i64 %i.aj, 4
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #35
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEcEET_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string.10") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::locale", align 8       ; 7 uses
  %3 = alloca %"class.boost::detail::lcast::optimized_src_stream.87", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !144
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !146
  store i32 0, ptr %i.a, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  store ptr %3, ptr %i.c, align 8, !tbaa !149
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 28
  store ptr %i.e, ptr %i.d, align 8, !tbaa !150
  %i.f = load i8, ptr %1, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #33
  %i.g = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIwE2idE) #33
  %i.h = load ptr, ptr %2, align 8, !tbaa !151
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !156
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.g
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !158  ; 3 uses
  %.not.not.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.not.i.i.i.i.i, label %bb.b, label %_ZSt9use_facetISt5ctypeIwEERKT_RKSt6locale.exit.i.i.i.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt16__throw_bad_castv() #34
          to label %.noexc.i.i.i.i unwind label %bb.c

.noexc.i.i.i.i:                                   ; preds = %bb.b
  unreachable

_ZSt9use_facetISt5ctypeIwEERKT_RKSt6locale.exit.i.i.i.i: ; preds = %bb.a
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !37
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = invoke noundef signext i32 %i.o(ptr noundef nonnull align 8 dereferenceable(12) %i.l, i8 noundef signext %i.f)
          to label %_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEcE11try_convertERKcRS7_.exit.i unwind label %bb.c, !inline_history !1

bb.c:                                             ; preds = %_ZSt9use_facetISt5ctypeIwEERKT_RKSt6locale.exit.i.i.i.i, %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %.body

_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEcE11try_convertERKcRS7_.exit.i: ; preds = %_ZSt9use_facetISt5ctypeIwEERKT_RKSt6locale.exit.i.i.i.i
  store i32 %i.p, ptr %3, align 8, !tbaa !91
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !149
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store ptr %i.s, ptr %i.d, align 8, !tbaa !150
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !149  ; 2 uses
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !150
  %i.v = load i64, ptr %i.b, align 8, !tbaa !146
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 2
  %i.aa = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE10_M_replaceEmmPKwm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef %i.v, ptr noundef %i.t, i64 noundef %i.z)
          to label %bb.d unwind label %.body3     ; 0 uses

bb.d:                                             ; preds = %_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEcE11try_convertERKcRS7_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  ret void

.body3:                                           ; preds = %_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEcE11try_convertERKcRS7_.exit.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %.body3
  %eh.lpad-body = phi { ptr, i32 } [ %i.ab, %.body3 ], [ %i.q, %bb.c ]
  %i.ac = load ptr, ptr %0, align 8, !tbaa !147   ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.a
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %.body
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !25
  %i.af = shl i64 %i.ae, 2
  %i.ag = add i64 %i.af, 4
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #35
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z21test_bad_lexical_castv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.boost::bad_lexical_cast", align 8 ; 7 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %1 = alloca %"class.boost::detail::lcast_ret_unsigned", align 8 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !48
  store i32 1953719636, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 4, ptr %i.c, align 8, !tbaa !51
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i8 0, ptr %i.d, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i32 0, ptr %i.a, align 4, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  store i8 0, ptr %1, align 8, !tbaa !85
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 1, ptr %i.e, align 4, !tbaa !86
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %i.f, align 8, !tbaa !87
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.b, ptr %i.g, align 8, !tbaa !88
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.d, ptr %i.h, align 8, !tbaa !89
  %i.i = invoke noundef zeroext i1 @_ZN5boost6detail18lcast_ret_unsignedISt11char_traitsIcEjcE7convertEv(ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %.split.i unwind label %bb.d

.split.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  %i.j = load i32, ptr %i.a, align 4
end_hunk_2
begin_hunk_3_@_Z27test_char_types_conversionsv:bb.a
  %i.bw = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.271, ptr noundef nonnull @.str.2, i32 noundef 469, ptr noundef nonnull @__PRETTY_FUNCTION__._Z27test_char_types_conversionsv, i1 noundef zeroext %i.bv)
          to label %bb.m unwind label %bb.af      ; 0 uses

bb.m:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit26
  %i.bx = load ptr, ptr %4, align 8, !tbaa !52    ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.bd
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.m
  %i.bz = load i64, ptr %i.bd, align 8, !tbaa !25
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.ca) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.cb = load ptr, ptr %3, align 8, !tbaa !52    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.au
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  %i.cd = load i64, ptr %i.au, align 8, !tbaa !25
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.ce) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !471)
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  store ptr %i.cf, ptr %5, align 8, !tbaa !48, !alias.scope !471
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.cg, align 8, !tbaa !51, !alias.scope !471
  store i8 0, ptr %i.cf, align 8, !tbaa !25, !alias.scope !471
  %i.ch = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(20) %i.h) #33, !noalias !471
  %i.ci = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef nonnull align 1 dereferenceable(20) %i.h, i64 noundef %i.ch)
          to label %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA20_aEET_RKT0_.exit unwind label %.body.i33 ; 0 uses

.body.i33:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32
  %i.cj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ck = load ptr, ptr %5, align 8, !tbaa !52, !alias.scope !471 ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.cf
  br i1 %i.cl, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34: ; preds = %.body.i33
  %i.cm = load i64, ptr %i.cf, align 8, !tbaa !25, !alias.scope !471
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #35
  br label %common.resume

_ZN5boost12lexical_castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA20_aEET_RKT0_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.co, ptr %6, align 8, !tbaa !48
  %i.cp = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #33 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  store i64 %i.cp, ptr %i.c, align 8, !tbaa !114
  %i.cq = icmp ugt i64 %i.cp, 15
  br i1 %i.cq, label %.noexc.i38, label %._crit_edge.i.i37

.noexc.i38:                                       ; preds = %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA20_aEET_RKT0_.exit
  %i.cr = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc39 unwind label %bb.ag  ; 2 uses

.noexc39:                                         ; preds = %.noexc.i38
  store ptr %i.cr, ptr %6, align 8, !tbaa !52
  %i.cs = load i64, ptr %i.c, align 8, !tbaa !114
  store i64 %i.cs, ptr %i.co, align 8, !tbaa !25
  br label %._crit_edge.i.i37

._crit_edge.i.i37:                                ; preds = %.noexc39, %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA20_aEET_RKT0_.exit
  %i.ct = phi ptr [ %i.cr, %.noexc39 ], [ %i.co, %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA20_aEET_RKT0_.exit ] ; 2 uses
  switch i64 %i.cp, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %bb.p
  ]

bb.n:                                             ; preds = %._crit_edge.i.i37
  %i.cu = load i8, ptr %i.f, align 16, !tbaa !25
  store i8 %i.cu, ptr %i.ct, align 1, !tbaa !25
  br label %bb.p

bb.o:                                             ; preds = %._crit_edge.i.i37
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ct, ptr nonnull align 16 %i.f, i64 %i.cp, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %._crit_edge.i.i37
  %i.cv = load i64, ptr %i.c, align 8, !tbaa !114 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.cv, ptr %i.cw, align 8, !tbaa !51
  %i.cx = load ptr, ptr %6, align 8, !tbaa !52
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cv
  store i8 0, ptr %i.cy, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  %i.cz = load i64, ptr %i.cg, align 8, !tbaa !51 ; 3 uses
  %i.da = load i64, ptr %i.cw, align 8, !tbaa !51
  %i.db = icmp eq i64 %i.cz, %i.da
  br i1 %i.db, label %bb.q, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit42

bb.q:                                             ; preds = %bb.p
  %i.dc = icmp eq i64 %i.cz, 0
  br i1 %i.dc, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit42, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dd = load ptr, ptr %6, align 8, !tbaa !52
  %i.de = load ptr, ptr %5, align 8, !tbaa !52
  %bcmp.i41 = call i32 @bcmp(ptr %i.de, ptr %i.dd, i64 %i.cz)
  %i.df = icmp eq i32 %bcmp.i41, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit42

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit42: ; preds = %bb.p, %bb.q, %bb.r
  %i.dg = phi i1 [ false, %bb.p ], [ %i.df, %bb.r ], [ true, %bb.q ]
  %i.dh = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.272, ptr noundef nonnull @.str.2, i32 noundef 470, ptr noundef nonnull @__PRETTY_FUNCTION__._Z27test_char_types_conversionsv, i1 noundef zeroext %i.dg)
          to label %bb.s unwind label %bb.ah      ; 0 uses

bb.s:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit42
  %i.di = load ptr, ptr %6, align 8, !tbaa !52    ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.co
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %bb.s
  %i.dk = load i64, ptr %i.co, align 8, !tbaa !25
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dl) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  %i.dm = load ptr, ptr %5, align 8, !tbaa !52    ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.cf
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45
  %i.do = load i64, ptr %i.cf, align 8, !tbaa !25
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dp) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  %i.dq = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.273, ptr noundef nonnull @.str.2, i32 noundef 472, ptr noundef nonnull @__PRETTY_FUNCTION__._Z27test_char_types_conversionsv, i1 noundef zeroext true) ; 0 uses
  %i.dr = load i8, ptr %i.g, align 16, !tbaa !25
  %i.ds = load i8, ptr %i.f, align 16, !tbaa !25
  %i.dt = icmp eq i8 %i.dr, %i.ds
  %i.du = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.274, ptr noundef nonnull @.str.2, i32 noundef 473, ptr noundef nonnull @__PRETTY_FUNCTION__._Z27test_char_types_conversionsv, i1 noundef zeroext %i.dt) ; 0 uses
  %i.dv = load i8, ptr %i.h, align 16, !tbaa !25
  %i.dw = load i8, ptr %i.f, align 16, !tbaa !25
  %i.dx = icmp eq i8 %i.dv, %i.dw
  %i.dy = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.275, ptr noundef nonnull @.str.2, i32 noundef 474, ptr noundef nonnull @__PRETTY_FUNCTION__._Z27test_char_types_conversionsv, i1 noundef zeroext %i.dx) ; 0 uses
  %i.dz = load i8, ptr %i.f, align 16, !tbaa !25
  %i.ea = load i8, ptr %i.g, align 16, !tbaa !25
  %i.eb = icmp eq i8 %i.dz, %i.ea
  %i.ec = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.276, ptr noundef nonnull @.str.2, i32 noundef 476, ptr noundef nonnull @__PRETTY_FUNCTION__._Z27test_char_types_conversionsv, i1 noundef zeroext %i.eb) ; 0 uses
  %i.ed = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.277, ptr noundef nonnull @.str.2, i32 noundef 477, ptr noundef nonnull @__PRETTY_FUNCTION__._Z27test_char_types_conversionsv, i1 noundef zeroext true) ; 0 uses
  %i.ee = load i8, ptr %i.h, align 16, !tbaa !25
  %i.ef = load i8, ptr %i.g, align 16, !tbaa !25
  %i.eg = icmp eq i8 %i.ee, %i.ef
  %i.eh = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.278, ptr noundef nonnull @.str.2, i32 noundef 478, ptr noundef nonnull @__PRETTY_FUNCTION__._Z27test_char_types_conversionsv, i1 noundef zeroext %i.eg) ; 0 uses
  %i.ei = load i8, ptr %i.f, align 16, !tbaa !25
  %i.ej = load i8, ptr %i.h, align 16, !tbaa !25
  %i.ek = icmp eq i8 %i.ei, %i.ej
  %i.el = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.279, ptr noundef nonnull @.str.2, i32 noundef 480, ptr noundef nonnull @__PRETTY_FUNCTION__._Z27test_char_types_conversionsv, i1 noundef zeroext %i.ek) ; 0 uses
  %i.em = load i8, ptr %i.g, align 16, !tbaa !25
  %i.en = load i8, ptr %i.h, align 16, !tbaa !25
  %i.eo = icmp eq i8 %i.em, %i.en
  %i.ep = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.280, ptr noundef nonnull @.str.2, i32 noundef 481, ptr noundef nonnull @__PRETTY_FUNCTION__._Z27test_char_types_conversionsv, i1 noundef zeroext %i.eo) ; 0 uses
  %i.eq = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.281, ptr noundef nonnull @.str.2, i32 noundef 482, ptr noundef nonnull @__PRETTY_FUNCTION__._Z27test_char_types_conversionsv, i1 noundef zeroext true) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.i, ptr noundef nonnull align 16 dereferenceable(80) @__const._Z27test_char_types_conversionsv.wc_arr, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !472)
  %i.er = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 8 uses
  store ptr %i.er, ptr %7, align 8, !tbaa !144, !alias.scope !472
  %i.es = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 0, ptr %i.es, align 8, !tbaa !146, !alias.scope !472
  store i32 0, ptr %i.er, align 8, !tbaa !91, !alias.scope !472
  %i.et = call noundef i64 @wcslen(ptr noundef nonnull align 4 dereferenceable(80) %i.i) #37, !noalias !472
  %i.eu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE10_M_replaceEmmPKwm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef 0, ptr noundef nonnull align 4 dereferenceable(80) %i.i, i64 noundef %i.et)
          to label %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEA20_wEET_RKT0_.exit unwind label %.body.i49 ; 0 uses

.body.i49:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48
  %i.ev = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ew = load ptr, ptr %7, align 8, !tbaa !147, !alias.scope !472 ; 2 uses
  %i.ex = icmp eq ptr %i.ew, %i.er
  br i1 %i.ex, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i: ; preds = %.body.i49
  %i.ey = load i64, ptr %i.er, align 8, !tbaa !25, !alias.scope !472
  %i.ez = shl i64 %i.ey, 2
  %i.fa = add i64 %i.ez, 4
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.fa) #35
  br label %common.resume

_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEA20_wEET_RKT0_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  %i.fb = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.fb, ptr %8, align 8, !tbaa !144
  %i.fc = call noundef i64 @wcslen(ptr noundef nonnull %i.i) #37 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store i64 %i.fc, ptr %i.b, align 8, !tbaa !114
  %i.fd = icmp ugt i64 %i.fc, 3
  br i1 %i.fd, label %.noexc.i51, label %._crit_edge.i.i50

.noexc.i51:                                       ; preds = %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEA20_wEET_RKT0_.exit
  %i.fe = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc52 unwind label %bb.ai  ; 2 uses

.noexc52:                                         ; preds = %.noexc.i51
  store ptr %i.fe, ptr %8, align 8, !tbaa !147
  %i.ff = load i64, ptr %i.b, align 8, !tbaa !114 ; 2 uses
  store i64 %i.ff, ptr %i.fb, align 8, !tbaa !25
  br label %._crit_edge.i.i50

._crit_edge.i.i50:                                ; preds = %.noexc52, %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEA20_wEET_RKT0_.exit
  %i.fg = phi i64 [ %i.ff, %.noexc52 ], [ %i.fc, %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEA20_wEET_RKT0_.exit ] ; 2 uses
  %i.fh = phi ptr [ %i.fe, %.noexc52 ], [ %i.fb, %_ZN5boost12lexical_castINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEA20_wEET_RKT0_.exit ] ; 4 uses
  switch i64 %i.fc, label %bb.u [
    i64 1, label %bb.t
    i64 0, label %bb.v
  ]

bb.t:                                             ; preds = %._crit_edge.i.i50
  %i.fi = load i32, ptr %i.i, align 16, !tbaa !91
  store i32 %i.fi, ptr %i.fh, align 4, !tbaa !91
  br label %bb.v

bb.u:                                             ; preds = %._crit_edge.i.i50
  %i.fj = call ptr @wmemcpy(ptr noundef %i.fh, ptr noundef nonnull %i.i, i64 noundef %i.fc) #33 ; 0 uses
  %.pre6.i.i = load i64, ptr %i.b, align 8, !tbaa !114
  %.pre7.i.i = load ptr, ptr %8, align 8, !tbaa !147
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %._crit_edge.i.i50
  %i.fk = phi ptr [ %i.fh, %._crit_edge.i.i50 ], [ %i.fh, %bb.t ], [ %.pre7.i.i, %bb.u ] ; 2 uses
  %i.fl = phi i64 [ %i.fg, %._crit_edge.i.i50 ], [ %i.fg, %bb.t ], [ %.pre6.i.i, %bb.u ] ; 5 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.fl, ptr %i.fm, align 8, !tbaa !146
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %i.fl
  store i32 0, ptr %i.fn, align 4, !tbaa !91
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  %i.fo = load i64, ptr %i.es, align 8, !tbaa !146
  %i.fp = icmp eq i64 %i.fo, %i.fl
  br i1 %i.fp, label %bb.w, label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.w:                                             ; preds = %bb.v
  %i.fq = icmp eq i64 %i.fl, 0
  br i1 %i.fq, label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fr = load ptr, ptr %7, align 8, !tbaa !147
  %i.fs = call i32 @wmemcmp(ptr noundef %i.fr, ptr noundef nonnull %i.fk, i64 noundef %i.fl) #37
  %i.ft = icmp eq i32 %i.fs, 0
  br label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.v, %bb.w, %bb.x
  %i.fu = phi i1 [ false, %bb.v ], [ %i.ft, %bb.x ], [ true, %bb.w ]
  %i.fv = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.282, ptr noundef nonnull @.str.2, i32 noundef 487, ptr noundef nonnull @__PRETTY_FUNCTION__._Z27test_char_types_conversionsv, i1 noundef zeroext %i.fu)
          to label %bb.y unwind label %bb.aj      ; 0 uses

bb.y:                                             ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.fw = load ptr, ptr %8, align 8, !tbaa !147   ; 2 uses
  %i.fx = icmp eq ptr %i.fw, %i.fb
  br i1 %i.fx, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %bb.y
  %i.fy = load i64, ptr %i.fb, align 8, !tbaa !25
  %i.fz = shl i64 %i.fy, 2
  %i.ga = add i64 %i.fz, 4
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.ga) #35
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  %i.gb = load ptr, ptr %7, align 8, !tbaa !147   ; 2 uses
  %i.gc = icmp eq ptr %i.gb, %i.er
  br i1 %i.gc, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i53: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit
  %i.gd = load i64, ptr %i.er, align 8, !tbaa !25
  %i.ge = shl i64 %i.gd, 2
  %i.gf = add i64 %i.ge, 4
  call void @_ZdlPvm(ptr noundef %i.gb, i64 noundef %i.gf) #35
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit55: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i32 0, ptr %i.a, align 4, !tbaa !91
  %i.gg = call noundef zeroext i1 @_ZN5boost6detail22lexical_converter_implIwwE11try_convertERKwRw(ptr noundef nonnull align 4 dereferenceable(4) %i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br i1 %i.gg, label %_ZN5boost12lexical_castIwwEET_RKT0_.exit, label %bb.z

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit55
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #33
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %0, align 8, !tbaa !37
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_ZTIw, ptr %i.gh, align 8, !tbaa !42
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @_ZTIw, ptr %i.gi, align 8, !tbaa !43
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %0) #34
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.gj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #33
  br label %common.resume

_ZN5boost12lexical_castIwwEET_RKT0_.exit:         ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit55
  %i.gk = load i32, ptr %i.a, align 4, !tbaa !91
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.gl = load i32, ptr %i.i, align 16, !tbaa !91
  %i.gm = icmp eq i32 %i.gk, %i.gl
  %i.gn = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.283, ptr noundef nonnull @.str.2, i32 noundef 488, ptr noundef nonnull @__PRETTY_FUNCTION__._Z27test_char_types_conversionsv, i1 noundef zeroext %i.gm) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #33
  ret void

bb.ac:                                            ; preds = %.noexc.i
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

bb.ad:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.gp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gq = load ptr, ptr %2, align 8, !tbaa !52    ; 2 uses
  %i.gr = icmp eq ptr %i.gq, %i.s
  br i1 %i.gr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %bb.ad
  %i.gs = load i64, ptr %i.s, align 8, !tbaa !25
  %i.gt = add i64 %i.gs, 1
  call void @_ZdlPvm(ptr noundef %i.gq, i64 noundef %i.gt) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56, %bb.ac
  %.pn = phi { ptr, i32 } [ %i.go, %bb.ac ], [ %i.gp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56 ], [ %i.gp, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  %i.gu = load ptr, ptr %1, align 8, !tbaa !52    ; 2 uses
  %i.gv = icmp eq ptr %i.gu, %i.j
  br i1 %i.gv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58
  %i.gw = load i64, ptr %i.j, align 8, !tbaa !25
  %i.gx = add i64 %i.gw, 1
  call void @_ZdlPvm(ptr noundef %i.gu, i64 noundef %i.gx) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  br label %bb.ak

bb.ae:                                            ; preds = %.noexc.i22
  %i.gy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

bb.af:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit26
  %i.gz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ha = load ptr, ptr %4, align 8, !tbaa !52    ; 2 uses
  %i.hb = icmp eq ptr %i.ha, %i.bd
  br i1 %i.hb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %bb.af
  %i.hc = load i64, ptr %i.bd, align 8, !tbaa !25
  %i.hd = add i64 %i.hc, 1
  call void @_ZdlPvm(ptr noundef %i.ha, i64 noundef %i.hd) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62, %bb.ae
  %.pn7 = phi { ptr, i32 } [ %i.gy, %bb.ae ], [ %i.gz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62 ], [ %i.gz, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.he = load ptr, ptr %3, align 8, !tbaa !52    ; 2 uses
  %i.hf = icmp eq ptr %i.he, %i.au
  br i1 %i.hf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64
  %i.hg = load i64, ptr %i.au, align 8, !tbaa !25
  %i.hh = add i64 %i.hg, 1
  call void @_ZdlPvm(ptr noundef %i.he, i64 noundef %i.hh) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %bb.ak

bb.ag:                                            ; preds = %.noexc.i38
  %i.hi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

end_hunk_3
