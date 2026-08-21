Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/tlsclient_mio.tlsclient_mio.f93cdff8b1b9516d-cgu.7?download=true
inline.NumInlined: 236
inline.NumDeleted: 125
begin_hunk_0_@_RINvMNtNtCsdsZTLzXv0lo_12clap_builder7builder7commandNtB3_7Command16get_matches_fromNtNtCsaKJjC64KgbL_3std3env6ArgsOsNtNtNtB1o_3ffi6os_str8OsStringECsloGAwzL3aMH_13tlsclient_mio:bb.a
  store ptr %i.cr, ptr %i.b, align 8, !noalias !44
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsZTLzXv0lo_12clap_builder7builder7command7CommandECsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef align 8 dereferenceable(712) %i.a)
          to label %bb.aw unwind label %bb.av, !noalias !48

bb.av:                                            ; preds = %bb.aw, %bb.au
  %i.cs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsdsZTLzXv0lo_12clap_builder5error5ErrorECsloGAwzL3aMH_13tlsclient_mio(ptr nonnull align 8 %i.cr) #22
          to label %.body.thread11 unwind label %bb.ay, !noalias !48

bb.aw:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !44
  invoke void @_RNvMNtCsdsZTLzXv0lo_12clap_builder5errorNtB2_5Error4exitCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b) #24
          to label %bb.ax unwind label %bb.av, !noalias !48

bb.ax:                                            ; preds = %bb.aw
  unreachable

bb.ay:                                            ; preds = %bb.av
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !noalias !48
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCINvMNtNtCsdsZTLzXv0lo_12clap_builder7builder7commandNtBH_7Command16get_matches_fromNtNtCsaKJjC64KgbL_3std3env6ArgsOsNtNtNtB22_3ffi6os_str8OsStringE0ECsloGAwzL3aMH_13tlsclient_mio.exit: ; preds = %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.k, i64 56, i1 false)
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsZTLzXv0lo_12clap_builder7builder7command7CommandECsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void

.body.thread11:                                   ; preds = %bb.av, %.body.thread
  %eh.lpad-body9 = phi { ptr, i32 } [ %eh.lpad-body10, %.body.thread ], [ %i.cs, %bb.av ]
  resume { ptr, i32 } %eh.lpad-body9

.body.thread:                                     ; preds = %bb.y, %bb.ar, %.body59.i, %.body.thread15
  %eh.lpad-body10 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread15 ], [ %i.az, %bb.y ], [ %i.cm, %bb.ar ], [ %.pn56.i, %.body59.i ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsZTLzXv0lo_12clap_builder7builder7command7CommandECsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef align 8 dereferenceable(712) %1) #22
          to label %.body.thread11 unwind label %bb.az

