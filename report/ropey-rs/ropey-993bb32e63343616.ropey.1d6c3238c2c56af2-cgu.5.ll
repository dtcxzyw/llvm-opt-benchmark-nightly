Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ropey-rs/original/ropey-993bb32e63343616.ropey.1d6c3238c2c56af2-cgu.5?download=true
inline.NumInlined: 138
inline.NumDeleted: 52
begin_hunk_0_@_RNvMNtCs2wCc12Mnjqg_5ropey4ropeNtB2_4Rope22pull_up_singular_nodes:bb.a
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #17
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit unwind label %bb.j

bb.i:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          cleanup
  store ptr %i.s, ptr %0, align 8
  resume { ptr, i32 } %i.w

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit: ; preds = %bb.g, %bb.h
  store ptr %i.s, ptr %0, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.y = load i8, ptr %i.x, align 8, !range !4, !noundef !8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs2wCc12Mnjqg_5ropey4ropeNtB2_4Rope6append(ptr noalias nofree noundef align 8 dereferenceable(8) %0, ptr noundef nonnull %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 3 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 3 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [1024 x i8], align 8              ; 8 uses
  %i.j = alloca [1024 x i8], align 8              ; 8 uses
  %i.k = alloca [32 x i8], align 8                ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 4 uses
  %.sroa.410 = alloca [975 x i8], align 1         ; 4 uses
  %i.m = alloca [32 x i8], align 8                ; 4 uses
  %i.n = alloca [40 x i8], align 8                ; 5 uses
  %i.o = alloca [32 x i8], align 8                ; 4 uses
  %i.p = alloca [40 x i8], align 8                ; 5 uses
  %i.q = alloca [968 x i8], align 8               ; 7 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 14 uses
  %.sroa.4 = alloca [975 x i8], align 1           ; 4 uses
  %i.t = alloca [32 x i8], align 8                ; 4 uses
  %i.u = alloca [40 x i8], align 8                ; 5 uses
  %i.v = alloca [32 x i8], align 8                ; 4 uses
  %i.w = alloca [40 x i8], align 8                ; 5 uses
  %i.x = alloca [968 x i8], align 8               ; 7 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
  %i.z = alloca [32 x i8], align 8                ; 4 uses
  %i.aa = alloca [32 x i8], align 8               ; 5 uses
  %i.ab = alloca [8 x i8], align 8                ; 4 uses
  %i.ac = alloca [8 x i8], align 8                ; 12 uses
  store ptr %1, ptr %i.ac, align 8
  %i.ad = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.ae)
          to label %bb.b unwind label %bb.cd

bb.b:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.ai = load ptr, ptr %i.ac, align 8, !nonnull !8, !noundef !8
  %.cast = ptrtoint ptr %i.ai to i64
  store i64 %.cast, ptr %0, align 8
  store ptr %i.ad, ptr %i.ab, align 8
  %i.aj = atomicrmw sub ptr %i.ad, i64 1 release, align 8, !noalias !127
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4rope4RopeEBF_.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ab) #17
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4rope4RopeEBF_.exit

bb.e:                                             ; preds = %bb.b
  %i.al = load ptr, ptr %i.ac, align 8, !nonnull !8, !noundef !8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.am)
          to label %bb.f unwind label %bb.cd

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4rope4RopeEBF_.exit: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.not = icmp eq i64 %i.ao, 0
  br i1 %.not, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !134)
  call void @llvm.experimental.noalias.scope.decl(metadata !137)
  %i.ap = load ptr, ptr %i.ac, align 8, !alias.scope !140, !nonnull !8, !noundef !8
  %i.aq = atomicrmw sub ptr %i.ap, i64 1 release, align 8, !noalias !140
  %i.ar = icmp eq i64 %i.aq, 1
  br i1 %i.ar, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit

bb.h:                                             ; preds = %bb.g
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ac) #17
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.as = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.at)
          to label %bb.j unwind label %bb.cd

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit: ; preds = %bb.h, %bb.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4rope4RopeEBF_.exit, %bb.cb
  ret void

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.au = load ptr, ptr %i.ac, align 8, !nonnull !8, !noundef !8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.av)
          to label %bb.k unwind label %bb.cd

bb.k:                                             ; preds = %bb.j
  %.val = load ptr, ptr %i.ac, align 8, !nonnull !8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 0, ptr %i.h, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.aw)
          to label %.noexc42 unwind label %bb.cd

.noexc42:                                         ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not.i.i = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i, label %bb.ab, label %bb.l

bb.l:                                             ; preds = %.noexc42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !141
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.aw)
          to label %.noexc43 unwind label %bb.cd

.noexc43:                                         ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !141
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !141
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17get_chunk_at_char(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.aw, i64 noundef 0)
          to label %.noexc44 unwind label %bb.cd

.noexc44:                                         ; preds = %.noexc43
  %i.az = load ptr, ptr %i.b, align 8, !noalias !141, !nonnull !8, !noundef !8 ; 8 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !noalias !141, !noundef !8 ; 20 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bd = load i64, ptr %i.bc, align 8, !noalias !141, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !141
  %i.be = sub i64 0, %i.bd                        ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !146)
  %i.bf = icmp samesign ult i64 %i.bb, 17
  br i1 %i.bf, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.noexc44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !146
  invoke void @_RINvMNtCskKLDkoKarTP_4core5sliceSh8align_toNtNtNtB5_9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.az, i64 noundef range(i64 0, -9223372036854775808) %i.bb)
          to label %.noexc45 unwind label %bb.cd

.noexc45:                                         ; preds = %bb.m
  %i.bg = load ptr, ptr %i.c, align 8, !noalias !146, !nonnull !8, !noundef !8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !noalias !146, !noundef !8 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !146, !nonnull !8, !align !149, !noundef !8 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.bm = load i64, ptr %i.bl, align 8, !noalias !146, !noundef !8 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !146
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bi
  %i.bo = icmp samesign eq i64 %i.bi, 0
  br i1 %i.bo, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.n:                                             ; preds = %.noexc44
  %i.bp = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bb
  %i.bq = icmp samesign eq i64 %i.bb, 0
  br i1 %i.bq, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit.i.i, label %.lr.ph

