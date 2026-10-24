Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/RegexMatchCache?download=true
inline.NumInlined: 9173
inline.NumDeleted: 3340
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZNK5folly15RegexMatchCache11consistencyERNS0_24ConsistencyReportMatcherERKNS0_6KeyMapENS_11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #39, !noalias !21389
  store ptr %i.ay, ptr %48, align 8, !tbaa !19764, !alias.scope !21390, !noalias !21389
  store i64 0, ptr %i.az, align 8, !tbaa !19673, !alias.scope !21390, !noalias !21389
  store i8 0, ptr %i.ay, align 8, !tbaa !19682, !alias.scope !21390, !noalias !21389
  invoke void @_ZN5folly7cEscapeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvNS_5RangeIPKcEERT_(ptr %i.fi, ptr %i.fv, ptr noundef nonnull align 8 dereferenceable(32) %48)
          to label %.noexc1.i unwind label %bb.r, !noalias !21389

bb.r:                                             ; preds = %bb.q
  %i.jw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jx = load ptr, ptr %48, align 8, !tbaa !19672, !alias.scope !21390, !noalias !21389 ; 2 uses
  %i.jy = icmp eq ptr %i.jx, %i.ay
  br i1 %i.jy, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.r
  %i.jz = load i64, ptr %i.ay, align 8, !tbaa !19682, !alias.scope !21390, !noalias !21389
  %i.ka = add i64 %i.jz, 1
  call void @_ZdlPvm(ptr noundef %i.jx, i64 noundef %i.ka) #40, !noalias !21389
  br label %common.resume

common.resume:                                    ; preds = %bb.hf, %bb.gf, %bb.fy, %bb.ff, %bb.ej, %bb.dy, %bb.cm, %bb.cb, %bb.bq, %bb.bf, %bb.ac, %bb.r, %bb.e, %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i507, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i523, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit638, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit670, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit702, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit734, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit585, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit553, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit841, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit877, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit933, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit775, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1075, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1016, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit974, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1378, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1388, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1346, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1356, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1331, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1341, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1299, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1309, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1267, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1277, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1252, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1262, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1220, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1230, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1188, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1198, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1156, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1166, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1124, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1134, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1092, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1102, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i
  %common.resume.op = phi { ptr, i32 } [ %i.blw, %bb.gf ], [ %i.aj, %bb.e ], [ %i.jw, %bb.r ], [ %i.mu, %bb.ac ], [ %i.vo, %bb.bf ], [ %i.yh, %bb.bq ], [ %i.abf, %bb.cb ], [ %i.ady, %bb.cm ], [ %i.arx, %bb.dy ], [ %i.avs, %bb.ej ], [ %i.bds, %bb.ff ], [ %i.bjw, %bb.fy ], [ %i.ki, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ], [ %i.jw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ng, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1102 ], [ %i.mu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1092 ], [ %i.wa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1134 ], [ %i.vo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1124 ], [ %i.yt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1166 ], [ %i.yh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1156 ], [ %i.abr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1198 ], [ %i.abf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1188 ], [ %i.aek, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1230 ], [ %i.ady, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1220 ], [ %i.asj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1262 ], [ %i.arx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1252 ], [ %i.awe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1277 ], [ %i.avs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1267 ], [ %i.bee, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1309 ], [ %i.bds, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1299 ], [ %i.bki, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1341 ], [ %i.bjw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1331 ], [ %i.bmi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1356 ], [ %i.blw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1346 ], [ %i.bty, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1388 ], [ %i.btm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1378 ], [ %i.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i523 ], [ %.pn278.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit638 ], [ %.pn259, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit841 ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i507 ], [ %.pn244, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit974 ], [ %.pn251.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1075 ], [ %.pn246.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1016 ], [ %i.t, %bb.d ], [ %.pn270.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit553 ], [ %.pn273.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit585 ], [ %.pn287.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit734 ], [ %.pn284.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit702 ], [ %.pn281.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit670 ], [ %.pn256, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit775 ], [ %.pn265.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit933 ], [ %.pn261.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit877 ], [ %i.btm, %bb.hf ]
  resume { ptr, i32 } %common.resume.op

.noexc1.i:                                        ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #39, !noalias !21391
  %i.kb = load ptr, ptr %48, align 8, !tbaa !19672, !noalias !21389
  %i.kc = load i64, ptr %i.az, align 8, !tbaa !19673, !noalias !21389
  %i.kd = ptrtoint ptr %i.kb to i64
  %.sroa.01.sroa.4.0.insert.ext.i.i = zext i64 %i.kc to i128
  %.sroa.01.sroa.4.0.insert.shift.i.i = shl nuw i128 %.sroa.01.sroa.4.0.insert.ext.i.i, 64
  %.sroa.01.sroa.0.0.insert.ext.i.i = zext i64 %i.kd to i128
  %.sroa.01.sroa.0.0.insert.insert.i.i = or disjoint i128 %.sroa.01.sroa.4.0.insert.shift.i.i, %.sroa.01.sroa.0.0.insert.ext.i.i
  store i128 %.sroa.01.sroa.0.0.insert.insert.i.i, ptr %47, align 16, !noalias !21391
  invoke void @_ZN3fmt2v97vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %71, ptr nonnull @.str.8, i64 4, i64 13, ptr nonnull %47)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %.noexc1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #39, !noalias !21391
  %i.ke = load ptr, ptr %48, align 8, !tbaa !19672, !noalias !21389 ; 2 uses
  %i.kf = icmp eq ptr %i.ke, %i.ay
  br i1 %i.kf, label %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.s
  %i.kg = load i64, ptr %i.ay, align 8, !tbaa !19682, !noalias !21389
  %i.kh = add i64 %i.kg, 1
  call void @_ZdlPvm(ptr noundef %i.ke, i64 noundef %i.kh) #40
  br label %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.t:                                             ; preds = %.noexc1.i
  %i.ki = landingpad { ptr, i32 }
          cleanup
  %i.kj = load ptr, ptr %48, align 8, !tbaa !19672, !noalias !21389 ; 2 uses
  %i.kk = icmp eq ptr %i.kj, %i.ay
  br i1 %i.kk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.t
  %i.kl = load i64, ptr %i.ay, align 8, !tbaa !19682, !noalias !21389
  %i.km = add i64 %i.kl, 1
  call void @_ZdlPvm(ptr noundef %i.kj, i64 noundef %i.km) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #39, !noalias !21389
  br label %common.resume

_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #39, !noalias !21389
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #39
  %i.kn = load ptr, ptr %.sroa.01455.02040, align 8, !tbaa !19763 ; 2 uses
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !19672 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !19673
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #39, !noalias !21392
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ko, i64 %i.kq
  store ptr %i.ba, ptr %46, align 8, !tbaa !19764, !alias.scope !21393, !noalias !21392
  store i64 0, ptr %i.bb, align 8, !tbaa !19673, !alias.scope !21393, !noalias !21392
  store i8 0, ptr %i.ba, align 8, !tbaa !19682, !alias.scope !21393, !noalias !21392
  invoke void @_ZN5folly7cEscapeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvNS_5RangeIPKcEERT_(ptr %i.ko, ptr %i.kr, ptr noundef nonnull align 8 dereferenceable(32) %46)
          to label %.noexc1.i1081 unwind label %bb.u, !noalias !21392

bb.u:                                             ; preds = %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.ks = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kt = load ptr, ptr %46, align 8, !tbaa !19672, !alias.scope !21393, !noalias !21392 ; 2 uses
  %i.ku = icmp eq ptr %i.kt, %i.ba
  br i1 %i.ku, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1077

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1077: ; preds = %bb.u
  %i.kv = load i64, ptr %i.ba, align 8, !tbaa !19682, !alias.scope !21393, !noalias !21392
  %i.kw = add i64 %i.kv, 1
  call void @_ZdlPvm(ptr noundef %i.kt, i64 noundef %i.kw) #40, !noalias !21392
  br label %.body

.noexc1.i1081:                                    ; preds = %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #39, !noalias !21394
  %i.kx = load ptr, ptr %46, align 8, !tbaa !19672, !noalias !21392
  %i.ky = load i64, ptr %i.bb, align 8, !tbaa !19673, !noalias !21392
  %i.kz = ptrtoint ptr %i.kx to i64
  %.sroa.01.sroa.4.0.insert.ext.i.i1082 = zext i64 %i.ky to i128
  %.sroa.01.sroa.4.0.insert.shift.i.i1083 = shl nuw i128 %.sroa.01.sroa.4.0.insert.ext.i.i1082, 64
  %.sroa.01.sroa.0.0.insert.ext.i.i1084 = zext i64 %i.kz to i128
  %.sroa.01.sroa.0.0.insert.insert.i.i1085 = or disjoint i128 %.sroa.01.sroa.4.0.insert.shift.i.i1083, %.sroa.01.sroa.0.0.insert.ext.i.i1084
  store i128 %.sroa.01.sroa.0.0.insert.insert.i.i1085, ptr %45, align 16, !noalias !21394
  invoke void @_ZN3fmt2v97vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %72, ptr nonnull @.str.8, i64 4, i64 13, ptr nonnull %45)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %.noexc1.i1081
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #39, !noalias !21394
  %i.la = load ptr, ptr %46, align 8, !tbaa !19672, !noalias !21392 ; 2 uses
  %i.lb = icmp eq ptr %i.la, %i.ba
  br i1 %i.lb, label %.noexc350, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1089

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1089: ; preds = %bb.v
  %i.lc = load i64, ptr %i.ba, align 8, !tbaa !19682, !noalias !21392
  %i.ld = add i64 %i.lc, 1
  call void @_ZdlPvm(ptr noundef %i.la, i64 noundef %i.ld) #40
  br label %.noexc350

bb.w:                                             ; preds = %.noexc1.i1081
  %i.le = landingpad { ptr, i32 }
          cleanup
  %i.lf = load ptr, ptr %46, align 8, !tbaa !19672, !noalias !21392 ; 2 uses
  %i.lg = icmp eq ptr %i.lf, %i.ba
  br i1 %i.lg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1087, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1086

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1086: ; preds = %bb.w
  %i.lh = load i64, ptr %i.ba, align 8, !tbaa !19682, !noalias !21392
  %i.li = add i64 %i.lh, 1
  call void @_ZdlPvm(ptr noundef %i.lf, i64 noundef %i.li) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1087

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1087: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1086
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #39, !noalias !21392
  br label %.body

.noexc350:                                        ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1089
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #39, !noalias !21392
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #39, !noalias !21395
  call void @llvm.experimental.noalias.scope.decl(metadata !21396)
  %i.lj = load ptr, ptr %71, align 8, !tbaa !19672, !noalias !21396
  %i.lk = load i64, ptr %i.bc, align 8, !tbaa !19673, !noalias !21396
  %i.ll = ptrtoint ptr %i.lj to i64
  %i.lm = load ptr, ptr %72, align 8, !tbaa !19672, !noalias !21396
  %i.ln = load i64, ptr %i.bd, align 8, !tbaa !19673, !noalias !21396
  %i.lo = ptrtoint ptr %i.lm to i64
  %.sroa.04.sroa.4.0.insert.ext.i = zext i64 %i.lk to i128
  %.sroa.04.sroa.4.0.insert.shift.i = shl nuw i128 %.sroa.04.sroa.4.0.insert.ext.i, 64
  %.sroa.04.sroa.0.0.insert.ext.i = zext i64 %i.ll to i128
  %.sroa.04.sroa.0.0.insert.insert.i = or disjoint i128 %.sroa.04.sroa.4.0.insert.shift.i, %.sroa.04.sroa.0.0.insert.ext.i
  store i128 %.sroa.04.sroa.0.0.insert.insert.i, ptr %55, align 16, !tbaa !19682, !alias.scope !21396
  %.sroa.0.sroa.4.0.insert.ext.i = zext i64 %i.ln to i128
  %.sroa.0.sroa.4.0.insert.shift.i = shl nuw i128 %.sroa.0.sroa.4.0.insert.ext.i, 64
  %.sroa.0.sroa.0.0.insert.ext.i = zext i64 %i.lo to i128
  %.sroa.0.sroa.0.0.insert.insert.i = or disjoint i128 %.sroa.0.sroa.4.0.insert.shift.i, %.sroa.0.sroa.0.0.insert.ext.i
  store i128 %.sroa.0.sroa.0.0.insert.insert.i, ptr %i.be, align 16, !tbaa !19682, !alias.scope !21396
  invoke void @_ZN3fmt2v97vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %70, ptr nonnull @.str.277, i64 32, i64 221, ptr nonnull %55)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %.noexc350
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #39, !noalias !21395
  invoke void %4(ptr noundef nonnull align 8 dereferenceable(32) %70, ptr noundef %3)
          to label %_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit535 unwind label %bb.z, !inline_history !21207

_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit535: ; preds = %bb.x
  %i.lp = load ptr, ptr %70, align 8, !tbaa !19672 ; 2 uses
  %i.lq = icmp eq ptr %i.lp, %i.bf
  br i1 %i.lq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit538, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i536

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i536: ; preds = %_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit535
  %i.lr = load i64, ptr %i.bf, align 8, !tbaa !19682
  %i.ls = add i64 %i.lr, 1
  call void @_ZdlPvm(ptr noundef %i.lp, i64 noundef %i.ls) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit538

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit538: ; preds = %_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit535, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i536
  %i.lt = load ptr, ptr %72, align 8, !tbaa !19672 ; 2 uses
  %i.lu = icmp eq ptr %i.lt, %i.bg
  br i1 %i.lu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit541, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i539

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i539: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit538
  %i.lv = load i64, ptr %i.bg, align 8, !tbaa !19682
  %i.lw = add i64 %i.lv, 1
  call void @_ZdlPvm(ptr noundef %i.lt, i64 noundef %i.lw) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit541

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit541: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit538, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i539
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #39
  %i.lx = load ptr, ptr %71, align 8, !tbaa !19672 ; 2 uses
  %i.ly = icmp eq ptr %i.lx, %i.bh
  br i1 %i.ly, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit544, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i542

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i542: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit541
  %i.lz = load i64, ptr %i.bh, align 8, !tbaa !19682
  %i.ma = add i64 %i.lz, 1
  call void @_ZdlPvm(ptr noundef %i.lx, i64 noundef %i.ma) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit544

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit544: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit541, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i542
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #39
  br label %bb.al

