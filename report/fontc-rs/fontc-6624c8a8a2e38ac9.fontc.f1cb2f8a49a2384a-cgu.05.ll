Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fontc-6624c8a8a2e38ac9.fontc.f1cb2f8a49a2384a-cgu.05?download=true
inline.NumInlined: 581
inline.NumDeleted: 205
begin_hunk_0_@_RNvCskL3QWxtyvYA_5fontc15write_font_file:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #16
  unreachable

common.resume:                                    ; preds = %.thread68, %bb.ao, %.body49, %bb.b, %bb.q
  %common.resume.op = phi { ptr, i32 } [ %i.ab, %bb.q ], [ %.pn37, %.body49 ], [ %.pn71, %.thread68 ], [ %lpad.thr_comm.split-lp, %bb.b ], [ %.pn37, %bb.ao ]
  resume { ptr, i32 } %common.resume.op

bb.v:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtBG_3vec3VechEEECskL3QWxtyvYA_5fontc.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span4SpanECskL3QWxtyvYA_5fontc.exit
  ret void

bb.w:                                             ; preds = %bb.l
  store ptr %i.v, ptr %i.b, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.aj = invoke noundef ptr @_RINvNtCs5Xr050g3D4S_3std2fs5writeRNtNtB4_4path7PathBufRINtNtCsgCecv3eZDcN_5alloc3vec3VechEECskL3QWxtyvYA_5fontc(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ai)
          to label %bb.y unwind label %bb.x       ; 3 uses

bb.x:                                             ; preds = %bb.w
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.aa, %bb.x
  %eh.lpad-body = phi { ptr, i32 } [ %i.ak, %bb.x ], [ %i.al, %bb.aa ] ; 3 uses
  br i1 %i.g, label %.body49, label %bb.aq

bb.y:                                             ; preds = %bb.w
  %.not34 = icmp eq ptr %i.aj, null
  br i1 %.not34, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3459
  invoke void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCskL3QWxtyvYA_5fontc(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.ae unwind label %bb.aa, !noalias !3459

bb.aa:                                            ; preds = %bb.z
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskL3QWxtyvYA_5fontc(ptr nonnull %i.aj) #18
          to label %.body unwind label %bb.ab, !noalias !3459

bb.ab:                                            ; preds = %bb.aa
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #16, !noalias !3459
  unreachable

bb.ac:                                            ; preds = %bb.y
  store i64 -1, ptr %0, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ae, %bb.ac
  %i.an = load i64, ptr %i.e, align 8, !range !6
  %.not.i.i44 = icmp eq i64 %i.an, 2
  %or.cond91 = select i1 %i.g, i1 true, i1 %.not.i.i44
  br i1 %or.cond91, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span4SpanECskL3QWxtyvYA_5fontc.exit51, label %bb.af

bb.ae:                                            ; preds = %bb.z
  %.sroa.4.0..sroa_idx61 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx61, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3459
  store i64 36, ptr %0, align 8
  %.sroa.5.0..sroa_idx62 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.aj, ptr %.sroa.5.0..sroa_idx62, align 8
  br label %bb.ad

bb.af:                                            ; preds = %bb.ad
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  invoke void @_RNvMs2_NtCs6CpVowoi7NE_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ao)
          to label %.thread82 unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span4SpanECskL3QWxtyvYA_5fontc.exit51: ; preds = %bb.al, %bb.ak, %.thread82, %bb.am, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !3460)
  call void @llvm.experimental.noalias.scope.decl(metadata !3461)
  %i.aq = load ptr, ptr %i.b, align 8, !alias.scope !3462, !nonnull !5, !noundef !5
  %i.ar = atomicrmw add ptr %i.aq, i64 -1 release, align 8, !noalias !3462
  %i.as = icmp eq i64 %i.ar, 1
  br i1 %i.as, label %bb.ah, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtBG_3vec3VechEEECskL3QWxtyvYA_5fontc.exit

bb.ah:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span4SpanECskL3QWxtyvYA_5fontc.exit51
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtB7_3vec3VechEE9drop_slowCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #17
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtBG_3vec3VechEEECskL3QWxtyvYA_5fontc.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtBG_3vec3VechEEECskL3QWxtyvYA_5fontc.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span4SpanECskL3QWxtyvYA_5fontc.exit51, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.v

