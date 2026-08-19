inline.NumInlined: 208
inline.NumDeleted: 81
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvNtCsqiF3OZxLbD_3mbe6parser12parse_repeat:bb.a
  %i.cl = and i64 %i.ck, 1
  %.not.i.i.i.i120 = icmp eq i64 %i.cl, 0
  br i1 %.not.i.i.i.i120, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt7LiteralECsqiF3OZxLbD_3mbe.exit124.thread, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.cm = getelementptr i8, ptr %.sroa.6.sroa.7.0.copyload, i64 -1 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cm) ]
  %i.cn = invoke noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCsqiF3OZxLbD_3mbe(ptr noundef nonnull %i.cm)
          to label %.noexc121 unwind label %.loopexit.split-lp

.noexc121:                                        ; preds = %bb.az
  %i.co = sub nsw i64 0, %i.cn
  %i.cp = getelementptr inbounds i8, ptr %i.cm, i64 %i.co ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.cp, ptr %i.b, align 8
  %i.cq = load atomic i64, ptr %i.cp acquire, align 8
  %i.cr = icmp eq i64 %i.cq, 2
  br i1 %i.cr, label %bb.ba, label %.noexc122, !prof !4

bb.ba:                                            ; preds = %.noexc121
  invoke void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %.noexc122 unwind label %.loopexit.split-lp

.noexc122:                                        ; preds = %bb.ba, %.noexc121
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.cp, ptr %i.a, align 8
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCsqiF3OZxLbD_3mbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc123 unwind label %.loopexit.split-lp

.noexc123:                                        ; preds = %.noexc122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt7LiteralECsqiF3OZxLbD_3mbe.exit124.thread

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt7LiteralECsqiF3OZxLbD_3mbe.exit124: ; preds = %bb.v, %bb.w
  %.sroa.063.0 = phi i32 [ %.sroa.074.0.copyload, %bb.w ], [ -1, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store i32 %.sroa.063.0, ptr %0, align 8
  %.sroa.060.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %.sroa.060.sroa.4.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(92) %.sroa.565, i64 92, i1 false)
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 %.sroa.057.0, ptr %.sroa.461.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.e

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt7LiteralECsqiF3OZxLbD_3mbe.exit124.thread: ; preds = %.noexc123, %bb.ay, %bb.f, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt7LiteralECsqiF3OZxLbD_3mbe.exit124.thread181, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt7LiteralECsqiF3OZxLbD_3mbe.exit124.thread178
  %.sroa.071.15177 = phi i1 [ %i.ci, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt7LiteralECsqiF3OZxLbD_3mbe.exit124.thread178 ], [ true, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt7LiteralECsqiF3OZxLbD_3mbe.exit124.thread181 ], [ true, %bb.f ], [ true, %bb.ay ], [ true, %.noexc123 ]
  %i.cs = load i32, ptr %i.s, align 8, !range !75, !noundef !22
  %i.ct = icmp eq i32 %i.cs, 2
  br i1 %i.ct, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt7LiteralECsqiF3OZxLbD_3mbe.exit124.thread
  br i1 %.sroa.071.15177, label %bb.bd, label %bb.e

bb.bc:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt7LiteralECsqiF3OZxLbD_3mbe.exit124.thread
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsqiF3OZxLbD_3mbe6parser9SeparatorEBF_(ptr noalias nofree noundef align 8 dereferenceable(96) %i.s)
  br label %bb.e

bb.bd:                                            ; preds = %bb.bb
  call void @_RNvXNtCs474hSbRjvii_8arrayvec8arrayvecINtB2_8ArrayVecNtCs4dcH4YgJDq_2tt5PunctKj3_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsqiF3OZxLbD_3mbe(ptr noalias nofree noundef nonnull align 4 dereferenceable(88) %i.t)
  br label %bb.e

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtCs4dcH4YgJDq_2tt5PunctKj3_EECsqiF3OZxLbD_3mbe.exit126: ; preds = %bb.bg, %bb.bf, %bb.be
  resume { ptr, i32 } %.pn88190

