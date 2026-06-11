inline.NumInlined: 6620
inline.NumDeleted: 2684
begin_hunk_0_@_ZN4node18EnvironmentOptions12CheckOptionsEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESA_:bb.a
  %i.vu = load i64, ptr %i.vt, align 8
  %i.vv = icmp eq i64 %i.vu, 0
  br i1 %i.vv, label %bb.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i245

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i245: ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #26
  %i.vw = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 7 uses
  %i.vx = call noalias noundef nonnull dereferenceable(46) ptr @_Znwm(i64 noundef 46) #28 ; 3 uses
  store ptr %i.vx, ptr %26, align 8
  store i64 45, ptr %i.vw, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(45) %i.vx, ptr noundef nonnull align 1 dereferenceable(45) @.str.57, i64 45, i1 false)
  %i.vy = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 4 uses
  store i64 45, ptr %i.vy, align 8
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vx, i64 45
  store i8 0, ptr %i.vz, align 1
  %i.wa = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.wb = load ptr, ptr %i.wa, align 8            ; 6 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.wd = load ptr, ptr %i.wc, align 8
  %.not.i.i247 = icmp eq ptr %i.wb, %i.wd
  br i1 %.not.i.i247, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit250, label %bb.bt

bb.bt:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i245
  %i.we = getelementptr inbounds nuw i8, ptr %i.wb, i64 16 ; 3 uses
  store ptr %i.we, ptr %i.wb, align 8
  %i.wf = load ptr, ptr %26, align 8              ; 2 uses
  %i.wg = icmp eq ptr %i.wf, %i.vw
  br i1 %i.wg, label %bb.bu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i248

bb.bu:                                            ; preds = %bb.bt
  %i.wh = load i64, ptr %i.vy, align 8            ; 3 uses
  %i.wi = icmp ult i64 %i.wh, 16
  call void @llvm.assume(i1 %i.wi)
  %i.wj = add nuw nsw i64 %i.wh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.we, ptr noundef nonnull align 8 dereferenceable(1) %i.vw, i64 %i.wj, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit250.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i248: ; preds = %bb.bt
  store ptr %i.wf, ptr %i.wb, align 8
  %i.wk = load i64, ptr %i.vw, align 8
  store i64 %i.wk, ptr %i.we, align 8
  %.pre335 = load i64, ptr %i.vy, align 8
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit250.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit250.thread: ; preds = %bb.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i248
  %i.wl = phi i64 [ %.pre335, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i248 ], [ %i.wh, %bb.bu ]
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wb, i64 8
  store i64 %i.wl, ptr %i.wm, align 8
  store ptr %i.vw, ptr %26, align 8
  store i64 0, ptr %i.vy, align 8
  %i.wn = load ptr, ptr %i.wa, align 8
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 32
  store ptr %i.wo, ptr %i.wa, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit250: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i245
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.wb, ptr noundef nonnull align 8 dereferenceable(32) %26)
  %.pre336 = load ptr, ptr %26, align 8           ; 2 uses
  %i.wp = icmp eq ptr %.pre336, %i.vw
  br i1 %i.wp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit250
  %i.wq = load i64, ptr %i.vw, align 8
  %i.wr = add i64 %i.wq, 1
  call void @_ZdlPvm(ptr noundef %.pre336, i64 noundef %i.wr) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit250, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit250.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #26
  br label %bb.bv

bb.bv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253, %bb.bs
  %i.ws = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.wt = load i64, ptr %i.ws, align 8
  %.not28 = icmp eq i64 %i.wt, 524288
  br i1 %.not28, label %bb.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i255

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i255: ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #26
  %i.wu = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 7 uses
  %i.wv = call noalias noundef nonnull dereferenceable(51) ptr @_Znwm(i64 noundef 51) #28 ; 3 uses
  store ptr %i.wv, ptr %27, align 8
  store i64 50, ptr %i.wu, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(50) %i.wv, ptr noundef nonnull align 1 dereferenceable(50) @.str.58, i64 50, i1 false)
  %i.ww = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 4 uses
  store i64 50, ptr %i.ww, align 8
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wv, i64 50
  store i8 0, ptr %i.wx, align 1
  %i.wy = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.wz = load ptr, ptr %i.wy, align 8            ; 6 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.xb = load ptr, ptr %i.xa, align 8
  %.not.i.i257 = icmp eq ptr %i.wz, %i.xb
  br i1 %.not.i.i257, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit260, label %bb.bw

bb.bw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i255
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wz, i64 16 ; 3 uses
  store ptr %i.xc, ptr %i.wz, align 8
  %i.xd = load ptr, ptr %27, align 8              ; 2 uses
  %i.xe = icmp eq ptr %i.xd, %i.wu
  br i1 %i.xe, label %bb.bx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i258

bb.bx:                                            ; preds = %bb.bw
  %i.xf = load i64, ptr %i.ww, align 8            ; 3 uses
  %i.xg = icmp ult i64 %i.xf, 16
  call void @llvm.assume(i1 %i.xg)
  %i.xh = add nuw nsw i64 %i.xf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.xc, ptr noundef nonnull align 8 dereferenceable(1) %i.wu, i64 %i.xh, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit260.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i258: ; preds = %bb.bw
  store ptr %i.xd, ptr %i.wz, align 8
  %i.xi = load i64, ptr %i.wu, align 8
  store i64 %i.xi, ptr %i.xc, align 8
  %.pre337 = load i64, ptr %i.ww, align 8
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit260.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit260.thread: ; preds = %bb.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i258
  %i.xj = phi i64 [ %.pre337, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i258 ], [ %i.xf, %bb.bx ]
  %i.xk = getelementptr inbounds nuw i8, ptr %i.wz, i64 8
  store i64 %i.xj, ptr %i.xk, align 8
  store ptr %i.wu, ptr %27, align 8
  store i64 0, ptr %i.ww, align 8
  %i.xl = load ptr, ptr %i.wy, align 8
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 32
  store ptr %i.xm, ptr %i.wy, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit260: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i255
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.wz, ptr noundef nonnull align 8 dereferenceable(32) %27)
  %.pre338 = load ptr, ptr %27, align 8           ; 2 uses
  %i.xn = icmp eq ptr %.pre338, %i.wu
  br i1 %i.xn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit260
  %i.xo = load i64, ptr %i.wu, align 8
  %i.xp = add i64 %i.xo, 1
  call void @_ZdlPvm(ptr noundef %.pre338, i64 noundef %i.xp) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit260, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit260.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #26
  br label %bb.by

bb.by:                                            ; preds = %bb.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263, %bb.bo
  %i.xq = load i8, ptr %i.ur, align 8, !range !26, !noundef !29
  %i.xr = trunc nuw i8 %i.xq to i1
  br i1 %i.xr, label %bb.bz, label %bb.cb

bb.bz:                                            ; preds = %bb.by
  %i.xs = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.xt = load i64, ptr %i.xs, align 8
  %i.xu = icmp ne i64 %i.xt, 0
  %i.xv = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.xw = load i64, ptr %i.xv, align 8
  %i.xx = icmp eq i64 %i.xw, 0
  %or.cond291 = select i1 %i.xu, i1 true, i1 %i.xx
  br i1 %or.cond291, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.xy = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.xz = getelementptr inbounds nuw i8, ptr %0, i64 528
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.xy, ptr noundef nonnull align 8 dereferenceable(32) %i.xz)
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz, %bb.by
  %i.ya = getelementptr inbounds nuw i8, ptr %0, i64 1344
  call void @_ZN4node12DebugOptions12CheckOptionsEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESA_(ptr noundef nonnull align 8 dereferenceable(96) %i.ya, ptr noundef %1, ptr poison)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node14options_parser5ParseINS_12DebugOptionsENS_7OptionsEEEvPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EESD_SD_PT_NS_20OptionEnvvarSettingsESD_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  tail call void @_ZNK4node14options_parser13OptionsParserINS_12DebugOptionsEE5ParseEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EESD_SD_PS2_NS_20OptionEnvvarSettingsESD_(ptr noundef nonnull align 8 dereferenceable(176) @_ZN4node14options_parserL13_dop_instanceE, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNK4node14options_parser13OptionsParserINS_12DebugOptionsEE5ParseEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EESD_SD_PS2_NS_20OptionEnvvarSettingsESD_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %7 = alloca %"class.std::allocator", align 1    ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::allocator", align 1   ; 3 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"class.std::allocator", align 1   ; 3 uses
  %14 = alloca %class.anon.843, align 8           ; 8 uses
  %15 = alloca %"class.std::allocator", align 1   ; 3 uses
  %16 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %17 = alloca %"class.std::allocator", align 1   ; 3 uses
  %18 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 14 uses
  %19 = alloca %"struct.node::options_parser::ArgsInfo", align 8 ; 12 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 24 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 24 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %35 = alloca %"class.node::HostPort", align 8   ; 8 uses
  store ptr %3, ptr %i.b, align 8
  store ptr %4, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  store ptr %1, ptr %19, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %19, i64 32
  store ptr %2, ptr %i.e, align 8
  %i.f = load ptr, ptr %3, align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 6 uses
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.b, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.split

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = load ptr, ptr %1, align 8                ; 4 uses
  %.not.i.i.not.i = icmp eq ptr %i.k, %i.l
  br i1 %.not.i.i.not.i, label %bb.c, label %_ZNK4node14options_parser8ArgsInfo12program_nameB5cxx11Ev.exit

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.578, i64 noundef 0, i64 noundef 0) #27
  unreachable

_ZNK4node14options_parser8ArgsInfo12program_nameB5cxx11Ev.exit: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %.not.i = icmp eq ptr %i.f, %i.n
  br i1 %.not.i, label %bb.k, label %bb.d

bb.d:                                             ; preds = %_ZNK4node14options_parser8ArgsInfo12program_nameB5cxx11Ev.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  store ptr %i.o, ptr %i.h, align 8
  %i.p = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.r = load i64, ptr %i.q, align 8              ; 8 uses
  %i.s = icmp ugt i64 %i.r, 15
  br i1 %i.s, label %bb.e, label %._crit_edge.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.t = icmp slt i64 %i.r, 0
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.535) #27
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.u = add nuw i64 %i.r, 1                      ; 2 uses
  %i.v = icmp slt i64 %i.u, 0
  br i1 %i.v, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !5

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.g
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #28 ; 2 uses
  store ptr %i.w, ptr %i.h, align 8
  store i64 %i.r, ptr %i.o, align 8
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %bb.d
  %i.x = phi ptr [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i ], [ %i.o, %bb.d ] ; 3 uses
  switch i64 %i.r, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  %i.y = load i8, ptr %i.p, align 1
  store i8 %i.y, ptr %i.x, align 1
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i

bb.j:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.x, ptr align 1 %i.p, i64 %i.r, i1 false)
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i

_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i: ; preds = %bb.j, %bb.i, %._crit_edge.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.r, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.r
  store i8 0, ptr %i.aa, align 1
  %i.ab = load ptr, ptr %i.g, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store ptr %i.ac, ptr %i.g, align 8
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.split

bb.k:                                             ; preds = %_ZNK4node14options_parser8ArgsInfo12program_nameB5cxx11Ev.exit
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.l)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.split

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.split: ; preds = %bb.a, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i, %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 19 uses
  %i.af = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 13 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 15 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 7 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 7 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = icmp eq i32 %5, 0                       ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.au = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 16 uses
  %i.az = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 12 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 8 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  %.phi.trans.insert.i169 = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %.phi.trans.insert.i148 = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %35, i64 32
  %i.bk = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 6 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %22, i64 18
  %i.bq = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 7 uses
  %i.br = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.split
  %i.bt = load ptr, ptr %19, align 8              ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = load ptr, ptr %i.bt, align 8            ; 3 uses
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = ashr exact i64 %i.bz, 5                 ; 3 uses
  %i.cb = add nsw i64 %i.ca, -1
  %i.cc = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.cd = load ptr, ptr %i.d, align 8             ; 4 uses
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = ashr exact i64 %i.cg, 5
  %i.ci = sub nsw i64 0, %i.ch
  %i.cj = icmp eq i64 %i.cb, %i.ci
  br i1 %i.cj, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ck = load ptr, ptr %6, align 8
  %i.cl = load ptr, ptr %i.ae, align 8
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.cn = icmp eq ptr %i.cd, %i.cc
  br i1 %i.cn, label %bb.o, label %_ZN4node14options_parser8ArgsInfo5firstB5cxx11Ev.exit.thread

bb.o:                                             ; preds = %bb.n
  %.not.i.i.i = icmp ugt i64 %i.ca, 1
  br i1 %.not.i.i.i, label %_ZN4node14options_parser8ArgsInfo5firstB5cxx11Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.578, i64 noundef 1, i64 noundef %i.ca) #27
  unreachable

_ZN4node14options_parser8ArgsInfo5firstB5cxx11Ev.exit: ; preds = %bb.o
  %i.co = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.cp = load i64, ptr %i.co, align 8
  %i.cq = icmp ult i64 %i.cp, 2
  br i1 %i.cq, label %.critedge, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit.i77

_ZN4node14options_parser8ArgsInfo5firstB5cxx11Ev.exit.thread: ; preds = %bb.n
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cs = load i64, ptr %i.cr, align 8
end_hunk_0
begin_hunk_1_@_ZNK4node14options_parser13OptionsParserINS_12DebugOptionsEE5ParseEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EESD_SD_PS2_NS_20OptionEnvvarSettingsESD_:bb.a
  br label %bb.u

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #26
  %i.ei = icmp eq i64 %i.eh, -1
  br i1 %i.ei, label %bb.u, label %bb.ab

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit
  store ptr %i.ag, ptr %23, align 8
  %i.ej = icmp ugt i64 %i.cy, 15
  br i1 %i.ej, label %bb.v, label %._crit_edge.i.i83

