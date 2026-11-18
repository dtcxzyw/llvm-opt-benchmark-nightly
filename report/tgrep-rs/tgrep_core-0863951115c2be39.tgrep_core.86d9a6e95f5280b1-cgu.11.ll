Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep_core-0863951115c2be39.tgrep_core.86d9a6e95f5280b1-cgu.11?download=true
inline.NumInlined: 561
inline.NumDeleted: 278
begin_hunk_0_@_RNvNtCsbzNSmZPCnTx_10tgrep_core7builder14read_for_index:bb.a
  br label %.thread

bb.ag:                                            ; preds = %bb.af
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.dr = load i32, ptr %i.dq, align 4, !range !6, !noalias !460, !noundef !5 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !460
  store i32 %i.dr, ptr %i.af, align 4, !noalias !460
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !460
  invoke void @_RNvMs2_NtCs5Xr050g3D4S_3std2fsNtB5_4File8metadata(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.ad, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.af)
          to label %bb.ah unwind label %bb.ao, !noalias !461

bb.ah:                                            ; preds = %bb.ag
  %i.ds = load i64, ptr %i.ad, align 8, !range !18, !noalias !460, !noundef !5 ; 2 uses
  %i.dt = icmp eq i64 %i.ds, 2
  %i.du = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  br i1 %i.dt, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %.val36.i = load ptr, ptr %i.du, align 8, !noalias !460, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !460
  %i.dv = ptrtoint ptr %.val36.i to i64           ; 2 uses
  %i.dw = and i64 %i.dv, 3
  switch i64 %i.dw, label %default.unreachable [
    i64 2, label %.thread43.i
    i64 3, label %bb.aj
    i64 0, label %.thread43.i
    i64 1, label %bb.ak
  ], !prof !15

bb.aj:                                            ; preds = %bb.ai
  %i.dx = icmp ult ptr %.val36.i, inttoptr (i64 188978561024 to ptr)
  %i.dy = and i64 %i.dv, 1095216660480
  %i.dz = icmp ne i64 %i.dy, 1095216660480
  call void @llvm.assume(i1 %i.dx)
  call void @llvm.assume(i1 %i.dz)
  br label %.thread43.i

bb.ak:                                            ; preds = %bb.ai
  %i.ea = getelementptr i8, ptr %.val36.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ea) ]
  %i.eb = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  store ptr %i.ea, ptr %i.eb, align 8, !alias.scope !462, !noalias !460
  store i8 3, ptr %i.aa, align 8, !alias.scope !462, !noalias !460
  invoke void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.eb)
          to label %.thread43.i unwind label %bb.ao, !noalias !461

.thread43.i:                                      ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !460
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !460
  br label %bb.am

bb.al:                                            ; preds = %bb.ah
  %.sroa.427.0..sroa_idx.i26 = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !460
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.427.0..sroa_idx.i26, ptr noundef nonnull align 8 dereferenceable(168) %i.du, i64 168, i1 false), !noalias !460
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !460
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !460
  store i64 %i.ds, ptr %i.ab, align 8, !noalias !460
  invoke void @_RNvNtCsbzNSmZPCnTx_10tgrep_core4meta12file_version(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.ab)
          to label %bb.an unwind label %bb.ao, !noalias !461

bb.am:                                            ; preds = %bb.an, %.thread43.i
  %i.ec = phi <2 x i32> [ %i.em, %bb.an ], [ <i32 -2, i32 undef>, %.thread43.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !463
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !463
  %i.ed = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 0, ptr %i.ed, align 8, !noalias !463
  store i64 0, ptr %i.y, align 8, !noalias !463
  %i.ee = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store i8 0, ptr %i.ee, align 8, !noalias !463
  %i.ef = getelementptr inbounds nuw i8, ptr %i.y, i64 26
  store i8 0, ptr %i.ef, align 2, !noalias !463
  %i.eg = getelementptr inbounds nuw i8, ptr %i.y, i64 27
  store i8 0, ptr %i.eg, align 1, !noalias !463
  %i.eh = getelementptr inbounds nuw i8, ptr %i.y, i64 28
  store i8 0, ptr %i.eh, align 4, !noalias !463
  invoke void @_RINvMs0_Cs3Hr4GOJ0UGa_7memmap2NtB6_11MmapOptions3mapRNtNtCs5Xr050g3D4S_3std2fs4FileECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.y, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.af)
          to label %.noexc37.i unwind label %bb.ao, !noalias !461

.noexc37.i:                                       ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !463
  %i.ei = load i64, ptr %i.z, align 8, !range !10, !noalias !463, !noundef !5
  %i.ej = trunc nuw i64 %i.ei to i1
  %i.ek = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !noalias !463, !noundef !5 ; 4 uses
  br i1 %i.ej, label %_RINvMs2_NtCsbzNSmZPCnTx_10tgrep_core7builderNtB6_9IndexRead4openNCNvB6_14read_for_index0EB8_.exit.thread168, label %bb.ap

bb.an:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !460
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.01.i24, ptr noundef nonnull align 8 dereferenceable(72) %i.ac, i64 72, i1 false), !noalias !460
  %.sroa.2.0..sroa_idx.i27 = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %i.em = load <2 x i32>, ptr %.sroa.2.0..sroa_idx.i27, align 8, !noalias !460
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !460
  br label %bb.am

_RINvMs2_NtCsbzNSmZPCnTx_10tgrep_core7builderNtB6_9IndexRead4openNCNvB6_14read_for_index0EB8_.exit.thread168: ; preds = %.noexc37.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !463
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.el) ]
  %i.en = call noundef i32 @close(i32 noundef %i.dr) #26, !noalias !461 ; 0 uses
  br label %.thread

bb.ao:                                            ; preds = %bb.am, %bb.al, %bb.ak, %bb.ag
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

bb.ap:                                            ; preds = %.noexc37.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.eq = load i64, ptr %i.ep, align 8, !noalias !463, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !463
  %.sroa.10.40..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.10.40..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.01.i24, i64 72, i1 false), !noalias !464
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !460
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01.i24)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  store i64 -1, ptr %i.at, align 8
  %.sroa.7.0..sroa_idx173 = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.el, ptr %.sroa.7.0..sroa_idx173, align 8
  %.sroa.9.0..sroa_idx176 = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i64 %i.eq, ptr %.sroa.9.0..sroa_idx176, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.10, i64 88, i1 false)
  %.sroa.11.0..sroa_idx180 = getelementptr inbounds nuw i8, ptr %i.at, i64 112
  store <2 x i32> %i.ec, ptr %.sroa.11.0..sroa_idx180, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 120
  store i32 %i.dr, ptr %.sroa.12.0..sroa_idx, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.es = load i64, ptr %i.er, align 8
  %i.et = load i64, ptr %i.aw, align 8, !noundef !5
  %.not = icmp ugt i64 %i.es, %i.et
  br i1 %.not, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core7builder9IndexReadEBF_(ptr noalias nofree noundef align 8 dereferenceable(128) %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  br label %bb.av

bb.ar:                                            ; preds = %.body, %bb.eo
  %i.eu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.as:                                            ; preds = %bb.ap
  store i64 -1, ptr %0, align 8
  %.sroa.7.0..sroa_idx174 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.el, ptr %.sroa.7.0..sroa_idx174, align 8
  %.sroa.9.0..sroa_idx177 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.eq, ptr %.sroa.9.0..sroa_idx177, align 8
  %.sroa.10.0..sroa_idx179 = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.10.0..sroa_idx179, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.10, i64 88, i1 false)
  %.sroa.11.0..sroa_idx181 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <2 x i32> %i.ec, ptr %.sroa.11.0..sroa_idx181, align 8
  %.sroa.12.0..sroa_idx183 = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 %i.dr, ptr %.sroa.12.0..sroa_idx183, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  br label %bb.en

