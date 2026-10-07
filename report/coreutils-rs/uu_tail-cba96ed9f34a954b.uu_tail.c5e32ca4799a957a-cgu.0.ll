Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_tail-cba96ed9f34a954b.uu_tail.c5e32ca4799a957a-cgu.0?download=true
inline.NumInlined: 2464
inline.NumDeleted: 1150
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RNvCsgZlHlzpN0xi_7uu_tail10tail_stdin:bb.a
bb.s:                                             ; preds = %.lr.ph.i
  %i.ek = load i8, ptr %.sroa.0.1136.i, align 1, !alias.scope !2304, !noalias !2305, !noundef !10
  %i.el = zext i8 %i.ek to i32
  %i.em = add nsw i32 %i.el, -48                  ; 2 uses
  %i.en = icmp ult i32 %i.em, 10
  br i1 %i.en, label %bb.t, label %.loopexit599

bb.t:                                             ; preds = %bb.s
  %i.eo = zext nneg i32 %i.em to i64
  %i.ep = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.ei, i64 %i.eo) ; 2 uses
  %i.eq = extractvalue { i64, i1 } %i.ep, 1
  br i1 %i.eq, label %.loopexit599, label %bb.u, !prof !18

bb.u:                                             ; preds = %bb.t
  %i.er = extractvalue { i64, i1 } %i.ep, 0       ; 2 uses
  %.not102.i = icmp eq i64 %i.eg, 0
  br i1 %.not102.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph.i

.lr.ph141.i:                                      ; preds = %.preheader114.i, %bb.v
  %.sroa.0.2140.i = phi ptr [ %i.ey, %bb.v ], [ %i.ec, %.preheader114.i ] ; 2 uses
  %.sroa.26.2139.i = phi i64 [ %i.ex, %bb.v ], [ %i.ed, %.preheader114.i ]
  %.sroa.084.2138.i = phi i64 [ %i.fa, %bb.v ], [ 0, %.preheader114.i ]
  %i.es = load i8, ptr %.sroa.0.2140.i, align 1, !alias.scope !2304, !noalias !2305, !noundef !10
  %i.et = zext i8 %i.es to i32
  %i.eu = add nsw i32 %i.et, -48                  ; 2 uses
  %i.ev = icmp ult i32 %i.eu, 10
  br i1 %i.ev, label %bb.v, label %.loopexit599

bb.v:                                             ; preds = %.lr.ph141.i
  %i.ew = mul i64 %.sroa.084.2138.i, 10
  %i.ex = add nsw i64 %.sroa.26.2139.i, -1        ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i, i64 1
  %i.ez = zext nneg i32 %i.eu to i64
  %i.fa = sub i64 %i.ew, %i.ez                    ; 2 uses
  %.not103.i = icmp eq i64 %i.ex, 0
  br i1 %.not103.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph141.i

bb.w:                                             ; preds = %bb.q, %bb.p
  %.sroa.26.0.i = phi i64 [ %i.eb, %bb.q ], [ %.sroa.8.0.copyload440, %bb.p ] ; 4 uses
  %.sroa.0.0.i111 = phi ptr [ %i.ea, %bb.q ], [ %.sroa.5.0.copyload437, %bb.p ] ; 2 uses
  %i.fb = icmp samesign ult i64 %.sroa.26.0.i, 16
  br i1 %i.fb, label %.preheader.i, label %.preheader111.i

.preheader.i:                                     ; preds = %bb.w
  %.not105146.i = icmp eq i64 %.sroa.26.0.i, 0
  br i1 %.not105146.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph150.i

.preheader111.i:                                  ; preds = %bb.w, %bb.z
  %.sroa.0.3145.i = phi ptr [ %i.fc, %bb.z ], [ %.sroa.0.0.i111, %bb.w ] ; 2 uses
  %.sroa.26.3144.i = phi i64 [ %i.fd, %bb.z ], [ %.sroa.26.0.i, %bb.w ]
  %.sroa.084.3143.i = phi i64 [ %i.fo, %bb.z ], [ 0, %bb.w ]
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i, i64 1
  %i.fd = add nsw i64 %.sroa.26.3144.i, -1        ; 2 uses
  %i.fe = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i, i64 10) ; 2 uses
  %i.ff = extractvalue { i64, i1 } %i.fe, 0
  %i.fg = extractvalue { i64, i1 } %i.fe, 1
  br i1 %i.fg, label %.loopexit599, label %bb.x, !prof !18

