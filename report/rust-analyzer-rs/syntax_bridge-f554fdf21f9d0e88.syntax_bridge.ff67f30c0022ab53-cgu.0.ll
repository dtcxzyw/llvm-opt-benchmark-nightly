inline.NumInlined: 291
inline.NumDeleted: 141
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvCslVwgvvnzcNb_13syntax_bridge19convert_doc_comment:bb.a
          to label %bb.w unwind label %.body

bb.w:                                             ; preds = %_RINvXs3_NtNtCshzWfHUSfYae_4core5array4iterINtB6_8IntoIterNtCs4dcH4YgJDq_2tt4LeafKj3_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvB1l_8for_each4callBT_NCINvMsc_NtBV_7storageNtB2H_17TopSubtreeBuilder6extendABT_B1h_E0E0ECslVwgvvnzcNb_13syntax_bridge.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 8, !noundef !8
  %i.bq = add i32 %i.bp, -1                       ; 2 uses
  store i32 %i.bq, ptr %i.bo, align 8
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %.sink.split.sink.split, label %.sink.split

.sink.split.sink.split:                           ; preds = %bb.w, %bb.h
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.l) #21
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %bb.w, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.x

bb.x:                                             ; preds = %.sink.split, %_RNvXso_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCslVwgvvnzcNb_13syntax_bridge.exit
  ret void

bb.y:                                             ; preds = %bb.r, %bb.s, %bb.p
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueANtCs4dcH4YgJDq_2tt4Leafj3_ECslVwgvvnzcNb_13syntax_bridge(ptr noalias nofree noundef align 8 dereferenceable(120) %i.f) #17
          to label %.body.thread unwind label %bb.z

