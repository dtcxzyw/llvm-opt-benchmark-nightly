Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_python_literal-307a1f0c9a06c048.ruff_python_literal.9b149e7bebd214cb-cgu.00?download=true
inline.NumInlined: 122
inline.NumDeleted: 50
begin_hunk_0_@_RNvMs6_NtCsdjunURa2XPj_19ruff_python_literal6formatNtB5_10FormatSpec5parse:bb.a
  %i.qc = or disjoint i32 %i.pz, %i.qb
  %i.qd = or disjoint i32 %i.qc, %i.py
  br label %bb.bz

bb.bz:                                            ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit16.i.i209, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit14.i.i208, %bb.by, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit12.i.i205
  %.sroa.0.016.ph.i = phi ptr [ %i.pe, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit12.i.i205 ], [ %i.pm, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit14.i.i208 ], [ %i.pv, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit16.i.i209 ], [ %i.oz, %bb.by ]
  %.sroa.4.0.i.ph.i206 = phi i32 [ %i.pj, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit12.i.i205 ], [ %i.pt, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit14.i.i208 ], [ %i.qd, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit16.i.i209 ], [ %i.pl, %bb.by ] ; 3 uses
  %i.qe = icmp samesign ult i32 %.sroa.4.0.i.ph.i206, 1114112
  call void @llvm.assume(i1 %i.qe)
  switch i32 %.sroa.4.0.i.ph.i206, label %_RNvMs5_NtCsdjunURa2XPj_19ruff_python_literal6formatNtB5_10FormatType5parse.exit [
    i32 115, label %bb.cp
    i32 98, label %bb.ca
    i32 99, label %bb.cb
    i32 100, label %bb.cc
    i32 111, label %bb.cd
    i32 110, label %bb.ce
    i32 78, label %bb.cf
    i32 120, label %bb.cg
    i32 88, label %bb.ch
    i32 101, label %bb.ci
    i32 69, label %bb.cj
    i32 102, label %bb.ck
    i32 70, label %bb.cl
    i32 103, label %bb.cm
    i32 71, label %bb.cn
    i32 37, label %bb.co
  ]

bb.ca:                                            ; preds = %bb.bz
  br label %bb.cp

bb.cb:                                            ; preds = %bb.bz
  br label %bb.cp

bb.cc:                                            ; preds = %bb.bz
  br label %bb.cp

bb.cd:                                            ; preds = %bb.bz
  br label %bb.cp

bb.ce:                                            ; preds = %bb.bz
  br label %bb.cp

bb.cf:                                            ; preds = %bb.bz
  br label %bb.cp

bb.cg:                                            ; preds = %bb.bz
  br label %bb.cp

bb.ch:                                            ; preds = %bb.bz
  br label %bb.cp

bb.ci:                                            ; preds = %bb.bz
  br label %bb.cp

bb.cj:                                            ; preds = %bb.bz
  br label %bb.cp

bb.ck:                                            ; preds = %bb.bz
  br label %bb.cp

bb.cl:                                            ; preds = %bb.bz
  br label %bb.cp

bb.cm:                                            ; preds = %bb.bz
  br label %bb.cp

bb.cn:                                            ; preds = %bb.bz
  br label %bb.cp

bb.co:                                            ; preds = %bb.bz
  br label %bb.cp

_RNvMs5_NtCsdjunURa2XPj_19ruff_python_literal6formatNtB5_10FormatType5parse.exit: ; preds = %bb.bz
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 3, ptr %i.qf, align 8
  %.sroa.6153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.4.0.i.ph.i206, ptr %.sroa.6153.0..sroa_idx, align 4
  br label %bb.cs

bb.cp:                                            ; preds = %bb.bz, %bb.ca, %bb.cb, %bb.cc, %bb.cd, %bb.ce, %bb.cf, %bb.cg, %bb.ch, %bb.ci, %bb.cj, %bb.ck, %bb.cl, %bb.cm, %bb.cn, %bb.co
  %.sroa.17.0.i = phi i8 [ undef, %bb.co ], [ undef, %bb.ca ], [ undef, %bb.cb ], [ undef, %bb.cc ], [ undef, %bb.cd ], [ 0, %bb.ce ], [ 1, %bb.cf ], [ 0, %bb.cg ], [ 1, %bb.ch ], [ 0, %bb.ci ], [ 1, %bb.cj ], [ 0, %bb.ck ], [ 1, %bb.cl ], [ 0, %bb.cm ], [ 1, %bb.cn ], [ undef, %bb.bz ]
  %.sroa.0.0.i207 = phi i8 [ 10, %bb.co ], [ 1, %bb.ca ], [ 2, %bb.cb ], [ 3, %bb.cc ], [ 4, %bb.cd ], [ 5, %bb.ce ], [ 5, %bb.cf ], [ 6, %bb.cg ], [ 6, %bb.ch ], [ 7, %bb.ci ], [ 7, %bb.cj ], [ 9, %bb.ck ], [ 9, %bb.cl ], [ 8, %bb.cm ], [ 8, %bb.cn ], [ 0, %bb.bz ]
  %i.qg = icmp eq ptr %i.oy, %.sroa.0.016.ph.i
  br i1 %i.qg, label %.thread373, label %bb.cq

