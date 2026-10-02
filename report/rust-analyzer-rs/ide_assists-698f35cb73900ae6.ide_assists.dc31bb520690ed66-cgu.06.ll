Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_assists-698f35cb73900ae6.ide_assists.dc31bb520690ed66-cgu.06?download=true
inline.NumInlined: 3755
inline.NumDeleted: 1362
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10raw_string17make_usual_string:bb.a
  %i.av = load i64, ptr %i.e, align 8, !range !14, !alias.scope !1221, !noundef !4
  %i.aw = icmp eq i64 %i.av, -1
  br i1 %i.aw, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEECsiU5vK8fN4ZC_11ide_assists.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists.exit.i unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists.exit.i: ; preds = %bb.t
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEECsiU5vK8fN4ZC_11ide_assists.exit unwind label %bb.c

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %bb.s, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.val20 = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.val20, i64 48 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !noundef !4
  %i.bb = add i32 %i.ba, -1                       ; 2 uses
  store i32 %i.bb, ptr %i.az, align 4
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast9token_ext9AnyStringECsiU5vK8fN4ZC_11ide_assists.exit35.sink.split, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast9token_ext9AnyStringECsiU5vK8fN4ZC_11ide_assists.exit35

bb.w:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens6StringECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i, %bb.q
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast9token_ext9AnyStringECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %.body, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens6StringECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10raw_string8add_hash(ptr noalias nofree noundef align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [40 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = tail call { i64, ptr } @_RINvMNtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB3_13AssistContext20find_token_at_offsetNtNtNtCsjJXvCMGntp8_6syntax3ast9token_ext9AnyStringEB5_(ptr noundef nonnull align 8 %1) ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.d, 0        ; 2 uses
  %.not = icmp eq i64 %i.e, -1
  br i1 %.not, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast9token_ext9AnyStringECsiU5vK8fN4ZC_11ide_assists.exit19, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = extractvalue { i64, ptr } %i.d, 1        ; 13 uses
  store i64 %i.e, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.f, ptr %i.g, align 8
  %i.h = invoke noundef zeroext i1 @_RNvYNtNtNtCsjJXvCMGntp8_6syntax3ast9token_ext9AnyStringNtB4_8IsString6is_rawCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.m, %bb.j, %bb.h, %bb.n, %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !noundef !4
  %i.l = add i32 %i.k, -1                         ; 2 uses
  store i32 %i.l, ptr %i.j, align 4
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens6StringECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast9token_ext9AnyStringECsiU5vK8fN4ZC_11ide_assists.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens6StringECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i: ; preds = %bb.c
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.f) #40
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast9token_ext9AnyStringECsiU5vK8fN4ZC_11ide_assists.exit unwind label %bb.p

bb.d:                                             ; preds = %bb.b
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !noundef !4
  %i.p = add i32 %i.o, -1                         ; 2 uses
  store i32 %i.p, ptr %i.n, align 4
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast9token_ext9AnyStringECsiU5vK8fN4ZC_11ide_assists.exit19.sink.split, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast9token_ext9AnyStringECsiU5vK8fN4ZC_11ide_assists.exit19

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast9token_ext9AnyStringECsiU5vK8fN4ZC_11ide_assists.exit19.sink.split: ; preds = %bb.e, %bb.o
  %.sroa.0.1.ph = phi i1 [ %i.al, %bb.o ], [ false, %bb.e ]
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.f) #40
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast9token_ext9AnyStringECsiU5vK8fN4ZC_11ide_assists.exit19

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast9token_ext9AnyStringECsiU5vK8fN4ZC_11ide_assists.exit19: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast9token_ext9AnyStringECsiU5vK8fN4ZC_11ide_assists.exit19.sink.split, %bb.a, %bb.e, %bb.o
  %.sroa.0.1 = phi i1 [ false, %bb.e ], [ %i.al, %bb.o ], [ false, %bb.a ], [ %.sroa.0.1.ph, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast9token_ext9AnyStringECsiU5vK8fN4ZC_11ide_assists.exit19.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %.sroa.0.1

bb.f:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 60
  %i.s = load i8, ptr %i.r, align 4, !range !24, !noundef !4
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.h, label %bb.g, !prof !7

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.v = load i32, ptr %i.u, align 8, !noundef !4
  br label %.noexc15

bb.h:                                             ; preds = %bb.f
  %i.w = invoke noundef i32 @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10offset_mut(ptr noundef nonnull align 8 %i.f)
          to label %.noexc15 unwind label %bb.c

.noexc15:                                         ; preds = %bb.h, %bb.g
  %.sroa.0.0.i = phi i32 [ %i.v, %bb.g ], [ %i.w, %bb.h ] ; 3 uses
  %i.x = load i64, ptr %i.f, align 8, !range !9, !noundef !4
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.z = trunc nuw i64 %i.x to i1
  %i.aa = load ptr, ptr %i.y, align 8, !nonnull !4, !noundef !4 ; 2 uses
  br i1 %i.z, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.noexc15
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !4 ; 2 uses
  %i.ad = icmp ugt i64 %i.ac, 4294967295
  %i.ae = shl nuw i64 %i.ac, 32
  %.sroa.09.0.insert.insert.i.i = select i1 %i.ad, i64 513, i64 %i.ae ; 2 uses
  %i.af = trunc i64 %.sroa.09.0.insert.insert.i.i to i1
  br i1 %i.af, label %bb.j, label %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i, !prof !7

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 2, ptr %i.a, align 1
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @58, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @57, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @230) #38
          to label %.noexc16 unwind label %bb.c

.noexc16:                                         ; preds = %bb.j
  unreachable

