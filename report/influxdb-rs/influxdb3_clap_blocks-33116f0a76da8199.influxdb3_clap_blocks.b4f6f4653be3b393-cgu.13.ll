Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_clap_blocks-33116f0a76da8199.influxdb3_clap_blocks.b4f6f4653be3b393-cgu.13?download=true
inline.NumInlined: 705
inline.NumDeleted: 317
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtCs2AWtUsOyxgP_3std2fs14read_to_stringNtNtB4_4path7PathBufECsfxgMthLVlAZ_21influxdb3_clap_blocks:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !4
  invoke void @_RNvNvNtCs2AWtUsOyxgP_3std2fs14read_to_string5inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef align 8 dereferenceable(24) %1) #26
          to label %common.resume unwind label %bb.h

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i = load i64, ptr %1, align 8, !range !8, !alias.scope !9, !noundef !4 ; 2 uses
  %i.e = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.e, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val3.i.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !20, !nonnull !4, !noundef !4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %.val2.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !21
  br label %common.resume

bb.f:                                             ; preds = %bb.c
  %.val.i.i.i.i = load i64, ptr %1, align 8, !range !8, !alias.scope !9, !noundef !4 ; 2 uses
  %i.f = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val1.i.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !20, !nonnull !4, !noundef !4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !24
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

common.resume:                                    ; preds = %bb.b, %bb.d, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.d ], [ %i.d, %bb.e ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit: ; preds = %bb.f, %bb.g
  ret void

bb.h:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs2AWtUsOyxgP_3std2fs14read_to_stringRNtNtB4_4path7PathBufECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !noundef !4
  tail call void @_RNvNvNtCs2AWtUsOyxgP_3std2fs14read_to_string5inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvNtCs2AWtUsOyxgP_3std2io17default_write_fmtNtNtNtNtB4_3sys5stdio4unix6StderrECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr null, ptr %i.b, align 8
  %i.c = invoke noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @4, ptr noundef nonnull %1, ptr noundef nonnull %2)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.h, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.b, align 8, !alias.scope !27, !noundef !4 ; 2 uses
  %i.e = icmp eq ptr %.val.i, null
  br i1 %i.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvNtCs2AWtUsOyxgP_3std2io17default_write_fmt7AdapterNtNtNtNtBI_3sys5stdio4unix6StderrEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr nonnull %.val.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvNtCs2AWtUsOyxgP_3std2io17default_write_fmt7AdapterNtNtNtNtBI_3sys5stdio4unix6StderrEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit unwind label %bb.j

bb.d:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %.not = icmp eq ptr %i.f, null                  ; 2 uses
  br i1 %i.c, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  br i1 %.not, label %bb.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, !prof !3

bb.f:                                             ; preds = %bb.d
  br i1 %.not, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr nonnull %i.f)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit: ; preds = %bb.g, %bb.f, %bb.e
  %.sroa.0.0 = phi ptr [ %i.f, %bb.e ], [ null, %bb.f ], [ null, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %.sroa.0.0

bb.h:                                             ; preds = %bb.e
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #25
          to label %bb.i unwind label %bb.b

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvNtCs2AWtUsOyxgP_3std2io17default_write_fmt7AdapterNtNtNtNtBI_3sys5stdio4unix6StderrEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtCs2AWtUsOyxgP_3std2io19default_read_to_endINtNtNtCs4NRVxsYgnAr_4core2io4util4TakeNtNtB4_2fs4FileEECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 7 uses
  %i.e = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.e)
  %i.f = load i64, ptr %1, align 8, !range !8, !noundef !4 ; 2 uses
  %i.g = trunc nuw i64 %2 to i1                   ; 3 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %3, -1025
  br i1 %i.h, label %_RNCINvNtCs2AWtUsOyxgP_3std2io19default_read_to_endINtNtNtCs4NRVxsYgnAr_4core2io4util4TakeNtNtB6_2fs4FileEE0CsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.thread, label %_RNCINvNtCs2AWtUsOyxgP_3std2io19default_read_to_endINtNtNtCs4NRVxsYgnAr_4core2io4util4TakeNtNtB6_2fs4FileEE0CsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, !prof !3

_RNCINvNtCs2AWtUsOyxgP_3std2io19default_read_to_endINtNtNtCs4NRVxsYgnAr_4core2io4util4TakeNtNtB6_2fs4FileEE0CsfxgMthLVlAZ_21influxdb3_clap_blocks.exit: ; preds = %bb.b
  %i.i = add nuw i64 %3, 1024                     ; 3 uses
  %i.j = and i64 %i.i, 8191                       ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  %i.l = sub i64 %3, %i.j
  %i.m = add i64 %i.l, 9216                       ; 2 uses
  %.not = icmp ult i64 %i.m, %i.i
  %.sroa.5.1.i = select i1 %.not, i64 8192, i64 %i.m
  %.sroa.040.1 = select i1 %i.k, i64 %i.i, i64 %.sroa.5.1.i ; 2 uses
  %i.n = icmp eq i64 %3, 0
  br i1 %i.n, label %bb.c, label %_RNCINvNtCs2AWtUsOyxgP_3std2io19default_read_to_endINtNtNtCs4NRVxsYgnAr_4core2io4util4TakeNtNtB6_2fs4FileEE0CsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.thread

bb.c:                                             ; preds = %bb.a, %_RNCINvNtCs2AWtUsOyxgP_3std2io19default_read_to_endINtNtNtCs4NRVxsYgnAr_4core2io4util4TakeNtNtB6_2fs4FileEE0CsfxgMthLVlAZ_21influxdb3_clap_blocks.exit
  %.sroa.040.0 = phi i64 [ %.sroa.040.1, %_RNCINvNtCs2AWtUsOyxgP_3std2io19default_read_to_endINtNtNtCs4NRVxsYgnAr_4core2io4util4TakeNtNtB6_2fs4FileEE0CsfxgMthLVlAZ_21influxdb3_clap_blocks.exit ], [ 8192, %bb.a ] ; 2 uses
  %i.o = sub nsw i64 %i.f, %i.d
  %i.p = icmp ult i64 %i.o, 32
  br i1 %i.p, label %bb.d, label %_RNCINvNtCs2AWtUsOyxgP_3std2io19default_read_to_endINtNtNtCs4NRVxsYgnAr_4core2io4util4TakeNtNtB6_2fs4FileEE0CsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.thread

