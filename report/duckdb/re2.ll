inline.NumInlined: 794
inline.NumDeleted: 326
begin_hunk_0_@_ZN10duckdb_re23RE211MaxSubmatchERKNS_11StringPieceE:bb.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK10duckdb_re23RE25MatchERKNS_11StringPieceEmmNS0_6AnchorEPS1_i(ptr noundef nonnull align 8 dereferenceable(148) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %class.LogMessage, align 8          ; 11 uses
  %8 = alloca %class.LogMessage, align 8          ; 11 uses
  %9 = alloca %"class.duckdb_re2::StringPiece", align 8 ; 23 uses
  %10 = alloca %"class.duckdb_re2::StringPiece", align 8 ; 10 uses
  %i.a = alloca i8, align 1                       ; 16 uses
  %11 = alloca %class.LogMessage, align 8         ; 7 uses
  %12 = alloca %class.LogMessage, align 8         ; 7 uses
  %13 = alloca %class.LogMessage, align 8         ; 7 uses
  %14 = alloca %class.LogMessage, align 8         ; 7 uses
  %15 = alloca %class.LogMessage, align 8         ; 7 uses
  %16 = alloca %class.LogMessage, align 8         ; 7 uses
  %17 = alloca %"class.duckdb_re2::StringPiece", align 8 ; 9 uses
  %18 = alloca %class.LogMessage, align 8         ; 7 uses
  %19 = alloca %class.LogMessage, align 8         ; 7 uses
  %20 = alloca %class.LogMessage, align 8         ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.c = load i32, ptr %i.b, align 4              ; 7 uses
  %i.d = and i32 %i.c, 536870911
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.g = load i8, ptr %i.f, align 2, !tbaa !15, !range !48, !noundef !49
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.cm

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  store i8 0, ptr %7, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.i)
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.9, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !45   ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !29
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !21
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef %i.m, i64 noundef %i.o)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.d ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.q = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.q, ptr %i.i, align 8, !tbaa !63
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.s = getelementptr i8, ptr %i.q, i64 -24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds i8, ptr %i.i, i64 %i.t
  store ptr %i.r, ptr %i.u, align 8, !tbaa !63
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.v, align 8, !tbaa !63
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !29   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 104
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZN10LogMessageD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  call void @_ZdlPv(ptr noundef %i.x) #31
  br label %_ZN10LogMessageD2Ev.exit

_ZN10LogMessageD2Ev.exit:                         ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.v, align 8, !tbaa !63
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aa) #29
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ab) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.cm

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.cn

bb.e:                                             ; preds = %bb.a
  %i.ad = icmp ugt i64 %2, %3
  br i1 %i.ad, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !28 ; 6 uses
  %i.ag = icmp ugt i64 %3, %i.af
  br i1 %i.ag, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.ai = load i8, ptr %i.ah, align 2, !tbaa !15, !range !48, !noundef !49
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.h, label %bb.cm

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  store i8 0, ptr %8, align 8, !tbaa !54
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 6 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.ak)
  %i.al = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef nonnull @.str.10, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit172.a unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit172.a: ; preds = %bb.h
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef nonnull @.str.11, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit173.a unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit173.a: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit172.a
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, i64 noundef %2)
          to label %_ZNSolsEm.exit unwind label %bb.i ; 3 uses

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit173.a
  %i.ao = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull @.str.12, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit174.a unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit174.a: ; preds = %_ZNSolsEm.exit
  %i.ap = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull @.str.13, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit175 unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit175: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit174.a
  %i.aq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.an, i64 noundef %3)
          to label %_ZNSolsEm.exit176 unwind label %bb.i ; 3 uses

_ZNSolsEm.exit176:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit175
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull @.str.12, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit177.a unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit177.a: ; preds = %_ZNSolsEm.exit176
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull @.str.14, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit178 unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit178: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit177.a
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !28
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, i64 noundef %i.au)
          to label %_ZNSolsEm.exit179 unwind label %bb.i

_ZNSolsEm.exit179:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit178
  %i.aw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull @.str.15, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit180 unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit180: ; preds = %_ZNSolsEm.exit179
  %i.ax = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ax, ptr %i.ak, align 8, !tbaa !63
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.az = getelementptr i8, ptr %i.ax, i64 -24
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = getelementptr inbounds i8, ptr %i.ak, i64 %i.ba
  store ptr %i.ay, ptr %i.bb, align 8, !tbaa !63
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bc, align 8, !tbaa !63
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 88
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !29 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 104
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZN10LogMessageD2Ev.exit183, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i181

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i181: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit180
  call void @_ZdlPv(ptr noundef %i.be) #31
  br label %_ZN10LogMessageD2Ev.exit183

_ZN10LogMessageD2Ev.exit183:                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit180, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i181
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bc, align 8, !tbaa !63
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bh) #29
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.bi) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %bb.cm

bb.i:                                             ; preds = %_ZNSolsEm.exit179, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit178, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit177.a, %_ZNSolsEm.exit176, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit175, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit174.a, %_ZNSolsEm.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit173.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit172.a, %bb.h
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %bb.cn

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !176
  %i.bk = load ptr, ptr %9, align 8, !tbaa !26
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %2 ; 4 uses
  store ptr %i.bl, ptr %9, align 8, !tbaa !26
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !28
  %i.bo = sub i64 %i.bn, %2
  %.neg = sub i64 %3, %i.af
  %i.bp = add i64 %i.bo, %.neg                    ; 3 uses
  store i64 %i.bp, ptr %i.bm, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  %.not306 = icmp eq i32 %6, 0                    ; 3 uses
  %spec.store.select = select i1 %.not306, ptr null, ptr %10 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !47 ; 2 uses
  %i.bs = add nsw i32 %i.br, 1
  %.not151 = icmp slt i32 %i.br, %6
  %spec.select = select i1 %.not151, i32 %i.bs, i32 %6 ; 12 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 9 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !70 ; 10 uses
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !178, !range !48, !noundef !49
  %i.bw = trunc nuw i8 %i.bv to i1                ; 3 uses
  %i.bx = icmp ne i64 %2, 0                       ; 2 uses
  %or.cond = and i1 %i.bx, %i.bw
  br i1 %or.cond, label %_ZN10duckdb_re2L16ascii_strcasecmpEPKcS1_m.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !179, !range !48, !noundef !49
  %i.ca = trunc nuw i8 %i.bz to i1                ; 2 uses
  br i1 %i.ca, label %bb.l, label %.thread225

bb.l:                                             ; preds = %bb.k
  %.not152.a = icmp eq i64 %3, %i.af
  br i1 %.not152.a, label %bb.m, label %_ZN10duckdb_re2L16ascii_strcasecmpEPKcS1_m.exit

bb.m:                                             ; preds = %bb.l
  br i1 %i.bw, label %bb.n, label %.thread225

.thread225:                                       ; preds = %bb.k, %bb.m
  %i.cb = icmp ne i32 %4, 2
  %or.cond5 = and i1 %i.cb, %i.bw
  %spec.store.select15 = select i1 %or.cond5, i32 1, i32 %4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.thread225
  %.0121 = phi i32 [ %spec.store.select15, %.thread225 ], [ 2, %bb.m ] ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !21 ; 11 uses
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cg = icmp ugt i64 %i.ce, %i.bp
  %or.cond301.a = select i1 %i.bx, i1 true, i1 %i.cg
  br i1 %or.cond301.a, label %_ZN10duckdb_re2L16ascii_strcasecmpEPKcS1_m.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ch = icmp slt i32 %i.c, 0
  %i.ci = load ptr, ptr %i.cc, align 8, !tbaa !29 ; 3 uses
  br i1 %i.ch, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ce
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.q, %bb.r
  %.02030.i = phi ptr [ %i.co, %bb.r ], [ %i.ci, %bb.q ] ; 2 uses
  %.02129.i = phi ptr [ %i.cp, %bb.r ], [ %i.bl, %bb.q ] ; 2 uses
  %i.ck = load i8, ptr %.02030.i, align 1, !tbaa !23
  %i.cl = load i8, ptr %.02129.i, align 1, !tbaa !23 ; 3 uses
  %i.cm = add i8 %i.cl, -65
  %or.cond.i = icmp ult i8 %i.cm, 26
  %i.cn = or disjoint i8 %i.cl, 32
  %spec.select.i = select i1 %or.cond.i, i8 %i.cn, i8 %i.cl
  %.not.i = icmp eq i8 %i.ck, %spec.select.i
  br i1 %.not.i, label %bb.r, label %_ZN10duckdb_re2L16ascii_strcasecmpEPKcS1_m.exit

bb.r:                                             ; preds = %.lr.ph.i
  %i.co = getelementptr inbounds nuw i8, ptr %.02030.i, i64 1 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.02129.i, i64 1
  %i.cq = icmp ult ptr %i.co, %i.cj
  br i1 %i.cq, label %.lr.ph.i, label %_ZN10duckdb_re2L16ascii_strcasecmpEPKcS1_m.exit.thread, !llvm.loop !180

bb.s:                                             ; preds = %bb.p
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.ci, ptr %i.bl, i64 %i.ce)
  %.not153 = icmp eq i32 %bcmp, 0
  br i1 %.not153, label %_ZN10duckdb_re2L16ascii_strcasecmpEPKcS1_m.exit.thread, label %_ZN10duckdb_re2L16ascii_strcasecmpEPKcS1_m.exit