_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i: ; preds = %bb.i
  %.sroa.6.0.extract.shift.i.i.i = lshr i64 %.sroa.09.0.insert.insert.i.i, 32
  %.sroa.6.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i to i32
  br label %bb.l

bb.k:                                             ; preds = %.noexc15
  %i.ag = load i32, ptr %i.aa, align 8, !noundef !4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i
  %.sroa.02.0.i = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i ], [ %i.ag, %bb.k ]
  %i.ah = add i32 %.sroa.02.0.i, %.sroa.0.0.i     ; 2 uses
  %.not.i = icmp ugt i32 %.sroa.0.0.i, %i.ah
  br i1 %.not.i, label %bb.m, label %bb.n, !prof !7

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #38
          to label %.noexc17 unwind label %bb.c

.noexc17:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr @92, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 8, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i8 2, ptr %i.ak, align 8
  store i64 0, ptr %i.b, align 8
  %i.al = invoke noundef zeroext i1 @_RINvMs_NtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB5_7Assists3addReNCNvNtNtB7_8handlers10raw_string8add_hash0EB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @93, i64 noundef 5, i32 noundef %.sroa.0.0.i, i32 noundef %i.ah, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c, ptr noundef nonnull align 8 %1)
          to label %bb.o unwind label %bb.c       ; 2 uses

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !noundef !4
  %i.ao = add i32 %i.an, -1                       ; 2 uses
  store i32 %i.ao, ptr %i.am, align 8
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast9token_ext9AnyStringECsiU5vK8fN4ZC_11ide_assists.exit19.sink.split, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast9token_ext9AnyStringECsiU5vK8fN4ZC_11ide_assists.exit19

bb.p:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens6StringECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast9token_ext9AnyStringECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %bb.c, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens6StringECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_path(ptr noalias nofree noundef align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 5 uses
  %i.i = alloca [8 x i8], align 8                 ; 5 uses
  %i.j = alloca [8 x i8], align 8                 ; 5 uses
  %i.k = alloca [8 x i8], align 8                 ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 5 uses
  %i.m = alloca [8 x i8], align 8                 ; 5 uses
  %i.n = alloca [88 x i8], align 8                ; 8 uses
  %i.o = alloca [32 x i8], align 8                ; 4 uses
  %i.p = alloca [56 x i8], align 8                ; 9 uses
  %i.q = alloca [24 x i8], align 8                ; 5 uses
  %i.r = alloca [40 x i8], align 8                ; 7 uses
  %i.s = alloca [88 x i8], align 8                ; 10 uses
  %.sroa.0242 = alloca [60 x i8], align 8         ; 6 uses
  %.sroa.7 = alloca [24 x i8], align 8            ; 6 uses
  %i.t = alloca [32 x i8], align 8                ; 8 uses
  %i.u = alloca [24 x i8], align 8                ; 8 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [1 x i8], align 1                 ; 5 uses
  %i.x = alloca [16 x i8], align 8                ; 9 uses
  %i.y = alloca [8 x i8], align 8                 ; 5 uses
  %i.z = alloca [32 x i8], align 8                ; 17 uses
  %i.aa = alloca [88 x i8], align 8               ; 5 uses
  %i.ab = alloca [8 x i8], align 4                ; 9 uses
  %i.ac = alloca [16 x i8], align 4               ; 4 uses
  %i.ad = alloca [8 x i8], align 8                ; 7 uses
  %i.ae = alloca [32 x i8], align 8               ; 4 uses
  %i.af = alloca [24 x i8], align 8               ; 12 uses
  %i.ag = alloca [136 x i8], align 8              ; 8 uses
  %i.ah = alloca [24 x i8], align 8               ; 5 uses
  %i.ai = alloca [8 x i8], align 8                ; 14 uses
  %i.aj = alloca [104 x i8], align 8              ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import20find_importable_node(ptr noalias nofree noundef nonnull sret([136 x i8]) align 8 captures(none) dereferenceable(136) %i.ag, ptr noundef nonnull align 8 %1)
  %i.ak = load i64, ptr %i.ag, align 8, !range !1245, !noundef !4
  %.not = icmp eq i64 %i.ak, -1
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit230, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit223, %bb.b
  %.sroa.0.0 = phi i1 [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit230 ], [ true, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit223 ], [ false, %bb.b ]
  ret i1 %.sroa.0.0

.body209:                                         ; preds = %bb.dj, %.body, %bb.e, %.thread, %bb.j
  %.pn68 = phi { ptr, i32 } [ %.pn63.pn.pn, %bb.j ], [ %.pn63.pn.pn.pn248, %.thread ], [ %i.ap, %bb.e ], [ %lpad.thr_comm.split-lp, %.body ], [ %i.ip, %bb.dj ] ; 2 uses
  %.val90 = load ptr, ptr %i.ai, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val90, i64 48 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !noundef !4
  %i.an = add i32 %i.am, -1                       ; 2 uses
  store i32 %i.an, ptr %i.al, align 4
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.d, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit

bb.d:                                             ; preds = %.body209
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val90) #40
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit unwind label %bb.bn

