Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff_cli.jiff_cli.28936ee66da4cb41-cgu.15?download=true
begin_hunk_0_@_RINvXNtCs8WPnInWCYsb_6anyhow7contextINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCsaL1QbXo9JQH_3std7process10ExitStatusNtNtNtBD_2io5error5ErrorEINtB5_7ContextB1a_B1Q_E12with_contextNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate8zoneinfo3runs2_0EB3C_:bb.a
bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !57
  store ptr %2, ptr %i.a, align 8, !noalias !57
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsj_NtCsaL1QbXo9JQH_3std7processNtB5_7CommandNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !57
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @26, ptr noundef nonnull %i.a)
          to label %bb.e unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load i32, ptr %i.g, align 4, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.h, ptr %i.i, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %storemerge = phi i32 [ 0, %bb.c ], [ 1, %bb.e ]
  store i32 %storemerge, ptr %0, align 8
  ret void

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !57
  %i.j = call noundef nonnull ptr @_RINvXNtNtCs8WPnInWCYsb_6anyhow7context3extNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorNtB3_8StdError11ext_contextNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli(ptr noundef nonnull %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.k, align 8
  br label %bb.d

bb.f:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.l

bb.g:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3tZ2SXJA1qv_8jiff_cli(ptr nonnull %i.f) #14
          to label %bb.f unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #13
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtCs8WPnInWCYsb_6anyhow7contextINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCsaL1QbXo9JQH_3std7process10ExitStatusNtNtNtBD_2io5error5ErrorEINtB5_7ContextB1a_B1Q_E12with_contextNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate8zoneinfo3runs3_0EB3C_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(200) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = load i32, ptr %1, align 8, !range !45, !noundef !5
  %i.d = trunc nuw i32 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !61
  store ptr %2, ptr %i.a, align 8, !noalias !61
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsj_NtCsaL1QbXo9JQH_3std7processNtB5_7CommandNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !61
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @26, ptr noundef nonnull %i.a)
          to label %bb.e unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load i32, ptr %i.g, align 4, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.h, ptr %i.i, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %storemerge = phi i32 [ 0, %bb.c ], [ 1, %bb.e ]
  store i32 %storemerge, ptr %0, align 8
  ret void

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !61
  %i.j = call noundef nonnull ptr @_RINvXNtNtCs8WPnInWCYsb_6anyhow7context3extNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorNtB3_8StdError11ext_contextNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli(ptr noundef nonnull %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.k, align 8
  br label %bb.d

bb.f:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.l

bb.g:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3tZ2SXJA1qv_8jiff_cli(ptr nonnull %i.f) #14
          to label %bb.f unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #13
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtCs8WPnInWCYsb_6anyhow7contextINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCsaL1QbXo9JQH_3std7process6OutputNtNtNtBD_2io5error5ErrorEINtB5_7ContextB1a_B1L_E12with_contextNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate8zoneinfo3run0EB3x_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(200) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = load i64, ptr %1, align 8, !range !9, !noundef !5
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !65
  store ptr %2, ptr %i.a, align 8, !noalias !65
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsj_NtCsaL1QbXo9JQH_3std7processNtB5_7CommandNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !65
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @26, ptr noundef nonnull %i.a)
          to label %bb.e unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !65
  %i.g = call noundef nonnull ptr @_RINvXNtNtCs8WPnInWCYsb_6anyhow7context3extNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorNtB3_8StdError11ext_contextNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli(ptr noundef nonnull %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.h, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.f:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.i

bb.g:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3tZ2SXJA1qv_8jiff_cli(ptr nonnull %i.f) #14
          to label %bb.f unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #13
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtCs8WPnInWCYsb_6anyhow7contextINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCsaL1QbXo9JQH_3std7process6OutputNtNtNtBD_2io5error5ErrorEINtB5_7ContextB1a_B1L_E7contextReECs3tZ2SXJA1qv_8jiff_cli(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !9, !noundef !5
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  %i.e = tail call noundef nonnull ptr @_RINvXNtNtCs8WPnInWCYsb_6anyhow7context3extNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorNtB3_8StdError11ext_contextReECs3tZ2SXJA1qv_8jiff_cli(ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvXNtCs8WPnInWCYsb_6anyhow7contextINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCsa9sSWSfjDbm_4jiff2tz8timezone8TimeZoneNtNtB1g_5error5ErrorEINtB5_7ContextB1a_B1U_E12with_contextNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate4tzdb3runs7_0EB3C_(i64 noundef range(i64 0, 2) %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = trunc nuw i64 %0 to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %1, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !69
  store ptr %2, ptr %i.a, align 8, !noalias !69
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsq_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !69
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @20, ptr noundef nonnull %i.a)
          to label %bb.d unwind label %bb.e

bb.c:                                             ; preds = %bb.a, %bb.d
  %.sroa.03.0 = phi i64 [ 1, %bb.d ], [ 0, %bb.a ]
  %.sroa.3.0 = phi ptr [ %i.g, %bb.d ], [ %1, %bb.a ]
  %i.e = insertvalue { i64, ptr } poison, i64 %.sroa.03.0, 0
  %i.f = insertvalue { i64, ptr } %i.e, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.f

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !69
  %i.g = call fastcc noundef nonnull ptr @_RINvXNtNtCs8WPnInWCYsb_6anyhow7context3extNtNtCsa9sSWSfjDbm_4jiff5error5ErrorNtB3_8StdError11ext_contextNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli(ptr noundef %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorECs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %bb.f, %bb.e, %bb.g
  resume { ptr, i32 } %i.h

bb.e:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = icmp eq ptr %1, null
  br i1 %i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorECs3tZ2SXJA1qv_8jiff_cli.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = atomicrmw sub ptr %1, i64 1 release, align 8, !noalias !73
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorECs3tZ2SXJA1qv_8jiff_cli.exit

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #15
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorECs3tZ2SXJA1qv_8jiff_cli.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #13
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtCs8WPnInWCYsb_6anyhow7contextINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringNtCsgWT32ugvpwR_6lexopt5ErrorEINtB5_7ContextB1a_B1S_E7contextReECs3tZ2SXJA1qv_8jiff_cli(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %1, align 8, !range !82, !noundef !5
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = call noundef nonnull ptr @_RINvXNtNtCs8WPnInWCYsb_6anyhow7context3extNtCsgWT32ugvpwR_6lexopt5ErrorNtB3_8StdError11ext_contextReECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.d, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtCs8WPnInWCYsb_6anyhow7contextINtNtCs3oUPovFnLWP_4core6result6ResultRNtNtCsaL1QbXo9JQH_3std4path4PathNtB1d_16StripPrefixErrorEINtB5_7ContextB1a_B1H_E12with_contextNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate4tzdb3runs3_0EB3t_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) %1, i64 %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !86
  %i.f = load ptr, ptr %3, align 8, !alias.scope !83, !noalias !88, !nonnull !5, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !83, !noalias !88, !noundef !5
  store ptr %i.f, ptr %i.c, align 8, !noalias !86
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.h, ptr %i.i, align 8, !noalias !86
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !86
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !83, !noalias !88, !nonnull !5, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !83, !noalias !88, !noundef !5
  store ptr %i.k, ptr %i.b, align 8, !noalias !86
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.m, ptr %i.n, align 8, !noalias !86
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !86
  store ptr %i.c, ptr %i.a, align 8, !noalias !86
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1b_NtCsaL1QbXo9JQH_3std4pathNtB6_7DisplayNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !86
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.o, align 8, !noalias !86
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1b_NtCsaL1QbXo9JQH_3std4pathNtB6_7DisplayNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !86
  call void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull @17, ptr noundef nonnull %i.a), !noalias !83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !86
  %i.p = call fastcc noundef nonnull ptr @_RINvXNtNtCs8WPnInWCYsb_6anyhow7context3extNtNtCsaL1QbXo9JQH_3std4path16StripPrefixErrorNtB3_8StdError11ext_contextNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.q = ptrtoint ptr %i.p to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink4 = phi i64 [ %i.q, %bb.b ], [ %2, %bb.a ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink4, ptr %i.r, align 8
  store ptr %1, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvXNtCs8WPnInWCYsb_6anyhow7contextINtNtCs3oUPovFnLWP_4core6result6ResultjNtNtNtBD_2io5error5ErrorEINtB5_7ContextjB1b_E12with_contextNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate4tzdb3runs2_0EB2U_(i64 noundef range(i64 0, 2) %0, ptr noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = trunc nuw i64 %0 to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !89
  store ptr %2, ptr %i.b, align 8, !noalias !89
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %3, ptr %i.e, align 8, !noalias !89
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !89
  store ptr %i.b, ptr %i.a, align 8, !noalias !89
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1b_NtCsaL1QbXo9JQH_3std4pathNtB6_7DisplayNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !89
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @16, ptr noundef nonnull %i.a)
          to label %bb.d unwind label %bb.f

bb.c:                                             ; preds = %bb.a, %bb.d
  %.sroa.02.0 = phi i64 [ 1, %bb.d ], [ 0, %bb.a ]
  %.sroa.3.0.in = phi ptr [ %i.h, %bb.d ], [ %1, %bb.a ]
  %i.f = insertvalue { i64, ptr } poison, i64 %.sroa.02.0, 0
  %i.g = insertvalue { i64, ptr } %i.f, ptr %.sroa.3.0.in, 1
  ret { i64, ptr } %i.g

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !89
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.h = call noundef nonnull ptr @_RINvXNtNtCs8WPnInWCYsb_6anyhow7context3extNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorNtB3_8StdError11ext_contextNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.c

bb.e:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.i

bb.f:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3tZ2SXJA1qv_8jiff_cli(ptr nonnull %1) #14
          to label %bb.e unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #13
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtCs8WPnInWCYsb_6anyhow7contextINtNtCs3oUPovFnLWP_4core6result6ResultmNtNtNtBD_3num5error15TryFromIntErrorEINtB5_7ContextmB1b_E12with_contextNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate4tzdb3runs6_0EB36_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 4)) %0, i64 %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = trunc i64 %1 to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.4.0.extract.shift = lshr i64 %1, 8
  %.sroa.4.0.extract.trunc = trunc i64 %.sroa.4.0.extract.shift to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load i64, ptr %i.e, align 8, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !93
  store i64 %.val, ptr %i.b, align 8, !noalias !93
  %i.f = icmp sgt i64 %.val, -1
  tail call void @llvm.assume(i1 %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !93
  store ptr %i.b, ptr %i.a, align 8, !noalias !93
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !93
  call void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @19, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !93
  %i.g = call noundef nonnull ptr @_RINvXNtNtCs8WPnInWCYsb_6anyhow7context3extNtNtNtCs3oUPovFnLWP_4core3num5error15TryFromIntErrorNtB3_8StdError11ext_contextNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli(i8 noundef %.sroa.4.0.extract.trunc, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.h, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.6.0.extract.shift = lshr i64 %1, 32
  %.sroa.6.0.extract.trunc = trunc nuw i64 %.sroa.6.0.extract.shift to i32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.6.0.extract.trunc, ptr %i.i, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %storemerge = phi i32 [ 0, %bb.c ], [ 1, %bb.b ]
  store i32 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvXNtCs8WPnInWCYsb_6anyhow7contextINtNtCs3oUPovFnLWP_4core6result6ResultuNtB5_5ErrorEINtB5_7ContextuB1b_E12with_contextNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate13windows_zones3runs0_0EB2H_(ptr noundef %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val5 = load i64, ptr %i.f, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !96
  store ptr %.val, ptr %i.b, align 8, !noalias !96
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.val5, ptr %i.g, align 8, !noalias !96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !96
  store ptr %i.b, ptr %i.a, align 8, !noalias !96
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1b_NtCsaL1QbXo9JQH_3std4pathNtB6_7DisplayNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !96
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @10, ptr noundef nonnull %i.a)
          to label %bb.d unwind label %bb.e

bb.c:                                             ; preds = %bb.a, %bb.d
  %.sroa.02.0 = phi ptr [ %i.h, %bb.d ], [ null, %bb.a ]
  ret ptr %.sroa.02.0

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !96
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !96
  %i.h = call noundef nonnull ptr @_RINvXs_NtNtCs8WPnInWCYsb_6anyhow7context3extNtB9_5ErrorNtB5_8StdError11ext_contextNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs8WPnInWCYsb_6anyhow5ErrorECs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %bb.e
  resume { ptr, i32 } %i.i

bb.e:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtCs8WPnInWCYsb_6anyhow5errorNtB7_5ErrorNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs8WPnInWCYsb_6anyhow5ErrorECs3tZ2SXJA1qv_8jiff_cli.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #13
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvXNtCs8WPnInWCYsb_6anyhow7contextINtNtCs3oUPovFnLWP_4core6result6ResultuNtB5_5ErrorEINtB5_7ContextuB1b_E12with_contextNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match3run0EB2H_(ptr noundef %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val5 = load i64, ptr %i.f, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !99
  store ptr %.val, ptr %i.b, align 8, !noalias !99
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.val5, ptr %i.g, align 8, !noalias !99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !99
  store ptr %i.b, ptr %i.a, align 8, !noalias !99
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1b_NtCsaL1QbXo9JQH_3std4pathNtB6_7DisplayNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !99
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @11, ptr noundef nonnull %i.a)
          to label %bb.d unwind label %bb.e

bb.c:                                             ; preds = %bb.a, %bb.d
  %.sroa.02.0 = phi ptr [ %i.h, %bb.d ], [ null, %bb.a ]
  ret ptr %.sroa.02.0

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !99
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !99
  %i.h = call noundef nonnull ptr @_RINvXs_NtNtCs8WPnInWCYsb_6anyhow7context3extNtB9_5ErrorNtB5_8StdError11ext_contextNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs8WPnInWCYsb_6anyhow5ErrorECs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %bb.e
  resume { ptr, i32 } %i.i

bb.e:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtCs8WPnInWCYsb_6anyhow5errorNtB7_5ErrorNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs8WPnInWCYsb_6anyhow5ErrorECs3tZ2SXJA1qv_8jiff_cli.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #13
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvXNtCs8WPnInWCYsb_6anyhow7contextINtNtCs3oUPovFnLWP_4core6result6ResultuNtB5_5ErrorEINtB5_7ContextuB1b_E12with_contextNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate4tzdb3runsb_0EB2H_(ptr noundef %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
end_hunk_0
begin_hunk_1_@_RINvXNtCs8WPnInWCYsb_6anyhow7contextINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtNtBD_2io5error5ErrorEINtB5_7ContextuB1b_E12with_contextNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate4tzdb3runs1_0EB2U_:bb.a

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvXNtCs8WPnInWCYsb_6anyhow7contextINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtNtBD_2io5error5ErrorEINtB5_7ContextuB1b_E12with_contextNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate4tzdb3runs9_0EB2U_(ptr noundef %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5 = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val6 = load i64, ptr %i.e, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !124
  store ptr %.val5, ptr %i.b, align 8, !noalias !124
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.val6, ptr %i.f, align 8, !noalias !124
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !124
  store ptr %2, ptr %i.a, align 8, !noalias !124
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsq_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !124
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.g, align 8, !noalias !124
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1b_NtCsaL1QbXo9JQH_3std4pathNtB6_7DisplayNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !124
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @21, ptr noundef nonnull %i.a)
          to label %bb.d unwind label %bb.f

bb.c:                                             ; preds = %bb.a, %bb.d
  %.sroa.02.0 = phi ptr [ %i.h, %bb.d ], [ null, %bb.a ]
  ret ptr %.sroa.02.0

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !124
  %i.h = call noundef nonnull ptr @_RINvXNtNtCs8WPnInWCYsb_6anyhow7context3extNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorNtB3_8StdError11ext_contextNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.c

bb.e:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.i

bb.f:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3tZ2SXJA1qv_8jiff_cli(ptr nonnull %0) #14
          to label %bb.e unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #13
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvXNtCs8WPnInWCYsb_6anyhow7contextINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtNtBD_2io5error5ErrorEINtB5_7ContextuB1b_E12with_contextNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate4tzdb3runsa_0EB2U_(ptr noundef %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5 = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val6 = load i64, ptr %i.e, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !128
  store ptr %.val5, ptr %i.b, align 8, !noalias !128
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.val6, ptr %i.f, align 8, !noalias !128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !128
  store ptr %i.b, ptr %i.a, align 8, !noalias !128
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1b_NtCsaL1QbXo9JQH_3std4pathNtB6_7DisplayNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !128
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @23, ptr noundef nonnull %i.a)
          to label %bb.d unwind label %bb.f

bb.c:                                             ; preds = %bb.a, %bb.d
  %.sroa.02.0 = phi ptr [ %i.g, %bb.d ], [ null, %bb.a ]
  ret ptr %.sroa.02.0

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !128
  %i.g = call noundef nonnull ptr @_RINvXNtNtCs8WPnInWCYsb_6anyhow7context3extNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorNtB3_8StdError11ext_contextNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.c

bb.e:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.h

bb.f:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3tZ2SXJA1qv_8jiff_cli(ptr nonnull %0) #14
          to label %bb.e unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #13
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvXNtCs8WPnInWCYsb_6anyhow7contextINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtNtBD_2io5error5ErrorEINtB5_7ContextuB1b_E12with_contextNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate8zoneinfo3runs_0EB2U_(ptr noundef %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !131
  store ptr %1, ptr %i.b, align 8, !noalias !131
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %2, ptr %i.d, align 8, !noalias !131
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !131
  store ptr %i.b, ptr %i.a, align 8, !noalias !131
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1b_NtCsaL1QbXo9JQH_3std4pathNtB6_7DisplayNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !131
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @29, ptr noundef nonnull %i.a)
          to label %bb.d unwind label %bb.f

bb.c:                                             ; preds = %bb.a, %bb.d
  %.sroa.02.0 = phi ptr [ %i.e, %bb.d ], [ null, %bb.a ]
  ret ptr %.sroa.02.0

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !131
  %i.e = call noundef nonnull ptr @_RINvXNtNtCs8WPnInWCYsb_6anyhow7context3extNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorNtB3_8StdError11ext_contextNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.c

bb.e:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.f

bb.f:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3tZ2SXJA1qv_8jiff_cli(ptr nonnull %0) #14
          to label %bb.e unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #13
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvXNtCs8WPnInWCYsb_6anyhow7contextINtNtCs3oUPovFnLWP_4core6result6ResultyNtNtNtBD_2io5error5ErrorEINtB5_7ContextyB1b_E12with_contextNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate8zoneinfo3runs0_0EB2U_(i64 noundef range(i64 0, 2) %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = trunc nuw i64 %0 to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val5 = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val6 = load i64, ptr %i.g, align 8, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val7 = load ptr, ptr %i.h, align 8, !nonnull !5, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val8 = load i64, ptr %i.i, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !135
  store ptr %.val5, ptr %i.c, align 8, !noalias !135
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.val6, ptr %i.j, align 8, !noalias !135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !135
  store ptr %.val7, ptr %i.b, align 8, !noalias !135
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.val8, ptr %i.k, align 8, !noalias !135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !135
  store ptr %i.c, ptr %i.a, align 8, !noalias !135
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1b_NtCsaL1QbXo9JQH_3std4pathNtB6_7DisplayNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !135
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.l, align 8, !noalias !135
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1b_NtCsaL1QbXo9JQH_3std4pathNtB6_7DisplayNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !135
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull @27, ptr noundef nonnull %i.a)
          to label %bb.d unwind label %bb.f

bb.c:                                             ; preds = %bb.a, %bb.d
  %.sroa.02.0 = phi i64 [ 1, %bb.d ], [ 0, %bb.a ]
  %.sroa.3.0.in = phi ptr [ %i.o, %bb.d ], [ %1, %bb.a ]
  %i.m = insertvalue { i64, ptr } poison, i64 %.sroa.02.0, 0
  %i.n = insertvalue { i64, ptr } %i.m, ptr %.sroa.3.0.in, 1
  ret { i64, ptr } %i.n

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !135
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.o = call noundef nonnull ptr @_RINvXNtNtCs8WPnInWCYsb_6anyhow7context3extNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorNtB3_8StdError11ext_contextNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.c

bb.e:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.p

bb.f:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3tZ2SXJA1qv_8jiff_cli(ptr nonnull %1) #14
          to label %bb.e unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #13
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RINvXNtNtCs8WPnInWCYsb_6anyhow7context3extNtNtCsa9sSWSfjDbm_4jiff5error5ErrorNtB3_8StdError11ext_contextNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli(ptr noundef %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  store ptr %0, ptr %i.c, align 8
  %i.d = invoke noundef align 8 ptr @_RNvNtCs8WPnInWCYsb_6anyhow7nightly21request_ref_backtrace(ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @5)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c, !prof !138

bb.c:                                             ; preds = %bb.b
  store i64 -1, ptr %i.b, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs2_NtCsaL1QbXo9JQH_3std9backtraceNtB5_9Backtrace7capture(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.e = load ptr, ptr %i.c, align 8, !noundef !5
  %i.f = call noundef nonnull ptr @_RINvMNtCs8WPnInWCYsb_6anyhow5errorNtB5_5Error22construct_from_contextNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsa9sSWSfjDbm_4jiff5error5ErrorECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.b)
  ret ptr %i.f

bb.g:                                             ; preds = %bb.d, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #14
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.k, %bb.g
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #13
  unreachable

.critedge:                                        ; preds = %bb.j, %bb.i, %bb.k
  resume { ptr, i32 } %lpad.thr_comm

bb.i:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !139)
  call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %i.h = load ptr, ptr %i.c, align 8, !alias.scope !145, !noundef !5 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.j = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !146
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #15
          to label %.critedge unwind label %bb.h
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RINvXNtNtCs8WPnInWCYsb_6anyhow7context3extNtNtCsaL1QbXo9JQH_3std4path16StripPrefixErrorNtB3_8StdError11ext_contextNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 3 uses
  %i.d = invoke noundef align 8 ptr @_RNvNtCs8WPnInWCYsb_6anyhow7nightly21request_ref_backtrace(ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @7)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c, !prof !138

bb.c:                                             ; preds = %bb.b
  store i64 -1, ptr %i.c, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs2_NtCsaL1QbXo9JQH_3std9backtraceNtB5_9Backtrace7capture(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.b)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.e = call noundef nonnull ptr @_RINvMNtCs8WPnInWCYsb_6anyhow5errorNtB5_5Error22construct_from_contextNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsaL1QbXo9JQH_3std4path16StripPrefixErrorECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.c)
  ret ptr %i.e

bb.g:                                             ; preds = %bb.d, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #14
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.i:                                             ; preds = %bb.g
  resume { ptr, i32 } %lpad.thr_comm
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXNvNtCs3oUPovFnLWP_4core4hint20select_unpredictableINtB2_11DropOnPanicPNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageENtNtNtB6_3ops4drop4Drop4dropB1e_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXNvNtCs3oUPovFnLWP_4core4hint20select_unpredictableINtB2_11DropOnPanicPTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitEENtNtNtB6_3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCsaL1QbXo9JQH_3std4path4PathNtB6_5Debug3fmtCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !5
  %i.d = tail call noundef zeroext i1 @_RNvXs19_NtCsaL1QbXo9JQH_3std4pathNtB6_4PathNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCsaL1QbXo9JQH_3std4path7PathBufNtB6_5Debug3fmtCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !151, !noundef !5
  %i.b = tail call noundef zeroext i1 @_RNvXsG_NtCsaL1QbXo9JQH_3std4pathNtB5_7PathBufNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRReNtB6_5Debug3fmtCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !151, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !152, !noalias !155, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !152, !noalias !155, !noundef !5
  %i.e = tail call noundef zeroext i1 @_RNvXsh_NtCs3oUPovFnLWP_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !152
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRbNtB6_5Debug3fmtCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.b = tail call noundef zeroext i1 @_RNvXsg_NtCs3oUPovFnLWP_4core3fmtbNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtReNtB6_5Debug3fmtCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !5
  %i.d = tail call noundef zeroext i1 @_RNvXsh_NtCs3oUPovFnLWP_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
end_hunk_1