_RNCINvNtCs2AWtUsOyxgP_3std2io19default_read_to_endINtNtNtCs4NRVxsYgnAr_4core2io4util4TakeNtNtB6_2fs4FileEE0CsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.thread: ; preds = %._RNCINvNtCs2AWtUsOyxgP_3std2io19default_read_to_endINtNtNtCs4NRVxsYgnAr_4core2io4util4TakeNtNtB6_2fs4FileEE0CsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.thread_crit_edge, %bb.b, %bb.c, %_RNCINvNtCs2AWtUsOyxgP_3std2io19default_read_to_endINtNtNtCs4NRVxsYgnAr_4core2io4util4TakeNtNtB6_2fs4FileEE0CsfxgMthLVlAZ_21influxdb3_clap_blocks.exit
  %.pre = phi i64 [ %.pre.pre, %._RNCINvNtCs2AWtUsOyxgP_3std2io19default_read_to_endINtNtNtCs4NRVxsYgnAr_4core2io4util4TakeNtNtB6_2fs4FileEE0CsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.thread_crit_edge ], [ %i.d, %bb.c ], [ %i.d, %_RNCINvNtCs2AWtUsOyxgP_3std2io19default_read_to_endINtNtNtCs4NRVxsYgnAr_4core2io4util4TakeNtNtB6_2fs4FileEE0CsfxgMthLVlAZ_21influxdb3_clap_blocks.exit ], [ %i.d, %bb.b ]
  %.sroa.040.2 = phi i64 [ %.sroa.040.0, %._RNCINvNtCs2AWtUsOyxgP_3std2io19default_read_to_endINtNtNtCs4NRVxsYgnAr_4core2io4util4TakeNtNtB6_2fs4FileEE0CsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.thread_crit_edge ], [ %.sroa.040.0, %bb.c ], [ %.sroa.040.1, %_RNCINvNtCs2AWtUsOyxgP_3std2io19default_read_to_endINtNtNtCs4NRVxsYgnAr_4core2io4util4TakeNtNtB6_2fs4FileEE0CsfxgMthLVlAZ_21influxdb3_clap_blocks.exit ], [ 8192, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  br label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.v = tail call fastcc { i64, ptr } @_RINvNvNtCs2AWtUsOyxgP_3std2io19default_read_to_end16small_probe_readINtNtNtCs4NRVxsYgnAr_4core2io4util4TakeNtNtB6_2fs4FileEECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) ; 2 uses
  %i.w = extractvalue { i64, ptr } %i.v, 0
  %i.x = extractvalue { i64, ptr } %i.v, 1        ; 2 uses
  %i.y = trunc nuw i64 %i.w to i1
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = ptrtoint ptr %i.x to i64
  br label %bb.ac

bb.f:                                             ; preds = %bb.d
  %i.aa = icmp eq ptr %i.x, null
  br i1 %i.aa, label %bb.ac, label %._RNCINvNtCs2AWtUsOyxgP_3std2io19default_read_to_endINtNtNtCs4NRVxsYgnAr_4core2io4util4TakeNtNtB6_2fs4FileEE0CsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.thread_crit_edge

._RNCINvNtCs2AWtUsOyxgP_3std2io19default_read_to_endINtNtNtCs4NRVxsYgnAr_4core2io4util4TakeNtNtB6_2fs4FileEE0CsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.thread_crit_edge: ; preds = %bb.f
  %.pre.pre = load i64, ptr %i.c, align 8
  br label %_RNCINvNtCs2AWtUsOyxgP_3std2io19default_read_to_endINtNtNtCs4NRVxsYgnAr_4core2io4util4TakeNtNtB6_2fs4FileEE0CsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.thread

bb.g:                                             ; preds = %bb.y, %_RNCINvNtCs2AWtUsOyxgP_3std2io19default_read_to_endINtNtNtCs4NRVxsYgnAr_4core2io4util4TakeNtNtB6_2fs4FileEE0CsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.thread
  %i.ab = phi i64 [ %.pre, %_RNCINvNtCs2AWtUsOyxgP_3std2io19default_read_to_endINtNtNtCs4NRVxsYgnAr_4core2io4util4TakeNtNtB6_2fs4FileEE0CsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.thread ], [ %i.cr, %bb.y ] ; 3 uses
  %.sroa.040.3 = phi i64 [ %.sroa.040.2, %_RNCINvNtCs2AWtUsOyxgP_3std2io19default_read_to_endINtNtNtCs4NRVxsYgnAr_4core2io4util4TakeNtNtB6_2fs4FileEE0CsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.thread ], [ %.sroa.040.4, %bb.y ] ; 6 uses
  %i.ac = icmp sgt i64 %i.ab, -1
  call void @llvm.assume(i1 %i.ac)
  %i.ad = load i64, ptr %1, align 8, !range !8, !noundef !4 ; 3 uses
  %i.ae = icmp eq i64 %i.ab, %i.ad
  %i.af = icmp eq i64 %i.ad, %i.f
  %or.cond52 = and i1 %i.ae, %i.af
  br i1 %or.cond52, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge111, %bb.g
  %i.ag = phi i64 [ %.pre112, %._crit_edge111 ], [ %i.ad, %bb.g ] ; 5 uses
  %i.ah = phi i64 [ %.pre110, %._crit_edge111 ], [ %i.ab, %bb.g ] ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, -1
  call void @llvm.assume(i1 %i.ai)
  %i.aj = icmp eq i64 %i.ah, %i.ag
  %.pre113 = load ptr, ptr %i.q, align 8          ; 2 uses
  br i1 %i.aj, label %bb.m, label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.ak = call fastcc { i64, ptr } @_RINvNvNtCs2AWtUsOyxgP_3std2io19default_read_to_end16small_probe_readINtNtNtCs4NRVxsYgnAr_4core2io4util4TakeNtNtB6_2fs4FileEECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) ; 2 uses
  %i.al = extractvalue { i64, ptr } %i.ak, 0
  %i.am = extractvalue { i64, ptr } %i.ak, 1      ; 2 uses
  %i.an = trunc nuw i64 %i.al to i1
  br i1 %i.an, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ao = ptrtoint ptr %i.am to i64
  br label %bb.ac

