Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/StepExporter?download=true
inline.NumInlined: 1077
inline.NumDeleted: 524
begin_hunk_0_@_ZN6Assimp12StepExporter9WriteFileEv:bb.a
  %i.jp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.42, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit422 unwind label %bb.x ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit422: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit420
  %i.jq = load ptr, ptr %i.dn, align 8
  %i.jr = load i64, ptr %i.dp, align 8
  %i.js = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef %i.jq, i64 noundef %i.jr)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit424 unwind label %bb.x ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit424: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit422
  %i.jt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.43, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit426 unwind label %bb.x ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit426: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit424
  %i.ju = load ptr, ptr %i.dn, align 8
  %i.jv = load i64, ptr %i.dp, align 8
  %i.jw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef %i.ju, i64 noundef %i.jv)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit428 unwind label %bb.x ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit428: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit426
  %i.jx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.44, i64 noundef 59)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit430 unwind label %bb.x ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit430: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit428
  %i.jy = load ptr, ptr %i.dn, align 8
  %i.jz = load i64, ptr %i.dp, align 8
  %i.ka = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef %i.jy, i64 noundef %i.jz)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit432 unwind label %bb.x ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit432: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit430
  %i.kb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.45, i64 noundef 21)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit434 unwind label %bb.x ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit434: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit432
  br i1 %.not1078, label %._crit_edge1018, label %.lr.ph1017

.lr.ph1017:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit434
  %i.kc = load i64, ptr %i.fe, align 8
  %i.kd = shl i64 %i.kc, 1
  %i.ke = add i64 %i.kd, 108
  %i.kf = add nsw i64 %i.fd, -1
  br label %bb.y

._crit_edge1018:                                  ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit442, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit434
  %i.kg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.46, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit436 unwind label %bb.x ; 0 uses

bb.x:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit764, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit762, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit486, %._crit_edge1074, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit436, %._crit_edge1018, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit432, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit430, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit428, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit426, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit424, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit422, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit420, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit418, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit416, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit414, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit412, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit410, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit408, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit406, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit404, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit402, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit400, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit398, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit396, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit394, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit392, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit390, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit388, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit386, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit384, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit382, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit380, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit378, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit376, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit374, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit372, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit370, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit368, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit366, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit364, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit362, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit360, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit358, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit356, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit354, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit352, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit350, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit348, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit346, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit344, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit342, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit340, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit338, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit336, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit334, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit332, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit330, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit328, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit326, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit324, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit317, %._crit_edge1014
  %i.kh = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

bb.y:                                             ; preds = %.lr.ph1017, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit442
  %.02311016 = phi i64 [ 0, %.lr.ph1017 ], [ %i.kq, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit442 ] ; 3 uses
  %.12341015 = phi i64 [ %i.ke, %.lr.ph1017 ], [ %i.kp, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit442 ] ; 2 uses
  %i.ki = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.15, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit438 unwind label %bb.aa ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit438: ; preds = %bb.y
  %i.kj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i64 noundef %.12341015)
          to label %_ZNSolsEm.exit440 unwind label %bb.aa ; 0 uses

_ZNSolsEm.exit440:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit438
  %.not = icmp eq i64 %.02311016, %i.kf
  br i1 %.not, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit442, label %bb.z

bb.z:                                             ; preds = %_ZNSolsEm.exit440
  %i.kk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.16, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit442 unwind label %bb.aa ; 0 uses

bb.aa:                                            ; preds = %bb.z, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit438, %bb.y
  %i.kl = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit442: ; preds = %bb.z, %_ZNSolsEm.exit440
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0838.0.lcssa, i64 %.02311016
  %i.kn = load i32, ptr %i.km, align 4
  %i.ko = sext i32 %i.kn to i64
  %i.kp = add i64 %.12341015, %i.ko
  %i.kq = add nuw i64 %.02311016, 1               ; 2 uses
  %exitcond1137.not = icmp eq i64 %i.kq, %i.fd
  br i1 %exitcond1137.not, label %._crit_edge1018, label %bb.y, !llvm.loop !23

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit436: ; preds = %._crit_edge1018
  %i.kr = load ptr, ptr %i.dn, align 8
  %i.ks = load i64, ptr %i.dp, align 8
  %i.kt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef %i.kr, i64 noundef %i.ks)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit444 unwind label %bb.x ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit444: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit436
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.kv = load ptr, ptr %i.ku, align 8            ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %.not8661025 = icmp eq ptr %i.kv, %i.kw
  br i1 %.not8661025, label %.preheader872, label %.lr.ph1028

