Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.13?download=true
inline.NumInlined: 4254
inline.NumDeleted: 1726
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_RNvXss_NtCs7gfv9tzbXmh_6yara_x5typesNtB5_9TypeValueNtNtCskKLDkoKarTP_4core5clone5Clone5clone:bb.a
bb.r:                                             ; preds = %bb.d, %bb.q, %bb.p
  %.sroa.62.0 = phi double [ %i.ax, %bb.p ], [ %i.ay, %bb.q ], [ undef, %bb.d ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %.sroa.62.0, ptr %i.ba, align 8
  store i8 2, ptr %0, align 8
  br label %bb.l

bb.s:                                             ; preds = %bb.e
  %i.bb = load i64, ptr %i.p, align 8, !noundef !10
  br label %bb.u

bb.t:                                             ; preds = %bb.e
  %i.bc = load i64, ptr %i.p, align 8, !noundef !10
  br label %bb.u

bb.u:                                             ; preds = %bb.e, %bb.t, %bb.s
  %.sroa.64.0 = phi i64 [ %i.bb, %bb.s ], [ %i.bc, %bb.t ], [ undef, %bb.e ]
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !range !31, !noundef !10
  %.not21 = icmp eq i64 %i.be, -1
  br i1 %.not21, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs7gfv9tzbXmh_6yara_x5types17IntegerConstraintENtNtCskKLDkoKarTP_4core5clone5Clone5cloneBJ_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bd)
  %.sroa.05.0.copyload = load i64, ptr %i.b, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %.sroa.05.0 = phi i64 [ %.sroa.05.0.copyload, %bb.v ], [ -1, %bb.u ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.o, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.64.0, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.05.0, ptr %i.bh, align 8
  %.sroa.5.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx7, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false)
  store i8 3, ptr %0, align 8
  br label %bb.l

bb.x:                                             ; preds = %bb.f
  %i.bi = load ptr, ptr %i.s, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !10 ; 2 uses
  %i.bk = icmp ne i64 %i.bj, 0
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = add i64 %i.bj, 1                        ; 2 uses
  store i64 %i.bl, ptr %i.bi, align 8
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %bb.z, label %.sink.split, !prof !14

bb.y:                                             ; preds = %bb.f
  %i.bn = load ptr, ptr %i.s, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !10 ; 2 uses
  %i.bp = icmp ne i64 %i.bo, 0
  tail call void @llvm.assume(i1 %i.bp)
  %i.bq = add i64 %i.bo, 1                        ; 2 uses
  store i64 %i.bq, ptr %i.bn, align 8
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %bb.ab, label %.sink.split, !prof !14

bb.z:                                             ; preds = %bb.x
  tail call void @llvm.trap()
  unreachable

.sink.split:                                      ; preds = %bb.x, %bb.y
  %.sink23 = phi ptr [ %i.bn, %bb.y ], [ %i.bi, %bb.x ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sink23, ptr %i.bs, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %.sink.split, %bb.f
  store i64 %i.r, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.510)
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !range !31, !noundef !10
  %.not20 = icmp eq i64 %i.bu, -1
  br i1 %.not20, label %bb.ad, label %bb.ac

bb.ab:                                            ; preds = %bb.y
  tail call void @llvm.trap()
  unreachable

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs7gfv9tzbXmh_6yara_x5types16StringConstraintENtNtCskKLDkoKarTP_4core5clone5Clone5cloneBJ_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bt)
          to label %bb.af unwind label %bb.ae

bb.ad:                                            ; preds = %bb.aa, %bb.af
  %.sroa.08.0 = phi i64 [ %.sroa.08.0.copyload9, %bb.af ], [ -1, %bb.aa ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.r, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.bw, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.08.0, ptr %i.bz, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.510.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.510, i64 16, i1 false)
  store i8 4, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.510)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.l

bb.ae:                                            ; preds = %bb.ac
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs7gfv9tzbXmh_6yara_x5types5ValueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtNtCs2AhGS15tZfv_4bstr7bstring7BStringEEEBG_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.e) #43
          to label %bb.ah unwind label %bb.ag

bb.af:                                            ; preds = %bb.ac
  %.sroa.08.0.copyload9 = load i64, ptr %i.a, align 8
  %.sroa.510.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.510, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.510.0..sroa_idx11, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ad

bb.ag:                                            ; preds = %bb.ae
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #42
  unreachable

bb.ah:                                            ; preds = %bb.ae
  resume { ptr, i32 } %i.ca

bb.ai:                                            ; preds = %bb.g
  call void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t)
  %.sroa.016.0.copyload = load i64, ptr %i.c, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.g, %bb.ai
  %.sroa.012.0 = phi i64 [ %.sroa.016.0.copyload, %bb.ai ], [ -1, %bb.g ]
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.012.0, ptr %i.cc, align 8
  %.sroa.514.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.514.0..sroa_idx15, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  store i8 5, ptr %0, align 8
  br label %bb.l

