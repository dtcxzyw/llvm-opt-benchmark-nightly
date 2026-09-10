Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/array_decl_plugin?download=true
inline.NumInlined: 1941
inline.NumDeleted: 828
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 19
begin_hunk_0
@.str.65 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@_ZTV17default_exception = external constant { [6 x ptr] }, align 8
@_ZTVNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE = linkonce_odr constant { [3 x ptr] } { [3 x ptr] [ptr null, ptr @_ZTINSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, ptr @_ZNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11_M_overflowEv] }, comdat, align 8
@_ZTINSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, ptr @_ZTINSt8__format9_Buf_sinkIcEE }, comdat, align 8
@_ZTSNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE = linkonce_odr constant [78 x i8] c"NSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE\00", comdat, align 1
@_ZTINSt8__format9_Buf_sinkIcEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSNSt8__format9_Buf_sinkIcEE, ptr @_ZTINSt8__format5_SinkIcEE }, comdat, align 8
@_ZTSNSt8__format9_Buf_sinkIcEE = linkonce_odr constant [27 x i8] c"NSt8__format9_Buf_sinkIcEE\00", comdat, align 1
@_ZTINSt8__format5_SinkIcEE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSNSt8__format5_SinkIcEE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSNSt8__format5_SinkIcEE = linkonce_odr constant [23 x i8] c"NSt8__format5_SinkIcEE\00", comdat, align 1
@.str.66 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@_ZTVNSt8__format10_Iter_sinkIcNS_10_Sink_iterIcEEEE = linkonce_odr constant { [3 x ptr] } { [3 x ptr] [ptr null, ptr @_ZTINSt8__format10_Iter_sinkIcNS_10_Sink_iterIcEEEE, ptr @_ZNSt8__format10_Iter_sinkIcNS_10_Sink_iterIcEEE11_M_overflowEv] }, comdat, align 8
@_ZTINSt8__format10_Iter_sinkIcNS_10_Sink_iterIcEEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSNSt8__format10_Iter_sinkIcNS_10_Sink_iterIcEEEE, ptr @_ZTINSt8__format9_Buf_sinkIcEE }, comdat, align 8
@_ZTSNSt8__format10_Iter_sinkIcNS_10_Sink_iterIcEEEE = linkonce_odr constant [48 x i8] c"NSt8__format10_Iter_sinkIcNS_10_Sink_iterIcEEEE\00", comdat, align 1
@_ZTVNSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcEE = linkonce_odr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTINSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcEE, ptr @_ZNSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcE11_M_on_charsEPKc, ptr @_ZNSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcE13_M_format_argEm] }, comdat, align 8
@_ZTINSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSNSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcEE, ptr @_ZTINSt8__format8_ScannerIcEE }, comdat, align 8
@_ZTSNSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcEE = linkonce_odr constant [57 x i8] c"NSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcEE\00", comdat, align 1
@_ZTINSt8__format8_ScannerIcEE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSNSt8__format8_ScannerIcEE }, comdat, align 8
@_ZTSNSt8__format8_ScannerIcEE = linkonce_odr constant [26 x i8] c"NSt8__format8_ScannerIcEE\00", comdat, align 1
@.str.67 = private unnamed_addr constant [24 x i8] c"basic_string_view::copy\00", align 1
@.str.68 = private unnamed_addr constant [49 x i8] c"%s: __pos (which is %zu) > __size (which is %zu)\00", align 1
@.str.69 = private unnamed_addr constant [46 x i8] c"format error: invalid arg-id in format string\00", align 1
@_ZTISt12format_error = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt12format_error, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTSSt12format_error = linkonce_odr constant [17 x i8] c"St12format_error\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@_ZTVSt12format_error = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTISt12format_error, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZNSt12format_errorD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@.str.70 = private unnamed_addr constant [73 x i8] c"format error: format-spec contains invalid formatting options for 'bool'\00", align 1
@.str.71 = private unnamed_addr constant [54 x i8] c"format error: width must be non-zero in format string\00", align 1
@.str.72 = private unnamed_addr constant [56 x i8] c"format error: invalid width or precision in format-spec\00", align 1
@_ZNSt8__detail31__from_chars_alnum_to_val_tableILb0EE5valueE = linkonce_odr local_unnamed_addr constant %"struct.std::__detail::__from_chars_alnum_to_val_table<false>::type" { [256 x i8] c"\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\00\01\02\03\04\05\06\07\08\09\7F\7F\7F\7F\7F\7F\7F\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#\7F\7F\7F\7F\7F\7F\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F\7F" }, comdat, align 1
@.str.73 = private unnamed_addr constant [45 x i8] c"format error: unmatched '{' in format string\00", align 1
@.str.74 = private unnamed_addr constant [58 x i8] c"format error: conflicting indexing style in format string\00", align 1
@.str.75 = private unnamed_addr constant [42 x i8] c"format error: failed to parse format-spec\00", align 1
@.str.76 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.77 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.78 = private unnamed_addr constant [3 x i8] c"0b\00", align 1
@.str.79 = private unnamed_addr constant [3 x i8] c"0B\00", align 1
@.str.80 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.81 = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@.str.82 = private unnamed_addr constant [3 x i8] c"0X\00", align 1
@.str.83 = private unnamed_addr constant [53 x i8] c"format error: integer not representable as character\00", align 1
@.str.85 = private unnamed_addr constant [82 x i8] c"format error: argument used for width or precision must be a non-negative integer\00", align 1
@.str.86 = private unnamed_addr constant [26 x i8] c"basic_string_view::substr\00", align 1
@_ZNSt7__cxx118numpunctIcE2idE = external global %"class.std::locale::id", align 8
@.str.87 = private unnamed_addr constant [25 x i8] c"basic_string::_M_replace\00", align 1
@.str.88 = private unnamed_addr constant [74 x i8] c"format error: format-spec contains invalid formatting options for 'charT'\00", align 1
@.str.89 = private unnamed_addr constant [59 x i8] c"format error: missing precision after '.' in format string\00", align 1
@.str.90 = private unnamed_addr constant [29 x i8] c"basic_string::_M_replace_aux\00", align 1
@.str.91 = private unnamed_addr constant [21 x i8] c"basic_string::insert\00", align 1
@.str.92 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@__const._ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits = private unnamed_addr constant [16 x i8] c"0123456789abcdef", align 16
@__const._ZNSt8__detail18__to_chars_10_implIoEEvPcjT_.__digits = private unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 16
@.str.93 = private unnamed_addr constant [45 x i8] c"format error: unmatched '}' in format string\00", align 1
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8

@_ZN17array_decl_pluginC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN17array_decl_pluginC2Ev
@_ZN10array_utilC1ER11ast_manager = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN10array_utilC2ER11ast_manager

; Function Attrs: mustprogress uwtable
define hidden void @_ZN17array_decl_pluginC2Ev(ptr noundef nonnull align 8 dereferenceable(128) initializes((0, 20)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !38
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 -1, ptr %i.b, align 8, !tbaa !39
  store ptr getelementptr inbounds nuw inrange(-16, 168) (i8, ptr @_ZTV17array_decl_plugin, i64 16), ptr %0, align 8, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.1)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull @.str.2)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.3)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.4)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.5)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.6)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.7)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.8)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.9)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.10)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull @.str.11)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.12)
  ret void
}

