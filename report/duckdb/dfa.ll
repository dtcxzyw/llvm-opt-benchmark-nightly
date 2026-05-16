inline.NumInlined: 1354
inline.NumDeleted: 544
begin_hunk_0_@_ZN10duckdb_re23DFA13AnalyzeSearchEPNS0_12SearchParamsE
define hidden noundef zeroext i1 @_ZN10duckdb_re23DFA13AnalyzeSearchEPNS0_12SearchParamsE(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef captures(none) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.LogMessage, align 8          ; 11 uses
  %3 = alloca %class.LogMessage, align 8          ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val50 = load ptr, ptr %1, align 8, !tbaa !175 ; 4 uses
  %.val49 = load ptr, ptr %i.a, align 8, !tbaa !175 ; 3 uses
  %i.b = icmp ult ptr %.val50, %.val49
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 8
  %.val62 = load i64, ptr %i.c, align 8, !tbaa !176
  %i.d = getelementptr inbounds nuw i8, ptr %.val50, i64 %.val62 ; 3 uses
  %i.e = getelementptr i8, ptr %1, i64 24
  %.val60 = load i64, ptr %i.e, align 8, !tbaa !176
  %i.f = getelementptr inbounds nuw i8, ptr %.val49, i64 %.val60 ; 2 uses
  %i.g = icmp ugt ptr %i.d, %i.f
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  store i8 0, ptr %2, align 8, !tbaa !136
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.h)
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.16, i64 noundef 29)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  %i.j = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.j, ptr %i.h, align 8, !tbaa !145
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.l = getelementptr i8, ptr %i.j, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %i.h, i64 %i.m
  store ptr %i.k, ptr %i.n, align 8, !tbaa !145
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.o, align 8, !tbaa !145
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !106  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN10LogMessageD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZdlPv(ptr noundef %i.q) #22
  br label %_ZN10LogMessageD2Ev.exit

_ZN10LogMessageD2Ev.exit:                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.o, align 8, !tbaa !145
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.t) #19
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.u) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr inttoptr (i64 1 to ptr), ptr %i.v, align 8, !tbaa !170
  br label %bb.t

bb.d:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.u

bb.e:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 35
  %i.y = load i8, ptr %i.x, align 1, !tbaa !217, !range !118, !noundef !119
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.aa = icmp eq ptr %.val50, %.val49
  br i1 %i.aa, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds i8, ptr %.val50, i64 -1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !105 ; 4 uses
  %i.ad = icmp eq i8 %i.ac, 10
  br i1 %i.ad, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = and i8 %i.ac, -33
  %i.af = add i8 %i.ae, -65
  %or.cond15.i = icmp ult i8 %i.af, 26
  %i.ag = add i8 %i.ac, -48
  %or.cond8.i = icmp ult i8 %i.ag, 10
  %or.cond16.i = or i1 %or.cond8.i, %or.cond15.i
  %i.ah = icmp eq i8 %i.ac, 95
  %i.ai = or i1 %i.ah, %or.cond16.i               ; 2 uses
  %. = select i1 %i.ai, i64 4, i64 6
  %.43 = select i1 %i.ai, i32 512, i32 0
  br label %bb.l

