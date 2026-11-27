Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_runtime-6febc95dcd613b02.xet_runtime.79acea5f420df98a-cgu.07?download=true
inline.NumInlined: 188
inline.NumDeleted: 53
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvNtNtCs8mtlrHyd7Y_11shellexpand4path5funcs18tilde_with_contextNtNtCsG258MDvU3F_3std4path4PathNtB13_7PathBufNvB2_8home_dirECsarFSTFZzLuM_11xet_runtime:bb.a
common.resume:                                    ; preds = %.body28, %bb.ag, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.bb, %bb.ag ], [ %i.w, %bb.j ], [ %.pn.pn.pn, %.body28 ]
  resume { ptr, i32 } %common.resume.op

_RNvYNvNtNtCs8mtlrHyd7Y_11shellexpand4path5funcs8home_dirINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_onceCsarFSTFZzLuM_11xet_runtime.exit: ; preds = %bb.f
  %i.y = load i64, ptr %i.f, align 8, !range !8, !noundef !5
  %.not15 = icmp eq i64 %i.y, -1
  br i1 %.not15, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_RNvYNvNtNtCs8mtlrHyd7Y_11shellexpand4path5funcs8home_dirINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_onceCsarFSTFZzLuM_11xet_runtime.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvXs_NtCs8mtlrHyd7Y_11shellexpand4pathNtNtCsG258MDvU3F_3std4path7PathBufNtNtB4_7wtraits12AsRefXstrExt11into_winputCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e)
          to label %bb.o unwind label %bb.n

bb.m:                                             ; preds = %_RNvYNvNtNtCs8mtlrHyd7Y_11shellexpand4path5funcs8home_dirINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_onceCsarFSTFZzLuM_11xet_runtime.exit
  invoke void @_RNvXs_NtCs8mtlrHyd7Y_11shellexpand4pathNtNtCsG258MDvU3F_3std4path4PathNtNtB4_7wtraits12AsRefXstrExt9into_ocowCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
          to label %bb.ae unwind label %bb.b

.body:                                            ; preds = %bb.aa, %bb.n, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.p ], [ %i.z, %bb.n ], [ %i.av, %bb.aa ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #22
          to label %.body28 unwind label %bb.ai

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCscpXoUs9mfvj_12os_str_bytes7raw_str11RawOsStringECsarFSTFZzLuM_11xet_runtime.exit.i25, %bb.l
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.o:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !5
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = invoke noundef i64 @_RNvXs0_NtCs8mtlrHyd7Y_11shellexpand4pathNtNtCscpXoUs9mfvj_12os_str_bytes7raw_str8RawOsStrNtNtB5_7wtraits7WstrExt8wstr_len(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef %i.ad)
          to label %bb.r unwind label %bb.q

bb.p:                                             ; preds = %bb.w, %bb.q
  %.pn = phi { ptr, i32 } [ %i.af, %bb.q ], [ %i.as, %bb.w ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowNtNtCscpXoUs9mfvj_12os_str_bytes7raw_str8RawOsStrEECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #22
          to label %.body unwind label %bb.ai

bb.q:                                             ; preds = %bb.u, %bb.s, %bb.r, %bb.o
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.r:                                             ; preds = %bb.o
  %i.ag = invoke noundef i64 @_RNvXs0_NtCs8mtlrHyd7Y_11shellexpand4pathNtNtCscpXoUs9mfvj_12os_str_bytes7raw_str8RawOsStrNtNtB5_7wtraits7WstrExt8wstr_len(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef %i.o)
          to label %bb.s unwind label %bb.q

bb.s:                                             ; preds = %bb.r
  %i.ah = add i64 %i.ag, %i.ae                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.ah, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.t unwind label %bb.q

bb.t:                                             ; preds = %bb.s
  %i.ai = load i64, ptr %i.b, align 8, !range !4, !noundef !5
  %i.aj = trunc nuw i64 %i.ai to i1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !range !9, !noundef !5 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.aj, label %bb.u, label %bb.v, !prof !10

bb.u:                                             ; preds = %bb.t
  %i.an = load i64, ptr %i.am, align 8
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.al, i64 %i.an) #23
          to label %bb.aj unwind label %bb.q

bb.v:                                             ; preds = %bb.t
  %i.ao = load ptr, ptr %i.am, align 8, !nonnull !5, !noundef !5
  %i.ap = icmp ule i64 %i.ah, %i.al
  call void @llvm.assume(i1 %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.al, ptr %i.c, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.ao, ptr %.sroa.411.0..sroa_idx, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.512.0..sroa_idx, align 8
  %i.aq = load ptr, ptr %i.aa, align 8, !nonnull !5
  %i.ar = load i64, ptr %i.ac, align 8
  invoke void @_RNvXs3_NtCs8mtlrHyd7Y_11shellexpand4pathNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringNtNtB5_7wtraits10OStringExt9push_wstr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aq, i64 noundef %i.ar)
          to label %bb.x unwind label %bb.w

bb.w:                                             ; preds = %bb.x, %bb.v
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #22
          to label %bb.p unwind label %bb.ai

bb.x:                                             ; preds = %bb.v
  invoke void @_RNvXs3_NtCs8mtlrHyd7Y_11shellexpand4pathNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringNtNtB5_7wtraits10OStringExt9push_wstr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef %i.o)
          to label %bb.y unwind label %bb.w

