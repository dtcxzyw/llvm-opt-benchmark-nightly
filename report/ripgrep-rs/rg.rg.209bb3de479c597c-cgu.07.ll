Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ripgrep-rs/original/rg.rg.209bb3de479c597c-cgu.07?download=true
inline.NumInlined: 669
inline.NumDeleted: 154
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4cell4once8OnceCellINtNtB4_6option6OptionNtNtCshhHc5tDBDRu_12grep_printer9hyperlink13HyperlinkPathEEECs2NzvFoTxuAy_2rg:bb.a
_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionIB11_NtNtCshhHc5tDBDRu_12grep_printer9hyperlink13HyperlinkPathEEEECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer9hyperlink13HyperlinkPathECs2NzvFoTxuAy_2rg.exit.i.i.i
  ret void, !dbg !1768
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !67 {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg.exit unwind label %bb.b, !dbg !1772

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2NzvFoTxuAy_2rg.exit.i unwind label %bb.c, !dbg !1773

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !dbg !1772
  unreachable, !dbg !1772

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2NzvFoTxuAy_2rg.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !1772

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !dbg !1774
  ret void, !dbg !1775
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer4util11PrinterPathECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1776 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !1800, !range !450, !alias.scope !1798, !noundef !401
  %i.b = icmp eq i64 %i.a, -1, !dbg !1800
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECs2NzvFoTxuAy_2rg.exit, label %bb.b, !dbg !1800

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg.exit.i unwind label %bb.c, !dbg !1801

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.d, !dbg !1802

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !dbg !1801
  unreachable, !dbg !1801

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg.exit.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECs2NzvFoTxuAy_2rg.exit unwind label %bb.e, !dbg !1803

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg.exit.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !1804

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.c, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !1804
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4cell4once8OnceCellINtNtB4_6option6OptionNtNtCshhHc5tDBDRu_12grep_printer9hyperlink13HyperlinkPathEEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #16
          to label %common.resume unwind label %bb.i, !dbg !1804

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !1804 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !dbg !1805, !range !455, !alias.scope !1799, !noundef !401
  %switch.i.i.i = icmp ugt i64 %i.h, -3, !dbg !1805
  br i1 %switch.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4cell4once8OnceCellINtNtB4_6option6OptionNtNtCshhHc5tDBDRu_12grep_printer9hyperlink13HyperlinkPathEEECs2NzvFoTxuAy_2rg.exit, label %bb.f, !dbg !1805

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECs2NzvFoTxuAy_2rg.exit
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer9hyperlink13HyperlinkPathECs2NzvFoTxuAy_2rg.exit.i.i.i.i unwind label %bb.g, !dbg !1806

bb.g:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume unwind label %bb.h, !dbg !1807

bb.h:                                             ; preds = %bb.g
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !dbg !1806
  unreachable, !dbg !1806

common.resume:                                    ; preds = %.body, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.g ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op, !dbg !1804

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer9hyperlink13HyperlinkPathECs2NzvFoTxuAy_2rg.exit.i.i.i.i: ; preds = %bb.f
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g), !dbg !1808
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4cell4once8OnceCellINtNtB4_6option6OptionNtNtCshhHc5tDBDRu_12grep_printer9hyperlink13HyperlinkPathEEECs2NzvFoTxuAy_2rg.exit, !dbg !1809

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4cell4once8OnceCellINtNtB4_6option6OptionNtNtCshhHc5tDBDRu_12grep_printer9hyperlink13HyperlinkPathEEECs2NzvFoTxuAy_2rg.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECs2NzvFoTxuAy_2rg.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer9hyperlink13HyperlinkPathECs2NzvFoTxuAy_2rg.exit.i.i.i.i
  ret void, !dbg !1804

bb.i:                                             ; preds = %.body
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !dbg !1804
  unreachable, !dbg !1804
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer9hyperlink12InterpolatorECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1810 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1837), !dbg !1841
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1838), !dbg !1842
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1839), !dbg !1843
  %i.a = load ptr, ptr %0, align 8, !dbg !1844, !alias.scope !1840, !nonnull !401, !noundef !401
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8, !dbg !1845, !noalias !1840
  %i.c = icmp eq i64 %i.b, 1, !dbg !1846
  br i1 %i.c, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer9hyperlink15HyperlinkConfigECs2NzvFoTxuAy_2rg.exit, !dbg !1846

bb.b:                                             ; preds = %bb.a
  fence acquire, !dbg !1847
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCshhHc5tDBDRu_12grep_printer9hyperlink20HyperlinkConfigInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #17
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer9hyperlink15HyperlinkConfigECs2NzvFoTxuAy_2rg.exit unwind label %bb.c, !dbg !1848

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1841
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(32) %i.e) #16
          to label %common.resume unwind label %bb.f, !dbg !1841

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer9hyperlink15HyperlinkConfigECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1849 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs2NzvFoTxuAy_2rg.exit unwind label %bb.d, !dbg !1850

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer9hyperlink15HyperlinkConfigECs2NzvFoTxuAy_2rg.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.e, !dbg !1851

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !dbg !1850
  unreachable, !dbg !1850

common.resume:                                    ; preds = %bb.c, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.d ], [ %i.d, %bb.c ]
  resume { ptr, i32 } %common.resume.op, !dbg !1841

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs2NzvFoTxuAy_2rg.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer9hyperlink15HyperlinkConfigECs2NzvFoTxuAy_2rg.exit
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f), !dbg !1852
  ret void, !dbg !1841

bb.f:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !dbg !1841
  unreachable, !dbg !1841
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvMs2_Cs4h1mOclLn8u_14encoding_rs_ioINtB5_17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli10decompress19DecompressionReaderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE4fillCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1853 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !1877 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !1877, !noundef !401 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136, !dbg !1878 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !1878, !noundef !401 ; 4 uses
  %i.e = icmp ult i64 %i.b, %i.d, !dbg !1877
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val15 = load ptr, ptr %i.f, align 8, !dbg !1879 ; 5 uses
  br i1 %i.e, label %bb.b, label %.thread, !dbg !1877

.thread:                                          ; preds = %bb.a
  %i.g = getelementptr i8, ptr %.val15, i64 16, !dbg !1880
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false), !dbg !1881
  %.val1.i1745 = load i64, ptr %i.g, align 8, !dbg !1880, !noundef !401
  br label %bb.e, !dbg !1882

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %.val15, i64 8, !dbg !1883
  %.val.i = load ptr, ptr %i.h, align 8, !dbg !1883, !nonnull !401, !noundef !401 ; 4 uses
  %i.i = getelementptr i8, ptr %.val15, i64 16, !dbg !1883
  %.val1.i = load i64, ptr %i.i, align 8, !dbg !1883, !noundef !401 ; 5 uses
  %i.j = icmp ult i64 %i.d, %.val1.i, !dbg !1884
  br i1 %i.j, label %.lr.ph.preheader, label %bb.d, !dbg !1884, !prof !427

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.k = sub i64 %i.d, %i.b, !dbg !1885           ; 5 uses
  %i.l = xor i64 %i.b, -1, !dbg !1885
  %i.m = add i64 %i.d, %i.l, !dbg !1885
  %i.n = tail call i64 @llvm.umin.i64(i64 %.val1.i, i64 %i.m), !dbg !1885
  %i.o = add i64 %i.n, 1, !dbg !1885              ; 3 uses
  %min.iters.check = icmp ult i64 %i.o, 33, !dbg !1885
  %diff.check = icmp ugt i64 %i.b, -32, !dbg !1885
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !1885
  br i1 %or.cond, label %.lr.ph.preheader51, label %vector.ph, !dbg !1885