.lr.ph1028:                                       ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit444
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 3 uses
  br label %bb.ab

.preheader872:                                    ; preds = %._crit_edge1023, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit444
  %.0199.lcssa = phi i32 [ 100, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit444 ], [ %.1.lcssa, %._crit_edge1023 ]
  %i.la = load ptr, ptr %i.u, align 8             ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 16
  %i.lc = load i32, ptr %i.lb, align 8
  %.not1081 = icmp eq i32 %i.lc, 0
  br i1 %.not1081, label %._crit_edge1074, label %.lr.ph1073

bb.ab:                                            ; preds = %.lr.ph1028, %._crit_edge1023
  %.01991027 = phi i32 [ 100, %.lr.ph1028 ], [ %.1.lcssa, %._crit_edge1023 ] ; 2 uses
  %.sroa.0821.01026 = phi ptr [ %i.kv, %.lr.ph1028 ], [ %i.me, %._crit_edge1023 ] ; 3 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %.sroa.0821.01026, i64 32
  %i.le = load ptr, ptr %i.ld, align 8            ; 3 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %.sroa.0821.01026, i64 40
  %i.lg = load i32, ptr %i.lf, align 8
  %i.lh = load ptr, ptr %i.u, align 8
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 24
  %i.lj = load ptr, ptr %i.li, align 8
  %i.lk = zext i32 %i.lg to i64
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %i.lk
  %i.lm = load ptr, ptr %i.ll, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store ptr %i.le, ptr %i.c, align 8
  %i.ln = load ptr, ptr %i.ky, align 8            ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ln, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i445

.lr.ph.i.i.i.i445:                                ; preds = %bb.ab, %.lr.ph.i.i.i.i445
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i445 ], [ %i.ln, %bb.ab ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i445 ], [ %i.kz, %bb.ab ]
  %i.lo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.lp = load ptr, ptr %i.lo, align 8
  %i.lq = icmp ult ptr %i.lp, %i.le               ; 2 uses
  %.19.i.i.i.i = select i1 %i.lq, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %i.lq, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i446 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i446, label %_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i, label %.lr.ph.i.i.i.i445, !llvm.loop !0

_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i: ; preds = %.lr.ph.i.i.i.i445
  %i.lr = icmp eq ptr %.19.i.i.i.i, %i.kz
  br i1 %i.lr, label %.critedge.i, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i
  %i.ls = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.lt = load ptr, ptr %i.ls, align 8
  %i.lu = icmp ult ptr %i.le, %i.lt
  br i1 %i.lu, label %.critedge.i, label %bb.ad

.critedge.i:                                      ; preds = %bb.ac, %_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i, %bb.ab
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.ac ], [ %.19.i.i.i.i, %_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i ], [ %i.kz, %bb.ab ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  store ptr %i.c, ptr %1, align 8, !alias.scope !38
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.lv = invoke ptr @_ZNSt8_Rb_treeIPK6aiNodeSt4pairIKS2_12aiMatrix4x4tIfEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS2_EESI_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.kx, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %.noexc447 unwind label %bb.ae

.noexc447:                                        ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %bb.ad

bb.ad:                                            ; preds = %.noexc447, %bb.ac
  %.sroa.06.0.i = phi ptr [ %i.lv, %.noexc447 ], [ %.19.i.i.i.i, %bb.ac ] ; 5 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lm, i64 4 ; 2 uses
  %i.ly = load i32, ptr %i.lx, align 4            ; 2 uses
  %.not1080 = icmp eq i32 %i.ly, 0
  br i1 %.not1080, label %._crit_edge1023, label %.lr.ph1022

.lr.ph1022:                                       ; preds = %bb.ad
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lm, i64 16
  %i.ma = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 44
  %i.mb = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 48
  %i.mc = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 52
  %i.md = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 56
  br label %bb.af

._crit_edge1023:                                  ; preds = %bb.al, %bb.ad
  %.1.lcssa = phi i32 [ %.01991027, %bb.ad ], [ %.2, %bb.al ] ; 2 uses
  %i.me = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0821.01026) #25 ; 2 uses
  %.not866 = icmp eq ptr %i.me, %i.kw
  br i1 %.not866, label %.preheader872, label %bb.ab, !llvm.loop !26

bb.ae:                                            ; preds = %.critedge.i
  %i.mf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %bb.dh