bb.e:                                             ; preds = %bb.dk, %bb.g, %bb.f
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body209

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.aj, ptr noundef nonnull align 8 dereferenceable(104) %i.ag, i64 104, i1 false)
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 104
  %.sroa.436.0.copyload = load ptr, ptr %.sroa.436.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.537.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  store ptr %.sroa.436.0.copyload, ptr %i.ai, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 38
  %i.at = load i8, ptr %i.as, align 2, !range !24, !alias.scope !1246, !noundef !4
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 39
  %i.av = load i16, ptr %i.au, align 1, !alias.scope !1246
  %i.aw = zext i16 %i.av to i24
  %i.ax = shl nuw i24 %i.aw, 8
  %.sroa.0.0.insert.ext.i = zext nneg i8 %i.at to i24
  %.sroa.0.0.insert.insert.i = or disjoint i24 %i.ax, %.sroa.0.0.insert.ext.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  invoke void @_RNvMs2_NtNtCs6oosyzwIepl_6ide_db7imports13import_assetsNtB5_12ImportAssets25search_for_relative_paths(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ae, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.aj, ptr noundef nonnull align 8 %i.ay, i24 %.sroa.0.0.insert.insert.i)
          to label %bb.g unwind label %bb.e

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 32, i1 false)
  invoke void @_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterINtCs3gqD4ldeioo_8indexmap6BucketNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportuEENvMs0_B2o_B2l_3keyEB2S_ECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.af, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.o)
          to label %bb.h unwind label %bb.e

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %i.az = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 4 uses
  %i.ba = load i64, ptr %i.az, align 8, !noundef !4 ; 2 uses
  %i.bb = icmp ult i64 %i.ba, 104811045873349726
  call void @llvm.assume(i1 %i.bb)
  %i.bc = icmp eq i64 %i.ba, 0
  br i1 %i.bc, label %bb.di, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  invoke void @_RNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB5_13SemanticsImpl14original_range(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.ac, ptr noundef nonnull align 8 %i.bd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ai)
          to label %bb.k unwind label %.body.thread252

bb.j:                                             ; preds = %.body219
  br i1 %.sroa.034.2, label %.thread, label %.body209

.body.thread252:                                  ; preds = %.invoke297, %.invoke296, %.invoke, %bb.bt, %bb.ad, %bb.ax, %bb.aj, %bb.ab, %bb.cn, %bb.x, %bb.df, %bb.z, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8Xq8PKFYOms_3hir9semantics14SemanticsScopeECsiU5vK8fN4ZC_11ide_assists.exit.i, %bb.k, %bb.i, %.noexc87, %.noexc73, %.noexc82, %.noexc77
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.body:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db7assists10GroupLabelECsiU5vK8fN4ZC_11ide_assists.exit
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body209

bb.k:                                             ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.bg = load <2 x i32>, ptr %i.be, align 4
  store <2 x i32> %i.bg, ptr %i.ad, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  invoke void @_RNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB5_13SemanticsImpl5scope(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.aa, ptr noundef nonnull align 8 %i.bd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ai)
          to label %bb.l unwind label %.body.thread252

bb.l:                                             ; preds = %bb.k
  %i.bh = load i64, ptr %i.aa, align 8, !range !14, !noundef !4
  %.not44 = icmp eq i64 %i.bh, -1
  br i1 %.not44, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.n, ptr noundef nonnull align 8 dereferenceable(88) %i.aa, i64 88, i1 false)
  %i.bi = invoke { i32, i32 } @_RNvMs8_NtCs8Xq8PKFYOms_3hir9semanticsNtB5_14SemanticsScope6module(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.n)
          to label %bb.o unwind label %bb.n       ; 2 uses

bb.n:                                             ; preds = %bb.m
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8Xq8PKFYOms_3hir9semantics14SemanticsScopeECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.n) #37
          to label %.thread unwind label %bb.r

bb.o:                                             ; preds = %bb.m
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsileJQcQObtj_7hir_def8resolver5ScopeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.n)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8Xq8PKFYOms_3hir9semantics14SemanticsScopeECsiU5vK8fN4ZC_11ide_assists.exit.i unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsileJQcQObtj_7hir_def8resolver5ScopeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.n)
          to label %.thread unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8Xq8PKFYOms_3hir9semantics14SemanticsScopeECsiU5vK8fN4ZC_11ide_assists.exit.i: ; preds = %bb.o
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsileJQcQObtj_7hir_def8resolver5ScopeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.n)
          to label %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_path0B7_.exit unwind label %.body.thread252

bb.r:                                             ; preds = %bb.n
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.s:                                             ; preds = %bb.l
  store i32 0, ptr %i.ab, align 4
  br label %bb.t

bb.t:                                             ; preds = %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_path0B7_.exit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.bn = load i64, ptr %i.aj, align 8, !range !18, !noundef !4 ; 2 uses
  %i.bo = icmp slt i64 %i.bn, 0
  %i.bp = add i64 %i.bn, -9223372036854775807
  %i.bq = select i1 %i.bo, i64 %i.bp, i64 0
  switch i64 %i.bq, label %bb.u [
    i64 0, label %bb.v
    i64 1, label %.noexc85
    i64 2, label %.noexc80
  ]

_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_path0B7_.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8Xq8PKFYOms_3hir9semantics14SemanticsScopeECsiU5vK8fN4ZC_11ide_assists.exit.i
  %i.br = extractvalue { i32, i32 } %i.bi, 0
  %i.bs = extractvalue { i32, i32 } %i.bi, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  store i32 %i.br, ptr %i.ab, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i32 %i.bs, ptr %i.bt, align 4
  br label %bb.t

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
end_hunk_0
begin_hunk_1_@_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_path:bb.a
  %i.hz = load i32, ptr %i.hy, align 4, !noundef !4 ; 2 uses
  %i.ia = icmp eq i32 %i.hz, -1
  br i1 %i.ia, label %.invoke297, label %bb.da, !prof !7

bb.da:                                            ; preds = %_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit83
  %i.ib = add nuw i32 %i.hz, 1
  store i32 %i.ib, ptr %i.hy, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %.val105, ptr %i.i, align 8
  %i.ic = invoke noundef i16 @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i)
          to label %bb.dd unwind label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.id = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ie = load i32, ptr %i.hy, align 4, !noundef !4
  %i.if = add i32 %i.ie, -1                       ; 2 uses
  store i32 %i.if, ptr %i.hy, align 4
  %i.ig = icmp eq i32 %i.if, 0
  br i1 %i.ig, label %bb.dc, label %.thread

