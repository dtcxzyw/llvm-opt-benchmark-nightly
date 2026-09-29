Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/static_string?download=true
inline.NumInlined: 13637
inline.NumDeleted: 1357
loop-unroll.NumCompletelyUnrolled: 5361
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 5371
loop-unroll.NumUnrolledNotLatch: 27
begin_hunk_0_@_ZN5boost14static_strings11testGeneralEv:_ZN5boost14static_stringseqILm1EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bh unwind label %bb.cb

bb.bh:                                            ; preds = %bb.bg, %bb.bb, %bb.bf, %bb.ba
  %.pn28 = phi { ptr, i32 } [ %i.ez, %bb.bb ], [ %i.fh, %bb.bf ], [ %i.ey, %bb.ba ], [ %i.fi, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br label %bb.ca

bb.bi:                                            ; preds = %.lr.ph.preheader.i.i129
  %i.fj = landingpad { ptr, i32 }
          catch ptr @_ZTISt12length_error
          catch ptr null                          ; 2 uses
  %i.fk = extractvalue { ptr, i32 } %i.fj, 0
  %i.fl = extractvalue { ptr, i32 } %i.fj, 1
  %i.fm = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt12length_error) #32
  %i.fn = icmp eq i32 %i.fl, %i.fm
  %i.fo = tail call ptr @__cxa_begin_catch(ptr %i.fk) #32 ; 0 uses
  br i1 %i.fn, label %bb.bj, label %bb.bo

bb.bj:                                            ; preds = %bb.bi
  %i.fp = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.bk unwind label %bb.bq     ; 0 uses

bb.bk:                                            ; preds = %bb.bj, %bb.bo
  tail call void @__cxa_end_catch()
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %2, i8 0, i64 22, i1 false)
  %i.fq = call noundef nonnull align 1 dereferenceable(22) ptr @_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE6assignIPKcEENSt9enable_ifIXsr6detail17is_input_iteratorIT_EE5valueERS4_E4typeES9_S9_(ptr noundef nonnull align 1 dereferenceable(22) %2, ptr noundef nonnull @.str.1353, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.1353, i64 10)) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.a, i8 0, i64 20, i1 false)
  %i.fr = load i8, ptr %2, align 1, !tbaa !84     ; 2 uses
  %i.fs = icmp eq i8 %i.fr, 0
  br i1 %i.fs, label %_ZNK5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE4copyEPcmm.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ft = zext i8 %i.fr to i64
  %i.fu = getelementptr inbounds nuw i8, ptr %2, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 1 %i.fu, i64 %i.ft, i1 false)
  br label %_ZNK5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE4copyEPcmm.exit

_ZNK5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE4copyEPcmm.exit: ; preds = %bb.bk, %bb.bl
  %i.fv = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.1354, ptr noundef nonnull @.str.13, i32 noundef 3995, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost14static_strings11testGeneralEv, i1 noundef zeroext true) ; 0 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.fx = load i8, ptr %2, align 1, !tbaa !84     ; 2 uses
  %i.fy = zext i8 %i.fx to i64                    ; 2 uses
  %i.fz = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #32
  %or.cond.not.i134 = icmp eq i64 %i.fz, %i.fy
  br i1 %or.cond.not.i134, label %bb.bm, label %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit

bb.bm:                                            ; preds = %_ZNK5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE4copyEPcmm.exit
  %i.ga = icmp eq i8 %i.fx, 0
  br i1 %i.ga, label %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %bcmp.i136 = call i32 @bcmp(ptr nonnull %i.fw, ptr nonnull %i.a, i64 %i.fy)
  %i.gb = icmp eq i32 %bcmp.i136, 0
  br label %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit

_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit: ; preds = %_ZNK5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE4copyEPcmm.exit, %bb.bm, %bb.bn
  %.0.i.i135 = phi i1 [ false, %_ZNK5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE4copyEPcmm.exit ], [ %i.gb, %bb.bn ], [ true, %bb.bm ]
  %i.gc = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.1355, ptr noundef nonnull @.str.13, i32 noundef 3996, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost14static_strings11testGeneralEv, i1 noundef zeroext %.0.i.i135) ; 0 uses
  invoke void @_ZN5boost14static_strings6detail15throw_exceptionISt12out_of_rangeEEvPKc(ptr noundef nonnull @.str.3) #31
          to label %.noexc138 unwind label %bb.br