.lr.ph.preheader51.loopexit:                      ; preds = %vector.body
  %1 = add i64 %i.b, %n.vec
  br label %.lr.ph.preheader51, !dbg !1885

.lr.ph.preheader51:                               ; preds = %.lr.ph.preheader51.loopexit, %.lr.ph.preheader
  %.sroa.0.02336.ph = phi i64 [ %i.b, %.lr.ph.preheader ], [ %1, %.lr.ph.preheader51.loopexit ]
  %.sroa.7.035.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %.lr.ph.preheader51.loopexit ]
  br label %.lr.ph, !dbg !1885

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.p = and i64 %i.o, 31                         ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  %i.r = select i1 %i.q, i64 32, i64 %i.p
  %n.vec = sub i64 %i.o, %i.r                     ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.b
  br label %vector.body, !dbg !1886

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !1886 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %index, !dbg !1887 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !1887
  %wide.load = load <16 x i8>, ptr %i.t, align 1, !dbg !1887
  %wide.load49 = load <16 x i8>, ptr %i.u, align 1, !dbg !1887
  %i.v = getelementptr inbounds nuw i8, ptr %.val.i, i64 %index, !dbg !1885 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !1885
  store <16 x i8> %wide.load, ptr %i.v, align 1, !dbg !1885
  store <16 x i8> %wide.load49, ptr %i.w, align 1, !dbg !1885
  %index.next = add nuw i64 %index, 32, !dbg !1886 ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec, !dbg !1888
  br i1 %i.x, label %.lr.ph.preheader51.loopexit, label %vector.body, !dbg !1888, !llvm.loop !1864

bb.c:                                             ; preds = %bb.j
  store i64 %i.k, ptr %i.c, align 8, !dbg !1879
  store i64 0, ptr %i.a, align 8, !dbg !1881
  %i.y = getelementptr i8, ptr %.val15, i64 16, !dbg !1880
  %.val1.i17 = load i64, ptr %i.y, align 8, !dbg !1880, !noundef !401 ; 4 uses
  %i.z = icmp ugt i64 %i.k, %.val1.i17, !dbg !1882
  br i1 %i.z, label %bb.f, label %bb.e, !dbg !1882, !prof !525

bb.d:                                             ; preds = %bb.b
  tail call void @_RINvNtCsG258MDvU3F_3std9panicking11begin_panicReEB4_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 41, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #14, !dbg !1889
  unreachable, !dbg !1889

.lr.ph:                                           ; preds = %.lr.ph.preheader51, %bb.j
  %.sroa.0.02336 = phi i64 [ %i.an, %bb.j ], [ %.sroa.0.02336.ph, %.lr.ph.preheader51 ] ; 2 uses
  %.sroa.7.035 = phi i64 [ %i.am, %bb.j ], [ %.sroa.7.035.ph, %.lr.ph.preheader51 ] ; 3 uses
  %exitcond.not = icmp eq i64 %.sroa.7.035, %.val1.i, !dbg !1885
  br i1 %exitcond.not, label %bb.k, label %bb.j, !dbg !1885

bb.e:                                             ; preds = %.thread, %bb.c
  %.val1.i1748 = phi i64 [ %.val1.i1745, %.thread ], [ %.val1.i17, %bb.c ]
  %storemerge47 = phi i64 [ 0, %.thread ], [ %i.k, %bb.c ] ; 2 uses
  %i.aa = getelementptr i8, ptr %.val15, i64 8, !dbg !1880
  %.val.i16 = load ptr, ptr %i.aa, align 8, !dbg !1880, !nonnull !401, !noundef !401
  %i.ab = sub nuw i64 %.val1.i1748, %storemerge47, !dbg !1890
  %i.ac = getelementptr inbounds nuw i8, ptr %.val.i16, i64 %storemerge47, !dbg !1891
  %i.ad = tail call { i64, ptr } @_RNvXs1_NtCs4h1mOclLn8u_14encoding_rs_io4utilINtB5_9BomPeekerQQNtNtCsgwyS1EwTFAS_8grep_cli10decompress19DecompressionReaderENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull %i.ac, i64 noundef %i.ab), !dbg !1892 ; 2 uses
  %i.ae = extractvalue { i64, ptr } %i.ad, 0, !dbg !1892
  %i.af = extractvalue { i64, ptr } %i.ad, 1, !dbg !1892 ; 2 uses
  %i.ag = trunc nuw i64 %i.ae to i1, !dbg !1893
  br i1 %i.ag, label %bb.i, label %bb.g, !dbg !1893

bb.f:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.k, i64 noundef %.val1.i17, i64 noundef %.val1.i17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #14, !dbg !1894
  unreachable, !dbg !1894

bb.g:                                             ; preds = %bb.e
  %i.ah = ptrtoint ptr %i.af to i64, !dbg !1892
  %i.ai = load i64, ptr %i.c, align 8, !dbg !1895, !noundef !401
  %i.aj = add i64 %i.ai, %i.ah, !dbg !1895        ; 2 uses
  store i64 %i.aj, ptr %i.c, align 8, !dbg !1895
  %i.ak = icmp eq i64 %i.aj, 0, !dbg !1896
  br i1 %i.ak, label %bb.h, label %bb.i, !dbg !1896

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 146, !dbg !1897
  store i8 1, ptr %i.al, align 2, !dbg !1897
  br label %bb.i, !dbg !1898

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e
  %.sroa.0.0 = phi ptr [ %i.af, %bb.e ], [ null, %bb.g ], [ null, %bb.h ], !dbg !1879
  ret ptr %.sroa.0.0, !dbg !1899

bb.j:                                             ; preds = %.lr.ph
  %i.am = add i64 %.sroa.7.035, 1, !dbg !1886     ; 2 uses
  %i.an = add nuw i64 %.sroa.0.02336, 1, !dbg !1900
  %i.ao = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.02336, !dbg !1887
  %i.ap = load i8, ptr %i.ao, align 1, !dbg !1887, !noundef !401
  %i.aq = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.7.035, !dbg !1885
  store i8 %i.ap, ptr %i.aq, align 1, !dbg !1885
  %exitcond38.not = icmp eq i64 %i.am, %i.k, !dbg !1901
  br i1 %exitcond38.not, label %bb.c, label %.lr.ph, !dbg !1888, !llvm.loop !1872