bb.y:                                             ; preds = %.noexc350
  %i.mb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit547

bb.z:                                             ; preds = %bb.x
  %i.mc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.md = load ptr, ptr %70, align 8, !tbaa !19672 ; 2 uses
  %i.me = icmp eq ptr %i.md, %i.bf
  br i1 %i.me, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit547, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i545

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i545: ; preds = %bb.z
  %i.mf = load i64, ptr %i.bf, align 8, !tbaa !19682
  %i.mg = add i64 %i.mf, 1
  call void @_ZdlPvm(ptr noundef %i.md, i64 noundef %i.mg) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit547

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit547: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i545, %bb.y
  %.pn270 = phi { ptr, i32 } [ %i.mb, %bb.y ], [ %i.mc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i545 ], [ %i.mc, %bb.z ] ; 2 uses
  %i.mh = load ptr, ptr %72, align 8, !tbaa !19672 ; 2 uses
  %i.mi = icmp eq ptr %i.mh, %i.bg
  br i1 %i.mi, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i548

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i548: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit547
  %i.mj = load i64, ptr %i.bg, align 8, !tbaa !19682
  %i.mk = add i64 %i.mj, 1
  call void @_ZdlPvm(ptr noundef %i.mh, i64 noundef %i.mk) #40
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit547, %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i548, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1087, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1077
  %.pn270.pn = phi { ptr, i32 } [ %i.ks, %bb.u ], [ %.pn270, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i548 ], [ %i.le, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1087 ], [ %i.ks, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1077 ], [ %.pn270, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit547 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #39
  %i.ml = load ptr, ptr %71, align 8, !tbaa !19672 ; 2 uses
  %i.mm = icmp eq ptr %i.ml, %i.bh
  br i1 %i.mm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit553, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i551

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i551: ; preds = %.body
  %i.mn = load i64, ptr %i.bh, align 8, !tbaa !19682
  %i.mo = add i64 %i.mn, 1
  call void @_ZdlPvm(ptr noundef %i.ml, i64 noundef %i.mo) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit553

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit553: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i551
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #39
  br label %common.resume

bb.aa:                                            ; preds = %_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit
  %.not2 = xor i1 %.0.i, true                     ; 2 uses
  %or.cond4 = or i1 %i.jm, %.not2
  br i1 %or.cond4, label %bb.al, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #39
  %i.mp = load ptr, ptr %.sroa.01455.02040, align 8, !tbaa !19763 ; 2 uses
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !19672 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mp, i64 8
  %i.ms = load i64, ptr %i.mr, align 8, !tbaa !19673
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #39, !noalias !21397
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mq, i64 %i.ms
  store ptr %i.bi, ptr %44, align 8, !tbaa !19764, !alias.scope !21398, !noalias !21397
  store i64 0, ptr %i.bj, align 8, !tbaa !19673, !alias.scope !21398, !noalias !21397
  store i8 0, ptr %i.bi, align 8, !tbaa !19682, !alias.scope !21398, !noalias !21397
  invoke void @_ZN5folly7cEscapeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvNS_5RangeIPKcEERT_(ptr %i.mq, ptr %i.mt, ptr noundef nonnull align 8 dereferenceable(32) %44)
          to label %.noexc1.i1096 unwind label %bb.ac, !noalias !21397

bb.ac:                                            ; preds = %bb.ab
  %i.mu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mv = load ptr, ptr %44, align 8, !tbaa !19672, !alias.scope !21398, !noalias !21397 ; 2 uses
  %i.mw = icmp eq ptr %i.mv, %i.bi
  br i1 %i.mw, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1092

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1092: ; preds = %bb.ac
  %i.mx = load i64, ptr %i.bi, align 8, !tbaa !19682, !alias.scope !21398, !noalias !21397
  %i.my = add i64 %i.mx, 1
  call void @_ZdlPvm(ptr noundef %i.mv, i64 noundef %i.my) #40, !noalias !21397
  br label %common.resume

.noexc1.i1096:                                    ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #39, !noalias !21399
  %i.mz = load ptr, ptr %44, align 8, !tbaa !19672, !noalias !21397
  %i.na = load i64, ptr %i.bj, align 8, !tbaa !19673, !noalias !21397
  %i.nb = ptrtoint ptr %i.mz to i64
  %.sroa.01.sroa.4.0.insert.ext.i.i1097 = zext i64 %i.na to i128
  %.sroa.01.sroa.4.0.insert.shift.i.i1098 = shl nuw i128 %.sroa.01.sroa.4.0.insert.ext.i.i1097, 64
  %.sroa.01.sroa.0.0.insert.ext.i.i1099 = zext i64 %i.nb to i128
  %.sroa.01.sroa.0.0.insert.insert.i.i1100 = or disjoint i128 %.sroa.01.sroa.4.0.insert.shift.i.i1098, %.sroa.01.sroa.0.0.insert.ext.i.i1099
  store i128 %.sroa.01.sroa.0.0.insert.insert.i.i1100, ptr %43, align 16, !noalias !21399
  invoke void @_ZN3fmt2v97vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %74, ptr nonnull @.str.8, i64 4, i64 13, ptr nonnull %43)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %.noexc1.i1096
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #39, !noalias !21399
  %i.nc = load ptr, ptr %44, align 8, !tbaa !19672, !noalias !21397 ; 2 uses
  %i.nd = icmp eq ptr %i.nc, %i.bi
  br i1 %i.nd, label %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit1106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1104: ; preds = %bb.ad
  %i.ne = load i64, ptr %i.bi, align 8, !tbaa !19682, !noalias !21397
  %i.nf = add i64 %i.ne, 1
  call void @_ZdlPvm(ptr noundef %i.nc, i64 noundef %i.nf) #40
  br label %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit1106

bb.ae:                                            ; preds = %.noexc1.i1096
  %i.ng = landingpad { ptr, i32 }
          cleanup
  %i.nh = load ptr, ptr %44, align 8, !tbaa !19672, !noalias !21397 ; 2 uses
  %i.ni = icmp eq ptr %i.nh, %i.bi
  br i1 %i.ni, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1101: ; preds = %bb.ae
  %i.nj = load i64, ptr %i.bi, align 8, !tbaa !19682, !noalias !21397
  %i.nk = add i64 %i.nj, 1
  call void @_ZdlPvm(ptr noundef %i.nh, i64 noundef %i.nk) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1102: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1101
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #39, !noalias !21397
  br label %common.resume

_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit1106: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1104
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #39, !noalias !21397
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #39, !noalias !21400
  store ptr %i.bk, ptr %42, align 8, !tbaa !19764, !alias.scope !21401, !noalias !21400
  store i64 0, ptr %i.bl, align 8, !tbaa !19673, !alias.scope !21401, !noalias !21400
  store i8 0, ptr %i.bk, align 8, !tbaa !19682, !alias.scope !21401, !noalias !21400
  invoke void @_ZN5folly7cEscapeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvNS_5RangeIPKcEERT_(ptr %i.fi, ptr %i.fv, ptr noundef nonnull align 8 dereferenceable(32) %42)
          to label %.noexc1.i1111 unwind label %bb.af, !noalias !21400

bb.af:                                            ; preds = %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit1106
  %i.nl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nm = load ptr, ptr %42, align 8, !tbaa !19672, !alias.scope !21401, !noalias !21400 ; 2 uses
  %i.nn = icmp eq ptr %i.nm, %i.bk
  br i1 %i.nn, label %.body1121, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1107: ; preds = %bb.af
  %i.no = load i64, ptr %i.bk, align 8, !tbaa !19682, !alias.scope !21401, !noalias !21400
  %i.np = add i64 %i.no, 1
  call void @_ZdlPvm(ptr noundef %i.nm, i64 noundef %i.np) #40, !noalias !21400
  br label %.body1121

.noexc1.i1111:                                    ; preds = %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit1106
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #39, !noalias !21402
  %i.nq = load ptr, ptr %42, align 8, !tbaa !19672, !noalias !21400
  %i.nr = load i64, ptr %i.bl, align 8, !tbaa !19673, !noalias !21400
  %i.ns = ptrtoint ptr %i.nq to i64
  %.sroa.01.sroa.4.0.insert.ext.i.i1112 = zext i64 %i.nr to i128
  %.sroa.01.sroa.4.0.insert.shift.i.i1113 = shl nuw i128 %.sroa.01.sroa.4.0.insert.ext.i.i1112, 64
  %.sroa.01.sroa.0.0.insert.ext.i.i1114 = zext i64 %i.ns to i128
  %.sroa.01.sroa.0.0.insert.insert.i.i1115 = or disjoint i128 %.sroa.01.sroa.4.0.insert.shift.i.i1113, %.sroa.01.sroa.0.0.insert.ext.i.i1114
  store i128 %.sroa.01.sroa.0.0.insert.insert.i.i1115, ptr %41, align 16, !noalias !21402
  invoke void @_ZN3fmt2v97vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %75, ptr nonnull @.str.8, i64 4, i64 13, ptr nonnull %41)
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %.noexc1.i1111
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #39, !noalias !21402
  %i.nt = load ptr, ptr %42, align 8, !tbaa !19672, !noalias !21400 ; 2 uses
  %i.nu = icmp eq ptr %i.nt, %i.bk
  br i1 %i.nu, label %.noexc346, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1119

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1119: ; preds = %bb.ag
  %i.nv = load i64, ptr %i.bk, align 8, !tbaa !19682, !noalias !21400
  %i.nw = add i64 %i.nv, 1
  call void @_ZdlPvm(ptr noundef %i.nt, i64 noundef %i.nw) #40
  br label %.noexc346

bb.ah:                                            ; preds = %.noexc1.i1111
  %i.nx = landingpad { ptr, i32 }
          cleanup
  %i.ny = load ptr, ptr %42, align 8, !tbaa !19672, !noalias !21400 ; 2 uses
  %i.nz = icmp eq ptr %i.ny, %i.bk
  br i1 %i.nz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1117, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1116: ; preds = %bb.ah
  %i.oa = load i64, ptr %i.bk, align 8, !tbaa !19682, !noalias !21400
  %i.ob = add i64 %i.oa, 1
  call void @_ZdlPvm(ptr noundef %i.ny, i64 noundef %i.ob) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1117

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1117: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1116
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #39, !noalias !21400
  br label %.body1121

.noexc346:                                        ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1119
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #39, !noalias !21400
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #39, !noalias !21403
  call void @llvm.experimental.noalias.scope.decl(metadata !21404)
  %i.oc = load ptr, ptr %74, align 8, !tbaa !19672, !noalias !21404
  %i.od = load i64, ptr %i.bm, align 8, !tbaa !19673, !noalias !21404
  %i.oe = ptrtoint ptr %i.oc to i64
  %i.of = load ptr, ptr %75, align 8, !tbaa !19672, !noalias !21404
  %i.og = load i64, ptr %i.bn, align 8, !tbaa !19673, !noalias !21404
  %i.oh = ptrtoint ptr %i.of to i64
  %.sroa.04.sroa.4.0.insert.ext.i558 = zext i64 %i.od to i128
  %.sroa.04.sroa.4.0.insert.shift.i559 = shl nuw i128 %.sroa.04.sroa.4.0.insert.ext.i558, 64
  %.sroa.04.sroa.0.0.insert.ext.i560 = zext i64 %i.oe to i128
  %.sroa.04.sroa.0.0.insert.insert.i561 = or disjoint i128 %.sroa.04.sroa.4.0.insert.shift.i559, %.sroa.04.sroa.0.0.insert.ext.i560
  store i128 %.sroa.04.sroa.0.0.insert.insert.i561, ptr %56, align 16, !tbaa !19682, !alias.scope !21404
  %.sroa.0.sroa.4.0.insert.ext.i562 = zext i64 %i.og to i128
  %.sroa.0.sroa.4.0.insert.shift.i563 = shl nuw i128 %.sroa.0.sroa.4.0.insert.ext.i562, 64
  %.sroa.0.sroa.0.0.insert.ext.i564 = zext i64 %i.oh to i128
  %.sroa.0.sroa.0.0.insert.insert.i565 = or disjoint i128 %.sroa.0.sroa.4.0.insert.shift.i563, %.sroa.0.sroa.0.0.insert.ext.i564
  store i128 %.sroa.0.sroa.0.0.insert.insert.i565, ptr %i.bo, align 16, !tbaa !19682, !alias.scope !21404
  invoke void @_ZN3fmt2v97vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %73, ptr nonnull @.str.278, i64 32, i64 221, ptr nonnull %56)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %.noexc346
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #39, !noalias !21403
  invoke void %4(ptr noundef nonnull align 8 dereferenceable(32) %73, ptr noundef %3)
          to label %_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit567 unwind label %bb.ak, !inline_history !21207

