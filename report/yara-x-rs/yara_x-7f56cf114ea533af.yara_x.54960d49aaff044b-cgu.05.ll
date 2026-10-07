Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.05?download=true
inline.NumInlined: 3898
inline.NumDeleted: 2041
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RINvXsf_NtCsgkljs906P5b_3nom8internalNCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtBH_9MachOFile14thread_command0INtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2C_NtB6_9StreamingEEBN_:bb.a
bb.jp:                                            ; preds = %_RINvXsF_NtCsgkljs906P5b_3nom8internalTNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB16_EE0BA_BA_BA_INtNtB8_5multi5CountBA_EB1J_EINtB6_6ParserB16_E7processINtB6_7OutputMNtB6_4EmitB2Q_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4416
  store i64 %.sroa.5191.i.i.sroa.0.0.copyload.i, ptr %i.a, align 8, !noalias !4363
  %.sroa.4407.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.4377.0.copyload.i, ptr %.sroa.4407.0..sroa_idx.i, align 8, !noalias !4363
  %.sroa.5408.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.5185.i.i.sroa.6.0.copyload.i, ptr %.sroa.5408.0..sroa_idx.i, align 8, !noalias !4363
  %.sroa.6409.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.6372.28.insert.insert.i, ptr %.sroa.6409.0..sroa_idx.i, align 8, !noalias !4363
  %.sroa.7410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 %.sroa.5147.0.copyload.i.i.i, ptr %.sroa.7410.0..sroa_idx.i, align 8, !noalias !4363
  %.sroa.8411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store i32 %.sroa.5166.0.copyload.i.i.i, ptr %.sroa.8411.0..sroa_idx.i, align 4, !noalias !4363
  %.sroa.9412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 5 uses
  store i64 %.sroa.5203.i.i.sroa.0.0.copyload.i, ptr %.sroa.9412.0..sroa_idx.i, align 8, !noalias !4363
  %.sroa.10413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 %.sroa.5203.i.i.sroa.4.0.copyload.i, ptr %.sroa.10413.0..sroa_idx.i, align 8, !noalias !4363
  %.sroa.11414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  store i32 %.sroa.5203.i.i.sroa.5.0.copyload.i, ptr %.sroa.11414.0..sroa_idx.i, align 4, !noalias !4363
  %.sroa.12415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %.sroa.5197.i.i.sroa.6.0.copyload.i, ptr %.sroa.12415.0..sroa_idx.i, align 8, !noalias !4363
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %bb.jr unwind label %bb.jq, !noalias !4417

bb.jq:                                            ; preds = %bb.jp
  %i.rd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %.body.i.i.i286.i unwind label %bb.js, !noalias !4417

bb.jr:                                            ; preds = %bb.jp
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs7gfv9tzbXmh_6yara_x.exit.i.i.i290.i unwind label %bb.jt, !noalias !4417

bb.js:                                            ; preds = %bb.jq
  %i.re = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !4417
  unreachable

bb.jt:                                            ; preds = %bb.jr
  %i.rf = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i286.i

.body.i.i.i286.i:                                 ; preds = %bb.jt, %bb.jq
  %eh.lpad-body.i.i.i287.i = phi { ptr, i32 } [ %i.rf, %bb.jt ], [ %i.rd, %bb.jq ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %.sroa.9412.0..sroa_idx.i) #28
          to label %common.resume.i unwind label %bb.jw, !noalias !4417

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs7gfv9tzbXmh_6yara_x.exit.i.i.i290.i: ; preds = %bb.jr
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.9412.0..sroa_idx.i)
          to label %_RNCINvXsg_NtCsgkljs906P5b_3nom8internalINtB8_3MapTNCINvNtNtBa_6number8complete3u32RShINtNtBa_5error5ErrorB1i_EE0BM_BM_BM_INtNtBa_5multi5CountBM_EB1V_ENCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2w_9MachOFile18sparc_thread_state0EINtB8_6ParserB1i_E7processINtB8_7OutputMNtB8_4EmitB4y_NtB8_9StreamingEE0B2C_.exit.i unwind label %bb.ju, !noalias !4417

bb.ju:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs7gfv9tzbXmh_6yara_x.exit.i.i.i290.i
  %i.rg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.9412.0..sroa_idx.i)
          to label %common.resume.i unwind label %bb.jv, !noalias !4417

bb.jv:                                            ; preds = %bb.ju
  %i.rh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !4417
  unreachable

bb.jw:                                            ; preds = %.body.i.i.i286.i
  %i.ri = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !4417
  unreachable

_RNCINvXsg_NtCsgkljs906P5b_3nom8internalINtB8_3MapTNCINvNtNtBa_6number8complete3u32RShINtNtBa_5error5ErrorB1i_EE0BM_BM_BM_INtNtBa_5multi5CountBM_EB1V_ENCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2w_9MachOFile18sparc_thread_state0EINtB8_6ParserB1i_E7processINtB8_7OutputMNtB8_4EmitB4y_NtB8_9StreamingEE0B2C_.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs7gfv9tzbXmh_6yara_x.exit.i.i.i290.i
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.9412.0..sroa_idx.i), !noalias !4417
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4416
  %i.rj = ptrtoint ptr %.sroa.0201.0.copyload.i.i.i to i64
  br label %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB1g_EE0BK_BK_BK_INtNtB8_5multi5CountBK_EB1T_ENCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2u_9MachOFile18sparc_thread_state0EINtB6_6ParserB1g_E7processINtB6_7OutputMNtB6_4EmitB4w_NtB6_9StreamingEEB2A_.exit.i