bb.z:                                             ; preds = %bb.d, %bb.o, %bb.aa, %bb.y
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.aa:                                            ; preds = %bb.o
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECslVwgvvnzcNb_13syntax_bridge(i32 2, ptr nonnull %i.u) #17
          to label %.body.thread unwind label %bb.z

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens7CommentECslVwgvvnzcNb_13syntax_bridge.exit: ; preds = %.body.thread, %bb.d
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvCslVwgvvnzcNb_13syntax_bridge19parse_to_token_tree(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, i8 noundef range(i8 0, 4) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %5, i64 noundef %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [168 x i8], align 8               ; 4 uses
  %i.b = alloca [20 x i8], align 4                ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 11 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = alloca [40 x i8], align 8                ; 11 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [20 x i8], align 4                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %i.j = alloca [20 x i8], align 4                ; 7 uses
  %i.k = alloca [32 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 9 uses
  %i.m = alloca [40 x i8], align 8                ; 16 uses
  %i.n = alloca [16 x i8], align 8                ; 4 uses
  %i.o = alloca [20 x i8], align 4                ; 7 uses
  %i.p = alloca [20 x i8], align 4                ; 7 uses
  %i.q = alloca [20 x i8], align 4                ; 7 uses
  %i.r = alloca [8 x i8], align 8                 ; 5 uses
  %i.s = alloca [44 x i8], align 4                ; 14 uses
  %i.t = alloca [168 x i8], align 8               ; 20 uses
  %i.u = alloca [40 x i8], align 8                ; 4 uses
  %i.v = alloca [112 x i8], align 8               ; 20 uses
  %i.w = alloca [88 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @_RNvMNtCsdVrXiLXuAnx_6parser9lexed_strNtB2_8LexedStr3new(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.w, i8 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %5, i64 noundef %6)
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %i.y = load i64, ptr %i.x, align 8, !noundef !8
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsdVrXiLXuAnx_6parser9lexed_str8LexedStrECslVwgvvnzcNb_13syntax_bridge(ptr noalias nofree noundef align 8 dereferenceable(88) %i.w)
  br label %bb.cq

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.v, ptr noundef nonnull align 8 dereferenceable(88) %i.w, i64 88, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 88 ; 4 uses
  store i64 0, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 96 ; 10 uses
  store i32 %2, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 100 ; 2 uses
  store i32 %3, ptr %i.ac, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 104 ; 10 uses
  store i32 %4, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 108
  store i8 1, ptr %i.ae, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.experimental.noalias.scope.decl(metadata !49)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !52
  store i32 0, ptr %i.s, align 4, !noalias !52
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 0, ptr %.sroa.5.0..sroa_idx.i, align 4, !noalias !52
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 %2, ptr %.sroa.6.0..sroa_idx.i, align 4, !noalias !52
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 %3, ptr %.sroa.7.0..sroa_idx.i, align 4, !noalias !52
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i32 %4, ptr %.sroa.8.0..sroa_idx.i, align 4, !noalias !52
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  store i32 0, ptr %i.af, align 4, !noalias !52
  %.sroa.5.0..sroa_idx147.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i32 0, ptr %.sroa.5.0..sroa_idx147.i, align 4, !noalias !52
  %.sroa.6.0..sroa_idx149.i = getelementptr inbounds nuw i8, ptr %i.s, i64 28
  store i32 %2, ptr %.sroa.6.0..sroa_idx149.i, align 4, !noalias !52
  %.sroa.7.0..sroa_idx151.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store i32 %3, ptr %.sroa.7.0..sroa_idx151.i, align 4, !noalias !52
  %.sroa.8.0..sroa_idx153.i = getelementptr inbounds nuw i8, ptr %i.s, i64 36
  store i32 %4, ptr %.sroa.8.0..sroa_idx153.i, align 4, !noalias !52
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store i8 3, ptr %i.ag, align 4, !noalias !52
  invoke void @_RNvMsc_NtCs4dcH4YgJDq_2tt7storageNtB5_17TopSubtreeBuilder3new(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.t, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(44) %i.s)
          to label %.noexc unwind label %bb.cr

.noexc:                                           ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !52
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.ai = load i64, ptr %i.aa, align 8, !alias.scope !54, !noalias !57, !noundef !8 ; 2 uses
  %i.aj = load i64, ptr %i.ah, align 8, !alias.scope !54, !noalias !57, !noundef !8 ; 2 uses
  %i.ak = icmp ult i64 %i.aj, 4611686018427387904
  call void @llvm.assume(i1 %i.ak)
  %i.al = add nsw i64 %i.aj, -1                   ; 2 uses
  %i.am = icmp eq i64 %i.ai, %i.al
  br i1 %i.am, label %.noexc._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc
  %i.an = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.ao = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.ar = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %.sroa.426.sroa.4.0..sroa.426.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %.sroa.426.sroa.5.0..sroa.426.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %.sroa.426.sroa.6.0..sroa.426.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  %.sroa.426.sroa.7.0..sroa.426.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %.sroa.527.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 28
  %i.az = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.sroa.440.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.440.sroa.4.0..sroa.440.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %.sroa.440.sroa.5.0..sroa.440.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.440.sroa.6.0..sroa.440.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %.sroa.440.sroa.7.0..sroa.440.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.541.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.5178.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7179.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.7179.sroa.4.0..sroa.7179.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %.sroa.7179.sroa.5.0..sroa.7179.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.7179.sroa.6.0..sroa.7179.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %.sroa.7179.sroa.7.0..sroa.7179.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.8180.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.bg = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.bm = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %.sroa.432.sroa.7.0..sroa.432.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.sroa.533.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 36
  %i.bp = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 6 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.backedge.i, %.lr.ph.i
  %i.bv = phi i64 [ %i.al, %.lr.ph.i ], [ %i.iv, %.backedge.i ]
  %i.bw = phi i64 [ %i.ai, %.lr.ph.i ], [ %i.is, %.backedge.i ] ; 9 uses
  %i.bx = add i64 %i.bw, 1                        ; 3 uses
  store i64 %i.bx, ptr %i.aa, align 8, !alias.scope !54, !noalias !57
  %i.by = invoke { i64, i64 } @_RNvMNtCsdVrXiLXuAnx_6parser9lexed_strNtB2_8LexedStr10text_range(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.v, i64 noundef %i.bw)
          to label %.noexc.i unwind label %.thread200.loopexit.split-lp.loopexit.i, !noalias !59 ; 2 uses

.noexc.i:                                         ; preds = %bb.d
  %i.bz = extractvalue { i64, i64 } %i.by, 0      ; 4 uses
  %i.ca = extractvalue { i64, i64 } %i.by, 1      ; 3 uses
  %i.cb = icmp ugt i64 %i.bz, 4294967295
  br i1 %i.cb, label %.noexc._crit_edge.i, label %bb.e

bb.e:                                             ; preds = %.noexc.i
  %i.cc = trunc nuw i64 %i.bz to i32              ; 9 uses
  %i.cd = icmp ugt i64 %i.ca, 4294967295
  br i1 %i.cd, label %.noexc._crit_edge.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not.i.i = icmp samesign ugt i64 %i.bz, %i.ca
  br i1 %.not.i.i, label %bb.g, label %bb.h, !prof !13

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #19
          to label %.noexc93.i unwind label %.thread200.loopexit.split-lp.loopexit.split-lp.i, !noalias !59

.noexc93.i:                                       ; preds = %bb.g
  unreachable

.thread200.loopexit.i:                            ; preds = %bb.cn, %bb.co
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.thread200.loopexit.split-lp.loopexit.i:          ; preds = %bb.d
  %lpad.loopexit237.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.thread200.loopexit.split-lp.loopexit.split-lp.i: ; preds = %bb.g
  %lpad.loopexit.split-lp238.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.noexc._crit_edge.i:                              ; preds = %.backedge.i, %bb.e, %.noexc.i, %.noexc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.t, i64 64 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !noalias !52, !noundef !8 ; 2 uses
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %._crit_edge288.i, label %.lr.ph287.i

.lr.ph287.i:                                      ; preds = %.noexc._crit_edge.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.ci = load <2 x i32>, ptr %i.ab, align 8, !alias.scope !49, !noalias !59
  %i.cj = load i32, ptr %i.ad, align 8, !alias.scope !49, !noalias !59
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.cn

.loopexit232.i:                                   ; preds = %bb.ae
  %lpad.loopexit233.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.cm, %bb.cl, %.noexc120.i, %bb.bk, %bb.bj, %bb.bg, %.noexc111.i, %bb.aw, %bb.au, %.noexc104.i, %bb.ak, %.noexc102.i, %bb.ah, %bb.ag, %bb.z, %bb.y, %bb.v, %bb.i, %bb.h
  %lpad.loopexit240.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %bb.bi, %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE7to_char.exit.i, %.invoke.i, %.invoke386.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.h:                                             ; preds = %bb.f
  %i.cn = trunc nuw i64 %i.ca to i32              ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !52
  store i64 %i.bw, ptr %i.r, align 8, !noalias !52
  %i.co = invoke noundef range(i16 0, 329) i16 @_RNvMNtCsdVrXiLXuAnx_6parser9lexed_strNtB2_8LexedStr4kind(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.v, i64 noundef %i.bw)
          to label %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE4kind.exit.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !59 ; 5 uses

_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE4kind.exit.i: ; preds = %bb.h
  switch i16 %i.co, label %bb.ag [
    i16 150, label %bb.i
    i16 153, label %bb.ah
    i16 53, label %bb.k
    i16 2, label %bb.k
    i16 3, label %bb.k
    i16 4, label %bb.k
    i16 5, label %bb.k
    i16 6, label %bb.k
    i16 7, label %bb.k
    i16 8, label %bb.k
    i16 9, label %bb.k
    i16 10, label %bb.k
    i16 11, label %bb.k
    i16 12, label %bb.k
    i16 13, label %bb.k
    i16 14, label %bb.k
    i16 15, label %bb.k
    i16 16, label %bb.k
    i16 17, label %bb.k
    i16 18, label %bb.k
    i16 19, label %bb.k
    i16 20, label %bb.k
    i16 21, label %bb.k
    i16 22, label %bb.k
    i16 23, label %bb.k
    i16 25, label %bb.k
    i16 26, label %bb.k
    i16 27, label %bb.k
    i16 28, label %bb.k
    i16 29, label %bb.k
    i16 30, label %bb.k
    i16 31, label %bb.k
    i16 32, label %bb.k
    i16 33, label %bb.k
    i16 34, label %bb.k
    i16 35, label %bb.k
    i16 36, label %bb.k
    i16 37, label %bb.k
    i16 38, label %bb.k
    i16 39, label %bb.k
    i16 40, label %bb.k
    i16 41, label %bb.k
    i16 42, label %bb.k
    i16 43, label %bb.k
    i16 44, label %bb.k
    i16 45, label %bb.k
    i16 46, label %bb.k
    i16 47, label %bb.k
    i16 48, label %bb.k
    i16 49, label %bb.k
    i16 50, label %bb.k
    i16 51, label %bb.k
    i16 52, label %bb.k
  ]

bb.i:                                             ; preds = %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE4kind.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !52
  call void @llvm.experimental.noalias.scope.decl(metadata !60)
  call void @llvm.experimental.noalias.scope.decl(metadata !63)
  %i.cp = load i32, ptr %i.ad, align 8, !alias.scope !65, !noalias !66, !noundef !8
  store i32 %i.cc, ptr %i.q, align 4, !alias.scope !60, !noalias !67
  store i32 %i.cn, ptr %i.az, align 4, !alias.scope !60, !noalias !67
  %i.cq = load <2 x i32>, ptr %i.ab, align 8, !alias.scope !65, !noalias !66
  store <2 x i32> %i.cq, ptr %i.ba, align 4, !alias.scope !60, !noalias !67
  store i32 %i.cp, ptr %i.bb, align 4, !alias.scope !60, !noalias !67
  invoke void @_RNvXs2_CslVwgvvnzcNb_13syntax_bridgeNtB5_12RawConverterNtB5_14TokenConverter19convert_doc_comment(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(20) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.t)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.i, !noalias !59

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !52
  br label %.backedge.i

bb.k:                                             ; preds = %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE4kind.exit.i, %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE4kind.exit.i, %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE4kind.exit.i, %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE4kind.exit.i, %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE4kind.exit.i, %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE4kind.exit.i, %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE4kind.exit.i, %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE4kind.exit.i, %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE4kind.exit.i, %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE4kind.exit.i, %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE4kind.exit.i, %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE4kind.exit.i, %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE4kind.exit.i, %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE4kind.exit.i, %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE4kind.exit.i, %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE4kind.exit.i, %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE4kind.exit.i, %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE4kind.exit.i, %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE4kind.exit.i, %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE4kind.exit.i, %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE4kind.exit.i, %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE4kind.exit.i, %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE4kind.exit.i, %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE4kind.exit.i, %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE4kind.exit.i, %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE4kind.exit.i, %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE4kind.exit.i, %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE4kind.exit.i, %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE4kind.exit.i, %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE4kind.exit.i, %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE4kind.exit.i, %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE4kind.exit.i, %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE4kind.exit.i, %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE4kind.exit.i, %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE4kind.exit.i, %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE4kind.exit.i, %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE4kind.exit.i, %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE4kind.exit.i, %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE4kind.exit.i, %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE4kind.exit.i, %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE4kind.exit.i, %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE4kind.exit.i, %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE4kind.exit.i, %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE4kind.exit.i, %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE4kind.exit.i, %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE4kind.exit.i, %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE4kind.exit.i, %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE4kind.exit.i, %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE4kind.exit.i, %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE4kind.exit.i, %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE4kind.exit.i
  %i.cr = load ptr, ptr %i.an, align 8, !noalias !52, !nonnull !8, !noundef !8 ; 2 uses
  %i.cs = load i64, ptr %i.ao, align 8, !noalias !52, !noundef !8 ; 2 uses
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %.loopexit236.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.k
  %.idx231.i = shl nuw nsw i64 %i.cs, 3
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.idx231.i
  %i.cv = load i64, ptr %i.ap, align 8, !range !14, !noalias !52, !noundef !8
  %i.cw = load i64, ptr %i.aq, align 8, !noalias !52, !noundef !8 ; 2 uses
  %i.cx = load ptr, ptr %i.ar, align 8, !noalias !52, !nonnull !8 ; 3 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRjNtCs4dcH4YgJDq_2tt13DelimiterKinduINtNtNtBa_3ops12control_flow11ControlFlowTjB11_EENCNvMsc_NtB13_7storageNtB2u_17TopSubtreeBuilder19expected_delimiters0NCINvNvXs_NtB6_9enumerateINtB3D_9EnumeratepENtNtNtB8_6traits8iterator8Iterator8try_fold9enumerateB11_uB1z_NCINvNvB4b_4find5checkB2e_NCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensNtB5G_12RawConverterEs_0E0E0E0B5G_.exit.i.i, %.lr.ph.i.preheader.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i.preheader.i ], [ %indvars.iv.next.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRjNtCs4dcH4YgJDq_2tt13DelimiterKinduINtNtNtBa_3ops12control_flow11ControlFlowTjB11_EENCNvMsc_NtB13_7storageNtB2u_17TopSubtreeBuilder19expected_delimiters0NCINvNvXs_NtB6_9enumerateINtB3D_9EnumeratepENtNtNtB8_6traits8iterator8Iterator8try_fold9enumerateB11_uB1z_NCINvNvB4b_4find5checkB2e_NCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensNtB5G_12RawConverterEs_0E0E0E0B5G_.exit.i.i ] ; 2 uses
  %i.cy = phi ptr [ %i.cu, %.lr.ph.i.preheader.i ], [ %i.cz, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRjNtCs4dcH4YgJDq_2tt13DelimiterKinduINtNtNtBa_3ops12control_flow11ControlFlowTjB11_EENCNvMsc_NtB13_7storageNtB2u_17TopSubtreeBuilder19expected_delimiters0NCINvNvXs_NtB6_9enumerateINtB3D_9EnumeratepENtNtNtB8_6traits8iterator8Iterator8try_fold9enumerateB11_uB1z_NCINvNvB4b_4find5checkB2e_NCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensNtB5G_12RawConverterEs_0E0E0E0B5G_.exit.i.i ]
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 -8 ; 3 uses
  %.val.i.i = load i64, ptr %i.cz, align 8, !noalias !68, !noundef !8 ; 5 uses
  %i.da = icmp ult i64 %.val.i.i, %i.cw           ; 3 uses
  switch i64 %i.cv, label %default.unreachable [
    i64 0, label %bb.l
    i64 1, label %bb.m
    i64 2, label %bb.n
  ]

default.unreachable:                              ; preds = %.noexc95.i, %.lr.ph.i.i
  unreachable

bb.l:                                             ; preds = %.lr.ph.i.i
  br i1 %i.da, label %bb.o, label %.invoke386.i

bb.m:                                             ; preds = %.lr.ph.i.i
  br i1 %i.da, label %bb.p, label %.invoke386.i

bb.n:                                             ; preds = %.lr.ph.i.i
  br i1 %i.da, label %bb.q, label %.invoke386.i

bb.o:                                             ; preds = %bb.l
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %.val.i.i ; 2 uses
  %i.dc = load i8, ptr %i.db, align 8, !range !18, !noalias !59, !noundef !8
  %i.dd = icmp eq i8 %i.dc, 3
  br i1 %i.dd, label %.noexc95.i, label %.invoke.i, !prof !19

bb.p:                                             ; preds = %bb.m
  %i.de = getelementptr inbounds nuw [24 x i8], ptr %i.cx, i64 %.val.i.i ; 2 uses
  %i.df = load i8, ptr %i.de, align 8, !range !18, !noalias !59, !noundef !8
  %i.dg = icmp eq i8 %i.df, 3
  br i1 %i.dg, label %.noexc95.i, label %.invoke.i, !prof !19

bb.q:                                             ; preds = %bb.n
  %i.dh = getelementptr inbounds nuw [32 x i8], ptr %i.cx, i64 %.val.i.i ; 2 uses
  %i.di = load i8, ptr %i.dh, align 8, !range !18, !noalias !59, !noundef !8
  %i.dj = icmp eq i8 %i.di, 3
  br i1 %i.dj, label %.noexc95.i, label %.invoke.i, !prof !19

.invoke386.i:                                     ; preds = %bb.n, %bb.m, %bb.l
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.val.i.i, i64 noundef %i.cw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #19
          to label %.cont387.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !59

.cont387.i:                                       ; preds = %.invoke386.i
  unreachable

.invoke.i:                                        ; preds = %bb.q, %bb.p, %bb.o
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @18, ptr noundef nonnull inttoptr (i64 163 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #19
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !59

.cont.i:                                          ; preds = %.invoke.i
  unreachable

.noexc95.i:                                       ; preds = %bb.q, %bb.p, %bb.o
  %.sink.i138.i = phi ptr [ %i.de, %bb.p ], [ %i.dh, %bb.q ], [ %i.db, %bb.o ]
  %i.dk = getelementptr inbounds nuw i8, ptr %.sink.i138.i, i64 1
  %.sroa.0.0.i139.i = load i8, ptr %i.dk, align 1, !range !18, !noalias !59, !noundef !8
  switch i8 %.sroa.0.0.i139.i, label %default.unreachable [
    i8 0, label %_RNCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensNtB4_12RawConverterEs_0B4_.exit.i.i.i.i.i
    i8 1, label %bb.r
    i8 2, label %bb.s
    i8 3, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRjNtCs4dcH4YgJDq_2tt13DelimiterKinduINtNtNtBa_3ops12control_flow11ControlFlowTjB11_EENCNvMsc_NtB13_7storageNtB2u_17TopSubtreeBuilder19expected_delimiters0NCINvNvXs_NtB6_9enumerateINtB3D_9EnumeratepENtNtNtB8_6traits8iterator8Iterator8try_fold9enumerateB11_uB1z_NCINvNvB4b_4find5checkB2e_NCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensNtB5G_12RawConverterEs_0E0E0E0B5G_.exit.i.i
  ]

bb.r:                                             ; preds = %.noexc95.i
  br label %_RNCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensNtB4_12RawConverterEs_0B4_.exit.i.i.i.i.i

bb.s:                                             ; preds = %.noexc95.i
  br label %_RNCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensNtB4_12RawConverterEs_0B4_.exit.i.i.i.i.i

_RNCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensNtB4_12RawConverterEs_0B4_.exit.i.i.i.i.i: ; preds = %bb.s, %bb.r, %.noexc95.i
  %.sink1.i.i.i.i.i.i = phi i16 [ 10, %bb.s ], [ 8, %bb.r ], [ 6, %.noexc95.i ]
  %i.dl = icmp eq i16 %i.co, %.sink1.i.i.i.i.i.i
  br i1 %i.dl, label %.preheader.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRjNtCs4dcH4YgJDq_2tt13DelimiterKinduINtNtNtBa_3ops12control_flow11ControlFlowTjB11_EENCNvMsc_NtB13_7storageNtB2u_17TopSubtreeBuilder19expected_delimiters0NCINvNvXs_NtB6_9enumerateINtB3D_9EnumeratepENtNtNtB8_6traits8iterator8Iterator8try_fold9enumerateB11_uB1z_NCINvNvB4b_4find5checkB2e_NCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensNtB5G_12RawConverterEs_0E0E0E0B5G_.exit.i.i

.preheader.i:                                     ; preds = %_RNCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensNtB4_12RawConverterEs_0B4_.exit.i.i.i.i.i
  %i.dm = load <2 x i32>, ptr %i.ab, align 8, !alias.scope !72, !noalias !75
  %i.dn = load i32, ptr %i.ad, align 8, !alias.scope !72, !noalias !75, !noundef !8
  br label %bb.ae

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRjNtCs4dcH4YgJDq_2tt13DelimiterKinduINtNtNtBa_3ops12control_flow11ControlFlowTjB11_EENCNvMsc_NtB13_7storageNtB2u_17TopSubtreeBuilder19expected_delimiters0NCINvNvXs_NtB6_9enumerateINtB3D_9EnumeratepENtNtNtB8_6traits8iterator8Iterator8try_fold9enumerateB11_uB1z_NCINvNvB4b_4find5checkB2e_NCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensNtB5G_12RawConverterEs_0E0E0E0B5G_.exit.i.i: ; preds = %_RNCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensNtB4_12RawConverterEs_0B4_.exit.i.i.i.i.i, %.noexc95.i
  %i.do = icmp eq ptr %i.cr, %i.cz
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %i.do, label %.loopexit236.i, label %.lr.ph.i.i

.loopexit236.i:                                   ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRjNtCs4dcH4YgJDq_2tt13DelimiterKinduINtNtNtBa_3ops12control_flow11ControlFlowTjB11_EENCNvMsc_NtB13_7storageNtB2u_17TopSubtreeBuilder19expected_delimiters0NCINvNvXs_NtB6_9enumerateINtB3D_9EnumeratepENtNtNtB8_6traits8iterator8Iterator8try_fold9enumerateB11_uB1z_NCINvNvB4b_4find5checkB2e_NCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensNtB5G_12RawConverterEs_0E0E0E0B5G_.exit.i.i, %bb.k
  switch i16 %i.co, label %bb.x [
    i16 5, label %bb.v
    i16 7, label %bb.t
    i16 9, label %bb.u
  ]

bb.t:                                             ; preds = %.loopexit236.i
  br label %bb.v

bb.u:                                             ; preds = %.loopexit236.i
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %.loopexit236.i
  %.sroa.016.0.i = phi i8 [ 2, %bb.u ], [ 1, %bb.t ], [ 0, %.loopexit236.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !52
  call void @llvm.experimental.noalias.scope.decl(metadata !77)
  call void @llvm.experimental.noalias.scope.decl(metadata !80)
  %i.dp = load i32, ptr %i.ad, align 8, !alias.scope !82, !noalias !83, !noundef !8
end_hunk_0
begin_hunk_1_@_RNvCslVwgvvnzcNb_13syntax_bridge19parse_to_token_tree:bb.a
  %i.fo = extractvalue { ptr, i64 } %i.fn, 0      ; 2 uses
  %i.fp = extractvalue { ptr, i64 } %i.fn, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fo) ]
  invoke void @_RNvMsB_Cs42xZ1oUXfIG_8smol_strNtB5_4Repr3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fo, i64 noundef %i.fp)
          to label %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE7to_text.exit106.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !59

_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE7to_text.exit106.i: ; preds = %.noexc104.i
  %i.fq = load i8, ptr %i.i, align 8, !range !103, !noalias !52, !noundef !8 ; 2 uses
  %i.fr = icmp samesign ugt i8 %i.fq, 23
  %i.fs = zext nneg i8 %i.fq to i64               ; 2 uses
  %i.ft = add nsw i64 %i.fs, -23
  %i.fu = select i1 %i.fr, i64 %i.ft, i64 0
  switch i64 %i.fu, label %bb.al [
    i64 0, label %bb.ao
    i64 1, label %bb.am
    i64 2, label %bb.an
  ]

bb.al:                                            ; preds = %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE7to_text.exit.i, %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE7to_text.exit122.i, %bb.ba, %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE7to_text.exit106.i
  unreachable

bb.am:                                            ; preds = %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE7to_text.exit106.i
  %i.fv = load ptr, ptr %i.bm, align 8, !noalias !52, !nonnull !8, !noundef !8
  %i.fw = load i64, ptr %i.bn, align 8, !noalias !52, !noundef !8
  br label %bb.ao

bb.an:                                            ; preds = %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE7to_text.exit106.i
  %i.fx = load ptr, ptr %i.bm, align 8, !noalias !52, !nonnull !8, !noundef !8
  %i.fy = load i64, ptr %i.bn, align 8, !noalias !52, !noundef !8
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE7to_text.exit106.i
  %.sroa.035.0.i = phi ptr [ %i.fz, %bb.an ], [ %i.fv, %bb.am ], [ %i.bo, %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE7to_text.exit106.i ]
  %.sroa.436.0.i = phi i64 [ %i.fy, %bb.an ], [ %i.fw, %bb.am ], [ %i.fs, %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE7to_text.exit106.i ]
  %i.ga = invoke noundef nonnull ptr @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol6intern(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.035.0.i, i64 noundef %.sroa.436.0.i)
          to label %bb.as unwind label %bb.ap, !noalias !59

bb.ap:                                            ; preds = %bb.ao
  %i.gb = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !104)
  call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %i.gc = load i8, ptr %i.i, align 8, !range !103, !alias.scope !110, !noalias !52, !noundef !8
  %switch.i.i.i = icmp samesign ult i8 %i.gc, 25
  br i1 %switch.i.i.i, label %.thread.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.experimental.noalias.scope.decl(metadata !111)
  call void @llvm.experimental.noalias.scope.decl(metadata !114)
  %i.gd = load ptr, ptr %i.bm, align 8, !alias.scope !117, !noalias !52, !nonnull !8, !noundef !8
  %i.ge = atomicrmw sub ptr %i.gd, i64 1 release, align 8, !noalias !118
  %i.gf = icmp eq i64 %i.ge, 1
  br i1 %i.gf, label %bb.ar, label %.thread.i

