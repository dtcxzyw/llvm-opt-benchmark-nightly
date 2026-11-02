Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep.tgrep.897916b5d56b90bc-cgu.12?download=true
inline.NumInlined: 821
inline.NumDeleted: 442
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_RINvMNtNtCs1L7Mk9ubPba_12clap_builder7builder7commandNtB3_7Command24try_get_matches_from_mutNtNtCs5Xr050g3D4S_3std3env6ArgsOsNtNtNtB1w_3ffi6os_str8OsStringECsbNLsQi0JuJ4_5tgrep:bb.a

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i63: ; preds = %bb.aq
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bw)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit67 unwind label %bb.au

bb.at:                                            ; preds = %bb.ao
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cg, ptr nonnull align 1 %i.bt, i64 %i.bv, i1 false)
  br label %bb.ap

bb.au:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i63
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %.body64

.body64:                                          ; preds = %bb.ar, %bb.au
  %eh.lpad-body65 = phi { ptr, i32 } [ %i.cm, %bb.au ], [ %i.ck, %bb.ar ]
  store i64 %i.cb, ptr %i.bw, align 8
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 304
  store ptr %i.cg, ptr %.sroa.539.0..sroa_idx, align 8
  %.sroa.642.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 312
  store i64 %i.bv, ptr %.sroa.642.0..sroa_idx, align 8
  br label %.body59

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit67: ; preds = %bb.ap, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i63
  store i64 %i.cb, ptr %i.bw, align 8
  %.sroa.539.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %1, i64 304
  store ptr %i.cg, ptr %.sroa.539.0..sroa_idx40, align 8
  %.sroa.642.0..sroa_idx43 = getelementptr inbounds nuw i8, ptr %1, i64 312
  store i64 %i.bv, ptr %.sroa.642.0..sroa_idx43, align 8
  br label %bb.af

bb.av:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsfmY3yR2dyUD_8clap_lex7RawArgsECsbNLsQi0JuJ4_5tgrep.exit69 unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCs1L7Mk9ubPba_12clap_builder7builder7commandNtB3_7Command3argNtNtB5_3arg3ArgECsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([712 x i8]) align 8 captures(none) dereferenceable(712) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(712) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(600) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [600 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(600) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(600) %2, i64 600, i1 false), !alias.scope !50
  invoke void @_RNvMNtNtCs1L7Mk9ubPba_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(600) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1L7Mk9ubPba_12clap_builder7builder7command7CommandECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(712) %1) #28
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %0, ptr noundef nonnull align 8 dereferenceable(712) %1, i64 712, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvMNtNtCs1L7Mk9ubPba_12clap_builder7builder7commandNtB3_7Command3newReECsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([712 x i8]) align 8 captures(none) dereferenceable(712) initializes((0, 8), (16, 40), (56, 280), (296, 304), (320, 328), (344, 352), (368, 376), (392, 400), (416, 424), (440, 448), (464, 472), (488, 496), (512, 520), (536, 544), (560, 584), (592, 600), (608, 616), (624, 632), (640, 648), (656, 664), (672, 680), (688, 709)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 {
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
define hidden void @_RINvMNtNtCs1L7Mk9ubPba_12clap_builder7builder9arg_groupNtB3_8ArgGroup2idReECsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) initializes((0, 96)) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(96) initializes((72, 88)) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i64 %3, ptr %i.b, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCs1L7Mk9ubPba_12clap_builder7builder9arg_groupNtB3_8ArgGroup4argsNtNtNtB7_4util2id2IdAB1a_j1_ECsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(96) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 10 uses
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %2, align 8, !alias.scope !60, !nonnull !9, !noundef !9
  %.sroa.5.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.sroa.4.0.copyload = load i64, ptr %.sroa.5.sroa.4.0..sroa_idx, align 8, !alias.scope !60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  %i.b = invoke { ptr, i64 } @_RNvXsk_NtNtCs1L7Mk9ubPba_12clap_builder7builder10resettableNtNtNtB9_4util2id2IdINtB5_14IntoResettableBV_E15into_resettableCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5.sroa.0.0.copyload, i64 noundef %.sroa.5.sroa.4.0.copyload)
          to label %bb.c unwind label %bb.b, !noalias !62 ; 2 uses

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1L7Mk9ubPba_12clap_builder7builder9arg_group8ArgGroupECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.a) #28
          to label %bb.h unwind label %bb.f, !noalias !63