bb.v:                                             ; preds = %bb.u
  %i.ek = icmp slt i64 %i.cy, 0
  br i1 %i.ek, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.535) #27
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.el = add nuw i64 %i.cy, 1                    ; 2 uses
  %i.em = icmp slt i64 %i.el, 0
  br i1 %i.em, label %bb.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i84, !prof !5

bb.y:                                             ; preds = %bb.x
  call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i84: ; preds = %bb.x
  %i.en = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.el) #28 ; 2 uses
  store ptr %i.en, ptr %23, align 8
  store i64 %i.cy, ptr %i.ag, align 8
  br label %._crit_edge.i.i83

._crit_edge.i.i83:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i84, %bb.u
  %i.eo = phi ptr [ %i.en, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i84 ], [ %i.ag, %bb.u ] ; 3 uses
  switch i64 %i.cy, label %bb.aa [
    i64 1, label %bb.z
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.z:                                             ; preds = %._crit_edge.i.i83
  %i.ep = load i8, ptr %.pre, align 1
  store i8 %i.ep, ptr %i.eo, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.aa:                                            ; preds = %._crit_edge.i.i83
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.eo, ptr nonnull align 1 %.pre, i64 %i.cy, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i83, %bb.z, %bb.aa
  store i64 %i.cy, ptr %i.ah, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.cy
  store i8 0, ptr %i.eq, align 1
  br label %bb.ai

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit
  store ptr %i.ag, ptr %23, align 8, !alias.scope !47
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.eh, i64 %i.cy) ; 8 uses
  %i.er = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.er, label %bb.ac, label %._crit_edge.i.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.es = icmp slt i64 %spec.select.i.i.i, 0
  br i1 %i.es, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.535) #27
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.et = add nuw i64 %spec.select.i.i.i, 1       ; 2 uses
  %i.eu = icmp slt i64 %i.et, 0
  br i1 %i.eu, label %bb.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !5

bb.af:                                            ; preds = %bb.ae
  call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.ae
  %i.ev = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.et) #28 ; 2 uses
  store ptr %i.ev, ptr %23, align 8, !alias.scope !47
  store i64 %spec.select.i.i.i, ptr %i.ag, align 8, !alias.scope !47
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %bb.ab
  %i.ew = phi ptr [ %i.ev, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.ag, %bb.ab ] ; 3 uses
  switch i64 %spec.select.i.i.i, label %bb.ah [
    i64 1, label %bb.ag
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.ag:                                            ; preds = %._crit_edge.i.i.i
  %i.ex = load i8, ptr %.pre, align 1
  store i8 %i.ex, ptr %i.ew, align 1
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.ah:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ew, ptr nonnull align 1 %.pre, i64 %spec.select.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.ag, %bb.ah
  store i64 %spec.select.i.i.i, ptr %i.ah, align 8, !alias.scope !47
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 %spec.select.i.i.i
  store i8 0, ptr %i.ey, align 1
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ez = phi i64 [ %i.eh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit ], [ -1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #26
  store ptr %i.ai, ptr %24, align 8
  %i.fa = load ptr, ptr %23, align 8              ; 2 uses
  %i.fb = load i64, ptr %i.ah, align 8            ; 9 uses
  %i.fc = icmp ugt i64 %i.fb, 15
  br i1 %i.fc, label %bb.aj, label %._crit_edge.i.i85

bb.aj:                                            ; preds = %bb.ai
  %i.fd = icmp slt i64 %i.fb, 0
  br i1 %i.fd, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.535) #27
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.fe = add nuw i64 %i.fb, 1                    ; 2 uses
  %i.ff = icmp slt i64 %i.fe, 0
  br i1 %i.ff, label %bb.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i86, !prof !5

bb.am:                                            ; preds = %bb.al
  call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i86: ; preds = %bb.al
  %i.fg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fe) #28 ; 2 uses
  store ptr %i.fg, ptr %24, align 8
  store i64 %i.fb, ptr %i.ai, align 8
  br label %._crit_edge.i.i85

._crit_edge.i.i85:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i86, %bb.ai
  %i.fh = phi ptr [ %i.fg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i86 ], [ %i.ai, %bb.ai ] ; 3 uses
  switch i64 %i.fb, label %bb.ao [
    i64 1, label %bb.an
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit87
  ]

bb.an:                                            ; preds = %._crit_edge.i.i85
  %i.fi = load i8, ptr %i.fa, align 1
  store i8 %i.fi, ptr %i.fh, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit87

bb.ao:                                            ; preds = %._crit_edge.i.i85
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fh, ptr align 1 %i.fa, i64 %i.fb, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit87: ; preds = %._crit_edge.i.i85, %bb.an, %bb.ao
  store i64 %i.fb, ptr %i.aj, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.fb
  store i8 0, ptr %i.fj, align 1
  %.not64.not = icmp eq i64 %i.ez, -1             ; 5 uses
  br i1 %.not64.not, label %bb.as, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit87
  %i.fk = load i64, ptr %i.aj, align 8            ; 4 uses
  %i.fl = add i64 %i.fk, 1                        ; 3 uses
  %i.fm = load ptr, ptr %24, align 8              ; 2 uses
  %i.fn = icmp eq ptr %i.fm, %i.ai                ; 2 uses
  br i1 %i.fn, label %bb.aq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.fo = icmp ult i64 %i.fk, 16
  call void @llvm.assume(i1 %i.fo)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %bb.aq, %bb.ap
  %i.fp = load i64, ptr %i.ai, align 8
  %i.fq = select i1 %i.fn, i64 15, i64 %i.fp
  %i.fr = icmp ugt i64 %i.fl, %i.fq
  br i1 %i.fr, label %bb.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.ar:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %24, i64 noundef %i.fk, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i = load ptr, ptr %24, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %bb.ar
  %i.fs = phi ptr [ %.pre.i.i, %bb.ar ], [ %i.fm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.fk
  store i8 61, ptr %i.ft, align 1
  store i64 %i.fl, ptr %i.aj, align 8
  %i.fu = load ptr, ptr %24, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fl
  store i8 0, ptr %i.fv, align 1
  %.pre439 = load i64, ptr %i.ah, align 8
  br label %bb.as

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit87
  %i.fw = phi i64 [ %.pre439, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit ], [ %i.fb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit87 ] ; 3 uses
  %i.fx = icmp ugt i64 %i.fw, 2
  br i1 %i.fx, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.aw, %bb.as
  %.lcssa = phi i64 [ %i.fw, %bb.as ], [ %i.gt, %bb.aw ] ; 6 uses
  %.not.i.i88.not = icmp eq i64 %.lcssa, 0
  br i1 %.not.i.i88.not, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread, label %bb.at

bb.at:                                            ; preds = %._crit_edge
  %i.fy = load ptr, ptr %23, align 8              ; 5 uses
  %.not3339.i.i = icmp ult i64 %.lcssa, 5
  br i1 %.not3339.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.at
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 %.lcssa
  %i.ga = ptrtoint ptr %i.fz to i64
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %.lr.ph.i.i, %bb.au
  %.041.i.i = phi i64 [ %.lcssa, %.lr.ph.i.i ], [ %i.go, %bb.au ]
  %.02840.i.i = phi ptr [ %i.fy, %.lr.ph.i.i ], [ %i.gm, %bb.au ]
  %.reass.reass.i.reass.reass.i = add i64 %.041.i.i, -4
  %i.gb = call ptr @memchr(ptr noundef %.02840.i.i, i32 noundef 45, i64 noundef %.reass.reass.i.reass.reass.i) #26 ; 5 uses
  %.not34.i.i = icmp eq ptr %i.gb, null
  br i1 %.not34.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.gc = load i32, ptr %i.gb, align 1
  %i.gd = xor i32 %i.gc, 1869491501
  %i.ge = getelementptr i8, ptr %i.gb, i64 4
  %i.gf = load i8, ptr %i.ge, align 1
  %i.gg = zext i8 %i.gf to i32
  %i.gh = xor i32 %i.gg, 45
  %i.gi = or i32 %i.gd, %i.gh
  %i.gj = icmp ne i32 %i.gi, 0
  %i.gk = zext i1 %i.gj to i32
  %i.gl = icmp eq i32 %i.gk, 0
  br i1 %i.gl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit, label %bb.au

bb.au:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gb, i64 1 ; 2 uses
  %i.gn = ptrtoint ptr %i.gm to i64
  %i.go = sub i64 %i.ga, %i.gn                    ; 2 uses
  %.not33.i.i = icmp ult i64 %i.go, 5
  br i1 %.not33.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, !llvm.loop !50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %.not334 = icmp eq ptr %i.gb, %i.fy
  br i1 %.not334, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread301, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread

.lr.ph:                                           ; preds = %bb.as, %bb.aw
  %i.gp = phi i64 [ %i.gt, %bb.aw ], [ %i.fw, %bb.as ]
  %.052405 = phi i64 [ %i.gu, %bb.aw ], [ 2, %bb.as ] ; 2 uses
  %36 = load ptr, ptr %23, align 8
  %i.gq = getelementptr inbounds nuw i8, ptr %36, i64 %.052405 ; 2 uses
  %i.gr = load i8, ptr %i.gq, align 1
  %i.gs = icmp eq i8 %i.gr, 95
  br i1 %i.gs, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %.lr.ph
  store i8 45, ptr %i.gq, align 1
  %.pre440.a = load i64, ptr %i.ah, align 8
  br label %bb.aw

bb.aw:                                            ; preds = %.lr.ph, %bb.av
  %i.gt = phi i64 [ %i.gp, %.lr.ph ], [ %.pre440.a, %bb.av ] ; 3 uses
  %i.gu = add nuw i64 %.052405, 1                 ; 2 uses
  %i.gv = icmp ult i64 %i.gu, %i.gt
  br i1 %i.gv, label %.lr.ph, label %._crit_edge, !llvm.loop !51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread301: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit
  %.not406 = icmp eq i64 %.lcssa, 5
  br i1 %.not406, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit, label %bb.ax

bb.ax:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread301
  %i.gw = add i64 %.lcssa, -5                     ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fy, i64 2 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.fy, i64 5 ; 2 uses
  %cond = icmp eq i64 %i.gw, 1
  br i1 %cond, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.gz = load i8, ptr %i.gy, align 1
  store i8 %i.gz, ptr %i.gx, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit

bb.az:                                            ; preds = %bb.ax
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.gx, ptr nonnull align 1 %i.gy, i64 %i.gw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread301, %bb.ay, %bb.az
  %i.ha = load i64, ptr %i.ah, align 8
  %i.hb = add i64 %i.ha, -3                       ; 2 uses
  store i64 %i.hb, ptr %i.ah, align 8
  %i.hc = load ptr, ptr %23, align 8
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 %i.hb
  store i8 0, ptr %i.hd, align 1
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.au, %bb.at, %._crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit
  %i.he = phi i1 [ true, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit ], [ true, %bb.at ], [ true, %._crit_edge ], [ true, %bb.au ], [ true, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ] ; 4 uses
  br label %bb.ba

bb.ba:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread
  %i.hf = call ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %23) ; 2 uses
  %i.hg = icmp eq ptr %i.hf, null
  br i1 %i.hg, label %bb.bb, label %.critedge74.thread

bb.bb:                                            ; preds = %bb.ba
  br i1 %.not64.not, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 61, ptr %i.a, align 1, !noalias !52
  %i.hh = load ptr, ptr %23, align 8, !noalias !52
  %i.hi = load i64, ptr %i.ah, align 8, !noalias !52
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26, !noalias !52
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %25, ptr noundef %i.hh, i64 noundef %i.hi, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26, !noalias !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.hj = call ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %25) ; 2 uses
  %i.hk = icmp eq ptr %i.hj, null
  br i1 %i.hk, label %bb.bd, label %.thread304.thread

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.hl = load ptr, ptr %19, align 8              ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8
  %i.ho = load ptr, ptr %i.hl, align 8            ; 3 uses
  %i.hp = ptrtoint ptr %i.hn to i64
  %i.hq = ptrtoint ptr %i.ho to i64
  %i.hr = sub i64 %i.hp, %i.hq
  %i.hs = ashr exact i64 %i.hr, 5                 ; 3 uses
  %i.ht = add nsw i64 %i.hs, -1
  %i.hu = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.hv = load ptr, ptr %i.d, align 8             ; 4 uses
  %i.hw = ptrtoint ptr %i.hu to i64
  %i.hx = ptrtoint ptr %i.hv to i64
  %i.hy = sub i64 %i.hw, %i.hx
  %i.hz = ashr exact i64 %i.hy, 5
  %i.ia = sub nsw i64 0, %i.hz
  %i.ib = icmp eq i64 %i.ht, %i.ia
  br i1 %i.ib, label %.thread304, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ic = icmp eq ptr %i.hv, %i.hu
  br i1 %i.ic, label %bb.bf, label %_ZN4node14options_parser8ArgsInfo5firstB5cxx11Ev.exit91.thread

bb.bf:                                            ; preds = %bb.be
  %.not.i.i.i89 = icmp ugt i64 %i.hs, 1
  br i1 %.not.i.i.i89, label %_ZN4node14options_parser8ArgsInfo5firstB5cxx11Ev.exit91, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.578, i64 noundef 1, i64 noundef %i.hs) #27
  unreachable

_ZN4node14options_parser8ArgsInfo5firstB5cxx11Ev.exit91: ; preds = %bb.bf
  %i.id = getelementptr inbounds nuw i8, ptr %i.ho, i64 40
  %i.ie = load i64, ptr %i.id, align 8
  %i.if = icmp eq i64 %i.ie, 0
  br i1 %i.if, label %.thread304, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit.i93

_ZN4node14options_parser8ArgsInfo5firstB5cxx11Ev.exit91.thread: ; preds = %bb.be
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.ih = load i64, ptr %i.ig, align 8
  %i.ii = icmp eq i64 %i.ih, 0
  br i1 %i.ii, label %.thread304, label %_ZN4node14options_parser8ArgsInfo5firstB5cxx11Ev.exit94

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit.i93: ; preds = %_ZN4node14options_parser8ArgsInfo5firstB5cxx11Ev.exit91
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ho, i64 32
  br label %_ZN4node14options_parser8ArgsInfo5firstB5cxx11Ev.exit94