bb.ar:                                            ; preds = %bb.aq
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bm) #21
          to label %.thread.i unwind label %bb.av, !noalias !59

bb.as:                                            ; preds = %bb.ao
  store ptr %i.ga, ptr %.sroa.426.0..sroa_idx.i, align 8, !noalias !52
  store i32 %i.cc, ptr %.sroa.426.sroa.5.0..sroa.426.0..sroa_idx.sroa_idx.i, align 8, !noalias !52
  store i32 %i.cn, ptr %.sroa.426.sroa.6.0..sroa.426.0..sroa_idx.sroa_idx.i, align 4, !noalias !52
  store <2 x i32> %i.fl, ptr %.sroa.426.sroa.7.0..sroa.426.0..sroa_idx.sroa_idx.i, align 8, !noalias !52
  store i32 %i.fm, ptr %.sroa.432.sroa.7.0..sroa.432.0..sroa_idx.sroa_idx.i, align 8, !noalias !52
  store i8 0, ptr %.sroa.533.0..sroa_idx.i, align 4, !noalias !52
  store i32 2, ptr %i.m, align 8, !noalias !52
  call void @llvm.experimental.noalias.scope.decl(metadata !119)
  call void @llvm.experimental.noalias.scope.decl(metadata !122)
  %i.gg = load i8, ptr %i.i, align 8, !range !103, !alias.scope !125, !noalias !52, !noundef !8
  %switch.i.i108.i = icmp samesign ult i8 %i.gg, 25
  br i1 %switch.i.i108.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECslVwgvvnzcNb_13syntax_bridge.exit110.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.experimental.noalias.scope.decl(metadata !126)
  call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.gh = load ptr, ptr %i.bm, align 8, !alias.scope !132, !noalias !52, !nonnull !8, !noundef !8
  %i.gi = atomicrmw sub ptr %i.gh, i64 1 release, align 8, !noalias !133
  %i.gj = icmp eq i64 %i.gi, 1
  br i1 %i.gj, label %bb.au, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECslVwgvvnzcNb_13syntax_bridge.exit110.i

