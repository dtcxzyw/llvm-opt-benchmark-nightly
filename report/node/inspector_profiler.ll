Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/inspector_profiler?download=true
inline.NumInlined: 3534
inline.NumDeleted: 1374
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN4node8profiler20V8ProfilerConnection25V8ProfilerSessionDelegate21SendMessageToFrontendERKN12v8_inspector10StringViewE:bb.a

bb.ca:                                            ; preds = %bb.bz
  %i.qg = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  br label %.critedge79.i.sink.split

.critedge79.i.sink.split:                         ; preds = %bb.ca, %bb.cl
  %.ph = phi ptr [ %i.sw, %bb.cl ], [ %i.qg, %bb.ca ]
  store i32 0, ptr %i.ap, align 4, !noalias !92
  br label %.critedge79.i.preheader

.critedge79.i.preheader:                          ; preds = %bb.bz, %.critedge79.i.sink.split
  %.ph1731 = phi ptr [ %.ph, %.critedge79.i.sink.split ], [ %.ptr1652, %bb.bz ]
  br label %.critedge79.i

.critedge79.i:                                    ; preds = %.critedge79.i.preheader, %bb.ck
  %i.qh = phi ptr [ %i.sw, %bb.ck ], [ %.ph1731, %.critedge79.i.preheader ] ; 6 uses
  %i.qi = icmp ugt ptr %i.qh, %i.dq
  call void @llvm.assume(i1 %i.qi), !noalias !92
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qh, i64 4 ; 3 uses
  store ptr %i.qj, ptr %i.al, align 8, !noalias !92
  %i.qk = load i32, ptr %i.qh, align 4, !noalias !92
  %i.ql = zext i32 %i.qk to i64
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ne, i64 %i.ql ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 1 ; 2 uses
  %i.qo = icmp ugt ptr %i.qj, %i.dq
  call void @llvm.assume(i1 %i.qo), !noalias !92
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qh, i64 8 ; 3 uses
  store ptr %i.qp, ptr %i.al, align 8, !noalias !92
  %i.qq = load i32, ptr %i.qj, align 4, !noalias !92
  %i.qr = zext i32 %i.qq to i64
  %i.qs = getelementptr inbounds nuw i8, ptr %i.ne, i64 %i.qr
  %i.qt = load i8, ptr %i.qs, align 1, !noalias !92
  %.not.i141 = icmp eq i8 %i.qt, 58               ; 2 uses
  br i1 %.not.i141, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %.critedge79.i
  store i32 3, ptr %i.ao, align 8, !noalias !92
  br label %_ZN8simdjson8fallback8ondemand14value_iterator11field_valueEv.exit143

bb.cc:                                            ; preds = %.critedge79.i
  store i32 2, ptr %i.ap, align 4, !noalias !92
  br label %_ZN8simdjson8fallback8ondemand14value_iterator11field_valueEv.exit143

_ZN8simdjson8fallback8ondemand14value_iterator11field_valueEv.exit143: ; preds = %bb.cb, %bb.cc
  call void @llvm.assume(i1 %.not.i141), !noalias !92
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qm, i64 7
  %i.qv = load i8, ptr %i.qu, align 1, !noalias !92
  %i.qw = icmp eq i8 %i.qv, 34
  br i1 %i.qw, label %.split1460, label %bb.cd

.split1460:                                       ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator11field_valueEv.exit143
  %i.qx = load i32, ptr %i.qn, align 1
  %i.qy = xor i32 %i.qx, 1970496882
  %i.qz = getelementptr i8, ptr %i.qn, i64 4
  %i.ra = load i16, ptr %i.qz, align 1
  %i.rb = zext i16 %i.ra to i32
  %i.rc = xor i32 %i.rb, 29804
  %i.rd = or i32 %i.qy, %i.rc
  %i.re = icmp ne i32 %i.rd, 0
  %i.rf = zext i1 %i.re to i32
  %.not10.i169 = icmp eq i32 %i.rf, 0
  br i1 %.not10.i169, label %.loopexit1674, label %bb.cd

bb.cd:                                            ; preds = %.split1460, %_ZN8simdjson8fallback8ondemand14value_iterator11field_valueEv.exit143
  %i.rg = icmp ugt ptr %i.qp, %i.dq
  call void @llvm.assume(i1 %i.rg), !noalias !92
  %i.rh = getelementptr inbounds nuw i8, ptr %i.qh, i64 12 ; 7 uses
  store ptr %i.rh, ptr %i.al, align 8, !noalias !92
  %i.ri = load i32, ptr %i.qp, align 4, !noalias !92
  %i.rj = zext i32 %i.ri to i64
  %i.rk = getelementptr inbounds nuw i8, ptr %i.ne, i64 %i.rj
  %i.rl = load i8, ptr %i.rk, align 1, !noalias !92
  switch i8 %i.rl, label %.critedge81.i.sink.split [
    i8 91, label %bb.cg
    i8 123, label %bb.cg
    i8 58, label %bb.cg
    i8 44, label %bb.cg
    i8 34, label %bb.ce
  ]

bb.ce:                                            ; preds = %bb.cd
  %i.rm = load i32, ptr %i.rh, align 4, !noalias !92
  %i.rn = zext i32 %i.rm to i64
  %i.ro = getelementptr inbounds nuw i8, ptr %i.ne, i64 %i.rn
  %i.rp = load i8, ptr %i.ro, align 1, !noalias !92
  %i.rq = icmp eq i8 %i.rp, 58
  br i1 %i.rq, label %bb.cf, label %.critedge81.i.sink.split

bb.cf:                                            ; preds = %bb.ce
  %i.rr = getelementptr inbounds nuw i8, ptr %i.qh, i64 16
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cd, %bb.cd, %bb.cd, %bb.cd, %bb.cf
  %i.rs = phi ptr [ %i.rh, %bb.cd ], [ %i.rh, %bb.cd ], [ %i.rh, %bb.cd ], [ %i.rh, %bb.cd ], [ %i.rr, %bb.cf ] ; 2 uses
  %i.rt = load ptr, ptr %i.ng, align 8, !noalias !92 ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 8
  %i.rv = load i32, ptr %i.ru, align 8, !noalias !92
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rt, i64 16
  %i.rx = zext i32 %i.rv to i64
  %i.ry = load ptr, ptr %i.rw, align 8, !noalias !92
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %i.ry, i64 %i.rx
  %i.sa = icmp ult ptr %i.rs, %i.rz
  br i1 %i.sa, label %.lr.ph1549, label %._crit_edge1550

.lr.ph1549:                                       ; preds = %bb.cg, %bb.cj
  %i.sb = phi i32 [ %i.sk, %bb.cj ], [ 2, %bb.cg ] ; 4 uses
  %i.sc = phi ptr [ %i.sd, %bb.cj ], [ %i.rs, %bb.cg ] ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 4 ; 4 uses
  store ptr %i.sd, ptr %i.al, align 8, !noalias !92
  %i.se = load i32, ptr %i.sc, align 4, !noalias !92
  %i.sf = zext i32 %i.se to i64
  %i.sg = getelementptr inbounds nuw i8, ptr %i.ne, i64 %i.sf
  %i.sh = load i8, ptr %i.sg, align 1, !noalias !92
  switch i8 %i.sh, label %bb.cj [
    i8 91, label %bb.ch
    i8 123, label %bb.ch
    i8 93, label %bb.ci
    i8 125, label %bb.ci
  ]

bb.ch:                                            ; preds = %.lr.ph1549, %.lr.ph1549
  %i.si = add nsw i32 %i.sb, 1                    ; 2 uses
  store i32 %i.si, ptr %i.ap, align 4, !noalias !92
  br label %bb.cj

bb.ci:                                            ; preds = %.lr.ph1549, %.lr.ph1549
  %i.sj = add nsw i32 %i.sb, -1                   ; 2 uses
  store i32 %i.sj, ptr %i.ap, align 4, !noalias !92
  %.not8.i173 = icmp sgt i32 %i.sb, 2
  br i1 %.not8.i173, label %bb.cj, label %.critedge81.i

bb.cj:                                            ; preds = %.lr.ph1549, %bb.ci, %bb.ch
  %i.sk = phi i32 [ %i.sb, %.lr.ph1549 ], [ %i.sj, %bb.ci ], [ %i.si, %bb.ch ]
  %i.sl = load ptr, ptr %i.ng, align 8, !noalias !92 ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 8
  %i.sn = load i32, ptr %i.sm, align 8, !noalias !92
  %i.so = getelementptr inbounds nuw i8, ptr %i.sl, i64 16
  %i.sp = zext i32 %i.sn to i64
  %i.sq = load ptr, ptr %i.so, align 8, !noalias !92
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %i.sq, i64 %i.sp
  %i.ss = icmp ult ptr %i.sd, %i.sr
  br i1 %i.ss, label %.lr.ph1549, label %._crit_edge1550, !llvm.loop !6