_ZN4node14options_parser8ArgsInfo5firstB5cxx11Ev.exit94: ; preds = %_ZN4node14options_parser8ArgsInfo5firstB5cxx11Ev.exit91.thread, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit.i93
  %i.ik = phi ptr [ %i.ij, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit.i93 ], [ %i.hv, %_ZN4node14options_parser8ArgsInfo5firstB5cxx11Ev.exit91.thread ]
  %i.il = load ptr, ptr %i.ik, align 8
  %i.im = load i8, ptr %i.il, align 1
  %.not65 = icmp eq i8 %i.im, 45
  br i1 %.not65, label %.thread304, label %bb.bh

.thread304:                                       ; preds = %bb.bd, %_ZN4node14options_parser8ArgsInfo5firstB5cxx11Ev.exit91, %_ZN4node14options_parser8ArgsInfo5firstB5cxx11Ev.exit94, %_ZN4node14options_parser8ArgsInfo5firstB5cxx11Ev.exit91.thread
  br i1 %.not64.not, label %.critedge74.thread328, label %.thread304.thread

bb.bh:                                            ; preds = %_ZN4node14options_parser8ArgsInfo5firstB5cxx11Ev.exit94
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #26
  %i.in = load ptr, ptr %23, align 8, !noalias !55
  %i.io = load i64, ptr %i.ah, align 8, !noalias !55
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26, !noalias !55
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %26, ptr noundef %i.in, i64 noundef %i.io, ptr noundef nonnull @.str.574, i64 noundef 6, ptr noundef nonnull align 1 dereferenceable(1) %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26, !noalias !55
  %i.ip = call ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %26) ; 3 uses
  %i.iq = icmp ne ptr %i.ip, null                 ; 2 uses
  %i.ir = load ptr, ptr %26, align 8              ; 2 uses
  %i.is = icmp eq ptr %i.ir, %i.al
  br i1 %i.is, label %.critedge72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95: ; preds = %bb.bh
  %i.it = load i64, ptr %i.al, align 8
  %i.iu = add i64 %i.it, 1
  call void @_ZdlPvm(ptr noundef %i.ir, i64 noundef %i.iu) #29
  br label %.critedge72

.critedge72:                                      ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #26
  br i1 %.not64.not, label %.critedge74, label %.thread304.thread

.thread304.thread:                                ; preds = %bb.bc, %.thread304, %.critedge72
  %.sroa.0281.1308311 = phi ptr [ null, %.thread304 ], [ %i.ip, %.critedge72 ], [ %i.hj, %bb.bc ]
  %i.iv = phi i1 [ false, %.thread304 ], [ %i.iq, %.critedge72 ], [ true, %bb.bc ]
  %i.iw = load ptr, ptr %25, align 8              ; 2 uses
  %i.ix = icmp eq ptr %i.iw, %i.am
  br i1 %i.ix, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %.thread304.thread
  %i.iy = load i64, ptr %i.am, align 8
  %i.iz = add i64 %i.iy, 1
  call void @_ZdlPvm(ptr noundef %i.iw, i64 noundef %i.iz) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100: ; preds = %.thread304.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26
  br i1 %i.iv, label %.critedge74.thread, label %.critedge74.thread328

.critedge74:                                      ; preds = %.critedge72
  br i1 %i.iq, label %.critedge74.thread, label %.critedge74.thread328

.critedge74.thread:                               ; preds = %bb.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, %.critedge74
  %.sroa.0281.1308310312 = phi ptr [ %.sroa.0281.1308311, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100 ], [ %i.ip, %.critedge74 ], [ %i.hf, %bb.ba ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #26
  store ptr %i.an, ptr %27, align 8
  %i.ja = load ptr, ptr %23, align 8              ; 2 uses
  %i.jb = icmp eq ptr %i.ja, %i.ag
  br i1 %i.jb, label %bb.bi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.bi:                                            ; preds = %.critedge74.thread
  %i.jc = load i64, ptr %i.ah, align 8            ; 3 uses
  %i.jd = icmp ult i64 %i.jc, 16
  call void @llvm.assume(i1 %i.jd)
  %i.je = add nuw nsw i64 %i.jc, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.an, ptr noundef nonnull align 8 dereferenceable(1) %i.ag, i64 %i.je, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %.critedge74.thread
  store ptr %i.ja, ptr %27, align 8
  %i.jf = load i64, ptr %i.ag, align 8
  store i64 %i.jf, ptr %i.an, align 8
  %.pre441.a = load i64, ptr %i.ah, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.jg = phi i64 [ %i.jc, %bb.bi ], [ %.pre441.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  store i64 %i.jg, ptr %i.ao, align 8
  store ptr %i.ag, ptr %23, align 8
  store i64 0, ptr %i.ah, align 8
  store i8 0, ptr %i.ag, align 8
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.0281.1308310312, i64 40 ; 2 uses
  %i.ji = load ptr, ptr %i.jh, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(32) %i.ji)
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.0281.1308310312, i64 48
  %i.jk = load ptr, ptr %i.jj, align 8            ; 2 uses
  %i.jl = load ptr, ptr %i.jh, align 8            ; 2 uses
  %i.jm = ptrtoint ptr %i.jk to i64
  %i.jn = ptrtoint ptr %i.jl to i64
  %i.jo = sub i64 %i.jm, %i.jn
  %i.jp = icmp ugt i64 %i.jo, 32
  br i1 %i.jp, label %bb.bj, label %bb.bk
end_hunk_1
begin_hunk_2_@_ZNK4node14options_parser13OptionsParserINS_12DebugOptionsEE5ParseEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EESD_SD_PS2_NS_20OptionEnvvarSettingsESD_:bb.a
bb.gw:                                            ; preds = %._crit_edge.i.i.i.i236
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.acg, ptr align 1 %i.abz, i64 %i.aca, i1 false)
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i237

_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i237: ; preds = %bb.gw, %bb.gv, %._crit_edge.i.i.i.i236
  %i.aci = getelementptr inbounds nuw i8, ptr %i.abv, i64 8
  store i64 %i.aca, ptr %i.aci, align 8
  %i.acj = getelementptr inbounds nuw i8, ptr %i.acg, i64 %i.aca
  store i8 0, ptr %i.acj, align 1
  %i.ack = load ptr, ptr %i.abu, align 8
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ack, i64 32
  store ptr %i.acl, ptr %i.abu, align 8
  br label %_ZNSt12__shared_ptrIN4node14options_parser13OptionsParserINS0_12DebugOptionsEE15BaseOptionFieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.gx:                                            ; preds = %bb.gp
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.abt, ptr %i.abv, ptr noundef nonnull align 8 dereferenceable(32) %20)
  br label %_ZNSt12__shared_ptrIN4node14options_parser13OptionsParserINS0_12DebugOptionsEE15BaseOptionFieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.gy:                                            ; preds = %.thread318
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZNK4node14options_parser13OptionsParserINS_12DebugOptionsEE5ParseEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EESD_SD_PS2_NS_20OptionEnvvarSettingsESD_E20error_and_abort_args) #26
  call void @abort() #27
  unreachable

_ZNSt12__shared_ptrIN4node14options_parser13OptionsParserINS0_12DebugOptionsEE15BaseOptionFieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.critedge: ; preds = %bb.dz
  %i.acm = load ptr, ptr %i.c, align 8
  %i.acn = load ptr, ptr %i.sz, align 8
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acn, i64 16
  %i.acp = load ptr, ptr %i.aco, align 8
  %i.acq = call noundef ptr %i.acp(ptr noundef nonnull align 8 dereferenceable(8) %i.sz, ptr noundef %i.acm) #26, !inline_history !97
  %i.acr = zext i1 %i.he to i8
  store i8 %i.acr, ptr %i.acq, align 1
  br label %_ZNSt12__shared_ptrIN4node14options_parser13OptionsParserINS0_12DebugOptionsEE15BaseOptionFieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4node14options_parser13OptionsParserINS0_12DebugOptionsEE15BaseOptionFieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.critedge331: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit189
  %i.acs = load ptr, ptr %i.c, align 8
  %i.act = load ptr, ptr %i.vj, align 8
  %i.acu = getelementptr inbounds nuw i8, ptr %i.act, i64 16
  %i.acv = load ptr, ptr %i.acu, align 8
  %i.acw = call noundef ptr %i.acv(ptr noundef nonnull align 8 dereferenceable(8) %i.vj, ptr noundef %i.acs) #26, !inline_history !100
  store i64 %i.vh, ptr %i.acw, align 8
  br label %_ZNSt12__shared_ptrIN4node14options_parser13OptionsParserINS0_12DebugOptionsEE15BaseOptionFieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4node14options_parser13OptionsParserINS0_12DebugOptionsEE15BaseOptionFieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.critedge332: ; preds = %bb.ez
  %i.acx = load ptr, ptr %i.c, align 8
  %i.acy = load ptr, ptr %i.wn, align 8
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acy, i64 16
  %i.ada = load ptr, ptr %i.acz, align 8
  %i.adb = call noundef ptr %i.ada(ptr noundef nonnull align 8 dereferenceable(8) %i.wn, ptr noundef %i.acx) #26, !inline_history !101
  store i64 %i.wl, ptr %i.adb, align 8
  br label %_ZNSt12__shared_ptrIN4node14options_parser13OptionsParserINS0_12DebugOptionsEE15BaseOptionFieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4node14options_parser13OptionsParserINS0_12DebugOptionsEE15BaseOptionFieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.critedge333: ; preds = %bb.fi
  %i.adc = load ptr, ptr %i.c, align 8
  %i.add = load ptr, ptr %i.xp, align 8
  %i.ade = getelementptr inbounds nuw i8, ptr %i.add, i64 16
  %i.adf = load ptr, ptr %i.ade, align 8
  %i.adg = call noundef ptr %i.adf(ptr noundef nonnull align 8 dereferenceable(8) %i.xp, ptr noundef %i.adc) #26, !inline_history !102
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.adg, ptr noundef nonnull align 8 dereferenceable(32) %31)
  br label %_ZNSt12__shared_ptrIN4node14options_parser13OptionsParserINS0_12DebugOptionsEE15BaseOptionFieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4node14options_parser13OptionsParserINS0_12DebugOptionsEE15BaseOptionFieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN4node14options_parser13OptionsParserINS0_12DebugOptionsEE15BaseOptionFieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.critedge333, %_ZNSt12__shared_ptrIN4node14options_parser13OptionsParserINS0_12DebugOptionsEE15BaseOptionFieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.critedge332, %_ZNSt12__shared_ptrIN4node14options_parser13OptionsParserINS0_12DebugOptionsEE15BaseOptionFieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.critedge331, %_ZNSt12__shared_ptrIN4node14options_parser13OptionsParserINS0_12DebugOptionsEE15BaseOptionFieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.critedge, %bb.gx, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i237, %bb.go, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i232, %bb.gk, %_ZN4node8HostPortD2Ev.exit, %bb.gd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i222, %bb.fz, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit, %bb.fq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i211, %bb.fm, %bb.fh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i203, %bb.fd, %bb.ey, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i195, %bb.eu, %bb.eh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ed, %.thread318, %_ZZNK4node14options_parser13OptionsParserINS_12DebugOptionsEE5ParseEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EESD_SD_PS2_NS_20OptionEnvvarSettingsESD_ENKUlvE_clEv.exit176, %_ZZNK4node14options_parser13OptionsParserINS_12DebugOptionsEE5ParseEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EESD_SD_PS2_NS_20OptionEnvvarSettingsESD_ENKUlvE_clEv.exit155, %_ZZNK4node14options_parser13OptionsParserINS_12DebugOptionsEE5ParseEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EESD_SD_PS2_NS_20OptionEnvvarSettingsESD_ENKUlvE_clEv.exit
  %i.adh = phi i1 [ true, %_ZZNK4node14options_parser13OptionsParserINS_12DebugOptionsEE5ParseEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EESD_SD_PS2_NS_20OptionEnvvarSettingsESD_ENKUlvE_clEv.exit ], [ true, %_ZZNK4node14options_parser13OptionsParserINS_12DebugOptionsEE5ParseEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EESD_SD_PS2_NS_20OptionEnvvarSettingsESD_ENKUlvE_clEv.exit176 ], [ true, %_ZZNK4node14options_parser13OptionsParserINS_12DebugOptionsEE5ParseEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EESD_SD_PS2_NS_20OptionEnvvarSettingsESD_ENKUlvE_clEv.exit155 ], [ false, %bb.go ], [ false, %bb.gd ], [ false, %bb.fq ], [ false, %bb.fh ], [ false, %bb.ey ], [ false, %bb.eh ], [ false, %.thread318 ], [ false, %_ZNSt12__shared_ptrIN4node14options_parser13OptionsParserINS0_12DebugOptionsEE15BaseOptionFieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.critedge ], [ false, %bb.ed ], [ false, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i ], [ false, %_ZNSt12__shared_ptrIN4node14options_parser13OptionsParserINS0_12DebugOptionsEE15BaseOptionFieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.critedge331 ], [ false, %bb.eu ], [ false, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i195 ], [ false, %_ZNSt12__shared_ptrIN4node14options_parser13OptionsParserINS0_12DebugOptionsEE15BaseOptionFieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.critedge332 ], [ false, %bb.fd ], [ false, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i203 ], [ false, %_ZNSt12__shared_ptrIN4node14options_parser13OptionsParserINS0_12DebugOptionsEE15BaseOptionFieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.critedge333 ], [ false, %bb.fm ], [ false, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i211 ], [ false, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit ], [ false, %bb.fz ], [ false, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i222 ], [ false, %_ZN4node8HostPortD2Ev.exit ], [ false, %bb.gk ], [ false, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i232 ], [ false, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i237 ], [ false, %bb.gx ]
  %i.adi = load ptr, ptr %31, align 8             ; 2 uses
  %i.adj = icmp eq ptr %i.adi, %i.ay
  br i1 %i.adj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240: ; preds = %_ZNSt12__shared_ptrIN4node14options_parser13OptionsParserINS0_12DebugOptionsEE15BaseOptionFieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.adk = load i64, ptr %i.ay, align 8
  %i.adl = add i64 %i.adk, 1
  call void @_ZdlPvm(ptr noundef %i.adi, i64 noundef %i.adl) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242: ; preds = %_ZNSt12__shared_ptrIN4node14options_parser13OptionsParserINS0_12DebugOptionsEE15BaseOptionFieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #26
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit127

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit127: ; preds = %bb.cm, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i125, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111
  %.3 = phi i1 [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111 ], [ %i.adh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242 ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134 ], [ false, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i125 ], [ false, %bb.cm ]
  %i.adm = load ptr, ptr %24, align 8             ; 2 uses
  %i.adn = icmp eq ptr %i.adm, %i.ai
  br i1 %i.adn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit127
  %i.ado = load i64, ptr %i.ai, align 8
  %i.adp = add i64 %i.ado, 1
  call void @_ZdlPvm(ptr noundef %i.adm, i64 noundef %i.adp) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit127, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  %i.adq = load ptr, ptr %23, align 8             ; 2 uses
  %i.adr = icmp eq ptr %i.adq, %i.ag
  br i1 %i.adr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245
  %i.ads = load i64, ptr %i.ag, align 8
  %i.adt = add i64 %i.ads, 1
  call void @_ZdlPvm(ptr noundef %i.adq, i64 noundef %i.adt) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  br label %bb.gz

