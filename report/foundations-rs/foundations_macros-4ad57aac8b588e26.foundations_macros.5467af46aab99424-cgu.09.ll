Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/foundations-rs/original/foundations_macros-4ad57aac8b588e26.foundations_macros.5467af46aab99424-cgu.09?download=true
inline.NumInlined: 679
inline.NumDeleted: 222
begin_hunk_0_@_RINvNtCs6bAnw1I7Lci_3syn11parse_quote5parseNtNtB4_4path4PathECs7fhJ7v7hOxk_18foundations_macros:bb.a
bb.ai:                                            ; preds = %bb.g, %bb.d, %.body.i
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23, !dbg !8834, !noalias !8620
  unreachable, !dbg !8834

bb.aj:                                            ; preds = %_RNvYNvYNtNtCs6bAnw1I7Lci_3syn4path4PathNtNtB9_11parse_quote10ParseQuote5parseINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtNtB9_5parse11ParseBufferEE9call_onceCs7fhJ7v7hOxk_18foundations_macros.exit.i
  %.sroa.6.8.copyload5 = load i64, ptr %i.q, align 8, !dbg !8835, !noalias !8667
  %.sroa.10.8..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !8835
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.8..sroa_idx8, i64 16, i1 false), !dbg !8835, !noalias !8667
  br label %bb.aa, !dbg !8836

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn5parse11ParseBufferECs7fhJ7v7hOxk_18foundations_macros.exit19.i: ; preds = %bb.ag, %bb.af, %bb.ae
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  %cond35 = icmp eq i64 %i.k, 0, !dbg !8839
  br i1 %cond35, label %_RNvXsh_NtCs6bAnw1I7Lci_3syn5parseNvYNtNtB7_4path4PathNtNtB7_11parse_quote10ParseQuote5parseNtB5_6Parser6parse2Cs7fhJ7v7hOxk_18foundations_macros.exit.thread, label %.lr.ph32, !dbg !8839

bb.ak:                                            ; preds = %.lr.ph32
  %i.bn = icmp eq i64 %i.bp, %i.k, !dbg !8839
  br i1 %i.bn, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn6buffer11TokenBufferECs7fhJ7v7hOxk_18foundations_macros.exit.sink.split.i, label %.lr.ph32, !dbg !8839

.lr.ph32:                                         ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn5parse11ParseBufferECs7fhJ7v7hOxk_18foundations_macros.exit19.i, %bb.ak
  %.sroa.0.0.i.i.i20.i31 = phi i64 [ %i.bp, %bb.ak ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn5parse11ParseBufferECs7fhJ7v7hOxk_18foundations_macros.exit19.i ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %.sroa.0.0.i.i.i20.i31, !dbg !8839
  %i.bp = add nuw nsw i64 %.sroa.0.0.i.i.i20.i31, 1, !dbg !8839 ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn6buffer5EntryECs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %i.bo)
          to label %bb.ak unwind label %bb.am, !dbg !8839, !noalias !8620

bb.al:                                            ; preds = %.lr.ph34
  %i.bq = add i64 %.sroa.0.1.i.i.i21.i33, 1, !dbg !8839 ; 2 uses
  %i.br = icmp eq i64 %i.bq, %i.k, !dbg !8839
  br i1 %i.br, label %common.resume.sink.split.i, label %.lr.ph34, !dbg !8839

bb.am:                                            ; preds = %.lr.ph32
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bt = icmp eq i64 %i.bp, %i.k, !dbg !8839
  br i1 %i.bt, label %common.resume.sink.split.i, label %.lr.ph34, !dbg !8839

.lr.ph34:                                         ; preds = %bb.am, %bb.al
  %.sroa.0.1.i.i.i21.i33 = phi i64 [ %i.bq, %bb.al ], [ %i.bp, %bb.am ] ; 2 uses
  %i.bu = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %.sroa.0.1.i.i.i21.i33, !dbg !8839
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn6buffer5EntryECs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %i.bu) #22
          to label %bb.al unwind label %bb.an, !dbg !8839, !noalias !8620

bb.an:                                            ; preds = %.lr.ph34
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23, !dbg !8839, !noalias !8620
  unreachable, !dbg !8839

