Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ripgrep-rs/original/grep_printer-c9b1b4ab60cb696b.grep_printer.c955879db871477a-cgu.1?download=true
inline.NumInlined: 112
inline.NumDeleted: 56
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer5color10ColorErrorEBF_:bb.a
  ], !dbg !710

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !710 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshhHc5tDBDRu_12grep_printer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshhHc5tDBDRu_12grep_printer.exit12 unwind label %bb.c, !dbg !713

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshhHc5tDBDRu_12grep_printer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.d, !dbg !714

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !713
  unreachable, !dbg !713

common.resume:                                    ; preds = %.body, %bb.r, %bb.o, %bb.i, %bb.f, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.r ], [ %i.g, %bb.c ], [ %i.j, %bb.f ], [ %i.m, %bb.i ], [ %i.r, %bb.o ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op, !dbg !710

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !710 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshhHc5tDBDRu_12grep_printer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshhHc5tDBDRu_12grep_printer.exit12 unwind label %bb.f, !dbg !715

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshhHc5tDBDRu_12grep_printer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume unwind label %bb.g, !dbg !716

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !715
  unreachable, !dbg !715

bb.h:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !710 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshhHc5tDBDRu_12grep_printer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshhHc5tDBDRu_12grep_printer.exit12 unwind label %bb.i, !dbg !717

bb.i:                                             ; preds = %bb.h
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshhHc5tDBDRu_12grep_printer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %common.resume unwind label %bb.j, !dbg !718

bb.j:                                             ; preds = %bb.i
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !717
  unreachable, !dbg !717

bb.k:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshhHc5tDBDRu_12grep_printer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshhHc5tDBDRu_12grep_printer.exit.i unwind label %bb.l, !dbg !719

bb.l:                                             ; preds = %bb.k
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshhHc5tDBDRu_12grep_printer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.m, !dbg !720

bb.m:                                             ; preds = %bb.l
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !719
  unreachable, !dbg !719

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshhHc5tDBDRu_12grep_printer.exit.i: ; preds = %bb.k
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshhHc5tDBDRu_12grep_printer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshhHc5tDBDRu_12grep_printer.exit6 unwind label %bb.q, !dbg !721

bb.n:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !710 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshhHc5tDBDRu_12grep_printer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshhHc5tDBDRu_12grep_printer.exit12 unwind label %bb.o, !dbg !722

bb.o:                                             ; preds = %bb.n
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshhHc5tDBDRu_12grep_printer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %common.resume unwind label %bb.p, !dbg !723

bb.p:                                             ; preds = %bb.o
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !722
  unreachable, !dbg !722

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshhHc5tDBDRu_12grep_printer.exit12: ; preds = %bb.n, %bb.h, %bb.e, %bb.b, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshhHc5tDBDRu_12grep_printer.exit6
  %.sink = phi ptr [ %i.v, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshhHc5tDBDRu_12grep_printer.exit6 ], [ %i.l, %bb.h ], [ %i.i, %bb.e ], [ %i.f, %bb.b ], [ %i.q, %bb.n ]
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshhHc5tDBDRu_12grep_printer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sink), !dbg !724
  ret void, !dbg !710

bb.q:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshhHc5tDBDRu_12grep_printer.exit.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !710

.body:                                            ; preds = %bb.l, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.t, %bb.q ], [ %i.o, %bb.l ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !710
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshhHc5tDBDRu_12grep_printer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u) #18
          to label %common.resume unwind label %bb.t, !dbg !710

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshhHc5tDBDRu_12grep_printer.exit6: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshhHc5tDBDRu_12grep_printer.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !710 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshhHc5tDBDRu_12grep_printer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshhHc5tDBDRu_12grep_printer.exit12 unwind label %bb.r, !dbg !725

bb.r:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshhHc5tDBDRu_12grep_printer.exit6
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshhHc5tDBDRu_12grep_printer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %common.resume unwind label %bb.s, !dbg !726

bb.s:                                             ; preds = %bb.r
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !725
  unreachable, !dbg !725