bb.gz:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248
  %.4 = phi i1 [ %.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248 ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81 ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ]
  %i.adu = load ptr, ptr %20, align 8             ; 2 uses
  %i.adv = icmp eq ptr %i.adu, %i.bs
  br i1 %i.adv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249: ; preds = %bb.gz
  %i.adw = load i64, ptr %i.bs, align 8
  %i.adx = add i64 %i.adw, 1
  call void @_ZdlPvm(ptr noundef %i.adu, i64 noundef %i.adx) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251: ; preds = %bb.gz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  br i1 %.4, label %.critedge, label %bb.l

.critedge:                                        ; preds = %_ZN4node14options_parser8ArgsInfo5firstB5cxx11Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251, %bb.l, %_ZN4node14options_parser8ArgsInfo5firstB5cxx11Ev.exit, %_ZN4node14options_parser8ArgsInfo5firstB5cxx11Ev.exit78, %bb.m
  %i.ady = load ptr, ptr %i.c, align 8            ; 2 uses
  %i.adz = load ptr, ptr %i.ady, align 8
  %i.aea = load ptr, ptr %i.adz, align 8
  call void %i.aea(ptr noundef nonnull align 8 dereferenceable(96) %i.ady, ptr noundef %6, ptr noundef %1) #26
  %i.aeb = load ptr, ptr %i.d, align 8            ; 3 uses
  %i.aec = load ptr, ptr %i.ad, align 8           ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.aeb, %i.aec
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.critedge, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.aei, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.aeb, %.critedge ] ; 3 uses
  %i.aed = load ptr, ptr %.05.i.i.i.i, align 8    ; 2 uses
  %i.aee = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.aef = icmp eq ptr %i.aed, %i.aee
  br i1 %i.aef, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.aeg = load i64, ptr %i.aee, align 8
  %i.aeh = add i64 %i.aeg, 1
  call void @_ZdlPvm(ptr noundef %i.aed, i64 noundef %i.aeh) #29
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.aei = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i252 = icmp eq ptr %i.aei, %i.aec
  br i1 %.not.i.i.i.i252, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !17

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.d, align 8
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i, %.critedge
  %i.aej = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i ], [ %i.aeb, %.critedge ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.aej, null
  br i1 %.not.i.i1.i.i, label %_ZN4node14options_parser8ArgsInfoD2Ev.exit, label %bb.ha

bb.ha:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i
  %i.aek = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.ael = load ptr, ptr %i.aek, align 8
  %i.aem = ptrtoint ptr %i.ael to i64
  %i.aen = ptrtoint ptr %i.aej to i64
  %i.aeo = sub i64 %i.aem, %i.aen
  call void @_ZdlPvm(ptr noundef nonnull %i.aej, i64 noundef %i.aeo) #29
  br label %_ZN4node14options_parser8ArgsInfoD2Ev.exit

_ZN4node14options_parser8ArgsInfoD2Ev.exit:       ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i, %bb.ha
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node14options_parser5ParseINS_17PerIsolateOptionsENS_7OptionsEEEvPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EESD_SD_PT_NS_20OptionEnvvarSettingsESD_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  tail call void @_ZNK4node14options_parser13OptionsParserINS_17PerIsolateOptionsEE5ParseEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EESD_SD_PS2_NS_20OptionEnvvarSettingsESD_(ptr noundef nonnull align 8 dereferenceable(176) @_ZN4node14options_parserL14_piop_instanceE, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNK4node14options_parser13OptionsParserINS_17PerIsolateOptionsEE5ParseEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EESD_SD_PS2_NS_20OptionEnvvarSettingsESD_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %7 = alloca %"class.std::allocator", align 1    ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::allocator", align 1   ; 3 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"class.std::allocator", align 1   ; 3 uses
  %14 = alloca %class.anon.854, align 8           ; 8 uses
  %15 = alloca %"class.std::allocator", align 1   ; 3 uses
  %16 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %17 = alloca %"class.std::allocator", align 1   ; 3 uses
  %18 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 14 uses
  %19 = alloca %"struct.node::options_parser::ArgsInfo", align 8 ; 12 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 24 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 24 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %35 = alloca %"class.node::HostPort", align 8   ; 8 uses
  store ptr %3, ptr %i.b, align 8
  store ptr %4, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  store ptr %1, ptr %19, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %19, i64 32
  store ptr %2, ptr %i.e, align 8
  %i.f = load ptr, ptr %3, align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 6 uses
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.b, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.split

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = load ptr, ptr %1, align 8                ; 4 uses
  %.not.i.i.not.i = icmp eq ptr %i.k, %i.l
  br i1 %.not.i.i.not.i, label %bb.c, label %_ZNK4node14options_parser8ArgsInfo12program_nameB5cxx11Ev.exit

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.578, i64 noundef 0, i64 noundef 0) #27
  unreachable

_ZNK4node14options_parser8ArgsInfo12program_nameB5cxx11Ev.exit: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %.not.i = icmp eq ptr %i.f, %i.n
  br i1 %.not.i, label %bb.k, label %bb.d

bb.d:                                             ; preds = %_ZNK4node14options_parser8ArgsInfo12program_nameB5cxx11Ev.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  store ptr %i.o, ptr %i.h, align 8
  %i.p = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.r = load i64, ptr %i.q, align 8              ; 8 uses
  %i.s = icmp ugt i64 %i.r, 15
  br i1 %i.s, label %bb.e, label %._crit_edge.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.t = icmp slt i64 %i.r, 0
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.535) #27
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.u = add nuw i64 %i.r, 1                      ; 2 uses
  %i.v = icmp slt i64 %i.u, 0
  br i1 %i.v, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !5

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.g
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #28 ; 2 uses
  store ptr %i.w, ptr %i.h, align 8
  store i64 %i.r, ptr %i.o, align 8
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %bb.d
  %i.x = phi ptr [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i ], [ %i.o, %bb.d ] ; 3 uses
  switch i64 %i.r, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  %i.y = load i8, ptr %i.p, align 1
  store i8 %i.y, ptr %i.x, align 1
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i

bb.j:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.x, ptr align 1 %i.p, i64 %i.r, i1 false)
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i

_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i: ; preds = %bb.j, %bb.i, %._crit_edge.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.r, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.r
  store i8 0, ptr %i.aa, align 1
  %i.ab = load ptr, ptr %i.g, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store ptr %i.ac, ptr %i.g, align 8
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.split

bb.k:                                             ; preds = %_ZNK4node14options_parser8ArgsInfo12program_nameB5cxx11Ev.exit
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.l)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.split

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.split: ; preds = %bb.a, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i, %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 19 uses
  %i.af = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 13 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 15 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 7 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 7 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = icmp eq i32 %5, 0                       ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.au = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 16 uses
  %i.az = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 12 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 8 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  %.phi.trans.insert.i169 = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %.phi.trans.insert.i148 = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %35, i64 32
  %i.bk = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 6 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %22, i64 18
  %i.bq = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 7 uses
  %i.br = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.split
  %i.bt = load ptr, ptr %19, align 8              ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = load ptr, ptr %i.bt, align 8            ; 3 uses
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = ashr exact i64 %i.bz, 5                 ; 3 uses
  %i.cb = add nsw i64 %i.ca, -1
  %i.cc = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.cd = load ptr, ptr %i.d, align 8             ; 4 uses
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = ashr exact i64 %i.cg, 5
  %i.ci = sub nsw i64 0, %i.ch
  %i.cj = icmp eq i64 %i.cb, %i.ci
  br i1 %i.cj, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ck = load ptr, ptr %6, align 8
  %i.cl = load ptr, ptr %i.ae, align 8
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.cn = icmp eq ptr %i.cd, %i.cc
  br i1 %i.cn, label %bb.o, label %_ZN4node14options_parser8ArgsInfo5firstB5cxx11Ev.exit.thread

bb.o:                                             ; preds = %bb.n
  %.not.i.i.i = icmp ugt i64 %i.ca, 1
  br i1 %.not.i.i.i, label %_ZN4node14options_parser8ArgsInfo5firstB5cxx11Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.578, i64 noundef 1, i64 noundef %i.ca) #27
  unreachable

_ZN4node14options_parser8ArgsInfo5firstB5cxx11Ev.exit: ; preds = %bb.o
  %i.co = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.cp = load i64, ptr %i.co, align 8
  %i.cq = icmp ult i64 %i.cp, 2
  br i1 %i.cq, label %.critedge, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit.i77

_ZN4node14options_parser8ArgsInfo5firstB5cxx11Ev.exit.thread: ; preds = %bb.n
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cs = load i64, ptr %i.cr, align 8
end_hunk_2
begin_hunk_3_@_ZNK4node14options_parser13OptionsParserINS_17PerIsolateOptionsEE5ParseEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EESD_SD_PS2_NS_20OptionEnvvarSettingsESD_:bb.a
  br label %bb.u

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #26
  %i.ei = icmp eq i64 %i.eh, -1
  br i1 %i.ei, label %bb.u, label %bb.ab

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit
  store ptr %i.ag, ptr %23, align 8
  %i.ej = icmp ugt i64 %i.cy, 15
  br i1 %i.ej, label %bb.v, label %._crit_edge.i.i83

bb.v:                                             ; preds = %bb.u
  %i.ek = icmp slt i64 %i.cy, 0
  br i1 %i.ek, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.535) #27
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.el = add nuw i64 %i.cy, 1                    ; 2 uses
  %i.em = icmp slt i64 %i.el, 0
  br i1 %i.em, label %bb.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i84, !prof !5

bb.y:                                             ; preds = %bb.x
  call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i84: ; preds = %bb.x
  %i.en = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.el) #28 ; 2 uses
  store ptr %i.en, ptr %23, align 8
  store i64 %i.cy, ptr %i.ag, align 8
  br label %._crit_edge.i.i83

._crit_edge.i.i83:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i84, %bb.u
  %i.eo = phi ptr [ %i.en, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i84 ], [ %i.ag, %bb.u ] ; 3 uses
  switch i64 %i.cy, label %bb.aa [
    i64 1, label %bb.z
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.z:                                             ; preds = %._crit_edge.i.i83
  %i.ep = load i8, ptr %.pre, align 1
  store i8 %i.ep, ptr %i.eo, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.aa:                                            ; preds = %._crit_edge.i.i83
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.eo, ptr nonnull align 1 %.pre, i64 %i.cy, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i83, %bb.z, %bb.aa
  store i64 %i.cy, ptr %i.ah, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.cy
  store i8 0, ptr %i.eq, align 1
  br label %bb.ai

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit
  store ptr %i.ag, ptr %23, align 8, !alias.scope !110
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.eh, i64 %i.cy) ; 8 uses
  %i.er = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.er, label %bb.ac, label %._crit_edge.i.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.es = icmp slt i64 %spec.select.i.i.i, 0
  br i1 %i.es, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.535) #27
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.et = add nuw i64 %spec.select.i.i.i, 1       ; 2 uses
  %i.eu = icmp slt i64 %i.et, 0
  br i1 %i.eu, label %bb.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !5

bb.af:                                            ; preds = %bb.ae
  call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.ae
  %i.ev = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.et) #28 ; 2 uses
  store ptr %i.ev, ptr %23, align 8, !alias.scope !110
  store i64 %spec.select.i.i.i, ptr %i.ag, align 8, !alias.scope !110
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %bb.ab
  %i.ew = phi ptr [ %i.ev, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.ag, %bb.ab ] ; 3 uses
  switch i64 %spec.select.i.i.i, label %bb.ah [
    i64 1, label %bb.ag
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.ag:                                            ; preds = %._crit_edge.i.i.i
  %i.ex = load i8, ptr %.pre, align 1
  store i8 %i.ex, ptr %i.ew, align 1
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.ah:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ew, ptr nonnull align 1 %.pre, i64 %spec.select.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.ag, %bb.ah
  store i64 %spec.select.i.i.i, ptr %i.ah, align 8, !alias.scope !110
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 %spec.select.i.i.i
  store i8 0, ptr %i.ey, align 1
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ez = phi i64 [ %i.eh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit ], [ -1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #26
  store ptr %i.ai, ptr %24, align 8
  %i.fa = load ptr, ptr %23, align 8              ; 2 uses
  %i.fb = load i64, ptr %i.ah, align 8            ; 9 uses
  %i.fc = icmp ugt i64 %i.fb, 15
  br i1 %i.fc, label %bb.aj, label %._crit_edge.i.i85

bb.aj:                                            ; preds = %bb.ai
  %i.fd = icmp slt i64 %i.fb, 0
  br i1 %i.fd, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.535) #27
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.fe = add nuw i64 %i.fb, 1                    ; 2 uses
  %i.ff = icmp slt i64 %i.fe, 0
  br i1 %i.ff, label %bb.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i86, !prof !5

bb.am:                                            ; preds = %bb.al
  call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i86: ; preds = %bb.al
  %i.fg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fe) #28 ; 2 uses
  store ptr %i.fg, ptr %24, align 8
  store i64 %i.fb, ptr %i.ai, align 8
  br label %._crit_edge.i.i85