bb.af:                                            ; preds = %.lr.ph1022, %bb.al
  %i.mg = phi i32 [ %i.ly, %.lr.ph1022 ], [ %i.pd, %bb.al ]
  %indvars.iv1138 = phi i64 [ 0, %.lr.ph1022 ], [ %indvars.iv.next1139, %bb.al ] ; 2 uses
  %.11020 = phi i32 [ %.01991027, %.lr.ph1022 ], [ %.2, %bb.al ] ; 3 uses
  %i.mh = load ptr, ptr %i.lz, align 8
  %i.mi = getelementptr inbounds nuw [12 x i8], ptr %i.mh, i64 %indvars.iv1138 ; 7 uses
  %i.mj = load i64, ptr %i.fe, align 8
  %.not.not.i.i448 = icmp eq i64 %i.mj, 0
  br i1 %.not.not.i.i448, label %.preheader873, label %bb.ag

.preheader873:                                    ; preds = %bb.af, %.preheader873
  %.sroa.06.0.in.i.i456 = phi ptr [ %.sroa.06.0.i.i457, %.preheader873 ], [ %i.r, %bb.af ]
  %.sroa.06.0.i.i457 = load ptr, ptr %.sroa.06.0.in.i.i456, align 8, !nonnull !39, !noundef !39 ; 3 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i457, i64 8
  %i.ml = load ptr, ptr %i.mk, align 8
  %i.mm = icmp eq ptr %i.mi, %i.ml
  br i1 %i.mm, label %_ZNSt13unordered_mapIP10aiVector3tIfEiSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_iEEE4findERS8_.exit459, label %.preheader873, !llvm.loop !19

bb.ag:                                            ; preds = %bb.af
  %i.mn = ptrtoint ptr %i.mi to i64
  %i.mo = load i64, ptr %i.q, align 8             ; 2 uses
  %i.mp = urem i64 %i.mn, %i.mo                   ; 2 uses
  %i.mq = load ptr, ptr %3, align 8
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.mq, i64 %i.mp
  %i.ms = load ptr, ptr %i.mr, align 8, !nonnull !39, !noundef !39
  %i.mt = load ptr, ptr %i.ms, align 8            ; 3 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 8
  %i.mv = load ptr, ptr %i.mu, align 8
  %i.mw = icmp eq ptr %i.mi, %i.mv
  br i1 %i.mw, label %_ZNSt13unordered_mapIP10aiVector3tIfEiSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_iEEE4findERS8_.exit459, label %.lr.ph.i.i.i.i450

.lr.ph.i.i.i.i450:                                ; preds = %bb.ag, %.lr.ph.i.i.i.i450
  %.020.i.i.i.i451 = phi ptr [ %i.mx, %.lr.ph.i.i.i.i450 ], [ %i.mt, %bb.ag ]
  %i.mx = load ptr, ptr %.020.i.i.i.i451, align 8, !nonnull !39, !noundef !39 ; 3 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 8
  %i.mz = load ptr, ptr %i.my, align 8            ; 2 uses
  %i.na = ptrtoint ptr %i.mz to i64
  %i.nb = urem i64 %i.na, %i.mo
  %.not19.i.i.i.i453 = icmp eq i64 %i.nb, %i.mp
  call void @llvm.assume(i1 %.not19.i.i.i.i453)
  %i.nc = icmp eq ptr %i.mi, %i.mz
  br i1 %i.nc, label %_ZNSt13unordered_mapIP10aiVector3tIfEiSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_iEEE4findERS8_.exit459, label %.lr.ph.i.i.i.i450, !llvm.loop !20