bb.dc:                                            ; preds = %bb.db
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val105) #40
          to label %.thread unwind label %bb.dg

bb.dd:                                            ; preds = %bb.da
  %i.ih = icmp eq i16 %i.ic, 245
  br i1 %i.ih, label %bb.dh, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.ii = load i32, ptr %i.hy, align 4, !noundef !4
  %i.ij = add i32 %i.ii, -1                       ; 2 uses
  store i32 %i.ij, ptr %i.hy, align 4
  %i.ik = icmp eq i32 %i.ij, 0
  br i1 %i.ik, label %bb.df, label %.thread270

bb.df:                                            ; preds = %bb.de
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val105) #40
          to label %.thread270 unwind label %.body.thread252

bb.dg:                                            ; preds = %bb.dc
  %i.il = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #39
  unreachable

.thread270:                                       ; preds = %bb.de, %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECsiU5vK8fN4ZC_11ide_assists.exit164

bb.dh:                                            ; preds = %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.im = load ptr, ptr %i.ay, align 8, !nonnull !4, !align !8, !noundef !4
  %i.in = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.im, ptr %i.in, align 8
  %i.io = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr %.val105, ptr %i.io, align 8
  store i32 3, ptr %i.z, align 8
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECsiU5vK8fN4ZC_11ide_assists.exit175

bb.di:                                            ; preds = %bb.h, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECsiU5vK8fN4ZC_11ide_assists.exit164
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %bb.dk unwind label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.ip = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %.body209 unwind label %bb.dl

bb.dk:                                            ; preds = %bb.di
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportEECsiU5vK8fN4ZC_11ide_assists.exit unwind label %bb.e

bb.dl:                                            ; preds = %bb.dj
  %i.iq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #39
  unreachable

.body219:                                         ; preds = %bb.dx, %bb.dm, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportEECsiU5vK8fN4ZC_11ide_assists.exit
  %.pn63.pn.pn = phi { ptr, i32 } [ %.pn63.pn, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportEECsiU5vK8fN4ZC_11ide_assists.exit ], [ %i.ir, %bb.dm ], [ %i.kk, %bb.dx ] ; 2 uses
  %.sroa.034.2 = phi i1 [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportEECsiU5vK8fN4ZC_11ide_assists.exit ], [ %.sroa.034.3, %bb.dm ], [ false, %bb.dx ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path16QualifyCandidateEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.z) #37
          to label %bb.j unwind label %bb.bn

bb.dm:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists.exit.i, %bb.dt, %bb.ds, %bb.dr, %.noexc211, %bb.dp, %bb.bm, %bb.bl, %bb.dn
  %.sroa.034.3 = phi i1 [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists.exit.i ], [ true, %bb.dt ], [ true, %bb.ds ], [ true, %.noexc211 ], [ true, %bb.dn ], [ true, %bb.bm ], [ true, %bb.bl ], [ true, %bb.dp ], [ true, %bb.dr ]
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %.body219

bb.dn:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECsiU5vK8fN4ZC_11ide_assists.exit175, %bb.bl, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1247
  invoke void @_RINvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportE8dedup_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths0_0EB20_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %bb.do unwind label %bb.dm

bb.do:                                            ; preds = %bb.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.is = load i32, ptr %i.ab, align 4, !noundef !4 ; 2 uses
  %.not61 = icmp eq i32 %i.is, 0
  br i1 %.not61, label %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths1_0B7_.exit, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.it = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.iu = load i32, ptr %i.it, align 4
  %i.iv = load ptr, ptr %i.ay, align 8, !nonnull !4, !align !8, !noundef !4
  %i.iw = invoke { i32, i32 } @_RNvMs4_Cs8Xq8PKFYOms_3hirNtB5_6Module5krate(i32 noundef range(i32 1, 0) %i.is, i32 noundef %i.iu, ptr noundef nonnull %i.iv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @36)
          to label %.noexc211 unwind label %bb.dm ; 2 uses

.noexc211:                                        ; preds = %bb.dp
  %i.ix = extractvalue { i32, i32 } %i.iw, 0
  %i.iy = extractvalue { i32, i32 } %i.iw, 1
  %i.iz = load ptr, ptr %i.ay, align 8, !nonnull !4, !align !8, !noundef !4
  %i.ja = invoke noundef range(i8 0, 4) i8 @_RNvMs_Cs8Xq8PKFYOms_3hirNtB4_5Crate7edition(i32 noundef %i.ix, i32 noundef %i.iy, ptr noundef nonnull %i.iz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @36)
          to label %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths1_0B7_.exit unwind label %bb.dm

_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths1_0B7_.exit: ; preds = %.noexc211, %bb.do
  %storemerge = phi i8 [ 3, %bb.do ], [ %i.ja, %.noexc211 ]
  store i8 %storemerge, ptr %i.w, align 1
  %i.jb = load ptr, ptr %i.ep, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.jc = load i64, ptr %i.az, align 8, !noundef !4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr %1, ptr %i.v, align 8
  %i.jd = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.ah, ptr %i.jd, align 8
  %i.je = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr %i.ab, ptr %i.je, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1249
  store ptr %i.v, ptr %i.h, align 8, !noalias !1250
  %i.jf = icmp samesign ult i64 %i.jc, 2
  br i1 %i.jf, label %bb.dt, label %bb.dq, !prof !11

bb.dq:                                            ; preds = %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths1_0B7_.exit
  %i.jg = icmp samesign ult i64 %i.jc, 21
  br i1 %i.jg, label %bb.ds, label %bb.dr, !prof !11