bb.x:                                             ; preds = %.preheader111.i
  %i.fh = load i8, ptr %.sroa.0.3145.i, align 1, !alias.scope !2304, !noalias !2305, !noundef !10
  %i.fi = zext i8 %i.fh to i32
  %i.fj = add nsw i32 %i.fi, -48                  ; 2 uses
  %i.fk = icmp ult i32 %i.fj, 10
  br i1 %i.fk, label %bb.y, label %.loopexit599

bb.y:                                             ; preds = %bb.x
  %i.fl = zext nneg i32 %i.fj to i64
  %i.fm = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ff, i64 %i.fl) ; 2 uses
  %i.fn = extractvalue { i64, i1 } %i.fm, 1
  br i1 %i.fn, label %.loopexit599, label %bb.z, !prof !18

bb.z:                                             ; preds = %bb.y
  %i.fo = extractvalue { i64, i1 } %i.fm, 0       ; 2 uses
  %.not104.i = icmp eq i64 %i.fd, 0
  br i1 %.not104.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.preheader111.i

.lr.ph150.i:                                      ; preds = %.preheader.i, %bb.aa
  %.sroa.0.4149.i = phi ptr [ %i.fv, %bb.aa ], [ %.sroa.0.0.i111, %.preheader.i ] ; 2 uses
  %.sroa.26.4148.i = phi i64 [ %i.fu, %bb.aa ], [ %.sroa.26.0.i, %.preheader.i ]
  %.sroa.084.4147.i = phi i64 [ %i.fx, %bb.aa ], [ 0, %.preheader.i ]
  %i.fp = load i8, ptr %.sroa.0.4149.i, align 1, !alias.scope !2304, !noalias !2305, !noundef !10
  %i.fq = zext i8 %i.fp to i32
  %i.fr = add nsw i32 %i.fq, -48                  ; 2 uses
  %i.fs = icmp ult i32 %i.fr, 10
  br i1 %i.fs, label %bb.aa, label %.loopexit599

bb.aa:                                            ; preds = %.lr.ph150.i
  %i.ft = mul i64 %.sroa.084.4147.i, 10
  %i.fu = add nsw i64 %.sroa.26.4148.i, -1        ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i, i64 1
  %i.fw = zext nneg i32 %i.fr to i64
  %i.fx = add i64 %i.ft, %i.fw                    ; 2 uses
  %.not105.i = icmp eq i64 %i.fu, 0
  br i1 %.not105.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph150.i

bb.ab:                                            ; preds = %bb.b
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 4 uses
  %.sroa.9456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %.sroa.9456.0.copyload = load i64, ptr %.sroa.9456.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  call void @_RNvMCs2bigjmRWhCC_9same_fileNtB2_6Handle5stdin(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bu) #33
  %i.fy = getelementptr inbounds nuw i8, ptr %i.bu, i64 20
  %i.fz = load i8, ptr %i.fy, align 4, !range !16, !noundef !10
  %i.ga = icmp eq i8 %i.fz, 2
  br i1 %i.ga, label %.thread, label %bb.ae