bb.k:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.val1.i, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #14, !dbg !1885
  unreachable, !dbg !1885
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvMs2_Cs4h1mOclLn8u_14encoding_rs_ioINtB5_17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE4fillCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1902 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !1926 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !1926, !noundef !401 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136, !dbg !1927 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !1927, !noundef !401 ; 4 uses
  %i.e = icmp ult i64 %i.b, %i.d, !dbg !1926
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val15 = load ptr, ptr %i.f, align 8, !dbg !1928 ; 5 uses
  br i1 %i.e, label %bb.b, label %.thread, !dbg !1926

.thread:                                          ; preds = %bb.a
  %i.g = getelementptr i8, ptr %.val15, i64 16, !dbg !1929
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false), !dbg !1930
  %.val1.i1745 = load i64, ptr %i.g, align 8, !dbg !1929, !noundef !401
  br label %bb.e, !dbg !1931

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %.val15, i64 8, !dbg !1932
  %.val.i = load ptr, ptr %i.h, align 8, !dbg !1932, !nonnull !401, !noundef !401 ; 4 uses
  %i.i = getelementptr i8, ptr %.val15, i64 16, !dbg !1932
  %.val1.i = load i64, ptr %i.i, align 8, !dbg !1932, !noundef !401 ; 5 uses
  %i.j = icmp ult i64 %i.d, %.val1.i, !dbg !1933
  br i1 %i.j, label %.lr.ph.preheader, label %bb.d, !dbg !1933, !prof !427

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.k = sub i64 %i.d, %i.b, !dbg !1934           ; 5 uses
  %i.l = xor i64 %i.b, -1, !dbg !1934
  %i.m = add i64 %i.d, %i.l, !dbg !1934
  %i.n = tail call i64 @llvm.umin.i64(i64 %.val1.i, i64 %i.m), !dbg !1934
  %i.o = add i64 %i.n, 1, !dbg !1934              ; 3 uses
  %min.iters.check = icmp ult i64 %i.o, 33, !dbg !1934
  %diff.check = icmp ugt i64 %i.b, -32, !dbg !1934
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !1934
  br i1 %or.cond, label %.lr.ph.preheader51, label %vector.ph, !dbg !1934

.lr.ph.preheader51.loopexit:                      ; preds = %vector.body
  %1 = add i64 %i.b, %n.vec
  br label %.lr.ph.preheader51, !dbg !1934

.lr.ph.preheader51:                               ; preds = %.lr.ph.preheader51.loopexit, %.lr.ph.preheader
  %.sroa.0.02336.ph = phi i64 [ %i.b, %.lr.ph.preheader ], [ %1, %.lr.ph.preheader51.loopexit ]
  %.sroa.7.035.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %.lr.ph.preheader51.loopexit ]
  br label %.lr.ph, !dbg !1934

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.p = and i64 %i.o, 31                         ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  %i.r = select i1 %i.q, i64 32, i64 %i.p
  %n.vec = sub i64 %i.o, %i.r                     ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.b
  br label %vector.body, !dbg !1935

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !1935 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %index, !dbg !1936 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !1936
  %wide.load = load <16 x i8>, ptr %i.t, align 1, !dbg !1936
  %wide.load49 = load <16 x i8>, ptr %i.u, align 1, !dbg !1936
  %i.v = getelementptr inbounds nuw i8, ptr %.val.i, i64 %index, !dbg !1934 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !1934
  store <16 x i8> %wide.load, ptr %i.v, align 1, !dbg !1934
  store <16 x i8> %wide.load49, ptr %i.w, align 1, !dbg !1934
  %index.next = add nuw i64 %index, 32, !dbg !1935 ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec, !dbg !1937
  br i1 %i.x, label %.lr.ph.preheader51.loopexit, label %vector.body, !dbg !1937, !llvm.loop !1913

bb.c:                                             ; preds = %bb.j
  store i64 %i.k, ptr %i.c, align 8, !dbg !1928
  store i64 0, ptr %i.a, align 8, !dbg !1930
  %i.y = getelementptr i8, ptr %.val15, i64 16, !dbg !1929
  %.val1.i17 = load i64, ptr %i.y, align 8, !dbg !1929, !noundef !401 ; 4 uses
  %i.z = icmp ugt i64 %i.k, %.val1.i17, !dbg !1931
  br i1 %i.z, label %bb.f, label %bb.e, !dbg !1931, !prof !525

bb.d:                                             ; preds = %bb.b
  tail call void @_RINvNtCsG258MDvU3F_3std9panicking11begin_panicReEB4_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 41, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #14, !dbg !1938
  unreachable, !dbg !1938

.lr.ph:                                           ; preds = %.lr.ph.preheader51, %bb.j
  %.sroa.0.02336 = phi i64 [ %i.an, %bb.j ], [ %.sroa.0.02336.ph, %.lr.ph.preheader51 ] ; 2 uses
  %.sroa.7.035 = phi i64 [ %i.am, %bb.j ], [ %.sroa.7.035.ph, %.lr.ph.preheader51 ] ; 3 uses
  %exitcond.not = icmp eq i64 %.sroa.7.035, %.val1.i, !dbg !1934
  br i1 %exitcond.not, label %bb.k, label %bb.j, !dbg !1934

bb.e:                                             ; preds = %.thread, %bb.c
  %.val1.i1748 = phi i64 [ %.val1.i1745, %.thread ], [ %.val1.i17, %bb.c ]
  %storemerge47 = phi i64 [ 0, %.thread ], [ %i.k, %bb.c ] ; 2 uses
  %i.aa = getelementptr i8, ptr %.val15, i64 8, !dbg !1929
  %.val.i16 = load ptr, ptr %i.aa, align 8, !dbg !1929, !nonnull !401, !noundef !401
  %i.ab = sub nuw i64 %.val1.i1748, %storemerge47, !dbg !1939
  %i.ac = getelementptr inbounds nuw i8, ptr %.val.i16, i64 %storemerge47, !dbg !1940
  %i.ad = tail call { i64, ptr } @_RNvXs1_NtCs4h1mOclLn8u_14encoding_rs_io4utilINtB5_9BomPeekerQQNtNtCsgwyS1EwTFAS_8grep_cli7process13CommandReaderENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull %i.ac, i64 noundef %i.ab), !dbg !1941 ; 2 uses
  %i.ae = extractvalue { i64, ptr } %i.ad, 0, !dbg !1941
  %i.af = extractvalue { i64, ptr } %i.ad, 1, !dbg !1941 ; 2 uses
  %i.ag = trunc nuw i64 %i.ae to i1, !dbg !1942
  br i1 %i.ag, label %bb.i, label %bb.g, !dbg !1942

bb.f:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.k, i64 noundef %.val1.i17, i64 noundef %.val1.i17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #14, !dbg !1943
  unreachable, !dbg !1943

