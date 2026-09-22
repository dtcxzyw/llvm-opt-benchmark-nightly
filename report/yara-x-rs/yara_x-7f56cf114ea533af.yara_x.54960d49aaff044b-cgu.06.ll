Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.06?download=true
inline.NumInlined: 4309
inline.NumDeleted: 1921
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_RNvXs1_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB5_8CompilerNtNtNtCs2r1H4NiMXj9_12regex_syntax3hir7visitor7Visitor10visit_post:bb.a
  %i.bbw = add i64 %i.bbv, %.val24.i.i
  store i64 %i.bbw, ptr %.sroa.512.0..sroa_idx.i.i, align 8, !alias.scope !6585, !noalias !6580
  %i.bbx = getelementptr i8, ptr %.sroa.08.054.i.i, i64 8
  %.sroa.08.0.val.i.i = load ptr, ptr %i.bbx, align 8, !noalias !6563 ; 2 uses
  %.sroa.08.0.val23.i.i = load i64, ptr %i.bbf, align 8, !noalias !6563 ; 4 uses
  %i.bby = load i8, ptr %i.awx, align 8, !range !46, !alias.scope !6586, !noalias !6580, !noundef !9
  %i.bbz = trunc nuw i8 %i.bby to i1
  br i1 %i.bbz, label %bb.oj, label %_RNvMs5_NtNtCs2r1H4NiMXj9_12regex_syntax3hir7literalNtB5_7Literal6extend.exit31.i.i

bb.oj:                                            ; preds = %bb.oi
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.08.0.val.i.i) ]
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k, i64 noundef %.sroa.08.0.val23.i.i)
          to label %.noexc30.i.i unwind label %bb.or, !noalias !6563

.noexc30.i.i:                                     ; preds = %bb.oj
  %i.bca = load i64, ptr %.sroa.512.0..sroa_idx.i.i, align 8, !alias.scope !6587, !noalias !6580, !noundef !9 ; 3 uses
  %i.bcb = icmp sgt i64 %i.bca, -1
  call void @llvm.assume(i1 %i.bcb)
  %.not.i.i27.i.i = icmp eq i64 %.sroa.08.0.val23.i.i, 0
  br i1 %.not.i.i27.i.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs7gfv9tzbXmh_6yara_x.exit.i29.i.i, label %bb.ok

bb.ok:                                            ; preds = %.noexc30.i.i
  %i.bcc = load ptr, ptr %.sroa.411.0..sroa_idx.i.i, align 8, !alias.scope !6587, !noalias !6580, !nonnull !9, !noundef !9
  %i.bcd = getelementptr inbounds nuw i8, ptr %i.bcc, i64 %i.bca
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bcd, ptr nonnull readonly align 1 %.sroa.08.0.val.i.i, i64 %.sroa.08.0.val23.i.i, i1 false), !noalias !6563
  %.pre.i.i28.i.i = load i64, ptr %.sroa.512.0..sroa_idx.i.i, align 8, !alias.scope !6587, !noalias !6580
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs7gfv9tzbXmh_6yara_x.exit.i29.i.i

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs7gfv9tzbXmh_6yara_x.exit.i29.i.i: ; preds = %bb.ok, %.noexc30.i.i
  %i.bce = phi i64 [ %.pre.i.i28.i.i, %bb.ok ], [ %i.bca, %.noexc30.i.i ]
  %i.bcf = add i64 %i.bce, %.sroa.08.0.val23.i.i
  store i64 %i.bcf, ptr %.sroa.512.0..sroa_idx.i.i, align 8, !alias.scope !6587, !noalias !6580
  br label %_RNvMs5_NtNtCs2r1H4NiMXj9_12regex_syntax3hir7literalNtB5_7Literal6extend.exit31.i.i

_RNvMs5_NtNtCs2r1H4NiMXj9_12regex_syntax3hir7literalNtB5_7Literal6extend.exit31.i.i: ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs7gfv9tzbXmh_6yara_x.exit.i29.i.i, %bb.oi
  %i.bcg = getelementptr inbounds nuw i8, ptr %.sroa.08.054.i.i, i64 24
  %i.bch = load i8, ptr %i.bcg, align 8, !range !46, !noalias !6563, !noundef !9
  %i.bci = trunc nuw i8 %i.bch to i1
  br i1 %i.bci, label %bb.om, label %bb.ol

bb.ol:                                            ; preds = %_RNvMs5_NtNtCs2r1H4NiMXj9_12regex_syntax3hir7literalNtB5_7Literal6extend.exit31.i.i
  store i8 0, ptr %i.awx, align 8, !noalias !6580
  br label %bb.om