.thread82:                                        ; preds = %bb.af
  %.pr87 = load i64, ptr %i.e, align 8, !alias.scope !3463 ; 2 uses
  %.not.i.i47 = icmp eq i64 %.pr87, 2
  br i1 %.not.i.i47, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span4SpanECskL3QWxtyvYA_5fontc.exit51, label %bb.ai

bb.ai:                                            ; preds = %.thread82
  %i.at = load i64, ptr %i.ao, align 8, !range !18, !alias.scope !3464, !noundef !5
  %i.au = invoke noundef zeroext i1 @_RNvMs2_NtCs6CpVowoi7NE_12tracing_core10dispatcherNtB5_8Dispatch9try_close(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.e, i64 noundef %i.at)
          to label %bb.ak unwind label %bb.aj     ; 0 uses

bb.aj:                                            ; preds = %bb.ai
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCseSYDGaa5U8h_7tracing4span5InnerEECskL3QWxtyvYA_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e) #18
          to label %.body49 unwind label %bb.an

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.experimental.noalias.scope.decl(metadata !3465)
  call void @llvm.experimental.noalias.scope.decl(metadata !3466)
  call void @llvm.experimental.noalias.scope.decl(metadata !3467)
  call void @llvm.experimental.noalias.scope.decl(metadata !3468)
  %i.aw = icmp eq i64 %.pr87, 0
  br i1 %i.aw, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span4SpanECskL3QWxtyvYA_5fontc.exit51, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3469)
  call void @llvm.experimental.noalias.scope.decl(metadata !3470)
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !3471, !nonnull !5, !noundef !5
  %i.az = atomicrmw add ptr %i.ay, i64 -1 release, align 8, !noalias !3472
  %i.ba = icmp eq i64 %i.az, 1
  br i1 %i.ba, label %bb.am, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span4SpanECskL3QWxtyvYA_5fontc.exit51

bb.am:                                            ; preds = %bb.al
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcDNtNtCs6CpVowoi7NE_12tracing_core10subscriber10SubscriberNtNtCsf3Ta7LF998c_4core6marker4SendNtB1D_4SyncEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ax) #17
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span4SpanECskL3QWxtyvYA_5fontc.exit51 unwind label %bb.ap

bb.an:                                            ; preds = %bb.aj
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #16
  unreachable

.body49:                                          ; preds = %bb.ap, %bb.aj, %.body, %bb.at
  %.pn37 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %.pn35.ph, %bb.at ], [ %i.bf, %bb.ap ], [ %i.av, %bb.aj ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3473)
  call void @llvm.experimental.noalias.scope.decl(metadata !3474)
  %i.bc = load ptr, ptr %i.b, align 8, !alias.scope !3475, !nonnull !5, !noundef !5
  %i.bd = atomicrmw add ptr %i.bc, i64 -1 release, align 8, !noalias !3475
  %i.be = icmp eq i64 %i.bd, 1
  br i1 %i.be, label %bb.ao, label %common.resume

bb.ao:                                            ; preds = %.body49
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtB7_3vec3VechEE9drop_slowCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #17
          to label %common.resume unwind label %bb.as

bb.ap:                                            ; preds = %bb.am
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %.body49

bb.aq:                                            ; preds = %.body
  %i.bg = load i64, ptr %i.e, align 8, !range !6, !noalias !3476, !noundef !5
  %.not.i.i54 = icmp eq i64 %i.bg, 2
  br i1 %.not.i.i54, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  invoke void @_RNvMs2_NtCs6CpVowoi7NE_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bh)
          to label %bb.at unwind label %bb.as