.thread:                                          ; preds = %_RINvMs2_NtCsbzNSmZPCnTx_10tgrep_core7builderNtB6_9IndexRead4openNCNvB6_14read_for_index0EB8_.exit.thread168, %_RINvMs2_NtCsbzNSmZPCnTx_10tgrep_core7builderNtB6_9IndexRead4openNCNvB6_14read_for_index0EB8_.exit.thread
  %.sink = phi ptr [ %i.el, %_RINvMs2_NtCsbzNSmZPCnTx_10tgrep_core7builderNtB6_9IndexRead4openNCNvB6_14read_for_index0EB8_.exit.thread168 ], [ %i.dp, %_RINvMs2_NtCsbzNSmZPCnTx_10tgrep_core7builderNtB6_9IndexRead4openNCNvB6_14read_for_index0EB8_.exit.thread ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !460
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01.i24)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !465
  %i.ev = ptrtoint ptr %.sink to i64              ; 2 uses
  %i.ew = and i64 %i.ev, 3
  switch i64 %i.ew, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder9IndexReadNtNtNtB4_2io5error5ErrorEEB11_.exit46
    i64 3, label %bb.at
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder9IndexReadNtNtNtB4_2io5error5ErrorEEB11_.exit46
    i64 1, label %bb.au
  ], !prof !15

bb.at:                                            ; preds = %.thread
  %i.ex = icmp ult ptr %.sink, inttoptr (i64 188978561024 to ptr)
  %i.ey = and i64 %i.ev, 1095216660480
  %i.ez = icmp ne i64 %i.ey, 1095216660480
  call void @llvm.assume(i1 %i.ex)
  call void @llvm.assume(i1 %i.ez)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder9IndexReadNtNtNtB4_2io5error5ErrorEEB11_.exit46

bb.au:                                            ; preds = %.thread
  %i.fa = getelementptr i8, ptr %.sink, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fa) ]
  %i.fb = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  store ptr %i.fa, ptr %i.fb, align 8, !alias.scope !466, !noalias !465
  store i8 3, ptr %i.x, align 8, !alias.scope !466, !noalias !465
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fb), !noalias !465
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder9IndexReadNtNtNtB4_2io5error5ErrorEEB11_.exit46

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder9IndexReadNtNtNtB4_2io5error5ErrorEEB11_.exit46: ; preds = %.thread, %.thread, %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !465
  br label %bb.av

bb.av:                                            ; preds = %bb.aq, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder9IndexReadNtNtNtB4_2io5error5ErrorEEB11_.exit46
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  %.pre = load i64, ptr %i.ax, align 8
  br label %bb.c

bb.aw:                                            ; preds = %bb.j, %bb.i, %bb.ac
  %.sroa.8.0.ph = phi ptr [ %i.cz, %bb.ac ], [ %i.bp, %bb.i ], [ %i.bp, %bb.j ] ; 11 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.ph) ]
  %i.fc = ptrtoint ptr %.sroa.8.0.ph to i64       ; 4 uses
  %i.fd = and i64 %i.fc, 3                        ; 2 uses
  switch i64 %i.fd, label %default.unreachable [
    i64 2, label %bb.ax
    i64 3, label %bb.ay
    i64 0, label %bb.az
    i64 1, label %bb.ba
  ], !prof !15

bb.ax:                                            ; preds = %bb.aw
  %i.fe = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCsf3Ta7LF998c_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.eo

.noexc:                                           ; preds = %bb.ax
  %i.ff = lshr i64 %i.fc, 32
  %i.fg = trunc nuw i64 %i.ff to i32
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8, !nonnull !5, !noundef !5
  %i.fj = invoke noundef i8 %i.fi(i32 noundef %i.fg)
          to label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit unwind label %bb.eo, !inline_history !360

bb.ay:                                            ; preds = %bb.aw
  %i.fk = lshr i64 %i.fc, 32
  %i.fl = icmp ult ptr %.sroa.8.0.ph, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.fk to i8  ; 2 uses
  %i.fm = icmp ne i8 %switch.idx.cast.i.i.i, -1
  call void @llvm.assume(i1 %i.fl)
  call void @llvm.assume(i1 %i.fm)
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit

bb.az:                                            ; preds = %bb.aw
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.8.0.ph, i64 16
  %i.fo = load i8, ptr %i.fn, align 8, !range !467, !noundef !5
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit

bb.ba:                                            ; preds = %bb.aw
  %i.fp = getelementptr i8, ptr %.sroa.8.0.ph, i64 31
  %i.fq = load i8, ptr %i.fp, align 8, !range !467, !noundef !5
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit

bb.bb:                                            ; preds = %bb.s
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.sroa.10.0.copyload.i = load i64, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !453
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !453
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !437
  %i.fr = load i32, ptr %i.ao, align 4, !range !6, !noalias !437, !noundef !5
  %.sroa.8127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.8127.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.01.i, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !437
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  store i64 %i.cw, ptr %0, align 8
  %.sroa.4126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cz, ptr %.sroa.4126.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.10.0.copyload.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.cs, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.cu, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <2 x i32> %i.cl, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 %i.fr, ptr %.sroa.11.0..sroa_idx, align 8
  br label %bb.en

_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit: ; preds = %bb.ba, %bb.az, %bb.ay, %.noexc
  %.sroa.0.0.i = phi i8 [ %i.fq, %bb.ba ], [ %switch.idx.cast.i.i.i, %bb.ay ], [ %i.fo, %bb.az ], [ %i.fj, %.noexc ]
  %i.fs = icmp eq i8 %.sroa.0.0.i, 13
  br i1 %i.fs, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.8.0.ph, ptr %i.ft, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.en

bb.bd:                                            ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit
  br i1 %i.ay, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  store i64 %6, ptr %i.ar, align 8
  %i.fu = invoke fastcc { ptr, i64 } @_RNvMs0_NtCsbzNSmZPCnTx_10tgrep_core7builderNtB5_15OwnedReadBudget7acquire(ptr nonnull %.val19, i64 noundef %6)
          to label %bb.cx unwind label %bb.bg     ; 2 uses

bb.bf:                                            ; preds = %bb.bd
  %i.fv = invoke fastcc { ptr, i64 } @_RNvMs0_NtCsbzNSmZPCnTx_10tgrep_core7builderNtB5_15OwnedReadBudget7acquire(ptr nonnull %.val19, i64 noundef -1)
          to label %bb.bh unwind label %bb.bg     ; 2 uses