._crit_edge1550:                                  ; preds = %bb.cg, %bb.cj
  store i32 3, ptr %i.ao, align 8, !noalias !92
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand5valueEE10get_objectEv.exit.thread1488

.critedge81.i.sink.split:                         ; preds = %bb.cd, %bb.ce
  store i32 1, ptr %i.ap, align 4, !noalias !92
  br label %.critedge81.i

.critedge81.i:                                    ; preds = %bb.ci, %.critedge81.i.sink.split
  %i.st = phi ptr [ %i.rh, %.critedge81.i.sink.split ], [ %i.sd, %bb.ci ] ; 4 uses
  %i.su = icmp eq ptr %i.st, %.0.i40
  br i1 %i.su, label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand5valueEE10get_objectEv.exit.thread1488, label %bb.ck

bb.ck:                                            ; preds = %.critedge81.i
  %i.sv = icmp ugt ptr %i.st, %i.dq
  call void @llvm.assume(i1 %i.sv), !noalias !92
  %i.sw = getelementptr inbounds nuw i8, ptr %i.st, i64 4 ; 3 uses
  store ptr %i.sw, ptr %i.al, align 8, !noalias !92
  %i.sx = load i32, ptr %i.st, align 4, !noalias !92
  %i.sy = zext i32 %i.sx to i64
  %i.sz = getelementptr inbounds nuw i8, ptr %i.ne, i64 %i.sy
  %i.ta = load i8, ptr %i.sz, align 1, !noalias !92
  %.not1730 = icmp eq i8 %i.ta, 125
  br i1 %.not1730, label %bb.cl, label %.critedge79.i, !llvm.loop !8

bb.cl:                                            ; preds = %bb.ck
  br label %.critedge79.i.sink.split, !llvm.loop !8

.loopexit1674:                                    ; preds = %.split1445, %.split1460
  %i.tb = load ptr, ptr %i.al, align 8, !noalias !93 ; 6 uses
  %i.tc = icmp ugt ptr %i.tb, %i.dq
  call void @llvm.assume(i1 %i.tc), !noalias !93
  %i.td = load ptr, ptr %4, align 8, !noalias !94 ; 2 uses
  %i.te = load i32, ptr %i.tb, align 4, !noalias !94
  %i.tf = zext i32 %i.te to i64
  %i.tg = getelementptr inbounds nuw i8, ptr %i.td, i64 %i.tf
  %i.th = load i8, ptr %i.tg, align 1, !noalias !94
  %.not8.i.i = icmp eq i8 %i.th, 123
  br i1 %.not8.i.i, label %bb.cm, label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand5valueEE10get_objectEv.exit.thread1488

bb.cm:                                            ; preds = %.loopexit1674
  %i.ti = getelementptr inbounds nuw i8, ptr %i.tb, i64 4
  store ptr %i.ti, ptr %i.al, align 8, !noalias !94
  %i.tj = getelementptr inbounds nuw i8, ptr %i.tb, i64 4
  %i.tk = load i32, ptr %i.tj, align 4, !noalias !94
  %i.tl = zext i32 %i.tk to i64
  %i.tm = getelementptr inbounds nuw i8, ptr %i.td, i64 %i.tl
  %i.tn = load i8, ptr %i.tm, align 1, !noalias !94
  %i.to = icmp eq i8 %i.tn, 125
  br i1 %i.to, label %bb.cn, label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand5valueEE10get_objectEv.exit.thread

bb.cn:                                            ; preds = %bb.cm
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tb, i64 8
  store ptr %i.tp, ptr %i.al, align 8, !noalias !94
  store i32 1, ptr %i.ap, align 4, !noalias !94
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand5valueEE10get_objectEv.exit.thread

_ZN8simdjson15simdjson_resultINS_8fallback8ondemand5valueEE10get_objectEv.exit.thread1488: ; preds = %.critedge81.i, %bb.by, %bb.bp, %._crit_edge1543, %_ZNO8simdjson8internal20simdjson_result_baseIbE3tieERbRNS_10error_codeE.exit87.i, %bb.bn, %._crit_edge1540, %bb.bm, %._crit_edge1550, %bb.az, %.loopexit1674
  %i.tq = load ptr, ptr @stderr, align 8
  %i.tr = load ptr, ptr %i.b, align 8
  %i.ts = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.tq, ptr noundef nonnull @.str.27, ptr noundef %i.tr) #34 ; 0 uses
  %i.tt = load ptr, ptr @stderr, align 8
  %i.tu = load i64, ptr %i.c, align 8
  %i.tv = trunc i64 %i.tu to i32
  %i.tw = load ptr, ptr %3, align 8
  %i.tx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.tt, ptr noundef nonnull @.str.21, i32 noundef %i.tv, ptr noundef %i.tw) #34 ; 0 uses
  br label %bb.co

_ZN8simdjson15simdjson_resultINS_8fallback8ondemand5valueEE10get_objectEv.exit.thread: ; preds = %bb.cm, %bb.cn
  store ptr %4, ptr %6, align 8
  store i32 2, ptr %i.kt, align 8
  %.sroa.0378.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 0, ptr %.sroa.0378.sroa.7.0..sroa_idx, align 4
  store ptr %i.tb, ptr %i.ku, align 8
  %i.ty = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.tz = load ptr, ptr %i.ty, align 8
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 72
  %i.ub = load ptr, ptr %i.ua, align 8
  call void %i.ub(ptr noundef nonnull align 8 dereferenceable(136) %i.ty, ptr noundef nonnull %6) #28
  %i.uc = load ptr, ptr %i.e, align 8
  %i.ud = load i64, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.ud, ptr %i.a, align 8
  %i.ue = getelementptr inbounds nuw i8, ptr %i.uc, i64 24
  %i.uf = call noundef i64 @_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKm(ptr noundef nonnull align 8 dereferenceable(56) %i.ue, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.co

bb.co:                                            ; preds = %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand5valueEE10get_objectEv.exit.thread, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand5valueEE10get_objectEv.exit.thread1488
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %_ZN4node5DebugIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvPNS_16EnabledDebugListENS_13DebugCategoryEPKcDpOT_.exit, %_ZNO8simdjson8internal20simdjson_result_baseImE3tieERmRNS_10error_codeE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand6objectEE3getIS3_EENS_10error_codeERT_.exit17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %i.ug = load ptr, ptr %3, align 8               ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ug, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.uh = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ui = load ptr, ptr %i.uh, align 8
  %i.uj = ptrtoint ptr %i.ui to i64
  %i.uk = ptrtoint ptr %i.ug to i64
  %i.ul = sub i64 %i.uj, %i.uk
  call void @_ZdlPvm(ptr noundef nonnull %i.ug, i64 noundef %i.ul) #31
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %bb.cr, %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @_ZN2v87Context4ExitEv(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0.0.copyload.i.i.i) #28
  %i.um = load ptr, ptr %2, align 8               ; 3 uses
  %i.un = icmp eq ptr %i.um, null
  br i1 %i.un, label %_ZN2v811HandleScopeD2Ev.exit, label %bb.ct, !prof !32

bb.ct:                                            ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit
  %i.uo = ptrtoint ptr %i.um to i64
  %i.up = add i64 %i.uo, 560
  %i.uq = inttoptr i64 %i.up to ptr               ; 4 uses
  %i.ur = load ptr, ptr %i.uq, align 8
  %i.us = load ptr, ptr %i.o, align 8
  store ptr %i.us, ptr %i.uq, align 8
  store ptr %i.ur, ptr %i.o, align 8
  %i.ut = getelementptr inbounds nuw i8, ptr %i.uq, i64 16 ; 2 uses
  %i.uu = load i32, ptr %i.ut, align 8
  %i.uv = add nsw i32 %i.uu, -1
  store i32 %i.uv, ptr %i.ut, align 8
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uq, i64 8 ; 2 uses
  %i.ux = load ptr, ptr %i.uw, align 8
  %i.uy = load ptr, ptr %i.r, align 8             ; 2 uses
  %.not.i20 = icmp eq ptr %i.ux, %i.uy
  br i1 %.not.i20, label %_ZN2v811HandleScopeD2Ev.exit, label %bb.cu, !prof !35

bb.cu:                                            ; preds = %bb.ct
  store ptr %i.uy, ptr %i.uw, align 8
  call void @_ZN2v811HandleScope16DeleteExtensionsEPNS_7IsolateE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %i.um) #28
  br label %_ZN2v811HandleScopeD2Ev.exit

