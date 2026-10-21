Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/quinn_proto-aa4faf9a7542e2b9.quinn_proto.ca9d529fb421aa30-cgu.15?download=true
inline.NumInlined: 498
inline.NumDeleted: 174
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMs0_NtCshovLROGBtMy_11quinn_proto5tokenNtB5_13IncomingToken11from_header:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !16950, !noalias !16121
  br label %bb.ak, !dbg !16951

bb.ak:                                            ; preds = %bb.j, %_RINvNtCshovLROGBtMy_11quinn_proto5token11decode_addrRShEB4_.exit.thread.i
    #dbg_value(ptr %i.h, !1988, !DIExpression(), !15242)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.am unwind label %bb.al, !dbg !16952, !noalias !16013

bb.al:                                            ; preds = %bb.ak
  %i.dh = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.h, !1993, !DIExpression(), !15244)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body.i unwind label %bb.an, !dbg !16953, !noalias !16013

bb.am:                                            ; preds = %bb.ak
    #dbg_value(ptr %i.h, !1993, !DIExpression(), !15246)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshovLROGBtMy_11quinn_proto.exit.i unwind label %bb.c, !dbg !16954, !noalias !16013

bb.an:                                            ; preds = %bb.al
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !dbg !16952, !noalias !16013
  unreachable, !dbg !16952

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshovLROGBtMy_11quinn_proto.exit.i: ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !16830, !noalias !16121
    #dbg_value(ptr poison, !2010, !DIExpression(), !15248)
  %i.dj = load ptr, ptr %i.af, align 8, !dbg !16955, !invariant.load !1135, !noalias !16013 ; 2 uses
  %.not.i136.i = icmp eq ptr %i.dj, null, !dbg !16955
  br i1 %.not.i136.i, label %bb.ap, label %bb.ao, !dbg !16955

bb.ao:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshovLROGBtMy_11quinn_proto.exit.i
  invoke void %i.dj(ptr noundef nonnull %i.ae)
          to label %bb.ap unwind label %bb.ar, !dbg !16955, !noalias !16013

bb.ap:                                            ; preds = %bb.ao, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshovLROGBtMy_11quinn_proto.exit.i
    #dbg_value(ptr poison, !2015, !DIExpression(), !15250)
    #dbg_value(ptr poison, !2018, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15251)
    #dbg_value(ptr %i.af, !2018, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15251)
    #dbg_value(ptr poison, !2040, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15253)
    #dbg_value(ptr poison, !2048, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15255)
    #dbg_value(ptr poison, !2053, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15257)
    #dbg_value(ptr poison, !2059, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15259)
    #dbg_value(ptr %i.af, !2040, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15253)
    #dbg_value(ptr %i.af, !2048, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15255)
    #dbg_value(ptr %i.af, !2053, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15257)
    #dbg_value(ptr %i.af, !2059, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15259)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !16956
  %i.dl = load i64, ptr %i.dk, align 8, !dbg !16956, !range !2061, !invariant.load !1135, !noalias !16013 ; 2 uses
    #dbg_value(i64 poison, !2019, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15260)
    #dbg_value(i64 %i.dl, !2019, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15260)
  %i.dm = icmp eq i64 %i.dl, 0, !dbg !16957
  br i1 %i.dm, label %_RNvMs1_NtCshovLROGBtMy_11quinn_proto5tokenNtB5_5Token6decode.exit.thread, label %bb.aq, !dbg !16957

bb.aq:                                            ; preds = %bb.ap
  %i.dn = getelementptr inbounds nuw i8, ptr %i.af, i64 16, !dbg !16956
  %i.do = load i64, ptr %i.dn, align 8, !dbg !16958, !range !2062, !invariant.load !1135, !noalias !16013
    #dbg_value(i64 %i.do, !2019, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15260)
    #dbg_value(ptr %i.ae, !2040, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15253)
    #dbg_value(ptr %i.ae, !2048, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15255)
    #dbg_value(ptr %i.ae, !2053, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15257)
    #dbg_value(ptr %i.ae, !2059, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15259)
    #dbg_value(ptr %i.ae, !2018, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15251)
    #dbg_value(ptr poison, !2065, !DIExpression(), !15262)
    #dbg_value(ptr poison, !2072, !DIExpression(), !15264)
    #dbg_value(ptr %i.ae, !2069, !DIExpression(), !15262)
    #dbg_value(ptr %i.ae, !2075, !DIExpression(), !15264)
    #dbg_value(ptr %i.ae, !2078, !DIExpression(), !15266)
    #dbg_value(ptr %i.ae, !2084, !DIExpression(), !15268)
    #dbg_value(i64 %i.do, !2070, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15262)
    #dbg_value(i64 %i.do, !2076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15264)
    #dbg_value(i64 %i.do, !2082, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15266)
    #dbg_value(i64 %i.do, !2085, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15268)
    #dbg_value(i64 %i.dl, !2070, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15262)
    #dbg_value(i64 %i.dl, !2076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15264)
    #dbg_value(i64 %i.dl, !2082, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15266)
    #dbg_value(i64 %i.dl, !2085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15268)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ae, i64 noundef range(i64 1, -9223372036854775808) %i.dl, i64 noundef range(i64 1, 536870913) %i.do) #23, !dbg !16959, !noalias !16013
  br label %_RNvMs1_NtCshovLROGBtMy_11quinn_proto5tokenNtB5_5Token6decode.exit.thread, !dbg !16960