bb.ak:                                            ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

bb.al:                                            ; preds = %bb.h
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.cd, align 8
  store i8 6, ptr %0, align 8
  br label %bb.l

bb.am:                                            ; preds = %bb.i
  tail call void @llvm.trap()
  unreachable

bb.an:                                            ; preds = %bb.i
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ac, ptr %i.ce, align 8
  store i8 7, ptr %0, align 8
  br label %bb.l

bb.ao:                                            ; preds = %bb.j
  tail call void @llvm.trap()
  unreachable

bb.ap:                                            ; preds = %bb.j
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ai, ptr %i.cf, align 8
  store i8 8, ptr %0, align 8
  br label %bb.l

bb.aq:                                            ; preds = %bb.k
  tail call void @llvm.trap()
  unreachable

bb.ar:                                            ; preds = %bb.k
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ao, ptr %i.cg, align 8
  store i8 9, ptr %0, align 8
  br label %bb.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXst_NtCs2CmfWUMKNor_9itertools10tuple_implTTRNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ExprIdRNtNtCsfF8zpZz1lvn_13yara_x_parser3ast4ExprEBI_ENtB5_12TupleCollect15left_shift_pushBQ_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load <2 x ptr>, ptr %i.a, align 8
  store ptr %1, ptr %i.a, align 8
  store ptr %2, ptr %i.b, align 8
  store <2 x ptr> %i.c, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXsu_NtNtCs7gfv9tzbXmh_6yara_x8compiler2irNtB5_7PatternNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !26, !noundef !10 ; 2 uses
  %i.b = tail call i64 @llvm.usub.sat.i64(i64 %i.a, i64 1) ; 2 uses
  %i.c = load i64, ptr %1, align 8, !range !26, !noundef !10 ; 3 uses
  %i.d = tail call i64 @llvm.usub.sat.i64(i64 %i.c, i64 1)
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXsz_NtNtCs7gfv9tzbXmh_6yara_x8compiler2irNtB5_14LiteralPatternNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  switch i64 %i.b, label %default.unreachable [
    i64 0, label %bb.c
    i64 1, label %bb.aa
    i64 2, label %bb.ab
  ]

_RNvXsz_NtNtCs7gfv9tzbXmh_6yara_x8compiler2irNtB5_14LiteralPatternNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit: ; preds = %bb.z, %bb.y, %bb.x, %_RNvXs1h_NtNtCskKLDkoKarTP_4core3ops5rangeINtB6_5BoundxENtNtBa_3cmp9PartialEq2eqCs7gfv9tzbXmh_6yara_x.exit28.thread.i, %_RNvXs1h_NtNtCskKLDkoKarTP_4core3ops5rangeINtB6_5BoundxENtNtBa_3cmp9PartialEq2eqCs7gfv9tzbXmh_6yara_x.exit28.i, %.split39.i, %_RNvXs1h_NtNtCskKLDkoKarTP_4core3ops5rangeINtB6_5BoundxENtNtBa_3cmp9PartialEq2eqCs7gfv9tzbXmh_6yara_x.exit.thread.i, %_RNvXs1h_NtNtCskKLDkoKarTP_4core3ops5rangeINtB6_5BoundxENtNtBa_3cmp9PartialEq2eqCs7gfv9tzbXmh_6yara_x.exit.i, %.split35.i, %bb.u, %.split31.i, %bb.t, %bb.s, %bb.r, %.split30.i, %bb.p, %bb.o, %bb.n, %.split29.i, %bb.l, %bb.k, %bb.j, %.split.i, %bb.h, %bb.g, %bb.e, %bb.d, %bb.c, %bb.a, %bb.ab, %bb.aa
  %.sroa.0.0.shrunk = phi i1 [ false, %bb.a ], [ %i.di, %bb.aa ], [ %i.dl, %bb.ab ], [ %i.df, %bb.z ], [ true, %bb.x ], [ false, %_RNvXs1h_NtNtCskKLDkoKarTP_4core3ops5rangeINtB6_5BoundxENtNtBa_3cmp9PartialEq2eqCs7gfv9tzbXmh_6yara_x.exit28.thread.i ], [ false, %bb.e ], [ false, %_RNvXs1h_NtNtCskKLDkoKarTP_4core3ops5rangeINtB6_5BoundxENtNtBa_3cmp9PartialEq2eqCs7gfv9tzbXmh_6yara_x.exit.i ], [ false, %bb.t ], [ false, %bb.r ], [ false, %bb.p ], [ false, %bb.n ], [ false, %bb.l ], [ false, %bb.c ], [ false, %bb.j ], [ false, %bb.g ], [ false, %bb.d ], [ false, %_RNvXs1h_NtNtCskKLDkoKarTP_4core3ops5rangeINtB6_5BoundxENtNtBa_3cmp9PartialEq2eqCs7gfv9tzbXmh_6yara_x.exit28.i ], [ false, %bb.s ], [ false, %bb.o ], [ false, %bb.k ], [ false, %bb.h ], [ false, %bb.y ], [ false, %.split.i ], [ false, %.split29.i ], [ false, %.split30.i ], [ false, %.split31.i ], [ false, %.split39.i ], [ false, %.split35.i ], [ false, %bb.u ], [ false, %_RNvXs1h_NtNtCskKLDkoKarTP_4core3ops5rangeINtB6_5BoundxENtNtBa_3cmp9PartialEq2eqCs7gfv9tzbXmh_6yara_x.exit.thread.i ]
  ret i1 %.sroa.0.0.shrunk