bb.c:                                             ; preds = %bb.a
  %i.d = extractvalue { ptr, i64 } %i.b, 0        ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %3, label %bb.d

3:                                                ; preds = %bb.c
  %4 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %4, align 8, !alias.scope !61
  br label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.f = extractvalue { ptr, i64 } %i.b, 1
  %5 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.g = load i64, ptr %5, align 8, !alias.scope !64, !noundef !9 ; 3 uses
  %i.h = load i64, ptr %i.a, align 8, !range !12, !alias.scope !64, !noundef !9
  %i.i = icmp eq i64 %i.g, %i.h
  br i1 %i.i, label %bb.e, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs1L7Mk9ubPba_12clap_builder4util2id2IdE8push_mutCsbNLsQi0JuJ4_5tgrep.exit.i

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1L7Mk9ubPba_12clap_builder4util2id2IdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.a) #31
          to label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs1L7Mk9ubPba_12clap_builder4util2id2IdE8push_mutCsbNLsQi0JuJ4_5tgrep.exit.i unwind label %bb.b, !noalias !63

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs1L7Mk9ubPba_12clap_builder4util2id2IdE8push_mutCsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %bb.e, %bb.d
  %6 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load ptr, ptr %6, align 8, !alias.scope !64, !nonnull !9, !noundef !9
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.g ; 2 uses
  store ptr %i.d, ptr %i.k, align 8, !noalias !65
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.f, ptr %i.l, align 8, !noalias !63
  %i.m = add i64 %i.g, 1
  store i64 %i.m, ptr %5, align 8, !alias.scope !64
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !noalias !63
  unreachable

bb.g:                                             ; preds = %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs1L7Mk9ubPba_12clap_builder4util2id2IdE8push_mutCsbNLsQi0JuJ4_5tgrep.exit.i, %3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  ret void

bb.h:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCs1L7Mk9ubPba_12clap_builder7builder9arg_groupNtB3_8ArgGroup4argsNtNtNtB7_4util2id2IdAB1a_j2_ECsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(96) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 15 uses
  %i.b = alloca [96 x i8], align 8                ; 8 uses
  %.sroa.6.16.copyload = load ptr, ptr %2, align 8, !nonnull !9, !noundef !9
  %.sroa.8.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.8.16.copyload = load i64, ptr %.sroa.8.16..sroa_idx, align 8
  %.sroa.9.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.9.16.copyload = load ptr, ptr %.sroa.9.16..sroa_idx, align 8 ; 2 uses
  %.sroa.10.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.10.16.copyload = load i64, ptr %.sroa.10.16..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76)
  %i.e = invoke { ptr, i64 } @_RNvXsk_NtNtCs1L7Mk9ubPba_12clap_builder7builder10resettableNtNtNtB9_4util2id2IdINtB5_14IntoResettableBV_E15into_resettableCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.6.16.copyload, i64 noundef %.sroa.8.16.copyload)
          to label %bb.c unwind label %bb.b, !noalias !77 ; 2 uses

bb.b:                                             ; preds = %bb.j, %bb.g, %bb.e, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1L7Mk9ubPba_12clap_builder7builder9arg_group8ArgGroupECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.a) #28
          to label %bb.l unwind label %bb.f, !noalias !75