._crit_edge.i.i85:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i86, %bb.ai
  %i.fh = phi ptr [ %i.fg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i86 ], [ %i.ai, %bb.ai ] ; 3 uses
  switch i64 %i.fb, label %bb.ao [
    i64 1, label %bb.an
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit87
  ]

bb.an:                                            ; preds = %._crit_edge.i.i85
  %i.fi = load i8, ptr %i.fa, align 1
  store i8 %i.fi, ptr %i.fh, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit87

bb.ao:                                            ; preds = %._crit_edge.i.i85
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fh, ptr align 1 %i.fa, i64 %i.fb, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit87: ; preds = %._crit_edge.i.i85, %bb.an, %bb.ao
  store i64 %i.fb, ptr %i.aj, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.fb
  store i8 0, ptr %i.fj, align 1
  %.not64.not = icmp eq i64 %i.ez, -1             ; 5 uses
  br i1 %.not64.not, label %bb.as, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit87
  %i.fk = load i64, ptr %i.aj, align 8            ; 4 uses
  %i.fl = add i64 %i.fk, 1                        ; 3 uses
  %i.fm = load ptr, ptr %24, align 8              ; 2 uses
  %i.fn = icmp eq ptr %i.fm, %i.ai                ; 2 uses
  br i1 %i.fn, label %bb.aq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.fo = icmp ult i64 %i.fk, 16
  call void @llvm.assume(i1 %i.fo)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %bb.aq, %bb.ap
  %i.fp = load i64, ptr %i.ai, align 8
  %i.fq = select i1 %i.fn, i64 15, i64 %i.fp
  %i.fr = icmp ugt i64 %i.fl, %i.fq
  br i1 %i.fr, label %bb.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.ar:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %24, i64 noundef %i.fk, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i = load ptr, ptr %24, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %bb.ar
  %i.fs = phi ptr [ %.pre.i.i, %bb.ar ], [ %i.fm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.fk
  store i8 61, ptr %i.ft, align 1
  store i64 %i.fl, ptr %i.aj, align 8
  %i.fu = load ptr, ptr %24, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fl
  store i8 0, ptr %i.fv, align 1
  %.pre439 = load i64, ptr %i.ah, align 8
  br label %bb.as

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit87
  %i.fw = phi i64 [ %.pre439, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit ], [ %i.fb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit87 ] ; 3 uses
  %i.fx = icmp ugt i64 %i.fw, 2
  br i1 %i.fx, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.aw, %bb.as
  %.lcssa = phi i64 [ %i.fw, %bb.as ], [ %i.gt, %bb.aw ] ; 6 uses
  %.not.i.i88.not = icmp eq i64 %.lcssa, 0
  br i1 %.not.i.i88.not, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread, label %bb.at

bb.at:                                            ; preds = %._crit_edge
  %i.fy = load ptr, ptr %23, align 8              ; 5 uses
  %.not3339.i.i = icmp ult i64 %.lcssa, 5
  br i1 %.not3339.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.at
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 %.lcssa
  %i.ga = ptrtoint ptr %i.fz to i64
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %.lr.ph.i.i, %bb.au
  %.041.i.i = phi i64 [ %.lcssa, %.lr.ph.i.i ], [ %i.go, %bb.au ]
  %.02840.i.i = phi ptr [ %i.fy, %.lr.ph.i.i ], [ %i.gm, %bb.au ]
  %.reass.reass.i.reass.reass.i = add i64 %.041.i.i, -4
  %i.gb = call ptr @memchr(ptr noundef %.02840.i.i, i32 noundef 45, i64 noundef %.reass.reass.i.reass.reass.i) #26 ; 5 uses
  %.not34.i.i = icmp eq ptr %i.gb, null
  br i1 %.not34.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.gc = load i32, ptr %i.gb, align 1
  %i.gd = xor i32 %i.gc, 1869491501
  %i.ge = getelementptr i8, ptr %i.gb, i64 4
  %i.gf = load i8, ptr %i.ge, align 1
  %i.gg = zext i8 %i.gf to i32
  %i.gh = xor i32 %i.gg, 45
  %i.gi = or i32 %i.gd, %i.gh
  %i.gj = icmp ne i32 %i.gi, 0
  %i.gk = zext i1 %i.gj to i32
  %i.gl = icmp eq i32 %i.gk, 0
  br i1 %i.gl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit, label %bb.au

bb.au:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gb, i64 1 ; 2 uses
  %i.gn = ptrtoint ptr %i.gm to i64
  %i.go = sub i64 %i.ga, %i.gn                    ; 2 uses
  %.not33.i.i = icmp ult i64 %i.go, 5
  br i1 %.not33.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, !llvm.loop !50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %.not334 = icmp eq ptr %i.gb, %i.fy
  br i1 %.not334, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread301, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread

.lr.ph:                                           ; preds = %bb.as, %bb.aw
  %i.gp = phi i64 [ %i.gt, %bb.aw ], [ %i.fw, %bb.as ]
  %.052405 = phi i64 [ %i.gu, %bb.aw ], [ 2, %bb.as ] ; 2 uses
  %36 = load ptr, ptr %23, align 8
  %i.gq = getelementptr inbounds nuw i8, ptr %36, i64 %.052405 ; 2 uses
  %i.gr = load i8, ptr %i.gq, align 1
  %i.gs = icmp eq i8 %i.gr, 95
  br i1 %i.gs, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %.lr.ph
  store i8 45, ptr %i.gq, align 1
  %.pre440.a = load i64, ptr %i.ah, align 8
  br label %bb.aw

bb.aw:                                            ; preds = %.lr.ph, %bb.av
  %i.gt = phi i64 [ %i.gp, %.lr.ph ], [ %.pre440.a, %bb.av ] ; 3 uses
  %i.gu = add nuw i64 %.052405, 1                 ; 2 uses
  %i.gv = icmp ult i64 %i.gu, %i.gt
  br i1 %i.gv, label %.lr.ph, label %._crit_edge, !llvm.loop !113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread301: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit
  %.not406 = icmp eq i64 %.lcssa, 5
  br i1 %.not406, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit, label %bb.ax

bb.ax:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread301
  %i.gw = add i64 %.lcssa, -5                     ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fy, i64 2 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.fy, i64 5 ; 2 uses
  %cond = icmp eq i64 %i.gw, 1
  br i1 %cond, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.gz = load i8, ptr %i.gy, align 1
  store i8 %i.gz, ptr %i.gx, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit

bb.az:                                            ; preds = %bb.ax
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.gx, ptr nonnull align 1 %i.gy, i64 %i.gw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread301, %bb.ay, %bb.az
  %i.ha = load i64, ptr %i.ah, align 8
  %i.hb = add i64 %i.ha, -3                       ; 2 uses
  store i64 %i.hb, ptr %i.ah, align 8
  %i.hc = load ptr, ptr %23, align 8
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 %i.hb
  store i8 0, ptr %i.hd, align 1
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.au, %bb.at, %._crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit
  %i.he = phi i1 [ true, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit ], [ true, %bb.at ], [ true, %._crit_edge ], [ true, %bb.au ], [ true, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ] ; 4 uses
  br label %bb.ba

bb.ba:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread
  %i.hf = call ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %23) ; 2 uses
  %i.hg = icmp eq ptr %i.hf, null
  br i1 %i.hg, label %bb.bb, label %.critedge74.thread

bb.bb:                                            ; preds = %bb.ba
  br i1 %.not64.not, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 61, ptr %i.a, align 1, !noalias !114
  %i.hh = load ptr, ptr %23, align 8, !noalias !114
  %i.hi = load i64, ptr %i.ah, align 8, !noalias !114
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26, !noalias !114
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %25, ptr noundef %i.hh, i64 noundef %i.hi, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26, !noalias !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.hj = call ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %25) ; 2 uses
  %i.hk = icmp eq ptr %i.hj, null
  br i1 %i.hk, label %bb.bd, label %.thread304.thread

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.hl = load ptr, ptr %19, align 8              ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8
  %i.ho = load ptr, ptr %i.hl, align 8            ; 3 uses
  %i.hp = ptrtoint ptr %i.hn to i64
  %i.hq = ptrtoint ptr %i.ho to i64
  %i.hr = sub i64 %i.hp, %i.hq
  %i.hs = ashr exact i64 %i.hr, 5                 ; 3 uses
  %i.ht = add nsw i64 %i.hs, -1
  %i.hu = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.hv = load ptr, ptr %i.d, align 8             ; 4 uses
  %i.hw = ptrtoint ptr %i.hu to i64
  %i.hx = ptrtoint ptr %i.hv to i64
  %i.hy = sub i64 %i.hw, %i.hx
  %i.hz = ashr exact i64 %i.hy, 5
  %i.ia = sub nsw i64 0, %i.hz
  %i.ib = icmp eq i64 %i.ht, %i.ia
  br i1 %i.ib, label %.thread304, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ic = icmp eq ptr %i.hv, %i.hu
  br i1 %i.ic, label %bb.bf, label %_ZN4node14options_parser8ArgsInfo5firstB5cxx11Ev.exit91.thread

bb.bf:                                            ; preds = %bb.be
  %.not.i.i.i89 = icmp ugt i64 %i.hs, 1
  br i1 %.not.i.i.i89, label %_ZN4node14options_parser8ArgsInfo5firstB5cxx11Ev.exit91, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.578, i64 noundef 1, i64 noundef %i.hs) #27
  unreachable

_ZN4node14options_parser8ArgsInfo5firstB5cxx11Ev.exit91: ; preds = %bb.bf
  %i.id = getelementptr inbounds nuw i8, ptr %i.ho, i64 40
  %i.ie = load i64, ptr %i.id, align 8
  %i.if = icmp eq i64 %i.ie, 0
  br i1 %i.if, label %.thread304, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit.i93

_ZN4node14options_parser8ArgsInfo5firstB5cxx11Ev.exit91.thread: ; preds = %bb.be
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.ih = load i64, ptr %i.ig, align 8
  %i.ii = icmp eq i64 %i.ih, 0
  br i1 %i.ii, label %.thread304, label %_ZN4node14options_parser8ArgsInfo5firstB5cxx11Ev.exit94

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit.i93: ; preds = %_ZN4node14options_parser8ArgsInfo5firstB5cxx11Ev.exit91
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ho, i64 32
  br label %_ZN4node14options_parser8ArgsInfo5firstB5cxx11Ev.exit94

_ZN4node14options_parser8ArgsInfo5firstB5cxx11Ev.exit94: ; preds = %_ZN4node14options_parser8ArgsInfo5firstB5cxx11Ev.exit91.thread, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit.i93
  %i.ik = phi ptr [ %i.ij, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit.i93 ], [ %i.hv, %_ZN4node14options_parser8ArgsInfo5firstB5cxx11Ev.exit91.thread ]
  %i.il = load ptr, ptr %i.ik, align 8
  %i.im = load i8, ptr %i.il, align 1
  %.not65 = icmp eq i8 %i.im, 45
  br i1 %.not65, label %.thread304, label %bb.bh

.thread304:                                       ; preds = %bb.bd, %_ZN4node14options_parser8ArgsInfo5firstB5cxx11Ev.exit91, %_ZN4node14options_parser8ArgsInfo5firstB5cxx11Ev.exit94, %_ZN4node14options_parser8ArgsInfo5firstB5cxx11Ev.exit91.thread
  br i1 %.not64.not, label %.critedge74.thread328, label %.thread304.thread

bb.bh:                                            ; preds = %_ZN4node14options_parser8ArgsInfo5firstB5cxx11Ev.exit94
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #26
  %i.in = load ptr, ptr %23, align 8, !noalias !117
  %i.io = load i64, ptr %i.ah, align 8, !noalias !117
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26, !noalias !117
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %26, ptr noundef %i.in, i64 noundef %i.io, ptr noundef nonnull @.str.574, i64 noundef 6, ptr noundef nonnull align 1 dereferenceable(1) %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26, !noalias !117
  %i.ip = call ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %26) ; 3 uses
  %i.iq = icmp ne ptr %i.ip, null                 ; 2 uses
  %i.ir = load ptr, ptr %26, align 8              ; 2 uses
  %i.is = icmp eq ptr %i.ir, %i.al
  br i1 %i.is, label %.critedge72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95: ; preds = %bb.bh
  %i.it = load i64, ptr %i.al, align 8
  %i.iu = add i64 %i.it, 1
  call void @_ZdlPvm(ptr noundef %i.ir, i64 noundef %i.iu) #29
  br label %.critedge72

.critedge72:                                      ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #26
  br i1 %.not64.not, label %.critedge74, label %.thread304.thread