bb.y:                                             ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.at = load i64, ptr %i.d, align 8, !range !8, !alias.scope !39, !noundef !5
  %i.au = icmp eq i64 %i.at, -1
  br i1 %i.au, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowNtNtCscpXoUs9mfvj_12os_str_bytes7raw_str8RawOsStrEECsarFSTFZzLuM_11xet_runtime.exit27, label %bb.z

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCscpXoUs9mfvj_12os_str_bytes7raw_str11RawOsStringECsarFSTFZzLuM_11xet_runtime.exit.i25 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCscpXoUs9mfvj_12os_str_bytes7raw_str11RawOsStringECsarFSTFZzLuM_11xet_runtime.exit.i25: ; preds = %bb.z
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowNtNtCscpXoUs9mfvj_12os_str_bytes7raw_str8RawOsStrEECsarFSTFZzLuM_11xet_runtime.exit27 unwind label %bb.n

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowNtNtCscpXoUs9mfvj_12os_str_bytes7raw_str8RawOsStrEECsarFSTFZzLuM_11xet_runtime.exit27: ; preds = %bb.y, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCscpXoUs9mfvj_12os_str_bytes7raw_str11RawOsStringECsarFSTFZzLuM_11xet_runtime.exit.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsarFSTFZzLuM_11xet_runtime.exit.i unwind label %bb.ac