declare void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN17array_decl_plugin7mk_sortEijPK9parameter(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca [2 x %class.parameter], align 16    ; 11 uses
  %5 = alloca %class.symbol, align 8              ; 6 uses
  %6 = alloca %class.sort_info, align 8           ; 10 uses
  %7 = alloca %class.symbol, align 8              ; 6 uses
  %8 = alloca %class.sort_info, align 8           ; 10 uses
  %9 = alloca %class.symbol, align 8              ; 6 uses
  %10 = alloca %class.sort_info, align 8          ; 10 uses
  %11 = alloca %class.rational, align 8           ; 22 uses
  %12 = alloca %class.rational, align 8           ; 18 uses
  %13 = alloca %class.rational, align 8           ; 15 uses
  %14 = alloca %class.rational, align 8           ; 14 uses
  %15 = alloca %class.rational, align 8           ; 14 uses
  %16 = alloca %class.rational, align 8           ; 14 uses
  %17 = alloca %class.rational, align 8           ; 16 uses
  %18 = alloca %class.symbol, align 8             ; 6 uses
  %19 = alloca %class.sort_info, align 8          ; 10 uses
  %20 = alloca %class.symbol, align 8             ; 6 uses
  %21 = alloca %class.sort_info, align 8          ; 10 uses
  %i.a = icmp eq i32 %1, 1
  br i1 %i.a, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %2, 1
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38
  tail call void @_ZN11ast_manager15raise_exceptionEPKc(ptr noundef nonnull align 8 dereferenceable(952) %i.c, ptr noundef nonnull @.str.13) #24
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZN9parameterC1ERKS_(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 816
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !105
  store ptr %i.h, ptr %i.d, align 8, !tbaa !108
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 72
  store i8 1, ptr %i.i, align 8, !tbaa !110
  %i.j = load ptr, ptr %0, align 8, !tbaa !41
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = invoke noundef ptr %i.l(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef 0, i32 noundef 2, ptr noundef nonnull %4)
          to label %bb.f unwind label %.loopexit.loopexit

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @_ZN9parameterD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.n) #25
  call void @_ZN9parameterD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.cw

bb.g:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @_ZN9parameterD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.q) #25
  call void @_ZN9parameterD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #25
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.g
  %.pn84 = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.p, %.loopexit.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.cx

bb.h:                                             ; preds = %bb.a
  %i.r = icmp ult i32 %2, 2
  br i1 %i.r, label %bb.i, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.h
  %wide.trip.count = zext i32 %2 to i64           ; 3 uses
  br label %.preheader

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !38
  tail call void @_ZN11ast_manager15raise_exceptionEPKc(ptr noundef nonnull align 8 dereferenceable(952) %i.t, ptr noundef nonnull @.str.13) #24
  unreachable

bb.j:                                             ; preds = %_ZNK9parameter7get_astEv.exit88
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.k, label %.preheader, !llvm.loop !281

bb.k:                                             ; preds = %bb.j
  %i.u = add i32 %2, -1
  %i.v = zext i32 %i.u to i64                     ; 2 uses
  %i.w = getelementptr inbounds nuw [40 x i8], ptr %3, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load i8, ptr %i.x, align 8, !tbaa !110
  switch i8 %i.y, label %bb.l [
    i8 1, label %_ZNK9parameter7get_astEv.exit
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  ], !prof !112

bb.l:                                             ; preds = %bb.k
  %i.z = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.z, align 8, !tbaa !41
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr @.str.61, ptr %i.aa, align 8, !tbaa !115
  tail call void @__cxa_throw(ptr nonnull %i.z, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #24
  unreachable

_ZSt26__throw_bad_variant_accessb.exit.i.i.i:     ; preds = %bb.k
  %i.ab = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.ab, align 8, !tbaa !41
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr @.str.60, ptr %i.ac, align 8, !tbaa !115
  tail call void @__cxa_throw(ptr nonnull %i.ab, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #24
  unreachable

_ZNK9parameter7get_astEv.exit:                    ; preds = %bb.k
  %i.ad = load ptr, ptr %i.w, align 8, !tbaa !116
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !120 ; 3 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %_ZNK4sort11is_infiniteEv.exit.thread.preheader, label %_ZNK4sort11is_infiniteEv.exit

_ZNK4sort11is_infiniteEv.exit:                    ; preds = %_ZNK9parameter7get_astEv.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !290
  %.off = add i32 %i.ai, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %_ZNK4sort11is_infiniteEv.exit.thread.preheader, label %bb.n

.preheader:                                       ; preds = %.preheader.preheader, %bb.j
  %indvars.iv = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next, %bb.j ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [40 x i8], ptr %3, i64 %indvars.iv ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !110
  %i.am = icmp eq i8 %i.al, 1
  br i1 %i.am, label %_ZNK9parameter7get_astEv.exit88, label %bb.m

_ZNK9parameter7get_astEv.exit88:                  ; preds = %.preheader
  %i.an = load ptr, ptr %i.aj, align 8, !tbaa !116
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = and i32 %i.ap, 65535
  %i.ar = icmp eq i32 %i.aq, 3
  br i1 %i.ar, label %bb.j, label %bb.m

bb.m:                                             ; preds = %_ZNK9parameter7get_astEv.exit88, %.preheader
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !38
  tail call void @_ZN11ast_manager15raise_exceptionEPKc(ptr noundef nonnull align 8 dereferenceable(952) %i.at, ptr noundef nonnull @.str.14) #24
  unreachable

bb.n:                                             ; preds = %_ZNK4sort11is_infiniteEv.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.av = load i64, ptr %i.au, align 8, !tbaa !291
  %i.aw = icmp eq i64 %i.av, 1
  br i1 %i.aw, label %bb.o, label %_ZNK4sort11is_infiniteEv.exit.thread.preheader

_ZNK4sort11is_infiniteEv.exit.thread.preheader:   ; preds = %_ZNK4sort11is_infiniteEv.exit, %_ZNK9parameter7get_astEv.exit, %bb.n
  br label %_ZNK4sort11is_infiniteEv.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !38 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.15)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !39
  call void @_ZN9decl_infoC2EiijPK9parameterb(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.ba, i32 noundef 0, i32 noundef %2, ptr noundef nonnull %3, i1 noundef zeroext false)
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 0, ptr %i.bb, align 8, !tbaa !290
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 1, ptr %i.bc, align 8, !tbaa !291
  %i.bd = load i32, ptr %6, align 8, !tbaa !124
  %i.be = icmp eq i32 %i.bd, -1
  br i1 %i.be, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bf = invoke noundef ptr @_ZN11ast_manager21mk_uninterpreted_sortERK6symboljPK9parameter(ptr noundef nonnull align 8 dereferenceable(952) %i.ay, ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 0, ptr noundef null)
          to label %_ZN11ast_manager7mk_sortERK6symbolRK9sort_info.exit unwind label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.bg = invoke noundef ptr @_ZN11ast_manager7mk_sortERK6symbolP9sort_info(ptr noundef nonnull align 8 dereferenceable(952) %i.ay, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(40) %6)
          to label %_ZN11ast_manager7mk_sortERK6symbolRK9sort_info.exit unwind label %bb.s

_ZN11ast_manager7mk_sortERK6symbolRK9sort_info.exit: ; preds = %bb.p, %bb.q
  %.0.i = phi ptr [ %i.bf, %bb.p ], [ %i.bg, %bb.q ]
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !125 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i, label %_ZN9decl_infoD2Ev.exit, label %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i

_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i: ; preds = %_ZN11ast_manager7mk_sortERK6symbolRK9sort_info.exit
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !126 ; 2 uses
  %.not5.i.i.i.i.i.i.i = icmp eq i32 %i.bk, 0
  br i1 %.not5.i.i.i.i.i.i.i, label %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i = phi i32 [ %i.bm, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bk, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i ]
  %.046.i.i.i.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bi, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i ] ; 2 uses
  call void @_ZN9parameterD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %.046.i.i.i.i.i.i.i) #25
  %i.bl = getelementptr inbounds nuw i8, ptr %.046.i.i.i.i.i.i.i, i64 40
  %i.bm = add i32 %.07.i.i.i.i.i.i.i, -1          ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.bm, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !0

_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.bh, align 8, !tbaa !125
  br label %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i.i

_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i.i: ; preds = %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i.i, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i
  %i.bn = phi ptr [ %.pre.i.i.i, %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i.i ], [ %i.bi, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i ]
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.bo)
          to label %_ZN9decl_infoD2Ev.exit unwind label %bb.r

bb.r:                                             ; preds = %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i.i
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  call void @__clang_call_terminate(ptr %i.bq) #26
  unreachable

_ZN9decl_infoD2Ev.exit:                           ; preds = %_ZN11ast_manager7mk_sortERK6symbolRK9sort_info.exit, %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.cw

bb.s:                                             ; preds = %bb.q, %bb.p
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9decl_infoD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.cx

bb.t:                                             ; preds = %_ZNK4sort11is_very_bigEv.exit93.thread
  br i1 %spec.select, label %.thread, label %bb.z