bb.ac:                                            ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  %i.gb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val102 = load ptr, ptr %i.gb, align 8, !nonnull !10, !noundef !10
  %i.gc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val103 = load i64, ptr %i.gc, align 8, !noundef !10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2307)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !2306
  store ptr %.val102, ptr %i.ak, align 8, !noalias !2308
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i64 %.val103, ptr %i.gd, align 8, !noalias !2308
  %i.ge = load i8, ptr %1, align 1, !range !13, !alias.scope !2309, !noalias !2310, !noundef !10
  %i.gf = trunc nuw i8 %i.ge to i1
  br i1 %i.gf, label %bb.ad, label %_RNvMs1_NtCsgZlHlzpN0xi_7uu_tail5pathsNtB5_13HeaderPrinter11print_input.exit

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !2308
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.gh = load i8, ptr %i.gg, align 1, !range !13, !alias.scope !2309, !noalias !2310, !noundef !10
  %i.gi = trunc nuw i8 %i.gh to i1                ; 2 uses
  %spec.select.i.i = select i1 %i.gi, ptr inttoptr (i64 1 to ptr), ptr @157
  %not..i.i = xor i1 %i.gi, true
  %spec.select8.i.i = zext i1 %not..i.i to i64
  store ptr %spec.select.i.i, ptr %i.aj, align 8, !noalias !2308, !captures !39
  %i.gj = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 %spec.select8.i.i, ptr %i.gj, align 8, !noalias !2308
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !2308
  store ptr %i.aj, ptr %i.ai, align 8, !noalias !2308
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsgZlHlzpN0xi_7uu_tail, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !2308
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr %i.ak, ptr %i.gk, align 8, !noalias !2308
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsgZlHlzpN0xi_7uu_tail, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !2308
  call void @_RNvNtNtCs2vKOLqTMYjT_3std2io5stdio6__print(ptr noundef nonnull @158, ptr noundef nonnull %i.ai) #33, !noalias !2309
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !2308
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !2308
  store i8 0, ptr %i.gg, align 1, !alias.scope !2309, !noalias !2310
  br label %_RNvMs1_NtCsgZlHlzpN0xi_7uu_tail5pathsNtB5_13HeaderPrinter11print_input.exit

_RNvMs1_NtCsgZlHlzpN0xi_7uu_tail5pathsNtB5_13HeaderPrinter11print_input.exit: ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !2306
  %i.gl = call noundef zeroext i1 @_RNvNtNtCsh036I4OHgIr_6uucore8features7signals16stdin_was_closed() #33
  br i1 %i.gl, label %bb.di, label %bb.aq

.thread:                                          ; preds = %bb.ab
  %i.gm = load ptr, ptr %i.bu, align 8, !nonnull !10, !noundef !10
  %i.gn = ptrtoint ptr %i.gm to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  br label %bb.ah

bb.ae:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.bu, i64 24, i1 false)
  %i.go = call noundef nonnull align 4 ptr @_RNvMCs2bigjmRWhCC_9same_fileNtB2_6Handle11as_file_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq) #33
  %i.gp = call { i64, ptr } @_RNvXsc_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs6JMX4GRUq9U_4core2io4seek4Seek15stream_position(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.go) #33 ; 2 uses
  %i.gq = extractvalue { i64, ptr } %i.gp, 0
  %i.gr = extractvalue { i64, ptr } %i.gp, 1
  %i.gs = ptrtoint ptr %i.gr to i64               ; 2 uses
  call void @_RNvXNtCs2bigjmRWhCC_9same_file4unixNtB2_6HandleNtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq) #33
  %i.gt = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %.val.i.i = load i32, ptr %i.gt, align 8, !alias.scope !2311, !noundef !10 ; 2 uses
  %i.gu = icmp eq i32 %.val.i.i, -1
  br i1 %i.gu, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gv = call noundef i32 @close(i32 noundef %.val.i.i) #33 ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  %i.gw = trunc nuw i64 %i.gq to i1
  br i1 %i.gw, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag, %.thread
  %.sroa.7.0523 = phi i64 [ %i.gn, %.thread ], [ %i.gs, %bb.ag ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !2312
  %i.gx = and i64 %.sroa.7.0523, 3
  switch i64 %i.gx, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultyNtNtNtB4_2io5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit
    i64 3, label %bb.ai
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultyNtNtNtB4_2io5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit
    i64 1, label %bb.aj
  ], !prof !23

bb.ai:                                            ; preds = %bb.ah
  %i.gy = icmp ult i64 %.sroa.7.0523, 188978561024
  call void @llvm.assume(i1 %i.gy)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultyNtNtNtB4_2io5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit

bb.aj:                                            ; preds = %bb.ah
  %i.gz = inttoptr i64 %.sroa.7.0523 to ptr       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gz) ]
  %i.ha = getelementptr i8, ptr %i.gz, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ha) ]
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  store ptr %i.ha, ptr %i.hb, align 8, !alias.scope !2313, !noalias !2312
  store i8 3, ptr %i.ah, align 8, !alias.scope !2313, !noalias !2312
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.hb) #33, !noalias !2312
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultyNtNtNtB4_2io5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultyNtNtNtB4_2io5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit: ; preds = %bb.ah, %bb.ah, %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !2312
  br label %bb.ak