bb.bg:                                            ; preds = %bb.ei, %bb.de, %bb.bo, %bb.be, %bb.bf
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.ee, %bb.db, %bb.dc, %common.resume.sink.split.i95, %bb.dy, %bb.bl, %bb.bm, %common.resume.sink.split.i62, %bb.cs, %bb.bg
  %eh.lpad-body = phi { ptr, i32 } [ %common.resume.op.ph.i96, %common.resume.sink.split.i95 ], [ %common.resume.op.ph.i63, %common.resume.sink.split.i62 ], [ %i.fw, %bb.bg ], [ %i.gi, %bb.bl ], [ %i.gi, %bb.bm ], [ %.pn43.i, %bb.cs ], [ %i.jp, %bb.db ], [ %i.jp, %bb.dc ], [ %.pn42.i81, %bb.dy ], [ %i.mb, %bb.ee ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbzNSmZPCnTx_10tgrep_core(ptr %.sroa.8.0.ph) #22
          to label %common.resume unwind label %bb.ar

bb.bh:                                            ; preds = %bb.bf
  %i.fx = extractvalue { ptr, i64 } %i.fv, 0
  %i.fy = extractvalue { ptr, i64 } %i.fv, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  store ptr %i.ax, ptr %i.ap, align 8
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 6 uses
  store ptr %i.fx, ptr %i.fz, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i64 %i.fy, ptr %i.ga, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !468)
  call void @llvm.experimental.noalias.scope.decl(metadata !469)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01.i49)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !470
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !470
  invoke void @_RINvMs2_NtCs5Xr050g3D4S_3std2fsNtB6_4File4openRNtNtB8_4path4PathECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
          to label %bb.bj unwind label %.thread.i50, !noalias !471

.thread48.i:                                      ; preds = %bb.bv, %bb.bu, %bb.bq
  %lpad.thr_comm.i53 = landingpad { ptr, i32 }
          cleanup
  %.val3551.i = load i32, ptr %i.w, align 4, !range !6, !noalias !470, !noundef !5
  %i.gb = call noundef i32 @close(i32 noundef %.val3551.i) #26, !noalias !471 ; 0 uses
  br label %bb.cs

bb.bi:                                            ; preds = %bb.ck
  %lpad.thr_comm.split-lp.i73 = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split.i62

.thread.i50:                                      ; preds = %bb.bh
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.bj:                                            ; preds = %bb.bh
  %i.gd = load i32, ptr %i.v, align 8, !range !4, !noalias !470, !noundef !5
  %i.ge = trunc nuw i32 %i.gd to i1
  br i1 %i.ge, label %bb.bk, label %bb.bq

bb.bk:                                            ; preds = %bb.bj
  %i.gf = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8, !noalias !470, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !470
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gg, ptr %i.gh, align 8, !alias.scope !468
  store i64 -2, ptr %0, align 8, !alias.scope !468
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !470
  call void @llvm.experimental.noalias.scope.decl(metadata !472)
  call void @llvm.experimental.noalias.scope.decl(metadata !473)
  invoke void @_RNvXs1_NtCsbzNSmZPCnTx_10tgrep_core7builderNtB5_15OwnedReadPermitNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.fz)
          to label %bb.bn unwind label %bb.bl, !noalias !468

bb.bl:                                            ; preds = %bb.bk
  %i.gi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !474)
  call void @llvm.experimental.noalias.scope.decl(metadata !475)
  %i.gj = load ptr, ptr %i.fz, align 8, !alias.scope !476, !nonnull !5, !noundef !5
  %i.gk = atomicrmw add ptr %i.gj, i64 -1 release, align 8, !noalias !477
  %i.gl = icmp eq i64 %i.gk, 1
  br i1 %i.gl, label %bb.bm, label %.body

bb.bm:                                            ; preds = %bb.bl
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsbzNSmZPCnTx_10tgrep_core7builder15OwnedReadBudgetE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.fz) #25
          to label %.body unwind label %bb.bp, !noalias !468

bb.bn:                                            ; preds = %bb.bk
  call void @llvm.experimental.noalias.scope.decl(metadata !478)
  call void @llvm.experimental.noalias.scope.decl(metadata !479)
  %i.gm = load ptr, ptr %i.fz, align 8, !alias.scope !480, !nonnull !5, !noundef !5
  %i.gn = atomicrmw add ptr %i.gm, i64 -1 release, align 8, !noalias !481
  %i.go = icmp eq i64 %i.gn, 1
  br i1 %i.go, label %bb.bo, label %bb.ct

bb.bo:                                            ; preds = %bb.bn
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsbzNSmZPCnTx_10tgrep_core7builder15OwnedReadBudgetE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.fz) #25
          to label %bb.ct unwind label %bb.bg

bb.bp:                                            ; preds = %bb.bm
  %i.gp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23, !noalias !468
  unreachable

common.resume.sink.split.i62:                     ; preds = %.body.thread.i.i, %bb.ci, %bb.ch, %bb.bi
  %common.resume.op.ph.i63 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i73, %bb.bi ], [ %eh.lpad-body20.i.i, %.body.thread.i.i ], [ %i.il, %bb.ci ], [ %i.il, %bb.ch ]
  %.val3547.i = load i32, ptr %i.w, align 4, !range !6, !noalias !470, !noundef !5
  %i.gq = call noundef i32 @close(i32 noundef %.val3547.i) #26, !noalias !471 ; 0 uses
  br label %.body

bb.bq:                                            ; preds = %bb.bj
  %i.gr = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.gs = load i32, ptr %i.gr, align 4, !range !6, !noalias !470, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !470
  store i32 %i.gs, ptr %i.w, align 4, !noalias !470
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !470
  invoke void @_RNvMs2_NtCs5Xr050g3D4S_3std2fsNtB5_4File8metadata(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.u, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.w)
          to label %bb.br unwind label %.thread48.i, !noalias !471

bb.br:                                            ; preds = %bb.bq
  %i.gt = load i64, ptr %i.u, align 8, !range !18, !noalias !470, !noundef !5 ; 2 uses
  %i.gu = icmp eq i64 %i.gt, 2
  %i.gv = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  br i1 %i.gu, label %bb.bs, label %bb.bv

bb.bs:                                            ; preds = %bb.br
  %.val37.i74 = load ptr, ptr %i.gv, align 8, !noalias !470, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !470
  %i.gw = ptrtoint ptr %.val37.i74 to i64         ; 2 uses
  %i.gx = and i64 %i.gw, 3
  switch i64 %i.gx, label %default.unreachable [
    i64 2, label %.thread56.i
    i64 3, label %bb.bt
    i64 0, label %.thread56.i
    i64 1, label %bb.bu
  ], !prof !15

bb.bt:                                            ; preds = %bb.bs
  %i.gy = icmp ult ptr %.val37.i74, inttoptr (i64 188978561024 to ptr)
  %i.gz = and i64 %i.gw, 1095216660480
  %i.ha = icmp ne i64 %i.gz, 1095216660480
  call void @llvm.assume(i1 %i.gy)
  call void @llvm.assume(i1 %i.ha)
  br label %.thread56.i

bb.bu:                                            ; preds = %bb.bs
  %i.hb = getelementptr i8, ptr %.val37.i74, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hb) ]
  %i.hc = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.hb, ptr %i.hc, align 8, !alias.scope !482, !noalias !470
  store i8 3, ptr %i.q, align 8, !alias.scope !482, !noalias !470
  invoke void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.hc)
          to label %.thread56.i unwind label %.thread48.i, !noalias !471