_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB1g_EE0BK_BK_BK_INtNtB8_5multi5CountBK_EB1T_ENCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2u_9MachOFile18sparc_thread_state0EINtB6_6ParserB1g_E7processINtB6_7OutputMNtB6_4EmitB4w_NtB6_9StreamingEEB2A_.exit.i: ; preds = %_RNCINvXsg_NtCsgkljs906P5b_3nom8internalINtB8_3MapTNCINvNtNtBa_6number8complete3u32RShINtNtBa_5error5ErrorB1i_EE0BM_BM_BM_INtNtBa_5multi5CountBM_EB1V_ENCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2w_9MachOFile18sparc_thread_state0EINtB8_6ParserB1i_E7processINtB8_7OutputMNtB8_4EmitB4y_NtB8_9StreamingEE0B2C_.exit.i, %_RINvXsF_NtCsgkljs906P5b_3nom8internalTNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB16_EE0BA_BA_BA_INtNtB8_5multi5CountBA_EB1J_EINtB6_6ParserB16_E7processINtB6_7OutputMNtB6_4EmitB2Q_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x.exit.i.thread.i
  %.sroa.68.8 = phi i64 [ %.sroa.68.28.insert.insert28, %_RINvXsF_NtCsgkljs906P5b_3nom8internalTNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB16_EE0BA_BA_BA_INtNtB8_5multi5CountBA_EB1J_EINtB6_6ParserB16_E7processINtB6_7OutputMNtB6_4EmitB2Q_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x.exit.i.thread.i ], [ %.sroa.6372.28.insert.ext.i, %_RNCINvXsg_NtCsgkljs906P5b_3nom8internalINtB8_3MapTNCINvNtNtBa_6number8complete3u32RShINtNtBa_5error5ErrorB1i_EE0BM_BM_BM_INtNtBa_5multi5CountBM_EB1V_ENCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2w_9MachOFile18sparc_thread_state0EINtB8_6ParserB1i_E7processINtB8_7OutputMNtB8_4EmitB4y_NtB8_9StreamingEE0B2C_.exit.i ]
  %.sroa.46.8 = phi i64 [ %.sroa.28349.0805.i, %_RINvXsF_NtCsgkljs906P5b_3nom8internalTNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB16_EE0BA_BA_BA_INtNtB8_5multi5CountBA_EB1J_EINtB6_6ParserB16_E7processINtB6_7OutputMNtB6_4EmitB2Q_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x.exit.i.thread.i ], [ %.sroa.4202.0.copyload.i.i.i, %_RNCINvXsg_NtCsgkljs906P5b_3nom8internalINtB8_3MapTNCINvNtNtBa_6number8complete3u32RShINtNtBa_5error5ErrorB1i_EE0BM_BM_BM_INtNtBa_5multi5CountBM_EB1V_ENCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2w_9MachOFile18sparc_thread_state0EINtB8_6ParserB1i_E7processINtB8_7OutputMNtB8_4EmitB4y_NtB8_9StreamingEE0B2C_.exit.i ]
  %.sroa.24.8 = phi i64 [ %.sroa.22347.0806.i, %_RINvXsF_NtCsgkljs906P5b_3nom8internalTNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB16_EE0BA_BA_BA_INtNtB8_5multi5CountBA_EB1J_EINtB6_6ParserB16_E7processINtB6_7OutputMNtB6_4EmitB2Q_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x.exit.i.thread.i ], [ %i.rj, %_RNCINvXsg_NtCsgkljs906P5b_3nom8internalINtB8_3MapTNCINvNtNtBa_6number8complete3u32RShINtNtBa_5error5ErrorB1i_EE0BM_BM_BM_INtNtBa_5multi5CountBM_EB1V_ENCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2w_9MachOFile18sparc_thread_state0EINtB8_6ParserB1i_E7processINtB8_7OutputMNtB8_4EmitB4y_NtB8_9StreamingEE0B2C_.exit.i ]
  %.sroa.0.8 = phi i64 [ %.sroa.15345.0807.i, %_RINvXsF_NtCsgkljs906P5b_3nom8internalTNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB16_EE0BA_BA_BA_INtNtB8_5multi5CountBA_EB1J_EINtB6_6ParserB16_E7processINtB6_7OutputMNtB6_4EmitB2Q_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x.exit.i.thread.i ], [ -1, %_RNCINvXsg_NtCsgkljs906P5b_3nom8internalINtB8_3MapTNCINvNtNtBa_6number8complete3u32RShINtNtBa_5error5ErrorB1i_EE0BM_BM_BM_INtNtBa_5multi5CountBM_EB1V_ENCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2w_9MachOFile18sparc_thread_state0EINtB8_6ParserB1i_E7processINtB8_7OutputMNtB8_4EmitB4y_NtB8_9StreamingEE0B2C_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !noalias !4363
  br label %_RNCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB7_9MachOFile14thread_command0Bd_.exit

_RNCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB7_9MachOFile14thread_command0Bd_.exit: ; preds = %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB1g_EE0BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_ENCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2C_9MachOFile16x86_thread_state0EINtB6_6ParserB1g_E7processINtB6_7OutputMNtB6_4EmitB4C_NtB6_9StreamingEEB2I_.exit.i, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTNCINvNtNtB8_6number8complete3u64RShINtNtB8_5error5ErrorB1g_EE0BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_ENCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2R_9MachOFile19x86_64_thread_state0EINtB6_6ParserB1g_E7processINtB6_7OutputMNtB6_4EmitB4U_NtB6_9StreamingEEB2X_.exit.i, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINtNtB8_5multi5CountNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB1A_EE0EB14_B14_B14_B14_ENCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2u_9MachOFile16arm_thread_state0EINtB6_6ParserB1A_E7processINtB6_7OutputMNtB6_4EmitB4u_NtB6_9StreamingEEB2A_.exit.i, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINtNtB8_5multi5CountNCINvNtNtB8_6number8complete3u64RShINtNtB8_5error5ErrorB1A_EE0EB14_B14_B14_B14_NCINvB19_3u32B1A_B1D_E0ENCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2R_9MachOFile18arm64_thread_state0EINtB6_6ParserB1A_E7processINtB6_7OutputMNtB6_4EmitB4T_NtB6_9StreamingEEB2X_.exit.i, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTNCNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser4uint0BK_INtNtB8_5multi5CountBK_EBK_BK_BK_BK_BK_BK_ENCNvMs1_BO_NtBO_9MachOFile16ppc_thread_state0EINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB3N_NtB6_9StreamingEEBU_.exit.i, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTNCNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser4uint0BK_INtNtB8_5multi5CountBK_EBK_BK_BK_BK_BK_ENCNvMs1_BO_NtBO_9MachOFile18ppc64_thread_state0EINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB3M_NtB6_9StreamingEEBU_.exit.i, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINtNtB8_5multi5CountNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB1A_EE0EBK_NCINvB19_3u16B1A_B1D_E0B28_B14_ENCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2M_9MachOFile17m68k_thread_state0EINtB6_6ParserB1A_E7processINtB6_7OutputMNtB6_4EmitB4N_NtB6_9StreamingEEB2S_.exit.i, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINtNtB8_5multi5CountNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB1A_EE0EB14_B14_B14_ENCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2q_9MachOFile17m88k_thread_state0EINtB6_6ParserB1A_E7processINtB6_7OutputMNtB6_4EmitB4r_NtB6_9StreamingEEB2w_.exit.i, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB1g_EE0BK_BK_BK_INtNtB8_5multi5CountBK_EB1T_ENCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2u_9MachOFile18sparc_thread_state0EINtB6_6ParserB1g_E7processINtB6_7OutputMNtB6_4EmitB4w_NtB6_9StreamingEEB2A_.exit.i
  %.sroa.68.9 = phi i64 [ %.sroa.68.8, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB1g_EE0BK_BK_BK_INtNtB8_5multi5CountBK_EB1T_ENCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2u_9MachOFile18sparc_thread_state0EINtB6_6ParserB1g_E7processINtB6_7OutputMNtB6_4EmitB4w_NtB6_9StreamingEEB2A_.exit.i ], [ %.sroa.68.0, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB1g_EE0BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_ENCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2C_9MachOFile16x86_thread_state0EINtB6_6ParserB1g_E7processINtB6_7OutputMNtB6_4EmitB4C_NtB6_9StreamingEEB2I_.exit.i ], [ %.sroa.68.1, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTNCINvNtNtB8_6number8complete3u64RShINtNtB8_5error5ErrorB1g_EE0BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_ENCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2R_9MachOFile19x86_64_thread_state0EINtB6_6ParserB1g_E7processINtB6_7OutputMNtB6_4EmitB4U_NtB6_9StreamingEEB2X_.exit.i ], [ %.sroa.68.2, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINtNtB8_5multi5CountNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB1A_EE0EB14_B14_B14_B14_ENCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2u_9MachOFile16arm_thread_state0EINtB6_6ParserB1A_E7processINtB6_7OutputMNtB6_4EmitB4u_NtB6_9StreamingEEB2A_.exit.i ], [ %.sroa.68.3, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINtNtB8_5multi5CountNCINvNtNtB8_6number8complete3u64RShINtNtB8_5error5ErrorB1A_EE0EB14_B14_B14_B14_NCINvB19_3u32B1A_B1D_E0ENCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2R_9MachOFile18arm64_thread_state0EINtB6_6ParserB1A_E7processINtB6_7OutputMNtB6_4EmitB4T_NtB6_9StreamingEEB2X_.exit.i ], [ %.sroa.68.4, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTNCNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser4uint0BK_INtNtB8_5multi5CountBK_EBK_BK_BK_BK_BK_BK_ENCNvMs1_BO_NtBO_9MachOFile16ppc_thread_state0EINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB3N_NtB6_9StreamingEEBU_.exit.i ], [ %.sroa.68.5, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTNCNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser4uint0BK_INtNtB8_5multi5CountBK_EBK_BK_BK_BK_BK_ENCNvMs1_BO_NtBO_9MachOFile18ppc64_thread_state0EINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB3M_NtB6_9StreamingEEBU_.exit.i ], [ %.sroa.68.6, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINtNtB8_5multi5CountNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB1A_EE0EBK_NCINvB19_3u16B1A_B1D_E0B28_B14_ENCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2M_9MachOFile17m68k_thread_state0EINtB6_6ParserB1A_E7processINtB6_7OutputMNtB6_4EmitB4N_NtB6_9StreamingEEB2S_.exit.i ], [ %.sroa.68.7, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINtNtB8_5multi5CountNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB1A_EE0EB14_B14_B14_ENCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2q_9MachOFile17m88k_thread_state0EINtB6_6ParserB1A_E7processINtB6_7OutputMNtB6_4EmitB4r_NtB6_9StreamingEEB2w_.exit.i ] ; 2 uses
  %.sroa.46.9 = phi i64 [ %.sroa.46.8, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB1g_EE0BK_BK_BK_INtNtB8_5multi5CountBK_EB1T_ENCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2u_9MachOFile18sparc_thread_state0EINtB6_6ParserB1g_E7processINtB6_7OutputMNtB6_4EmitB4w_NtB6_9StreamingEEB2A_.exit.i ], [ %.sroa.46.0, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB1g_EE0BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_ENCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2C_9MachOFile16x86_thread_state0EINtB6_6ParserB1g_E7processINtB6_7OutputMNtB6_4EmitB4C_NtB6_9StreamingEEB2I_.exit.i ], [ %.sroa.46.1, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTNCINvNtNtB8_6number8complete3u64RShINtNtB8_5error5ErrorB1g_EE0BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_ENCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2R_9MachOFile19x86_64_thread_state0EINtB6_6ParserB1g_E7processINtB6_7OutputMNtB6_4EmitB4U_NtB6_9StreamingEEB2X_.exit.i ], [ %.sroa.46.2, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINtNtB8_5multi5CountNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB1A_EE0EB14_B14_B14_B14_ENCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2u_9MachOFile16arm_thread_state0EINtB6_6ParserB1A_E7processINtB6_7OutputMNtB6_4EmitB4u_NtB6_9StreamingEEB2A_.exit.i ], [ %.sroa.46.3, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINtNtB8_5multi5CountNCINvNtNtB8_6number8complete3u64RShINtNtB8_5error5ErrorB1A_EE0EB14_B14_B14_B14_NCINvB19_3u32B1A_B1D_E0ENCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2R_9MachOFile18arm64_thread_state0EINtB6_6ParserB1A_E7processINtB6_7OutputMNtB6_4EmitB4T_NtB6_9StreamingEEB2X_.exit.i ], [ %.sroa.46.4, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTNCNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser4uint0BK_INtNtB8_5multi5CountBK_EBK_BK_BK_BK_BK_BK_ENCNvMs1_BO_NtBO_9MachOFile16ppc_thread_state0EINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB3N_NtB6_9StreamingEEBU_.exit.i ], [ %.sroa.46.5, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTNCNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser4uint0BK_INtNtB8_5multi5CountBK_EBK_BK_BK_BK_BK_ENCNvMs1_BO_NtBO_9MachOFile18ppc64_thread_state0EINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB3M_NtB6_9StreamingEEBU_.exit.i ], [ %.sroa.46.6, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINtNtB8_5multi5CountNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB1A_EE0EBK_NCINvB19_3u16B1A_B1D_E0B28_B14_ENCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2M_9MachOFile17m68k_thread_state0EINtB6_6ParserB1A_E7processINtB6_7OutputMNtB6_4EmitB4N_NtB6_9StreamingEEB2S_.exit.i ], [ %.sroa.46.7, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINtNtB8_5multi5CountNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB1A_EE0EB14_B14_B14_ENCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2q_9MachOFile17m88k_thread_state0EINtB6_6ParserB1A_E7processINtB6_7OutputMNtB6_4EmitB4r_NtB6_9StreamingEEB2w_.exit.i ] ; 2 uses
  %.sroa.24.9 = phi i64 [ %.sroa.24.8, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB1g_EE0BK_BK_BK_INtNtB8_5multi5CountBK_EB1T_ENCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2u_9MachOFile18sparc_thread_state0EINtB6_6ParserB1g_E7processINtB6_7OutputMNtB6_4EmitB4w_NtB6_9StreamingEEB2A_.exit.i ], [ %.sroa.24.0, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB1g_EE0BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_ENCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2C_9MachOFile16x86_thread_state0EINtB6_6ParserB1g_E7processINtB6_7OutputMNtB6_4EmitB4C_NtB6_9StreamingEEB2I_.exit.i ], [ %.sroa.24.1, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTNCINvNtNtB8_6number8complete3u64RShINtNtB8_5error5ErrorB1g_EE0BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_ENCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2R_9MachOFile19x86_64_thread_state0EINtB6_6ParserB1g_E7processINtB6_7OutputMNtB6_4EmitB4U_NtB6_9StreamingEEB2X_.exit.i ], [ %.sroa.24.2, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINtNtB8_5multi5CountNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB1A_EE0EB14_B14_B14_B14_ENCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2u_9MachOFile16arm_thread_state0EINtB6_6ParserB1A_E7processINtB6_7OutputMNtB6_4EmitB4u_NtB6_9StreamingEEB2A_.exit.i ], [ %.sroa.24.3, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINtNtB8_5multi5CountNCINvNtNtB8_6number8complete3u64RShINtNtB8_5error5ErrorB1A_EE0EB14_B14_B14_B14_NCINvB19_3u32B1A_B1D_E0ENCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2R_9MachOFile18arm64_thread_state0EINtB6_6ParserB1A_E7processINtB6_7OutputMNtB6_4EmitB4T_NtB6_9StreamingEEB2X_.exit.i ], [ %.sroa.24.4, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTNCNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser4uint0BK_INtNtB8_5multi5CountBK_EBK_BK_BK_BK_BK_BK_ENCNvMs1_BO_NtBO_9MachOFile16ppc_thread_state0EINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB3N_NtB6_9StreamingEEBU_.exit.i ], [ %.sroa.24.5, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTNCNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser4uint0BK_INtNtB8_5multi5CountBK_EBK_BK_BK_BK_BK_ENCNvMs1_BO_NtBO_9MachOFile18ppc64_thread_state0EINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB3M_NtB6_9StreamingEEBU_.exit.i ], [ %.sroa.24.6, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINtNtB8_5multi5CountNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB1A_EE0EBK_NCINvB19_3u16B1A_B1D_E0B28_B14_ENCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2M_9MachOFile17m68k_thread_state0EINtB6_6ParserB1A_E7processINtB6_7OutputMNtB6_4EmitB4N_NtB6_9StreamingEEB2S_.exit.i ], [ %.sroa.24.7, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINtNtB8_5multi5CountNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB1A_EE0EB14_B14_B14_ENCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2q_9MachOFile17m88k_thread_state0EINtB6_6ParserB1A_E7processINtB6_7OutputMNtB6_4EmitB4r_NtB6_9StreamingEEB2w_.exit.i ] ; 2 uses
  %.sroa.0.9 = phi i64 [ %.sroa.0.8, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB1g_EE0BK_BK_BK_INtNtB8_5multi5CountBK_EB1T_ENCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2u_9MachOFile18sparc_thread_state0EINtB6_6ParserB1g_E7processINtB6_7OutputMNtB6_4EmitB4w_NtB6_9StreamingEEB2A_.exit.i ], [ %.sroa.0.0, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB1g_EE0BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_ENCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2C_9MachOFile16x86_thread_state0EINtB6_6ParserB1g_E7processINtB6_7OutputMNtB6_4EmitB4C_NtB6_9StreamingEEB2I_.exit.i ], [ %.sroa.0.1, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTNCINvNtNtB8_6number8complete3u64RShINtNtB8_5error5ErrorB1g_EE0BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_ENCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2R_9MachOFile19x86_64_thread_state0EINtB6_6ParserB1g_E7processINtB6_7OutputMNtB6_4EmitB4U_NtB6_9StreamingEEB2X_.exit.i ], [ %.sroa.0.2, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINtNtB8_5multi5CountNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB1A_EE0EB14_B14_B14_B14_ENCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2u_9MachOFile16arm_thread_state0EINtB6_6ParserB1A_E7processINtB6_7OutputMNtB6_4EmitB4u_NtB6_9StreamingEEB2A_.exit.i ], [ %.sroa.0.3, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINtNtB8_5multi5CountNCINvNtNtB8_6number8complete3u64RShINtNtB8_5error5ErrorB1A_EE0EB14_B14_B14_B14_NCINvB19_3u32B1A_B1D_E0ENCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2R_9MachOFile18arm64_thread_state0EINtB6_6ParserB1A_E7processINtB6_7OutputMNtB6_4EmitB4T_NtB6_9StreamingEEB2X_.exit.i ], [ %.sroa.0.4, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTNCNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser4uint0BK_INtNtB8_5multi5CountBK_EBK_BK_BK_BK_BK_BK_ENCNvMs1_BO_NtBO_9MachOFile16ppc_thread_state0EINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB3N_NtB6_9StreamingEEBU_.exit.i ], [ %.sroa.0.5, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTNCNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser4uint0BK_INtNtB8_5multi5CountBK_EBK_BK_BK_BK_BK_ENCNvMs1_BO_NtBO_9MachOFile18ppc64_thread_state0EINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB3M_NtB6_9StreamingEEBU_.exit.i ], [ %.sroa.0.6, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINtNtB8_5multi5CountNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB1A_EE0EBK_NCINvB19_3u16B1A_B1D_E0B28_B14_ENCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2M_9MachOFile17m68k_thread_state0EINtB6_6ParserB1A_E7processINtB6_7OutputMNtB6_4EmitB4N_NtB6_9StreamingEEB2S_.exit.i ], [ %.sroa.0.7, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINtNtB8_5multi5CountNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB1A_EE0EB14_B14_B14_ENCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2q_9MachOFile17m88k_thread_state0EINtB6_6ParserB1A_E7processINtB6_7OutputMNtB6_4EmitB4r_NtB6_9StreamingEEB2w_.exit.i ] ; 2 uses
  %.not = icmp eq i64 %.sroa.0.9, -1
  br i1 %.not, label %bb.jy, label %bb.jx

bb.jx:                                            ; preds = %_RNCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB7_9MachOFile14thread_command0Bd_.exit.thread60, %_RNCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB7_9MachOFile14thread_command0Bd_.exit
  %.sroa.0.969 = phi i64 [ %.sroa.0.0.ph.i, %_RNCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB7_9MachOFile14thread_command0Bd_.exit.thread60 ], [ %.sroa.0.9, %_RNCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB7_9MachOFile14thread_command0Bd_.exit ]
  %.sroa.24.968 = phi i64 [ %i.do, %_RNCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB7_9MachOFile14thread_command0Bd_.exit.thread60 ], [ %.sroa.24.9, %_RNCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB7_9MachOFile14thread_command0Bd_.exit ]
  %.sroa.46.967 = phi i64 [ %.sroa.12.0.ph.i, %_RNCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB7_9MachOFile14thread_command0Bd_.exit.thread60 ], [ %.sroa.46.9, %_RNCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB7_9MachOFile14thread_command0Bd_.exit ]
  %.sroa.68.966 = phi i64 [ %.sroa.68.28.insert.insert, %_RNCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB7_9MachOFile14thread_command0Bd_.exit.thread60 ], [ %.sroa.68.9, %_RNCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB7_9MachOFile14thread_command0Bd_.exit ]
  %i.rk = inttoptr i64 %.sroa.24.968 to ptr
  store i64 %.sroa.0.969, ptr %0, align 8
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.rk, ptr %.sroa.455.0..sroa_idx, align 8
  %.sroa.556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.46.967, ptr %.sroa.556.0..sroa_idx, align 8
  %.sroa.657.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.68.966, ptr %.sroa.657.0..sroa_idx, align 8
  br label %bb.jz

bb.jy:                                            ; preds = %_RNCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB7_9MachOFile14thread_command0Bd_.exit.thread, %_RNCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB7_9MachOFile14thread_command0Bd_.exit
  %.sroa.24.959 = phi i64 [ %i.dr, %_RNCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB7_9MachOFile14thread_command0Bd_.exit.thread ], [ %.sroa.24.9, %_RNCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB7_9MachOFile14thread_command0Bd_.exit ] ; 2 uses
  %.sroa.46.958 = phi i64 [ %.sroa.456.0.copyload.i.i, %_RNCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB7_9MachOFile14thread_command0Bd_.exit.thread ], [ %.sroa.46.9, %_RNCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB7_9MachOFile14thread_command0Bd_.exit ]
  %.sroa.68.957 = phi i64 [ 0, %_RNCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB7_9MachOFile14thread_command0Bd_.exit.thread ], [ %.sroa.68.9, %_RNCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB7_9MachOFile14thread_command0Bd_.exit ]
  %i.rl = inttoptr i64 %.sroa.24.959 to ptr
  %i.rm = icmp ne i64 %.sroa.24.959, 0
  call void @llvm.assume(i1 %i.rm)
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.rl, ptr %i.rn, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.46.958, ptr %.sroa.415.0..sroa_idx, align 8
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.68.957, ptr %.sroa.516.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.jz

bb.jz:                                            ; preds = %bb.jx, %bb.jy
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtBH_9MachOFile15segment_command0INtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2D_NtB6_9StreamingEEBN_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr nofree readonly captures(none) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [32 x i8], align 8                ; 8 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [32 x i8], align 8                ; 9 uses
  %i.j = alloca [32 x i8], align 8                ; 9 uses
  %i.k = alloca [32 x i8], align 8                ; 9 uses
  %i.l = alloca [32 x i8], align 8                ; 9 uses
  %i.m = alloca [32 x i8], align 8                ; 9 uses
  %i.n = alloca [32 x i8], align 8                ; 9 uses
  %i.o = alloca [32 x i8], align 8                ; 9 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %i.q = alloca [32 x i8], align 8                ; 7 uses
  %i.r = alloca [112 x i8], align 8               ; 24 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 14 uses
  %i.v = alloca [24 x i8], align 8                ; 8 uses
  %i.w = alloca [32 x i8], align 8                ; 8 uses
  %i.x = alloca [16 x i8], align 8                ; 6 uses
  %i.y = alloca [32 x i8], align 8                ; 9 uses
  %i.z = alloca [32 x i8], align 8                ; 9 uses
  %i.aa = alloca [32 x i8], align 8               ; 9 uses
  %i.ab = alloca [32 x i8], align 8               ; 9 uses
  %i.ac = alloca [32 x i8], align 8               ; 7 uses
  %i.ad = alloca [32 x i8], align 8               ; 7 uses
  %i.ae = alloca [32 x i8], align 8               ; 7 uses
  %i.af = alloca [32 x i8], align 8               ; 7 uses
  %i.ag = alloca [40 x i8], align 8               ; 19 uses
  %i.ah = alloca [24 x i8], align 8               ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !4524
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.val, i64 601 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !range !26, !noalias !4524, !noundef !5 ; 9 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.val, i64 600 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 8, !range !22, !noalias !4524, !noundef !5 ; 8 uses
  store i64 16, ptr %i.ah, align 8, !noalias !4524
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i8 %i.al, ptr %i.am, align 8, !noalias !4524
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 9
  store i8 %i.aj, ptr %i.an, align 1, !noalias !4524
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 10
  store i8 %i.al, ptr %i.ao, align 2, !noalias !4524
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 11
  store i8 %i.aj, ptr %i.ap, align 1, !noalias !4524
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  store i8 %i.al, ptr %i.aq, align 4, !noalias !4524
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 13
  store i8 %i.aj, ptr %i.ar, align 1, !noalias !4524
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 14
  store i8 %i.al, ptr %i.as, align 2, !noalias !4524
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 15
  %i.au = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %i.ah, i64 17
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ah, i64 18
  %i.ax = insertelement <4 x i8> poison, i8 %i.aj, i64 0
  %i.ay = shufflevector <4 x i8> %i.ax, <4 x i8> poison, <4 x i32> zeroinitializer
  store <4 x i8> %i.ay, ptr %i.at, align 1, !noalias !4524
  %i.az = getelementptr inbounds nuw i8, ptr %i.ah, i64 19 ; 2 uses
  store i8 %i.aj, ptr %i.az, align 1, !noalias !4524
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !4525
  store ptr %1, ptr %i.x, align 8, !noalias !4526
  %i.ba = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %2, ptr %i.ba, align 8, !noalias !4526
  %.not.i.i.i.i.i = icmp samesign ult i64 %2, 16  ; 2 uses
  %3 = sub nuw nsw i64 16, %2
  %.sroa.3.0.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 %3, i64 16 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bb = call { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.x, i64 noundef 16), !noalias !4527 ; 2 uses
  %i.bc = extractvalue { ptr, i64 } %i.bb, 1
  %i.bd = extractvalue { ptr, i64 } %i.bb, 0      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !4525
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bd) ], !noalias !4528
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !4529
  store ptr %1, ptr %i.w, align 8, !noalias !4529
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 16, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !4529
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 0, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !noalias !4529
  %.sroa.44.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store i64 16, ptr %.sroa.44.0..sroa_idx.i.i.i.i, align 8, !noalias !4529
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !4529
  call fastcc void @_RNvXs3_NtCs2AhGS15tZfv_4bstr4utf8NtB5_11CharIndicesNtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.v, ptr noalias nofree noundef align 8 dereferenceable(32) %i.w) #32, !noalias !4530
  %i.be = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 8, !range !27, !noalias !4529, !noundef !5 ; 2 uses
  %.not5.i.i.i.i = icmp eq i32 %i.bf, -1
  br i1 %.not5.i.i.i.i, label %.loopexit153.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.bg = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i.i.i.i
  %i.bh = phi i32 [ %i.bf, %.lr.ph.i.i.i.i ], [ %i.bk, %bb.e ]
  %i.bi = load i64, ptr %i.bg, align 8, !noalias !4529, !noundef !5 ; 3 uses
  %i.bj = icmp eq i32 %i.bh, 0
  br i1 %i.bj, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not2.i.i.i.i = icmp ugt i64 %i.bi, %.sroa.3.0.i.i.i.i.i
  br i1 %.not2.i.i.i.i, label %bb.f, label %.loopexit153.i, !prof !28

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !4529
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !4529
  call fastcc void @_RNvXs3_NtCs2AhGS15tZfv_4bstr4utf8NtB5_11CharIndicesNtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.v, ptr noalias nofree noundef align 8 dereferenceable(32) %i.w) #32, !noalias !4530
  %i.bk = load i32, ptr %i.be, align 8, !range !27, !noalias !4529, !noundef !5 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.bk, -1
  br i1 %.not.i.i.i.i, label %.loopexit153.i, label %bb.c

bb.f:                                             ; preds = %bb.d
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bi, i64 noundef range(i64 0, -9223372036854775808) %.sroa.3.0.i.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #26, !noalias !4530
  unreachable

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !4525
  br label %bb.w

.loopexit153.i:                                   ; preds = %bb.e, %bb.d, %bb.b
  %.sroa.3.0.i.i.i.i = phi i64 [ %i.bi, %bb.d ], [ 0, %bb.b ], [ 0, %bb.e ] ; 2 uses
  %.sroa.0.0.i.i.i.i = phi ptr [ %1, %bb.d ], [ inttoptr (i64 1 to ptr), %bb.b ], [ inttoptr (i64 1 to ptr), %bb.e ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !4529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !4529
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !4531
  call fastcc void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser4uint0INtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB28_NtB6_9StreamingEEBJ_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.af, i8 %i.al, i8 %i.aj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bd, i64 noundef %i.bc), !noalias !4530
  %i.bl = load i64, ptr %i.af, align 8, !range !12, !noalias !4531, !noundef !5 ; 2 uses
  %.not.i.i = icmp eq i64 %i.bl, -1
  %i.bm = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.0178.0.copyload.i.i = load ptr, ptr %i.bm, align 8, !noalias !4531 ; 2 uses
  %.sroa.4179.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.sroa.4179.0.copyload.i.i = load i64, ptr %.sroa.4179.0..sroa_idx.i.i, align 8, !noalias !4531 ; 2 uses
  %.sroa.5180.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %.sroa.5180.0.copyload.i.i = load i64, ptr %.sroa.5180.0..sroa_idx.i.i, align 8, !noalias !4531 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !4531
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.loopexit153.i
  %.sroa.49.sroa.0.0.extract.trunc8.i = trunc i64 %.sroa.5180.0.copyload.i.i to i32
  %.sroa.49.sroa.15.0.extract.shift17.i = lshr i64 %.sroa.5180.0.copyload.i.i, 32
  %.sroa.49.sroa.15.0.extract.trunc18.i = trunc nuw i64 %.sroa.49.sroa.15.0.extract.shift17.i to i32
  br label %bb.w

