Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/elfshaker-rs/original/elfshaker.elfshaker.5892cc60208a05dd-cgu.05?download=true
inline.NumInlined: 500
inline.NumDeleted: 171
begin_hunk_0_@_RINvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB6_10Repository18open_with_data_dirNtNtCsaL1QbXo9JQH_3std4path7PathBufRNtB1s_4PathECs7BtpbLEd5q3_9elfshaker:bb.a
  %i.eu = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 1610612768, ptr %i.eu, align 8, !noalias !104
  store ptr %i.d, ptr %i.c, align 8, !noalias !104
  %i.ev = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @88, ptr %i.ev, align 8, !noalias !104
  %i.ew = invoke noundef zeroext i1 @_RNvXsg_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_9ErrorKindNtNtB9_3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.ca unwind label %bb.bz, !noalias !108

bb.bz:                                            ; preds = %bb.cb, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit101
  %i.ex = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #27
          to label %.body106 unwind label %bb.cc, !noalias !108

bb.ca:                                            ; preds = %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit101
  br i1 %i.ew, label %bb.cb, label %bb.cd, !prof !44

bb.cb:                                            ; preds = %bb.ca
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @89, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @33, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @91) #30
          to label %.noexc.i unwind label %bb.bz, !noalias !108

.noexc.i:                                         ; preds = %bb.cb
  unreachable

bb.cc:                                            ; preds = %bb.bz
  %i.ey = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26, !noalias !108
  unreachable

bb.cd:                                            ; preds = %bb.ca
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !104
  %i.ez = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.fa = load i64, ptr %i.ez, align 8, !noundef !6
  %i.fb = icmp eq i64 %i.fa, 38
  br i1 %i.fb, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.fc = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !nonnull !6, !noundef !6
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(38) %i.fd, ptr noundef nonnull dereferenceable(38) @14, i64 38)
  %i.fe = icmp eq i32 %bcmp, 0
  br i1 %i.fe, label %bb.ck, label %bb.cf

bb.cf:                                            ; preds = %bb.cd, %bb.ce
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.ci unwind label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ff = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %i.n, align 8, !alias.scope !110 ; 2 uses
  %i.fg = icmp eq i64 %.val2.i.i, 0
  br i1 %i.fg, label %.body106, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.fh = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val3.i.i = load ptr, ptr %i.fh, align 8, !alias.scope !117, !nonnull !6, !noundef !6
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !118
  br label %.body106

bb.ci:                                            ; preds = %bb.cf
  %.val.i.i = load i64, ptr %i.n, align 8, !alias.scope !110 ; 2 uses
  %i.fi = icmp eq i64 %.val.i.i, 0
  br i1 %i.fi, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.fj = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val1.i.i = load ptr, ptr %i.fj, align 8, !alias.scope !117, !nonnull !6, !noundef !6
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !121
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit

bb.ck:                                            ; preds = %bb.ce
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.cn unwind label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.fk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i111 = load i64, ptr %i.n, align 8, !alias.scope !124 ; 2 uses
  %i.fl = icmp eq i64 %.val2.i.i111, 0
  br i1 %i.fl, label %.body106, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %.val3.i.i112 = load ptr, ptr %i.fc, align 8, !alias.scope !131, !nonnull !6, !noundef !6
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i112, i64 noundef %.val2.i.i111, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !132
  br label %.body106

bb.cn:                                            ; preds = %bb.ck
  %.val.i.i114 = load i64, ptr %i.n, align 8, !alias.scope !124 ; 2 uses
  %i.fm = icmp eq i64 %.val.i.i114, 0
  br i1 %i.fm, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit119, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %.val1.i.i115 = load ptr, ptr %i.fc, align 8, !alias.scope !131, !nonnull !6, !noundef !6
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i115, i64 noundef %.val.i.i114, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !135
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit119

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.cj, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %i.fn, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.val60, ptr %.sroa.435.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bl

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit95: ; preds = %bb.bp, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.l

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.cq unwind label %bb.cp