bb.i:                                             ; preds = %bb.e
  %i.aj = icmp eq ptr %i.d, %i.f
  br i1 %i.aj, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = load i8, ptr %i.d, align 1, !tbaa !105  ; 4 uses
  %i.al = icmp eq i8 %i.ak, 10
  br i1 %i.al, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = and i8 %i.ak, -33
  %i.an = add i8 %i.am, -65
  %or.cond15.i63 = icmp ult i8 %i.an, 26
  %i.ao = add i8 %i.ak, -48
  %or.cond8.i64 = icmp ult i8 %i.ao, 10
  %or.cond16.i65 = or i1 %or.cond8.i64, %or.cond15.i63
  %i.ap = icmp eq i8 %i.ak, 95
  %i.aq = or i1 %i.ap, %or.cond16.i65             ; 2 uses
  %.44 = select i1 %i.aq, i64 4, i64 6
  %.45 = select i1 %i.aq, i32 512, i32 0
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.037 = phi i64 [ 2, %bb.j ], [ 0, %bb.f ], [ %., %bb.h ], [ 2, %bb.g ], [ %.44, %bb.k ], [ 0, %bb.i ]
  %.036 = phi i32 [ 1, %bb.j ], [ 5, %bb.f ], [ %.43, %bb.h ], [ 1, %bb.g ], [ %.45, %bb.k ], [ 5, %bb.i ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !218, !range !118, !noundef !119
  %i.at = zext nneg i8 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.037
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.at ; 3 uses
  %i.ax = tail call noundef zeroext i1 @_ZN10duckdb_re23DFA19AnalyzeSearchHelperEPNS0_12SearchParamsEPNS0_9StartInfoEj(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef nonnull %1, ptr noundef nonnull %i.aw, i32 noundef %.036)
  br i1 %i.ax, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !180
  tail call void @_ZN10duckdb_re23DFA10ResetCacheEPNS0_8RWLockerE(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef %i.az)
  %i.ba = tail call noundef zeroext i1 @_ZN10duckdb_re23DFA19AnalyzeSearchHelperEPNS0_12SearchParamsEPNS0_9StartInfoEj(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef nonnull %1, ptr noundef nonnull %i.aw, i32 noundef %.036)
  br i1 %i.ba, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 1, ptr %i.bb, align 8, !tbaa !179
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store i8 0, ptr %3, align 8, !tbaa !136
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.bc)
  %i.bd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull @.str.17, i64 noundef 30)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66 unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66: ; preds = %bb.n
  %i.be = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !145
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bg = getelementptr i8, ptr %i.be, i64 -24
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds i8, ptr %i.bc, i64 %i.bh
  store ptr %i.bf, ptr %i.bi, align 8, !tbaa !145
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bj, align 8, !tbaa !145
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !106 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZN10LogMessageD2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i67: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66
  call void @_ZdlPv(ptr noundef %i.bl) #22
  br label %_ZN10LogMessageD2Ev.exit69

_ZN10LogMessageD2Ev.exit69:                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i67
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bj, align 8, !tbaa !145
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bo) #19
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.bp) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.u

bb.p:                                             ; preds = %bb.m, %bb.l
  %i.br = load atomic ptr, ptr %i.aw acquire, align 8 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !170
  %i.bt = load ptr, ptr %0, align 8, !tbaa !9
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !199
  %.not70 = icmp eq i64 %i.bv, 0
  br i1 %.not70, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bw = load i8, ptr %i.ar, align 8, !tbaa !218, !range !118, !noundef !119
  %i.bx = trunc nuw i8 %i.bw to i1
  %i.by = icmp ule ptr %i.br, inttoptr (i64 2 to ptr)
  %or.cond.not = select i1 %i.bx, i1 true, i1 %i.by
  br i1 %or.cond.not, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bz = getelementptr inbounds nuw i8, ptr %i.br, i64 14
  %4 = load i16, ptr %i.bz, align 2, !tbaa !111
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 33
  store i8 1, ptr %i.ca, align 1, !tbaa !215
  br label %bb.t

bb.t:                                             ; preds = %_ZN10LogMessageD2Ev.exit69, %bb.s, %bb.r, %bb.q, %bb.p, %_ZN10LogMessageD2Ev.exit
  %.1 = phi i1 [ true, %_ZN10LogMessageD2Ev.exit ], [ false, %_ZN10LogMessageD2Ev.exit69 ], [ true, %bb.s ], [ true, %bb.r ], [ true, %bb.p ], [ true, %bb.q ]
  ret i1 %.1

bb.u:                                             ; preds = %bb.o, %bb.d
  %.pn = phi { ptr, i32 } [ %i.w, %bb.d ], [ %i.bq, %bb.o ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN10duckdb_re23DFA19AnalyzeSearchHelperEPNS0_12SearchParamsEPNS0_9StartInfoEj(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef readonly captures(none) %1, ptr noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb_re2::MutexLock", align 8 ; 5 uses
  %i.a = load atomic ptr, ptr %2 acquire, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %4, align 8, !tbaa !152
  %i.c = tail call i32 @pthread_rwlock_wrlock(ptr noundef nonnull align 8 dereferenceable(56) %i.b) #19
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN10duckdb_re29MutexLockC2EPNS_5MutexE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull @.str.18)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #20
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.t, %bb.i ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.d) #19
  br label %common.resume

_ZN10duckdb_re29MutexLockC2EPNS_5MutexE.exit:     ; preds = %bb.b
  %i.f = load atomic ptr, ptr %2 monotonic, align 8
  %.not14 = icmp eq ptr %i.f, null
  br i1 %.not14, label %bb.f, label %bb.k