bb.ar:                                            ; preds = %bb.ao
  %i.dp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
    #dbg_value(ptr poison, !2015, !DIExpression(), !15270)
    #dbg_value(ptr poison, !2018, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15271)
    #dbg_value(ptr %i.af, !2018, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15271)
    #dbg_value(ptr poison, !2040, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15273)
    #dbg_value(ptr poison, !2048, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15275)
    #dbg_value(ptr poison, !2053, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15277)
    #dbg_value(ptr poison, !2059, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15279)
    #dbg_value(ptr %i.af, !2040, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15273)
    #dbg_value(ptr %i.af, !2048, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15275)
    #dbg_value(ptr %i.af, !2053, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15277)
    #dbg_value(ptr %i.af, !2059, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15279)
  %i.dq = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !16961
  %i.dr = load i64, ptr %i.dq, align 8, !dbg !16961, !range !2061, !invariant.load !1135, !noalias !16013 ; 2 uses
    #dbg_value(i64 poison, !2019, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15280)
    #dbg_value(i64 %i.dr, !2019, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15280)
  %i.ds = icmp eq i64 %i.dr, 0, !dbg !16962
  br i1 %i.ds, label %common.resume.i, label %bb.as, !dbg !16962

bb.as:                                            ; preds = %bb.ar
  %i.dt = getelementptr inbounds nuw i8, ptr %i.af, i64 16, !dbg !16961
  %i.du = load i64, ptr %i.dt, align 8, !dbg !16963, !range !2062, !invariant.load !1135, !noalias !16013
    #dbg_value(i64 %i.du, !2019, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15280)
    #dbg_value(ptr %i.ae, !2040, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15273)
    #dbg_value(ptr %i.ae, !2048, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15275)
    #dbg_value(ptr %i.ae, !2053, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15277)
    #dbg_value(ptr %i.ae, !2059, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15279)
    #dbg_value(ptr %i.ae, !2018, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15271)
    #dbg_value(ptr poison, !2065, !DIExpression(), !15282)
    #dbg_value(ptr poison, !2072, !DIExpression(), !15284)
    #dbg_value(ptr %i.ae, !2069, !DIExpression(), !15282)
    #dbg_value(ptr %i.ae, !2075, !DIExpression(), !15284)
    #dbg_value(ptr %i.ae, !2078, !DIExpression(), !15286)
    #dbg_value(ptr %i.ae, !2084, !DIExpression(), !15288)
    #dbg_value(i64 %i.du, !2070, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15282)
    #dbg_value(i64 %i.du, !2076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15284)
    #dbg_value(i64 %i.du, !2082, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15286)
    #dbg_value(i64 %i.du, !2085, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15288)
    #dbg_value(i64 %i.dr, !2070, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15282)
    #dbg_value(i64 %i.dr, !2076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15284)
    #dbg_value(i64 %i.dr, !2082, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15286)
    #dbg_value(i64 %i.dr, !2085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15288)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ae, i64 noundef range(i64 1, -9223372036854775808) %i.dr, i64 noundef range(i64 1, 536870913) %i.du) #23, !dbg !16964, !noalias !16013
  br label %common.resume.i, !dbg !16965

common.resume.i:                                  ; preds = %bb.as, %bb.ar, %.body.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.dp, %bb.ar ], [ %i.dp, %bb.as ], [ %.pn.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op.i, !dbg !16966

bb.at:                                            ; preds = %bb.i, %.body.i
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !dbg !16967, !noalias !16013
  unreachable, !dbg !16967

bb.au:                                            ; preds = %bb.e
  unreachable

_RNvMs1_NtCshovLROGBtMy_11quinn_proto5tokenNtB5_5Token6decode.exit.thread: ; preds = %bb.ap, %bb.aq, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.225.i), !dbg !16968
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.7.sroa.3.i), !dbg !16968
  br label %bb.ax, !dbg !16969

_RNvMs1_NtCshovLROGBtMy_11quinn_proto5tokenNtB5_5Token6decode.exit: ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !16830, !noalias !16121
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCshovLROGBtMy_11quinn_proto6crypto7AeadKeyEL_EEB1f_(ptr nonnull %i.ae, ptr nonnull %i.af), !dbg !16814, !noalias !16013
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.225.i), !dbg !16968
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.7.sroa.3.i), !dbg !16968
  %.not = icmp eq i32 %.sroa.2.0.i, -2, !dbg !16803
  br i1 %.not, label %bb.ax, label %bb.aw, !dbg !16969

bb.av:                                            ; preds = %bb.a
  store i8 0, ptr %0, align 1, !dbg !16970
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 22, !dbg !16970
  store i8 0, ptr %.sroa.9.0..sroa_idx, align 1, !dbg !16970
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 23, !dbg !16970
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(21) %i.j, i64 21, i1 false), !dbg !16970
  br label %bb.bp, !dbg !16971

bb.aw:                                            ; preds = %_RNvMs1_NtCshovLROGBtMy_11quinn_proto5tokenNtB5_5Token6decode.exit
    #dbg_value(i64 %.sroa.09.0.i, !15779, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !16505)
    #dbg_value(i32 %.sroa.2.0.i, !15779, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !16505)
    #dbg_value(i32 poison, !15779, !DIExpression(DW_OP_LLVM_fragment, 224, 32), !16505)
    #dbg_value(i64 %.sroa.411.0.i, !15779, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !16505)
    #dbg_value(i32 %.sroa.612.0.i, !15779, !DIExpression(DW_OP_LLVM_fragment, 320, 32), !16505)
    #dbg_value(i32 %i.de, !15779, !DIExpression(DW_OP_LLVM_fragment, 352, 32), !16505)
    #dbg_value(i8 %i.dg, !15779, !DIExpression(DW_OP_LLVM_fragment, 384, 8), !16505)
  %.sroa.23.5..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.23, i64 5, !dbg !16972
  %.sroa.23.5..sroa.23.5..sroa.23.5..sroa.23.49..sroa.11.0.copyload = load i128, ptr %.sroa.23.5..sroa_idx, align 1, !dbg !16972 ; 7 uses
    #dbg_value(i128 %.sroa.23.5..sroa.23.5..sroa.23.5..sroa.23.49..sroa.11.0.copyload, !15779, !DIExpression(DW_OP_LLVM_fragment, 392, 128), !16505)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.13, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.32, i64 23, i1 false), !dbg !16972
    #dbg_value(i128 %.sroa.018.0.copyload.i, !15779, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !16505)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.23), !dbg !16973
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.32), !dbg !16973
  %i.dw = icmp eq i32 %.sroa.2.0.i, -1, !dbg !16974
  br i1 %i.dw, label %bb.ay, label %bb.az, !dbg !16975