bb.k:                                             ; preds = %bb.i
  %i.ap = icmp eq ptr %i.am, null
  %.pre110 = load i64, ptr %i.c, align 8          ; 3 uses
  br i1 %i.ap, label %bb.l, label %._crit_edge111

._crit_edge111:                                   ; preds = %bb.k
  %.pre112 = load i64, ptr %1, align 8, !range !8
  br label %bb.h

bb.l:                                             ; preds = %bb.k
  %i.aq = icmp sgt i64 %.pre110, -1
  call void @llvm.assume(i1 %i.aq)
  %i.ar = sub nsw i64 %.pre110, %i.d
  br label %bb.ac

bb.m:                                             ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !30)
  call void @llvm.experimental.noalias.scope.decl(metadata !33)
  %i.as = add nuw i64 %i.ag, 32
  %i.at = shl nuw i64 %i.ag, 1
  %.sroa.0.0.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.as, i64 %i.at) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !36
  call fastcc void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.ag, ptr %.pre113, i64 noundef %.sroa.0.0.i.i.i, i64 noundef 1, i64 noundef 1), !noalias !36
  %i.au = load i64, ptr %i.a, align 8, !range !37, !noalias !36, !noundef !4
  %i.av = trunc nuw i64 %i.au to i1
  br i1 %i.av, label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.thread

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.thread: ; preds = %bb.m
  %i.aw = load ptr, ptr %i.r, align 8, !noalias !36, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !36
  store ptr %i.aw, ptr %i.q, align 8, !alias.scope !36
  %i.ax = icmp sgt i64 %.sroa.0.0.i.i.i, -1
  call void @llvm.assume(i1 %i.ax)
  store i64 %.sroa.0.0.i.i.i, ptr %1, align 8, !alias.scope !36
  %.pre114 = load i64, ptr %i.c, align 8
  br label %bb.n

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !36
  br label %bb.ac

bb.n:                                             ; preds = %bb.h, %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.thread
  %i.ay = phi i64 [ %i.ag, %bb.h ], [ %.sroa.0.0.i.i.i, %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.thread ]
  %i.az = phi i64 [ %i.ah, %bb.h ], [ %.pre114, %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.thread ] ; 2 uses
  %i.ba = phi ptr [ %.pre113, %bb.h ], [ %i.aw, %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.thread ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.az
  %i.bc = sub i64 %i.ay, %i.az                    ; 2 uses
  %.sroa.0.0.i55 = call noundef i64 @llvm.umin.i64(i64 %.sroa.040.3, i64 %i.bc) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.bb, ptr %i.b, align 8
  store i64 %.sroa.0.0.i55, ptr %i.s, align 8
  store i64 0, ptr %i.t, align 8
  store i8 0, ptr %i.u, align 8
  %i.bd = call noundef ptr @_RNvXsd_NtCs2AWtUsOyxgP_3std2ioINtNtNtCs4NRVxsYgnAr_4core2io4util4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b) ; 2 uses
  %.not50102 = icmp eq ptr %i.bd, null
  br i1 %.not50102, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit
  %i.be = phi ptr [ %i.ci, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit ], [ %i.bd, %bb.n ] ; 6 uses
  %i.bf = ptrtoint ptr %i.be to i64               ; 5 uses
  %i.bg = and i64 %i.bf, 3
  switch i64 %i.bg, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %bb.o
    i64 0, label %.split88
    i64 1, label %.split87
  ], !prof !38

default.unreachable:                              ; preds = %.lr.ph
  unreachable

.split:                                           ; preds = %.lr.ph
  %.mask = and i64 %i.bf, -4294967296
  %i.bh = icmp eq i64 %.mask, 17179869184
  br i1 %i.bh, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, label %bb.u

.split88:                                         ; preds = %.lr.ph
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bj = load i8, ptr %i.bi, align 8, !range !39, !noundef !4
  %i.bk = icmp eq i8 %i.bj, 35
  br i1 %i.bk, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, label %bb.u

.split87:                                         ; preds = %.lr.ph
  %i.bl = getelementptr i8, ptr %i.be, i64 -1     ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bl) ]
  %i.bm = getelementptr i8, ptr %i.be, i64 15
  %i.bn = load i8, ptr %i.bm, align 8, !range !39, !noundef !4
  %i.bo = icmp eq i8 %i.bn, 35
  br i1 %i.bo, label %bb.q, label %bb.u

bb.o:                                             ; preds = %.lr.ph
  %i.bp = lshr i64 %i.bf, 32
  %i.bq = icmp ult ptr %i.be, inttoptr (i64 180388626432 to ptr) ; 2 uses
  %switch.idx.cast.i.i = trunc i64 %i.bp to i8
  %spec.select.i.i = select i1 %i.bq, i8 %switch.idx.cast.i.i, i8 -1 ; 2 uses
  %i.br = icmp ne i8 %spec.select.i.i, -1
  call void @llvm.assume(i1 %i.br)
  %i.bs = icmp eq i8 %spec.select.i.i, 35
  br i1 %i.bs, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.bt = and i64 %i.bf, 1095216660480
  %i.bu = icmp ne i64 %i.bt, 1095216660480
  call void @llvm.assume(i1 %i.bq)
  call void @llvm.assume(i1 %i.bu)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

bb.q:                                             ; preds = %.split87
  %.val.i.i.i.i.i = load ptr, ptr %i.bl, align 8  ; 5 uses
  %i.bv = getelementptr i8, ptr %i.be, i64 7
  %.val1.i.i.i.i.i = load ptr, ptr %i.bv, align 8, !nonnull !4, !align !40, !noundef !4 ; 5 uses
  %i.bw = load ptr, ptr %.val1.i.i.i.i.i, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  invoke void %i.bw(ptr noundef nonnull %.val.i.i.i.i.i)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bx = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !range !8, !invariant.load !4 ; 2 uses
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i.i.i, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i: ; preds = %bb.s
  %i.ca = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !range !41, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef %i.by, i64 noundef range(i64 1, -9223372036854775807) %i.cb) #27
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.cc = landingpad { ptr, i32 }
          cleanup
  %i.cd = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !range !8, !invariant.load !4 ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %.body, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i: ; preds = %bb.t
  %i.cg = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16
  %i.ch = load i64, ptr %i.cg, align 8, !range !41, !invariant.load !4
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef %i.ce, i64 noundef range(i64 1, -9223372036854775807) %i.ch) #27
  br label %.body