bb.ak:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultyNtNtNtB4_2io5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit, %bb.ag
  %.sroa.01.0524 = phi i64 [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultyNtNtNtB4_2io5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit ], [ %i.gs, %bb.ag ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload) ]
  %i.hc = call fastcc { ptr, ptr } @_RNvCsgZlHlzpN0xi_7uu_tail9tail_file(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias nofree noundef dereferenceable(2) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.6.0.copyload, i64 noundef %.sroa.9456.0.copyload, ptr noalias nofree noundef align 8 dereferenceable(144) %3, i64 noundef %.sroa.01.0524) #33 ; 2 uses
  %i.hd = extractvalue { ptr, ptr } %i.hc, 0      ; 2 uses
  %.not85 = icmp eq ptr %i.hd, null
  br i1 %.not85, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.he = extractvalue { ptr, ptr } %i.hc, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.he) ]
  %i.hf = icmp eq i64 %i.cs, 0
  br i1 %i.hf, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload, i64 noundef %i.cs, i64 noundef range(i64 1, -9223372036854775807) 1) #33
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit: ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  br label %bb.ap

bb.an:                                            ; preds = %bb.ak
  %i.hg = icmp eq i64 %i.cs, 0
  br i1 %i.hg, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit114, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload, i64 noundef %i.cs, i64 noundef range(i64 1, -9223372036854775807) 1) #33
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit114

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit114: ; preds = %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  br label %bb.ap

bb.ap:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit114, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinEECsgZlHlzpN0xi_7uu_tail.exit136, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgZlHlzpN0xi_7uu_tail.exit342, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgZlHlzpN0xi_7uu_tail.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgZlHlzpN0xi_7uu_tail.exit429, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinEECsgZlHlzpN0xi_7uu_tail.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit
  %.sroa.5.0 = phi ptr [ undef, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgZlHlzpN0xi_7uu_tail.exit429 ], [ %i.he, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit ], [ %.sroa.17.6.i922, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinEECsgZlHlzpN0xi_7uu_tail.exit ], [ undef, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgZlHlzpN0xi_7uu_tail.exit ], [ undef, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgZlHlzpN0xi_7uu_tail.exit342 ], [ undef, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinEECsgZlHlzpN0xi_7uu_tail.exit136 ], [ undef, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit114 ]
  %.sroa.0.0 = phi ptr [ null, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgZlHlzpN0xi_7uu_tail.exit429 ], [ %i.hd, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit ], [ %.sroa.0.6.i923, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinEECsgZlHlzpN0xi_7uu_tail.exit ], [ null, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgZlHlzpN0xi_7uu_tail.exit ], [ null, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgZlHlzpN0xi_7uu_tail.exit342 ], [ null, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinEECsgZlHlzpN0xi_7uu_tail.exit136 ], [ null, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit114 ]
  %i.hh = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.hi = insertvalue { ptr, ptr } %i.hh, ptr %.sroa.5.0, 1
  ret { ptr, ptr } %i.hi

bb.aq:                                            ; preds = %_RNvMs1_NtCsgZlHlzpN0xi_7uu_tail5pathsNtB5_13HeaderPrinter11print_input.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  %i.hj = call noundef nonnull align 8 ptr @_RNvNtNtCs2vKOLqTMYjT_3std2io5stdio5stdin() #33
  call void @llvm.experimental.noalias.scope.decl(metadata !2314)
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !2315
  %i.hk = call noundef dereferenceable_or_null(8192) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 8192, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !2315 ; 2 uses
  %i.hl = icmp eq ptr %i.hk, null
  br i1 %i.hl, label %bb.ar, label %_RNvMNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB2_9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinE13with_capacityCsgZlHlzpN0xi_7uu_tail.exit

bb.ar:                                            ; preds = %bb.aq
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 8192) #39, !noalias !2314
  unreachable

_RNvMNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB2_9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinE13with_capacityCsgZlHlzpN0xi_7uu_tail.exit: ; preds = %bb.aq
  store ptr %i.hk, ptr %i.ar, align 8, !alias.scope !2314
  %.sroa.4.0..sroa_idx.i115 = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 3 uses
  store i64 8192, ptr %.sroa.4.0..sroa_idx.i115, align 8, !alias.scope !2314
  %.sroa.5.0..sroa_idx.i116 = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.hm = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.sroa.5.0..sroa_idx.i116, i8 0, i64 17, i1 false), !alias.scope !2314
  store ptr %i.hj, ptr %i.hm, align 8, !alias.scope !2314
  call void @llvm.experimental.noalias.scope.decl(metadata !2316)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !2317
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !2317
  %i.hn = call noundef nonnull align 8 ptr @_RNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stdout() #33, !noalias !2317
  store ptr %i.hn, ptr %i.af, align 8, !noalias !2317
  %i.ho = call noundef nonnull align 8 ptr @_RNvMsa_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6Stdout4lock(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.af) #33, !noalias !2317
  call void @llvm.experimental.noalias.scope.decl(metadata !2318)
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !2319
  %i.hp = call noundef dereferenceable_or_null(8192) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 8192, i64 noundef range(i64 1, 9) 1) #33, !noalias !2319 ; 2 uses
  %i.hq = icmp eq ptr %i.hp, null
  br i1 %i.hq, label %bb.as, label %_RNvMNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB2_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockE13with_capacityCsgZlHlzpN0xi_7uu_tail.exit.i

bb.as:                                            ; preds = %_RNvMNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB2_9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinE13with_capacityCsgZlHlzpN0xi_7uu_tail.exit
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 8192) #39, !noalias !2320
  unreachable

_RNvMNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB2_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockE13with_capacityCsgZlHlzpN0xi_7uu_tail.exit.i: ; preds = %_RNvMNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB2_9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinE13with_capacityCsgZlHlzpN0xi_7uu_tail.exit
  store i64 8192, ptr %i.ag, align 8, !alias.scope !2318, !noalias !2317
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 4 uses
  store ptr %i.hp, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2318, !noalias !2317
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 7 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2318, !noalias !2317
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store i8 0, ptr %i.hr, align 8, !alias.scope !2318, !noalias !2317
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ag, i64 32 ; 2 uses
  store ptr %i.ho, ptr %i.hs, align 8, !alias.scope !2318, !noalias !2317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !2317
  %i.ht = load i64, ptr %0, align 8, !range !40, !alias.scope !2316, !noalias !2321, !noundef !10
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  switch i64 %i.ht, label %default.unreachable [
    i64 -1, label %bb.at
    i64 0, label %bb.ch
    i64 1, label %bb.ci
    i64 2, label %bb.bk
    i64 3, label %bb.cj
  ]

bb.at:                                            ; preds = %_RNvMNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB2_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockE13with_capacityCsgZlHlzpN0xi_7uu_tail.exit.i
  %i.hv = load i64, ptr %i.hu, align 8, !range !41, !alias.scope !2316, !noalias !2321, !noundef !10
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  switch i64 %i.hv, label %default.unreachable [
    i64 0, label %bb.au
    i64 1, label %bb.bj
    i64 2, label %bb.bk
    i64 3, label %bb.bl
  ]

.loopexit196.i:                                   ; preds = %bb.bz
  unreachable

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !2317
  %i.hx = load i64, ptr %i.hw, align 8, !alias.scope !2316, !noalias !2321, !noundef !10
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ac, i64 32 ; 2 uses
  store i64 %i.hx, ptr %i.hy, align 8, !noalias !2317
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ac, i64 40 ; 4 uses
  store i64 0, ptr %i.hz, align 8, !noalias !2317
  store i64 0, ptr %i.ac, align 8, !noalias !2317
  %.sroa.477.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 5 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.477.0..sroa_idx.i, align 8, !noalias !2317
  %.sroa.578.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 6 uses
  %.sroa.679.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2322)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.578.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !2317
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01.i.i)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8192) %.sroa.01.i.i, i8 0, i64 8192, i1 false), !noalias !2323
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !2324
  %_RNvCsjSVV5GABoor_7___rustc19___rust_alloc_zeroed.i.i = call align 8 dereferenceable_or_null(8200) ptr @_RNvCsjSVV5GABoor_7___rustc19___rust_alloc_zeroed(i64 8200, i64 8), !noalias !2325 ; 5 uses
  %i.ia = icmp eq ptr %_RNvCsjSVV5GABoor_7___rustc19___rust_alloc_zeroed.i.i, null
  br i1 %i.ia, label %bb.av, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i, !prof !18