_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit567: ; preds = %bb.ai
  %i.oi = load ptr, ptr %73, align 8, !tbaa !19672 ; 2 uses
  %i.oj = icmp eq ptr %i.oi, %i.bp
  br i1 %i.oj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit570, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i568

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i568: ; preds = %_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit567
  %i.ok = load i64, ptr %i.bp, align 8, !tbaa !19682
  %i.ol = add i64 %i.ok, 1
  call void @_ZdlPvm(ptr noundef %i.oi, i64 noundef %i.ol) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit570

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit570: ; preds = %_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit567, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i568
  %i.om = load ptr, ptr %75, align 8, !tbaa !19672 ; 2 uses
  %i.on = icmp eq ptr %i.om, %i.bq
  br i1 %i.on, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit573, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i571

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i571: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit570
  %i.oo = load i64, ptr %i.bq, align 8, !tbaa !19682
  %i.op = add i64 %i.oo, 1
  call void @_ZdlPvm(ptr noundef %i.om, i64 noundef %i.op) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit573

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit573: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit570, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i571
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #39
  %i.oq = load ptr, ptr %74, align 8, !tbaa !19672 ; 2 uses
  %i.or = icmp eq ptr %i.oq, %i.br
  br i1 %i.or, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit576, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i574

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i574: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit573
  %i.os = load i64, ptr %i.br, align 8, !tbaa !19682
  %i.ot = add i64 %i.os, 1
  call void @_ZdlPvm(ptr noundef %i.oq, i64 noundef %i.ot) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit576

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit576: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit573, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i574
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #39
  br label %bb.al

bb.aj:                                            ; preds = %.noexc346
  %i.ou = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit579

bb.ak:                                            ; preds = %bb.ai
  %i.ov = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ow = load ptr, ptr %73, align 8, !tbaa !19672 ; 2 uses
  %i.ox = icmp eq ptr %i.ow, %i.bp
  br i1 %i.ox, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit579, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i577

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i577: ; preds = %bb.ak
  %i.oy = load i64, ptr %i.bp, align 8, !tbaa !19682
  %i.oz = add i64 %i.oy, 1
  call void @_ZdlPvm(ptr noundef %i.ow, i64 noundef %i.oz) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit579

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit579: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i577, %bb.aj
  %.pn273 = phi { ptr, i32 } [ %i.ou, %bb.aj ], [ %i.ov, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i577 ], [ %i.ov, %bb.ak ] ; 2 uses
  %i.pa = load ptr, ptr %75, align 8, !tbaa !19672 ; 2 uses
  %i.pb = icmp eq ptr %i.pa, %i.bq
  br i1 %i.pb, label %.body1121, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i580

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i580: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit579
  %i.pc = load i64, ptr %i.bq, align 8, !tbaa !19682
  %i.pd = add i64 %i.pc, 1
  call void @_ZdlPvm(ptr noundef %i.pa, i64 noundef %i.pd) #40
  br label %.body1121

.body1121:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit579, %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i580, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1117, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1107
  %.pn273.pn = phi { ptr, i32 } [ %i.nl, %bb.af ], [ %.pn273, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i580 ], [ %i.nx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1117 ], [ %i.nl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1107 ], [ %.pn273, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit579 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #39
  %i.pe = load ptr, ptr %74, align 8, !tbaa !19672 ; 2 uses
  %i.pf = icmp eq ptr %i.pe, %i.br
  br i1 %i.pf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit585, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i583

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i583: ; preds = %.body1121
  %i.pg = load i64, ptr %i.br, align 8, !tbaa !19682
  %i.ph = add i64 %i.pg, 1
  call void @_ZdlPvm(ptr noundef %i.pe, i64 noundef %i.ph) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit585

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit585: ; preds = %.body1121, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i583
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #39
  br label %common.resume

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit544, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit576, %bb.aa
  %.not21615 = phi i1 [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit544 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit576 ], [ %.not2, %bb.aa ] ; 2 uses
  %i.pi = load ptr, ptr %.sroa.01455.02040, align 8, !tbaa !19763
  %i.pj = load ptr, ptr %1, align 8, !tbaa !797
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 16
  %i.pl = load ptr, ptr %i.pk, align 8
  %i.pm = call noundef zeroext i1 %i.pl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull byval(%"class.folly::RegexMatchCacheKey") align 8 %i.fd, ptr noundef %i.pi) ; 4 uses
  %i.pn = or i1 %.sroa.01565.0, %.not21615
  %i.po = and i1 %i.pn, %i.pm
  br i1 %i.po, label %bb.am, label %_ZN5folly7get_ptrINS_10F14FastMapIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryENS_23HeterogeneousAccessHashIS4_vEENS_26HeterogeneousAccessEqualToIS4_vEESaISt4pairIKS4_S6_EEEES4_EEDaRKT_RKT0_.exit.thread

bb.am:                                            ; preds = %bb.al
  %i.pp = load i64, ptr %i.bs, align 8, !tbaa !19695 ; 3 uses
  %i.pq = icmp ult i64 %i.pp, 512
  br i1 %i.pq, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.pr = icmp samesign ult i64 %i.pp, 256
  br i1 %i.pr, label %_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit595.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ps = load i64, ptr %i.bu, align 8, !tbaa !19765
  %i.pt = and i64 %i.ps, -16
  %i.pu = inttoptr i64 %i.pt to ptr               ; 2 uses
  %i.pv = load ptr, ptr %.sroa.01455.02040, align 8, !tbaa !19763
  %i.pw = load ptr, ptr %i.pu, align 16, !tbaa !19763
  %i.px = icmp eq ptr %i.pv, %i.pw
  br i1 %i.px, label %.loopexit1738, label %_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit595.thread

bb.ap:                                            ; preds = %bb.am
  %i.py = load ptr, ptr %.sroa.01455.02040, align 8, !tbaa !19763 ; 2 uses
  %i.pz = ptrtoint ptr %i.py to i64               ; 2 uses
  %i.qa = zext i64 %i.pz to i128
  %i.qb = mul nuw i128 %i.qa, 14181476777654086739
  %i.qc = lshr i128 %i.qb, 64
  %i.qd = trunc nuw i128 %i.qc to i64
  %i.qe = mul i64 %i.pz, -4265267296055464877
  %i.qf = xor i64 %i.qe, %i.qd
  %i.qg = mul i64 %i.qf, -4265267296055464877     ; 2 uses
  %i.qh = lshr i64 %i.qg, 14
  %i.qi = and i64 %i.qh, 255
  %i.qj = lshr i64 %i.qg, 22
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.qi, i64 1) ; 2 uses
  %i.qk = shl nuw nsw i64 %.sroa.speculated.i.i.i.i, 1
  %i.ql = or disjoint i64 %i.qk, 1
  %i.qm = trunc nuw i64 %.sroa.speculated.i.i.i.i to i8
  %i.qn = insertelement <16 x i8> poison, i8 %i.qm, i64 0
  %i.qo = shufflevector <16 x i8> %i.qn, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.qp = and i64 %i.pp, 255                      ; 2 uses
  %i.qq = shl nuw i64 1, %i.qp
  %notmask.i.i = shl nsw i64 -1, %i.qp
  %i.qr = xor i64 %notmask.i.i, -1
  %i.qs = load ptr, ptr %i.bt, align 8, !tbaa !19725
  br label %bb.aq

bb.aq:                                            ; preds = %bb.as, %bb.ap
  %.024.i62.i = phi i64 [ %i.qq, %bb.ap ], [ %i.rq, %bb.as ]
  %.026.i61.i = phi i64 [ %i.qj, %bb.ap ], [ %i.rr, %bb.as ] ; 2 uses
  %i.qt = and i64 %.026.i61.i, %i.qr
  %i.qu = shl nuw nsw i64 %i.qt, 8
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qs, i64 %i.qu ; 4 uses
  %i.qw = getelementptr i8, ptr %i.qv, i64 144
  call void @llvm.prefetch.p0(ptr %i.qw, i32 0, i32 3, i32 1)
  %i.qx = load <16 x i8>, ptr %i.qv, align 16     ; 2 uses
  %i.qy = icmp eq <16 x i8> %i.qx, %i.qo
  %i.qz = bitcast <16 x i1> %i.qy to i16
  %i.ra = zext i16 %i.qz to i32                   ; 2 uses
  %i.rb = and i32 %i.ra, 16383
  %.not.i586 = icmp eq i32 %i.rb, 0
  %i.rc = extractelement <16 x i8> %i.qx, i64 15
  br i1 %.not.i586, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.aq
  %i.rd = icmp ne ptr %i.qv, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.rd)
  br label %bb.ar

bb.ar:                                            ; preds = %.critedge.i.i587, %.preheader.i
  %.sroa.019.0.i = phi i32 [ %i.rn, %.critedge.i.i587 ], [ %i.ra, %.preheader.i ] ; 4 uses
  %i.re = icmp ne i32 %.sroa.019.0.i, 0
  call void @llvm.assume(i1 %i.re)
  %i.rf = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.019.0.i, i1 true)
  %i.rg = shl nuw nsw i32 %i.rf, 4
  %i.rh = zext nneg i32 %i.rg to i64
  %i.ri = getelementptr i8, ptr %i.qv, i64 %i.rh  ; 2 uses
  %i.rj = getelementptr i8, ptr %i.ri, i64 16
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !19763
  %i.rl = icmp eq ptr %i.py, %i.rk
  br i1 %i.rl, label %.loopexit1738.loopexit, label %.critedge.i.i587, !prof !19685

.critedge.i.i587:                                 ; preds = %bb.ar
  %i.rm = add nuw nsw i32 %.sroa.019.0.i, 65535
  %i.rn = and i32 %i.rm, %.sroa.019.0.i           ; 2 uses
  %i.ro = and i32 %i.rn, 16382
  %.not58.i = icmp eq i32 %i.ro, 0
  br i1 %.not58.i, label %.loopexit.i, label %bb.ar, !llvm.loop !764

.loopexit.i:                                      ; preds = %.critedge.i.i587, %bb.aq
  %i.rp = icmp eq i8 %i.rc, 0
  br i1 %i.rp, label %_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit595.thread, label %bb.as, !prof !19685

bb.as:                                            ; preds = %.loopexit.i
  %i.rq = add i64 %.024.i62.i, -1                 ; 2 uses
  %i.rr = add i64 %i.ql, %.026.i61.i
  %.not.i.i = icmp eq i64 %i.rq, 0
  br i1 %.not.i.i, label %_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit595.thread, label %bb.aq, !llvm.loop !765

.loopexit1738.loopexit:                           ; preds = %bb.ar
  %i.rs = getelementptr i8, ptr %i.ri, i64 16
  br label %.loopexit1738

.loopexit1738:                                    ; preds = %.loopexit1738.loopexit, %bb.ao
  %.sroa.018.149.i = phi ptr [ %i.pu, %bb.ao ], [ %i.rs, %.loopexit1738.loopexit ]
  %i.rt = getelementptr inbounds nuw i8, ptr %.sroa.018.149.i, i64 8 ; 2 uses
  %i.ru = load i64, ptr %i.rt, align 8, !tbaa !19676 ; 2 uses
  %i.rv = icmp slt i64 %i.ru, 0
  br i1 %i.rv, label %bb.at, label %_ZNK5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i588

bb.at:                                            ; preds = %.loopexit1738
  %i.rw = shl i64 %i.ru, 1
  %i.rx = inttoptr i64 %i.rw to ptr               ; 2 uses
  %.sroa.0.0.copyload.i.i592 = load ptr, ptr %i.rx, align 8, !tbaa !19766
  %.sroa.3.0..sroa_idx.i.i593 = getelementptr inbounds nuw i8, ptr %i.rx, i64 8
  %.sroa.3.0.copyload.i.i594 = load i64, ptr %.sroa.3.0..sroa_idx.i.i593, align 8, !tbaa !19676
  br label %_ZNK5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i588

_ZNK5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i588: ; preds = %bb.at, %.loopexit1738
  %.sroa.3.0.i.i589 = phi i64 [ %.sroa.3.0.copyload.i.i594, %bb.at ], [ 64, %.loopexit1738 ]
  %.sroa.0.0.i.i590 = phi ptr [ %.sroa.0.0.copyload.i.i592, %bb.at ], [ %i.rt, %.loopexit1738 ]
  %i.ry = icmp ult i64 %i.fj, %.sroa.3.0.i.i589
  br i1 %i.ry, label %bb.au, label %_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit595.thread

bb.au:                                            ; preds = %_ZNK5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i588
  %i.rz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i590, i64 %i.fs
  %i.sa = load i64, ptr %i.rz, align 8, !tbaa !19676
  %i.sb = and i64 %i.sa, %i.fu
  %i.sc = icmp ne i64 %i.sb, 0
  br label %_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit595.thread

_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit595.thread: ; preds = %bb.as, %.loopexit.i, %_ZNK5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i588, %bb.au, %bb.ao, %bb.an
  %i.sd = phi i1 [ false, %bb.ao ], [ false, %bb.an ], [ false, %_ZNK5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i588 ], [ %i.sc, %bb.au ], [ false, %.loopexit.i ], [ false, %bb.as ]
  %i.se = load i64, ptr %i.bv, align 8, !tbaa !19695 ; 2 uses
  %i.sf = icmp ult i64 %i.se, 256
  br i1 %i.sf, label %bb.bo, label %bb.av

bb.av:                                            ; preds = %_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit595.thread
  %i.sg = and i64 %i.se, 255                      ; 2 uses
  %i.sh = shl nuw i64 1, %i.sg
  %notmask.i.i597 = shl nsw i64 -1, %i.sg
  %i.si = xor i64 %notmask.i.i597, -1
  %i.sj = load ptr, ptr %i.bx, align 8, !tbaa !19714
  %i.sk = load ptr, ptr %i.bw, align 8
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ay, %bb.av
  %.023.i54.i = phi i64 [ %i.sh, %bb.av ], [ %i.tk, %bb.ay ]
  %.025.i53.i = phi i64 [ %i.gg, %bb.av ], [ %i.tl, %bb.ay ] ; 2 uses
  %i.sl = and i64 %.025.i53.i, %i.si
  %i.sm = shl nuw nsw i64 %i.sl, 6
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sj, i64 %i.sm ; 3 uses
  %i.so = load <16 x i8>, ptr %i.sn, align 16     ; 2 uses
  %i.sp = icmp eq <16 x i8> %i.so, %i.gl
  %i.sq = bitcast <16 x i1> %i.sp to i16
  %i.sr = zext i16 %i.sq to i32                   ; 2 uses
  %i.ss = and i32 %i.sr, 4095
  %.not.i598 = icmp eq i32 %i.ss, 0
  %i.st = extractelement <16 x i8> %i.so, i64 15
  br i1 %.not.i598, label %.loopexit.i601, label %.preheader.i599