_ZN2v811HandleScopeD2Ev.exit:                     ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit, %bb.ct, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #8

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZNK4node8profiler20V8CoverageConnection11GetFilenameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(145) %1) unnamed_addr #9 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.d = tail call noundef double @_ZN4node28GetCurrentTimeInMicrosecondsEv() #28
  %i.e = fdiv double %i.d, 1.000000e+03
  %i.f = fptoui double %i.e to i64
  store i64 %i.f, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.g = tail call i32 @uv_os_getpid() #28
  store i32 %i.g, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 2320
  %i.k = load i64, ptr %i.j, align 8
  store i64 %i.k, ptr %i.c, align 8
  call void @_ZN4node7SPrintFIJiRmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EDpOT_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 22, ptr nonnull @.str.28, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.c) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void
}

declare noundef double @_ZN4node28GetCurrentTimeInMicrosecondsEv() local_unnamed_addr #5

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7SPrintFIJiRmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #10 comdat {
bb.a:
  tail call void @_ZN4node11SPrintFImplIiJRmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #33
  ret void
}

declare i32 @uv_os_getpid() local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node8profiler20V8ProfilerConnection10GetProfileEPN8simdjson8fallback8ondemand6objectE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::optional") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !noalias !103 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !noalias !103 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 15 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !103 ; 2 uses
  %i.f = icmp ugt ptr %i.c, %i.e
  tail call void @llvm.assume(i1 %i.f), !noalias !103
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.h = icmp eq ptr %i.c, %i.g
  br i1 %i.h, label %.critedge.i7, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 36 ; 6 uses
  %i.j = load i32, ptr %i.i, align 4, !noalias !103 ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.l = load i32, ptr %i.k, align 8, !noalias !103 ; 6 uses
  %.not = icmp slt i32 %i.j, %i.l
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.n = load i32, ptr %i.m, align 8, !noalias !103
  %.not.i12 = icmp eq i32 %i.n, 0
  br i1 %.not.i12, label %bb.d, label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand6objectEE3getIS3_EENS_10error_codeERT_.exit

bb.d:                                             ; preds = %bb.c
  store i32 %i.l, ptr %i.i, align 4, !noalias !103
  %i.o = load ptr, ptr %2, align 8, !noalias !103
  %i.p = load ptr, ptr %i.d, align 8, !noalias !103
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.q, ptr %i.r, align 8, !noalias !103
  %i.s = load ptr, ptr %2, align 8, !noalias !103 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !noalias !103 ; 3 uses
  %i.v = load ptr, ptr %i.d, align 8, !noalias !103
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = icmp eq ptr %i.u, %i.w
  tail call void @llvm.assume(i1 %i.x), !noalias !103
  %i.y = load ptr, ptr %i.s, align 8, !noalias !103
  %i.z = load i32, ptr %i.u, align 4, !noalias !103
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !noalias !103
  %.not593 = icmp eq i8 %i.ac, 125
  br i1 %.not593, label %bb.e, label %.critedge.i7

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store ptr %i.ad, ptr %i.t, align 8, !noalias !103
  %i.ae = load ptr, ptr %2, align 8, !noalias !103
  %i.af = load i32, ptr %i.k, align 8, !noalias !103 ; 3 uses
  %i.ag = add nsw i32 %i.af, -1
  %or.cond.i.i14 = icmp ne i32 %i.af, 2147483647
  tail call void @llvm.assume(i1 %or.cond.i.i14), !noalias !103
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 36 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !noalias !103
  %i.aj = icmp eq i32 %i.ai, %i.af
  tail call void @llvm.assume(i1 %i.aj), !noalias !103
  store i32 %i.ag, ptr %i.ah, align 4, !noalias !103
  br label %.critedge.i7

bb.f:                                             ; preds = %bb.b
  %.not.i51 = icmp sgt i32 %i.j, %i.l
  br i1 %.not.i51, label %bb.g, label %.loopexit574