bb.t:                                             ; preds = %.body
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !710
  unreachable, !dbg !710
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvMs1_NtCshhHc5tDBDRu_12grep_printer4utilNtB5_11PrinterPath12as_hyperlink(ptr noundef nonnull align 8 %0) unnamed_addr #0 !dbg !727 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !736
  %i.b = tail call noundef nonnull align 8 ptr @_RINvMNtNtCskKLDkoKarTP_4core4cell4onceINtB3_8OnceCellINtNtB7_6option6OptionNtNtCshhHc5tDBDRu_12grep_printer9hyperlink13HyperlinkPathEE15get_or_try_initNCINvB2_11get_or_initNCNvMs1_NtB1f_4utilNtB2S_11PrinterPath12as_hyperlink0E0zEB1f_(ptr noundef nonnull align 8 %i.a, ptr noundef nonnull align 8 %0), !dbg !737 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !738, !range !83, !noundef !30
  %.not = icmp eq i64 %i.c, -1, !dbg !738
  %. = select i1 %.not, ptr null, ptr %i.b, !dbg !739
  ret ptr %., !dbg !740
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtCshhHc5tDBDRu_12grep_printer4utilNtB5_11PrinterPath14with_separator(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %1, i1 noundef zeroext %2, i8 %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !741 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  br i1 %2, label %bb.b, label %bb.m, !dbg !818

bb.b:                                             ; preds = %bb.a
  %.sroa.02.0.in = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !819 ; 3 uses
  %.sroa.02.0 = load ptr, ptr %.sroa.02.0.in, align 8, !dbg !819, !nonnull !30, !noundef !30
  %.sroa.3.0.in = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !819 ; 3 uses
  %.sroa.3.0 = load i64, ptr %.sroa.3.0.in, align 8, !dbg !819, !noundef !30 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !820, !noalias !807
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshhHc5tDBDRu_12grep_printer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %.sroa.3.0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.h, !dbg !820

.noexc:                                           ; preds = %bb.b
  %i.b = load i64, ptr %i.a, align 8, !dbg !820, !range !76, !noalias !807, !noundef !30
  %i.c = trunc nuw i64 %i.b to i1, !dbg !821
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !822
  %i.e = load i64, ptr %i.d, align 8, !dbg !822, !range !77, !noalias !807, !noundef !30 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !822 ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.d, !dbg !821, !prof !78

bb.c:                                             ; preds = %.noexc
  %i.g = load i64, ptr %i.f, align 8, !dbg !823, !noalias !807
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #16
          to label %.noexc5 unwind label %bb.h, !dbg !824

.noexc5:                                          ; preds = %bb.c
  unreachable, !dbg !824

bb.d:                                             ; preds = %.noexc
  %i.h = load ptr, ptr %i.f, align 8, !dbg !825, !noalias !807, !nonnull !30, !noundef !30 ; 47 uses
  %i.i = icmp samesign ule i64 %.sroa.3.0, %i.e, !dbg !826
  tail call void @llvm.assume(i1 %i.i), !dbg !827
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !828, !noalias !807
  %.not.i = icmp eq i64 %.sroa.3.0, 0, !dbg !829
  br i1 %.not.i, label %_RNvNvMs1_NtCshhHc5tDBDRu_12grep_printer4utilNtB7_11PrinterPath14with_separator17replace_separator.exit, label %iter.check, !dbg !829

iter.check:                                       ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull readonly align 1 %.sroa.02.0, i64 range(i64 0, -9223372036854775808) %.sroa.3.0, i1 false), !dbg !830, !noalias !810
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.3.0, !dbg !831
  %min.iters.check = icmp ult i64 %.sroa.3.0, 8, !dbg !832
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check, !dbg !832

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check15 = icmp ult i64 %.sroa.3.0, 32, !dbg !832
  br i1 %min.iters.check15, label %vec.epilog.ph, label %vector.ph, !dbg !832

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.k = and i64 %.sroa.3.0, 24
  %n.vec = and i64 %.sroa.3.0, -32                ; 4 uses
  %i.l = getelementptr i8, ptr %i.h, i64 %n.vec
  br label %vector.body, !dbg !832