_RNvXsh_NtCs6bAnw1I7Lci_3syn5parseNvYNtNtB7_4path4PathNtNtB7_11parse_quote10ParseQuote5parseNtB5_6Parser6parse2Cs7fhJ7v7hOxk_18foundations_macros.exit.thread: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn5parse11ParseBufferECs7fhJ7v7hOxk_18foundations_macros.exit19.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !8760
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !8760
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !8760
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !8760
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !8760
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !8760
  br label %bb.ao, !dbg !8843

_RNvXsh_NtCs6bAnw1I7Lci_3syn5parseNvYNtNtB7_4path4PathNtNtB7_11parse_quote10ParseQuote5parseNtB5_6Parser6parse2Cs7fhJ7v7hOxk_18foundations_macros.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn5parse11ParseBufferECs7fhJ7v7hOxk_18foundations_macros.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn6buffer11TokenBufferECs7fhJ7v7hOxk_18foundations_macros.exit.sink.split.i
  %.sroa.6.3 = phi i64 [ %.sroa.6.2, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn5parse11ParseBufferECs7fhJ7v7hOxk_18foundations_macros.exit.i ], [ %.sroa.6.1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn6buffer11TokenBufferECs7fhJ7v7hOxk_18foundations_macros.exit.sink.split.i ], !dbg !8759 ; 2 uses
  %.sroa.0.3 = phi i64 [ %.sroa.0.2, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn5parse11ParseBufferECs7fhJ7v7hOxk_18foundations_macros.exit.i ], [ %.sroa.0.1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn6buffer11TokenBufferECs7fhJ7v7hOxk_18foundations_macros.exit.sink.split.i ], !dbg !8759 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !8760
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !8760
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !8760
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !8760
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !8760
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !8760
  %i.bw = icmp eq i64 %.sroa.0.3, -1, !dbg !8844
  br i1 %i.bw, label %bb.ao, label %bb.ap, !dbg !8843

bb.ao:                                            ; preds = %_RNvXsh_NtCs6bAnw1I7Lci_3syn5parseNvYNtNtB7_4path4PathNtNtB7_11parse_quote10ParseQuote5parseNtB5_6Parser6parse2Cs7fhJ7v7hOxk_18foundations_macros.exit.thread, %_RNvXsh_NtCs6bAnw1I7Lci_3syn5parseNvYNtNtB7_4path4PathNtNtB7_11parse_quote10ParseQuote5parseNtB5_6Parser6parse2Cs7fhJ7v7hOxk_18foundations_macros.exit
  %.sroa.6.312 = phi i64 [ %.sroa.6.0, %_RNvXsh_NtCs6bAnw1I7Lci_3syn5parseNvYNtNtB7_4path4PathNtNtB7_11parse_quote10ParseQuote5parseNtB5_6Parser6parse2Cs7fhJ7v7hOxk_18foundations_macros.exit.thread ], [ %.sroa.6.3, %_RNvXsh_NtCs6bAnw1I7Lci_3syn5parseNvYNtNtB7_4path4PathNtNtB7_11parse_quote10ParseQuote5parseNtB5_6Parser6parse2Cs7fhJ7v7hOxk_18foundations_macros.exit ]
  store i64 %.sroa.6.312, ptr %i.h, align 8, !dbg !8845
  %.sroa.10.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !8845
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10, i64 16, i1 false), !dbg !8845
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core9panicking13panic_displayNtNtCs6bAnw1I7Lci_3syn5error5ErrorECs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #26
          to label %bb.ar unwind label %bb.aq, !dbg !8846

bb.ap:                                            ; preds = %_RNvXsh_NtCs6bAnw1I7Lci_3syn5parseNvYNtNtB7_4path4PathNtNtB7_11parse_quote10ParseQuote5parseNtB5_6Parser6parse2Cs7fhJ7v7hOxk_18foundations_macros.exit
  store i64 %.sroa.0.3, ptr %0, align 8, !dbg !8848
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8848
  store i64 %.sroa.6.3, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !8848
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !8848
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10, i64 16, i1 false), !dbg !8848
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !8848
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11, i64 16, i1 false), !dbg !8848
  ret void, !dbg !8849