_ZNSt13unordered_mapIP10aiVector3tIfEiSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_iEEE4findERS8_.exit459: ; preds = %.lr.ph.i.i.i.i450, %.preheader873, %bb.ag
  %.sroa.06.1.i.i455 = phi ptr [ %.sroa.06.0.i.i457, %.preheader873 ], [ %i.mt, %bb.ag ], [ %i.mx, %.lr.ph.i.i.i.i450 ]
  %i.nd = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i455, i64 16 ; 5 uses
  %i.ne = load i32, ptr %i.nd, align 8
  %i.nf = icmp sgt i32 %i.ne, -1
  br i1 %i.nf, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt13unordered_mapIP10aiVector3tIfEiSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_iEEE4findERS8_.exit459
  store i32 %.11020, ptr %i.nd, align 8
  %i.ng = load float, ptr %i.lw, align 4
  %i.nh = load float, ptr %i.ma, align 4
  %4 = getelementptr inbounds nuw i8, ptr %i.mi, i64 4
  %i.ni = load float, ptr %i.mb, align 4
  %5 = getelementptr inbounds nuw i8, ptr %i.mi, i64 8
  %i.nj = load float, ptr %i.mc, align 4
  %6 = load float, ptr %4, align 4                ; 2 uses
  %i.nk = load float, ptr %i.mi, align 4          ; 2 uses
  %7 = load float, ptr %5, align 4                ; 2 uses
  %i.nl = fmul float %i.nh, %6
  %i.nm = call float @llvm.fmuladd.f32(float %i.ng, float %i.nk, float %i.nl)
  %i.nn = call float @llvm.fmuladd.f32(float %i.ni, float %7, float %i.nm)
  %i.no = fadd float %i.nn, %i.nj
  %i.np = load <8 x float>, ptr %i.md, align 4    ; 4 uses
  %8 = insertelement <2 x float> poison, float %6, i64 0
  %9 = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nq = shufflevector <8 x float> %i.np, <8 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.nr = fmul <2 x float> %9, %i.nq
  %i.ns = shufflevector <8 x float> %i.np, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  %10 = insertelement <2 x float> poison, float %i.nk, i64 0
  %i.nt = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ns, <2 x float> %i.nt, <2 x float> %i.nr)
  %i.nv = shufflevector <8 x float> %i.np, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %11 = insertelement <2 x float> poison, float %7, i64 0
  %12 = shufflevector <2 x float> %11, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nv, <2 x float> %12, <2 x float> %i.nu)
  %i.nx = shufflevector <8 x float> %i.np, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  %i.ny = fadd <2 x float> %i.nx, %i.nw           ; 2 uses
  %i.nz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.15, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit461 unwind label %bb.am ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit461: ; preds = %bb.ah
  %i.oa = load i32, ptr %i.nd, align 8
  %i.ob = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i32 noundef %i.oa)
          to label %bb.ai unwind label %bb.am     ; 2 uses

bb.ai:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit461
  %i.oc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ob, ptr noundef nonnull @.str.47, i64 noundef 21)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit463 unwind label %bb.am ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit463: ; preds = %bb.ai
  %i.od = fpext float %i.no to double
  %i.oe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ob, double noundef %i.od)
          to label %_ZNSolsEf.exit unwind label %bb.am ; 2 uses

_ZNSolsEf.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit463
  %i.of = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.oe, ptr noundef nonnull @.str.16, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit466 unwind label %bb.am ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit466: ; preds = %_ZNSolsEf.exit
  %i.og = extractelement <2 x float> %i.ny, i64 0
  %i.oh = fpext float %i.og to double
  %i.oi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.oe, double noundef %i.oh)
          to label %_ZNSolsEf.exit468 unwind label %bb.am ; 2 uses

_ZNSolsEf.exit468:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit466
  %i.oj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.oi, ptr noundef nonnull @.str.16, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit470 unwind label %bb.am ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit470: ; preds = %_ZNSolsEf.exit468
  %i.ok = extractelement <2 x float> %i.ny, i64 1
  %i.ol = fpext float %i.ok to double
  %i.om = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.oi, double noundef %i.ol)
          to label %_ZNSolsEf.exit472 unwind label %bb.am ; 2 uses

_ZNSolsEf.exit472:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit470
  %i.on = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.om, ptr noundef nonnull @.str.46, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit474 unwind label %bb.am ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit474: ; preds = %_ZNSolsEf.exit472
  %i.oo = load ptr, ptr %i.dn, align 8
  %i.op = load i64, ptr %i.dp, align 8
  %i.oq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.om, ptr noundef %i.oo, i64 noundef %i.op)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit476 unwind label %bb.am ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit476: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit474
  %i.or = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.15, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit478 unwind label %bb.am ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit478: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit476
  %i.os = load i32, ptr %i.nd, align 8
  %i.ot = add nsw i32 %i.os, 1
  %i.ou = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i32 noundef %i.ot)
          to label %bb.aj unwind label %bb.am     ; 2 uses

bb.aj:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit478
  %i.ov = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ou, ptr noundef nonnull @.str.48, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit480 unwind label %bb.am ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit480: ; preds = %bb.aj
  %i.ow = load i32, ptr %i.nd, align 8
  %i.ox = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ou, i32 noundef %i.ow)
          to label %bb.ak unwind label %bb.am     ; 2 uses