.preheader.i599:                                  ; preds = %bb.aw
  %i.su = icmp ne ptr %i.sn, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.su)
  br label %bb.ax

bb.ax:                                            ; preds = %.critedge.i.i600, %.preheader.i599
  %.sroa.014.0.i = phi i32 [ %i.th, %.critedge.i.i600 ], [ %i.sr, %.preheader.i599 ] ; 4 uses
  %i.sv = icmp ne i32 %.sroa.014.0.i, 0
  call void @llvm.assume(i1 %i.sv)
  %i.sw = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.014.0.i, i1 true)
  %i.sx = shl nuw nsw i32 %i.sw, 2
  %i.sy = zext nneg i32 %i.sx to i64
  %i.sz = getelementptr i8, ptr %i.sn, i64 %i.sy
  %i.ta = getelementptr i8, ptr %i.sz, i64 16
  %i.tb = load i32, ptr %i.ta, align 4, !tbaa !19786
  %i.tc = zext i32 %i.tb to i64
  %i.td = getelementptr inbounds nuw [32 x i8], ptr %i.sk, i64 %i.tc ; 4 uses
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !19769
  %i.tf = icmp eq ptr %i.fd, %i.te
  br i1 %i.tf, label %bb.az, label %.critedge.i.i600, !prof !19685

.critedge.i.i600:                                 ; preds = %bb.ax
  %i.tg = add nuw nsw i32 %.sroa.014.0.i, 65535
  %i.th = and i32 %i.tg, %.sroa.014.0.i           ; 2 uses
  %i.ti = and i32 %i.th, 4094
  %.not50.i = icmp eq i32 %i.ti, 0
  br i1 %.not50.i, label %.loopexit.i601, label %bb.ax, !llvm.loop !766

.loopexit.i601:                                   ; preds = %.critedge.i.i600, %bb.aw
  %i.tj = icmp eq i8 %i.st, 0
  br i1 %i.tj, label %_ZN5folly7get_ptrINS_10F14FastMapIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryENS_23HeterogeneousAccessHashIS4_vEENS_26HeterogeneousAccessEqualToIS4_vEESaISt4pairIKS4_S6_EEEES4_EEDaRKT_RKT0_.exit.thread, label %bb.ay, !prof !19685

bb.ay:                                            ; preds = %.loopexit.i601
  %i.tk = add i64 %.023.i54.i, -1                 ; 2 uses
  %i.tl = add i64 %i.gi, %.025.i53.i
  %.not.i.i602 = icmp eq i64 %i.tk, 0
  br i1 %.not.i.i602, label %_ZN5folly7get_ptrINS_10F14FastMapIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryENS_23HeterogeneousAccessHashIS4_vEENS_26HeterogeneousAccessEqualToIS4_vEESaISt4pairIKS4_S6_EEEES4_EEDaRKT_RKT0_.exit.thread, label %bb.aw, !llvm.loop !767

bb.az:                                            ; preds = %bb.ax
  %i.tm = getelementptr inbounds nuw i8, ptr %i.td, i64 8
  %i.tn = getelementptr inbounds nuw i8, ptr %i.td, i64 24
  %i.to = load i64, ptr %i.tn, align 8, !tbaa !19695 ; 2 uses
  %i.tp = icmp ult i64 %i.to, 256
  br i1 %i.tp, label %_ZN5folly7get_ptrINS_10F14FastMapIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryENS_23HeterogeneousAccessHashIS4_vEENS_26HeterogeneousAccessEqualToIS4_vEESaISt4pairIKS4_S6_EEEES4_EEDaRKT_RKT0_.exit.thread, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.tq = load ptr, ptr %.sroa.01455.02040, align 8, !tbaa !19763 ; 2 uses
  %i.tr = ptrtoint ptr %i.tq to i64               ; 2 uses
  %i.ts = zext i64 %i.tr to i128
  %i.tt = mul nuw i128 %i.ts, 14181476777654086739
  %i.tu = lshr i128 %i.tt, 64
  %i.tv = trunc nuw i128 %i.tu to i64
  %i.tw = mul i64 %i.tr, -4265267296055464877
  %i.tx = xor i64 %i.tw, %i.tv
  %i.ty = mul i64 %i.tx, -4265267296055464877     ; 2 uses
  %i.tz = lshr i64 %i.ty, 14
  %i.ua = and i64 %i.tz, 255
  %i.ub = lshr i64 %i.ty, 22
  %.sroa.speculated.i.i.i603 = call i64 @llvm.umax.i64(i64 %i.ua, i64 1) ; 2 uses
  %i.uc = shl nuw nsw i64 %.sroa.speculated.i.i.i603, 1
  %i.ud = or disjoint i64 %i.uc, 1
  %i.ue = trunc nuw i64 %.sroa.speculated.i.i.i603 to i8
  %i.uf = insertelement <16 x i8> poison, i8 %i.ue, i64 0
  %i.ug = shufflevector <16 x i8> %i.uf, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.uh = and i64 %i.to, 255                      ; 2 uses
  %i.ui = shl nuw i64 1, %i.uh
  %notmask.i606 = shl nsw i64 -1, %i.uh
  %i.uj = xor i64 %notmask.i606, -1
  %i.uk = getelementptr inbounds nuw i8, ptr %i.td, i64 16
  %i.ul = load ptr, ptr %i.uk, align 8, !tbaa !19720
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.bd
  %.023.i3852037 = phi i64 [ %i.ui, %bb.ba ], [ %i.vm, %bb.bd ]
  %.025.i3842036 = phi i64 [ %i.ub, %bb.ba ], [ %i.vn, %bb.bd ] ; 2 uses
  %i.um = and i64 %.025.i3842036, %i.uj
  %i.un = shl nuw nsw i64 %i.um, 6
  %i.uo = getelementptr inbounds nuw i8, ptr %i.ul, i64 %i.un ; 3 uses
  %i.up = load <16 x i8>, ptr %i.uo, align 16     ; 2 uses
  %i.uq = icmp eq <16 x i8> %i.up, %i.ug
  %i.ur = bitcast <16 x i1> %i.uq to i16
  %i.us = zext i16 %i.ur to i32                   ; 2 uses
  %i.ut = and i32 %i.us, 4095
  %.not1721 = icmp eq i32 %i.ut, 0
  %i.uu = extractelement <16 x i8> %i.up, i64 15
  br i1 %.not1721, label %.loopexit1737, label %.preheader1736

.preheader1736:                                   ; preds = %bb.bb
  %i.uv = icmp ne ptr %i.uo, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.uv)
  %i.uw = load ptr, ptr %i.tm, align 8, !tbaa !20277
  br label %bb.bc

bb.bc:                                            ; preds = %.preheader1736, %.critedge.i398
  %.sroa.01576.0 = phi i32 [ %i.vj, %.critedge.i398 ], [ %i.us, %.preheader1736 ] ; 4 uses
  %i.ux = icmp ne i32 %.sroa.01576.0, 0
  call void @llvm.assume(i1 %i.ux)
  %i.uy = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.01576.0, i1 true)
  %i.uz = shl nuw nsw i32 %i.uy, 2
  %i.va = zext nneg i32 %i.uz to i64
  %i.vb = getelementptr i8, ptr %i.uo, i64 %i.va
  %i.vc = getelementptr i8, ptr %i.vb, i64 16
  %i.vd = load i32, ptr %i.vc, align 4, !tbaa !19786
  %i.ve = zext i32 %i.vd to i64
  %i.vf = getelementptr inbounds nuw [8 x i8], ptr %i.uw, i64 %i.ve
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !19763
  %i.vh = icmp eq ptr %i.tq, %i.vg
  br i1 %i.vh, label %_ZN5folly7get_ptrINS_10F14FastMapIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryENS_23HeterogeneousAccessHashIS4_vEENS_26HeterogeneousAccessEqualToIS4_vEESaISt4pairIKS4_S6_EEEES4_EEDaRKT_RKT0_.exit.thread, label %.critedge.i398, !prof !19685

.critedge.i398:                                   ; preds = %bb.bc
  %i.vi = add nuw nsw i32 %.sroa.01576.0, 65535
  %i.vj = and i32 %i.vi, %.sroa.01576.0           ; 2 uses
  %i.vk = and i32 %i.vj, 4094
  %.not1722 = icmp eq i32 %i.vk, 0
  br i1 %.not1722, label %.loopexit1737, label %bb.bc, !llvm.loop !762

.loopexit1737:                                    ; preds = %.critedge.i398, %bb.bb
  %i.vl = icmp eq i8 %i.uu, 0
  br i1 %i.vl, label %_ZN5folly7get_ptrINS_10F14FastMapIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryENS_23HeterogeneousAccessHashIS4_vEENS_26HeterogeneousAccessEqualToIS4_vEESaISt4pairIKS4_S6_EEEES4_EEDaRKT_RKT0_.exit.thread, label %bb.bd, !prof !19685

bb.bd:                                            ; preds = %.loopexit1737
  %i.vm = add i64 %.023.i3852037, -1              ; 2 uses
  %i.vn = add i64 %i.ud, %.025.i3842036
  %.not.i386 = icmp eq i64 %i.vm, 0
  br i1 %.not.i386, label %_ZN5folly7get_ptrINS_10F14FastMapIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryENS_23HeterogeneousAccessHashIS4_vEENS_26HeterogeneousAccessEqualToIS4_vEESaISt4pairIKS4_S6_EEEES4_EEDaRKT_RKT0_.exit.thread, label %bb.bb, !llvm.loop !763

_ZN5folly7get_ptrINS_10F14FastMapIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryENS_23HeterogeneousAccessHashIS4_vEENS_26HeterogeneousAccessEqualToIS4_vEESaISt4pairIKS4_S6_EEEES4_EEDaRKT_RKT0_.exit.thread: ; preds = %.loopexit.i601, %bb.ay, %.loopexit1737, %bb.bd, %bb.bc, %bb.az, %bb.al
  %or.cond12 = phi i1 [ false, %.loopexit1737 ], [ false, %bb.al ], [ %i.sd, %bb.bc ], [ false, %bb.az ], [ false, %bb.bd ], [ false, %bb.ay ], [ false, %.loopexit.i601 ] ; 2 uses
  %or.cond7 = or i1 %.sroa.01565.0, %i.pm
  br i1 %or.cond7, label %bb.bo, label %bb.be

bb.be:                                            ; preds = %_ZN5folly7get_ptrINS_10F14FastMapIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryENS_23HeterogeneousAccessHashIS4_vEENS_26HeterogeneousAccessEqualToIS4_vEESaISt4pairIKS4_S6_EEEES4_EEDaRKT_RKT0_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #39, !noalias !21405
  store ptr %i.by, ptr %40, align 8, !tbaa !19764, !alias.scope !21406, !noalias !21405
  store i64 0, ptr %i.bz, align 8, !tbaa !19673, !alias.scope !21406, !noalias !21405
  store i8 0, ptr %i.by, align 8, !tbaa !19682, !alias.scope !21406, !noalias !21405
  invoke void @_ZN5folly7cEscapeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvNS_5RangeIPKcEERT_(ptr %i.fi, ptr %i.fv, ptr noundef nonnull align 8 dereferenceable(32) %40)
          to label %.noexc1.i1128 unwind label %bb.bf, !noalias !21405

bb.bf:                                            ; preds = %bb.be
  %i.vo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.vp = load ptr, ptr %40, align 8, !tbaa !19672, !alias.scope !21406, !noalias !21405 ; 2 uses
  %i.vq = icmp eq ptr %i.vp, %i.by
  br i1 %i.vq, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1124

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1124: ; preds = %bb.bf
  %i.vr = load i64, ptr %i.by, align 8, !tbaa !19682, !alias.scope !21406, !noalias !21405
  %i.vs = add i64 %i.vr, 1
  call void @_ZdlPvm(ptr noundef %i.vp, i64 noundef %i.vs) #40, !noalias !21405
  br label %common.resume

.noexc1.i1128:                                    ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #39, !noalias !21407
  %i.vt = load ptr, ptr %40, align 8, !tbaa !19672, !noalias !21405
  %i.vu = load i64, ptr %i.bz, align 8, !tbaa !19673, !noalias !21405
  %i.vv = ptrtoint ptr %i.vt to i64
  %.sroa.01.sroa.4.0.insert.ext.i.i1129 = zext i64 %i.vu to i128
  %.sroa.01.sroa.4.0.insert.shift.i.i1130 = shl nuw i128 %.sroa.01.sroa.4.0.insert.ext.i.i1129, 64
  %.sroa.01.sroa.0.0.insert.ext.i.i1131 = zext i64 %i.vv to i128
  %.sroa.01.sroa.0.0.insert.insert.i.i1132 = or disjoint i128 %.sroa.01.sroa.4.0.insert.shift.i.i1130, %.sroa.01.sroa.0.0.insert.ext.i.i1131
  store i128 %.sroa.01.sroa.0.0.insert.insert.i.i1132, ptr %39, align 16, !noalias !21407
  invoke void @_ZN3fmt2v97vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %77, ptr nonnull @.str.8, i64 4, i64 13, ptr nonnull %39)
          to label %bb.bg unwind label %bb.bh

bb.bg:                                            ; preds = %.noexc1.i1128
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #39, !noalias !21407
  %i.vw = load ptr, ptr %40, align 8, !tbaa !19672, !noalias !21405 ; 2 uses
  %i.vx = icmp eq ptr %i.vw, %i.by
  br i1 %i.vx, label %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit1138, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1136: ; preds = %bb.bg
  %i.vy = load i64, ptr %i.by, align 8, !tbaa !19682, !noalias !21405
  %i.vz = add i64 %i.vy, 1
  call void @_ZdlPvm(ptr noundef %i.vw, i64 noundef %i.vz) #40
  br label %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit1138