bb.dr:                                            ; preds = %bb.dq
  invoke void @_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6stable14driftsort_mainNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_11sort_by_keyINtNtB8_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths2_0E0INtNtB2a_3vec3VecBZ_EEB3l_(ptr noalias nofree noundef nonnull align 8 %i.jb, i64 noundef range(i64 0, 104811045873349726) %i.jc, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #40
          to label %bb.dt unwind label %bb.dm

bb.ds:                                            ; preds = %bb.dq
  invoke void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1m_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths2_0E0EB3J_(ptr noalias nofree noundef nonnull align 8 %i.jb, i64 noundef range(i64 0, 104811045873349726) %i.jc, i64 noundef 1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.dt unwind label %bb.dm

bb.dt:                                            ; preds = %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths1_0B7_.exit, %bb.dr, %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.experimental.noalias.scope.decl(metadata !1251)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1252
  %i.jh = load i64, ptr %i.aj, align 8, !range !18, !alias.scope !1251, !noalias !1253, !noundef !4
  %i.ji = icmp slt i64 %i.jh, 0                   ; 2 uses
  %.sroa.01.0.v.i.sroa.sel.sroa.sel234.v.sroa.sel.v.sroa.sel.v = select i1 %i.ji, i64 48, i64 72
  %.sroa.01.0.v.i.sroa.sel.sroa.sel234.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.sroa.01.0.v.i.sroa.sel.sroa.sel234.v.sroa.sel.v.sroa.sel.v
  %i.jj = load ptr, ptr %.sroa.01.0.v.i.sroa.sel.sroa.sel234.v.sroa.sel.v.sroa.sel, align 8, !alias.scope !1251, !noalias !1253, !nonnull !4, !noundef !4
  %.sroa.01.0.v.i.sroa.sel.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.ji, i64 56, i64 80
  %.sroa.01.0.v.i.sroa.sel.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.sroa.01.0.v.i.sroa.sel.sroa.sel.v.sroa.sel.v.sroa.sel.v
  %i.jk = load i64, ptr %.sroa.01.0.v.i.sroa.sel.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !alias.scope !1251, !noalias !1253, !noundef !4
  store ptr %i.jj, ptr %i.g, align 8, !noalias !1252
  %i.jl = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.jk, ptr %i.jl, align 8, !noalias !1252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1252
  store ptr %i.g, ptr %i.f, align 8, !noalias !1252
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCsiU5vK8fN4ZC_11ide_assists, ptr %.sroa.49.0..sroa_idx.i, align 8, !noalias !1252
  invoke void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, ptr noundef nonnull @94, ptr noundef nonnull %i.f)
          to label %bb.du unwind label %bb.dm

bb.du:                                            ; preds = %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1252
  %i.jm = load ptr, ptr %i.ep, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.jn = load i64, ptr %i.af, align 8, !range !22, !noundef !4
  %i.jo = load i64, ptr %i.az, align 8, !noundef !4 ; 3 uses
  %i.jp = icmp ult i64 %i.jo, 104811045873349726
  call void @llvm.assume(i1 %i.jp)
  %.idx = mul nuw nsw i64 %i.jo, 88
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jm, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %i.jm, ptr %i.t, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  store ptr %i.jm, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 %i.jn, ptr %.sroa.532.0..sroa_idx, align 8
  %.sroa.633.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 2 uses
  store ptr %i.jq, ptr %.sroa.633.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0242)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %i.jr = icmp eq i64 %i.jo, 0
  br i1 %i.jr, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit.thread, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit.lr.ph

_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit.lr.ph: ; preds = %bb.du
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 60
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.js = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.jt = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.ju = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.jv = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.jw = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.jx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.jy = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.jz = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ka = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.kb = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.kc = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.kd = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.ke = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.kf = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %2 = insertelement <2 x ptr> poison, ptr %i.s, i64 0
  %3 = insertelement <2 x ptr> %2, ptr %i.ka, i64 1
  %4 = insertelement <2 x ptr> <ptr @100, ptr poison>, ptr %i.s, i64 1 ; 2 uses
  br label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %bb.ec, %bb.dv
  %.pn63 = phi { ptr, i32 } [ %i.kg, %bb.dv ], [ %i.kr, %bb.ec ]
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportEECsiU5vK8fN4ZC_11ide_assists.exit unwind label %bb.bn

bb.dv:                                            ; preds = %bb.ef
  %i.kg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportECsiU5vK8fN4ZC_11ide_assists.exit

_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit.lr.ph, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportECsiU5vK8fN4ZC_11ide_assists.exit228
  %i.kh = phi ptr [ %i.jm, %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit.lr.ph ], [ %i.la, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportECsiU5vK8fN4ZC_11ide_assists.exit228 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1254)
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 88
  store ptr %i.ki, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1254, !noalias !1255
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %.sroa.0242, ptr noundef nonnull align 8 dereferenceable(60) %i.kh, i64 60, i1 false), !noalias !1254
  %.sroa.5.0..sroa_idx243 = getelementptr inbounds nuw i8, ptr %i.kh, i64 60
  %.sroa.5.0.copyload244 = load i32, ptr %.sroa.5.0..sroa_idx243, align 4, !noalias !1254 ; 2 uses
  %.sroa.7.0..sroa_idx245 = getelementptr inbounds nuw i8, ptr %i.kh, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx245, i64 24, i1 false), !noalias !1254
  %.not62 = icmp eq i32 %.sroa.5.0.copyload244, -1
  br i1 %.not62, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit.thread, label %bb.ed