bb.ax:                                            ; preds = %_RNvMs1_NtCshovLROGBtMy_11quinn_proto5tokenNtB5_5Token6decode.exit.thread, %_RNvMs1_NtCshovLROGBtMy_11quinn_proto5tokenNtB5_5Token6decode.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.23), !dbg !16973
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.32), !dbg !16973
  store i8 0, ptr %0, align 1, !dbg !16976
  %.sroa.9.0..sroa_idx1 = getelementptr inbounds nuw i8, ptr %0, i64 22, !dbg !16976
  store i8 0, ptr %.sroa.9.0..sroa_idx1, align 1, !dbg !16976
  %.sroa.10.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 23, !dbg !16976
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %.sroa.10.0..sroa_idx9, ptr noundef nonnull align 1 dereferenceable(21) %.sroa.10, i64 21, i1 false), !dbg !16976
  br label %bb.bp, !dbg !16977

bb.ay:                                            ; preds = %bb.aw
    #dbg_value(i8 %i.dg, !15783, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !16510)
    #dbg_value(i128 %.sroa.23.5..sroa.23.5..sroa.23.5..sroa.23.49..sroa.11.0.copyload, !15783, !DIExpression(DW_OP_LLVM_fragment, 8, 128), !16510)
    #dbg_value(i64 %.sroa.411.0.i, !15784, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16510)
    #dbg_value(i32 %.sroa.612.0.i, !15784, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16510)
    #dbg_value(ptr undef, !15919, !DIExpression(), !15927)
    #dbg_value(ptr undef, !15908, !DIExpression(), !15918)
    #dbg_value(ptr %3, !16511, !DIExpression(), !16516)
  %i.dx = load i16, ptr %3, align 4, !dbg !16978, !range !16517, !noundef !1135 ; 3 uses
  %i.dy = trunc nuw i16 %i.dx to i1, !dbg !16979  ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 4, !dbg !16979
  %.sroa.036.0.copyload = load i128, ptr %i.dz, align 4, !dbg !16979
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 2, !dbg !16979
  %.sroa.035.0.copyload = load i32, ptr %i.ea, align 2, !dbg !16979
  %.sroa.6.1.insert.ext = zext i32 %.sroa.035.0.copyload to i128, !dbg !16979
  %.sroa.6.0 = select i1 %i.dy, i128 %.sroa.036.0.copyload, i128 %.sroa.6.1.insert.ext, !dbg !16979 ; 2 uses
    #dbg_value(ptr undef, !15920, !DIExpression(), !15926)
    #dbg_value(ptr undef, !15904, !DIExpression(), !15918)
  %.mask = and i8 %i.dg, 1, !dbg !15918
    #dbg_value(i8 %.mask, !15909, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !16519)
    #dbg_value(i16 %i.dx, !15910, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !16520)
  %i.eb = zext nneg i8 %.mask to i16, !dbg !16980
  %i.ec = icmp eq i16 %i.dx, %i.eb, !dbg !16980
  br i1 %i.ec, label %bb.bg, label %bb.bh, !dbg !16980

bb.az:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !16981
  store i64 %.sroa.411.0.i, ptr %i.i, align 8, !dbg !16981
  %.8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !16981
  store i32 %.sroa.612.0.i, ptr %.8..8..8..sroa_idx, align 8, !dbg !16981
  %.12..12..12..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 12, !dbg !16981
  store i32 %i.de, ptr %.12..12..12..sroa_idx, align 4, !dbg !16981
  %.16..16..16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !16981
  store i8 %i.dg, ptr %.16..16..16..sroa_idx, align 8, !dbg !16981
  %.sroa.11.0.extract.trunc = trunc i128 %.sroa.23.5..sroa.23.5..sroa.23.5..sroa.23.49..sroa.11.0.copyload to i120, !dbg !16981
  %.17..17..17..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 17, !dbg !16981
  store i120 %.sroa.11.0.extract.trunc, ptr %.17..17..17..sroa_idx, align 1, !dbg !16981
  %.sroa.11.15.extract.shift = lshr i128 %.sroa.23.5..sroa.23.5..sroa.23.5..sroa.23.49..sroa.11.0.copyload, 120, !dbg !16982
  %.sroa.11.15.extract.trunc = trunc nuw i128 %.sroa.11.15.extract.shift to i8, !dbg !16982
    #dbg_value(i8 %.sroa.11.15.extract.trunc, !15781, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !16521)
    #dbg_value(i64 %.sroa.09.0.i, !15782, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16521)
    #dbg_value(i32 %.sroa.2.0.i, !15782, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !16521)
    #dbg_value(ptr %i.i, !16522, !DIExpression(), !16531)
    #dbg_value(ptr %3, !16525, !DIExpression(), !16531)
  call void @llvm.experimental.noalias.scope.decl(metadata !16532), !dbg !16983
  call void @llvm.experimental.noalias.scope.decl(metadata !16533), !dbg !16983
    #dbg_value(ptr %i.i, !16534, !DIExpression(), !15302)
    #dbg_value(ptr %3, !16536, !DIExpression(), !15302)
  %i.ed = trunc i64 %.sroa.411.0.i to i16, !dbg !16984
    #dbg_value(i16 %i.ed, !16537, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !15303)
  %i.ee = load i16, ptr %3, align 4, !dbg !16985, !range !16517, !alias.scope !16533, !noundef !1135
    #dbg_value(i16 %i.ee, !16538, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !15304)
  %i.ef = icmp eq i16 %i.ee, %i.ed, !dbg !16986
  %i.eg = lshr i64 %.sroa.411.0.i, 48, !dbg !16986
  %i.eh = trunc nuw i64 %i.eg to i16, !dbg !16986
  %i.ei = lshr i64 %.sroa.411.0.i, 16, !dbg !16986
  %i.ej = trunc i64 %i.ei to i32, !dbg !16986
  %i.ek = lshr i128 %.sroa.23.5..sroa.23.5..sroa.23.5..sroa.23.49..sroa.11.0.copyload, 88, !dbg !16986
  %i.el = trunc i128 %i.ek to i16, !dbg !16986
  %i.em = lshr i128 %.sroa.23.5..sroa.23.5..sroa.23.5..sroa.23.49..sroa.11.0.copyload, 24, !dbg !16986
  %i.en = trunc i128 %i.em to i32, !dbg !16986
  %i.eo = lshr i128 %.sroa.23.5..sroa.23.5..sroa.23.5..sroa.23.49..sroa.11.0.copyload, 56, !dbg !16986
  %i.ep = trunc i128 %i.eo to i32, !dbg !16986
  br i1 %i.ef, label %bb.ba, label %_RNvXse_NtNtCskKLDkoKarTP_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq.exit.thread, !dbg !16986