bb.g:                                             ; preds = %bb.e
  %i.ah = ptrtoint ptr %i.af to i64, !dbg !1941
  %i.ai = load i64, ptr %i.c, align 8, !dbg !1944, !noundef !401
  %i.aj = add i64 %i.ai, %i.ah, !dbg !1944        ; 2 uses
  store i64 %i.aj, ptr %i.c, align 8, !dbg !1944
  %i.ak = icmp eq i64 %i.aj, 0, !dbg !1945
  br i1 %i.ak, label %bb.h, label %bb.i, !dbg !1945

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 146, !dbg !1946
  store i8 1, ptr %i.al, align 2, !dbg !1946
  br label %bb.i, !dbg !1947

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e
  %.sroa.0.0 = phi ptr [ %i.af, %bb.e ], [ null, %bb.g ], [ null, %bb.h ], !dbg !1928
  ret ptr %.sroa.0.0, !dbg !1948

bb.j:                                             ; preds = %.lr.ph
  %i.am = add i64 %.sroa.7.035, 1, !dbg !1935     ; 2 uses
  %i.an = add nuw i64 %.sroa.0.02336, 1, !dbg !1949
  %i.ao = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.02336, !dbg !1936
  %i.ap = load i8, ptr %i.ao, align 1, !dbg !1936, !noundef !401
  %i.aq = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.7.035, !dbg !1934
  store i8 %i.ap, ptr %i.aq, align 1, !dbg !1934
  %exitcond38.not = icmp eq i64 %i.am, %i.k, !dbg !1950
  br i1 %exitcond38.not, label %bb.c, label %.lr.ph, !dbg !1937, !llvm.loop !1921

bb.k:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.val1.i, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #14, !dbg !1934
  unreachable, !dbg !1934
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvMs2_Cs4h1mOclLn8u_14encoding_rs_ioINtB5_17DecodeReaderBytesQQNtNtNtCsG258MDvU3F_3std2io5stdio9StdinLockQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE4fillCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1951 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !1975 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !1975, !noundef !401 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136, !dbg !1976 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !1976, !noundef !401 ; 4 uses
  %i.e = icmp ult i64 %i.b, %i.d, !dbg !1975
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val15 = load ptr, ptr %i.f, align 8, !dbg !1977 ; 5 uses
  br i1 %i.e, label %bb.b, label %.thread, !dbg !1975

.thread:                                          ; preds = %bb.a
  %i.g = getelementptr i8, ptr %.val15, i64 16, !dbg !1978
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false), !dbg !1979
  %.val1.i1745 = load i64, ptr %i.g, align 8, !dbg !1978, !noundef !401
  br label %bb.e, !dbg !1980

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %.val15, i64 8, !dbg !1981
  %.val.i = load ptr, ptr %i.h, align 8, !dbg !1981, !nonnull !401, !noundef !401 ; 4 uses
  %i.i = getelementptr i8, ptr %.val15, i64 16, !dbg !1981
  %.val1.i = load i64, ptr %i.i, align 8, !dbg !1981, !noundef !401 ; 5 uses
  %i.j = icmp ult i64 %i.d, %.val1.i, !dbg !1982
  br i1 %i.j, label %.lr.ph.preheader, label %bb.d, !dbg !1982, !prof !427

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.k = sub i64 %i.d, %i.b, !dbg !1983           ; 5 uses
  %i.l = xor i64 %i.b, -1, !dbg !1983
  %i.m = add i64 %i.d, %i.l, !dbg !1983
  %i.n = tail call i64 @llvm.umin.i64(i64 %.val1.i, i64 %i.m), !dbg !1983
  %i.o = add i64 %i.n, 1, !dbg !1983              ; 3 uses
  %min.iters.check = icmp ult i64 %i.o, 33, !dbg !1983
  %diff.check = icmp ugt i64 %i.b, -32, !dbg !1983
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !1983
  br i1 %or.cond, label %.lr.ph.preheader51, label %vector.ph, !dbg !1983

.lr.ph.preheader51.loopexit:                      ; preds = %vector.body
  %1 = add i64 %i.b, %n.vec
  br label %.lr.ph.preheader51, !dbg !1983

.lr.ph.preheader51:                               ; preds = %.lr.ph.preheader51.loopexit, %.lr.ph.preheader
  %.sroa.0.02336.ph = phi i64 [ %i.b, %.lr.ph.preheader ], [ %1, %.lr.ph.preheader51.loopexit ]
  %.sroa.7.035.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %.lr.ph.preheader51.loopexit ]
  br label %.lr.ph, !dbg !1983

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.p = and i64 %i.o, 31                         ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  %i.r = select i1 %i.q, i64 32, i64 %i.p
  %n.vec = sub i64 %i.o, %i.r                     ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.b
  br label %vector.body, !dbg !1984

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !1984 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %index, !dbg !1985 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !1985
  %wide.load = load <16 x i8>, ptr %i.t, align 1, !dbg !1985
  %wide.load49 = load <16 x i8>, ptr %i.u, align 1, !dbg !1985
  %i.v = getelementptr inbounds nuw i8, ptr %.val.i, i64 %index, !dbg !1983 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !1983
  store <16 x i8> %wide.load, ptr %i.v, align 1, !dbg !1983
  store <16 x i8> %wide.load49, ptr %i.w, align 1, !dbg !1983
  %index.next = add nuw i64 %index, 32, !dbg !1984 ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec, !dbg !1986
  br i1 %i.x, label %.lr.ph.preheader51.loopexit, label %vector.body, !dbg !1986, !llvm.loop !1962

bb.c:                                             ; preds = %bb.j
  store i64 %i.k, ptr %i.c, align 8, !dbg !1977
  store i64 0, ptr %i.a, align 8, !dbg !1979
  %i.y = getelementptr i8, ptr %.val15, i64 16, !dbg !1978
  %.val1.i17 = load i64, ptr %i.y, align 8, !dbg !1978, !noundef !401 ; 4 uses
  %i.z = icmp ugt i64 %i.k, %.val1.i17, !dbg !1980
  br i1 %i.z, label %bb.f, label %bb.e, !dbg !1980, !prof !525

bb.d:                                             ; preds = %bb.b
  tail call void @_RINvNtCsG258MDvU3F_3std9panicking11begin_panicReEB4_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 41, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #14, !dbg !1987
  unreachable, !dbg !1987

.lr.ph:                                           ; preds = %.lr.ph.preheader51, %bb.j
  %.sroa.0.02336 = phi i64 [ %i.an, %bb.j ], [ %.sroa.0.02336.ph, %.lr.ph.preheader51 ] ; 2 uses
  %.sroa.7.035 = phi i64 [ %i.am, %bb.j ], [ %.sroa.7.035.ph, %.lr.ph.preheader51 ] ; 3 uses
  %exitcond.not = icmp eq i64 %.sroa.7.035, %.val1.i, !dbg !1983
  br i1 %exitcond.not, label %bb.k, label %bb.j, !dbg !1983