_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit.thread: ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportECsiU5vK8fN4ZC_11ide_assists.exit228, %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0242)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportEECsiU5vK8fN4ZC_11ide_assists.exit218 unwind label %bb.dw

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportEECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportECsiU5vK8fN4ZC_11ide_assists.exit, %bb.dw
  %.pn63.pn = phi { ptr, i32 } [ %i.kj, %bb.dw ], [ %.pn63, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportECsiU5vK8fN4ZC_11ide_assists.exit ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db7assists10GroupLabelECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef align 8 dereferenceable(24) %i.u) #37
          to label %.body219 unwind label %bb.bn

bb.dw:                                            ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit.thread
  %i.kj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportEECsiU5vK8fN4ZC_11ide_assists.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportEECsiU5vK8fN4ZC_11ide_assists.exit218: ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists.exit.i unwind label %bb.dx

bb.dx:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportEECsiU5vK8fN4ZC_11ide_assists.exit218
  %i.kk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %.body219 unwind label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.kl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportEECsiU5vK8fN4ZC_11ide_assists.exit218
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db7assists10GroupLabelECsiU5vK8fN4ZC_11ide_assists.exit unwind label %bb.dm

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db7assists10GroupLabelECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path16QualifyCandidateEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.z)
          to label %bb.dz unwind label %.body

bb.dz:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db7assists10GroupLabelECsiU5vK8fN4ZC_11ide_assists.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %.val89 = load ptr, ptr %i.ai, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %.val89, i64 48 ; 2 uses
  %i.kn = load i32, ptr %i.km, align 4, !noundef !4
  %i.ko = add i32 %i.kn, -1                       ; 2 uses
  store i32 %i.ko, ptr %i.km, align 4
  %i.kp = icmp eq i32 %i.ko, 0
  br i1 %i.kp, label %bb.ea, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit223

bb.ea:                                            ; preds = %bb.dz
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val89) #40
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit223 unwind label %bb.eb

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %.body209, %bb.d, %bb.eb
  %.pn70 = phi { ptr, i32 } [ %i.kq, %bb.eb ], [ %.pn68, %bb.d ], [ %.pn68, %.body209 ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets12ImportAssetsECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef align 8 dereferenceable(104) %i.aj) #37
          to label %bb.eh unwind label %bb.bn

bb.eb:                                            ; preds = %bb.eg, %bb.ea
  %i.kq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit223: ; preds = %bb.dz, %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets12ImportAssetsECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef align 8 dereferenceable(104) %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.c

bb.ec:                                            ; preds = %.split.i, %.split13.i, %_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path5label.exit
  %i.kr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(88) %i.s)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportECsiU5vK8fN4ZC_11ide_assists.exit unwind label %bb.bn

bb.ed:                                            ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %i.s, ptr noundef nonnull align 8 dereferenceable(60) %.sroa.0242, i64 60, i1 false)
  store i32 %.sroa.5.0.copyload244, ptr %.sroa.5.0..sroa_idx, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr @99, ptr %i.js, align 8
  store i64 12, ptr %i.jt, align 8
  store i8 0, ptr %i.ju, align 8
  store i64 0, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %.val120 = load ptr, ptr %i.ay, align 8, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.ks = load i8, ptr %i.w, align 1, !range !1256, !noundef !4 ; 2 uses
  %.val121 = load i64, ptr %i.aj, align 8, !range !18, !noundef !4
  %i.kt = icmp sgt i64 %.val121, -1
  br i1 %i.kt, label %bb.ee, label %.split13.i

bb.ee:                                            ; preds = %bb.ed
  %.val122 = load i64, ptr %i.jv, align 8         ; 2 uses
  %i.ku = icmp ult i64 %.val122, 1152921504606846976
  call void @llvm.assume(i1 %i.ku)
  %i.kv = icmp eq i64 %.val122, 0
  br i1 %i.kv, label %.split.i, label %.split13.i

.split13.i:                                       ; preds = %bb.ee, %bb.ed
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1257
  store ptr %.val120, ptr %i.c, align 8, !noalias !1257
  store <2 x ptr> %4, ptr %i.jw, align 8, !noalias !1257
  store i8 %i.ks, ptr %i.jx, align 8, !noalias !1257
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1257
  store ptr %i.c, ptr %i.b, align 8, !noalias !1257
  store ptr @_RNvXs1_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_7DisplayNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !1257
  invoke void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noundef nonnull @102, ptr noundef nonnull %i.b)
          to label %.noexc225 unwind label %bb.ec

.noexc225:                                        ; preds = %.split13.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1257
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1257
  br label %_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path5label.exit

.split.i:                                         ; preds = %bb.ee
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1257
  store ptr %.val120, ptr %i.e, align 8, !noalias !1257
  store <2 x ptr> %4, ptr %i.jy, align 8, !noalias !1257
  store i8 %i.ks, ptr %i.jz, align 8, !noalias !1257
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1257
  store ptr %i.e, ptr %i.d, align 8, !noalias !1257
  store ptr @_RNvXs1_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_7DisplayNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !1257
  invoke void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noundef nonnull @101, ptr noundef nonnull %i.d)
          to label %.noexc226 unwind label %bb.ec

.noexc226:                                        ; preds = %.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1257
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1257
  br label %_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path5label.exit

_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path5label.exit: ; preds = %.noexc226, %.noexc225
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %i.ai, ptr %i.p, align 8
  store ptr %i.z, ptr %i.kb, align 8
  store ptr %i.ad, ptr %i.kc, align 8
  store <2 x ptr> %3, ptr %i.kd, align 8
  store ptr %i.w, ptr %i.ke, align 8
  store ptr %1, ptr %i.kf, align 8
  %i.kw = load i32, ptr %i.ad, align 8, !noundef !4
  %i.kx = load i32, ptr %i.bf, align 4, !noundef !4
  %i.ky = invoke noundef zeroext i1 @_RINvMs_NtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB5_7Assists9add_groupNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtNtB7_8handlers12qualify_path12qualify_paths3_0EB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.r, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.q, i32 noundef %i.kw, i32 noundef %i.kx, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.p)
          to label %bb.ef unwind label %bb.ec     ; 0 uses