bb.om:                                            ; preds = %bb.ol, %_RNvMs5_NtNtCs2r1H4NiMXj9_12regex_syntax3hir7literalNtB5_7Literal6extend.exit31.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !6580
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false), !noalias !6580
  %i.bcj = load i64, ptr %i.azm, align 8, !alias.scope !6588, !noalias !6589, !noundef !9 ; 3 uses
  %i.bck = load i64, ptr %i.azk, align 8, !range !14, !alias.scope !6588, !noalias !6589, !noundef !9
  %i.bcl = icmp eq i64 %i.bcj, %i.bck
  br i1 %i.bcl, label %bb.on, label %bb.oq

bb.on:                                            ; preds = %bb.om
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2r1H4NiMXj9_12regex_syntax3hir7literal7LiteralE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.azk)
          to label %bb.oq unwind label %bb.oo, !noalias !6589

bb.oo:                                            ; preds = %bb.on
  %i.bcm = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bal, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !6580
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2r1H4NiMXj9_12regex_syntax3hir7literal7LiteralECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.j) #42
          to label %.thread.i.i unwind label %bb.op, !noalias !6563

bb.op:                                            ; preds = %bb.oo
  %i.bcn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43, !noalias !6563
  unreachable

bb.oq:                                            ; preds = %bb.on, %bb.om
  %i.bco = load ptr, ptr %i.bab, align 8, !alias.scope !6588, !noalias !6589, !nonnull !9, !noundef !9
  %i.bcp = getelementptr inbounds nuw [32 x i8], ptr %i.bco, i64 %i.bcj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bcp, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false), !noalias !6563
  %i.bcq = add i64 %i.bcj, 1
  store i64 %i.bcq, ptr %i.azm, align 8, !alias.scope !6588, !noalias !6589
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !6580
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !6580
  %i.bcr = icmp eq ptr %i.bbd, %i.bax
  br i1 %i.bcr, label %._crit_edge.i.i, label %.lr.ph.i.i145

bb.or:                                            ; preds = %bb.oj, %bb.og
  %i.bcs = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bal, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !6580
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2r1H4NiMXj9_12regex_syntax3hir7literal7LiteralECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(32) %i.k) #42
          to label %.thread.i.i unwind label %bb.os, !noalias !6563

bb.os:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i36.i.i, %bb.or, %.body25.i.i
  %i.bct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body37.i.i

.body37.i.i:                                      ; preds = %bb.ou, %bb.os
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43, !noalias !6563
  unreachable

bb.ot:                                            ; preds = %bb.of
  unreachable

.thread.i.i:                                      ; preds = %bb.or, %bb.oo, %.loopexit.split-lp.i.i, %.loopexit.i.i
  %.pn47.i.i = phi { ptr, i32 } [ %i.bcm, %bb.oo ], [ %i.bcs, %bb.or ], [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i36.i.i unwind label %bb.ou, !noalias !6563

bb.ou:                                            ; preds = %.thread.i.i
  %i.bcu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %.body37.i.i unwind label %bb.ov, !noalias !6563

bb.ov:                                            ; preds = %bb.ou
  %i.bcv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43, !noalias !6563
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i36.i.i: ; preds = %.thread.i.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %.body25.i.i unwind label %bb.os, !noalias !6563

.loopexit.i143:                                   ; preds = %bb.nv, %.noexc58.i, %.noexc57.i, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2r1H4NiMXj9_12regex_syntax3hir7literal7LiteralENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.thread.i.i, %bb.nq, %bb.nn
  %lpad.loopexit101.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %bb.nr
  %lpad.loopexit.split-lp102.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.i, %.loopexit.i143, %.body25.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %.pn21.i.i, %.body25.i.i ], [ %lpad.loopexit101.i, %.loopexit.i143 ], [ %lpad.loopexit.split-lp102.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2r1H4NiMXj9_12regex_syntax3hir7literal3SeqECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r) #42
          to label %.thread.i unwind label %bb.pb, !noalias !6563

_RNvMs2_NtNtCs2r1H4NiMXj9_12regex_syntax3hir7literalNtB5_3Seq13cross_forward.exit.i: ; preds = %bb.nv, %.noexc59.i, %.noexc54.i
  %i.bcw = load i64, ptr %i.r, align 8, !range !20, !alias.scope !6590, !noalias !6567, !noundef !9
  %i.bcx = icmp eq i64 %i.bcw, -1
  br i1 %i.bcx, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2r1H4NiMXj9_12regex_syntax3hir7literal3SeqECs7gfv9tzbXmh_6yara_x.exit.i, label %bb.ow

