Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.09?download=true
inline.NumInlined: 2082
inline.NumDeleted: 649
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_RNvMs_NtCs8frGy5WneL6_4fish8terminalNtB4_9Outputter13write_command:bb.a
bb.ae:                                            ; preds = %bb.d
  call fastcc void @_RNvNvMs_NtCs8frGy5WneL6_4fish8terminalNtB6_9Outputter13write_command5write(ptr noalias nofree noundef align 8 dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @326, i64 noundef 3)
  br label %bb.bl

bb.af:                                            ; preds = %bb.d
  call fastcc void @_RNvNvMs_NtCs8frGy5WneL6_4fish8terminalNtB6_9Outputter13write_command5write(ptr noalias nofree noundef align 8 dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @112, i64 noundef 1)
  br label %bb.bl

bb.ag:                                            ; preds = %bb.d
  call fastcc void @_RNvNvMs_NtCs8frGy5WneL6_4fish8terminalNtB6_9Outputter13write_command5write(ptr noalias nofree noundef align 8 dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @327, i64 noundef 1)
  br label %bb.bl

bb.ah:                                            ; preds = %bb.d
  call fastcc void @_RNvNvMs_NtCs8frGy5WneL6_4fish8terminalNtB6_9Outputter13write_command5write(ptr noalias nofree noundef align 8 dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @328, i64 noundef 3)
  br label %bb.bl

bb.ai:                                            ; preds = %bb.d
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.bv = load i8, ptr %i.bu, align 1, !range !8, !noundef !4
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !4
  call fastcc void @_RNvNtCs8frGy5WneL6_4fish8terminal11cursor_move(ptr noalias nofree noundef align 8 dereferenceable(56) %0, i8 noundef %i.bv, i64 noundef %i.bx)
  br label %bb.bl

bb.aj:                                            ; preds = %bb.d
  call fastcc void @_RNvNvMs_NtCs8frGy5WneL6_4fish8terminalNtB6_9Outputter13write_command5write(ptr noalias nofree noundef align 8 dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @329, i64 noundef 4)
  br label %bb.bl

bb.ak:                                            ; preds = %bb.d
  call fastcc void @_RNvNvMs_NtCs8frGy5WneL6_4fish8terminalNtB6_9Outputter13write_command5write(ptr noalias nofree noundef align 8 dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @330, i64 noundef 5)
  br label %bb.bl