default.unreachable:                              ; preds = %bb.w, %bb.v, %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i64 %i.c, 2
  tail call void @llvm.assume(i1 %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8363)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = load i16, ptr %i.g, align 8, !alias.scope !8362, !noundef !10
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.j = load i16, ptr %i.i, align 8, !alias.scope !8363, !noundef !10
  %i.k = icmp eq i16 %i.h, %i.j
  br i1 %i.k, label %bb.d, label %_RNvXsz_NtNtCs7gfv9tzbXmh_6yara_x8compiler2irNtB5_14LiteralPatternNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !8362, !noundef !10 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !8363, !noundef !10
  %i.p = icmp eq i64 %i.m, %i.o
  br i1 %i.p, label %bb.e, label %_RNvXsz_NtNtCs7gfv9tzbXmh_6yara_x8compiler2irNtB5_14LiteralPatternNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !8363, !nonnull !10, !noundef !10
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !8362, !nonnull !10, !noundef !10
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.t, ptr nonnull %i.r, i64 %i.m), !noalias !8364
  %i.u = icmp eq i32 %bcmp.i, 0
  br i1 %i.u, label %bb.f, label %_RNvXsz_NtNtCs7gfv9tzbXmh_6yara_x8compiler2irNtB5_14LiteralPatternNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = trunc nuw i64 %i.a to i1
  %i.x = trunc nuw i64 %i.c to i1                 ; 2 uses
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  br i1 %i.x, label %.split.i, label %_RNvXsz_NtNtCs7gfv9tzbXmh_6yara_x8compiler2irNtB5_14LiteralPatternNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %bb.f
  br i1 %i.x, label %_RNvXsz_NtNtCs7gfv9tzbXmh_6yara_x8compiler2irNtB5_14LiteralPatternNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit, label %bb.i

.split.i:                                         ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load i64, ptr %i.v, align 8, !alias.scope !8362, !noundef !10
  %i.aa = load i64, ptr %i.y, align 8, !alias.scope !8363, !noundef !10
  %i.ab = icmp eq i64 %i.z, %i.aa
  br i1 %i.ab, label %bb.i, label %_RNvXsz_NtNtCs7gfv9tzbXmh_6yara_x8compiler2irNtB5_14LiteralPatternNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %.split.i, %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 146
  %i.ad = load i8, ptr %i.ac, align 2, !range !66, !alias.scope !8362, !noundef !10 ; 2 uses
  %.not.i = icmp eq i8 %i.ad, 2
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 146
  %i.af = load i8, ptr %i.ae, align 2, !range !66, !alias.scope !8363, !noundef !10 ; 2 uses
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = icmp eq i8 %i.ad, %i.af
  br i1 %i.ag, label %bb.l, label %_RNvXsz_NtNtCs7gfv9tzbXmh_6yara_x8compiler2irNtB5_14LiteralPatternNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.i
  %i.ah = icmp eq i8 %i.af, 2
  br i1 %i.ah, label %bb.m, label %_RNvXsz_NtNtCs7gfv9tzbXmh_6yara_x8compiler2irNtB5_14LiteralPatternNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 147
  %i.aj = load i8, ptr %i.ai, align 1, !alias.scope !8362, !noundef !10
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 147
  %i.al = load i8, ptr %i.ak, align 1, !alias.scope !8363, !noundef !10
  %i.am = icmp eq i8 %i.aj, %i.al
  br i1 %i.am, label %.split29.i, label %_RNvXsz_NtNtCs7gfv9tzbXmh_6yara_x8compiler2irNtB5_14LiteralPatternNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