bb.ow:                                            ; preds = %_RNvMs2_NtNtCs2r1H4NiMXj9_12regex_syntax3hir7literalNtB5_3Seq13cross_forward.exit.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs2r1H4NiMXj9_12regex_syntax3hir7literal7LiteralENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs2r1H4NiMXj9_12regex_syntax3hir7literal7LiteralEECs7gfv9tzbXmh_6yara_x.exit.i.i.i unwind label %bb.ox, !noalias !6563

bb.ox:                                            ; preds = %bb.ow
  %i.bcy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2r1H4NiMXj9_12regex_syntax3hir7literal7LiteralENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.thread.i unwind label %bb.oy, !noalias !6563

bb.oy:                                            ; preds = %bb.ox
  %i.bcz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43, !noalias !6563
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs2r1H4NiMXj9_12regex_syntax3hir7literal7LiteralEECs7gfv9tzbXmh_6yara_x.exit.i.i.i: ; preds = %bb.ow
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2r1H4NiMXj9_12regex_syntax3hir7literal7LiteralENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2r1H4NiMXj9_12regex_syntax3hir7literal3SeqECs7gfv9tzbXmh_6yara_x.exit.i unwind label %.thread83.loopexit.split-lp.i, !noalias !6563

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2r1H4NiMXj9_12regex_syntax3hir7literal3SeqECs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs2r1H4NiMXj9_12regex_syntax3hir7literal7LiteralEECs7gfv9tzbXmh_6yara_x.exit.i.i.i, %_RNvMs2_NtNtCs2r1H4NiMXj9_12regex_syntax3hir7literalNtB5_3Seq13cross_forward.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !6567
  %i.bda = add nuw nsw i64 %.sroa.011.0150.i59010561417, 1 ; 6 uses
  %i.bdb = add i64 %i.azc, %.sroa.013.0149.i59110551418 ; 2 uses
  %i.bdc = icmp ugt i64 %i.bdb, 3
  %i.bdd = load i64, ptr %i.t, align 8, !noalias !6567 ; 2 uses
  %.not40.i = icmp eq i64 %i.bdd, -1
  %or.cond99.i = select i1 %i.bdc, i1 true, i1 %.not40.i
  br i1 %or.cond99.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2r1H4NiMXj9_12regex_syntax3hir7literal3SeqECs7gfv9tzbXmh_6yara_x.exit.i..thread87.loopexit162.i.loopexit.loopexit_crit_edge, label %bb.oz

bb.oz:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2r1H4NiMXj9_12regex_syntax3hir7literal3SeqECs7gfv9tzbXmh_6yara_x.exit.i
  %i.bde = load i64, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !6567 ; 2 uses
  %i.bdf = load ptr, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !6567, !nonnull !9 ; 2 uses
  %.idx1440 = shl nuw nsw i64 %i.bde, 5
  %i.bdg = getelementptr inbounds nuw i8, ptr %i.bdf, i64 %.idx1440
  %i.bdh = icmp eq i64 %i.bde, 0
  br i1 %i.bdh, label %.thread87.i, label %.lr.ph1414

bb.pa:                                            ; preds = %.lr.ph1414
  %i.bdi = getelementptr inbounds nuw i8, ptr %i.bdk, i64 32 ; 2 uses
  %i.bdj = icmp eq ptr %i.bdi, %i.bdg
  br i1 %i.bdj, label %.thread87.i, label %.lr.ph1414

.lr.ph1414:                                       ; preds = %bb.oz, %bb.pa
  %i.bdk = phi ptr [ %i.bdi, %bb.pa ], [ %i.bdf, %bb.oz ] ; 2 uses
  %i.bdl = getelementptr i8, ptr %i.bdk, i64 24
  %.val.i.i.i65.i = load i8, ptr %i.bdl, align 8, !range !46, !alias.scope !6591, !noalias !6592, !noundef !9
  %i.bdm = trunc nuw i8 %.val.i.i.i65.i to i1
  br i1 %i.bdm, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRSNtNtNtCs2r1H4NiMXj9_12regex_syntax3hir7literal7LiteralE6map_orbNCNvMs2_BM_NtBM_3Seq10is_inexact0ECs7gfv9tzbXmh_6yara_x.exit.loopexit.i, label %bb.pa

bb.pb:                                            ; preds = %.thread.i, %.body.i
  %i.bdn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43, !noalias !6563
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2r1H4NiMXj9_12regex_syntax3hir7literal3SeqECs7gfv9tzbXmh_6yara_x.exit.i..thread87.loopexit162.i.loopexit.loopexit_crit_edge: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2r1H4NiMXj9_12regex_syntax3hir7literal3SeqECs7gfv9tzbXmh_6yara_x.exit.i
  %i.bdo = icmp eq i64 %i.bdd, -1
  br label %.thread87.i