bb.al:                                            ; preds = %bb.d
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !nonnull !4, !noundef !4
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2499
  store ptr %i.bz, ptr %i.d, align 8, !noalias !2499
  %i.cc = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.cb, ptr %i.cc, align 8, !noalias !2499
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2499
  store ptr %i.d, ptr %i.c, align 8, !noalias !2499
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXNtCs8frGy5WneL6_4fish8terminalNtB2_12DisplayAsHexNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !2499
  call void @_RNvNtCs8frGy5WneL6_4fish6common18do_write_to_output(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull @510, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2499
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2499
  br label %bb.bl

bb.am:                                            ; preds = %bb.d
  call fastcc void @_RNvNvMs_NtCs8frGy5WneL6_4fish8terminalNtB6_9Outputter13write_command5write(ptr noalias nofree noundef align 8 dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @331, i64 noundef 8)
  br label %bb.bl

bb.an:                                            ; preds = %bb.d
  call fastcc void @_RNvNvMs_NtCs8frGy5WneL6_4fish8terminalNtB6_9Outputter13write_command5write(ptr noalias nofree noundef align 8 dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @332, i64 noundef 8)
  br label %bb.bl

bb.ao:                                            ; preds = %bb.d
  call fastcc void @_RNvNvMs_NtCs8frGy5WneL6_4fish8terminalNtB6_9Outputter13write_command5write(ptr noalias nofree noundef align 8 dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @333, i64 noundef 5)
  br label %bb.bl

bb.ap:                                            ; preds = %bb.d
  call fastcc void @_RNvNvMs_NtCs8frGy5WneL6_4fish8terminalNtB6_9Outputter13write_command5write(ptr noalias nofree noundef align 8 dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @334, i64 noundef 5)
  br label %bb.bl

bb.aq:                                            ; preds = %bb.d
  %i.cd = call fastcc noundef zeroext i1 @_RNvNtCs8frGy5WneL6_4fish8terminal36query_kitty_progressive_enhancements(ptr noalias nofree noundef align 8 dereferenceable(56) %0)
  br label %bb.bl

bb.ar:                                            ; preds = %bb.d
  call fastcc void @_RNvNvMs_NtCs8frGy5WneL6_4fish8terminalNtB6_9Outputter13write_command5write(ptr noalias nofree noundef align 8 dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @335, i64 noundef 7)
  br label %bb.bl

bb.as:                                            ; preds = %bb.d
  call fastcc void @_RNvNvMs_NtCs8frGy5WneL6_4fish8terminalNtB6_9Outputter13write_command5write(ptr noalias nofree noundef align 8 dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @336, i64 noundef 7)
  br label %bb.bl

bb.at:                                            ; preds = %bb.d
  call fastcc void @_RNvNvMs_NtCs8frGy5WneL6_4fish8terminalNtB6_9Outputter13write_command5write(ptr noalias nofree noundef align 8 dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @337, i64 noundef 2)
  br label %bb.bl

bb.au:                                            ; preds = %bb.d
  call fastcc void @_RNvNvMs_NtCs8frGy5WneL6_4fish8terminalNtB6_9Outputter13write_command5write(ptr noalias nofree noundef align 8 dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @338, i64 noundef 2)
  br label %bb.bl

bb.av:                                            ; preds = %bb.d
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !nonnull !4, !align !13, !noundef !4
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ch = load i64, ptr %i.cg, align 8, !noundef !4
  call fastcc void @_RNvNtCs8frGy5WneL6_4fish8terminal25osc_0_or_1_terminal_title(ptr noalias nofree noundef align 8 dereferenceable(56) %0, i1 noundef zeroext false, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.cf, i64 noundef %i.ch)
  br label %bb.bl

bb.aw:                                            ; preds = %bb.d
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !nonnull !4, !align !13, !noundef !4
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !noundef !4
  call fastcc void @_RNvNtCs8frGy5WneL6_4fish8terminal25osc_0_or_1_terminal_title(ptr noalias nofree noundef align 8 dereferenceable(56) %0, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.cj, i64 noundef %i.cl)
  br label %bb.bl

bb.ax:                                            ; preds = %bb.d
  %i.cm = call fastcc noundef zeroext i1 @_RNvNtCs8frGy5WneL6_4fish8terminal20osc_133_prompt_start(ptr noalias nofree noundef align 8 dereferenceable(56) %0)
  br label %bb.bl

bb.ay:                                            ; preds = %bb.d
  %i.cn = call fastcc noundef zeroext i1 @_RNvNtCs8frGy5WneL6_4fish8terminal18osc_133_prompt_end(ptr noalias nofree noundef align 8 dereferenceable(56) %0)
  br label %bb.bl

bb.az:                                            ; preds = %bb.d
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !nonnull !4, !align !24, !noundef !4
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !noundef !4
  %i.cs = call fastcc noundef zeroext i1 @_RNvNtCs8frGy5WneL6_4fish8terminal21osc_133_command_start(ptr noalias nofree noundef align 8 dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.cp, i64 noundef %i.cr)
  br label %bb.bl

bb.ba:                                            ; preds = %bb.d
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cu = load i32, ptr %i.ct, align 4, !noundef !4
  %i.cv = call fastcc noundef zeroext i1 @_RNvNtCs8frGy5WneL6_4fish8terminal24osc_133_command_finished(ptr noalias nofree noundef align 8 dereferenceable(56) %0, i32 noundef %i.cu)
  br label %bb.bl

bb.bb:                                            ; preds = %bb.d
  call fastcc void @_RNvNvMs_NtCs8frGy5WneL6_4fish8terminalNtB6_9Outputter13write_command5write(ptr noalias nofree noundef align 8 dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @339, i64 noundef 4)
  br label %bb.bl

bb.bc:                                            ; preds = %bb.d
  call fastcc void @_RNvNvMs_NtCs8frGy5WneL6_4fish8terminalNtB6_9Outputter13write_command5write(ptr noalias nofree noundef align 8 dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @340, i64 noundef 8)
  br label %bb.bl

bb.bd:                                            ; preds = %bb.d
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cx = load i64, ptr %i.cw, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.cx, ptr %i.b, align 8, !noalias !2500
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2500
  store ptr %i.b, ptr %i.a, align 8, !noalias !2500
  %.sroa.42.0..sroa_idx.i18 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i18, align 8, !noalias !2500
  call void @_RNvNtCs8frGy5WneL6_4fish6common18do_write_to_output(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull @511, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2500
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.bl

bb.be:                                            ; preds = %bb.d
  call fastcc void @_RNvNvMs_NtCs8frGy5WneL6_4fish8terminalNtB6_9Outputter13write_command5write(ptr noalias nofree noundef align 8 dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @341, i64 noundef 6)
  br label %bb.bl

bb.bf:                                            ; preds = %bb.d
  call fastcc void @_RNvNvMs_NtCs8frGy5WneL6_4fish8terminalNtB6_9Outputter13write_command5write(ptr noalias nofree noundef align 8 dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @342, i64 noundef 8)
  br label %bb.bl

bb.bg:                                            ; preds = %bb.d
  call fastcc void @_RNvNvMs_NtCs8frGy5WneL6_4fish8terminalNtB6_9Outputter13write_command5write(ptr noalias nofree noundef align 8 dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @343, i64 noundef 8)
  br label %bb.bl

bb.bh:                                            ; preds = %bb.d
  call fastcc void @_RNvNvMs_NtCs8frGy5WneL6_4fish8terminalNtB6_9Outputter13write_command5write(ptr noalias nofree noundef align 8 dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @344, i64 noundef 8)
  br label %bb.bl

bb.bi:                                            ; preds = %bb.d
  call fastcc void @_RNvNvMs_NtCs8frGy5WneL6_4fish8terminalNtB6_9Outputter13write_command5write(ptr noalias nofree noundef align 8 dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @345, i64 noundef 8)
  br label %bb.bl

bb.bj:                                            ; preds = %bb.d
  call fastcc void @_RNvNvMs_NtCs8frGy5WneL6_4fish8terminalNtB6_9Outputter13write_command5write(ptr noalias nofree noundef align 8 dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @346, i64 noundef 8)
  br label %bb.bl

bb.bk:                                            ; preds = %bb.d
  call fastcc void @_RNvNvMs_NtCs8frGy5WneL6_4fish8terminalNtB6_9Outputter13write_command5write(ptr noalias nofree noundef align 8 dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @347, i64 noundef 8)
  br label %bb.bl

bb.bl:                                            ; preds = %bb.c, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab
  %.sroa.0.0.shrunk = phi i1 [ true, %bb.bk ], [ true, %bb.ab ], [ true, %bb.ac ], [ true, %bb.ad ], [ true, %bb.ae ], [ true, %bb.af ], [ true, %bb.ag ], [ true, %bb.ah ], [ true, %bb.ai ], [ true, %bb.aj ], [ true, %bb.ak ], [ true, %bb.al ], [ true, %bb.am ], [ true, %bb.an ], [ true, %bb.ao ], [ true, %bb.ap ], [ %i.cd, %bb.aq ], [ true, %bb.ar ], [ true, %bb.as ], [ true, %bb.at ], [ true, %bb.au ], [ true, %bb.av ], [ true, %bb.aw ], [ %i.cm, %bb.ax ], [ %i.cn, %bb.ay ], [ %i.cs, %bb.az ], [ %i.cv, %bb.ba ], [ true, %bb.bb ], [ true, %bb.bc ], [ true, %bb.bd ], [ true, %bb.be ], [ true, %bb.bf ], [ true, %bb.bg ], [ true, %bb.bh ], [ true, %bb.bi ], [ true, %bb.bj ], [ false, %bb.c ]
  ret i1 %.sroa.0.0.shrunk

bb.bm:                                            ; preds = %bb.p
  unreachable

bb.bn:                                            ; preds = %bb.n, %.body
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.bo:                                            ; preds = %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @348, i64 noundef 44, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @349) #38
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCs8frGy5WneL6_4fish8terminalNtB4_9Outputter15begin_buffering(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %1, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add nuw i32 %i.b, 1
  store i32 %i.d, ptr %i.a, align 8
  ret void

1:                                                ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @350) #38
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCs8frGy5WneL6_4fish8terminalNtB4_9Outputter15reset_text_face(ptr noalias nofree noundef align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 0, ptr %i.b, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2503)
  %i.c = invoke fastcc noundef zeroext i1 @_RNvMs4_NtCs8frGy5WneL6_4fish8terminalNtB5_20OutputterStyleWriter13write_command(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, i32 3)
          to label %bb.c unwind label %bb.b       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtCs8frGy5WneL6_4fish8terminalNtB5_20OutputterStyleWriterNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8terminal20OutputterStyleWriterEBF_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !alias.scope !2503, !nonnull !4, !align !13, !noundef !4 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store <4 x i8> <i8 0, i8 0, i8 1, i8 1>, ptr %i.f, align 8, !noalias !2503
  %.sroa.06.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  store i8 1, ptr %.sroa.06.sroa.7.0..sroa_idx.i, align 4, !noalias !2503
  %.sroa.06.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 37
  store i8 6, ptr %.sroa.06.sroa.8.0..sroa_idx.i, align 1, !noalias !2503
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 38
  store i8 3, ptr %.sroa.47.0..sroa_idx.i, align 2, !noalias !2503
  %.sroa.68.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 42
  store i8 3, ptr %.sroa.68.0..sroa_idx.i, align 2, !noalias !2503
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 46
  store i8 3, ptr %.sroa.8.0..sroa_idx.i, align 2, !noalias !2503
  call void @_RNvXs5_NtCs8frGy5WneL6_4fish8terminalNtB5_20OutputterStyleWriterNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8terminal20OutputterStyleWriterEBF_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtCs8frGy5WneL6_4fish8terminalNtB4_9Outputter22set_text_face_internal(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly align 1 captures(none) dead_on_return dereferenceable(18) %1, i1 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [6 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 31 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.d = load i32, ptr %i.c, align 1              ; 4 uses
  %.sroa.0.0.extract.trunc158 = trunc i32 %i.d to i8 ; 4 uses
  %.sroa.11.0.extract.shift163 = lshr i32 %i.d, 8
  %.sroa.11.0.extract.trunc164 = trunc i32 %.sroa.11.0.extract.shift163 to i8 ; 4 uses
  %.sroa.15.0.extract.shift172 = lshr i32 %i.d, 16
  %.sroa.15.0.extract.trunc173 = trunc i32 %.sroa.15.0.extract.shift172 to i8 ; 4 uses
  %.sroa.17.0.extract.shift179 = lshr i32 %i.d, 24 ; 2 uses
  %.sroa.17.0.extract.trunc180 = trunc nuw i32 %.sroa.17.0.extract.shift179 to i8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.f = load i32, ptr %i.e, align 1
  %.fr = freeze i32 %i.f                          ; 6 uses
  %.sroa.0182.0.extract.trunc = trunc i32 %.fr to i8 ; 6 uses
  %.sroa.10.0.extract.shift = lshr i32 %.fr, 8
  %.sroa.10.0.extract.trunc = trunc i32 %.sroa.10.0.extract.shift to i8 ; 4 uses
  %.sroa.16.0.extract.shift = lshr i32 %.fr, 16
  %.sroa.16.0.extract.trunc = trunc i32 %.sroa.16.0.extract.shift to i8 ; 2 uses
  %.sroa.19.0.extract.shift = lshr i32 %.fr, 24   ; 2 uses
  %.sroa.19.0.extract.trunc = trunc nuw i32 %.sroa.19.0.extract.shift to i8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.h = load i32, ptr %i.g, align 1              ; 6 uses
  %.sroa.0212.0.extract.trunc = trunc i32 %i.h to i8 ; 4 uses
  %.sroa.7.0.extract.shift = lshr i32 %i.h, 8
  %.sroa.7.0.extract.trunc = trunc i32 %.sroa.7.0.extract.shift to i8 ; 2 uses
  %.sroa.9.0.extract.shift = lshr i32 %i.h, 16
  %.sroa.9.0.extract.trunc = trunc i32 %.sroa.9.0.extract.shift to i8
  %.sroa.10227.0.extract.shift = lshr i32 %i.h, 24
  %.sroa.10227.0.extract.trunc = trunc nuw i32 %.sroa.10227.0.extract.shift to i8
  %.sroa.0.0.copyload = load i16, ptr %1, align 1 ; 3 uses
  %i.i = zext i16 %.sroa.0.0.copyload to i48
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.sroa.6.0.copyload = load i8, ptr %.sroa.6.0..sroa_idx, align 1 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 3
  %.sroa.7.0.copyload = load i8, ptr %.sroa.7.0..sroa_idx, align 1 ; 4 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.8.0.copyload = load i8, ptr %.sroa.8.0..sroa_idx, align 1 ; 4 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 5
  %.sroa.9.0.copyload = load i8, ptr %.sroa.9.0..sroa_idx, align 1 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 0, ptr %i.j, align 8
  br i1 %3, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_RNvMs4_NtCs8frGy5WneL6_4fish8terminalNtB5_20OutputterStyleWriter15reset_text_face.exit, %bb.a
  %i.k = phi ptr [ %i.o, %_RNvMs4_NtCs8frGy5WneL6_4fish8terminalNtB5_20OutputterStyleWriter15reset_text_face.exit ], [ %0, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.018.0.copyload = load i16, ptr %i.l, align 8
  %.sroa.096.0.insert.ext = zext i16 %.sroa.018.0.copyload to i48
  %.sroa.096.5.insert.insert = or disjoint i48 %.sroa.096.0.insert.ext, 5497558138880
  %.sroa.098.5.insert.insert = or disjoint i48 %i.i, 5497558138880
  %i.m = invoke i48 @_RNvMs_NtCs8frGy5WneL6_4fish9text_faceNtB4_11TextStyling23difference_prefer_empty(i48 %.sroa.096.5.insert.insert, i48 %.sroa.098.5.insert.insert)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2517)
  %i.n = invoke fastcc noundef zeroext i1 @_RNvMs4_NtCs8frGy5WneL6_4fish8terminalNtB5_20OutputterStyleWriter13write_command(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, i32 3)
          to label %_RNvMs4_NtCs8frGy5WneL6_4fish8terminalNtB5_20OutputterStyleWriter15reset_text_face.exit unwind label %bb.d ; 0 uses

_RNvMs4_NtCs8frGy5WneL6_4fish8terminalNtB5_20OutputterStyleWriter15reset_text_face.exit: ; preds = %bb.c
  %i.o = load ptr, ptr %i.b, align 8, !alias.scope !2517, !nonnull !4, !align !13, !noundef !4 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store <4 x i8> <i8 0, i8 0, i8 1, i8 1>, ptr %i.p, align 8, !noalias !2517
  %.sroa.06.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 36
  store i8 1, ptr %.sroa.06.sroa.7.0..sroa_idx.i, align 4, !noalias !2517
  %.sroa.06.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 37
  store i8 6, ptr %.sroa.06.sroa.8.0..sroa_idx.i, align 1, !noalias !2517
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 38
  store i8 3, ptr %.sroa.47.0..sroa_idx.i, align 2, !noalias !2517
  %.sroa.68.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 42
  store i8 3, ptr %.sroa.68.0..sroa_idx.i, align 2, !noalias !2517
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 46
  store i8 3, ptr %.sroa.8.0..sroa_idx.i, align 2, !noalias !2517
  br label %bb.b

bb.d:                                             ; preds = %.thread253, %.thread259, %.thread267, %bb.g, %bb.c, %bb.bl, %bb.bg, %bb.bb, %bb.aw, %bb.ar, %bb.aq, %bb.aj, %bb.af, %bb.y, %bb.q, %bb.p, %bb.e, %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtCs8frGy5WneL6_4fish8terminalNtB5_20OutputterStyleWriterNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8terminal20OutputterStyleWriterEBF_.exit unwind label %bb.bo

bb.e:                                             ; preds = %bb.b
  store i48 %i.m, ptr %i.a, align 8
  %i.r = invoke noundef zeroext i1 @_RNvMs_NtCs8frGy5WneL6_4fish9text_faceNtB4_11TextStyling8is_empty(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(6) %i.a)
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  br i1 %i.r, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !2518)
  %i.s = invoke fastcc noundef zeroext i1 @_RNvMs4_NtCs8frGy5WneL6_4fish8terminalNtB5_20OutputterStyleWriter13write_command(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, i32 3)
          to label %_RNvMs4_NtCs8frGy5WneL6_4fish8terminalNtB5_20OutputterStyleWriter15reset_text_face.exit145 unwind label %bb.d ; 0 uses

_RNvMs4_NtCs8frGy5WneL6_4fish8terminalNtB5_20OutputterStyleWriter15reset_text_face.exit145: ; preds = %bb.g
  %i.t = load ptr, ptr %i.b, align 8, !alias.scope !2518, !nonnull !4, !align !13, !noundef !4 ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store <4 x i8> <i8 0, i8 0, i8 1, i8 1>, ptr %i.u, align 8, !noalias !2518
  %.sroa.06.sroa.7.0..sroa_idx.i140 = getelementptr inbounds nuw i8, ptr %i.t, i64 36
  store i8 1, ptr %.sroa.06.sroa.7.0..sroa_idx.i140, align 4, !noalias !2518
  %.sroa.06.sroa.8.0..sroa_idx.i141 = getelementptr inbounds nuw i8, ptr %i.t, i64 37
  store i8 6, ptr %.sroa.06.sroa.8.0..sroa_idx.i141, align 1, !noalias !2518
  %.sroa.47.0..sroa_idx.i142 = getelementptr inbounds nuw i8, ptr %i.t, i64 38
  store i8 3, ptr %.sroa.47.0..sroa_idx.i142, align 2, !noalias !2518
  %.sroa.68.0..sroa_idx.i143 = getelementptr inbounds nuw i8, ptr %i.t, i64 42
  store i8 3, ptr %.sroa.68.0..sroa_idx.i143, align 2, !noalias !2518
  %.sroa.8.0..sroa_idx.i144 = getelementptr inbounds nuw i8, ptr %i.t, i64 46
  store i8 3, ptr %.sroa.8.0..sroa_idx.i144, align 2, !noalias !2518
  br label %bb.h

bb.h:                                             ; preds = %_RNvMs4_NtCs8frGy5WneL6_4fish8terminalNtB5_20OutputterStyleWriter15reset_text_face.exit145, %bb.f
  %i.v = phi ptr [ %i.t, %_RNvMs4_NtCs8frGy5WneL6_4fish8terminalNtB5_20OutputterStyleWriter15reset_text_face.exit145 ], [ %i.k, %bb.f ] ; 9 uses
  %i.w = add nsw i8 %.sroa.0182.0.extract.trunc, -1
  %i.x = icmp ult i8 %i.w, 2
  %or.cond281 = select i1 %2, i1 %i.x, i1 false
  %i.y = icmp eq i8 %.sroa.0.0.extract.trunc158, %.sroa.0182.0.extract.trunc
  %or.cond = select i1 %or.cond281, i1 %i.y, i1 false
  br i1 %or.cond, label %bb.i, label %_RNvXsc_CsdcxgzuWc7wi_10fish_colorNtB5_5ColorNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread

_RNvXsc_CsdcxgzuWc7wi_10fish_colorNtB5_5ColorNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.h
  %i.z = icmp eq i8 %.sroa.0.0.extract.trunc158, 0
  br i1 %i.z, label %_RNvXsc_CsdcxgzuWc7wi_10fish_colorNtB5_5ColorNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit149.thread246, label %.thread271

bb.i:                                             ; preds = %bb.h
  %i.aa = icmp eq i8 %.sroa.0.0.extract.trunc158, 1 ; 2 uses
  %i.ab = icmp eq i8 %.sroa.11.0.extract.trunc164, %.sroa.10.0.extract.trunc ; 2 uses
  br i1 %i.aa, label %_RNvXsc_CsdcxgzuWc7wi_10fish_colorNtB5_5ColorNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = icmp eq i8 %.sroa.15.0.extract.trunc173, %.sroa.16.0.extract.trunc
  %or.cond282 = select i1 %i.ab, i1 %i.ac, i1 false
  %i.ad = icmp eq i32 %.sroa.17.0.extract.shift179, %.sroa.19.0.extract.shift
  %or.cond283 = select i1 %or.cond282, i1 %i.ad, i1 false
  br i1 %or.cond283, label %_RNvXsc_CsdcxgzuWc7wi_10fish_colorNtB5_5ColorNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread241, label %.thread271

_RNvXsc_CsdcxgzuWc7wi_10fish_colorNtB5_5ColorNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit: ; preds = %bb.i
  br i1 %i.ab, label %_RNvXsc_CsdcxgzuWc7wi_10fish_colorNtB5_5ColorNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread241, label %.thread271

_RNvXsc_CsdcxgzuWc7wi_10fish_colorNtB5_5ColorNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread241: ; preds = %bb.j, %_RNvXsc_CsdcxgzuWc7wi_10fish_colorNtB5_5ColorNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit
  %i.ae = icmp eq i8 %.sroa.10.0.extract.trunc, 7
  %i.af = and i1 %i.aa, %i.ae
  %.sroa.11.0.extract.trunc = select i1 %i.af, i8 0, i8 7
  br label %.thread271

.thread271:                                       ; preds = %bb.j, %_RNvXsc_CsdcxgzuWc7wi_10fish_colorNtB5_5ColorNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit, %_RNvXsc_CsdcxgzuWc7wi_10fish_colorNtB5_5ColorNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread241, %_RNvXsc_CsdcxgzuWc7wi_10fish_colorNtB5_5ColorNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread
  %.sroa.0.0239 = phi i8 [ 1, %_RNvXsc_CsdcxgzuWc7wi_10fish_colorNtB5_5ColorNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread241 ], [ %.sroa.0.0.extract.trunc158, %_RNvXsc_CsdcxgzuWc7wi_10fish_colorNtB5_5ColorNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread ], [ 1, %_RNvXsc_CsdcxgzuWc7wi_10fish_colorNtB5_5ColorNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit ], [ 2, %bb.j ] ; 5 uses
end_hunk_0