.thread56.i:                                      ; preds = %bb.bu, %bb.bt, %bb.bs, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !470
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !470
  br label %bb.bw

bb.bv:                                            ; preds = %bb.br
  %.sroa.427.0..sroa_idx.i55 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !470
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.427.0..sroa_idx.i55, ptr noundef nonnull align 8 dereferenceable(168) %i.gv, i64 168, i1 false), !noalias !470
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !470
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !470
  store i64 %i.gt, ptr %i.r, align 8, !noalias !470
  invoke void @_RNvNtCsbzNSmZPCnTx_10tgrep_core4meta12file_version(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.r)
          to label %bb.cn unwind label %.thread48.i, !noalias !471

bb.bw:                                            ; preds = %bb.cn, %.thread56.i
  %i.hd = phi <2 x i32> [ %i.it, %bb.cn ], [ <i32 -2, i32 undef>, %.thread56.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !470
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false), !noalias !483
  call void @llvm.experimental.noalias.scope.decl(metadata !484)
  %i.he = load ptr, ptr %i.t, align 8, !alias.scope !484, !noalias !470, !nonnull !5, !align !12, !noundef !5
  %i.hf = load i64, ptr %i.he, align 8, !noalias !485, !noundef !5
  %i.hg = call i64 @llvm.umin.i64(i64 %i.hf, i64 67108864) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !486
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !486
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, i64 noundef %i.hg, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i.i unwind label %.body.thread25.i.i, !noalias !485

.noexc.i.i:                                       ; preds = %bb.bw
  %i.hh = load i64, ptr %i.n, align 8, !range !10, !noalias !486, !noundef !5
  %i.hi = trunc nuw i64 %i.hh to i1
  %i.hj = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.hk = load i64, ptr %i.hj, align 8, !range !16, !noalias !486, !noundef !5 ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  br i1 %i.hi, label %bb.bx, label %bb.by, !prof !14

bb.bx:                                            ; preds = %.noexc.i.i
  %i.hm = load i64, ptr %i.hl, align 8, !noalias !486
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.hk, i64 %i.hm) #27
          to label %.noexc4.i.i unwind label %.body.thread25.i.i, !noalias !485

.noexc4.i.i:                                      ; preds = %bb.bx
  unreachable

bb.by:                                            ; preds = %.noexc.i.i
  %i.hn = load ptr, ptr %i.hl, align 8, !noalias !486, !nonnull !5, !noundef !5
  %i.ho = icmp samesign ule i64 %i.hg, %i.hk
  call void @llvm.assume(i1 %i.ho)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !486
  store i64 %i.hk, ptr %i.o, align 8, !noalias !486
  %i.hp = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  store ptr %i.hn, ptr %i.hp, align 8, !noalias !486
  %i.hq = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  store i64 0, ptr %i.hq, align 8, !noalias !486
  %i.hr = invoke { i64, ptr } @_RNvXsa_NtCs5Xr050g3D4S_3std2fsNtB5_4FileNtNtNtCsgCecv3eZDcN_5alloc2io4read4Read11read_to_end(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.ca unwind label %bb.bz, !noalias !487 ; 2 uses

bb.bz:                                            ; preds = %bb.by
  %i.hs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o) #22
          to label %.body.thread.i.i unwind label %bb.ce, !noalias !487

bb.ca:                                            ; preds = %bb.by
  %i.ht = extractvalue { i64, ptr } %i.hr, 0
  %i.hu = trunc nuw i64 %i.ht to i1
  br i1 %i.hu, label %bb.cb, label %bb.cf

bb.cb:                                            ; preds = %bb.ca
  %i.hv = extractvalue { i64, ptr } %i.hr, 1
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit.i.i.i unwind label %bb.cc, !noalias !487

bb.cc:                                            ; preds = %bb.cb
  %i.hw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body.thread.i.i unwind label %bb.cd, !noalias !487

bb.cd:                                            ; preds = %bb.cc
  %i.hx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23, !noalias !487
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit.i.i.i: ; preds = %bb.cb
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.thread.i.i unwind label %.body.thread25.i.i, !noalias !488

.thread.i.i:                                      ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !486
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !489
  %i.hy = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.hz = load ptr, ptr %i.hy, align 8, !alias.scope !484, !noalias !470, !nonnull !5, !noundef !5 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ib = load i64, ptr %i.ia, align 8, !alias.scope !484, !noalias !470, !noundef !5
  store ptr %i.hz, ptr %i.p, align 8, !noalias !489
  %i.ic = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %i.ib, ptr %i.ic, align 8, !noalias !489
  br label %bb.cg

bb.ce:                                            ; preds = %bb.bz
  %i.id = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23, !noalias !487
  unreachable

.body.thread25.i.i:                               ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit.i.i.i, %bb.bx, %bb.bw
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i

bb.cf:                                            ; preds = %bb.ca
  %.sroa.0.0.copyload10.i.i = load i64, ptr %i.o, align 8, !noalias !490 ; 3 uses
  %.sroa.6.0.copyload12.i.i = load ptr, ptr %i.hp, align 8, !noalias !490 ; 3 uses
  %.sroa.8.0.copyload14.i.i = load i64, ptr %i.hq, align 8, !noalias !490
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !486
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !489
  %i.ie = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.if = load ptr, ptr %i.ie, align 8, !alias.scope !484, !noalias !470, !nonnull !5, !noundef !5 ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ih = load i64, ptr %i.ig, align 8, !alias.scope !484, !noalias !470, !noundef !5 ; 2 uses
  store ptr %i.if, ptr %i.p, align 8, !noalias !489
  %i.ii = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %i.ih, ptr %i.ii, align 8, !noalias !489
  %i.ij = icmp eq i64 %.sroa.0.0.copyload10.i.i, -1
  br i1 %i.ij, label %bb.cg, label %bb.co

bb.cg:                                            ; preds = %bb.cf, %.thread.i.i
  %i.ik = phi ptr [ %i.hz, %.thread.i.i ], [ %i.if, %bb.cf ] ; 2 uses
  %.sroa.6.031.i.i = phi ptr [ %i.hv, %.thread.i.i ], [ %.sroa.6.0.copyload12.i.i, %bb.cf ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.031.i.i) ]
  invoke void @_RNvXs1_NtCsbzNSmZPCnTx_10tgrep_core7builderNtB5_15OwnedReadPermitNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.p)
          to label %bb.cj unwind label %bb.ch, !noalias !488

bb.ch:                                            ; preds = %bb.cg
  %i.il = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.im = atomicrmw add ptr %i.ik, i64 -1 release, align 8, !noalias !491
  %i.in = icmp eq i64 %i.im, 1
  br i1 %i.in, label %bb.ci, label %common.resume.sink.split.i62

bb.ci:                                            ; preds = %bb.ch
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsbzNSmZPCnTx_10tgrep_core7builder15OwnedReadBudgetE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.p) #25
          to label %common.resume.sink.split.i62 unwind label %bb.cl, !noalias !488

bb.cj:                                            ; preds = %bb.cg
  %i.io = atomicrmw add ptr %i.ik, i64 -1 release, align 8, !noalias !492
  %i.ip = icmp eq i64 %i.io, 1
  br i1 %i.ip, label %bb.ck, label %.thread60.i