.lr.ph.i.i:                                       ; preds = %.noexc45, %bb.o
  %.sroa.013.0.i141.i.i = phi i64 [ %i.bx, %bb.o ], [ 0, %.noexc45 ] ; 2 uses
  %.sroa.013.0.i140.i.i = phi i64 [ %i.bu, %bb.o ], [ 0, %.noexc45 ]
  %.sroa.027.0.i139.i.i = phi ptr [ %i.bw, %bb.o ], [ %i.bg, %.noexc45 ] ; 2 uses
  %i.br = load i8, ptr %.sroa.027.0.i139.i.i, align 1, !noundef !8
  %i.bs = icmp sgt i8 %i.br, -65
  %i.bt = zext i1 %i.bs to i64
  %i.bu = add i64 %.sroa.013.0.i140.i.i, %i.bt    ; 3 uses
  %i.bv = icmp ugt i64 %i.bu, %i.be
  br i1 %i.bv, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit.i.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.027.0.i139.i.i, i64 1 ; 2 uses
  %i.bx = add nuw i64 %.sroa.013.0.i141.i.i, 1
  %i.by = icmp eq ptr %i.bw, %i.bn
  br i1 %i.by, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.o, %.noexc45
  %.sroa.020.0.i.lcssa.i.i = phi i64 [ 0, %.noexc45 ], [ %i.bu, %bb.o ] ; 3 uses
  %i.bz = sub i64 %i.be, %.sroa.020.0.i.lcssa.i.i
  %i.ca = lshr i64 %i.bz, 4
  %..i.i.i = call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.ca, i64 %i.bm) ; 2 uses
  %i.cb = and i64 %..i.i.i, 576460752303423484    ; 2 uses
  %.not51.i143.i.i = icmp eq i64 %i.cb, 0
  br i1 %.not51.i143.i.i, label %._crit_edge150.i.i, label %.lr.ph149.i.i

._crit_edge150.i.i:                               ; preds = %.lr.ph149.i.i, %._crit_edge.i.i
  %.sroa.020.1.i.lcssa.i.i = phi i64 [ %.sroa.020.0.i.lcssa.i.i, %._crit_edge.i.i ], [ %i.eb, %.lr.ph149.i.i ] ; 2 uses
  %.sroa.013.1.i.lcssa.i.i = phi i64 [ %i.bi, %._crit_edge.i.i ], [ %i.ec, %.lr.ph149.i.i ] ; 2 uses
  %i.cc = and i64 %..i.i.i, 1152921504606846972   ; 4 uses
  %i.cd = icmp ugt i64 %i.cc, %i.bm
  br i1 %i.cd, label %.invoke, label %bb.p, !prof !25

bb.p:                                             ; preds = %._crit_edge150.i.i
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %i.bm
  %i.cf = icmp samesign eq i64 %i.cc, %i.bm
  br i1 %i.cf, label %._crit_edge158.i.i, label %.lr.ph157.preheader.i.i

.lr.ph157.preheader.i.i:                          ; preds = %bb.p
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %i.cc
  br label %.lr.ph157.i.i

.invoke:                                          ; preds = %._crit_edge158.i.i, %._crit_edge150.i.i
  %i.ch = phi i64 [ %i.cc, %._crit_edge150.i.i ], [ %.sroa.013.2.i.lcssa.i.i, %._crit_edge158.i.i ]
  %i.ci = phi i64 [ %i.bm, %._crit_edge150.i.i ], [ %i.bb, %._crit_edge158.i.i ] ; 2 uses
  %i.cj = phi ptr [ @2, %._crit_edge150.i.i ], [ @1, %._crit_edge158.i.i ]
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.ch, i64 noundef %i.ci, i64 noundef %i.ci, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cj) #21
          to label %.cont unwind label %bb.cd

.cont:                                            ; preds = %.invoke
  unreachable

.lr.ph157.i.i:                                    ; preds = %bb.q, %.lr.ph157.preheader.i.i
  %.sroa.040.0.i155.i.i = phi ptr [ %i.cq, %bb.q ], [ %i.cg, %.lr.ph157.preheader.i.i ] ; 2 uses
  %.sroa.013.2.i154.i.i = phi i64 [ %i.cr, %bb.q ], [ %.sroa.013.1.i.lcssa.i.i, %.lr.ph157.preheader.i.i ] ; 2 uses
  %.sroa.020.2.i153.i.i = phi i64 [ %i.cp, %bb.q ], [ %.sroa.020.1.i.lcssa.i.i, %.lr.ph157.preheader.i.i ] ; 2 uses
  %i.ck = load <16 x i8>, ptr %.sroa.040.0.i155.i.i, align 16
  %i.cl = icmp slt <16 x i8> %i.ck, splat (i8 -64)
  %i.cm = zext <16 x i1> %i.cl to <16 x i8>
  %i.cn = call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.cm, <16 x i8> zeroinitializer)
  %.neg117 = add i64 %.sroa.020.2.i153.i.i, 16
  %i.co = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.cn)
  %i.cp = sub i64 %.neg117, %i.co                 ; 3 uses
  %.not52.i.i.i = icmp ult i64 %i.cp, %i.be
  br i1 %.not52.i.i.i, label %bb.q, label %._crit_edge158.i.i

bb.q:                                             ; preds = %.lr.ph157.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.040.0.i155.i.i, i64 16 ; 2 uses
  %i.cr = add i64 %.sroa.013.2.i154.i.i, 16       ; 2 uses
  %i.cs = icmp eq ptr %i.cq, %i.ce
  br i1 %i.cs, label %._crit_edge158.i.i, label %.lr.ph157.i.i

._crit_edge158.i.i:                               ; preds = %bb.q, %.lr.ph157.i.i, %bb.p
  %.sroa.020.2.i.lcssa.i.i = phi i64 [ %.sroa.020.1.i.lcssa.i.i, %bb.p ], [ %.sroa.020.2.i153.i.i, %.lr.ph157.i.i ], [ %i.cp, %bb.q ]
  %.sroa.013.2.i.lcssa.i.i = phi i64 [ %.sroa.013.1.i.lcssa.i.i, %bb.p ], [ %.sroa.013.2.i154.i.i, %.lr.ph157.i.i ], [ %i.cr, %bb.q ] ; 5 uses
  %i.ct = icmp ugt i64 %.sroa.013.2.i.lcssa.i.i, %i.bb
  br i1 %i.ct, label %.invoke, label %bb.r, !prof !25

bb.r:                                             ; preds = %._crit_edge158.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bb
  %i.cv = icmp samesign eq i64 %.sroa.013.2.i.lcssa.i.i, %i.bb
  br i1 %i.cv, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit.i.i, label %.lr.ph168.preheader.i.i