.body:                                            ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i, %bb.t
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bl, i64 noundef 24, i64 noundef 8) #27
  resume { ptr, i32 } %i.cc

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i.i.i: ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i, %bb.s
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bl, i64 noundef 24, i64 noundef 8) #27
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit: ; preds = %.split, %.split88, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i.i.i, %bb.p
  %i.ci = call noundef ptr @_RNvXsd_NtCs2AWtUsOyxgP_3std2ioINtNtNtCs4NRVxsYgnAr_4core2io4util4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b) ; 2 uses
  %.not50 = icmp eq ptr %i.ci, null
  br i1 %.not50, label %._crit_edge, label %.lr.ph

bb.u:                                             ; preds = %bb.o, %.split, %.split87, %.split88
  %i.cj = load i64, ptr %i.t, align 8, !noundef !4
  %i.ck = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %i.cl = icmp sgt i64 %i.ck, -1
  call void @llvm.assume(i1 %i.cl)
  %i.cm = add i64 %i.ck, %i.cj
  store i64 %i.cm, ptr %i.c, align 8
  br label %bb.x

._crit_edge:                                      ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, %bb.n
  %i.cn = load i64, ptr %i.t, align 8, !noundef !4 ; 3 uses
  %i.co = load i8, ptr %i.u, align 8, !range !42, !noundef !4
  %i.cp = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %i.cq = icmp sgt i64 %i.cp, -1
  call void @llvm.assume(i1 %i.cq)
  %i.cr = add i64 %i.cp, %i.cn                    ; 3 uses
  store i64 %i.cr, ptr %i.c, align 8
  %i.cs = icmp eq i64 %i.cn, 0
  br i1 %i.cs, label %bb.v, label %bb.w

bb.v:                                             ; preds = %._crit_edge
  %i.ct = sub nsw i64 %i.cr, %i.d
  br label %bb.x

bb.w:                                             ; preds = %._crit_edge
  %i.cu = trunc nuw i8 %i.co to i1
  %.not53 = xor i1 %i.cu, true
  %brmerge = select i1 %i.g, i1 true, i1 %.not53
  %.sroa.040.3.mux = select i1 %i.g, i64 %.sroa.040.3, i64 -1
  br i1 %brmerge, label %bb.y, label %bb.z

bb.x:                                             ; preds = %bb.v, %bb.u
  %.sroa.8.0 = phi i64 [ %i.bf, %bb.u ], [ %i.ct, %bb.v ]
  %.sroa.05.0 = phi i64 [ 1, %bb.u ], [ 0, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.y:                                             ; preds = %bb.w, %bb.ab, %bb.aa, %bb.z
  %.sroa.040.4 = phi i64 [ -1, %bb.ab ], [ %i.cx, %bb.aa ], [ %.sroa.040.3, %bb.z ], [ %.sroa.040.3.mux, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.z:                                             ; preds = %bb.w
  %i.cv = icmp uge i64 %i.bc, %.sroa.040.3
  %i.cw = icmp eq i64 %i.cn, %.sroa.0.0.i55
  %or.cond2 = and i1 %i.cv, %i.cw
  br i1 %or.cond2, label %bb.aa, label %bb.y

bb.aa:                                            ; preds = %bb.z
  %i.cx = shl nuw i64 %.sroa.040.3, 1
  %i.cy = icmp slt i64 %.sroa.040.3, 0
  br i1 %i.cy, label %bb.ab, label %bb.y, !prof !3

bb.ab:                                            ; preds = %bb.aa
  br label %bb.y

bb.ac:                                            ; preds = %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, %bb.f, %bb.j, %bb.l, %bb.e, %bb.x
  %.sroa.8.1 = phi i64 [ %i.z, %bb.e ], [ %.sroa.8.0, %bb.x ], [ %i.ao, %bb.j ], [ %i.ar, %bb.l ], [ 0, %bb.f ], [ 163208757251, %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit ]
  %.sroa.05.1 = phi i64 [ 1, %bb.e ], [ %.sroa.05.0, %bb.x ], [ 1, %bb.j ], [ 0, %bb.l ], [ 0, %bb.f ], [ 1, %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit ]
  %i.cz = inttoptr i64 %.sroa.8.1 to ptr
  %i.da = insertvalue { i64, ptr } poison, i64 %.sroa.05.1, 0
  %i.db = insertvalue { i64, ptr } %i.da, ptr %i.cz, 1
  ret { i64, ptr } %i.db
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs2AWtUsOyxgP_3std3env3varReECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvNtCs2AWtUsOyxgP_3std3env4__var(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs2AWtUsOyxgP_3std3env6var_osRNtNtNtCsbyItyepKEh3_12clap_builder7builder6os_str5OsStrECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
end_hunk_0
begin_hunk_1_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCseCDlJsl44RV_5tokio7runtime8blocking8schedule16BlockingScheduleECsfxgMthLVlAZ_21influxdb3_clap_blocks:bb.a

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDG0_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTRL1_INtNtNtCseCDlJsl44RV_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBQ_6marker4SendNtB2F_4SyncEL_E9drop_slowB1B_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime4task24TaskHarnessScheduleHooksECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit unwind label %bb.k

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit: ; preds = %bb.d, %bb.b, %bb.c, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1300)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1303)
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !1306, !noundef !4 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime4task24TaskHarnessScheduleHooksECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit3, label %bb.i

bb.i:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit
  %i.s = atomicrmw sub ptr %i.q, i64 1 release, align 8, !noalias !1307
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.j, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime4task24TaskHarnessScheduleHooksECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit3

bb.j:                                             ; preds = %bb.i
  fence acquire
  tail call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDG0_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTRL1_INtNtNtCseCDlJsl44RV_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBQ_6marker4SendNtB2F_4SyncEL_E9drop_slowB1B_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.p)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime4task24TaskHarnessScheduleHooksECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit3

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime4task24TaskHarnessScheduleHooksECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit3: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, %bb.i, %bb.j
  ret void