_ZN10duckdb_re2L16ascii_strcasecmpEPKcS1_m.exit.thread: ; preds = %bb.r, %bb.s
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.ce
  store ptr %i.cr, ptr %9, align 8, !tbaa !26
  %i.cs = sub i64 %i.bp, %i.ce
  store i64 %i.cs, ptr %i.bm, align 8, !tbaa !28
  %.not155 = icmp eq i32 %.0121, 2
  br i1 %.not155, label %.thread228, label %.thread235

.thread235:                                       ; preds = %_ZN10duckdb_re2L16ascii_strcasecmpEPKcS1_m.exit.thread
  %i.ct = lshr exact i32 %i.c, 29
  %.lobit238 = and i32 %i.ct, 1                   ; 2 uses
  %i.cu = and i32 %i.c, 1073741824
  %i.cv = icmp ne i32 %i.cu, 0
  %i.cw = icmp slt i32 %spec.select, 6
  %21 = select i1 %i.cv, i1 %i.cw, i1 false
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bu, i64 96
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !181
  %i.cz = icmp ne ptr %i.cy, null                 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.bu, i64 104
  %i.db = load i64, ptr %i.da, align 8, !tbaa !182 ; 2 uses
  %i.dc = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN10duckdb_re25hooks7contextE)
  store ptr %0, ptr %i.dc, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i8 0, ptr %i.a, align 1, !tbaa !16
  br i1 %21, label %bb.bf, label %bb.bh

.thread228:                                       ; preds = %_ZN10duckdb_re2L16ascii_strcasecmpEPKcS1_m.exit.thread
  %i.dd = and i32 %i.c, 1073741824
  %i.de = icmp ne i32 %i.dd, 0
  %i.df = icmp slt i32 %spec.select, 6
  %22 = select i1 %i.de, i1 %i.df, i1 false
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bu, i64 96
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !181
  %i.di = icmp ne ptr %i.dh, null                 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bu, i64 104
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !182 ; 2 uses
  %i.dl = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN10duckdb_re25hooks7contextE)
  store ptr %0, ptr %i.dl, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i8 0, ptr %i.a, align 1, !tbaa !16
  br i1 %22, label %bb.bf, label %bb.bh

bb.t:                                             ; preds = %bb.n
  %i.dm = lshr exact i32 %i.c, 29
  %.lobit = and i32 %i.dm, 1                      ; 11 uses
  %i.dn = and i32 %i.c, 1073741824
  %i.do = icmp ne i32 %i.dn, 0
  %i.dp = icmp slt i32 %spec.select, 6
  %23 = select i1 %i.do, i1 %i.dp, i1 false       ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bu, i64 96
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !181
  %i.ds = icmp ne ptr %i.dr, null                 ; 14 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bu, i64 104
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !182 ; 14 uses
  %i.dv = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN10duckdb_re25hooks7contextE)
  store ptr %0, ptr %i.dv, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i8 0, ptr %i.a, align 1, !tbaa !16
  switch i32 %.0121, label %bb.u [
    i32 0, label %bb.x
    i32 2, label %bb.bd
    i32 1, label %bb.be
  ]

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  store i8 0, ptr %11, align 8, !tbaa !54
  %i.dw = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.dw)
  %i.dx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dw, ptr noundef nonnull @.str.16, i64 noundef 28)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit184.a unwind label %bb.w ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit184.a: ; preds = %bb.u
  %i.dy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.dw, i32 noundef %.0121)
          to label %bb.v unwind label %bb.w       ; 0 uses

bb.v:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit184.a
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br label %.thread243

bb.w:                                             ; preds = %bb.u, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit184.a
  %i.dz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br label %bb.cl

bb.x:                                             ; preds = %bb.t
  br i1 %i.ca, label %bb.y, label %bb.ai

bb.y:                                             ; preds = %bb.x
  %i.ea = tail call noundef ptr @_ZNK10duckdb_re23RE211ReverseProgEv(ptr noundef nonnull align 8 dereferenceable(148) %0) ; 5 uses
  %i.eb = icmp eq ptr %i.ea, null
  br i1 %i.eb, label %.thread271, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ec = call noundef zeroext i1 @_ZN10duckdb_re24Prog9SearchDFAERKNS_11StringPieceES3_NS0_6AnchorENS0_9MatchKindEPS1_PbPNS_10SparseSetTIvEE(ptr noundef nonnull align 8 dereferenceable(432) %i.ea, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 1, i32 noundef 1, ptr noundef %spec.store.select, ptr noundef nonnull %i.a, ptr noundef null)
  br i1 %i.ec, label %bb.ah, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ed = load i8, ptr %i.a, align 1, !tbaa !16, !range !48, !noundef !49
  %i.ee = trunc nuw i8 %i.ed to i1
  br i1 %i.ee, label %bb.ab, label %.thread243

bb.ab:                                            ; preds = %bb.aa
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.eg = load i8, ptr %i.ef, align 2, !tbaa !15, !range !48, !noundef !49
  %i.eh = trunc nuw i8 %i.eg to i1
  br i1 %i.eh, label %bb.ac, label %.thread271

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  store i8 0, ptr %12, align 8, !tbaa !54
  %i.ei = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.ei)
  %i.ej = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ei, ptr noundef nonnull @.str.17, i64 noundef 19)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit185.a unwind label %bb.ag ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit185.a: ; preds = %bb.ac
  %i.ek = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ei, ptr noundef nonnull @.str.18, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit186 unwind label %bb.ag ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit186: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit185.a
  %i.el = load ptr, ptr %0, align 8, !tbaa !35
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load i64, ptr %i.em, align 8, !tbaa !21
  %i.eo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ei, i64 noundef %i.en)
          to label %_ZNSolsEm.exit187 unwind label %bb.ag ; 3 uses

_ZNSolsEm.exit187:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit186
  %i.ep = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.eo, ptr noundef nonnull @.str.12, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit188.a unwind label %bb.ag ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit188.a: ; preds = %_ZNSolsEm.exit187
  %i.eq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.eo, ptr noundef nonnull @.str.19, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit189.a unwind label %bb.ag ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit189.a: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit188.a
  %i.er = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.es = load i32, ptr %i.er, align 8, !tbaa !102
  %i.et = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.eo, i32 noundef %i.es)
          to label %bb.ad unwind label %bb.ag     ; 3 uses

bb.ad:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit189.a
  %i.eu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.et, ptr noundef nonnull @.str.12, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit190.a unwind label %bb.ag ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit190.a: ; preds = %bb.ad
  %i.ev = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.et, ptr noundef nonnull @.str.20, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit191.a unwind label %bb.ag ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit191.a: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit190.a
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ea, i64 48
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !183
  %i.ey = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.et, i32 noundef %i.ex)
          to label %bb.ae unwind label %bb.ag     ; 3 uses

bb.ae:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit191.a
  %i.ez = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ey, ptr noundef nonnull @.str.12, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit192.a unwind label %bb.ag ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit192.a: ; preds = %bb.ae
  %i.fa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ey, ptr noundef nonnull @.str.21, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit193.a unwind label %bb.ag ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit193.a: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit192.a
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ea, i64 20
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !184
  %i.fd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ey, i32 noundef %i.fc)
          to label %bb.af unwind label %bb.ag     ; 0 uses

bb.af:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit193.a
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %12) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  br label %.thread271

bb.ag:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit192.a, %bb.ae, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit190.a, %bb.ad, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit188.a, %_ZNSolsEm.exit187, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit186, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit185.a, %bb.ac, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit193.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit191.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit189.a
  %i.fe = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %12) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  br label %bb.cl

bb.ah:                                            ; preds = %bb.z
  br i1 %.not306, label %.thread243, label %.thread248

bb.ai:                                            ; preds = %bb.x
  %i.ff = call noundef zeroext i1 @_ZN10duckdb_re24Prog9SearchDFAERKNS_11StringPieceES3_NS0_6AnchorENS0_9MatchKindEPS1_PbPNS_10SparseSetTIvEE(ptr noundef nonnull align 8 dereferenceable(432) %i.bu, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 0, i32 noundef %.lobit, ptr noundef %spec.store.select, ptr noundef nonnull %i.a, ptr noundef null)
  br i1 %i.ff, label %bb.aq, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fg = load i8, ptr %i.a, align 1, !tbaa !16, !range !48, !noundef !49
  %i.fh = trunc nuw i8 %i.fg to i1
  br i1 %i.fh, label %bb.ak, label %.thread243

bb.ak:                                            ; preds = %bb.aj
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.fj = load i8, ptr %i.fi, align 2, !tbaa !15, !range !48, !noundef !49
  %i.fk = trunc nuw i8 %i.fj to i1
  br i1 %i.fk, label %bb.al, label %.thread271

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  store i8 0, ptr %13, align 8, !tbaa !54
  %i.fl = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.fl)
  %i.fm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fl, ptr noundef nonnull @.str.17, i64 noundef 19)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit194.a unwind label %bb.ap ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit194.a: ; preds = %bb.al
  %i.fn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fl, ptr noundef nonnull @.str.18, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit195 unwind label %bb.ap ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit195: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit194.a
  %i.fo = load ptr, ptr %0, align 8, !tbaa !35
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !21
  %i.fr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.fl, i64 noundef %i.fq)
          to label %_ZNSolsEm.exit196 unwind label %bb.ap ; 3 uses

