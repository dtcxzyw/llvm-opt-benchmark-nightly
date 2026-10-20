Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/indicatif-370b79dac8aed797.indicatif.16437ea88dc4d66b-cgu.08?download=true
inline.NumInlined: 34
inline.NumDeleted: 21
begin_hunk_0_@_RNvXs4_NtCs1UvybGPDVxf_9indicatif6formatNtB5_15HumanFloatCountNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt:.split
  br i1 %i.al, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.am = add i64 %.sroa.7.0, -1
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 1
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.sroa.031.0 = phi ptr [ @6, %bb.k ], [ inttoptr (i64 1 to ptr), %bb.j ]
  %.sroa.332.0 = phi i64 [ 1, %bb.k ], [ 0, %bb.j ]
  %.sroa.7.1 = phi i64 [ %i.am, %bb.k ], [ %.sroa.7.0, %bb.j ] ; 3 uses
  %.sroa.04.1 = phi ptr [ %i.an, %bb.k ], [ %.sroa.04.0, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ao = invoke noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.031.0, i64 noundef %.sroa.332.0)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %bb.l
  br i1 %i.ao, label %.loopexit55, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.04.1, i64 %.sroa.7.1 ; 4 uses
  %.not.i.i60 = icmp samesign eq i64 %.sroa.7.1, 0
  br i1 %.not.i.i60, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n, %bb.aa
  %.sroa.11.062 = phi i64 [ %i.by, %bb.aa ], [ 0, %bb.n ] ; 2 uses
  %.sroa.042.061 = phi ptr [ %.sroa.042.1, %bb.aa ], [ %.sroa.04.1, %bb.n ] ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.042.061, i64 1 ; 3 uses
  %i.ar = load i8, ptr %.sroa.042.061, align 1, !noalias !33, !noundef !3 ; 5 uses
  %i.as = icmp sgt i8 %i.ar, -1
  br i1 %i.as, label %bb.o, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1UvybGPDVxf_9indicatif.exit12.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1UvybGPDVxf_9indicatif.exit12.i.i.i: ; preds = %.lr.ph
  %i.at = and i8 %i.ar, 31
  %i.au = zext nneg i8 %i.at to i32               ; 3 uses
  %i.av = icmp ne ptr %i.aq, %i.ap
  call void @llvm.assume(i1 %i.av)
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.042.061, i64 2 ; 3 uses
  %i.ax = load i8, ptr %i.aq, align 1, !noalias !33, !noundef !3
  %i.ay = shl nuw nsw i32 %i.au, 6
  %i.az = and i8 %i.ax, 63
  %i.ba = zext nneg i8 %i.az to i32               ; 2 uses
  %i.bb = or disjoint i32 %i.ay, %i.ba
  %i.bc = icmp samesign ugt i8 %i.ar, -33
  br i1 %i.bc, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1UvybGPDVxf_9indicatif.exit14.i.i.i, label %bb.p

bb.o:                                             ; preds = %.lr.ph
  %i.bd = zext nneg i8 %i.ar to i32
  br label %bb.p

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1UvybGPDVxf_9indicatif.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1UvybGPDVxf_9indicatif.exit12.i.i.i
  %i.be = icmp ne ptr %i.aw, %i.ap
  call void @llvm.assume(i1 %i.be)
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.042.061, i64 3 ; 3 uses
  %i.bg = load i8, ptr %i.aw, align 1, !noalias !33, !noundef !3
  %i.bh = shl nuw nsw i32 %i.ba, 6
  %i.bi = and i8 %i.bg, 63
  %i.bj = zext nneg i8 %i.bi to i32
  %i.bk = or disjoint i32 %i.bh, %i.bj            ; 2 uses
  %i.bl = shl nuw nsw i32 %i.au, 12
  %i.bm = or disjoint i32 %i.bk, %i.bl
  %i.bn = icmp samesign ugt i8 %i.ar, -17
  br i1 %i.bn, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1UvybGPDVxf_9indicatif.exit16.i.i.i, label %bb.p

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1UvybGPDVxf_9indicatif.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1UvybGPDVxf_9indicatif.exit14.i.i.i
  %i.bo = icmp ne ptr %i.bf, %i.ap
  call void @llvm.assume(i1 %i.bo)
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.042.061, i64 4
  %i.bq = load i8, ptr %i.bf, align 1, !noalias !33, !noundef !3
  %i.br = shl nuw nsw i32 %i.au, 18
  %i.bs = and i32 %i.br, 1835008
  %i.bt = shl nuw nsw i32 %i.bk, 6
  %i.bu = and i8 %i.bq, 63
  %i.bv = zext nneg i8 %i.bu to i32
  %i.bw = or disjoint i32 %i.bt, %i.bv
  %i.bx = or disjoint i32 %i.bw, %i.bs
  br label %bb.p