bb.ef:                                            ; preds = %_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path5label.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(88) %i.s)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportECsiU5vK8fN4ZC_11ide_assists.exit228 unwind label %bb.dv

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportECsiU5vK8fN4ZC_11ide_assists.exit228: ; preds = %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0242)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0242)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %i.kz = load ptr, ptr %.sroa.633.0..sroa_idx, align 8, !alias.scope !1258, !noalias !1255, !nonnull !4, !noundef !4
  %i.la = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1258, !noalias !1255, !nonnull !4, !noundef !4 ; 2 uses
  %i.lb = icmp eq ptr %i.la, %i.kz
  br i1 %i.lb, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit.thread, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit

.thread:                                          ; preds = %bb.db, %bb.dc, %bb.cj, %bb.ck, %bb.bp, %bb.bq, %bb.af, %bb.ag, %bb.n, %bb.p, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECsiU5vK8fN4ZC_11ide_assists.exit193, %bb.cq, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentECsiU5vK8fN4ZC_11ide_assists.exit167, %bb.bw, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources10successors10SuccessorsNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentNCNvMsf_NtB1u_8node_extNtB1q_4Path8segments0EECsiU5vK8fN4ZC_11ide_assists.exit, %bb.am, %.body.thread252, %bb.j
  %.pn63.pn.pn.pn248 = phi { ptr, i32 } [ %.pn, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECsiU5vK8fN4ZC_11ide_assists.exit193 ], [ %.pn63.pn.pn, %bb.j ], [ %lpad.thr_comm, %.body.thread252 ], [ %.pn59, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentECsiU5vK8fN4ZC_11ide_assists.exit167 ], [ %.pn54.pn, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources10successors10SuccessorsNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentNCNvMsf_NtB1u_8node_extNtB1q_4Path8segments0EECsiU5vK8fN4ZC_11ide_assists.exit ], [ %.pn54.pn, %bb.am ], [ %.pn59, %bb.bw ], [ %.pn, %bb.cq ], [ %i.gs, %bb.cj ], [ %i.fa, %bb.bp ], [ %i.ck, %bb.af ], [ %i.bj, %bb.n ], [ %i.bk, %bb.p ], [ %i.ck, %bb.ag ], [ %i.fa, %bb.bq ], [ %i.gs, %bb.ck ], [ %i.id, %bb.dc ], [ %i.id, %bb.db ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportEECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef align 8 dereferenceable(24) %i.af) #37
          to label %.body209 unwind label %bb.bn

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportEECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %.val = load ptr, ptr %i.ai, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %.val, i64 48 ; 2 uses
  %i.ld = load i32, ptr %i.lc, align 4, !noundef !4
  %i.le = add i32 %i.ld, -1                       ; 2 uses
  store i32 %i.le, ptr %i.lc, align 4
  %i.lf = icmp eq i32 %i.le, 0
  br i1 %i.lf, label %bb.eg, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit230

bb.eg:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportEECsiU5vK8fN4ZC_11ide_assists.exit
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val) #40
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit230 unwind label %bb.eb

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit230: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportEECsiU5vK8fN4ZC_11ide_assists.exit, %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets12ImportAssetsECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef align 8 dereferenceable(104) %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.c