_ZNSolsEm.exit196:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit195
  %i.fs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fr, ptr noundef nonnull @.str.12, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit197.a unwind label %bb.ap ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit197.a: ; preds = %_ZNSolsEm.exit196
  %i.ft = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fr, ptr noundef nonnull @.str.19, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit198.a unwind label %bb.ap ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit198.a: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit197.a
  %i.fu = load ptr, ptr %i.bt, align 8, !tbaa !70
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !102
  %i.fx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.fr, i32 noundef %i.fw)
          to label %bb.am unwind label %bb.ap     ; 3 uses

bb.am:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit198.a
  %i.fy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fx, ptr noundef nonnull @.str.12, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit199.a unwind label %bb.ap ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit199.a: ; preds = %bb.am
  %i.fz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fx, ptr noundef nonnull @.str.20, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit200.a unwind label %bb.ap ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit200.a: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit199.a
  %i.ga = load ptr, ptr %i.bt, align 8, !tbaa !70
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 48
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !183
  %i.gd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.fx, i32 noundef %i.gc)
          to label %bb.an unwind label %bb.ap     ; 3 uses

bb.an:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit200.a
  %i.ge = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gd, ptr noundef nonnull @.str.12, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit201.a unwind label %bb.ap ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit201.a: ; preds = %bb.an
  %i.gf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gd, ptr noundef nonnull @.str.21, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit202.a unwind label %bb.ap ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit202.a: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit201.a
  %i.gg = load ptr, ptr %i.bt, align 8, !tbaa !70
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 20
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !184
  %i.gj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.gd, i32 noundef %i.gi)
          to label %bb.ao unwind label %bb.ap     ; 0 uses

bb.ao:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit202.a
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %13) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  br label %.thread271

bb.ap:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit201.a, %bb.an, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit199.a, %bb.am, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit197.a, %_ZNSolsEm.exit196, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit195, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit194.a, %bb.al, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit202.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit200.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit198.a
  %i.gk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %13) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  br label %bb.cl

bb.aq:                                            ; preds = %bb.ai
  br i1 %.not306, label %.thread243, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gl = call noundef ptr @_ZNK10duckdb_re23RE211ReverseProgEv(ptr noundef nonnull align 8 dereferenceable(148) %0) ; 5 uses
  %i.gm = icmp eq ptr %i.gl, null
  br i1 %i.gm, label %.thread271, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gn = call noundef zeroext i1 @_ZN10duckdb_re24Prog9SearchDFAERKNS_11StringPieceES3_NS0_6AnchorENS0_9MatchKindEPS1_PbPNS_10SparseSetTIvEE(ptr noundef nonnull align 8 dereferenceable(432) %i.gl, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %10, ptr noundef nonnull %i.a, ptr noundef null)
  br i1 %i.gn, label %.thread248, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.go = load i8, ptr %i.a, align 1, !tbaa !16, !range !48, !noundef !49
  %i.gp = trunc nuw i8 %i.go to i1
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.gr = load i8, ptr %i.gq, align 2, !tbaa !15, !range !48, !noundef !49
  %i.gs = trunc nuw i8 %i.gr to i1                ; 2 uses
  br i1 %i.gp, label %bb.au, label %bb.ba

bb.au:                                            ; preds = %bb.at
  br i1 %i.gs, label %bb.av, label %.thread271

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29
  store i8 0, ptr %14, align 8, !tbaa !54
  %i.gt = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.gt)
  %i.gu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gt, ptr noundef nonnull @.str.17, i64 noundef 19)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203.a unwind label %bb.az ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203.a: ; preds = %bb.av
  %i.gv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gt, ptr noundef nonnull @.str.18, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit204 unwind label %bb.az ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit204: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203.a
  %i.gw = load ptr, ptr %0, align 8, !tbaa !35
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !21
  %i.gz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.gt, i64 noundef %i.gy)
          to label %_ZNSolsEm.exit205 unwind label %bb.az ; 3 uses

_ZNSolsEm.exit205:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit204
  %i.ha = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gz, ptr noundef nonnull @.str.12, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit206.a unwind label %bb.az ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit206.a: ; preds = %_ZNSolsEm.exit205
  %i.hb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gz, ptr noundef nonnull @.str.19, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit207.a unwind label %bb.az ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit207.a: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit206.a
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.hd = load i32, ptr %i.hc, align 8, !tbaa !102
  %i.he = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.gz, i32 noundef %i.hd)
          to label %bb.aw unwind label %bb.az     ; 3 uses

bb.aw:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit207.a
  %i.hf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.he, ptr noundef nonnull @.str.12, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit208.a unwind label %bb.az ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit208.a: ; preds = %bb.aw
  %i.hg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.he, ptr noundef nonnull @.str.20, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit209.a unwind label %bb.az ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit209.a: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit208.a
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gl, i64 48
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !183
  %i.hj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.he, i32 noundef %i.hi)
          to label %bb.ax unwind label %bb.az     ; 3 uses

bb.ax:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit209.a
  %i.hk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hj, ptr noundef nonnull @.str.12, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit210.a unwind label %bb.az ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit210.a: ; preds = %bb.ax
  %i.hl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hj, ptr noundef nonnull @.str.21, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit211.a unwind label %bb.az ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit211.a: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit210.a
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gl, i64 20
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !184
  %i.ho = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.hj, i32 noundef %i.hn)
          to label %bb.ay unwind label %bb.az     ; 0 uses

bb.ay:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit211.a
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %14) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  br label %.thread271

bb.az:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit210.a, %bb.ax, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit208.a, %bb.aw, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit206.a, %_ZNSolsEm.exit205, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit204, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203.a, %bb.av, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit211.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit209.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit207.a
  %i.hp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %14) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  br label %bb.cl

bb.ba:                                            ; preds = %bb.at
  br i1 %i.gs, label %bb.bb, label %.thread243

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #29
  store i8 0, ptr %15, align 8, !tbaa !54
  %i.hq = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.hq)
  %i.hr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hq, ptr noundef nonnull @.str.22, i64 noundef 23)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit212.a unwind label %bb.bc ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit212.a: ; preds = %bb.bb
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %15) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  br label %.thread243

bb.bc:                                            ; preds = %bb.bb
  %i.hs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %15) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  br label %bb.cl

bb.bd:                                            ; preds = %bb.t
  br i1 %23, label %bb.bf, label %bb.bh

bb.be:                                            ; preds = %bb.t
  br i1 %23, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %.thread228, %bb.bd, %.thread235, %bb.be
  %.0134254 = phi i32 [ %.lobit238, %.thread235 ], [ %.lobit, %bb.be ], [ 2, %bb.bd ], [ 2, %.thread228 ] ; 3 uses
  %i.ht = phi i1 [ %i.cz, %.thread235 ], [ %i.ds, %bb.be ], [ %i.ds, %bb.bd ], [ %i.di, %.thread228 ] ; 3 uses
  %i.hu = phi i64 [ %i.db, %.thread235 ], [ %i.du, %bb.be ], [ %i.du, %bb.bd ], [ %i.dk, %.thread228 ] ; 3 uses
  %i.hv = icmp ult i64 %i.af, 4097
  br i1 %i.hv, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.hw = icmp sgt i32 %spec.select, 1
  %i.hx = icmp samesign ult i64 %i.af, 17
  %or.cond302 = select i1 %i.hw, i1 true, i1 %i.hx
  br i1 %or.cond302, label %.thread271, label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %.thread228, %bb.bd, %.thread235, %bb.bf, %bb.be
  %.0134253 = phi i32 [ %.lobit238, %.thread235 ], [ %.0134254, %bb.bg ], [ %.0134254, %bb.bf ], [ %.lobit, %bb.be ], [ 2, %bb.bd ], [ 2, %.thread228 ] ; 4 uses
  %i.hy = phi i1 [ false, %.thread235 ], [ true, %bb.bg ], [ true, %bb.bf ], [ false, %bb.be ], [ false, %bb.bd ], [ false, %.thread228 ] ; 4 uses
  %i.hz = phi i1 [ %i.cz, %.thread235 ], [ %i.ht, %bb.bg ], [ %i.ht, %bb.bf ], [ %i.ds, %bb.be ], [ %i.ds, %bb.bd ], [ %i.di, %.thread228 ] ; 4 uses
  %i.ia = phi i64 [ %i.db, %.thread235 ], [ %i.hu, %bb.bg ], [ %i.hu, %bb.bf ], [ %i.du, %bb.be ], [ %i.du, %bb.bd ], [ %i.dk, %.thread228 ] ; 5 uses
  br i1 %i.hz, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.ib = icmp ule i64 %i.af, %i.ia
  %i.ic = icmp sgt i32 %spec.select, 1
  %or.cond8 = select i1 %i.ib, i1 %i.ic, i1 false
  br i1 %or.cond8, label %.thread271, label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.id = call noundef zeroext i1 @_ZN10duckdb_re24Prog9SearchDFAERKNS_11StringPieceES3_NS0_6AnchorENS0_9MatchKindEPS1_PbPNS_10SparseSetTIvEE(ptr noundef nonnull align 8 dereferenceable(432) %i.bu, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 1, i32 noundef %.0134253, ptr noundef nonnull %10, ptr noundef nonnull %i.a, ptr noundef null)
  br i1 %i.id, label %.thread248, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ie = load i8, ptr %i.a, align 1, !tbaa !16, !range !48, !noundef !49
  %i.if = trunc nuw i8 %i.ie to i1
  br i1 %i.if, label %bb.bl, label %.thread243