bb.cp:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit
  %i.fo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i120 = load i64, ptr %1, align 8, !alias.scope !138 ; 2 uses
  %i.fp = icmp eq i64 %.val2.i.i.i.i120, 0
  br i1 %i.fp, label %common.resume, label %common.resume.sink.split

bb.cq:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit
  %.val.i.i.i.i123 = load i64, ptr %1, align 8, !alias.scope !138 ; 2 uses
  %i.fq = icmp eq i64 %.val.i.i.i.i123, 0
  br i1 %i.fq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit125, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit125.sink.split

common.resume.sink.split:                         ; preds = %bb.cp, %bb.cw
  %.val2.i.i.i.i130.sink = phi i64 [ %.val2.i.i.i.i130, %bb.cw ], [ %.val2.i.i.i.i120, %bb.cp ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.fw, %bb.cw ], [ %i.fo, %bb.cp ]
  %.val3.i.i.i.i131 = load ptr, ptr %i.y, align 8, !nonnull !6, !noundef !6
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i131, i64 noundef %.val2.i.i.i.i130.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !6
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %.body, %bb.cw, %bb.cp
  %common.resume.op = phi { ptr, i32 } [ %i.fw, %bb.cw ], [ %i.fo, %bb.cp ], [ %.pn49.pn.pn, %.body ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit125.sink.split: ; preds = %bb.cq, %bb.cx
  %.val.i.i.i.i133.sink = phi i64 [ %.val.i.i.i.i133, %bb.cx ], [ %.val.i.i.i.i123, %bb.cq ]
  %.val1.i.i.i.i134 = load ptr, ptr %i.y, align 8, !nonnull !6, !noundef !6
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i134, i64 noundef %.val.i.i.i.i133.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !6
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit125

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit125: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit125.sink.split, %bb.cx, %bb.cq
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit119: ; preds = %bb.co, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !149
  switch i64 %i.bg, label %default.unreachable [
    i64 2, label %bb.ct
    i64 3, label %bb.cr
    i64 0, label %bb.ct
    i64 1, label %bb.cs
  ], !prof !17

bb.cr:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit119
  %i.fr = icmp ult ptr %.val60, inttoptr (i64 188978561024 to ptr)
  %i.fs = and i64 %i.bf, 1095216660480
  %i.ft = icmp ne i64 %i.fs, 1095216660480
  call void @llvm.assume(i1 %i.fr)
  call void @llvm.assume(i1 %i.ft)
  br label %bb.ct

bb.cs:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit119
  %i.fu = getelementptr i8, ptr %.val60, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fu) ]
  %i.fv = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.fu, ptr %i.fv, align 8, !alias.scope !152, !noalias !149
  store i8 3, ptr %i.b, align 8, !alias.scope !152, !noalias !149
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fv)
          to label %bb.ct unwind label %bb.bj

bb.ct:                                            ; preds = %bb.cr, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit119, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit119, %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !149
  br label %bb.cv

bb.cu:                                            ; preds = %bb.bx, %bb.bw, %bb.bw, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !98
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct, %bb.ak
  %.sroa.0136.0 = phi i32 [ -1, %bb.cu ], [ -1, %bb.ct ], [ %i.bv, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.018)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.018, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  %.sroa.018.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.018, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.018.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.018, i64 48, i1 false)
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.519.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @15, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.7.sroa.0.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i8 0, ptr %.sroa.7.sroa.0.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx, align 4
  %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 69
  store i8 0, ptr %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx, align 1
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %.sroa.0136.0, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.018)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.cx unwind label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.fw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i130 = load i64, ptr %1, align 8, !alias.scope !155 ; 2 uses
  %i.fx = icmp eq i64 %.val2.i.i.i.i130, 0
  br i1 %i.fx, label %common.resume, label %common.resume.sink.split