bb.e:                                             ; preds = %.thread, %bb.c
  %.val1.i1748 = phi i64 [ %.val1.i1745, %.thread ], [ %.val1.i17, %bb.c ]
  %storemerge47 = phi i64 [ 0, %.thread ], [ %i.k, %bb.c ] ; 2 uses
  %i.aa = getelementptr i8, ptr %.val15, i64 8, !dbg !1978
  %.val.i16 = load ptr, ptr %i.aa, align 8, !dbg !1978, !nonnull !401, !noundef !401
  %i.ab = sub nuw i64 %.val1.i1748, %storemerge47, !dbg !1988
  %i.ac = getelementptr inbounds nuw i8, ptr %.val.i16, i64 %storemerge47, !dbg !1989
  %i.ad = tail call { i64, ptr } @_RNvXs1_NtCs4h1mOclLn8u_14encoding_rs_io4utilINtB5_9BomPeekerQQNtNtNtCsG258MDvU3F_3std2io5stdio9StdinLockENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull %i.ac, i64 noundef %i.ab), !dbg !1990 ; 2 uses
  %i.ae = extractvalue { i64, ptr } %i.ad, 0, !dbg !1990
  %i.af = extractvalue { i64, ptr } %i.ad, 1, !dbg !1990 ; 2 uses
  %i.ag = trunc nuw i64 %i.ae to i1, !dbg !1991
  br i1 %i.ag, label %bb.i, label %bb.g, !dbg !1991

bb.f:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.k, i64 noundef %.val1.i17, i64 noundef %.val1.i17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #14, !dbg !1992
  unreachable, !dbg !1992

bb.g:                                             ; preds = %bb.e
  %i.ah = ptrtoint ptr %i.af to i64, !dbg !1990
  %i.ai = load i64, ptr %i.c, align 8, !dbg !1993, !noundef !401
  %i.aj = add i64 %i.ai, %i.ah, !dbg !1993        ; 2 uses
  store i64 %i.aj, ptr %i.c, align 8, !dbg !1993
  %i.ak = icmp eq i64 %i.aj, 0, !dbg !1994
  br i1 %i.ak, label %bb.h, label %bb.i, !dbg !1994

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 146, !dbg !1995
  store i8 1, ptr %i.al, align 2, !dbg !1995
  br label %bb.i, !dbg !1996

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e
  %.sroa.0.0 = phi ptr [ %i.af, %bb.e ], [ null, %bb.g ], [ null, %bb.h ], !dbg !1977
  ret ptr %.sroa.0.0, !dbg !1997

bb.j:                                             ; preds = %.lr.ph
  %i.am = add i64 %.sroa.7.035, 1, !dbg !1984     ; 2 uses
  %i.an = add nuw i64 %.sroa.0.02336, 1, !dbg !1998
  %i.ao = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.02336, !dbg !1985
  %i.ap = load i8, ptr %i.ao, align 1, !dbg !1985, !noundef !401
  %i.aq = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.7.035, !dbg !1983
  store i8 %i.ap, ptr %i.aq, align 1, !dbg !1983
  %exitcond38.not = icmp eq i64 %i.am, %i.k, !dbg !1999
  br i1 %exitcond38.not, label %bb.c, label %.lr.ph, !dbg !1986, !llvm.loop !1970

bb.k:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.val1.i, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #14, !dbg !1983
  unreachable, !dbg !1983
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvMs2_Cs4h1mOclLn8u_14encoding_rs_ioINtB5_17DecodeReaderBytesRNtNtCsG258MDvU3F_3std2fs4FileQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE4fillCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2000 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !2024 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !2024, !noundef !401 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136, !dbg !2025 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !2025, !noundef !401 ; 4 uses
  %i.e = icmp ult i64 %i.b, %i.d, !dbg !2024
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val15 = load ptr, ptr %i.f, align 8, !dbg !2026 ; 5 uses
  br i1 %i.e, label %bb.b, label %.thread, !dbg !2024

.thread:                                          ; preds = %bb.a
  %i.g = getelementptr i8, ptr %.val15, i64 16, !dbg !2027
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false), !dbg !2028
  %.val1.i1745 = load i64, ptr %i.g, align 8, !dbg !2027, !noundef !401
  br label %bb.e, !dbg !2029

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %.val15, i64 8, !dbg !2030
  %.val.i = load ptr, ptr %i.h, align 8, !dbg !2030, !nonnull !401, !noundef !401 ; 4 uses
  %i.i = getelementptr i8, ptr %.val15, i64 16, !dbg !2030
  %.val1.i = load i64, ptr %i.i, align 8, !dbg !2030, !noundef !401 ; 5 uses
  %i.j = icmp ult i64 %i.d, %.val1.i, !dbg !2031
  br i1 %i.j, label %.lr.ph.preheader, label %bb.d, !dbg !2031, !prof !427

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.k = sub i64 %i.d, %i.b, !dbg !2032           ; 5 uses
  %i.l = xor i64 %i.b, -1, !dbg !2032
  %i.m = add i64 %i.d, %i.l, !dbg !2032
  %i.n = tail call i64 @llvm.umin.i64(i64 %.val1.i, i64 %i.m), !dbg !2032
  %i.o = add i64 %i.n, 1, !dbg !2032              ; 3 uses
  %min.iters.check = icmp ult i64 %i.o, 33, !dbg !2032
  %diff.check = icmp ugt i64 %i.b, -32, !dbg !2032
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !2032
  br i1 %or.cond, label %.lr.ph.preheader51, label %vector.ph, !dbg !2032

.lr.ph.preheader51.loopexit:                      ; preds = %vector.body
  %1 = add i64 %i.b, %n.vec
  br label %.lr.ph.preheader51, !dbg !2032

.lr.ph.preheader51:                               ; preds = %.lr.ph.preheader51.loopexit, %.lr.ph.preheader
  %.sroa.0.02336.ph = phi i64 [ %i.b, %.lr.ph.preheader ], [ %1, %.lr.ph.preheader51.loopexit ]
  %.sroa.7.035.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %.lr.ph.preheader51.loopexit ]
  br label %.lr.ph, !dbg !2032

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.p = and i64 %i.o, 31                         ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  %i.r = select i1 %i.q, i64 32, i64 %i.p
  %n.vec = sub i64 %i.o, %i.r                     ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.b
  br label %vector.body, !dbg !2033

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !2033 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %index, !dbg !2034 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !2034
  %wide.load = load <16 x i8>, ptr %i.t, align 1, !dbg !2034
  %wide.load49 = load <16 x i8>, ptr %i.u, align 1, !dbg !2034
  %i.v = getelementptr inbounds nuw i8, ptr %.val.i, i64 %index, !dbg !2032 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !2032
  store <16 x i8> %wide.load, ptr %i.v, align 1, !dbg !2032
  store <16 x i8> %wide.load49, ptr %i.w, align 1, !dbg !2032
  %index.next = add nuw i64 %index, 32, !dbg !2033 ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec, !dbg !2035
  br i1 %i.x, label %.lr.ph.preheader51.loopexit, label %vector.body, !dbg !2035, !llvm.loop !2011