bb.bl:                                            ; preds = %bb.bk
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.ih = load i8, ptr %i.ig, align 2, !tbaa !15, !range !48, !noundef !49
  %i.ii = trunc nuw i8 %i.ih to i1
  br i1 %i.ii, label %bb.bm, label %.thread271

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #29
  store i8 0, ptr %16, align 8, !tbaa !54
  %i.ij = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 4 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.ij)
  %i.ik = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ij, ptr noundef nonnull @.str.17, i64 noundef 19)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit213.a unwind label %bb.bq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit213.a: ; preds = %bb.bm
  %i.il = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ij, ptr noundef nonnull @.str.18, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit214 unwind label %bb.bq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit214: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit213.a
  %i.im = load ptr, ptr %0, align 8, !tbaa !35
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %i.io = load i64, ptr %i.in, align 8, !tbaa !21
  %i.ip = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ij, i64 noundef %i.io)
          to label %_ZNSolsEm.exit215 unwind label %bb.bq ; 3 uses

_ZNSolsEm.exit215:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit214
  %i.iq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ip, ptr noundef nonnull @.str.12, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit216.a unwind label %bb.bq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit216.a: ; preds = %_ZNSolsEm.exit215
  %i.ir = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ip, ptr noundef nonnull @.str.19, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit217.a unwind label %bb.bq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit217.a: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit216.a
  %i.is = load ptr, ptr %i.bt, align 8, !tbaa !70
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  %i.iu = load i32, ptr %i.it, align 8, !tbaa !102
  %i.iv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ip, i32 noundef %i.iu)
          to label %bb.bn unwind label %bb.bq     ; 3 uses

bb.bn:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit217.a
  %i.iw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.iv, ptr noundef nonnull @.str.12, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit218.a unwind label %bb.bq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit218.a: ; preds = %bb.bn
  %i.ix = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.iv, ptr noundef nonnull @.str.20, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit219.a unwind label %bb.bq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit219.a: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit218.a
  %i.iy = load ptr, ptr %i.bt, align 8, !tbaa !70
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 48
  %i.ja = load i32, ptr %i.iz, align 8, !tbaa !183
  %i.jb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.iv, i32 noundef %i.ja)
          to label %bb.bo unwind label %bb.bq     ; 3 uses

bb.bo:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit219.a
  %i.jc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jb, ptr noundef nonnull @.str.12, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit220.a unwind label %bb.bq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit220.a: ; preds = %bb.bo
  %i.jd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jb, ptr noundef nonnull @.str.21, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit221.a unwind label %bb.bq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit221.a: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit220.a
  %i.je = load ptr, ptr %i.bt, align 8, !tbaa !70
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 20
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !184
  %i.jh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.jb, i32 noundef %i.jg)
          to label %bb.bp unwind label %bb.bq     ; 0 uses

bb.bp:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit221.a
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %16) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  br label %.thread271

bb.bq:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit220.a, %bb.bo, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit218.a, %bb.bn, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit216.a, %_ZNSolsEm.exit215, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit214, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit213.a, %bb.bm, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit221.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit219.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit217.a
  %i.ji = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %16) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  br label %bb.cl

.thread248:                                       ; preds = %bb.as, %bb.bj, %bb.ah
  %i.jj = phi i64 [ %i.du, %bb.ah ], [ %i.ia, %bb.bj ], [ %i.du, %bb.as ]
  %i.jk = phi i1 [ %i.ds, %bb.ah ], [ %i.hz, %bb.bj ], [ %i.ds, %bb.as ]
  %i.jl = phi i1 [ %23, %bb.ah ], [ %i.hy, %bb.bj ], [ %23, %bb.as ]
  %.0139232 = phi i64 [ 0, %bb.ah ], [ %i.ce, %bb.bj ], [ 0, %bb.as ] ; 3 uses
  %i.jm = icmp sgt i32 %spec.select, 1
  br i1 %i.jm, label %.thread271, label %bb.br

bb.br:                                            ; preds = %.thread248
  %i.jn = icmp eq i32 %spec.select, 1
  br i1 %i.jn, label %bb.bs, label %bb.ci

bb.bs:                                            ; preds = %bb.br
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %10, i64 16, i1 false), !tbaa.struct !176
  br label %bb.ci

.thread271:                                       ; preds = %.thread248, %bb.af, %bb.y, %bb.ab, %bb.bl, %bb.bp, %bb.ao, %bb.bg, %bb.ak, %bb.bi, %bb.au, %bb.ar, %bb.ay
  %.sink = phi ptr [ %9, %bb.af ], [ %9, %bb.ay ], [ %9, %bb.ar ], [ %9, %bb.au ], [ %9, %bb.bi ], [ %9, %bb.ak ], [ %9, %bb.bg ], [ %9, %bb.ao ], [ %9, %bb.bp ], [ %9, %bb.bl ], [ %9, %bb.ab ], [ %9, %bb.y ], [ %10, %.thread248 ]
  %i.jo = phi i64 [ %i.du, %bb.af ], [ %i.du, %bb.ay ], [ %i.du, %bb.ar ], [ %i.du, %bb.au ], [ %i.ia, %bb.bi ], [ %i.du, %bb.ak ], [ %i.hu, %bb.bg ], [ %i.du, %bb.ao ], [ %i.ia, %bb.bp ], [ %i.ia, %bb.bl ], [ %i.du, %bb.ab ], [ %i.du, %bb.y ], [ %i.jj, %.thread248 ]
  %i.jp = phi i1 [ %i.ds, %bb.af ], [ %i.ds, %bb.ay ], [ %i.ds, %bb.ar ], [ %i.ds, %bb.au ], [ true, %bb.bi ], [ %i.ds, %bb.ak ], [ %i.ht, %bb.bg ], [ %i.ds, %bb.ao ], [ %i.hz, %bb.bp ], [ %i.hz, %bb.bl ], [ %i.ds, %bb.ab ], [ %i.ds, %bb.y ], [ %i.jk, %.thread248 ]
  %or.cond12 = phi i1 [ false, %bb.af ], [ false, %bb.ay ], [ false, %bb.ar ], [ false, %bb.au ], [ %i.hy, %bb.bi ], [ false, %bb.ak ], [ true, %bb.bg ], [ false, %bb.ao ], [ %i.hy, %bb.bp ], [ %i.hy, %bb.bl ], [ false, %bb.ab ], [ false, %bb.y ], [ %i.jl, %.thread248 ]
  %.0139232266283 = phi i64 [ 0, %bb.af ], [ 0, %bb.ay ], [ 0, %bb.ar ], [ 0, %bb.au ], [ %i.ce, %bb.bi ], [ 0, %bb.ak ], [ %i.ce, %bb.bg ], [ 0, %bb.ao ], [ %i.ce, %bb.bp ], [ %i.ce, %bb.bl ], [ 0, %bb.ab ], [ 0, %bb.y ], [ %.0139232, %.thread248 ]
  %.2125269279 = phi i1 [ true, %bb.af ], [ true, %bb.ay ], [ true, %bb.ar ], [ true, %bb.au ], [ true, %bb.bi ], [ true, %bb.ak ], [ true, %bb.bg ], [ true, %bb.ao ], [ true, %bb.bp ], [ true, %bb.bl ], [ true, %bb.ab ], [ true, %bb.y ], [ false, %.thread248 ] ; 3 uses
  %.1138 = phi i32 [ 0, %bb.af ], [ 0, %bb.ay ], [ 0, %bb.ar ], [ 0, %bb.au ], [ 1, %bb.bi ], [ 0, %bb.ak ], [ 1, %bb.bg ], [ 0, %bb.ao ], [ 1, %bb.bp ], [ 1, %bb.bl ], [ 0, %bb.ab ], [ 0, %bb.y ], [ 1, %.thread248 ] ; 2 uses
  %.2136 = phi i32 [ %.lobit, %bb.af ], [ %.lobit, %bb.ay ], [ %.lobit, %bb.ar ], [ %.lobit, %bb.au ], [ %.0134253, %bb.bi ], [ %.lobit, %bb.ak ], [ %.0134254, %bb.bg ], [ %.lobit, %bb.ao ], [ %.0134253, %bb.bp ], [ %.0134253, %bb.bl ], [ %.lobit, %bb.ab ], [ %.lobit, %bb.y ], [ 2, %.thread248 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(16) %.sink, i64 16, i1 false)
  br i1 %or.cond12, label %bb.bt, label %bb.bx

bb.bt:                                            ; preds = %.thread271
  %i.jq = load ptr, ptr %i.bt, align 8, !tbaa !70
  %i.jr = call noundef zeroext i1 @_ZN10duckdb_re24Prog13SearchOnePassERKNS_11StringPieceES3_NS0_6AnchorENS0_9MatchKindEPS1_i(ptr noundef nonnull align 8 dereferenceable(432) %i.jq, ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 1, i32 noundef %.2136, ptr noundef %5, i32 noundef %spec.select) ; 2 uses
  %brmerge = or i1 %.2125269279, %i.jr
  br i1 %brmerge, label %bb.cg, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.jt = load i8, ptr %i.js, align 2, !tbaa !15, !range !48, !noundef !49
  %i.ju = trunc nuw i8 %i.jt to i1
  br i1 %i.ju, label %bb.bv, label %.thread286

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #29
  store i8 0, ptr %18, align 8, !tbaa !54
  %i.jv = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.jv)
  %i.jw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jv, ptr noundef nonnull @.str.23, i64 noundef 27)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit222.a unwind label %bb.bw ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit222.a: ; preds = %bb.bv
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %18) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  br label %.thread286