bb.cx:                                            ; preds = %bb.cv
  %.val.i.i.i.i133 = load i64, ptr %1, align 8, !alias.scope !155 ; 2 uses
  %i.fy = icmp eq i64 %.val.i.i.i.i133, 0
  br i1 %i.fy, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit125, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit125.sink.split

bb.cy:                                            ; preds = %.body106
  %i.fz = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fz) #27
          to label %bb.cz unwind label %bb.bq

bb.cz:                                            ; preds = %.body106.thread, %bb.w, %bb.cy, %.body106
  %.pn49.ph = phi { ptr, i32 } [ %.pn47, %.body106 ], [ %.pn47, %bb.cy ], [ %i.bb, %bb.w ], [ %.pn45, %.body106.thread ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.v) #27
          to label %bb.da unwind label %bb.bq

bb.da:                                            ; preds = %bb.cz, %bb.c, %bb.s, %bb.bn, %bb.bm
  %.pn49.pn.ph = phi { ptr, i32 } [ %.pn49.ph, %bb.cz ], [ %i.av, %bb.s ], [ %i.ab, %bb.c ], [ %i.dx, %bb.bn ], [ %i.dx, %bb.bm ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.x) #27
          to label %.body unwind label %bb.bq

.body:                                            ; preds = %bb.m, %bb.n, %bb.b, %bb.da
  %.pn49.pn.pn = phi { ptr, i32 } [ %.pn49.pn.ph, %bb.da ], [ %i.am, %bb.m ], [ %i.aa, %bb.b ], [ %i.am, %bb.n ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #27
          to label %common.resume unwind label %bb.bq
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB6_10Repository18open_with_data_dirRNtNtCsaL1QbXo9JQH_3std4path4PathRNtB1t_7PathBufECs7BtpbLEd5q3_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 4 uses
  %i.l = alloca [176 x i8], align 8               ; 6 uses
  %.sroa.018 = alloca [48 x i8], align 8          ; 5 uses
  %i.m = alloca [1 x i8], align 1                 ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 14 uses
  %i.o = alloca [40 x i8], align 8                ; 8 uses
  %i.p = alloca [8 x i8], align 8                 ; 5 uses
  %i.q = alloca [4 x i8], align 4                 ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [16 x i8], align 8                ; 8 uses
  %i.t = alloca [16 x i8], align 16               ; 5 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 11 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @_RNvMs16_NtCsaL1QbXo9JQH_3std4pathNtB6_4Path11to_path_buf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val.i = load ptr, ptr %i.y, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val1.i = load i64, ptr %i.z, align 8, !noundef !6 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @_RINvNtCsaL1QbXo9JQH_3std2fs8metadataRNtNtB4_4path4PathECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.h, %bb.g, %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.ab = load i64, ptr %i.l, align 8, !range !13, !noundef !6
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.val56 = load ptr, ptr %i.ac, align 8          ; 4 uses
  %.not.i = icmp eq i64 %i.ab, 2
  br i1 %.not.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val56) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !166
  %i.ad = ptrtoint ptr %.val56 to i64             ; 2 uses
  %i.ae = and i64 %i.ad, 3
  switch i64 %i.ae, label %default.unreachable [
    i64 2, label %bb.g
    i64 3, label %bb.e
    i64 0, label %bb.g
    i64 1, label %bb.f
  ], !prof !17

default.unreachable:                              ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit116, %bb.bu, %bb.bp, %bb.bc, %bb.az, %bb.aq, %bb.an, %bb.ak, %bb.af, %bb.x, %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.af = icmp ult ptr %.val56, inttoptr (i64 188978561024 to ptr)
  %i.ag = and i64 %i.ad, 1095216660480
  %i.ah = icmp ne i64 %i.ag, 1095216660480
  tail call void @llvm.assume(i1 %i.af)
  tail call void @llvm.assume(i1 %i.ah)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ai = getelementptr i8, ptr %.val56, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ai) ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store ptr %i.ai, ptr %i.aj, align 8, !alias.scope !169, !noalias !166
  store i8 3, ptr %i.k, align 8, !alias.scope !169, !noalias !166
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aj)
          to label %bb.g unwind label %bb.b