bb.ac:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowNtNtCscpXoUs9mfvj_12os_str_bytes7raw_str8RawOsStrEECsarFSTFZzLuM_11xet_runtime.exit27
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body28 unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsarFSTFZzLuM_11xet_runtime.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowNtNtCscpXoUs9mfvj_12os_str_bytes7raw_str8RawOsStrEECsarFSTFZzLuM_11xet_runtime.exit27
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECsarFSTFZzLuM_11xet_runtime.exit unwind label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECsarFSTFZzLuM_11xet_runtime.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsarFSTFZzLuM_11xet_runtime.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.m, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECsarFSTFZzLuM_11xet_runtime.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.az = load i64, ptr %i.g, align 8, !range !8, !alias.scope !40, !noundef !5
  %i.ba = icmp eq i64 %i.az, -1
  br i1 %i.ba, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowNtNtCscpXoUs9mfvj_12os_str_bytes7raw_str8RawOsStrEECsarFSTFZzLuM_11xet_runtime.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowNtNtCscpXoUs9mfvj_12os_str_bytes7raw_str8RawOsStrEECsarFSTFZzLuM_11xet_runtime.exit.sink.split unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.ai:                                            ; preds = %bb.w, %bb.p, %.body, %.body28
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.aj:                                            ; preds = %bb.u
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowNtNtCscpXoUs9mfvj_12os_str_bytes7raw_str8RawOsStrEECsarFSTFZzLuM_11xet_runtime.exit.sink.split: ; preds = %bb.af, %bb.i
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowNtNtCscpXoUs9mfvj_12os_str_bytes7raw_str8RawOsStrEECsarFSTFZzLuM_11xet_runtime.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowNtNtCscpXoUs9mfvj_12os_str_bytes7raw_str8RawOsStrEECsarFSTFZzLuM_11xet_runtime.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowNtNtCscpXoUs9mfvj_12os_str_bytes7raw_str8RawOsStrEECsarFSTFZzLuM_11xet_runtime.exit.sink.split, %bb.ae, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXs0_NtNtCs6SYjS1KFWza_10serde_core3ser5implsNtNtCskKLDkoKarTP_4core3fmt9ArgumentsNtB8_9Serialize9serializeQINtNtCsiWcPrHiWZDL_10serde_json3ser10SerializerNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorEECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef align 8 ptr @_RINvXs1_NtCsiWcPrHiWZDL_10serde_json3serQINtB6_10SerializerNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorENtNtCs6SYjS1KFWza_10serde_core3ser10Serializer11collect_strNtNtCskKLDkoKarTP_4core3fmt9ArgumentsECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXs1_NtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6format6prettyNtB6_6PrettyNtB8_12FormatFields13format_fieldsRNtNtCs94TQx44N27d_12tracing_core4span10AttributesECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 11 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 41
  store i8 1, ptr %i.d, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.e, align 8
  %.sroa.12.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i8 0, ptr %.sroa.12.0..sroa_idx.a, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 33
  store i32 255, ptr %.sroa.12.0..sroa_idx, align 1
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 37
  store i32 255, ptr %.sroa.13.0..sroa_idx, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 42
  store i8 0, ptr %i.f, align 2
  call void @_RNvXs5_NtCs8C3ZpOVqhBL_18tracing_subscriber5fieldRNtNtCs94TQx44N27d_12tracing_core4span10AttributesNtB5_12RecordFields6recordCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) @0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  %i.g = call noundef zeroext i1 @_RNvXs7_NtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6format6prettyNtB5_13PrettyVisitorINtNtBb_5field11VisitOutputINtNtCskKLDkoKarTP_4core6result6ResultuNtNtB1R_3fmt5ErrorEE6finish(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXs1_NtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6format6prettyNtB6_6PrettyNtB8_12FormatFields13format_fieldsRNtNtCs94TQx44N27d_12tracing_core4span6RecordECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 11 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 41
  store i8 1, ptr %i.d, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.e, align 8
  %.sroa.12.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i8 0, ptr %.sroa.12.0..sroa_idx.a, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 33
  store i32 255, ptr %.sroa.12.0..sroa_idx, align 1
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 37
  store i32 255, ptr %.sroa.13.0..sroa_idx, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 42
  store i8 0, ptr %i.f, align 2
  call void @_RNvXs5_NtCs8C3ZpOVqhBL_18tracing_subscriber5fieldRNtNtCs94TQx44N27d_12tracing_core4span6RecordNtB5_12RecordFields6recordCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) @0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  %i.g = call noundef zeroext i1 @_RNvXs7_NtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6format6prettyNtB5_13PrettyVisitorINtNtBb_5field11VisitOutputINtNtCskKLDkoKarTP_4core6result6ResultuNtNtB1R_3fmt5ErrorEE6finish(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCsarFSTFZzLuM_11xet_runtime5utils11config_enumNtB2_10ConfigEnum3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %3, i64 noundef range(i64 0, 576460752303423488) %4) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_lowercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %4, ptr %i.b, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCsarFSTFZzLuM_11xet_runtime5utils11config_enumNtB2_10ConfigEnum7try_set(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  %i.f = alloca [16 x i8], align 8                ; 3 uses
  store ptr %2, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %3, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_lowercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !5, !align !11, !noundef !5 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load i64, ptr %i.j, align 8, !noundef !5 ; 2 uses
  %.idx = shl nuw nsw i64 %i.k, 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !44 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !44, !nonnull !5
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.not.not.not.i.not27 = icmp eq i64 %i.k, 0
  br i1 %.not.not.not.i.not27, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtCsarFSTFZzLuM_11xet_runtime5utils11config_enumNtB1H_10ConfigEnum7try_set0EB1L_.exit, label %.lr.ph

bb.b:                                             ; preds = %.noexc12
  %.not.not.not.i.not = icmp eq ptr %i.t, %i.l
  br i1 %.not.not.not.i.not, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtCsarFSTFZzLuM_11xet_runtime5utils11config_enumNtB1H_10ConfigEnum7try_set0EB1L_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.s = phi ptr [ %i.t, %bb.b ], [ %i.i, %bb.a ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %.val2.i = load ptr, ptr %i.s, align 8, !noalias !45, !nonnull !5, !noundef !5
  %i.u = getelementptr i8, ptr %i.s, i64 8
  %.val3.i = load i64, ptr %i.u, align 8, !noalias !45, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !45
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_lowercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val2.i, i64 noundef %.val3.i)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !45

.noexc:                                           ; preds = %.lr.ph
  %i.v = load i64, ptr %i.m, align 8, !noalias !45, !noundef !5
  %i.w = icmp eq i64 %i.v, %i.o
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.x = load ptr, ptr %i.r, align 8, !noalias !45, !nonnull !5, !noundef !5
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %i.x, ptr nonnull %i.q, i64 %i.o), !noalias !45
  %i.y = icmp eq i32 %bcmp.i.i, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.noexc
  %.sroa.0.0.i.i = phi i1 [ %i.y, %bb.c ], [ false, %.noexc ]
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RNCNvMNtNtCsarFSTFZzLuM_11xet_runtime5utils11config_enumNtB4_10ConfigEnum7try_set0B8_.exit.i unwind label %bb.e, !noalias !45