bb.ck:                                            ; preds = %bb.cj
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsbzNSmZPCnTx_10tgrep_core7builder15OwnedReadBudgetE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.p) #25
          to label %.thread60.i unwind label %bb.bi, !noalias !471

bb.cl:                                            ; preds = %bb.ci
  %i.iq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23, !noalias !488
  unreachable

.body.thread.i.i:                                 ; preds = %.body.thread25.i.i, %bb.cc, %bb.bz
  %eh.lpad-body20.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i, %.body.thread25.i.i ], [ %i.hw, %bb.cc ], [ %i.hs, %bb.bz ]
  %i.ir = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core7builder15OwnedReadPermitEBF_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.ir) #22
          to label %common.resume.sink.split.i62 unwind label %bb.cm, !noalias !493

bb.cm:                                            ; preds = %.body.thread.i.i
  %i.is = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23, !noalias !493
  unreachable

bb.cn:                                            ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !470
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.01.i49, ptr noundef nonnull align 8 dereferenceable(72) %i.s, i64 72, i1 false), !noalias !470
  %.sroa.2.0..sroa_idx.i56 = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %i.it = load <2 x i32>, ptr %.sroa.2.0..sroa_idx.i56, align 8, !noalias !470
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !470
  br label %bb.bw

.thread60.i:                                      ; preds = %bb.ck, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !489
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !470
  br label %bb.cq

bb.co:                                            ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !489
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !470
  %i.iu = icmp eq i64 %.sroa.0.0.copyload10.i.i, -2
  br i1 %i.iu, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.iv = load i32, ptr %i.w, align 4, !range !6, !noalias !470, !noundef !5
  %.sroa.620.0..sroa_idx.i64 = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.620.0..sroa_idx.i64, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.01.i49, i64 72, i1 false), !noalias !494
  store i64 %.sroa.0.0.copyload10.i.i, ptr %0, align 8, !alias.scope !468
  %.sroa.4.0..sroa_idx.i65 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.0.copyload12.i.i, ptr %.sroa.4.0..sroa_idx.i65, align 8, !alias.scope !468
  %.sroa.519.0..sroa_idx.i66 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8.0.copyload14.i.i, ptr %.sroa.519.0..sroa_idx.i66, align 8, !alias.scope !468
  %.sroa.519.sroa.4.0..sroa.519.0..sroa_idx.sroa_idx.i67 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.if, ptr %.sroa.519.sroa.4.0..sroa.519.0..sroa_idx.sroa_idx.i67, align 8, !alias.scope !468
  %.sroa.519.sroa.5.0..sroa.519.0..sroa_idx.sroa_idx.i68 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.ih, ptr %.sroa.519.sroa.5.0..sroa.519.0..sroa_idx.sroa_idx.i68, align 8, !alias.scope !468
  %.sroa.721.0..sroa_idx.i69 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <2 x i32> %i.hd, ptr %.sroa.721.0..sroa_idx.i69, align 8, !alias.scope !468
  %.sroa.9.0..sroa_idx.i71 = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 %i.iv, ptr %.sroa.9.0..sroa_idx.i71, align 8, !alias.scope !468
  br label %.sink.split

bb.cq:                                            ; preds = %bb.co, %.thread60.i
  %.sroa.7.066.i = phi ptr [ %.sroa.6.031.i.i, %.thread60.i ], [ %.sroa.6.0.copyload12.i.i, %bb.co ]
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.7.066.i, ptr %i.iw, align 8, !alias.scope !468
  store i64 -2, ptr %0, align 8, !alias.scope !468
  %.val.i72 = load i32, ptr %i.w, align 4, !range !6, !noalias !470, !noundef !5
  %i.ix = call noundef i32 @close(i32 noundef %.val.i72) #26, !noalias !471 ; 0 uses
  br label %.sink.split

bb.cr:                                            ; preds = %bb.cs
  %i.iy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23, !noalias !468
  unreachable

bb.cs:                                            ; preds = %.thread.i50, %.thread48.i
  %.pn43.i = phi { ptr, i32 } [ %i.gc, %.thread.i50 ], [ %lpad.thr_comm.i53, %.thread48.i ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtCsbzNSmZPCnTx_10tgrep_core7builder14read_for_indexs2_0EBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ap) #22
          to label %.body unwind label %bb.cr, !noalias !468

.sink.split:                                      ; preds = %bb.cp, %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !470
  br label %bb.ct

bb.ct:                                            ; preds = %.sink.split, %bb.bn, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01.i49)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ek, %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.ph) ]
  switch i64 %i.fd, label %default.unreachable [
    i64 2, label %bb.em
    i64 3, label %bb.cv
    i64 0, label %bb.em
    i64 1, label %bb.cw
  ], !prof !15

bb.cv:                                            ; preds = %bb.cu
  %i.iz = icmp ult ptr %.sroa.8.0.ph, inttoptr (i64 188978561024 to ptr)
  %i.ja = and i64 %i.fc, 1095216660480
  %i.jb = icmp ne i64 %i.ja, 1095216660480
  call void @llvm.assume(i1 %i.iz)
  call void @llvm.assume(i1 %i.jb)
  br label %bb.em

bb.cw:                                            ; preds = %bb.cu
  %i.jc = getelementptr i8, ptr %.sroa.8.0.ph, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jc) ]
  %i.jd = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store ptr %i.jc, ptr %i.jd, align 8, !alias.scope !495
  store i8 3, ptr %i.m, align 8, !alias.scope !495
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.jd)
  br label %bb.em

bb.cx:                                            ; preds = %bb.be
  %i.je = extractvalue { ptr, i64 } %i.fu, 0
  %i.jf = extractvalue { ptr, i64 } %i.fu, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  store ptr %i.ar, ptr %i.aq, align 8
  %i.jg = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 6 uses
  store ptr %i.je, ptr %i.jg, align 8
  %i.jh = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store i64 %i.jf, ptr %i.jh, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !496)
  call void @llvm.experimental.noalias.scope.decl(metadata !497)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01.i79)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !498
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !498
  invoke void @_RINvMs2_NtCs5Xr050g3D4S_3std2fsNtB6_4File4openRNtNtB8_4path4PathECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
          to label %bb.cz unwind label %.thread.i80, !noalias !499

.thread47.i84:                                    ; preds = %bb.dl, %bb.dk, %bb.dg
  %lpad.thr_comm.i85 = landingpad { ptr, i32 }
          cleanup
  %.val3550.i86 = load i32, ptr %i.l, align 4, !range !6, !noalias !498, !noundef !5
  %i.ji = call noundef i32 @close(i32 noundef %.val3550.i86) #26, !noalias !499 ; 0 uses
  br label %bb.dy

bb.cy:                                            ; preds = %bb.ds
  %lpad.thr_comm.split-lp.i109 = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split.i95

.thread.i80:                                      ; preds = %bb.cx
  %i.jj = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

bb.cz:                                            ; preds = %bb.cx
  %i.jk = load i32, ptr %i.k, align 8, !range !4, !noalias !498, !noundef !5
  %i.jl = trunc nuw i32 %i.jk to i1
  br i1 %i.jl, label %bb.da, label %bb.dg