bb.ba:                                            ; preds = %bb.az
  %i.eq = trunc i64 %.sroa.411.0.i to i1, !dbg !16986
    #dbg_value(i1 %i.eq, !16537, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !15303)
  br i1 %i.eq, label %bb.bb, label %bb.bc, !dbg !16986

bb.bb:                                            ; preds = %bb.ba
    #dbg_value(ptr %i.i, !16541, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !15305)
    #dbg_value(ptr %i.i, !16546, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !15310)
    #dbg_value(ptr %3, !16542, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !15305)
    #dbg_value(ptr %3, !16550, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !15310)
    #dbg_value(ptr poison, !16555, !DIExpression(), !15311)
    #dbg_value(ptr poison, !16556, !DIExpression(), !15312)
  %i.er = getelementptr inbounds nuw i8, ptr %3, i64 28, !dbg !16987
  %i.es = load i16, ptr %i.er, align 4, !dbg !16987, !alias.scope !16533, !noundef !1135
  %i.et = icmp eq i16 %i.es, %i.el, !dbg !16987
  %i.eu = getelementptr inbounds nuw i8, ptr %3, i64 20, !dbg !16987
  %i.ev = load i32, ptr %i.eu, align 4, !dbg !16987
  %i.ew = icmp eq i32 %i.ev, %i.en, !dbg !16987
  %or.cond = select i1 %i.et, i1 %i.ew, i1 false, !dbg !16987
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !16987
  %i.ey = load i32, ptr %i.ex, align 4, !dbg !16987
  %i.ez = icmp eq i32 %i.ey, %i.ep, !dbg !16987
  %or.cond109 = select i1 %or.cond, i1 %i.ez, i1 false, !dbg !16987
  br i1 %or.cond109, label %.split, label %_RNvXse_NtNtCskKLDkoKarTP_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq.exit.thread, !dbg !16987

bb.bc:                                            ; preds = %bb.ba
    #dbg_value(ptr %i.i, !16539, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !15313)
    #dbg_value(ptr %i.i, !16562, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !15318)
    #dbg_value(ptr %3, !16540, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !15313)
    #dbg_value(ptr %3, !16566, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !15318)
    #dbg_value(ptr poison, !16572, !DIExpression(), !15319)
    #dbg_value(ptr poison, !16573, !DIExpression(), !15320)
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 6, !dbg !16988
  %i.fb = load i16, ptr %i.fa, align 2, !dbg !16988, !alias.scope !16533, !noundef !1135
  %i.fc = icmp eq i16 %i.fb, %i.eh, !dbg !16988
  %i.fd = getelementptr inbounds nuw i8, ptr %3, i64 2, !dbg !16988
    #dbg_value(ptr %i.i, !16578, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !15323)
    #dbg_value(ptr %3, !16582, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !15323)
  %i.fe = load i32, ptr %i.fd, align 2
  %i.ff = icmp eq i32 %i.fe, %i.ej
  %or.cond112 = select i1 %i.fc, i1 %i.ff, i1 false, !dbg !16988
  br i1 %or.cond112, label %bb.bd, label %_RNvXse_NtNtCskKLDkoKarTP_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq.exit.thread, !dbg !16988

.split:                                           ; preds = %bb.bb
  %i.fg = getelementptr inbounds nuw i8, ptr %3, i64 4, !dbg !16987
    #dbg_value(ptr %i.i, !16584, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !15326)
    #dbg_value(ptr %3, !16588, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !15326)
  %.4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 4, !dbg !16989
  %.4..4..4. = load i128, ptr %.4..4..4..sroa_idx, align 4, !dbg !16989, !alias.scope !16532
  %i.fh = load i128, ptr %i.fg, align 4, !dbg !16989, !alias.scope !16533, !noundef !1135
  %i.fi = icmp eq i128 %.4..4..4., %i.fh, !dbg !16989
  br i1 %i.fi, label %bb.bd, label %_RNvXse_NtNtCskKLDkoKarTP_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq.exit.thread, !dbg !16530