bb.bw:                                            ; preds = %bb.bv
  %i.jx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %18) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  br label %bb.ch

bb.bx:                                            ; preds = %.thread271
  %i.jy = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.jz = load i64, ptr %i.jy, align 8
  %.not = icmp ule i64 %i.jz, %i.jo
  %or.cond305.not = select i1 %i.jp, i1 %.not, i1 false
  %i.ka = load ptr, ptr %i.bt, align 8, !tbaa !70 ; 2 uses
  br i1 %or.cond305.not, label %bb.by, label %bb.cc

bb.by:                                            ; preds = %bb.bx
  %i.kb = call noundef zeroext i1 @_ZN10duckdb_re24Prog14SearchBitStateERKNS_11StringPieceES3_NS0_6AnchorENS0_9MatchKindEPS1_i(ptr noundef nonnull align 8 dereferenceable(432) %i.ka, ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %.1138, i32 noundef %.2136, ptr noundef %5, i32 noundef %spec.select) ; 2 uses
  %brmerge166 = or i1 %.2125269279, %i.kb
  br i1 %brmerge166, label %bb.cg, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.kd = load i8, ptr %i.kc, align 2, !tbaa !15, !range !48, !noundef !49
  %i.ke = trunc nuw i8 %i.kd to i1
  br i1 %i.ke, label %bb.ca, label %.thread286

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #29
  store i8 0, ptr %19, align 8, !tbaa !54
  %i.kf = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.kf)
  %i.kg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kf, ptr noundef nonnull @.str.24, i64 noundef 28)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit223.a unwind label %bb.cb ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit223.a: ; preds = %bb.ca
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %19) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29
  br label %.thread286

bb.cb:                                            ; preds = %bb.ca
  %i.kh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %19) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29
  br label %bb.ch

bb.cc:                                            ; preds = %bb.bx
  %i.ki = call noundef zeroext i1 @_ZN10duckdb_re24Prog9SearchNFAERKNS_11StringPieceES3_NS0_6AnchorENS0_9MatchKindEPS1_i(ptr noundef nonnull align 8 dereferenceable(432) %i.ka, ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %.1138, i32 noundef %.2136, ptr noundef %5, i32 noundef %spec.select) ; 2 uses
  %brmerge169 = or i1 %.2125269279, %i.ki
  br i1 %brmerge169, label %bb.cg, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.kk = load i8, ptr %i.kj, align 2, !tbaa !15, !range !48, !noundef !49
  %i.kl = trunc nuw i8 %i.kk to i1
  br i1 %i.kl, label %bb.ce, label %.thread286

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #29
  store i8 0, ptr %20, align 8, !tbaa !54
  %i.km = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.km)
  %i.kn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.km, ptr noundef nonnull @.str.25, i64 noundef 23)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit224 unwind label %bb.cf ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit224: ; preds = %bb.ce
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %20) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #29
  br label %.thread286

bb.cf:                                            ; preds = %bb.ce
  %i.ko = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %20) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #29
  br label %bb.ch

.thread286:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit222.a, %bb.bu, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit223.a, %bb.bz, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit224, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  br label %.thread243

bb.cg:                                            ; preds = %bb.cc, %bb.by, %bb.bt
  %cond = phi i1 [ %i.kb, %bb.by ], [ %i.ki, %bb.cc ], [ %i.jr, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  br i1 %cond, label %bb.ci, label %.thread243

bb.ch:                                            ; preds = %bb.cf, %bb.cb, %bb.bw
  %.pn159 = phi { ptr, i32 } [ %i.jx, %bb.bw ], [ %i.kh, %bb.cb ], [ %i.ko, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  br label %bb.cl

bb.ci:                                            ; preds = %bb.cg, %bb.br, %bb.bs
  %.0139232265 = phi i64 [ %.0139232266283, %bb.cg ], [ %.0139232, %bb.br ], [ %.0139232, %bb.bs ] ; 3 uses
  %i.kp = icmp ne i64 %.0139232265, 0
  %i.kq = icmp sgt i32 %6, 0
  %or.cond14 = and i1 %i.kq, %i.kp
  br i1 %or.cond14, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.kr = load ptr, ptr %5, align 8, !tbaa !26
  %i.ks = sub i64 0, %.0139232265
  %i.kt = getelementptr inbounds i8, ptr %i.kr, i64 %i.ks
  %i.ku = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !28
  %i.kw = add i64 %i.kv, %.0139232265
  store ptr %i.kt, ptr %5, align 8, !tbaa !177
  store i64 %i.kw, ptr %i.ku, align 8, !tbaa !34
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.kx = icmp slt i32 %spec.select, %6
  br i1 %i.kx, label %.lr.ph.preheader, label %.thread243

.lr.ph.preheader:                                 ; preds = %bb.ck
  %i.ky = sext i32 %spec.select to i64            ; 4 uses
  %wide.trip.count = sext i32 %6 to i64           ; 3 uses
  %24 = sub nsw i64 %wide.trip.count, %i.ky
  %xtraiter = and i64 %24, 7                      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %i.ky, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.kz = getelementptr inbounds [16 x i8], ptr %5, i64 %indvars.iv.prol
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kz, i8 0, i64 16, i1 false)
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !185

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.ky, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %25 = sub nsw i64 %i.ky, %wide.trip.count
  %26 = icmp ugt i64 %25, -8
  br i1 %26, label %.thread243, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.la = getelementptr inbounds [16 x i8], ptr %5, i64 %indvars.iv
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.la, i8 0, i64 16, i1 false)
  %i.lb = getelementptr [16 x i8], ptr %5, i64 %indvars.iv
  %i.lc = getelementptr i8, ptr %i.lb, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lc, i8 0, i64 16, i1 false)
  %i.ld = getelementptr [16 x i8], ptr %5, i64 %indvars.iv
  %i.le = getelementptr i8, ptr %i.ld, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.le, i8 0, i64 16, i1 false)
  %i.lf = getelementptr [16 x i8], ptr %5, i64 %indvars.iv
  %i.lg = getelementptr i8, ptr %i.lf, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lg, i8 0, i64 16, i1 false)
  %i.lh = getelementptr [16 x i8], ptr %5, i64 %indvars.iv
  %i.li = getelementptr i8, ptr %i.lh, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.li, i8 0, i64 16, i1 false)
  %i.lj = getelementptr [16 x i8], ptr %5, i64 %indvars.iv
  %i.lk = getelementptr i8, ptr %i.lj, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lk, i8 0, i64 16, i1 false)
  %i.ll = getelementptr [16 x i8], ptr %5, i64 %indvars.iv
  %i.lm = getelementptr i8, ptr %i.ll, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lm, i8 0, i64 16, i1 false)
  %i.ln = getelementptr [16 x i8], ptr %5, i64 %indvars.iv
  %i.lo = getelementptr i8, ptr %i.ln, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lo, i8 0, i64 16, i1 false)
  %indvars.iv.next.7 = add nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, %wide.trip.count
  br i1 %exitcond.not.7, label %.thread243, label %.lr.ph, !llvm.loop !187