bb.au:                                            ; preds = %bb.at
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bm) #21
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECslVwgvvnzcNb_13syntax_bridge.exit110.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !59

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECslVwgvvnzcNb_13syntax_bridge.exit110.i: ; preds = %bb.au, %bb.at, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !52
  br label %bb.cm

bb.av:                                            ; preds = %.thread.i, %bb.ch, %bb.cc, %bb.bw, %bb.br, %bb.az, %bb.ar
  %i.gk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18, !noalias !59
  unreachable

bb.aw:                                            ; preds = %bb.aj, %bb.aj, %bb.aj, %bb.aj, %bb.aj, %bb.aj, %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !52
  %i.gl = invoke { ptr, i64 } @_RNvMNtCsdVrXiLXuAnx_6parser9lexed_strNtB2_8LexedStr4text(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.v, i64 noundef %i.bw)
          to label %.noexc111.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !59 ; 2 uses

.noexc111.i:                                      ; preds = %bb.aw
  %i.gm = extractvalue { ptr, i64 } %i.gl, 0      ; 2 uses
  %i.gn = extractvalue { ptr, i64 } %i.gl, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gm) ]
  invoke void @_RNvMsB_Cs42xZ1oUXfIG_8smol_strNtB5_4Repr3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gm, i64 noundef %i.gn)
          to label %bb.ba unwind label %.loopexit.split-lp.loopexit.i, !noalias !59

