Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.02?download=true
inline.NumInlined: 2281
inline.NumDeleted: 862
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
loop-unroll.NumUnrolledNotLatch: 2
begin_hunk_0_@_RNvMs3_NtNtCs8frGy5WneL6_4fish5input7bindingINtB5_16EventQueuePeekerNtNtNtB9_6reader6reader6ReaderE12find_bindingB9_:bb.a
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s) #50
          to label %common.resume unwind label %bb.ap

bb.cf:                                            ; preds = %bb.l, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvMs3_NtNtCs8frGy5WneL6_4fish5input7bindingINtBJ_16EventQueuePeekerpE12find_binding14MatchedBindingEBN_.exit.i
  %i.ic = landingpad { ptr, i32 }
          cleanup
  br label %.body71.thread131

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNvMs3_NtNtCs8frGy5WneL6_4fish5input7bindingINtB15_16EventQueuePeekerpE12find_binding14MatchedBindingEEB19_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs8frGy5WneL6_4fish5input7binding15KeyMatchQualityEEB1e_.exit87, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvMs3_NtNtCs8frGy5WneL6_4fish5input7bindingINtBJ_16EventQueuePeekerpE12find_binding14MatchedBindingEBN_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit107 unwind label %bb.cg

bb.cg:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNvMs3_NtNtCs8frGy5WneL6_4fish5input7bindingINtB15_16EventQueuePeekerpE12find_binding14MatchedBindingEEB19_.exit
  %i.id = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %common.resume unwind label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ie = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.ci:                                            ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCs8frGy5WneL6_4fish5input7binding15KeyMatchQualityENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs3_BS_INtBS_16EventQueuePeekerNtNtNtBW_6reader6reader6ReaderE12find_binding0EBW_.exit.thread
  %.val66 = load ptr, ptr %i.ay, align 8          ; 2 uses
  %.val67 = load i64, ptr %i.az, align 8          ; 3 uses
  br i1 %storemerge, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish5input7bindingINtB5_16EventQueuePeekerNtNtNtB9_6reader6reader6ReaderE17try_peek_sequenceB9_.exit.thread, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val66) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2292)
  call void @llvm.experimental.noalias.scope.decl(metadata !2293)
  %..i.i.i = call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val67, i64 range(i64 0, -9223372036854775808) %i.hp)
  %.not.i.i108 = icmp eq i64 %.val67, 0
  br i1 %.not.i.i108, label %_RNCNvMs3_NtNtCs8frGy5WneL6_4fish5input7bindingINtB7_16EventQueuePeekerNtNtNtBb_6reader6reader6ReaderE12find_bindings_0Bb_.exit, label %.lr.ph.i.i

bb.ck:                                            ; preds = %.lr.ph.i.i
  %i.if = add nuw nsw i64 %.sroa.01.019.i.i, 1    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.if, %..i.i.i
  br i1 %exitcond.not.i.i, label %_RNCNvMs3_NtNtCs8frGy5WneL6_4fish5input7bindingINtB7_16EventQueuePeekerNtNtNtBb_6reader6reader6ReaderE12find_bindings_0Bb_.exit, label %.lr.ph.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i
  %.not = icmp samesign ult i8 %.val15.i.i, %.val16.i.i
  br i1 %.not, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish5input7bindingINtB5_16EventQueuePeekerNtNtNtB9_6reader6reader6ReaderE17try_peek_sequenceB9_.exit.thread, label %bb.cl

.lr.ph.i.i:                                       ; preds = %bb.cj, %bb.ck
  %.sroa.01.019.i.i = phi i64 [ %i.if, %bb.ck ], [ 0, %bb.cj ] ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ho, i64 %.sroa.01.019.i.i
  %i.ih = getelementptr inbounds nuw i8, ptr %.val66, i64 %.sroa.01.019.i.i
  %.val15.i.i = load i8, ptr %i.ig, align 1, !range !43, !alias.scope !2292, !noundef !10 ; 2 uses
  %.val16.i.i = load i8, ptr %i.ih, align 1, !range !43, !alias.scope !2293, !noundef !10 ; 2 uses
  %i.ii = icmp eq i8 %.val15.i.i, %.val16.i.i
  br i1 %i.ii, label %bb.ck, label %.loopexit.i.i