bb.aq:                                            ; preds = %bb.ao
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn5error5ErrorECs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #22
          to label %common.resume unwind label %bb.as, !dbg !8850

bb.ar:                                            ; preds = %bb.ao
  unreachable

bb.as:                                            ; preds = %bb.aq
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23, !dbg !8851
  unreachable, !dbg !8851
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !8852 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8855), !dbg !8858
  %i.b = icmp eq i64 %4, 0, !dbg !8860
  br i1 %i.b, label %bb.e, label %bb.b, !dbg !8860, !prof !8863

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %2, %1, !dbg !8864               ; 2 uses
  %i.d = icmp ult i64 %i.c, %1, !dbg !8864
  br i1 %i.d, label %bb.e, label %bb.c, !dbg !8867

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %0, align 8, !dbg !8872, !range !159, !alias.scope !8855, !noundef !13 ; 2 uses
  %i.f = shl nuw i64 %i.e, 1, !dbg !8872
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.c, i64 range(i64 0, -1) %i.f), !dbg !8874
  %i.g = icmp eq i64 %4, 1, !dbg !8882
  %i.h = icmp ult i64 %4, 1025, !dbg !8882
  %..i = select i1 %i.h, i64 4, i64 1, !dbg !8882
  %.sroa.08.0.i = select i1 %i.g, i64 8, i64 %..i, !dbg !8882
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 range(i64 0, -1) %.sroa.08.0.i), !dbg !8886 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !8889, !noalias !8855
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8891 ; 2 uses
  %.val13.i = load ptr, ptr %i.i, align 8, !dbg !8891, !alias.scope !8855
  call fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.e, ptr %.val13.i, i64 noundef %..i14.i, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !dbg !8891, !noalias !8855
  %i.j = load i64, ptr %i.a, align 8, !dbg !8892, !range !2402, !noalias !8855, !noundef !13
  %i.k = trunc nuw i64 %i.j to i1, !dbg !8895
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !8896 ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.f, !dbg !8895

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.l, align 8, !dbg !8897, !range !8898, !noalias !8855, !noundef !13
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !8897
  %i.o = load i64, ptr %i.n, align 8, !dbg !8897, !noalias !8855
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8899, !noalias !8855
  br label %bb.e, !dbg !8900

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.b
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.b ], [ %i.o, %bb.d ], [ undef, %bb.a ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.b ], [ %i.m, %bb.d ], [ 0, %bb.a ]
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #26, !dbg !8903
  unreachable, !dbg !8903