_ZNK4sort11is_infiniteEv.exit.thread:             ; preds = %_ZNK4sort11is_infiniteEv.exit.thread.backedge, %_ZNK4sort11is_infiniteEv.exit.thread.preheader
  %indvars.iv216 = phi i64 [ 0, %_ZNK4sort11is_infiniteEv.exit.thread.preheader ], [ %indvars.iv216.be, %_ZNK4sort11is_infiniteEv.exit.thread.backedge ] ; 3 uses
  %.046210 = phi i1 [ false, %_ZNK4sort11is_infiniteEv.exit.thread.preheader ], [ %.046210.be, %_ZNK4sort11is_infiniteEv.exit.thread.backedge ]
  %.047209 = phi i1 [ false, %_ZNK4sort11is_infiniteEv.exit.thread.preheader ], [ %.047209.be, %_ZNK4sort11is_infiniteEv.exit.thread.backedge ]
  %i.bs = getelementptr inbounds nuw [40 x i8], ptr %3, i64 %indvars.iv216 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bu = load i8, ptr %i.bt, align 8, !tbaa !110
  switch i8 %i.bu, label %bb.u [
    i8 1, label %_ZNK9parameter7get_astEv.exit91
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i90
  ], !prof !112

bb.u:                                             ; preds = %_ZNK4sort11is_infiniteEv.exit.thread
  %i.bv = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.bv, align 8, !tbaa !41
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr @.str.61, ptr %i.bw, align 8, !tbaa !115
  tail call void @__cxa_throw(ptr nonnull %i.bv, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #24
  unreachable

_ZSt26__throw_bad_variant_accessb.exit.i.i.i90:   ; preds = %_ZNK4sort11is_infiniteEv.exit.thread
  %i.bx = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.bx, align 8, !tbaa !41
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr @.str.60, ptr %i.by, align 8, !tbaa !115
  tail call void @__cxa_throw(ptr nonnull %i.bx, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #24
  unreachable

_ZNK9parameter7get_astEv.exit91:                  ; preds = %_ZNK4sort11is_infiniteEv.exit.thread
  %i.bz = load ptr, ptr %i.bs, align 8, !tbaa !116
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !120 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %_ZNK4sort11is_very_bigEv.exit93.thread.thread, label %_ZNK4sort11is_very_bigEv.exit93.thread

_ZNK4sort11is_very_bigEv.exit93.thread:           ; preds = %_ZNK9parameter7get_astEv.exit91
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !290
  %.fr202 = freeze i32 %i.ce                      ; 2 uses
  %i.cf = icmp eq i32 %.fr202, 2
  %spec.select = select i1 %i.cf, i1 true, i1 %.047209 ; 2 uses
  %i.cg = icmp eq i32 %.fr202, 1
  %spec.select201 = select i1 %i.cg, i1 true, i1 %.046210 ; 2 uses
  %indvars.iv.next217 = add nuw nsw i64 %indvars.iv216, 1 ; 2 uses
  %exitcond219.not = icmp eq i64 %indvars.iv.next217, %wide.trip.count
  br i1 %exitcond219.not, label %bb.t, label %_ZNK4sort11is_infiniteEv.exit.thread.backedge

_ZNK4sort11is_infiniteEv.exit.thread.backedge:    ; preds = %_ZNK4sort11is_very_bigEv.exit93.thread, %_ZNK4sort11is_very_bigEv.exit93.thread.thread
  %indvars.iv216.be = phi i64 [ %indvars.iv.next217242, %_ZNK4sort11is_very_bigEv.exit93.thread.thread ], [ %indvars.iv.next217, %_ZNK4sort11is_very_bigEv.exit93.thread ]
  %.046210.be = phi i1 [ true, %_ZNK4sort11is_very_bigEv.exit93.thread.thread ], [ %spec.select201, %_ZNK4sort11is_very_bigEv.exit93.thread ]
  %.047209.be = phi i1 [ true, %_ZNK4sort11is_very_bigEv.exit93.thread.thread ], [ %spec.select, %_ZNK4sort11is_very_bigEv.exit93.thread ]
end_hunk_0
begin_hunk_1_@_ZN17array_decl_plugin7mk_sortEijPK9parameter:bb.a
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !38 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull @.str.15)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !39
  call void @_ZN9decl_infoC2EiijPK9parameterb(ptr noundef nonnull align 8 dereferenceable(40) %8, i32 noundef %i.ck, i32 noundef 0, i32 noundef %2, ptr noundef nonnull %3, i1 noundef zeroext false)
  %i.cl = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i32 2, ptr %i.cl, align 8, !tbaa !290
  %i.cm = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 0, ptr %i.cm, align 8, !tbaa !291
  %i.cn = load i32, ptr %8, align 8, !tbaa !124
  %i.co = icmp eq i32 %i.cn, -1
  br i1 %i.co, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.thread
  %i.cp = invoke noundef ptr @_ZN11ast_manager21mk_uninterpreted_sortERK6symboljPK9parameter(ptr noundef nonnull align 8 dereferenceable(952) %i.ci, ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 0, ptr noundef null)
          to label %_ZN11ast_manager7mk_sortERK6symbolRK9sort_info.exit97 unwind label %bb.y

bb.w:                                             ; preds = %.thread
  %i.cq = invoke noundef ptr @_ZN11ast_manager7mk_sortERK6symbolP9sort_info(ptr noundef nonnull align 8 dereferenceable(952) %i.ci, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(40) %8)
          to label %_ZN11ast_manager7mk_sortERK6symbolRK9sort_info.exit97 unwind label %bb.y

_ZN11ast_manager7mk_sortERK6symbolRK9sort_info.exit97: ; preds = %bb.v, %bb.w
  %.0.i94 = phi ptr [ %i.cp, %bb.v ], [ %i.cq, %bb.w ]
  %i.cr = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !125 ; 4 uses
  %.not.i.i.i98 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i98, label %_ZN9decl_infoD2Ev.exit108, label %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i99

_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i99: ; preds = %_ZN11ast_manager7mk_sortERK6symbolRK9sort_info.exit97
  %i.ct = getelementptr inbounds i8, ptr %i.cs, i64 -4
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !126 ; 2 uses
  %.not5.i.i.i.i.i.i.i100 = icmp eq i32 %i.cu, 0
  br i1 %.not5.i.i.i.i.i.i.i100, label %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i.i107, label %.lr.ph.i.i.i.i.i.i.i101

.lr.ph.i.i.i.i.i.i.i101:                          ; preds = %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i99, %.lr.ph.i.i.i.i.i.i.i101
  %.07.i.i.i.i.i.i.i102 = phi i32 [ %i.cw, %.lr.ph.i.i.i.i.i.i.i101 ], [ %i.cu, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i99 ]
  %.046.i.i.i.i.i.i.i103 = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i.i.i101 ], [ %i.cs, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i99 ] ; 2 uses
  call void @_ZN9parameterD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %.046.i.i.i.i.i.i.i103) #25
  %i.cv = getelementptr inbounds nuw i8, ptr %.046.i.i.i.i.i.i.i103, i64 40
  %i.cw = add i32 %.07.i.i.i.i.i.i.i102, -1       ; 2 uses
  %.not.i.i.i.i.i.i.i104 = icmp eq i32 %i.cw, 0
  br i1 %.not.i.i.i.i.i.i.i104, label %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i.i105, label %.lr.ph.i.i.i.i.i.i.i101, !llvm.loop !0

_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i.i105: ; preds = %.lr.ph.i.i.i.i.i.i.i101
  %.pre.i.i.i106 = load ptr, ptr %i.cr, align 8, !tbaa !125
  br label %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i.i107

_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i.i107: ; preds = %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i.i105, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i99
  %i.cx = phi ptr [ %.pre.i.i.i106, %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i.i105 ], [ %i.cs, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i99 ]
  %i.cy = getelementptr inbounds i8, ptr %i.cx, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.cy)
          to label %_ZN9decl_infoD2Ev.exit108 unwind label %bb.x

bb.x:                                             ; preds = %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i.i107
  %i.cz = landingpad { ptr, i32 }
          catch ptr null
  %i.da = extractvalue { ptr, i32 } %i.cz, 0
  call void @__clang_call_terminate(ptr %i.da) #26
  unreachable

_ZN9decl_infoD2Ev.exit108:                        ; preds = %_ZN11ast_manager7mk_sortERK6symbolRK9sort_info.exit97, %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i.i107
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.cw

bb.y:                                             ; preds = %bb.w, %bb.v
  %i.db = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9decl_infoD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.cx

bb.z:                                             ; preds = %bb.t
  br i1 %spec.select201, label %bb.aa, label %.lr.ph