.lr.ph168.preheader.i.i:                          ; preds = %bb.r
  %i.cw = getelementptr inbounds nuw i8, ptr %i.az, i64 %.sroa.013.2.i.lcssa.i.i
  br label %.lr.ph168.i.i

.lr.ph168.i.i:                                    ; preds = %bb.s, %.lr.ph168.preheader.i.i
  %.sroa.036.0.i166.i.i = phi ptr [ %i.dc, %bb.s ], [ %i.cw, %.lr.ph168.preheader.i.i ] ; 2 uses
  %.sroa.013.3.i165.i.i = phi i64 [ %i.dd, %bb.s ], [ %.sroa.013.2.i.lcssa.i.i, %.lr.ph168.preheader.i.i ] ; 2 uses
  %.sroa.020.3.i164.i.i = phi i64 [ %i.da, %bb.s ], [ %.sroa.020.2.i.lcssa.i.i, %.lr.ph168.preheader.i.i ]
  %i.cx = load i8, ptr %.sroa.036.0.i166.i.i, align 1, !alias.scope !146, !noundef !8
  %i.cy = icmp sgt i8 %i.cx, -65
  %i.cz = zext i1 %i.cy to i64
  %i.da = add i64 %.sroa.020.3.i164.i.i, %i.cz    ; 2 uses
  %i.db = icmp ugt i64 %i.da, %i.be
  br i1 %i.db, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit.i.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph168.i.i
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.036.0.i166.i.i, i64 1 ; 2 uses
  %i.dd = add i64 %.sroa.013.3.i165.i.i, 1
  %i.de = icmp eq ptr %i.dc, %i.cu
  br i1 %i.de, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit.i.i, label %.lr.ph168.i.i

.lr.ph149.i.i:                                    ; preds = %._crit_edge.i.i, %.lr.ph149.i.i
  %.sroa.5.0.i147.i.i = phi i64 [ %i.ec, %.lr.ph149.i.i ], [ %i.bi, %._crit_edge.i.i ]
  %.sroa.020.1.i146.i.i = phi i64 [ %i.eb, %.lr.ph149.i.i ], [ %.sroa.020.0.i.lcssa.i.i, %._crit_edge.i.i ]
  %.sroa.030.0.i145.i.i = phi ptr [ %i.df, %.lr.ph149.i.i ], [ %i.bk, %._crit_edge.i.i ] ; 5 uses
  %.sroa.020.1.i144.i.i = phi i64 [ %i.dg, %.lr.ph149.i.i ], [ %i.cb, %._crit_edge.i.i ]
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i145.i.i, i64 64
  %i.dg = add i64 %.sroa.020.1.i144.i.i, -4       ; 2 uses
  %i.dh = load <16 x i8>, ptr %.sroa.030.0.i145.i.i, align 16
  %i.di = icmp slt <16 x i8> %i.dh, splat (i8 -64)
  %i.dj = zext <16 x i1> %i.di to <16 x i8>
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i145.i.i, i64 16
  %i.dl = load <16 x i8>, ptr %i.dk, align 16
  %i.dm = icmp slt <16 x i8> %i.dl, splat (i8 -64)
  %i.dn = zext <16 x i1> %i.dm to <16 x i8>
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i145.i.i, i64 32
  %i.dp = load <16 x i8>, ptr %i.do, align 16
  %i.dq = icmp slt <16 x i8> %i.dp, splat (i8 -64)
  %i.dr = zext <16 x i1> %i.dq to <16 x i8>
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i145.i.i, i64 48
  %i.dt = load <16 x i8>, ptr %i.ds, align 16
  %i.du = icmp slt <16 x i8> %i.dt, splat (i8 -64)
  %i.dv = zext <16 x i1> %i.du to <16 x i8>
  %i.dw = add nuw nsw <16 x i8> %i.dn, %i.dj
  %i.dx = add nuw nsw <16 x i8> %i.dw, %i.dr
  %i.dy = add nuw nsw <16 x i8> %i.dx, %i.dv
  %i.dz = call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.dy, <16 x i8> zeroinitializer)
  %.neg = add i64 %.sroa.020.1.i146.i.i, 64
  %i.ea = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.dz)
  %i.eb = sub i64 %.neg, %i.ea                    ; 2 uses
  %i.ec = add i64 %.sroa.5.0.i147.i.i, 64         ; 2 uses
  %.not51.i.i.i = icmp eq i64 %i.dg, 0
  br i1 %.not51.i.i.i, label %._crit_edge150.i.i, label %.lr.ph149.i.i

bb.t:                                             ; preds = %.lr.ph
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i169, i64 1 ; 2 uses
  %i.ee = add nuw nsw i64 %.sroa.84.0.i.i168, 1
  %i.ef = icmp eq ptr %i.ed, %i.bp
  br i1 %i.ef, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n, %bb.t
  %.sroa.07.0.i.i.i170 = phi i64 [ %i.ej, %bb.t ], [ 0, %bb.n ]
  %.sroa.02.0.i.i169 = phi ptr [ %i.ed, %bb.t ], [ %i.az, %bb.n ] ; 2 uses
  %.sroa.84.0.i.i168 = phi i64 [ %i.ee, %bb.t ], [ 0, %bb.n ] ; 2 uses
  %i.eg = load i8, ptr %.sroa.02.0.i.i169, align 1, !noundef !8
  %i.eh = icmp sgt i8 %i.eg, -65
  %i.ei = zext i1 %i.eh to i64
  %i.ej = add i64 %.sroa.07.0.i.i.i170, %i.ei     ; 2 uses
  %i.ek = icmp ugt i64 %i.ej, %i.be
  br i1 %i.ek, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit.i.i, label %bb.t

_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit.i.i: ; preds = %.lr.ph.i.i, %bb.s, %.lr.ph168.i.i, %bb.t, %.lr.ph, %bb.n, %bb.r
  %.sroa.0.0.i.i.i = phi i64 [ %i.bb, %bb.r ], [ %i.bb, %bb.n ], [ %i.bb, %bb.s ], [ %.sroa.84.0.i.i168, %.lr.ph ], [ %i.bb, %bb.t ], [ %.sroa.013.3.i165.i.i, %.lr.ph168.i.i ], [ %.sroa.013.0.i141.i.i, %.lr.ph.i.i ] ; 10 uses
  %i.el = icmp eq i64 %.sroa.0.0.i.i.i, 0
  br i1 %i.el, label %bb.w, label %bb.u