bb.cl:                                            ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCs8frGy5WneL6_4fish5input7binding15KeyMatchQualityENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs3_BS_INtBS_16EventQueuePeekerNtNtNtBW_6reader6reader6ReaderE12find_binding0EBW_.exit.thread.thread, %.loopexit.i.i, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCs8frGy5WneL6_4fish5input7binding15KeyMatchQualityENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs3_BS_INtBS_16EventQueuePeekerNtNtNtBW_6reader6reader6ReaderE12find_binding0EBW_.exit.thread, %_RNCNvMs3_NtNtCs8frGy5WneL6_4fish5input7bindingINtB7_16EventQueuePeekerNtNtNtBb_6reader6reader6ReaderE12find_bindings_0Bb_.exit
  %.not58223 = phi i1 [ true, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCs8frGy5WneL6_4fish5input7binding15KeyMatchQualityENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs3_BS_INtBS_16EventQueuePeekerNtNtNtBW_6reader6reader6ReaderE12find_binding0EBW_.exit.thread.thread ], [ false, %.loopexit.i.i ], [ true, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCs8frGy5WneL6_4fish5input7binding15KeyMatchQualityENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs3_BS_INtBS_16EventQueuePeekerNtNtNtBW_6reader6reader6ReaderE12find_binding0EBW_.exit.thread ], [ false, %_RNCNvMs3_NtNtCs8frGy5WneL6_4fish5input7bindingINtB7_16EventQueuePeekerNtNtNtBb_6reader6reader6ReaderE12find_bindings_0Bb_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.027)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.027, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  store i64 0, ptr %i.q, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.af, align 8
  store i64 0, ptr %i.ag, align 8
  %i.ij = load <2 x i64>, ptr %i.ba, align 8      ; 2 uses
  br i1 %.not58223, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNvMs3_NtNtCs8frGy5WneL6_4fish5input7bindingINtB15_16EventQueuePeekerpE12find_binding14MatchedBindingEEB19_.exit115, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding15KeyMatchQualityENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.r)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvMs3_NtNtCs8frGy5WneL6_4fish5input7bindingINtBJ_16EventQueuePeekerpE12find_binding14MatchedBindingEBN_.exit.i111 unwind label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ik = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8frGy5WneL6_4fish5input7binding15KeyMatchQualityENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.r)
          to label %.body112 unwind label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.il = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvMs3_NtNtCs8frGy5WneL6_4fish5input7bindingINtBJ_16EventQueuePeekerpE12find_binding14MatchedBindingEBN_.exit.i111: ; preds = %bb.cm
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8frGy5WneL6_4fish5input7binding15KeyMatchQualityENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.r)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNvMs3_NtNtCs8frGy5WneL6_4fish5input7bindingINtB15_16EventQueuePeekerpE12find_binding14MatchedBindingEEB19_.exit115 unwind label %bb.cp

_RNCNvMs3_NtNtCs8frGy5WneL6_4fish5input7bindingINtB7_16EventQueuePeekerNtNtNtBb_6reader6reader6ReaderE12find_bindings_0Bb_.exit: ; preds = %bb.ck, %bb.cj
  %.not152 = icmp ult i64 %i.hp, %.val67
  br i1 %.not152, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish5input7bindingINtB5_16EventQueuePeekerNtNtNtB9_6reader6reader6ReaderE17try_peek_sequenceB9_.exit.thread, label %bb.cl

bb.cp:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvMs3_NtNtCs8frGy5WneL6_4fish5input7bindingINtBJ_16EventQueuePeekerpE12find_binding14MatchedBindingEBN_.exit.i111
  %i.im = landingpad { ptr, i32 }
          cleanup
  br label %.body112

.body112:                                         ; preds = %bb.cn, %bb.cp
  %eh.lpad-body113 = phi { ptr, i32 } [ %i.im, %bb.cp ], [ %i.ik, %bb.cn ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.027, i64 24, i1 false)
  store ptr %.sroa.0.0.i69.ph, ptr %.sroa.528.0..sroa_idx29, align 8
  store <2 x i64> %i.ij, ptr %.sroa.631.0..sroa_idx32, align 8
  br label %.body

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNvMs3_NtNtCs8frGy5WneL6_4fish5input7bindingINtB15_16EventQueuePeekerpE12find_binding14MatchedBindingEEB19_.exit115: ; preds = %bb.cl, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvMs3_NtNtCs8frGy5WneL6_4fish5input7bindingINtBJ_16EventQueuePeekerpE12find_binding14MatchedBindingEBN_.exit.i111
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.027, i64 24, i1 false)
  store ptr %.sroa.0.0.i69.ph, ptr %.sroa.528.0..sroa_idx29, align 8
  store <2 x i64> %i.ij, ptr %.sroa.631.0..sroa_idx32, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.027)
  br label %_RNvMs3_NtNtCs8frGy5WneL6_4fish5input7bindingINtB5_16EventQueuePeekerNtNtNtB9_6reader6reader6ReaderE17try_peek_sequenceB9_.exit.thread

bb.cq:                                            ; preds = %bb.br
  store i64 0, ptr %i.r, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.ay, align 8
  store i64 0, ptr %i.az, align 8
  store ptr %.sroa.0.0.i69.ph, ptr %.sroa.528.0..sroa_idx29, align 8
  %i.in = load <2 x i64>, ptr %i.ba, align 8
  store <2 x i64> %i.in, ptr %.sroa.631.0..sroa_idx32, align 8
  br label %.backedge.backedge