.thread184:                                       ; preds = %.thread166.loopexit, %.loopexit.split-lp, %.loopexit, %.thread166.thread316, %.thread156.loopexit, %.thread156.loopexit.split-lp, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtCs4dcH4YgJDq_2tt5PunctKj3_EECsqiF3OZxLbD_3mbe.exit104, %bb.s, %bb.l
  %.pn88190 = phi { ptr, i32 } [ %lpad.loopexit.split-lp202318, %.thread166.thread316 ], [ %.pn84, %bb.l ], [ %lpad.thr_comm.split-lp165, %bb.s ], [ %.pn82, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtCs4dcH4YgJDq_2tt5PunctKj3_EECsqiF3OZxLbD_3mbe.exit104 ], [ %lpad.loopexit197, %.thread156.loopexit ], [ %lpad.loopexit.split-lp198, %.thread156.loopexit.split-lp ], [ %lpad.loopexit201, %.thread166.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ]
  %.sroa.071.1188 = phi i8 [ 1, %.thread166.thread316 ], [ 1, %bb.l ], [ 1, %bb.s ], [ %.sroa.071.10, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtCs4dcH4YgJDq_2tt5PunctKj3_EECsqiF3OZxLbD_3mbe.exit104 ], [ 1, %.thread156.loopexit ], [ %.sroa.071.13, %.thread156.loopexit.split-lp ], [ 1, %.thread166.loopexit ], [ 1, %.loopexit.split-lp ], [ 1, %.loopexit ]
  %i.cu = load i32, ptr %i.s, align 8, !range !75, !noundef !22
  %i.cv = icmp eq i32 %i.cu, 2
  br i1 %i.cv, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %.thread184
  %i.cw = trunc nuw i8 %.sroa.071.1188 to i1
  br i1 %i.cw, label %bb.bg, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtCs4dcH4YgJDq_2tt5PunctKj3_EECsqiF3OZxLbD_3mbe.exit126

bb.bf:                                            ; preds = %.thread184
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsqiF3OZxLbD_3mbe6parser9SeparatorEBF_(ptr noalias nofree noundef align 8 dereferenceable(96) %i.s) #22
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtCs4dcH4YgJDq_2tt5PunctKj3_EECsqiF3OZxLbD_3mbe.exit126 unwind label %bb.t