bb.da:                                            ; preds = %bb.cz
  %i.jm = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.jn = load ptr, ptr %i.jm, align 8, !noalias !498, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !498
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.jn, ptr %i.jo, align 8, !alias.scope !496
  store i64 -2, ptr %0, align 8, !alias.scope !496
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !498
  call void @llvm.experimental.noalias.scope.decl(metadata !500)
  call void @llvm.experimental.noalias.scope.decl(metadata !501)
  invoke void @_RNvXs1_NtCsbzNSmZPCnTx_10tgrep_core7builderNtB5_15OwnedReadPermitNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.jg)
          to label %bb.dd unwind label %bb.db, !noalias !496

bb.db:                                            ; preds = %bb.da
  %i.jp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !502)
  call void @llvm.experimental.noalias.scope.decl(metadata !503)
  %i.jq = load ptr, ptr %i.jg, align 8, !alias.scope !504, !nonnull !5, !noundef !5
  %i.jr = atomicrmw add ptr %i.jq, i64 -1 release, align 8, !noalias !505
  %i.js = icmp eq i64 %i.jr, 1
  br i1 %i.js, label %bb.dc, label %.body

bb.dc:                                            ; preds = %bb.db
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsbzNSmZPCnTx_10tgrep_core7builder15OwnedReadBudgetE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.jg) #25
          to label %.body unwind label %bb.df, !noalias !496

bb.dd:                                            ; preds = %bb.da
  call void @llvm.experimental.noalias.scope.decl(metadata !506)
  call void @llvm.experimental.noalias.scope.decl(metadata !507)
  %i.jt = load ptr, ptr %i.jg, align 8, !alias.scope !508, !nonnull !5, !noundef !5
  %i.ju = atomicrmw add ptr %i.jt, i64 -1 release, align 8, !noalias !509
  %i.jv = icmp eq i64 %i.ju, 1
  br i1 %i.jv, label %bb.de, label %.thread170

bb.de:                                            ; preds = %bb.dd
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsbzNSmZPCnTx_10tgrep_core7builder15OwnedReadBudgetE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.jg) #25
          to label %.thread170 unwind label %bb.bg

bb.df:                                            ; preds = %bb.dc
  %i.jw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23, !noalias !496
  unreachable

common.resume.sink.split.i95:                     ; preds = %bb.du, %bb.dq, %bb.dp, %bb.cy
  %common.resume.op.ph.i96 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i109, %bb.cy ], [ %i.kw, %bb.dq ], [ %i.lc, %bb.du ], [ %i.kw, %bb.dp ]
  %.val3546.i97 = load i32, ptr %i.l, align 4, !range !6, !noalias !498, !noundef !5
  %i.jx = call noundef i32 @close(i32 noundef %.val3546.i97) #26, !noalias !499 ; 0 uses
  br label %.body

bb.dg:                                            ; preds = %bb.cz
  %i.jy = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.jz = load i32, ptr %i.jy, align 4, !range !6, !noalias !498, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !498
  store i32 %i.jz, ptr %i.l, align 4, !noalias !498
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !498
  invoke void @_RNvMs2_NtCs5Xr050g3D4S_3std2fsNtB5_4File8metadata(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.j, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.l)
          to label %bb.dh unwind label %.thread47.i84, !noalias !499

bb.dh:                                            ; preds = %bb.dg
  %i.ka = load i64, ptr %i.j, align 8, !range !18, !noalias !498, !noundef !5 ; 2 uses
  %i.kb = icmp eq i64 %i.ka, 2
  %i.kc = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  br i1 %i.kb, label %bb.di, label %bb.dl

bb.di:                                            ; preds = %bb.dh
  %.val37.i110 = load ptr, ptr %i.kc, align 8, !noalias !498, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !498
  %i.kd = ptrtoint ptr %.val37.i110 to i64        ; 2 uses
  %i.ke = and i64 %i.kd, 3
  switch i64 %i.ke, label %default.unreachable [
    i64 2, label %.thread55.i111
    i64 3, label %bb.dj
    i64 0, label %.thread55.i111
    i64 1, label %bb.dk
  ], !prof !15

bb.dj:                                            ; preds = %bb.di
  %i.kf = icmp ult ptr %.val37.i110, inttoptr (i64 188978561024 to ptr)
  %i.kg = and i64 %i.kd, 1095216660480
  %i.kh = icmp ne i64 %i.kg, 1095216660480
  call void @llvm.assume(i1 %i.kf)
  call void @llvm.assume(i1 %i.kh)
  br label %.thread55.i111

bb.dk:                                            ; preds = %bb.di
  %i.ki = getelementptr i8, ptr %.val37.i110, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ki) ]
  %i.kj = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.ki, ptr %i.kj, align 8, !alias.scope !510, !noalias !498
  store i8 3, ptr %i.f, align 8, !alias.scope !510, !noalias !498
  invoke void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.kj)
          to label %.thread55.i111 unwind label %.thread47.i84, !noalias !499

.thread55.i111:                                   ; preds = %bb.dk, %bb.dj, %bb.di, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !498
  br label %bb.dm

bb.dl:                                            ; preds = %bb.dh
  %.sroa.427.0..sroa_idx.i88 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !498
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.427.0..sroa_idx.i88, ptr noundef nonnull align 8 dereferenceable(168) %i.kc, i64 168, i1 false), !noalias !498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !498
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !498
  store i64 %i.ka, ptr %i.g, align 8, !noalias !498
  invoke void @_RNvNtCsbzNSmZPCnTx_10tgrep_core4meta12file_version(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.g)
          to label %bb.dw unwind label %.thread47.i84, !noalias !499

bb.dm:                                            ; preds = %bb.dw, %.thread55.i111
  %i.kk = phi <2 x i32> [ %i.lf, %bb.dw ], [ <i32 -2, i32 undef>, %.thread55.i111 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !498
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false), !noalias !511
  call void @llvm.experimental.noalias.scope.decl(metadata !512)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !513
  %i.kl = load ptr, ptr %i.i, align 8, !alias.scope !512, !noalias !498, !nonnull !5, !align !12, !noundef !5
  %i.km = load i64, ptr %i.kl, align 8, !noalias !514, !noundef !5 ; 2 uses
  invoke fastcc void @_RNvNtCsbzNSmZPCnTx_10tgrep_core7builder20read_owned_for_index(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.l, i64 noundef %i.km, i64 noundef %i.km)
          to label %bb.dn unwind label %bb.du, !noalias !515

bb.dn:                                            ; preds = %bb.dm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !513
  %i.kn = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ko = load ptr, ptr %i.kn, align 8, !alias.scope !512, !noalias !498, !nonnull !5, !noundef !5 ; 4 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.kq = load i64, ptr %i.kp, align 8, !alias.scope !512, !noalias !498, !noundef !5 ; 2 uses
  store ptr %i.ko, ptr %i.d, align 8, !noalias !513
  %i.kr = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.kq, ptr %i.kr, align 8, !noalias !513
  %i.ks = load i64, ptr %i.e, align 8, !range !8, !noalias !513, !noundef !5 ; 2 uses
  %i.kt = icmp eq i64 %i.ks, -1
  %i.ku = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.kv = load ptr, ptr %i.ku, align 8, !noalias !516 ; 3 uses
  br i1 %i.kt, label %bb.do, label %bb.dz