bb.aa:                                            ; preds = %bb.z
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !38 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull @.str.15)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.df = load i32, ptr %i.de, align 8, !tbaa !39
  call void @_ZN9decl_infoC2EiijPK9parameterb(ptr noundef nonnull align 8 dereferenceable(40) %10, i32 noundef %i.df, i32 noundef 0, i32 noundef %2, ptr noundef nonnull %3, i1 noundef zeroext false)
  %i.dg = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i32 1, ptr %i.dg, align 8, !tbaa !292
  %.sroa.5196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i64 0, ptr %.sroa.5196.0..sroa_idx, align 8, !tbaa !127
  %i.dh = load i32, ptr %10, align 8, !tbaa !124
  %i.di = icmp eq i32 %i.dh, -1
  br i1 %i.di, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dj = invoke noundef ptr @_ZN11ast_manager21mk_uninterpreted_sortERK6symboljPK9parameter(ptr noundef nonnull align 8 dereferenceable(952) %i.dd, ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 0, ptr noundef null)
          to label %_ZN11ast_manager7mk_sortERK6symbolRK9sort_info.exit112 unwind label %bb.ae

bb.ac:                                            ; preds = %bb.aa
  %i.dk = invoke noundef ptr @_ZN11ast_manager7mk_sortERK6symbolP9sort_info(ptr noundef nonnull align 8 dereferenceable(952) %i.dd, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(40) %10)
          to label %_ZN11ast_manager7mk_sortERK6symbolRK9sort_info.exit112 unwind label %bb.ae

_ZN11ast_manager7mk_sortERK6symbolRK9sort_info.exit112: ; preds = %bb.ab, %bb.ac
  %.0.i109 = phi ptr [ %i.dj, %bb.ab ], [ %i.dk, %bb.ac ]
  %i.dl = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !125 ; 4 uses
  %.not.i.i.i113 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i113, label %_ZN9decl_infoD2Ev.exit123, label %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i114

_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i114: ; preds = %_ZN11ast_manager7mk_sortERK6symbolRK9sort_info.exit112
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 -4
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !126 ; 2 uses
  %.not5.i.i.i.i.i.i.i115 = icmp eq i32 %i.do, 0
  br i1 %.not5.i.i.i.i.i.i.i115, label %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i.i122, label %.lr.ph.i.i.i.i.i.i.i116

.lr.ph.i.i.i.i.i.i.i116:                          ; preds = %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i114, %.lr.ph.i.i.i.i.i.i.i116
  %.07.i.i.i.i.i.i.i117 = phi i32 [ %i.dq, %.lr.ph.i.i.i.i.i.i.i116 ], [ %i.do, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i114 ]
  %.046.i.i.i.i.i.i.i118 = phi ptr [ %i.dp, %.lr.ph.i.i.i.i.i.i.i116 ], [ %i.dm, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i114 ] ; 2 uses
  call void @_ZN9parameterD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %.046.i.i.i.i.i.i.i118) #25
  %i.dp = getelementptr inbounds nuw i8, ptr %.046.i.i.i.i.i.i.i118, i64 40
  %i.dq = add i32 %.07.i.i.i.i.i.i.i117, -1       ; 2 uses
  %.not.i.i.i.i.i.i.i119 = icmp eq i32 %i.dq, 0
  br i1 %.not.i.i.i.i.i.i.i119, label %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i.i120, label %.lr.ph.i.i.i.i.i.i.i116, !llvm.loop !0

_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i.i120: ; preds = %.lr.ph.i.i.i.i.i.i.i116
  %.pre.i.i.i121 = load ptr, ptr %i.dl, align 8, !tbaa !125
  br label %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i.i122

_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i.i122: ; preds = %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i.i120, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i114
  %i.dr = phi ptr [ %.pre.i.i.i121, %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i.i120 ], [ %i.dm, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i114 ]
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ds)
          to label %_ZN9decl_infoD2Ev.exit123 unwind label %bb.ad

bb.ad:                                            ; preds = %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i.i122
  %i.dt = landingpad { ptr, i32 }
          catch ptr null
  %i.du = extractvalue { ptr, i32 } %i.dt, 0
  call void @__clang_call_terminate(ptr %i.du) #26
  unreachable

_ZN9decl_infoD2Ev.exit123:                        ; preds = %_ZN11ast_manager7mk_sortERK6symbolRK9sort_info.exit112, %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i.i122
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.cw

bb.ae:                                            ; preds = %bb.ac, %bb.ab
  %i.dv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9decl_infoD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.cx

.lr.ph:                                           ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.dw = getelementptr inbounds nuw i8, ptr %11, i64 4 ; 4 uses
  %i.dx = load i8, ptr %i.dw, align 4
  %i.dy = and i8 %i.dx, -4
  %i.dz = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr null, ptr %i.dz, align 8, !tbaa !130
  %i.ea = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 9 uses
  store i32 1, ptr %i.ea, align 8, !tbaa !131
  %i.eb = getelementptr inbounds nuw i8, ptr %11, i64 20 ; 9 uses
  %i.ec = load i8, ptr %i.eb, align 4
  %i.ed = and i8 %i.ec, -4
  store i8 %i.ed, ptr %i.eb, align 4
  %i.ee = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr null, ptr %i.ee, align 8, !tbaa !130
  %i.ef = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !133
  store i32 1, ptr %11, align 8, !tbaa !131
  store i8 %i.dy, ptr %i.dw, align 4
  call void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.ef, ptr noundef nonnull align 8 dereferenceable(16) %i.ea)
  store i32 1, ptr %i.ea, align 8, !tbaa !131
  %i.eg = load i8, ptr %i.eb, align 4
  %i.eh = and i8 %i.eg, -2
  store i8 %i.eh, ptr %i.eb, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  store i32 0, ptr %12, align 8, !tbaa !131
  %i.ei = getelementptr inbounds nuw i8, ptr %12, i64 4 ; 6 uses
  %i.ej = load i8, ptr %i.ei, align 4
  %i.ek = and i8 %i.ej, -4
  store i8 %i.ek, ptr %i.ei, align 4
  %i.el = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 5 uses
  store ptr null, ptr %i.el, align 8, !tbaa !130
  %i.em = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  store i32 1, ptr %i.em, align 8, !tbaa !131
  %i.en = getelementptr inbounds nuw i8, ptr %12, i64 20 ; 7 uses
  %i.eo = load i8, ptr %i.en, align 4
  %i.ep = and i8 %i.eo, -4
  store i8 %i.ep, ptr %i.en, align 4
  %i.eq = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 5 uses
  store ptr null, ptr %i.eq, align 8, !tbaa !130
  %i.er = getelementptr inbounds nuw i8, ptr %13, i64 4 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.et = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %13, i64 20 ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %13, i64 24
  br label %bb.af

._crit_edge:                                      ; preds = %_ZN8rationalD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  %i.ew = getelementptr inbounds nuw i8, ptr %14, i64 4 ; 3 uses
  %i.ex = load i8, ptr %i.ew, align 4
  %i.ey = and i8 %i.ex, -4
  %i.ez = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr null, ptr %i.ez, align 8, !tbaa !130
  %i.fa = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  store i32 1, ptr %i.fa, align 8, !tbaa !131
  %i.fb = getelementptr inbounds nuw i8, ptr %14, i64 20 ; 4 uses
  %i.fc = load i8, ptr %i.fb, align 4
  %i.fd = and i8 %i.fc, -4
  store i8 %i.fd, ptr %i.fb, align 4
  %i.fe = getelementptr inbounds nuw i8, ptr %14, i64 24
  store ptr null, ptr %i.fe, align 8, !tbaa !130
  %i.ff = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !133
  store i32 128, ptr %14, align 8, !tbaa !131
  store i8 %i.ey, ptr %i.ew, align 4
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.ff, ptr noundef nonnull align 8 dereferenceable(16) %i.fa)
          to label %bb.ap unwind label %bb.be

bb.af:                                            ; preds = %.lr.ph, %_ZN8rationalD2Ev.exit
  %indvars.iv220 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next221, %_ZN8rationalD2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  %i.fg = getelementptr inbounds nuw [40 x i8], ptr %3, i64 %indvars.iv220 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 32
  %i.fi = load i8, ptr %i.fh, align 8, !tbaa !110
  switch i8 %i.fi, label %.invoke.loopexit245 [
    i8 1, label %bb.ag
    i8 -1, label %.invoke
  ], !prof !112