bb.eh:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit
  resume { ptr, i32 } %.pn70
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14add_turbo_fish13get_fish_head(ptr noundef nonnull align 8 %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %1, ptr %i.c, align 8
  store ptr %0, ptr %i.a, align 8
  %i.d = call noundef nonnull ptr @_RINvMNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory12constructorsNtB5_13SyntaxFactory16generic_arg_listINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB1N_3ops5range5RangejENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14add_turbo_fish13get_fish_head0EEB33_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14add_turbo_fish14add_turbo_fish(ptr noalias nofree noundef align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 8 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [40 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [40 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [16 x i8], align 4                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.2.sroa.2 = alloca [15 x i8], align 1     ; 2 uses
  %i.j = alloca [80 x i8], align 8                ; 7 uses
  %i.k = alloca [8 x i8], align 8                 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 3 uses
  %i.n = load i32, ptr %i.m, align 8, !noundef !4
  %i.o = tail call noundef ptr @_RINvNtCsjJXvCMGntp8_6syntax4algo19find_node_at_offsetNtNtNtNtB4_3ast9generated5nodes11PathSegmentECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l, i32 noundef %i.n) ; 2 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %.noexc.i, label %bb.aw

.noexc.i:                                         ; preds = %bb.a
  %i.p = load i32, ptr %i.m, align 8, !noundef !4
  %i.q = tail call { i64, ptr } @_RINvNtCsjJXvCMGntp8_6syntax4algo19find_node_at_offsetNtNtNtB4_3ast8expr_ext12CallableExprECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l, i32 noundef %i.p) ; 2 uses
  %i.r = extractvalue { i64, ptr } %i.q, 0        ; 3 uses
  %.not.i.i = icmp eq i64 %i.r, 2
  br i1 %.not.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs83ee1IJTiSq_6either6EitherNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentNtB18_14MethodCallExprEECsiU5vK8fN4ZC_11ide_assists.exit, label %bb.b

bb.b:                                             ; preds = %.noexc.i
  %i.s = extractvalue { i64, ptr } %i.q, 1        ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  %i.t = invoke fastcc noundef ptr @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes7ArgListECsiU5vK8fN4ZC_11ide_assists(ptr nonnull %i.s)
          to label %bb.d unwind label %bb.c       ; 8 uses

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7ArgListECsiU5vK8fN4ZC_11ide_assists.exit.i.i: ; preds = %bb.f, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBE_9generated5nodes4ExprEECsiU5vK8fN4ZC_11ide_assists.exit.i.i, %bb.c
  %.pn35.i.i = phi { ptr, i32 } [ %i.v, %bb.c ], [ %.pn33.i.i, %bb.f ], [ %.pn33.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBE_9generated5nodes4ExprEECsiU5vK8fN4ZC_11ide_assists.exit.i.i ] ; 4 uses
  %.sroa.020.0.i.i = phi i1 [ %.sroa.020.1.i.i, %bb.c ], [ true, %bb.f ], [ true, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBE_9generated5nodes4ExprEECsiU5vK8fN4ZC_11ide_assists.exit.i.i ]
  %i.u = icmp eq i64 %i.r, 0
  br i1 %i.u, label %.thread.i.i, label %bb.at

bb.c:                                             ; preds = %bb.as, %bb.an, %bb.z, %bb.t, %.noexc38.i.i, %bb.r, %.noexc42.i.i, %bb.p, %bb.b
  %.sroa.020.1.i.i = phi i1 [ true, %bb.as ], [ false, %bb.an ], [ false, %bb.z ], [ true, %bb.t ], [ true, %bb.r ], [ true, %bb.p ], [ true, %bb.b ], [ true, %.noexc42.i.i ], [ true, %.noexc38.i.i ]
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7ArgListECsiU5vK8fN4ZC_11ide_assists.exit.i.i

bb.d:                                             ; preds = %bb.b
  %.not25.i.i = icmp eq ptr %i.t, null
  br i1 %.not25.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7ArgListECsiU5vK8fN4ZC_11ide_assists.exit106.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.t, ptr %i.a, align 8
  %i.w = invoke noundef ptr @_RNvMsm_NtNtCsjJXvCMGntp8_6syntax3ast8expr_extNtNtNtB7_9generated5nodes7ArgList4args(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.h unwind label %bb.g

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7ArgListECsiU5vK8fN4ZC_11ide_assists.exit106.i.i: ; preds = %bb.as, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBE_9generated5nodes4ExprEECsiU5vK8fN4ZC_11ide_assists.exit104.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 48 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !noundef !4
  %i.z = add i32 %i.y, -1                         ; 2 uses
  store i32 %i.z, ptr %i.x, align 4
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8CallExprECsiU5vK8fN4ZC_11ide_assists.exit99.sink.split.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs83ee1IJTiSq_6either6EitherNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentNtB18_14MethodCallExprEECsiU5vK8fN4ZC_11ide_assists.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBE_9generated5nodes4ExprEECsiU5vK8fN4ZC_11ide_assists.exit.i.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.g
  %.pn33.i.i = phi { ptr, i32 } [ %i.af, %bb.g ], [ %i.ah, %bb.k ], [ %i.ah, %bb.i ], [ %i.ah, %bb.j ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 48 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !noundef !4
  %i.ad = add i32 %i.ac, -1                       ; 2 uses
  store i32 %i.ad, ptr %i.ab, align 4
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.f, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7ArgListECsiU5vK8fN4ZC_11ide_assists.exit.i.i

bb.f:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBE_9generated5nodes4ExprEECsiU5vK8fN4ZC_11ide_assists.exit.i.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.t) #40
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7ArgListECsiU5vK8fN4ZC_11ide_assists.exit.i.i unwind label %bb.ao

bb.g:                                             ; preds = %bb.ar, %bb.o, %bb.e
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBE_9generated5nodes4ExprEECsiU5vK8fN4ZC_11ide_assists.exit.i.i

bb.h:                                             ; preds = %bb.e
  store ptr %i.w, ptr %i.b, align 8
  %i.ag = invoke { i64, ptr } @_RNvXs_NtCsjJXvCMGntp8_6syntax3astINtB4_11AstChildrenNtNtNtB4_9generated5nodes4ExprENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.l unwind label %bb.i       ; 2 uses

bb.i:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i77.i.i, %bb.h
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %.val67.i.i = load ptr, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %i.ai = icmp eq ptr %.val67.i.i, null
  br i1 %i.ai, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBE_9generated5nodes4ExprEECsiU5vK8fN4ZC_11ide_assists.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.val67.i.i, i64 48 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !noundef !4
  %i.al = add i32 %i.ak, -1                       ; 2 uses
  store i32 %i.al, ptr %i.aj, align 4
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.k, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBE_9generated5nodes4ExprEECsiU5vK8fN4ZC_11ide_assists.exit.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val67.i.i) #40
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBE_9generated5nodes4ExprEECsiU5vK8fN4ZC_11ide_assists.exit.i.i unwind label %bb.ao

bb.l:                                             ; preds = %bb.h
  %i.an = extractvalue { i64, ptr } %i.ag, 0
  %i.ao = extractvalue { i64, ptr } %i.ag, 1      ; 3 uses
  %.not26.i.i = icmp eq i64 %i.an, -1
  br i1 %.not26.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEECsiU5vK8fN4ZC_11ide_assists.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao) ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !noundef !4
  %i.ar = add i32 %i.aq, -1                       ; 2 uses
  store i32 %i.ar, ptr %i.ap, align 4
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i77.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEECsiU5vK8fN4ZC_11ide_assists.exit79.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i77.i.i: ; preds = %bb.m
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ao) #40
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEECsiU5vK8fN4ZC_11ide_assists.exit79.i.i unwind label %bb.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEECsiU5vK8fN4ZC_11ide_assists.exit.i.i: ; preds = %bb.l
  %.val66.i.i = load ptr, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %i.at = icmp eq ptr %.val66.i.i, null
end_hunk_1