.body71.thread:                                   ; preds = %bb.al, %.body71.thread134, %bb.b
  %.pn.pn128 = phi { ptr, i32 } [ %i.ef, %.body71.thread134 ], [ %.pn, %bb.b ], [ %i.ee, %bb.al ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNvMs3_NtNtCs8frGy5WneL6_4fish5input7bindingINtB15_16EventQueuePeekerpE12find_binding14MatchedBindingEEB19_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.r) #50
          to label %.body71.thread131 unwind label %bb.ap
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 4) i8 @_RNvMs3_NtNtCs8frGy5WneL6_4fish5input7bindingINtB5_16EventQueuePeekerNtNtNtB9_6reader6reader6ReaderE12next_is_charB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, i8 %.0.val, i64 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [16 x i8], align 8                ; 3 uses
  %i.h = alloca [16 x i8], align 8                ; 3 uses
  %i.i = alloca [16 x i8], align 8                ; 3 uses
  %i.j = alloca [16 x i8], align 8                ; 3 uses
  %i.k = alloca [16 x i8], align 8                ; 3 uses
  %i.l = alloca [16 x i8], align 8                ; 3 uses
  %i.m = alloca [16 x i8], align 8                ; 3 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %i.q = alloca [32 x i8], align 8                ; 7 uses
  %i.r = alloca [24 x i8], align 8                ; 7 uses
  %i.s = alloca [32 x i8], align 8                ; 7 uses
  %i.t = alloca [32 x i8], align 8                ; 7 uses
  %i.u = alloca [24 x i8], align 8                ; 7 uses
  %i.v = alloca [32 x i8], align 8                ; 7 uses
  %i.w = alloca [32 x i8], align 8                ; 7 uses
  %i.x = alloca [32 x i8], align 8                ; 7 uses
  %i.y = alloca [24 x i8], align 8                ; 7 uses
  %i.z = alloca [32 x i8], align 8                ; 7 uses
  %i.aa = alloca [32 x i8], align 8               ; 7 uses
  %i.ab = alloca [24 x i8], align 8               ; 7 uses
  %i.ac = alloca [32 x i8], align 8               ; 7 uses
  %i.ad = alloca [32 x i8], align 8               ; 7 uses
  %i.ae = alloca [24 x i8], align 8               ; 7 uses
  %i.af = alloca [32 x i8], align 8               ; 7 uses
  %i.ag = alloca [32 x i8], align 8               ; 7 uses
  %i.ah = alloca [24 x i8], align 8               ; 7 uses
  %i.ai = alloca [32 x i8], align 8               ; 7 uses
  %i.aj = alloca [32 x i8], align 8               ; 7 uses
  %i.ak = alloca [24 x i8], align 8               ; 7 uses
  %i.al = alloca [32 x i8], align 8               ; 7 uses
  %i.am = alloca [32 x i8], align 8               ; 7 uses
  %i.an = alloca [24 x i8], align 8               ; 7 uses
  %i.ao = alloca [32 x i8], align 8               ; 7 uses
  %i.ap = alloca [16 x i8], align 8               ; 5 uses
  %i.aq = alloca [24 x i8], align 8               ; 4 uses
  %i.ar = alloca [24 x i8], align 8               ; 7 uses
  %i.as = alloca [24 x i8], align 8               ; 6 uses
  %i.at = alloca [24 x i8], align 8               ; 15 uses
  %i.au = alloca [24 x i8], align 8               ; 6 uses
  %i.av = alloca [24 x i8], align 8               ; 15 uses
  %i.aw = alloca [48 x i8], align 8               ; 9 uses
  %i.ax = alloca [8 x i8], align 8                ; 4 uses
  %i.ay = alloca [24 x i8], align 8               ; 4 uses
  %i.az = alloca [24 x i8], align 8               ; 9 uses
  %i.ba = alloca [24 x i8], align 8               ; 6 uses
  %i.bb = alloca [24 x i8], align 8               ; 17 uses
  %i.bc = alloca [24 x i8], align 8               ; 6 uses
  %i.bd = alloca [24 x i8], align 8               ; 6 uses
  %i.be = alloca [24 x i8], align 8               ; 26 uses
  %i.bf = alloca [1 x i8], align 1                ; 4 uses
  %i.bg = alloca [24 x i8], align 8               ; 6 uses
  %i.bh = alloca [24 x i8], align 8               ; 17 uses
  %i.bi = alloca [48 x i8], align 8               ; 5 uses
  %i.bj = alloca [16 x i8], align 8               ; 5 uses
  %i.bk = alloca [24 x i8], align 8               ; 4 uses
  %i.bl = alloca [24 x i8], align 8               ; 9 uses
  %i.bm = alloca [24 x i8], align 8               ; 6 uses
  %i.bn = alloca [24 x i8], align 8               ; 17 uses
  %i.bo = alloca [48 x i8], align 8               ; 6 uses
  %i.bp = alloca [24 x i8], align 8               ; 6 uses
  %i.bq = alloca [24 x i8], align 8               ; 17 uses
  %i.br = alloca [48 x i8], align 8               ; 6 uses
  %i.bs = alloca [24 x i8], align 8               ; 6 uses
  %i.bt = alloca [24 x i8], align 8               ; 17 uses
  %i.bu = alloca [48 x i8], align 8               ; 9 uses
  %i.bv = alloca [8 x i8], align 8                ; 17 uses
  store i64 %1, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 10 uses
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !10 ; 5 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bz = load i64, ptr %i.by, align 8, !noundef !10 ; 6 uses
  %i.ca = icmp ult i64 %i.bz, 192153584101141163
  tail call void @llvm.assume(i1 %i.ca)
  %.not = icmp ugt i64 %i.bx, %i.bz
  %.sink51.sroa.gep = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sink51.sroa.gep52 = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  br i1 %.not, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @198, ptr noundef nonnull inttoptr (i64 101 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @200) #53
  unreachable

bb.c:                                             ; preds = %bb.a
  br i1 %2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cb = icmp eq i64 %i.bx, %i.bz
  br i1 %i.cb, label %bb.f, label %bb.af