bb.c:                                             ; preds = %bb.j
  store i64 %i.k, ptr %i.c, align 8, !dbg !2026
  store i64 0, ptr %i.a, align 8, !dbg !2028
  %i.y = getelementptr i8, ptr %.val15, i64 16, !dbg !2027
  %.val1.i17 = load i64, ptr %i.y, align 8, !dbg !2027, !noundef !401 ; 4 uses
  %i.z = icmp ugt i64 %i.k, %.val1.i17, !dbg !2029
  br i1 %i.z, label %bb.f, label %bb.e, !dbg !2029, !prof !525

bb.d:                                             ; preds = %bb.b
  tail call void @_RINvNtCsG258MDvU3F_3std9panicking11begin_panicReEB4_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 41, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #14, !dbg !2036
  unreachable, !dbg !2036

.lr.ph:                                           ; preds = %.lr.ph.preheader51, %bb.j
  %.sroa.0.02336 = phi i64 [ %i.an, %bb.j ], [ %.sroa.0.02336.ph, %.lr.ph.preheader51 ] ; 2 uses
  %.sroa.7.035 = phi i64 [ %i.am, %bb.j ], [ %.sroa.7.035.ph, %.lr.ph.preheader51 ] ; 3 uses
  %exitcond.not = icmp eq i64 %.sroa.7.035, %.val1.i, !dbg !2032
  br i1 %exitcond.not, label %bb.k, label %bb.j, !dbg !2032

bb.e:                                             ; preds = %.thread, %bb.c
  %.val1.i1748 = phi i64 [ %.val1.i1745, %.thread ], [ %.val1.i17, %bb.c ]
  %storemerge47 = phi i64 [ 0, %.thread ], [ %i.k, %bb.c ] ; 2 uses
  %i.aa = getelementptr i8, ptr %.val15, i64 8, !dbg !2027
  %.val.i16 = load ptr, ptr %i.aa, align 8, !dbg !2027, !nonnull !401, !noundef !401
  %i.ab = sub nuw i64 %.val1.i1748, %storemerge47, !dbg !2037
  %i.ac = getelementptr inbounds nuw i8, ptr %.val.i16, i64 %storemerge47, !dbg !2038
  %i.ad = tail call { i64, ptr } @_RNvXs1_NtCs4h1mOclLn8u_14encoding_rs_io4utilINtB5_9BomPeekerRNtNtCsG258MDvU3F_3std2fs4FileENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull %i.ac, i64 noundef %i.ab), !dbg !2039 ; 2 uses
  %i.ae = extractvalue { i64, ptr } %i.ad, 0, !dbg !2039
  %i.af = extractvalue { i64, ptr } %i.ad, 1, !dbg !2039 ; 2 uses
  %i.ag = trunc nuw i64 %i.ae to i1, !dbg !2040
  br i1 %i.ag, label %bb.i, label %bb.g, !dbg !2040

bb.f:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.k, i64 noundef %.val1.i17, i64 noundef %.val1.i17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #14, !dbg !2041
  unreachable, !dbg !2041

bb.g:                                             ; preds = %bb.e
  %i.ah = ptrtoint ptr %i.af to i64, !dbg !2039
  %i.ai = load i64, ptr %i.c, align 8, !dbg !2042, !noundef !401
  %i.aj = add i64 %i.ai, %i.ah, !dbg !2042        ; 2 uses
  store i64 %i.aj, ptr %i.c, align 8, !dbg !2042
  %i.ak = icmp eq i64 %i.aj, 0, !dbg !2043
  br i1 %i.ak, label %bb.h, label %bb.i, !dbg !2043

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 146, !dbg !2044
  store i8 1, ptr %i.al, align 2, !dbg !2044
  br label %bb.i, !dbg !2045

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e
  %.sroa.0.0 = phi ptr [ %i.af, %bb.e ], [ null, %bb.g ], [ null, %bb.h ], !dbg !2026
  ret ptr %.sroa.0.0, !dbg !2046

bb.j:                                             ; preds = %.lr.ph
  %i.am = add i64 %.sroa.7.035, 1, !dbg !2033     ; 2 uses
  %i.an = add nuw i64 %.sroa.0.02336, 1, !dbg !2047
  %i.ao = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.02336, !dbg !2034
  %i.ap = load i8, ptr %i.ao, align 1, !dbg !2034, !noundef !401
  %i.aq = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.7.035, !dbg !2032
  store i8 %i.ap, ptr %i.aq, align 1, !dbg !2032
  %exitcond38.not = icmp eq i64 %i.am, %i.k, !dbg !2048
  br i1 %exitcond38.not, label %bb.c, label %.lr.ph, !dbg !2035, !llvm.loop !2019

bb.k:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.val1.i, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #14, !dbg !2032
  unreachable, !dbg !2032
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvMs2_Cs4h1mOclLn8u_14encoding_rs_ioINtB5_17DecodeReaderBytesRShQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE4fillCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2049 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136, !dbg !2073 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !2073, !noundef !401 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144, !dbg !2074 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !2074, !noundef !401 ; 4 uses
  %i.e = icmp ult i64 %i.b, %i.d, !dbg !2073
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val15 = load ptr, ptr %i.f, align 8, !dbg !2075 ; 5 uses
  br i1 %i.e, label %bb.b, label %.thread, !dbg !2073

.thread:                                          ; preds = %bb.a
  %i.g = getelementptr i8, ptr %.val15, i64 16, !dbg !2076
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false), !dbg !2077
  %.val1.i1745 = load i64, ptr %i.g, align 8, !dbg !2076, !noundef !401
  br label %bb.e, !dbg !2078

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %.val15, i64 8, !dbg !2079
  %.val.i = load ptr, ptr %i.h, align 8, !dbg !2079, !nonnull !401, !noundef !401 ; 4 uses
  %i.i = getelementptr i8, ptr %.val15, i64 16, !dbg !2079
  %.val1.i = load i64, ptr %i.i, align 8, !dbg !2079, !noundef !401 ; 5 uses
  %i.j = icmp ult i64 %i.d, %.val1.i, !dbg !2080
  br i1 %i.j, label %.lr.ph.preheader, label %bb.d, !dbg !2080, !prof !427

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.k = sub i64 %i.d, %i.b, !dbg !2081           ; 5 uses
  %i.l = xor i64 %i.b, -1, !dbg !2081
  %i.m = add i64 %i.d, %i.l, !dbg !2081
  %i.n = tail call i64 @llvm.umin.i64(i64 %.val1.i, i64 %i.m), !dbg !2081
  %i.o = add i64 %i.n, 1, !dbg !2081              ; 3 uses
  %min.iters.check = icmp ult i64 %i.o, 33, !dbg !2081
  %diff.check = icmp ugt i64 %i.b, -32, !dbg !2081
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !2081
  br i1 %or.cond, label %.lr.ph.preheader51, label %vector.ph, !dbg !2081

.lr.ph.preheader51.loopexit:                      ; preds = %vector.body
  %1 = add i64 %i.b, %n.vec
  br label %.lr.ph.preheader51, !dbg !2081