bb.e:                                             ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.thread unwind label %bb.f, !noalias !45

bb.f:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !45
  unreachable

_RNCNvMNtNtCsarFSTFZzLuM_11xet_runtime5utils11config_enumNtB4_10ConfigEnum7try_set0B8_.exit.i: ; preds = %bb.d
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !45

.noexc12:                                         ; preds = %_RNCNvMNtNtCsarFSTFZzLuM_11xet_runtime5utils11config_enumNtB4_10ConfigEnum7try_set0B8_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !45
  br i1 %.sroa.0.0.i.i, label %bb.g, label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsarFSTFZzLuM_11xet_runtime.exit.i.i: ; preds = %bb.h, %bb.m
  %eh.lpad-body15 = phi { ptr, i32 } [ %i.ag, %bb.m ], [ %i.ac, %bb.h ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %common.resume

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNCNvMNtNtCsarFSTFZzLuM_11xet_runtime5utils11config_enumNtB4_10ConfigEnum7try_set0B8_.exit.i, %.lr.ph, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtCsarFSTFZzLuM_11xet_runtime5utils11config_enumNtB1H_10ConfigEnum7try_set0EB1L_.exit
  %lpad.loopexit.split-lp28 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtCsarFSTFZzLuM_11xet_runtime5utils11config_enumNtB1H_10ConfigEnum7try_set0EB1L_.exit: ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.f, ptr %i.b, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsarFSTFZzLuM_11xet_runtime, ptr %.sroa.43.0..sroa_idx, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.h, ptr %i.ab, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRSReNtB6_5Debug3fmtCsarFSTFZzLuM_11xet_runtime, ptr %.sroa.47.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @1, ptr noundef nonnull %i.b)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsarFSTFZzLuM_11xet_runtime.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %.noexc12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsarFSTFZzLuM_11xet_runtime.exit.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsarFSTFZzLuM_11xet_runtime.exit.i.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsarFSTFZzLuM_11xet_runtime.exit.i: ; preds = %bb.g
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime.exit unwind label %bb.m

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsarFSTFZzLuM_11xet_runtime.exit: ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtCsarFSTFZzLuM_11xet_runtime5utils11config_enumNtB1H_10ConfigEnum7try_set0EB1L_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime.exit19 unwind label %bb.j

bb.j:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsarFSTFZzLuM_11xet_runtime.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

common.resume:                                    ; preds = %.thread, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsarFSTFZzLuM_11xet_runtime.exit.i.i, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.ae, %bb.j ], [ %eh.lpad-body, %.thread ], [ %eh.lpad-body15, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsarFSTFZzLuM_11xet_runtime.exit.i.i ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime.exit19: ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsarFSTFZzLuM_11xet_runtime.exit
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  br label %bb.l

bb.l:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime.exit19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.m:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsarFSTFZzLuM_11xet_runtime.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsarFSTFZzLuM_11xet_runtime.exit.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsarFSTFZzLuM_11xet_runtime.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 -1, ptr %0, align 8
  br label %bb.l

.thread:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.z, %bb.e ], [ %lpad.loopexit.split-lp28, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #22
          to label %common.resume unwind label %bb.n

bb.n:                                             ; preds = %.thread
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable
}
end_hunk_0