.thread304.thread:                                ; preds = %bb.bc, %.thread304, %.critedge72
  %.sroa.0281.1308311 = phi ptr [ null, %.thread304 ], [ %i.ip, %.critedge72 ], [ %i.hj, %bb.bc ]
  %i.iv = phi i1 [ false, %.thread304 ], [ %i.iq, %.critedge72 ], [ true, %bb.bc ]
  %i.iw = load ptr, ptr %25, align 8              ; 2 uses
  %i.ix = icmp eq ptr %i.iw, %i.am
  br i1 %i.ix, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %.thread304.thread
  %i.iy = load i64, ptr %i.am, align 8
  %i.iz = add i64 %i.iy, 1
  call void @_ZdlPvm(ptr noundef %i.iw, i64 noundef %i.iz) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100: ; preds = %.thread304.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26
  br i1 %i.iv, label %.critedge74.thread, label %.critedge74.thread328

.critedge74:                                      ; preds = %.critedge72
  br i1 %i.iq, label %.critedge74.thread, label %.critedge74.thread328

.critedge74.thread:                               ; preds = %bb.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, %.critedge74
  %.sroa.0281.1308310312 = phi ptr [ %.sroa.0281.1308311, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100 ], [ %i.ip, %.critedge74 ], [ %i.hf, %bb.ba ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #26
  store ptr %i.an, ptr %27, align 8
  %i.ja = load ptr, ptr %23, align 8              ; 2 uses
  %i.jb = icmp eq ptr %i.ja, %i.ag
  br i1 %i.jb, label %bb.bi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.bi:                                            ; preds = %.critedge74.thread
  %i.jc = load i64, ptr %i.ah, align 8            ; 3 uses
  %i.jd = icmp ult i64 %i.jc, 16
  call void @llvm.assume(i1 %i.jd)
  %i.je = add nuw nsw i64 %i.jc, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.an, ptr noundef nonnull align 8 dereferenceable(1) %i.ag, i64 %i.je, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %.critedge74.thread
  store ptr %i.ja, ptr %27, align 8
  %i.jf = load i64, ptr %i.ag, align 8
  store i64 %i.jf, ptr %i.an, align 8
  %.pre441.a = load i64, ptr %i.ah, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.jg = phi i64 [ %i.jc, %bb.bi ], [ %.pre441.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  store i64 %i.jg, ptr %i.ao, align 8
  store ptr %i.ag, ptr %23, align 8
  store i64 0, ptr %i.ah, align 8
  store i8 0, ptr %i.ag, align 8
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.0281.1308310312, i64 40 ; 2 uses
  %i.ji = load ptr, ptr %i.jh, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(32) %i.ji)
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.0281.1308310312, i64 48
  %i.jk = load ptr, ptr %i.jj, align 8            ; 2 uses
  %i.jl = load ptr, ptr %i.jh, align 8            ; 2 uses
  %i.jm = ptrtoint ptr %i.jk to i64
  %i.jn = ptrtoint ptr %i.jl to i64
  %i.jo = sub i64 %i.jm, %i.jn
  %i.jp = icmp ugt i64 %i.jo, 32
  br i1 %i.jp, label %bb.bj, label %bb.bk
end_hunk_3
begin_hunk_4_@_ZNK4node14options_parser13OptionsParserINS_17PerIsolateOptionsEE5ParseEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EESD_SD_PS2_NS_20OptionEnvvarSettingsESD_:bb.a
bb.gw:                                            ; preds = %._crit_edge.i.i.i.i236
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.acg, ptr align 1 %i.abz, i64 %i.aca, i1 false)
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i237

_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i237: ; preds = %bb.gw, %bb.gv, %._crit_edge.i.i.i.i236
  %i.aci = getelementptr inbounds nuw i8, ptr %i.abv, i64 8
  store i64 %i.aca, ptr %i.aci, align 8
  %i.acj = getelementptr inbounds nuw i8, ptr %i.acg, i64 %i.aca
  store i8 0, ptr %i.acj, align 1
  %i.ack = load ptr, ptr %i.abu, align 8
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ack, i64 32
  store ptr %i.acl, ptr %i.abu, align 8
  br label %_ZNSt12__shared_ptrIN4node14options_parser13OptionsParserINS0_17PerIsolateOptionsEE15BaseOptionFieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.gx:                                            ; preds = %bb.gp
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.abt, ptr %i.abv, ptr noundef nonnull align 8 dereferenceable(32) %20)
  br label %_ZNSt12__shared_ptrIN4node14options_parser13OptionsParserINS0_17PerIsolateOptionsEE15BaseOptionFieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.gy:                                            ; preds = %.thread318
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZNK4node14options_parser13OptionsParserINS_17PerIsolateOptionsEE5ParseEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EESD_SD_PS2_NS_20OptionEnvvarSettingsESD_E20error_and_abort_args) #26
  call void @abort() #27
  unreachable

_ZNSt12__shared_ptrIN4node14options_parser13OptionsParserINS0_17PerIsolateOptionsEE15BaseOptionFieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.critedge: ; preds = %bb.dz
  %i.acm = load ptr, ptr %i.c, align 8
  %i.acn = load ptr, ptr %i.sz, align 8
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acn, i64 16
  %i.acp = load ptr, ptr %i.aco, align 8
  %i.acq = call noundef ptr %i.acp(ptr noundef nonnull align 8 dereferenceable(8) %i.sz, ptr noundef %i.acm) #26, !inline_history !159
  %i.acr = zext i1 %i.he to i8
  store i8 %i.acr, ptr %i.acq, align 1
  br label %_ZNSt12__shared_ptrIN4node14options_parser13OptionsParserINS0_17PerIsolateOptionsEE15BaseOptionFieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4node14options_parser13OptionsParserINS0_17PerIsolateOptionsEE15BaseOptionFieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.critedge331: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit189
  %i.acs = load ptr, ptr %i.c, align 8
  %i.act = load ptr, ptr %i.vj, align 8
  %i.acu = getelementptr inbounds nuw i8, ptr %i.act, i64 16
  %i.acv = load ptr, ptr %i.acu, align 8
  %i.acw = call noundef ptr %i.acv(ptr noundef nonnull align 8 dereferenceable(8) %i.vj, ptr noundef %i.acs) #26, !inline_history !161
  store i64 %i.vh, ptr %i.acw, align 8
  br label %_ZNSt12__shared_ptrIN4node14options_parser13OptionsParserINS0_17PerIsolateOptionsEE15BaseOptionFieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4node14options_parser13OptionsParserINS0_17PerIsolateOptionsEE15BaseOptionFieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.critedge332: ; preds = %bb.ez
  %i.acx = load ptr, ptr %i.c, align 8
  %i.acy = load ptr, ptr %i.wn, align 8
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acy, i64 16
  %i.ada = load ptr, ptr %i.acz, align 8
  %i.adb = call noundef ptr %i.ada(ptr noundef nonnull align 8 dereferenceable(8) %i.wn, ptr noundef %i.acx) #26, !inline_history !162
  store i64 %i.wl, ptr %i.adb, align 8
  br label %_ZNSt12__shared_ptrIN4node14options_parser13OptionsParserINS0_17PerIsolateOptionsEE15BaseOptionFieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4node14options_parser13OptionsParserINS0_17PerIsolateOptionsEE15BaseOptionFieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.critedge333: ; preds = %bb.fi
  %i.adc = load ptr, ptr %i.c, align 8
  %i.add = load ptr, ptr %i.xp, align 8
  %i.ade = getelementptr inbounds nuw i8, ptr %i.add, i64 16
  %i.adf = load ptr, ptr %i.ade, align 8
  %i.adg = call noundef ptr %i.adf(ptr noundef nonnull align 8 dereferenceable(8) %i.xp, ptr noundef %i.adc) #26, !inline_history !163
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.adg, ptr noundef nonnull align 8 dereferenceable(32) %31)
  br label %_ZNSt12__shared_ptrIN4node14options_parser13OptionsParserINS0_17PerIsolateOptionsEE15BaseOptionFieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4node14options_parser13OptionsParserINS0_17PerIsolateOptionsEE15BaseOptionFieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN4node14options_parser13OptionsParserINS0_17PerIsolateOptionsEE15BaseOptionFieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.critedge333, %_ZNSt12__shared_ptrIN4node14options_parser13OptionsParserINS0_17PerIsolateOptionsEE15BaseOptionFieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.critedge332, %_ZNSt12__shared_ptrIN4node14options_parser13OptionsParserINS0_17PerIsolateOptionsEE15BaseOptionFieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.critedge331, %_ZNSt12__shared_ptrIN4node14options_parser13OptionsParserINS0_17PerIsolateOptionsEE15BaseOptionFieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.critedge, %bb.gx, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i237, %bb.go, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i232, %bb.gk, %_ZN4node8HostPortD2Ev.exit, %bb.gd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i222, %bb.fz, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit, %bb.fq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i211, %bb.fm, %bb.fh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i203, %bb.fd, %bb.ey, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i195, %bb.eu, %bb.eh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ed, %.thread318, %_ZZNK4node14options_parser13OptionsParserINS_17PerIsolateOptionsEE5ParseEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EESD_SD_PS2_NS_20OptionEnvvarSettingsESD_ENKUlvE_clEv.exit176, %_ZZNK4node14options_parser13OptionsParserINS_17PerIsolateOptionsEE5ParseEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EESD_SD_PS2_NS_20OptionEnvvarSettingsESD_ENKUlvE_clEv.exit155, %_ZZNK4node14options_parser13OptionsParserINS_17PerIsolateOptionsEE5ParseEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EESD_SD_PS2_NS_20OptionEnvvarSettingsESD_ENKUlvE_clEv.exit
  %i.adh = phi i1 [ true, %_ZZNK4node14options_parser13OptionsParserINS_17PerIsolateOptionsEE5ParseEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EESD_SD_PS2_NS_20OptionEnvvarSettingsESD_ENKUlvE_clEv.exit ], [ true, %_ZZNK4node14options_parser13OptionsParserINS_17PerIsolateOptionsEE5ParseEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EESD_SD_PS2_NS_20OptionEnvvarSettingsESD_ENKUlvE_clEv.exit176 ], [ true, %_ZZNK4node14options_parser13OptionsParserINS_17PerIsolateOptionsEE5ParseEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EESD_SD_PS2_NS_20OptionEnvvarSettingsESD_ENKUlvE_clEv.exit155 ], [ false, %bb.go ], [ false, %bb.gd ], [ false, %bb.fq ], [ false, %bb.fh ], [ false, %bb.ey ], [ false, %bb.eh ], [ false, %.thread318 ], [ false, %_ZNSt12__shared_ptrIN4node14options_parser13OptionsParserINS0_17PerIsolateOptionsEE15BaseOptionFieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.critedge ], [ false, %bb.ed ], [ false, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i ], [ false, %_ZNSt12__shared_ptrIN4node14options_parser13OptionsParserINS0_17PerIsolateOptionsEE15BaseOptionFieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.critedge331 ], [ false, %bb.eu ], [ false, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i195 ], [ false, %_ZNSt12__shared_ptrIN4node14options_parser13OptionsParserINS0_17PerIsolateOptionsEE15BaseOptionFieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.critedge332 ], [ false, %bb.fd ], [ false, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i203 ], [ false, %_ZNSt12__shared_ptrIN4node14options_parser13OptionsParserINS0_17PerIsolateOptionsEE15BaseOptionFieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.critedge333 ], [ false, %bb.fm ], [ false, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i211 ], [ false, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit ], [ false, %bb.fz ], [ false, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i222 ], [ false, %_ZN4node8HostPortD2Ev.exit ], [ false, %bb.gk ], [ false, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i232 ], [ false, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i237 ], [ false, %bb.gx ]
  %i.adi = load ptr, ptr %31, align 8             ; 2 uses
  %i.adj = icmp eq ptr %i.adi, %i.ay
  br i1 %i.adj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240: ; preds = %_ZNSt12__shared_ptrIN4node14options_parser13OptionsParserINS0_17PerIsolateOptionsEE15BaseOptionFieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.adk = load i64, ptr %i.ay, align 8
  %i.adl = add i64 %i.adk, 1
  call void @_ZdlPvm(ptr noundef %i.adi, i64 noundef %i.adl) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242: ; preds = %_ZNSt12__shared_ptrIN4node14options_parser13OptionsParserINS0_17PerIsolateOptionsEE15BaseOptionFieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #26
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit127

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit127: ; preds = %bb.cm, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i125, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111
  %.3 = phi i1 [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111 ], [ %i.adh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242 ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134 ], [ false, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i125 ], [ false, %bb.cm ]
  %i.adm = load ptr, ptr %24, align 8             ; 2 uses
  %i.adn = icmp eq ptr %i.adm, %i.ai
  br i1 %i.adn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit127
  %i.ado = load i64, ptr %i.ai, align 8
  %i.adp = add i64 %i.ado, 1
  call void @_ZdlPvm(ptr noundef %i.adm, i64 noundef %i.adp) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit127, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  %i.adq = load ptr, ptr %23, align 8             ; 2 uses
  %i.adr = icmp eq ptr %i.adq, %i.ag
  br i1 %i.adr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245
  %i.ads = load i64, ptr %i.ag, align 8
  %i.adt = add i64 %i.ads, 1
  call void @_ZdlPvm(ptr noundef %i.adq, i64 noundef %i.adt) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  br label %bb.gz

bb.gz:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248
  %.4 = phi i1 [ %.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248 ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81 ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ]
  %i.adu = load ptr, ptr %20, align 8             ; 2 uses
  %i.adv = icmp eq ptr %i.adu, %i.bs
  br i1 %i.adv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249: ; preds = %bb.gz
  %i.adw = load i64, ptr %i.bs, align 8
  %i.adx = add i64 %i.adw, 1
  call void @_ZdlPvm(ptr noundef %i.adu, i64 noundef %i.adx) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251: ; preds = %bb.gz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  br i1 %.4, label %.critedge, label %bb.l