bb.bh:                                            ; preds = %.noexc1.i1128
  %i.wa = landingpad { ptr, i32 }
          cleanup
  %i.wb = load ptr, ptr %40, align 8, !tbaa !19672, !noalias !21405 ; 2 uses
  %i.wc = icmp eq ptr %i.wb, %i.by
  br i1 %i.wc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1134, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1133: ; preds = %bb.bh
  %i.wd = load i64, ptr %i.by, align 8, !tbaa !19682, !noalias !21405
  %i.we = add i64 %i.wd, 1
  call void @_ZdlPvm(ptr noundef %i.wb, i64 noundef %i.we) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1134

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1134: ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1133
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #39, !noalias !21405
  br label %common.resume

_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit1138: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1136
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #39, !noalias !21405
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #39
  %i.wf = load ptr, ptr %.sroa.01455.02040, align 8, !tbaa !19763 ; 2 uses
  %i.wg = load ptr, ptr %i.wf, align 8, !tbaa !19672 ; 2 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wf, i64 8
  %i.wi = load i64, ptr %i.wh, align 8, !tbaa !19673
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #39, !noalias !21408
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wg, i64 %i.wi
  store ptr %i.ca, ptr %38, align 8, !tbaa !19764, !alias.scope !21409, !noalias !21408
  store i64 0, ptr %i.cb, align 8, !tbaa !19673, !alias.scope !21409, !noalias !21408
  store i8 0, ptr %i.ca, align 8, !tbaa !19682, !alias.scope !21409, !noalias !21408
  invoke void @_ZN5folly7cEscapeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvNS_5RangeIPKcEERT_(ptr %i.wg, ptr %i.wj, ptr noundef nonnull align 8 dereferenceable(32) %38)
          to label %.noexc1.i1143 unwind label %bb.bi, !noalias !21408

bb.bi:                                            ; preds = %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit1138
  %i.wk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wl = load ptr, ptr %38, align 8, !tbaa !19672, !alias.scope !21409, !noalias !21408 ; 2 uses
  %i.wm = icmp eq ptr %i.wl, %i.ca
  br i1 %i.wm, label %.body1153, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1139: ; preds = %bb.bi
  %i.wn = load i64, ptr %i.ca, align 8, !tbaa !19682, !alias.scope !21409, !noalias !21408
  %i.wo = add i64 %i.wn, 1
  call void @_ZdlPvm(ptr noundef %i.wl, i64 noundef %i.wo) #40, !noalias !21408
  br label %.body1153

.noexc1.i1143:                                    ; preds = %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit1138
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #39, !noalias !21410
  %i.wp = load ptr, ptr %38, align 8, !tbaa !19672, !noalias !21408
  %i.wq = load i64, ptr %i.cb, align 8, !tbaa !19673, !noalias !21408
  %i.wr = ptrtoint ptr %i.wp to i64
  %.sroa.01.sroa.4.0.insert.ext.i.i1144 = zext i64 %i.wq to i128
  %.sroa.01.sroa.4.0.insert.shift.i.i1145 = shl nuw i128 %.sroa.01.sroa.4.0.insert.ext.i.i1144, 64
  %.sroa.01.sroa.0.0.insert.ext.i.i1146 = zext i64 %i.wr to i128
  %.sroa.01.sroa.0.0.insert.insert.i.i1147 = or disjoint i128 %.sroa.01.sroa.4.0.insert.shift.i.i1145, %.sroa.01.sroa.0.0.insert.ext.i.i1146
  store i128 %.sroa.01.sroa.0.0.insert.insert.i.i1147, ptr %37, align 16, !noalias !21410
  invoke void @_ZN3fmt2v97vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %78, ptr nonnull @.str.8, i64 4, i64 13, ptr nonnull %37)
          to label %bb.bj unwind label %bb.bk

bb.bj:                                            ; preds = %.noexc1.i1143
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #39, !noalias !21410
  %i.ws = load ptr, ptr %38, align 8, !tbaa !19672, !noalias !21408 ; 2 uses
  %i.wt = icmp eq ptr %i.ws, %i.ca
  br i1 %i.wt, label %.noexc342, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1151

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1151: ; preds = %bb.bj
  %i.wu = load i64, ptr %i.ca, align 8, !tbaa !19682, !noalias !21408
  %i.wv = add i64 %i.wu, 1
  call void @_ZdlPvm(ptr noundef %i.ws, i64 noundef %i.wv) #40
  br label %.noexc342

bb.bk:                                            ; preds = %.noexc1.i1143
  %i.ww = landingpad { ptr, i32 }
          cleanup
  %i.wx = load ptr, ptr %38, align 8, !tbaa !19672, !noalias !21408 ; 2 uses
  %i.wy = icmp eq ptr %i.wx, %i.ca
  br i1 %i.wy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1149, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1148

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1148: ; preds = %bb.bk
  %i.wz = load i64, ptr %i.ca, align 8, !tbaa !19682, !noalias !21408
  %i.xa = add i64 %i.wz, 1
  call void @_ZdlPvm(ptr noundef %i.wx, i64 noundef %i.xa) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1149

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1149: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1148
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #39, !noalias !21408
  br label %.body1153

.noexc342:                                        ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1151
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #39, !noalias !21408
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #39, !noalias !21411
  call void @llvm.experimental.noalias.scope.decl(metadata !21412)
  %i.xb = load ptr, ptr %77, align 8, !tbaa !19672, !noalias !21412
  %i.xc = load i64, ptr %i.cc, align 8, !tbaa !19673, !noalias !21412
  %i.xd = ptrtoint ptr %i.xb to i64
  %i.xe = load ptr, ptr %78, align 8, !tbaa !19672, !noalias !21412
  %i.xf = load i64, ptr %i.cd, align 8, !tbaa !19673, !noalias !21412
  %i.xg = ptrtoint ptr %i.xe to i64
  %.sroa.04.sroa.4.0.insert.ext.i611 = zext i64 %i.xc to i128
  %.sroa.04.sroa.4.0.insert.shift.i612 = shl nuw i128 %.sroa.04.sroa.4.0.insert.ext.i611, 64
  %.sroa.04.sroa.0.0.insert.ext.i613 = zext i64 %i.xd to i128
  %.sroa.04.sroa.0.0.insert.insert.i614 = or disjoint i128 %.sroa.04.sroa.4.0.insert.shift.i612, %.sroa.04.sroa.0.0.insert.ext.i613
  store i128 %.sroa.04.sroa.0.0.insert.insert.i614, ptr %57, align 16, !tbaa !19682, !alias.scope !21412
  %.sroa.0.sroa.4.0.insert.ext.i615 = zext i64 %i.xf to i128
  %.sroa.0.sroa.4.0.insert.shift.i616 = shl nuw i128 %.sroa.0.sroa.4.0.insert.ext.i615, 64
  %.sroa.0.sroa.0.0.insert.ext.i617 = zext i64 %i.xg to i128
  %.sroa.0.sroa.0.0.insert.insert.i618 = or disjoint i128 %.sroa.0.sroa.4.0.insert.shift.i616, %.sroa.0.sroa.0.0.insert.ext.i617
  store i128 %.sroa.0.sroa.0.0.insert.insert.i618, ptr %i.ce, align 16, !tbaa !19682, !alias.scope !21412
  invoke void @_ZN3fmt2v97vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %76, ptr nonnull @.str.277, i64 32, i64 221, ptr nonnull %57)
          to label %bb.bl unwind label %bb.bm

bb.bl:                                            ; preds = %.noexc342
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #39, !noalias !21411
  invoke void %4(ptr noundef nonnull align 8 dereferenceable(32) %76, ptr noundef %3)
          to label %_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit620 unwind label %bb.bn, !inline_history !21207

_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit620: ; preds = %bb.bl
  %i.xh = load ptr, ptr %76, align 8, !tbaa !19672 ; 2 uses
  %i.xi = icmp eq ptr %i.xh, %i.cf
  br i1 %i.xi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit623, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i621

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i621: ; preds = %_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit620
  %i.xj = load i64, ptr %i.cf, align 8, !tbaa !19682
  %i.xk = add i64 %i.xj, 1
  call void @_ZdlPvm(ptr noundef %i.xh, i64 noundef %i.xk) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit623

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit623: ; preds = %_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit620, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i621
  %i.xl = load ptr, ptr %78, align 8, !tbaa !19672 ; 2 uses
  %i.xm = icmp eq ptr %i.xl, %i.cg
  br i1 %i.xm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit626, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i624

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i624: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit623
  %i.xn = load i64, ptr %i.cg, align 8, !tbaa !19682
  %i.xo = add i64 %i.xn, 1
  call void @_ZdlPvm(ptr noundef %i.xl, i64 noundef %i.xo) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit626

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit626: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit623, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i624
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #39
  %i.xp = load ptr, ptr %77, align 8, !tbaa !19672 ; 2 uses
  %i.xq = icmp eq ptr %i.xp, %i.ch
  br i1 %i.xq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit629, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i627

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i627: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit626
  %i.xr = load i64, ptr %i.ch, align 8, !tbaa !19682
  %i.xs = add i64 %i.xr, 1
  call void @_ZdlPvm(ptr noundef %i.xp, i64 noundef %i.xs) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit629

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit629: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit626, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i627
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #39
  br label %bb.bz

bb.bm:                                            ; preds = %.noexc342
  %i.xt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit632

bb.bn:                                            ; preds = %bb.bl
  %i.xu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xv = load ptr, ptr %76, align 8, !tbaa !19672 ; 2 uses
  %i.xw = icmp eq ptr %i.xv, %i.cf
  br i1 %i.xw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit632, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i630

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i630: ; preds = %bb.bn
  %i.xx = load i64, ptr %i.cf, align 8, !tbaa !19682
  %i.xy = add i64 %i.xx, 1
  call void @_ZdlPvm(ptr noundef %i.xv, i64 noundef %i.xy) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit632

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit632: ; preds = %bb.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i630, %bb.bm
  %.pn278 = phi { ptr, i32 } [ %i.xt, %bb.bm ], [ %i.xu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i630 ], [ %i.xu, %bb.bn ] ; 2 uses
  %i.xz = load ptr, ptr %78, align 8, !tbaa !19672 ; 2 uses
  %i.ya = icmp eq ptr %i.xz, %i.cg
  br i1 %i.ya, label %.body1153, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i633

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i633: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit632
  %i.yb = load i64, ptr %i.cg, align 8, !tbaa !19682
  %i.yc = add i64 %i.yb, 1
  call void @_ZdlPvm(ptr noundef %i.xz, i64 noundef %i.yc) #40
  br label %.body1153

.body1153:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit632, %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i633, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1149, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1139
  %.pn278.pn = phi { ptr, i32 } [ %i.wk, %bb.bi ], [ %.pn278, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i633 ], [ %i.ww, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1149 ], [ %i.wk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1139 ], [ %.pn278, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit632 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #39
  %i.yd = load ptr, ptr %77, align 8, !tbaa !19672 ; 2 uses
  %i.ye = icmp eq ptr %i.yd, %i.ch
  br i1 %i.ye, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit638, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i636

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i636: ; preds = %.body1153
  %i.yf = load i64, ptr %i.ch, align 8, !tbaa !19682
  %i.yg = add i64 %i.yf, 1
  call void @_ZdlPvm(ptr noundef %i.yd, i64 noundef %i.yg) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit638

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit638: ; preds = %.body1153, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i636
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #39
  br label %common.resume

bb.bo:                                            ; preds = %_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit595.thread, %_ZN5folly7get_ptrINS_10F14FastMapIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryENS_23HeterogeneousAccessHashIS4_vEENS_26HeterogeneousAccessEqualToIS4_vEESaISt4pairIKS4_S6_EEEES4_EEDaRKT_RKT0_.exit.thread
  %or.cond121722 = phi i1 [ %or.cond12, %_ZN5folly7get_ptrINS_10F14FastMapIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryENS_23HeterogeneousAccessHashIS4_vEENS_26HeterogeneousAccessEqualToIS4_vEESaISt4pairIKS4_S6_EEEES4_EEDaRKT_RKT0_.exit.thread ], [ false, %_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit595.thread ] ; 2 uses
  %.not8 = xor i1 %i.pm, true                     ; 2 uses
  %or.cond10 = or i1 %i.jm, %.not8
  %brmerge = or i1 %or.cond10, %or.cond121722
  br i1 %brmerge, label %bb.bz, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #39, !noalias !21413
  store ptr %i.ci, ptr %36, align 8, !tbaa !19764, !alias.scope !21414, !noalias !21413
  store i64 0, ptr %i.cj, align 8, !tbaa !19673, !alias.scope !21414, !noalias !21413
  store i8 0, ptr %i.ci, align 8, !tbaa !19682, !alias.scope !21414, !noalias !21413
  invoke void @_ZN5folly7cEscapeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvNS_5RangeIPKcEERT_(ptr %i.fi, ptr %i.fv, ptr noundef nonnull align 8 dereferenceable(32) %36)
          to label %.noexc1.i1160 unwind label %bb.bq, !noalias !21413

bb.bq:                                            ; preds = %bb.bp
  %i.yh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.yi = load ptr, ptr %36, align 8, !tbaa !19672, !alias.scope !21414, !noalias !21413 ; 2 uses
  %i.yj = icmp eq ptr %i.yi, %i.ci
  br i1 %i.yj, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1156

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1156: ; preds = %bb.bq
  %i.yk = load i64, ptr %i.ci, align 8, !tbaa !19682, !alias.scope !21414, !noalias !21413
  %i.yl = add i64 %i.yk, 1
  call void @_ZdlPvm(ptr noundef %i.yi, i64 noundef %i.yl) #40, !noalias !21413
  br label %common.resume

.noexc1.i1160:                                    ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #39, !noalias !21415
  %i.ym = load ptr, ptr %36, align 8, !tbaa !19672, !noalias !21413
  %i.yn = load i64, ptr %i.cj, align 8, !tbaa !19673, !noalias !21413
  %i.yo = ptrtoint ptr %i.ym to i64
  %.sroa.01.sroa.4.0.insert.ext.i.i1161 = zext i64 %i.yn to i128
  %.sroa.01.sroa.4.0.insert.shift.i.i1162 = shl nuw i128 %.sroa.01.sroa.4.0.insert.ext.i.i1161, 64
  %.sroa.01.sroa.0.0.insert.ext.i.i1163 = zext i64 %i.yo to i128
  %.sroa.01.sroa.0.0.insert.insert.i.i1164 = or disjoint i128 %.sroa.01.sroa.4.0.insert.shift.i.i1162, %.sroa.01.sroa.0.0.insert.ext.i.i1163
  store i128 %.sroa.01.sroa.0.0.insert.insert.i.i1164, ptr %35, align 16, !noalias !21415
  invoke void @_ZN3fmt2v97vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %80, ptr nonnull @.str.8, i64 4, i64 13, ptr nonnull %35)
          to label %bb.br unwind label %bb.bs