bb.i:                                             ; preds = %.loopexit153.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !4531
  call fastcc void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser4uint0INtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB28_NtB6_9StreamingEEBJ_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.ae, i8 %i.al, i8 %i.aj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0178.0.copyload.i.i, i64 noundef %.sroa.4179.0.copyload.i.i), !noalias !4530
  %i.bn = load i64, ptr %i.ae, align 8, !range !12, !noalias !4531, !noundef !5 ; 2 uses
  %.not314.i.i = icmp eq i64 %i.bn, -1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.0193.0.copyload.i.i = load ptr, ptr %i.bo, align 8, !noalias !4531 ; 2 uses
  %.sroa.4194.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.4194.0.copyload.i.i = load i64, ptr %.sroa.4194.0..sroa_idx.i.i, align 8, !noalias !4531 ; 2 uses
  %.sroa.5195.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %.sroa.5195.0.copyload.i.i = load i64, ptr %.sroa.5195.0..sroa_idx.i.i, align 8, !noalias !4531 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !4531
  br i1 %.not314.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.49.sroa.0.0.extract.trunc9.i = trunc i64 %.sroa.5195.0.copyload.i.i to i32
  %.sroa.49.sroa.15.0.extract.shift19.i = lshr i64 %.sroa.5195.0.copyload.i.i, 32
  %.sroa.49.sroa.15.0.extract.trunc20.i = trunc nuw i64 %.sroa.49.sroa.15.0.extract.shift19.i to i32
  br label %bb.w

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !4531
  call fastcc void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser4uint0INtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB28_NtB6_9StreamingEEBJ_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.ad, i8 %i.al, i8 %i.aj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0193.0.copyload.i.i, i64 noundef %.sroa.4194.0.copyload.i.i), !noalias !4530
  %i.bp = load i64, ptr %i.ad, align 8, !range !12, !noalias !4531, !noundef !5 ; 2 uses
  %.not315.i.i = icmp eq i64 %i.bp, -1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.0208.0.copyload.i.i = load ptr, ptr %i.bq, align 8, !noalias !4531 ; 2 uses
  %.sroa.4209.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.4209.0.copyload.i.i = load i64, ptr %.sroa.4209.0..sroa_idx.i.i, align 8, !noalias !4531 ; 2 uses
  %.sroa.5210.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.sroa.5210.0.copyload.i.i = load i64, ptr %.sroa.5210.0..sroa_idx.i.i, align 8, !noalias !4531 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !4531
  br i1 %.not315.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sroa.49.sroa.0.0.extract.trunc10.i = trunc i64 %.sroa.5210.0.copyload.i.i to i32
  %.sroa.49.sroa.15.0.extract.shift21.i = lshr i64 %.sroa.5210.0.copyload.i.i, 32
  %.sroa.49.sroa.15.0.extract.trunc22.i = trunc nuw i64 %.sroa.49.sroa.15.0.extract.shift21.i to i32
  br label %bb.w

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !4531
  call fastcc void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser4uint0INtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB28_NtB6_9StreamingEEBJ_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.ac, i8 %i.al, i8 %i.aj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0208.0.copyload.i.i, i64 noundef %.sroa.4209.0.copyload.i.i), !noalias !4530
  %i.br = load i64, ptr %i.ac, align 8, !range !12, !noalias !4531, !noundef !5 ; 2 uses
  %.not316.i.i = icmp eq i64 %i.br, -1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.0223.0.copyload.i.i = load ptr, ptr %i.bs, align 8, !noalias !4531 ; 2 uses
  %.sroa.4224.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.4224.0.copyload.i.i = load i64, ptr %.sroa.4224.0..sroa_idx.i.i, align 8, !noalias !4531 ; 2 uses
  %.sroa.5225.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %.sroa.5225.0.copyload.i.i = load i64, ptr %.sroa.5225.0..sroa_idx.i.i, align 8, !noalias !4531 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !4531
  br i1 %.not316.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.49.sroa.0.0.extract.trunc11.i = trunc i64 %.sroa.5225.0.copyload.i.i to i32
  %.sroa.49.sroa.15.0.extract.shift23.i = lshr i64 %.sroa.5225.0.copyload.i.i, 32
  %.sroa.49.sroa.15.0.extract.trunc24.i = trunc nuw i64 %.sroa.49.sroa.15.0.extract.shift23.i to i32
  br label %bb.w

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !4531
  call void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB15_EE0INtB6_6ParserB15_E7processINtB6_7OutputMNtB6_4EmitB2d_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ab, ptr noalias nofree noundef nonnull dereferenceable(1) %i.au, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0223.0.copyload.i.i, i64 noundef %.sroa.4224.0.copyload.i.i), !noalias !4532
  %i.bt = load i64, ptr %i.ab, align 8, !range !12, !noalias !4531, !noundef !5 ; 2 uses
  %.not317.i.i = icmp eq i64 %i.bt, -1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.0238.0.copyload.i.i = load ptr, ptr %i.bu, align 8, !noalias !4531 ; 2 uses
  %.sroa.4239.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.4239.0.copyload.i.i = load i64, ptr %.sroa.4239.0..sroa_idx.i.i, align 8, !noalias !4531 ; 2 uses
  %.sroa.5240.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %.sroa.5240.0.copyload.i.i = load i32, ptr %.sroa.5240.0..sroa_idx.i.i, align 8, !noalias !4531 ; 2 uses
  br i1 %.not317.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.sroa.7251.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 28
  %.sroa.7251.0.copyload.i.i = load i32, ptr %.sroa.7251.0..sroa_idx.i.i, align 4, !noalias !4531
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !4531
  br label %bb.w

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !4531
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !4531
  call void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB15_EE0INtB6_6ParserB15_E7processINtB6_7OutputMNtB6_4EmitB2d_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.aa, ptr noalias nofree noundef nonnull dereferenceable(1) %i.av, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0238.0.copyload.i.i, i64 noundef %.sroa.4239.0.copyload.i.i), !noalias !4532
  %i.bv = load i64, ptr %i.aa, align 8, !range !12, !noalias !4531, !noundef !5 ; 2 uses
  %.not318.i.i = icmp eq i64 %i.bv, -1
  %i.bw = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.0257.0.copyload.i.i = load ptr, ptr %i.bw, align 8, !noalias !4531 ; 2 uses
  %.sroa.4258.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.sroa.4258.0.copyload.i.i = load i64, ptr %.sroa.4258.0..sroa_idx.i.i, align 8, !noalias !4531 ; 2 uses
  %.sroa.5259.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %.sroa.5259.0.copyload.i.i = load i32, ptr %.sroa.5259.0..sroa_idx.i.i, align 8, !noalias !4531 ; 2 uses
  br i1 %.not318.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.7270.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 28
  %.sroa.7270.0.copyload.i.i = load i32, ptr %.sroa.7270.0..sroa_idx.i.i, align 4, !noalias !4531
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !4531
  br label %bb.w

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !4531
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !4531
  call void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB15_EE0INtB6_6ParserB15_E7processINtB6_7OutputMNtB6_4EmitB2d_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.z, ptr noalias nofree noundef nonnull dereferenceable(1) %i.aw, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0257.0.copyload.i.i, i64 noundef %.sroa.4258.0.copyload.i.i), !noalias !4532
  %i.bx = load i64, ptr %i.z, align 8, !range !12, !noalias !4531, !noundef !5 ; 2 uses
  %.not319.i.i = icmp eq i64 %i.bx, -1
  %i.by = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.0276.0.copyload.i.i = load ptr, ptr %i.by, align 8, !noalias !4531 ; 2 uses
  %.sroa.4277.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.4277.0.copyload.i.i = load i64, ptr %.sroa.4277.0..sroa_idx.i.i, align 8, !noalias !4531 ; 2 uses
  %.sroa.5278.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %.sroa.5278.0.copyload.i.i = load i32, ptr %.sroa.5278.0..sroa_idx.i.i, align 8, !noalias !4531 ; 4 uses
  br i1 %.not319.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.sroa.7289.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 28
  %.sroa.7289.0.copyload.i.i = load i32, ptr %.sroa.7289.0..sroa_idx.i.i, align 4, !noalias !4531
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !4531
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !4531
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !4531
  call void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB15_EE0INtB6_6ParserB15_E7processINtB6_7OutputMNtB6_4EmitB2d_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.y, ptr noalias nofree noundef nonnull dereferenceable(1) %i.az, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0276.0.copyload.i.i, i64 noundef %.sroa.4277.0.copyload.i.i), !noalias !4532
  %i.bz = load i64, ptr %i.y, align 8, !range !12, !noalias !4531, !noundef !5 ; 2 uses
  %.not320.i.i = icmp eq i64 %i.bz, -1
  %i.ca = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.0295.0.copyload.i.i = load ptr, ptr %i.ca, align 8, !noalias !4531 ; 4 uses
  %.sroa.4296.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.4296.0.copyload.i.i = load i64, ptr %.sroa.4296.0..sroa_idx.i.i, align 8, !noalias !4531 ; 4 uses
  %.sroa.5297.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %.sroa.5297.0.copyload.i.i = load i32, ptr %.sroa.5297.0..sroa_idx.i.i, align 8, !noalias !4531 ; 2 uses
  br i1 %.not320.i.i, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.sroa.7308.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 28
  %.sroa.7308.0.copyload.i.i = load i32, ptr %.sroa.7308.0..sroa_idx.i.i, align 4, !noalias !4531
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !4531
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.t, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.g
  %.sroa.49.sroa.15.0.ph.i = phi i32 [ %.sroa.49.sroa.15.0.extract.trunc18.i, %bb.h ], [ %.sroa.49.sroa.15.0.extract.trunc20.i, %bb.j ], [ %.sroa.49.sroa.15.0.extract.trunc22.i, %bb.l ], [ %.sroa.49.sroa.15.0.extract.trunc24.i, %bb.n ], [ %.sroa.7251.0.copyload.i.i, %bb.p ], [ %.sroa.7270.0.copyload.i.i, %bb.r ], [ %.sroa.7289.0.copyload.i.i, %bb.t ], [ %.sroa.7308.0.copyload.i.i, %bb.v ], [ 0, %bb.g ]
  %.sroa.49.sroa.0.0.ph.i = phi i32 [ %.sroa.49.sroa.0.0.extract.trunc8.i, %bb.h ], [ %.sroa.49.sroa.0.0.extract.trunc9.i, %bb.j ], [ %.sroa.49.sroa.0.0.extract.trunc10.i, %bb.l ], [ %.sroa.49.sroa.0.0.extract.trunc11.i, %bb.n ], [ %.sroa.5240.0.copyload.i.i, %bb.p ], [ %.sroa.5259.0.copyload.i.i, %bb.r ], [ %.sroa.5278.0.copyload.i.i, %bb.t ], [ %.sroa.5297.0.copyload.i.i, %bb.v ], [ 24, %bb.g ]
  %.sroa.38.0.ph.i = phi i64 [ %.sroa.4179.0.copyload.i.i, %bb.h ], [ %.sroa.4194.0.copyload.i.i, %bb.j ], [ %.sroa.4209.0.copyload.i.i, %bb.l ], [ %.sroa.4224.0.copyload.i.i, %bb.n ], [ %.sroa.4239.0.copyload.i.i, %bb.p ], [ %.sroa.4258.0.copyload.i.i, %bb.r ], [ %.sroa.4277.0.copyload.i.i, %bb.t ], [ %.sroa.4296.0.copyload.i.i, %bb.v ], [ %2, %bb.g ]
  %.sroa.26.0.ph.in.i = phi ptr [ %.sroa.0178.0.copyload.i.i, %bb.h ], [ %.sroa.0193.0.copyload.i.i, %bb.j ], [ %.sroa.0208.0.copyload.i.i, %bb.l ], [ %.sroa.0223.0.copyload.i.i, %bb.n ], [ %.sroa.0238.0.copyload.i.i, %bb.p ], [ %.sroa.0257.0.copyload.i.i, %bb.r ], [ %.sroa.0276.0.copyload.i.i, %bb.t ], [ %.sroa.0295.0.copyload.i.i, %bb.v ], [ %1, %bb.g ]
  %.sroa.14.0.ph.i = phi i64 [ %i.bl, %bb.h ], [ %i.bn, %bb.j ], [ %i.bp, %bb.l ], [ %i.br, %bb.n ], [ %i.bt, %bb.p ], [ %i.bv, %bb.r ], [ %i.bx, %bb.t ], [ %i.bz, %bb.v ], [ 1, %bb.g ]
  %.sroa.49.sroa.15.0.insert.ext13.i = zext i32 %.sroa.49.sroa.15.0.ph.i to i64
  %.sroa.49.sroa.15.0.insert.shift14.i = shl nuw i64 %.sroa.49.sroa.15.0.insert.ext13.i, 32
  %.sroa.49.sroa.0.0.insert.ext5.i = zext i32 %.sroa.49.sroa.0.0.ph.i to i64
  %.sroa.49.sroa.0.0.insert.insert7.i = or disjoint i64 %.sroa.49.sroa.15.0.insert.shift14.i, %.sroa.49.sroa.0.0.insert.ext5.i
  %i.cb = ptrtoint ptr %.sroa.26.0.ph.in.i to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !4524
  br label %_RNCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB7_9MachOFile15segment_command0Bd_.exit.thread

bb.x:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !4531
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !4524
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !4524
  %i.cc = load i8, ptr %i.ai, align 1, !range !26, !alias.scope !4533, !noalias !4534, !noundef !5 ; 5 uses
  %i.cd = load i8, ptr %i.ak, align 8, !range !22, !alias.scope !4533, !noalias !4534, !noundef !5 ; 5 uses
  %i.ce = trunc nuw i8 %i.cd to i1                ; 2 uses
  %..i.i = select i1 %i.ce, i8 -1, i8 %i.cc
  %i.cf = zext i32 %.sroa.5278.0.copyload.i.i to i64 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 16, ptr %i.cg, align 8, !noalias !4524
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 16, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !4524
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store i8 %i.cd, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !4524
  %.sroa.634.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 25
  store i8 %i.cc, ptr %.sroa.634.0..sroa_idx.i, align 1, !noalias !4524
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 26
  store i8 %i.cd, ptr %.sroa.7.0..sroa_idx.i, align 2, !noalias !4524
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 27
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 28
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 29
  %.sroa.1135.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 30
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 31
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %.sroa.1436.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 33
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 34
  %i.ch = insertelement <8 x i8> poison, i8 %i.cc, i64 0
  %i.ci = shufflevector <8 x i8> %i.ch, <8 x i8> poison, <8 x i32> zeroinitializer
  store <8 x i8> %i.ci, ptr %.sroa.8.0..sroa_idx.i, align 1, !noalias !4524
  %.sroa.1637.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 35 ; 2 uses
  store i8 %..i.i, ptr %.sroa.1637.0..sroa_idx.i, align 1, !noalias !4524
  store i64 %i.cf, ptr %i.ag, align 8, !noalias !4524
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !4535
  call void @llvm.experimental.noalias.scope.decl(metadata !4536)
  %..i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.cf, i64 744) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !4537
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, i64 noundef %..i.i.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 88), !noalias !4538
  %i.cj = load i64, ptr %i.h, align 8, !range !11, !noalias !4537, !noundef !5
  %i.ck = trunc nuw i64 %i.cj to i1
  %i.cl = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !range !18, !noalias !4537, !noundef !5 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  br i1 %i.ck, label %bb.y, label %_RNCINvXs6_NtCsgkljs906P5b_3nom5multiINtB8_5CountINtNtBa_8internal3MapTIBL_NCINvNtNtBa_5bytes8complete4takejRShINtNtBa_5error5ErrorB1H_EE0NCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2j_9MachOFile7section0EIBL_B1a_NCB2d_s_0ENCNvB2j_4uint0B3N_NCINvNtNtBa_6number8complete3u32B1H_B1K_E0B45_B45_B45_B45_B45_B45_INtNtBa_10combinator4CondB45_EENCB2d_s0_0EEINtBN_6ParserB1H_E7processINtBN_7OutputMNtBN_4EmitB6u_NtBN_9StreamingEE0B2p_.exit.i.i, !prof !6

bb.y:                                             ; preds = %bb.x
  %i.co = load i64, ptr %i.cn, align 8, !noalias !4537
  call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.cm, i64 %i.co) #31, !noalias !4539
  unreachable

_RNCINvXs6_NtCsgkljs906P5b_3nom5multiINtB8_5CountINtNtBa_8internal3MapTIBL_NCINvNtNtBa_5bytes8complete4takejRShINtNtBa_5error5ErrorB1H_EE0NCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2j_9MachOFile7section0EIBL_B1a_NCB2d_s_0ENCNvB2j_4uint0B3N_NCINvNtNtBa_6number8complete3u32B1H_B1K_E0B45_B45_B45_B45_B45_B45_INtNtBa_10combinator4CondB45_EENCB2d_s0_0EEINtBN_6ParserB1H_E7processINtBN_7OutputMNtBN_4EmitB6u_NtBN_9StreamingEE0B2p_.exit.i.i: ; preds = %bb.x
  %i.cp = load ptr, ptr %i.cn, align 8, !noalias !4537, !nonnull !5, !noundef !5 ; 2 uses
  %i.cq = icmp ule i64 %..i.i.i.i, %i.cm
  call void @llvm.assume(i1 %i.cq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4537
  store i64 %i.cm, ptr %i.u, align 8, !alias.scope !4536, !noalias !4535
  %i.cr = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  store ptr %i.cp, ptr %i.cr, align 8, !alias.scope !4536, !noalias !4535
  %i.cs = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  store i64 0, ptr %i.cs, align 8, !alias.scope !4536, !noalias !4535
  %.not.i83.i = icmp eq i32 %.sroa.5278.0.copyload.i.i, 0
  br i1 %.not.i83.i, label %_RNCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB7_9MachOFile15segment_command0Bd_.exit.thread54, label %.lr.ph590.i.i

_RNCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB7_9MachOFile15segment_command0Bd_.exit.thread54: ; preds = %_RNCINvXs6_NtCsgkljs906P5b_3nom5multiINtB8_5CountINtNtBa_8internal3MapTIBL_NCINvNtNtBa_5bytes8complete4takejRShINtNtBa_5error5ErrorB1H_EE0NCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2j_9MachOFile7section0EIBL_B1a_NCB2d_s_0ENCNvB2j_4uint0B3N_NCINvNtNtBa_6number8complete3u32B1H_B1K_E0B45_B45_B45_B45_B45_B45_INtNtBa_10combinator4CondB45_EENCB2d_s0_0EEINtBN_6ParserB1H_E7processINtBN_7OutputMNtBN_4EmitB6u_NtBN_9StreamingEE0B2p_.exit.i.i
  %i.ct = ptrtoint ptr %i.cp to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !4535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !4524
  %i.cu = ptrtoint ptr %.sroa.0.0.i.i.i.i to i64
  br label %bb.bz

.lr.ph590.i.i:                                    ; preds = %_RNCINvXs6_NtCsgkljs906P5b_3nom5multiINtB8_5CountINtNtBa_8internal3MapTIBL_NCINvNtNtBa_5bytes8complete4takejRShINtNtBa_5error5ErrorB1H_EE0NCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2j_9MachOFile7section0EIBL_B1a_NCB2d_s_0ENCNvB2j_4uint0B3N_NCINvNtNtBa_6number8complete3u32B1H_B1K_E0B45_B45_B45_B45_B45_B45_INtNtBa_10combinator4CondB45_EENCB2d_s0_0EEINtBN_6ParserB1H_E7processINtBN_7OutputMNtBN_4EmitB6u_NtBN_9StreamingEE0B2p_.exit.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.44.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.2.0..sroa_idx.i.i.i56.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.3.0..sroa_idx.i.i.i57.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.44.0..sroa_idx.i.i.i58.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.4267.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.5268.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.dc = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.4282.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.5283.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.dd = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.4297.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.5298.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.de = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.4316.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.5317.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.df = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.4335.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.5336.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.dg = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.4354.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.5355.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.dh = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.4373.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.5374.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.di = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.4392.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.5393.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.dj = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.4411.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.5412.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.dk = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %.sroa.491.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 28
  %.sroa.592.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.sroa.693.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %.sroa.693.sroa.4.0..sroa.693.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %.sroa.693.sroa.5.0..sroa.693.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %.sroa.794.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %.sroa.794.sroa.4.0..sroa.794.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %.sroa.794.sroa.5.0..sroa.794.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  %.sroa.794.sroa.6.0..sroa.794.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 84
  %.sroa.794.sroa.7.0..sroa.794.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 88
  %.sroa.794.sroa.8.0..sroa.794.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 92
  %.sroa.794.sroa.9.0..sroa.794.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  %.sroa.794.sroa.10.0..sroa.794.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 100
  %.sroa.794.sroa.11.0..sroa.794.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 104
  %i.dl = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.49.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.510.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %bb.z

.loopexit.i.i:                                    ; preds = %bb.ar
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.i.i:                  ; preds = %bb.bl, %bb.bi, %bb.bg, %bb.be, %bb.bc, %bb.ba, %bb.ay, %bb.aw, %bb.au, %.loopexit325.i.i, %.noexc53.i.i, %bb.ap, %.noexc36.i.i, %bb.aa
  %lpad.loopexit326.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.i.i:         ; preds = %.invoke.i.i, %.invoke1152.i.i
  %lpad.loopexit.split-lp327.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

bb.z:                                             ; preds = %bb.bq, %.lr.ph590.i.i
  %.sroa.012.0589.i.i = phi i64 [ 0, %.lr.ph590.i.i ], [ %i.do, %bb.bq ]
  %.sroa.080.0588.i.i = phi ptr [ %.sroa.0295.0.copyload.i.i, %.lr.ph590.i.i ], [ %.sroa.778.1126.i, %bb.bq ] ; 4 uses
  %.sroa.6.0587.i.i = phi i64 [ %.sroa.4296.0.copyload.i.i, %.lr.ph590.i.i ], [ %.sroa.1179.1127.i, %bb.bq ] ; 4 uses
  %i.do = add nuw nsw i64 %.sroa.012.0589.i.i, 1  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4540
  store ptr %.sroa.080.0588.i.i, ptr %i.g, align 8, !noalias !4541
  store i64 %.sroa.6.0587.i.i, ptr %i.cv, align 8, !noalias !4541
  %.not.i.i.i.i.i.i = icmp ult i64 %.sroa.6.0587.i.i, 16 ; 2 uses
  %4 = sub nuw nsw i64 16, %.sroa.6.0587.i.i
  %.sroa.3.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i64 %4, i64 16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.ao, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dp = invoke { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g, i64 noundef 16)
          to label %.noexc36.i.i unwind label %.loopexit.split-lp.loopexit.i.i, !noalias !4542 ; 2 uses

.noexc36.i.i:                                     ; preds = %bb.aa
  %i.dq = extractvalue { ptr, i64 } %i.dp, 1      ; 4 uses
  %i.dr = extractvalue { ptr, i64 } %i.dp, 0      ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4540
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dr) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4543
  store ptr %.sroa.080.0588.i.i, ptr %i.f, align 8, !noalias !4543
  store i64 16, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !noalias !4543
  store i64 0, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i, align 8, !noalias !4543
  store i64 16, ptr %.sroa.44.0..sroa_idx.i.i.i.i.i, align 8, !noalias !4543
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4543
  invoke fastcc void @_RNvXs3_NtCs2AhGS15tZfv_4bstr4utf8NtB5_11CharIndicesNtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef align 8 dereferenceable(32) %i.f) #32
          to label %.noexc38.i.i unwind label %.loopexit.split-lp.loopexit.i.i, !noalias !4542