.invoke.loopexit245:                              ; preds = %bb.af
  br label %.invoke

.invoke:                                          ; preds = %bb.af, %.invoke.loopexit245
  %.str.60.sink = phi ptr [ @.str.61, %.invoke.loopexit245 ], [ @.str.60, %bb.af ]
  %i.fj = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.fj, align 8, !tbaa !41
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  store ptr %.str.60.sink, ptr %i.fk, align 8, !tbaa !115
  invoke void @__cxa_throw(ptr nonnull %i.fj, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #24
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.fl = load ptr, ptr %i.fg, align 8, !tbaa !116
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !120
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 32
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !291 ; 3 uses
  store i32 0, ptr %13, align 8, !tbaa !131
  %i.fq = load i8, ptr %i.er, align 4
  %i.fr = and i8 %i.fq, -4                        ; 2 uses
  store i8 %i.fr, ptr %i.er, align 4
  store ptr null, ptr %i.es, align 8, !tbaa !130
  store i32 1, ptr %i.et, align 8, !tbaa !131
  %i.fs = load i8, ptr %i.eu, align 4
  %i.ft = and i8 %i.fs, -4
  store i8 %i.ft, ptr %i.eu, align 4
  store ptr null, ptr %i.ev, align 8, !tbaa !130
  %i.fu = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !133 ; 2 uses
  %i.fv = icmp ult i64 %i.fp, 2147483647
  br i1 %i.fv, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fw = trunc nuw nsw i64 %i.fp to i32
  store i32 %i.fw, ptr %13, align 8, !tbaa !131
  store i8 %i.fr, ptr %i.er, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpqm.exit.i

bb.ai:                                            ; preds = %bb.ag
  invoke void @_ZN11mpz_managerILb1EE12set_big_ui64ER3mpzm(ptr noundef nonnull align 8 dereferenceable(728) %i.fu, ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef %i.fp)
          to label %_ZN11mpq_managerILb1EE3setER3mpqm.exit.i unwind label %.loopexit203

_ZN11mpq_managerILb1EE3setER3mpqm.exit.i:         ; preds = %bb.ai, %bb.ah
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.fu, ptr noundef nonnull align 8 dereferenceable(16) %i.et)
          to label %bb.aj unwind label %.loopexit203

bb.aj:                                            ; preds = %_ZN11mpq_managerILb1EE3setER3mpqm.exit.i
  store i32 1, ptr %i.et, align 8, !tbaa !131
  %i.fx = load i8, ptr %i.eu, align 4
  %i.fy = and i8 %i.fx, -2
  store i8 %i.fy, ptr %i.eu, align 4
  %i.fz = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !133 ; 3 uses
  %i.ga = load i8, ptr %i.eb, align 4
  %i.gb = and i8 %i.ga, 1
  %i.gc = icmp eq i8 %i.gb, 0
  %i.gd = load i32, ptr %i.ea, align 8
  %i.ge = icmp eq i32 %i.gd, 1
  %i.gf = select i1 %i.gc, i1 %i.ge, i1 false
  br i1 %i.gf, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN11mpz_managerILb1EE3mulERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.fz, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %.noexc131 unwind label %bb.an

.noexc131:                                        ; preds = %bb.ak
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.fz, ptr noundef nonnull align 8 dereferenceable(16) %i.ea)
          to label %.noexc132 unwind label %bb.an

.noexc132:                                        ; preds = %.noexc131
  store i32 1, ptr %i.ea, align 8, !tbaa !131
  %i.gg = load i8, ptr %i.eb, align 4
  %i.gh = and i8 %i.gg, -2
  store i8 %i.gh, ptr %i.eb, align 4
  br label %_ZN8rationalmLERKS_.exit

bb.al:                                            ; preds = %bb.aj
  invoke void @_ZN11mpq_managerILb1EE7rat_mulERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.fz, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %_ZN8rationalmLERKS_.exit unwind label %bb.an

_ZN8rationalmLERKS_.exit:                         ; preds = %.noexc132, %bb.al
  %i.gi = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !133 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.gi, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %.noexc.i unwind label %bb.am

.noexc.i:                                         ; preds = %_ZN8rationalmLERKS_.exit
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.gi, ptr noundef nonnull align 8 dereferenceable(16) %i.et)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.am

bb.am:                                            ; preds = %.noexc.i, %_ZN8rationalmLERKS_.exit
  %i.gj = landingpad { ptr, i32 }
          catch ptr null
  %i.gk = extractvalue { ptr, i32 } %i.gj, 0
  call void @__clang_call_terminate(ptr %i.gk) #26
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  %indvars.iv.next221 = add nuw nsw i64 %indvars.iv220, 1 ; 2 uses
  %exitcond224.not = icmp eq i64 %indvars.iv.next221, %i.v
  br i1 %exitcond224.not, label %._crit_edge, label %bb.af, !llvm.loop !283

.loopexit203:                                     ; preds = %bb.ai, %_ZN11mpq_managerILb1EE3setER3mpqm.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.an:                                            ; preds = %bb.al, %.noexc131, %bb.ak
  %i.gl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %13) #25
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit203, %.loopexit.split-lp, %bb.an
  %.pn78 = phi { ptr, i32 } [ %i.gl, %bb.an ], [ %lpad.loopexit, %.loopexit203 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %bb.cv

bb.ap:                                            ; preds = %._crit_edge
  store i32 1, ptr %i.fa, align 8, !tbaa !131
  %i.gm = load i8, ptr %i.fb, align 4
  %i.gn = and i8 %i.gm, -2
  store i8 %i.gn, ptr %i.fb, align 4
  %i.go = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !133 ; 2 uses
  %i.gp = load i8, ptr %i.eb, align 4
  %i.gq = and i8 %i.gp, 1
  %i.gr = icmp eq i8 %i.gq, 0
  %i.gs = load i32, ptr %i.ea, align 8
  %i.gt = icmp eq i32 %i.gs, 1
  %i.gu = select i1 %i.gr, i1 %i.gt, i1 false
  br i1 %i.gu, label %bb.aq, label %bb.au

bb.aq:                                            ; preds = %bb.ap
  %i.gv = load i8, ptr %i.ew, align 4
  %i.gw = and i8 %i.gv, 1
  %i.gx = icmp eq i8 %i.gw, 0
  br i1 %i.gx, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.gy = load i8, ptr %i.dw, align 4
  %i.gz = and i8 %i.gy, 1
  %i.ha = icmp eq i8 %i.gz, 0
  br i1 %i.ha, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.hb = load i32, ptr %14, align 8, !tbaa !131
  %i.hc = load i32, ptr %11, align 8, !tbaa !131
  %i.hd = icmp slt i32 %i.hb, %i.hc
  br label %bb.av

bb.at:                                            ; preds = %bb.ar, %bb.aq
  %i.he = invoke noundef i32 @_ZN11mpz_managerILb1EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.go, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %.noexc134 unwind label %bb.bf

.noexc134:                                        ; preds = %bb.at
  %i.hf = icmp slt i32 %i.he, 0
  br label %bb.av

bb.au:                                            ; preds = %bb.ap
  %i.hg = invoke noundef zeroext i1 @_ZN11mpq_managerILb1EE6rat_ltERK3mpqS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.go, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.av unwind label %bb.bf

bb.av:                                            ; preds = %.noexc134, %bb.as, %bb.au
  %.0.i.i.i.i = phi i1 [ %i.hf, %.noexc134 ], [ %i.hd, %bb.as ], [ %i.hg, %bb.au ]
  %i.hh = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !133 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.hh, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %.noexc.i136 unwind label %bb.aw

.noexc.i136:                                      ; preds = %bb.av
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.hh, ptr noundef nonnull align 8 dereferenceable(16) %i.fa)
          to label %_ZN8rationalD2Ev.exit137 unwind label %bb.aw

bb.aw:                                            ; preds = %.noexc.i136, %bb.av
  %i.hi = landingpad { ptr, i32 }
          catch ptr null
  %i.hj = extractvalue { ptr, i32 } %i.hi, 0
  call void @__clang_call_terminate(ptr %i.hj) #26
  unreachable

_ZN8rationalD2Ev.exit137:                         ; preds = %.noexc.i136
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br i1 %.0.i.i.i.i, label %bb.bj, label %bb.ax