bb.bd:                                            ; preds = %bb.bc, %.split
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 72, !dbg !16990
  %i.fk = load i64, ptr %i.fj, align 8, !dbg !16990, !noundef !1135
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 80, !dbg !16990
  %i.fm = load i32, ptr %i.fl, align 8, !dbg !16990, !range !3472, !noundef !1135
  %i.fn = call { i64, i32 } @_RNvXs6_NtCsG258MDvU3F_3std4timeNtB5_10SystemTimeINtNtNtCskKLDkoKarTP_4core3ops5arith3AddNtNtBR_4time8DurationE3add(i64 noundef %.sroa.09.0.i, i32 noundef %.sroa.2.0.i, i64 noundef %i.fk, i32 noundef %i.fm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @87), !dbg !15957 ; 2 uses
  %i.fo = extractvalue { i64, i32 } %i.fn, 0, !dbg !15957 ; 2 uses
    #dbg_value(ptr poison, !15964, !DIExpression(), !16592)
    #dbg_value(ptr poison, !16594, !DIExpression(), !16601)
    #dbg_value(ptr poison, !16602, !DIExpression(), !16608)
    #dbg_value(ptr %2, !16611, !DIExpression(DW_OP_plus_uconst, 136, DW_OP_stack_value), !16620)
    #dbg_value(ptr %2, !16621, !DIExpression(DW_OP_plus_uconst, 136, DW_OP_stack_value), !16631)
  %i.fp = getelementptr inbounds nuw i8, ptr %2, i64 136, !dbg !16991
  %i.fq = load ptr, ptr %i.fp, align 8, !dbg !16991, !nonnull !1135, !noundef !1135
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 144, !dbg !16991
  %i.fs = load ptr, ptr %i.fr, align 8, !dbg !16991, !nonnull !1135, !align !2576, !noundef !1135 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16, !dbg !16992
  %i.fu = load i64, ptr %i.ft, align 8, !dbg !16992, !range !2062, !invariant.load !1135
  %i.fv = add nsw i64 %i.fu, -1, !dbg !16992
  %i.fw = and i64 %i.fv, -16, !dbg !16992
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fw, !dbg !16992
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16, !dbg !16992
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fs, i64 24, !dbg !16619
  %i.ga = load ptr, ptr %i.fz, align 8, !dbg !16619, !invariant.load !1135, !nonnull !1135
  %i.gb = call { i64, i32 } %i.ga(ptr noundef nonnull %i.fy) #21, !dbg !16993 ; 2 uses
  %i.gc = extractvalue { i64, i32 } %i.gb, 0, !dbg !16993 ; 2 uses
    #dbg_value(ptr poison, !15965, !DIExpression(), !16638)
    #dbg_value(ptr poison, !16598, !DIExpression(), !16601)
    #dbg_value(ptr poison, !16606, !DIExpression(), !16608)
    #dbg_value(ptr poison, !16641, !DIExpression(), !16647)
    #dbg_value(ptr poison, !16645, !DIExpression(), !16647)
    #dbg_value(ptr poison, !16650, !DIExpression(), !16658)
    #dbg_value(ptr poison, !16654, !DIExpression(), !16658)
  %i.gd = icmp eq i64 %i.fo, %i.gc, !dbg !16658
  br i1 %i.gd, label %.split80, label %bb.be, !dbg !16658

.split80:                                         ; preds = %bb.bd
  %i.ge = extractvalue { i64, i32 } %i.gb, 1, !dbg !16993 ; 2 uses
  %i.gf = extractvalue { i64, i32 } %i.fn, 1, !dbg !15957 ; 2 uses
    #dbg_value(ptr poison, !16661, !DIExpression(), !16669)
    #dbg_value(ptr poison, !16665, !DIExpression(), !16670)
  %i.gg = icmp ult i32 %i.gf, 1000000000, !dbg !16994
  call void @llvm.assume(i1 %i.gg), !dbg !16994
  %i.gh = icmp ult i32 %i.ge, 1000000000, !dbg !16995
  call void @llvm.assume(i1 %i.gh), !dbg !16995
  %i.gi = icmp samesign ult i32 %i.gf, %i.ge, !dbg !16996
    #dbg_value(i8 poison, !15953, !DIExpression(), !16688)
    #dbg_value(i8 poison, !15954, !DIExpression(), !16689)
    #dbg_value(i8 poison, !16677, !DIExpression(), !16690)
  br i1 %i.gi, label %_RNvXse_NtNtCskKLDkoKarTP_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq.exit.thread, label %bb.bf, !dbg !15957

bb.be:                                            ; preds = %bb.bd
  %i.gj = icmp slt i64 %i.fo, %i.gc, !dbg !16996
    #dbg_value(i8 poison, !15953, !DIExpression(), !16688)
    #dbg_value(i8 poison, !15954, !DIExpression(), !16689)
    #dbg_value(i8 poison, !16677, !DIExpression(), !16690)
  br i1 %i.gj, label %_RNvXse_NtNtCskKLDkoKarTP_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq.exit.thread, label %bb.bf, !dbg !15957

bb.bf:                                            ; preds = %.split80, %bb.be
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !16997
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %.sroa.0.sroa.4.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(21) %i.j, i64 21, i1 false), !dbg !16998
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !16997
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(20) %.sroa.13, i64 20, i1 false), !dbg !16999
  store i8 1, ptr %0, align 1, !dbg !16997
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 22, !dbg !16997
  store i8 1, ptr %.sroa.4.0..sroa_idx, align 1, !dbg !16997
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 23, !dbg !16997
  store i8 %.sroa.11.15.extract.trunc, ptr %.sroa.5.0..sroa_idx, align 1, !dbg !16997
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !17000
  br label %bb.bp, !dbg !17000

_RNvXse_NtNtCskKLDkoKarTP_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq.exit.thread: ; preds = %bb.bb, %bb.az, %bb.bc, %.split80, %.split, %bb.be
  store i8 2, ptr %0, align 1, !dbg !16521
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !17000
  br label %bb.bp, !dbg !17001

bb.bg:                                            ; preds = %bb.ay
  %i.gk = trunc i64 %i.df to i1, !dbg !15918
  br i1 %i.gk, label %.split81, label %bb.bi, !dbg !16980