.noexc38.i.i:                                     ; preds = %.noexc36.i.i
  %i.ds = load i32, ptr %i.cw, align 8, !range !27, !noalias !4543, !noundef !5 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq i32 %i.ds, -1
  br i1 %.not5.i.i.i.i.i, label %.noexc39.thread.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc38.i.i
  %i.dt = load i64, ptr %i.cx, align 8, !noalias !4543, !noundef !5
  %i.du = icmp eq i32 %i.ds, 0
  br i1 %i.du, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.i.i.i
  %.sroa.44.0..sroa_idx.i.i.i.promoted.i.i = load i64, ptr %.sroa.44.0..sroa_idx.i.i.i.i.i, align 8, !noalias !4535
  %.sroa.2.0..sroa_idx.i.i.i.promoted.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !noalias !4535
  %i.dv = load ptr, ptr %i.f, align 8, !alias.scope !4544, !noalias !4545, !nonnull !5, !noundef !5 ; 2 uses
  br label %bb.ab

._crit_edge.i.i:                                  ; preds = %.noexc39.i.i, %.lr.ph.i.i.i.i.i
  %.lcssa339.i.i = phi i64 [ %i.dt, %.lr.ph.i.i.i.i.i ], [ %i.dx, %.noexc39.i.i ] ; 3 uses
  %.not2.i.i.i.i.i = icmp ugt i64 %.lcssa339.i.i, %.sroa.3.0.i.i.i.i.i.i
  br i1 %.not2.i.i.i.i.i, label %.invoke.i.i, label %.noexc39.thread.i.i, !prof !28

bb.ab:                                            ; preds = %.noexc39.i.i, %.lr.ph.i.i
  %i.dw = phi i64 [ %.sroa.2.0..sroa_idx.i.i.i.promoted.i.i, %.lr.ph.i.i ], [ %i.fp, %.noexc39.i.i ] ; 14 uses
  %i.dx = phi i64 [ %.sroa.44.0..sroa_idx.i.i.i.promoted.i.i, %.lr.ph.i.i ], [ %i.fu, %.noexc39.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4543
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4543
  call void @llvm.experimental.noalias.scope.decl(metadata !4546)
  call void @llvm.experimental.noalias.scope.decl(metadata !4544)
  call void @llvm.experimental.noalias.scope.decl(metadata !4547)
  %i.dy = icmp eq i64 %i.dw, 0
  br i1 %i.dy, label %.noexc39.thread.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dz = call i64 @llvm.usub.sat.i64(i64 range(i64 0, -9223372036854775808) %i.dw, i64 4) ; 3 uses
  %i.ea = add nsw i64 %i.dw, -1
  %umin.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.dz, i64 %i.ea) ; 2 uses
  %.sroa.03.0.i.i.i.i806 = add nsw i64 %i.dw, -1  ; 2 uses
  %i.eb = icmp ugt i64 %.sroa.03.0.i.i.i.i806, %i.dz
  br i1 %i.eb, label %.lr.ph, label %._crit_edge

bb.ad:                                            ; preds = %bb.ae
  %.sroa.03.0.i.i.i.i = add nsw i64 %.sroa.03.0.i.i.i.i807, -1 ; 2 uses
  %i.ec = icmp ugt i64 %.sroa.03.0.i.i.i.i, %i.dz
  br i1 %i.ec, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.ac, %bb.ad
  %.sroa.03.0.i.i.i.i807 = phi i64 [ %.sroa.03.0.i.i.i.i, %bb.ad ], [ %.sroa.03.0.i.i.i.i806, %bb.ac ] ; 5 uses
  %i.ed = icmp ult i64 %.sroa.03.0.i.i.i.i807, %i.dw
  br i1 %i.ed, label %bb.ae, label %.invoke1152.i.i

._crit_edge:                                      ; preds = %bb.ad, %bb.ae, %bb.ac
  %.sroa.03.0.lcssa.i.i.i.i = phi i64 [ %umin.i.i.i.i, %bb.ac ], [ %umin.i.i.i.i, %bb.ad ], [ %.sroa.03.0.i.i.i.i807, %bb.ae ] ; 5 uses
  %i.ee = icmp ugt i64 %.sroa.03.0.lcssa.i.i.i.i, %i.dw
  br i1 %i.ee, label %.invoke.i.i, label %bb.af, !prof !6

bb.ae:                                            ; preds = %.lr.ph
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.sroa.03.0.i.i.i.i807
  %i.eg = load i8, ptr %i.ef, align 1, !alias.scope !4547, !noalias !4548, !noundef !5
  %.not.i.i75.i.i = icmp slt i8 %i.eg, -64
  br i1 %.not.i.i75.i.i, label %bb.ad, label %._crit_edge

bb.af:                                            ; preds = %._crit_edge
  %i.eh = sub nuw nsw i64 %i.dw, %.sroa.03.0.lcssa.i.i.i.i ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.sroa.03.0.lcssa.i.i.i.i ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4549)
  %.not.i.i.i71.i.i = icmp eq i64 %i.eh, 0
  br i1 %.not.i.i.i71.i.i, label %_RINvNtCs2AhGS15tZfv_4bstr4utf86decodeRShECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ej = load i8, ptr %i.ei, align 1, !alias.scope !4550, !noalias !4548, !noundef !5 ; 2 uses
  %i.ek = icmp sgt i8 %i.ej, -1
  br i1 %i.ek, label %bb.ah, label %.preheader.i.i.i.i.i.preheader

bb.ah:                                            ; preds = %bb.ag
  %i.el = zext nneg i8 %i.ej to i32
  br label %_RINvNtCs2AhGS15tZfv_4bstr4utf86decodeRShECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %_RNvNtCs2AhGS15tZfv_4bstr4utf811decode_step.exit.i.i.i.i.i
  %i.em = zext i8 %i.fi to i64
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.fj, %i.eh
  br i1 %exitcond.not.i.i.i.i.i, label %_RINvNtCs2AhGS15tZfv_4bstr4utf86decodeRShECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i, label %.preheader.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.preheader:                   ; preds = %bb.ag, %.preheader.i.i.i.i.i
  %.sroa.03.0.i.i.i.i.i812 = phi i64 [ %i.fj, %.preheader.i.i.i.i.i ], [ 0, %bb.ag ] ; 3 uses
  %.sroa.014.0.i.i.i.i.i811 = phi i32 [ %storemerge.i.i.i.i.i.i, %.preheader.i.i.i.i.i ], [ 0, %bb.ag ]
  %.sroa.012.0.i.i.i.i.i810 = phi i64 [ %i.em, %.preheader.i.i.i.i.i ], [ 12, %bb.ag ] ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 %.sroa.03.0.i.i.i.i.i812
  %i.eo = load i8, ptr %i.en, align 1, !alias.scope !4550, !noalias !4548, !noundef !5 ; 2 uses
  %i.ep = zext i8 %i.eo to i64
  %i.eq = getelementptr inbounds nuw i8, ptr @508, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1, !noalias !4551, !noundef !5 ; 2 uses
  %i.es = zext i8 %i.eo to i32                    ; 2 uses
  %i.et = icmp eq i64 %.sroa.012.0.i.i.i.i.i810, 12
  br i1 %i.et, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.preheader.i.i.i.i.i.preheader
  %i.eu = and i8 %i.er, 31
  %i.ev = zext nneg i8 %i.eu to i32
  %i.ew = lshr i32 255, %i.ev
  %i.ex = and i32 %i.ew, %i.es
  br label %bb.ak

bb.aj:                                            ; preds = %.preheader.i.i.i.i.i.preheader
  %i.ey = and i32 %i.es, 63
  %i.ez = shl i32 %.sroa.014.0.i.i.i.i.i811, 6
  %i.fa = or disjoint i32 %i.ey, %i.ez
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %storemerge.i.i.i.i.i.i = phi i32 [ %i.fa, %bb.aj ], [ %i.ex, %bb.ai ] ; 3 uses
  %i.fb = zext i8 %i.er to i64
  %i.fc = add nuw nsw i64 %.sroa.012.0.i.i.i.i.i810, %i.fb ; 3 uses
  %i.fd = icmp samesign ult i64 %i.fc, 108
  br i1 %i.fd, label %_RNvNtCs2AhGS15tZfv_4bstr4utf811decode_step.exit.i.i.i.i.i, label %.invoke1152.i.i

.invoke1152.i.i:                                  ; preds = %.lr.ph, %bb.ak
  %i.fe = phi i64 [ %i.fc, %bb.ak ], [ %.sroa.03.0.i.i.i.i807, %.lr.ph ]
  %i.ff = phi i64 [ 108, %bb.ak ], [ %i.dw, %.lr.ph ]
  %i.fg = phi ptr [ @510, %bb.ak ], [ @13, %.lr.ph ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.fe, i64 noundef %i.ff, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fg) #26
          to label %.cont1153.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !4542

.cont1153.i.i:                                    ; preds = %.invoke1152.i.i
  unreachable

_RNvNtCs2AhGS15tZfv_4bstr4utf811decode_step.exit.i.i.i.i.i: ; preds = %bb.ak
  %i.fh = getelementptr inbounds nuw i8, ptr @509, i64 %i.fc
  %i.fi = load i8, ptr %i.fh, align 1, !noalias !4551, !noundef !5 ; 2 uses
  %i.fj = add nuw i64 %.sroa.03.0.i.i.i.i.i812, 1 ; 3 uses
  switch i8 %i.fi, label %.preheader.i.i.i.i.i [
    i8 12, label %bb.al
    i8 0, label %bb.am
  ]

bb.al:                                            ; preds = %_RNvNtCs2AhGS15tZfv_4bstr4utf811decode_step.exit.i.i.i.i.i
  %i.fk = icmp ult i32 %storemerge.i.i.i.i.i.i, 1114112
  call void @llvm.assume(i1 %i.fk)
  br label %_RINvNtCs2AhGS15tZfv_4bstr4utf86decodeRShECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i

bb.am:                                            ; preds = %_RNvNtCs2AhGS15tZfv_4bstr4utf811decode_step.exit.i.i.i.i.i
  %..i.i.i.i.i.i = call noundef range(i64 0, 9223372036854775807) i64 @llvm.umax.i64(i64 range(i64 0, 9223372036854775807) %.sroa.03.0.i.i.i.i.i812, i64 1)
  br label %_RINvNtCs2AhGS15tZfv_4bstr4utf86decodeRShECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i

_RINvNtCs2AhGS15tZfv_4bstr4utf86decodeRShECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i: ; preds = %.preheader.i.i.i.i.i, %bb.am, %bb.al, %bb.ah, %bb.af
  %.sroa.6.1.i.i.i.i.i = phi i64 [ 0, %bb.af ], [ %..i.i.i.i.i.i, %bb.am ], [ 1, %bb.ah ], [ %i.fj, %bb.al ], [ %i.eh, %.preheader.i.i.i.i.i ] ; 2 uses
  %.sroa.0.1.i.i.i.i.i = phi i32 [ -1, %bb.af ], [ -1, %bb.am ], [ %i.el, %bb.ah ], [ %storemerge.i.i.i.i.i.i, %bb.al ], [ -1, %.preheader.i.i.i.i.i ]
  %i.fl = add i64 %.sroa.6.1.i.i.i.i.i, %.sroa.03.0.lcssa.i.i.i.i
  %.not8.i.i.i.i = icmp eq i64 %i.fl, %i.dw       ; 2 uses
  %.sroa.0.1.i.i.fr.i.i.i = freeze i32 %.sroa.0.1.i.i.i.i.i ; 2 uses
  %.not.i.i.i = icmp ne i32 %.sroa.0.1.i.i.fr.i.i.i, -1
  %.sroa.5.0.i18.i.i.i = select i1 %.not8.i.i.i.i, i64 %.sroa.6.1.i.i.i.i.i, i64 1 ; 4 uses
  %i.fm = and i1 %.not8.i.i.i.i, %.not.i.i.i
  %i.fn = select i1 %i.fm, i32 %.sroa.0.1.i.i.fr.i.i.i, i32 65533 ; 2 uses
  %i.fo = icmp eq i64 %.sroa.5.0.i18.i.i.i, 0
  br i1 %i.fo, label %.noexc39.thread.i.i, label %bb.an

bb.an:                                            ; preds = %_RINvNtCs2AhGS15tZfv_4bstr4utf86decodeRShECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i
  %i.fp = sub i64 %i.dw, %.sroa.5.0.i18.i.i.i     ; 2 uses
  %.not13.i.i.i = icmp ugt i64 %.sroa.5.0.i18.i.i.i, %i.dw
  br i1 %.not13.i.i.i, label %.invoke.i.i, label %.noexc39.i.i, !prof !28

.invoke.i.i:                                      ; preds = %bb.aq, %._crit_edge.i.i, %bb.an, %._crit_edge
  %i.fq = phi i64 [ %.sroa.03.0.lcssa.i.i.i.i, %._crit_edge ], [ 0, %bb.an ], [ 0, %._crit_edge.i.i ], [ 0, %bb.aq ]
  %i.fr = phi i64 [ %i.dw, %._crit_edge ], [ %i.fp, %bb.an ], [ %i.gc, %bb.aq ], [ %.lcssa339.i.i, %._crit_edge.i.i ]
  %i.fs = phi i64 [ %i.dw, %bb.an ], [ %i.dw, %._crit_edge ], [ %.sroa.3.0.i.i.i.i43.i.i, %bb.aq ], [ %.sroa.3.0.i.i.i.i.i.i, %._crit_edge.i.i ]
  %i.ft = phi ptr [ @14, %._crit_edge ], [ @2697, %bb.an ], [ @17, %._crit_edge.i.i ], [ @17, %bb.aq ]
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.fq, i64 noundef %i.fr, i64 noundef %i.fs, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ft) #26
          to label %.cont.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !4542

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

.noexc39.i.i:                                     ; preds = %bb.an
  %i.fu = sub i64 %i.dx, %.sroa.5.0.i18.i.i.i     ; 2 uses
  store i64 %i.fu, ptr %i.e, align 8, !alias.scope !4546, !noalias !4552
  store i64 %i.dx, ptr %i.cx, align 8, !alias.scope !4546, !noalias !4552
  store i32 %i.fn, ptr %i.cw, align 8, !alias.scope !4546, !noalias !4552
  %i.fv = icmp eq i32 %i.fn, 0
  br i1 %i.fv, label %bb.ab, label %._crit_edge.i.i

bb.ao:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4540
  br label %_RINvXsL_NtCsgkljs906P5b_3nom8internalTINtB6_3MapNCINvNtNtB8_5bytes8complete4takejRShINtNtB8_5error5ErrorB1h_EE0NCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB1T_9MachOFile7section0EIBB_BK_NCB1N_s_0ENCNvB1T_4uint0B3m_NCINvNtNtB8_6number8complete3u32B1h_B1k_E0B3E_B3E_B3E_B3E_B3E_B3E_INtNtB8_10combinator4CondB3E_EEINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB5R_NtB6_9StreamingEEB1Z_.exit.i.thread.thread.i.i