bb.ax:                                            ; preds = %bb.bd
  %i.go = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !134)
  call void @llvm.experimental.noalias.scope.decl(metadata !137)
  %i.gp = load i8, ptr %i.h, align 8, !range !103, !alias.scope !140, !noalias !52, !noundef !8
  %switch.i.i114.i = icmp samesign ult i8 %i.gp, 25
  br i1 %switch.i.i114.i, label %.thread.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.experimental.noalias.scope.decl(metadata !141)
  call void @llvm.experimental.noalias.scope.decl(metadata !144)
  %i.gq = load ptr, ptr %i.bj, align 8, !alias.scope !147, !noalias !52, !nonnull !8, !noundef !8
  %i.gr = atomicrmw sub ptr %i.gq, i64 1 release, align 8, !noalias !148
  %i.gs = icmp eq i64 %i.gr, 1
  br i1 %i.gs, label %bb.az, label %.thread.i

bb.az:                                            ; preds = %bb.ay
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bj) #21
          to label %.thread.i unwind label %bb.av, !noalias !59

bb.ba:                                            ; preds = %.noexc111.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !52
  call void @llvm.experimental.noalias.scope.decl(metadata !149)
  call void @llvm.experimental.noalias.scope.decl(metadata !152)
  %i.gt = load i32, ptr %i.ad, align 8, !alias.scope !154, !noalias !155, !noundef !8
  store i32 %i.cc, ptr %i.g, align 4, !alias.scope !149, !noalias !156
  store i32 %i.cn, ptr %i.bg, align 4, !alias.scope !149, !noalias !156
  %i.gu = load <2 x i32>, ptr %i.ab, align 8, !alias.scope !154, !noalias !155
  store <2 x i32> %i.gu, ptr %i.bh, align 4, !alias.scope !149, !noalias !156
  store i32 %i.gt, ptr %i.bi, align 4, !alias.scope !149, !noalias !156
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !52
  %i.gv = load i8, ptr %i.h, align 8, !range !103, !noalias !52, !noundef !8 ; 2 uses
  %i.gw = icmp samesign ugt i8 %i.gv, 23
  %i.gx = zext nneg i8 %i.gv to i64               ; 2 uses
  %i.gy = add nsw i64 %i.gx, -23
  %i.gz = select i1 %i.gw, i64 %i.gy, i64 0
  switch i64 %i.gz, label %bb.al [
    i64 0, label %bb.bd
    i64 1, label %bb.bb
    i64 2, label %bb.bc
  ]

bb.bb:                                            ; preds = %bb.ba
  %i.ha = load ptr, ptr %i.bj, align 8, !noalias !52, !nonnull !8, !noundef !8
  %i.hb = load i64, ptr %i.bk, align 8, !noalias !52, !noundef !8
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  %i.hc = load ptr, ptr %i.bj, align 8, !noalias !52, !nonnull !8, !noundef !8
  %i.hd = load i64, ptr %i.bk, align 8, !noalias !52, !noundef !8
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %bb.ba
  %.sroa.037.0.i = phi ptr [ %i.he, %bb.bc ], [ %i.ha, %bb.bb ], [ %i.bl, %bb.ba ]
  %.sroa.438.0.i = phi i64 [ %i.hd, %bb.bc ], [ %i.hb, %bb.bb ], [ %i.gx, %bb.ba ]
  invoke void @_RNvCs4dcH4YgJDq_2tt16token_to_literal(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.037.0.i, i64 noundef %.sroa.438.0.i, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(20) %i.g)
          to label %bb.be unwind label %bb.ax, !noalias !59

bb.be:                                            ; preds = %bb.bd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.426.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !noalias !52
  store i32 0, ptr %i.m, align 8, !noalias !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !52
  call void @llvm.experimental.noalias.scope.decl(metadata !157)
  call void @llvm.experimental.noalias.scope.decl(metadata !160)
  %i.hf = load i8, ptr %i.h, align 8, !range !103, !alias.scope !163, !noalias !52, !noundef !8
  %switch.i.i117.i = icmp samesign ult i8 %i.hf, 25
  br i1 %switch.i.i117.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECslVwgvvnzcNb_13syntax_bridge.exit119.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @llvm.experimental.noalias.scope.decl(metadata !164)
  call void @llvm.experimental.noalias.scope.decl(metadata !167)
  %i.hg = load ptr, ptr %i.bj, align 8, !alias.scope !170, !noalias !52, !nonnull !8, !noundef !8
  %i.hh = atomicrmw sub ptr %i.hg, i64 1 release, align 8, !noalias !171
  %i.hi = icmp eq i64 %i.hh, 1
  br i1 %i.hi, label %bb.bg, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECslVwgvvnzcNb_13syntax_bridge.exit119.i