.noexc138:                                        ; preds = %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit
  unreachable

bb.bo:                                            ; preds = %bb.bi
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.1352, ptr noundef nonnull @.str.1305, ptr noundef nonnull @.str.13, i32 noundef 3987, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost14static_strings11testGeneralEv)
          to label %bb.bk unwind label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.gd = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ca unwind label %bb.cb

bb.bq:                                            ; preds = %bb.bj
  %i.ge = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ca unwind label %bb.cb

bb.br:                                            ; preds = %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit
  %i.gf = landingpad { ptr, i32 }
          catch ptr @_ZTISt12out_of_range
          catch ptr null                          ; 2 uses
  %i.gg = extractvalue { ptr, i32 } %i.gf, 0
  %i.gh = extractvalue { ptr, i32 } %i.gf, 1
  %i.gi = icmp eq i32 %i.gh, %i.bu
  %i.gj = call ptr @__cxa_begin_catch(ptr %i.gg) #32 ; 0 uses
  br i1 %i.gi, label %bb.bs, label %bb.bw

bb.bs:                                            ; preds = %bb.br
  %i.gk = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.bt unwind label %bb.by     ; 0 uses

bb.bt:                                            ; preds = %bb.bs, %bb.bw
  call void @__cxa_end_catch()
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %3, i8 0, i64 22, i1 false)
  %i.gl = call noundef nonnull align 1 dereferenceable(22) ptr @_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE6assignIPKcEENSt9enable_ifIXsr6detail17is_input_iteratorIT_EE5valueERS4_E4typeES9_S9_(ptr noundef nonnull align 1 dereferenceable(22) %3, ptr noundef nonnull @.str.1353, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.1353, i64 10)) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.b, i8 0, i64 20, i1 false)
  %i.gm = load i8, ptr %3, align 1, !tbaa !84     ; 3 uses
  %i.gn = icmp ult i8 %i.gm, 2
  br i1 %i.gn, label %bb.bu, label %_ZNK5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE13capped_lengthEmm.exit.i140

bb.bu:                                            ; preds = %bb.bt
  call void @_ZN5boost14static_strings6detail15throw_exceptionISt12out_of_rangeEEvPKc(ptr noundef nonnull @.str.3) #31
  unreachable

_ZNK5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE13capped_lengthEmm.exit.i140: ; preds = %bb.bt
  %i.go = zext i8 %i.gm to i64
  %i.gp = add nsw i64 %i.go, -2                   ; 2 uses
  %i.gq = icmp eq i64 %i.gp, 0
  br i1 %i.gq, label %_ZNK5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE4copyEPcmm.exit142, label %bb.bv

bb.bv:                                            ; preds = %_ZNK5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE13capped_lengthEmm.exit.i140
  %.sroa.speculated.i.i141 = call noundef i64 @llvm.umin.i64(i64 %i.gp, i64 2)
  %i.gr = getelementptr inbounds nuw i8, ptr %3, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr nonnull align 1 %i.gr, i64 %.sroa.speculated.i.i141, i1 false)
  %.0..0..0..pre = load i8, ptr %i.b, align 16, !tbaa !26
  %.1..1..1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.1..1..1..pre = load i8, ptr %.1..1..1..sroa_idx, align 1
  %i.gs = icmp eq i8 %.0..0..0..pre, 108
  %i.gt = icmp eq i8 %.1..1..1..pre, 108
  %i.gu = select i1 %i.gs, i1 %i.gt, i1 false
  br label %_ZNK5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE4copyEPcmm.exit142

_ZNK5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE4copyEPcmm.exit142: ; preds = %_ZNK5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE13capped_lengthEmm.exit.i140, %bb.bv
  %.0..0. = phi i1 [ false, %_ZNK5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE13capped_lengthEmm.exit.i140 ], [ %i.gu, %bb.bv ]
  %i.gv = icmp ugt i8 %i.gm, 3
  %i.gw = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.1357, ptr noundef nonnull @.str.13, i32 noundef 4004, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost14static_strings11testGeneralEv, i1 noundef zeroext %i.gv) ; 0 uses
  %i.gx = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.1358, ptr noundef nonnull @.str.13, i32 noundef 4005, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost14static_strings11testGeneralEv, i1 noundef zeroext %.0..0.) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void