bb.g:                                             ; preds = %bb.d, %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  invoke void @_RNvMs16_NtCsaL1QbXo9JQH_3std4pathNtB6_4Path11to_path_buf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i)
          to label %bb.i unwind label %bb.b

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  invoke void @_RINvNtCsaL1QbXo9JQH_3std2fs12canonicalizeRNtNtB4_4path4PathECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.u, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i)
          to label %bb.o unwind label %bb.b

bb.i:                                             ; preds = %bb.g
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775796, ptr %i.ak, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit92, %bb.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i = load i64, ptr %i.x, align 8, !alias.scope !172 ; 2 uses
  %i.am = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.am, label %common.resume, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.val3.i.i.i.i = load ptr, ptr %i.an, align 8, !alias.scope !183, !nonnull !6, !noundef !6
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %.val2.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !184
  br label %common.resume

bb.m:                                             ; preds = %bb.j
  %.val.i.i.i.i = load i64, ptr %i.x, align 8, !alias.scope !172 ; 2 uses
  %i.ao = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.ao, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.ap, align 8, !alias.scope !183, !nonnull !6, !noundef !6
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !187
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit

common.resume:                                    ; preds = %.thread, %bb.k, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.al, %bb.k ], [ %i.al, %bb.l ], [ %.pn49.pn135, %.thread ]
  resume { ptr, i32 } %common.resume.op

bb.o:                                             ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !190)
  call void @llvm.experimental.noalias.scope.decl(metadata !193)
  %i.aq = load i64, ptr %i.u, align 8, !range !5, !alias.scope !193, !noalias !190, !noundef !6
  %i.ar = icmp eq i64 %i.aq, -1
  br i1 %i.ar, label %bb.p, label %bb.t, !prof !44

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !195
  %i.as = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !193, !noalias !190, !nonnull !6, !noundef !6
  store ptr %i.at, ptr %i.j, align 8, !noalias !195
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 19, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #29
          to label %bb.r unwind label %bb.q, !noalias !195

bb.q:                                             ; preds = %bb.p
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #27
          to label %.thread unwind label %bb.s, !noalias !195

end_hunk_0
begin_hunk_1_@_RINvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB6_10Repository18open_with_data_dirRNtNtCsaL1QbXo9JQH_3std4path4PathRNtB1t_7PathBufECs7BtpbLEd5q3_9elfshaker:bb.a
    i64 2, label %bb.cq
    i64 3, label %bb.bv
    i64 0, label %bb.cq
    i64 1, label %bb.bw
  ], !prof !17

bb.bv:                                            ; preds = %bb.bu
  %i.eo = icmp ult ptr %.val58, inttoptr (i64 188978561024 to ptr)
  %i.ep = and i64 %i.be, 1095216660480
  %i.eq = icmp ne i64 %i.ep, 1095216660480
  call void @llvm.assume(i1 %i.eo)
  call void @llvm.assume(i1 %i.eq)
  br label %bb.cq

bb.bw:                                            ; preds = %bb.bu
  %i.er = getelementptr i8, ptr %.val58, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.er) ]
  %i.es = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.er, ptr %i.es, align 8, !alias.scope !245, !noalias !242
  store i8 3, ptr %i.e, align 8, !alias.scope !245, !noalias !242
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.es)
          to label %bb.cq unwind label %bb.bh