bb.k:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime4task24TaskHarnessScheduleHooksECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit: ; preds = %bb.g, %bb.f, %bb.h
  resume { ptr, i32 } %i.j
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtCseCDlJsl44RV_5tokio4task5spawn5spawnNCNvMs5_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtBP_21AwsCredentialReloader24spawn_background_updates0EBR_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(264) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [264 x i8], align 8               ; 4 uses
  %i.c = alloca [280 x i8], align 8               ; 6 uses
  %i.d = alloca [280 x i8], align 8               ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [280 x i8], align 8               ; 8 uses
  %i.g = alloca [1 x i8], align 1                 ; 3 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1312
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.i = atomicrmw add ptr @_RNvNvMs_NtNtNtCseCDlJsl44RV_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !1312 ; 2 uses
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %i.i, ptr %i.h, align 8, !noalias !1312
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1312
  store ptr %i.h, ptr %i.f, align 8, !noalias !1312
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.a, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !1312
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(264) %0, i64 264, i1 false), !noalias !1316
  %i.j = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCseCDlJsl44RV_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 11 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8, !range !1317, !noalias !1318, !noundef !4
  switch i8 %i.l, label %default.unreachable [
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 2, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtNtCseCDlJsl44RV_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7current12with_currentNCINvNtNtB10_4task5spawn11spawn_innerNCNvMs5_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB37_21AwsCredentialReloader24spawn_background_updates0E0INtNtNtBY_4task4join10JoinHandlezEE0INtNtCs4NRVxsYgnAr_4core6option6OptionB4U_EEB39_.exit.thread.i
  ], !prof !1321

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %i.j, ptr noundef nonnull @_RINvNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native5eager7destroyNtNtNtCseCDlJsl44RV_5tokio7runtime7context7ContextECsfxgMthLVlAZ_21influxdb3_clap_blocks)
          to label %.noexc.i.i unwind label %bb.m, !noalias !1318

.noexc.i.i:                                       ; preds = %bb.d
  store i8 1, ptr %i.k, align 8, !noalias !1318
  br label %bb.e

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtNtCseCDlJsl44RV_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7current12with_currentNCINvNtNtB10_4task5spawn11spawn_innerNCNvMs5_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB37_21AwsCredentialReloader24spawn_background_updates0E0INtNtNtBY_4task4join10JoinHandlezEE0INtNtCs4NRVxsYgnAr_4core6option6OptionB4U_EEB39_.exit.thread.i: ; preds = %bb.c
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMs5_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtBJ_21AwsCredentialReloader24spawn_background_updates0EBL_(ptr noundef nonnull align 8 %.sroa.6.0..sroa_idx.i), !noalias !1312
  br label %bb.o

bb.e:                                             ; preds = %.noexc.i.i, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1318
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.d, ptr noundef nonnull align 8 dereferenceable(280) %i.f, i64 280, i1 false), !noalias !1312
  %i.m = load i64, ptr %i.j, align 8, !noalias !1322, !noundef !4 ; 2 uses
  %i.n = icmp ult i64 %i.m, 9223372036854775807
  br i1 %i.n, label %bb.h, label %bb.f, !prof !1325

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #25
          to label %.noexc.i.i.i unwind label %bb.l, !noalias !1322

.noexc.i.i.i:                                     ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.j, %bb.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load i64, ptr %i.j, align 8, !noalias !1322, !noundef !4
  %i.q = add i64 %i.p, -1
  store i64 %i.q, ptr %i.j, align 8, !noalias !1322
  br label %.body.i.i

bb.h:                                             ; preds = %bb.e
  %i.r = add nuw nsw i64 %i.m, 1
  store i64 %i.r, ptr %i.j, align 8, !noalias !1322
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !range !1326, !noalias !1322, !noundef !4
  %.not.i.i.i = icmp eq i64 %i.t, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1322
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.c, ptr noundef nonnull align 8 dereferenceable(280) %i.f, i64 280, i1 false), !noalias !1312
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.010.0.copyload.i.i.i = load ptr, ptr %i.c, align 8, !noalias !1322, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1327
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.b, ptr noundef nonnull align 8 dereferenceable(264) %.sroa.6.0..sroa_idx.i, i64 264, i1 false), !noalias !1312
  %i.u = load i64, ptr %.sroa.010.0.copyload.i.i.i, align 8, !range !1331, !noalias !1327, !noundef !4
  %i.v = invoke noundef nonnull ptr @_RINvMs1_NtNtCseCDlJsl44RV_5tokio7runtime9schedulerNtB6_6Handle5spawnNCNvMs5_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB1c_21AwsCredentialReloader24spawn_background_updates0EB1e_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.s, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(264) %i.b, i64 noundef %i.u)
          to label %_RINvNtNtCseCDlJsl44RV_5tokio4task5spawn11spawn_innerNCNvMs5_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtBW_21AwsCredentialReloader24spawn_background_updates0EBY_.exit unwind label %bb.g, !noalias !1322

bb.j:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMs5_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtBJ_21AwsCredentialReloader24spawn_background_updates0EBL_(ptr noundef nonnull align 8 %i.w)
          to label %.thread.i unwind label %bb.g, !noalias !1322

.thread.i:                                        ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1322
  %i.x = load i64, ptr %i.j, align 8, !noalias !1322, !noundef !4
  %i.y = add i64 %i.x, -1
  store i64 %i.y, ptr %i.j, align 8, !noalias !1322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1318
  br label %bb.o

bb.k:                                             ; preds = %bb.l
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !1318
  unreachable

bb.l:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMs5_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtBJ_21AwsCredentialReloader24spawn_background_updates0EBL_(ptr noundef nonnull align 8 %i.ab)
          to label %.body.i.i unwind label %bb.k, !noalias !1318