bb.as:                                            ; preds = %bb.av, %bb.ar, %bb.ao, %.thread68, %bb.at
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.at:                                            ; preds = %bb.ag, %bb.ar, %bb.aq
  %.pn35.ph = phi { ptr, i32 } [ %i.ap, %bb.ag ], [ %eh.lpad-body, %bb.ar ], [ %eh.lpad-body, %bb.aq ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span4SpanECskL3QWxtyvYA_5fontc(ptr noalias nofree noundef align 8 dereferenceable(40) %i.e) #18
          to label %.body49 unwind label %bb.as

bb.au:                                            ; preds = %bb.b
  %i.bj = load i64, ptr %i.e, align 8, !range !6, !noalias !3477, !noundef !5
  %.not.i.i57 = icmp eq i64 %i.bj, 2
  br i1 %.not.i.i57, label %.thread68, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.bk = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  invoke void @_RNvMs2_NtCs6CpVowoi7NE_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bk)
          to label %.thread68 unwind label %bb.as

.thread68:                                        ; preds = %bb.au, %bb.av, %bb.o
  %.pn71 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.au ], [ %i.y, %bb.o ], [ %lpad.thr_comm.split-lp, %bb.av ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span4SpanECskL3QWxtyvYA_5fontc(ptr noalias nofree noundef align 8 dereferenceable(40) %i.e) #18
          to label %common.resume unwind label %bb.as
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvCskL3QWxtyvYA_5fontc22generate_font_internal(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(2488) %0, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 6 uses
  %i.b = alloca [96 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.842 = alloca [88 x i8], align 8          ; 3 uses
  %i.d = alloca [2488 x i8], align 8              ; 5 uses
  %i.e = alloca [328 x i8], align 8               ; 4 uses
  %i.f = alloca [96 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [1952 x i8], align 8              ; 8 uses
  %i.k = alloca [536 x i8], align 8               ; 9 uses
  %i.l = alloca [328 x i8], align 8               ; 7 uses
  %.sroa.6 = alloca [96 x i8], align 8            ; 6 uses
  %i.m = alloca [328 x i8], align 8               ; 8 uses
  %i.n = alloca [40 x i8], align 8                ; 8 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [8 x i8], align 8                 ; 7 uses
  store ptr %3, ptr %i.p, align 8
  %i.q = load atomic i64, ptr @_RNvCsksibNCz2yVN_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.r = icmp ult i64 %i.q, 6
  tail call void @llvm.assume(i1 %i.r)
  %i.s = icmp samesign ugt i64 %i.q, 3
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %i.p, ptr %i.o, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtCskL3QWxtyvYA_5fontc7OptionsNtB6_5Debug3fmtBy_, ptr %.sroa.412.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr @3, ptr %i.n, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 5, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr @3, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i64 5, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr @7, ptr %i.w, align 8
  invoke void @_RINvNtCsksibNCz2yVN_3log13___private_api3loguNtB2_12GlobalLoggerECskL3QWxtyvYA_5fontc(ptr noundef nonnull @6, ptr noundef nonnull %i.o, i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.n)
          to label %bb.l unwind label %bb.au

bb.c:                                             ; preds = %bb.a, %bb.l
  %i.x = phi ptr [ %3, %bb.a ], [ %.pre, %bb.l ]  ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3490)
  %i.y = load i64, ptr %i.x, align 8, !range !4, !alias.scope !3490, !noundef !5
  %.not.i = icmp eq i64 %i.y, -1
  br i1 %.not.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !3490, !nonnull !5, !noundef !5
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !3490, !noundef !5
  %i.ad = invoke { ptr, i64 } @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path6parent(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef %i.ac)
          to label %.noexc unwind label %bb.au    ; 2 uses

.noexc:                                           ; preds = %bb.d
  %i.ae = extractvalue { ptr, i64 } %i.ad, 0      ; 2 uses
  %.not5.i = icmp eq ptr %i.ae, null
  br i1 %.not5.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %.noexc
  %i.af = extractvalue { ptr, i64 } %i.ad, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3491
  invoke void @_RNvCskL3QWxtyvYA_5fontc11require_dir(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ae, i64 noundef %i.af)
          to label %.noexc29 unwind label %bb.au

.noexc29:                                         ; preds = %bb.e
  %i.ag = load i64, ptr %i.b, align 8, !range !7, !noalias !3491, !noundef !5 ; 2 uses
  %.not6.i = icmp eq i64 %i.ag, -1
  br i1 %.not6.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.noexc29
  %.sroa.842.0..sroa_idx43 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.842, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.842.0..sroa_idx43, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3491
  br label %_RNvCskL3QWxtyvYA_5fontc10init_paths.exit.a

bb.g:                                             ; preds = %.noexc29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3491
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.noexc, %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.ai = load i64, ptr %i.ah, align 8, !range !4, !alias.scope !3490, !noundef !5
  %.not7.i = icmp eq i64 %i.ai, -1
  br i1 %.not7.i, label %bb.r, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3491
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !3490, !nonnull !5, !noundef !5
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !3490, !noundef !5
  invoke void @_RNvCskL3QWxtyvYA_5fontc11require_dir(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ak, i64 noundef %i.am)
          to label %.noexc30 unwind label %bb.au

.noexc30:                                         ; preds = %bb.i
  %i.an = load i64, ptr %i.a, align 8, !range !7, !noalias !3491, !noundef !5 ; 2 uses
  %.not8.i = icmp eq i64 %i.an, -1
  br i1 %.not8.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.noexc30
  %.sroa.842.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.842, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.842.0..sroa_idx44, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3491
  br label %_RNvCskL3QWxtyvYA_5fontc10init_paths.exit.a

bb.k:                                             ; preds = %.noexc30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3491
  br label %bb.r

bb.l:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %.pre = load ptr, ptr %i.p, align 8
  br label %bb.c

_RNvCskL3QWxtyvYA_5fontc10init_paths.exit.a:      ; preds = %bb.f, %bb.j
  %.sroa.039.0 = phi i64 [ %i.ag, %bb.f ], [ %i.an, %bb.j ]
  store i64 %.sroa.039.0, ptr %0, align 8
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.454.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.842, i64 88, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i64 2, ptr %i.ao, align 8
  %i.ap = load ptr, ptr %2, align 8, !invariant.load !5 ; 2 uses
  %.not.i31 = icmp eq ptr %i.ap, null
  br i1 %.not.i31, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_RNvCskL3QWxtyvYA_5fontc10init_paths.exit.a
  invoke void %i.ap(ptr noundef nonnull %1)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m, %_RNvCskL3QWxtyvYA_5fontc10init_paths.exit.a
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !range !15, !invariant.load !5 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtCs3v5ql5U6hxj_6fontir6source6SourceEL_EECskL3QWxtyvYA_5fontc.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.au = load i64, ptr %i.at, align 8, !range !16, !invariant.load !5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef range(i64 1, -9223372036854775808) %i.ar, i64 noundef range(i64 1, 536870913) %i.au) #19
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtCs3v5ql5U6hxj_6fontir6source6SourceEL_EECskL3QWxtyvYA_5fontc.exit

bb.p:                                             ; preds = %bb.m
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !range !15, !invariant.load !5 ; 2 uses
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %common.resume, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !range !16, !invariant.load !5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef range(i64 1, -9223372036854775808) %i.ax, i64 noundef range(i64 1, 536870913) %i.ba) #19
  br label %common.resume

common.resume:                                    ; preds = %bb.au, %bb.at, %bb.v, %bb.p, %bb.q
  %common.resume.op = phi { ptr, i32 } [ %i.av, %bb.p ], [ %i.av, %bb.q ], [ %.pn, %bb.v ], [ %lpad.thr_comm, %bb.au ], [ %.pn2065, %bb.at ]
  resume { ptr, i32 } %common.resume.op

bb.r:                                             ; preds = %bb.k, %bb.h
  %i.bb = load ptr, ptr %i.p, align 8, !nonnull !5, !align !19, !noundef !5 ; 2 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 48
  %.val26 = load i32, ptr %i.bc, align 8, !noundef !5
  %i.bd = getelementptr i8, ptr %i.bb, i64 52
  %.val27 = load i32, ptr %i.bd, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.val28 = load ptr, ptr %i.be, align 8
  %i.bf = invoke noundef i32 %.val28(ptr noundef nonnull %1) #21
          to label %bb.s unwind label %bb.au, !inline_history !3481

bb.s:                                             ; preds = %bb.r
  %i.bg = or i32 %i.bf, %.val26
  %i.bh = and i32 %.val27, 2012
  %i.bi = xor i32 %i.bh, 2012
  %i.bj = and i32 %i.bg, %i.bi                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.bk = load ptr, ptr %i.p, align 8, !nonnull !5, !align !19, !noundef !5
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  %i.bm = load i8, ptr %i.bl, align 8, !range !20, !noundef !5
  %i.bn = trunc nuw i8 %i.bm to i1
  call void @_RNvMNtCskL3QWxtyvYA_5fontc8workloadNtB2_8Workload3new(ptr noalias nofree noundef nonnull sret([328 x i8]) align 8 captures(none) dereferenceable(328) %i.l, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %2, i1 noundef zeroext %i.bn)
  %i.bo = load i64, ptr %i.l, align 8, !range !3492, !noundef !5 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, -2
  %i.bq = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(96) %i.bq, i64 96, i1 false)
  br i1 %i.bp, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.6, i64 96, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i64 2, ptr %i.br, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.ap