end_hunk_0
begin_hunk_1_@_RNvNtCsbzNSmZPCnTx_10tgrep_core7builder14read_for_index:bb.a

bb.du:                                            ; preds = %bb.dm
  %i.lc = landingpad { ptr, i32 }
          cleanup
  %i.ld = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core7builder15OwnedReadPermitEBF_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.ld) #22
          to label %common.resume.sink.split.i95 unwind label %bb.dv, !noalias !519

bb.dv:                                            ; preds = %bb.du
  %i.le = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23, !noalias !519
  unreachable

bb.dw:                                            ; preds = %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !498
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.01.i79, ptr noundef nonnull align 8 dereferenceable(72) %i.h, i64 72, i1 false), !noalias !498
  %.sroa.2.0..sroa_idx.i89 = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.lf = load <2 x i32>, ptr %.sroa.2.0..sroa_idx.i89, align 8, !noalias !498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !498
  br label %bb.dm

.thread159:                                       ; preds = %bb.dr, %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !513
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !513
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !498
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.kv, ptr %i.lg, align 8, !alias.scope !496
  store i64 -2, ptr %0, align 8, !alias.scope !496
  %.val.i108 = load i32, ptr %i.l, align 4, !range !6, !noalias !498, !noundef !5
  %i.lh = call noundef i32 @close(i32 noundef %.val.i108) #26, !noalias !499 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !498
  br label %.thread170

bb.dx:                                            ; preds = %bb.dy
  %i.li = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23, !noalias !496
  unreachable

bb.dy:                                            ; preds = %.thread.i80, %.thread47.i84
  %.pn42.i81 = phi { ptr, i32 } [ %i.jj, %.thread.i80 ], [ %lpad.thr_comm.i85, %.thread47.i84 ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtCsbzNSmZPCnTx_10tgrep_core7builder14read_for_indexs0_0EBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq) #22
          to label %.body unwind label %bb.dx, !noalias !496

bb.dz:                                            ; preds = %bb.dn
  %.sroa.10.0..sroa_idx.i98 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.10.0.copyload.i99 = load i64, ptr %.sroa.10.0..sroa_idx.i98, align 8, !noalias !516
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !513
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !513
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !498
  %i.lj = load i32, ptr %i.l, align 4, !range !6, !noalias !498, !noundef !5
  %.sroa.620.0..sroa_idx.i100 = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.620.0..sroa_idx.i100, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.01.i79, i64 72, i1 false), !noalias !520
  store i64 %i.ks, ptr %0, align 8, !alias.scope !496
  %.sroa.4.0..sroa_idx.i101 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.kv, ptr %.sroa.4.0..sroa_idx.i101, align 8, !alias.scope !496
  %.sroa.519.0..sroa_idx.i102 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.10.0.copyload.i99, ptr %.sroa.519.0..sroa_idx.i102, align 8, !alias.scope !496
  %.sroa.519.sroa.4.0..sroa.519.0..sroa_idx.sroa_idx.i103 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ko, ptr %.sroa.519.sroa.4.0..sroa.519.0..sroa_idx.sroa_idx.i103, align 8, !alias.scope !496
  %.sroa.519.sroa.5.0..sroa.519.0..sroa_idx.sroa_idx.i104 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.kq, ptr %.sroa.519.sroa.5.0..sroa.519.0..sroa_idx.sroa_idx.i104, align 8, !alias.scope !496
  %.sroa.721.0..sroa_idx.i105 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <2 x i32> %i.kk, ptr %.sroa.721.0..sroa_idx.i105, align 8, !alias.scope !496
  %.sroa.9.0..sroa_idx.i107 = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 %i.lj, ptr %.sroa.9.0..sroa_idx.i107, align 8, !alias.scope !496
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !498
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01.i79)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %bb.ek

.thread170:                                       ; preds = %bb.de, %bb.dd, %.thread159
  %i.lk = phi ptr [ %i.kv, %.thread159 ], [ %i.jn, %bb.dd ], [ %i.jn, %bb.de ] ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01.i79)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.lm = ptrtoint ptr %i.lk to i64               ; 4 uses
  %i.ln = and i64 %i.lm, 3                        ; 2 uses
  switch i64 %i.ln, label %default.unreachable [
    i64 2, label %bb.ea
    i64 3, label %bb.eb
    i64 0, label %bb.ec
    i64 1, label %bb.ed
  ], !prof !15

bb.ea:                                            ; preds = %.thread170
  %i.lo = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCsf3Ta7LF998c_4core2io5error12os_functions16get_os_functions()
          to label %.noexc.i unwind label %bb.ee

.noexc.i:                                         ; preds = %bb.ea
  %i.lp = lshr i64 %i.lm, 32
  %i.lq = trunc nuw i64 %i.lp to i32
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  %i.ls = load ptr, ptr %i.lr, align 8, !nonnull !5, !noundef !5
  %i.lt = invoke noundef i8 %i.ls(i32 noundef %i.lq)
          to label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i unwind label %bb.ee, !inline_history !360

bb.eb:                                            ; preds = %.thread170
  %i.lu = lshr i64 %i.lm, 32
  %i.lv = icmp ult ptr %i.lk, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i.i = trunc i64 %i.lu to i8 ; 2 uses
  %i.lw = icmp ne i8 %switch.idx.cast.i.i.i.i, -1
  call void @llvm.assume(i1 %i.lv)
  call void @llvm.assume(i1 %i.lw)
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i

bb.ec:                                            ; preds = %.thread170
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lk, i64 16
  %i.ly = load i8, ptr %i.lx, align 8, !range !467, !noundef !5
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i

bb.ed:                                            ; preds = %.thread170
  %i.lz = getelementptr i8, ptr %i.lk, i64 31
  %i.ma = load i8, ptr %i.lz, align 8, !range !467, !noundef !5
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i

bb.ee:                                            ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbzNSmZPCnTx_10tgrep_core.exit.i, %bb.ef, %.noexc.i, %bb.ea
  %i.mb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbzNSmZPCnTx_10tgrep_core(ptr nonnull %i.lk) #22
          to label %.body unwind label %bb.ej

_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i: ; preds = %bb.ed, %bb.ec, %bb.eb, %.noexc.i
  %.sroa.0.0.i.i = phi i8 [ %i.ma, %bb.ed ], [ %switch.idx.cast.i.i.i.i, %bb.eb ], [ %i.ly, %bb.ec ], [ %i.lt, %.noexc.i ]
  %i.mc = icmp eq i8 %.sroa.0.0.i.i, 13
  br i1 %i.mc, label %bb.ef, label %bb.el

bb.ef:                                            ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.ar, ptr %i.b, align 8
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsd_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx.i, align 8
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @7, ptr noundef nonnull %i.b)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbzNSmZPCnTx_10tgrep_core.exit.i unwind label %bb.ee

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbzNSmZPCnTx_10tgrep_core.exit.i: ; preds = %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.md = invoke noundef nonnull ptr @_RINvMNtNtCsgCecv3eZDcN_5alloc2io5errorNtNtNtCsf3Ta7LF998c_4core2io5error5Error3newNtNtB7_6string6StringECs30WoLBgco1_6ignore(i8 noundef 21, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.eg unwind label %bb.ee

bb.eg:                                            ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbzNSmZPCnTx_10tgrep_core.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  switch i64 %i.ln, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbzNSmZPCnTx_10tgrep_core.exit.i117
    i64 3, label %bb.eh
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbzNSmZPCnTx_10tgrep_core.exit.i117
    i64 1, label %bb.ei
  ], !prof !15