.body.i.i:                                        ; preds = %bb.m, %bb.l, %bb.g
  %eh.lpad-body3.i.i = phi { ptr, i32 } [ %i.aa, %bb.l ], [ %i.o, %bb.g ], [ %i.ac, %bb.m ]
  resume { ptr, i32 } %eh.lpad-body3.i.i

bb.m:                                             ; preds = %bb.d
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMs5_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtBJ_21AwsCredentialReloader24spawn_background_updates0EBL_(ptr noundef nonnull align 8 %.sroa.6.0..sroa_idx.i)
          to label %.body.i.i unwind label %bb.n, !noalias !1312

bb.n:                                             ; preds = %bb.m
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !1312
  unreachable

bb.o:                                             ; preds = %.thread.i, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtNtCseCDlJsl44RV_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7current12with_currentNCINvNtNtB10_4task5spawn11spawn_innerNCNvMs5_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB37_21AwsCredentialReloader24spawn_background_updates0E0INtNtNtBY_4task4join10JoinHandlezEE0INtNtCs4NRVxsYgnAr_4core6option6OptionB4U_EEB39_.exit.thread.i
  %.sroa.5.0.i = phi i8 [ 1, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtNtCseCDlJsl44RV_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7current12with_currentNCINvNtNtB10_4task5spawn11spawn_innerNCNvMs5_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB37_21AwsCredentialReloader24spawn_background_updates0E0INtNtNtBY_4task4join10JoinHandlezEE0INtNtCs4NRVxsYgnAr_4core6option6OptionB4U_EEB39_.exit.thread.i ], [ 0, %.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1312
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1312
  store i8 %.sroa.5.0.i, ptr %i.g, align 1, !noalias !1312
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1312
  store ptr %i.g, ptr %i.e, align 8, !noalias !1312
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs3_NtNtCseCDlJsl44RV_5tokio7runtime6handleNtB5_15TryCurrentErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.412.0..sroa_idx.i, align 8, !noalias !1312
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @9, ptr noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #25, !noalias !1332
  unreachable

_RINvNtNtCseCDlJsl44RV_5tokio4task5spawn11spawn_innerNCNvMs5_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtBW_21AwsCredentialReloader24spawn_background_updates0EBY_.exit: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1327
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1322
  %i.ae = load i64, ptr %i.j, align 8, !noalias !1322, !noundef !4
  %i.af = add i64 %i.ae, -1
  store i64 %i.af, ptr %i.j, align 8, !noalias !1322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1312
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1312
  ret ptr %i.v
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable14driftsort_mainNtNtCs1LivM9IBWqb_12object_store4path4PathNvYBZ_NtNtB8_3cmp10PartialOrd2ltINtNtCscdodAO9FK5_5alloc3vec3VecBZ_EECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias noundef nonnull %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [4096 x i8], align 8              ; 3 uses
  %i.c = lshr i64 %1, 1
  %i.d = sub nsw i64 %1, %i.c
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 333333)
  %.sroa.0.0.i8 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 %i.d) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = icmp ugt i64 %.sroa.0.0.i8, 170          ; 3 uses
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @_RNvXs8_NtCscdodAO9FK5_5alloc5sliceINtNtB7_3vec3VecNtNtCs1LivM9IBWqb_12object_store4path4PathEINtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable8BufGuardBM_E13with_capacityCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.0.0.i8)
  %i.f = invoke { ptr, i64 } @_RNvXs8_NtCscdodAO9FK5_5alloc5sliceINtNtB7_3vec3VecNtNtCs1LivM9IBWqb_12object_store4path4PathEINtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable8BufGuardBM_E19as_uninit_slice_mutCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.d unwind label %.thread    ; 2 uses

bb.c:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.e, label %bb.l, label %common.resume

.thread:                                          ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.i = extractvalue { ptr, i64 } %i.f, 1
  %i.j = extractvalue { ptr, i64 } %i.f, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.sroa.4.0 = phi i64 [ 170, %bb.a ], [ %i.i, %bb.d ]
  %.pn = phi ptr [ %i.b, %bb.a ], [ %i.j, %bb.d ]
  %i.k = icmp samesign ult i64 %1, 65
  invoke fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortNtNtCs1LivM9IBWqb_12object_store4path4PathNvYBW_NtNtBa_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %.pn, i64 noundef %.sroa.4.0, i1 noundef zeroext %i.k, ptr noalias noundef nonnull %2)
          to label %bb.f unwind label %bb.c

bb.f:                                             ; preds = %bb.e
  br i1 %i.e, label %bb.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs1LivM9IBWqb_12object_store4path4PathEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs1LivM9IBWqb_12object_store4path4PathEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit: ; preds = %bb.k, %bb.j, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs1LivM9IBWqb_12object_store4path4PathENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i = load i64, ptr %i.a, align 8, !range !8, !alias.scope !1333, !noundef !4 ; 2 uses
  %i.m = icmp eq i64 %.val2.i, 0
  br i1 %i.m, label %common.resume, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val3.i = load ptr, ptr %i.n, align 8, !alias.scope !1338, !nonnull !4, !noundef !4
  %i.o = mul nuw i64 %.val2.i, 24
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) 8) #27, !noalias !1339
  br label %common.resume

bb.j:                                             ; preds = %bb.g
  %.val.i = load i64, ptr %i.a, align 8, !range !8, !alias.scope !1333, !noundef !4 ; 2 uses
  %i.p = icmp eq i64 %.val.i, 0
  br i1 %i.p, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs1LivM9IBWqb_12object_store4path4PathEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val1.i = load ptr, ptr %i.q, align 8, !alias.scope !1338, !nonnull !4, !noundef !4
  %i.r = mul nuw i64 %.val.i, 24
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #27, !noalias !1342
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs1LivM9IBWqb_12object_store4path4PathEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

common.resume:                                    ; preds = %bb.c, %bb.l, %bb.h, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.h ], [ %i.l, %bb.i ], [ %i.s, %bb.l ], [ %i.g, %bb.c ]
  resume { ptr, i32 } %common.resume.op