bb.av:                                            ; preds = %bb.au
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8200) #39, !noalias !2324
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i: ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !2323
  call fastcc void @_RINvMs0_NtCsgZlHlzpN0xi_7uu_tail6chunksNtB6_10BytesChunk4fillINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinEEB8_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.y, ptr noalias nofree noundef align 8 dereferenceable(8200) %_RNvCsjSVV5GABoor_7___rustc19___rust_alloc_zeroed.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ar) #33, !noalias !2326
  %i.ib = load i64, ptr %i.y, align 8, !range !17, !noalias !2323, !noundef !10
  %i.ic = trunc nuw i64 %i.ib to i1
  br i1 %i.ic, label %.loopexit283.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i
  %i.id = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.ie = load i64, ptr %i.id, align 8, !range !17, !noalias !2323, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !2323
  %.not.i.i121698 = icmp eq i64 %i.ie, 0
  br i1 %.not.i.i121698, label %._crit_edge.thread, label %.lr.ph

bb.aw:                                            ; preds = %bb.bh
  %i.if = load i64, ptr %i.id, align 8, !range !17, !noalias !2323, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !2323
  %.not.i.i121 = icmp eq i64 %i.if, 0
  br i1 %.not.i.i121, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.aw
  %i.ig = call i64 @llvm.usub.sat.i64(i64 %i.kd, i64 %i.jz) ; 4 uses
  %i.ih = icmp eq i64 %i.kc, 0
  br i1 %i.ih, label %._crit_edge.thread, label %bb.az

.lr.ph:                                           ; preds = %.lr.ph.i.i, %bb.aw
  %.sroa.0.03442.i.i699 = phi ptr [ %.sroa.0.135.i.i, %bb.aw ], [ %_RNvCsjSVV5GABoor_7___rustc19___rust_alloc_zeroed.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.ii = phi i64 [ %i.kd, %bb.aw ], [ 0, %.lr.ph.i.i ]
  %i.ij = phi i64 [ %i.kc, %bb.aw ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.ik = phi i64 [ %i.iv, %bb.aw ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.il = phi i64 [ %i.kb, %bb.aw ], [ 0, %.lr.ph.i.i ]
  %i.im = phi ptr [ %i.it, %bb.aw ], [ inttoptr (i64 8 to ptr), %.lr.ph.i.i ]
  %i.in = getelementptr inbounds nuw i8, ptr %.sroa.0.03442.i.i699, i64 8192 ; 2 uses
  %i.io = load i64, ptr %i.in, align 8, !noalias !2326, !noundef !10
  %i.ip = add i64 %i.io, %i.ii
  store i64 %i.ip, ptr %i.hz, align 8, !alias.scope !2322, !noalias !2327
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !2326
  %i.iq = call noalias noundef align 8 dereferenceable_or_null(8200) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 8200, i64 noundef range(i64 1, -9223372036854775807) 8) #33, !noalias !2326 ; 3 uses
  %i.ir = icmp eq ptr %i.iq, null
  br i1 %i.ir, label %bb.ax, label %_RNvXsd_NtCs7tKScEop1B6_5alloc5boxedINtB5_3BoxNtNtCsgZlHlzpN0xi_7uu_tail6chunks10BytesChunkENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneBL_.exit.i.i, !prof !18

bb.ax:                                            ; preds = %.lr.ph
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8200) #39, !noalias !2326
  unreachable

_RNvXsd_NtCs7tKScEop1B6_5alloc5boxedINtB5_3BoxNtNtCsgZlHlzpN0xi_7uu_tail6chunks10BytesChunkENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneBL_.exit.i.i: ; preds = %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(8200) %i.iq, ptr noundef nonnull readonly align 8 dereferenceable(8200) %.sroa.0.03442.i.i699, i64 8200, i1 false), !noalias !2326
  call void @llvm.experimental.noalias.scope.decl(metadata !2328)
  %i.is = icmp eq i64 %i.ij, %i.ik
  br i1 %i.is, label %bb.ay, label %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_5boxed3BoxNtNtCsgZlHlzpN0xi_7uu_tail6chunks10BytesChunkEE13push_back_mutB1r_.exit.i.i

end_hunk_0