.thread87.i:                                      ; preds = %bb.oz, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRSNtNtNtCs2r1H4NiMXj9_12regex_syntax3hir7literal7LiteralE6map_orbNCNvMs2_BM_NtBM_3Seq10is_inexact0ECs7gfv9tzbXmh_6yara_x.exit.loopexit.i, %bb.nj, %.lr.ph, %.lr.ph1057, %bb.nk, %bb.nl, %bb.pa, %.lr.ph1057.preheader, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2r1H4NiMXj9_12regex_syntax3hir7literal3SeqECs7gfv9tzbXmh_6yara_x.exit.i..thread87.loopexit162.i.loopexit.loopexit_crit_edge, %.lr.ph.i139, %_RNvMs2_NtNtCs2r1H4NiMXj9_12regex_syntax3hir7literalNtB5_3Seq9singleton.exit.i
  %.pr.i = phi i1 [ false, %bb.pa ], [ false, %_RNvMs2_NtNtCs2r1H4NiMXj9_12regex_syntax3hir7literalNtB5_3Seq9singleton.exit.i ], [ false, %.lr.ph.i139 ], [ %i.bdo, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2r1H4NiMXj9_12regex_syntax3hir7literal3SeqECs7gfv9tzbXmh_6yara_x.exit.i..thread87.loopexit162.i.loopexit.loopexit_crit_edge ], [ false, %.lr.ph1057.preheader ], [ %.not.i49.i, %bb.nl ], [ %.not.i49.i, %bb.nk ], [ %.not.i49.i, %.lr.ph1057 ], [ %.not.i49.i, %.lr.ph ], [ %.not.i49.i, %bb.nj ], [ %.not.i49.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRSNtNtNtCs2r1H4NiMXj9_12regex_syntax3hir7literal7LiteralE6map_orbNCNvMs2_BM_NtBM_3Seq10is_inexact0ECs7gfv9tzbXmh_6yara_x.exit.loopexit.i ], [ %.not.i49.i, %bb.oz ] ; 2 uses
  %.sroa.011.2.i = phi i64 [ %i.bda, %bb.pa ], [ 0, %_RNvMs2_NtNtCs2r1H4NiMXj9_12regex_syntax3hir7literalNtB5_3Seq9singleton.exit.i ], [ 0, %.lr.ph.i139 ], [ %i.bda, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2r1H4NiMXj9_12regex_syntax3hir7literal3SeqECs7gfv9tzbXmh_6yara_x.exit.i..thread87.loopexit162.i.loopexit.loopexit_crit_edge ], [ 0, %.lr.ph1057.preheader ], [ %i.bda, %bb.oz ], [ %.sroa.011.0150.i59010561417, %bb.nk ], [ %i.bda, %.lr.ph ], [ %i.bda, %.lr.ph1057 ], [ %i.ayi, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRSNtNtNtCs2r1H4NiMXj9_12regex_syntax3hir7literal7LiteralE6map_orbNCNvMs2_BM_NtBM_3Seq10is_inexact0ECs7gfv9tzbXmh_6yara_x.exit.loopexit.i ], [ %i.axo, %bb.nj ], [ %.sroa.011.0150.i59010561417, %bb.nl ]
  %i.bdp = icmp ult i64 %.sroa.011.2.i, %i.axo
  br i1 %i.bdp, label %bb.pc, label %_RNvMs2_NtNtCs2r1H4NiMXj9_12regex_syntax3hir7literalNtB5_3Seq12make_inexact.exit.i

bb.pc:                                            ; preds = %.thread87.i
  call void @llvm.experimental.noalias.scope.decl(metadata !6593)
  br i1 %.pr.i, label %_RNvMs2_NtNtCs2r1H4NiMXj9_12regex_syntax3hir7literalNtB5_3Seq16keep_first_bytes.exit.i, label %bb.pd

bb.pd:                                            ; preds = %bb.pc
  %i.bdq = load ptr, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !alias.scope !6593, !noalias !6567, !nonnull !9, !noundef !9 ; 5 uses
  %i.bdr = load i64, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !6567, !noundef !9 ; 2 uses
  %.idx.i67.i = shl i64 %i.bdr, 5                 ; 2 uses
  %i.bds = getelementptr inbounds nuw i8, ptr %i.bdq, i64 %.idx.i67.i ; 3 uses
  %i.bdt = icmp eq i64 %i.bdr, 0
  br i1 %i.bdt, label %_RNvMs2_NtNtCs2r1H4NiMXj9_12regex_syntax3hir7literalNtB5_3Seq16keep_first_bytes.exit.i, label %.lr.ph.i68.i.preheader