vector.body:                                      ; preds = %pred.store.continue109, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue109 ] ; 33 uses
  %next.gep = getelementptr i8, ptr %i.h, i64 %index ; 3 uses
  %i.m = getelementptr i8, ptr %i.h, i64 %index
  %next.gep16 = getelementptr i8, ptr %i.m, i64 1
  %i.n = getelementptr i8, ptr %i.h, i64 %index
  %next.gep17 = getelementptr i8, ptr %i.n, i64 2
  %i.o = getelementptr i8, ptr %i.h, i64 %index
  %next.gep18 = getelementptr i8, ptr %i.o, i64 3
  %i.p = getelementptr i8, ptr %i.h, i64 %index
  %next.gep19 = getelementptr i8, ptr %i.p, i64 4
  %i.q = getelementptr i8, ptr %i.h, i64 %index
  %next.gep20 = getelementptr i8, ptr %i.q, i64 5
  %i.r = getelementptr i8, ptr %i.h, i64 %index
  %next.gep21 = getelementptr i8, ptr %i.r, i64 6
  %i.s = getelementptr i8, ptr %i.h, i64 %index
  %next.gep22 = getelementptr i8, ptr %i.s, i64 7
  %i.t = getelementptr i8, ptr %i.h, i64 %index
  %next.gep23 = getelementptr i8, ptr %i.t, i64 8
  %i.u = getelementptr i8, ptr %i.h, i64 %index
  %next.gep24 = getelementptr i8, ptr %i.u, i64 9
  %i.v = getelementptr i8, ptr %i.h, i64 %index
  %next.gep25 = getelementptr i8, ptr %i.v, i64 10
  %i.w = getelementptr i8, ptr %i.h, i64 %index
  %next.gep26 = getelementptr i8, ptr %i.w, i64 11
  %i.x = getelementptr i8, ptr %i.h, i64 %index
  %next.gep27 = getelementptr i8, ptr %i.x, i64 12
  %i.y = getelementptr i8, ptr %i.h, i64 %index
  %next.gep28 = getelementptr i8, ptr %i.y, i64 13
  %i.z = getelementptr i8, ptr %i.h, i64 %index
  %next.gep29 = getelementptr i8, ptr %i.z, i64 14
  %i.aa = getelementptr i8, ptr %i.h, i64 %index
  %next.gep30 = getelementptr i8, ptr %i.aa, i64 15
  %i.ab = getelementptr i8, ptr %i.h, i64 %index
  %next.gep31 = getelementptr i8, ptr %i.ab, i64 16
  %i.ac = getelementptr i8, ptr %i.h, i64 %index
  %next.gep32 = getelementptr i8, ptr %i.ac, i64 17
  %i.ad = getelementptr i8, ptr %i.h, i64 %index
  %next.gep33 = getelementptr i8, ptr %i.ad, i64 18
  %i.ae = getelementptr i8, ptr %i.h, i64 %index
  %next.gep34 = getelementptr i8, ptr %i.ae, i64 19
  %i.af = getelementptr i8, ptr %i.h, i64 %index
  %next.gep35 = getelementptr i8, ptr %i.af, i64 20
  %i.ag = getelementptr i8, ptr %i.h, i64 %index
  %next.gep36 = getelementptr i8, ptr %i.ag, i64 21
  %i.ah = getelementptr i8, ptr %i.h, i64 %index
  %next.gep37 = getelementptr i8, ptr %i.ah, i64 22
  %i.ai = getelementptr i8, ptr %i.h, i64 %index
  %next.gep38 = getelementptr i8, ptr %i.ai, i64 23
  %i.aj = getelementptr i8, ptr %i.h, i64 %index
  %next.gep39 = getelementptr i8, ptr %i.aj, i64 24
  %i.ak = getelementptr i8, ptr %i.h, i64 %index
  %next.gep40 = getelementptr i8, ptr %i.ak, i64 25
  %i.al = getelementptr i8, ptr %i.h, i64 %index
  %next.gep41 = getelementptr i8, ptr %i.al, i64 26
  %i.am = getelementptr i8, ptr %i.h, i64 %index
  %next.gep42 = getelementptr i8, ptr %i.am, i64 27
  %i.an = getelementptr i8, ptr %i.h, i64 %index
  %next.gep43 = getelementptr i8, ptr %i.an, i64 28
  %i.ao = getelementptr i8, ptr %i.h, i64 %index
  %next.gep44 = getelementptr i8, ptr %i.ao, i64 29
  %i.ap = getelementptr i8, ptr %i.h, i64 %index
  %next.gep45 = getelementptr i8, ptr %i.ap, i64 30
  %i.aq = getelementptr i8, ptr %i.h, i64 %index
  %next.gep46 = getelementptr i8, ptr %i.aq, i64 31
  %i.ar = getelementptr i8, ptr %next.gep, i64 16, !dbg !832
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !dbg !832, !noalias !807
  %wide.load47 = load <16 x i8>, ptr %i.ar, align 1, !dbg !832, !noalias !807
  %i.as = icmp eq <16 x i8> %wide.load, splat (i8 47), !dbg !832 ; 16 uses
  %i.at = icmp eq <16 x i8> %wide.load47, splat (i8 47), !dbg !832 ; 16 uses
  %i.au = extractelement <16 x i1> %i.as, i64 0, !dbg !832
  br i1 %i.au, label %pred.store.if, label %pred.store.continue, !dbg !832