bb.br:                                            ; preds = %.noexc1.i1160
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #39, !noalias !21415
  %i.yp = load ptr, ptr %36, align 8, !tbaa !19672, !noalias !21413 ; 2 uses
  %i.yq = icmp eq ptr %i.yp, %i.ci
  br i1 %i.yq, label %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit1170, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1168

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1168: ; preds = %bb.br
  %i.yr = load i64, ptr %i.ci, align 8, !tbaa !19682, !noalias !21413
  %i.ys = add i64 %i.yr, 1
  call void @_ZdlPvm(ptr noundef %i.yp, i64 noundef %i.ys) #40
  br label %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit1170

bb.bs:                                            ; preds = %.noexc1.i1160
  %i.yt = landingpad { ptr, i32 }
          cleanup
  %i.yu = load ptr, ptr %36, align 8, !tbaa !19672, !noalias !21413 ; 2 uses
  %i.yv = icmp eq ptr %i.yu, %i.ci
  br i1 %i.yv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1166, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1165

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1165: ; preds = %bb.bs
  %i.yw = load i64, ptr %i.ci, align 8, !tbaa !19682, !noalias !21413
  %i.yx = add i64 %i.yw, 1
  call void @_ZdlPvm(ptr noundef %i.yu, i64 noundef %i.yx) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1166

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1166: ; preds = %bb.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1165
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #39, !noalias !21413
  br label %common.resume

_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit1170: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1168
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #39, !noalias !21413
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #39
  %i.yy = load ptr, ptr %.sroa.01455.02040, align 8, !tbaa !19763 ; 2 uses
  %i.yz = load ptr, ptr %i.yy, align 8, !tbaa !19672 ; 2 uses
  %i.za = getelementptr inbounds nuw i8, ptr %i.yy, i64 8
  %i.zb = load i64, ptr %i.za, align 8, !tbaa !19673
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #39, !noalias !21416
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yz, i64 %i.zb
  store ptr %i.ck, ptr %34, align 8, !tbaa !19764, !alias.scope !21417, !noalias !21416
  store i64 0, ptr %i.cl, align 8, !tbaa !19673, !alias.scope !21417, !noalias !21416
  store i8 0, ptr %i.ck, align 8, !tbaa !19682, !alias.scope !21417, !noalias !21416
  invoke void @_ZN5folly7cEscapeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvNS_5RangeIPKcEERT_(ptr %i.yz, ptr %i.zc, ptr noundef nonnull align 8 dereferenceable(32) %34)
          to label %.noexc1.i1175 unwind label %bb.bt, !noalias !21416

bb.bt:                                            ; preds = %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit1170
  %i.zd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ze = load ptr, ptr %34, align 8, !tbaa !19672, !alias.scope !21417, !noalias !21416 ; 2 uses
  %i.zf = icmp eq ptr %i.ze, %i.ck
  br i1 %i.zf, label %.body1185, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1171

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1171: ; preds = %bb.bt
  %i.zg = load i64, ptr %i.ck, align 8, !tbaa !19682, !alias.scope !21417, !noalias !21416
  %i.zh = add i64 %i.zg, 1
  call void @_ZdlPvm(ptr noundef %i.ze, i64 noundef %i.zh) #40, !noalias !21416
  br label %.body1185

.noexc1.i1175:                                    ; preds = %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit1170
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #39, !noalias !21418
  %i.zi = load ptr, ptr %34, align 8, !tbaa !19672, !noalias !21416
  %i.zj = load i64, ptr %i.cl, align 8, !tbaa !19673, !noalias !21416
  %i.zk = ptrtoint ptr %i.zi to i64
  %.sroa.01.sroa.4.0.insert.ext.i.i1176 = zext i64 %i.zj to i128
  %.sroa.01.sroa.4.0.insert.shift.i.i1177 = shl nuw i128 %.sroa.01.sroa.4.0.insert.ext.i.i1176, 64
  %.sroa.01.sroa.0.0.insert.ext.i.i1178 = zext i64 %i.zk to i128
  %.sroa.01.sroa.0.0.insert.insert.i.i1179 = or disjoint i128 %.sroa.01.sroa.4.0.insert.shift.i.i1177, %.sroa.01.sroa.0.0.insert.ext.i.i1178
  store i128 %.sroa.01.sroa.0.0.insert.insert.i.i1179, ptr %33, align 16, !noalias !21418
  invoke void @_ZN3fmt2v97vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %81, ptr nonnull @.str.8, i64 4, i64 13, ptr nonnull %33)
          to label %bb.bu unwind label %bb.bv

bb.bu:                                            ; preds = %.noexc1.i1175
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #39, !noalias !21418
  %i.zl = load ptr, ptr %34, align 8, !tbaa !19672, !noalias !21416 ; 2 uses
  %i.zm = icmp eq ptr %i.zl, %i.ck
  br i1 %i.zm, label %.noexc338, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1183

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1183: ; preds = %bb.bu
  %i.zn = load i64, ptr %i.ck, align 8, !tbaa !19682, !noalias !21416
  %i.zo = add i64 %i.zn, 1
  call void @_ZdlPvm(ptr noundef %i.zl, i64 noundef %i.zo) #40
  br label %.noexc338

bb.bv:                                            ; preds = %.noexc1.i1175
  %i.zp = landingpad { ptr, i32 }
          cleanup
  %i.zq = load ptr, ptr %34, align 8, !tbaa !19672, !noalias !21416 ; 2 uses
  %i.zr = icmp eq ptr %i.zq, %i.ck
  br i1 %i.zr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1181, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1180

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1180: ; preds = %bb.bv
  %i.zs = load i64, ptr %i.ck, align 8, !tbaa !19682, !noalias !21416
  %i.zt = add i64 %i.zs, 1
  call void @_ZdlPvm(ptr noundef %i.zq, i64 noundef %i.zt) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1181

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1181: ; preds = %bb.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1180
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #39, !noalias !21416
  br label %.body1185

.noexc338:                                        ; preds = %bb.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1183
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #39, !noalias !21416
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #39, !noalias !21419
  call void @llvm.experimental.noalias.scope.decl(metadata !21420)
  %i.zu = load ptr, ptr %80, align 8, !tbaa !19672, !noalias !21420
  %i.zv = load i64, ptr %i.cm, align 8, !tbaa !19673, !noalias !21420
  %i.zw = ptrtoint ptr %i.zu to i64
  %i.zx = load ptr, ptr %81, align 8, !tbaa !19672, !noalias !21420
  %i.zy = load i64, ptr %i.cn, align 8, !tbaa !19673, !noalias !21420
  %i.zz = ptrtoint ptr %i.zx to i64
  %.sroa.04.sroa.4.0.insert.ext.i643 = zext i64 %i.zv to i128
  %.sroa.04.sroa.4.0.insert.shift.i644 = shl nuw i128 %.sroa.04.sroa.4.0.insert.ext.i643, 64
  %.sroa.04.sroa.0.0.insert.ext.i645 = zext i64 %i.zw to i128
  %.sroa.04.sroa.0.0.insert.insert.i646 = or disjoint i128 %.sroa.04.sroa.4.0.insert.shift.i644, %.sroa.04.sroa.0.0.insert.ext.i645
  store i128 %.sroa.04.sroa.0.0.insert.insert.i646, ptr %58, align 16, !tbaa !19682, !alias.scope !21420
  %.sroa.0.sroa.4.0.insert.ext.i647 = zext i64 %i.zy to i128
  %.sroa.0.sroa.4.0.insert.shift.i648 = shl nuw i128 %.sroa.0.sroa.4.0.insert.ext.i647, 64
  %.sroa.0.sroa.0.0.insert.ext.i649 = zext i64 %i.zz to i128
  %.sroa.0.sroa.0.0.insert.insert.i650 = or disjoint i128 %.sroa.0.sroa.4.0.insert.shift.i648, %.sroa.0.sroa.0.0.insert.ext.i649
  store i128 %.sroa.0.sroa.0.0.insert.insert.i650, ptr %i.co, align 16, !tbaa !19682, !alias.scope !21420
  invoke void @_ZN3fmt2v97vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %79, ptr nonnull @.str.279, i64 35, i64 221, ptr nonnull %58)
          to label %bb.bw unwind label %bb.bx

bb.bw:                                            ; preds = %.noexc338
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #39, !noalias !21419
  invoke void %4(ptr noundef nonnull align 8 dereferenceable(32) %79, ptr noundef %3)
          to label %_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit652 unwind label %bb.by, !inline_history !21207

_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit652: ; preds = %bb.bw
  %i.aaa = load ptr, ptr %79, align 8, !tbaa !19672 ; 2 uses
  %i.aab = icmp eq ptr %i.aaa, %i.cp
  br i1 %i.aab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit655, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i653

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i653: ; preds = %_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit652
  %i.aac = load i64, ptr %i.cp, align 8, !tbaa !19682
  %i.aad = add i64 %i.aac, 1
  call void @_ZdlPvm(ptr noundef %i.aaa, i64 noundef %i.aad) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit655

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit655: ; preds = %_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit652, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i653
  %i.aae = load ptr, ptr %81, align 8, !tbaa !19672 ; 2 uses
  %i.aaf = icmp eq ptr %i.aae, %i.cq
  br i1 %i.aaf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit658, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i656

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i656: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit655
  %i.aag = load i64, ptr %i.cq, align 8, !tbaa !19682
  %i.aah = add i64 %i.aag, 1
  call void @_ZdlPvm(ptr noundef %i.aae, i64 noundef %i.aah) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit658

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit658: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit655, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i656
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #39
  %i.aai = load ptr, ptr %80, align 8, !tbaa !19672 ; 2 uses
  %i.aaj = icmp eq ptr %i.aai, %i.cr
  br i1 %i.aaj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit661, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i659

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i659: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit658
  %i.aak = load i64, ptr %i.cr, align 8, !tbaa !19682
  %i.aal = add i64 %i.aak, 1
  call void @_ZdlPvm(ptr noundef %i.aai, i64 noundef %i.aal) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit661

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit661: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit658, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i659
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #39
  br label %bb.ck

bb.bx:                                            ; preds = %.noexc338
  %i.aam = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit664

bb.by:                                            ; preds = %bb.bw
  %i.aan = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aao = load ptr, ptr %79, align 8, !tbaa !19672 ; 2 uses
  %i.aap = icmp eq ptr %i.aao, %i.cp
  br i1 %i.aap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit664, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i662

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i662: ; preds = %bb.by
  %i.aaq = load i64, ptr %i.cp, align 8, !tbaa !19682
  %i.aar = add i64 %i.aaq, 1
  call void @_ZdlPvm(ptr noundef %i.aao, i64 noundef %i.aar) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit664

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit664: ; preds = %bb.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i662, %bb.bx
  %.pn281 = phi { ptr, i32 } [ %i.aam, %bb.bx ], [ %i.aan, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i662 ], [ %i.aan, %bb.by ] ; 2 uses
  %i.aas = load ptr, ptr %81, align 8, !tbaa !19672 ; 2 uses
  %i.aat = icmp eq ptr %i.aas, %i.cq
  br i1 %i.aat, label %.body1185, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i665

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i665: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit664
  %i.aau = load i64, ptr %i.cq, align 8, !tbaa !19682
  %i.aav = add i64 %i.aau, 1
  call void @_ZdlPvm(ptr noundef %i.aas, i64 noundef %i.aav) #40
  br label %.body1185