.noexc39.thread.i.i:                              ; preds = %_RINvNtCs2AhGS15tZfv_4bstr4utf86decodeRShECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i, %bb.ab, %._crit_edge.i.i, %.noexc38.i.i
  %.sroa.3.0.i.i.i.i85.i = phi i64 [ %.lcssa339.i.i, %._crit_edge.i.i ], [ 0, %.noexc38.i.i ], [ 0, %bb.ab ], [ 0, %_RINvNtCs2AhGS15tZfv_4bstr4utf86decodeRShECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i ]
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %.sroa.080.0588.i.i, %._crit_edge.i.i ], [ inttoptr (i64 1 to ptr), %.noexc38.i.i ], [ inttoptr (i64 1 to ptr), %bb.ab ], [ inttoptr (i64 1 to ptr), %_RINvNtCs2AhGS15tZfv_4bstr4utf86decodeRShECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4543
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4543
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i.i.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4553
  store ptr %i.dr, ptr %i.d, align 8, !noalias !4554
  store i64 %i.dq, ptr %i.cy, align 8, !noalias !4554
  %.not.i.i.i.i42.i.i = icmp ult i64 %i.dq, 16    ; 2 uses
  %5 = sub nuw nsw i64 16, %i.dq
  %.sroa.3.0.i.i.i.i43.i.i = select i1 %.not.i.i.i.i42.i.i, i64 %5, i64 16 ; 2 uses
  br i1 %.not.i.i.i.i42.i.i, label %bb.as, label %bb.ap

bb.ap:                                            ; preds = %.noexc39.thread.i.i
  %i.fw = invoke { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d, i64 noundef 16)
          to label %.noexc53.i.i unwind label %.loopexit.split-lp.loopexit.i.i, !noalias !4542 ; 2 uses

.noexc53.i.i:                                     ; preds = %bb.ap
  %i.fx = extractvalue { ptr, i64 } %i.fw, 1
  %i.fy = extractvalue { ptr, i64 } %i.fw, 0      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4553
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fy) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4555
  store ptr %i.dr, ptr %i.c, align 8, !noalias !4555
  store i64 16, ptr %.sroa.2.0..sroa_idx.i.i.i56.i.i, align 8, !noalias !4555
  store i64 0, ptr %.sroa.3.0..sroa_idx.i.i.i57.i.i, align 8, !noalias !4555
  store i64 16, ptr %.sroa.44.0..sroa_idx.i.i.i58.i.i, align 8, !noalias !4555
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4555
  invoke fastcc void @_RNvXs3_NtCs2AhGS15tZfv_4bstr4utf8NtB5_11CharIndicesNtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef align 8 dereferenceable(32) %i.c) #32
          to label %.noexc65.i.i unwind label %.loopexit.split-lp.loopexit.i.i, !noalias !4542

.noexc65.i.i:                                     ; preds = %.noexc53.i.i
  %i.fz = load i32, ptr %i.cz, align 8, !range !27, !noalias !4555, !noundef !5 ; 2 uses
  %.not5.i.i.i59.i.i = icmp eq i32 %i.fz, -1
  br i1 %.not5.i.i.i59.i.i, label %.loopexit325.i.i, label %.lr.ph.i.i.i60.i.i

.lr.ph.i.i.i60.i.i:                               ; preds = %.noexc65.i.i, %.noexc66.i.i
  %i.ga = phi i32 [ %i.gd, %.noexc66.i.i ], [ %i.fz, %.noexc65.i.i ]
  %i.gb = icmp eq i32 %i.ga, 0
  br i1 %i.gb, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.i.i.i60.i.i
  %i.gc = load i64, ptr %i.da, align 8, !noalias !4555, !noundef !5 ; 3 uses
  %.not2.i.i.i61.i.i = icmp ugt i64 %i.gc, %.sroa.3.0.i.i.i.i43.i.i
  br i1 %.not2.i.i.i61.i.i, label %.invoke.i.i, label %.loopexit325.i.i, !prof !28

bb.ar:                                            ; preds = %.lr.ph.i.i.i60.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4555
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4555
  invoke fastcc void @_RNvXs3_NtCs2AhGS15tZfv_4bstr4utf8NtB5_11CharIndicesNtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef align 8 dereferenceable(32) %i.c) #32
          to label %.noexc66.i.i unwind label %.loopexit.i.i, !noalias !4542

.noexc66.i.i:                                     ; preds = %bb.ar
  %i.gd = load i32, ptr %i.cz, align 8, !range !27, !noalias !4555, !noundef !5 ; 2 uses
  %.not.i.i.i64.i.i = icmp eq i32 %i.gd, -1
  br i1 %.not.i.i.i64.i.i, label %.loopexit325.i.i, label %.lr.ph.i.i.i60.i.i

bb.as:                                            ; preds = %.noexc39.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4553
  br label %_RINvXsL_NtCsgkljs906P5b_3nom8internalTINtB6_3MapNCINvNtNtB8_5bytes8complete4takejRShINtNtB8_5error5ErrorB1h_EE0NCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB1T_9MachOFile7section0EIBB_BK_NCB1N_s_0ENCNvB1T_4uint0B3m_NCINvNtNtB8_6number8complete3u32B1h_B1k_E0B3E_B3E_B3E_B3E_B3E_B3E_INtNtB8_10combinator4CondB3E_EEINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB5R_NtB6_9StreamingEEB1Z_.exit.i.thread.thread.i.i

.loopexit325.i.i:                                 ; preds = %.noexc66.i.i, %bb.aq, %.noexc65.i.i
  %.sroa.3.0.i.i.i62.i.i = phi i64 [ %i.gc, %bb.aq ], [ 0, %.noexc65.i.i ], [ 0, %.noexc66.i.i ]
  %.sroa.0.0.i.i.i63.i.i = phi ptr [ %i.dr, %bb.aq ], [ inttoptr (i64 1 to ptr), %.noexc65.i.i ], [ inttoptr (i64 1 to ptr), %.noexc66.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4555
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4555
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !4556
  invoke fastcc void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser4uint0INtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB28_NtB6_9StreamingEEBJ_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.q, i8 %i.cd, i8 %i.cc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fy, i64 noundef %i.fx)
          to label %.noexc19.i.i unwind label %.loopexit.split-lp.loopexit.i.i, !noalias !4542

.noexc19.i.i:                                     ; preds = %.loopexit325.i.i
  %i.ge = load i64, ptr %i.q, align 8, !range !12, !noalias !4556, !noundef !5 ; 2 uses
  %.not.i.i.i86.i = icmp eq i64 %i.ge, -1
  %.sroa.0266.0.copyload.i.i.i.i = load ptr, ptr %i.db, align 8, !noalias !4556 ; 2 uses
  %.sroa.4267.0.copyload.i.i.i.i = load i64, ptr %.sroa.4267.0..sroa_idx.i.i.i.i, align 8, !noalias !4556 ; 2 uses
  %.sroa.5268.0.copyload.i.i.i.i = load i64, ptr %.sroa.5268.0..sroa_idx.i.i.i.i, align 8, !noalias !4556 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !4556
  br i1 %.not.i.i.i86.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %.noexc19.i.i
  %.sroa.45.sroa.0.0.extract.trunc113.i.i = trunc i64 %.sroa.5268.0.copyload.i.i.i.i to i32
  %.sroa.45.sroa.17.0.extract.shift121.i.i = lshr i64 %.sroa.5268.0.copyload.i.i.i.i, 32
  %.sroa.45.sroa.17.0.extract.trunc122.i.i = trunc nuw i64 %.sroa.45.sroa.17.0.extract.shift121.i.i to i32
  br label %_RINvXsL_NtCsgkljs906P5b_3nom8internalTINtB6_3MapNCINvNtNtB8_5bytes8complete4takejRShINtNtB8_5error5ErrorB1h_EE0NCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB1T_9MachOFile7section0EIBB_BK_NCB1N_s_0ENCNvB1T_4uint0B3m_NCINvNtNtB8_6number8complete3u32B1h_B1k_E0B3E_B3E_B3E_B3E_B3E_B3E_INtNtB8_10combinator4CondB3E_EEINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB5R_NtB6_9StreamingEEB1Z_.exit.i.thread.i.i

bb.au:                                            ; preds = %.noexc19.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !4556
  invoke fastcc void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser4uint0INtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB28_NtB6_9StreamingEEBJ_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.p, i8 %i.cd, i8 %i.cc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0266.0.copyload.i.i.i.i, i64 noundef %.sroa.4267.0.copyload.i.i.i.i)
          to label %.noexc20.i.i unwind label %.loopexit.split-lp.loopexit.i.i, !noalias !4542

.noexc20.i.i:                                     ; preds = %bb.au
  %i.gf = load i64, ptr %i.p, align 8, !range !12, !noalias !4556, !noundef !5 ; 2 uses
  %.not448.i.i.i.i = icmp eq i64 %i.gf, -1
  %.sroa.0281.0.copyload.i.i.i.i = load ptr, ptr %i.dc, align 8, !noalias !4556 ; 2 uses
  %.sroa.4282.0.copyload.i.i.i.i = load i64, ptr %.sroa.4282.0..sroa_idx.i.i.i.i, align 8, !noalias !4556 ; 2 uses
  %.sroa.5283.0.copyload.i.i.i.i = load i64, ptr %.sroa.5283.0..sroa_idx.i.i.i.i, align 8, !noalias !4556 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !4556
  br i1 %.not448.i.i.i.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %.noexc20.i.i
  %.sroa.45.sroa.0.0.extract.trunc114.i.i = trunc i64 %.sroa.5283.0.copyload.i.i.i.i to i32
  %.sroa.45.sroa.17.0.extract.shift123.i.i = lshr i64 %.sroa.5283.0.copyload.i.i.i.i, 32
  %.sroa.45.sroa.17.0.extract.trunc124.i.i = trunc nuw i64 %.sroa.45.sroa.17.0.extract.shift123.i.i to i32
  br label %_RINvXsL_NtCsgkljs906P5b_3nom8internalTINtB6_3MapNCINvNtNtB8_5bytes8complete4takejRShINtNtB8_5error5ErrorB1h_EE0NCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB1T_9MachOFile7section0EIBB_BK_NCB1N_s_0ENCNvB1T_4uint0B3m_NCINvNtNtB8_6number8complete3u32B1h_B1k_E0B3E_B3E_B3E_B3E_B3E_B3E_INtNtB8_10combinator4CondB3E_EEINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB5R_NtB6_9StreamingEEB1Z_.exit.i.thread.i.i

bb.aw:                                            ; preds = %.noexc20.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !4556
  invoke void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB15_EE0INtB6_6ParserB15_E7processINtB6_7OutputMNtB6_4EmitB2d_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.o, ptr noalias nofree noundef nonnull readonly dereferenceable(1) %.sroa.9.0..sroa_idx.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0281.0.copyload.i.i.i.i, i64 noundef %.sroa.4282.0.copyload.i.i.i.i)
          to label %.noexc21.i.i unwind label %.loopexit.split-lp.loopexit.i.i, !noalias !4557

.noexc21.i.i:                                     ; preds = %bb.aw
  %i.gg = load i64, ptr %i.o, align 8, !range !12, !noalias !4556, !noundef !5 ; 2 uses
  %.not449.i.i.i.i = icmp eq i64 %i.gg, -1
  %.sroa.0296.0.copyload.i.i.i.i = load ptr, ptr %i.dd, align 8, !noalias !4556 ; 2 uses
  %.sroa.4297.0.copyload.i.i.i.i = load i64, ptr %.sroa.4297.0..sroa_idx.i.i.i.i, align 8, !noalias !4556 ; 2 uses
  %.sroa.5298.0.copyload.i.i.i.i = load i32, ptr %.sroa.5298.0..sroa_idx.i.i.i.i, align 8, !noalias !4556 ; 2 uses
  br i1 %.not449.i.i.i.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %.noexc21.i.i
  %.sroa.7309.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 28
  %.sroa.7309.0.copyload.i.i.i.i = load i32, ptr %.sroa.7309.0..sroa_idx.i.i.i.i, align 4, !noalias !4556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !4556
  br label %_RINvXsL_NtCsgkljs906P5b_3nom8internalTINtB6_3MapNCINvNtNtB8_5bytes8complete4takejRShINtNtB8_5error5ErrorB1h_EE0NCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB1T_9MachOFile7section0EIBB_BK_NCB1N_s_0ENCNvB1T_4uint0B3m_NCINvNtNtB8_6number8complete3u32B1h_B1k_E0B3E_B3E_B3E_B3E_B3E_B3E_INtNtB8_10combinator4CondB3E_EEINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB5R_NtB6_9StreamingEEB1Z_.exit.i.thread.i.i

bb.ay:                                            ; preds = %.noexc21.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !4556
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !4556
  invoke void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB15_EE0INtB6_6ParserB15_E7processINtB6_7OutputMNtB6_4EmitB2d_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.n, ptr noalias nofree noundef nonnull readonly dereferenceable(1) %.sroa.10.0..sroa_idx.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0296.0.copyload.i.i.i.i, i64 noundef %.sroa.4297.0.copyload.i.i.i.i)
          to label %.noexc22.i.i unwind label %.loopexit.split-lp.loopexit.i.i, !noalias !4557

.noexc22.i.i:                                     ; preds = %bb.ay
  %i.gh = load i64, ptr %i.n, align 8, !range !12, !noalias !4556, !noundef !5 ; 2 uses
  %.not450.i.i.i.i = icmp eq i64 %i.gh, -1
  %.sroa.0315.0.copyload.i.i.i.i = load ptr, ptr %i.de, align 8, !noalias !4556 ; 2 uses
  %.sroa.4316.0.copyload.i.i.i.i = load i64, ptr %.sroa.4316.0..sroa_idx.i.i.i.i, align 8, !noalias !4556 ; 2 uses
  %.sroa.5317.0.copyload.i.i.i.i = load i32, ptr %.sroa.5317.0..sroa_idx.i.i.i.i, align 8, !noalias !4556 ; 2 uses
  br i1 %.not450.i.i.i.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %.noexc22.i.i
  %.sroa.7328.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 28
  %.sroa.7328.0.copyload.i.i.i.i = load i32, ptr %.sroa.7328.0..sroa_idx.i.i.i.i, align 4, !noalias !4556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !4556
  br label %_RINvXsL_NtCsgkljs906P5b_3nom8internalTINtB6_3MapNCINvNtNtB8_5bytes8complete4takejRShINtNtB8_5error5ErrorB1h_EE0NCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB1T_9MachOFile7section0EIBB_BK_NCB1N_s_0ENCNvB1T_4uint0B3m_NCINvNtNtB8_6number8complete3u32B1h_B1k_E0B3E_B3E_B3E_B3E_B3E_B3E_INtNtB8_10combinator4CondB3E_EEINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB5R_NtB6_9StreamingEEB1Z_.exit.i.thread.i.i

bb.ba:                                            ; preds = %.noexc22.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !4556
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !4556
  invoke void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB15_EE0INtB6_6ParserB15_E7processINtB6_7OutputMNtB6_4EmitB2d_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.m, ptr noalias nofree noundef nonnull readonly dereferenceable(1) %.sroa.1135.0..sroa_idx.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0315.0.copyload.i.i.i.i, i64 noundef %.sroa.4316.0.copyload.i.i.i.i)
          to label %.noexc23.i.i unwind label %.loopexit.split-lp.loopexit.i.i, !noalias !4557

.noexc23.i.i:                                     ; preds = %bb.ba
  %i.gi = load i64, ptr %i.m, align 8, !range !12, !noalias !4556, !noundef !5 ; 2 uses
  %.not451.i.i.i.i = icmp eq i64 %i.gi, -1
  %.sroa.0334.0.copyload.i.i.i.i = load ptr, ptr %i.df, align 8, !noalias !4556 ; 2 uses
  %.sroa.4335.0.copyload.i.i.i.i = load i64, ptr %.sroa.4335.0..sroa_idx.i.i.i.i, align 8, !noalias !4556 ; 2 uses
  %.sroa.5336.0.copyload.i.i.i.i = load i32, ptr %.sroa.5336.0..sroa_idx.i.i.i.i, align 8, !noalias !4556 ; 2 uses
  br i1 %.not451.i.i.i.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %.noexc23.i.i
  %.sroa.7347.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 28
  %.sroa.7347.0.copyload.i.i.i.i = load i32, ptr %.sroa.7347.0..sroa_idx.i.i.i.i, align 4, !noalias !4556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !4556
  br label %_RINvXsL_NtCsgkljs906P5b_3nom8internalTINtB6_3MapNCINvNtNtB8_5bytes8complete4takejRShINtNtB8_5error5ErrorB1h_EE0NCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB1T_9MachOFile7section0EIBB_BK_NCB1N_s_0ENCNvB1T_4uint0B3m_NCINvNtNtB8_6number8complete3u32B1h_B1k_E0B3E_B3E_B3E_B3E_B3E_B3E_INtNtB8_10combinator4CondB3E_EEINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB5R_NtB6_9StreamingEEB1Z_.exit.i.thread.i.i

bb.bc:                                            ; preds = %.noexc23.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !4556
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !4556
  invoke void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB15_EE0INtB6_6ParserB15_E7processINtB6_7OutputMNtB6_4EmitB2d_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull readonly dereferenceable(1) %.sroa.12.0..sroa_idx.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0334.0.copyload.i.i.i.i, i64 noundef %.sroa.4335.0.copyload.i.i.i.i)
          to label %.noexc24.i.i unwind label %.loopexit.split-lp.loopexit.i.i, !noalias !4557

.noexc24.i.i:                                     ; preds = %bb.bc
  %i.gj = load i64, ptr %i.l, align 8, !range !12, !noalias !4556, !noundef !5 ; 2 uses
  %.not452.i.i.i.i = icmp eq i64 %i.gj, -1
  %.sroa.0353.0.copyload.i.i.i.i = load ptr, ptr %i.dg, align 8, !noalias !4556 ; 2 uses
  %.sroa.4354.0.copyload.i.i.i.i = load i64, ptr %.sroa.4354.0..sroa_idx.i.i.i.i, align 8, !noalias !4556 ; 2 uses
  %.sroa.5355.0.copyload.i.i.i.i = load i32, ptr %.sroa.5355.0..sroa_idx.i.i.i.i, align 8, !noalias !4556 ; 2 uses
  br i1 %.not452.i.i.i.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %.noexc24.i.i
  %.sroa.7366.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  %.sroa.7366.0.copyload.i.i.i.i = load i32, ptr %.sroa.7366.0..sroa_idx.i.i.i.i, align 4, !noalias !4556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !4556
  br label %_RINvXsL_NtCsgkljs906P5b_3nom8internalTINtB6_3MapNCINvNtNtB8_5bytes8complete4takejRShINtNtB8_5error5ErrorB1h_EE0NCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB1T_9MachOFile7section0EIBB_BK_NCB1N_s_0ENCNvB1T_4uint0B3m_NCINvNtNtB8_6number8complete3u32B1h_B1k_E0B3E_B3E_B3E_B3E_B3E_B3E_INtNtB8_10combinator4CondB3E_EEINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB5R_NtB6_9StreamingEEB1Z_.exit.i.thread.i.i

bb.be:                                            ; preds = %.noexc24.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !4556
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !4556
  invoke void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB15_EE0INtB6_6ParserB15_E7processINtB6_7OutputMNtB6_4EmitB2d_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull readonly dereferenceable(1) %.sroa.13.0..sroa_idx.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0353.0.copyload.i.i.i.i, i64 noundef %.sroa.4354.0.copyload.i.i.i.i)
          to label %.noexc25.i.i unwind label %.loopexit.split-lp.loopexit.i.i, !noalias !4557