.thread373:                                       ; preds = %_RNvMs3_NtCsdjunURa2XPj_19ruff_python_literal6formatNtB5_14FormatGrouping5parse.exit, %bb.bn, %_RNvNtCsdjunURa2XPj_19ruff_python_literal6format15parse_precision.exit, %bb.cp
  %.sroa.7.0.ph384 = phi i8 [ %.sroa.17.0.i, %bb.cp ], [ undef, %_RNvNtCsdjunURa2XPj_19ruff_python_literal6format15parse_precision.exit ], [ undef, %bb.bn ], [ undef, %_RNvMs3_NtCsdjunURa2XPj_19ruff_python_literal6formatNtB5_14FormatGrouping5parse.exit ]
  %.sroa.0252.0.ph383 = phi i8 [ %.sroa.0.0.i207, %bb.cp ], [ -1, %_RNvNtCsdjunURa2XPj_19ruff_python_literal6format15parse_precision.exit ], [ -1, %bb.bn ], [ -1, %_RNvMs3_NtCsdjunURa2XPj_19ruff_python_literal6formatNtB5_14FormatGrouping5parse.exit ]
  %.sink17.i192319342.ph382 = phi i8 [ %.sink17.i192324, %bb.cp ], [ %.sink17.i192324, %_RNvNtCsdjunURa2XPj_19ruff_python_literal6format15parse_precision.exit ], [ 2, %bb.bn ], [ %.sink17.i192, %_RNvMs3_NtCsdjunURa2XPj_19ruff_python_literal6formatNtB5_14FormatGrouping5parse.exit ]
  %.sroa.7.0.i344.ph381 = phi i64 [ %.sroa.7.0.i358, %bb.cp ], [ %.sroa.022.0.copyload.i, %_RNvNtCsdjunURa2XPj_19ruff_python_literal6format15parse_precision.exit ], [ undef, %bb.bn ], [ undef, %_RNvMs3_NtCsdjunURa2XPj_19ruff_python_literal6formatNtB5_14FormatGrouping5parse.exit ]
  %.sroa.0.0.i200346.ph380 = phi i64 [ %.sroa.0.0.i200359, %bb.cp ], [ 1, %_RNvNtCsdjunURa2XPj_19ruff_python_literal6format15parse_precision.exit ], [ 0, %bb.bn ], [ 0, %_RNvMs3_NtCsdjunURa2XPj_19ruff_python_literal6formatNtB5_14FormatGrouping5parse.exit ]
  %.not = icmp eq i32 %.sink21.i, -1
  %or.cond = and i1 %.not, %.sink14.i183          ; 2 uses
  %.not159 = icmp eq i8 %.sink19.i, -1
  %i.qh = and i1 %.not159, %or.cond
  %.sroa.055.0 = select i1 %i.qh, i8 2, i8 %.sink19.i
  %.sroa.03.0 = select i1 %or.cond, i32 48, i32 %.sink21.i
  store i64 %i.lj, ptr %0, align 8
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.085.0.copyload, ptr %.sroa.466.0..sroa_idx, align 8
  %.sroa.567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.0.i200346.ph380, ptr %.sroa.567.0..sroa_idx, align 8
  %.sroa.668.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.7.0.i344.ph381, ptr %.sroa.668.0..sroa_idx, align 8
  %.sroa.769.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.sroa.03.0, ptr %.sroa.769.0..sroa_idx, align 8
  %.sroa.870.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 %.sroa.0252.0.ph383, ptr %.sroa.870.0..sroa_idx, align 4
  %.sroa.971.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 37
  store i8 %.sroa.7.0.ph384, ptr %.sroa.971.0..sroa_idx, align 1
  %.sroa.1072.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 38
  store i8 %.sink14.i305, ptr %.sroa.1072.0..sroa_idx, align 2
  %.sroa.1173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 39
  store i8 %.sink17.i192319342.ph382, ptr %.sroa.1173.0..sroa_idx, align 1
  %.sroa.1274.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %.sroa.0.0.sink.i292304, ptr %.sroa.1274.0..sroa_idx, align 8
  %.sroa.1375.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i8 %.sroa.0.2.i.ph.sink.i, ptr %.sroa.1375.0..sroa_idx, align 1
  %.sroa.1476.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i8 %.sroa.055.0, ptr %.sroa.1476.0..sroa_idx, align 2
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsdjunURa2XPj_19ruff_python_literal6format10FormatPartEEB1b_(ptr noalias noundef align 8 dereferenceable(24) %i.k)
  br label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.qi, align 8
  br label %bb.cs

bb.cr:                                            ; preds = %bb.aa, %bb.aj, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsdjunURa2XPj_19ruff_python_literal6format10FormatPartEEB1b_.exit, %.thread373
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void

bb.cs:                                            ; preds = %bb.bw, %bb.cq, %_RNvMs5_NtCsdjunURa2XPj_19ruff_python_literal6formatNtB5_10FormatType5parse.exit, %bb.bm
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsdjunURa2XPj_19ruff_python_literal6format10FormatPartENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsdjunURa2XPj_19ruff_python_literal6format10FormatPartEEB1b_.exit unwind label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.qj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsdjunURa2XPj_19ruff_python_literal6format10FormatPartENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume unwind label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.qk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsdjunURa2XPj_19ruff_python_literal6format10FormatPartEEB1b_.exit: ; preds = %bb.cs
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsdjunURa2XPj_19ruff_python_literal6format10FormatPartENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
  br label %bb.cr

bb.cv:                                            ; preds = %.body
  %i.ql = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsb_NtCsdjunURa2XPj_19ruff_python_literal6formatNtB5_9FieldName5parse(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 16 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 12 uses
  %.sroa.19.i = alloca [16 x i8], align 8         ; 6 uses
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.4.sroa.2 = alloca [16 x i8], align 1     ; 2 uses
  %.sroa.14 = alloca [16 x i8], align 8           ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 13 uses
  %i.g = alloca [24 x i8], align 8                ; 13 uses
  %i.h = alloca [8 x i8], align 8                 ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 14 uses
  %i.j = alloca [24 x i8], align 8                ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %2
  store ptr %1, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  store ptr %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 4 uses
  store i32 -2, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 0, ptr %i.i, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.412.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 4 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.j, ptr %i.h, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit, %bb.a
  %i.o = phi ptr [ %.pre, %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit ], [ %i.j, %bb.a ]
  %i.p = invoke noundef i32 @_RINvXs_NtCs6Wt4yPw39th_9itertools18peeking_take_whileINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekable8PeekableNtNtNtBY_3str4iter5CharsENtB5_11PeekingNext12peeking_nextQNCNvMsb_NtCsdjunURa2XPj_19ruff_python_literal6formatNtB2R_9FieldName5parse0EB2T_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o, ptr noalias noundef nonnull %i.n)
          to label %bb.c unwind label %.body34.thread ; 9 uses

.body34.a:                                        ; preds = %.loopexit.split-lp59, %bb.bx, %.body30
  %.pn19 = phi { ptr, i32 } [ %.pn, %.body30 ], [ %i.jt, %bb.bx ], [ %lpad.loopexit.split-lp61, %.loopexit.split-lp59 ] ; 2 uses
  br i1 %.sroa.08.2, label %bb.cd, label %common.resume

.body34.thread:                                   ; preds = %bb.f, %bb.e, %bb.b
  %lpad.loopexit60 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

.loopexit.split-lp59:                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjunURa2XPj_19ruff_python_literal.exit.i
  %lpad.loopexit.split-lp61 = landingpad { ptr, i32 }
          cleanup
  br label %.body34.a

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i32 %i.p, -1
  br i1 %.not, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !167, !noundef !3 ; 4 uses
  %i.r = icmp sgt i64 %i.q, -1
  call void @llvm.assume(i1 %i.r)
  %i.s = icmp samesign ult i32 %i.p, 128
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = icmp samesign ult i32 %i.p, 2048         ; 2 uses
  %i.u = icmp samesign ult i32 %i.p, 65536        ; 2 uses
  %..i = select i1 %i.u, i64 3, i64 4
  %.sroa.0.0.ph.i = select i1 %i.t, i64 2, i64 %..i
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsdjunURa2XPj_19ruff_python_literal(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %.sroa.0.0.ph.i)
          to label %.noexc unwind label %.body34.thread

.noexc:                                           ; preds = %bb.e
  %i.v = load ptr, ptr %.sroa.412.0..sroa_idx, align 8, !alias.scope !167, !nonnull !3, !noundef !3
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.q ; 9 uses
  %i.x = trunc i32 %i.p to i8
  %i.y = and i8 %i.x, 63
  %i.z = or disjoint i8 %i.y, -128                ; 3 uses
  %i.aa = lshr i32 %i.p, 6
  %i.ab = trunc i32 %i.aa to i8                   ; 2 uses
  %i.ac = and i8 %i.ab, 63
  %i.ad = or disjoint i8 %i.ac, -128              ; 2 uses
  %i.ae = lshr i32 %i.p, 12
  %i.af = trunc i32 %i.ae to i8                   ; 2 uses
  %i.ag = and i8 %i.af, 63
  %i.ah = or disjoint i8 %i.ag, -128
  %i.ai = lshr i32 %i.p, 18
  %i.aj = trunc nuw nsw i32 %i.ai to i8
  %i.ak = or disjoint i8 %i.aj, -16
  br i1 %i.t, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsdjunURa2XPj_19ruff_python_literal(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef 1)
          to label %.noexc21 unwind label %.body34.thread