bb.u:                                             ; preds = %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit.i.i
  %.not.i53.i.i = icmp ult i64 %.sroa.0.0.i.i.i, %i.bb
  br i1 %.not.i53.i.i, label %bb.v, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.u
  %i.em = icmp eq i64 %.sroa.0.0.i.i.i, %i.bb
  br i1 %i.em, label %bb.w, label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.en = getelementptr inbounds nuw i8, ptr %i.az, i64 %.sroa.0.0.i.i.i
  %i.eo = load i8, ptr %i.en, align 1, !alias.scope !150, !noundef !8
  %i.ep = icmp sgt i8 %i.eo, -65
  br i1 %i.ep, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v, %.split.i.i.i, %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit.i.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.az, i64 %.sroa.0.0.i.i.i ; 4 uses
  %i.er = icmp samesign eq i64 %.sroa.0.0.i.i.i, %i.bb
  br i1 %i.er, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.es = load i8, ptr %i.eq, align 1, !noalias !153, !noundef !8 ; 5 uses
  %i.et = icmp sgt i8 %i.es, -1
  br i1 %i.et, label %bb.y, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2wCc12Mnjqg_5ropey.exit12.i.i.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2wCc12Mnjqg_5ropey.exit12.i.i.i: ; preds = %bb.x
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eq, i64 1
  %i.ev = and i8 %i.es, 31
  %i.ew = zext nneg i8 %i.ev to i32               ; 3 uses
  %i.ex = add nuw nsw i64 %.sroa.0.0.i.i.i, 1
  %i.ey = icmp samesign ne i64 %i.ex, %i.bb
  call void @llvm.assume(i1 %i.ey)
  %i.ez = load i8, ptr %i.eu, align 1, !noalias !153, !noundef !8
  %i.fa = shl nuw nsw i32 %i.ew, 6
  %i.fb = and i8 %i.ez, 63
  %i.fc = zext nneg i8 %i.fb to i32               ; 2 uses
  %i.fd = or disjoint i32 %i.fa, %i.fc
  %i.fe = icmp samesign ugt i8 %i.es, -33
  br i1 %i.fe, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2wCc12Mnjqg_5ropey.exit14.i.i.i, label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.ff = zext nneg i8 %i.es to i32
  br label %bb.ac

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2wCc12Mnjqg_5ropey.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2wCc12Mnjqg_5ropey.exit12.i.i.i
  %i.fg = getelementptr inbounds nuw i8, ptr %i.eq, i64 2
  %i.fh = add nuw nsw i64 %.sroa.0.0.i.i.i, 2
  %i.fi = icmp samesign ne i64 %i.fh, %i.bb
  call void @llvm.assume(i1 %i.fi)
  %i.fj = load i8, ptr %i.fg, align 1, !noalias !153, !noundef !8
  %i.fk = shl nuw nsw i32 %i.fc, 6
  %i.fl = and i8 %i.fj, 63
  %i.fm = zext nneg i8 %i.fl to i32
  %i.fn = or disjoint i32 %i.fk, %i.fm            ; 2 uses
  %i.fo = shl nuw nsw i32 %i.ew, 12
  %i.fp = or disjoint i32 %i.fn, %i.fo
  %i.fq = icmp samesign ugt i8 %i.es, -17
  br i1 %i.fq, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2wCc12Mnjqg_5ropey.exit16.i.i.i, label %bb.ac

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2wCc12Mnjqg_5ropey.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2wCc12Mnjqg_5ropey.exit14.i.i.i
  %i.fr = getelementptr inbounds nuw i8, ptr %i.eq, i64 3
  %i.fs = add nuw nsw i64 %.sroa.0.0.i.i.i, 3
  %i.ft = icmp samesign ne i64 %i.fs, %i.bb
  call void @llvm.assume(i1 %i.ft)
  %i.fu = load i8, ptr %i.fr, align 1, !noalias !153, !noundef !8
  %i.fv = shl nuw nsw i32 %i.ew, 18
  %i.fw = and i32 %i.fv, 1835008
  %i.fx = shl nuw nsw i32 %i.fn, 6
  %i.fy = and i8 %i.fu, 63
  %i.fz = zext nneg i8 %i.fy to i32
  %i.ga = or disjoint i32 %i.fx, %i.fz
  %i.gb = or disjoint i32 %i.ga, %i.fw
  br label %bb.ac

bb.z:                                             ; preds = %bb.v, %.split.i.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.az, i64 noundef %i.bb, i64 noundef %.sroa.0.0.i.i.i, i64 noundef %i.bb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #21
          to label %.noexc48 unwind label %bb.cd

.noexc48:                                         ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.w
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #21
          to label %.noexc49 unwind label %bb.cd

.noexc49:                                         ; preds = %bb.aa
  unreachable

bb.ab:                                            ; preds = %.noexc42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.aw)
          to label %.noexc50 unwind label %bb.cd

.noexc50:                                         ; preds = %bb.ab
  %i.gc = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.gd = load i64, ptr %i.gc, align 8, !noundef !8
  store i64 %i.gd, ptr %i.g, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.h, ptr %i.f, align 8
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.44.0..sroa_idx.i, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.g, ptr %i.ge, align 8
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.48.0..sroa_idx.i, align 8
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @3, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #21
          to label %.noexc51 unwind label %bb.cd

.noexc51:                                         ; preds = %.noexc50
  unreachable

bb.ac:                                            ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2wCc12Mnjqg_5ropey.exit16.i.i.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2wCc12Mnjqg_5ropey.exit14.i.i.i, %bb.y, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2wCc12Mnjqg_5ropey.exit12.i.i.i
  %.sroa.4.0.i.ph.i.i = phi i32 [ %i.fp, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2wCc12Mnjqg_5ropey.exit14.i.i.i ], [ %i.gb, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2wCc12Mnjqg_5ropey.exit16.i.i.i ], [ %i.fd, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2wCc12Mnjqg_5ropey.exit12.i.i.i ], [ %i.ff, %bb.y ] ; 2 uses
  %i.gf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i, 1114112
  call void @llvm.assume(i1 %i.gf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.gg = icmp eq i32 %.sroa.4.0.i.ph.i.i, 10
  %i.gh = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.gi = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.gk = invoke noundef i64 @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node5depth(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.gj)
          to label %bb.ad unwind label %bb.cd     ; 3 uses

bb.ad:                                            ; preds = %bb.ac
  %i.gl = load ptr, ptr %i.ac, align 8, !nonnull !8, !noundef !8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.gn = invoke noundef i64 @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node5depth(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.gm)
          to label %bb.ae unwind label %bb.cd     ; 3 uses

bb.ae:                                            ; preds = %bb.ad
  %i.go = icmp ugt i64 %i.gk, %i.gn
  br i1 %i.go, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.gp = load ptr, ptr %i.ac, align 8, !nonnull !8, !noundef !8
  store ptr %i.gp, ptr %i.s, align 8
  %i.gq = invoke fastcc noundef nonnull align 8 ptr @_RNvMsB_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE8make_mutBM_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.s)
          to label %bb.aj unwind label %bb.ai