bb.f:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.l, align 8, !dbg !8904, !noalias !8855, !nonnull !13, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8899, !noalias !8855
  store ptr %i.p, ptr %i.i, align 8, !dbg !8905, !alias.scope !8855
  %i.q = icmp sgt i64 %..i14.i, -1, !dbg !8909
  tail call void @llvm.assume(i1 %i.q), !dbg !8909
  store i64 %..i14.i, ptr %0, align 8, !dbg !8915, !alias.scope !8855
  ret void, !dbg !8916
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMNtCse4VeaA6Ikg_11proc_macro25rcvecINtB2_5RcVecNtB4_9TokenTreeE8make_mutCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !8917 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8922), !dbg !8925
  %i.b = load ptr, ptr %0, align 8, !dbg !8926, !alias.scope !8922, !nonnull !13, !noundef !13 ; 9 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !8936, !noalias !8922, !noundef !13
  %i.d = icmp eq i64 %i.c, 1, !dbg !8944
  br i1 %i.d, label %bb.b, label %bb.c, !dbg !8944

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !8945
  %i.f = load i64, ptr %i.e, align 8, !dbg !8955, !noalias !8922, !noundef !13
  %i.g = icmp eq i64 %i.f, 1, !dbg !8956
  br i1 %i.g, label %_RNvMsh_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCse4VeaA6Ikg_11proc_macro29TokenTreeEE8make_mutCs7fhJ7v7hOxk_18foundations_macros.exit, label %bb.e, !dbg !8956

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !8957
  %i.i = tail call noundef nonnull ptr @_RNvMsd_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCse4VeaA6Ikg_11proc_macro29TokenTreeEE17clone_from_ref_inCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h), !dbg !8959, !noalias !8922 ; 3 uses
  %i.j = load i64, ptr %i.b, align 8, !dbg !8960, !noalias !8966, !noundef !13
  %i.k = add i64 %i.j, -1, !dbg !8971             ; 2 uses
  store i64 %i.k, ptr %i.b, align 8, !dbg !8972, !noalias !8966
  %i.l = icmp eq i64 %i.k, 0, !dbg !8976
  br i1 %i.l, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcINtNtBG_3vec3VecNtCse4VeaA6Ikg_11proc_macro29TokenTreeEEECs7fhJ7v7hOxk_18foundations_macros.exit.i, !dbg !8976

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCse4VeaA6Ikg_11proc_macro29TokenTreeEE9drop_slowBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #24
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcINtNtBG_3vec3VecNtCse4VeaA6Ikg_11proc_macro29TokenTreeEEECs7fhJ7v7hOxk_18foundations_macros.exit.i unwind label %bb.f, !dbg !8977

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !8978, !noalias !8922
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !8979 ; 2 uses
  call void @_RNvMs1O_NtCs1xwejQucwHj_5alloc2rcINtB6_14UniqueRcUninitINtNtB8_3vec3VecNtCse4VeaA6Ikg_11proc_macro29TokenTreeENtNtB8_5alloc6GlobalE3newCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m), !dbg !8981, !noalias !8922
  %i.n = load i64, ptr %i.a, align 8, !dbg !8982, !range !8989, !noalias !8922, !noundef !13 ; 2 uses
  %i.o = add nuw i64 %i.n, 15, !dbg !8990
  %i.p = sub i64 0, %i.n, !dbg !8999
  %i.q = and i64 %i.o, %i.p, !dbg !8990
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !9000
  %i.s = load ptr, ptr %i.r, align 8, !dbg !9000, !noalias !8922, !nonnull !13, !noundef !13
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q, !dbg !9002
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !dbg !9010, !noalias !8922
  %i.u = load <2 x i64>, ptr %i.b, align 8, !dbg !9013, !noalias !8922
  %i.v = add <2 x i64> %i.u, splat (i64 -1), !dbg !9019
  store <2 x i64> %i.v, ptr %i.b, align 8, !dbg !9020, !noalias !8922
  %i.w = call noundef nonnull ptr @_RNvMs1O_NtCs1xwejQucwHj_5alloc2rcINtB6_14UniqueRcUninitINtNtB8_3vec3VecNtCse4VeaA6Ikg_11proc_macro29TokenTreeENtNtB8_5alloc6GlobalE7into_rcCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a), !dbg !9028, !noalias !8922 ; 2 uses
  store ptr %i.w, ptr %0, align 8, !dbg !9030, !alias.scope !8922
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9033, !noalias !8922
  br label %_RNvMsh_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCse4VeaA6Ikg_11proc_macro29TokenTreeEE8make_mutCs7fhJ7v7hOxk_18foundations_macros.exit, !dbg !9034

bb.f:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  store ptr %i.i, ptr %0, align 8, !dbg !9035, !alias.scope !8922
  resume { ptr, i32 } %i.x, !dbg !9036

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcINtNtBG_3vec3VecNtCse4VeaA6Ikg_11proc_macro29TokenTreeEEECs7fhJ7v7hOxk_18foundations_macros.exit.i: ; preds = %bb.d, %bb.c
  store ptr %i.i, ptr %0, align 8, !dbg !9035, !alias.scope !8922
  br label %_RNvMsh_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCse4VeaA6Ikg_11proc_macro29TokenTreeEE8make_mutCs7fhJ7v7hOxk_18foundations_macros.exit, !dbg !9037