bb.e:                                             ; preds = %bb.c
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 8, !range !15, !noundef !10
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %bb.ba, label %bb.ad

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  %i.cf = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8frGy5WneL6_4fish4flog10categories6reader, i64 40) monotonic, align 8
  %.not118 = icmp eq i8 %i.cf, 0
  br i1 %.not118, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !nonnull !10, !align !14, !noundef !10
  call void @_RNvYNtNtNtCs8frGy5WneL6_4fish6reader6reader6ReaderNtNtNtB8_5input5input16InputEventQueuer25readch_timed_sequence_keyB8_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.bo, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ch)
  %i.ci = load i64, ptr %i.bo, align 8, !range !2375, !noundef !10
  %.not119 = icmp eq i64 %i.ci, -1
  br i1 %.not119, label %bb.z, label %bb.y

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq)
  store i64 0, ptr %i.bq, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 5 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 6 uses
  store i64 0, ptr %i.ck, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  invoke void @_RNvXs_NtCs8frGy5WneL6_4fish4flogRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB4_16FloggableDisplay11to_flog_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8frGy5WneL6_4fish4flog10categories6reader, i64 24))
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.v, %bb.t, %bb.n, %bb.l, %bb.r, %bb.q, %bb.o, %bb.j, %bb.h
  %i.cl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bq) #50
          to label %common.resume unwind label %bb.ac

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %i.co = load i64, ptr %i.bp, align 8, !range !16, !noundef !10
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.cq = load i64, ptr %i.cp, align 8, !noundef !10 ; 2 uses
  %i.cr = icmp sgt i64 %i.cq, -1
  call void @llvm.assume(i1 %i.cr)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cq
  store ptr %i.cn, ptr %i.al, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i64 %i.co, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.cn, ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store ptr %i.cs, ptr %i.cv, align 8
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bq, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.al)
          to label %bb.k unwind label %bb.i

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  %i.cw = load i64, ptr %i.ck, align 8, !alias.scope !2376, !noundef !10 ; 4 uses
  %i.cx = load i64, ptr %i.bq, align 8, !range !16, !alias.scope !2376, !noundef !10
  %i.cy = icmp eq i64 %i.cw, %i.cx
  br i1 %i.cy, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bq) #52
          to label %bb.m unwind label %bb.i

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.cz = load ptr, ptr %i.cj, align 8, !alias.scope !2376, !nonnull !10, !noundef !10
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cw
  store i8 58, ptr %i.da, align 1
  %i.db = add i64 %i.cw, 1                        ; 3 uses
  store i64 %i.db, ptr %i.ck, align 8, !alias.scope !2376
  %i.dc = load i64, ptr %i.bq, align 8, !range !16, !alias.scope !2377, !noundef !10
  %i.dd = icmp eq i64 %i.db, %i.dc
  br i1 %i.dd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bq) #52
          to label %bb.o unwind label %bb.i

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.de = load ptr, ptr %i.cj, align 8, !alias.scope !2377, !nonnull !10, !noundef !10
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.db
  store i8 32, ptr %i.df, align 1
  %i.dg = add i64 %i.cw, 2
  store i64 %i.dg, ptr %i.ck, align 8, !alias.scope !2377
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ak, i64 noundef 25, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.p unwind label %bb.i

bb.p:                                             ; preds = %bb.o
  %i.dh = load i64, ptr %i.ak, align 8, !range !12, !noundef !10
  %i.di = trunc nuw i64 %i.dh to i1
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  br i1 %i.di, label %bb.q, label %bb.r, !prof !13

bb.q:                                             ; preds = %bb.p
  %i.dk = load i64, ptr %i.dj, align 8, !range !22, !noundef !10
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.dm = load i64, ptr %i.dl, align 8
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.dk, i64 %i.dm) #49
          to label %bb.ab unwind label %bb.i

bb.r:                                             ; preds = %bb.p
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !nonnull !10, !noundef !10 ; 4 uses
  %i.dp = load i64, ptr %i.dj, align 8, !range !16, !noundef !10 ; 2 uses
  %i.dq = icmp samesign ugt i64 %i.dp, 24
  call void @llvm.assume(i1 %i.dq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %i.do, ptr noundef nonnull align 1 dereferenceable(25) @201, i64 25, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 25
  store ptr %i.do, ptr %i.aj, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i64 %i.dp, ptr %i.ds, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.do, ptr %i.dt, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store ptr %i.dr, ptr %i.du, align 8
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bq, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.aj)
          to label %bb.s unwind label %bb.i

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  %i.dv = load i64, ptr %i.ck, align 8, !alias.scope !2378, !noundef !10 ; 3 uses
  %i.dw = load i64, ptr %i.bq, align 8, !range !16, !alias.scope !2378, !noundef !10
  %i.dx = icmp eq i64 %i.dv, %i.dw
  br i1 %i.dx, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bq) #52
          to label %bb.u unwind label %bb.i

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.dy = load ptr, ptr %i.cj, align 8, !alias.scope !2378, !nonnull !10, !noundef !10
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dv
  store i8 10, ptr %i.dz, align 1
  %i.ea = add i64 %i.dv, 1                        ; 2 uses
  store i64 %i.ea, ptr %i.ck, align 8, !alias.scope !2378
  %i.eb = load ptr, ptr %i.cj, align 8, !nonnull !10, !noundef !10
  %i.ec = load atomic i32, ptr @_RNvNtCs8frGy5WneL6_4fish4flog7FLOG_FD monotonic, align 4, !noalias !2379 ; 2 uses
  %i.ed = icmp slt i32 %i.ec, 0
  br i1 %i.ed, label %_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2379
  invoke void @_RNvCs3pTQYeTDvAj_9fish_util11write_to_fd(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.eb, i64 noundef range(i64 0, -9223372036854775808) %i.ea, i32 noundef %i.ec)
          to label %.noexc150 unwind label %bb.i

.noexc150:                                        ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2379
  br label %_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl.exit

_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl.exit:    ; preds = %.noexc150, %bb.u
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bq)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit unwind label %bb.w

bb.w:                                             ; preds = %_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl.exit
  %i.ee = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bq)
          to label %common.resume unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ef = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