_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit98: ; preds = %bb.bt, %bb.bs, %bb.br, %.noexc96
  %.sroa.0.0.i93 = phi i8 [ %i.en, %bb.bt ], [ %switch.idx.cast.i.i.i94, %bb.br ], [ %i.el, %bb.bs ], [ %i.eg, %.noexc96 ]
  store i8 %.sroa.0.0.i93, ptr %i.m, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !248
  store i64 0, ptr %i.d, align 8, !noalias !248
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !248
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !248
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !248
  %i.et = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 1610612768, ptr %i.et, align 8, !noalias !248
  store ptr %i.d, ptr %i.c, align 8, !noalias !248
  %i.eu = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @88, ptr %i.eu, align 8, !noalias !248
  %i.ev = invoke noundef zeroext i1 @_RNvXsg_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_9ErrorKindNtNtB9_3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.by unwind label %bb.bx, !noalias !252

bb.bx:                                            ; preds = %bb.bz, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit98
  %i.ew = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #27
          to label %.body103 unwind label %bb.ca, !noalias !252

bb.by:                                            ; preds = %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit98
  br i1 %i.ev, label %bb.bz, label %bb.cb, !prof !44

bb.bz:                                            ; preds = %bb.by
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @89, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @33, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @91) #30
          to label %.noexc.i unwind label %bb.bx, !noalias !252

.noexc.i:                                         ; preds = %bb.bz
  unreachable

bb.ca:                                            ; preds = %bb.bx
  %i.ex = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26, !noalias !252
  unreachable

bb.cb:                                            ; preds = %bb.by
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !253
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !248
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !248
  %i.ey = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.ez = load i64, ptr %i.ey, align 8, !noundef !6
  %i.fa = icmp eq i64 %i.ez, 38
  br i1 %i.fa, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.fb = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !nonnull !6, !noundef !6
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(38) %i.fc, ptr noundef nonnull dereferenceable(38) @14, i64 38)
  %i.fd = icmp eq i32 %bcmp, 0
  br i1 %i.fd, label %bb.ci, label %bb.cd

bb.cd:                                            ; preds = %bb.cb, %bb.cc
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.cg unwind label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.fe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %i.n, align 8, !alias.scope !254 ; 2 uses
  %i.ff = icmp eq i64 %.val2.i.i, 0
  br i1 %i.ff, label %.body103, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.fg = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val3.i.i = load ptr, ptr %i.fg, align 8, !alias.scope !261, !nonnull !6, !noundef !6
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !262
  br label %.body103

bb.cg:                                            ; preds = %bb.cd
  %.val.i.i = load i64, ptr %i.n, align 8, !alias.scope !254 ; 2 uses
  %i.fh = icmp eq i64 %.val.i.i, 0
  br i1 %i.fh, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.fi = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val1.i.i = load ptr, ptr %i.fi, align 8, !alias.scope !261, !nonnull !6, !noundef !6
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !265
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit

bb.ci:                                            ; preds = %bb.cc
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.cl unwind label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.fj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i108 = load i64, ptr %i.n, align 8, !alias.scope !268 ; 2 uses
  %i.fk = icmp eq i64 %.val2.i.i108, 0
  br i1 %i.fk, label %.body103, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %.val3.i.i109 = load ptr, ptr %i.fb, align 8, !alias.scope !275, !nonnull !6, !noundef !6
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i109, i64 noundef %.val2.i.i108, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !276
  br label %.body103

bb.cl:                                            ; preds = %bb.ci
  %.val.i.i111 = load i64, ptr %i.n, align 8, !alias.scope !268 ; 2 uses
  %i.fl = icmp eq i64 %.val.i.i111, 0
  br i1 %i.fl, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit116, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %.val1.i.i112 = load ptr, ptr %i.fb, align 8, !alias.scope !275, !nonnull !6, !noundef !6
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i112, i64 noundef %.val.i.i111, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !279
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit116

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.ch, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %i.fm, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.val58, ptr %.sroa.435.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bj

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit92: ; preds = %bb.bn, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.j

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.n, %bb.m, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit116: ; preds = %bb.cm, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !282
  switch i64 %i.bf, label %default.unreachable [
    i64 2, label %bb.cp
    i64 3, label %bb.cn
    i64 0, label %bb.cp
    i64 1, label %bb.co
  ], !prof !17