bb.u:                                             ; preds = %bb.s
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 104
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(224) %.sroa.515.0..sroa_idx, i64 224, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.6, i64 96, i1 false)
  store i64 %i.bo, ptr %i.m, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @_RNvMs5_NtCs3v5ql5U6hxj_6fontir13orchestrationNtB5_7Context8new_root(ptr noalias nofree noundef nonnull sret([536 x i8]) align 8 captures(none) dereferenceable(536) %i.k, i32 noundef %i.bj)
          to label %bb.w unwind label %.split.thread

.split.thread:                                    ; preds = %bb.u
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.v:                                             ; preds = %.body
  br i1 %.sroa.08.2, label %bb.at, label %common.resume

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvNtCskL3QWxtyvYA_5fontc7version14version_string(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 12, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 5)
          to label %_RNvCskL3QWxtyvYA_5fontc7version.exit unwind label %bb.x

.body:                                            ; preds = %bb.ar, %bb.as, %bb.ah, %bb.y, %bb.ab, %bb.x, %bb.ak
  %.pn = phi { ptr, i32 } [ %i.cr, %bb.ah ], [ %i.cs, %bb.ak ], [ %i.bz, %bb.y ], [ %i.bt, %bb.x ], [ %i.ce, %bb.ab ], [ %i.cx, %bb.as ], [ %i.cx, %bb.ar ] ; 2 uses
  %.sroa.08.2 = phi i1 [ true, %bb.ah ], [ false, %bb.ak ], [ true, %bb.y ], [ %.sroa.08.3, %bb.x ], [ true, %bb.ab ], [ true, %bb.as ], [ true, %bb.ar ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir13orchestration7ContextECskL3QWxtyvYA_5fontc(ptr noalias nofree noundef align 8 dereferenceable(536) %i.k) #18
          to label %bb.v unwind label %bb.aq

bb.x:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECskL3QWxtyvYA_5fontc.exit.i, %bb.w, %bb.am
  %.sroa.08.3 = phi i1 [ false, %bb.am ], [ true, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECskL3QWxtyvYA_5fontc.exit.i ], [ true, %bb.w ]
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RNvCskL3QWxtyvYA_5fontc7version.exit:            ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !3493)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !alias.scope !3493, !nonnull !5, !noundef !5
  %i.bw = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !alias.scope !3493, !noundef !5
  %i.by = invoke { ptr, i64 } @_RNvMsq_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcShE15copy_from_sliceCskL3QWxtyvYA_5fontc(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bv, i64 noundef %i.bx)
          to label %bb.z unwind label %bb.y, !noalias !3493 ; 2 uses