common.resume:                                    ; preds = %bb.hx, %bb.gk, %bb.dc, %bb.aw, %bb.i, %bb.ai, %bb.co, %bb.dz, %bb.ew, %.body217, %.body234, %.thread11, %bb.bf, %bb.w
  %common.resume.op = phi { ptr, i32 } [ %i.ud, %bb.gk ], [ %i.ee, %bb.w ], [ %i.gs, %bb.bf ], [ %i.gl, %bb.aw ], [ %i.mf, %bb.dc ], [ %i.es, %bb.ai ], [ %.pn136.pn10, %.thread11 ], [ %i.cl, %bb.i ], [ %i.km, %bb.co ], [ %eh.lpad-body235, %.body234 ], [ %.pn131, %.body217 ], [ %i.qa, %bb.ew ], [ %.pn, %bb.dz ], [ %i.yd, %bb.hx ]
  resume { ptr, i32 } %common.resume.op
end_hunk_0
begin_hunk_1_@_RNvMs3_NtNtCs8frGy5WneL6_4fish5input7bindingINtB5_16EventQueuePeekerNtNtNtB9_6reader6reader6ReaderE12next_is_charB9_:bb.a
  %i.kc = load i8, ptr %i.kb, align 1, !range !15
  %i.kd = trunc nuw i8 %i.kc to i1
  %i.ke = select i1 %i.ka, i1 true, i1 %i.kd
  br i1 %i.ke, label %bb.cj, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.kf = add nuw i64 %i.el, 1
  store i64 %i.kf, ptr %i.bw, align 8
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.kg, align 8
  %i.kh = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8frGy5WneL6_4fish4flog10categories6reader, i64 40) monotonic, align 8
  %.not135 = icmp eq i8 %i.kh, 0
  br i1 %.not135, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit187, %bb.cl
  %i.ki = load i32, ptr %i.bv, align 8, !range !24, !noundef !10
  %.sroa.093.0.insert.ext = zext nneg i32 %i.ki to i64
  %i.kj = call fastcc noundef i8 @_RNvMs3_NtNtCs8frGy5WneL6_4fish5input7bindingINtB5_16EventQueuePeekerNtNtNtB9_6reader6reader6ReaderE12next_is_charB9_(ptr noalias nofree noundef align 8 dereferenceable(56) %0, i8 %.0.val, i64 noundef %.sroa.093.0.insert.ext, i1 noundef zeroext true)
  br label %bb.ba

bb.cn:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  store i64 0, ptr %i.bh, align 8
  %i.kk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 5 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.kk, align 8
  %i.kl = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 6 uses
  store i64 0, ptr %i.kl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  invoke void @_RNvXs_NtCs8frGy5WneL6_4fish4flogRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB4_16FloggableDisplay11to_flog_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8frGy5WneL6_4fish4flog10categories6reader, i64 24))
          to label %bb.cp unwind label %bb.co

bb.co:                                            ; preds = %bb.db, %bb.cz, %bb.ct, %bb.cr, %bb.cx, %bb.cw, %bb.cu, %bb.cp, %bb.cn
  %i.km = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bh) #50
          to label %common.resume unwind label %bb.ac

bb.cp:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  %i.kn = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.ko = load ptr, ptr %i.kn, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %i.kp = load i64, ptr %i.bg, align 8, !range !16, !noundef !10
  %i.kq = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.kr = load i64, ptr %i.kq, align 8, !noundef !10 ; 2 uses
  %i.ks = icmp sgt i64 %i.kr, -1
  call void @llvm.assume(i1 %i.ks)
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ko, i64 %i.kr
  store ptr %i.ko, ptr %i.af, align 8
  %i.ku = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 %i.kp, ptr %i.ku, align 8
  %i.kv = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.ko, ptr %i.kv, align 8
  %i.kw = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store ptr %i.kt, ptr %i.kw, align 8
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.af)
          to label %bb.cq unwind label %bb.co

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  %i.kx = load i64, ptr %i.kl, align 8, !alias.scope !2390, !noundef !10 ; 4 uses
  %i.ky = load i64, ptr %i.bh, align 8, !range !16, !alias.scope !2390, !noundef !10
  %i.kz = icmp eq i64 %i.kx, %i.ky
  br i1 %i.kz, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bh) #52
          to label %bb.cs unwind label %bb.co

bb.cs:                                            ; preds = %bb.cq, %bb.cr
  %i.la = load ptr, ptr %i.kk, align 8, !alias.scope !2390, !nonnull !10, !noundef !10
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 %i.kx
  store i8 58, ptr %i.lb, align 1
  %i.lc = add i64 %i.kx, 1                        ; 3 uses
  store i64 %i.lc, ptr %i.kl, align 8, !alias.scope !2390
  %i.ld = load i64, ptr %i.bh, align 8, !range !16, !alias.scope !2391, !noundef !10
  %i.le = icmp eq i64 %i.lc, %i.ld
  br i1 %i.le, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bh) #52
          to label %bb.cu unwind label %bb.co

bb.cu:                                            ; preds = %bb.cs, %bb.ct
  %i.lf = load ptr, ptr %i.kk, align 8, !alias.scope !2391, !nonnull !10, !noundef !10
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 %i.lc
  store i8 32, ptr %i.lg, align 1
  %i.lh = add i64 %i.kx, 2
  store i64 %i.lh, ptr %i.kl, align 8, !alias.scope !2391
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ae, i64 noundef 45, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.cv unwind label %bb.co

bb.cv:                                            ; preds = %bb.cu
  %i.li = load i64, ptr %i.ae, align 8, !range !12, !noundef !10
  %i.lj = trunc nuw i64 %i.li to i1
  %i.lk = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  br i1 %i.lj, label %bb.cw, label %bb.cx, !prof !13