.critedge:                                        ; preds = %_ZN4node14options_parser8ArgsInfo5firstB5cxx11Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251, %bb.l, %_ZN4node14options_parser8ArgsInfo5firstB5cxx11Ev.exit, %_ZN4node14options_parser8ArgsInfo5firstB5cxx11Ev.exit78, %bb.m
  %i.ady = load ptr, ptr %i.c, align 8            ; 2 uses
  %i.adz = load ptr, ptr %i.ady, align 8
  %i.aea = load ptr, ptr %i.adz, align 8
  call void %i.aea(ptr noundef nonnull align 8 dereferenceable(176) %i.ady, ptr noundef %6, ptr noundef %1) #26
  %i.aeb = load ptr, ptr %i.d, align 8            ; 3 uses
  %i.aec = load ptr, ptr %i.ad, align 8           ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.aeb, %i.aec
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.critedge, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.aei, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.aeb, %.critedge ] ; 3 uses
  %i.aed = load ptr, ptr %.05.i.i.i.i, align 8    ; 2 uses
  %i.aee = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.aef = icmp eq ptr %i.aed, %i.aee
  br i1 %i.aef, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.aeg = load i64, ptr %i.aee, align 8
  %i.aeh = add i64 %i.aeg, 1
  call void @_ZdlPvm(ptr noundef %i.aed, i64 noundef %i.aeh) #29
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.aei = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i252 = icmp eq ptr %i.aei, %i.aec
  br i1 %.not.i.i.i.i252, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !17

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.d, align 8
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i, %.critedge
  %i.aej = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i ], [ %i.aeb, %.critedge ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.aej, null
  br i1 %.not.i.i1.i.i, label %_ZN4node14options_parser8ArgsInfoD2Ev.exit, label %bb.ha

bb.ha:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i
  %i.aek = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.ael = load ptr, ptr %i.aek, align 8
  %i.aem = ptrtoint ptr %i.ael to i64
  %i.aen = ptrtoint ptr %i.aej to i64
  %i.aeo = sub i64 %i.aem, %i.aen
  call void @_ZdlPvm(ptr noundef nonnull %i.aej, i64 noundef %i.aeo) #29
  br label %_ZN4node14options_parser8ArgsInfoD2Ev.exit

_ZN4node14options_parser8ArgsInfoD2Ev.exit:       ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i, %bb.ha
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node14options_parser5ParseINS_17PerProcessOptionsENS_7OptionsEEEvPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EESD_SD_PT_NS_20OptionEnvvarSettingsESD_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  tail call void @_ZNK4node14options_parser13OptionsParserINS_17PerProcessOptionsEE5ParseEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EESD_SD_PS2_NS_20OptionEnvvarSettingsESD_(ptr noundef nonnull align 8 dereferenceable(176) @_ZN4node14options_parserL14_ppop_instanceE, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNK4node14options_parser13OptionsParserINS_17PerProcessOptionsEE5ParseEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EESD_SD_PS2_NS_20OptionEnvvarSettingsESD_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %7 = alloca %"class.std::allocator", align 1    ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::allocator", align 1   ; 3 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"class.std::allocator", align 1   ; 3 uses
  %14 = alloca %class.anon.865, align 8           ; 8 uses
  %15 = alloca %"class.std::allocator", align 1   ; 3 uses
  %16 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %17 = alloca %"class.std::allocator", align 1   ; 3 uses
  %18 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 14 uses
  %19 = alloca %"struct.node::options_parser::ArgsInfo", align 8 ; 12 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 24 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 24 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %35 = alloca %"class.node::HostPort", align 8   ; 8 uses
  store ptr %3, ptr %i.b, align 8
  store ptr %4, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  store ptr %1, ptr %19, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %19, i64 32
  store ptr %2, ptr %i.e, align 8
  %i.f = load ptr, ptr %3, align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 6 uses
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.b, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.split

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = load ptr, ptr %1, align 8                ; 4 uses
  %.not.i.i.not.i = icmp eq ptr %i.k, %i.l
  br i1 %.not.i.i.not.i, label %bb.c, label %_ZNK4node14options_parser8ArgsInfo12program_nameB5cxx11Ev.exit

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.578, i64 noundef 0, i64 noundef 0) #27
  unreachable

_ZNK4node14options_parser8ArgsInfo12program_nameB5cxx11Ev.exit: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %.not.i = icmp eq ptr %i.f, %i.n
  br i1 %.not.i, label %bb.k, label %bb.d

bb.d:                                             ; preds = %_ZNK4node14options_parser8ArgsInfo12program_nameB5cxx11Ev.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  store ptr %i.o, ptr %i.h, align 8
  %i.p = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.r = load i64, ptr %i.q, align 8              ; 8 uses
  %i.s = icmp ugt i64 %i.r, 15
  br i1 %i.s, label %bb.e, label %._crit_edge.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.t = icmp slt i64 %i.r, 0
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.535) #27
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.u = add nuw i64 %i.r, 1                      ; 2 uses
  %i.v = icmp slt i64 %i.u, 0
  br i1 %i.v, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !5

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.g
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #28 ; 2 uses
  store ptr %i.w, ptr %i.h, align 8
  store i64 %i.r, ptr %i.o, align 8
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %bb.d
  %i.x = phi ptr [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i ], [ %i.o, %bb.d ] ; 3 uses
  switch i64 %i.r, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  %i.y = load i8, ptr %i.p, align 1
  store i8 %i.y, ptr %i.x, align 1
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i

bb.j:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.x, ptr align 1 %i.p, i64 %i.r, i1 false)
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i

_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i: ; preds = %bb.j, %bb.i, %._crit_edge.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.r, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.r
  store i8 0, ptr %i.aa, align 1
  %i.ab = load ptr, ptr %i.g, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store ptr %i.ac, ptr %i.g, align 8
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.split

bb.k:                                             ; preds = %_ZNK4node14options_parser8ArgsInfo12program_nameB5cxx11Ev.exit
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.l)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.split

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.split: ; preds = %bb.a, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i, %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 19 uses
  %i.af = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 13 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 15 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 7 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 7 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = icmp eq i32 %5, 0                       ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.au = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 16 uses
  %i.az = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 12 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 8 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  %.phi.trans.insert.i169 = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %.phi.trans.insert.i148 = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %35, i64 32
  %i.bk = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 6 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %22, i64 18
  %i.bq = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 7 uses
  %i.br = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.split
  %i.bt = load ptr, ptr %19, align 8              ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = load ptr, ptr %i.bt, align 8            ; 3 uses
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = ashr exact i64 %i.bz, 5                 ; 3 uses
  %i.cb = add nsw i64 %i.ca, -1
  %i.cc = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.cd = load ptr, ptr %i.d, align 8             ; 4 uses
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = ashr exact i64 %i.cg, 5
  %i.ci = sub nsw i64 0, %i.ch
  %i.cj = icmp eq i64 %i.cb, %i.ci
  br i1 %i.cj, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ck = load ptr, ptr %6, align 8
  %i.cl = load ptr, ptr %i.ae, align 8
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.cn = icmp eq ptr %i.cd, %i.cc
  br i1 %i.cn, label %bb.o, label %_ZN4node14options_parser8ArgsInfo5firstB5cxx11Ev.exit.thread

bb.o:                                             ; preds = %bb.n
  %.not.i.i.i = icmp ugt i64 %i.ca, 1
  br i1 %.not.i.i.i, label %_ZN4node14options_parser8ArgsInfo5firstB5cxx11Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.578, i64 noundef 1, i64 noundef %i.ca) #27
  unreachable

_ZN4node14options_parser8ArgsInfo5firstB5cxx11Ev.exit: ; preds = %bb.o
  %i.co = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.cp = load i64, ptr %i.co, align 8
  %i.cq = icmp ult i64 %i.cp, 2
  br i1 %i.cq, label %.critedge, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit.i77

_ZN4node14options_parser8ArgsInfo5firstB5cxx11Ev.exit.thread: ; preds = %bb.n
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cs = load i64, ptr %i.cr, align 8
end_hunk_4
begin_hunk_5_@_ZNK4node14options_parser13OptionsParserINS_17PerProcessOptionsEE5ParseEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EESD_SD_PS2_NS_20OptionEnvvarSettingsESD_:bb.a
  br label %bb.u

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #26
  %i.ei = icmp eq i64 %i.eh, -1
  br i1 %i.ei, label %bb.u, label %bb.ab

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit
  store ptr %i.ag, ptr %23, align 8
  %i.ej = icmp ugt i64 %i.cy, 15
  br i1 %i.ej, label %bb.v, label %._crit_edge.i.i83

bb.v:                                             ; preds = %bb.u
  %i.ek = icmp slt i64 %i.cy, 0
  br i1 %i.ek, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.535) #27
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.el = add nuw i64 %i.cy, 1                    ; 2 uses
  %i.em = icmp slt i64 %i.el, 0
  br i1 %i.em, label %bb.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i84, !prof !5

bb.y:                                             ; preds = %bb.x
  call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i84: ; preds = %bb.x
  %i.en = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.el) #28 ; 2 uses
  store ptr %i.en, ptr %23, align 8
  store i64 %i.cy, ptr %i.ag, align 8
  br label %._crit_edge.i.i83

._crit_edge.i.i83:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i84, %bb.u
  %i.eo = phi ptr [ %i.en, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i84 ], [ %i.ag, %bb.u ] ; 3 uses
  switch i64 %i.cy, label %bb.aa [
    i64 1, label %bb.z
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.z:                                             ; preds = %._crit_edge.i.i83
  %i.ep = load i8, ptr %.pre, align 1
  store i8 %i.ep, ptr %i.eo, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.aa:                                            ; preds = %._crit_edge.i.i83
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.eo, ptr nonnull align 1 %.pre, i64 %i.cy, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i83, %bb.z, %bb.aa
  store i64 %i.cy, ptr %i.ah, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.cy
  store i8 0, ptr %i.eq, align 1
  br label %bb.ai

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit
  store ptr %i.ag, ptr %23, align 8, !alias.scope !171
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.eh, i64 %i.cy) ; 8 uses
  %i.er = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.er, label %bb.ac, label %._crit_edge.i.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.es = icmp slt i64 %spec.select.i.i.i, 0
  br i1 %i.es, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.535) #27
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.et = add nuw i64 %spec.select.i.i.i, 1       ; 2 uses
  %i.eu = icmp slt i64 %i.et, 0
  br i1 %i.eu, label %bb.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !5

bb.af:                                            ; preds = %bb.ae
  call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.ae
  %i.ev = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.et) #28 ; 2 uses
  store ptr %i.ev, ptr %23, align 8, !alias.scope !171
  store i64 %spec.select.i.i.i, ptr %i.ag, align 8, !alias.scope !171
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %bb.ab
  %i.ew = phi ptr [ %i.ev, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.ag, %bb.ab ] ; 3 uses
  switch i64 %spec.select.i.i.i, label %bb.ah [
    i64 1, label %bb.ag
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.ag:                                            ; preds = %._crit_edge.i.i.i
  %i.ex = load i8, ptr %.pre, align 1
  store i8 %i.ex, ptr %i.ew, align 1
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.ah:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ew, ptr nonnull align 1 %.pre, i64 %spec.select.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.ag, %bb.ah
  store i64 %spec.select.i.i.i, ptr %i.ah, align 8, !alias.scope !171
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 %spec.select.i.i.i
  store i8 0, ptr %i.ey, align 1
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ez = phi i64 [ %i.eh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit ], [ -1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #26
  store ptr %i.ai, ptr %24, align 8
  %i.fa = load ptr, ptr %23, align 8              ; 2 uses
  %i.fb = load i64, ptr %i.ah, align 8            ; 9 uses
  %i.fc = icmp ugt i64 %i.fb, 15
  br i1 %i.fc, label %bb.aj, label %._crit_edge.i.i85

bb.aj:                                            ; preds = %bb.ai
  %i.fd = icmp slt i64 %i.fb, 0
  br i1 %i.fd, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.535) #27
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.fe = add nuw i64 %i.fb, 1                    ; 2 uses
  %i.ff = icmp slt i64 %i.fe, 0
  br i1 %i.ff, label %bb.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i86, !prof !5

bb.am:                                            ; preds = %bb.al
  call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i86: ; preds = %bb.al
  %i.fg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fe) #28 ; 2 uses
  store ptr %i.fg, ptr %24, align 8
  store i64 %i.fb, ptr %i.ai, align 8
  br label %._crit_edge.i.i85

._crit_edge.i.i85:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i86, %bb.ai
  %i.fh = phi ptr [ %i.fg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i86 ], [ %i.ai, %bb.ai ] ; 3 uses
  switch i64 %i.fb, label %bb.ao [
    i64 1, label %bb.an
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit87
  ]

bb.an:                                            ; preds = %._crit_edge.i.i85
  %i.fi = load i8, ptr %i.fa, align 1
  store i8 %i.fi, ptr %i.fh, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit87