bb.y:                                             ; preds = %bb.z, %_RNvCskL3QWxtyvYA_5fontc7version.exit
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECskL3QWxtyvYA_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #18
          to label %.body unwind label %bb.ad

bb.z:                                             ; preds = %_RNvCskL3QWxtyvYA_5fontc7version.exit
  %i.ca = extractvalue { ptr, i64 } %i.by, 0      ; 2 uses
  %i.cb = extractvalue { ptr, i64 } %i.by, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ca) ]
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 16 ; 2 uses
  %i.cd = invoke noundef i64 @_RINvNtCsgCecv3eZDcN_5alloc4sync11data_offseteECskL3QWxtyvYA_5fontc(ptr noundef nonnull %i.cc, i64 noundef %i.cb)
          to label %bb.aa unwind label %bb.y, !noalias !3493

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskL3QWxtyvYA_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECskL3QWxtyvYA_5fontc.exit.i unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskL3QWxtyvYA_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECskL3QWxtyvYA_5fontc.exit.i: ; preds = %bb.aa
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskL3QWxtyvYA_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RNvXs1a_NtCsgCecv3eZDcN_5alloc4syncINtB6_3ArceEINtNtCsf3Ta7LF998c_4core7convert4FromNtNtB8_6string6StringE4from.exit unwind label %bb.x