.split29.i:                                       ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.ao = load i8, ptr %i.an, align 4, !alias.scope !8362, !noundef !10
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.aq = load i8, ptr %i.ap, align 4, !alias.scope !8363, !noundef !10
  %i.ar = icmp eq i8 %i.ao, %i.aq
  br i1 %i.ar, label %bb.m, label %_RNvXsz_NtNtCs7gfv9tzbXmh_6yara_x8compiler2irNtB5_14LiteralPatternNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.m:                                             ; preds = %.split29.i, %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.at = load i64, ptr %i.as, align 8, !range !31, !alias.scope !8362, !noundef !10
  %.not11.i = icmp eq i64 %i.at, -1
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.av = load i64, ptr %i.au, align 8, !range !31, !alias.scope !8363, !noundef !10
  %i.aw = icmp eq i64 %i.av, -1                   ; 2 uses
  br i1 %.not11.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %i.aw, label %_RNvXsz_NtNtCs7gfv9tzbXmh_6yara_x8compiler2irNtB5_14LiteralPatternNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit, label %bb.p

bb.o:                                             ; preds = %bb.m
  br i1 %i.aw, label %bb.q, label %_RNvXsz_NtNtCs7gfv9tzbXmh_6yara_x8compiler2irNtB5_14LiteralPatternNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.p:                                             ; preds = %bb.n
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !8362, !noundef !10 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !8363, !noundef !10
  %i.bb = icmp eq i64 %i.ay, %i.ba
  br i1 %i.bb, label %.split30.i, label %_RNvXsz_NtNtCs7gfv9tzbXmh_6yara_x8compiler2irNtB5_14LiteralPatternNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

.split30.i:                                       ; preds = %bb.p
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !8363, !nonnull !10, !noundef !10
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bf = load ptr, ptr %i.be, align 8, !alias.scope !8362, !nonnull !10, !noundef !10
  %bcmp13.i = tail call i32 @bcmp(ptr nonnull %i.bf, ptr nonnull %i.bd, i64 %i.ay), !noalias !8364
  %i.bg = icmp eq i32 %bcmp13.i, 0
  br i1 %i.bg, label %bb.q, label %_RNvXsz_NtNtCs7gfv9tzbXmh_6yara_x8compiler2irNtB5_14LiteralPatternNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.q:                                             ; preds = %.split30.i, %bb.o
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bi = load i64, ptr %i.bh, align 8, !range !31, !alias.scope !8362, !noundef !10
  %.not14.i = icmp eq i64 %i.bi, -1
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bk = load i64, ptr %i.bj, align 8, !range !31, !alias.scope !8363, !noundef !10
  %i.bl = icmp eq i64 %i.bk, -1                   ; 2 uses
  br i1 %.not14.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  br i1 %i.bl, label %_RNvXsz_NtNtCs7gfv9tzbXmh_6yara_x8compiler2irNtB5_14LiteralPatternNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit, label %bb.t

bb.s:                                             ; preds = %bb.q
  br i1 %i.bl, label %bb.u, label %_RNvXsz_NtNtCs7gfv9tzbXmh_6yara_x8compiler2irNtB5_14LiteralPatternNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.t:                                             ; preds = %bb.r
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !8362, !noundef !10 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !8363, !noundef !10
  %i.bq = icmp eq i64 %i.bn, %i.bp
  br i1 %i.bq, label %.split31.i, label %_RNvXsz_NtNtCs7gfv9tzbXmh_6yara_x8compiler2irNtB5_14LiteralPatternNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

.split31.i:                                       ; preds = %bb.t
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bs = load ptr, ptr %i.br, align 8, !alias.scope !8363, !nonnull !10, !noundef !10
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bu = load ptr, ptr %i.bt, align 8, !alias.scope !8362, !nonnull !10, !noundef !10
  %bcmp16.i = tail call i32 @bcmp(ptr nonnull %i.bu, ptr nonnull %i.bs, i64 %i.bn), !noalias !8364
  %i.bv = icmp eq i32 %bcmp16.i, 0
  br i1 %i.bv, label %bb.u, label %_RNvXsz_NtNtCs7gfv9tzbXmh_6yara_x8compiler2irNtB5_14LiteralPatternNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.u:                                             ; preds = %.split31.i, %bb.s
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val22.i = load i64, ptr %i.bw, align 8, !range !24, !alias.scope !8362, !noundef !10 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val23.i = load i64, ptr %i.by, align 8, !alias.scope !8362 ; 2 uses
  %.val24.i = load i64, ptr %i.bx, align 8, !range !24, !alias.scope !8363, !noundef !10
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val25.i = load i64, ptr %i.bz, align 8, !alias.scope !8363 ; 2 uses
  %i.ca = icmp eq i64 %.val22.i, %.val24.i
  br i1 %i.ca, label %bb.v, label %_RNvXsz_NtNtCs7gfv9tzbXmh_6yara_x8compiler2irNtB5_14LiteralPatternNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.v:                                             ; preds = %bb.u
  switch i64 %.val22.i, label %default.unreachable [
    i64 0, label %_RNvXs1h_NtNtCskKLDkoKarTP_4core3ops5rangeINtB6_5BoundxENtNtBa_3cmp9PartialEq2eqCs7gfv9tzbXmh_6yara_x.exit.i
    i64 1, label %.split35.i
    i64 2, label %_RNvXs1h_NtNtCskKLDkoKarTP_4core3ops5rangeINtB6_5BoundxENtNtBa_3cmp9PartialEq2eqCs7gfv9tzbXmh_6yara_x.exit.thread.i
  ]