bb.eh:                                            ; preds = %bb.eg
  %i.me = icmp ult ptr %i.lk, inttoptr (i64 188978561024 to ptr)
  %i.mf = and i64 %i.lm, 1095216660480
  %i.mg = icmp ne i64 %i.mf, 1095216660480
  call void @llvm.assume(i1 %i.me)
  call void @llvm.assume(i1 %i.mg)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbzNSmZPCnTx_10tgrep_core.exit.i117

bb.ei:                                            ; preds = %bb.eg
  %i.mh = getelementptr i8, ptr %i.lk, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.mh) ]
  %i.mi = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.mh, ptr %i.mi, align 8, !alias.scope !521
  store i8 3, ptr %i.a, align 8, !alias.scope !521
  invoke void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.mi)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbzNSmZPCnTx_10tgrep_core.exit.i117 unwind label %bb.bg

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbzNSmZPCnTx_10tgrep_core.exit.i117: ; preds = %bb.ei, %bb.eh, %bb.eg, %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.el

bb.ej:                                            ; preds = %bb.ee
  %i.mj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.ek:                                            ; preds = %bb.dz, %bb.el
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  br label %bb.cu

bb.el:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbzNSmZPCnTx_10tgrep_core.exit.i117, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i
  %.sroa.0.0.i116 = phi ptr [ %i.md, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbzNSmZPCnTx_10tgrep_core.exit.i117 ], [ %i.lk, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr %.sroa.0.0.i116, ptr %i.ll, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.ek

bb.em:                                            ; preds = %bb.cw, %bb.cv, %bb.cu, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.en

bb.en:                                            ; preds = %bb.bb, %bb.bc, %bb.em, %bb.as, %.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  ret void

bb.eo:                                            ; preds = %.noexc, %bb.ax
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbzNSmZPCnTx_10tgrep_core(ptr %.sroa.8.0.ph) #22
          to label %common.resume unwind label %bb.ar
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsbzNSmZPCnTx_10tgrep_core7builder17default_index_dir(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  tail call void @_RINvMs16_NtCs5Xr050g3D4S_3std4pathNtB7_4Path4joinReECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 6)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCsbzNSmZPCnTx_10tgrep_core7builder19gitignore_gate_hint(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i8 %.73.val, i8 %.74.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 13 uses
  %i.d = trunc nuw i8 %.73.val to i1
  %i.e = trunc nuw i8 %.74.val to i1
  %or.cond = select i1 %i.d, i1 true, i1 %i.e
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvNtCsbzNSmZPCnTx_10tgrep_core9gitignore11in_git_repo(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RINvMs16_NtCs5Xr050g3D4S_3std4pathNtB7_4Path4joinReECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 10)
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !5
  %i.k = invoke noundef zeroext i1 @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path7is_file(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.j)
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  store i64 -1, ptr %0, align 8
  br label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #22
          to label %common.resume unwind label %bb.n

bb.g:                                             ; preds = %bb.d
  br i1 %i.k, label %.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbzNSmZPCnTx_10tgrep_core.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.k, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.k ], [ %i.m, %bb.i ], [ %i.l, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.h
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 -1, ptr %0, align 8
  br label %bb.m

.split:                                           ; preds = %bb.g
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbzNSmZPCnTx_10tgrep_core.exit12 unwind label %bb.k

bb.k:                                             ; preds = %.split
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbzNSmZPCnTx_10tgrep_core.exit12: ; preds = %.split
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %2, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1b_NtCs5Xr050g3D4S_3std4pathNtB6_7DisplayNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.44.0..sroa_idx, align 8
  call void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @28, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.m

bb.m:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbzNSmZPCnTx_10tgrep_core.exit12, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbzNSmZPCnTx_10tgrep_core.exit, %bb.e, %bb.b
  ret void

bb.n:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCsbzNSmZPCnTx_10tgrep_core7builder20extract_indexed_file(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([160 x i8]) align 8 captures(none) dereferenceable(160) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [80 x i8], align 8                ; 15 uses
  %i.c = alloca [176 x i8], align 8               ; 6 uses
  %i.d = alloca [176 x i8], align 8               ; 8 uses
  %i.e = alloca [16 x i8], align 1                ; 4 uses
  %.sroa.4 = alloca [16 x i8], align 1            ; 2 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.35 = alloca [24 x i8], align 8           ; 2 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.0 = load ptr, ptr %.sroa.0.0.in, align 8, !nonnull !5, !noundef !5
  %.sroa.3.0.in = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.3.0 = load i64, ptr %.sroa.3.0.in, align 8, !noundef !5 ; 4 uses
  invoke void @_RNvNtCsbzNSmZPCnTx_10tgrep_core8encoding16decode_for_index(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0, i64 noundef %.sroa.3.0)
          to label %bb.b unwind label %.thread38

.thread38:                                        ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !5
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8
  %i.o = invoke noundef zeroext i1 @_RNvNtCsbzNSmZPCnTx_10tgrep_core7trigram9is_binary(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.n)
          to label %bb.d unwind label %bb.c

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapmNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksINtNtB4_4hash18BuildHasherDefaultNtB1V_13TrigramHasherEEEEB1X_.exit: ; preds = %bb.aa, %bb.ab, %bb.g, %bb.h, %bb.c
  %.pn = phi { ptr, i32 } [ %i.u, %bb.g ], [ %i.p, %bb.c ], [ %i.u, %bb.h ], [ %i.cp, %bb.ab ], [ %i.cp, %bb.aa ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CowShEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #22
          to label %.thread unwind label %bb.z

bb.c:                                             ; preds = %bb.e, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapmNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksINtNtB4_4hash18BuildHasherDefaultNtB1V_13TrigramHasherEEEEB1X_.exit

bb.d:                                             ; preds = %bb.b
  br i1 %i.o, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.q = load ptr, ptr %i.k, align 8, !nonnull !5
  %i.r = load i64, ptr %i.m, align 8
  invoke void @_RNvNtCsbzNSmZPCnTx_10tgrep_core7trigram20extract_merged_masks(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.q, i64 noundef %i.r)
          to label %bb.f unwind label %bb.c

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.s = load ptr, ptr %i.k, align 8, !nonnull !5
  %i.t = load i64, ptr %i.m, align 8
  invoke void @_RNvMs3_NtCsbzNSmZPCnTx_10tgrep_core4metaNtB5_9ContentId18from_indexed_bytes(ptr noalias nofree noundef nonnull sret([16 x i8]) align 1 captures(none) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef %i.t)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = load ptr, ptr %i.g, align 8, !alias.scope !538, !noundef !5
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapmNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksINtNtB4_4hash18BuildHasherDefaultNtB1V_13TrigramHasherEEEEB1X_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTmNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapmNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksINtNtB4_4hash18BuildHasherDefaultNtB1V_13TrigramHasherEEEEB1X_.exit unwind label %bb.z

bb.i:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.4, ptr noundef nonnull align 1 dereferenceable(16) %i.e, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.03.0.copyload = load ptr, ptr %i.g, align 8
end_hunk_1