bb.f:                                             ; preds = %_ZN10duckdb_re29MutexLockC2EPNS_5MutexE.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !91   ; 4 uses
  store i32 0, ptr %i.h, align 8, !tbaa !82
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load i32, ptr %i.i, align 8, !tbaa !86
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store i32 %i.j, ptr %i.k, align 8, !tbaa !89
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load i8, ptr %i.l, align 8, !tbaa !218, !range !118, !noundef !119
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = load ptr, ptr %0, align 8
  %.in.v = select i1 %i.n, i64 8, i64 12
  %.in = getelementptr inbounds nuw i8, ptr %i.o, i64 %.in.v
  %i.p = load i32, ptr %.in, align 4, !tbaa !3
  invoke void @_ZN10duckdb_re23DFA10AddToQueueEPNS0_5WorkqEij(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef nonnull %i.h, i32 noundef %i.p, i32 noundef %3)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !91
  %i.r = invoke noundef ptr @_ZN10duckdb_re23DFA18WorkqToCachedStateEPNS0_5WorkqES2_j(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef %i.q, ptr noundef null, i32 noundef %3)
          to label %bb.h unwind label %bb.i       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10duckdb_re29MutexLockD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %common.resume

bb.j:                                             ; preds = %bb.h
  store atomic ptr %i.r, ptr %2 release, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %_ZN10duckdb_re29MutexLockC2EPNS_5MutexE.exit, %bb.j
  %.0 = phi i1 [ true, %bb.j ], [ true, %_ZN10duckdb_re29MutexLockC2EPNS_5MutexE.exit ], [ false, %bb.h ]
  %i.u = tail call i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.b) #19
  %.not.i.i15 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i15, label %_ZN10duckdb_re29MutexLockD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = tail call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull @.str.18)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  invoke void @__cxa_throw(ptr nonnull %i.v, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #20
          to label %.noexc.i unwind label %bb.o

.noexc.i:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_free_exception(ptr nonnull %i.v) #19
  br label %.body.i

bb.o:                                             ; preds = %bb.m
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.i

.body.i:                                          ; preds = %bb.o, %bb.n
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.x, %bb.o ], [ %i.w, %bb.n ]
  %i.y = extractvalue { ptr, i32 } %eh.lpad-body.i, 0
  tail call void @__clang_call_terminate(ptr %i.y) #23
  unreachable

_ZN10duckdb_re29MutexLockD2Ev.exit:               ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %_ZN10duckdb_re29MutexLockD2Ev.exit
  %.1 = phi i1 [ %.0, %_ZN10duckdb_re29MutexLockD2Ev.exit ], [ true, %bb.a ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN10duckdb_re23DFA6SearchERKNS_11StringPieceES3_bbbPbPPKcPNS_10SparseSetTIvEE(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5, ptr noundef writeonly captures(none) initializes((0, 1)) %6, ptr noundef writeonly captures(none) initializes((0, 8)) %7, ptr noundef %8) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.duckdb_re2::DFA::RWLocker", align 8 ; 8 uses
  %10 = alloca %"struct.duckdb_re2::DFA::SearchParams", align 8 ; 16 uses
  store ptr null, ptr %7, align 8, !tbaa !219
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !tbaa !37, !range !118, !noundef !119
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %6, align 1, !tbaa !7
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  store i8 0, ptr %6, align 1, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  store ptr %i.d, ptr %9, align 8, !tbaa !156
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i8 0, ptr %i.e, align 8, !tbaa !158
  %i.f = tail call i32 @pthread_rwlock_rdlock(ptr noundef nonnull align 8 dereferenceable(56) %i.d) #19
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_ZN10duckdb_re23DFA8RWLockerC2EPNS_5MutexE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull @.str.18)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #20
  unreachable

common.resume:                                    ; preds = %bb.q, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.f ], [ %.pn, %bb.q ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.g) #19
  br label %common.resume

_ZN10duckdb_re23DFA8RWLockerC2EPNS_5MutexE.exit:  ; preds = %bb.c
  %i.i = zext i1 %3 to i8
  %i.j = zext i1 %4 to i8
  %i.k = zext i1 %5 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %10, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !220
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !220
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  store ptr null, ptr %i.n, align 8, !tbaa !170
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 48
  store i32 0, ptr %i.m, align 8
  store ptr %9, ptr %i.o, align 8, !tbaa !180
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 56 ; 2 uses
  store i8 0, ptr %i.p, align 8, !tbaa !179
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 64 ; 2 uses
end_hunk_0