bb.cw:                                            ; preds = %bb.cv
  %i.ll = load i64, ptr %i.lk, align 8, !range !22, !noundef !10
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ln = load i64, ptr %i.lm, align 8
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.ll, i64 %i.ln) #49
          to label %bb.ab unwind label %bb.co

bb.cx:                                            ; preds = %bb.cv
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.lp = load ptr, ptr %i.lo, align 8, !nonnull !10, !noundef !10 ; 4 uses
  %i.lq = load i64, ptr %i.lk, align 8, !range !16, !noundef !10 ; 2 uses
  %i.lr = icmp samesign ugt i64 %i.lq, 44
  call void @llvm.assume(i1 %i.lr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(45) %i.lp, ptr noundef nonnull align 1 dereferenceable(45) @205, i64 45, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lp, i64 45
  store ptr %i.lp, ptr %i.ad, align 8
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 %i.lq, ptr %i.lt, align 8
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.lp, ptr %i.lu, align 8
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store ptr %i.ls, ptr %i.lv, align 8
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.ad)
          to label %bb.cy unwind label %bb.co

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.lw = load i64, ptr %i.kl, align 8, !alias.scope !2392, !noundef !10 ; 3 uses
  %i.lx = load i64, ptr %i.bh, align 8, !range !16, !alias.scope !2392, !noundef !10
  %i.ly = icmp eq i64 %i.lw, %i.lx
  br i1 %i.ly, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bh) #52
          to label %bb.da unwind label %bb.co

bb.da:                                            ; preds = %bb.cy, %bb.cz
  %i.lz = load ptr, ptr %i.kk, align 8, !alias.scope !2392, !nonnull !10, !noundef !10
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.lw
  store i8 10, ptr %i.ma, align 1
  %i.mb = add i64 %i.lw, 1                        ; 2 uses
  store i64 %i.mb, ptr %i.kl, align 8, !alias.scope !2392
  %i.mc = load ptr, ptr %i.kk, align 8, !nonnull !10, !noundef !10
  %i.md = load atomic i32, ptr @_RNvNtCs8frGy5WneL6_4fish4flog7FLOG_FD monotonic, align 4, !noalias !2393 ; 2 uses
  %i.me = icmp slt i32 %i.md, 0
  br i1 %i.me, label %_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl.exit185, label %bb.db

bb.db:                                            ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2393
  invoke void @_RNvCs3pTQYeTDvAj_9fish_util11write_to_fd(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.mc, i64 noundef range(i64 0, -9223372036854775808) %i.mb, i32 noundef %i.md)
          to label %.noexc184 unwind label %bb.co

.noexc184:                                        ; preds = %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2393
  br label %_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl.exit185

_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl.exit185: ; preds = %.noexc184, %bb.da
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bh)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit187 unwind label %bb.dc

bb.dc:                                            ; preds = %_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl.exit185
  %i.mf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bh)
          to label %common.resume unwind label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.mg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit187: ; preds = %_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl.exit185
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  br label %bb.cm

bb.de:                                            ; preds = %bb.cj
  %i.mh = load ptr, ptr %i.jh, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.mi = icmp eq i64 %i.jj, 0
  br i1 %i.mi, label %bb.ba, label %bb.dg

bb.df:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  %i.mj = getelementptr inbounds nuw i8, ptr %i.je, i64 24
  %i.mk = call noundef i8 @_RNvNtNtCs8frGy5WneL6_4fish5input7binding22match_key_event_to_key(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(20) %i.mj, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.bv) ; 3 uses
  store i8 %i.mk, ptr %i.bf, align 1
  %.not133 = icmp eq i8 %i.mk, -1
  br i1 %.not133, label %bb.gn, label %bb.gm

bb.dg:                                            ; preds = %bb.de
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 10 uses
  %i.mm = load i64, ptr %i.ml, align 8, !noundef !10 ; 3 uses
  %i.mn = icmp ult i64 %i.mm, %i.jj
  br i1 %i.mn, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %i.mm
  %i.mp = load i32, ptr %i.mo, align 4, !range !24, !noundef !10 ; 2 uses
  %i.mq = call noundef i64 @_RNvMs1_NtCs8frGy5WneL6_4fish3keyNtB5_3Key16from_single_char(i32 noundef %i.mp) ; 5 uses
  %.sroa.01.0.extract.trunc = trunc i64 %i.mq to i32
  %.sroa.5.0.extract.shift = lshr i64 %i.mq, 32
  %.sroa.5.0.extract.trunc = trunc i64 %.sroa.5.0.extract.shift to i8
  %.sroa.6.0.extract.shift = lshr i64 %i.mq, 40
  %.sroa.6.0.extract.trunc = trunc i64 %.sroa.6.0.extract.shift to i8
  %.sroa.7.0.extract.shift = lshr i64 %i.mq, 48
  %.sroa.7.0.extract.trunc = trunc i64 %.sroa.7.0.extract.shift to i8
  %.sroa.8.0.extract.shift = lshr i64 %i.mq, 56
  %.sroa.8.0.extract.trunc = trunc nuw i64 %.sroa.8.0.extract.shift to i8
  %i.mr = load i32, ptr %i.bv, align 8, !range !24, !alias.scope !2394, !noundef !10 ; 2 uses
  %i.ms = icmp eq i32 %i.mr, %.sroa.01.0.extract.trunc
  %i.mt = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %3 = load i8, ptr %i.mt, align 4, !range !15    ; 2 uses
  %4 = icmp eq i8 %3, %.sroa.5.0.extract.trunc
  %or.cond = select i1 %i.ms, i1 %4, i1 false
  %5 = getelementptr inbounds nuw i8, ptr %i.bv, i64 5
  %6 = load i8, ptr %5, align 1, !range !15       ; 2 uses
  %7 = icmp eq i8 %6, %.sroa.6.0.extract.trunc
  %or.cond20 = select i1 %or.cond, i1 %7, i1 false
  %8 = getelementptr inbounds nuw i8, ptr %i.bv, i64 6
  %9 = load i8, ptr %8, align 2, !range !15       ; 2 uses
  %10 = icmp eq i8 %9, %.sroa.7.0.extract.trunc
  %or.cond23 = select i1 %or.cond20, i1 %10, i1 false
  %11 = getelementptr inbounds nuw i8, ptr %i.bv, i64 7
  %12 = load i8, ptr %11, align 1, !range !15     ; 2 uses
  %i.mu = icmp eq i8 %12, %.sroa.8.0.extract.trunc
  %or.cond26 = select i1 %or.cond23, i1 %i.mu, i1 false
  br i1 %or.cond26, label %bb.dj, label %_RNvXsr_NtCs8frGy5WneL6_4fish3keyNtB5_3KeyNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread

bb.di:                                            ; preds = %bb.dg
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.mm, i64 noundef %i.jj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @206) #53
  unreachable

_RNvXsr_NtCs8frGy5WneL6_4fish3keyNtB5_3KeyNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.dh
  %13 = trunc nuw i8 %3 to i1
  %i.mv = xor i1 %13, true
  %14 = trunc nuw i8 %6 to i1
  %or.cond24 = select i1 %i.mv, i1 %14, i1 false
  br i1 %or.cond24, label %bb.dk, label %bb.ba

bb.dj:                                            ; preds = %bb.dh
  %i.mw = load i64, ptr %i.ml, align 8, !noundef !10 ; 2 uses
  %i.mx = icmp eq i64 %i.mw, -1
  br i1 %i.mx, label %bb.fl, label %bb.fk

bb.dk:                                            ; preds = %_RNvXsr_NtCs8frGy5WneL6_4fish3keyNtB5_3KeyNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread
  %15 = trunc nuw i8 %9 to i1
  %16 = trunc nuw i8 %12 to i1
  %i.my = select i1 %15, i1 true, i1 %16
  %i.mz = icmp ne i32 %i.mp, 27
  %or.cond10.not = or i1 %i.mz, %i.my
  br i1 %or.cond10.not, label %bb.ba, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.na = load i64, ptr %i.ml, align 8, !noundef !10 ; 2 uses
  %i.nb = add nuw i64 %i.na, 1                    ; 3 uses
  %i.nc = icmp eq i64 %i.na, -1
  br i1 %i.nc, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.nd = icmp eq i64 %i.nb, %i.jj
  br i1 %i.nd, label %bb.do, label %bb.dp

bb.dn:                                            ; preds = %bb.dl
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @207) #53
  unreachable

bb.do:                                            ; preds = %bb.dm
  %i.ne = load i64, ptr %i.bw, align 8, !noundef !10 ; 2 uses
  %i.nf = icmp eq i64 %i.ne, -1
  br i1 %i.nf, label %bb.et, label %bb.es

bb.dp:                                            ; preds = %bb.dm
  %i.ng = icmp ult i64 %i.nb, %i.jj
  br i1 %i.ng, label %bb.dq, label %bb.ba

bb.dq:                                            ; preds = %bb.dp
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %i.nb
  %i.ni = load i32, ptr %i.nh, align 4, !range !24, !noundef !10
  %i.nj = call noundef i64 @_RNvMs1_NtCs8frGy5WneL6_4fish3keyNtB5_3Key16from_single_char(i32 noundef %i.ni)
  %.sroa.096.0.extract.trunc = trunc i64 %i.nj to i32
  %i.nk = load i32, ptr %i.bv, align 8, !range !24, !noundef !10
  %i.nl = icmp eq i32 %i.nk, %.sroa.096.0.extract.trunc
  br i1 %i.nl, label %bb.dr, label %bb.ba

bb.dr:                                            ; preds = %bb.dq
  %i.nm = load i64, ptr %i.ml, align 8, !noundef !10 ; 2 uses
  %i.nn = icmp ugt i64 %i.nm, -3
  br i1 %i.nn, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.no = add nuw i64 %i.nm, 2                    ; 2 uses
  store i64 %i.no, ptr %i.ml, align 8
  %i.np = icmp eq i64 %i.no, %i.jj
  br i1 %i.np, label %bb.du, label %bb.dv

bb.dt:                                            ; preds = %bb.dr
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @208) #53
  unreachable

bb.du:                                            ; preds = %bb.ds
  %i.nq = load i64, ptr %i.bw, align 8, !noundef !10 ; 2 uses
  %i.nr = icmp eq i64 %i.nq, -1
  br i1 %i.nr, label %bb.dx, label %bb.dw

bb.dv:                                            ; preds = %bb.ds, %bb.dw
  %i.ns = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8frGy5WneL6_4fish4flog10categories6reader, i64 40) monotonic, align 8
  %.not125 = icmp eq i8 %i.ns, 0
  br i1 %.not125, label %bb.ba, label %bb.dy

bb.dw:                                            ; preds = %bb.du
  %i.nt = add nuw i64 %i.nq, 1
  store i64 %i.nt, ptr %i.bw, align 8
  store i64 0, ptr %i.ml, align 8
  br label %bb.dv