bb.cn:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit116
  %i.fn = icmp ult ptr %.val58, inttoptr (i64 188978561024 to ptr)
  %i.fo = and i64 %i.be, 1095216660480
  %i.fp = icmp ne i64 %i.fo, 1095216660480
  call void @llvm.assume(i1 %i.fn)
  call void @llvm.assume(i1 %i.fp)
  br label %bb.cp

bb.co:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit116
  %i.fq = getelementptr i8, ptr %.val58, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fq) ]
  %i.fr = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.fq, ptr %i.fr, align 8, !alias.scope !285, !noalias !282
  store i8 3, ptr %i.b, align 8, !alias.scope !285, !noalias !282
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fr)
          to label %bb.cp unwind label %bb.bh

bb.cp:                                            ; preds = %bb.cn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit116, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit116, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !282
  br label %bb.cr

bb.cq:                                            ; preds = %bb.bv, %bb.bu, %bb.bu, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !242
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp, %bb.ai
  %.sroa.0122.0 = phi i32 [ -1, %bb.cq ], [ -1, %bb.cp ], [ %i.bu, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.018)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.018, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  %.sroa.018.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.018, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.018.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.018, i64 48, i1 false)
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.519.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @16, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.7.sroa.0.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i8 0, ptr %.sroa.7.sroa.0.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx, align 4
  %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 69
  store i8 0, ptr %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx, align 1
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %.sroa.0122.0, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.018)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit

bb.cs:                                            ; preds = %.body103
  %i.fs = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fs) #27
          to label %bb.ct unwind label %bb.bo

bb.ct:                                            ; preds = %.body103.thread, %bb.u, %bb.cs, %.body103
  %.pn49.ph = phi { ptr, i32 } [ %.pn47, %.body103 ], [ %.pn47, %bb.cs ], [ %i.ba, %bb.u ], [ %.pn45, %.body103.thread ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.v) #27
          to label %.thread unwind label %bb.bo

.thread:                                          ; preds = %bb.bk, %bb.bl, %bb.q, %bb.b, %bb.ct
  %.pn49.pn135 = phi { ptr, i32 } [ %.pn49.ph, %bb.ct ], [ %i.au, %bb.q ], [ %i.aa, %bb.b ], [ %i.dw, %bb.bl ], [ %i.dw, %bb.bk ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.x) #27
          to label %common.resume unwind label %bb.bo
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB6_10Repository18write_loose_objectRShECs7BtpbLEd5q3_9elfshaker(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(20) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 12 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %2, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB5_10Repository17loose_object_path(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(20) %5)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !6
  %i.h = invoke { ptr, i64 } @_RNvMs16_NtCsaL1QbXo9JQH_3std4pathNtB6_4Path6parent(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef %i.g)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.k, %bb.e, %bb.d, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #27
          to label %common.resume unwind label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.j = extractvalue { ptr, i64 } %i.h, 0        ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.e, label %bb.d, !prof !44

bb.d:                                             ; preds = %bb.c
  %i.k = extractvalue { ptr, i64 } %i.h, 1
  %i.l = invoke noundef ptr @_RINvNtCsaL1QbXo9JQH_3std2fs14create_dir_allRNtNtB4_4path4PathECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.k)
          to label %bb.g unwind label %bb.b       ; 3 uses

bb.e:                                             ; preds = %bb.c
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #29
          to label %bb.f unwind label %bb.b

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %.not8 = icmp eq ptr %i.l, null
  br i1 %.not8, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !288 ; 2 uses
  %i.n = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.n, label %common.resume, label %common.resume.sink.split

bb.j:                                             ; preds = %bb.h
  %.val.i.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !288 ; 2 uses
  %i.o = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.o, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit.sink.split