.noexc25.i.i:                                     ; preds = %bb.be
  %i.gk = load i64, ptr %i.k, align 8, !range !12, !noalias !4556, !noundef !5 ; 2 uses
  %.not453.i.i.i.i = icmp eq i64 %i.gk, -1
  %.sroa.0372.0.copyload.i.i.i.i = load ptr, ptr %i.dh, align 8, !noalias !4556 ; 2 uses
  %.sroa.4373.0.copyload.i.i.i.i = load i64, ptr %.sroa.4373.0..sroa_idx.i.i.i.i, align 8, !noalias !4556 ; 2 uses
  %.sroa.5374.0.copyload.i.i.i.i = load i32, ptr %.sroa.5374.0..sroa_idx.i.i.i.i, align 8, !noalias !4556 ; 2 uses
  br i1 %.not453.i.i.i.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %.noexc25.i.i
  %.sroa.7385.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 28
  %.sroa.7385.0.copyload.i.i.i.i = load i32, ptr %.sroa.7385.0..sroa_idx.i.i.i.i, align 4, !noalias !4556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !4556
  br label %_RINvXsL_NtCsgkljs906P5b_3nom8internalTINtB6_3MapNCINvNtNtB8_5bytes8complete4takejRShINtNtB8_5error5ErrorB1h_EE0NCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB1T_9MachOFile7section0EIBB_BK_NCB1N_s_0ENCNvB1T_4uint0B3m_NCINvNtNtB8_6number8complete3u32B1h_B1k_E0B3E_B3E_B3E_B3E_B3E_B3E_INtNtB8_10combinator4CondB3E_EEINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB5R_NtB6_9StreamingEEB1Z_.exit.i.thread.i.i

bb.bg:                                            ; preds = %.noexc25.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !4556
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !4556
  invoke void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB15_EE0INtB6_6ParserB15_E7processINtB6_7OutputMNtB6_4EmitB2d_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.j, ptr noalias nofree noundef nonnull readonly dereferenceable(1) %.sroa.1436.0..sroa_idx.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0372.0.copyload.i.i.i.i, i64 noundef %.sroa.4373.0.copyload.i.i.i.i)
          to label %.noexc26.i.i unwind label %.loopexit.split-lp.loopexit.i.i, !noalias !4557

.noexc26.i.i:                                     ; preds = %bb.bg
  %i.gl = load i64, ptr %i.j, align 8, !range !12, !noalias !4556, !noundef !5 ; 2 uses
  %.not454.i.i.i.i = icmp eq i64 %i.gl, -1
  %.sroa.0391.0.copyload.i.i.i.i = load ptr, ptr %i.di, align 8, !noalias !4556 ; 2 uses
  %.sroa.4392.0.copyload.i.i.i.i = load i64, ptr %.sroa.4392.0..sroa_idx.i.i.i.i, align 8, !noalias !4556 ; 2 uses
  %.sroa.5393.0.copyload.i.i.i.i = load i32, ptr %.sroa.5393.0..sroa_idx.i.i.i.i, align 8, !noalias !4556 ; 2 uses
  br i1 %.not454.i.i.i.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %.noexc26.i.i
  %.sroa.7404.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  %.sroa.7404.0.copyload.i.i.i.i = load i32, ptr %.sroa.7404.0..sroa_idx.i.i.i.i, align 4, !noalias !4556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !4556
  br label %_RINvXsL_NtCsgkljs906P5b_3nom8internalTINtB6_3MapNCINvNtNtB8_5bytes8complete4takejRShINtNtB8_5error5ErrorB1h_EE0NCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB1T_9MachOFile7section0EIBB_BK_NCB1N_s_0ENCNvB1T_4uint0B3m_NCINvNtNtB8_6number8complete3u32B1h_B1k_E0B3E_B3E_B3E_B3E_B3E_B3E_INtNtB8_10combinator4CondB3E_EEINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB5R_NtB6_9StreamingEEB1Z_.exit.i.thread.i.i

bb.bi:                                            ; preds = %.noexc26.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !4556
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !4556
  invoke void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB15_EE0INtB6_6ParserB15_E7processINtB6_7OutputMNtB6_4EmitB2d_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull readonly dereferenceable(1) %.sroa.15.0..sroa_idx.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0391.0.copyload.i.i.i.i, i64 noundef %.sroa.4392.0.copyload.i.i.i.i)
          to label %.noexc27.i.i unwind label %.loopexit.split-lp.loopexit.i.i, !noalias !4557

.noexc27.i.i:                                     ; preds = %bb.bi
  %i.gm = load i64, ptr %i.i, align 8, !range !12, !noalias !4556, !noundef !5 ; 2 uses
  %.not455.i.i.i.i = icmp eq i64 %i.gm, -1
  %.sroa.0410.0.copyload.i.i.i.i = load ptr, ptr %i.dj, align 8, !noalias !4556 ; 3 uses
  %.sroa.4411.0.copyload.i.i.i.i = load i64, ptr %.sroa.4411.0..sroa_idx.i.i.i.i, align 8, !noalias !4556 ; 3 uses
  %.sroa.5412.0.copyload.i.i.i.i = load i32, ptr %.sroa.5412.0..sroa_idx.i.i.i.i, align 8, !noalias !4556 ; 2 uses
  br i1 %.not455.i.i.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %.noexc27.i.i
  %.sroa.7423.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  %.sroa.7423.0.copyload.i.i.i.i = load i32, ptr %.sroa.7423.0..sroa_idx.i.i.i.i, align 4, !noalias !4556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4556
  br label %_RINvXsL_NtCsgkljs906P5b_3nom8internalTINtB6_3MapNCINvNtNtB8_5bytes8complete4takejRShINtNtB8_5error5ErrorB1h_EE0NCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB1T_9MachOFile7section0EIBB_BK_NCB1N_s_0ENCNvB1T_4uint0B3m_NCINvNtNtB8_6number8complete3u32B1h_B1k_E0B3E_B3E_B3E_B3E_B3E_B3E_INtNtB8_10combinator4CondB3E_EEINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB5R_NtB6_9StreamingEEB1Z_.exit.i.thread.i.i