bb.ad:                                            ; preds = %bb.y
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #16
  unreachable

_RNvXs1a_NtCsgCecv3eZDcN_5alloc4syncINtB6_3ArceEINtNtCsf3Ta7LF998c_4core7convert4FromNtNtB8_6string6StringE4from.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECskL3QWxtyvYA_5fontc.exit.i
  %i.ch = sub nsw i64 0, %i.cd
  %i.ci = getelementptr inbounds i8, ptr %i.cc, i64 %i.ch ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  store ptr %i.ci, ptr %i.i, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.cb, ptr %i.cj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ck = load ptr, ptr %i.p, align 8, !nonnull !5, !align !19, !noundef !5 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24 ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !range !4, !noundef !5
  %.not17 = icmp eq i64 %i.cm, -1
  br i1 %.not17, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_RNvXs1a_NtCsgCecv3eZDcN_5alloc4syncINtB6_3ArceEINtNtCsf3Ta7LF998c_4core7convert4FromNtNtB8_6string6StringE4from.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCskL3QWxtyvYA_5fontc(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cl)
          to label %bb.ai unwind label %bb.ar

bb.af:                                            ; preds = %_RNvXs1a_NtCsgCecv3eZDcN_5alloc4syncINtB6_3ArceEINtNtCsf3Ta7LF998c_4core7convert4FromNtNtB8_6string6StringE4from.exit
  store i64 -1, ptr %i.g, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ai, %bb.af
  %i.cn = phi ptr [ %.pre69, %bb.ai ], [ %i.ck, %bb.af ]
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 57
  %i.cp = load i8, ptr %i.co, align 1, !range !20, !noundef !5
  %i.cq = trunc nuw i8 %i.cp to i1
  invoke void @_RNvMse_NtCshxhuDJfZv4T_6fontbe13orchestrationNtB5_7Context8new_root(ptr noalias nofree noundef nonnull sret([1952 x i8]) align 8 captures(none) dereferenceable(1952) %i.j, i32 noundef %i.bj, ptr noundef nonnull %i.ci, i64 %i.cb, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g, i1 noundef zeroext %i.cq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(536) %i.k)
          to label %bb.aj unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ai:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.pre69 = load ptr, ptr %i.p, align 8
  br label %bb.ag

bb.aj:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.e, ptr noundef nonnull align 8 dereferenceable(328) %i.m, i64 328, i1 false)
  invoke void @_RNvMNtCskL3QWxtyvYA_5fontc8workloadNtB2_8Workload4exec(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(328) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(536) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1952) %i.j)
          to label %bb.al unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration7ContextECskL3QWxtyvYA_5fontc(ptr noalias nofree noundef align 8 dereferenceable(1952) %i.j) #18
          to label %.body unwind label %bb.aq

bb.al:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ct = load i64, ptr %i.f, align 8, !range !7, !noundef !5
  %.not18 = icmp eq i64 %i.ct, -1
  br i1 %.not18, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %i.f, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i64 2, ptr %i.cu, align 8
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration7ContextECskL3QWxtyvYA_5fontc(ptr noalias nofree noundef align 8 dereferenceable(1952) %i.j)
          to label %bb.ao unwind label %bb.x

bb.an:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
end_hunk_0