.noexc21:                                         ; preds = %bb.f
  %i.al = load ptr, ptr %.sroa.412.0..sroa_idx, align 8, !alias.scope !167, !nonnull !3, !noundef !3
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.q
  %i.an = trunc nuw nsw i32 %i.p to i8
  store i8 %i.an, ptr %i.am, align 1
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit

bb.g:                                             ; preds = %.noexc
  %i.ao = or disjoint i8 %i.ab, -64
  store i8 %i.ao, ptr %i.w, align 1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  store i8 %i.z, ptr %i.ap, align 1
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit

bb.h:                                             ; preds = %.noexc
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aq = or disjoint i8 %i.af, -32
  store i8 %i.aq, ptr %i.w, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  store i8 %i.ad, ptr %i.ar, align 1
  %i.as = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  store i8 %i.z, ptr %i.as, align 1
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit

bb.j:                                             ; preds = %bb.h
  store i8 %i.ak, ptr %i.w, align 1
  %i.at = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  store i8 %i.ah, ptr %i.at, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  store i8 %i.ad, ptr %i.au, align 1
  %i.av = getelementptr inbounds nuw i8, ptr %i.w, i64 3
  store i8 %i.z, ptr %i.av, align 1
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit

_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit: ; preds = %.noexc21, %bb.g, %bb.i, %bb.j
  %.sroa.0.03.i = phi i64 [ 1, %.noexc21 ], [ 2, %bb.g ], [ 3, %bb.i ], [ 4, %bb.j ]
  %i.aw = add nuw i64 %.sroa.0.03.i, %i.q
  store i64 %i.aw, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !167
  %.pre = load ptr, ptr %i.h, align 8
  br label %bb.b

bb.k:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ax = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !noundef !3 ; 4 uses
  %i.ay = icmp sgt i64 %i.ax, -1
  call void @llvm.assume(i1 %i.ay)
  %i.az = icmp eq i64 %i.ax, 0
  br i1 %i.az, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i64 -9223372036854775808, ptr %i.g, align 8
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  %i.ba = load ptr, ptr %.sroa.412.0..sroa_idx, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %cond = icmp eq i64 %i.ax, 1
  %i.bb = load i8, ptr %i.ba, align 1, !alias.scope !168 ; 2 uses
  br i1 %cond, label %bb.n, label %thread-pre-split.i

bb.n:                                             ; preds = %bb.m
  switch i8 %i.bb, label %thread-pre-split.i [
    i8 43, label %.loopexit55
    i8 45, label %.loopexit55
  ]

thread-pre-split.i:                               ; preds = %bb.m, %bb.n
  %cond.i = icmp eq i8 %i.bb, 43                  ; 2 uses
  %i.bc = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %i.ax, %i.bc        ; 4 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.sroa.0.0.idx.i ; 2 uses
  %i.bd = icmp samesign ult i64 %.sroa.15.0.i, 17
  br i1 %i.bd, label %.preheader.i, label %.preheader56.i.preheader

.preheader.i:                                     ; preds = %thread-pre-split.i
  %.not5366.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5366.i, label %_RNvMsv_NtCs4NRVxsYgnAr_4core3numj16from_ascii_radix.exit, label %.lr.ph.i

.preheader56.i:                                   ; preds = %bb.o
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i125, i64 1
  %i.bf = add nsw i64 %.sroa.15.1.i124, -1        ; 2 uses
  %.not52.i = icmp eq i64 %i.bf, 0
  br i1 %.not52.i, label %_RNvMsv_NtCs4NRVxsYgnAr_4core3numj16from_ascii_radix.exit, label %.preheader56.i.preheader

.preheader56.i.preheader:                         ; preds = %thread-pre-split.i, %.preheader56.i
  %.sroa.0.1.i125 = phi ptr [ %i.be, %.preheader56.i ], [ %.sroa.0.0.i, %thread-pre-split.i ] ; 2 uses
  %.sroa.15.1.i124 = phi i64 [ %i.bf, %.preheader56.i ], [ %.sroa.15.0.i, %thread-pre-split.i ]
  %.sroa.042.0.i123 = phi i64 [ %i.bo, %.preheader56.i ], [ 0, %thread-pre-split.i ]
  %i.bg = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i123, i64 10) ; 2 uses
  %i.bh = extractvalue { i64, i1 } %i.bg, 1
  br i1 %i.bh, label %.loopexit55, label %bb.o, !prof !9

bb.o:                                             ; preds = %.preheader56.i.preheader
  %i.bi = extractvalue { i64, i1 } %i.bg, 0       ; 2 uses
  %i.bj = load i8, ptr %.sroa.0.1.i125, align 1, !alias.scope !168, !noundef !3
  %i.bk = zext i8 %i.bj to i32
  %i.bl = add nsw i32 %i.bk, -48                  ; 2 uses
  %i.bm = icmp ugt i32 %i.bl, 9
  %i.bn = zext nneg i32 %i.bl to i64
  %i.bo = add i64 %i.bi, %i.bn                    ; 3 uses
  %i.bp = icmp ult i64 %i.bo, %i.bi
  %or.cond = select i1 %i.bm, i1 true, i1 %i.bp, !prof !10
  br i1 %or.cond, label %.loopexit55, label %.preheader56.i, !prof !10

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.p
  %.sroa.0.269.i = phi ptr [ %i.bw, %bb.p ], [ %.sroa.0.0.i, %.preheader.i ] ; 2 uses
  %.sroa.15.268.i = phi i64 [ %i.bv, %bb.p ], [ %.sroa.15.0.i, %.preheader.i ]
  %.sroa.042.267.i = phi i64 [ %i.by, %bb.p ], [ 0, %.preheader.i ]
  %i.bq = load i8, ptr %.sroa.0.269.i, align 1, !alias.scope !168, !noundef !3
  %i.br = zext i8 %i.bq to i32
  %i.bs = add nsw i32 %i.br, -48                  ; 2 uses
  %i.bt = icmp ult i32 %i.bs, 10
  br i1 %i.bt, label %bb.p, label %.loopexit55

bb.p:                                             ; preds = %.lr.ph.i
  %i.bu = mul i64 %.sroa.042.267.i, 10
  %i.bv = add nsw i64 %.sroa.15.268.i, -1         ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i, i64 1
  %i.bx = zext nneg i32 %i.bs to i64
  %i.by = add i64 %i.bu, %i.bx                    ; 2 uses
  %.not53.i = icmp eq i64 %i.bv, 0
  br i1 %.not53.i, label %_RNvMsv_NtCs4NRVxsYgnAr_4core3numj16from_ascii_radix.exit, label %.lr.ph.i