.lr.ph.i68.i.preheader:                           ; preds = %bb.pd
  %i.bdu = add i64 %.idx.i67.i, -32               ; 2 uses
  %i.bdv = lshr exact i64 %i.bdu, 5
  %i.bdw = add nuw nsw i64 %i.bdv, 1
  %xtraiter = and i64 %i.bdw, 7                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i68.i.prol.loopexit, label %.lr.ph.i68.i.prol

.lr.ph.i68.i.prol:                                ; preds = %.lr.ph.i68.i.preheader, %.lr.ph.i68.i.prol
  %.sroa.0.02.i.i.prol = phi ptr [ %i.bdx, %.lr.ph.i68.i.prol ], [ %i.bdq, %.lr.ph.i68.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i68.i.prol ], [ 0, %.lr.ph.i68.i.preheader ]
  %i.bdx = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i.prol, i64 32 ; 2 uses
  %i.bdy = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i.prol, i64 24
  store i8 0, ptr %i.bdy, align 8, !noalias !6594
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i68.i.prol.loopexit, label %.lr.ph.i68.i.prol, !llvm.loop !6265

.lr.ph.i68.i.prol.loopexit:                       ; preds = %.lr.ph.i68.i.prol, %.lr.ph.i68.i.preheader
  %.sroa.0.02.i.i.unr = phi ptr [ %i.bdq, %.lr.ph.i68.i.preheader ], [ %i.bdx, %.lr.ph.i68.i.prol ]
  %i.bdz = icmp ult i64 %i.bdu, 224
  br i1 %i.bdz, label %.lr.ph.i72.i.preheader, label %.lr.ph.i68.i

.lr.ph.i68.i:                                     ; preds = %.lr.ph.i68.i.prol.loopexit, %.lr.ph.i68.i
  %.sroa.0.02.i.i = phi ptr [ %i.beh, %.lr.ph.i68.i ], [ %.sroa.0.02.i.i.unr, %.lr.ph.i68.i.prol.loopexit ] ; 9 uses
  %i.bea = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 24
  store i8 0, ptr %i.bea, align 8, !noalias !6594
  %i.beb = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 56
  store i8 0, ptr %i.beb, align 8, !noalias !6594
  %i.bec = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 88
  store i8 0, ptr %i.bec, align 8, !noalias !6594
  %i.bed = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 120
  store i8 0, ptr %i.bed, align 8, !noalias !6594
  %i.bee = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 152
  store i8 0, ptr %i.bee, align 8, !noalias !6594
  %i.bef = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 184
  store i8 0, ptr %i.bef, align 8, !noalias !6594
  %i.beg = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 216
  store i8 0, ptr %i.beg, align 8, !noalias !6594
  %i.beh = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 256 ; 2 uses
  %i.bei = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 248
  store i8 0, ptr %i.bei, align 8, !noalias !6594
  %i.bej = icmp eq ptr %i.beh, %i.bds
  br i1 %i.bej, label %.lr.ph.i72.i.preheader, label %.lr.ph.i68.i

_RNvMs2_NtNtCs2r1H4NiMXj9_12regex_syntax3hir7literalNtB5_3Seq12make_inexact.exit.i: ; preds = %.thread87.i
  call void @llvm.experimental.noalias.scope.decl(metadata !6595)
  br i1 %.pr.i, label %_RNvMs2_NtNtCs2r1H4NiMXj9_12regex_syntax3hir7literalNtB5_3Seq16keep_first_bytes.exit.i, label %_RNvMs2_NtNtCs2r1H4NiMXj9_12regex_syntax3hir7literalNtB5_3Seq12make_inexact.exit.thread.i

_RNvMs2_NtNtCs2r1H4NiMXj9_12regex_syntax3hir7literalNtB5_3Seq12make_inexact.exit.thread.i: ; preds = %_RNvMs2_NtNtCs2r1H4NiMXj9_12regex_syntax3hir7literalNtB5_3Seq12make_inexact.exit.i
  %.pr.pre.pr = load i64, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !alias.scope !6595, !noalias !6567 ; 2 uses
  %.pre = load ptr, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !alias.scope !6595, !noalias !6567 ; 2 uses
  %.pre753 = shl nuw nsw i64 %.pr.pre.pr, 5
  %i.bek = icmp eq i64 %.pr.pre.pr, 0
  %i.bel = getelementptr inbounds nuw i8, ptr %.pre, i64 %.pre753
  br i1 %i.bek, label %_RNvMs2_NtNtCs2r1H4NiMXj9_12regex_syntax3hir7literalNtB5_3Seq16keep_first_bytes.exit.i, label %.lr.ph.i72.i.preheader