bb.ag:                                            ; preds = %bb.ae
  %i.gr = invoke fastcc noundef nonnull align 8 ptr @_RNvMsB_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE8make_mutBM_(ptr noalias nofree noundef align 8 dereferenceable(8) %0)
          to label %bb.bi unwind label %bb.cd

bb.ah:                                            ; preds = %bb.ap
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit71.sink.split

bb.ai:                                            ; preds = %bb.ak, %bb.af
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %.thread98

bb.aj:                                            ; preds = %bb.af
  %i.gu = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  %i.gv = atomicrmw add ptr %i.gu, i64 1 monotonic, align 8
  %i.gw = icmp slt i64 %i.gv, 0
  br i1 %i.gw, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gx = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  %i.gy = sub nuw i64 %i.gn, %i.gk
  %i.gz = invoke noundef ptr @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node16prepend_at_depth(ptr noalias nofree noundef nonnull align 8 dereferenceable(1008) %i.gq, ptr noundef nonnull %i.gx, i64 noundef %i.gy)
          to label %bb.am unwind label %bb.ai     ; 5 uses

bb.al:                                            ; preds = %bb.aj
  call void @llvm.trap()
  unreachable

bb.am:                                            ; preds = %bb.ak
  %.not30 = icmp eq ptr %i.gz, null
  br i1 %.not30, label %._crit_edge, label %bb.an

._crit_edge:                                      ; preds = %bb.am
  %.pre = load ptr, ptr %i.s, align 8
  br label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %i.gz, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 960
  store i8 0, ptr %.sroa.523.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.ha)
          to label %bb.aq unwind label %bb.bc

bb.ao:                                            ; preds = %._crit_edge, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit56
  %i.hb = phi ptr [ %.pre, %._crit_edge ], [ %i.hp, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit56 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !156)
  call void @llvm.experimental.noalias.scope.decl(metadata !159)
  call void @llvm.experimental.noalias.scope.decl(metadata !162)
  %i.hc = load ptr, ptr %0, align 8, !alias.scope !165, !nonnull !8, !noundef !8
  %i.hd = atomicrmw sub ptr %i.hc, i64 1 release, align 8, !noalias !165
  %i.he = icmp eq i64 %i.hd, 1
  br i1 %i.he, label %bb.ap, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4rope4RopeEBF_.exit53

bb.ap:                                            ; preds = %bb.ao
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #17
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4rope4RopeEBF_.exit53 unwind label %bb.ah

bb.aq:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false)
  %i.hf = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr %i.gz, ptr %i.hf, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %i.q, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.p)
          to label %bb.ar unwind label %bb.bc

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.hg = load ptr, ptr %i.s, align 8, !nonnull !8, !noundef !8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.hh)
          to label %bb.as unwind label %bb.bc

bb.as:                                            ; preds = %bb.ar
  %i.hi = load ptr, ptr %i.s, align 8, !nonnull !8, !noundef !8
  %i.hj = atomicrmw add ptr %i.hi, i64 1 monotonic, align 8
  %i.hk = icmp slt i64 %i.hj, 0
  br i1 %i.hk, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hl = load ptr, ptr %i.s, align 8, !nonnull !8, !noundef !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false)
  %i.hm = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr %i.hl, ptr %i.hm, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %i.q, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.n)
          to label %bb.av unwind label %bb.bc

bb.au:                                            ; preds = %bb.as
  call void @llvm.trap()
  unreachable

bb.av:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.410)
  %.sroa.410.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.410, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(968) %.sroa.410.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(968) %i.q, i64 968, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 1, ptr %i.i, align 8
  %i.hn = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 1, ptr %i.hn, align 8
  %i.ho = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i8 1, ptr %i.ho, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(975) %.sroa.410.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(975) %.sroa.410, i64 975, i1 false)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !166
  %i.hp = call noundef align 8 dereferenceable_or_null(1024) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 1024, i64 noundef 8) #18, !noalias !166 ; 5 uses
  %i.hq = icmp eq ptr %i.hp, null
  br i1 %i.hq, label %bb.aw, label %bb.az, !prof !25

bb.aw:                                            ; preds = %bb.av
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1024) #19
          to label %.noexc54 unwind label %bb.ax

.noexc54:                                         ; preds = %bb.aw
  unreachable

bb.ax:                                            ; preds = %bb.aw
  %i.hr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1024) %i.i) #16
          to label %.thread98 unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.az:                                            ; preds = %bb.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.hp, ptr noundef nonnull align 8 dereferenceable(1024) %i.i, i64 1024, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.410)
  call void @llvm.experimental.noalias.scope.decl(metadata !169)
  call void @llvm.experimental.noalias.scope.decl(metadata !172)
  %i.ht = load ptr, ptr %i.s, align 8, !alias.scope !175, !nonnull !8, !noundef !8
  %i.hu = atomicrmw sub ptr %i.ht, i64 1 release, align 8, !noalias !175
  %i.hv = icmp eq i64 %i.hu, 1
  br i1 %i.hv, label %bb.ba, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit56

bb.ba:                                            ; preds = %bb.az
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.s) #17
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit56 unwind label %.thread85

.thread85:                                        ; preds = %bb.ba
  %i.hw = landingpad { ptr, i32 }
          cleanup
  store ptr %i.hp, ptr %i.s, align 8
  br label %.thread98

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit56: ; preds = %bb.az, %bb.ba
  store ptr %i.hp, ptr %i.s, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.ao

bb.bb:                                            ; preds = %bb.bc
  br i1 %.sroa.014.1, label %bb.be, label %.thread98