pred.store.if:                                    ; preds = %vector.body
  store i8 %3, ptr %next.gep, align 1, !dbg !833, !noalias !807
  br label %pred.store.continue, !dbg !832

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.av = extractelement <16 x i1> %i.as, i64 1, !dbg !832
  br i1 %i.av, label %pred.store.if48, label %pred.store.continue49, !dbg !832

pred.store.if48:                                  ; preds = %pred.store.continue
  store i8 %3, ptr %next.gep16, align 1, !dbg !833, !noalias !807
  br label %pred.store.continue49, !dbg !832

pred.store.continue49:                            ; preds = %pred.store.if48, %pred.store.continue
  %i.aw = extractelement <16 x i1> %i.as, i64 2, !dbg !832
  br i1 %i.aw, label %pred.store.if50, label %pred.store.continue51, !dbg !832

pred.store.if50:                                  ; preds = %pred.store.continue49
  store i8 %3, ptr %next.gep17, align 1, !dbg !833, !noalias !807
  br label %pred.store.continue51, !dbg !832

pred.store.continue51:                            ; preds = %pred.store.if50, %pred.store.continue49
  %i.ax = extractelement <16 x i1> %i.as, i64 3, !dbg !832
  br i1 %i.ax, label %pred.store.if52, label %pred.store.continue53, !dbg !832

pred.store.if52:                                  ; preds = %pred.store.continue51
  store i8 %3, ptr %next.gep18, align 1, !dbg !833, !noalias !807
  br label %pred.store.continue53, !dbg !832

pred.store.continue53:                            ; preds = %pred.store.if52, %pred.store.continue51
  %i.ay = extractelement <16 x i1> %i.as, i64 4, !dbg !832
  br i1 %i.ay, label %pred.store.if54, label %pred.store.continue55, !dbg !832

pred.store.if54:                                  ; preds = %pred.store.continue53
  store i8 %3, ptr %next.gep19, align 1, !dbg !833, !noalias !807
  br label %pred.store.continue55, !dbg !832

pred.store.continue55:                            ; preds = %pred.store.if54, %pred.store.continue53
  %i.az = extractelement <16 x i1> %i.as, i64 5, !dbg !832
  br i1 %i.az, label %pred.store.if56, label %pred.store.continue57, !dbg !832

pred.store.if56:                                  ; preds = %pred.store.continue55
  store i8 %3, ptr %next.gep20, align 1, !dbg !833, !noalias !807
  br label %pred.store.continue57, !dbg !832

pred.store.continue57:                            ; preds = %pred.store.if56, %pred.store.continue55
  %i.ba = extractelement <16 x i1> %i.as, i64 6, !dbg !832
  br i1 %i.ba, label %pred.store.if58, label %pred.store.continue59, !dbg !832

pred.store.if58:                                  ; preds = %pred.store.continue57
  store i8 %3, ptr %next.gep21, align 1, !dbg !833, !noalias !807
  br label %pred.store.continue59, !dbg !832

pred.store.continue59:                            ; preds = %pred.store.if58, %pred.store.continue57
  %i.bb = extractelement <16 x i1> %i.as, i64 7, !dbg !832
  br i1 %i.bb, label %pred.store.if60, label %pred.store.continue61, !dbg !832

pred.store.if60:                                  ; preds = %pred.store.continue59
  store i8 %3, ptr %next.gep22, align 1, !dbg !833, !noalias !807
  br label %pred.store.continue61, !dbg !832