bb.q:                                             ; preds = %_RNvMsv_NtCs4NRVxsYgnAr_4core3numj16from_ascii_radix.exit, %.loopexit55, %bb.l
  %.sroa.08.2 = phi i1 [ true, %bb.l ], [ false, %.loopexit55 ], [ true, %_RNvMsv_NtCs4NRVxsYgnAr_4core3numj16from_ascii_radix.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 0, ptr %i.f, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  store i64 0, ptr %i.ca, align 8
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 5 uses
  %.sroa.511.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %.sroa.514.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 9
  %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.r

.loopexit55:                                      ; preds = %.preheader56.i.preheader, %bb.o, %.lr.ph.i, %bb.n, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  br label %bb.q

_RNvMsv_NtCs4NRVxsYgnAr_4core3numj16from_ascii_radix.exit: ; preds = %.preheader56.i, %bb.p, %.preheader.i
  %.sroa.1139.0 = phi i64 [ %i.by, %bb.p ], [ 0, %.preheader.i ], [ %i.bo, %.preheader56.i ]
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %.sroa.1139.0, ptr %i.cc, align 8
  store i64 -9223372036854775807, ptr %i.g, align 8
  br label %bb.q

bb.r:                                             ; preds = %bb.bq, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  call void @llvm.experimental.noalias.scope.decl(metadata !169)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !170)
  %i.cd = load i32, ptr %i.m, align 8, !range !171, !alias.scope !172, !noundef !3 ; 2 uses
  store i32 -2, ptr %i.m, align 8, !alias.scope !172
  switch i32 %i.cd, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB4_8PeekableNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit.thread.i [
    i32 -2, label %bb.s
    i32 -1, label %bb.bk
  ]

bb.s:                                             ; preds = %bb.r
  call void @llvm.experimental.noalias.scope.decl(metadata !173)
  call void @llvm.experimental.noalias.scope.decl(metadata !174)
  %i.ce = load ptr, ptr %i.j, align 8, !alias.scope !175, !nonnull !3, !noundef !3 ; 6 uses
  %i.cf = load ptr, ptr %i.l, align 8, !alias.scope !175, !nonnull !3, !noundef !3 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.ce, %i.cf
  br i1 %.not.i.i.i, label %bb.bk, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 1 ; 3 uses
  store ptr %i.cg, ptr %i.j, align 8, !alias.scope !175
  %i.ch = load i8, ptr %i.ce, align 1, !noalias !176, !noundef !3 ; 5 uses
  %i.ci = icmp sgt i8 %i.ch, -1
  br i1 %i.ci, label %bb.u, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit12.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit12.i.i.i.i: ; preds = %bb.t
  %i.cj = and i8 %i.ch, 31
  %i.ck = zext nneg i8 %i.cj to i32               ; 3 uses
  %i.cl = icmp ne ptr %i.cg, %i.cf
  call void @llvm.assume(i1 %i.cl)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ce, i64 2 ; 3 uses
  store ptr %i.cm, ptr %i.j, align 8, !alias.scope !177
  %i.cn = load i8, ptr %i.cg, align 1, !noalias !176, !noundef !3
  %i.co = shl nuw nsw i32 %i.ck, 6
  %i.cp = and i8 %i.cn, 63
  %i.cq = zext nneg i8 %i.cp to i32               ; 2 uses
  %i.cr = or disjoint i32 %i.co, %i.cq
  %i.cs = icmp samesign ugt i8 %i.ch, -33
  br i1 %i.cs, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit14.i.i.i.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB4_8PeekableNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit.thread.i

bb.u:                                             ; preds = %bb.t
  %i.ct = zext nneg i8 %i.ch to i32
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB4_8PeekableNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit.thread.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit14.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit12.i.i.i.i
  %i.cu = icmp ne ptr %i.cm, %i.cf
  call void @llvm.assume(i1 %i.cu)
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ce, i64 3 ; 3 uses
  store ptr %i.cv, ptr %i.j, align 8, !alias.scope !178
  %i.cw = load i8, ptr %i.cm, align 1, !noalias !176, !noundef !3
  %i.cx = shl nuw nsw i32 %i.cq, 6
  %i.cy = and i8 %i.cw, 63
  %i.cz = zext nneg i8 %i.cy to i32
  %i.da = or disjoint i32 %i.cx, %i.cz            ; 2 uses
  %i.db = shl nuw nsw i32 %i.ck, 12
  %i.dc = or disjoint i32 %i.da, %i.db
  %i.dd = icmp samesign ugt i8 %i.ch, -17
  br i1 %i.dd, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit16.i.i.i.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB4_8PeekableNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit.thread.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit16.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit14.i.i.i.i
  %i.de = icmp ne ptr %i.cv, %i.cf
  call void @llvm.assume(i1 %i.de)
  %i.df = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  store ptr %i.df, ptr %i.j, align 8, !alias.scope !179
  %i.dg = load i8, ptr %i.cv, align 1, !noalias !176, !noundef !3
  %i.dh = shl nuw nsw i32 %i.ck, 18
  %i.di = and i32 %i.dh, 1835008
  %i.dj = shl nuw nsw i32 %i.da, 6
  %i.dk = and i8 %i.dg, 63
  %i.dl = zext nneg i8 %i.dk to i32
  %i.dm = or disjoint i32 %i.dj, %i.dl
  %i.dn = or disjoint i32 %i.dm, %i.di
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB4_8PeekableNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit.thread.i

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB4_8PeekableNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit.thread.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit16.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit14.i.i.i.i, %bb.u, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit12.i.i.i.i, %bb.r
  %.sroa.0.0.i25.i = phi i32 [ %i.cd, %bb.r ], [ %i.dc, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit14.i.i.i.i ], [ %i.dn, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit16.i.i.i.i ], [ %i.cr, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit12.i.i.i.i ], [ %i.ct, %bb.u ]
  call void @llvm.experimental.noalias.scope.decl(metadata !180)
  switch i32 %.sroa.0.0.i25.i, label %.loopexit [
    i32 46, label %bb.x
    i32 91, label %bb.v
  ]

bb.v:                                             ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB4_8PeekableNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !181
  store i64 0, ptr %i.a, align 8, !noalias !181
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.410.0..sroa_idx.i.i, align 8, !noalias !181
  store i32 -2, ptr %i.m, align 8, !alias.scope !182
  %i.do = load ptr, ptr %i.l, align 8, !alias.scope !183, !nonnull !3, !noundef !3 ; 5 uses
  store i64 0, ptr %.sroa.511.0..sroa_idx.i.i, align 8, !noalias !181
  %i.dp = load ptr, ptr %i.j, align 8, !alias.scope !184, !nonnull !3, !noundef !3 ; 2 uses
  %.not.i.i.i39.i = icmp eq ptr %i.dp, %i.do
  br i1 %.not.i.i.i39.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB4_8PeekableNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit.thread.i.i, label %.lr.ph.i22

bb.w:                                             ; preds = %bb.ac, %bb.ab, %bb.y
  %i.dq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjunURa2XPj_19ruff_python_literal(ptr noalias noundef align 8 dereferenceable(24) %i.c) #14
          to label %.body unwind label %bb.am, !noalias !185

bb.x:                                             ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB4_8PeekableNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !181
  store i64 0, ptr %i.c, align 8, !noalias !181
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.413.0..sroa_idx.i.i, align 8, !noalias !181
  store i64 0, ptr %.sroa.514.0..sroa_idx.i.i, align 8, !noalias !181
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !181
  store ptr %i.j, ptr %i.b, align 8, !noalias !181
  br label %bb.y