bb.bc:                                            ; preds = %bb.at, %bb.ar, %bb.aq, %bb.an
  %.sroa.014.1 = phi i1 [ true, %bb.an ], [ false, %bb.at ], [ false, %bb.ar ], [ false, %bb.aq ]
  %i.hx = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  invoke void @_RNvXs_NtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB4_20NodeChildrenInternalNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %i.q)
          to label %bb.bb unwind label %bb.bd

bb.bd:                                            ; preds = %bb.ce, %bb.by, %bb.bw, %bb.bh, %bb.bf, %bb.bc
  %i.hy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.be:                                            ; preds = %bb.bb
  %i.hz = atomicrmw sub ptr %i.gz, i64 1 release, align 8, !noalias !176
  %i.ia = icmp eq i64 %i.hz, 1
  br i1 %i.ia, label %bb.bf, label %.thread98

bb.bf:                                            ; preds = %bb.be
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r) #17
          to label %.thread98 unwind label %bb.bd

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4rope4RopeEBF_.exit53: ; preds = %bb.ao, %bb.ap
  store ptr %i.hb, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bi, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit65, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4rope4RopeEBF_.exit53
  %i.ib = call fastcc noundef nonnull align 8 ptr @_RNvMsB_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE8make_mutBM_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) ; 2 uses
  br i1 %i.gg, label %bb.bz, label %bb.ca

.thread98:                                        ; preds = %bb.ax, %.thread85, %bb.bb, %bb.ai, %bb.bf, %bb.be
  %.pn32.ph = phi { ptr, i32 } [ %i.gt, %bb.ai ], [ %i.hx, %bb.bb ], [ %i.hx, %bb.be ], [ %i.hx, %bb.bf ], [ %i.hr, %bb.ax ], [ %i.hw, %.thread85 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !181)
  call void @llvm.experimental.noalias.scope.decl(metadata !184)
  %i.ic = load ptr, ptr %i.s, align 8, !alias.scope !187, !nonnull !8, !noundef !8
  %i.id = atomicrmw sub ptr %i.ic, i64 1 release, align 8, !noalias !187
  %i.ie = icmp eq i64 %i.id, 1
  br i1 %i.ie, label %bb.bh, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit71

bb.bh:                                            ; preds = %.thread98
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.s) #17
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit71 unwind label %bb.bd

bb.bi:                                            ; preds = %bb.ag
  %i.if = load ptr, ptr %i.ac, align 8, !nonnull !8, !noundef !8
  %i.ig = sub nuw i64 %i.gk, %i.gn
  %i.ih = call noundef ptr @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node15append_at_depth(ptr noalias nofree noundef nonnull align 8 dereferenceable(1008) %i.gr, ptr noundef nonnull %i.if, i64 noundef %i.ig) ; 5 uses
  %.not34 = icmp eq ptr %i.ih, null
  br i1 %.not34, label %bb.bg, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store ptr %i.ih, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 960
  store i8 0, ptr %.sroa.519.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.ii = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.ij)
          to label %bb.bk unwind label %bb.bw

bb.bk:                                            ; preds = %bb.bj
  %i.ik = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  %i.il = atomicrmw add ptr %i.ik, i64 1 monotonic, align 8
  %i.im = icmp slt i64 %i.il, 0
  br i1 %i.im, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.in = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 32, i1 false)
  %i.io = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store ptr %i.in, ptr %i.io, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %i.x, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.w)
          to label %bb.bn unwind label %bb.bw

bb.bm:                                            ; preds = %bb.bk
  call void @llvm.trap()
  unreachable

bb.bn:                                            ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.ip)
          to label %bb.bo unwind label %bb.bw

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 32, i1 false)
  %i.iq = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store ptr %i.ih, ptr %i.iq, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %i.x, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.u)
          to label %bb.bp unwind label %bb.bw

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(968) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(968) %i.x, i64 968, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 1, ptr %i.j, align 8
  %i.ir = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 1, ptr %i.ir, align 8
  %i.is = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i8 1, ptr %i.is, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(975) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(975) %.sroa.4, i64 975, i1 false)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !188
  %i.it = call noundef align 8 dereferenceable_or_null(1024) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 1024, i64 noundef 8) #18, !noalias !188 ; 4 uses
  %i.iu = icmp eq ptr %i.it, null
  br i1 %i.iu, label %bb.bq, label %bb.bt, !prof !25

bb.bq:                                            ; preds = %bb.bp
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1024) #19
          to label %.noexc62 unwind label %bb.br

.noexc62:                                         ; preds = %bb.bq
  unreachable

bb.br:                                            ; preds = %bb.bq
  %i.iv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1024) %i.j) #16
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit71 unwind label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.iw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.bt:                                            ; preds = %bb.bp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.it, ptr noundef nonnull align 8 dereferenceable(1024) %i.j, i64 1024, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  call void @llvm.experimental.noalias.scope.decl(metadata !191)
  call void @llvm.experimental.noalias.scope.decl(metadata !194)
  %i.ix = load ptr, ptr %0, align 8, !alias.scope !197, !nonnull !8, !noundef !8
  %i.iy = atomicrmw sub ptr %i.ix, i64 1 release, align 8, !noalias !197
  %i.iz = icmp eq i64 %i.iy, 1
  br i1 %i.iz, label %bb.bu, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit65

bb.bu:                                            ; preds = %bb.bt
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #17
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit65 unwind label %.thread101

.thread101:                                       ; preds = %bb.bu
  %i.ja = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit71.sink.split

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit65: ; preds = %bb.bt, %bb.bu
  store ptr %i.it, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.bg

bb.bv:                                            ; preds = %bb.bw
  br i1 %.sroa.017.1, label %bb.bx, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit71

bb.bw:                                            ; preds = %bb.bo, %bb.bn, %bb.bl, %bb.bj
  %.sroa.017.1 = phi i1 [ true, %bb.bj ], [ false, %bb.bo ], [ true, %bb.bn ], [ true, %bb.bl ]
  %i.jb = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  invoke void @_RNvXs_NtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB4_20NodeChildrenInternalNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %i.x)
          to label %bb.bv unwind label %bb.bd

bb.bx:                                            ; preds = %bb.bv
  %i.jc = atomicrmw sub ptr %i.ih, i64 1 release, align 8, !noalias !198
  %i.jd = icmp eq i64 %i.jc, 1
  br i1 %i.jd, label %bb.by, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit71