.split35.i:                                       ; preds = %bb.v
  %i.cb = icmp eq i64 %.val23.i, %.val25.i
  br i1 %i.cb, label %_RNvXs1h_NtNtCskKLDkoKarTP_4core3ops5rangeINtB6_5BoundxENtNtBa_3cmp9PartialEq2eqCs7gfv9tzbXmh_6yara_x.exit.thread.i, label %_RNvXsz_NtNtCs7gfv9tzbXmh_6yara_x8compiler2irNtB5_14LiteralPatternNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

_RNvXs1h_NtNtCskKLDkoKarTP_4core3ops5rangeINtB6_5BoundxENtNtBa_3cmp9PartialEq2eqCs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %bb.v
  %i.cc = icmp eq i64 %.val23.i, %.val25.i
  br i1 %i.cc, label %_RNvXs1h_NtNtCskKLDkoKarTP_4core3ops5rangeINtB6_5BoundxENtNtBa_3cmp9PartialEq2eqCs7gfv9tzbXmh_6yara_x.exit.thread.i, label %_RNvXsz_NtNtCs7gfv9tzbXmh_6yara_x8compiler2irNtB5_14LiteralPatternNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

_RNvXs1h_NtNtCskKLDkoKarTP_4core3ops5rangeINtB6_5BoundxENtNtBa_3cmp9PartialEq2eqCs7gfv9tzbXmh_6yara_x.exit.thread.i: ; preds = %_RNvXs1h_NtNtCskKLDkoKarTP_4core3ops5rangeINtB6_5BoundxENtNtBa_3cmp9PartialEq2eqCs7gfv9tzbXmh_6yara_x.exit.i, %.split35.i, %bb.v
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i = load i64, ptr %i.cd, align 8, !range !24, !alias.scope !8362, !noundef !10 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val19.i = load i64, ptr %i.cf, align 8, !alias.scope !8362 ; 2 uses
  %.val20.i = load i64, ptr %i.ce, align 8, !range !24, !alias.scope !8363, !noundef !10
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val21.i = load i64, ptr %i.cg, align 8, !alias.scope !8363 ; 2 uses
  %i.ch = icmp eq i64 %.val.i, %.val20.i
  br i1 %i.ch, label %bb.w, label %_RNvXsz_NtNtCs7gfv9tzbXmh_6yara_x8compiler2irNtB5_14LiteralPatternNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.w:                                             ; preds = %_RNvXs1h_NtNtCskKLDkoKarTP_4core3ops5rangeINtB6_5BoundxENtNtBa_3cmp9PartialEq2eqCs7gfv9tzbXmh_6yara_x.exit.thread.i
  switch i64 %.val.i, label %default.unreachable [
    i64 0, label %_RNvXs1h_NtNtCskKLDkoKarTP_4core3ops5rangeINtB6_5BoundxENtNtBa_3cmp9PartialEq2eqCs7gfv9tzbXmh_6yara_x.exit28.i
    i64 1, label %.split39.i
    i64 2, label %_RNvXs1h_NtNtCskKLDkoKarTP_4core3ops5rangeINtB6_5BoundxENtNtBa_3cmp9PartialEq2eqCs7gfv9tzbXmh_6yara_x.exit28.thread.i
  ]

.split39.i:                                       ; preds = %bb.w
  %i.ci = icmp eq i64 %.val19.i, %.val21.i
  br i1 %i.ci, label %_RNvXs1h_NtNtCskKLDkoKarTP_4core3ops5rangeINtB6_5BoundxENtNtBa_3cmp9PartialEq2eqCs7gfv9tzbXmh_6yara_x.exit28.thread.i, label %_RNvXsz_NtNtCs7gfv9tzbXmh_6yara_x8compiler2irNtB5_14LiteralPatternNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