.body1185:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit664, %bb.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i665, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1181, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1171
  %.pn281.pn = phi { ptr, i32 } [ %i.zd, %bb.bt ], [ %.pn281, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i665 ], [ %i.zp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1181 ], [ %i.zd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1171 ], [ %.pn281, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit664 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #39
  %i.aaw = load ptr, ptr %80, align 8, !tbaa !19672 ; 2 uses
  %i.aax = icmp eq ptr %i.aaw, %i.cr
  br i1 %i.aax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit670, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i668

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i668: ; preds = %.body1185
  %i.aay = load i64, ptr %i.cr, align 8, !tbaa !19682
  %i.aaz = add i64 %i.aay, 1
  call void @_ZdlPvm(ptr noundef %i.aaw, i64 noundef %i.aaz) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit670

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit670: ; preds = %.body1185, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i668
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #39
  br label %common.resume

bb.bz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit629, %bb.bo
  %or.cond121724 = phi i1 [ %or.cond12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit629 ], [ %or.cond121722, %bb.bo ] ; 2 uses
  %.not81640 = phi i1 [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit629 ], [ %.not8, %bb.bo ] ; 2 uses
  %or.cond15 = or i1 %.not21615, %i.pm
  br i1 %or.cond15, label %bb.ck, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #39
  %i.aba = load ptr, ptr %.sroa.01455.02040, align 8, !tbaa !19763 ; 2 uses
  %i.abb = load ptr, ptr %i.aba, align 8, !tbaa !19672 ; 2 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aba, i64 8
  %i.abd = load i64, ptr %i.abc, align 8, !tbaa !19673
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #39, !noalias !21421
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abb, i64 %i.abd
  store ptr %i.cs, ptr %32, align 8, !tbaa !19764, !alias.scope !21422, !noalias !21421
  store i64 0, ptr %i.ct, align 8, !tbaa !19673, !alias.scope !21422, !noalias !21421
  store i8 0, ptr %i.cs, align 8, !tbaa !19682, !alias.scope !21422, !noalias !21421
  invoke void @_ZN5folly7cEscapeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvNS_5RangeIPKcEERT_(ptr %i.abb, ptr %i.abe, ptr noundef nonnull align 8 dereferenceable(32) %32)
          to label %.noexc1.i1192 unwind label %bb.cb, !noalias !21421

bb.cb:                                            ; preds = %bb.ca
  %i.abf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.abg = load ptr, ptr %32, align 8, !tbaa !19672, !alias.scope !21422, !noalias !21421 ; 2 uses
  %i.abh = icmp eq ptr %i.abg, %i.cs
  br i1 %i.abh, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1188

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1188: ; preds = %bb.cb
  %i.abi = load i64, ptr %i.cs, align 8, !tbaa !19682, !alias.scope !21422, !noalias !21421
  %i.abj = add i64 %i.abi, 1
  call void @_ZdlPvm(ptr noundef %i.abg, i64 noundef %i.abj) #40, !noalias !21421
  br label %common.resume

.noexc1.i1192:                                    ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #39, !noalias !21423
  %i.abk = load ptr, ptr %32, align 8, !tbaa !19672, !noalias !21421
  %i.abl = load i64, ptr %i.ct, align 8, !tbaa !19673, !noalias !21421
  %i.abm = ptrtoint ptr %i.abk to i64
  %.sroa.01.sroa.4.0.insert.ext.i.i1193 = zext i64 %i.abl to i128
  %.sroa.01.sroa.4.0.insert.shift.i.i1194 = shl nuw i128 %.sroa.01.sroa.4.0.insert.ext.i.i1193, 64
  %.sroa.01.sroa.0.0.insert.ext.i.i1195 = zext i64 %i.abm to i128
  %.sroa.01.sroa.0.0.insert.insert.i.i1196 = or disjoint i128 %.sroa.01.sroa.4.0.insert.shift.i.i1194, %.sroa.01.sroa.0.0.insert.ext.i.i1195
  store i128 %.sroa.01.sroa.0.0.insert.insert.i.i1196, ptr %31, align 16, !noalias !21423
  invoke void @_ZN3fmt2v97vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %83, ptr nonnull @.str.8, i64 4, i64 13, ptr nonnull %31)
          to label %bb.cc unwind label %bb.cd

bb.cc:                                            ; preds = %.noexc1.i1192
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #39, !noalias !21423
  %i.abn = load ptr, ptr %32, align 8, !tbaa !19672, !noalias !21421 ; 2 uses
  %i.abo = icmp eq ptr %i.abn, %i.cs
  br i1 %i.abo, label %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit1202, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1200

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1200: ; preds = %bb.cc
  %i.abp = load i64, ptr %i.cs, align 8, !tbaa !19682, !noalias !21421
  %i.abq = add i64 %i.abp, 1
  call void @_ZdlPvm(ptr noundef %i.abn, i64 noundef %i.abq) #40
  br label %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit1202

bb.cd:                                            ; preds = %.noexc1.i1192
  %i.abr = landingpad { ptr, i32 }
          cleanup
  %i.abs = load ptr, ptr %32, align 8, !tbaa !19672, !noalias !21421 ; 2 uses
  %i.abt = icmp eq ptr %i.abs, %i.cs
  br i1 %i.abt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1198, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1197

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1197: ; preds = %bb.cd
  %i.abu = load i64, ptr %i.cs, align 8, !tbaa !19682, !noalias !21421
  %i.abv = add i64 %i.abu, 1
  call void @_ZdlPvm(ptr noundef %i.abs, i64 noundef %i.abv) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1198

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1198: ; preds = %bb.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1197
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #39, !noalias !21421
  br label %common.resume

_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit1202: ; preds = %bb.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1200
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #39, !noalias !21421
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #39, !noalias !21424
  store ptr %i.cu, ptr %30, align 8, !tbaa !19764, !alias.scope !21425, !noalias !21424
  store i64 0, ptr %i.cv, align 8, !tbaa !19673, !alias.scope !21425, !noalias !21424
  store i8 0, ptr %i.cu, align 8, !tbaa !19682, !alias.scope !21425, !noalias !21424
  invoke void @_ZN5folly7cEscapeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvNS_5RangeIPKcEERT_(ptr %i.fi, ptr %i.fv, ptr noundef nonnull align 8 dereferenceable(32) %30)
          to label %.noexc1.i1207 unwind label %bb.ce, !noalias !21424

bb.ce:                                            ; preds = %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit1202
  %i.abw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.abx = load ptr, ptr %30, align 8, !tbaa !19672, !alias.scope !21425, !noalias !21424 ; 2 uses
  %i.aby = icmp eq ptr %i.abx, %i.cu
  br i1 %i.aby, label %.body1217, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1203

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1203: ; preds = %bb.ce
  %i.abz = load i64, ptr %i.cu, align 8, !tbaa !19682, !alias.scope !21425, !noalias !21424
  %i.aca = add i64 %i.abz, 1
  call void @_ZdlPvm(ptr noundef %i.abx, i64 noundef %i.aca) #40, !noalias !21424
  br label %.body1217

.noexc1.i1207:                                    ; preds = %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit1202
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #39, !noalias !21426
  %i.acb = load ptr, ptr %30, align 8, !tbaa !19672, !noalias !21424
  %i.acc = load i64, ptr %i.cv, align 8, !tbaa !19673, !noalias !21424
  %i.acd = ptrtoint ptr %i.acb to i64
  %.sroa.01.sroa.4.0.insert.ext.i.i1208 = zext i64 %i.acc to i128
  %.sroa.01.sroa.4.0.insert.shift.i.i1209 = shl nuw i128 %.sroa.01.sroa.4.0.insert.ext.i.i1208, 64
  %.sroa.01.sroa.0.0.insert.ext.i.i1210 = zext i64 %i.acd to i128
  %.sroa.01.sroa.0.0.insert.insert.i.i1211 = or disjoint i128 %.sroa.01.sroa.4.0.insert.shift.i.i1209, %.sroa.01.sroa.0.0.insert.ext.i.i1210
  store i128 %.sroa.01.sroa.0.0.insert.insert.i.i1211, ptr %29, align 16, !noalias !21426
  invoke void @_ZN3fmt2v97vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %84, ptr nonnull @.str.8, i64 4, i64 13, ptr nonnull %29)
          to label %bb.cf unwind label %bb.cg

bb.cf:                                            ; preds = %.noexc1.i1207
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #39, !noalias !21426
  %i.ace = load ptr, ptr %30, align 8, !tbaa !19672, !noalias !21424 ; 2 uses
  %i.acf = icmp eq ptr %i.ace, %i.cu
  br i1 %i.acf, label %.noexc334, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1215

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1215: ; preds = %bb.cf
  %i.acg = load i64, ptr %i.cu, align 8, !tbaa !19682, !noalias !21424
  %i.ach = add i64 %i.acg, 1
  call void @_ZdlPvm(ptr noundef %i.ace, i64 noundef %i.ach) #40
  br label %.noexc334

bb.cg:                                            ; preds = %.noexc1.i1207
  %i.aci = landingpad { ptr, i32 }
          cleanup
  %i.acj = load ptr, ptr %30, align 8, !tbaa !19672, !noalias !21424 ; 2 uses
  %i.ack = icmp eq ptr %i.acj, %i.cu
  br i1 %i.ack, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1213, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1212

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1212: ; preds = %bb.cg
  %i.acl = load i64, ptr %i.cu, align 8, !tbaa !19682, !noalias !21424
  %i.acm = add i64 %i.acl, 1
  call void @_ZdlPvm(ptr noundef %i.acj, i64 noundef %i.acm) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1213

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1213: ; preds = %bb.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1212
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #39, !noalias !21424
  br label %.body1217

.noexc334:                                        ; preds = %bb.cf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1215
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #39, !noalias !21424
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #39, !noalias !21427
  call void @llvm.experimental.noalias.scope.decl(metadata !21428)
  %i.acn = load ptr, ptr %83, align 8, !tbaa !19672, !noalias !21428
  %i.aco = load i64, ptr %i.cw, align 8, !tbaa !19673, !noalias !21428
  %i.acp = ptrtoint ptr %i.acn to i64
  %i.acq = load ptr, ptr %84, align 8, !tbaa !19672, !noalias !21428
  %i.acr = load i64, ptr %i.cx, align 8, !tbaa !19673, !noalias !21428
  %i.acs = ptrtoint ptr %i.acq to i64
  %.sroa.04.sroa.4.0.insert.ext.i675 = zext i64 %i.aco to i128
  %.sroa.04.sroa.4.0.insert.shift.i676 = shl nuw i128 %.sroa.04.sroa.4.0.insert.ext.i675, 64
  %.sroa.04.sroa.0.0.insert.ext.i677 = zext i64 %i.acp to i128
  %.sroa.04.sroa.0.0.insert.insert.i678 = or disjoint i128 %.sroa.04.sroa.4.0.insert.shift.i676, %.sroa.04.sroa.0.0.insert.ext.i677
  store i128 %.sroa.04.sroa.0.0.insert.insert.i678, ptr %59, align 16, !tbaa !19682, !alias.scope !21428
  %.sroa.0.sroa.4.0.insert.ext.i679 = zext i64 %i.acr to i128
  %.sroa.0.sroa.4.0.insert.shift.i680 = shl nuw i128 %.sroa.0.sroa.4.0.insert.ext.i679, 64
  %.sroa.0.sroa.0.0.insert.ext.i681 = zext i64 %i.acs to i128
  %.sroa.0.sroa.0.0.insert.insert.i682 = or disjoint i128 %.sroa.0.sroa.4.0.insert.shift.i680, %.sroa.0.sroa.0.0.insert.ext.i681
  store i128 %.sroa.0.sroa.0.0.insert.insert.i682, ptr %i.cy, align 16, !tbaa !19682, !alias.scope !21428
  invoke void @_ZN3fmt2v97vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %82, ptr nonnull @.str.278, i64 32, i64 221, ptr nonnull %59)
          to label %bb.ch unwind label %bb.ci

bb.ch:                                            ; preds = %.noexc334
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #39, !noalias !21427
  invoke void %4(ptr noundef nonnull align 8 dereferenceable(32) %82, ptr noundef %3)
          to label %_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit684 unwind label %bb.cj, !inline_history !21207

_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit684: ; preds = %bb.ch
  %i.act = load ptr, ptr %82, align 8, !tbaa !19672 ; 2 uses
  %i.acu = icmp eq ptr %i.act, %i.cz
  br i1 %i.acu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit687, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i685

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i685: ; preds = %_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit684
  %i.acv = load i64, ptr %i.cz, align 8, !tbaa !19682
  %i.acw = add i64 %i.acv, 1
  call void @_ZdlPvm(ptr noundef %i.act, i64 noundef %i.acw) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit687

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit687: ; preds = %_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit684, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i685
  %i.acx = load ptr, ptr %84, align 8, !tbaa !19672 ; 2 uses
  %i.acy = icmp eq ptr %i.acx, %i.da
  br i1 %i.acy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit690, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i688

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i688: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit687
  %i.acz = load i64, ptr %i.da, align 8, !tbaa !19682
  %i.ada = add i64 %i.acz, 1
  call void @_ZdlPvm(ptr noundef %i.acx, i64 noundef %i.ada) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit690

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit690: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit687, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i688
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #39
  %i.adb = load ptr, ptr %83, align 8, !tbaa !19672 ; 2 uses
  %i.adc = icmp eq ptr %i.adb, %i.db
  br i1 %i.adc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit693, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i691

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i691: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit690
  %i.add = load i64, ptr %i.db, align 8, !tbaa !19682
  %i.ade = add i64 %i.add, 1
  call void @_ZdlPvm(ptr noundef %i.adb, i64 noundef %i.ade) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit693

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit693: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit690, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i691
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #39
  br label %bb.ck

bb.ci:                                            ; preds = %.noexc334
  %i.adf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit696

bb.cj:                                            ; preds = %bb.ch
  %i.adg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.adh = load ptr, ptr %82, align 8, !tbaa !19672 ; 2 uses
  %i.adi = icmp eq ptr %i.adh, %i.cz
  br i1 %i.adi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit696, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i694

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i694: ; preds = %bb.cj
  %i.adj = load i64, ptr %i.cz, align 8, !tbaa !19682
  %i.adk = add i64 %i.adj, 1
  call void @_ZdlPvm(ptr noundef %i.adh, i64 noundef %i.adk) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit696

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit696: ; preds = %bb.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i694, %bb.ci
  %.pn284 = phi { ptr, i32 } [ %i.adf, %bb.ci ], [ %i.adg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i694 ], [ %i.adg, %bb.cj ] ; 2 uses
  %i.adl = load ptr, ptr %84, align 8, !tbaa !19672 ; 2 uses
  %i.adm = icmp eq ptr %i.adl, %i.da
  br i1 %i.adm, label %.body1217, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i697

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i697: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit696
  %i.adn = load i64, ptr %i.da, align 8, !tbaa !19682
  %i.ado = add i64 %i.adn, 1
  call void @_ZdlPvm(ptr noundef %i.adl, i64 noundef %i.ado) #40
  br label %.body1217