bb.by:                                            ; preds = %bb.bx
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.y) #17
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit71 unwind label %bb.bd

bb.bz:                                            ; preds = %bb.bg
  call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node13fix_crlf_seam(ptr noalias nofree noundef nonnull align 8 dereferenceable(1008) %i.ib, i64 noundef %i.gh, i1 noundef zeroext true)
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.bg
  %i.je = icmp ult i64 %i.gh, 462
  %i.jf = load i64, ptr %i.z, align 8
  %i.jg = icmp ult i64 %i.jf, 462
  %or.cond = select i1 %i.je, i1 true, i1 %i.jg
  br i1 %or.cond, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.cc, %bb.ca
  call void @_RNvMNtCs2wCc12Mnjqg_5ropey4ropeNtB2_4Rope22pull_up_singular_nodes(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit

bb.cc:                                            ; preds = %bb.ca
  %i.jh = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ji = load i64, ptr %i.jh, align 8, !noundef !8
  %i.jj = call noundef zeroext i1 @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node13fix_tree_seam(ptr noalias nofree noundef nonnull align 8 dereferenceable(1008) %i.ib, i64 noundef %i.ji) ; 0 uses
  br label %bb.cb

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit71.sink.split: ; preds = %bb.ah, %.thread101
  %.sink = phi ptr [ %i.it, %.thread101 ], [ %i.hb, %bb.ah ]
  %.pn3774.ph = phi { ptr, i32 } [ %i.ja, %.thread101 ], [ %i.gs, %bb.ah ]
  store ptr %.sink, ptr %0, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit71

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit71: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit71.sink.split, %bb.br, %bb.bx, %bb.by, %.thread98, %bb.bh, %bb.bv, %bb.cd, %bb.ce
  %.pn3774 = phi { ptr, i32 } [ %lpad.thr_comm, %bb.cd ], [ %i.jb, %bb.by ], [ %lpad.thr_comm, %bb.ce ], [ %i.iv, %bb.br ], [ %i.jb, %bb.bx ], [ %i.jb, %bb.bv ], [ %.pn32.ph, %bb.bh ], [ %.pn32.ph, %.thread98 ], [ %.pn3774.ph, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit71.sink.split ]
  resume { ptr, i32 } %.pn3774

bb.cd:                                            ; preds = %.invoke, %bb.ag, %bb.ad, %bb.ac, %.noexc50, %bb.j, %bb.i, %bb.e, %bb.a, %bb.k, %bb.l, %.noexc43, %bb.m, %bb.z, %bb.aa, %bb.ab
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !203)
  call void @llvm.experimental.noalias.scope.decl(metadata !206)
  %i.jk = load ptr, ptr %i.ac, align 8, !alias.scope !209, !nonnull !8, !noundef !8
  %i.jl = atomicrmw sub ptr %i.jk, i64 1 release, align 8, !noalias !209
  %i.jm = icmp eq i64 %i.jl, 1
  br i1 %i.jm, label %bb.ce, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit71

bb.ce:                                            ; preds = %bb.cd
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ac) #17
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit71 unwind label %bb.bd
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvMNtCs2wCc12Mnjqg_5ropey4ropeNtB2_4Rope8capacity(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.e)
  %i.f = load i64, ptr %i.b, align 8, !noundef !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noundef !8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.j = load i64, ptr %i.i, align 8, !noundef !8
  %i.k = add i64 %i.j, 1
  call void @_RNvMs7_NtCs2wCc12Mnjqg_5ropey4iterNtB5_6Chunks22new_with_range_at_byte(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, i64 noundef 0, i64 noundef 0, i64 noundef %i.f, i64 noundef 0, i64 noundef %i.h, i64 noundef 0, i64 noundef %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  br label %bb.b

bb.b:                                             ; preds = %bb.k, %bb.a
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.u, %bb.k ] ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !range !4, !noundef !8
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = invoke { ptr, i64 } @_RNvMs7_NtCs2wCc12Mnjqg_5ropey4iterNtB5_6Chunks9next_impl(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.p = invoke { ptr, i64 } @_RNvMs7_NtCs2wCc12Mnjqg_5ropey4iterNtB5_6Chunks9prev_impl(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4iter6ChunksEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.c) #16
          to label %common.resume unwind label %bb.l

bb.f:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i64 } [ %i.o, %bb.c ], [ %i.p, %bb.d ] ; 2 uses
  %.sroa.02.0 = extractvalue { ptr, i64 } %.pn, 0
  %.not = icmp eq ptr %.sroa.02.0, null
  br i1 %.not, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.r = load i64, ptr %i.c, align 8, !range !9, !alias.scope !210, !noundef !8
  %.not.i.i = icmp eq i64 %i.r, -1
  br i1 %.not.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4iter6ChunksEBF_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTRINtNtB7_4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB14_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTRINtNtBG_4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEjEEEB1x_.exit.i.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTRINtNtB7_4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