.thread243:                                       ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.ck, %bb.aa, %.thread286, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit212.a, %bb.ba, %bb.bk, %bb.aq, %bb.aj, %bb.ah, %bb.cg, %bb.v
  %.4 = phi i1 [ false, %bb.v ], [ false, %bb.bk ], [ false, %bb.cg ], [ true, %bb.ah ], [ false, %bb.aj ], [ false, %.thread286 ], [ true, %bb.aq ], [ false, %bb.aa ], [ false, %bb.ba ], [ false, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit212.a ], [ true, %bb.ck ], [ true, %.lr.ph ], [ true, %.lr.ph.prol.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %_ZN10duckdb_re2L16ascii_strcasecmpEPKcS1_m.exit

bb.cl:                                            ; preds = %bb.az, %bb.bc, %bb.ch, %bb.bq, %bb.ap, %bb.ag, %bb.w
  %.pn161 = phi { ptr, i32 } [ %i.dz, %bb.w ], [ %.pn159, %bb.ch ], [ %i.fe, %bb.ag ], [ %i.ji, %bb.bq ], [ %i.gk, %bb.ap ], [ %i.hp, %bb.az ], [ %i.hs, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br label %bb.cn

_ZN10duckdb_re2L16ascii_strcasecmpEPKcS1_m.exit:  ; preds = %.lr.ph.i, %.thread243, %bb.o, %bb.s, %bb.l, %bb.j
  %.6 = phi i1 [ false, %bb.l ], [ false, %bb.j ], [ %.4, %.thread243 ], [ false, %bb.s ], [ false, %bb.o ], [ false, %.lr.ph.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br label %bb.cm

bb.cm:                                            ; preds = %bb.g, %_ZN10LogMessageD2Ev.exit183, %bb.b, %_ZN10LogMessageD2Ev.exit, %_ZN10duckdb_re2L16ascii_strcasecmpEPKcS1_m.exit
  %.7 = phi i1 [ false, %bb.b ], [ %.6, %_ZN10duckdb_re2L16ascii_strcasecmpEPKcS1_m.exit ], [ false, %_ZN10LogMessageD2Ev.exit ], [ false, %_ZN10LogMessageD2Ev.exit183 ], [ false, %bb.g ]
  ret i1 %.7

bb.cn:                                            ; preds = %bb.cl, %bb.i, %bb.d
  %.pn163 = phi { ptr, i32 } [ %i.bj, %bb.i ], [ %.pn161, %bb.cl ], [ %i.ac, %bb.d ]
  resume { ptr, i32 } %.pn163
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK10duckdb_re23RE27RewriteEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11StringPieceEPS9_i(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(148) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.LogMessage, align 8          ; 11 uses
  %6 = alloca %class.LogMessage, align 8          ; 11 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !26     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !28   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c ; 2 uses
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge
  %.03466 = phi ptr [ %i.a, %.lr.ph ], [ %i.cq, %.critedge ] ; 3 uses
  %i.h = load i8, ptr %.03466, align 1, !tbaa !23 ; 2 uses
  %.not = icmp eq i8 %i.h, 92
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %i.f, align 8, !tbaa !21   ; 4 uses
  %i.j = add i64 %i.i, 1                          ; 3 uses
  %i.k = load ptr, ptr %1, align 8, !tbaa !29     ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.g                   ; 2 uses
  br i1 %i.l, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = icmp ult i64 %i.i, 16
  tail call void @llvm.assume(i1 %i.m)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %bb.d, %bb.c
  %i.n = load i64, ptr %i.g, align 8
  %i.o = select i1 %i.l, i64 15, i64 %i.n
  %i.p = icmp ugt i64 %i.j, %i.o
  br i1 %i.p, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.i, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %bb.e
  %i.q = phi ptr [ %.pre.i, %bb.e ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.i
  store i8 %i.h, ptr %i.r, align 1, !tbaa !23
  store i64 %i.j, ptr %i.f, align 8, !tbaa !21
  %i.s = load ptr, ptr %1, align 8, !tbaa !29
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.j
  store i8 0, ptr %i.t, align 1, !tbaa !23
  br label %.critedge

bb.f:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %.03466, i64 1 ; 5 uses
  %i.v = icmp ult ptr %i.u, %i.d
  br i1 %i.v, label %bb.g, label %.thread61

bb.g:                                             ; preds = %bb.f
  %i.w = load i8, ptr %i.u, align 1, !tbaa !23    ; 2 uses
  %i.x = sext i8 %i.w to i32
  %isdigittmp = add nsw i32 %i.x, -48             ; 4 uses
  %isdigit = icmp ult i32 %isdigittmp, 10
  br i1 %isdigit, label %bb.h, label %bb.q

bb.h:                                             ; preds = %bb.g
  %.not44 = icmp slt i32 %isdigittmp, %4
  br i1 %.not44, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.z = load i8, ptr %i.y, align 2, !tbaa !15, !range !48, !noundef !49
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store i8 0, ptr %5, align 8, !tbaa !54
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.ab)
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull @.str.29, i64 noundef 22)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.j
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, i32 noundef %isdigittmp)
          to label %bb.k unwind label %bb.m       ; 2 uses

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull @.str.30, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46: ; preds = %bb.k
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, i32 noundef %4)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.31, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47: ; preds = %bb.l
  %i.ah = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ah, ptr %i.ab, align 8, !tbaa !63
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.aj = getelementptr i8, ptr %i.ah, i64 -24
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = getelementptr inbounds i8, ptr %i.ab, i64 %i.ak
  store ptr %i.ai, ptr %i.al, align 8, !tbaa !63
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.am, align 8, !tbaa !63
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !29 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZN10LogMessageD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47
  call void @_ZdlPv(ptr noundef %i.ao) #31
  br label %_ZN10LogMessageD2Ev.exit

_ZN10LogMessageD2Ev.exit:                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.am, align 8, !tbaa !63
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ar) #29
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.as) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %.loopexit

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.y

bb.n:                                             ; preds = %bb.h
  %i.au = zext nneg i32 %isdigittmp to i64
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.au ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.av, align 8, !tbaa !177
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !34 ; 3 uses
  %i.aw = icmp eq i64 %.sroa.4.0.copyload, 0
  br i1 %i.aw, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = load i64, ptr %i.f, align 8, !tbaa !21
  %i.ay = sub i64 4611686018427387903, %i.ax
  %i.az = icmp ult i64 %i.ay, %.sroa.4.0.copyload
  br i1 %i.az, label %bb.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #32
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %bb.o
  %i.ba = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %.sroa.0.0.copyload, i64 noundef %.sroa.4.0.copyload) ; 0 uses
  br label %.critedge

bb.q:                                             ; preds = %bb.g
  %i.bb = icmp eq i8 %i.w, 92
  br i1 %i.bb, label %bb.r, label %.thread61

bb.r:                                             ; preds = %bb.q
  %i.bc = load i64, ptr %i.f, align 8, !tbaa !21  ; 4 uses
  %i.bd = add i64 %i.bc, 1                        ; 3 uses
  %i.be = load ptr, ptr %1, align 8, !tbaa !29    ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.g                 ; 2 uses
  br i1 %i.bf, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i48
end_hunk_0
begin_hunk_1_@"_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK10duckdb_re23RE211ReverseProgEvE3$_0JPKS4_EEvRS_OT_DpOT0_EUlvE_EERS9_ENUlvE_8__invokeEv":bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !21
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef %i.v, i64 noundef %i.x)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i.i unwind label %bb.g

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i.i: ; preds = %bb.d
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull @.str.5, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11.i.i.i.i.i unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11.i.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i.i
  %i.aa = load ptr, ptr %1, align 8, !tbaa !29    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.aa) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  %i.ad = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ad, ptr %i.o, align 8, !tbaa !63
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.af = getelementptr i8, ptr %i.ad, i64 -24
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = getelementptr inbounds i8, ptr %i.o, i64 %i.ag
  store ptr %i.ae, ptr %i.ah, align 8, !tbaa !63
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ai, align 8, !tbaa !63
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !29 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZN10LogMessageD2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.ak) #31
  br label %_ZN10LogMessageD2Ev.exit.i.i.i.i.i

_ZN10LogMessageD2Ev.exit.i.i.i.i.i:               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ai, align 8, !tbaa !63
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.an) #29
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ao) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #29
  br label %"_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK10duckdb_re23RE211ReverseProgEvE3$_0JPKS4_EEvRS_OT_DpOT0_EUlvE_EERS9_ENKUlvE_clEv.exit"

bb.e:                                             ; preds = %bb.c
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i.i.i.i

bb.g:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i.i, %bb.d
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.as = load ptr, ptr %1, align 8, !tbaa !29    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i.i.i.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.as) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i.i.i.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i.i.i.i.i, %bb.f
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.aq, %bb.f ], [ %i.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i.i.i.i.i ], [ %i.ar, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i.i.i.i, %bb.e
  %.pn.pn.i.i.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i.i.i.i ], [ %i.ap, %bb.e ]
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %0) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #29
  resume { ptr, i32 } %.pn.pn.i.i.i.i.i

"_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK10duckdb_re23RE211ReverseProgEvE3$_0JPKS4_EEvRS_OT_DpOT0_EUlvE_EERS9_ENKUlvE_clEv.exit": ; preds = %bb.a, %bb.b, %_ZN10LogMessageD2Ev.exit.i.i.i.i.i
  ret void
}

declare noundef ptr @_ZN10duckdb_re26Regexp20CompileToReverseProgEl(ptr noundef nonnull align 8 dereferenceable(40), i64 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
define internal void @"_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK10duckdb_re23RE220NamedCapturingGroupsB5cxx11EvE3$_0JPKS4_EEvRS_OT_DpOT0_EUlvE_EERS9_ENUlvE_8__invokeEv"() #23 align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %.val.i = load ptr, ptr %i.c, align 8, !tbaa !230
  %.val.val.i = load ptr, ptr %.val.i, align 8, !tbaa !89 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !69   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %bb.b

._crit_edge.i.i.i.i.i:                            ; preds = %bb.a
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 120
  %.pre.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !101
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef ptr @_ZN10duckdb_re26Regexp13NamedCapturesB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.e) ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 120
  store ptr %i.f, ptr %i.g, align 8, !tbaa !101
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge.i.i.i.i.i
  %i.h = phi ptr [ %.pre.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.f, %bb.b ]
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %"_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK10duckdb_re23RE220NamedCapturingGroupsB5cxx11EvE3$_0JPKS4_EEvRS_OT_DpOT0_EUlvE_EERS9_ENKUlvE_clEv.exit"

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 120
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN10duckdb_re2L13empty_storageE, i64 32), ptr %i.j, align 8, !tbaa !101
  br label %"_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK10duckdb_re23RE220NamedCapturingGroupsB5cxx11EvE3$_0JPKS4_EEvRS_OT_DpOT0_EUlvE_EERS9_ENKUlvE_clEv.exit"

"_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK10duckdb_re23RE220NamedCapturingGroupsB5cxx11EvE3$_0JPKS4_EEvRS_OT_DpOT0_EUlvE_EERS9_ENKUlvE_clEv.exit": ; preds = %bb.c, %bb.d
  ret void
}