bb.ax:                                            ; preds = %_ZN8rationalD2Ev.exit137
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  %i.hk = load ptr, ptr %i.ae, align 8, !tbaa !120
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 32
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !291 ; 3 uses
  store i32 0, ptr %15, align 8, !tbaa !131
  %i.hn = getelementptr inbounds nuw i8, ptr %15, i64 4 ; 5 uses
  %i.ho = load i8, ptr %i.hn, align 4
  %i.hp = and i8 %i.ho, -4                        ; 2 uses
  store i8 %i.hp, ptr %i.hn, align 4
  %i.hq = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  store ptr null, ptr %i.hq, align 8, !tbaa !130
  %i.hr = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  store i32 1, ptr %i.hr, align 8, !tbaa !131
  %i.hs = getelementptr inbounds nuw i8, ptr %15, i64 20 ; 4 uses
  %i.ht = load i8, ptr %i.hs, align 4
  %i.hu = and i8 %i.ht, -4
  store i8 %i.hu, ptr %i.hs, align 4
  %i.hv = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 3 uses
  store ptr null, ptr %i.hv, align 8, !tbaa !130
  %i.hw = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !133 ; 2 uses
  %i.hx = icmp ult i64 %i.hm, 2147483647
  br i1 %i.hx, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.hy = trunc nuw nsw i64 %i.hm to i32
  store i32 %i.hy, ptr %15, align 8, !tbaa !131
  store i8 %i.hp, ptr %i.hn, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpqm.exit.i138

bb.az:                                            ; preds = %bb.ax
  invoke void @_ZN11mpz_managerILb1EE12set_big_ui64ER3mpzm(ptr noundef nonnull align 8 dereferenceable(728) %i.hw, ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef %i.hm)
          to label %_ZN11mpq_managerILb1EE3setER3mpqm.exit.i138 unwind label %bb.bh

_ZN11mpq_managerILb1EE3setER3mpqm.exit.i138:      ; preds = %bb.az, %bb.ay
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.hw, ptr noundef nonnull align 8 dereferenceable(16) %i.hr)
          to label %bb.ba unwind label %bb.bh

bb.ba:                                            ; preds = %_ZN11mpq_managerILb1EE3setER3mpqm.exit.i138
  %i.hz = load i8, ptr %i.hs, align 4             ; 2 uses
  %i.ia = load i32, ptr %12, align 8, !tbaa !126
  %i.ib = load i32, ptr %15, align 8, !tbaa !126
  store i32 %i.ib, ptr %12, align 8, !tbaa !126
  store i32 %i.ia, ptr %15, align 8, !tbaa !126
  %i.ic = load ptr, ptr %i.el, align 8, !tbaa !134
  %i.id = load ptr, ptr %i.hq, align 8, !tbaa !134
  store ptr %i.id, ptr %i.el, align 8, !tbaa !134
  store ptr %i.ic, ptr %i.hq, align 8, !tbaa !134
  %i.ie = load i8, ptr %i.ei, align 4             ; 2 uses
  %i.if = load i8, ptr %i.hn, align 4             ; 2 uses
  %i.ig = and i8 %i.ie, -4
  %i.ih = and i8 %i.if, -4
  %i.ii = and i8 %i.if, 3
  %i.ij = or disjoint i8 %i.ii, %i.ig
  store i8 %i.ij, ptr %i.ei, align 4
  %i.ik = and i8 %i.ie, 3
  %i.il = or disjoint i8 %i.ih, %i.ik
  store i8 %i.il, ptr %i.hn, align 4
  %i.im = load i32, ptr %i.em, align 8, !tbaa !126
  store i32 1, ptr %i.em, align 8, !tbaa !126
  store i32 %i.im, ptr %i.hr, align 8, !tbaa !126
  %i.in = load ptr, ptr %i.eq, align 8, !tbaa !134
  %i.io = load ptr, ptr %i.hv, align 8, !tbaa !134
  store ptr %i.io, ptr %i.eq, align 8, !tbaa !134
  store ptr %i.in, ptr %i.hv, align 8, !tbaa !134
  %i.ip = load i8, ptr %i.en, align 4             ; 2 uses
  %i.iq = and i8 %i.hz, 2
  %i.ir = and i8 %i.ip, -4
  %i.is = or disjoint i8 %i.ir, %i.iq
  %i.it = and i8 %i.hz, -4
  store i8 %i.is, ptr %i.en, align 4
  %i.iu = and i8 %i.ip, 3
  %i.iv = or disjoint i8 %i.iu, %i.it
  store i8 %i.iv, ptr %i.hs, align 4
  %i.iw = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !133 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.iw, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %.noexc.i142 unwind label %bb.bb

.noexc.i142:                                      ; preds = %bb.ba
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.iw, ptr noundef nonnull align 8 dereferenceable(16) %i.hr)
          to label %_ZN8rationalD2Ev.exit143 unwind label %bb.bb

bb.bb:                                            ; preds = %.noexc.i142, %bb.ba
  %i.ix = landingpad { ptr, i32 }
          catch ptr null
  %i.iy = extractvalue { ptr, i32 } %i.ix, 0
  call void @__clang_call_terminate(ptr %i.iy) #26
  unreachable

_ZN8rationalD2Ev.exit143:                         ; preds = %.noexc.i142
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  %i.iz = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !133
  %i.ja = invoke noundef i64 @_ZNK11mpz_managerILb1EE9get_int64ERK3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.iz, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %_ZNK8rational9get_int64Ev.exit unwind label %bb.bi

_ZNK8rational9get_int64Ev.exit:                   ; preds = %_ZN8rationalD2Ev.exit143
  %i.jb = trunc i64 %i.ja to i32
  call void @llvm.experimental.noalias.scope.decl(metadata !293)
  call void @llvm.experimental.noalias.scope.decl(metadata !294)
  store i32 0, ptr %16, align 8, !tbaa !131, !alias.scope !295
  %i.jc = getelementptr inbounds nuw i8, ptr %16, i64 4 ; 4 uses
  %i.jd = load i8, ptr %i.jc, align 4, !alias.scope !295
  %i.je = and i8 %i.jd, -4
  store i8 %i.je, ptr %i.jc, align 4, !alias.scope !295
  %i.jf = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  store ptr null, ptr %i.jf, align 8, !tbaa !130, !alias.scope !295
  %i.jg = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  store i32 1, ptr %i.jg, align 8, !tbaa !131, !alias.scope !295
  %i.jh = getelementptr inbounds nuw i8, ptr %16, i64 20 ; 4 uses
  %i.ji = load i8, ptr %i.jh, align 4, !alias.scope !295
  %i.jj = and i8 %i.ji, -4
end_hunk_1
begin_hunk_2_@_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_15_Move_ctor_baseILb0EJiP3ast6symbolP7zstring8rationaldjEEC1EOSA_EUlOT_T0_E_JSt7variantIJiS5_S6_S8_S9_djEEEEDcOSE_DpOT1_:bb.a
  %i.bc = or disjoint i8 %i.bb, %i.au
  store i8 %i.bc, ptr %i.av, align 4
  %i.bd = load i8, ptr %i.am, align 4             ; 2 uses
  %i.be = and i8 %i.bd, 1
  %i.bf = and i8 %i.ba, 1
  %i.bg = and i8 %i.bd, -2
  %i.bh = or disjoint i8 %i.bg, %i.bf
  store i8 %i.bh, ptr %i.am, align 4
  %i.bi = load i8, ptr %i.av, align 4
  %i.bj = and i8 %i.bi, -2
  %i.bk = or disjoint i8 %i.bj, %i.be
  store i8 %i.bk, ptr %i.av, align 4
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.bl = load ptr, ptr %0, align 8, !tbaa !147
  %i.bm = load double, ptr %1, align 8, !tbaa !246
  store double %i.bm, ptr %i.bl, align 8, !tbaa !539
  br label %bb.j

bb.h:                                             ; preds = %bb.a
  %i.bn = load ptr, ptr %0, align 8, !tbaa !147
  %i.bo = load i32, ptr %1, align 8, !tbaa !126
  store i32 %i.bo, ptr %i.bn, align 4, !tbaa !541
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  unreachable

bb.j:                                             ; preds = %bb.a, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK7obj_refI4sort11ast_managerE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #5 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #4