bb.c:                                             ; preds = %bb.a
  %i.g = extractvalue { ptr, i64 } %i.e, 0        ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = extractvalue { ptr, i64 } %i.e, 1
  %i.j = load i64, ptr %i.c, align 8, !alias.scope !78, !noundef !9 ; 3 uses
  %i.k = load i64, ptr %i.a, align 8, !range !12, !alias.scope !78, !noundef !9
  %i.l = icmp eq i64 %i.j, %i.k
  br i1 %i.l, label %bb.e, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs1L7Mk9ubPba_12clap_builder4util2id2IdE8push_mutCsbNLsQi0JuJ4_5tgrep.exit.i

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1L7Mk9ubPba_12clap_builder4util2id2IdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.a) #31
          to label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs1L7Mk9ubPba_12clap_builder4util2id2IdE8push_mutCsbNLsQi0JuJ4_5tgrep.exit.i unwind label %bb.b, !noalias !75

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs1L7Mk9ubPba_12clap_builder4util2id2IdE8push_mutCsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %bb.e, %bb.d
  %i.m = load ptr, ptr %i.d, align 8, !alias.scope !78, !nonnull !9, !noundef !9
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.j ; 2 uses
  store ptr %i.g, ptr %i.n, align 8, !noalias !79
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %i.i, ptr %i.o, align 8, !noalias !75
  %i.p = add i64 %i.j, 1
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !noalias !75
  unreachable

bb.g:                                             ; preds = %bb.c, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs1L7Mk9ubPba_12clap_builder4util2id2IdE8push_mutCsbNLsQi0JuJ4_5tgrep.exit.i
  %storemerge = phi i64 [ %i.p, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs1L7Mk9ubPba_12clap_builder4util2id2IdE8push_mutCsbNLsQi0JuJ4_5tgrep.exit.i ], [ 0, %bb.c ]
  store i64 %storemerge, ptr %i.c, align 8, !alias.scope !76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false), !alias.scope !77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(96) %i.b, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.16.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !80)
  call void @llvm.experimental.noalias.scope.decl(metadata !81)
  %i.r = invoke { ptr, i64 } @_RNvXsk_NtNtCs1L7Mk9ubPba_12clap_builder7builder10resettableNtNtNtB9_4util2id2IdINtB5_14IntoResettableBV_E15into_resettableCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.9.16.copyload, i64 noundef %.sroa.10.16.copyload)
          to label %bb.h unwind label %bb.b, !noalias !82 ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.s = extractvalue { ptr, i64 } %i.r, 0        ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = extractvalue { ptr, i64 } %i.r, 1
  %i.v = load i64, ptr %i.c, align 8, !alias.scope !83, !noundef !9 ; 3 uses
  %i.w = load i64, ptr %i.a, align 8, !range !12, !alias.scope !83, !noundef !9
  %i.x = icmp eq i64 %i.v, %i.w
  br i1 %i.x, label %bb.j, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs1L7Mk9ubPba_12clap_builder4util2id2IdE8push_mutCsbNLsQi0JuJ4_5tgrep.exit.i.1

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1L7Mk9ubPba_12clap_builder4util2id2IdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.a) #31
          to label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs1L7Mk9ubPba_12clap_builder4util2id2IdE8push_mutCsbNLsQi0JuJ4_5tgrep.exit.i.1 unwind label %bb.b, !noalias !80

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs1L7Mk9ubPba_12clap_builder4util2id2IdE8push_mutCsbNLsQi0JuJ4_5tgrep.exit.i.1: ; preds = %bb.j, %bb.i
  %i.y = load ptr, ptr %i.d, align 8, !alias.scope !83, !nonnull !9, !noundef !9
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.v ; 2 uses
  store ptr %i.s, ptr %i.z, align 8, !noalias !84
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %i.u, ptr %i.aa, align 8, !noalias !80
  %i.ab = add i64 %i.v, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs1L7Mk9ubPba_12clap_builder4util2id2IdE8push_mutCsbNLsQi0JuJ4_5tgrep.exit.i.1
  %storemerge18 = phi i64 [ %i.ab, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs1L7Mk9ubPba_12clap_builder4util2id2IdE8push_mutCsbNLsQi0JuJ4_5tgrep.exit.i.1 ], [ 0, %bb.h ]
  store i64 %storemerge18, ptr %i.c, align 8, !alias.scope !81
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false), !alias.scope !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(96) %i.b, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  ret void