declare noundef ptr @_ZN10duckdb_re26Regexp13NamedCapturesB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
define internal void @"_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK10duckdb_re23RE219CapturingGroupNamesB5cxx11EvE3$_0JPKS4_EEvRS_OT_DpOT0_EUlvE_EERS9_ENUlvE_8__invokeEv"() #23 align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %.val.i = load ptr, ptr %i.c, align 8, !tbaa !232
  %.val.val.i = load ptr, ptr %.val.i, align 8, !tbaa !89 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !69   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %bb.b

._crit_edge.i.i.i.i.i:                            ; preds = %bb.a
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 128
  %.pre.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !95
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef ptr @_ZN10duckdb_re26Regexp12CaptureNamesB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.e) ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 128
  store ptr %i.f, ptr %i.g, align 8, !tbaa !95
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge.i.i.i.i.i
  %i.h = phi ptr [ %.pre.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.f, %bb.b ]
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %"_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK10duckdb_re23RE219CapturingGroupNamesB5cxx11EvE3$_0JPKS4_EEvRS_OT_DpOT0_EUlvE_EERS9_ENKUlvE_clEv.exit"

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 128
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN10duckdb_re2L13empty_storageE, i64 80), ptr %i.j, align 8, !tbaa !95
  br label %"_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK10duckdb_re23RE219CapturingGroupNamesB5cxx11EvE3$_0JPKS4_EEvRS_OT_DpOT0_EUlvE_EERS9_ENKUlvE_clEv.exit"

"_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK10duckdb_re23RE219CapturingGroupNamesB5cxx11EvE3$_0JPKS4_EEvRS_OT_DpOT0_EUlvE_EERS9_ENKUlvE_clEv.exit": ; preds = %bb.c, %bb.d
  ret void
}

declare noundef ptr @_ZN10duckdb_re26Regexp12CaptureNamesB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #20

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #10

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