bb.l:                                             ; preds = %.thread, %bb.c
  %i.s = phi { ptr, i32 } [ %i.h, %.thread ], [ %i.g, %bb.c ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs1LivM9IBWqb_12object_store4path4PathEECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef align 8 dereferenceable(24) %i.a) #26
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native5eager7destroyNtNtNtCseCDlJsl44RV_5tokio7runtime7context7ContextECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noundef initializes((72, 73)) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 2, ptr %i.a, align 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1345)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1351)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1354)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1357)
  %i.c = load i64, ptr %i.b, align 8, !range !1326, !alias.scope !1360, !noundef !4 ; 2 uses
  %i.d = icmp eq i64 %i.c, 2
  br i1 %i.d, label %_RINvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtNtCseCDlJsl44RV_5tokio7runtime7context7ContextE0ECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1361)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1364)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1367)
  %i.g = load ptr, ptr %i.e, align 8, !alias.scope !1370, !nonnull !4, !noundef !4
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !1370
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.d, label %_RINvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtNtCseCDlJsl44RV_5tokio7runtime7context7ContextE0ECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_RINvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtNtCseCDlJsl44RV_5tokio7runtime7context7ContextE0ECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit unwind label %bb.g

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1371)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1374)
  %i.j = load ptr, ptr %i.e, align 8, !alias.scope !1377, !nonnull !4, !noundef !4
  %i.k = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !1377
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.f, label %_RINvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtNtCseCDlJsl44RV_5tokio7runtime7context7ContextE0ECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBP_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_RINvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtNtCseCDlJsl44RV_5tokio7runtime7context7ContextE0ECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke fastcc void @_RNvXNvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNtB2_15DtorUnwindGuardNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop()
          to label %.noexc2.i unwind label %bb.h

.noexc2.i:                                        ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtNtCseCDlJsl44RV_5tokio7runtime7context7ContextE0ECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortNtNtCs1LivM9IBWqb_12object_store4path4PathNvYBW_NtNtBa_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i1 noundef zeroext %4, ptr noalias noundef nonnull %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i92 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i97 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cm, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ck, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB13_NtNtBa_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit
  %.sroa.021.0 = phi i8 [ %i.bd, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB13_NtNtBa_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB13_NtNtBa_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph63, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1378)
  %.not.i33 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB12_NtNtB8_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.thread95, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB12_NtNtB8_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.thread, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB12_NtNtB8_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs1LivM9IBWqb_12object_store4path4Path7reverseCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr i8, ptr %i.n, i64 32
  %.val14.i = load ptr, ptr %i.p, align 8, !alias.scope !1378, !noalias !1381, !nonnull !4, !noundef !4 ; 3 uses
  %i.q = getelementptr i8, ptr %i.n, i64 40
  %.val15.i = load i64, ptr %i.q, align 8, !alias.scope !1378, !noalias !1381, !noundef !4 ; 3 uses
  %i.r = getelementptr i8, ptr %i.n, i64 8
  %.val16.i = load ptr, ptr %i.r, align 8, !alias.scope !1378, !noalias !1381, !nonnull !4, !noundef !4
  %i.s = getelementptr i8, ptr %i.n, i64 16
  %.val17.i = load i64, ptr %i.s, align 8, !alias.scope !1378, !noalias !1381, !noundef !4
  %i.t = tail call noundef range(i8 -2, 2) i8 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core5slice3cmphNtB5_15SlicePartialOrd15partial_compareCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val14.i, i64 noundef %.val15.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val16.i, i64 noundef %.val17.i), !noalias !1384 ; 2 uses
  %.not.i.i41 = icmp eq i8 %i.t, -2
  %i.u = icmp sgt i8 %i.t, -1
  %.sroa.0.0.i.i42.not108 = or i1 %.not.i.i41, %i.u ; 2 uses
  %.not70 = icmp eq i64 %i.m, 2                   ; 2 uses
  br i1 %.sroa.0.0.i.i42.not108, label %.preheader51, label %.preheader

.preheader51:                                     ; preds = %bb.k
  br i1 %.not70, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB12_NtNtB8_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not70, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB12_NtNtB8_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.thread95, label %.lr.ph57

.lr.ph:                                           ; preds = %.preheader51, %bb.l
  %.val13.i = phi i64 [ %.val11.i, %bb.l ], [ %.val15.i, %.preheader51 ]
  %.val12.i = phi ptr [ %.val10.i, %bb.l ], [ %.val14.i, %.preheader51 ]
  %.sroa.01.0.i.i53 = phi i64 [ %i.aa, %bb.l ], [ 2, %.preheader51 ] ; 3 uses
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.sroa.01.0.i.i53 ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %.val10.i = load ptr, ptr %i.w, align 8, !alias.scope !1378, !noalias !1381, !nonnull !4, !noundef !4 ; 2 uses
  %i.x = getelementptr i8, ptr %i.v, i64 16
  %.val11.i = load i64, ptr %i.x, align 8, !alias.scope !1378, !noalias !1381, !noundef !4 ; 2 uses
  %i.y = tail call noundef range(i8 -2, 2) i8 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core5slice3cmphNtB5_15SlicePartialOrd15partial_compareCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val10.i, i64 noundef %.val11.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val12.i, i64 noundef %.val13.i), !noalias !1384 ; 2 uses
  %.not.i.i39 = icmp ne i8 %i.y, -2
  %i.z = icmp slt i8 %i.y, 0
  %.sroa.0.0.i.i40 = and i1 %.not.i.i39, %i.z
  br i1 %.sroa.0.0.i.i40, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB12_NtNtB8_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.aa = add nuw i64 %.sroa.01.0.i.i53, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.aa, %i.m
  br i1 %exitcond.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB12_NtNtB8_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i, label %.lr.ph