bb.bw:                                            ; preds = %bb.br
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.1356, ptr noundef nonnull @.str.1316, ptr noundef nonnull @.str.13, i32 noundef 3999, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost14static_strings11testGeneralEv)
          to label %bb.bt unwind label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.gy = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bz unwind label %bb.cb

bb.by:                                            ; preds = %bb.bs
  %i.gz = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bz unwind label %bb.cb

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.pn32 = phi { ptr, i32 } [ %i.gy, %bb.bx ], [ %i.gz, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bp, %bb.bq, %bb.aa, %bb.ab, %bb.au, %bb.av, %bb.bz, %bb.bh
  %.pn32.pn = phi { ptr, i32 } [ %.pn32, %bb.bz ], [ %i.bq, %bb.ab ], [ %.pn28, %bb.bh ], [ %i.eq, %bb.av ], [ %i.ep, %bb.au ], [ %i.bp, %bb.aa ], [ %i.gd, %bb.bp ], [ %i.ge, %bb.bq ]
  resume { ptr, i32 } %.pn32.pn

bb.cb:                                            ; preds = %bb.by, %bb.bx, %bb.bq, %bb.bp, %bb.bg, %bb.bf, %bb.bb, %bb.ba, %bb.av, %bb.au, %bb.ab, %bb.aa
  %i.ha = landingpad { ptr, i32 }
          catch ptr null
  %i.hb = extractvalue { ptr, i32 } %i.ha, 0
  call void @__clang_call_terminate(ptr %i.hb) #33
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5boost14static_strings18testToStaticStringEv() local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.boost::static_strings::basic_static_string.75", align 4 ; 6 uses
  %1 = alloca %"class.boost::static_strings::basic_static_string.75", align 4 ; 6 uses
  %2 = alloca %"class.boost::static_strings::basic_static_string.75", align 4 ; 8 uses
  %3 = alloca %"class.boost::static_strings::basic_static_string.75", align 4 ; 8 uses
  %4 = alloca %"class.boost::static_strings::basic_static_string.73", align 4 ; 12 uses
  %5 = alloca %"class.boost::static_strings::basic_static_string.73", align 4 ; 8 uses
  %6 = alloca %"class.boost::static_strings::basic_static_string.71", align 4 ; 8 uses
  %7 = alloca %"class.boost::static_strings::basic_static_string.30", align 8 ; 6 uses
  %8 = alloca %"class.boost::static_strings::basic_static_string.30", align 8 ; 6 uses
  %9 = alloca %"class.boost::static_strings::basic_static_string.10", align 1 ; 11 uses
  %.sroa.5865 = alloca [11 x i8], align 8         ; 11 uses
  %10 = alloca %"class.boost::static_strings::basic_static_string.30", align 8 ; 8 uses
  %.sroa.5 = alloca [11 x i8], align 8            ; 11 uses
  %11 = alloca %"class.boost::static_strings::basic_static_string.30", align 8 ; 8 uses
  %12 = alloca %"class.boost::static_strings::basic_static_string.21", align 8 ; 6 uses
  %13 = alloca %"class.boost::static_strings::basic_static_string.30", align 8 ; 12 uses
  %14 = alloca %"class.boost::static_strings::basic_static_string.30", align 8 ; 12 uses
  %15 = alloca %"class.boost::static_strings::basic_static_string.21", align 8 ; 6 uses
  %16 = alloca %"class.boost::static_strings::basic_static_string.30", align 1 ; 7 uses
  %17 = alloca %"class.boost::static_strings::basic_static_string.11", align 1 ; 6 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %19 = alloca %"class.boost::static_strings::basic_static_string.11", align 1 ; 6 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %21 = alloca %"class.boost::static_strings::basic_static_string.11", align 1 ; 6 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %23 = alloca %"class.boost::static_strings::basic_static_string.11", align 1 ; 6 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %25 = alloca %"class.boost::static_strings::basic_static_string.11", align 1 ; 6 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %27 = alloca %"class.boost::static_strings::basic_static_string.11", align 1 ; 6 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %29 = alloca %"class.boost::static_strings::basic_static_string.11", align 1 ; 6 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %31 = alloca %"class.boost::static_strings::basic_static_string.11", align 1 ; 6 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %33 = alloca %"class.boost::static_strings::basic_static_string.10", align 1 ; 10 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %35 = alloca %"class.boost::static_strings::basic_static_string.10", align 1 ; 10 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %37 = alloca %"class.boost::static_strings::basic_static_string.10", align 1 ; 8 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %39 = alloca %"class.boost::static_strings::basic_static_string.10", align 1 ; 8 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %41 = alloca %"class.boost::static_strings::basic_static_string.12", align 1 ; 6 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %43 = alloca %"class.boost::static_strings::basic_static_string.13", align 1 ; 6 uses
  %44 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %45 = alloca %"class.boost::static_strings::basic_static_string.13", align 1 ; 4 uses
  %46 = alloca %"class.boost::static_strings::basic_static_string.11", align 1 ; 4 uses
  %47 = alloca %"class.boost::static_strings::basic_static_string.12", align 1 ; 4 uses
  %48 = alloca %"class.boost::static_strings::basic_static_string.14", align 4 ; 5 uses
  %49 = alloca %"class.boost::static_strings::basic_static_string.15", align 4 ; 5 uses
  %50 = alloca %"class.boost::static_strings::basic_static_string.16", align 4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #32
  store i8 1, ptr %16, align 1
  %.sroa_idx444 = getelementptr inbounds nuw i8, ptr %16, i64 1 ; 3 uses
  store i56 48, ptr %.sroa_idx444, align 1
  %.sroa.2.0..sroa_idx.i.sroa_idx.a = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i24 0, ptr %.sroa.2.0..sroa_idx.i.sroa_idx.a, align 1
  %.sroa.2.0..sroa_idx.i.sroa_idx451 = getelementptr inbounds nuw i8, ptr %16, i64 11
  store i16 48, ptr %.sroa.2.0..sroa_idx.i.sroa_idx451, align 1
  %i.a = call i64 @__isoc23_strtoll(ptr noundef nonnull %.sroa_idx444, ptr noundef null, i32 noundef 10) #32
  %i.b = and i64 %i.a, 4294967295
  %i.c = icmp eq i64 %i.b, 0
  %i.d = load i8, ptr %16, align 1
  %or.cond.not.i.i = icmp eq i8 %i.d, 1
  %or.cond = select i1 %i.c, i1 %or.cond.not.i.i, i1 false
  br i1 %or.cond, label %bb.b, label %_ZN5boost14static_strings6testTSIiEEbT_PKc.exit

bb.b:                                             ; preds = %bb.a
  %lhsc = load i8, ptr %.sroa_idx444, align 1
  %i.e = icmp eq i8 %lhsc, 48
  br label %_ZN5boost14static_strings6testTSIiEEbT_PKc.exit

_ZN5boost14static_strings6testTSIiEEbT_PKc.exit:  ; preds = %bb.a, %bb.b
  %i.f = phi i1 [ false, %bb.a ], [ %i.e, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  %i.g = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.1359, ptr noundef nonnull @.str.13, i32 noundef 4014, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost14static_strings18testToStaticStringEv, i1 noundef zeroext %i.f) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  store i64 12289, ptr %15, align 8
  %.sroa.2.0..sroa_idx.i17 = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 3145728, ptr %.sroa.2.0..sroa_idx.i17, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %15, i64 1 ; 2 uses
  %i.i = call i64 @__isoc23_strtoull(ptr noundef nonnull %i.h, ptr noundef null, i32 noundef 10) #32
  %i.j = and i64 %i.i, 4294967295
  %i.k = icmp eq i64 %i.j, 0
  %i.l = load i8, ptr %15, align 8
  %or.cond.not.i.i18 = icmp eq i8 %i.l, 1
  %or.cond764.a = select i1 %i.k, i1 %or.cond.not.i.i18, i1 false
  br i1 %or.cond764.a, label %bb.c, label %_ZN5boost14static_strings16to_static_stringEi.exit.i

bb.c:                                             ; preds = %_ZN5boost14static_strings6testTSIiEEbT_PKc.exit
  %lhsc747 = load i8, ptr %i.h, align 1
  %i.m = icmp eq i8 %lhsc747, 48
  br label %_ZN5boost14static_strings16to_static_stringEi.exit.i

_ZN5boost14static_strings16to_static_stringEi.exit.i: ; preds = %_ZN5boost14static_strings6testTSIiEEbT_PKc.exit, %bb.c
  %i.n = phi i1 [ false, %_ZN5boost14static_strings6testTSIiEEbT_PKc.exit ], [ %i.m, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  %i.o = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.1361, ptr noundef nonnull @.str.13, i32 noundef 4015, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost14static_strings18testToStaticStringEv, i1 noundef zeroext %i.n) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  store i8 5, ptr %14, align 8
  %.sroa_idx816 = getelementptr inbounds nuw i8, ptr %14, i64 1
  store i32 859125046, ptr %.sroa_idx816, align 1
  %.sroa_idx816.sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 5
  store i8 53, ptr %.sroa_idx816.sroa_idx, align 1
  %.sroa_idx817 = getelementptr inbounds nuw i8, ptr %14, i64 6
  store i8 0, ptr %.sroa_idx817, align 2
  %.sroa_idx818 = getelementptr inbounds nuw i8, ptr %14, i64 7
  store i8 54, ptr %.sroa_idx818, align 1
  %.sroa.2.0..sroa_idx.i24 = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i24 3355957, ptr %.sroa.2.0..sroa_idx.i24, align 8
  %.sroa.2.0..sroa_idx.i24.sroa_idx823 = getelementptr inbounds nuw i8, ptr %14, i64 11
  store i8 53, ptr %.sroa.2.0..sroa_idx.i24.sroa_idx823, align 1
  %.sroa.2.0..sroa_idx.i24.sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 12
  store i8 0, ptr %.sroa.2.0..sroa_idx.i24.sroa_idx, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %14, i64 1 ; 3 uses
  %i.q = call i64 @__isoc23_strtoll(ptr noundef nonnull %i.p, ptr noundef null, i32 noundef 10) #32
  %i.r = and i64 %i.q, 4294967295
  %i.s = icmp eq i64 %i.r, 65535
  %i.t = load i8, ptr %14, align 8
  %or.cond.not.i.i25 = icmp eq i8 %i.t, 5
  %or.cond765 = select i1 %i.s, i1 %or.cond.not.i.i25, i1 false
  br i1 %or.cond765, label %bb.d, label %_ZN5boost14static_strings16to_static_stringEi.exit.i37

bb.d:                                             ; preds = %_ZN5boost14static_strings16to_static_stringEi.exit.i
  %i.u = load i32, ptr %i.p, align 1
  %i.v = xor i32 %i.u, 859125046
  %i.w = getelementptr i8, ptr %i.p, i64 4
  %i.x = load i8, ptr %i.w, align 1
  %i.y = zext i8 %i.x to i32
  %i.z = xor i32 %i.y, 53
  %i.aa = or i32 %i.v, %i.z
  %i.ab = icmp ne i32 %i.aa, 0
  %i.ac = zext i1 %i.ab to i32
  %i.ad = icmp eq i32 %i.ac, 0
  br label %_ZN5boost14static_strings16to_static_stringEi.exit.i37

_ZN5boost14static_strings16to_static_stringEi.exit.i37: ; preds = %_ZN5boost14static_strings16to_static_stringEi.exit.i, %bb.d
  %i.ae = phi i1 [ false, %_ZN5boost14static_strings16to_static_stringEi.exit.i ], [ %i.ad, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  %i.af = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.1362, ptr noundef nonnull @.str.13, i32 noundef 4016, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost14static_strings18testToStaticStringEv, i1 noundef zeroext %i.ae) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  store i8 5, ptr %13, align 8
  %.sroa_idx832 = getelementptr inbounds nuw i8, ptr %13, i64 1
  store i32 859125046, ptr %.sroa_idx832, align 1
  %.sroa_idx832.sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 5
  store i8 54, ptr %.sroa_idx832.sroa_idx, align 1
  %.sroa_idx833 = getelementptr inbounds nuw i8, ptr %13, i64 6
  store i8 0, ptr %.sroa_idx833, align 2
  %.sroa_idx834 = getelementptr inbounds nuw i8, ptr %13, i64 7
  store i8 54, ptr %.sroa_idx834, align 1
  %.sroa.2.0..sroa_idx.i42 = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i24 3355957, ptr %.sroa.2.0..sroa_idx.i42, align 8
  %.sroa.2.0..sroa_idx.i42.sroa_idx842 = getelementptr inbounds nuw i8, ptr %13, i64 11
  store i8 54, ptr %.sroa.2.0..sroa_idx.i42.sroa_idx842, align 1
  %.sroa.2.0..sroa_idx.i42.sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 12
  store i8 0, ptr %.sroa.2.0..sroa_idx.i42.sroa_idx, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %13, i64 1 ; 3 uses
  %i.ah = call i64 @__isoc23_strtoll(ptr noundef nonnull %i.ag, ptr noundef null, i32 noundef 10) #32
  %i.ai = and i64 %i.ah, 4294967295
  %i.aj = icmp eq i64 %i.ai, 65536
  %i.ak = load i8, ptr %13, align 8
  %or.cond.not.i.i43 = icmp eq i8 %i.ak, 5
  %or.cond766 = select i1 %i.aj, i1 %or.cond.not.i.i43, i1 false
  br i1 %or.cond766, label %bb.e, label %_ZN5boost14static_strings6testTSIiEEbT_PKc.exit45

bb.e:                                             ; preds = %_ZN5boost14static_strings16to_static_stringEi.exit.i37
  %i.al = load i32, ptr %i.ag, align 1
  %i.am = xor i32 %i.al, 859125046
  %i.an = getelementptr i8, ptr %i.ag, i64 4
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = zext i8 %i.ao to i32
  %i.aq = xor i32 %i.ap, 54
  %i.ar = or i32 %i.am, %i.aq
  %i.as = icmp ne i32 %i.ar, 0
  %i.at = zext i1 %i.as to i32
  %i.au = icmp eq i32 %i.at, 0
  br label %_ZN5boost14static_strings6testTSIiEEbT_PKc.exit45

_ZN5boost14static_strings6testTSIiEEbT_PKc.exit45: ; preds = %_ZN5boost14static_strings16to_static_stringEi.exit.i37, %bb.e
  %i.av = phi i1 [ false, %_ZN5boost14static_strings16to_static_stringEi.exit.i37 ], [ %i.au, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  %i.aw = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.1364, ptr noundef nonnull @.str.13, i32 noundef 4017, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost14static_strings18testToStaticStringEv, i1 noundef zeroext %i.av) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  store i64 3978430217289085962, ptr %12, align 8
  %.sroa.2.0..sroa_idx.i51 = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 3488050, ptr %.sroa.2.0..sroa_idx.i51, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %12, i64 1 ; 3 uses
  %i.ay = call i64 @__isoc23_strtoull(ptr noundef nonnull %i.ax, ptr noundef null, i32 noundef 10) #32
  %i.az = and i64 %i.ay, 4294967295
  %i.ba = icmp eq i64 %i.az, 4294967295
  %i.bb = load i8, ptr %12, align 8
  %or.cond.not.i.i52 = icmp eq i8 %i.bb, 10
  %or.cond767.a = select i1 %i.ba, i1 %or.cond.not.i.i52, i1 false
  br i1 %or.cond767.a, label %bb.f, label %_ZN5boost14static_strings16to_static_stringEi.exit.i58

bb.f:                                             ; preds = %_ZN5boost14static_strings6testTSIiEEbT_PKc.exit45
  %i.bc = load i64, ptr %i.ax, align 1
  %i.bd = xor i64 %i.bc, 3618420444932682292
  %i.be = getelementptr i8, ptr %i.ax, i64 8
  %i.bf = load i16, ptr %i.be, align 1
  %i.bg = zext i16 %i.bf to i64
  %i.bh = xor i64 %i.bg, 13625
  %i.bi = or i64 %i.bd, %i.bh
  %i.bj = icmp ne i64 %i.bi, 0
  %i.bk = zext i1 %i.bj to i32
  %i.bl = icmp eq i32 %i.bk, 0
  br label %_ZN5boost14static_strings16to_static_stringEi.exit.i58

_ZN5boost14static_strings16to_static_stringEi.exit.i58: ; preds = %_ZN5boost14static_strings6testTSIiEEbT_PKc.exit45, %bb.f
  %i.bm = phi i1 [ false, %_ZN5boost14static_strings6testTSIiEEbT_PKc.exit45 ], [ %i.bl, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  %i.bn = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.1366, ptr noundef nonnull @.str.13, i32 noundef 4018, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost14static_strings18testToStaticStringEv, i1 noundef zeroext %i.bm) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %.sroa.5, i8 0, i64 11, i1 false)
  %.sroa.5.10..ptr12.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5, i64 10
  store i8 53, ptr %.sroa.5.10..ptr12.i.i.i.i.i.sroa_idx, align 2, !tbaa !26
  %.sroa.5.9..ptr12.i.i.i.i.i.1.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5, i64 9
  store i8 51, ptr %.sroa.5.9..ptr12.i.i.i.i.i.1.sroa_idx, align 1, !tbaa !26
  %.sroa.5.5..ptr9.i.i.i.i.i.sroa_idx858 = getelementptr inbounds nuw i8, ptr %.sroa.5, i64 5
  store <4 x i8> <i8 45, i8 54, i8 53, i8 53>, ptr %.sroa.5.5..ptr9.i.i.i.i.i.sroa_idx858, align 1, !tbaa !26
  %.sroa.5.5..ptr9.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5, i64 5
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %.sroa.5, ptr noundef nonnull align 1 dereferenceable(6) %.sroa.5.5..ptr9.i.i.i.i.i.sroa_idx, i64 6, i1 false)
  %.sroa.5.6..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5, i64 6
  store i8 0, ptr %.sroa.5.6..sroa_idx, align 2, !tbaa !26
  %.sroa.5.0..sroa.5.1..sroa.0.0.copyload.i.i.i60851 = load i56, ptr %.sroa.5, align 8
  %.sroa.5.7..ptr12.i.i.i.i.i.3.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5, i64 7
  %.sroa.5.7..sroa.5.8..sroa.2.0.copyload.i.i.i62853 = load i32, ptr %.sroa.5.7..ptr12.i.i.i.i.i.3.sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  store i8 6, ptr %11, align 8
  %.sroa_idx852 = getelementptr inbounds nuw i8, ptr %11, i64 1
  store i56 %.sroa.5.0..sroa.5.1..sroa.0.0.copyload.i.i.i60851, ptr %.sroa_idx852, align 1
  %.sroa.2.0..sroa_idx.i63 = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %.sroa.5.7..sroa.5.8..sroa.2.0.copyload.i.i.i62853, ptr %.sroa.2.0..sroa_idx.i63, align 8
  %.sroa.2.0..sroa_idx.i63.sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 12
  store i8 0, ptr %.sroa.2.0..sroa_idx.i63.sroa_idx, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %11, i64 1 ; 3 uses
  %i.bp = call i64 @__isoc23_strtoll(ptr noundef nonnull %i.bo, ptr noundef null, i32 noundef 10) #32
  %i.bq = and i64 %i.bp, 4294967295
  %i.br = icmp eq i64 %i.bq, 4294901761
  %i.bs = load i8, ptr %11, align 8
  %or.cond.not.i.i64 = icmp eq i8 %i.bs, 6
  %or.cond768.a = select i1 %i.br, i1 %or.cond.not.i.i64, i1 false
  br i1 %or.cond768.a, label %bb.g, label %_ZN5boost14static_strings16to_static_stringEi.exit.i79

bb.g:                                             ; preds = %_ZN5boost14static_strings16to_static_stringEi.exit.i58
  %i.bt = load i32, ptr %i.bo, align 1
  %i.bu = xor i32 %i.bt, 892679725
  %i.bv = getelementptr i8, ptr %i.bo, i64 4
  %i.bw = load i16, ptr %i.bv, align 1
  %i.bx = zext i16 %i.bw to i32
  %i.by = xor i32 %i.bx, 13619
  %i.bz = or i32 %i.bu, %i.by
  %i.ca = icmp ne i32 %i.bz, 0
  %i.cb = zext i1 %i.ca to i32
  %i.cc = icmp eq i32 %i.cb, 0
  br label %_ZN5boost14static_strings16to_static_stringEi.exit.i79

_ZN5boost14static_strings16to_static_stringEi.exit.i79: ; preds = %_ZN5boost14static_strings16to_static_stringEi.exit.i58, %bb.g
end_hunk_0