bb.bg:                                            ; preds = %bb.bf
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bj) #21
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECslVwgvvnzcNb_13syntax_bridge.exit119.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !59

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECslVwgvvnzcNb_13syntax_bridge.exit119.i: ; preds = %bb.bg, %bb.bf, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !52
  br label %bb.cm

bb.bh:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !52
  %i.hj = add i32 %i.cc, 1                        ; 3 uses
  %.not81.i = icmp eq i64 %i.bz, 4294967295
  br i1 %.not81.i, label %bb.bi, label %bb.bj, !prof !13

bb.bi:                                            ; preds = %bb.bh
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #20
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !59

bb.bj:                                            ; preds = %bb.bh
  %i.hk = load i32, ptr %i.ab, align 8, !alias.scope !172, !noalias !175, !noundef !8 ; 2 uses
  %i.hl = load i32, ptr %i.ac, align 4, !alias.scope !172, !noalias !175, !noundef !8 ; 2 uses
  %i.hm = load i32, ptr %i.ad, align 8, !alias.scope !172, !noalias !175, !noundef !8 ; 2 uses
  store i32 39, ptr %i.bc, align 4, !noalias !52
  store i32 %i.cc, ptr %.sroa.440.0..sroa_idx.i, align 8, !noalias !52
  store i32 %i.hj, ptr %.sroa.440.sroa.4.0..sroa.440.0..sroa_idx.sroa_idx.i, align 4, !noalias !52
  store i32 %i.hk, ptr %.sroa.440.sroa.5.0..sroa.440.0..sroa_idx.sroa_idx.i, align 8, !noalias !52
  store i32 %i.hl, ptr %.sroa.440.sroa.6.0..sroa.440.0..sroa_idx.sroa_idx.i, align 4, !noalias !52
  store i32 %i.hm, ptr %.sroa.440.sroa.7.0..sroa.440.0..sroa_idx.sroa_idx.i, align 8, !noalias !52
  store i8 1, ptr %.sroa.541.0..sroa_idx.i, align 4, !noalias !52
  store i32 1, ptr %i.e, align 8, !noalias !52
  invoke void @_RNvMsc_NtCs4dcH4YgJDq_2tt7storageNtB5_17TopSubtreeBuilder4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.e)
          to label %bb.bk unwind label %.loopexit.split-lp.loopexit.i, !noalias !59

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !52
  %i.hn = invoke { ptr, i64 } @_RNvMNtCsdVrXiLXuAnx_6parser9lexed_strNtB2_8LexedStr4text(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.v, i64 noundef %i.bw)
          to label %.noexc120.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !59 ; 2 uses

.noexc120.i:                                      ; preds = %bb.bk
  %i.ho = extractvalue { ptr, i64 } %i.hn, 0      ; 2 uses
  %i.hp = extractvalue { ptr, i64 } %i.hn, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ho) ]
  invoke void @_RNvMsB_Cs42xZ1oUXfIG_8smol_strNtB5_4Repr3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ho, i64 noundef %i.hp)
          to label %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE7to_text.exit122.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !59

_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE7to_text.exit122.i: ; preds = %.noexc120.i
  %i.hq = load i8, ptr %i.d, align 8, !range !103, !noalias !52, !noundef !8 ; 2 uses
  %i.hr = icmp samesign ugt i8 %i.hq, 23
  %i.hs = zext nneg i8 %i.hq to i64               ; 2 uses
  %i.ht = add nsw i64 %i.hs, -23
  %i.hu = select i1 %i.hr, i64 %i.ht, i64 0
  switch i64 %i.hu, label %bb.al [
    i64 0, label %bb.bn
    i64 1, label %bb.bl
    i64 2, label %bb.bm
  ]

bb.bl:                                            ; preds = %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE7to_text.exit122.i
  %i.hv = load ptr, ptr %i.bd, align 8, !noalias !52, !nonnull !8, !noundef !8
  %i.hw = load i64, ptr %i.be, align 8, !noalias !52, !noundef !8
  br label %bb.bn

bb.bm:                                            ; preds = %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE7to_text.exit122.i
  %i.hx = load ptr, ptr %i.bd, align 8, !noalias !52, !nonnull !8, !noundef !8
  %i.hy = load i64, ptr %i.be, align 8, !noalias !52, !noundef !8
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl, %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE7to_text.exit122.i
  %.sroa.047.0.i = phi ptr [ %i.hz, %bb.bm ], [ %i.hv, %bb.bl ], [ %i.bf, %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE7to_text.exit122.i ] ; 3 uses
  %.sroa.650.0.i = phi i64 [ %i.hy, %bb.bm ], [ %i.hw, %bb.bl ], [ %i.hs, %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE7to_text.exit122.i ] ; 5 uses
  %.not.i123.i = icmp ugt i64 %.sroa.650.0.i, 1
  br i1 %.not.i123.i, label %bb.bo, label %.split.i.i

.split.i.i:                                       ; preds = %bb.bn
  %i.ia = icmp eq i64 %.sroa.650.0.i, 1
  br i1 %i.ia, label %bb.bs, label %bb.bt

bb.bo:                                            ; preds = %bb.bn
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.047.0.i, i64 1
  %i.ic = load i8, ptr %i.ib, align 1, !alias.scope !177, !noalias !59, !noundef !8
  %i.id = icmp sgt i8 %i.ic, -65
  br i1 %i.id, label %bb.bs, label %bb.bt

bb.bp:                                            ; preds = %bb.bw, %.loopexit.split-lp243.i, %.loopexit242.i
  %.pn.i = phi { ptr, i32 } [ %i.il, %bb.bw ], [ %lpad.loopexit244.i, %.loopexit242.i ], [ %lpad.loopexit.split-lp245.i, %.loopexit.split-lp243.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !180)
  call void @llvm.experimental.noalias.scope.decl(metadata !183)
  %i.ie = load i8, ptr %i.d, align 8, !range !103, !alias.scope !186, !noalias !52, !noundef !8
  %switch.i.i126.i = icmp samesign ult i8 %i.ie, 25
  br i1 %switch.i.i126.i, label %.thread.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.experimental.noalias.scope.decl(metadata !187)
  call void @llvm.experimental.noalias.scope.decl(metadata !190)
  %i.if = load ptr, ptr %i.bd, align 8, !alias.scope !193, !noalias !52, !nonnull !8, !noundef !8
  %i.ig = atomicrmw sub ptr %i.if, i64 1 release, align 8, !noalias !194
  %i.ih = icmp eq i64 %i.ig, 1
  br i1 %i.ih, label %bb.br, label %.thread.i

bb.br:                                            ; preds = %bb.bq
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bd) #21
          to label %.thread.i unwind label %bb.av, !noalias !59

.loopexit242.i:                                   ; preds = %bb.bs
  %lpad.loopexit244.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