end_hunk_0
begin_hunk_1_@_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB4_2PE5parse:bb.a
  %.sroa.9299.sroa.18.0 = phi i32 [ %.sroa.5544.0.copyload.i.i, %bb.fu ], [ 0, %_RNCNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB7_2PE16parse_opt_header0Bd_.exit ], [ 0, %bb.dw ], [ 0, %bb.ea ], [ 0, %bb.ee ], [ 0, %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINtNtB8_10combinator4CondINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1w_EEEBA_IBB_INvB12_6le_u64B1w_B1z_EEEINtB6_6ParserB1w_E7processINtB6_7OutputMNtB6_4EmitB3a_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x.exit.i ], [ 0, %bb.dr ], [ 0, %bb.da ], [ 0, %bb.dq ], [ 0, %bb.do ], [ 0, %bb.dm ], [ 0, %bb.dk ], [ 0, %bb.dg ], [ 0, %bb.dd ], [ 0, %bb.ft ], [ 0, %bb.fq ], [ 0, %bb.fp ], [ 0, %bb.fo ], [ 0, %bb.fn ], [ 0, %bb.fs ], [ 0, %bb.fm ], [ 0, %bb.fk ], [ 0, %bb.fi ], [ 0, %bb.fg ], [ 0, %bb.fe ], [ 0, %bb.fc ], [ 0, %bb.fa ], [ 0, %bb.ey ], [ 0, %bb.ew ], [ 0, %bb.eu ], [ 0, %bb.es ], [ 0, %bb.eq ], [ 0, %bb.em ], [ 0, %bb.ei ]
  %.sroa.9299.sroa.19.0 = phi i32 [ %.sroa.5563.0.copyload.i.i, %bb.fu ], [ 0, %_RNCNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB7_2PE16parse_opt_header0Bd_.exit ], [ 0, %bb.dw ], [ 0, %bb.ea ], [ 0, %bb.ee ], [ 0, %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINtNtB8_10combinator4CondINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1w_EEEBA_IBB_INvB12_6le_u64B1w_B1z_EEEINtB6_6ParserB1w_E7processINtB6_7OutputMNtB6_4EmitB3a_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x.exit.i ], [ 0, %bb.dr ], [ 0, %bb.da ], [ 0, %bb.dq ], [ 0, %bb.do ], [ 0, %bb.dm ], [ 0, %bb.dk ], [ 0, %bb.dg ], [ 0, %bb.dd ], [ 0, %bb.ft ], [ 0, %bb.fq ], [ 0, %bb.fp ], [ 0, %bb.fo ], [ 0, %bb.fn ], [ 0, %bb.fs ], [ 0, %bb.fm ], [ 0, %bb.fk ], [ 0, %bb.fi ], [ 0, %bb.fg ], [ 0, %bb.fe ], [ 0, %bb.fc ], [ 0, %bb.fa ], [ 0, %bb.ey ], [ 0, %bb.ew ], [ 0, %bb.eu ], [ 0, %bb.es ], [ 0, %bb.eq ], [ 0, %bb.em ], [ 0, %bb.ei ]
  %.sroa.9299.sroa.20.0 = phi i32 [ %.sroa.5582.0.copyload.i.i, %bb.fu ], [ 0, %_RNCNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB7_2PE16parse_opt_header0Bd_.exit ], [ 0, %bb.dw ], [ 0, %bb.ea ], [ 0, %bb.ee ], [ 0, %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINtNtB8_10combinator4CondINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1w_EEEBA_IBB_INvB12_6le_u64B1w_B1z_EEEINtB6_6ParserB1w_E7processINtB6_7OutputMNtB6_4EmitB3a_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x.exit.i ], [ 0, %bb.dr ], [ 0, %bb.da ], [ 0, %bb.dq ], [ 0, %bb.do ], [ 0, %bb.dm ], [ 0, %bb.dk ], [ 0, %bb.dg ], [ 0, %bb.dd ], [ 0, %bb.ft ], [ 0, %bb.fq ], [ 0, %bb.fp ], [ 0, %bb.fo ], [ 0, %bb.fn ], [ 0, %bb.fs ], [ 0, %bb.fm ], [ 0, %bb.fk ], [ 0, %bb.fi ], [ 0, %bb.fg ], [ 0, %bb.fe ], [ 0, %bb.fc ], [ 0, %bb.fa ], [ 0, %bb.ey ], [ 0, %bb.ew ], [ 0, %bb.eu ], [ 0, %bb.es ], [ 0, %bb.eq ], [ 0, %bb.em ], [ 0, %bb.ei ]
  %.sroa.9299.sroa.21.0 = phi i32 [ %.sroa.5699.0.copyload.i.i, %bb.fu ], [ 0, %_RNCNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB7_2PE16parse_opt_header0Bd_.exit ], [ 0, %bb.dw ], [ 0, %bb.ea ], [ 0, %bb.ee ], [ 0, %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINtNtB8_10combinator4CondINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1w_EEEBA_IBB_INvB12_6le_u64B1w_B1z_EEEINtB6_6ParserB1w_E7processINtB6_7OutputMNtB6_4EmitB3a_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x.exit.i ], [ 0, %bb.dr ], [ 0, %bb.da ], [ 0, %bb.dq ], [ 0, %bb.do ], [ 0, %bb.dm ], [ 0, %bb.dk ], [ 0, %bb.dg ], [ 0, %bb.dd ], [ 0, %bb.ft ], [ 0, %bb.fq ], [ 0, %bb.fp ], [ 0, %bb.fo ], [ 0, %bb.fn ], [ 0, %bb.fs ], [ 0, %bb.fm ], [ 0, %bb.fk ], [ 0, %bb.fi ], [ 0, %bb.fg ], [ 0, %bb.fe ], [ 0, %bb.fc ], [ 0, %bb.fa ], [ 0, %bb.ey ], [ 0, %bb.ew ], [ 0, %bb.eu ], [ 0, %bb.es ], [ 0, %bb.eq ], [ 0, %bb.em ], [ 0, %bb.ei ]
  %.sroa.9299.sroa.22.0 = phi i32 [ %.sroa.5718.0.copyload.i.i, %bb.fu ], [ 0, %_RNCNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB7_2PE16parse_opt_header0Bd_.exit ], [ 0, %bb.dw ], [ 0, %bb.ea ], [ 0, %bb.ee ], [ 0, %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINtNtB8_10combinator4CondINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1w_EEEBA_IBB_INvB12_6le_u64B1w_B1z_EEEINtB6_6ParserB1w_E7processINtB6_7OutputMNtB6_4EmitB3a_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x.exit.i ], [ 0, %bb.dr ], [ 0, %bb.da ], [ 0, %bb.dq ], [ 0, %bb.do ], [ 0, %bb.dm ], [ 0, %bb.dk ], [ 0, %bb.dg ], [ 0, %bb.dd ], [ 0, %bb.ft ], [ 0, %bb.fq ], [ 0, %bb.fp ], [ 0, %bb.fo ], [ 0, %bb.fn ], [ 0, %bb.fs ], [ 0, %bb.fm ], [ 0, %bb.fk ], [ 0, %bb.fi ], [ 0, %bb.fg ], [ 0, %bb.fe ], [ 0, %bb.fc ], [ 0, %bb.fa ], [ 0, %bb.ey ], [ 0, %bb.ew ], [ 0, %bb.eu ], [ 0, %bb.es ], [ 0, %bb.eq ], [ 0, %bb.em ], [ 0, %bb.ei ]
  %.sroa.9299.sroa.23.0 = phi i16 [ %.sroa.0.0.lcssa.i.i.i.i.i158, %bb.fu ], [ 0, %_RNCNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB7_2PE16parse_opt_header0Bd_.exit ], [ 0, %bb.dw ], [ 0, %bb.ea ], [ 0, %bb.ee ], [ 0, %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINtNtB8_10combinator4CondINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1w_EEEBA_IBB_INvB12_6le_u64B1w_B1z_EEEINtB6_6ParserB1w_E7processINtB6_7OutputMNtB6_4EmitB3a_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x.exit.i ], [ 0, %bb.dr ], [ 0, %bb.da ], [ 0, %bb.dq ], [ 0, %bb.do ], [ 0, %bb.dm ], [ 0, %bb.dk ], [ 0, %bb.dg ], [ 0, %bb.dd ], [ 0, %bb.ft ], [ 0, %bb.fq ], [ 0, %bb.fp ], [ 0, %bb.fo ], [ 0, %bb.fn ], [ 0, %bb.fs ], [ 0, %bb.fm ], [ 0, %bb.fk ], [ 0, %bb.fi ], [ 0, %bb.fg ], [ 0, %bb.fe ], [ 0, %bb.fc ], [ 0, %bb.fa ], [ 0, %bb.ey ], [ 0, %bb.ew ], [ 0, %bb.eu ], [ 0, %bb.es ], [ 0, %bb.eq ], [ 0, %bb.em ], [ 0, %bb.ei ]
  %.sroa.9299.sroa.24.0 = phi i16 [ %.sroa.0.0.lcssa.i.i.i.i292.i, %bb.fu ], [ 0, %_RNCNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB7_2PE16parse_opt_header0Bd_.exit ], [ 0, %bb.dw ], [ 0, %bb.ea ], [ 0, %bb.ee ], [ 0, %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINtNtB8_10combinator4CondINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1w_EEEBA_IBB_INvB12_6le_u64B1w_B1z_EEEINtB6_6ParserB1w_E7processINtB6_7OutputMNtB6_4EmitB3a_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x.exit.i ], [ 0, %bb.dr ], [ 0, %bb.da ], [ 0, %bb.dq ], [ 0, %bb.do ], [ 0, %bb.dm ], [ 0, %bb.dk ], [ 0, %bb.dg ], [ 0, %bb.dd ], [ 0, %bb.ft ], [ 0, %bb.fq ], [ 0, %bb.fp ], [ 0, %bb.fo ], [ 0, %bb.fn ], [ 0, %bb.fs ], [ 0, %bb.fm ], [ 0, %bb.fk ], [ 0, %bb.fi ], [ 0, %bb.fg ], [ 0, %bb.fe ], [ 0, %bb.fc ], [ 0, %bb.fa ], [ 0, %bb.ey ], [ 0, %bb.ew ], [ 0, %bb.eu ], [ 0, %bb.es ], [ 0, %bb.eq ], [ 0, %bb.em ], [ 0, %bb.ei ]
  %.sroa.9299.sroa.25.0 = phi i16 [ %.sroa.5430.0.copyload.i.i, %bb.fu ], [ 0, %_RNCNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB7_2PE16parse_opt_header0Bd_.exit ], [ 0, %bb.dw ], [ 0, %bb.ea ], [ 0, %bb.ee ], [ 0, %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINtNtB8_10combinator4CondINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1w_EEEBA_IBB_INvB12_6le_u64B1w_B1z_EEEINtB6_6ParserB1w_E7processINtB6_7OutputMNtB6_4EmitB3a_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x.exit.i ], [ 0, %bb.dr ], [ 0, %bb.da ], [ 0, %bb.dq ], [ 0, %bb.do ], [ 0, %bb.dm ], [ 0, %bb.dk ], [ 0, %bb.dg ], [ 0, %bb.dd ], [ 0, %bb.ft ], [ 0, %bb.fq ], [ 0, %bb.fp ], [ 0, %bb.fo ], [ 0, %bb.fn ], [ 0, %bb.fs ], [ 0, %bb.fm ], [ 0, %bb.fk ], [ 0, %bb.fi ], [ 0, %bb.fg ], [ 0, %bb.fe ], [ 0, %bb.fc ], [ 0, %bb.fa ], [ 0, %bb.ey ], [ 0, %bb.ew ], [ 0, %bb.eu ], [ 0, %bb.es ], [ 0, %bb.eq ], [ 0, %bb.em ], [ 0, %bb.ei ]
  %.sroa.9299.sroa.26.0 = phi i16 [ %.sroa.5449.0.copyload.i.i, %bb.fu ], [ 0, %_RNCNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB7_2PE16parse_opt_header0Bd_.exit ], [ 0, %bb.dw ], [ 0, %bb.ea ], [ 0, %bb.ee ], [ 0, %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINtNtB8_10combinator4CondINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1w_EEEBA_IBB_INvB12_6le_u64B1w_B1z_EEEINtB6_6ParserB1w_E7processINtB6_7OutputMNtB6_4EmitB3a_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x.exit.i ], [ 0, %bb.dr ], [ 0, %bb.da ], [ 0, %bb.dq ], [ 0, %bb.do ], [ 0, %bb.dm ], [ 0, %bb.dk ], [ 0, %bb.dg ], [ 0, %bb.dd ], [ 0, %bb.ft ], [ 0, %bb.fq ], [ 0, %bb.fp ], [ 0, %bb.fo ], [ 0, %bb.fn ], [ 0, %bb.fs ], [ 0, %bb.fm ], [ 0, %bb.fk ], [ 0, %bb.fi ], [ 0, %bb.fg ], [ 0, %bb.fe ], [ 0, %bb.fc ], [ 0, %bb.fa ], [ 0, %bb.ey ], [ 0, %bb.ew ], [ 0, %bb.eu ], [ 0, %bb.es ], [ 0, %bb.eq ], [ 0, %bb.em ], [ 0, %bb.ei ]
  %.sroa.9299.sroa.27.0 = phi i16 [ %.sroa.5468.0.copyload.i.i, %bb.fu ], [ 0, %_RNCNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB7_2PE16parse_opt_header0Bd_.exit ], [ 0, %bb.dw ], [ 0, %bb.ea ], [ 0, %bb.ee ], [ 0, %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINtNtB8_10combinator4CondINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1w_EEEBA_IBB_INvB12_6le_u64B1w_B1z_EEEINtB6_6ParserB1w_E7processINtB6_7OutputMNtB6_4EmitB3a_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x.exit.i ], [ 0, %bb.dr ], [ 0, %bb.da ], [ 0, %bb.dq ], [ 0, %bb.do ], [ 0, %bb.dm ], [ 0, %bb.dk ], [ 0, %bb.dg ], [ 0, %bb.dd ], [ 0, %bb.ft ], [ 0, %bb.fq ], [ 0, %bb.fp ], [ 0, %bb.fo ], [ 0, %bb.fn ], [ 0, %bb.fs ], [ 0, %bb.fm ], [ 0, %bb.fk ], [ 0, %bb.fi ], [ 0, %bb.fg ], [ 0, %bb.fe ], [ 0, %bb.fc ], [ 0, %bb.fa ], [ 0, %bb.ey ], [ 0, %bb.ew ], [ 0, %bb.eu ], [ 0, %bb.es ], [ 0, %bb.eq ], [ 0, %bb.em ], [ 0, %bb.ei ]
  %.sroa.9299.sroa.28.0 = phi i16 [ %.sroa.5487.0.copyload.i.i, %bb.fu ], [ 0, %_RNCNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB7_2PE16parse_opt_header0Bd_.exit ], [ 0, %bb.dw ], [ 0, %bb.ea ], [ 0, %bb.ee ], [ 0, %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINtNtB8_10combinator4CondINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1w_EEEBA_IBB_INvB12_6le_u64B1w_B1z_EEEINtB6_6ParserB1w_E7processINtB6_7OutputMNtB6_4EmitB3a_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x.exit.i ], [ 0, %bb.dr ], [ 0, %bb.da ], [ 0, %bb.dq ], [ 0, %bb.do ], [ 0, %bb.dm ], [ 0, %bb.dk ], [ 0, %bb.dg ], [ 0, %bb.dd ], [ 0, %bb.ft ], [ 0, %bb.fq ], [ 0, %bb.fp ], [ 0, %bb.fo ], [ 0, %bb.fn ], [ 0, %bb.fs ], [ 0, %bb.fm ], [ 0, %bb.fk ], [ 0, %bb.fi ], [ 0, %bb.fg ], [ 0, %bb.fe ], [ 0, %bb.fc ], [ 0, %bb.fa ], [ 0, %bb.ey ], [ 0, %bb.ew ], [ 0, %bb.eu ], [ 0, %bb.es ], [ 0, %bb.eq ], [ 0, %bb.em ], [ 0, %bb.ei ]
  %.sroa.9299.sroa.29.0 = phi i16 [ %.sroa.5506.0.copyload.i.i, %bb.fu ], [ 0, %_RNCNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB7_2PE16parse_opt_header0Bd_.exit ], [ 0, %bb.dw ], [ 0, %bb.ea ], [ 0, %bb.ee ], [ 0, %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINtNtB8_10combinator4CondINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1w_EEEBA_IBB_INvB12_6le_u64B1w_B1z_EEEINtB6_6ParserB1w_E7processINtB6_7OutputMNtB6_4EmitB3a_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x.exit.i ], [ 0, %bb.dr ], [ 0, %bb.da ], [ 0, %bb.dq ], [ 0, %bb.do ], [ 0, %bb.dm ], [ 0, %bb.dk ], [ 0, %bb.dg ], [ 0, %bb.dd ], [ 0, %bb.ft ], [ 0, %bb.fq ], [ 0, %bb.fp ], [ 0, %bb.fo ], [ 0, %bb.fn ], [ 0, %bb.fs ], [ 0, %bb.fm ], [ 0, %bb.fk ], [ 0, %bb.fi ], [ 0, %bb.fg ], [ 0, %bb.fe ], [ 0, %bb.fc ], [ 0, %bb.fa ], [ 0, %bb.ey ], [ 0, %bb.ew ], [ 0, %bb.eu ], [ 0, %bb.es ], [ 0, %bb.eq ], [ 0, %bb.em ], [ 0, %bb.ei ]
  %.sroa.9299.sroa.30.0 = phi i16 [ %.sroa.5601.0.copyload.i.i, %bb.fu ], [ 0, %_RNCNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB7_2PE16parse_opt_header0Bd_.exit ], [ 0, %bb.dw ], [ 0, %bb.ea ], [ 0, %bb.ee ], [ 0, %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINtNtB8_10combinator4CondINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1w_EEEBA_IBB_INvB12_6le_u64B1w_B1z_EEEINtB6_6ParserB1w_E7processINtB6_7OutputMNtB6_4EmitB3a_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x.exit.i ], [ 0, %bb.dr ], [ 0, %bb.da ], [ 0, %bb.dq ], [ 0, %bb.do ], [ 0, %bb.dm ], [ 0, %bb.dk ], [ 0, %bb.dg ], [ 0, %bb.dd ], [ 0, %bb.ft ], [ 0, %bb.fq ], [ 0, %bb.fp ], [ 0, %bb.fo ], [ 0, %bb.fn ], [ 0, %bb.fs ], [ 0, %bb.fm ], [ 0, %bb.fk ], [ 0, %bb.fi ], [ 0, %bb.fg ], [ 0, %bb.fe ], [ 0, %bb.fc ], [ 0, %bb.fa ], [ 0, %bb.ey ], [ 0, %bb.ew ], [ 0, %bb.eu ], [ 0, %bb.es ], [ 0, %bb.eq ], [ 0, %bb.em ], [ 0, %bb.ei ]
  %.sroa.9299.sroa.31.0 = phi i16 [ %.sroa.5620.0.copyload.i.i, %bb.fu ], [ 0, %_RNCNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB7_2PE16parse_opt_header0Bd_.exit ], [ 0, %bb.dw ], [ 0, %bb.ea ], [ 0, %bb.ee ], [ 0, %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINtNtB8_10combinator4CondINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1w_EEEBA_IBB_INvB12_6le_u64B1w_B1z_EEEINtB6_6ParserB1w_E7processINtB6_7OutputMNtB6_4EmitB3a_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x.exit.i ], [ 0, %bb.dr ], [ 0, %bb.da ], [ 0, %bb.dq ], [ 0, %bb.do ], [ 0, %bb.dm ], [ 0, %bb.dk ], [ 0, %bb.dg ], [ 0, %bb.dd ], [ 0, %bb.ft ], [ 0, %bb.fq ], [ 0, %bb.fp ], [ 0, %bb.fo ], [ 0, %bb.fn ], [ 0, %bb.fs ], [ 0, %bb.fm ], [ 0, %bb.fk ], [ 0, %bb.fi ], [ 0, %bb.fg ], [ 0, %bb.fe ], [ 0, %bb.fc ], [ 0, %bb.fa ], [ 0, %bb.ey ], [ 0, %bb.ew ], [ 0, %bb.eu ], [ 0, %bb.es ], [ 0, %bb.eq ], [ 0, %bb.em ], [ 0, %bb.ei ]
  %.sroa.9299.sroa.32.0 = phi i16 [ %i.xz, %bb.fu ], [ 0, %_RNCNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB7_2PE16parse_opt_header0Bd_.exit ], [ 0, %bb.dw ], [ 0, %bb.ea ], [ 0, %bb.ee ], [ 0, %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINtNtB8_10combinator4CondINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1w_EEEBA_IBB_INvB12_6le_u64B1w_B1z_EEEINtB6_6ParserB1w_E7processINtB6_7OutputMNtB6_4EmitB3a_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x.exit.i ], [ 0, %bb.dr ], [ 0, %bb.da ], [ 0, %bb.dq ], [ 0, %bb.do ], [ 0, %bb.dm ], [ 0, %bb.dk ], [ 0, %bb.dg ], [ 0, %bb.dd ], [ 0, %bb.ft ], [ 0, %bb.fq ], [ 0, %bb.fp ], [ 0, %bb.fo ], [ 0, %bb.fn ], [ 0, %bb.fs ], [ 0, %bb.fm ], [ 0, %bb.fk ], [ 0, %bb.fi ], [ 0, %bb.fg ], [ 0, %bb.fe ], [ 0, %bb.fc ], [ 0, %bb.fa ], [ 0, %bb.ey ], [ 0, %bb.ew ], [ 0, %bb.eu ], [ 0, %bb.es ], [ 0, %bb.eq ], [ 0, %bb.em ], [ 0, %bb.ei ]
  %.sroa.9299.sroa.0.0 = phi i32 [ %.sroa.15108.sroa.9.0.extract.trunc127.i, %bb.fu ], [ undef, %_RNCNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB7_2PE16parse_opt_header0Bd_.exit ], [ undef, %bb.dw ], [ undef, %bb.ea ], [ undef, %bb.ee ], [ undef, %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINtNtB8_10combinator4CondINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1w_EEEBA_IBB_INvB12_6le_u64B1w_B1z_EEEINtB6_6ParserB1w_E7processINtB6_7OutputMNtB6_4EmitB3a_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x.exit.i ], [ undef, %bb.dr ], [ undef, %bb.da ], [ undef, %bb.dq ], [ undef, %bb.do ], [ undef, %bb.dm ], [ undef, %bb.dk ], [ undef, %bb.dg ], [ undef, %bb.dd ], [ undef, %bb.ft ], [ undef, %bb.fq ], [ undef, %bb.fp ], [ undef, %bb.fo ], [ undef, %bb.fn ], [ undef, %bb.fs ], [ undef, %bb.fm ], [ undef, %bb.fk ], [ undef, %bb.fi ], [ undef, %bb.fg ], [ undef, %bb.fe ], [ undef, %bb.fc ], [ undef, %bb.fa ], [ undef, %bb.ey ], [ undef, %bb.ew ], [ undef, %bb.eu ], [ undef, %bb.es ], [ undef, %bb.eq ], [ undef, %bb.em ], [ undef, %bb.ei ]
  %.sroa.7.0 = phi i32 [ %.sroa.6304.sroa.0.0.extract.trunc, %bb.fu ], [ 0, %_RNCNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB7_2PE16parse_opt_header0Bd_.exit ], [ 0, %bb.dw ], [ 0, %bb.ea ], [ 0, %bb.ee ], [ 0, %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINtNtB8_10combinator4CondINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1w_EEEBA_IBB_INvB12_6le_u64B1w_B1z_EEEINtB6_6ParserB1w_E7processINtB6_7OutputMNtB6_4EmitB3a_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x.exit.i ], [ 0, %bb.dr ], [ 0, %bb.da ], [ 0, %bb.dq ], [ 0, %bb.do ], [ 0, %bb.dm ], [ 0, %bb.dk ], [ 0, %bb.dg ], [ 0, %bb.dd ], [ 0, %bb.ft ], [ 0, %bb.fq ], [ 0, %bb.fp ], [ 0, %bb.fo ], [ 0, %bb.fn ], [ 0, %bb.fs ], [ 0, %bb.fm ], [ 0, %bb.fk ], [ 0, %bb.fi ], [ 0, %bb.fg ], [ 0, %bb.fe ], [ 0, %bb.fc ], [ 0, %bb.fa ], [ 0, %bb.ey ], [ 0, %bb.ew ], [ 0, %bb.eu ], [ 0, %bb.es ], [ 0, %bb.eq ], [ 0, %bb.em ], [ 0, %bb.ei ]
  %.sroa.5297.0 = phi i64 [ %.sroa.4717.0.copyload.i.i, %bb.fu ], [ 0, %_RNCNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB7_2PE16parse_opt_header0Bd_.exit ], [ 0, %bb.dw ], [ 0, %bb.ea ], [ 0, %bb.ee ], [ 0, %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINtNtB8_10combinator4CondINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1w_EEEBA_IBB_INvB12_6le_u64B1w_B1z_EEEINtB6_6ParserB1w_E7processINtB6_7OutputMNtB6_4EmitB3a_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x.exit.i ], [ 0, %bb.dr ], [ 0, %bb.da ], [ 0, %bb.dq ], [ 0, %bb.do ], [ 0, %bb.dm ], [ 0, %bb.dk ], [ 0, %bb.dg ], [ 0, %bb.dd ], [ 0, %bb.ft ], [ 0, %bb.fq ], [ 0, %bb.fp ], [ 0, %bb.fo ], [ 0, %bb.fn ], [ 0, %bb.fs ], [ 0, %bb.fm ], [ 0, %bb.fk ], [ 0, %bb.fi ], [ 0, %bb.fg ], [ 0, %bb.fe ], [ 0, %bb.fc ], [ 0, %bb.fa ], [ 0, %bb.ey ], [ 0, %bb.ew ], [ 0, %bb.eu ], [ 0, %bb.es ], [ 0, %bb.eq ], [ 0, %bb.em ], [ 0, %bb.ei ]
  %.sroa.0296.0 = phi ptr [ %.sroa.0716.0.copyload.i.i, %bb.fu ], [ inttoptr (i64 1 to ptr), %_RNCNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB7_2PE16parse_opt_header0Bd_.exit ], [ inttoptr (i64 1 to ptr), %bb.dw ], [ inttoptr (i64 1 to ptr), %bb.ea ], [ inttoptr (i64 1 to ptr), %bb.ee ], [ inttoptr (i64 1 to ptr), %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINtNtB8_10combinator4CondINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1w_EEEBA_IBB_INvB12_6le_u64B1w_B1z_EEEINtB6_6ParserB1w_E7processINtB6_7OutputMNtB6_4EmitB3a_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x.exit.i ], [ inttoptr (i64 1 to ptr), %bb.dr ], [ inttoptr (i64 1 to ptr), %bb.da ], [ inttoptr (i64 1 to ptr), %bb.dq ], [ inttoptr (i64 1 to ptr), %bb.do ], [ inttoptr (i64 1 to ptr), %bb.dm ], [ inttoptr (i64 1 to ptr), %bb.dk ], [ inttoptr (i64 1 to ptr), %bb.dg ], [ inttoptr (i64 1 to ptr), %bb.dd ], [ inttoptr (i64 1 to ptr), %bb.ft ], [ inttoptr (i64 1 to ptr), %bb.fq ], [ inttoptr (i64 1 to ptr), %bb.fp ], [ inttoptr (i64 1 to ptr), %bb.fo ], [ inttoptr (i64 1 to ptr), %bb.fn ], [ inttoptr (i64 1 to ptr), %bb.fs ], [ inttoptr (i64 1 to ptr), %bb.fm ], [ inttoptr (i64 1 to ptr), %bb.fk ], [ inttoptr (i64 1 to ptr), %bb.fi ], [ inttoptr (i64 1 to ptr), %bb.fg ], [ inttoptr (i64 1 to ptr), %bb.fe ], [ inttoptr (i64 1 to ptr), %bb.fc ], [ inttoptr (i64 1 to ptr), %bb.fa ], [ inttoptr (i64 1 to ptr), %bb.ey ], [ inttoptr (i64 1 to ptr), %bb.ew ], [ inttoptr (i64 1 to ptr), %bb.eu ], [ inttoptr (i64 1 to ptr), %bb.es ], [ inttoptr (i64 1 to ptr), %bb.eq ], [ inttoptr (i64 1 to ptr), %bb.em ], [ inttoptr (i64 1 to ptr), %bb.ei ]
  %i.ya = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.5248.0.copyload.i.i.i, i32 18) ; 2 uses
  %i.yb = extractvalue { i32, i1 } %i.ya, 0
  %i.yc = extractvalue { i32, i1 } %i.ya, 1
  br i1 %i.yc, label %bb.fv, label %bb.fw, !prof !6

bb.fv:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultTRShNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser14OptionalHeaderEINtNtCsgkljs906P5b_3nom8internal3ErrINtNtB1S_5error5ErrorBI_EEE17unwrap_or_defaultBT_.exit
  br label %bb.fw

bb.fw:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultTRShNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser14OptionalHeaderEINtNtCsgkljs906P5b_3nom8internal3ErrINtNtB1S_5error5ErrorBI_EEE17unwrap_or_defaultBT_.exit, %bb.fv
  %.sroa.087.0 = phi i32 [ -1, %bb.fv ], [ %i.yb, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultTRShNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser14OptionalHeaderEINtNtCsgkljs906P5b_3nom8internal3ErrINtNtB1S_5error5ErrorBI_EEE17unwrap_or_defaultBT_.exit ]
  %i.yd = call i32 @llvm.uadd.sat.i32(i32 %.sroa.5229.0.copyload.i.i.i, i32 %.sroa.087.0)
  %i.ye = zext i32 %i.yd to i64                   ; 3 uses
  %i.yf = icmp samesign ult i64 %2, %i.ye         ; 3 uses
  %i.yg = sub nuw nsw i64 %2, %i.ye
  %i.yh = getelementptr inbounds nuw i8, ptr %1, i64 %i.ye
  %.sroa.3.0 = select i1 %i.yf, i64 undef, i64 %i.yg ; 4 uses
  %.sroa.036.0 = select i1 %i.yf, ptr null, ptr %i.yh ; 2 uses
  %i.yi = zext i16 %.sroa.5267.0.copyload.i.i.i to i64
  %i.yj = add nuw nsw i64 %i.yi, 24               ; 3 uses
  %i.yk = icmp ult i64 %i.ke, %i.yj
  br i1 %i.yk, label %.sink.split, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.yl = sub nuw nsw i64 %i.ke, %i.yj
  %i.ym = getelementptr inbounds nuw i8, ptr %i.kf, i64 %i.yj
  %i.yn = call i16 @llvm.umin.i16(i16 %.sroa.0.0.lcssa.i.i.i.i6.i, i16 96)
  %..i = zext nneg i16 %i.yn to i64
  %i.yo = icmp eq i16 %.sroa.0.0.lcssa.i.i.i.i6.i, 0
  br i1 %i.yo, label %.sink.split, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !10121
  call void @llvm.experimental.noalias.scope.decl(metadata !10122)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !10123
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aa, i64 noundef 1, i1 noundef zeroext false, i64 noundef 8, i64 noundef 64), !noalias !10124
  %i.yp = load i64, ptr %i.aa, align 8, !range !11, !noalias !10123, !noundef !5
  %i.yq = trunc nuw i64 %i.yp to i1
  %i.yr = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ys = load i64, ptr %i.yr, align 8, !range !18, !noalias !10123, !noundef !5 ; 3 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  br i1 %i.yq, label %bb.fz, label %.lr.ph.i, !prof !6