_RNvXs1h_NtNtCskKLDkoKarTP_4core3ops5rangeINtB6_5BoundxENtNtBa_3cmp9PartialEq2eqCs7gfv9tzbXmh_6yara_x.exit28.i: ; preds = %bb.w
  %i.cj = icmp eq i64 %.val19.i, %.val21.i
  br i1 %i.cj, label %_RNvXs1h_NtNtCskKLDkoKarTP_4core3ops5rangeINtB6_5BoundxENtNtBa_3cmp9PartialEq2eqCs7gfv9tzbXmh_6yara_x.exit28.thread.i, label %_RNvXsz_NtNtCs7gfv9tzbXmh_6yara_x8compiler2irNtB5_14LiteralPatternNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

_RNvXs1h_NtNtCskKLDkoKarTP_4core3ops5rangeINtB6_5BoundxENtNtBa_3cmp9PartialEq2eqCs7gfv9tzbXmh_6yara_x.exit28.thread.i: ; preds = %_RNvXs1h_NtNtCskKLDkoKarTP_4core3ops5rangeINtB6_5BoundxENtNtBa_3cmp9PartialEq2eqCs7gfv9tzbXmh_6yara_x.exit28.i, %.split39.i, %bb.w
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cl = load i64, ptr %i.ck, align 8, !range !46, !alias.scope !8362, !noundef !10 ; 2 uses
  %i.cm = xor i64 %i.cl, -9223372036854775808
  %i.cn = icmp slt i64 %i.cl, 0
  %i.co = select i1 %i.cn, i64 %i.cm, i64 2       ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.cq = load i64, ptr %i.cp, align 8, !range !46, !alias.scope !8363, !noundef !10 ; 2 uses
  %i.cr = xor i64 %i.cq, -9223372036854775808
  %i.cs = icmp slt i64 %i.cq, 0
  %i.ct = select i1 %i.cs, i64 %i.cr, i64 2
  %i.cu = icmp eq i64 %i.co, %i.ct
  br i1 %i.cu, label %bb.x, label %_RNvXsz_NtNtCs7gfv9tzbXmh_6yara_x8compiler2irNtB5_14LiteralPatternNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.x:                                             ; preds = %_RNvXs1h_NtNtCskKLDkoKarTP_4core3ops5rangeINtB6_5BoundxENtNtBa_3cmp9PartialEq2eqCs7gfv9tzbXmh_6yara_x.exit28.thread.i
  %i.cv = icmp eq i64 %i.co, 2
  br i1 %i.cv, label %bb.y, label %_RNvXsz_NtNtCs7gfv9tzbXmh_6yara_x8compiler2irNtB5_14LiteralPatternNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.y:                                             ; preds = %bb.x
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.cx = load i64, ptr %i.cw, align 8, !alias.scope !8362, !noundef !10 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.cz = load i64, ptr %i.cy, align 8, !alias.scope !8363, !noundef !10
  %i.da = icmp eq i64 %i.cx, %i.cz
  br i1 %i.da, label %bb.z, label %_RNvXsz_NtNtCs7gfv9tzbXmh_6yara_x8compiler2irNtB5_14LiteralPatternNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.z:                                             ; preds = %bb.y
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.dc = load ptr, ptr %i.db, align 8, !alias.scope !8363, !nonnull !10, !noundef !10
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.de = load ptr, ptr %i.dd, align 8, !alias.scope !8362, !nonnull !10, !noundef !10
  %bcmp17.i = tail call i32 @bcmp(ptr nonnull %i.de, ptr nonnull %i.dc, i64 %i.cx), !noalias !8364
  %i.df = icmp eq i32 %bcmp17.i, 0
  br label %_RNvXsz_NtNtCs7gfv9tzbXmh_6yara_x8compiler2irNtB5_14LiteralPatternNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.aa:                                            ; preds = %bb.b
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.di = tail call fastcc noundef zeroext i1 @_RNvXsE_NtNtCs7gfv9tzbXmh_6yara_x8compiler2irNtB5_13RegexpPatternNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.dg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.dh) #41
  br label %_RNvXsz_NtNtCs7gfv9tzbXmh_6yara_x8compiler2irNtB5_14LiteralPatternNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.ab:                                            ; preds = %bb.b
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dl = tail call fastcc noundef zeroext i1 @_RNvXsE_NtNtCs7gfv9tzbXmh_6yara_x8compiler2irNtB5_13RegexpPatternNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.dj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.dk) #41
  br label %_RNvXsz_NtNtCs7gfv9tzbXmh_6yara_x8compiler2irNtB5_14LiteralPatternNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNvYINtNtNtNtCskKLDkoKarTP_4core4iter7sources4once4OnceRNtNtCsfF8zpZz1lvn_13yara_x_parser3ast4ExprENtNtNtB9_6traits8iterator8Iterator10advance_byCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(8) %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef i64 @_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_7sources4once4OnceRNtNtCsfF8zpZz1lvn_13yara_x_parser3ast4ExprENtB4_13SpecAdvanceBy15spec_advance_byCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1)
  ret i64 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef align 8 ptr @_RNvYINtNtNtNtCskKLDkoKarTP_4core4iter7sources4once4OnceRNtNtCsfF8zpZz1lvn_13yara_x_parser3ast4ExprENtNtNtB9_6traits8iterator8Iterator3nthCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(8) %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef i64 @_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_7sources4once4OnceRNtNtCsfF8zpZz1lvn_13yara_x_parser3ast4ExprENtB4_13SpecAdvanceBy15spec_advance_byCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1)
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !alias.scope !8367, !align !17, !noundef !10
  store ptr null, ptr %0, align 8, !alias.scope !8367
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef ptr @_RNvYNCNKNvNtNtCs7gfv9tzbXmh_6yara_x7modules6cuckoo10LOCAL_DATA00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB17_6option6OptionQIB1M_INtNtB17_4cell7RefCellIB1M_INtNtCsexYYUdYSQU6_5alloc2rc2RcNtNtB8_6schema10CuckooJsonEEEEEEE9call_onceBc_(ptr noalias nofree readnone align 8 captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCs7gfv9tzbXmh_6yara_x7modules6cuckoo10LOCAL_DATA0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !66, !noundef !10
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %_RNCNKNvNtNtCs7gfv9tzbXmh_6yara_x7modules6cuckoo10LOCAL_DATA00B9_.exit, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native5eagerINtB2_7StorageINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtB1f_6option6OptionINtNtCsexYYUdYSQU6_5alloc2rc2RcNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6cuckoo6schema10CuckooJsonEEEE16get_or_init_slowB2L_(ptr noundef nonnull align 8 %i.a)
  br label %_RNCNKNvNtNtCs7gfv9tzbXmh_6yara_x7modules6cuckoo10LOCAL_DATA00B9_.exit

_RNCNKNvNtNtCs7gfv9tzbXmh_6yara_x7modules6cuckoo10LOCAL_DATA00B9_.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.a ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef ptr @_RNvYNCNKNvNtNtNtCs6i8zKcEiGNL_14regex_automata4util4pool5inner9THREAD_ID0s_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1j_6option6OptionQIB1Y_jEEEE9call_onceCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable_or_null(16) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtNtCs6i8zKcEiGNL_14regex_automata4util4pool5inner9THREAD_ID0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i8, ptr %i.b, align 8, !range !16, !noalias !8372, !noundef !10
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNCNKNvNtNtNtCs6i8zKcEiGNL_14regex_automata4util4pool5inner9THREAD_ID0s_0Cs7gfv9tzbXmh_6yara_x.exit, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_RINvMs0_NtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazyINtB6_7StoragejzE16get_or_init_slowNvNvNtNtNtCs6i8zKcEiGNL_14regex_automata4util4pool5inner9THREAD_ID27___rust_std_internal_init_fnECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull align 8 %i.a, ptr noalias nofree noundef align 8 dereferenceable_or_null(16) %0)
  br label %_RNCNKNvNtNtNtCs6i8zKcEiGNL_14regex_automata4util4pool5inner9THREAD_ID0s_0Cs7gfv9tzbXmh_6yara_x.exit