bb.dx:                                            ; preds = %bb.du
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @209) #53
  unreachable

bb.dy:                                            ; preds = %bb.dv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  store i64 0, ptr %i.at, align 8
  %i.nu = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 5 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.nu, align 8
  %i.nv = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 6 uses
  store i64 0, ptr %i.nv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  invoke void @_RNvXs_NtCs8frGy5WneL6_4fish4flogRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB4_16FloggableDisplay11to_flog_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.as, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8frGy5WneL6_4fish4flog10categories6reader, i64 24))
          to label %bb.eb unwind label %bb.ea

bb.dz:                                            ; preds = %bb.eh, %bb.ea
  %.pn = phi { ptr, i32 } [ %i.ow, %bb.eh ], [ %i.nw, %bb.ea ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.at) #50
          to label %common.resume unwind label %bb.ac

bb.ea:                                            ; preds = %bb.er, %bb.ep, %bb.eg, %bb.ef, %bb.ed, %bb.en, %bb.eb, %bb.dy
  %i.nw = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

bb.eb:                                            ; preds = %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.nx = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.ny = load ptr, ptr %i.nx, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %i.nz = load i64, ptr %i.as, align 8, !range !16, !noundef !10
  %i.oa = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.ob = load i64, ptr %i.oa, align 8, !noundef !10 ; 2 uses
  %i.oc = icmp sgt i64 %i.ob, -1
  call void @llvm.assume(i1 %i.oc)
  %i.od = getelementptr inbounds nuw i8, ptr %i.ny, i64 %i.ob
  store ptr %i.ny, ptr %i.p, align 8
  %i.oe = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %i.nz, ptr %i.oe, align 8
  %i.of = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.ny, ptr %i.of, align 8
  %i.og = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr %i.od, ptr %i.og, align 8
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.at, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.p)
          to label %bb.ec unwind label %bb.ea

bb.ec:                                            ; preds = %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  %i.oh = load i64, ptr %i.nv, align 8, !alias.scope !2395, !noundef !10 ; 4 uses
  %i.oi = load i64, ptr %i.at, align 8, !range !16, !alias.scope !2395, !noundef !10
  %i.oj = icmp eq i64 %i.oh, %i.oi
  br i1 %i.oj, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.at) #52
          to label %bb.ee unwind label %bb.ea

bb.ee:                                            ; preds = %bb.ec, %bb.ed
  %i.ok = load ptr, ptr %i.nu, align 8, !alias.scope !2395, !nonnull !10, !noundef !10
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 %i.oh
  store i8 58, ptr %i.ol, align 1
  %i.om = add i64 %i.oh, 1                        ; 3 uses
  store i64 %i.om, ptr %i.nv, align 8, !alias.scope !2395
  %i.on = load i64, ptr %i.at, align 8, !range !16, !alias.scope !2396, !noundef !10
  %i.oo = icmp eq i64 %i.om, %i.on
  br i1 %i.oo, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.at) #52
          to label %bb.eg unwind label %bb.ea

bb.eg:                                            ; preds = %bb.ee, %bb.ef
  %i.op = load ptr, ptr %i.nu, align 8, !alias.scope !2396, !nonnull !10, !noundef !10
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 %i.om
  store i8 32, ptr %i.oq, align 1
  %i.or = add i64 %i.oh, 2
  store i64 %i.or, ptr %i.nv, align 8, !alias.scope !2396
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  store ptr %i.bv, ptr %i.ap, align 8
  %.sroa.471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr @_RNvXs2_NtCs8frGy5WneL6_4fish3keyNtB5_3KeyNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.471.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aq, ptr noundef nonnull @210, ptr noundef nonnull %i.ap)
          to label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs8frGy5WneL6_4fish.exit194 unwind label %bb.ea

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs8frGy5WneL6_4fish.exit194: ; preds = %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  %i.os = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.ot = load ptr, ptr %i.os, align 8, !nonnull !10, !noundef !10
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.ov = load i64, ptr %i.ou, align 8, !noundef !10 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, i64 noundef %i.ov, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ei unwind label %bb.eh

bb.eh:                                            ; preds = %bb.el, %bb.ej, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs8frGy5WneL6_4fish.exit194
  %i.ow = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ar) #50
          to label %bb.dz unwind label %bb.ac

bb.ei:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs8frGy5WneL6_4fish.exit194
  %i.ox = load i64, ptr %i.o, align 8, !range !12, !noundef !10
  %i.oy = trunc nuw i64 %i.ox to i1
  %i.oz = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  br i1 %i.oy, label %bb.ej, label %bb.ek, !prof !13

bb.ej:                                            ; preds = %bb.ei
  %i.pa = load i64, ptr %i.oz, align 8, !range !22, !noundef !10
  %i.pb = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.pc = load i64, ptr %i.pb, align 8
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.pa, i64 %i.pc) #49
          to label %bb.ab unwind label %bb.eh

bb.ek:                                            ; preds = %bb.ei
  %i.pd = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.pe = load ptr, ptr %i.pd, align 8, !nonnull !10, !noundef !10 ; 4 uses
  %i.pf = load i64, ptr %i.oz, align 8, !range !16, !noundef !10 ; 2 uses
  %i.pg = icmp ule i64 %i.ov, %i.pf
  call void @llvm.assume(i1 %i.pg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %.not126 = icmp eq i64 %i.ov, 0
  br i1 %.not126, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.em, %bb.ek
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pe, i64 %i.ov
  store ptr %i.pe, ptr %i.n, align 8
  %i.pi = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %i.pf, ptr %i.pi, align 8
end_hunk_1