bb.bh:                                            ; preds = %.split81, %bb.ay, %bb.bi
  store i8 0, ptr %0, align 1, !dbg !17002
  %.sroa.9.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %0, i64 22, !dbg !17002
  store i8 0, ptr %.sroa.9.0..sroa_idx3, align 1, !dbg !17002
  %.sroa.10.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 23, !dbg !17002
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %.sroa.10.0..sroa_idx10, ptr noundef nonnull align 1 dereferenceable(21) %.sroa.10, i64 21, i1 false), !dbg !17002
  br label %bb.bp, !dbg !17003

.split81:                                         ; preds = %bb.bg
  call void @llvm.assume(i1 %i.dy), !dbg !16980
    #dbg_value(ptr undef, !15913, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !16694)
    #dbg_value(ptr undef, !16695, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !16699)
    #dbg_value(ptr undef, !15914, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !16694)
    #dbg_value(ptr undef, !16696, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !16699)
    #dbg_value(ptr poison, !16703, !DIExpression(), !16709)
    #dbg_value(ptr poison, !16704, !DIExpression(), !16710)
  %i.gl = icmp eq i128 %.sroa.23.5..sroa.23.5..sroa.23.5..sroa.23.49..sroa.11.0.copyload, %.sroa.6.0, !dbg !17004
  br i1 %i.gl, label %bb.bj, label %bb.bh, !dbg !15916

bb.bi:                                            ; preds = %bb.bg
  %i.gm = icmp eq i16 %i.dx, 0, !dbg !16980
  call void @llvm.assume(i1 %i.gm), !dbg !16980
    #dbg_value(ptr undef, !15911, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !16712)
    #dbg_value(ptr undef, !16713, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !16720)
    #dbg_value(ptr undef, !15912, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !16712)
    #dbg_value(ptr undef, !16714, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !16720)
    #dbg_value(ptr poison, !16724, !DIExpression(), !16730)
    #dbg_value(ptr poison, !16725, !DIExpression(), !16731)
  %.sroa.526.1.extract.trunc = trunc i128 %.sroa.23.5..sroa.23.5..sroa.23.5..sroa.23.49..sroa.11.0.copyload to i32, !dbg !17005
  %.sroa.6.1.extract.trunc = trunc i128 %.sroa.6.0 to i32, !dbg !17005
  %i.gn = icmp eq i32 %.sroa.526.1.extract.trunc, %.sroa.6.1.extract.trunc, !dbg !17005
  br i1 %i.gn, label %bb.bj, label %bb.bh, !dbg !15916

bb.bj:                                            ; preds = %.split81, %bb.bi
  %i.go = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !17006
  %i.gp = load i64, ptr %i.go, align 8, !dbg !17006, !noundef !1135 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %2, i64 40, !dbg !17006
  %i.gr = load i32, ptr %i.gq, align 8, !dbg !17006, !range !3472, !noundef !1135 ; 2 uses
  %i.gs = call { i64, i32 } @_RNvXs6_NtCsG258MDvU3F_3std4timeNtB5_10SystemTimeINtNtNtCskKLDkoKarTP_4core3ops5arith3AddNtNtBR_4time8DurationE3add(i64 noundef %.sroa.411.0.i, i32 noundef %.sroa.612.0.i, i64 noundef %i.gp, i32 noundef %i.gr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @88), !dbg !15971 ; 2 uses
  %i.gt = extractvalue { i64, i32 } %i.gs, 0, !dbg !15971 ; 2 uses
    #dbg_value(ptr poison, !15964, !DIExpression(), !16737)
    #dbg_value(ptr poison, !16594, !DIExpression(), !16739)
    #dbg_value(ptr poison, !16602, !DIExpression(), !16742)
    #dbg_value(ptr %2, !16611, !DIExpression(DW_OP_plus_uconst, 136, DW_OP_stack_value), !16744)
    #dbg_value(ptr %2, !16621, !DIExpression(DW_OP_plus_uconst, 136, DW_OP_stack_value), !16747)
  %i.gu = getelementptr inbounds nuw i8, ptr %2, i64 136, !dbg !17007
  %i.gv = load ptr, ptr %i.gu, align 8, !dbg !17007, !nonnull !1135, !noundef !1135
  %i.gw = getelementptr inbounds nuw i8, ptr %2, i64 144, !dbg !17007
  %i.gx = load ptr, ptr %i.gw, align 8, !dbg !17007, !nonnull !1135, !align !2576, !noundef !1135 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16, !dbg !17008
  %i.gz = load i64, ptr %i.gy, align 8, !dbg !17008, !range !2062, !invariant.load !1135
  %i.ha = add nsw i64 %i.gz, -1, !dbg !17008
  %i.hb = and i64 %i.ha, -16, !dbg !17008
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.hb, !dbg !17008
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 16, !dbg !17008
  %i.he = getelementptr inbounds nuw i8, ptr %i.gx, i64 24, !dbg !16743
  %i.hf = load ptr, ptr %i.he, align 8, !dbg !16743, !invariant.load !1135, !nonnull !1135
  %i.hg = call { i64, i32 } %i.hf(ptr noundef nonnull %i.hd) #21, !dbg !17009 ; 2 uses
  %i.hh = extractvalue { i64, i32 } %i.hg, 0, !dbg !17009 ; 2 uses
    #dbg_value(ptr poison, !15965, !DIExpression(), !16750)
    #dbg_value(ptr poison, !16598, !DIExpression(), !16739)
    #dbg_value(ptr poison, !16606, !DIExpression(), !16742)
    #dbg_value(ptr poison, !16641, !DIExpression(), !16753)
    #dbg_value(ptr poison, !16645, !DIExpression(), !16753)
    #dbg_value(ptr poison, !16650, !DIExpression(), !16756)
    #dbg_value(ptr poison, !16654, !DIExpression(), !16756)
  %i.hi = icmp eq i64 %i.gt, %i.hh, !dbg !16756
  br i1 %i.hi, label %.split82, label %bb.bk, !dbg !16756

