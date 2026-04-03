begin_hunk_0
  %4 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_allocator_capture", align 8 ; 7 uses
  %5 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_node_set_raw", align 8 ; 6 uses
  %6 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_node_set_raw", align 8 ; 6 uses
  %7 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_allocator_capture", align 8 ; 8 uses
  %8 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_string", align 8 ; 5 uses
  %9 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_allocator_capture", align 8 ; 7 uses
  %10 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_string", align 8 ; 5 uses
end_hunk_0
begin_hunk_1
  br i1 %.not11849.not, label %.critedge126, label %.lr.ph52

.lr.ph52:                                         ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  br label %bb.i

bb.g:                                             ; preds = %bb.d
end_hunk_1
begin_hunk_2
bb.i:                                             ; preds = %.lr.ph52, %.loopexit
  %.08750 = phi ptr [ %.val133, %.lr.ph52 ], [ %i.cr, %.loopexit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #52
  %i.v = load ptr, ptr %3, align 8                ; 9 uses
  store ptr %i.v, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #52
end_hunk_2
begin_hunk_3
  br i1 %i.av, label %bb.r, label %_ZN4pugi4impl12_GLOBAL__N_124convert_string_to_numberEPKc.exit

bb.r:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_129check_string_to_number_formatEPKc.exit.i
  %i.aw = call double @strtod(ptr noundef readonly captures(none) %.val145, ptr noundef null) #52
  br label %_ZN4pugi4impl12_GLOBAL__N_124convert_string_to_numberEPKc.exit

_ZN4pugi4impl12_GLOBAL__N_124convert_string_to_numberEPKc.exit: ; preds = %bb.r, %_ZN4pugi4impl12_GLOBAL__N_129check_string_to_number_formatEPKc.exit.i, %bb.o, %bb.n, %bb.l
  %.0.i = phi double [ %i.aw, %bb.r ], [ 0x7FF8000000000000, %_ZN4pugi4impl12_GLOBAL__N_129check_string_to_number_formatEPKc.exit.i ], [ 0x7FF8000000000000, %bb.l ], [ 0x7FF8000000000000, %bb.o ], [ 0x7FF8000000000000, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #52
  %.val132 = load ptr, ptr %i.o, align 8          ; 2 uses
  %.val13644 = load ptr, ptr %i.p, align 8
  %.not11945 = icmp eq ptr %.val132, %.val13644
  br i1 %.not11945, label %.critedge, label %.lr.ph47

19:                                               ; preds = %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit
  %20 = getelementptr inbounds nuw i8, ptr %.08646, i64 16 ; 2 uses
  %.val136 = load ptr, ptr %i.p, align 8
  %.not119 = icmp eq ptr %20, %.val136
  br i1 %.not119, label %.critedge, label %.lr.ph47, !llvm.loop !356

bb.s:                                             ; preds = %bb.i
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #52
  br label %bb.af

.lr.ph47:                                         ; preds = %_ZN4pugi4impl12_GLOBAL__N_124convert_string_to_numberEPKc.exit, %19
  %.08646 = phi ptr [ %20, %19 ], [ %.val132, %_ZN4pugi4impl12_GLOBAL__N_124convert_string_to_numberEPKc.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #52
  %i.ay = load ptr, ptr %3, align 8               ; 6 uses
  store ptr %i.ay, ptr %9, align 8
end_hunk_3
begin_hunk_4
  br i1 %i.by, label %bb.ab, label %_ZN4pugi4impl12_GLOBAL__N_124convert_string_to_numberEPKc.exit176

bb.ab:                                            ; preds = %_ZN4pugi4impl12_GLOBAL__N_129check_string_to_number_formatEPKc.exit.i168
  %i.bz = call double @strtod(ptr noundef readonly captures(none) %.val144, ptr noundef null) #52
  br label %_ZN4pugi4impl12_GLOBAL__N_124convert_string_to_numberEPKc.exit176

_ZN4pugi4impl12_GLOBAL__N_124convert_string_to_numberEPKc.exit176: ; preds = %bb.ab, %_ZN4pugi4impl12_GLOBAL__N_129check_string_to_number_formatEPKc.exit.i168, %bb.y, %bb.x, %bb.v
  %.0.i169 = phi double [ %i.bz, %bb.ab ], [ 0x7FF8000000000000, %_ZN4pugi4impl12_GLOBAL__N_129check_string_to_number_formatEPKc.exit.i168 ], [ 0x7FF8000000000000, %bb.v ], [ 0x7FF8000000000000, %bb.y ], [ 0x7FF8000000000000, %bb.x ]
  %21 = fcmp olt double %.0.i, %.0.i169
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #52
  %i.ca = load ptr, ptr %i.ay, align 8            ; 2 uses
  %i.cb = load ptr, ptr %i.q, align 8             ; 3 uses
  %.not9.i.i = icmp eq ptr %i.ca, %i.cb
  br i1 %.not9.i.i, label %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4pugi4impl12_GLOBAL__N_124convert_string_to_numberEPKc.exit176, %.noexc.i
  %.010.i.i = phi ptr [ %i.cc, %.noexc.i ], [ %i.ca, %_ZN4pugi4impl12_GLOBAL__N_124convert_string_to_numberEPKc.exit176 ] ; 2 uses
end_hunk_4
begin_hunk_5

.noexc.i:                                         ; preds = %.lr.ph.i.i
  %.not.i.i177 = icmp eq ptr %i.cc, %i.cb
  br i1 %.not.i.i177, label %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit, label %.lr.ph.i.i, !llvm.loop !201

bb.ac:                                            ; preds = %.lr.ph.i.i
  %i.ce = landingpad { ptr, i32 }
end_hunk_5
begin_hunk_6
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  call void @__clang_call_terminate(ptr %i.cf) #51
  unreachable

_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit: ; preds = %.noexc.i, %_ZN4pugi4impl12_GLOBAL__N_124convert_string_to_numberEPKc.exit176
  store ptr %i.cb, ptr %i.ay, align 8
  %22 = load i64, ptr %i.r, align 8
  %23 = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i64 %22, ptr %23, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #52
  br i1 %21, label %24, label %19

bb.ad:                                            ; preds = %.lr.ph47
  %i.cg = landingpad { ptr, i32 }
end_hunk_6
begin_hunk_7
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #52
  br label %bb.af

24:                                               ; preds = %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit
  %25 = load ptr, ptr %i.v, align 8               ; 2 uses
  %26 = load ptr, ptr %i.n, align 8               ; 3 uses
  %.not9.i.i178 = icmp eq ptr %25, %26
  br i1 %.not9.i.i178, label %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit184, label %.lr.ph.i.i179

.lr.ph.i.i179:                                    ; preds = %24, %.noexc.i181
  %.010.i.i180 = phi ptr [ %27, %.noexc.i181 ], [ %25, %24 ] ; 2 uses
  %27 = load ptr, ptr %.010.i.i180, align 8       ; 2 uses
  %28 = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8
  invoke void %28(ptr noundef nonnull %.010.i.i180)
          to label %.noexc.i181 unwind label %29

.noexc.i181:                                      ; preds = %.lr.ph.i.i179
  %.not.i.i182 = icmp eq ptr %27, %26
  br i1 %.not.i.i182, label %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit184, label %.lr.ph.i.i179, !llvm.loop !201

29:                                               ; preds = %.lr.ph.i.i179
  %30 = landingpad { ptr, i32 }
          catch ptr null
  %31 = extractvalue { ptr, i32 } %30, 0
  call void @__clang_call_terminate(ptr %31) #51
  unreachable

_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit184: ; preds = %.noexc.i181, %24
  store ptr %26, ptr %i.v, align 8
  %i.ch = load i64, ptr %i.s, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 %i.ch, ptr %i.ci, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #52
  br label %.critedge126

.critedge:                                        ; preds = %19, %_ZN4pugi4impl12_GLOBAL__N_124convert_string_to_numberEPKc.exit
  %i.cj = load ptr, ptr %i.v, align 8             ; 2 uses
  %i.ck = load ptr, ptr %i.n, align 8             ; 3 uses
  %.not9.i.i185 = icmp eq ptr %i.cj, %i.ck
end_hunk_7
begin_hunk_8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #52
  br label %bb.ah

.critedge126:                                     ; preds = %.loopexit, %bb.f, %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit184
  %.not11811 = phi i1 [ true, %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit184 ], [ false, %bb.f ], [ false, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #52
  %i.cs = load ptr, ptr %i.j, align 8             ; 2 uses
end_hunk_8
begin_hunk_9
  br label %bb.bz

bb.by:                                            ; preds = %bb.be, %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit268, %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit233, %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit198, %bb.b
  %.14 = phi i1 [ %i.g, %bb.b ], [ %.not11811, %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit198 ], [ %.not114.lcssa, %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit233 ], [ %.not.lcssa, %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit268 ], [ false, %bb.be ]
  ret i1 %.14

bb.bz:                                            ; preds = %bb.bx, %bb.bd, %bb.ai
end_hunk_9