bb.g:                                             ; preds = %bb.f
  %i.ak = load ptr, ptr %i.a, align 8, !noalias !103 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 8 uses
  store ptr %i.al, ptr %i.b, align 8, !noalias !103
  %i.am = load i32, ptr %i.c, align 4, !noalias !103
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !noalias !103
  switch i8 %i.ap, label %bb.k [
    i8 91, label %bb.l
    i8 123, label %bb.l
    i8 58, label %bb.l
    i8 44, label %bb.l
    i8 93, label %bb.h
    i8 125, label %bb.h
    i8 34, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  %i.aq = add nsw i32 %i.j, -1                    ; 3 uses
  store i32 %i.aq, ptr %i.i, align 4, !noalias !103
  %.not6.i55 = icmp sgt i32 %i.aq, %i.l
  br i1 %.not6.i55, label %bb.l, label %.loopexit574

bb.i:                                             ; preds = %bb.g
  %i.ar = load i32, ptr %i.al, align 4, !noalias !103
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !noalias !103
  %i.av = icmp eq i8 %i.au, 58
  br i1 %i.av, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.aw, ptr %i.b, align 8, !noalias !103
  br label %bb.l

bb.k:                                             ; preds = %bb.i, %bb.g
  %i.ax = add nsw i32 %i.j, -1                    ; 3 uses
  store i32 %i.ax, ptr %i.i, align 4, !noalias !103
  %.not7.i53 = icmp sgt i32 %i.ax, %i.l
  br i1 %.not7.i53, label %bb.l, label %.loopexit574

bb.l:                                             ; preds = %bb.g, %bb.g, %bb.g, %bb.g, %bb.k, %bb.j, %bb.h
  %i.ay = phi i32 [ %i.j, %bb.g ], [ %i.j, %bb.g ], [ %i.j, %bb.g ], [ %i.j, %bb.g ], [ %i.ax, %bb.k ], [ %i.j, %bb.j ], [ %i.aq, %bb.h ]
  %.promoted = phi ptr [ %i.al, %bb.g ], [ %i.al, %bb.g ], [ %i.al, %bb.g ], [ %i.al, %bb.g ], [ %i.al, %bb.k ], [ %i.aw, %bb.j ], [ %i.al, %bb.h ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !103
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !103 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load i32, ptr %i.bd, align 8, !noalias !103
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bg = zext i32 %i.be to i64
  %i.bh = load ptr, ptr %i.bf, align 8, !noalias !103
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bg
  %i.bj = icmp ult ptr %.promoted, %i.bi
  br i1 %i.bj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.l, %bb.o
  %i.bk = phi i32 [ %i.bt, %bb.o ], [ %i.ay, %bb.l ] ; 3 uses
  %i.bl = phi ptr [ %i.bm, %bb.o ], [ %.promoted, %bb.l ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 4 ; 3 uses
  store ptr %i.bm, ptr %i.b, align 8, !noalias !103
  %i.bn = load i32, ptr %i.bl, align 4, !noalias !103
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !noalias !103
  switch i8 %i.bq, label %bb.o [
    i8 91, label %bb.m
    i8 123, label %bb.m
    i8 93, label %bb.n
    i8 125, label %bb.n
  ]

bb.m:                                             ; preds = %.lr.ph, %.lr.ph
  %i.br = add nsw i32 %i.bk, 1                    ; 2 uses
  store i32 %i.br, ptr %i.i, align 4, !noalias !103
  br label %bb.o

bb.n:                                             ; preds = %.lr.ph, %.lr.ph
  %i.bs = add nsw i32 %i.bk, -1                   ; 3 uses
  store i32 %i.bs, ptr %i.i, align 4, !noalias !103
  %.not8.i54 = icmp sgt i32 %i.bs, %i.l
  br i1 %.not8.i54, label %bb.o, label %.loopexit574

bb.o:                                             ; preds = %.lr.ph, %bb.n, %bb.m
  %i.bt = phi i32 [ %i.bk, %.lr.ph ], [ %i.bs, %bb.n ], [ %i.br, %bb.m ]
  %i.bu = load ptr, ptr %i.bb, align 8, !noalias !103 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load i32, ptr %i.bv, align 8, !noalias !103
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.by = zext i32 %i.bw to i64
  %i.bz = load ptr, ptr %i.bx, align 8, !noalias !103
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.by
  %i.cb = icmp ult ptr %i.bm, %i.ca
  br i1 %i.cb, label %.lr.ph, label %._crit_edge, !llvm.loop !6

._crit_edge:                                      ; preds = %bb.o, %bb.l
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 3, ptr %i.cc, align 8, !noalias !103
  %i.cd = load ptr, ptr %2, align 8, !noalias !103 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store ptr null, ptr %i.ce, align 8, !noalias !103
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 36
  store i32 0, ptr %i.cf, align 4, !noalias !103
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand6objectEE3getIS3_EENS_10error_codeERT_.exit

.loopexit574:                                     ; preds = %bb.n, %bb.f, %bb.h, %bb.k
  %i.cg = load ptr, ptr %2, align 8, !noalias !103 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !noalias !103 ; 5 uses
  %i.cj = load ptr, ptr %i.d, align 8, !noalias !103
  %i.ck = icmp ugt ptr %i.ci, %i.cj
  tail call void @llvm.assume(i1 %i.ck), !noalias !103
  %i.cl = load ptr, ptr %i.cg, align 8, !noalias !103
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  store ptr %i.cm, ptr %i.ch, align 8, !noalias !103
  %i.cn = load i32, ptr %i.ci, align 4, !noalias !103
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !noalias !103
  switch i8 %i.cq, label %.critedge [
    i8 125, label %bb.p
    i8 44, label %.critedge.i7
  ]

bb.p:                                             ; preds = %.loopexit574
  %i.cr = load ptr, ptr %2, align 8, !noalias !103
  %i.cs = getelementptr i8, ptr %i.cr, i64 36     ; 2 uses
  %i.ct = load i32, ptr %i.k, align 8, !noalias !103 ; 3 uses
  %i.cu = add nsw i32 %i.ct, -1
  %or.cond.i.i16 = icmp ne i32 %i.ct, 2147483647
  tail call void @llvm.assume(i1 %or.cond.i.i16), !noalias !103
  %i.cv = load i32, ptr %i.cs, align 4, !noalias !103
  %i.cw = icmp eq i32 %i.cv, %i.ct
  tail call void @llvm.assume(i1 %i.cw), !noalias !103
  store i32 %i.cu, ptr %i.cs, align 4, !noalias !103
  br label %.critedge.i7

.critedge:                                        ; preds = %.loopexit574
  %i.cx = load ptr, ptr %2, align 8, !noalias !103
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  store i32 3, ptr %i.cy, align 8, !noalias !103
  %i.cz = load ptr, ptr %2, align 8, !noalias !103 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store ptr null, ptr %i.da, align 8, !noalias !103
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 36
  store i32 0, ptr %i.db, align 4, !noalias !103
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand6objectEE3getIS3_EENS_10error_codeERT_.exit

.critedge.i7:                                     ; preds = %.loopexit574, %bb.p, %bb.e, %bb.d, %bb.a
  %.1 = phi i1 [ true, %bb.a ], [ true, %bb.d ], [ false, %bb.e ], [ true, %.loopexit574 ], [ false, %bb.p ]
  %.052.shrunk.i = phi i1 [ true, %bb.a ], [ true, %bb.d ], [ true, %bb.e ], [ false, %.loopexit574 ], [ false, %bb.p ]
  %.0.i8 = phi ptr [ %i.c, %bb.a ], [ %i.c, %bb.d ], [ %i.c, %bb.e ], [ %i.ci, %.loopexit574 ], [ %i.ci, %bb.p ]
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  br i1 %.1, label %.lr.ph669, label %bb.ad

.lr.ph669:                                        ; preds = %.critedge.i7, %.critedge75.i
  %i.dd = load ptr, ptr %2, align 8, !noalias !103 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !noalias !103 ; 3 uses
  %i.dg = load ptr, ptr %i.d, align 8, !noalias !103
  %i.dh = icmp ugt ptr %i.df, %i.dg
  tail call void @llvm.assume(i1 %i.dh), !noalias !103
  %i.di = load ptr, ptr %i.dd, align 8, !noalias !103
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  store ptr %i.dj, ptr %i.de, align 8, !noalias !103
  %i.dk = load i32, ptr %i.df, align 4, !noalias !103
  %i.dl = zext i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dl ; 3 uses
  %i.dn = load i8, ptr %i.dm, align 1, !noalias !103
  %.not.i21 = icmp eq i8 %i.dn, 34
  br i1 %.not.i21, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph669
  %i.do = load ptr, ptr %2, align 8, !noalias !103
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 32
  store i32 3, ptr %i.dp, align 8, !noalias !103
  %i.dq = load ptr, ptr %2, align 8, !noalias !103 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  store ptr null, ptr %i.dr, align 8, !noalias !103
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 36
  store i32 0, ptr %i.ds, align 4, !noalias !103
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand6objectEE3getIS3_EENS_10error_codeERT_.exit

bb.r:                                             ; preds = %.lr.ph669
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dm, i64 1 ; 2 uses
  %i.du = load ptr, ptr %2, align 8, !noalias !103 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !noalias !103 ; 3 uses
  %i.dx = load ptr, ptr %i.d, align 8, !noalias !103
  %i.dy = icmp ugt ptr %i.dw, %i.dx
  tail call void @llvm.assume(i1 %i.dy), !noalias !103
  %i.dz = load ptr, ptr %i.du, align 8, !noalias !103
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  store ptr %i.ea, ptr %i.dv, align 8, !noalias !103
  %i.eb = load i32, ptr %i.dw, align 4, !noalias !103
  %i.ec = zext i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 1, !noalias !103
  %.not.i29 = icmp eq i8 %i.ee, 58
  %i.ef = load ptr, ptr %2, align 8, !noalias !103 ; 2 uses
  br i1 %.not.i29, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 32
  store i32 3, ptr %i.eg, align 8, !noalias !103
  %i.eh = load ptr, ptr %2, align 8, !noalias !103 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  store ptr null, ptr %i.ei, align 8, !noalias !103
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 36
  store i32 0, ptr %i.ej, align 4, !noalias !103
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand6objectEE3getIS3_EENS_10error_codeERT_.exit

bb.t:                                             ; preds = %bb.r
  %i.ek = load i32, ptr %i.dc, align 8, !noalias !103 ; 3 uses
  %i.el = add nuw nsw i32 %i.ek, 1
  %or.cond.i60 = icmp ult i32 %i.ek, 2147483646
  tail call void @llvm.assume(i1 %or.cond.i60), !noalias !103
  %i.em = getelementptr inbounds nuw i8, ptr %i.ef, i64 36 ; 2 uses
  %i.en = load i32, ptr %i.em, align 4, !noalias !103
  %i.eo = icmp eq i32 %i.en, %i.ek
  tail call void @llvm.assume(i1 %i.eo), !noalias !103
  store i32 %i.el, ptr %i.em, align 4, !noalias !103
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.eq = load i8, ptr %i.ep, align 1, !noalias !103
  %i.er = icmp eq i8 %i.eq, 34
  br i1 %i.er, label %.split, label %_ZNK8simdjson8fallback8ondemand15raw_json_string15unsafe_is_equalESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

.split:                                           ; preds = %bb.t
  %i.es = load i32, ptr %i.dt, align 1
  %i.et = xor i32 %i.es, 1718579824
  %i.eu = getelementptr i8, ptr %i.dt, i64 3
  %i.ev = load i32, ptr %i.eu, align 1
  %i.ew = xor i32 %i.ev, 1701603686
  %i.ex = or i32 %i.et, %i.ew
  %i.ey = icmp ne i32 %i.ex, 0
  %i.ez = zext i1 %i.ey to i32
  %.not10.i = icmp eq i32 %i.ez, 0
  br i1 %.not10.i, label %.loopexit642, label %_ZNK8simdjson8fallback8ondemand15raw_json_string15unsafe_is_equalESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

_ZNK8simdjson8fallback8ondemand15raw_json_string15unsafe_is_equalESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread: ; preds = %bb.t, %.split
  %.val128 = load ptr, ptr %2, align 8            ; 5 uses
  %i.fa = getelementptr i8, ptr %.val128, i64 36  ; 5 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.val128, i64 8 ; 4 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !noalias !103 ; 4 uses
  %i.fd = load ptr, ptr %i.d, align 8, !noalias !103
  %i.fe = icmp ugt ptr %i.fc, %i.fd
  tail call void @llvm.assume(i1 %i.fe), !noalias !103
  %i.ff = load i32, ptr %i.fa, align 4, !noalias !103 ; 9 uses
  %i.fg = load i32, ptr %i.dc, align 8, !noalias !103 ; 5 uses
  %i.fh = icmp sge i32 %i.ff, %i.fg
  tail call void @llvm.assume(i1 %i.fh), !noalias !103
  %.not.i45 = icmp sgt i32 %i.ff, %i.fg
  br i1 %.not.i45, label %bb.u, label %.critedge75.i

bb.u:                                             ; preds = %_ZNK8simdjson8fallback8ondemand15raw_json_string15unsafe_is_equalESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread
  %i.fi = load ptr, ptr %.val128, align 8, !noalias !103 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fc, i64 4 ; 8 uses
  store ptr %i.fj, ptr %i.fb, align 8, !noalias !103
  %i.fk = load i32, ptr %i.fc, align 4, !noalias !103
  %i.fl = zext i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.fl
  %i.fn = load i8, ptr %i.fm, align 1, !noalias !103
  switch i8 %i.fn, label %bb.y [
    i8 91, label %bb.z
    i8 123, label %bb.z
    i8 58, label %bb.z
    i8 44, label %bb.z
    i8 93, label %bb.v
    i8 125, label %bb.v
    i8 34, label %bb.w
  ]

bb.v:                                             ; preds = %bb.u, %bb.u
  %i.fo = add nsw i32 %i.ff, -1                   ; 3 uses
  store i32 %i.fo, ptr %i.fa, align 4, !noalias !103
  %.not6.i49 = icmp sgt i32 %i.fo, %i.fg
  br i1 %.not6.i49, label %bb.z, label %.critedge75.i

bb.w:                                             ; preds = %bb.u
  %i.fp = load i32, ptr %i.fj, align 4, !noalias !103
  %i.fq = zext i32 %i.fp to i64
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.fq
  %i.fs = load i8, ptr %i.fr, align 1, !noalias !103
  %i.ft = icmp eq i8 %i.fs, 58
  br i1 %i.ft, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fc, i64 8 ; 2 uses
  store ptr %i.fu, ptr %i.fb, align 8, !noalias !103
  br label %bb.z

bb.y:                                             ; preds = %bb.w, %bb.u
  %i.fv = add nsw i32 %i.ff, -1                   ; 3 uses
  store i32 %i.fv, ptr %i.fa, align 4, !noalias !103
  %.not7.i47 = icmp sgt i32 %i.fv, %i.fg
  br i1 %.not7.i47, label %bb.z, label %.critedge75.i

bb.z:                                             ; preds = %bb.u, %bb.u, %bb.u, %bb.u, %bb.y, %bb.x, %bb.v
  %i.fw = phi i32 [ %i.ff, %bb.u ], [ %i.ff, %bb.u ], [ %i.ff, %bb.u ], [ %i.ff, %bb.u ], [ %i.fv, %bb.y ], [ %i.ff, %bb.x ], [ %i.fo, %bb.v ]
  %.promoted576 = phi ptr [ %i.fj, %bb.u ], [ %i.fj, %bb.u ], [ %i.fj, %bb.u ], [ %i.fj, %bb.u ], [ %i.fj, %bb.y ], [ %i.fu, %bb.x ], [ %i.fj, %bb.v ] ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.val128, i64 16
  %i.fy = load ptr, ptr %i.fx, align 8, !noalias !103
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8 ; 2 uses
  %i.ga = load ptr, ptr %i.fz, align 8, !noalias !103 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gc = load i32, ptr %i.gb, align 8, !noalias !103
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %i.ge = zext i32 %i.gc to i64
  %i.gf = load ptr, ptr %i.gd, align 8, !noalias !103
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %i.ge
  %i.gh = icmp ult ptr %.promoted576, %i.gg
  br i1 %i.gh, label %.lr.ph578, label %._crit_edge579

.lr.ph578:                                        ; preds = %bb.z, %bb.ac
  %i.gi = phi i32 [ %i.gr, %bb.ac ], [ %i.fw, %bb.z ] ; 3 uses
  %i.gj = phi ptr [ %i.gk, %bb.ac ], [ %.promoted576, %bb.z ] ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 4 ; 3 uses
  store ptr %i.gk, ptr %i.fb, align 8, !noalias !103
  %i.gl = load i32, ptr %i.gj, align 4, !noalias !103
  %i.gm = zext i32 %i.gl to i64
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.gm
  %i.go = load i8, ptr %i.gn, align 1, !noalias !103
  switch i8 %i.go, label %bb.ac [
    i8 91, label %bb.aa
    i8 123, label %bb.aa
    i8 93, label %bb.ab
    i8 125, label %bb.ab
  ]

bb.aa:                                            ; preds = %.lr.ph578, %.lr.ph578
  %i.gp = add nsw i32 %i.gi, 1                    ; 2 uses
  store i32 %i.gp, ptr %i.fa, align 4, !noalias !103
  br label %bb.ac

bb.ab:                                            ; preds = %.lr.ph578, %.lr.ph578
  %i.gq = add nsw i32 %i.gi, -1                   ; 3 uses
  store i32 %i.gq, ptr %i.fa, align 4, !noalias !103
  %.not8.i48 = icmp sgt i32 %i.gq, %i.fg
  br i1 %.not8.i48, label %bb.ac, label %.critedge75.i

bb.ac:                                            ; preds = %.lr.ph578, %bb.ab, %bb.aa
  %i.gr = phi i32 [ %i.gi, %.lr.ph578 ], [ %i.gq, %bb.ab ], [ %i.gp, %bb.aa ]
  %i.gs = load ptr, ptr %i.fz, align 8, !noalias !103 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.gu = load i32, ptr %i.gt, align 8, !noalias !103
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %i.gw = zext i32 %i.gu to i64
  %i.gx = load ptr, ptr %i.gv, align 8, !noalias !103
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %i.gw
  %i.gz = icmp ult ptr %i.gk, %i.gy
  br i1 %i.gz, label %.lr.ph578, label %._crit_edge579, !llvm.loop !6

._crit_edge579:                                   ; preds = %bb.z, %bb.ac
end_hunk_0
begin_hunk_1_@_ZN4node8profiler20V8ProfilerConnection10GetProfileEPN8simdjson8fallback8ondemand6objectE:bb.a
bb.ah:                                            ; preds = %.critedge79.i
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 32
  store i32 3, ptr %i.jv, align 8, !noalias !103
  br label %_ZN8simdjson8fallback8ondemand14value_iterator11field_valueEv.exit33

bb.ai:                                            ; preds = %.critedge79.i
  %i.jw = load i32, ptr %i.dc, align 8, !noalias !103 ; 3 uses
  %i.jx = add nuw nsw i32 %i.jw, 1
  %or.cond.i = icmp ult i32 %i.jw, 2147483646
  tail call void @llvm.assume(i1 %or.cond.i), !noalias !103
  %i.jy = getelementptr inbounds nuw i8, ptr %i.ju, i64 36 ; 2 uses
  %i.jz = load i32, ptr %i.jy, align 4, !noalias !103
  %i.ka = icmp eq i32 %i.jz, %i.jw
  tail call void @llvm.assume(i1 %i.ka), !noalias !103
  store i32 %i.jx, ptr %i.jy, align 4, !noalias !103
  br label %_ZN8simdjson8fallback8ondemand14value_iterator11field_valueEv.exit33

_ZN8simdjson8fallback8ondemand14value_iterator11field_valueEv.exit33: ; preds = %bb.ah, %bb.ai
  tail call void @llvm.assume(i1 %.not.i31), !noalias !103
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.kc = load i8, ptr %i.kb, align 1, !noalias !103
  %i.kd = icmp eq i8 %i.kc, 34
  br i1 %i.kd, label %.split494, label %_ZNK8simdjson8fallback8ondemand15raw_json_string15unsafe_is_equalESt17basic_string_viewIcSt11char_traitsIcEE.exit42.thread

.split494:                                        ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator11field_valueEv.exit33
  %i.ke = load i32, ptr %i.ji, align 1
  %i.kf = xor i32 %i.ke, 1718579824
  %i.kg = getelementptr i8, ptr %i.ji, i64 3
  %i.kh = load i32, ptr %i.kg, align 1
  %i.ki = xor i32 %i.kh, 1701603686
  %i.kj = or i32 %i.kf, %i.ki
  %i.kk = icmp ne i32 %i.kj, 0
  %i.kl = zext i1 %i.kk to i32
  %.not10.i41 = icmp eq i32 %i.kl, 0
  br i1 %.not10.i41, label %.loopexit642, label %_ZNK8simdjson8fallback8ondemand15raw_json_string15unsafe_is_equalESt17basic_string_viewIcSt11char_traitsIcEE.exit42.thread

_ZNK8simdjson8fallback8ondemand15raw_json_string15unsafe_is_equalESt17basic_string_viewIcSt11char_traitsIcEE.exit42.thread: ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator11field_valueEv.exit33, %.split494
  %.val130 = load ptr, ptr %2, align 8            ; 5 uses
  %i.km = getelementptr i8, ptr %.val130, i64 36  ; 5 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.val130, i64 8 ; 4 uses
  %i.ko = load ptr, ptr %i.kn, align 8, !noalias !103 ; 4 uses
  %i.kp = load ptr, ptr %i.d, align 8, !noalias !103
  %i.kq = icmp ugt ptr %i.ko, %i.kp
  tail call void @llvm.assume(i1 %i.kq), !noalias !103
  %i.kr = load i32, ptr %i.km, align 4, !noalias !103 ; 9 uses
  %i.ks = load i32, ptr %i.dc, align 8, !noalias !103 ; 5 uses
  %i.kt = icmp sge i32 %i.kr, %i.ks
  tail call void @llvm.assume(i1 %i.kt), !noalias !103
  %.not.i43 = icmp sgt i32 %i.kr, %i.ks
  br i1 %.not.i43, label %bb.aj, label %.critedge81.i

bb.aj:                                            ; preds = %_ZNK8simdjson8fallback8ondemand15raw_json_string15unsafe_is_equalESt17basic_string_viewIcSt11char_traitsIcEE.exit42.thread
  %i.ku = load ptr, ptr %.val130, align 8, !noalias !103 ; 3 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ko, i64 4 ; 8 uses
  store ptr %i.kv, ptr %i.kn, align 8, !noalias !103
  %i.kw = load i32, ptr %i.ko, align 4, !noalias !103
  %i.kx = zext i32 %i.kw to i64
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.kx
  %i.kz = load i8, ptr %i.ky, align 1, !noalias !103
  switch i8 %i.kz, label %bb.an [
    i8 91, label %bb.ao
    i8 123, label %bb.ao
    i8 58, label %bb.ao
    i8 44, label %bb.ao
    i8 93, label %bb.ak
    i8 125, label %bb.ak
    i8 34, label %bb.al
  ]

bb.ak:                                            ; preds = %bb.aj, %bb.aj
  %i.la = add nsw i32 %i.kr, -1                   ; 3 uses
  store i32 %i.la, ptr %i.km, align 4, !noalias !103
  %.not6.i = icmp sgt i32 %i.la, %i.ks
  br i1 %.not6.i, label %bb.ao, label %.critedge81.i

bb.al:                                            ; preds = %bb.aj
  %i.lb = load i32, ptr %i.kv, align 4, !noalias !103
  %i.lc = zext i32 %i.lb to i64
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.lc
  %i.le = load i8, ptr %i.ld, align 1, !noalias !103
  %i.lf = icmp eq i8 %i.le, 58
  br i1 %i.lf, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ko, i64 8 ; 2 uses
  store ptr %i.lg, ptr %i.kn, align 8, !noalias !103
  br label %bb.ao

bb.an:                                            ; preds = %bb.al, %bb.aj
  %i.lh = add nsw i32 %i.kr, -1                   ; 3 uses
  store i32 %i.lh, ptr %i.km, align 4, !noalias !103
  %.not7.i = icmp sgt i32 %i.lh, %i.ks
  br i1 %.not7.i, label %bb.ao, label %.critedge81.i

bb.ao:                                            ; preds = %bb.aj, %bb.aj, %bb.aj, %bb.aj, %bb.an, %bb.am, %bb.ak
  %i.li = phi i32 [ %i.kr, %bb.aj ], [ %i.kr, %bb.aj ], [ %i.kr, %bb.aj ], [ %i.kr, %bb.aj ], [ %i.lh, %bb.an ], [ %i.kr, %bb.am ], [ %i.la, %bb.ak ]
  %.promoted582 = phi ptr [ %i.kv, %bb.aj ], [ %i.kv, %bb.aj ], [ %i.kv, %bb.aj ], [ %i.kv, %bb.aj ], [ %i.kv, %bb.an ], [ %i.lg, %bb.am ], [ %i.kv, %bb.ak ] ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %.val130, i64 16
  %i.lk = load ptr, ptr %i.lj, align 8, !noalias !103
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 8 ; 2 uses
  %i.lm = load ptr, ptr %i.ll, align 8, !noalias !103 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  %i.lo = load i32, ptr %i.ln, align 8, !noalias !103
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lm, i64 16
  %i.lq = zext i32 %i.lo to i64
  %i.lr = load ptr, ptr %i.lp, align 8, !noalias !103
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %i.lq
  %i.lt = icmp ult ptr %.promoted582, %i.ls
  br i1 %i.lt, label %.lr.ph584, label %._crit_edge585

.lr.ph584:                                        ; preds = %bb.ao, %bb.ar
  %i.lu = phi i32 [ %i.md, %bb.ar ], [ %i.li, %bb.ao ] ; 3 uses
  %i.lv = phi ptr [ %i.lw, %bb.ar ], [ %.promoted582, %bb.ao ] ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 4 ; 3 uses
  store ptr %i.lw, ptr %i.kn, align 8, !noalias !103
  %i.lx = load i32, ptr %i.lv, align 4, !noalias !103
  %i.ly = zext i32 %i.lx to i64
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.ly
  %i.ma = load i8, ptr %i.lz, align 1, !noalias !103
  switch i8 %i.ma, label %bb.ar [
    i8 91, label %bb.ap
    i8 123, label %bb.ap
    i8 93, label %bb.aq
    i8 125, label %bb.aq
  ]

bb.ap:                                            ; preds = %.lr.ph584, %.lr.ph584
  %i.mb = add nsw i32 %i.lu, 1                    ; 2 uses
  store i32 %i.mb, ptr %i.km, align 4, !noalias !103
  br label %bb.ar

bb.aq:                                            ; preds = %.lr.ph584, %.lr.ph584
  %i.mc = add nsw i32 %i.lu, -1                   ; 3 uses
  store i32 %i.mc, ptr %i.km, align 4, !noalias !103
  %.not8.i = icmp sgt i32 %i.mc, %i.ks
  br i1 %.not8.i, label %bb.ar, label %.critedge81.i

bb.ar:                                            ; preds = %.lr.ph584, %bb.aq, %bb.ap
  %i.md = phi i32 [ %i.lu, %.lr.ph584 ], [ %i.mc, %bb.aq ], [ %i.mb, %bb.ap ]
  %i.me = load ptr, ptr %i.ll, align 8, !noalias !103 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  %i.mg = load i32, ptr %i.mf, align 8, !noalias !103
  %i.mh = getelementptr inbounds nuw i8, ptr %i.me, i64 16
  %i.mi = zext i32 %i.mg to i64
  %i.mj = load ptr, ptr %i.mh, align 8, !noalias !103
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %i.mi
  %i.ml = icmp ult ptr %i.lw, %i.mk
  br i1 %i.ml, label %.lr.ph584, label %._crit_edge585, !llvm.loop !6

._crit_edge585:                                   ; preds = %bb.ao, %bb.ar
  %i.mm = getelementptr inbounds nuw i8, ptr %.val130, i64 32
  store i32 3, ptr %i.mm, align 8, !noalias !103
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand6objectEE3getIS3_EENS_10error_codeERT_.exit

.critedge81.i:                                    ; preds = %bb.aq, %_ZNK8simdjson8fallback8ondemand15raw_json_string15unsafe_is_equalESt17basic_string_viewIcSt11char_traitsIcEE.exit42.thread, %bb.ak, %bb.an
  %i.mn = load ptr, ptr %2, align 8, !noalias !103 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 8 ; 2 uses
  %i.mp = load ptr, ptr %i.mo, align 8, !noalias !103 ; 4 uses
  %i.mq = icmp eq ptr %i.mp, %.0.i8
  br i1 %i.mq, label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand6objectEE3getIS3_EENS_10error_codeERT_.exit, label %bb.as

bb.as:                                            ; preds = %.critedge81.i
  %i.mr = load ptr, ptr %i.d, align 8, !noalias !103
  %i.ms = icmp ugt ptr %i.mp, %i.mr
  tail call void @llvm.assume(i1 %i.ms), !noalias !103
  %i.mt = load ptr, ptr %i.mn, align 8, !noalias !103
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mp, i64 4
  store ptr %i.mu, ptr %i.mo, align 8, !noalias !103
  %i.mv = load i32, ptr %i.mp, align 4, !noalias !103
  %i.mw = zext i32 %i.mv to i64
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mt, i64 %i.mw
  %i.my = load i8, ptr %i.mx, align 1, !noalias !103
  %.not672 = icmp eq i8 %i.my, 125
  br i1 %.not672, label %bb.at, label %.critedge79.i.backedge

.critedge79.i.backedge:                           ; preds = %bb.as, %bb.at
  br label %.critedge79.i, !llvm.loop !8

bb.at:                                            ; preds = %bb.as
  %i.mz = load ptr, ptr %2, align 8, !noalias !103
  %i.na = getelementptr i8, ptr %i.mz, i64 36     ; 2 uses
  %i.nb = load i32, ptr %i.dc, align 8, !noalias !103 ; 3 uses
  %i.nc = add nsw i32 %i.nb, -1
  %or.cond.i.i19 = icmp ne i32 %i.nb, 2147483647
  tail call void @llvm.assume(i1 %or.cond.i.i19), !noalias !103
  %i.nd = load i32, ptr %i.na, align 4, !noalias !103
  %i.ne = icmp eq i32 %i.nd, %i.nb
  tail call void @llvm.assume(i1 %i.ne), !noalias !103
  store i32 %i.nc, ptr %i.na, align 4, !noalias !103
  br label %.critedge79.i.backedge

.loopexit642:                                     ; preds = %.split, %.split494
  %i.nf = load ptr, ptr %2, align 8, !noalias !104 ; 9 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 8 ; 8 uses
  %i.nh = load ptr, ptr %i.ng, align 8, !noalias !104 ; 8 uses
  %i.ni = load ptr, ptr %i.d, align 8, !noalias !104
  %i.nj = icmp ugt ptr %i.nh, %i.ni
  tail call void @llvm.assume(i1 %i.nj), !noalias !104
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nf, i64 36 ; 8 uses
  %i.nl = load i32, ptr %i.nk, align 4, !noalias !104 ; 5 uses
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.nm = load i32, ptr %3, align 8, !noalias !104 ; 11 uses
  %i.nn = add nuw nsw i32 %i.nm, 1
  %i.no = icmp eq i32 %i.nl, %i.nn
  tail call void @llvm.assume(i1 %i.no), !noalias !104
  %i.np = icmp sgt i32 %i.nm, 0
  tail call void @llvm.assume(i1 %i.np), !noalias !104
  %i.nq = icmp sgt i32 %i.nl, 0
  tail call void @llvm.assume(i1 %i.nq), !noalias !105
  %i.nr = load ptr, ptr %i.nf, align 8, !noalias !105 ; 10 uses
  %i.ns = load i32, ptr %i.nh, align 4, !noalias !105
  %i.nt = zext i32 %i.ns to i64
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nr, i64 %i.nt
  %i.nv = load i8, ptr %i.nu, align 1, !noalias !105
  %.not8.i.i = icmp eq i8 %i.nv, 123
  br i1 %.not8.i.i, label %bb.au, label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand6objectEE3getIS3_EENS_10error_codeERT_.exit

bb.au:                                            ; preds = %.loopexit642
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nh, i64 4
  store ptr %i.nw, ptr %i.ng, align 8, !noalias !105
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nh, i64 4 ; 2 uses
  %i.ny = load i32, ptr %i.nx, align 4, !noalias !105
  %i.nz = zext i32 %i.ny to i64
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nr, i64 %i.nz
  %i.ob = load i8, ptr %i.oa, align 1, !noalias !105
  %i.oc = icmp eq i8 %i.ob, 125
  br i1 %i.oc, label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand5valueEE10get_objectEv.exit.thread, label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand5valueEE10get_objectEv.exit.thread.thread

_ZN8simdjson15simdjson_resultINS_8fallback8ondemand5valueEE10get_objectEv.exit.thread.thread: ; preds = %bb.au
  %i.od = load i32, ptr %i.nh, align 4, !noalias !106
  %i.oe = zext i32 %i.od to i64                   ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.nr, i64 %i.oe
  br label %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit

_ZN8simdjson15simdjson_resultINS_8fallback8ondemand6objectEE3getIS3_EENS_10error_codeERT_.exit: ; preds = %.critedge81.i, %bb.ad, %bb.ae, %bb.s, %._crit_edge579, %_ZNO8simdjson8internal20simdjson_result_baseIbE3tieERbRNS_10error_codeE.exit87.i, %._crit_edge585, %._crit_edge, %.critedge, %bb.q, %bb.c, %.loopexit642
  %i.og = load ptr, ptr @stderr, align 8
  %i.oh = load ptr, ptr %1, align 8
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 32
  %i.oj = load ptr, ptr %i.oi, align 8
  %i.ok = tail call noundef ptr %i.oj(ptr noundef nonnull align 8 dereferenceable(136) %1) #28
  %i.ol = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.og, ptr noundef nonnull @.str.30, ptr noundef %i.ok) #34 ; 0 uses
  br label %bb.bi

_ZN8simdjson15simdjson_resultINS_8fallback8ondemand5valueEE10get_objectEv.exit.thread: ; preds = %bb.au
  %i.om = getelementptr inbounds nuw i8, ptr %i.nh, i64 8 ; 3 uses
  store ptr %i.om, ptr %i.ng, align 8, !noalias !105
  %or.cond.i.i65 = icmp samesign ult i32 %i.nm, 2147483646
  tail call void @llvm.assume(i1 %or.cond.i.i65), !noalias !105
  store i32 %i.nm, ptr %i.nk, align 4, !noalias !105
  %i.on = load i32, ptr %i.nh, align 4, !noalias !106
  %i.oo = zext i32 %i.on to i64                   ; 3 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.nr, i64 %i.oo ; 2 uses
  %i.oq = icmp eq i32 %i.nl, %i.nm
  br i1 %i.oq, label %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit, label %.loopexit

_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit: ; preds = %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand5valueEE10get_objectEv.exit.thread.thread, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand5valueEE10get_objectEv.exit.thread
  %i.or = phi ptr [ %i.of, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand5valueEE10get_objectEv.exit.thread.thread ], [ %i.op, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand5valueEE10get_objectEv.exit.thread ] ; 4 uses
  %i.os = phi i64 [ %i.oe, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand5valueEE10get_objectEv.exit.thread.thread ], [ %i.oo, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand5valueEE10get_objectEv.exit.thread ] ; 4 uses
  %i.ot = phi ptr [ %i.nx, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand5valueEE10get_objectEv.exit.thread.thread ], [ %i.om, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand5valueEE10get_objectEv.exit.thread ] ; 6 uses
  %i.ou = load i32, ptr %i.ot, align 4, !noalias !106
  %i.ov = zext i32 %i.ou to i64
  %i.ow = getelementptr inbounds nuw i8, ptr %i.nr, i64 %i.ov
  %i.ox = load i8, ptr %i.ow, align 1, !noalias !106
  %i.oy = icmp eq i8 %i.ox, 34
  br i1 %i.oy, label %bb.av, label %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread

bb.av:                                            ; preds = %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ot, i64 4 ; 3 uses
  store ptr %i.oz, ptr %i.ng, align 8, !noalias !106
  %i.pa = load i32, ptr %i.ot, align 4, !noalias !106
  %i.pb = zext i32 %i.pa to i64
  %i.pc = getelementptr inbounds nuw i8, ptr %i.nr, i64 %i.pb
  %i.pd = load i8, ptr %i.pc, align 1, !noalias !106
  %.not.i.i68 = icmp eq i8 %i.pd, 34
  br i1 %.not.i.i68, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.pe = getelementptr inbounds nuw i8, ptr %i.nf, i64 32
  store i32 3, ptr %i.pe, align 8, !noalias !106
  %i.pf = getelementptr inbounds nuw i8, ptr %i.nf, i64 16
  store ptr null, ptr %i.pf, align 8, !noalias !106
  br label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE3tieERS5_RNS_10error_codeE.exit

bb.ax:                                            ; preds = %bb.av
  %i.pg = icmp ugt ptr %i.oz, %i.nh
  tail call void @llvm.assume(i1 %i.pg), !noalias !106
  %i.ph = getelementptr inbounds nuw i8, ptr %i.ot, i64 8 ; 2 uses
  store ptr %i.ph, ptr %i.ng, align 8, !noalias !106
  %i.pi = load i32, ptr %i.oz, align 4, !noalias !106
  %i.pj = zext i32 %i.pi to i64
  %i.pk = getelementptr inbounds nuw i8, ptr %i.nr, i64 %i.pj
  %i.pl = load i8, ptr %i.pk, align 1, !noalias !106
  %.not.i12.i = icmp eq i8 %i.pl, 58
  br i1 %.not.i12.i, label %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.pm = getelementptr inbounds nuw i8, ptr %i.nf, i64 32
  store i32 3, ptr %i.pm, align 8, !noalias !106
  %i.pn = getelementptr inbounds nuw i8, ptr %i.nf, i64 16
  store ptr null, ptr %i.pn, align 8, !noalias !106
  br label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE3tieERS5_RNS_10error_codeE.exit

_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread: ; preds = %bb.ax
  %i.po = add nuw nsw i32 %i.nm, 2                ; 2 uses
  %or.cond.i.i75 = icmp samesign ult i32 %i.nm, 2147483645
  tail call void @llvm.assume(i1 %or.cond.i.i75), !noalias !106
  store i32 %i.po, ptr %i.nk, align 4, !noalias !106
  br label %bb.az

_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread: ; preds = %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit
  %.not.i13.i = icmp samesign ugt i32 %i.nl, %i.nm
  br i1 %.not.i13.i, label %bb.az, label %.loopexit

bb.az:                                            ; preds = %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread
  %i.pp = phi i32 [ %i.po, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread ], [ %i.nl, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread ] ; 7 uses
  %i.pq = phi ptr [ %i.ph, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread ], [ %i.ot, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread ] ; 3 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 4 ; 10 uses
  store ptr %i.pr, ptr %i.ng, align 8, !noalias !106
  %i.ps = load i32, ptr %i.pq, align 4, !noalias !106
  %i.pt = zext i32 %i.ps to i64
  %i.pu = getelementptr inbounds nuw i8, ptr %i.nr, i64 %i.pt
  %i.pv = load i8, ptr %i.pu, align 1, !noalias !106
  switch i8 %i.pv, label %bb.bd [
    i8 91, label %bb.be
    i8 123, label %bb.be
    i8 58, label %bb.be
    i8 44, label %bb.be
    i8 93, label %bb.ba
    i8 125, label %bb.ba
    i8 34, label %bb.bb
  ]

bb.ba:                                            ; preds = %bb.az, %bb.az
  %i.pw = add nsw i32 %i.pp, -1                   ; 3 uses
  store i32 %i.pw, ptr %i.nk, align 4, !noalias !106
  %.not6.i.i = icmp samesign ugt i32 %i.pw, %i.nm
  br i1 %.not6.i.i, label %bb.be, label %.loopexit

bb.bb:                                            ; preds = %bb.az
  %i.px = load i32, ptr %i.pr, align 4, !noalias !106
  %i.py = zext i32 %i.px to i64
  %i.pz = getelementptr inbounds nuw i8, ptr %i.nr, i64 %i.py
  %i.qa = load i8, ptr %i.pz, align 1, !noalias !106
  %i.qb = icmp eq i8 %i.qa, 58
  br i1 %i.qb, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pq, i64 8 ; 2 uses
  store ptr %i.qc, ptr %i.ng, align 8, !noalias !106
  br label %bb.be

bb.bd:                                            ; preds = %bb.bb, %bb.az
  %i.qd = add nsw i32 %i.pp, -1                   ; 3 uses
  store i32 %i.qd, ptr %i.nk, align 4, !noalias !106
  %.not7.i.i = icmp samesign ugt i32 %i.qd, %i.nm
  br i1 %.not7.i.i, label %bb.be, label %.loopexit

bb.be:                                            ; preds = %bb.az, %bb.az, %bb.az, %bb.az, %bb.bd, %bb.bc, %bb.ba
  %i.qe = phi i32 [ %i.pp, %bb.az ], [ %i.pp, %bb.az ], [ %i.pp, %bb.az ], [ %i.pp, %bb.az ], [ %i.qd, %bb.bd ], [ %i.pp, %bb.bc ], [ %i.pw, %bb.ba ]
  %.promoted589 = phi ptr [ %i.pr, %bb.az ], [ %i.pr, %bb.az ], [ %i.pr, %bb.az ], [ %i.pr, %bb.az ], [ %i.pr, %bb.bd ], [ %i.qc, %bb.bc ], [ %i.pr, %bb.ba ] ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.nf, i64 16 ; 2 uses
  %i.qg = load ptr, ptr %i.qf, align 8, !noalias !106
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 8 ; 2 uses
  %i.qi = load ptr, ptr %i.qh, align 8, !noalias !106 ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 8
  %i.qk = load i32, ptr %i.qj, align 8, !noalias !106
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qi, i64 16
  %i.qm = zext i32 %i.qk to i64
  %i.qn = load ptr, ptr %i.ql, align 8, !noalias !106
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr %i.qn, i64 %i.qm
  %i.qp = icmp ult ptr %.promoted589, %i.qo
  br i1 %i.qp, label %.lr.ph591, label %._crit_edge592

.lr.ph591:                                        ; preds = %bb.be, %bb.bh
  %i.qq = phi i32 [ %i.qz, %bb.bh ], [ %i.qe, %bb.be ] ; 3 uses
  %i.qr = phi ptr [ %i.qs, %bb.bh ], [ %.promoted589, %bb.be ] ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 4 ; 4 uses
  store ptr %i.qs, ptr %i.ng, align 8, !noalias !106
  %i.qt = load i32, ptr %i.qr, align 4, !noalias !106
  %i.qu = zext i32 %i.qt to i64
  %i.qv = getelementptr inbounds nuw i8, ptr %i.nr, i64 %i.qu
  %i.qw = load i8, ptr %i.qv, align 1, !noalias !106
  switch i8 %i.qw, label %bb.bh [
    i8 91, label %bb.bf
    i8 123, label %bb.bf
    i8 93, label %bb.bg
    i8 125, label %bb.bg
  ]

bb.bf:                                            ; preds = %.lr.ph591, %.lr.ph591
  %i.qx = add nuw nsw i32 %i.qq, 1                ; 2 uses
  store i32 %i.qx, ptr %i.nk, align 4, !noalias !106
  br label %bb.bh

bb.bg:                                            ; preds = %.lr.ph591, %.lr.ph591
  %i.qy = add nsw i32 %i.qq, -1                   ; 3 uses
  store i32 %i.qy, ptr %i.nk, align 4, !noalias !106
  %.not8.i.i67 = icmp sgt i32 %i.qy, %i.nm
  br i1 %.not8.i.i67, label %bb.bh, label %.loopexit

bb.bh:                                            ; preds = %.lr.ph591, %bb.bg, %bb.bf
  %i.qz = phi i32 [ %i.qq, %.lr.ph591 ], [ %i.qy, %bb.bg ], [ %i.qx, %bb.bf ]
  %i.ra = load ptr, ptr %i.qh, align 8, !noalias !106 ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 8
  %i.rc = load i32, ptr %i.rb, align 8, !noalias !106
  %i.rd = getelementptr inbounds nuw i8, ptr %i.ra, i64 16
  %i.re = zext i32 %i.rc to i64
  %i.rf = load ptr, ptr %i.rd, align 8, !noalias !106
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %i.rf, i64 %i.re
  %i.rh = icmp ult ptr %i.qs, %i.rg
  br i1 %i.rh, label %.lr.ph591, label %._crit_edge592, !llvm.loop !6

._crit_edge592:                                   ; preds = %bb.bh, %bb.be
  %i.ri = getelementptr inbounds nuw i8, ptr %i.nf, i64 32
  store i32 3, ptr %i.ri, align 8, !noalias !106
  store ptr null, ptr %i.qf, align 8, !noalias !106
  br label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE3tieERS5_RNS_10error_codeE.exit

_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE3tieERS5_RNS_10error_codeE.exit: ; preds = %bb.ay, %bb.aw, %._crit_edge592
  store i32 0, ptr %i.nk, align 4, !noalias !106
  %i.rj = load ptr, ptr @stderr, align 8
  %i.rk = load ptr, ptr %1, align 8
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 32
  %i.rm = load ptr, ptr %i.rl, align 8
  %i.rn = tail call noundef ptr %i.rm(ptr noundef nonnull align 8 dereferenceable(136) %1) #28
  %i.ro = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.rj, ptr noundef nonnull @.str.31, ptr noundef %i.rn) #34 ; 0 uses
  br label %bb.bi

.loopexit:                                        ; preds = %bb.bg, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand5valueEE10get_objectEv.exit.thread, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread, %bb.ba, %bb.bd
  %i.rp = phi i64 [ %i.oo, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand5valueEE10get_objectEv.exit.thread ], [ %i.os, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread ], [ %i.os, %bb.ba ], [ %i.os, %bb.bd ], [ %i.os, %bb.bg ]
  %i.rq = phi ptr [ %i.op, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand5valueEE10get_objectEv.exit.thread ], [ %i.or, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread ], [ %i.or, %bb.ba ], [ %i.or, %bb.bd ], [ %i.or, %bb.bg ]
  %i.rr = phi ptr [ %i.om, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand5valueEE10get_objectEv.exit.thread ], [ %i.ot, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread ], [ %i.pr, %bb.ba ], [ %i.pr, %bb.bd ], [ %i.qs, %bb.bg ]
  %i.rs = load i32, ptr %i.rr, align 4, !noalias !106
  %i.rt = zext i32 %i.rs to i64
  %gepdiff = sub nsw i64 %i.rt, %i.rp
end_hunk_1