bb.p:                                             ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1UvybGPDVxf_9indicatif.exit16.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1UvybGPDVxf_9indicatif.exit14.i.i.i, %bb.o, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1UvybGPDVxf_9indicatif.exit12.i.i.i
  %.sroa.042.1 = phi ptr [ %i.aq, %bb.o ], [ %i.bp, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1UvybGPDVxf_9indicatif.exit16.i.i.i ], [ %i.bf, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1UvybGPDVxf_9indicatif.exit14.i.i.i ], [ %i.aw, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1UvybGPDVxf_9indicatif.exit12.i.i.i ] ; 2 uses
  %spec.select.i.ph.i = phi i32 [ %i.bd, %bb.o ], [ %i.bx, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1UvybGPDVxf_9indicatif.exit16.i.i.i ], [ %i.bm, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1UvybGPDVxf_9indicatif.exit14.i.i.i ], [ %i.bb, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1UvybGPDVxf_9indicatif.exit12.i.i.i ]
  %i.by = add i64 %.sroa.11.062, 1
  %i.bz = xor i64 %.sroa.11.062, -1
  %i.ca = add i64 %.sroa.7.1, %i.bz               ; 2 uses
  %i.cb = invoke noundef zeroext i1 @_RNvXsb_NtCs4NRVxsYgnAr_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %spec.select.i.ph.i)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge:                                      ; preds = %bb.aa, %bb.n
  %i.cc = invoke { ptr, i64 } @_RINvMNtCs4NRVxsYgnAr_4core3stre16trim_end_matchescECs1UvybGPDVxf_9indicatif(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.011.0, i64 noundef %.sroa.312.0, i32 noundef 48)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.q:                                             ; preds = %._crit_edge
  %i.cd = extractvalue { ptr, i64 } %i.cc, 0
  %i.ce = extractvalue { ptr, i64 } %i.cc, 1      ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cg = invoke noundef zeroext i1 @_RNvXsb_NtCs4NRVxsYgnAr_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 46)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %bb.x, %bb.q
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1UvybGPDVxf_9indicatif(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs1UvybGPDVxf_9indicatif.exit40 unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1UvybGPDVxf_9indicatif(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #9
  unreachable

common.resume:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ad, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %i.co, %bb.ad ], [ %i.ch, %bb.t ], [ %lpad.loopexit.split-lp79, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

bb.v:                                             ; preds = %bb.r
  br i1 %i.cg, label %.loopexit55, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cj = invoke noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cd, i64 noundef %i.ce)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %bb.w
  br i1 %i.cj, label %.loopexit55, label %bb.s

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs1UvybGPDVxf_9indicatif.exit40: ; preds = %bb.s, %.loopexit55
  %.sroa.0.0 = phi i1 [ true, %.loopexit55 ], [ false, %bb.s ]
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1UvybGPDVxf_9indicatif(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %.sroa.0.0

bb.y:                                             ; preds = %bb.p
  br i1 %i.cb, label %.loopexit55, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ck = icmp ne i64 %i.ca, 0
  %i.cl = urem i64 %i.ca, 3
  %i.cm = icmp eq i64 %i.cl, 0
  %or.cond = and i1 %i.ck, %i.cm
  br i1 %or.cond, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.ac, %bb.z
  %.not.i.i = icmp eq ptr %.sroa.042.1, %i.ap
  br i1 %.not.i.i, label %._crit_edge, label %.lr.ph

bb.ab:                                            ; preds = %bb.z
  %i.cn = invoke noundef zeroext i1 @_RNvXsb_NtCs4NRVxsYgnAr_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 44)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.cn, label %.loopexit55, label %bb.aa

.loopexit55:                                      ; preds = %bb.y, %bb.ac, %bb.x, %bb.v, %bb.m
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1UvybGPDVxf_9indicatif(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs1UvybGPDVxf_9indicatif.exit40 unwind label %bb.ad

bb.ad:                                            ; preds = %.loopexit55
  %i.co = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1UvybGPDVxf_9indicatif(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #9
  unreachable

bb.af:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #9
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtCs1UvybGPDVxf_9indicatif6formatNtB4_13HumanDurationNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = load i64, ptr %0, align 8                ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i32, ptr %i.h, align 8, !range !34  ; 2 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.a
  %.sroa.0.0.idx108 = phi i64 [ 0, %bb.a ], [ %.sroa.0.0.add, %.backedge.backedge ] ; 2 uses
  %.sroa.7.0107 = phi i64 [ 0, %bb.a ], [ %i.j, %.backedge.backedge ] ; 5 uses
  %.sroa.0.0.ptr = getelementptr inbounds nuw i8, ptr @20, i64 %.sroa.0.0.idx108 ; 2 uses
  %.sroa.0.0.add = add nuw nsw i64 %.sroa.0.0.idx108, 48 ; 3 uses
  %i.j = add i64 %.sroa.7.0107, 1                 ; 4 uses
  %i.k = load i64, ptr %.sroa.0.0.ptr, align 8, !noundef !3 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ptr, i64 8
  %i.m = load i32, ptr %i.l, align 8, !range !34, !noundef !3 ; 2 uses
  %i.n = icmp ult i64 %i.j, 6
  br i1 %i.n, label %bb.b, label %bb.i

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTNtNtBa_4time8DurationReB1T_EEENtNtNtB8_6traits8iterator8Iterator4nextCs1UvybGPDVxf_9indicatif.exit.thread: ; preds = %bb.i, %bb.j
  %i.o = icmp ult i64 %.sroa.7.0107, 6
  br i1 %i.o, label %bb.l, label %bb.m

bb.b:                                             ; preds = %.backedge
  %i.p = getelementptr inbounds nuw [48 x i8], ptr @20, i64 %i.j
  %i.q = load i64, ptr %i.p, align 8, !noundef !3
  %i.r = lshr i64 %i.q, 1
  %i.s = add i64 %i.r, %i.g                       ; 4 uses
  %i.t = icmp ult i64 %i.s, %i.g
  br i1 %i.t, label %_RNvMNtCs4NRVxsYgnAr_4core4timeNtB2_8Duration11checked_add.exit, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %2 = icmp eq i64 %i.j, 5
  %i.u = select i1 %2, i32 500000000, i32 0
  %i.v = add nuw nsw i32 %i.i, %i.u               ; 3 uses
  %i.w = icmp samesign ugt i32 %i.v, 999999999
  br i1 %i.w, label %bb.d, label %_RNvMNtCs4NRVxsYgnAr_4core4timeNtB2_8Duration11checked_add.exit

bb.d:                                             ; preds = %bb.c
  %i.x = icmp eq i64 %i.s, -1
  br i1 %i.x, label %_RNvMNtCs4NRVxsYgnAr_4core4timeNtB2_8Duration11checked_add.exit, label %bb.e, !prof !7

bb.e:                                             ; preds = %bb.d
  %i.y = add nuw i64 %i.s, 1
  %i.z = add nsw i32 %i.v, -1000000000
  br label %_RNvMNtCs4NRVxsYgnAr_4core4timeNtB2_8Duration11checked_add.exit

_RNvMNtCs4NRVxsYgnAr_4core4timeNtB2_8Duration11checked_add.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.sroa.4.0.i = phi i32 [ -1, %bb.d ], [ -1, %bb.b ], [ %i.z, %bb.e ], [ %i.v, %bb.c ] ; 2 uses
  %.sroa.0.0.i94 = phi i64 [ undef, %bb.d ], [ undef, %bb.b ], [ %i.y, %bb.e ], [ %i.s, %bb.c ]
  %.not91 = icmp eq i32 %.sroa.4.0.i, -1          ; 2 uses
  %.sroa.087.0 = select i1 %.not91, i64 -1, i64 %.sroa.0.0.i94 ; 2 uses
  %.sroa.088.0 = select i1 %.not91, i32 999999999, i32 %.sroa.4.0.i
  %i.aa = lshr i64 %i.k, 1
  %i.ab = add i64 %i.aa, %i.k                     ; 4 uses
  %i.ac = icmp ult i64 %i.ab, %i.k
  br i1 %i.ac, label %bb.k, label %bb.f, !prof !7

bb.f:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core4timeNtB2_8Duration11checked_add.exit
  %i.ad = lshr i32 %i.m, 1
  %i.ae = trunc i64 %i.k to i1
  %i.af = select i1 %i.ae, i32 500000000, i32 0
  %i.ag = add nuw nsw i32 %i.af, %i.m
  %i.ah = add nuw nsw i32 %i.ag, %i.ad            ; 3 uses
  %i.ai = icmp samesign ugt i32 %i.ah, 999999999
  br i1 %i.ai, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.aj = icmp eq i64 %i.ab, -1
  br i1 %i.aj, label %bb.k, label %bb.h, !prof !7

bb.h:                                             ; preds = %bb.g
  %i.ak = add nuw i64 %i.ab, 1
  %i.al = add nsw i32 %i.ah, -1000000000
  br label %bb.j

bb.i:                                             ; preds = %.backedge
  %.old = icmp eq i64 %.sroa.0.0.add, 288
  br i1 %.old, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTNtNtBa_4time8DurationReB1T_EEENtNtNtB8_6traits8iterator8Iterator4nextCs1UvybGPDVxf_9indicatif.exit.thread, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.i, %bb.j
  br label %.backedge

bb.j:                                             ; preds = %bb.h, %bb.f
  %.sroa.4.0.i95 = phi i32 [ %i.al, %bb.h ], [ %i.ah, %bb.f ]
  %.sroa.0.0.i96 = phi i64 [ %i.ak, %bb.h ], [ %i.ab, %bb.f ] ; 2 uses
  %i.am = icmp eq i64 %.sroa.087.0, %.sroa.0.0.i96
  %i.an = icmp uge i64 %.sroa.087.0, %.sroa.0.0.i96
  %i.ao = icmp samesign uge i32 %.sroa.088.0, %.sroa.4.0.i95
  %spec.select = select i1 %i.am, i1 %i.ao, i1 %i.an
  %i.ap = icmp eq i64 %.sroa.0.0.add, 288
  %or.cond = select i1 %spec.select, i1 true, i1 %i.ap
  br i1 %or.cond, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTNtNtBa_4time8DurationReB1T_EEENtNtNtB8_6traits8iterator8Iterator4nextCs1UvybGPDVxf_9indicatif.exit.thread, label %.backedge.backedge

bb.k:                                             ; preds = %bb.g, %_RNvMNtCs4NRVxsYgnAr_4core4timeNtB2_8Duration11checked_add.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 30, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #10
  unreachable

bb.l:                                             ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTNtNtBa_4time8DurationReB1T_EEENtNtNtB8_6traits8iterator8Iterator4nextCs1UvybGPDVxf_9indicatif.exit.thread
  %i.aq = getelementptr inbounds nuw [48 x i8], ptr @20, i64 %.sroa.7.0107 ; 4 uses
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !nonnull !3, !noundef !3
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.av = load i64, ptr %i.au, align 8, !noundef !3
  store ptr %i.at, ptr %i.f, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.av, ptr %i.aw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !3, !noundef !3
  store ptr %i.ay, ptr %i.e, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.az, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ba = uitofp i64 %i.g to double
  %i.bb = fmul nnan double %i.ba, 1.000000e+09
  %i.bc = uitofp nneg i32 %i.i to double
  %i.bd = fadd double %i.bb, %i.bc
  %i.be = uitofp i64 %i.ar to double
  %i.bf = fmul nnan double %i.be, 1.000000e+09
  %i.bg = fdiv double %i.bd, %i.bf
  %i.bh = tail call double @llvm.round.f64(double %i.bg)
  %i.bi = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.bh) ; 2 uses
  %.not93 = icmp eq i64 %.sroa.7.0107, 5
  %.sroa.0.0.i98 = tail call range(i64 2, 0) i64 @llvm.umax.i64(i64 %i.bi, i64 2)
  %storemerge = select i1 %.not93, i64 %i.bi, i64 %.sroa.0.0.i98 ; 2 uses
  store i64 %storemerge, ptr %i.d, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bk = load i32, ptr %i.bj, align 8, !noundef !3
  %i.bl = and i32 %i.bk, 8388608
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.n, label %bb.o

bb.m:                                             ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTNtNtBa_4time8DurationReB1T_EEENtNtNtB8_6traits8iterator8Iterator4nextCs1UvybGPDVxf_9indicatif.exit.thread
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.sroa.7.0107, i64 noundef 6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #10
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.bn = icmp eq i64 %storemerge, 1
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.bn, label %bb.p, label %bb.q

bb.o:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.438.0..sroa_idx, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.e, ptr %i.bp, align 8
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCs1UvybGPDVxf_9indicatif, ptr %.sroa.442.0..sroa_idx, align 8
  %i.bq = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !3, !align !4, !noundef !3
  %i.bt = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.bq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bs, ptr noundef nonnull @26, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.434.0..sroa_idx, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.f, ptr %i.bu, align 8
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCs1UvybGPDVxf_9indicatif, ptr %.sroa.458.0..sroa_idx, align 8
  %i.bv = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.bw = load ptr, ptr %i.bo, align 8, !nonnull !3, !align !4, !noundef !3
  %i.bx = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.bv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bw, ptr noundef nonnull @24, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.r

bb.q:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.430.0..sroa_idx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.f, ptr %i.by, align 8
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCs1UvybGPDVxf_9indicatif, ptr %.sroa.474.0..sroa_idx, align 8
  %i.bz = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.ca = load ptr, ptr %i.bo, align 8, !nonnull !3, !align !4, !noundef !3
  %i.cb = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.bz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ca, ptr noundef nonnull @25, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.r

bb.r:                                             ; preds = %bb.o, %bb.q, %bb.p
  %.sroa.0.1.in = phi i1 [ %i.bx, %bb.p ], [ %i.cb, %bb.q ], [ %i.bt, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret i1 %.sroa.0.1.in
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1UvybGPDVxf_9indicatif(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1UvybGPDVxf_9indicatif(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1UvybGPDVxf_9indicatif(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #6
end_hunk_0