declare void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11ast_manager7displayERSoRK9parameter(ptr noundef nonnull align 8 dereferenceable(952), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6vectorI12builtin_nameLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !176    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 40) ; 3 uses
  store i32 2, ptr %i.c, align 4, !tbaa !126
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !126
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.e, ptr %0, align 8, !tbaa !176
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 -8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !126  ; 3 uses
  %i.h = mul i32 %i.g, 3
  %i.i = add i32 %i.h, 1
  %i.j = lshr i32 %i.i, 1                         ; 3 uses
  %i.k = shl i32 %i.j, 4                          ; 2 uses
  %.not = icmp ugt i32 %i.j, %i.g
  %i.l = shl i32 %i.g, 4
  %.not27 = icmp ugt i32 %i.k, %i.l
  %or.cond = and i1 %.not, %.not27
  br i1 %or.cond, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = tail call ptr @__cxa_allocate_exception(i64 40) #25 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.63, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.m, align 8, !tbaa !41
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 3 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !170
  %i.p = load ptr, ptr %1, align 8, !tbaa !142    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !160  ; 3 uses
  %i.u = icmp ult i64 %i.t, 16
  call void @llvm.assume(i1 %i.u)
  %i.v = add nuw nsw i64 %i.t, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.o, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %i.v, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  store ptr %i.p, ptr %i.n, align 8, !tbaa !142
  %i.w = load i64, ptr %i.q, align 8, !tbaa !143
  store i64 %i.w, ptr %i.o, align 8, !tbaa !143
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !160
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.x = phi i64 [ %i.t, %bb.f ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %i.x, ptr %i.z, align 8, !tbaa !160
  store ptr %i.q, ptr %1, align 8, !tbaa !142
  store i64 0, ptr %i.y, align 8, !tbaa !160
  store i8 0, ptr %i.q, align 8, !tbaa !143
  invoke void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #24
          to label %bb.l unwind label %bb.g

bb.g:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load ptr, ptr %1, align 8, !tbaa !142   ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.q
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.g
  %i.ad = load i64, ptr %i.q, align 8, !tbaa !143
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @__cxa_free_exception(ptr %i.m) #25
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.h
  %.pn32 = phi { ptr, i32 } [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.af, %bb.h ]
  resume { ptr, i32 } %.pn32

bb.j:                                             ; preds = %bb.c
  %i.ag = or disjoint i32 %i.k, 8
  %i.ah = zext i32 %i.ag to i64
  %i.ai = tail call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.f, i64 noundef %i.ah) ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.aj, ptr %0, align 8, !tbaa !176
  store i32 %i.j, ptr %i.ai, align 4, !tbaa !126
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.b
  ret void

bb.l:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.ctlz.i8(i8, i1 immarg) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.abs.i128(i128, i1 immarg) #18

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { cold noreturn }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { noreturn }
attributes #25 = { nounwind }
attributes #26 = { noreturn nounwind }
attributes #27 = { builtin nounwind }
attributes #28 = { builtin allocsize(0) }
attributes #29 = { nounwind willreturn memory(read) }
attributes #30 = { cold }

!llvm.module.flags = !{!27, !28}
!llvm.ident = !{!29}
!llvm.errno.tbaa = !{!34}