bb.bg:                                            ; preds = %bb.be
  invoke void @_RNvXNtCs474hSbRjvii_8arrayvec8arrayvecINtB2_8ArrayVecNtCs4dcH4YgJDq_2tt5PunctKj3_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsqiF3OZxLbD_3mbe(ptr noalias nofree noundef nonnull align 4 dereferenceable(88) %i.t)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtCs4dcH4YgJDq_2tt5PunctKj3_EECsqiF3OZxLbD_3mbe.exit126 unwind label %bb.t
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvNtCsqiF3OZxLbD_3mbe6parser13try_eat_comma(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 6 uses
  %i.b = alloca [88 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs0_NtCs4dcH4YgJDq_2tt4iterNtB5_6TtIter4peek(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0)
  %i.c = load i64, ptr %i.b, align 8, !range !146, !noundef !22 ; 2 uses
  %.not9 = icmp eq i64 %i.c, -2
  br i1 %.not9, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4dcH4YgJDq_2tt4iter9TtElementEECsqiF3OZxLbD_3mbe.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not10 = icmp eq i64 %i.c, -1                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i32, ptr %i.d, align 8, !range !96  ; 2 uses
  %i.f = icmp eq i32 %i.e, 1
  %or.cond = select i1 %.not10, i1 %i.f, i1 false
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.h = load i32, ptr %i.g, align 4, !range !151
  %i.i = icmp eq i32 %i.h, 44
  %or.cond7 = select i1 %or.cond, i1 %i.i, i1 false ; 2 uses
  br i1 %or.cond7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %.not10, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4dcH4YgJDq_2tt4iter9TtElementEECsqiF3OZxLbD_3mbe.exit.sink.split, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4dcH4YgJDq_2tt4iter9TtElementEECsqiF3OZxLbD_3mbe.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs3_NtCs4dcH4YgJDq_2tt4iterNtB5_6TtIterNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.val1.i.i12 = load ptr, ptr %i.k, align 8, !alias.scope !152
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECsqiF3OZxLbD_3mbe(i32 1, ptr %.val1.i.i12)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4dcH4YgJDq_2tt4iter9TtElementEECsqiF3OZxLbD_3mbe.exit13 unwind label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !range !146, !alias.scope !157, !noundef !22
  %cond = icmp eq i64 %i.l, -1
  br i1 %cond, label %bb.g, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4dcH4YgJDq_2tt4iter9TtElementEECsqiF3OZxLbD_3mbe.exit20

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val.i.i14 = load i32, ptr %i.m, align 8, !range !96, !alias.scope !160, !noundef !22
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val1.i.i15 = load ptr, ptr %i.n, align 8, !alias.scope !160
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECsqiF3OZxLbD_3mbe(i32 %.val.i.i14, ptr %.val1.i.i15)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4dcH4YgJDq_2tt4iter9TtElementEECsqiF3OZxLbD_3mbe.exit20 unwind label %bb.e

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4dcH4YgJDq_2tt4iter9TtElementEECsqiF3OZxLbD_3mbe.exit20: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4dcH4YgJDq_2tt4iter9TtElementEECsqiF3OZxLbD_3mbe.exit.sink.split

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4dcH4YgJDq_2tt4iter9TtElementEECsqiF3OZxLbD_3mbe.exit.sink.split: ; preds = %bb.c, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4dcH4YgJDq_2tt4iter9TtElementEECsqiF3OZxLbD_3mbe.exit20
  %.sink = phi i32 [ 1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4dcH4YgJDq_2tt4iter9TtElementEECsqiF3OZxLbD_3mbe.exit20 ], [ %i.e, %bb.c ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.val1.i.i = load ptr, ptr %i.o, align 8
  tail call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECsqiF3OZxLbD_3mbe(i32 %.sink, ptr %.val1.i.i), !noalias !22
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4dcH4YgJDq_2tt4iter9TtElementEECsqiF3OZxLbD_3mbe.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4dcH4YgJDq_2tt4iter9TtElementEECsqiF3OZxLbD_3mbe.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4dcH4YgJDq_2tt4iter9TtElementEECsqiF3OZxLbD_3mbe.exit.sink.split, %bb.c, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ %or.cond7, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4dcH4YgJDq_2tt4iter9TtElementEECsqiF3OZxLbD_3mbe.exit.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %.sroa.0.0

bb.h:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4dcH4YgJDq_2tt4iter9TtElementEECsqiF3OZxLbD_3mbe.exit13: ; preds = %bb.e
  resume { ptr, i32 } %i.j
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsqiF3OZxLbD_3mbe6parser16parse_rule_style(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [88 x i8], align 8                ; 5 uses
  %i.f = alloca [88 x i8], align 8                ; 6 uses
  %i.g = alloca [88 x i8], align 8                ; 5 uses
  %i.h = alloca [88 x i8], align 8                ; 6 uses
  %i.i = alloca [88 x i8], align 8                ; 9 uses
  %i.j = alloca [88 x i8], align 8                ; 6 uses
  %i.k = alloca [88 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvMs0_NtCs4dcH4YgJDq_2tt4iterNtB5_6TtIter4peek(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
  %i.l = load i64, ptr %i.k, align 8, !range !146, !noundef !22 ; 3 uses
  %.not233 = icmp eq i64 %i.l, -2
  br i1 %.not233, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not234 = icmp eq i64 %i.l, -1
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %i.n = load i32, ptr %i.m, align 8, !range !96
  %i.o = icmp eq i32 %i.n, 2
  %or.cond = select i1 %.not234, i1 %i.o, i1 false
  br i1 %or.cond, label %bb.c, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECsqiF3OZxLbD_3mbe.exit.thread

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECsqiF3OZxLbD_3mbe.exit: ; preds = %.noexc292
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.pr.pre = load i64, ptr %i.k, align 8          ; 2 uses
  %.not = icmp eq i64 %.pr.pre, -2
  br i1 %.not, label %.thread, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECsqiF3OZxLbD_3mbe.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.p, align 8, !nonnull !22, !noundef !22 ; 4 uses
  %i.q = icmp eq ptr %.sroa.0.0.copyload, @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols7unsafe_10SYMBOL_STR
  br i1 %i.q, label %bb.i, label %bb.e

bb.d:                                             ; preds = %bb.l, %bb.m, %bb.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECsqiF3OZxLbD_3mbe(ptr nonnull %.sroa.0.0.copyload) #22
          to label %.thread401 unwind label %bb.o

bb.e:                                             ; preds = %bb.c
  %i.s = ptrtoint ptr %.sroa.0.0.copyload to i64
  %i.t = and i64 %i.s, 1
  %.not.i.i.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECsqiF3OZxLbD_3mbe.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr i8, ptr %.sroa.0.0.copyload, i64 -1 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  %i.v = invoke noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCsqiF3OZxLbD_3mbe(ptr noundef nonnull %i.u)
          to label %.noexc291 unwind label %bb.h

.noexc291:                                        ; preds = %bb.f
  %i.w = sub nsw i64 0, %i.v
  %i.x = getelementptr inbounds i8, ptr %i.u, i64 %i.w ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.x, ptr %i.d, align 8
  %i.y = load atomic i64, ptr %i.x acquire, align 8
  %i.z = icmp eq i64 %i.y, 2
  br i1 %i.z, label %bb.g, label %.noexc292, !prof !4

bb.g:                                             ; preds = %.noexc291
  invoke void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d)
          to label %.noexc292 unwind label %bb.h

.noexc292:                                        ; preds = %bb.g, %.noexc291
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.x, ptr %i.c, align 8
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCsqiF3OZxLbD_3mbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECsqiF3OZxLbD_3mbe.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %.noexc292
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load i64, ptr %i.k, align 8, !range !146 ; 2 uses
  %.not237 = icmp eq i64 %.pre, -2
  br i1 %.not237, label %bb.p, label %.thread401

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RNvXs3_NtCs4dcH4YgJDq_2tt4iterNtB5_6TtIterNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %bb.j unwind label %bb.d

bb.j:                                             ; preds = %bb.i
  %i.ab = load i64, ptr %i.j, align 8, !range !146, !noundef !22 ; 2 uses
  %.not235 = icmp eq i64 %i.ab, -2
  br i1 %.not235, label %bb.m, label %bb.k, !prof !4

bb.k:                                             ; preds = %bb.j
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5355.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.5355.0.copyload = load ptr, ptr %.sroa.5355.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.ac = icmp eq i64 %i.ab, -1
  br i1 %i.ac, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECsqiF3OZxLbD_3mbe(i32 %.sroa.4.0.copyload, ptr %.sroa.5355.0.copyload)
          to label %.thread unwind label %bb.d

bb.m:                                             ; preds = %bb.j
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 14, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #21
          to label %bb.n unwind label %bb.d

bb.n:                                             ; preds = %bb.am, %bb.ab, %bb.m
  unreachable

.thread:                                          ; preds = %bb.k, %bb.l, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECsqiF3OZxLbD_3mbe.exit, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECsqiF3OZxLbD_3mbe.exit.thread, %bb.r, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvMs0_NtCs4dcH4YgJDq_2tt4iterNtB5_6TtIter4peek(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
  %i.ad = load i64, ptr %i.i, align 8, !range !146, !noundef !22 ; 2 uses
  %.not239 = icmp eq i64 %i.ad, -2
  br i1 %.not239, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECsqiF3OZxLbD_3mbe.exit352, label %bb.s

bb.o:                                             ; preds = %bb.q, %bb.d, %bb.x, %bb.ai
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #23
  unreachable

.thread401:                                       ; preds = %bb.d, %bb.h
  %.pn404 = phi { ptr, i32 } [ %i.aa, %bb.h ], [ %i.r, %bb.d ] ; 2 uses
  %i.af = phi i64 [ %.pre, %bb.h ], [ -1, %bb.d ]
  %i.ag = icmp ne i64 %i.af, -1
  %i.ah = load i32, ptr %i.m, align 8, !range !96 ; 2 uses
  %i.ai = icmp eq i32 %i.ah, 2
  %or.cond11 = select i1 %i.ag, i1 true, i1 %i.ai
  br i1 %or.cond11, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.x, %bb.ai, %bb.q, %.thread401, %bb.h
  %.pn247.pn = phi { ptr, i32 } [ %i.aa, %bb.h ], [ %.pn404, %bb.q ], [ %.pn404, %.thread401 ], [ %i.au, %bb.x ], [ %i.bc, %bb.ai ]
  resume { ptr, i32 } %.pn247.pn

bb.q:                                             ; preds = %.thread401
  %.val281 = load ptr, ptr %i.p, align 8
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECsqiF3OZxLbD_3mbe(i32 %i.ah, ptr %.val281) #22
          to label %bb.p unwind label %bb.o

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECsqiF3OZxLbD_3mbe.exit.thread: ; preds = %bb.b, %bb.e, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECsqiF3OZxLbD_3mbe.exit
  %.pr400 = phi i64 [ %.pr.pre, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECsqiF3OZxLbD_3mbe.exit ], [ %i.l, %bb.b ], [ -1, %bb.e ]
  %i.aj = icmp ne i64 %.pr400, -1
  %i.ak = load i32, ptr %i.m, align 8, !range !96 ; 2 uses
  %i.al = icmp eq i32 %i.ak, 2
  %or.cond15 = select i1 %i.aj, i1 true, i1 %i.al
  br i1 %or.cond15, label %.thread, label %bb.r

bb.r:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECsqiF3OZxLbD_3mbe.exit.thread
  %i.am = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.val279 = load ptr, ptr %i.am, align 8
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECsqiF3OZxLbD_3mbe(i32 %i.ak, ptr %.val279)
  br label %.thread

bb.s:                                             ; preds = %.thread
  %.not240 = icmp eq i64 %i.ad, -1                ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ao = load i32, ptr %i.an, align 8, !range !96 ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 2                    ; 2 uses
  %or.cond20 = select i1 %.not240, i1 %i.ap, i1 false
  br i1 %or.cond20, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  br i1 %.not240, label %.thread405, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECsqiF3OZxLbD_3mbe.exit352

bb.u:                                             ; preds = %bb.s
  %i.aq = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !22, !noundef !22 ; 4 uses
  %i.as = icmp eq ptr %i.ar, @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols4attr10SYMBOL_STR
  br i1 %i.as, label %bb.ah, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.at = icmp eq ptr %i.ar, @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols6derive10SYMBOL_STR
  br i1 %i.at, label %bb.w, label %.thread405.thread

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvXs3_NtCs4dcH4YgJDq_2tt4iterNtB5_6TtIterNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %bb.y unwind label %bb.x

bb.x:                                             ; preds = %bb.ae, %bb.aa, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECsqiF3OZxLbD_3mbe.exit323, %bb.ab, %bb.w
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECsqiF3OZxLbD_3mbe(ptr nonnull %i.ar) #22
          to label %bb.p unwind label %bb.o

bb.y:                                             ; preds = %bb.w
  %i.av = load i64, ptr %i.f, align 8, !range !146, !noundef !22 ; 2 uses
  %.not243 = icmp eq i64 %i.av, -2
  br i1 %.not243, label %bb.ab, label %bb.z, !prof !4

bb.z:                                             ; preds = %bb.y
  %.sroa.4367.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.4367.0.copyload = load i32, ptr %.sroa.4367.0..sroa_idx, align 8
  %.sroa.5369.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.5369.0.copyload = load ptr, ptr %.sroa.5369.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.aw = icmp eq i64 %i.av, -1
  br i1 %i.aw, label %bb.aa, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECsqiF3OZxLbD_3mbe.exit323

bb.aa:                                            ; preds = %bb.z
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECsqiF3OZxLbD_3mbe(i32 %.sroa.4367.0.copyload, ptr %.sroa.5369.0.copyload)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECsqiF3OZxLbD_3mbe.exit323 unwind label %bb.x

bb.ab:                                            ; preds = %bb.y
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 14, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #21
          to label %bb.n unwind label %bb.x

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECsqiF3OZxLbD_3mbe.exit323: ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvMs0_NtCs4dcH4YgJDq_2tt4iterNtB5_6TtIter14expect_subtree(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %bb.ac unwind label %bb.x

bb.ac:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECsqiF3OZxLbD_3mbe.exit323
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.ay = load i64, ptr %i.ax, align 8, !range !163, !noundef !22
  %i.az = icmp eq i64 %i.ay, -1
  br i1 %i.az, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !164
  %i.ba = call noundef dereferenceable_or_null(13) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 1, 0) 13, i64 noundef 1) #20, !noalias !164 ; 3 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 13) #21
          to label %.noexc324 unwind label %bb.x

.noexc324:                                        ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECsqiF3OZxLbD_3mbe.exit352

bb.ag:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.ba, ptr noundef nonnull readonly align 1 dereferenceable(13) @18, i64 13, i1 false), !noalias !170
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECsqiF3OZxLbD_3mbe.exit334

bb.ah:                                            ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvXs3_NtCs4dcH4YgJDq_2tt4iterNtB5_6TtIterNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %bb.aj unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ap, %bb.al, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECsqiF3OZxLbD_3mbe.exit338, %bb.am, %bb.ah
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECsqiF3OZxLbD_3mbe(ptr nonnull %i.ar) #22
          to label %bb.p unwind label %bb.o

bb.aj:                                            ; preds = %bb.ah
  %i.bd = load i64, ptr %i.h, align 8, !range !146, !noundef !22 ; 2 uses
  %.not244 = icmp eq i64 %i.bd, -2
  br i1 %.not244, label %bb.am, label %bb.ak, !prof !4

bb.ak:                                            ; preds = %bb.aj
  %.sroa.4359.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.4359.0.copyload = load i32, ptr %.sroa.4359.0..sroa_idx, align 8
  %.sroa.5361.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.5361.0.copyload = load ptr, ptr %.sroa.5361.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.be = icmp eq i64 %i.bd, -1
  br i1 %i.be, label %bb.al, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECsqiF3OZxLbD_3mbe.exit338

bb.al:                                            ; preds = %bb.ak
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECsqiF3OZxLbD_3mbe(i32 %.sroa.4359.0.copyload, ptr %.sroa.5361.0.copyload)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECsqiF3OZxLbD_3mbe.exit338 unwind label %bb.ai

bb.am:                                            ; preds = %bb.aj
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 14, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #21
          to label %bb.n unwind label %bb.ai

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECsqiF3OZxLbD_3mbe.exit338: ; preds = %bb.ak, %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvMs0_NtCs4dcH4YgJDq_2tt4iterNtB5_6TtIter14expect_subtree(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %bb.an unwind label %bb.ai

bb.an:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECsqiF3OZxLbD_3mbe.exit338
  %i.bf = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.bg = load i64, ptr %i.bf, align 8, !range !163, !noundef !22
  %i.bh = icmp eq i64 %i.bg, -1
  br i1 %i.bh, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !171
  %i.bi = call noundef dereferenceable_or_null(13) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 1, 0) 13, i64 noundef 1) #20, !noalias !171 ; 3 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 13) #21
          to label %.noexc339 unwind label %bb.ai

.noexc339:                                        ; preds = %bb.ap
  unreachable

bb.aq:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECsqiF3OZxLbD_3mbe.exit352

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECsqiF3OZxLbD_3mbe.exit352: ; preds = %bb.af, %bb.aq, %.thread, %bb.aw, %.thread405.thread, %bb.t, %bb.ar
  %.sroa.0.1 = phi i8 [ 0, %bb.aw ], [ 0, %bb.t ], [ 0, %bb.ar ], [ 0, %.thread ], [ 0, %.thread405.thread ], [ 2, %bb.af ], [ 1, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.0.1, ptr %i.bk, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.at

bb.ar:                                            ; preds = %.thread405
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.val277.pre = load ptr, ptr %.phi.trans.insert, align 8
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECsqiF3OZxLbD_3mbe(i32 %i.ao, ptr %.val277.pre)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECsqiF3OZxLbD_3mbe.exit352

bb.as:                                            ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.bi, ptr noundef nonnull readonly align 1 dereferenceable(13) @18, i64 13, i1 false), !noalias !177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECsqiF3OZxLbD_3mbe.exit334

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECsqiF3OZxLbD_3mbe.exit334: ; preds = %bb.as, %bb.ag
  %.sink.in = phi ptr [ %i.bi, %bb.as ], [ %i.ba, %bb.ag ]
  %.sink = ptrtoint ptr %.sink.in to i64
  store i32 1, ptr %0, align 8
  %.sroa.4167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %.sroa.4167.0..sroa_idx, align 4
  %.sroa.5168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink, ptr %.sroa.5168.0..sroa_idx, align 8
  %.sroa.7170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 13, ptr %.sroa.7170.0..sroa_idx, align 8
  %.sroa.8171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %.sroa.8171.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.at

bb.at:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECsqiF3OZxLbD_3mbe.exit334, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECsqiF3OZxLbD_3mbe.exit352
  ret void

.thread405:                                       ; preds = %bb.t
  br i1 %i.ap, label %.thread405.thread, label %bb.ar

.thread405.thread:                                ; preds = %bb.v, %.thread405
  %i.bl = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.val261 = load ptr, ptr %i.bl, align 8, !nonnull !22, !noundef !22 ; 2 uses
  %i.bm = ptrtoint ptr %.val261 to i64
  %i.bn = and i64 %i.bm, 1
  %.not.i.i.i.i351 = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i.i.i351, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECsqiF3OZxLbD_3mbe.exit352, label %bb.au

bb.au:                                            ; preds = %.thread405.thread
  %i.bo = getelementptr i8, ptr %.val261, i64 -1  ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bo) ]
  %i.bp = call noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCsqiF3OZxLbD_3mbe(ptr noundef nonnull %i.bo)
  %i.bq = sub nsw i64 0, %i.bp
  %i.br = getelementptr inbounds i8, ptr %i.bo, i64 %i.bq ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.br, ptr %i.b, align 8
  %i.bs = load atomic i64, ptr %i.br acquire, align 8
  %i.bt = icmp eq i64 %i.bs, 2
  br i1 %i.bt, label %bb.av, label %bb.aw, !prof !4

bb.av:                                            ; preds = %bb.au
  call void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.br, ptr %i.a, align 8
  call void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCsqiF3OZxLbD_3mbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECsqiF3OZxLbD_3mbe.exit352
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_RNvNtCsqiF3OZxLbD_3mbe6parser18is_boolean_literal(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #7 {
_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsqiF3OZxLbD_3mbe.exit4:
  %i.a = load ptr, ptr %0, align 8, !nonnull !22, !noundef !22 ; 2 uses
  %i.b = icmp eq ptr %i.a, @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols5true_10SYMBOL_STR
  %i.c = icmp eq ptr %i.a, @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols6false_10SYMBOL_STR
  %.sroa.0.0 = or i1 %i.b, %i.c
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsqiF3OZxLbD_3mbe6parser18parse_metavar_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [88 x i8], align 8                ; 6 uses
  %i.h = alloca [88 x i8], align 8                ; 7 uses
  %i.i = alloca [88 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 6 uses
  %i.l = alloca [32 x i8], align 8                ; 9 uses
  %.sroa.7 = alloca [20 x i8], align 8            ; 5 uses
  %i.m = alloca [88 x i8], align 8                ; 6 uses
  %i.n = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.9 = alloca [20 x i8], align 8            ; 3 uses
  %i.o = alloca [88 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 11 uses
  %i.q = alloca [32 x i8], align 8                ; 6 uses
  %i.r = alloca [32 x i8], align 8                ; 8 uses
  %i.s = alloca [32 x i8], align 8                ; 6 uses
  %i.t = alloca [32 x i8], align 8                ; 8 uses
  %i.u = alloca [64 x i8], align 8                ; 20 uses
  %i.v = alloca [88 x i8], align 8                ; 7 uses
  %.sroa.16 = alloca [43 x i8], align 1           ; 5 uses
  %i.w = alloca [40 x i8], align 8                ; 20 uses
  %i.x = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.12 = alloca [20 x i8], align 8           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @_RNvMs0_NtCs4dcH4YgJDq_2tt4iterNtB5_6TtIter12expect_ident(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.x, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 28
  %i.z = load i8, ptr %i.y, align 4, !range !127, !noundef !22
  %i.aa = icmp eq i8 %i.z, 2
  br i1 %i.aa, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  store i8 -1, ptr %0, align 8
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECsqiF3OZxLbD_3mbe.exit131

bb.c:                                             ; preds = %bb.a
  %.sroa.0191.0.copyload = load ptr, ptr %i.x, align 8 ; 12 uses
  %.sroa.4192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.4192.0..sroa_idx, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  invoke void @_RNvMs0_NtCs4dcH4YgJDq_2tt4iterNtB5_6TtIter14expect_subtree(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.v, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.w, %bb.cb, %bb.da, %bb.dd, %.thread, %bb.e
  %.pn60 = phi { ptr, i32 } [ %i.ab, %bb.e ], [ %i.ep, %bb.dd ], [ %i.el, %bb.da ], [ %i.do, %bb.cb ], [ %.pn57196, %.thread ], [ %lpad.thr_comm.split-lp, %bb.w ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0191.0.copyload) ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECsqiF3OZxLbD_3mbe(ptr nonnull %.sroa.0191.0.copyload) #22
          to label %bb.dn unwind label %bb.av

bb.e:                                             ; preds = %bb.cg, %bb.ci, %bb.db, %bb.m, %bb.o, %bb.p, %bb.r, %bb.s, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4dcH4YgJDq_2tt4iter9TtElementEECsqiF3OZxLbD_3mbe.exit129, %bb.cw, %bb.ct, %bb.cp, %bb.cl, %bb.bx, %bb.bu, %bb.bn, %bb.c
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

end_hunk_0