bb.ao:                                            ; preds = %._crit_edge.i.i85
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fh, ptr align 1 %i.fa, i64 %i.fb, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit87: ; preds = %._crit_edge.i.i85, %bb.an, %bb.ao
  store i64 %i.fb, ptr %i.aj, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.fb
  store i8 0, ptr %i.fj, align 1
  %.not64.not = icmp eq i64 %i.ez, -1             ; 5 uses
  br i1 %.not64.not, label %bb.as, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit87
  %i.fk = load i64, ptr %i.aj, align 8            ; 4 uses
  %i.fl = add i64 %i.fk, 1                        ; 3 uses
  %i.fm = load ptr, ptr %24, align 8              ; 2 uses
  %i.fn = icmp eq ptr %i.fm, %i.ai                ; 2 uses
  br i1 %i.fn, label %bb.aq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.fo = icmp ult i64 %i.fk, 16
  call void @llvm.assume(i1 %i.fo)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %bb.aq, %bb.ap
  %i.fp = load i64, ptr %i.ai, align 8
  %i.fq = select i1 %i.fn, i64 15, i64 %i.fp
  %i.fr = icmp ugt i64 %i.fl, %i.fq
  br i1 %i.fr, label %bb.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.ar:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %24, i64 noundef %i.fk, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i = load ptr, ptr %24, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %bb.ar
  %i.fs = phi ptr [ %.pre.i.i, %bb.ar ], [ %i.fm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.fk
  store i8 61, ptr %i.ft, align 1
  store i64 %i.fl, ptr %i.aj, align 8
  %i.fu = load ptr, ptr %24, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fl
  store i8 0, ptr %i.fv, align 1
  %.pre439 = load i64, ptr %i.ah, align 8
  br label %bb.as

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit87
  %i.fw = phi i64 [ %.pre439, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit ], [ %i.fb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit87 ] ; 3 uses
  %i.fx = icmp ugt i64 %i.fw, 2
  br i1 %i.fx, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.aw, %bb.as
  %.lcssa = phi i64 [ %i.fw, %bb.as ], [ %i.gt, %bb.aw ] ; 6 uses
  %.not.i.i88.not = icmp eq i64 %.lcssa, 0
  br i1 %.not.i.i88.not, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread, label %bb.at

bb.at:                                            ; preds = %._crit_edge
  %i.fy = load ptr, ptr %23, align 8              ; 5 uses
  %.not3339.i.i = icmp ult i64 %.lcssa, 5
  br i1 %.not3339.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.at
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 %.lcssa
  %i.ga = ptrtoint ptr %i.fz to i64
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %.lr.ph.i.i, %bb.au
  %.041.i.i = phi i64 [ %.lcssa, %.lr.ph.i.i ], [ %i.go, %bb.au ]
  %.02840.i.i = phi ptr [ %i.fy, %.lr.ph.i.i ], [ %i.gm, %bb.au ]
  %.reass.reass.i.reass.reass.i = add i64 %.041.i.i, -4
  %i.gb = call ptr @memchr(ptr noundef %.02840.i.i, i32 noundef 45, i64 noundef %.reass.reass.i.reass.reass.i) #26 ; 5 uses
  %.not34.i.i = icmp eq ptr %i.gb, null
  br i1 %.not34.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.gc = load i32, ptr %i.gb, align 1
  %i.gd = xor i32 %i.gc, 1869491501
  %i.ge = getelementptr i8, ptr %i.gb, i64 4
  %i.gf = load i8, ptr %i.ge, align 1
  %i.gg = zext i8 %i.gf to i32
  %i.gh = xor i32 %i.gg, 45
  %i.gi = or i32 %i.gd, %i.gh
  %i.gj = icmp ne i32 %i.gi, 0
  %i.gk = zext i1 %i.gj to i32
  %i.gl = icmp eq i32 %i.gk, 0
  br i1 %i.gl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit, label %bb.au

bb.au:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gb, i64 1 ; 2 uses
  %i.gn = ptrtoint ptr %i.gm to i64
  %i.go = sub i64 %i.ga, %i.gn                    ; 2 uses
  %.not33.i.i = icmp ult i64 %i.go, 5
  br i1 %.not33.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, !llvm.loop !50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %.not334 = icmp eq ptr %i.gb, %i.fy
  br i1 %.not334, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread301, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread

.lr.ph:                                           ; preds = %bb.as, %bb.aw
  %i.gp = phi i64 [ %i.gt, %bb.aw ], [ %i.fw, %bb.as ]
  %.052405 = phi i64 [ %i.gu, %bb.aw ], [ 2, %bb.as ] ; 2 uses
  %36 = load ptr, ptr %23, align 8
  %i.gq = getelementptr inbounds nuw i8, ptr %36, i64 %.052405 ; 2 uses
  %i.gr = load i8, ptr %i.gq, align 1
  %i.gs = icmp eq i8 %i.gr, 95
  br i1 %i.gs, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %.lr.ph
  store i8 45, ptr %i.gq, align 1
  %.pre440.a = load i64, ptr %i.ah, align 8
  br label %bb.aw

bb.aw:                                            ; preds = %.lr.ph, %bb.av
  %i.gt = phi i64 [ %i.gp, %.lr.ph ], [ %.pre440.a, %bb.av ] ; 3 uses
  %i.gu = add nuw i64 %.052405, 1                 ; 2 uses
  %i.gv = icmp ult i64 %i.gu, %i.gt
  br i1 %i.gv, label %.lr.ph, label %._crit_edge, !llvm.loop !174

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread301: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit
  %.not406 = icmp eq i64 %.lcssa, 5
  br i1 %.not406, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit, label %bb.ax

bb.ax:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread301
  %i.gw = add i64 %.lcssa, -5                     ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fy, i64 2 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.fy, i64 5 ; 2 uses
  %cond = icmp eq i64 %i.gw, 1
  br i1 %cond, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.gz = load i8, ptr %i.gy, align 1
  store i8 %i.gz, ptr %i.gx, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit

bb.az:                                            ; preds = %bb.ax
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.gx, ptr nonnull align 1 %i.gy, i64 %i.gw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread301, %bb.ay, %bb.az
  %i.ha = load i64, ptr %i.ah, align 8
  %i.hb = add i64 %i.ha, -3                       ; 2 uses
  store i64 %i.hb, ptr %i.ah, align 8
  %i.hc = load ptr, ptr %23, align 8
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 %i.hb
  store i8 0, ptr %i.hd, align 1
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.au, %bb.at, %._crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit
  %i.he = phi i1 [ true, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit ], [ true, %bb.at ], [ true, %._crit_edge ], [ true, %bb.au ], [ true, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ] ; 4 uses
  br label %bb.ba

bb.ba:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread
  %i.hf = call ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %23) ; 2 uses
  %i.hg = icmp eq ptr %i.hf, null
  br i1 %i.hg, label %bb.bb, label %.critedge74.thread

bb.bb:                                            ; preds = %bb.ba
  br i1 %.not64.not, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 61, ptr %i.a, align 1, !noalias !175
  %i.hh = load ptr, ptr %23, align 8, !noalias !175
  %i.hi = load i64, ptr %i.ah, align 8, !noalias !175
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26, !noalias !175
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %25, ptr noundef %i.hh, i64 noundef %i.hi, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26, !noalias !175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.hj = call ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %25) ; 2 uses
  %i.hk = icmp eq ptr %i.hj, null
  br i1 %i.hk, label %bb.bd, label %.thread304.thread

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.hl = load ptr, ptr %19, align 8              ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8
  %i.ho = load ptr, ptr %i.hl, align 8            ; 3 uses
  %i.hp = ptrtoint ptr %i.hn to i64
  %i.hq = ptrtoint ptr %i.ho to i64
  %i.hr = sub i64 %i.hp, %i.hq
  %i.hs = ashr exact i64 %i.hr, 5                 ; 3 uses
  %i.ht = add nsw i64 %i.hs, -1
  %i.hu = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.hv = load ptr, ptr %i.d, align 8             ; 4 uses
  %i.hw = ptrtoint ptr %i.hu to i64
  %i.hx = ptrtoint ptr %i.hv to i64
  %i.hy = sub i64 %i.hw, %i.hx
  %i.hz = ashr exact i64 %i.hy, 5
  %i.ia = sub nsw i64 0, %i.hz
  %i.ib = icmp eq i64 %i.ht, %i.ia
  br i1 %i.ib, label %.thread304, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ic = icmp eq ptr %i.hv, %i.hu
  br i1 %i.ic, label %bb.bf, label %_ZN4node14options_parser8ArgsInfo5firstB5cxx11Ev.exit91.thread

bb.bf:                                            ; preds = %bb.be
  %.not.i.i.i89 = icmp ugt i64 %i.hs, 1
  br i1 %.not.i.i.i89, label %_ZN4node14options_parser8ArgsInfo5firstB5cxx11Ev.exit91, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.578, i64 noundef 1, i64 noundef %i.hs) #27
  unreachable

_ZN4node14options_parser8ArgsInfo5firstB5cxx11Ev.exit91: ; preds = %bb.bf
  %i.id = getelementptr inbounds nuw i8, ptr %i.ho, i64 40
  %i.ie = load i64, ptr %i.id, align 8
  %i.if = icmp eq i64 %i.ie, 0
  br i1 %i.if, label %.thread304, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit.i93

_ZN4node14options_parser8ArgsInfo5firstB5cxx11Ev.exit91.thread: ; preds = %bb.be
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.ih = load i64, ptr %i.ig, align 8
  %i.ii = icmp eq i64 %i.ih, 0
  br i1 %i.ii, label %.thread304, label %_ZN4node14options_parser8ArgsInfo5firstB5cxx11Ev.exit94

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit.i93: ; preds = %_ZN4node14options_parser8ArgsInfo5firstB5cxx11Ev.exit91
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ho, i64 32
  br label %_ZN4node14options_parser8ArgsInfo5firstB5cxx11Ev.exit94

_ZN4node14options_parser8ArgsInfo5firstB5cxx11Ev.exit94: ; preds = %_ZN4node14options_parser8ArgsInfo5firstB5cxx11Ev.exit91.thread, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit.i93
  %i.ik = phi ptr [ %i.ij, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit.i93 ], [ %i.hv, %_ZN4node14options_parser8ArgsInfo5firstB5cxx11Ev.exit91.thread ]
  %i.il = load ptr, ptr %i.ik, align 8
  %i.im = load i8, ptr %i.il, align 1
  %.not65 = icmp eq i8 %i.im, 45
  br i1 %.not65, label %.thread304, label %bb.bh

.thread304:                                       ; preds = %bb.bd, %_ZN4node14options_parser8ArgsInfo5firstB5cxx11Ev.exit91, %_ZN4node14options_parser8ArgsInfo5firstB5cxx11Ev.exit94, %_ZN4node14options_parser8ArgsInfo5firstB5cxx11Ev.exit91.thread
  br i1 %.not64.not, label %.critedge74.thread328, label %.thread304.thread

bb.bh:                                            ; preds = %_ZN4node14options_parser8ArgsInfo5firstB5cxx11Ev.exit94
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #26
  %i.in = load ptr, ptr %23, align 8, !noalias !178
  %i.io = load i64, ptr %i.ah, align 8, !noalias !178
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26, !noalias !178
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %26, ptr noundef %i.in, i64 noundef %i.io, ptr noundef nonnull @.str.574, i64 noundef 6, ptr noundef nonnull align 1 dereferenceable(1) %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26, !noalias !178
  %i.ip = call ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %26) ; 3 uses
  %i.iq = icmp ne ptr %i.ip, null                 ; 2 uses
  %i.ir = load ptr, ptr %26, align 8              ; 2 uses
  %i.is = icmp eq ptr %i.ir, %i.al
  br i1 %i.is, label %.critedge72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95: ; preds = %bb.bh
  %i.it = load i64, ptr %i.al, align 8
  %i.iu = add i64 %i.it, 1
  call void @_ZdlPvm(ptr noundef %i.ir, i64 noundef %i.iu) #29
  br label %.critedge72

.critedge72:                                      ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #26
  br i1 %.not64.not, label %.critedge74, label %.thread304.thread

.thread304.thread:                                ; preds = %bb.bc, %.thread304, %.critedge72
  %.sroa.0281.1308311 = phi ptr [ null, %.thread304 ], [ %i.ip, %.critedge72 ], [ %i.hj, %bb.bc ]
  %i.iv = phi i1 [ false, %.thread304 ], [ %i.iq, %.critedge72 ], [ true, %bb.bc ]
  %i.iw = load ptr, ptr %25, align 8              ; 2 uses
  %i.ix = icmp eq ptr %i.iw, %i.am
  br i1 %i.ix, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %.thread304.thread
  %i.iy = load i64, ptr %i.am, align 8
  %i.iz = add i64 %i.iy, 1
  call void @_ZdlPvm(ptr noundef %i.iw, i64 noundef %i.iz) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100: ; preds = %.thread304.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26
  br i1 %i.iv, label %.critedge74.thread, label %.critedge74.thread328

.critedge74:                                      ; preds = %.critedge72
  br i1 %i.iq, label %.critedge74.thread, label %.critedge74.thread328

.critedge74.thread:                               ; preds = %bb.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, %.critedge74
  %.sroa.0281.1308310312 = phi ptr [ %.sroa.0281.1308311, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100 ], [ %i.ip, %.critedge74 ], [ %i.hf, %bb.ba ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #26
  store ptr %i.an, ptr %27, align 8
  %i.ja = load ptr, ptr %23, align 8              ; 2 uses
  %i.jb = icmp eq ptr %i.ja, %i.ag
  br i1 %i.jb, label %bb.bi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.bi:                                            ; preds = %.critedge74.thread
  %i.jc = load i64, ptr %i.ah, align 8            ; 3 uses
  %i.jd = icmp ult i64 %i.jc, 16
  call void @llvm.assume(i1 %i.jd)
  %i.je = add nuw nsw i64 %i.jc, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.an, ptr noundef nonnull align 8 dereferenceable(1) %i.ag, i64 %i.je, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %.critedge74.thread
  store ptr %i.ja, ptr %27, align 8
  %i.jf = load i64, ptr %i.ag, align 8
  store i64 %i.jf, ptr %i.an, align 8
  %.pre441.a = load i64, ptr %i.ah, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.jg = phi i64 [ %i.jc, %bb.bi ], [ %.pre441.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  store i64 %i.jg, ptr %i.ao, align 8
  store ptr %i.ag, ptr %23, align 8
  store i64 0, ptr %i.ah, align 8
  store i8 0, ptr %i.ag, align 8
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.0281.1308310312, i64 40 ; 2 uses
  %i.ji = load ptr, ptr %i.jh, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(32) %i.ji)
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.0281.1308310312, i64 48
  %i.jk = load ptr, ptr %i.jj, align 8            ; 2 uses
  %i.jl = load ptr, ptr %i.jh, align 8            ; 2 uses
  %i.jm = ptrtoint ptr %i.jk to i64
  %i.jn = ptrtoint ptr %i.jl to i64
  %i.jo = sub i64 %i.jm, %i.jn
  %i.jp = icmp ugt i64 %i.jo, 32
  br i1 %i.jp, label %bb.bj, label %bb.bk
end_hunk_5