.body1217:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit696, %bb.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i697, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1213, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1203
  %.pn284.pn = phi { ptr, i32 } [ %i.abw, %bb.ce ], [ %.pn284, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i697 ], [ %i.aci, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1213 ], [ %i.abw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1203 ], [ %.pn284, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit696 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #39
  %i.adp = load ptr, ptr %83, align 8, !tbaa !19672 ; 2 uses
  %i.adq = icmp eq ptr %i.adp, %i.db
  br i1 %i.adq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit702, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i700

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i700: ; preds = %.body1217
  %i.adr = load i64, ptr %i.db, align 8, !tbaa !19682
  %i.ads = add i64 %i.adr, 1
  call void @_ZdlPvm(ptr noundef %i.adp, i64 noundef %i.ads) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit702

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit702: ; preds = %.body1217, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i700
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #39
  br label %common.resume

bb.ck:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit661, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit693, %bb.bz
  %or.cond121723 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit661 ], [ %or.cond121724, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit693 ], [ %or.cond121724, %bb.bz ]
  %.not816401644 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit661 ], [ %.not81640, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit693 ], [ %.not81640, %bb.bz ]
  %or.cond18 = or i1 %or.cond121723, %.not816401644
  %brmerge293 = or i1 %.0.i, %or.cond18
  br i1 %brmerge293, label %bb.cv, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #39
  %i.adt = load ptr, ptr %.sroa.01455.02040, align 8, !tbaa !19763 ; 2 uses
  %i.adu = load ptr, ptr %i.adt, align 8, !tbaa !19672 ; 2 uses
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adt, i64 8
  %i.adw = load i64, ptr %i.adv, align 8, !tbaa !19673
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #39, !noalias !21429
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adu, i64 %i.adw
  store ptr %i.dc, ptr %28, align 8, !tbaa !19764, !alias.scope !21430, !noalias !21429
  store i64 0, ptr %i.dd, align 8, !tbaa !19673, !alias.scope !21430, !noalias !21429
  store i8 0, ptr %i.dc, align 8, !tbaa !19682, !alias.scope !21430, !noalias !21429
  invoke void @_ZN5folly7cEscapeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvNS_5RangeIPKcEERT_(ptr %i.adu, ptr %i.adx, ptr noundef nonnull align 8 dereferenceable(32) %28)
          to label %.noexc1.i1224 unwind label %bb.cm, !noalias !21429

bb.cm:                                            ; preds = %bb.cl
  %i.ady = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.adz = load ptr, ptr %28, align 8, !tbaa !19672, !alias.scope !21430, !noalias !21429 ; 2 uses
  %i.aea = icmp eq ptr %i.adz, %i.dc
  br i1 %i.aea, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1220

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1220: ; preds = %bb.cm
  %i.aeb = load i64, ptr %i.dc, align 8, !tbaa !19682, !alias.scope !21430, !noalias !21429
  %i.aec = add i64 %i.aeb, 1
  call void @_ZdlPvm(ptr noundef %i.adz, i64 noundef %i.aec) #40, !noalias !21429
  br label %common.resume

.noexc1.i1224:                                    ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #39, !noalias !21431
  %i.aed = load ptr, ptr %28, align 8, !tbaa !19672, !noalias !21429
  %i.aee = load i64, ptr %i.dd, align 8, !tbaa !19673, !noalias !21429
  %i.aef = ptrtoint ptr %i.aed to i64
  %.sroa.01.sroa.4.0.insert.ext.i.i1225 = zext i64 %i.aee to i128
  %.sroa.01.sroa.4.0.insert.shift.i.i1226 = shl nuw i128 %.sroa.01.sroa.4.0.insert.ext.i.i1225, 64
  %.sroa.01.sroa.0.0.insert.ext.i.i1227 = zext i64 %i.aef to i128
  %.sroa.01.sroa.0.0.insert.insert.i.i1228 = or disjoint i128 %.sroa.01.sroa.4.0.insert.shift.i.i1226, %.sroa.01.sroa.0.0.insert.ext.i.i1227
  store i128 %.sroa.01.sroa.0.0.insert.insert.i.i1228, ptr %27, align 16, !noalias !21431
  invoke void @_ZN3fmt2v97vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %86, ptr nonnull @.str.8, i64 4, i64 13, ptr nonnull %27)
          to label %bb.cn unwind label %bb.co

bb.cn:                                            ; preds = %.noexc1.i1224
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #39, !noalias !21431
  %i.aeg = load ptr, ptr %28, align 8, !tbaa !19672, !noalias !21429 ; 2 uses
  %i.aeh = icmp eq ptr %i.aeg, %i.dc
  br i1 %i.aeh, label %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit1234, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1232

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1232: ; preds = %bb.cn
  %i.aei = load i64, ptr %i.dc, align 8, !tbaa !19682, !noalias !21429
  %i.aej = add i64 %i.aei, 1
  call void @_ZdlPvm(ptr noundef %i.aeg, i64 noundef %i.aej) #40
  br label %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit1234

bb.co:                                            ; preds = %.noexc1.i1224
  %i.aek = landingpad { ptr, i32 }
          cleanup
  %i.ael = load ptr, ptr %28, align 8, !tbaa !19672, !noalias !21429 ; 2 uses
  %i.aem = icmp eq ptr %i.ael, %i.dc
  br i1 %i.aem, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1230, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1229

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1229: ; preds = %bb.co
  %i.aen = load i64, ptr %i.dc, align 8, !tbaa !19682, !noalias !21429
  %i.aeo = add i64 %i.aen, 1
  call void @_ZdlPvm(ptr noundef %i.ael, i64 noundef %i.aeo) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1230

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1230: ; preds = %bb.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1229
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #39, !noalias !21429
  br label %common.resume

_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit1234: ; preds = %bb.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1232
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #39, !noalias !21429
  call void @llvm.lifetime.start.p0(ptr nonnull %87) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #39, !noalias !21432
  store ptr %i.de, ptr %26, align 8, !tbaa !19764, !alias.scope !21433, !noalias !21432
  store i64 0, ptr %i.df, align 8, !tbaa !19673, !alias.scope !21433, !noalias !21432
  store i8 0, ptr %i.de, align 8, !tbaa !19682, !alias.scope !21433, !noalias !21432
  invoke void @_ZN5folly7cEscapeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvNS_5RangeIPKcEERT_(ptr %i.fi, ptr %i.fv, ptr noundef nonnull align 8 dereferenceable(32) %26)
          to label %.noexc1.i1239 unwind label %bb.cp, !noalias !21432

bb.cp:                                            ; preds = %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit1234
  %i.aep = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aeq = load ptr, ptr %26, align 8, !tbaa !19672, !alias.scope !21433, !noalias !21432 ; 2 uses
  %i.aer = icmp eq ptr %i.aeq, %i.de
  br i1 %i.aer, label %.body1249, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1235

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1235: ; preds = %bb.cp
  %i.aes = load i64, ptr %i.de, align 8, !tbaa !19682, !alias.scope !21433, !noalias !21432
  %i.aet = add i64 %i.aes, 1
  call void @_ZdlPvm(ptr noundef %i.aeq, i64 noundef %i.aet) #40, !noalias !21432
  br label %.body1249

.noexc1.i1239:                                    ; preds = %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit1234
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #39, !noalias !21434
  %i.aeu = load ptr, ptr %26, align 8, !tbaa !19672, !noalias !21432
  %i.aev = load i64, ptr %i.df, align 8, !tbaa !19673, !noalias !21432
  %i.aew = ptrtoint ptr %i.aeu to i64
  %.sroa.01.sroa.4.0.insert.ext.i.i1240 = zext i64 %i.aev to i128
  %.sroa.01.sroa.4.0.insert.shift.i.i1241 = shl nuw i128 %.sroa.01.sroa.4.0.insert.ext.i.i1240, 64
  %.sroa.01.sroa.0.0.insert.ext.i.i1242 = zext i64 %i.aew to i128
  %.sroa.01.sroa.0.0.insert.insert.i.i1243 = or disjoint i128 %.sroa.01.sroa.4.0.insert.shift.i.i1241, %.sroa.01.sroa.0.0.insert.ext.i.i1242
  store i128 %.sroa.01.sroa.0.0.insert.insert.i.i1243, ptr %25, align 16, !noalias !21434
  invoke void @_ZN3fmt2v97vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %87, ptr nonnull @.str.8, i64 4, i64 13, ptr nonnull %25)
          to label %bb.cq unwind label %bb.cr

bb.cq:                                            ; preds = %.noexc1.i1239
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #39, !noalias !21434
  %i.aex = load ptr, ptr %26, align 8, !tbaa !19672, !noalias !21432 ; 2 uses
  %i.aey = icmp eq ptr %i.aex, %i.de
  br i1 %i.aey, label %.noexc330, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1247

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1247: ; preds = %bb.cq
  %i.aez = load i64, ptr %i.de, align 8, !tbaa !19682, !noalias !21432
  %i.afa = add i64 %i.aez, 1
  call void @_ZdlPvm(ptr noundef %i.aex, i64 noundef %i.afa) #40
  br label %.noexc330

bb.cr:                                            ; preds = %.noexc1.i1239
  %i.afb = landingpad { ptr, i32 }
          cleanup
  %i.afc = load ptr, ptr %26, align 8, !tbaa !19672, !noalias !21432 ; 2 uses
  %i.afd = icmp eq ptr %i.afc, %i.de
  br i1 %i.afd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1245, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1244

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1244: ; preds = %bb.cr
  %i.afe = load i64, ptr %i.de, align 8, !tbaa !19682, !noalias !21432
  %i.aff = add i64 %i.afe, 1
  call void @_ZdlPvm(ptr noundef %i.afc, i64 noundef %i.aff) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1245

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1245: ; preds = %bb.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1244
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #39, !noalias !21432
  br label %.body1249

.noexc330:                                        ; preds = %bb.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1247
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #39, !noalias !21432
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #39, !noalias !21435
  call void @llvm.experimental.noalias.scope.decl(metadata !21436)
  %i.afg = load ptr, ptr %86, align 8, !tbaa !19672, !noalias !21436
  %i.afh = load i64, ptr %i.dg, align 8, !tbaa !19673, !noalias !21436
  %i.afi = ptrtoint ptr %i.afg to i64
  %i.afj = load ptr, ptr %87, align 8, !tbaa !19672, !noalias !21436
  %i.afk = load i64, ptr %i.dh, align 8, !tbaa !19673, !noalias !21436
  %i.afl = ptrtoint ptr %i.afj to i64
  %.sroa.04.sroa.4.0.insert.ext.i707 = zext i64 %i.afh to i128
  %.sroa.04.sroa.4.0.insert.shift.i708 = shl nuw i128 %.sroa.04.sroa.4.0.insert.ext.i707, 64
  %.sroa.04.sroa.0.0.insert.ext.i709 = zext i64 %i.afi to i128
  %.sroa.04.sroa.0.0.insert.insert.i710 = or disjoint i128 %.sroa.04.sroa.4.0.insert.shift.i708, %.sroa.04.sroa.0.0.insert.ext.i709
  store i128 %.sroa.04.sroa.0.0.insert.insert.i710, ptr %60, align 16, !tbaa !19682, !alias.scope !21436
  %.sroa.0.sroa.4.0.insert.ext.i711 = zext i64 %i.afk to i128
  %.sroa.0.sroa.4.0.insert.shift.i712 = shl nuw i128 %.sroa.0.sroa.4.0.insert.ext.i711, 64
  %.sroa.0.sroa.0.0.insert.ext.i713 = zext i64 %i.afl to i128
  %.sroa.0.sroa.0.0.insert.insert.i714 = or disjoint i128 %.sroa.0.sroa.4.0.insert.shift.i712, %.sroa.0.sroa.0.0.insert.ext.i713
  store i128 %.sroa.0.sroa.0.0.insert.insert.i714, ptr %i.di, align 16, !tbaa !19682, !alias.scope !21436
  invoke void @_ZN3fmt2v97vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %85, ptr nonnull @.str.280, i64 35, i64 221, ptr nonnull %60)
          to label %bb.cs unwind label %bb.ct

bb.cs:                                            ; preds = %.noexc330
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #39, !noalias !21435
  invoke void %4(ptr noundef nonnull align 8 dereferenceable(32) %85, ptr noundef %3)
          to label %_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit716 unwind label %bb.cu, !inline_history !21207

_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit716: ; preds = %bb.cs
  %i.afm = load ptr, ptr %85, align 8, !tbaa !19672 ; 2 uses
  %i.afn = icmp eq ptr %i.afm, %i.dj
  br i1 %i.afn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit719, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i717

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i717: ; preds = %_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit716
  %i.afo = load i64, ptr %i.dj, align 8, !tbaa !19682
  %i.afp = add i64 %i.afo, 1
  call void @_ZdlPvm(ptr noundef %i.afm, i64 noundef %i.afp) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit719

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit719: ; preds = %_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit716, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i717
  %i.afq = load ptr, ptr %87, align 8, !tbaa !19672 ; 2 uses
  %i.afr = icmp eq ptr %i.afq, %i.dk
  br i1 %i.afr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit722, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i720

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i720: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit719
  %i.afs = load i64, ptr %i.dk, align 8, !tbaa !19682
  %i.aft = add i64 %i.afs, 1
  call void @_ZdlPvm(ptr noundef %i.afq, i64 noundef %i.aft) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit722

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit722: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit719, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i720
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #39
  %i.afu = load ptr, ptr %86, align 8, !tbaa !19672 ; 2 uses
  %i.afv = icmp eq ptr %i.afu, %i.dl
  br i1 %i.afv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit725, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i723

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i723: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit722
  %i.afw = load i64, ptr %i.dl, align 8, !tbaa !19682
  %i.afx = add i64 %i.afw, 1
  call void @_ZdlPvm(ptr noundef %i.afu, i64 noundef %i.afx) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit725

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit725: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit722, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i723
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #39
end_hunk_0