bb.az:                                            ; preds = %.body.thread
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCsdsZTLzXv0lo_12clap_builder7builder7commandNtB3_7Command3argNtNtB5_3arg3ArgECsloGAwzL3aMH_13tlsclient_mio(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([712 x i8]) align 8 captures(none) dereferenceable(712) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(712) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(640) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [640 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(640) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(640) %2, i64 640, i1 false), !alias.scope !49
  invoke void @_RNvMNtNtCsdsZTLzXv0lo_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(640) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsZTLzXv0lo_12clap_builder7builder7command7CommandECsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef align 8 dereferenceable(712) %1) #22
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %0, ptr noundef nonnull align 8 dereferenceable(712) %1, i64 712, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvMNtNtCsdsZTLzXv0lo_12clap_builder7builder7commandNtB3_7Command3newReECsloGAwzL3aMH_13tlsclient_mio(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([712 x i8]) align 8 captures(none) dereferenceable(712) initializes((0, 8), (16, 40), (56, 280), (296, 304), (320, 328), (344, 352), (368, 376), (392, 400), (416, 424), (440, 448), (464, 472), (488, 496), (512, 520), (536, 544), (560, 584), (592, 600), (608, 616), (624, 632), (640, 648), (656, 664), (672, 680), (688, 709)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 560
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 568
  store i64 %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 576
  store ptr null, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 696
  store i32 -1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i64 -1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i64 -1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 592
  store ptr null, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 608
  store ptr null, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 624
  store ptr null, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i64 -1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i64 -1, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i64 -1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i64 -1, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i64 -1, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 440
  store i64 -1, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %i.p, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.424.0..sroa_idx, align 8
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.525.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.427.0..sroa_idx, align 8
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 0, ptr %.sroa.528.0..sroa_idx, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 464
  store i64 -1, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 488
  store i64 -1, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 512
  store i64 -1, ptr %i.s, align 8
  store i64 0, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i64 -1, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 700
  store i32 0, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 704
  store i32 0, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 0, ptr %i.w, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.441.0..sroa_idx, align 8
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.643.sroa.4.0..sroa.643.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.542.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.643.sroa.4.0..sroa.643.0..sroa_idx.sroa_idx, align 8
  %.sroa.643.sroa.5.0..sroa.643.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.643.sroa.5.0..sroa.643.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.430.0..sroa_idx, align 8
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.531.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.433.0..sroa_idx, align 8
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i64 0, ptr %.sroa.534.0..sroa_idx, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 640
  store ptr null, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 656
  store ptr null, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 672
  store ptr null, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -1, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 708
  store i8 0, ptr %i.ad, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 688
  store ptr null, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 0, ptr %i.af, align 8
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.455.0..sroa_idx, align 8
  %.sroa.556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.sroa.657.sroa.4.0..sroa.657.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.556.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.657.sroa.4.0..sroa.657.0..sroa_idx.sroa_idx, align 8
  %.sroa.657.sroa.5.0..sroa.657.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i64 0, ptr %.sroa.657.sroa.5.0..sroa.657.0..sroa_idx.sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvMNtNtCsdsZTLzXv0lo_12clap_builder7builder9arg_groupNtB3_8ArgGroup2idReECsloGAwzL3aMH_13tlsclient_mio(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) initializes((0, 96)) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(96) initializes((72, 88)) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i64 %3, ptr %i.b, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCsdsZTLzXv0lo_12clap_builder7builder9arg_groupNtB3_8ArgGroup4argsNtNtNtB7_4util2id2IdAB1a_jf_ECsloGAwzL3aMH_13tlsclient_mio(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(96) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(240) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 9 uses
  %i.b = alloca [96 x i8], align 8                ; 4 uses
  %.sroa.7.16. = load ptr, ptr %2, align 8, !alias.scope !56 ; 2 uses
  %.sroa.7.24..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.7.24. = load i64, ptr %.sroa.7.24..sroa_idx, align 8, !alias.scope !56
  %.not = icmp eq ptr %.sroa.7.16., null
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.g
  %i.e = phi i64 [ %i.f, %bb.g ], [ 0, %bb.a ]
  %i.f = add nuw nsw i64 %i.e, 1                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !61)
  %i.g = load i64, ptr %i.c, align 8, !alias.scope !64, !noalias !68, !noundef !5 ; 3 uses
  %i.h = load i64, ptr %i.a, align 8, !range !71, !alias.scope !64, !noalias !68, !noundef !5
  %i.i = icmp eq i64 %i.g, %i.h
  br i1 %i.i, label %bb.d, label %bb.g

bb.c:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsZTLzXv0lo_12clap_builder7builder9arg_group8ArgGroupECsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.a) #22
          to label %bb.h unwind label %bb.e, !noalias !72

bb.d:                                             ; preds = %bb.b
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdsZTLzXv0lo_12clap_builder4util2id2IdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.a) #25
          to label %bb.g unwind label %bb.c, !noalias !72

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !noalias !72
  unreachable

bb.f:                                             ; preds = %bb.g, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  ret void

bb.g:                                             ; preds = %bb.d, %bb.b
  %i.l = load ptr, ptr %i.d, align 8, !alias.scope !64, !noalias !68, !nonnull !5, !noundef !5
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.g ; 2 uses
  store ptr %.sroa.7.16., ptr %i.m, align 8, !noalias !68
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %.sroa.7.24., ptr %i.n, align 8, !noalias !61
  %i.o = add i64 %i.g, 1
  store i64 %i.o, ptr %i.c, align 8, !alias.scope !64, !noalias !68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false), !alias.scope !73, !noalias !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(96) %i.b, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i.i = icmp eq i64 %i.f, 15
  br i1 %.not.i.i, label %bb.f, label %bb.b

bb.h:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.j
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtNtCsdsZTLzXv0lo_12clap_builder7builder7commandNtB6_7Command10long_aboutReECsloGAwzL3aMH_13tlsclient_mio(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([712 x i8]) align 8 captures(none) dereferenceable(712) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(712) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.6 = alloca [16 x i8], align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs2_NtNtCsdsZTLzXv0lo_12clap_builder7builder10styled_strNtB5_9StyledStrINtNtCsj6eKBz9Db1c_4core7convert4FromReE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
          to label %_RNvXsh_NtNtCsdsZTLzXv0lo_12clap_builder7builder10resettableReINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettableCsloGAwzL3aMH_13tlsclient_mio.exit unwind label %bb.c

bb.b:                                             ; preds = %.body, %bb.c
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.b, %bb.c ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsZTLzXv0lo_12clap_builder7builder7command7CommandECsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef align 8 dereferenceable(712) %1) #22
          to label %bb.k unwind label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

_RNvXsh_NtNtCsdsZTLzXv0lo_12clap_builder7builder10resettableReINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettableCsloGAwzL3aMH_13tlsclient_mio.exit: ; preds = %bb.a
  %i.c = load i64, ptr %i.a, align 8, !range !38, !noundef !5 ; 3 uses
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvXsh_NtNtCsdsZTLzXv0lo_12clap_builder7builder10resettableReINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettableCsloGAwzL3aMH_13tlsclient_mio.exit
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_RNvXsh_NtNtCsdsZTLzXv0lo_12clap_builder7builder10resettableReINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettableCsloGAwzL3aMH_13tlsclient_mio.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 6 uses
  %i.f = load i64, ptr %i.e, align 8, !range !38, !alias.scope !75, !noundef !5
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsZTLzXv0lo_12clap_builder7builder10styled_str9StyledStrEECsloGAwzL3aMH_13tlsclient_mio.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsZTLzXv0lo_12clap_builder7builder10styled_str9StyledStrECsloGAwzL3aMH_13tlsclient_mio.exit.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsZTLzXv0lo_12clap_builder7builder10styled_str9StyledStrECsloGAwzL3aMH_13tlsclient_mio.exit.i: ; preds = %bb.f
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsZTLzXv0lo_12clap_builder7builder10styled_str9StyledStrEECsloGAwzL3aMH_13tlsclient_mio.exit unwind label %bb.i