; Function Attrs: uwtable
define weak_odr hidden noundef ptr @_ZTWN10duckdb_re25hooks7contextE() local_unnamed_addr #24 comdat {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN10duckdb_re25hooks7contextE)
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #28

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #22 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #28 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #29 = { nounwind }
attributes #30 = { nounwind willreturn memory(read) }
attributes #31 = { builtin nounwind }
attributes #32 = { noreturn }
attributes #33 = { builtin allocsize(0) }
attributes #34 = { noreturn nounwind }
attributes #35 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSN10duckdb_re23RE27OptionsE", !9, i64 0, !10, i64 8, !11, i64 12, !11, i64 13, !11, i64 14, !11, i64 15, !11, i64 16, !11, i64 17, !11, i64 18, !11, i64 19, !11, i64 20, !11, i64 21, !11, i64 22}
!9 = !{!"long", !5, i64 0}
!10 = !{!"_ZTSN10duckdb_re23RE27Options8EncodingE", !5, i64 0}
!11 = !{!"bool", !5, i64 0}
!12 = !{!8, !10, i64 8}
!13 = !{!8, !11, i64 12}
!14 = !{!8, !11, i64 13}
!15 = !{!8, !11, i64 14}
!16 = !{!11, !11, i64 0}
!17 = !{!18, !19, i64 0}
!18 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !19, i64 0}
!19 = !{!"p1 omnipotent char", !20, i64 0}
!20 = !{!"any pointer", !5, i64 0}
!21 = !{!22, !9, i64 8}
!22 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !18, i64 0, !9, i64 8, !5, i64 16}
!23 = !{!5, !5, i64 0}
!24 = !{!25, !4, i64 0}
!25 = !{!"_ZTSSt9once_flag", !4, i64 0}
!26 = !{!27, !19, i64 0}
!27 = !{!"_ZTSN10duckdb_re211StringPieceE", !19, i64 0, !9, i64 8}
!28 = !{!27, !9, i64 8}
!29 = !{!22, !19, i64 0}
!30 = !{!20, !20, i64 0}
!31 = !{!32}
!32 = distinct !{!32, !33, !"_ZNK10duckdb_re211StringPiececvNSt7__cxx1112basic_stringIcSt11char_traitsIcET_EEISaIcEEEv: argument 0"}
!33 = distinct !{!33, !"_ZNK10duckdb_re211StringPiececvNSt7__cxx1112basic_stringIcSt11char_traitsIcET_EEISaIcEEEv"}
!34 = !{!9, !9, i64 0}
!35 = !{!36, !37, i64 0}
!36 = !{!"_ZTSN10duckdb_re23RE2E", !37, i64 0, !8, i64 8, !38, i64 32, !38, i64 40, !37, i64 48, !37, i64 56, !4, i64 64, !39, i64 68, !11, i64 71, !11, i64 71, !11, i64 71, !22, i64 72, !40, i64 104, !40, i64 112, !41, i64 120, !42, i64 128, !25, i64 136, !25, i64 140, !25, i64 144}
!37 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !20, i64 0}
!38 = !{!"p1 _ZTSN10duckdb_re26RegexpE", !20, i64 0}
!39 = !{!"_ZTSN10duckdb_re23RE29ErrorCodeE", !5, i64 0}
!40 = !{!"p1 _ZTSN10duckdb_re24ProgE", !20, i64 0}
!41 = !{!"p1 _ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE", !20, i64 0}
!42 = !{!"p1 _ZTSSt3mapIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS5_EEE", !20, i64 0}
!43 = !{i64 0, i64 8, !34, i64 8, i64 4, !44, i64 12, i64 1, !16, i64 13, i64 1, !16, i64 14, i64 1, !16, i64 15, i64 1, !16, i64 16, i64 1, !16, i64 17, i64 1, !16, i64 18, i64 1, !16, i64 19, i64 1, !16, i64 20, i64 1, !16, i64 21, i64 1, !16, i64 22, i64 1, !16}
!44 = !{!10, !10, i64 0}
!45 = !{!36, !37, i64 48}
!46 = !{!36, !37, i64 56}
!47 = !{!36, !4, i64 64}
!48 = !{i8 0, i8 2}
!49 = !{}
!50 = !{!51, !52, i64 0}
!51 = !{!"_ZTSN10duckdb_re212RegexpStatusE", !52, i64 0, !27, i64 8, !37, i64 24}
!52 = !{!"_ZTSN10duckdb_re216RegexpStatusCodeE", !5, i64 0}
!53 = !{!36, !38, i64 32}
!54 = !{!55, !11, i64 0}
!55 = !{!"_ZTS10LogMessage", !11, i64 0, !56, i64 8}
!56 = !{!"_ZTSNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE", !57, i64 0, !58, i64 8}
!57 = !{!"_ZTSSo"}
!58 = !{!"_ZTSNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE", !59, i64 0, !62, i64 64, !22, i64 72}
!59 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !19, i64 8, !19, i64 16, !19, i64 24, !19, i64 32, !19, i64 40, !19, i64 48, !60, i64 56}
!60 = !{!"_ZTSSt6locale", !61, i64 0}
!61 = !{!"p1 _ZTSNSt6locale5_ImplE", !20, i64 0}
!62 = !{!"_ZTSSt13_Ios_Openmode", !5, i64 0}
!63 = !{!64, !64, i64 0}
!64 = !{!"vtable pointer", !6, i64 0}
!65 = !{!66}
!66 = distinct !{!66, !67, !"_ZNK10duckdb_re211StringPiececvNSt7__cxx1112basic_stringIcSt11char_traitsIcET_EEISaIcEEEv: argument 0"}
!67 = distinct !{!67, !"_ZNK10duckdb_re211StringPiececvNSt7__cxx1112basic_stringIcSt11char_traitsIcET_EEISaIcEEEv"}
!68 = !{!38, !38, i64 0}
!69 = !{!36, !38, i64 40}
!70 = !{!36, !40, i64 104}
!71 = !{!51, !37, i64 24}
!72 = !{!8, !11, i64 15}
!73 = !{!8, !11, i64 16}
!74 = !{!8, !11, i64 17}
!75 = !{!8, !11, i64 18}
!76 = !{!8, !11, i64 19}
!77 = !{!8, !11, i64 20}
!78 = !{!8, !11, i64 21}
!79 = !{!8, !11, i64 22}
!80 = !{!81}
!81 = distinct !{!81, !82, !"_ZNK10duckdb_re211StringPiececvNSt7__cxx1112basic_stringIcSt11char_traitsIcET_EEISaIcEEEv: argument 0"}
!82 = distinct !{!82, !"_ZNK10duckdb_re211StringPiececvNSt7__cxx1112basic_stringIcSt11char_traitsIcET_EEISaIcEEEv"}
!83 = !{!84}
!84 = distinct !{!84, !85, !"_ZNK10duckdb_re211StringPiececvNSt7__cxx1112basic_stringIcSt11char_traitsIcET_EEISaIcEEEv: argument 0"}
!85 = distinct !{!85, !"_ZNK10duckdb_re211StringPiececvNSt7__cxx1112basic_stringIcSt11char_traitsIcET_EEISaIcEEEv"}
!86 = !{!87}
!87 = distinct !{!87, !88, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!88 = distinct !{!88, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!89 = !{!90, !90, i64 0}
!90 = !{!"p1 _ZTSN10duckdb_re23RE2E", !20, i64 0}
!91 = !{!92, !92, i64 0}
!92 = !{!"p2 _ZTSN10duckdb_re23RE2E", !93, i64 0}
!93 = !{!"any p2 pointer", !20, i64 0}
!94 = !{!36, !40, i64 112}
!95 = !{!36, !42, i64 128}
!96 = !{!97, !100, i64 8}
!97 = !{!"_ZTSSt15_Rb_tree_header", !98, i64 0, !9, i64 32}
!98 = !{!"_ZTSSt18_Rb_tree_node_base", !99, i64 0, !100, i64 8, !100, i64 16, !100, i64 24}
!99 = !{!"_ZTSSt14_Rb_tree_color", !5, i64 0}
!100 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !20, i64 0}
!101 = !{!36, !41, i64 120}
!102 = !{!103, !4, i64 16}
!103 = !{!"_ZTSN10duckdb_re24ProgE", !11, i64 0, !11, i64 1, !11, i64 2, !11, i64 3, !11, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !11, i64 24, !9, i64 32, !5, i64 40, !4, i64 48, !5, i64 52, !104, i64 88, !9, i64 104, !115, i64 112, !126, i64 128, !9, i64 144, !136, i64 152, !136, i64 160, !5, i64 168, !25, i64 424, !25, i64 428}
!104 = !{!"_ZTSN10duckdb_re28PODArrayItEE", !105, i64 0}
!105 = !{!"_ZTSSt10unique_ptrIA_tN10duckdb_re28PODArrayItE7DeleterEE", !106, i64 0}
!106 = !{!"_ZTSSt15__uniq_ptr_dataItN10duckdb_re28PODArrayItE7DeleterELb1ELb1EE", !107, i64 0}
!107 = !{!"_ZTSSt15__uniq_ptr_implItN10duckdb_re28PODArrayItE7DeleterEE", !108, i64 0}
!108 = !{!"_ZTSSt5tupleIJPtN10duckdb_re28PODArrayItE7DeleterEEE", !109, i64 0}
!109 = !{!"_ZTSSt11_Tuple_implILm0EJPtN10duckdb_re28PODArrayItE7DeleterEEE", !110, i64 0, !113, i64 8}
!110 = !{!"_ZTSSt11_Tuple_implILm1EJN10duckdb_re28PODArrayItE7DeleterEEE", !111, i64 0}
!111 = !{!"_ZTSSt10_Head_baseILm1EN10duckdb_re28PODArrayItE7DeleterELb0EE", !112, i64 0}
!112 = !{!"_ZTSN10duckdb_re28PODArrayItE7DeleterE", !4, i64 0}
!113 = !{!"_ZTSSt10_Head_baseILm0EPtLb0EE", !114, i64 0}
!114 = !{!"p1 short", !20, i64 0}
!115 = !{!"_ZTSN10duckdb_re28PODArrayINS_4Prog4InstEEE", !116, i64 0}
!116 = !{!"_ZTSSt10unique_ptrIA_N10duckdb_re24Prog4InstENS0_8PODArrayIS2_E7DeleterEE", !117, i64 0}
!117 = !{!"_ZTSSt15__uniq_ptr_dataIN10duckdb_re24Prog4InstENS0_8PODArrayIS2_E7DeleterELb1ELb1EE", !118, i64 0}
!118 = !{!"_ZTSSt15__uniq_ptr_implIN10duckdb_re24Prog4InstENS0_8PODArrayIS2_E7DeleterEE", !119, i64 0}
!119 = !{!"_ZTSSt5tupleIJPN10duckdb_re24Prog4InstENS0_8PODArrayIS2_E7DeleterEEE", !120, i64 0}
!120 = !{!"_ZTSSt11_Tuple_implILm0EJPN10duckdb_re24Prog4InstENS0_8PODArrayIS2_E7DeleterEEE", !121, i64 0, !124, i64 8}
!121 = !{!"_ZTSSt11_Tuple_implILm1EJN10duckdb_re28PODArrayINS0_4Prog4InstEE7DeleterEEE", !122, i64 0}
!122 = !{!"_ZTSSt10_Head_baseILm1EN10duckdb_re28PODArrayINS0_4Prog4InstEE7DeleterELb0EE", !123, i64 0}
!123 = !{!"_ZTSN10duckdb_re28PODArrayINS_4Prog4InstEE7DeleterE", !4, i64 0}
!124 = !{!"_ZTSSt10_Head_baseILm0EPN10duckdb_re24Prog4InstELb0EE", !125, i64 0}
!125 = !{!"p1 _ZTSN10duckdb_re24Prog4InstE", !20, i64 0}
!126 = !{!"_ZTSN10duckdb_re28PODArrayIhEE", !127, i64 0}
!127 = !{!"_ZTSSt10unique_ptrIA_hN10duckdb_re28PODArrayIhE7DeleterEE", !128, i64 0}
!128 = !{!"_ZTSSt15__uniq_ptr_dataIhN10duckdb_re28PODArrayIhE7DeleterELb1ELb1EE", !129, i64 0}
!129 = !{!"_ZTSSt15__uniq_ptr_implIhN10duckdb_re28PODArrayIhE7DeleterEE", !130, i64 0}
!130 = !{!"_ZTSSt5tupleIJPhN10duckdb_re28PODArrayIhE7DeleterEEE", !131, i64 0}
!131 = !{!"_ZTSSt11_Tuple_implILm0EJPhN10duckdb_re28PODArrayIhE7DeleterEEE", !132, i64 0, !135, i64 8}
!132 = !{!"_ZTSSt11_Tuple_implILm1EJN10duckdb_re28PODArrayIhE7DeleterEEE", !133, i64 0}
!133 = !{!"_ZTSSt10_Head_baseILm1EN10duckdb_re28PODArrayIhE7DeleterELb0EE", !134, i64 0}
!134 = !{!"_ZTSN10duckdb_re28PODArrayIhE7DeleterE", !4, i64 0}
!135 = !{!"_ZTSSt10_Head_baseILm0EPhLb0EE", !19, i64 0}
!136 = !{!"p1 _ZTSN10duckdb_re23DFAE", !20, i64 0}
!137 = !{!138, !4, i64 0}
!138 = !{!"_ZTSN10duckdb_re211SparseArrayIiEE", !4, i64 0, !139, i64 8, !150, i64 24}
!139 = !{!"_ZTSN10duckdb_re28PODArrayIiEE", !140, i64 0}
!140 = !{!"_ZTSSt10unique_ptrIA_iN10duckdb_re28PODArrayIiE7DeleterEE", !141, i64 0}
!141 = !{!"_ZTSSt15__uniq_ptr_dataIiN10duckdb_re28PODArrayIiE7DeleterELb1ELb1EE", !142, i64 0}
!142 = !{!"_ZTSSt15__uniq_ptr_implIiN10duckdb_re28PODArrayIiE7DeleterEE", !143, i64 0}
!143 = !{!"_ZTSSt5tupleIJPiN10duckdb_re28PODArrayIiE7DeleterEEE", !144, i64 0}
!144 = !{!"_ZTSSt11_Tuple_implILm0EJPiN10duckdb_re28PODArrayIiE7DeleterEEE", !145, i64 0, !148, i64 8}
!145 = !{!"_ZTSSt11_Tuple_implILm1EJN10duckdb_re28PODArrayIiE7DeleterEEE", !146, i64 0}
!146 = !{!"_ZTSSt10_Head_baseILm1EN10duckdb_re28PODArrayIiE7DeleterELb0EE", !147, i64 0}
!147 = !{!"_ZTSN10duckdb_re28PODArrayIiE7DeleterE", !4, i64 0}
!148 = !{!"_ZTSSt10_Head_baseILm0EPiLb0EE", !149, i64 0}
!149 = !{!"p1 int", !20, i64 0}
!150 = !{!"_ZTSN10duckdb_re28PODArrayINS_11SparseArrayIiE10IndexValueEEE", !151, i64 0}
!151 = !{!"_ZTSSt10unique_ptrIA_N10duckdb_re211SparseArrayIiE10IndexValueENS0_8PODArrayIS3_E7DeleterEE", !152, i64 0}
!152 = !{!"_ZTSSt15__uniq_ptr_dataIN10duckdb_re211SparseArrayIiE10IndexValueENS0_8PODArrayIS3_E7DeleterELb1ELb1EE", !153, i64 0}
!153 = !{!"_ZTSSt15__uniq_ptr_implIN10duckdb_re211SparseArrayIiE10IndexValueENS0_8PODArrayIS3_E7DeleterEE", !154, i64 0}
!154 = !{!"_ZTSSt5tupleIJPN10duckdb_re211SparseArrayIiE10IndexValueENS0_8PODArrayIS3_E7DeleterEEE", !155, i64 0}
!155 = !{!"_ZTSSt11_Tuple_implILm0EJPN10duckdb_re211SparseArrayIiE10IndexValueENS0_8PODArrayIS3_E7DeleterEEE", !156, i64 0, !159, i64 8}
!156 = !{!"_ZTSSt11_Tuple_implILm1EJN10duckdb_re28PODArrayINS0_11SparseArrayIiE10IndexValueEE7DeleterEEE", !157, i64 0}
!157 = !{!"_ZTSSt10_Head_baseILm1EN10duckdb_re28PODArrayINS0_11SparseArrayIiE10IndexValueEE7DeleterELb0EE", !158, i64 0}
end_hunk_1