bb.y:                                             ; preds = %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit.i.i, %bb.x
  %i.dr = phi ptr [ %.pre42.i.i, %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit.i.i ], [ %i.j, %bb.x ]
  %i.ds = invoke noundef i32 @_RINvXs_NtCs6Wt4yPw39th_9itertools18peeking_take_whileINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekable8PeekableNtNtNtBY_3str4iter5CharsENtB5_11PeekingNext12peeking_nextQNCNCINvMsa_NtCsdjunURa2XPj_19ruff_python_literal6formatNtB2U_13FieldNamePart10parse_partBP_E00EB2W_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dr, ptr noalias noundef nonnull %i.cb)
          to label %bb.z unwind label %bb.w, !noalias !185 ; 9 uses

bb.z:                                             ; preds = %bb.y
  %.not16.i.i = icmp eq i32 %i.ds, -1
  br i1 %.not16.i.i, label %bb.ah, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dt = load i64, ptr %.sroa.514.0..sroa_idx.i.i, align 8, !alias.scope !186, !noalias !181, !noundef !3 ; 4 uses
  %i.du = icmp sgt i64 %i.dt, -1
  call void @llvm.assume(i1 %i.du)
  %i.dv = icmp samesign ult i32 %i.ds, 128
  br i1 %i.dv, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dw = icmp samesign ult i32 %i.ds, 2048       ; 2 uses
  %i.dx = icmp samesign ult i32 %i.ds, 65536      ; 2 uses
  %..i.i.i = select i1 %i.dx, i64 3, i64 4
  %.sroa.0.0.ph.i.i.i = select i1 %i.dw, i64 2, i64 %..i.i.i
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsdjunURa2XPj_19ruff_python_literal(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %.sroa.0.0.ph.i.i.i)
          to label %.noexc.i.i unwind label %bb.w, !noalias !185

.noexc.i.i:                                       ; preds = %bb.ab
  %i.dy = load ptr, ptr %.sroa.413.0..sroa_idx.i.i, align 8, !alias.scope !186, !noalias !181, !nonnull !3, !noundef !3
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dt ; 9 uses
  %i.ea = trunc i32 %i.ds to i8
  %i.eb = and i8 %i.ea, 63
  %i.ec = or disjoint i8 %i.eb, -128              ; 3 uses
  %i.ed = lshr i32 %i.ds, 6
  %i.ee = trunc i32 %i.ed to i8                   ; 2 uses
  %i.ef = and i8 %i.ee, 63
  %i.eg = or disjoint i8 %i.ef, -128              ; 2 uses
  %i.eh = lshr i32 %i.ds, 12
  %i.ei = trunc i32 %i.eh to i8                   ; 2 uses
  %i.ej = and i8 %i.ei, 63
  %i.ek = or disjoint i8 %i.ej, -128
  %i.el = lshr i32 %i.ds, 18
  %i.em = trunc nuw nsw i32 %i.el to i8
  %i.en = or disjoint i8 %i.em, -16
  br i1 %i.dw, label %bb.ad, label %bb.ae

bb.ac:                                            ; preds = %bb.aa
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsdjunURa2XPj_19ruff_python_literal(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 1)
          to label %.noexc18.i.i unwind label %bb.w, !noalias !185

.noexc18.i.i:                                     ; preds = %bb.ac
  %i.eo = load ptr, ptr %.sroa.413.0..sroa_idx.i.i, align 8, !alias.scope !186, !noalias !181, !nonnull !3, !noundef !3
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.dt
  %i.eq = trunc nuw nsw i32 %i.ds to i8
  store i8 %i.eq, ptr %i.ep, align 1, !noalias !185
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit.i.i

bb.ad:                                            ; preds = %.noexc.i.i
  %i.er = or disjoint i8 %i.ee, -64
  store i8 %i.er, ptr %i.dz, align 1, !noalias !185
  %i.es = getelementptr inbounds nuw i8, ptr %i.dz, i64 1
  store i8 %i.ec, ptr %i.es, align 1, !noalias !185
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit.i.i

bb.ae:                                            ; preds = %.noexc.i.i
  br i1 %i.dx, label %bb.af, label %bb.ag
end_hunk_0
begin_hunk_1_@_RNvMsb_NtCsdjunURa2XPj_19ruff_python_literal6formatNtB5_9FieldName5parse:bb.a
  %i.ih = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i.i.i126, i64 10) ; 2 uses
  %i.ii = extractvalue { i64, i1 } %i.ih, 1
  br i1 %i.ii, label %.loopexit.i.i, label %bb.bb, !prof !9

bb.bb:                                            ; preds = %.preheader56.i.i.i.preheader
  %i.ij = extractvalue { i64, i1 } %i.ih, 0       ; 2 uses
  %i.ik = load i8, ptr %.sroa.0.1.i.i.i128, align 1, !alias.scope !197, !noalias !181, !noundef !3
  %i.il = zext i8 %i.ik to i32
  %i.im = add nsw i32 %i.il, -48                  ; 2 uses
  %i.in = icmp ugt i32 %i.im, 9
  %i.io = zext nneg i32 %i.im to i64
  %i.ip = add i64 %i.ij, %i.io                    ; 3 uses
  %i.iq = icmp ult i64 %i.ip, %i.ij
  %or.cond.i.i = select i1 %i.in, i1 true, i1 %i.iq, !prof !10
  br i1 %or.cond.i.i, label %.loopexit.i.i, label %.preheader56.i.i.i, !prof !10

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.bc
  %.sroa.0.269.i.i.i = phi ptr [ %i.ix, %bb.bc ], [ %.sroa.0.0.i27.i.i, %.preheader.i.i.i ] ; 2 uses
  %.sroa.15.268.i.i.i = phi i64 [ %i.iw, %bb.bc ], [ %.sroa.15.0.i.i.i, %.preheader.i.i.i ]
  %.sroa.042.267.i.i.i = phi i64 [ %i.iz, %bb.bc ], [ 0, %.preheader.i.i.i ]
  %i.ir = load i8, ptr %.sroa.0.269.i.i.i, align 1, !alias.scope !197, !noalias !181, !noundef !3
  %i.is = zext i8 %i.ir to i32
  %i.it = add nsw i32 %i.is, -48                  ; 2 uses
  %i.iu = icmp ult i32 %i.it, 10
  br i1 %i.iu, label %bb.bc, label %.loopexit.i.i

bb.bc:                                            ; preds = %.lr.ph.i.i.i
  %i.iv = mul i64 %.sroa.042.267.i.i.i, 10
  %i.iw = add nsw i64 %.sroa.15.268.i.i.i, -1     ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i.i, i64 1
  %i.iy = zext nneg i32 %i.it to i64
  %i.iz = add i64 %i.iv, %i.iy                    ; 2 uses
  %.not53.i.i.i = icmp eq i64 %i.iw, 0
  br i1 %.not53.i.i.i, label %_RNvMsv_NtCs4NRVxsYgnAr_4core3numj16from_ascii_radix.exit.i.i, label %.lr.ph.i.i.i