.lr.ph.preheader51:                               ; preds = %.lr.ph.preheader51.loopexit, %.lr.ph.preheader
  %.sroa.0.02336.ph = phi i64 [ %i.b, %.lr.ph.preheader ], [ %1, %.lr.ph.preheader51.loopexit ]
  %.sroa.7.035.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %.lr.ph.preheader51.loopexit ]
  br label %.lr.ph, !dbg !2081

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.p = and i64 %i.o, 31                         ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  %i.r = select i1 %i.q, i64 32, i64 %i.p
  %n.vec = sub i64 %i.o, %i.r                     ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.b
  br label %vector.body, !dbg !2082

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !2082 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %index, !dbg !2083 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !2083
  %wide.load = load <16 x i8>, ptr %i.t, align 1, !dbg !2083
  %wide.load49 = load <16 x i8>, ptr %i.u, align 1, !dbg !2083
  %i.v = getelementptr inbounds nuw i8, ptr %.val.i, i64 %index, !dbg !2081 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !2081
  store <16 x i8> %wide.load, ptr %i.v, align 1, !dbg !2081
  store <16 x i8> %wide.load49, ptr %i.w, align 1, !dbg !2081
  %index.next = add nuw i64 %index, 32, !dbg !2082 ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec, !dbg !2084
  br i1 %i.x, label %.lr.ph.preheader51.loopexit, label %vector.body, !dbg !2084, !llvm.loop !2060

bb.c:                                             ; preds = %bb.j
  store i64 %i.k, ptr %i.c, align 8, !dbg !2075
  store i64 0, ptr %i.a, align 8, !dbg !2077
  %i.y = getelementptr i8, ptr %.val15, i64 16, !dbg !2076
  %.val1.i17 = load i64, ptr %i.y, align 8, !dbg !2076, !noundef !401 ; 4 uses
  %i.z = icmp ugt i64 %i.k, %.val1.i17, !dbg !2078
  br i1 %i.z, label %bb.f, label %bb.e, !dbg !2078, !prof !525

bb.d:                                             ; preds = %bb.b
  tail call void @_RINvNtCsG258MDvU3F_3std9panicking11begin_panicReEB4_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 41, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #14, !dbg !2085
  unreachable, !dbg !2085

.lr.ph:                                           ; preds = %.lr.ph.preheader51, %bb.j
  %.sroa.0.02336 = phi i64 [ %i.an, %bb.j ], [ %.sroa.0.02336.ph, %.lr.ph.preheader51 ] ; 2 uses
  %.sroa.7.035 = phi i64 [ %i.am, %bb.j ], [ %.sroa.7.035.ph, %.lr.ph.preheader51 ] ; 3 uses
  %exitcond.not = icmp eq i64 %.sroa.7.035, %.val1.i, !dbg !2081
  br i1 %exitcond.not, label %bb.k, label %bb.j, !dbg !2081

bb.e:                                             ; preds = %.thread, %bb.c
  %.val1.i1748 = phi i64 [ %.val1.i1745, %.thread ], [ %.val1.i17, %bb.c ]
  %storemerge47 = phi i64 [ 0, %.thread ], [ %i.k, %bb.c ] ; 2 uses
  %i.aa = getelementptr i8, ptr %.val15, i64 8, !dbg !2076
  %.val.i16 = load ptr, ptr %i.aa, align 8, !dbg !2076, !nonnull !401, !noundef !401
  %i.ab = sub nuw i64 %.val1.i1748, %storemerge47, !dbg !2086
  %i.ac = getelementptr inbounds nuw i8, ptr %.val.i16, i64 %storemerge47, !dbg !2087
  %i.ad = tail call { i64, ptr } @_RNvXs1_NtCs4h1mOclLn8u_14encoding_rs_io4utilINtB5_9BomPeekerRShENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, ptr noalias nofree noundef nonnull %i.ac, i64 noundef %i.ab), !dbg !2088 ; 2 uses
  %i.ae = extractvalue { i64, ptr } %i.ad, 0, !dbg !2088
  %i.af = extractvalue { i64, ptr } %i.ad, 1, !dbg !2088 ; 2 uses
  %i.ag = trunc nuw i64 %i.ae to i1, !dbg !2089
  br i1 %i.ag, label %bb.i, label %bb.g, !dbg !2089

bb.f:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.k, i64 noundef %.val1.i17, i64 noundef %.val1.i17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #14, !dbg !2090
  unreachable, !dbg !2090

bb.g:                                             ; preds = %bb.e
  %i.ah = ptrtoint ptr %i.af to i64, !dbg !2088
  %i.ai = load i64, ptr %i.c, align 8, !dbg !2091, !noundef !401
  %i.aj = add i64 %i.ai, %i.ah, !dbg !2091        ; 2 uses
  store i64 %i.aj, ptr %i.c, align 8, !dbg !2091
  %i.ak = icmp eq i64 %i.aj, 0, !dbg !2092
  br i1 %i.ak, label %bb.h, label %bb.i, !dbg !2092

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 154, !dbg !2093
  store i8 1, ptr %i.al, align 2, !dbg !2093
  br label %bb.i, !dbg !2094

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e
  %.sroa.0.0 = phi ptr [ %i.af, %bb.e ], [ null, %bb.g ], [ null, %bb.h ], !dbg !2075
  ret ptr %.sroa.0.0, !dbg !2095

bb.j:                                             ; preds = %.lr.ph
  %i.am = add i64 %.sroa.7.035, 1, !dbg !2082     ; 2 uses
  %i.an = add nuw i64 %.sroa.0.02336, 1, !dbg !2096
  %i.ao = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.02336, !dbg !2083
  %i.ap = load i8, ptr %i.ao, align 1, !dbg !2083, !noundef !401
  %i.aq = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.7.035, !dbg !2081
  store i8 %i.ap, ptr %i.aq, align 1, !dbg !2081
  %exitcond38.not = icmp eq i64 %i.am, %i.k, !dbg !2097
  br i1 %exitcond38.not, label %bb.c, label %.lr.ph, !dbg !2084, !llvm.loop !2068