.lr.ph.i72.i.preheader:                           ; preds = %.lr.ph.i68.i.prol.loopexit, %.lr.ph.i68.i, %_RNvMs2_NtNtCs2r1H4NiMXj9_12regex_syntax3hir7literalNtB5_3Seq12make_inexact.exit.thread.i
  %i.bem = phi ptr [ %i.bel, %_RNvMs2_NtNtCs2r1H4NiMXj9_12regex_syntax3hir7literalNtB5_3Seq12make_inexact.exit.thread.i ], [ %i.bds, %.lr.ph.i68.i ], [ %i.bds, %.lr.ph.i68.i.prol.loopexit ]
  %i.ben = phi ptr [ %.pre, %_RNvMs2_NtNtCs2r1H4NiMXj9_12regex_syntax3hir7literalNtB5_3Seq12make_inexact.exit.thread.i ], [ %i.bdq, %.lr.ph.i68.i ], [ %i.bdq, %.lr.ph.i68.i.prol.loopexit ]
  br label %.lr.ph.i72.i

.lr.ph.i72.i:                                     ; preds = %.lr.ph.i72.i.preheader, %.noexc75.i
  %.sroa.0.02.i73.i = phi ptr [ %i.beo, %.noexc75.i ], [ %i.ben, %.lr.ph.i72.i.preheader ] ; 4 uses
  %i.beo = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i73.i, i64 32 ; 2 uses
  %i.bep = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i73.i, i64 16
  %i.beq = load i64, ptr %i.bep, align 8, !noalias !6596, !noundef !9
  %i.ber = icmp ult i64 %i.beq, 5
  br i1 %i.ber, label %.noexc75.i, label %bb.pe

bb.pe:                                            ; preds = %.lr.ph.i72.i
  %i.bes = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i73.i, i64 24
  store i8 0, ptr %i.bes, align 8, !noalias !6596
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE8truncateCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.0.02.i73.i, i64 noundef 4)
          to label %.noexc75.i unwind label %.thread83.loopexit.i, !noalias !6563

.noexc75.i:                                       ; preds = %bb.pe, %.lr.ph.i72.i
  %i.bet = icmp eq ptr %i.beo, %i.bem
  br i1 %i.bet, label %_RNvMs2_NtNtCs2r1H4NiMXj9_12regex_syntax3hir7literalNtB5_3Seq16keep_first_bytes.exit.i, label %.lr.ph.i72.i

_RNvMs2_NtNtCs2r1H4NiMXj9_12regex_syntax3hir7literalNtB5_3Seq16keep_first_bytes.exit.i: ; preds = %.noexc75.i, %bb.pd, %_RNvMs2_NtNtCs2r1H4NiMXj9_12regex_syntax3hir7literalNtB5_3Seq12make_inexact.exit.thread.i, %_RNvMs2_NtNtCs2r1H4NiMXj9_12regex_syntax3hir7literalNtB5_3Seq12make_inexact.exit.i, %bb.pc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !6567
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !noalias !6567
  invoke fastcc void @_RNvNtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compiler12optimize_seq(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.eh, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.q)
          to label %_RNvNtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compiler10concat_seq.exit unwind label %.loopexit395

.thread.i:                                        ; preds = %bb.ox, %.body.i, %.thread83.loopexit.split-lp.i, %.thread83.loopexit.i
  %.pn79.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.bcy, %bb.ox ], [ %lpad.loopexit.i, %.thread83.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.thread83.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2r1H4NiMXj9_12regex_syntax3hir7literal3SeqECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %i.t) #42
          to label %.body149 unwind label %bb.pb, !noalias !6563

bb.pf:                                            ; preds = %bb.mz
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.045.0616, i64 noundef %i.axj, i64 noundef %i.axj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @466) #41
          to label %bb.kj unwind label %.loopexit.split-lp396

.body149:                                         ; preds = %.thread371.loopexit, %.thread371.loopexit.split-lp, %.loopexit395, %.loopexit.split-lp396, %bb.pl, %.thread367, %.thread.i, %bb.nh, %bb.pv
  %.pn63 = phi { ptr, i32 } [ %lpad.loopexit.split-lp398, %.loopexit.split-lp396 ], [ %lpad.thr_comm.split-lp, %bb.pv ], [ %.pn79.i, %.thread.i ], [ %i.ayf, %bb.nh ], [ %i.bgg, %bb.pl ], [ %eh.lpad-body167, %.thread367 ], [ %lpad.loopexit397, %.loopexit395 ], [ %lpad.loopexit400, %.thread371.loopexit ], [ %lpad.loopexit.split-lp401, %.thread371.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs2r1H4NiMXj9_12regex_syntax3hir7literal3SeqEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ej) #42
          to label %.thread354 unwind label %bb.jy