bb.bd:                                            ; preds = %_RNvMsv_NtCs4NRVxsYgnAr_4core3numj16from_ascii_radix.exit.i.i, %bb.ar
  %.sroa.10.sroa.10.sroa.0.1.i = phi i56 [ %.sroa.10.sroa.10.0.extract.trunc.i, %_RNvMsv_NtCs4NRVxsYgnAr_4core3numj16from_ascii_radix.exit.i.i ], [ undef, %bb.ar ]
  %.sroa.10.sroa.0.1.i = phi i8 [ %.sroa.10.sroa.0.0.extract.trunc.i, %_RNvMsv_NtCs4NRVxsYgnAr_4core3numj16from_ascii_radix.exit.i.i ], [ 5, %bb.ar ]
  %.sroa.0.1.i25 = phi i64 [ 1, %_RNvMsv_NtCs4NRVxsYgnAr_4core3numj16from_ascii_radix.exit.i.i ], [ -1, %bb.ar ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjunURa2XPj_19ruff_python_literal(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjunURa2XPj_19ruff_python_literal.exit29.i.i unwind label %bb.be, !noalias !181

bb.be:                                            ; preds = %bb.bd
  %i.ja = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjunURa2XPj_19ruff_python_literal(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.bf, !noalias !181

bb.bf:                                            ; preds = %bb.be
  %i.jb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13, !noalias !181
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjunURa2XPj_19ruff_python_literal.exit29.i.i: ; preds = %bb.bd
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjunURa2XPj_19ruff_python_literal(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.noexc28 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.i.i:                                    ; preds = %bb.bb, %.preheader56.i.i.i.preheader, %.lr.ph.i.i.i, %bb.ba, %bb.ba
  %.sroa.10.8.copyload.i = load i64, ptr %i.a, align 8, !noalias !187 ; 2 uses
  %.sroa.10.sroa.0.0.extract.trunc17.i = trunc i64 %.sroa.10.8.copyload.i to i8
  %.sroa.10.sroa.10.0.extract.shift19.i = lshr i64 %.sroa.10.8.copyload.i, 8
  %.sroa.10.sroa.10.0.extract.trunc20.i = trunc nuw i64 %.sroa.10.sroa.10.0.extract.shift19.i to i56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.19.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.410.0..sroa_idx.i.i, i64 16, i1 false), !noalias !188
  br label %.noexc28

_RNvMsv_NtCs4NRVxsYgnAr_4core3numj16from_ascii_radix.exit.i.i: ; preds = %.preheader56.i.i.i, %bb.bc, %.preheader.i.i.i
  %.sroa.1130.0.i.i = phi i64 [ %i.iz, %bb.bc ], [ 0, %.preheader.i.i.i ], [ %i.ip, %.preheader56.i.i.i ] ; 2 uses
  %.sroa.10.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.1130.0.i.i to i8
  %.sroa.10.sroa.10.0.extract.shift.i = lshr i64 %.sroa.1130.0.i.i, 8
  %.sroa.10.sroa.10.0.extract.trunc.i = trunc nuw i64 %.sroa.10.sroa.10.0.extract.shift.i to i56
  br label %bb.bd

.noexc28:                                         ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjunURa2XPj_19ruff_python_literal.exit29.i.i, %.loopexit.i.i
  %.sroa.10.sroa.10.sroa.0.0.i = phi i56 [ %.sroa.10.sroa.10.0.extract.trunc20.i, %.loopexit.i.i ], [ %.sroa.10.sroa.10.sroa.0.1.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjunURa2XPj_19ruff_python_literal.exit29.i.i ]
  %.sroa.10.sroa.0.0.i = phi i8 [ %.sroa.10.sroa.0.0.extract.trunc17.i, %.loopexit.i.i ], [ %.sroa.10.sroa.0.1.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjunURa2XPj_19ruff_python_literal.exit29.i.i ]
  %.sroa.0.0.i24 = phi i64 [ 2, %.loopexit.i.i ], [ %.sroa.0.1.i25, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjunURa2XPj_19ruff_python_literal.exit29.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !181
  br label %_RNCINvMsa_NtCsdjunURa2XPj_19ruff_python_literal6formatNtB8_13FieldNamePart10parse_partINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekable8PeekableNtNtNtB1v_3str4iter5CharsEE0Ba_.exit.i

_RNCINvMsa_NtCsdjunURa2XPj_19ruff_python_literal6formatNtB8_13FieldNamePart10parse_partINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekable8PeekableNtNtNtB1v_3str4iter5CharsEE0Ba_.exit.i: ; preds = %.noexc28, %.noexc26
  %.sroa.10.sroa.10.sroa.0.3.i = phi i56 [ %.sroa.10.sroa.10.sroa.0.0.i, %.noexc28 ], [ %.sroa.10.sroa.10.sroa.0.2.i, %.noexc26 ]
  %.sroa.10.sroa.0.3.i = phi i8 [ %.sroa.10.sroa.0.0.i, %.noexc28 ], [ %.sroa.10.sroa.0.2.i, %.noexc26 ] ; 2 uses
  %.sroa.0.3.i = phi i64 [ %.sroa.0.0.i24, %.noexc28 ], [ %.sroa.0.2.i, %.noexc26 ] ; 2 uses
  %i.jc = icmp eq i64 %.sroa.0.3.i, -1
  br i1 %i.jc, label %.loopexit, label %bb.bg

bb.bg:                                            ; preds = %_RNCINvMsa_NtCsdjunURa2XPj_19ruff_python_literal6formatNtB8_13FieldNamePart10parse_partINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekable8PeekableNtNtNtB1v_3str4iter5CharsEE0Ba_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.19.i, i64 16, i1 false), !noalias !169
  br label %bb.bk

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjunURa2XPj_19ruff_python_literal.exit29.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjunURa2XPj_19ruff_python_literal.exit.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjunURa2XPj_19ruff_python_literal.exit20.i.i
  %lpad.loopexit.split-lp132 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bn, %bb.w, %bb.aj, %bb.ao, %bb.ap, %bb.be
  %eh.lpad-body = phi { ptr, i32 } [ %i.ja, %bb.be ], [ %i.gt, %bb.ap ], [ %i.fd, %bb.aj ], [ %i.gq, %bb.ao ], [ %i.dq, %bb.w ], [ %i.jj, %bb.bn ], [ %lpad.loopexit.split-lp132, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsdjunURa2XPj_19ruff_python_literal6format13FieldNamePartEEB1b_(ptr noalias noundef align 8 dereferenceable(24) %i.f) #14
          to label %.body30 unwind label %bb.cc

.loopexit:                                        ; preds = %_RNCINvMsa_NtCsdjunURa2XPj_19ruff_python_literal6formatNtB8_13FieldNamePart10parse_partINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekable8PeekableNtNtNtB1v_3str4iter5CharsEE0Ba_.exit.i, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB4_8PeekableNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit.thread.i, %.noexc27
  %.sroa.8.0.ph = phi i8 [ 6, %.noexc27 ], [ %.sroa.10.sroa.0.3.i, %_RNCINvMsa_NtCsdjunURa2XPj_19ruff_python_literal6formatNtB8_13FieldNamePart10parse_partINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekable8PeekableNtNtNtB1v_3str4iter5CharsEE0Ba_.exit.i ], [ 7, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB4_8PeekableNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.8.0.ph, ptr %i.jd, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsdjunURa2XPj_19ruff_python_literal6format13FieldNamePartENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.bi unwind label %bb.bh

bb.bh:                                            ; preds = %.loopexit
  %i.je = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsdjunURa2XPj_19ruff_python_literal6format13FieldNamePartENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body30 unwind label %bb.bj

bb.bi:                                            ; preds = %.loopexit
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsdjunURa2XPj_19ruff_python_literal6format13FieldNamePartENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsdjunURa2XPj_19ruff_python_literal6format13FieldNamePartEEB1b_.exit unwind label %bb.bv

bb.bj:                                            ; preds = %bb.bh
  %i.jf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.bk:                                            ; preds = %bb.r, %bb.s, %bb.bg
  %.sroa.12.0 = phi i56 [ undef, %bb.r ], [ %.sroa.10.sroa.10.sroa.0.3.i, %bb.bg ], [ undef, %bb.s ]
  %.sroa.8.0 = phi i8 [ undef, %bb.r ], [ %.sroa.10.sroa.0.3.i, %bb.bg ], [ undef, %bb.s ]
  %.sroa.040.0 = phi i64 [ -1, %bb.r ], [ %.sroa.0.3.i, %bb.bg ], [ -1, %bb.s ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.4.sroa.2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  %.not17 = icmp eq i64 %.sroa.040.0, -1
  br i1 %.not17, label %bb.bp, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %.sroa.040.0, ptr %i.e, align 8
  store i8 %.sroa.8.0, ptr %.sroa.3.0..sroa_idx, align 8
  store i56 %.sroa.12.0, ptr %.sroa.4.0..sroa_idx, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.4.sroa.2, i64 16, i1 false)
  %i.jg = load i64, ptr %i.ca, align 8, !alias.scope !198, !noundef !3 ; 3 uses
  %i.jh = load i64, ptr %i.f, align 8, !range !7, !alias.scope !198, !noundef !3
  %i.ji = icmp eq i64 %i.jg, %i.jh
  br i1 %i.ji, label %bb.bm, label %bb.bq

bb.bm:                                            ; preds = %bb.bl
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsdjunURa2XPj_19ruff_python_literal6format13FieldNamePartE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.bq unwind label %bb.bn, !noalias !199

bb.bn:                                            ; preds = %bb.bm
  %i.jj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdjunURa2XPj_19ruff_python_literal6format13FieldNamePartEBF_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e) #14
          to label %.body unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.jk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.bp:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.jl = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jl, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br i1 %.sroa.08.2, label %bb.br, label %bb.bu

bb.bq:                                            ; preds = %bb.bm, %bb.bl
  %i.jm = load ptr, ptr %i.bz, align 8, !alias.scope !198, !nonnull !3, !noundef !3
  %i.jn = getelementptr inbounds nuw [32 x i8], ptr %i.jm, i64 %i.jg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jn, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  %i.jo = add i64 %i.jg, 1
  store i64 %i.jo, ptr %i.ca, align 8, !alias.scope !198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.r

bb.br:                                            ; preds = %bb.bp
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjunURa2XPj_19ruff_python_literal(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.sink.split unwind label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.jp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjunURa2XPj_19ruff_python_literal(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume unwind label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.jq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13
  unreachable

common.resume:                                    ; preds = %.body34.a, %bb.cd, %bb.ca, %bb.bs
  %common.resume.op = phi { ptr, i32 } [ %i.jv, %bb.ca ], [ %i.jp, %bb.bs ], [ %.pn19100, %bb.cd ], [ %.pn19, %.body34.a ]
  resume { ptr, i32 } %common.resume.op

.sink.split:                                      ; preds = %bb.br, %bb.bz
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjunURa2XPj_19ruff_python_literal(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
  br label %bb.bu

bb.bu:                                            ; preds = %.sink.split, %bb.bp, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdjunURa2XPj_19ruff_python_literal6format9FieldTypeEBF_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

.body30:                                          ; preds = %bb.bv, %bb.bh, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.jr, %bb.bv ], [ %i.je, %bb.bh ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdjunURa2XPj_19ruff_python_literal6format9FieldTypeEBF_(ptr noalias noundef align 8 dereferenceable(24) %i.g) #14
          to label %.body34.a unwind label %bb.cc

bb.bv:                                            ; preds = %bb.bi
  %i.jr = landingpad { ptr, i32 }
          cleanup
  br label %.body30

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsdjunURa2XPj_19ruff_python_literal6format13FieldNamePartEEB1b_.exit: ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.js = load i64, ptr %i.g, align 8, !range !5, !alias.scope !200, !noundef !3
  %switch1.i = icmp slt i64 %i.js, -9223372036854775806
  br i1 %switch1.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdjunURa2XPj_19ruff_python_literal6format9FieldTypeEBF_.exit, label %bb.bw

bb.bw:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsdjunURa2XPj_19ruff_python_literal6format13FieldNamePartEEB1b_.exit
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjunURa2XPj_19ruff_python_literal(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjunURa2XPj_19ruff_python_literal.exit.i unwind label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.jt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjunURa2XPj_19ruff_python_literal(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body34.a unwind label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ju = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjunURa2XPj_19ruff_python_literal.exit.i: ; preds = %bb.bw
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjunURa2XPj_19ruff_python_literal(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdjunURa2XPj_19ruff_python_literal6format9FieldTypeEBF_.exit unwind label %.loopexit.split-lp59

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdjunURa2XPj_19ruff_python_literal6format9FieldTypeEBF_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsdjunURa2XPj_19ruff_python_literal6format13FieldNamePartEEB1b_.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjunURa2XPj_19ruff_python_literal.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br i1 %.sroa.08.2, label %bb.bz, label %bb.bu

bb.bz:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdjunURa2XPj_19ruff_python_literal6format9FieldTypeEBF_.exit
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjunURa2XPj_19ruff_python_literal(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.sink.split unwind label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.jv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjunURa2XPj_19ruff_python_literal(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume unwind label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.jw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.cc:                                            ; preds = %bb.cd, %.body30, %.body
  %i.jx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.cd:                                            ; preds = %.body34.thread, %.body34.a
  %.pn19100 = phi { ptr, i32 } [ %lpad.loopexit60, %.body34.thread ], [ %.pn19, %.body34.a ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjunURa2XPj_19ruff_python_literal(ptr noalias noundef align 8 dereferenceable(24) %i.i) #14
          to label %common.resume unwind label %bb.cc
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsc_NtCsdjunURa2XPj_19ruff_python_literal6formatNtB5_12FormatString10parse_spec(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i8 noundef range(i8 0, 2) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [80 x i8], align 8                ; 15 uses
  %i.e = alloca [24 x i8], align 8                ; 13 uses
  %i.f = alloca [24 x i8], align 8                ; 11 uses
  %i.g = alloca [80 x i8], align 8                ; 15 uses
  %i.h = alloca [24 x i8], align 8                ; 11 uses
  %i.i = alloca [4 x i8], align 4                 ; 5 uses
  %.sroa.13 = alloca [24 x i8], align 8           ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i32 123, ptr %i.i, align 4
  %i.k = call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsdjunURa2XPj_19ruff_python_literal(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef 1)
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.l, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.m = add i64 %2, -1                           ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 0, ptr %i.j, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 5 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.421.0..sroa_idx, align 8
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  store i64 0, ptr %.sroa.522.0..sroa_idx, align 8
  %i.o = getelementptr i8, ptr %1, i64 %2         ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.p = icmp eq i64 %2, 1
  br i1 %i.p, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.outer
  %i.q = phi i64 [ %storemerge, %.outer ], [ 0, %bb.c ]
  %.sroa.02.0.ph68 = phi i8 [ %.sroa.02.1, %.outer ], [ 0, %bb.c ] ; 2 uses
  %.sroa.0.0.ph67 = phi ptr [ %.sroa.0.1, %.outer ], [ %i.n, %bb.c ]
  %.sroa.11.0.ph66 = phi i64 [ %i.be, %.outer ], [ 0, %bb.c ]
  br label %bb.e

bb.d:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjunURa2XPj_19ruff_python_literal.exit31, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjunURa2XPj_19ruff_python_literal.exit, %bb.b
  ret void

bb.e:                                             ; preds = %.lr.ph, %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit33
  %i.r = phi i64 [ %i.q, %.lr.ph ], [ %i.cw, %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit33 ] ; 11 uses
  %.sroa.0.065 = phi ptr [ %.sroa.0.0.ph67, %.lr.ph ], [ %.sroa.0.1, %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit33 ] ; 6 uses
  %.sroa.11.064 = phi i64 [ %.sroa.11.0.ph66, %.lr.ph ], [ %i.be, %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit33 ] ; 2 uses
  %i.s = ptrtoint ptr %.sroa.0.065 to i64
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.065, i64 1 ; 3 uses
  %i.u = load i8, ptr %.sroa.0.065, align 1, !noalias !212, !noundef !3 ; 5 uses
  %i.v = icmp sgt i8 %i.u, -1
  br i1 %i.v, label %bb.f, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit12.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit12.i.i: ; preds = %bb.e
  %i.w = and i8 %i.u, 31
  %i.x = zext nneg i8 %i.w to i32                 ; 3 uses
  %i.y = icmp ne ptr %i.t, %i.o
  call void @llvm.assume(i1 %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.065, i64 2 ; 3 uses
  %i.aa = load i8, ptr %i.t, align 1, !noalias !212, !noundef !3
  %i.ab = shl nuw nsw i32 %i.x, 6
  %i.ac = and i8 %i.aa, 63
  %i.ad = zext nneg i8 %i.ac to i32               ; 2 uses
  %i.ae = or disjoint i32 %i.ab, %i.ad
  %i.af = icmp samesign ugt i8 %i.u, -33
  br i1 %i.af, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit14.i.i, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ag = zext nneg i8 %i.u to i32
  br label %bb.g

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit14.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit12.i.i
  %i.ah = icmp ne ptr %i.z, %i.o
  call void @llvm.assume(i1 %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.065, i64 3 ; 3 uses
  %i.aj = load i8, ptr %i.z, align 1, !noalias !212, !noundef !3
  %i.ak = shl nuw nsw i32 %i.ad, 6
  %i.al = and i8 %i.aj, 63
  %i.am = zext nneg i8 %i.al to i32
  %i.an = or disjoint i32 %i.ak, %i.am            ; 2 uses
  %i.ao = shl nuw nsw i32 %i.x, 12
  %i.ap = or disjoint i32 %i.an, %i.ao
  %i.aq = icmp samesign ugt i8 %i.u, -17
  br i1 %i.aq, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit16.i.i, label %bb.g

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit16.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit14.i.i
  %i.ar = icmp ne ptr %i.ai, %i.o
  call void @llvm.assume(i1 %i.ar)
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.065, i64 4
  %i.at = load i8, ptr %i.ai, align 1, !noalias !212, !noundef !3
  %i.au = shl nuw nsw i32 %i.x, 18
  %i.av = and i32 %i.au, 1835008
  %i.aw = shl nuw nsw i32 %i.an, 6
  %i.ax = and i8 %i.at, 63
  %i.ay = zext nneg i8 %i.ax to i32
  %i.az = or disjoint i32 %i.aw, %i.ay
  %i.ba = or disjoint i32 %i.az, %i.av
  br label %bb.g

.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.r, %bb.s, %bb.l, %bb.aa, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsdjunURa2XPj_19ruff_python_literal.exit78.i, %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit, %bb.bm
  %lpad.loopexit.split-lp127 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body75.i, %bb.bf, %bb.bj
  %eh.lpad-body = phi { ptr, i32 } [ %.pn66.i, %.body75.i ], [ %i.fi, %bb.bj ], [ %i.fe, %bb.bf ], [ %lpad.loopexit.split-lp127, %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjunURa2XPj_19ruff_python_literal(ptr noalias noundef align 8 dereferenceable(24) %i.j) #14
          to label %common.resume unwind label %bb.br

bb.g:                                             ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit12.i.i, %bb.f, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit14.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit16.i.i
  %.sroa.0.1 = phi ptr [ %i.t, %bb.f ], [ %i.as, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit16.i.i ], [ %i.ai, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit14.i.i ], [ %i.z, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit12.i.i ] ; 5 uses
  %.sroa.4.0.i.ph.i = phi i32 [ %i.ag, %bb.f ], [ %i.ba, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit16.i.i ], [ %i.ap, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit14.i.i ], [ %i.ae, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit12.i.i ] ; 10 uses
  %i.bb = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 1114112
  call void @llvm.assume(i1 %i.bb)
  %i.bc = ptrtoint ptr %.sroa.0.1 to i64
  %i.bd = sub i64 %.sroa.11.064, %i.s
  %i.be = add i64 %i.bd, %i.bc                    ; 2 uses
  switch i32 %.sroa.4.0.i.ph.i, label %bb.q [
    i32 125, label %bb.p
    i32 123, label %bb.j
  ]

.thread:                                          ; preds = %.outer, %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit33, %bb.c
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.bf, align 8
  store i64 -2, ptr %0, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjunURa2XPj_19ruff_python_literal(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjunURa2XPj_19ruff_python_literal.exit unwind label %bb.h

bb.h:                                             ; preds = %.thread
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjunURa2XPj_19ruff_python_literal(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13
  unreachable

common.resume:                                    ; preds = %.body, %bb.n, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.bo, %bb.n ], [ %i.bg, %bb.h ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjunURa2XPj_19ruff_python_literal.exit: ; preds = %.thread
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjunURa2XPj_19ruff_python_literal(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.d

bb.j:                                             ; preds = %bb.g
  %i.bi = or i8 %.sroa.02.0.ph68, %3
  %or.cond.not = icmp eq i8 %i.bi, 0
  br i1 %or.cond.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 3, ptr %i.bj, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bk = icmp sgt i64 %i.r, -1
  call void @llvm.assume(i1 %i.bk)
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsdjunURa2XPj_19ruff_python_literal(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef 1)
          to label %.outer unwind label %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.outer:                                           ; preds = %bb.l, %bb.aa
  %.sink = phi i8 [ 125, %bb.aa ], [ 123, %bb.l ]
  %.sroa.02.1 = phi i8 [ 0, %bb.aa ], [ 1, %bb.l ]
  %i.bl = load ptr, ptr %.sroa.421.0..sroa_idx, align 8, !nonnull !3, !noundef !3
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.r
  store i8 %.sink, ptr %i.bm, align 1
  %storemerge = add nuw i64 %i.r, 1               ; 2 uses
  store i64 %storemerge, ptr %.sroa.522.0..sroa_idx, align 8
  %i.bn = icmp eq ptr %.sroa.0.1, %i.o
  br i1 %i.bn, label %.thread, label %.lr.ph

bb.m:                                             ; preds = %bb.bp, %bb.bq, %bb.k
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjunURa2XPj_19ruff_python_literal(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjunURa2XPj_19ruff_python_literal.exit31 unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjunURa2XPj_19ruff_python_literal(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.o

end_hunk_1