.split82:                                         ; preds = %bb.bj
  %i.hj = extractvalue { i64, i32 } %i.hg, 1, !dbg !17009 ; 2 uses
  %i.hk = extractvalue { i64, i32 } %i.gs, 1, !dbg !15971 ; 2 uses
    #dbg_value(ptr poison, !16661, !DIExpression(), !16759)
    #dbg_value(ptr poison, !16665, !DIExpression(), !16760)
  %i.hl = icmp ult i32 %i.hk, 1000000000, !dbg !17010
  call void @llvm.assume(i1 %i.hl), !dbg !17010
  %i.hm = icmp ult i32 %i.hj, 1000000000, !dbg !17011
  call void @llvm.assume(i1 %i.hm), !dbg !17011
  %i.hn = icmp samesign ult i32 %i.hk, %i.hj, !dbg !17012
    #dbg_value(i8 poison, !15953, !DIExpression(), !16768)
    #dbg_value(i8 poison, !15955, !DIExpression(), !16769)
    #dbg_value(i8 poison, !16677, !DIExpression(), !16770)
  br i1 %i.hn, label %bb.bm, label %bb.bl, !dbg !15971

bb.bk:                                            ; preds = %bb.bj
  %i.ho = icmp slt i64 %i.gt, %i.hh, !dbg !17012
    #dbg_value(i8 poison, !15953, !DIExpression(), !16768)
    #dbg_value(i8 poison, !15955, !DIExpression(), !16769)
    #dbg_value(i8 poison, !16677, !DIExpression(), !16770)
  br i1 %i.ho, label %bb.bm, label %bb.bl, !dbg !15971

bb.bl:                                            ; preds = %.split82, %bb.bk
    #dbg_value(ptr %2, !16772, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !16781)
    #dbg_value(ptr %2, !16782, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !16792)
  %i.hp = getelementptr inbounds nuw i8, ptr %2, i64 48, !dbg !17013
  %i.hq = load ptr, ptr %i.hp, align 8, !dbg !17013, !nonnull !1135, !noundef !1135
  %i.hr = getelementptr inbounds nuw i8, ptr %2, i64 56, !dbg !17013
  %i.hs = load ptr, ptr %i.hr, align 8, !dbg !17013, !nonnull !1135, !align !2576, !noundef !1135 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 16, !dbg !17014
  %i.hu = load i64, ptr %i.ht, align 8, !dbg !17014, !range !2062, !invariant.load !1135
  %i.hv = add nsw i64 %i.hu, -1, !dbg !17014
  %i.hw = and i64 %i.hv, -16, !dbg !17014
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.hw, !dbg !17014
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 16, !dbg !17014
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hs, i64 24, !dbg !16780
  %i.ia = load ptr, ptr %i.hz, align 8, !dbg !16780, !invariant.load !1135, !nonnull !1135
  %i.ib = call noundef zeroext i1 %i.ia(ptr noundef nonnull %i.hy, i128 noundef %.sroa.018.0.copyload.i, i64 noundef %.sroa.411.0.i, i32 noundef %.sroa.612.0.i, i64 noundef %i.gp, i32 noundef %i.gr) #21, !dbg !17015
  br i1 %i.ib, label %bb.bo, label %bb.bn, !dbg !16780

bb.bm:                                            ; preds = %.split82, %bb.bk
  store i8 0, ptr %0, align 1, !dbg !17016
  %.sroa.9.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 22, !dbg !17016
  store i8 0, ptr %.sroa.9.0..sroa_idx5, align 1, !dbg !17016
  %.sroa.10.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %0, i64 23, !dbg !17016
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %.sroa.10.0..sroa_idx11, ptr noundef nonnull align 1 dereferenceable(21) %.sroa.10, i64 21, i1 false), !dbg !17016
  br label %bb.bp, !dbg !17003

bb.bn:                                            ; preds = %bb.bl
  %.sroa.634.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 23, !dbg !17017
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %.sroa.634.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(21) %i.j, i64 21, i1 false), !dbg !17018
  store i8 0, ptr %0, align 1, !dbg !17017
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 22, !dbg !17017
  store i8 1, ptr %.sroa.533.0..sroa_idx, align 1, !dbg !17017
  br label %bb.bp, !dbg !17019

bb.bo:                                            ; preds = %bb.bl
  store i8 0, ptr %0, align 1, !dbg !17020
  %.sroa.9.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 22, !dbg !17020
  store i8 0, ptr %.sroa.9.0..sroa_idx7, align 1, !dbg !17020
  %.sroa.10.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %0, i64 23, !dbg !17020
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %.sroa.10.0..sroa_idx12, ptr noundef nonnull align 1 dereferenceable(21) %.sroa.10, i64 21, i1 false), !dbg !17020
  br label %bb.bp, !dbg !17003