bb.ak:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit480
  %i.oy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ox, ptr noundef nonnull @.str.49, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit482 unwind label %bb.am ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit482: ; preds = %bb.ak
  %i.oz = load ptr, ptr %i.dn, align 8
  %i.pa = load i64, ptr %i.dp, align 8
  %i.pb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ox, ptr noundef %i.oz, i64 noundef %i.pa)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit484 unwind label %bb.am ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit484: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit482
  %i.pc = add nsw i32 %.11020, 2
  %.pre1193 = load i32, ptr %i.lx, align 4
  br label %bb.al

bb.al:                                            ; preds = %_ZNSt13unordered_mapIP10aiVector3tIfEiSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_iEEE4findERS8_.exit459, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit484
  %i.pd = phi i32 [ %.pre1193, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit484 ], [ %i.mg, %_ZNSt13unordered_mapIP10aiVector3tIfEiSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_iEEE4findERS8_.exit459 ] ; 2 uses
  %.2 = phi i32 [ %i.pc, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit484 ], [ %.11020, %_ZNSt13unordered_mapIP10aiVector3tIfEiSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_iEEE4findERS8_.exit459 ] ; 2 uses
  %indvars.iv.next1139 = add nuw nsw i64 %indvars.iv1138, 1 ; 2 uses
  %i.pe = zext i32 %i.pd to i64
  %i.pf = icmp samesign ult i64 %indvars.iv.next1139, %i.pe
  br i1 %i.pf, label %bb.af, label %._crit_edge1023, !llvm.loop !27

bb.am:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit482, %bb.ak, %bb.aj, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit476, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit474, %_ZNSolsEf.exit472, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit470, %_ZNSolsEf.exit468, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit466, %_ZNSolsEf.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit463, %bb.ai, %bb.ah, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit480, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit478, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit461
  %i.pg = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

._crit_edge1074:                                  ; preds = %._crit_edge1061, %.preheader872
  %i.ph = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.12, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit486 unwind label %bb.x ; 0 uses

.lr.ph1073:                                       ; preds = %.preheader872, %._crit_edge1061
  %i.pi = phi ptr [ %i.pu, %._crit_edge1061 ], [ %i.la, %.preheader872 ] ; 2 uses
  %indvars.iv1188 = phi i64 [ %indvars.iv.next1189, %._crit_edge1061 ], [ 0, %.preheader872 ] ; 2 uses
  %.31072 = phi i32 [ %.4.lcssa, %._crit_edge1061 ], [ %.0199.lcssa, %.preheader872 ] ; 2 uses
  %.sroa.26.01068 = phi float [ %.sroa.26.1.lcssa, %._crit_edge1061 ], [ 8.000000e-01, %.preheader872 ] ; 2 uses
  %i.pj = phi <2 x float> [ %i.pv, %._crit_edge1061 ], [ splat (float 8.000000e-01), %.preheader872 ] ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pi, i64 24
  %i.pl = load ptr, ptr %i.pk, align 8
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.pl, i64 %indvars.iv1188
  %i.pn = load ptr, ptr %i.pm, align 8            ; 5 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 8 ; 2 uses
  %i.pp = load i32, ptr %i.po, align 8            ; 2 uses
  %.not1082 = icmp eq i32 %i.pp, 0
  br i1 %.not1082, label %._crit_edge1061, label %.lr.ph1060

.lr.ph1060:                                       ; preds = %.lr.ph1073
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pn, i64 208
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pn, i64 16 ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pn, i64 48
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pn, i64 4
  br label %bb.an

._crit_edge1061.loopexit:                         ; preds = %bb.de
  %.pre1195 = load ptr, ptr %i.u, align 8
  br label %._crit_edge1061

._crit_edge1061:                                  ; preds = %._crit_edge1061.loopexit, %.lr.ph1073
  %i.pu = phi ptr [ %i.pi, %.lr.ph1073 ], [ %.pre1195, %._crit_edge1061.loopexit ] ; 2 uses
  %.sroa.26.1.lcssa = phi float [ %.sroa.26.01068, %.lr.ph1073 ], [ %.sroa.26.3, %._crit_edge1061.loopexit ]
  %.4.lcssa = phi i32 [ %.31072, %.lr.ph1073 ], [ %.5, %._crit_edge1061.loopexit ]
  %i.pv = phi <2 x float> [ %i.pj, %.lr.ph1073 ], [ %i.agu, %._crit_edge1061.loopexit ]
  %indvars.iv.next1189 = add nuw nsw i64 %indvars.iv1188, 1 ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pu, i64 16
  %i.px = load i32, ptr %i.pw, align 8
  %i.py = zext i32 %i.px to i64
  %i.pz = icmp samesign ult i64 %indvars.iv.next1189, %i.py
  br i1 %i.pz, label %.lr.ph1073, label %._crit_edge1074, !llvm.loop !28