pred.store.continue61:                            ; preds = %pred.store.if60, %pred.store.continue59
  %i.bc = extractelement <16 x i1> %i.as, i64 8, !dbg !832
  br i1 %i.bc, label %pred.store.if62, label %pred.store.continue63, !dbg !832

pred.store.if62:                                  ; preds = %pred.store.continue61
  store i8 %3, ptr %next.gep23, align 1, !dbg !833, !noalias !807
  br label %pred.store.continue63, !dbg !832

pred.store.continue63:                            ; preds = %pred.store.if62, %pred.store.continue61
  %i.bd = extractelement <16 x i1> %i.as, i64 9, !dbg !832
  br i1 %i.bd, label %pred.store.if64, label %pred.store.continue65, !dbg !832

pred.store.if64:                                  ; preds = %pred.store.continue63
  store i8 %3, ptr %next.gep24, align 1, !dbg !833, !noalias !807
  br label %pred.store.continue65, !dbg !832

pred.store.continue65:                            ; preds = %pred.store.if64, %pred.store.continue63
  %i.be = extractelement <16 x i1> %i.as, i64 10, !dbg !832
  br i1 %i.be, label %pred.store.if66, label %pred.store.continue67, !dbg !832

pred.store.if66:                                  ; preds = %pred.store.continue65
  store i8 %3, ptr %next.gep25, align 1, !dbg !833, !noalias !807
  br label %pred.store.continue67, !dbg !832

pred.store.continue67:                            ; preds = %pred.store.if66, %pred.store.continue65
  %i.bf = extractelement <16 x i1> %i.as, i64 11, !dbg !832
  br i1 %i.bf, label %pred.store.if68, label %pred.store.continue69, !dbg !832

pred.store.if68:                                  ; preds = %pred.store.continue67
  store i8 %3, ptr %next.gep26, align 1, !dbg !833, !noalias !807
  br label %pred.store.continue69, !dbg !832

pred.store.continue69:                            ; preds = %pred.store.if68, %pred.store.continue67
  %i.bg = extractelement <16 x i1> %i.as, i64 12, !dbg !832
  br i1 %i.bg, label %pred.store.if70, label %pred.store.continue71, !dbg !832

pred.store.if70:                                  ; preds = %pred.store.continue69
  store i8 %3, ptr %next.gep27, align 1, !dbg !833, !noalias !807
  br label %pred.store.continue71, !dbg !832

pred.store.continue71:                            ; preds = %pred.store.if70, %pred.store.continue69
  %i.bh = extractelement <16 x i1> %i.as, i64 13, !dbg !832
  br i1 %i.bh, label %pred.store.if72, label %pred.store.continue73, !dbg !832

pred.store.if72:                                  ; preds = %pred.store.continue71
  store i8 %3, ptr %next.gep28, align 1, !dbg !833, !noalias !807
  br label %pred.store.continue73, !dbg !832

pred.store.continue73:                            ; preds = %pred.store.if72, %pred.store.continue71
  %i.bi = extractelement <16 x i1> %i.as, i64 14, !dbg !832
  br i1 %i.bi, label %pred.store.if74, label %pred.store.continue75, !dbg !832

pred.store.if74:                                  ; preds = %pred.store.continue73
  store i8 %3, ptr %next.gep29, align 1, !dbg !833, !noalias !807
  br label %pred.store.continue75, !dbg !832

pred.store.continue75:                            ; preds = %pred.store.if74, %pred.store.continue73
  %i.bj = extractelement <16 x i1> %i.as, i64 15, !dbg !832
  br i1 %i.bj, label %pred.store.if76, label %pred.store.continue77, !dbg !832

pred.store.if76:                                  ; preds = %pred.store.continue75
  store i8 %3, ptr %next.gep30, align 1, !dbg !833, !noalias !807
  br label %pred.store.continue77, !dbg !832

pred.store.continue77:                            ; preds = %pred.store.if76, %pred.store.continue75
  %i.bk = extractelement <16 x i1> %i.at, i64 0, !dbg !832
  br i1 %i.bk, label %pred.store.if78, label %pred.store.continue79, !dbg !832

end_hunk_0