bb.bp:                                            ; preds = %bb.bf, %bb.bn, %bb.av, %bb.ax, %bb.bh, %bb.bm, %bb.bo, %_RNvXse_NtNtCskKLDkoKarTP_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10), !dbg !17021
  ret void, !dbg !17022
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCshovLROGBtMy_11quinn_proto5tokenNtB5_5Token6encode(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(96) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !17027 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [1 x i8], align 1                 ; 4 uses
    #dbg_value(ptr poison, !3473, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !17040)
    #dbg_value(ptr poison, !3481, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !17041)
    #dbg_value(ptr poison, !3487, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !17042)
    #dbg_value(ptr poison, !17614, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !17616)
    #dbg_value(ptr poison, !17611, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !17617)
    #dbg_value(ptr poison, !17593, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !17618)
    #dbg_value(ptr poison, !17595, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !17619)
    #dbg_value(ptr poison, !3473, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !17046)
    #dbg_value(ptr poison, !3481, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !17047)
    #dbg_value(ptr poison, !3487, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !17048)
    #dbg_value(ptr poison, !17614, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !17624)
    #dbg_value(ptr poison, !17611, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !17625)
    #dbg_value(ptr poison, !17593, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !17626)
    #dbg_value(ptr poison, !17594, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !17627)
  %i.g = alloca [16 x i8], align 16               ; 3 uses
    #dbg_declare(ptr poison, !17629, !DIExpression(DW_OP_LLVM_fragment, 40, 96), !17053)
    #dbg_declare(ptr poison, !17588, !DIExpression(DW_OP_LLVM_fragment, 40, 96), !17636)
  %i.h = alloca [21 x i8], align 1                ; 5 uses
    #dbg_value(ptr poison, !17637, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !17060)
    #dbg_value(ptr poison, !17637, !DIExpression(DW_OP_LLVM_fragment, 32, 16), !17060)
    #dbg_value(ptr poison, !17647, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !17065)
    #dbg_value(ptr poison, !17647, !DIExpression(DW_OP_LLVM_fragment, 32, 16), !17065)
    #dbg_declare(ptr poison, !17644, !DIExpression(DW_OP_LLVM_fragment, 64, 96), !17066)
    #dbg_declare(ptr poison, !17585, !DIExpression(DW_OP_LLVM_fragment, 64, 96), !17655)
    #dbg_value(ptr poison, !17647, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !17065)
    #dbg_value(ptr undef, !17647, !DIExpression(DW_OP_LLVM_fragment, 16, 32), !17065)
    #dbg_value(ptr poison, !17647, !DIExpression(DW_OP_LLVM_fragment, 48, 16), !17065)
    #dbg_value(ptr poison, !17637, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !17060)
    #dbg_value(ptr undef, !17637, !DIExpression(DW_OP_LLVM_fragment, 16, 32), !17060)
    #dbg_value(ptr poison, !17637, !DIExpression(DW_OP_LLVM_fragment, 48, 16), !17060)
  %i.i = alloca [24 x i8], align 8                ; 24 uses
    #dbg_value(ptr %1, !17582, !DIExpression(), !17658)
    #dbg_value(ptr %2, !17583, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17658)
    #dbg_value(ptr %3, !17583, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17658)
    #dbg_declare(ptr %i.i, !17584, !DIExpression(), !17659)
    #dbg_declare(ptr %i.h, !17586, !DIExpression(), !17660)
    #dbg_value(i8 1, !17606, !DIExpression(), !17661)
    #dbg_value(i8 0, !17606, !DIExpression(), !17662)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !17829
  store i64 0, ptr %i.i, align 8, !dbg !17830
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !17830 ; 13 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.j, align 8, !dbg !17830
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !17830 ; 33 uses
  store i64 0, ptr %i.k, align 8, !dbg !17830
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !17831
  %i.m = load i32, ptr %i.l, align 8, !dbg !17831, !range !17667, !noundef !1135 ; 2 uses
  %i.n = icmp eq i32 %i.m, -1, !dbg !17831
  br i1 %i.n, label %bb.b, label %bb.c, !dbg !17832

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !17833
  %.sroa.0111.0.copyload = load i8, ptr %i.o, align 16, !dbg !17833
    #dbg_value(i8 %.sroa.0111.0.copyload, !17588, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !17668)
    #dbg_value(i8 %.sroa.0111.0.copyload, !17629, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !17669)
  %.sroa.4.0..sroa_idx112 = getelementptr inbounds nuw i8, ptr %1, i64 49, !dbg !17833
  %.sroa.4.0.copyload113 = load i32, ptr %.sroa.4.0..sroa_idx112, align 1, !dbg !17833 ; 2 uses
    #dbg_value(i32 %.sroa.4.0.copyload113, !17588, !DIExpression(DW_OP_LLVM_fragment, 8, 32), !17668)
    #dbg_value(i32 %.sroa.4.0.copyload113, !17629, !DIExpression(DW_OP_LLVM_fragment, 8, 32), !17669)
  %.sroa.6114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 53, !dbg !17833
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !17834
  %i.q = load i64, ptr %i.p, align 16, !dbg !17834, !noundef !1135
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !17834
  %i.s = load i32, ptr %i.r, align 8, !dbg !17834, !range !3472, !noundef !1135
    #dbg_value(i64 %i.q, !17589, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17668)
    #dbg_value(i32 %i.s, !17589, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !17668)
    #dbg_value(ptr %i.i, !17605, !DIExpression(), !17661)
    #dbg_value(ptr %i.i, !17610, !DIExpression(), !17625)
    #dbg_value(ptr %i.i, !17613, !DIExpression(), !17624)
    #dbg_value(ptr %i.i, !17592, !DIExpression(), !17626)
    #dbg_value(i8 1, !17607, !DIExpression(), !17670)
    #dbg_value(ptr undef, !17611, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17625)
    #dbg_value(ptr undef, !17614, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17624)
    #dbg_value(i64 1, !17611, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17625)
    #dbg_value(i64 1, !17614, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17624)
    #dbg_value(ptr undef, !17593, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17626)
    #dbg_value(ptr undef, !17593, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17626)
    #dbg_value(ptr undef, !17594, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17627)
    #dbg_value(i64 1, !17594, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17627)
    #dbg_value(ptr %i.i, !3486, !DIExpression(), !17048)
    #dbg_value(ptr %i.i, !3480, !DIExpression(), !17047)
    #dbg_value(ptr %i.i, !3501, !DIExpression(), !17069)
    #dbg_value(ptr %i.i, !3507, !DIExpression(), !17071)
    #dbg_value(ptr undef, !3487, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17048)
    #dbg_value(ptr undef, !3481, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17047)
end_hunk_0