!0 = distinct !{!0, !111}
!1 = distinct !{null, null}
!2 = distinct !{!2, !111}
!3 = distinct !{!3, !111}
!4 = distinct !{!4, !111}
!5 = distinct !{null}
!6 = distinct !{null}
!7 = distinct !{!7, !111}
!8 = distinct !{!8, !111}
!9 = distinct !{!9, !111}
!10 = distinct !{null}
!11 = distinct !{!11, !111}
!12 = distinct !{!12, !111}
!13 = distinct !{!13, !111}
!14 = distinct !{!14, !111}
!15 = distinct !{!15, !111}
!16 = distinct !{!16, !111}
!17 = distinct !{!17, !111}
!18 = distinct !{!18, !111}
!19 = distinct !{!19, !111}
!20 = distinct !{!20, !111}
!21 = distinct !{null}
!22 = distinct !{!22, !111}
!23 = distinct !{!23, !111}
!24 = distinct !{!24, !111}
!25 = distinct !{!25, !111}
!26 = distinct !{!26, !111}
!27 = !{i32 8, !"PIC Level", i32 2}
!28 = !{i32 7, !"uwtable", i32 2}
!29 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!30 = !{!"Simple C++ TBAA"}
!31 = !{!"omnipotent char", !30, i64 0}
!32 = !{!"int", !31, i64 0}
!33 = !{!"__libc_errno", !32, i64 0}
!34 = !{!33, !32, i64 0}
!35 = !{!"any pointer", !31, i64 0}
!36 = !{!"p1 _ZTS11ast_manager", !35, i64 0}
!37 = !{!"_ZTS11decl_plugin", !36, i64 8, !32, i64 16}
!38 = !{!37, !36, i64 8}
!39 = !{!37, !32, i64 16}
!40 = !{!"vtable pointer", !30, i64 0}
!41 = !{!40, !40, i64 0}
!42 = !{!"_ZTSSt13__atomic_baseIjE", !32, i64 0}
!43 = !{!"_ZTSSt6atomicIjE", !42, i64 0}
!44 = !{!"bool", !31, i64 0}
!45 = !{!"long", !31, i64 0}
!46 = !{!"p1 long", !35, i64 0}
!47 = !{!"_ZTS6vectorImLb0EjE", !46, i64 0}
!48 = !{!"_ZTS7svectorImjE", !47, i64 0}
!49 = !{!"any p2 pointer", !35, i64 0}
!50 = !{!"p2 _ZTS8reslimit", !49, i64 0}
!51 = !{!"_ZTS6vectorIP8reslimitLb0EjE", !50, i64 0}
!52 = !{!"_ZTS10ptr_vectorI8reslimitE", !51, i64 0}
!53 = !{!"_ZTS8reslimit", !43, i64 0, !44, i64 4, !45, i64 8, !45, i64 16, !48, i64 24, !52, i64 32}
!54 = !{!"_ZTS22small_object_allocator", !31, i64 0, !31, i64 256, !45, i64 512}
!55 = !{!"p1 _ZTSN12symbol_tableIiE10hash_entryE", !35, i64 0}
!56 = !{!"_ZTS14core_hashtableIN12symbol_tableIiE10hash_entryENS1_18key_data_hash_procENS1_16key_data_eq_procEE", !55, i64 0, !32, i64 8, !32, i64 12, !32, i64 16}
!57 = !{!"p1 _ZTSN12symbol_tableIiE8key_dataE", !35, i64 0}
!58 = !{!"_ZTS6vectorIN12symbol_tableIiE8key_dataELb1EjE", !57, i64 0}
!59 = !{!"p1 int", !35, i64 0}
!60 = !{!"_ZTS6vectorIiLb0EjE", !59, i64 0}
!61 = !{!"_ZTS7svectorIijE", !60, i64 0}
!62 = !{!"_ZTS12symbol_tableIiE", !56, i64 0, !58, i64 24, !61, i64 32}
!63 = !{!"p1 _ZTS6symbol", !35, i64 0}
!64 = !{!"_ZTS6vectorI6symbolLb0EjE", !63, i64 0}
!65 = !{!"_ZTS7svectorI6symboljE", !64, i64 0}
!66 = !{!"_ZTS14family_manager", !32, i64 0, !62, i64 8, !65, i64 48}
!67 = !{!"p1 _ZTS22small_object_allocator", !35, i64 0}
!68 = !{!"p2 _ZTSN14parray_managerIN11ast_manager17expr_array_configEE4cellE", !49, i64 0}
!69 = !{!"_ZTS6vectorIPN14parray_managerIN11ast_manager17expr_array_configEE4cellELb0EjE", !68, i64 0}
!70 = !{!"_ZTS10ptr_vectorIN14parray_managerIN11ast_manager17expr_array_configEE4cellEE", !69, i64 0}
!71 = !{!"_ZTS14parray_managerIN11ast_manager17expr_array_configEE", !36, i64 0, !67, i64 8, !70, i64 16, !70, i64 24}
!72 = !{!"p2 _ZTSN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyE", !49, i64 0}
!73 = !{!"_ZTS6vectorIPN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyELb0EjE", !72, i64 0}
!74 = !{!"_ZTS10ptr_vectorIN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyEE", !73, i64 0}
!75 = !{!"_ZTS18dependency_managerIN11ast_manager22expr_dependency_configEE", !36, i64 0, !67, i64 8, !74, i64 16}
!76 = !{!"p2 _ZTSN14parray_managerIN11ast_manager28expr_dependency_array_configEE4cellE", !49, i64 0}
!77 = !{!"_ZTS6vectorIPN14parray_managerIN11ast_manager28expr_dependency_array_configEE4cellELb0EjE", !76, i64 0}
!78 = !{!"_ZTS10ptr_vectorIN14parray_managerIN11ast_manager28expr_dependency_array_configEE4cellEE", !77, i64 0}
!79 = !{!"_ZTS14parray_managerIN11ast_manager28expr_dependency_array_configEE", !36, i64 0, !67, i64 8, !78, i64 16, !78, i64 24}
!80 = !{!"p2 _ZTS11decl_plugin", !49, i64 0}
!81 = !{!"_ZTS6vectorIP11decl_pluginLb0EjE", !80, i64 0}
!82 = !{!"_ZTS10ptr_vectorI11decl_pluginE", !81, i64 0}
!83 = !{!"_ZTS14proof_gen_mode", !31, i64 0}
!84 = !{!"p1 _ZTSN10chashtableIP3ast12obj_ptr_hashIS0_E11ast_eq_procE4cellE", !35, i64 0}
!85 = !{!"_ZTS10chashtableIP3ast12obj_ptr_hashIS0_E11ast_eq_procE", !84, i64 0, !32, i64 8, !32, i64 12, !32, i64 16, !32, i64 20, !32, i64 24, !32, i64 28, !32, i64 32, !84, i64 40, !84, i64 48, !84, i64 56}
!86 = !{!"_ZTS9ast_table", !85, i64 0}
!87 = !{!"_ZTS6vectorIjLb0EjE", !59, i64 0}
!88 = !{!"_ZTS7svectorIjjE", !87, i64 0}
!89 = !{!"_ZTS6id_gen", !32, i64 0, !88, i64 8}
!90 = !{!"p1 _ZTS4sort", !35, i64 0}
!91 = !{!"p1 _ZTS3app", !35, i64 0}
!92 = !{!"p1 _ZTS17default_map_entryIjjE", !35, i64 0}
!93 = !{!"_ZTS14core_hashtableI17default_map_entryIjjEN9table2mapIS1_6u_hash4u_eqE15entry_hash_procENS5_13entry_eq_procEE", !92, i64 0, !32, i64 8, !32, i64 12, !32, i64 16}
!94 = !{!"_ZTS9table2mapI17default_map_entryIjjE6u_hash4u_eqE", !93, i64 0}
!95 = !{!"_ZTS3mapIjj6u_hash4u_eqE", !94, i64 0}
!96 = !{!"_ZTS5u_mapIjE", !95, i64 0}
!97 = !{!"p1 _ZTSSt13basic_fstreamIcSt11char_traitsIcEE", !35, i64 0}
!98 = !{!"p1 omnipotent char", !35, i64 0}
!99 = !{!"_ZTS6symbol", !98, i64 0}
!100 = !{!"p1 _ZTSN7obj_mapI9func_declPS0_E13obj_map_entryE", !35, i64 0}
!101 = !{!"_ZTS14core_hashtableIN7obj_mapI9func_declPS1_E13obj_map_entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE", !100, i64 0, !32, i64 8, !32, i64 12, !32, i64 16}
!102 = !{!"_ZTS7obj_mapI9func_declPS0_E", !101, i64 0}
!103 = !{!"p1 _ZTS15some_value_proc", !35, i64 0}
!104 = !{!"_ZTS11ast_manager", !53, i64 0, !54, i64 40, !66, i64 560, !71, i64 616, !75, i64 648, !79, i64 672, !82, i64 704, !83, i64 712, !44, i64 716, !86, i64 720, !89, i64 784, !89, i64 800, !90, i64 816, !90, i64 824, !91, i64 832, !91, i64 840, !91, i64 848, !32, i64 856, !44, i64 860, !96, i64 864, !97, i64 888, !44, i64 896, !44, i64 897, !36, i64 904, !99, i64 912, !102, i64 920, !103, i64 944}
!105 = !{!104, !90, i64 816}
!106 = !{!"p1 _ZTS3ast", !35, i64 0}
!107 = !{!"_ZTSNSt8__detail9__variant14_UninitializedIP3astLb1EEE", !106, i64 0}
!108 = !{!107, !106, i64 0}
!109 = !{!"_ZTSNSt8__detail9__variant16_Variant_storageILb0EJiP3ast6symbolP7zstring8rationaldjEEE", !31, i64 0, !31, i64 32}
!110 = !{!109, !31, i64 32}
!111 = !{!"llvm.loop.mustprogress"}
!112 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
!113 = !{!"_ZTSSt9exception"}
!114 = !{!"_ZTSSt18bad_variant_access", !113, i64 0, !98, i64 8}
!115 = !{!114, !98, i64 8}
!116 = !{!106, !106, i64 0}
!117 = !{!"_ZTS3ast", !32, i64 0, !32, i64 4, !32, i64 6, !32, i64 6, !32, i64 6, !32, i64 8, !32, i64 12}
!118 = !{!"p1 _ZTS9decl_info", !35, i64 0}
!119 = !{!"_ZTS4decl", !117, i64 0, !99, i64 16, !118, i64 24}
!120 = !{!119, !118, i64 24}
!121 = !{!"p1 _ZTS9parameter", !35, i64 0}
!122 = !{!"_ZTS6vectorI9parameterLb1EjE", !121, i64 0}
!123 = !{!"_ZTS9decl_info", !32, i64 0, !32, i64 4, !122, i64 8, !44, i64 16}
!124 = !{!123, !32, i64 0}
!125 = !{!122, !121, i64 0}
!126 = !{!32, !32, i64 0}
!127 = !{!45, !45, i64 0}
!128 = !{!"p1 _ZTS8mpz_cell", !35, i64 0}
!129 = !{!"_ZTS3mpz", !32, i64 0, !32, i64 4, !32, i64 4, !128, i64 8}
!130 = !{!129, !128, i64 8}
!131 = !{!129, !32, i64 0}
!132 = !{!"p1 _ZTS11mpq_managerILb1EE", !35, i64 0}
!133 = !{!132, !132, i64 0}
!134 = !{!128, !128, i64 0}
!135 = !{!123, !32, i64 4}
!136 = !{}
!137 = !{!90, !90, i64 0}
!138 = !{!"_ZTS9func_decl", !119, i64 0, !32, i64 32, !90, i64 40, !31, i64 48}
!139 = !{!138, !32, i64 32}
!140 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !98, i64 0}
!141 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !140, i64 0, !45, i64 8, !31, i64 16}
!142 = !{!141, !98, i64 0}
!143 = !{!31, !31, i64 0}
!144 = !{!138, !90, i64 40}
!145 = !{!"p1 _ZTSNSt8__detail9__variant15_Move_ctor_baseILb0EJiP3ast6symbolP7zstring8rationaldjEEE", !35, i64 0}
!146 = !{!"_ZTSZNSt8__detail9__variant15_Move_ctor_baseILb0EJiP3ast6symbolP7zstring8rationaldjEEC1EOS8_EUlOT_T0_E_", !145, i64 0}
!147 = !{!146, !145, i64 0}
!148 = !{!"branch_weights", i32 2002, i32 4002, i32 2000}
!149 = !{!"_ZTSNSt8__detail9__variant14_UninitializedIiLb1EEE", !32, i64 0}
!150 = !{!149, !32, i64 0}
!151 = !{!"p2 _ZTS4sort", !49, i64 0}
!152 = !{!"_ZTS6bufferIP4sortLb0ELj16EE", !151, i64 0, !32, i64 8, !32, i64 12, !31, i64 16}
!153 = !{!152, !151, i64 0}
!154 = !{!152, !32, i64 12}
!155 = !{!152, !32, i64 8}
!156 = !{!"_ZTS7obj_refI4sort11ast_managerE", !90, i64 0, !36, i64 8}
!157 = !{!156, !90, i64 0}
!158 = !{!36, !36, i64 0}
!159 = !{!117, !32, i64 8}
!160 = !{!141, !45, i64 8}
!161 = !{!"llvm.loop.isvectorized", i32 1}
!162 = !{!"llvm.loop.unroll.runtime.disable"}
!163 = !{!"llvm.loop.unroll.disable"}
end_hunk_2