_RNvMsh_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCse4VeaA6Ikg_11proc_macro29TokenTreeEE8make_mutCs7fhJ7v7hOxk_18foundations_macros.exit: ; preds = %bb.b, %bb.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcINtNtBG_3vec3VecNtCse4VeaA6Ikg_11proc_macro29TokenTreeEEECs7fhJ7v7hOxk_18foundations_macros.exit.i
  %i.y = phi ptr [ %i.w, %bb.e ], [ %i.b, %bb.b ], [ %i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcINtNtBG_3vec3VecNtCse4VeaA6Ikg_11proc_macro29TokenTreeEEECs7fhJ7v7hOxk_18foundations_macros.exit.i ], !dbg !9038
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16, !dbg !9041
  ret ptr %i.z, !dbg !9042
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs0_NtCse4VeaA6Ikg_11proc_macro25rcvecINtB5_8RcVecMutNtB7_9TokenTreeE6as_mutCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #4 !dbg !9043 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !9045, !nonnull !13, !align !15, !noundef !13
  ret ptr %i.a, !dbg !9046
}

; Function Attrs: cold noinline nonlazybind uwtable
define hidden void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs6bAnw1I7Lci_3syn3lit6LitStrE8grow_oneCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !9047 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !dbg !9049, !range !159, !noundef !13 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9053), !dbg !9056
  %i.c = shl nuw i64 %i.b, 1, !dbg !9057
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4), !dbg !9059 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9062, !noalias !9053
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9063 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !dbg !9063, !alias.scope !9053
  call fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 8), !dbg !9063, !noalias !9053
  %i.f = load i64, ptr %i.a, align 8, !dbg !9064, !range !2402, !noalias !9053, !noundef !13
  %i.g = trunc nuw i64 %i.f to i1, !dbg !9066
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !9067 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !dbg !9066

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !dbg !9068, !range !8898, !noalias !9053, !noundef !13
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !9068
  %i.k = load i64, ptr %i.j, align 8, !dbg !9068, !noalias !9053
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9069, !noalias !9053
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #26, !dbg !9070
  unreachable, !dbg !9070

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !dbg !9071, !noalias !9053, !nonnull !13, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9069, !noalias !9053
  store ptr %i.l, ptr %i.e, align 8, !dbg !9072, !alias.scope !9053
  %i.m = icmp sgt i64 %i.d, -1, !dbg !9074
  tail call void @llvm.assume(i1 %i.m), !dbg !9074
  store i64 %i.d, ptr %0, align 8, !dbg !9076, !alias.scope !9053
  ret void, !dbg !9077
}

; Function Attrs: cold noinline nonlazybind uwtable
define hidden void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs7fhJ7v7hOxk_18foundations_macros7metrics6ItemFnE8grow_oneBQ_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !9078 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !dbg !9079, !range !159, !noundef !13 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9083), !dbg !9086
  %i.c = shl nuw i64 %i.b, 1, !dbg !9087
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4), !dbg !9089 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9092, !noalias !9083
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9093 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !dbg !9093, !alias.scope !9083
  call fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 552), !dbg !9093, !noalias !9083
  %i.f = load i64, ptr %i.a, align 8, !dbg !9094, !range !2402, !noalias !9083, !noundef !13
  %i.g = trunc nuw i64 %i.f to i1, !dbg !9096
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !9097 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !dbg !9096

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !dbg !9098, !range !8898, !noalias !9083, !noundef !13
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !9098
  %i.k = load i64, ptr %i.j, align 8, !dbg !9098, !noalias !9083
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9099, !noalias !9083
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #26, !dbg !9100
  unreachable, !dbg !9100

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !dbg !9101, !noalias !9083, !nonnull !13, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9099, !noalias !9083
  store ptr %i.l, ptr %i.e, align 8, !dbg !9102, !alias.scope !9083
  %i.m = icmp sgt i64 %i.d, -1, !dbg !9104
  tail call void @llvm.assume(i1 %i.m), !dbg !9104
  store i64 %i.d, ptr %0, align 8, !dbg !9106, !alias.scope !9083
  ret void, !dbg !9107
}