bb.i:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsZTLzXv0lo_12clap_builder7builder10styled_str9StyledStrECsloGAwzL3aMH_13tlsclient_mio.exit.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.j, %bb.i ], [ %i.h, %bb.g ]
  store i64 %i.c, ptr %i.e, align 8
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %1, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  br label %bb.b

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsZTLzXv0lo_12clap_builder7builder10styled_str9StyledStrEECsloGAwzL3aMH_13tlsclient_mio.exit: ; preds = %bb.e, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsZTLzXv0lo_12clap_builder7builder10styled_str9StyledStrECsloGAwzL3aMH_13tlsclient_mio.exit.i
  store i64 %i.c, ptr %i.e, align 8
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %1, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %0, ptr noundef nonnull align 8 dereferenceable(712) %1, i64 712, i1 false)
  ret void

bb.j:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.k:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtNtCsdsZTLzXv0lo_12clap_builder7builder7commandNtB6_7Command5aboutReECsloGAwzL3aMH_13tlsclient_mio(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([712 x i8]) align 8 captures(none) dereferenceable(712) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(712) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.6 = alloca [16 x i8], align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs2_NtNtCsdsZTLzXv0lo_12clap_builder7builder10styled_strNtB5_9StyledStrINtNtCsj6eKBz9Db1c_4core7convert4FromReE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
          to label %_RNvXsh_NtNtCsdsZTLzXv0lo_12clap_builder7builder10resettableReINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettableCsloGAwzL3aMH_13tlsclient_mio.exit unwind label %bb.c

bb.b:                                             ; preds = %.body, %bb.c
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.b, %bb.c ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsZTLzXv0lo_12clap_builder7builder7command7CommandECsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef align 8 dereferenceable(712) %1) #22
          to label %bb.k unwind label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

_RNvXsh_NtNtCsdsZTLzXv0lo_12clap_builder7builder10resettableReINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettableCsloGAwzL3aMH_13tlsclient_mio.exit: ; preds = %bb.a
  %i.c = load i64, ptr %i.a, align 8, !range !38, !noundef !5 ; 3 uses
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvXsh_NtNtCsdsZTLzXv0lo_12clap_builder7builder10resettableReINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettableCsloGAwzL3aMH_13tlsclient_mio.exit
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_RNvXsh_NtNtCsdsZTLzXv0lo_12clap_builder7builder10resettableReINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettableCsloGAwzL3aMH_13tlsclient_mio.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 6 uses
  %i.f = load i64, ptr %i.e, align 8, !range !38, !alias.scope !78, !noundef !5
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsZTLzXv0lo_12clap_builder7builder10styled_str9StyledStrEECsloGAwzL3aMH_13tlsclient_mio.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsZTLzXv0lo_12clap_builder7builder10styled_str9StyledStrECsloGAwzL3aMH_13tlsclient_mio.exit.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsZTLzXv0lo_12clap_builder7builder10styled_str9StyledStrECsloGAwzL3aMH_13tlsclient_mio.exit.i: ; preds = %bb.f
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsZTLzXv0lo_12clap_builder7builder10styled_str9StyledStrEECsloGAwzL3aMH_13tlsclient_mio.exit unwind label %bb.i

bb.i:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsZTLzXv0lo_12clap_builder7builder10styled_str9StyledStrECsloGAwzL3aMH_13tlsclient_mio.exit.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.j, %bb.i ], [ %i.h, %bb.g ]
  store i64 %i.c, ptr %i.e, align 8
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %1, i64 328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  br label %bb.b

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsZTLzXv0lo_12clap_builder7builder10styled_str9StyledStrEECsloGAwzL3aMH_13tlsclient_mio.exit: ; preds = %bb.e, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsZTLzXv0lo_12clap_builder7builder10styled_str9StyledStrECsloGAwzL3aMH_13tlsclient_mio.exit.i
  store i64 %i.c, ptr %i.e, align 8
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %1, i64 328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %0, ptr noundef nonnull align 8 dereferenceable(712) %1, i64 712, i1 false)
  ret void

bb.j:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.k:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RINvMs2_NtNtCs4wP2HXfJTCR_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE4fillINtNtB8_9into_iter8IntoIterBZ_EECsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1) unnamed_addr #3 {
bb.a:
  %.sroa.4 = alloca [16 x i8], align 8            ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !5 ; 2 uses
  %.not11 = icmp ult i64 %i.d, %i.f
  br i1 %.not11, label %.lr.ph, label %.loopexit

end_hunk_0