bb.k:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.val1.i, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #14, !dbg !2081
  unreachable, !dbg !2081
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE10write_pathCs2NzvFoTxuAy_2rg(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2098 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !2169 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !dbg !2169, !nonnull !401, !align !467, !noundef !401
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 240, !dbg !2169
  %i.d = load ptr, ptr %i.c, align 8, !dbg !2169, !nonnull !401, !align !467, !noundef !401 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 184, !dbg !2170 ; 6 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !2171, !noundef !401
  %i.g = icmp eq i64 %i.f, 0, !dbg !2172
  br i1 %i.g, label %bb.b, label %bb.c, !dbg !2172, !prof !427

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %i.e, align 8, !dbg !2173
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 192, !dbg !2174 ; 3 uses
  %i.i = load ptr, ptr %i.a, align 8, !dbg !2175, !nonnull !401, !align !467, !noundef !401
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 240, !dbg !2175
  %i.k = load ptr, ptr %i.j, align 8, !dbg !2175, !nonnull !401, !align !467, !noundef !401
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 68, !dbg !2176
  %i.m = invoke fastcc noundef ptr @_RNvXsp_Cs6Ur84ob3I15_9termcolorNtB5_6BufferNtB5_10WriteColor9set_color(ptr noalias nofree noundef align 8 dereferenceable(32) %i.h, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(15) %i.l)
          to label %bb.d unwind label %bb.i, !dbg !2177 ; 2 uses

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #14, !dbg !2178
  unreachable, !dbg !2178

bb.d:                                             ; preds = %bb.b
  %.not = icmp eq ptr %i.m, null, !dbg !2179
  br i1 %.not, label %bb.e, label %_RNvXsp_Cs6Ur84ob3I15_9termcolorNtB5_6BufferNtB5_10WriteColor5reset.exit, !dbg !2180

bb.e:                                             ; preds = %bb.d
  %.sroa.07.0.in = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !2181
  %.sroa.07.0 = load ptr, ptr %.sroa.07.0.in, align 8, !dbg !2181, !nonnull !401, !noundef !401
  %.sroa.3.0.in = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !2181
  %.sroa.3.0 = load i64, ptr %.sroa.3.0.in, align 8, !dbg !2181, !noundef !401
  %i.n = invoke noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.07.0, i64 noundef %.sroa.3.0)
          to label %bb.f unwind label %bb.i, !dbg !2182 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %.not10 = icmp eq ptr %i.n, null, !dbg !2183
  br i1 %.not10, label %bb.g, label %_RNvXsp_Cs6Ur84ob3I15_9termcolorNtB5_6BufferNtB5_10WriteColor5reset.exit, !dbg !2184

bb.g:                                             ; preds = %bb.f
  %i.o = load i64, ptr %i.h, align 8, !dbg !2185, !range !429, !alias.scope !2160, !noundef !401
  %i.p = trunc nuw i64 %i.o to i1, !dbg !2186
  br i1 %i.p, label %bb.h, label %_RNvXsp_Cs6Ur84ob3I15_9termcolorNtB5_6BufferNtB5_10WriteColor5reset.exit, !dbg !2186

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 200, !dbg !2187
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q, i64 noundef 4)
          to label %.noexc unwind label %bb.i, !dbg !2188

.noexc:                                           ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 216, !dbg !2189 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !dbg !2189, !alias.scope !2162, !noundef !401 ; 2 uses
  %i.t = icmp sgt i64 %i.s, -1, !dbg !2190
  tail call void @llvm.assume(i1 %i.t), !dbg !2191
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 208, !dbg !2192
  %i.v = load ptr, ptr %i.u, align 8, !dbg !2192, !alias.scope !2162, !nonnull !401, !noundef !401
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.s, !dbg !2193
  store i32 1831885595, ptr %i.w, align 1, !dbg !2194
  %i.x = load i64, ptr %i.r, align 8, !dbg !2195, !alias.scope !2162, !noundef !401
  %i.y = add i64 %i.x, 4, !dbg !2195
  store i64 %i.y, ptr %i.r, align 8, !dbg !2195, !alias.scope !2162
  br label %_RNvXsp_Cs6Ur84ob3I15_9termcolorNtB5_6BufferNtB5_10WriteColor5reset.exit, !dbg !2196

_RNvXsp_Cs6Ur84ob3I15_9termcolorNtB5_6BufferNtB5_10WriteColor5reset.exit: ; preds = %bb.d, %bb.f, %bb.g, %.noexc
  %.sroa.0.0 = phi ptr [ null, %bb.g ], [ null, %.noexc ], [ %i.m, %bb.d ], [ %i.n, %bb.f ], !dbg !2197
  %storemerge.in = load i64, ptr %i.e, align 8, !dbg !2198, !noundef !401
  %storemerge = add i64 %storemerge.in, 1, !dbg !2199
  store i64 %storemerge, ptr %i.e, align 8, !dbg !2200
  ret ptr %.sroa.0.0, !dbg !2201

bb.i:                                             ; preds = %bb.b, %bb.e, %bb.h
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load i64, ptr %i.e, align 8, !dbg !2202, !noundef !401
  %i.ab = add i64 %i.aa, 1, !dbg !2203
  store i64 %i.ab, ptr %i.e, align 8, !dbg !2204
  resume { ptr, i32 } %i.z, !dbg !2205
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE10write_specCs2NzvFoTxuAy_2rg(ptr nofree readonly captures(none) %.88.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(15) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !106 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.88.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.88.val, i64 240, !dbg !2252
  %i.b = load ptr, ptr %i.a, align 8, !dbg !2252, !nonnull !401, !align !467, !noundef !401 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 184, !dbg !2253 ; 6 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !2254, !noundef !401
  %i.e = icmp eq i64 %i.d, 0, !dbg !2255
  br i1 %i.e, label %bb.b, label %bb.c, !dbg !2255, !prof !427

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %i.c, align 8, !dbg !2256
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 192, !dbg !2257 ; 3 uses
  %i.g = invoke fastcc noundef ptr @_RNvXsp_Cs6Ur84ob3I15_9termcolorNtB5_6BufferNtB5_10WriteColor9set_color(ptr noalias nofree noundef align 8 dereferenceable(32) %i.f, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(15) %0)
          to label %bb.d unwind label %bb.i, !dbg !2258 ; 2 uses

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #14, !dbg !2259
  unreachable, !dbg !2259

bb.d:                                             ; preds = %bb.b
  %.not = icmp eq ptr %i.g, null, !dbg !2260
  br i1 %.not, label %bb.e, label %_RNvXsp_Cs6Ur84ob3I15_9termcolorNtB5_6BufferNtB5_10WriteColor5reset.exit, !dbg !2261

bb.e:                                             ; preds = %bb.d
  %i.h = invoke noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
          to label %bb.f unwind label %bb.i, !dbg !2262 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %.not11 = icmp eq ptr %i.h, null, !dbg !2263
  br i1 %.not11, label %bb.g, label %_RNvXsp_Cs6Ur84ob3I15_9termcolorNtB5_6BufferNtB5_10WriteColor5reset.exit, !dbg !2264

bb.g:                                             ; preds = %bb.f
  %i.i = load i64, ptr %i.f, align 8, !dbg !2265, !range !429, !alias.scope !2243, !noundef !401
  %i.j = trunc nuw i64 %i.i to i1, !dbg !2266
  br i1 %i.j, label %bb.h, label %_RNvXsp_Cs6Ur84ob3I15_9termcolorNtB5_6BufferNtB5_10WriteColor5reset.exit, !dbg !2266

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 200, !dbg !2267
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef 4)
          to label %.noexc unwind label %bb.i, !dbg !2268

.noexc:                                           ; preds = %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 216, !dbg !2269 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !dbg !2269, !alias.scope !2245, !noundef !401 ; 2 uses
  %i.n = icmp sgt i64 %i.m, -1, !dbg !2270
  tail call void @llvm.assume(i1 %i.n), !dbg !2271
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 208, !dbg !2272
  %i.p = load ptr, ptr %i.o, align 8, !dbg !2272, !alias.scope !2245, !nonnull !401, !noundef !401
end_hunk_0