_RNCNKNvNtNtNtCs6i8zKcEiGNL_14regex_automata4util4pool5inner9THREAD_ID0s_0Cs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.a ]
  ret ptr %.sroa.0.0.i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef ptr @_RNvYNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1k_6option6OptionQIB1Z_INtNtB1k_4cell4CellTyyEEEEEE9call_onceCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable_or_null(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !16, !noalias !8377, !noundef !10
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs7gfv9tzbXmh_6yara_x.exit, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_RINvMs0_NtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCskKLDkoKarTP_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2h_11RandomState3new4KEYS27___rust_std_internal_init_fnECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull align 8 %i.a, ptr noalias nofree noundef align 8 dereferenceable_or_null(24) %0)
  br label %_RNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs7gfv9tzbXmh_6yara_x.exit

_RNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.a ]
  ret ptr %.sroa.0.0.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir12PatternFlagsNtNtCs94G7V7CXYRk_8bitflags6traits5Flags10intersectsB8_(ptr noalias nofree noundef readonly align 2 captures(none) dereferenceable(2) %0, i16 noundef %1) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %.val1 = load i16, ptr %0, align 2, !noundef !10
  %i.a = and i16 %.val1, %1
  %i.b = icmp ne i16 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir12PatternFlagsNtNtCs94G7V7CXYRk_8bitflags6traits5Flags10iter_namesB8_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2) %1) unnamed_addr #1 {