.lr.ph57:                                         ; preds = %.preheader, %bb.m
  %.val9.i = phi i64 [ %.val7.i, %bb.m ], [ %.val15.i, %.preheader ]
  %.val8.i = phi ptr [ %.val.i, %bb.m ], [ %.val14.i, %.preheader ]
  %.sroa.01.1.i.i56 = phi i64 [ %i.ag, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.sroa.01.1.i.i56 ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 8
  %.val.i = load ptr, ptr %i.ac, align 8, !alias.scope !1378, !noalias !1381, !nonnull !4, !noundef !4 ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ab, i64 16
  %.val7.i = load i64, ptr %i.ad, align 8, !alias.scope !1378, !noalias !1381, !noundef !4 ; 2 uses
  %i.ae = tail call noundef range(i8 -2, 2) i8 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core5slice3cmphNtB5_15SlicePartialOrd15partial_compareCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val7.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val8.i, i64 noundef %.val9.i), !noalias !1384 ; 2 uses
  %.not.i.i37 = icmp ne i8 %i.ae, -2
  %i.af = icmp slt i8 %i.ae, 0
  %.sroa.0.0.i.i38 = and i1 %.not.i.i37, %i.af
  br i1 %.sroa.0.0.i.i38, label %bb.m, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB12_NtNtB8_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i

bb.m:                                             ; preds = %.lr.ph57
  %i.ag = add nuw i64 %.sroa.01.1.i.i56, 1        ; 2 uses
  %exitcond73.not = icmp eq i64 %i.ag, %i.m
  br i1 %exitcond73.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB12_NtNtB8_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i, label %.lr.ph57

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB12_NtNtB8_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i: ; preds = %bb.m, %.lr.ph57, %bb.l, %.lr.ph
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.0.i.i53, %.lr.ph ], [ %i.m, %bb.l ], [ %.sroa.01.1.i.i56, %.lr.ph57 ], [ %i.m, %bb.m ] ; 5 uses
  %i.ah = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.ah)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB12_NtNtB8_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.thread95: ; preds = %.preheader
  br i1 %.not5.i97, label %bb.i, label %.lr.ph.preheader.i.i

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB12_NtNtB8_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.thread: ; preds = %.preheader51
  br i1 %.not5.i92, label %bb.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs1LivM9IBWqb_12object_store4path4Path7reverseCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

bb.n:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB12_NtNtB8_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i
  %i.ai = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i = icmp eq i64 %i.ai, 0
  %or.cond = or i1 %.sroa.0.0.i.i42.not108, %.not.i.i
  br i1 %or.cond, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs1LivM9IBWqb_12object_store4path4Path7reverseCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, label %.lr.ph.preheader.i.i

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i36 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %i.m, i64 %.sroa.01.0)
  %i.aj = shl nuw nsw i64 %.sroa.0.0.i36, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB13_NtNtBa_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i35 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB15_NtNtBa_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 %i.n, i64 noundef %.sroa.0.0.i35, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias noundef nonnull %5), !inline_history !1385
  %i.ak = shl nuw nsw i64 %.sroa.0.0.i35, 1
  %i.al = or disjoint i64 %i.ak, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB13_NtNtBa_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs1LivM9IBWqb_12object_store4path4Path7reverseCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCs1LivM9IBWqb_12object_store4path4PathECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB12_NtNtB8_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.thread, %bb.j, %bb.n
  %.sroa.0.0.i.i4750 = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB12_NtNtB8_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.thread ], [ %.sroa.0.0.i.i93100104, %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCs1LivM9IBWqb_12object_store4path4PathECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i ]
  %i.am = shl nuw nsw i64 %.sroa.0.0.i.i4750, 1
  %i.an = or disjoint i64 %i.am, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB13_NtNtBa_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.n, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB12_NtNtB8_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.thread95
  %i.ao = phi i64 [ %i.ai, %bb.n ], [ 1, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB12_NtNtB8_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.thread95 ]
  %.sroa.0.0.i.i93100104 = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB12_NtNtB8_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.thread95 ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.sroa.0.0.i.i93100104
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCs1LivM9IBWqb_12object_store4path4PathECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.au, %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCs1LivM9IBWqb_12object_store4path4PathECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.aq = xor i64 %.sroa.0.017.i.i, -1
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.sroa.0.017.i.i
  %i.as = getelementptr [24 x i8], ptr %i.ap, i64 %i.aq
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noundef nonnull %i.ar, ptr noundef nonnull %i.as, i64 noundef 3)
          to label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCs1LivM9IBWqb_12object_store4path4PathECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i unwind label %bb.q, !noalias !1381

bb.q:                                             ; preds = %.lr.ph.i.i
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #28, !noalias !1381
  unreachable

_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCs1LivM9IBWqb_12object_store4path4PathECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i: ; preds = %.lr.ph.i.i
  %i.au = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.au, %i.ao
  br i1 %exitcond.not.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs1LivM9IBWqb_12object_store4path4Path7reverseCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, label %.lr.ph.i.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB13_NtNtBa_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs1LivM9IBWqb_12object_store4path4Path7reverseCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit
  %.sroa.0.0.i34 = phi i64 [ %i.an, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs1LivM9IBWqb_12object_store4path4Path7reverseCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit ], [ %i.al, %bb.p ], [ %i.aj, %bb.o ] ; 2 uses
  %i.av = lshr i64 %.sroa.023.0, 1
  %i.aw = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.ax = sub nsw i64 %factor, %i.av
  %i.ay = add nuw nsw i64 %i.aw, %factor
  %i.az = mul i64 %i.ax, %.sroa.0.0
  %i.ba = mul i64 %i.ay, %.sroa.0.0
  %i.bb = xor i64 %i.ba, %i.az
  %i.bc = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bb, i1 false)
  %i.bd = trunc nuw nsw i64 %i.bc to i8
  br label %bb.g

.lr.ph63:                                         ; preds = %bb.g, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB16_NtNtBa_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit
  %.sroa.02.162 = phi i64 [ %i.be, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB16_NtNtBa_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.161 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB16_NtNtBa_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.be = add i64 %.sroa.02.162, -1               ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !noundef !4
  %.not29 = icmp ult i8 %i.bg, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB16_NtNtBa_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, %.lr.ph63, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.161, %.lr.ph63 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB16_NtNtBa_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.162, %.lr.ph63 ], [ 1, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB16_NtNtBa_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bi, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph63
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.be
  %i.bk = load i64, ptr %i.bj, align 8, !noundef !4 ; 3 uses
  %i.bl = lshr i64 %i.bk, 1                       ; 5 uses
  %i.bm = lshr i64 %.sroa.023.161, 1              ; 3 uses
  %i.bn = add nuw i64 %i.bl, %i.bm                ; 5 uses
end_hunk_1