common.resume.sink.split:                         ; preds = %bb.i, %bb.m
  %.val2.i.i.i.i9.sink = phi i64 [ %.val2.i.i.i.i9, %bb.m ], [ %.val2.i.i.i.i, %bb.i ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.s, %bb.m ], [ %i.m, %bb.i ]
  %.val3.i.i.i.i10 = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i10, i64 noundef %.val2.i.i.i.i9.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !6
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.b, %bb.m, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.m ], [ %i.m, %bb.i ], [ %i.i, %bb.b ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.k:                                             ; preds = %bb.g
  %i.p = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6
  %i.q = load i64, ptr %i.f, align 8, !noundef !6
  %i.r = invoke noundef ptr @_RINvNtNtCskuiImRAV2ip_9elfshaker4repo2fs29write_file_atomic_or_existingQRShECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef %i.q)
          to label %bb.l unwind label %bb.b       ; 2 uses

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i9 = load i64, ptr %i.a, align 8, !alias.scope !299 ; 2 uses
  %i.t = icmp eq i64 %.val2.i.i.i.i9, 0
  br i1 %i.t, label %common.resume, label %common.resume.sink.split

bb.n:                                             ; preds = %bb.l
  %.val.i.i.i.i12 = load i64, ptr %i.a, align 8, !alias.scope !299 ; 2 uses
  %i.u = icmp eq i64 %.val.i.i.i.i12, 0
  br i1 %i.u, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit.sink.split

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit.sink.split: ; preds = %bb.n, %bb.j
  %.val.i.i.i.i12.sink = phi i64 [ %.val.i.i.i.i, %bb.j ], [ %.val.i.i.i.i12, %bb.n ]
  %.sroa.0.0.ph = phi ptr [ %i.l, %bb.j ], [ %i.r, %bb.n ]
  %.val1.i.i.i.i13 = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i13, i64 noundef %.val.i.i.i.i12.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !6
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit.sink.split, %bb.n, %bb.j
  %.sroa.0.0 = phi ptr [ %i.r, %bb.n ], [ %i.l, %bb.j ], [ %.sroa.0.0.ph, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %.sroa.0.0

bb.o:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB6_10Repository21set_progress_reporterNCNvNtCs7BtpbLEd5q3_9elfshaker5clone8do_clone0EB1z_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %.val = load ptr, ptr %i.a, align 8             ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !6, !align !310, !noundef !6 ; 5 uses
  %i.c = load ptr, ptr %.val1, align 8, !invariant.load !6 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.c(ptr noundef nonnull %.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !311, !invariant.load !6 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTRL0_eEEp6OutputNtNtCskuiImRAV2ip_9elfshaker8progress16ProgressReporterNtNtB4_6marker4SendNtB2O_4SyncEL_EECs7BtpbLEd5q3_9elfshaker.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !range !312, !invariant.load !6
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) %i.h) #28
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTRL0_eEEp6OutputNtNtCskuiImRAV2ip_9elfshaker8progress16ProgressReporterNtNtB4_6marker4SendNtB2O_4SyncEL_EECs7BtpbLEd5q3_9elfshaker.exit

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !311, !invariant.load !6 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.body, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !312, !invariant.load !6
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) %i.n) #28
  br label %.body

.body:                                            ; preds = %bb.d, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i
  store ptr inttoptr (i64 1 to ptr), ptr %i.a, align 8
  store ptr @18, ptr %i.b, align 8
  resume { ptr, i32 } %i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTRL0_eEEp6OutputNtNtCskuiImRAV2ip_9elfshaker8progress16ProgressReporterNtNtB4_6marker4SendNtB2O_4SyncEL_EECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i, %bb.c
  store ptr inttoptr (i64 1 to ptr), ptr %i.a, align 8
  store ptr @18, ptr %i.b, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB6_10Repository21set_progress_reporterNCNvNtCs7BtpbLEd5q3_9elfshaker6update3run0EB1z_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %.val = load ptr, ptr %i.a, align 8             ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !6, !align !310, !noundef !6 ; 5 uses
  %i.c = load ptr, ptr %.val1, align 8, !invariant.load !6 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.c, label %bb.b

end_hunk_1