common.resume:                                    ; preds = %bb.e, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.i ], [ %i.q, %bb.e ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTRINtNtBG_4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEjEEEB1x_.exit.i.i: ; preds = %bb.h
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTRINtNtB7_4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4iter6ChunksEBF_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4iter6ChunksEBF_.exit: ; preds = %bb.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTRINtNtBG_4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEjEEEB1x_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i64 %.sroa.0.0

bb.k:                                             ; preds = %bb.f
  %.sroa.7.0 = extractvalue { ptr, i64 } %.pn, 1
  %..i = call noundef range(i64 984, 0) i64 @llvm.umax.i64(i64 %.sroa.7.0, i64 984)
  %i.u = add i64 %..i, %.sroa.0.0
  br label %bb.b

bb.l:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvMNtCs2wCc12Mnjqg_5ropey4ropeNtB2_4Rope9split_off(ptr noalias nofree noundef align 8 dereferenceable(8) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 3 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs_NtCs2wCc12Mnjqg_5ropey4ropeNtB4_4Rope13try_split_off(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215)
  %i.c = load i64, ptr %i.b, align 8, !range !218, !alias.scope !215, !noundef !8
  %.not.i = icmp eq i64 %i.c, -1
  br i1 %.not.i, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtCs2wCc12Mnjqg_5ropey4rope4RopeNtBL_5ErrorE6unwrapBL_.exit, label %bb.b, !prof !119

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !215
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #21, !noalias !215
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtCs2wCc12Mnjqg_5ropey4rope4RopeNtBL_5ErrorE6unwrapBL_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !215, !nonnull !8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMsB_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE8make_mutBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  %i.e = cmpxchg ptr %i.d, i64 1, i64 0 acquire monotonic, align 8
  %i.f = extractvalue { i64, i1 } %i.e, 1
  %i.g = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8 ; 8 uses
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load atomic i64, ptr %i.h monotonic, align 8
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.e, label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.l = tail call noundef nonnull ptr @_RNvMsk_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE17clone_from_ref_inBM_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.k) ; 3 uses
  %i.m = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !219
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #17
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit unwind label %bb.l

bb.e:                                             ; preds = %bb.b
  store atomic i64 1, ptr %i.g release, align 8
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.g, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  invoke void @_RNvMs1m_NtCsexYYUdYSQU6_5alloc4syncINtB6_15UniqueArcUninitNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeNtNtB8_5alloc6GlobalE3newB10_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.o)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.p = load i64, ptr %i.b, align 8, !range !224, !noundef !8 ; 2 uses
  %i.q = add nuw i64 %i.p, 15
  %i.r = sub i64 0, %i.p
  %i.s = and i64 %i.q, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !8, !noundef !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1008) %i.v, ptr noundef nonnull align 8 dereferenceable(1008) %i.o, i64 1008, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.g, ptr %i.a, align 8
  %i.w = invoke noundef nonnull ptr @_RNvMs1m_NtCsexYYUdYSQU6_5alloc4syncINtB6_15UniqueArcUninitNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeNtNtB8_5alloc6GlobalE8into_arcB10_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1g_.exit7 unwind label %bb.h ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsO_NtCsexYYUdYSQU6_5alloc4syncINtB5_4WeakNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.thread unwind label %bb.j

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1g_.exit7: ; preds = %bb.g
  store ptr %i.w, ptr %0, align 8
  call void @_RNvXsO_NtCsexYYUdYSQU6_5alloc4syncINtB5_4WeakNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1g_.exit7, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit
  %i.y = phi ptr [ %i.g, %bb.e ], [ %i.w, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1g_.exit7 ], [ %i.l, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  ret ptr %i.z

bb.j:                                             ; preds = %bb.k, %bb.h
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

.thread:                                          ; preds = %bb.k, %bb.h, %bb.l
  %.pn3 = phi { ptr, i32 } [ %i.ac, %bb.l ], [ %i.x, %bb.h ], [ %i.ab, %bb.k ]
  resume { ptr, i32 } %.pn3

bb.k:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNvMsB_NtCsexYYUdYSQU6_5alloc4syncINtB8_3ArcppE8make_mutINtB2_5GuardNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.thread unwind label %bb.j

bb.l:                                             ; preds = %bb.d
  %i.ac = landingpad { ptr, i32 }
          cleanup
  store ptr %i.l, ptr %0, align 8
  br label %.thread

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit: ; preds = %bb.c, %bb.d
  store ptr %i.l, ptr %0, align 8
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCs2wCc12Mnjqg_5ropey4ropeNtB4_4Rope13try_split_off(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [1024 x i8], align 8              ; 7 uses
  %i.c = alloca [1024 x i8], align 8              ; 8 uses
  %i.d = alloca [1000 x i8], align 8              ; 4 uses
  %.sroa.47 = alloca [1007 x i8], align 1         ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [1024 x i8], align 8              ; 8 uses
  %i.g = alloca [1000 x i8], align 8              ; 4 uses
  %.sroa.43 = alloca [1007 x i8], align 1         ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 8 uses
  %i.j = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.m = load i64, ptr %i.l, align 8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.not = icmp ugt i64 %2, %i.m
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.k)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load i64, ptr %i.n, align 8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.p = icmp eq i64 %2, 0
  br i1 %i.p, label %bb.e, label %bb.i

bb.d:                                             ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEE3newB16_.exit, %bb.y, %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEE3newB16_.exit16, %bb.b
  ret void

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.43)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB2_8NodeText8from_str(ptr noalias nofree noundef nonnull sret([1000 x i8]) align 8 captures(none) dereferenceable(1000) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0)
  %.sroa.43.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.43, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1000) %.sroa.43.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(1000) %i.g, i64 1000, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 1, ptr %i.f, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i8 0, ptr %i.r, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1007) %.sroa.43.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(1007) %.sroa.43, i64 1007, i1 false)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !225
  %i.s = call noundef align 8 dereferenceable_or_null(1024) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 1024, i64 noundef 8) #18, !noalias !225 ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.f, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEE3newB16_.exit16, !prof !25

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1024) #19
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1024) %i.f) #16
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

common.resume:                                    ; preds = %bb.s, %bb.r, %bb.p, %bb.l, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.am, %bb.p ], [ %i.u, %bb.g ], [ %i.af, %bb.l ], [ %i.ap, %bb.r ], [ %i.ap, %bb.s ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEE3newB16_.exit16: ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.s, ptr noundef nonnull align 8 dereferenceable(1024) %i.f, i64 1024, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.43)
  store ptr %i.s, ptr %1, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.w, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.k)
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.y = load i64, ptr %i.x, align 8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.z = icmp eq i64 %2, %i.y
  br i1 %i.z, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.aa = call fastcc noundef nonnull align 8 ptr @_RNvMsB_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE8make_mutBM_(ptr noalias nofree noundef align 8 dereferenceable(8) %1) #20
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node5split(ptr noalias nofree noundef nonnull sret([1008 x i8]) align 8 captures(none) dereferenceable(1008) %i.ab, ptr noalias nofree noundef nonnull align 8 dereferenceable(1008) %i.aa, i64 noundef %2)
  store i64 1, ptr %i.b, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.ac, align 8
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !228
  %i.ad = call noundef align 8 dereferenceable_or_null(1024) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 1024, i64 noundef 8) #18, !noalias !228 ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.k, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEE3newB16_.exit15, !prof !25

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1024) #19
          to label %.noexc17 unwind label %bb.l

.noexc17:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1024) %i.b) #16
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEE3newB16_.exit15: ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.ad, ptr noundef nonnull align 8 dereferenceable(1024) %i.b, i64 1024, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.ad, ptr %i.i, align 8
  %i.ah = invoke fastcc noundef nonnull align 8 ptr @_RNvMsB_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE8make_mutBM_(ptr noalias nofree noundef align 8 dereferenceable(8) %1)
          to label %bb.t unwind label %bb.r

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.47)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
end_hunk_0