.loopexit395:                                     ; preds = %_RNvMs2_NtNtCs2r1H4NiMXj9_12regex_syntax3hir7literalNtB5_3Seq15max_literal_len.exit.i, %bb.nf, %_RNvMs2_NtNtCs2r1H4NiMXj9_12regex_syntax3hir7literalNtB5_3Seq16keep_first_bytes.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs2r1H4NiMXj9_12regex_syntax3hir7literal7LiteralEECs7gfv9tzbXmh_6yara_x.exit.i.i
  %lpad.loopexit397 = landingpad { ptr, i32 }
          cleanup
  br label %.body149

.loopexit.split-lp396:                            ; preds = %bb.pf
  %lpad.loopexit.split-lp398 = landingpad { ptr, i32 }
          cleanup
  br label %.body149

_RNvNtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compiler10concat_seq.exit: ; preds = %_RNvMs2_NtNtCs2r1H4NiMXj9_12regex_syntax3hir7literalNtB5_3Seq16keep_first_bytes.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !6567
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !6567
  %.pr365 = load i64, ptr %i.eh, align 8
  %.not59 = icmp eq i64 %.pr365, -2
  br i1 %.not59, label %_RNvNtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compiler10concat_seq.exit.thread, label %bb.pg

bb.pg:                                            ; preds = %_RNvNtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compiler10concat_seq.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eg)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eg, ptr noundef nonnull align 8 dereferenceable(24) %i.eh, i64 24, i1 false)
  %.not60 = icmp eq i64 %.sroa.045.0616, 0
  %.pre743 = load i64, ptr %i.eg, align 8, !range !20 ; 2 uses
  br i1 %.not60, label %._RNvMs2_NtNtCs2r1H4NiMXj9_12regex_syntax3hir7literalNtB5_3Seq12make_inexact.exit_crit_edge, label %bb.ph

._RNvMs2_NtNtCs2r1H4NiMXj9_12regex_syntax3hir7literalNtB5_3Seq12make_inexact.exit_crit_edge: ; preds = %bb.pg
  %.pre744 = load ptr, ptr %i.awy, align 8, !alias.scope !6597, !noalias !6598
  %.pre746 = load i64, ptr %i.awz, align 8, !alias.scope !6597, !noalias !6598
  br label %_RNvMs2_NtNtCs2r1H4NiMXj9_12regex_syntax3hir7literalNtB5_3Seq12make_inexact.exit

_RNvMs2_NtNtCs2r1H4NiMXj9_12regex_syntax3hir7literalNtB5_3Seq12make_inexact.exit: ; preds = %.lr.ph.i161.prol.loopexit, %.lr.ph.i161, %._RNvMs2_NtNtCs2r1H4NiMXj9_12regex_syntax3hir7literalNtB5_3Seq12make_inexact.exit_crit_edge, %bb.pi
  %i.beu = phi i64 [ %.pre746, %._RNvMs2_NtNtCs2r1H4NiMXj9_12regex_syntax3hir7literalNtB5_3Seq12make_inexact.exit_crit_edge ], [ 0, %bb.pi ], [ %.pre747, %.lr.ph.i161 ], [ %.pre747, %.lr.ph.i161.prol.loopexit ]
  %i.bev = phi ptr [ %.pre744, %._RNvMs2_NtNtCs2r1H4NiMXj9_12regex_syntax3hir7literalNtB5_3Seq12make_inexact.exit_crit_edge ], [ %.pre745, %bb.pi ], [ %.pre745, %.lr.ph.i161 ], [ %.pre745, %.lr.ph.i161.prol.loopexit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ef)
  call void @llvm.experimental.noalias.scope.decl(metadata !6598)
  call void @llvm.experimental.noalias.scope.decl(metadata !6597)
  %.not.i152 = icmp eq i64 %.pre743, -1           ; 2 uses
  %.sroa.3.0.i = select i1 %.not.i152, i64 0, i64 %i.beu ; 2 uses
  %.sroa.01.0.i153 = select i1 %.not.i152, ptr inttoptr (i64 8 to ptr), ptr %i.bev ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6599)
  call void @llvm.experimental.noalias.scope.decl(metadata !6600)
  %.idx.i.i = shl nuw nsw i64 %.sroa.3.0.i, 5
  %i.bew = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i153, i64 %.idx.i.i
  %i.bex = icmp eq i64 %.sroa.3.0.i, 0
  br i1 %i.bex, label %.loopexit394, label %.lr.ph.i.i154