; Function Attrs: cold noinline nonlazybind uwtable
define hidden void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtCs7fhJ7v7hOxk_18foundations_macros11info_metric5FieldNtNtCs6bAnw1I7Lci_3syn5token5CommaEE8grow_oneBR_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !9108 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !dbg !9109, !range !159, !noundef !13 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9113), !dbg !9116
  %i.c = shl nuw i64 %i.b, 1, !dbg !9117
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4), !dbg !9119 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9122, !noalias !9113
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9123 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !dbg !9123, !alias.scope !9113
  call fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 808), !dbg !9123, !noalias !9113
  %i.f = load i64, ptr %i.a, align 8, !dbg !9124, !range !2402, !noalias !9113, !noundef !13
  %i.g = trunc nuw i64 %i.f to i1, !dbg !9126
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !9127 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !dbg !9126

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !dbg !9128, !range !8898, !noalias !9113, !noundef !13
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !9128
  %i.k = load i64, ptr %i.j, align 8, !dbg !9128, !noalias !9113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9129, !noalias !9113
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #26, !dbg !9130
  unreachable, !dbg !9130

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !dbg !9131, !noalias !9113, !nonnull !13, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9129, !noalias !9113
  store ptr %i.l, ptr %i.e, align 8, !dbg !9132, !alias.scope !9113
  %i.m = icmp sgt i64 %i.d, -1, !dbg !9134
  tail call void @llvm.assume(i1 %i.m), !dbg !9134
  store i64 %i.d, ptr %0, align 8, !dbg !9136, !alias.scope !9113
  ret void, !dbg !9137
}

; Function Attrs: cold noinline nonlazybind uwtable
define hidden void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtCs7fhJ7v7hOxk_18foundations_macros7metrics5FnArgNtNtCs6bAnw1I7Lci_3syn5token5CommaEE8grow_oneBR_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !9138 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !dbg !9139, !range !159, !noundef !13 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9143), !dbg !9146
  %i.c = shl nuw i64 %i.b, 1, !dbg !9147
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4), !dbg !9149 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9152, !noalias !9143
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9153 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !dbg !9153, !alias.scope !9143
  call fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 1008), !dbg !9153, !noalias !9143
  %i.f = load i64, ptr %i.a, align 8, !dbg !9154, !range !2402, !noalias !9143, !noundef !13
  %i.g = trunc nuw i64 %i.f to i1, !dbg !9156
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !9157 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !dbg !9156

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !dbg !9158, !range !8898, !noalias !9143, !noundef !13
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !9158
  %i.k = load i64, ptr %i.j, align 8, !dbg !9158, !noalias !9143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9159, !noalias !9143
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #26, !dbg !9160
  unreachable, !dbg !9160

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !dbg !9161, !noalias !9143, !nonnull !13, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9159, !noalias !9143
  store ptr %i.l, ptr %i.e, align 8, !dbg !9162, !alias.scope !9143
  %i.m = icmp sgt i64 %i.d, -1, !dbg !9164
  tail call void @llvm.assume(i1 %i.m), !dbg !9164
  store i64 %i.d, ptr %0, align 8, !dbg !9166, !alias.scope !9143
  ret void, !dbg !9167
}

; Function Attrs: cold noinline nonlazybind uwtable
define hidden void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTdNtCse4VeaA6Ikg_11proc_macro24SpanEE8grow_oneCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !9168 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !dbg !9169, !range !159, !noundef !13 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9173), !dbg !9176
  %i.c = shl nuw i64 %i.b, 1, !dbg !9177
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4), !dbg !9179 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9182, !noalias !9173
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9183 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !dbg !9183, !alias.scope !9173
  call fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 16), !dbg !9183, !noalias !9173
  %i.f = load i64, ptr %i.a, align 8, !dbg !9184, !range !2402, !noalias !9173, !noundef !13
  %i.g = trunc nuw i64 %i.f to i1, !dbg !9186
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !9187 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !dbg !9186

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !dbg !9188, !range !8898, !noalias !9173, !noundef !13
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !9188
  %i.k = load i64, ptr %i.j, align 8, !dbg !9188, !noalias !9173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9189, !noalias !9173
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #26, !dbg !9190
  unreachable, !dbg !9190

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !dbg !9191, !noalias !9173, !nonnull !13, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9189, !noalias !9173
  store ptr %i.l, ptr %i.e, align 8, !dbg !9192, !alias.scope !9173
end_hunk_0