bb.an:                                            ; preds = %.lr.ph1060, %bb.de
  %i.qa = phi i32 [ %i.pp, %.lr.ph1060 ], [ %i.agt, %bb.de ]
  %indvars.iv1185 = phi i64 [ 0, %.lr.ph1060 ], [ %indvars.iv.next1186, %bb.de ] ; 2 uses
  %.41058 = phi i32 [ %.31072, %.lr.ph1060 ], [ %.5, %bb.de ] ; 17 uses
  %.sroa.26.11054 = phi float [ %.sroa.26.01068, %.lr.ph1060 ], [ %.sroa.26.3, %bb.de ] ; 2 uses
  %i.qb = phi <2 x float> [ %i.pj, %.lr.ph1060 ], [ %i.agu, %bb.de ] ; 2 uses
  %i.qc = load ptr, ptr %i.pq, align 8
  %i.qd = getelementptr inbounds nuw [16 x i8], ptr %i.qc, i64 %indvars.iv1185 ; 3 uses
  %i.qe = load i32, ptr %i.qd, align 8            ; 13 uses
  %i.qf = icmp slt i32 %i.qe, 3
  br i1 %i.qf, label %bb.de, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.qg = zext nneg i32 %i.qe to i64              ; 5 uses
  %i.qh = shl nuw nsw i64 %i.qg, 2                ; 4 uses
  %i.qi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qh) #24
          to label %.noexc488 unwind label %bb.ap ; 12 uses

.noexc488:                                        ; preds = %bb.ao
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.qi, i8 -1, i64 %i.qh, i1 false)
  %i.qj = mul nuw nsw i64 %i.qg, 12               ; 4 uses
  %i.qk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qj) #24
          to label %.lr.ph1032 unwind label %bb.aq ; 9 uses

.lr.ph1032:                                       ; preds = %.noexc488
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.qk, i8 0, i64 %i.qj, i1 false)
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qd, i64 8 ; 2 uses
  %i.qm = load i64, ptr %i.fe, align 8
  %.not.not.i.i495 = icmp eq i64 %i.qm, 0
  %i.qn = load i64, ptr %i.q, align 8             ; 2 uses
  %i.qo = load ptr, ptr %3, align 8
  br label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.qp = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

bb.aq:                                            ; preds = %.noexc488
  %i.qq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit760

bb.ar:                                            ; preds = %.lr.ph1032, %_ZN10aiVector3tIfE9NormalizeEv.exit
  %indvars.iv1141 = phi i64 [ 0, %.lr.ph1032 ], [ %indvars.iv.next1142, %_ZN10aiVector3tIfE9NormalizeEv.exit ] ; 4 uses
  %i.qr = load ptr, ptr %i.pr, align 8
  %i.qs = load ptr, ptr %i.ql, align 8
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %i.qs, i64 %indvars.iv1141
  %i.qu = load i32, ptr %i.qt, align 4
  %i.qv = zext i32 %i.qu to i64
  %i.qw = getelementptr inbounds nuw [12 x i8], ptr %i.qr, i64 %i.qv ; 6 uses
  br i1 %.not.not.i.i495, label %.preheader, label %bb.as

.preheader:                                       ; preds = %bb.ar, %.preheader
  %.sroa.06.0.in.i.i503 = phi ptr [ %.sroa.06.0.i.i504, %.preheader ], [ %i.r, %bb.ar ]
  %.sroa.06.0.i.i504 = load ptr, ptr %.sroa.06.0.in.i.i503, align 8, !nonnull !39, !noundef !39 ; 3 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i504, i64 8
  %i.qy = load ptr, ptr %i.qx, align 8
  %i.qz = icmp eq ptr %i.qw, %i.qy
  br i1 %i.qz, label %_ZNSt13unordered_mapIP10aiVector3tIfEiSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_iEEE4findERS8_.exit506, label %.preheader, !llvm.loop !19

bb.as:                                            ; preds = %bb.ar
end_hunk_0