.lr.ph.i.i154:                                    ; preds = %_RNvMs2_NtNtCs2r1H4NiMXj9_12regex_syntax3hir7literalNtB5_3Seq12make_inexact.exit, %.noexc158
  %.sroa.0.025.i.i = phi i64 [ %.sroa.0.1.i.i156, %.noexc158 ], [ 0, %_RNvMs2_NtNtCs2r1H4NiMXj9_12regex_syntax3hir7literalNtB5_3Seq12make_inexact.exit ]
  %.sroa.02.024.i.i = phi i64 [ %.sroa.02.1.i.i155, %.noexc158 ], [ 0, %_RNvMs2_NtNtCs2r1H4NiMXj9_12regex_syntax3hir7literalNtB5_3Seq12make_inexact.exit ]
  %.sroa.04.023.i.i = phi i64 [ %i.bfi, %.noexc158 ], [ 0, %_RNvMs2_NtNtCs2r1H4NiMXj9_12regex_syntax3hir7literalNtB5_3Seq12make_inexact.exit ]
  %.sroa.06.022.i.i = phi i32 [ %..i.i.i157, %.noexc158 ], [ 2147483647, %_RNvMs2_NtNtCs2r1H4NiMXj9_12regex_syntax3hir7literalNtB5_3Seq12make_inexact.exit ]
  %.sroa.08.021.i.i = phi i64 [ %..i13.i.i, %.noexc158 ], [ -1, %_RNvMs2_NtNtCs2r1H4NiMXj9_12regex_syntax3hir7literalNtB5_3Seq12make_inexact.exit ]
  %.sroa.0.01520.i.i = phi ptr [ %i.bfg, %.noexc158 ], [ %.sroa.01.0.i153, %_RNvMs2_NtNtCs2r1H4NiMXj9_12regex_syntax3hir7literalNtB5_3Seq12make_inexact.exit ] ; 4 uses
  %i.bey = getelementptr inbounds nuw i8, ptr %.sroa.0.01520.i.i, i64 24
  %i.bez = load i8, ptr %i.bey, align 8, !range !46, !alias.scope !6600, !noalias !6601, !noundef !9 ; 2 uses
  %i.bfa = getelementptr i8, ptr %.sroa.0.01520.i.i, i64 8
  %.val.i.i.i = load ptr, ptr %i.bfa, align 8, !alias.scope !6600, !noalias !6601, !nonnull !9, !noundef !9
  %i.bfb = getelementptr i8, ptr %.sroa.0.01520.i.i, i64 16
  %.val1.i.i.i = load i64, ptr %i.bfb, align 8, !alias.scope !6600, !noalias !6601, !noundef !9 ; 2 uses
  %i.bfc = invoke fastcc noundef i32 @_RINvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality12atom_qualityRShEB8_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i, i64 noundef %.val1.i.i.i) #47
          to label %.noexc158 unwind label %bb.pv ; 2 uses

.noexc158:                                        ; preds = %.lr.ph.i.i154
  %i.bfd = xor i8 %i.bez, 1
  %i.bfe = zext nneg i8 %i.bfd to i64
  %.sroa.0.1.i.i156 = add i64 %.sroa.0.025.i.i, %i.bfe ; 2 uses
  %i.bff = zext nneg i8 %i.bez to i64
  %.sroa.02.1.i.i155 = add i64 %.sroa.02.024.i.i, %i.bff ; 2 uses
  %i.bfg = getelementptr inbounds nuw i8, ptr %.sroa.0.01520.i.i, i64 32 ; 2 uses
  %i.bfh = sext i32 %i.bfc to i64
  %i.bfi = call i64 @llvm.sadd.sat.i64(i64 %.sroa.04.023.i.i, i64 %i.bfh) ; 2 uses
  %..i.i.i157 = call noundef i32 @llvm.smin.i32(i32 %i.bfc, i32 %.sroa.06.022.i.i) ; 2 uses
  %..i13.i.i = call noundef i64 @llvm.umin.i64(i64 %.val1.i.i.i, i64 %.sroa.08.021.i.i) ; 2 uses
  %i.bfj = icmp eq ptr %i.bfg, %i.bew
  br i1 %i.bfj, label %.loopexit394, label %.lr.ph.i.i154

bb.ph:                                            ; preds = %bb.pg
  %.not.i159 = icmp eq i64 %.pre743, -1
  %.pre745 = load ptr, ptr %i.awy, align 8        ; 6 uses
  %.pre747 = load i64, ptr %i.awz, align 8        ; 4 uses
  br i1 %.not.i159, label %_RNvMs2_NtNtCs2r1H4NiMXj9_12regex_syntax3hir7literalNtB5_3Seq12make_inexact.exit.thread, label %bb.pi

_RNvMs2_NtNtCs2r1H4NiMXj9_12regex_syntax3hir7literalNtB5_3Seq12make_inexact.exit.thread: ; preds = %bb.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ef)
  br label %.loopexit394

end_hunk_0