bb.a:
  tail call void @_RNvMs1_NtCs94G7V7CXYRk_8bitflags4iterINtB5_9IterNamesNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir12PatternFlagsE3newBV_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i16 @_RNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir12PatternFlagsNtNtCs94G7V7CXYRk_8bitflags6traits5Flags5emptyB8_() unnamed_addr #15 {
bb.a:
  ret i16 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir12PatternFlagsNtNtCs94G7V7CXYRk_8bitflags6traits5Flags6insertB8_(ptr noalias nofree noundef align 2 captures(none) dereferenceable(2) %0, i16 noundef %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i16, ptr %0, align 2, !noundef !10
  %i.a = or i16 %.val, %1
  store i16 %i.a, ptr %0, align 2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir12PatternFlagsNtNtCs94G7V7CXYRk_8bitflags6traits5Flags6removeB8_(ptr noalias nofree noundef align 2 captures(none) dereferenceable(2) %0, i16 noundef %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i16, ptr %0, align 2, !noundef !10
  %i.a = xor i16 %1, -1
  %i.b = and i16 %.val, %i.a
  store i16 %i.b, ptr %0, align 2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir12PatternFlagsNtNtCs94G7V7CXYRk_8bitflags6traits5Flags8containsB8_(ptr noalias nofree noundef readonly align 2 captures(none) dereferenceable(2) %0, i16 noundef %1) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %.val2 = load i16, ptr %0, align 2, !noundef !10
  %i.a = and i16 %.val2, %1
  %i.b = icmp eq i16 %i.a, %1
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir12PatternFlagsNtNtCs94G7V7CXYRk_8bitflags6traits5Flags8is_emptyB8_(ptr noalias nofree noundef readonly align 2 captures(none) dereferenceable(2) %0) unnamed_addr #9 {
bb.a:
  %.val = load i16, ptr %0, align 2, !noundef !10
  %i.a = icmp eq i16 %.val, 0
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden { i16, i16 } @_RNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir12PatternFlagsNtNtCs94G7V7CXYRk_8bitflags6traits5Flags9from_nameB8_(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #18 {
bb.a:
  switch i64 %1, label %.loopexit [
    i64 13, label %bb.i
    i64 8, label %bb.b
    i64 12, label %bb.c
    i64 6, label %bb.d
    i64 10, label %bb.f
    i64 3, label %bb.g
    i64 7, label %bb.h
  ]

.loopexit:                                        ; preds = %bb.a, %bb.e, %bb.c, %bb.g, %bb.f, %.preheader.6, %bb.h, %bb.i, %bb.j
  %.sroa.4.0 = phi i16 [ %.val, %bb.j ], [ undef, %bb.e ], [ undef, %bb.a ], [ undef, %bb.i ], [ undef, %bb.h ], [ undef, %.preheader.6 ], [ undef, %bb.f ], [ undef, %bb.g ], [ undef, %bb.c ]
  %.sroa.0.0 = phi i16 [ 1, %bb.j ], [ 0, %bb.e ], [ 0, %bb.a ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %.preheader.6 ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %bb.c ]
  %i.a = insertvalue { i16, i16 } poison, i16 %.sroa.0.0, 0
  %i.b = insertvalue { i16, i16 } %i.a, i16 %.sroa.4.0, 1
  ret { i16, i16 } %i.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %0, align 1
  %i.d = icmp ne i64 8749489463356582231, %i.c
  %i.e = zext i1 %i.d to i32
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.j, label %.preheader.6

bb.c:                                             ; preds = %bb.a
  %i.g = load i64, ptr %0, align 1
  %i.h = xor i64 4712012337289390423, %i.g
  %i.i = getelementptr i8, ptr %0, i64 8
  %i.j = load i32, ptr %i.i, align 1
  %i.k = zext i32 %i.j to i64
  %i.l = xor i64 1768514419, %i.k
  %i.m = or i64 %i.h, %i.l
  %i.n = icmp ne i64 %i.m, 0
  %i.o = zext i1 %i.n to i32
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.j, label %.loopexit

bb.d:                                             ; preds = %bb.a
  %i.q = load i32, ptr %0, align 1
  %i.r = xor i32 1633906510, %i.q
  %i.s = getelementptr i8, ptr %0, i64 4
  %i.t = load i16, ptr %i.s, align 1
  %i.u = zext i16 %i.t to i32
  %i.v = xor i32 25971, %i.u
  %i.w = or i32 %i.r, %i.v
  %i.x = icmp ne i32 %i.w, 0
  %i.y = zext i1 %i.x to i32
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = load i32, ptr %0, align 1
  %i.ab = xor i32 1702060354, %i.aa
  %i.ac = getelementptr i8, ptr %0, i64 4
  %i.ad = load i16, ptr %i.ac, align 1
end_hunk_0