bb.fz:                                            ; preds = %bb.fy
  %i.yu = load i64, ptr %i.yt, align 8, !noalias !10123
  call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ys, i64 %i.yu) #31, !noalias !10124
  unreachable

.lr.ph.i:                                         ; preds = %bb.fy
  %i.yv = load ptr, ptr %i.yt, align 8, !noalias !10123, !nonnull !5, !noundef !5
  %i.yw = icmp ne i64 %i.ys, 0
  call void @llvm.assume(i1 %i.yw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !10123
  store i64 %i.ys, ptr %i.ae, align 8, !alias.scope !10122, !noalias !10121
  %i.yx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  store ptr %i.yv, ptr %i.yx, align 8, !alias.scope !10122, !noalias !10121
  %i.yy = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  store i64 0, ptr %i.yy, align 8, !alias.scope !10122, !noalias !10121
  %i.yz = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i167 = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.3.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.44.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.za = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.zc = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 3 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i92.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i93.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i94.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 3 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i105.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i106.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i107.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 3 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i118.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i119.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i120.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 3 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i.i.i168 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i.i.i169 = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i49.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 3 uses
  %i.zh = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i.i170 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i.i171 = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i172 = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 3 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.zj = getelementptr inbounds nuw i8, ptr %.sroa.036.0, i64 %.sroa.3.0
  %i.zk = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 2 uses
  %.sroa.478.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %.sroa.579.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %.sroa.680.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %.sroa.781.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %.sroa.882.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 60
  %.sroa.983.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %.sroa.1084.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 68
  %.sroa.1185.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %.sroa.1286.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 76
  %.sroa.1387.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 80
  %.sroa.1488.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 84
  %.sroa.1589.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 86
  %i.zl = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.zn = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i214 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i215 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i216 = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i199 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i200 = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i201 = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i191 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i192 = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i193 = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 3 uses
  br label %bb.ga

.loopexit.i:                                      ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i178
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread110.i

.loopexit.split-lp.loopexit.i:                    ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i.i175
  %lpad.loopexit143.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread110.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i:  ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i121.i.i.i
  %lpad.loopexit146.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread110.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i108.i.i.i
  %lpad.loopexit148.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread110.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i95.i.i.i
  %lpad.loopexit151.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread110.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i.i.i
  %lpad.loopexit153.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread110.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %bb.gd
  %lpad.loopexit156.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread110.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit: ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i194
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread110.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit: ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i202
  %lpad.loopexit559 = landingpad { ptr, i32 }
          cleanup
  br label %.thread110.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i217
  %lpad.loopexit562 = landingpad { ptr, i32 }
          cleanup
  br label %.thread110.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.gb, %.noexc.i, %bb.gj, %bb.gn, %bb.gr, %bb.gv, %bb.gz, %bb.hh, %bb.hu, %bb.hv, %_RNCINvXNtCsgkljs906P5b_3nom6traitsRShNtB5_5Input22split_at_position_modeINtNtB7_8internal7OutputMNtB1b_4EmitB1x_NtB1b_8CompleteENCINvXs0_NtB7_5bytesINtB2b_13SplitPositionNCNCNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB2S_2PE13parse_section0s1_0INtNtB7_5error5ErrorBw_EEINtB1b_6ParserBw_E7processB18_E0B44_Es_0B2Y_.exit.i.i.i, %bb.hr, %bb.hm, %bb.hc
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread110.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %bb.ge
  %lpad.loopexit.split-lp159.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread110.i

bb.ga:                                            ; preds = %bb.ir, %.lr.ph.i
  %.sroa.023.0490.i = phi i64 [ 0, %.lr.ph.i ], [ %i.zq, %bb.ir ] ; 2 uses
  %.sroa.0.0489.i = phi ptr [ %i.ym, %.lr.ph.i ], [ %i.agm, %bb.ir ] ; 5 uses
  %.sroa.3.0488.i = phi i64 [ %i.yl, %.lr.ph.i ], [ %i.agn, %bb.ir ] ; 6 uses
  %i.zq = add nuw nsw i64 %.sroa.023.0490.i, 1    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !10125
  store ptr %.sroa.0.0489.i, ptr %i.x, align 8, !noalias !10126
  store i64 %.sroa.3.0488.i, ptr %i.yz, align 8, !noalias !10126
  %.not.i.i.i.i.i.i.i = icmp samesign ult i64 %.sroa.3.0488.i, 8 ; 2 uses
  %3 = sub nuw nsw i64 8, %.sroa.3.0488.i
  %.sroa.3.0.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i64 %3, i64 8 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %bb.gf, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.zr = invoke { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.x, i64 noundef 8)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !10127 ; 2 uses

.noexc.i:                                         ; preds = %bb.gb
  %i.zs = extractvalue { ptr, i64 } %i.zr, 1      ; 4 uses
  %i.zt = extractvalue { ptr, i64 } %i.zr, 0      ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !10125
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.zt) ], !noalias !10128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !10129
  store ptr %.sroa.0.0489.i, ptr %i.w, align 8, !noalias !10129
  store i64 8, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i167, align 8, !noalias !10129
  store i64 0, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !10129
  store i64 8, ptr %.sroa.44.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !10129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !10129
  invoke fastcc void @_RNvXs3_NtCs2AhGS15tZfv_4bstr4utf8NtB5_11CharIndicesNtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.v, ptr noalias nofree noundef align 8 dereferenceable(32) %i.w) #32
          to label %.noexc32.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !10127

.noexc32.i:                                       ; preds = %.noexc.i
  %i.zu = load i32, ptr %i.za, align 8, !range !27, !noalias !10129, !noundef !5 ; 2 uses
  %.not5.i.i.i.i.i.i = icmp eq i32 %i.zu, -1
  br i1 %.not5.i.i.i.i.i.i, label %.loopexit186.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc32.i, %.noexc33.i
  %i.zv = phi i32 [ %i.zy, %.noexc33.i ], [ %i.zu, %.noexc32.i ]
  %i.zw = icmp eq i32 %i.zv, 0
  br i1 %i.zw, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.zx = load i64, ptr %i.zb, align 8, !noalias !10129, !noundef !5 ; 3 uses
  %.not2.i.i.i.i.i.i = icmp ugt i64 %i.zx, %.sroa.3.0.i.i.i.i.i.i.i
  br i1 %.not2.i.i.i.i.i.i, label %bb.ge, label %.loopexit186.i.i.i, !prof !28

bb.gd:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !10129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !10129
  invoke fastcc void @_RNvXs3_NtCs2AhGS15tZfv_4bstr4utf8NtB5_11CharIndicesNtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.v, ptr noalias nofree noundef align 8 dereferenceable(32) %i.w) #32
          to label %.noexc33.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !10127

.noexc33.i:                                       ; preds = %bb.gd
  %i.zy = load i32, ptr %i.za, align 8, !range !27, !noalias !10129, !noundef !5 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.zy, -1
  br i1 %.not.i.i.i.i.i.i, label %.loopexit186.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.ge:                                            ; preds = %bb.gc
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.zx, i64 noundef range(i64 0, -9223372036854775808) %.sroa.3.0.i.i.i.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #26
          to label %.noexc34.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !10127

.noexc34.i:                                       ; preds = %bb.ge
  unreachable

bb.gf:                                            ; preds = %bb.ga
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !10125
  br label %bb.is

.loopexit186.i.i.i:                               ; preds = %.noexc33.i, %bb.gc, %.noexc32.i
  %.sroa.3.0.i.i.i.i.i.i = phi i64 [ %i.zx, %bb.gc ], [ 0, %.noexc32.i ], [ 0, %.noexc33.i ] ; 4 uses
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %.sroa.0.0489.i, %bb.gc ], [ inttoptr (i64 1 to ptr), %.noexc32.i ], [ inttoptr (i64 1 to ptr), %.noexc33.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !10129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !10129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !10130
  store ptr %i.zt, ptr %i.u, align 8, !noalias !10131
  store i64 %i.zs, ptr %i.zc, align 8, !noalias !10131
  %i.zz = icmp samesign ult i64 %i.zs, 4
  br i1 %i.zz, label %bb.gi, label %bb.gg

bb.gg:                                            ; preds = %.loopexit186.i.i.i
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zt, i64 %i.zs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !10130
  store ptr %i.zt, ptr %i.t, align 8, !noalias !10130
  store ptr %i.aaa, ptr %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !10130
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !10130
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i.i.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i.i.i: ; preds = %bb.gh, %bb.gg
  %.sroa.0.08.i.i.i.i.i.i.i = phi i32 [ %i.aan, %bb.gh ], [ 0, %bb.gg ] ; 2 uses
  %i.aab = phi i64 [ %.pr.i.i.i.i.i.i.i, %bb.gh ], [ 4, %bb.gg ]
  %i.aac = add i64 %i.aab, -1
  store i64 %i.aac, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !10132, !noalias !10133
  %i.aad = invoke { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %.noexc35.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !10127 ; 2 uses

.noexc35.i:                                       ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i.i.i
  %i.aae = extractvalue { i1, i8 } %i.aad, 0
  br i1 %i.aae, label %bb.gh, label %bb.gj

bb.gh:                                            ; preds = %.noexc35.i
  %i.aaf = extractvalue { i1, i8 } %i.aad, 1
  %i.aag = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !10134, !noalias !10133, !noundef !5 ; 2 uses
  %i.aah = add i64 %i.aag, 1
  store i64 %i.aah, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !10134, !noalias !10133
  %i.aai = zext i8 %i.aaf to i32
  %i.aaj = trunc i64 %i.aag to i32
  %i.aak = shl i32 %i.aaj, 3
  %i.aal = and i32 %i.aak, 24
  %i.aam = shl nuw i32 %i.aai, %i.aal
  %i.aan = add i32 %i.aam, %.sroa.0.08.i.i.i.i.i.i.i ; 2 uses
  %.pr.i.i.i.i.i.i.i = load i64, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !10132, !noalias !10133 ; 2 uses
  %i.aao = icmp eq i64 %.pr.i.i.i.i.i.i.i, 0
  br i1 %i.aao, label %bb.gj, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i.i.i

bb.gi:                                            ; preds = %.loopexit186.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !10130
  br label %bb.is

bb.gj:                                            ; preds = %bb.gh, %.noexc35.i
  %.sroa.0.0.lcssa.i.i.i.i.i.i.i = phi i32 [ %i.aan, %bb.gh ], [ %.sroa.0.08.i.i.i.i.i.i.i, %.noexc35.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !10130
  %i.aap = invoke { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.u, i64 noundef 4)
          to label %.noexc36.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !10127 ; 2 uses

.noexc36.i:                                       ; preds = %bb.gj
  %i.aaq = extractvalue { ptr, i64 } %i.aap, 0    ; 5 uses
  %i.aar = extractvalue { ptr, i64 } %i.aap, 1    ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !10130
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aaq) ], !noalias !10135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !10136
  store ptr %i.aaq, ptr %i.s, align 8, !noalias !10137
  store i64 %i.aar, ptr %i.zd, align 8, !noalias !10137
  %i.aas = icmp samesign ult i64 %i.aar, 4
  br i1 %i.aas, label %bb.gm, label %bb.gk

bb.gk:                                            ; preds = %.noexc36.i
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aaq, i64 %i.aar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !10136
  store ptr %i.aaq, ptr %i.r, align 8, !noalias !10136
  store ptr %i.aat, ptr %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i92.i.i.i, align 8, !noalias !10136
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i94.i.i.i, align 8, !noalias !10136
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i95.i.i.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i95.i.i.i: ; preds = %bb.gl, %bb.gk
  %.sroa.0.08.i.i.i.i96.i.i.i = phi i32 [ %i.abg, %bb.gl ], [ 0, %bb.gk ] ; 2 uses
  %i.aau = phi i64 [ %.pr.i.i.i.i100.i.i.i, %bb.gl ], [ 4, %bb.gk ]
  %i.aav = add i64 %i.aau, -1
  store i64 %i.aav, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i93.i.i.i, align 8, !alias.scope !10138, !noalias !10139
  %i.aaw = invoke { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.r)
          to label %.noexc37.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !10127 ; 2 uses

.noexc37.i:                                       ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i95.i.i.i
  %i.aax = extractvalue { i1, i8 } %i.aaw, 0
  br i1 %i.aax, label %bb.gl, label %bb.gn

bb.gl:                                            ; preds = %.noexc37.i
  %i.aay = extractvalue { i1, i8 } %i.aaw, 1
  %i.aaz = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i94.i.i.i, align 8, !alias.scope !10140, !noalias !10139, !noundef !5 ; 2 uses
  %i.aba = add i64 %i.aaz, 1
  store i64 %i.aba, ptr %.sroa.2.0..sroa_idx.i.i.i.i94.i.i.i, align 8, !alias.scope !10140, !noalias !10139
  %i.abb = zext i8 %i.aay to i32
  %i.abc = trunc i64 %i.aaz to i32
  %i.abd = shl i32 %i.abc, 3
  %i.abe = and i32 %i.abd, 24
  %i.abf = shl nuw i32 %i.abb, %i.abe
  %i.abg = add i32 %i.abf, %.sroa.0.08.i.i.i.i96.i.i.i ; 2 uses
  %.pr.i.i.i.i100.i.i.i = load i64, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i93.i.i.i, align 8, !alias.scope !10138, !noalias !10139 ; 2 uses
  %i.abh = icmp eq i64 %.pr.i.i.i.i100.i.i.i, 0
  br i1 %i.abh, label %bb.gn, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i95.i.i.i

bb.gm:                                            ; preds = %.noexc36.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !10136
  br label %bb.is

bb.gn:                                            ; preds = %bb.gl, %.noexc37.i
  %.sroa.0.0.lcssa.i.i.i.i97.i.i.i = phi i32 [ %i.abg, %bb.gl ], [ %.sroa.0.08.i.i.i.i96.i.i.i, %.noexc37.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !10136
  %i.abi = invoke { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.s, i64 noundef 4)
          to label %.noexc38.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !10127 ; 2 uses

.noexc38.i:                                       ; preds = %bb.gn
  %i.abj = extractvalue { ptr, i64 } %i.abi, 0    ; 5 uses
  %i.abk = extractvalue { ptr, i64 } %i.abi, 1    ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !10136
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.abj) ], !noalias !10135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !10141
  store ptr %i.abj, ptr %i.q, align 8, !noalias !10142
  store i64 %i.abk, ptr %i.ze, align 8, !noalias !10142
  %i.abl = icmp samesign ult i64 %i.abk, 4
  br i1 %i.abl, label %bb.gq, label %bb.go

bb.go:                                            ; preds = %.noexc38.i
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abj, i64 %i.abk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !10141
  store ptr %i.abj, ptr %i.p, align 8, !noalias !10141
  store ptr %i.abm, ptr %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i105.i.i.i, align 8, !noalias !10141
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i107.i.i.i, align 8, !noalias !10141
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i108.i.i.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i108.i.i.i: ; preds = %bb.gp, %bb.go
  %.sroa.0.08.i.i.i.i109.i.i.i = phi i32 [ %i.abz, %bb.gp ], [ 0, %bb.go ] ; 2 uses
  %i.abn = phi i64 [ %.pr.i.i.i.i113.i.i.i, %bb.gp ], [ 4, %bb.go ]
  %i.abo = add i64 %i.abn, -1
  store i64 %i.abo, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i106.i.i.i, align 8, !alias.scope !10143, !noalias !10144
  %i.abp = invoke { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %.noexc39.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !10127 ; 2 uses

.noexc39.i:                                       ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i108.i.i.i
  %i.abq = extractvalue { i1, i8 } %i.abp, 0
  br i1 %i.abq, label %bb.gp, label %bb.gr

bb.gp:                                            ; preds = %.noexc39.i
  %i.abr = extractvalue { i1, i8 } %i.abp, 1
  %i.abs = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i107.i.i.i, align 8, !alias.scope !10145, !noalias !10144, !noundef !5 ; 2 uses
  %i.abt = add i64 %i.abs, 1
  store i64 %i.abt, ptr %.sroa.2.0..sroa_idx.i.i.i.i107.i.i.i, align 8, !alias.scope !10145, !noalias !10144
  %i.abu = zext i8 %i.abr to i32
  %i.abv = trunc i64 %i.abs to i32
  %i.abw = shl i32 %i.abv, 3
  %i.abx = and i32 %i.abw, 24
  %i.aby = shl nuw i32 %i.abu, %i.abx
  %i.abz = add i32 %i.aby, %.sroa.0.08.i.i.i.i109.i.i.i ; 2 uses
  %.pr.i.i.i.i113.i.i.i = load i64, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i106.i.i.i, align 8, !alias.scope !10143, !noalias !10144 ; 2 uses
  %i.aca = icmp eq i64 %.pr.i.i.i.i113.i.i.i, 0
  br i1 %i.aca, label %bb.gr, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i108.i.i.i

bb.gq:                                            ; preds = %.noexc38.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !10141
  br label %bb.is

bb.gr:                                            ; preds = %bb.gp, %.noexc39.i
  %.sroa.0.0.lcssa.i.i.i.i110.i.i.i = phi i32 [ %i.abz, %bb.gp ], [ %.sroa.0.08.i.i.i.i109.i.i.i, %.noexc39.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !10141
  %i.acb = invoke { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.q, i64 noundef 4)
          to label %.noexc40.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !10127 ; 2 uses

.noexc40.i:                                       ; preds = %bb.gr
  %i.acc = extractvalue { ptr, i64 } %i.acb, 0    ; 5 uses
  %i.acd = extractvalue { ptr, i64 } %i.acb, 1    ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !10141
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.acc) ], !noalias !10135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !10146
  store ptr %i.acc, ptr %i.o, align 8, !noalias !10147
  store i64 %i.acd, ptr %i.zf, align 8, !noalias !10147
  %i.ace = icmp samesign ult i64 %i.acd, 4
  br i1 %i.ace, label %bb.gu, label %bb.gs

bb.gs:                                            ; preds = %.noexc40.i
  %i.acf = getelementptr inbounds nuw i8, ptr %i.acc, i64 %i.acd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !10146
  store ptr %i.acc, ptr %i.n, align 8, !noalias !10146
  store ptr %i.acf, ptr %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i118.i.i.i, align 8, !noalias !10146
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i120.i.i.i, align 8, !noalias !10146
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i121.i.i.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i121.i.i.i: ; preds = %bb.gt, %bb.gs
  %.sroa.0.08.i.i.i.i122.i.i.i = phi i32 [ %i.acs, %bb.gt ], [ 0, %bb.gs ] ; 2 uses
  %i.acg = phi i64 [ %.pr.i.i.i.i126.i.i.i, %bb.gt ], [ 4, %bb.gs ]
  %i.ach = add i64 %i.acg, -1
end_hunk_1