.loopexit.split-lp243.i:                          ; preds = %bb.bt
  %lpad.loopexit.split-lp245.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bs:                                            ; preds = %bb.bo, %.split.i.i
  %i.ii = add i64 %.sroa.650.0.i, -1
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.047.0.i, i64 1
  %i.ik = invoke noundef nonnull ptr @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol6intern(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ij, i64 noundef %i.ii)
          to label %bb.bu unwind label %.loopexit242.i, !noalias !59 ; 3 uses

bb.bt:                                            ; preds = %bb.bo, %.split.i.i
  invoke void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.047.0.i, i64 noundef %.sroa.650.0.i, i64 noundef 1, i64 noundef %.sroa.650.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #20
          to label %bb.ad unwind label %.loopexit.split-lp243.i, !noalias !59

bb.bu:                                            ; preds = %bb.bs
  %.not83.i = icmp ugt i32 %i.hj, %i.cn
  br i1 %.not83.i, label %bb.bv, label %bb.bx, !prof !13

bb.bv:                                            ; preds = %bb.bu
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #20
          to label %bb.ad unwind label %bb.bw, !noalias !59

bb.bw:                                            ; preds = %bb.bv
  %i.il = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECslVwgvvnzcNb_13syntax_bridge(ptr nonnull %i.ik) #17
          to label %bb.bp unwind label %bb.av, !noalias !59

bb.bx:                                            ; preds = %bb.bu
  call void @llvm.experimental.noalias.scope.decl(metadata !195)
  call void @llvm.experimental.noalias.scope.decl(metadata !198)
  %i.im = load i8, ptr %i.d, align 8, !range !103, !alias.scope !201, !noalias !52, !noundef !8
  %switch.i.i129.i = icmp samesign ult i8 %i.im, 25
  br i1 %switch.i.i129.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECslVwgvvnzcNb_13syntax_bridge.exit131.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  call void @llvm.experimental.noalias.scope.decl(metadata !202)
  call void @llvm.experimental.noalias.scope.decl(metadata !205)
  %i.in = load ptr, ptr %i.bd, align 8, !alias.scope !208, !noalias !52, !nonnull !8, !noundef !8
  %i.io = atomicrmw sub ptr %i.in, i64 1 release, align 8, !noalias !209
  %i.ip = icmp eq i64 %i.io, 1
  br i1 %i.ip, label %bb.bz, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECslVwgvvnzcNb_13syntax_bridge.exit131.i

bb.bz:                                            ; preds = %bb.by
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bd) #21
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECslVwgvvnzcNb_13syntax_bridge.exit131.i unwind label %bb.cc, !noalias !59

bb.ca:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECslVwgvvnzcNb_13syntax_bridge.exit131.i
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECslVwgvvnzcNb_13syntax_bridge.exit131.i: ; preds = %bb.bz, %bb.by, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !52
  store i32 2, ptr %i.c, align 8, !noalias !52
  store ptr %i.ik, ptr %.sroa.5178.0..sroa_idx.i, align 8, !noalias !52
  store i32 %i.hj, ptr %.sroa.7179.0..sroa_idx.i, align 8, !noalias !52
  store i32 %i.cn, ptr %.sroa.7179.sroa.4.0..sroa.7179.0..sroa_idx.sroa_idx.i, align 4, !noalias !52
  store i32 %i.hk, ptr %.sroa.7179.sroa.5.0..sroa.7179.0..sroa_idx.sroa_idx.i, align 8, !noalias !52
  store i32 %i.hl, ptr %.sroa.7179.sroa.6.0..sroa.7179.0..sroa_idx.sroa_idx.i, align 4, !noalias !52
  store i32 %i.hm, ptr %.sroa.7179.sroa.7.0..sroa.7179.0..sroa_idx.sroa_idx.i, align 8, !noalias !52
  store i8 0, ptr %.sroa.8180.0..sroa_idx.i, align 4, !noalias !52
  invoke void @_RNvMsc_NtCs4dcH4YgJDq_2tt7storageNtB5_17TopSubtreeBuilder4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.c)
          to label %bb.cb unwind label %bb.ca, !noalias !59

bb.cb:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECslVwgvvnzcNb_13syntax_bridge.exit131.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !52
  br label %.backedge.i

bb.cc:                                            ; preds = %bb.bz
  %i.ir = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECslVwgvvnzcNb_13syntax_bridge(i32 2, ptr nonnull %i.ik) #17
          to label %.thread.i unwind label %bb.av, !noalias !59

.backedge.i:                                      ; preds = %bb.af, %bb.cm, %bb.cb, %bb.aj, %bb.w, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !52
  %i.is = load i64, ptr %i.aa, align 8, !alias.scope !54, !noalias !57, !noundef !8 ; 2 uses
  %i.it = load i64, ptr %i.ah, align 8, !alias.scope !54, !noalias !57, !noundef !8 ; 2 uses
  %i.iu = icmp ult i64 %i.it, 4611686018427387904
  call void @llvm.assume(i1 %i.iu)
  %i.iv = add nsw i64 %i.it, -1                   ; 2 uses
  %i.iw = icmp eq i64 %i.is, %i.iv
  br i1 %i.iw, label %.noexc._crit_edge.i, label %bb.d

_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE7to_text.exit.i: ; preds = %.noexc102.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !52
  %i.ix = load i8, ptr %i.l, align 8, !range !103, !noalias !52, !noundef !8 ; 2 uses
  %i.iy = icmp samesign ugt i8 %i.ix, 23
  %i.iz = zext nneg i8 %i.ix to i64               ; 2 uses
  %i.ja = add nsw i64 %i.iz, -23
  %i.jb = select i1 %i.iy, i64 %i.ja, i64 0
  switch i64 %i.jb, label %bb.al [
    i64 0, label %bb.ci
    i64 1, label %bb.cd
    i64 2, label %bb.ce
  ]

bb.cd:                                            ; preds = %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE7to_text.exit.i
  %i.jc = load ptr, ptr %i.bp, align 8, !noalias !52, !nonnull !8, !noundef !8
  %i.jd = load i64, ptr %i.bq, align 8, !noalias !52, !noundef !8
  br label %bb.ci

bb.ce:                                            ; preds = %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE7to_text.exit.i
  %i.je = load ptr, ptr %i.bp, align 8, !noalias !52, !nonnull !8, !noundef !8
  %i.jf = load i64, ptr %i.bq, align 8, !noalias !52, !noundef !8
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  br label %bb.ci

bb.cf:                                            ; preds = %bb.ci
  %i.jh = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !210)
  call void @llvm.experimental.noalias.scope.decl(metadata !213)
  %i.ji = load i8, ptr %i.l, align 8, !range !103, !alias.scope !216, !noalias !52, !noundef !8
  %switch.i.i132.i = icmp samesign ult i8 %i.ji, 25
  br i1 %switch.i.i132.i, label %.thread.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.experimental.noalias.scope.decl(metadata !217)
  call void @llvm.experimental.noalias.scope.decl(metadata !220)
  %i.jj = load ptr, ptr %i.bp, align 8, !alias.scope !223, !noalias !52, !nonnull !8, !noundef !8
  %i.jk = atomicrmw sub ptr %i.jj, i64 1 release, align 8, !noalias !224
  %i.jl = icmp eq i64 %i.jk, 1
  br i1 %i.jl, label %bb.ch, label %.thread.i

bb.ch:                                            ; preds = %bb.cg
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bp) #21
          to label %.thread.i unwind label %bb.av, !noalias !59