bb.l:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCs1L7Mk9ubPba_12clap_builder7builder9arg_groupNtB3_8ArgGroup4argsNtNtNtB7_4util2id2IdAB1a_j5_ECsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(96) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 33 uses
  %i.b = alloca [96 x i8], align 8                ; 20 uses
  %.sroa.6.16.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.8.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.8.16.copyload = load i64, ptr %.sroa.8.16..sroa_idx, align 8
  %.sroa.9.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.9.16.copyload = load ptr, ptr %.sroa.9.16..sroa_idx, align 8 ; 2 uses
  %.sroa.10.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.10.16.copyload = load i64, ptr %.sroa.10.16..sroa_idx, align 8
  %.sroa.11.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.11.16.copyload = load ptr, ptr %.sroa.11.16..sroa_idx, align 8 ; 2 uses
  %.sroa.12.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.12.16.copyload = load i64, ptr %.sroa.12.16..sroa_idx, align 8
  %.sroa.13.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.13.16.copyload = load ptr, ptr %.sroa.13.16..sroa_idx, align 8 ; 2 uses
  %.sroa.14.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.14.16.copyload = load i64, ptr %.sroa.14.16..sroa_idx, align 8
  %.sroa.15.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 64
  %.sroa.15.16.copyload = load ptr, ptr %.sroa.15.16..sroa_idx, align 8 ; 2 uses
  %.sroa.16.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 72
  %.sroa.16.16.copyload = load i64, ptr %.sroa.16.16..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.16.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  %i.e = invoke { ptr, i64 } @_RNvXsk_NtNtCs1L7Mk9ubPba_12clap_builder7builder10resettableNtNtNtB9_4util2id2IdINtB5_14IntoResettableBV_E15into_resettableCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.6.16.copyload, i64 noundef %.sroa.8.16.copyload)
          to label %bb.c unwind label %bb.b, !noalias !105 ; 2 uses

bb.b:                                             ; preds = %bb.v, %bb.s, %bb.r, %bb.o, %bb.n, %bb.k, %bb.j, %bb.g, %bb.e, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1L7Mk9ubPba_12clap_builder7builder9arg_group8ArgGroupECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.a) #28
          to label %bb.x unwind label %bb.f, !noalias !103

bb.c:                                             ; preds = %bb.a
  %i.g = extractvalue { ptr, i64 } %i.e, 0        ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = extractvalue { ptr, i64 } %i.e, 1
  %i.j = load i64, ptr %i.c, align 8, !alias.scope !106, !noundef !9 ; 3 uses
  %i.k = load i64, ptr %i.a, align 8, !range !12, !alias.scope !106, !noundef !9
  %i.l = icmp eq i64 %i.j, %i.k
  br i1 %i.l, label %bb.e, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs1L7Mk9ubPba_12clap_builder4util2id2IdE8push_mutCsbNLsQi0JuJ4_5tgrep.exit.i

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1L7Mk9ubPba_12clap_builder4util2id2IdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.a) #31
          to label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs1L7Mk9ubPba_12clap_builder4util2id2IdE8push_mutCsbNLsQi0JuJ4_5tgrep.exit.i unwind label %bb.b, !noalias !103

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs1L7Mk9ubPba_12clap_builder4util2id2IdE8push_mutCsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %bb.e, %bb.d
  %i.m = load ptr, ptr %i.d, align 8, !alias.scope !106, !nonnull !9, !noundef !9
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.j ; 2 uses
  store ptr %i.g, ptr %i.n, align 8, !noalias !107
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %i.i, ptr %i.o, align 8, !noalias !103
  %i.p = add i64 %i.j, 1
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !noalias !103
  unreachable

bb.g:                                             ; preds = %bb.c, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs1L7Mk9ubPba_12clap_builder4util2id2IdE8push_mutCsbNLsQi0JuJ4_5tgrep.exit.i
  %storemerge = phi i64 [ %i.p, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs1L7Mk9ubPba_12clap_builder4util2id2IdE8push_mutCsbNLsQi0JuJ4_5tgrep.exit.i ], [ 0, %bb.c ]
  store i64 %storemerge, ptr %i.c, align 8, !alias.scope !104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false), !alias.scope !105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
end_hunk_0