bb.ci:                                            ; preds = %bb.ce, %bb.cd, %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE7to_text.exit.i
  %.sroa.029.0.i = phi ptr [ %i.jg, %bb.ce ], [ %i.jc, %bb.cd ], [ %i.br, %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE7to_text.exit.i ]
  %.sroa.430.0.i = phi i64 [ %i.jf, %bb.ce ], [ %i.jd, %bb.cd ], [ %i.iz, %_RNvXs0_CslVwgvvnzcNb_13syntax_bridgejINtB5_8SrcTokenNtB5_12RawConverterE7to_text.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !52
  call void @llvm.experimental.noalias.scope.decl(metadata !225)
  call void @llvm.experimental.noalias.scope.decl(metadata !228)
  %i.jm = load i32, ptr %i.ad, align 8, !alias.scope !230, !noalias !231, !noundef !8
  store i32 %i.cc, ptr %i.j, align 4, !alias.scope !225, !noalias !232
  store i32 %i.cn, ptr %i.bs, align 4, !alias.scope !225, !noalias !232
  %i.jn = load <2 x i32>, ptr %i.ab, align 8, !alias.scope !230, !noalias !231
  store <2 x i32> %i.jn, ptr %i.bt, align 4, !alias.scope !225, !noalias !232
  store i32 %i.jm, ptr %i.bu, align 4, !alias.scope !225, !noalias !232
  invoke void @_RNvMsc_Cs4dcH4YgJDq_2ttNtB5_5Ident3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.029.0.i, i64 noundef %.sroa.430.0.i, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %i.j)
          to label %bb.cj unwind label %bb.cf, !noalias !59

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.426.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false), !noalias !52
  store i32 2, ptr %i.m, align 8, !noalias !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !52
  call void @llvm.experimental.noalias.scope.decl(metadata !233)
  call void @llvm.experimental.noalias.scope.decl(metadata !236)
  %i.jo = load i8, ptr %i.l, align 8, !range !103, !alias.scope !239, !noalias !52, !noundef !8
  %switch.i.i135.i = icmp samesign ult i8 %i.jo, 25
  br i1 %switch.i.i135.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECslVwgvvnzcNb_13syntax_bridge.exit137.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.experimental.noalias.scope.decl(metadata !240)
  call void @llvm.experimental.noalias.scope.decl(metadata !243)
  %i.jp = load ptr, ptr %i.bp, align 8, !alias.scope !246, !noalias !52, !nonnull !8, !noundef !8
  %i.jq = atomicrmw sub ptr %i.jp, i64 1 release, align 8, !noalias !247
  %i.jr = icmp eq i64 %i.jq, 1
  br i1 %i.jr, label %bb.cl, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECslVwgvvnzcNb_13syntax_bridge.exit137.i

bb.cl:                                            ; preds = %bb.ck
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bp) #21
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECslVwgvvnzcNb_13syntax_bridge.exit137.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !59

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECslVwgvvnzcNb_13syntax_bridge.exit137.i: ; preds = %bb.cl, %bb.ck, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !52
  br label %bb.cm

bb.cm:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECslVwgvvnzcNb_13syntax_bridge.exit137.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECslVwgvvnzcNb_13syntax_bridge.exit119.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECslVwgvvnzcNb_13syntax_bridge.exit110.i, %bb.ac
  invoke void @_RNvMsc_NtCs4dcH4YgJDq_2tt7storageNtB5_17TopSubtreeBuilder4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.m)
          to label %.backedge.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !59

bb.cn:                                            ; preds = %bb.cp, %.lr.ph287.i
  %i.js = phi i64 [ %i.cf, %.lr.ph287.i ], [ %i.jw, %bb.cp ]
  %i.jt = load ptr, ptr %i.ch, align 8, !noalias !52, !nonnull !8, !noundef !8
  %.idx.i = shl nuw nsw i64 %i.js, 3
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 %.idx.i
  %i.jv = getelementptr inbounds i8, ptr %i.ju, i64 -8
  %.val90.i = load i64, ptr %i.jv, align 8, !noalias !59, !noundef !8
  invoke fastcc void @_RNCNvMsc_NtCs4dcH4YgJDq_2tt7storageNtB7_17TopSubtreeBuilder19expected_delimiters0CslVwgvvnzcNb_13syntax_bridge(ptr nonnull %i.t, i64 %.val90.i)
          to label %bb.co unwind label %.thread200.loopexit.i

._crit_edge288.i:                                 ; preds = %bb.cp, %.noexc._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.a, ptr noundef nonnull align 8 dereferenceable(168) %i.t, i64 168, i1 false), !noalias !52
  invoke void @_RNvMsc_NtCs4dcH4YgJDq_2tt7storageNtB5_17TopSubtreeBuilder22build_skip_top_subtree(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.u, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.a)
          to label %bb.cs unwind label %bb.cr

bb.co:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !52
  store i32 0, ptr %i.b, align 4, !alias.scope !248, !noalias !251
  store i32 0, ptr %i.ck, align 4, !alias.scope !248, !noalias !251
  store <2 x i32> %i.ci, ptr %i.cl, align 4, !alias.scope !248, !noalias !251
  store i32 %i.cj, ptr %i.cm, align 4, !alias.scope !248, !noalias !251
  invoke void @_RNvMsc_NtCs4dcH4YgJDq_2tt7storageNtB5_17TopSubtreeBuilder5close(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.t, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %i.b)
          to label %bb.cp unwind label %.thread200.loopexit.i, !noalias !59

bb.cp:                                            ; preds = %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !52
  %i.jw = load i64, ptr %i.ce, align 8, !noalias !52, !noundef !8 ; 2 uses
  %i.jx = icmp eq i64 %i.jw, 0
  br i1 %i.jx, label %._crit_edge288.i, label %bb.cn

.thread.i:                                        ; preds = %bb.ch, %bb.cg, %bb.cf, %bb.cc, %bb.ca, %bb.br, %bb.bq, %bb.bp, %bb.az, %bb.ay, %bb.ax, %bb.ar, %bb.aq, %bb.ap, %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit232.i, %.thread200.loopexit.split-lp.loopexit.split-lp.i, %.thread200.loopexit.split-lp.loopexit.i, %.thread200.loopexit.i
  %.pn85198.i = phi { ptr, i32 } [ %i.jh, %bb.cg ], [ %i.go, %bb.ay ], [ %i.iq, %bb.ca ], [ %i.ir, %bb.cc ], [ %i.gb, %bb.aq ], [ %lpad.loopexit.split-lp238.i, %.thread200.loopexit.split-lp.loopexit.split-lp.i ], [ %.pn.i, %bb.bq ], [ %i.gb, %bb.ar ], [ %i.gb, %bb.ap ], [ %i.go, %bb.az ], [ %i.go, %bb.ax ], [ %.pn.i, %bb.br ], [ %.pn.i, %bb.bp ], [ %i.jh, %bb.ch ], [ %i.jh, %bb.cf ], [ %lpad.loopexit.i, %.thread200.loopexit.i ], [ %lpad.loopexit237.i, %.thread200.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit233.i, %.loopexit232.i ], [ %lpad.loopexit240.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt7storage17TopSubtreeBuilderECslVwgvvnzcNb_13syntax_bridge(ptr noalias nofree noundef align 8 dereferenceable(168) %i.t) #17
          to label %.body unwind label %bb.av, !noalias !59

end_hunk_1
