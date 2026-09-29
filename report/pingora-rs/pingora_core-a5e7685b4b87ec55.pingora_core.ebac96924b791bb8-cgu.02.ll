Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_core-a5e7685b4b87ec55.pingora_core.ebac96924b791bb8-cgu.02?download=true
inline.NumInlined: 716
inline.NumDeleted: 218
loop-unroll.NumCompletelyUnrolled: 44
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 59
begin_hunk_0_@_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc17brotli_bit_stream12LogMetaBlockNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocNCNvMs2_NtB4_6writerINtB25_24CompressorWriterCustomIoNtNtNtCskKLDkoKarTP_4core2io5error5ErrorINtNtCsfQhfhXbPrjn_19brotli_decompressor11io_wrappers12IntoIoWriterINtNtCsexYYUdYSQU6_5alloc3vec3VechEEINtNtB16_10heap_alloc7WrapBoxhEB12_E14flush_or_close0ECskeugdADtBsi_12pingora_core:bb.a
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.sroa.04.0.i.i142
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 2 ; 2 uses
  %i.cj = load i8, ptr %i.ci, align 1, !alias.scope !515, !noalias !516, !noundef !4 ; 2 uses
  %i.ck = icmp ult i8 %i.cj, %i.cg
  %..i.i.i.i144.2 = select i1 %i.ck, ptr %..i.i.i.i144.1, ptr %i.ci
  %i.cl = tail call i8 @llvm.umax.i8(i8 %i.cj, i8 %i.cg) ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.sroa.04.0.i.i142
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 3 ; 2 uses
  %i.co = load i8, ptr %i.cn, align 1, !alias.scope !517, !noalias !518, !noundef !4 ; 2 uses
  %i.cp = icmp ult i8 %i.co, %i.cl
  %..i.i.i.i144.3 = select i1 %i.cp, ptr %..i.i.i.i144.2, ptr %i.cn ; 3 uses
  %i.cq = add nuw i64 %.sroa.04.0.i.i142, 4       ; 2 uses
  %i.cr = tail call i8 @llvm.umax.i8(i8 %i.co, i8 %i.cl) ; 2 uses
  %niter140.next.3 = add i64 %niter140, 4         ; 2 uses
  %niter140.ncmp.3 = icmp eq i64 %niter140.next.3, %unroll_iter139
  br i1 %niter140.ncmp.3, label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRhNtNtBa_3cmp3Ord3maxECskeugdADtBsi_12pingora_core.exit146.loopexit.unr-lcssa, label %bb.j

_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRhNtNtBa_3cmp3Ord3maxECskeugdADtBsi_12pingora_core.exit146.loopexit.unr-lcssa: ; preds = %bb.j
  %lcmp.mod136.not = icmp eq i64 %xtraiter132, 0
  br i1 %lcmp.mod136.not, label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRhNtNtBa_3cmp3Ord3maxECskeugdADtBsi_12pingora_core.exit146, label %.epil.preheader131

.epil.preheader131:                               ; preds = %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRhNtNtBa_3cmp3Ord3maxECskeugdADtBsi_12pingora_core.exit146.loopexit.unr-lcssa, %bb.i
  %.epil.init135 = phi i8 [ %.pre.i.i141, %bb.i ], [ %i.cr, %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRhNtNtBa_3cmp3Ord3maxECskeugdADtBsi_12pingora_core.exit146.loopexit.unr-lcssa ]
  %.sroa.04.0.i.i142.epil.init = phi i64 [ 0, %bb.i ], [ %i.cq, %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRhNtNtBa_3cmp3Ord3maxECskeugdADtBsi_12pingora_core.exit146.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i143.epil.init = phi ptr [ %i.bo, %bb.i ], [ %..i.i.i.i144.3, %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRhNtNtBa_3cmp3Ord3maxECskeugdADtBsi_12pingora_core.exit146.loopexit.unr-lcssa ]
  %lcmp.mod138 = icmp ne i64 %xtraiter132, 0
  tail call void @llvm.assume(i1 %lcmp.mod138)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader131
  %i.cs = phi i8 [ %.epil.init135, %.epil.preheader131 ], [ %i.cx, %bb.k ] ; 2 uses
  %.sroa.04.0.i.i142.epil = phi i64 [ %.sroa.04.0.i.i142.epil.init, %.epil.preheader131 ], [ %i.cw, %bb.k ] ; 2 uses
  %.sroa.02.0.i.i143.epil = phi ptr [ %.sroa.02.0.i.i143.epil.init, %.epil.preheader131 ], [ %..i.i.i.i144.epil, %bb.k ]
  %epil.iter133 = phi i64 [ 0, %.epil.preheader131 ], [ %epil.iter133.next, %bb.k ]
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.sroa.04.0.i.i142.epil ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !507)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !508)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !509)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !510)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !511)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !512)
  %i.cu = load i8, ptr %i.ct, align 1, !alias.scope !506, !noalias !505, !noundef !4 ; 2 uses
  %i.cv = icmp ult i8 %i.cu, %i.cs
  %..i.i.i.i144.epil = select i1 %i.cv, ptr %.sroa.02.0.i.i143.epil, ptr %i.ct ; 2 uses
  %i.cw = add nuw i64 %.sroa.04.0.i.i142.epil, 1
  %i.cx = tail call i8 @llvm.umax.i8(i8 %i.cu, i8 %i.cs)
  %epil.iter133.next = add i64 %epil.iter133, 1   ; 2 uses
  %epil.iter133.cmp.not = icmp eq i64 %epil.iter133.next, %xtraiter132
  br i1 %epil.iter133.cmp.not, label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRhNtNtBa_3cmp3Ord3maxECskeugdADtBsi_12pingora_core.exit146, label %bb.k, !llvm.loop !419

_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRhNtNtBa_3cmp3Ord3maxECskeugdADtBsi_12pingora_core.exit146: ; preds = %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRhNtNtBa_3cmp3Ord3maxECskeugdADtBsi_12pingora_core.exit146.loopexit.unr-lcssa, %bb.k, %bb.g, %bb.h
  %.sroa.0.0.i145 = phi ptr [ null, %bb.g ], [ %i.bo, %bb.h ], [ %..i.i.i.i144.3, %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRhNtNtBa_3cmp3Ord3maxECskeugdADtBsi_12pingora_core.exit146.loopexit.unr-lcssa ], [ %..i.i.i.i144.epil, %bb.k ] ; 2 uses
  %.not105 = icmp eq ptr %.sroa.0.0.i145, null
  %.117 = select i1 %.not105, ptr @25, ptr %.sroa.0.0.i145
  %i.cy = load i8, ptr %.117, align 1, !noundef !4
  %i.cz = zext i8 %i.cy to i32
  %i.da = add nuw nsw i32 %i.cz, 1                ; 2 uses
  store i32 %i.da, ptr %i.t, align 4
  %i.db = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 8, !noundef !4
  %i.dd = icmp eq i32 %i.da, %i.dc
  br i1 %i.dd, label %bb.m, label %bb.l, !prof !9

bb.l:                                             ; preds = %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRhNtNtBa_3cmp3Ord3maxECskeugdADtBsi_12pingora_core.exit146
  call void @_RINvNtCskKLDkoKarTP_4core9panicking13assert_failedmmECsG258MDvU3F_3std(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.t, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.db, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #22
  unreachable

bb.m:                                             ; preds = %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRhNtNtBa_3cmp3Ord3maxECskeugdADtBsi_12pingora_core.exit146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.de = getelementptr inbounds nuw i8, ptr %9, i64 96
  %i.df = load ptr, ptr %i.de, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %9, i64 104
  %i.dh = load i64, ptr %i.dg, align 8, !noundef !4 ; 4 uses
  %i.di = icmp samesign eq i64 %i.dh, 0
  br i1 %i.di, label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRhNtNtBa_3cmp3Ord3maxECskeugdADtBsi_12pingora_core.exit152, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 1 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !519)
  %i.dk = icmp samesign eq i64 %i.dh, 1
  br i1 %i.dk, label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRhNtNtBa_3cmp3Ord3maxECskeugdADtBsi_12pingora_core.exit152, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.pre.i.i147 = load i8, ptr %i.df, align 1, !alias.scope !520, !noalias !521 ; 2 uses
  %i.dl = add i64 %i.dh, -2
  %i.dm = add i64 %i.dh, -1                       ; 2 uses
  %xtraiter143 = and i64 %i.dm, 3                 ; 3 uses
  %i.dn = icmp ult i64 %i.dl, 3
  br i1 %i.dn, label %.epil.preheader142, label %.new141

.new141:                                          ; preds = %bb.o
  %unroll_iter150 = and i64 %i.dm, -4
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.new141
  %i.do = phi i8 [ %.pre.i.i147, %.new141 ], [ %i.ei, %bb.p ] ; 2 uses
  %.sroa.04.0.i.i148 = phi i64 [ 0, %.new141 ], [ %i.eh, %bb.p ] ; 5 uses
  %.sroa.02.0.i.i149 = phi ptr [ %i.df, %.new141 ], [ %..i.i.i.i150.3, %bb.p ]
  %niter151 = phi i64 [ 0, %.new141 ], [ %niter151.next.3, %bb.p ]
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dj, i64 %.sroa.04.0.i.i148 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !522)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !523)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !524)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !525)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !526)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !527)
  %i.dq = load i8, ptr %i.dp, align 1, !alias.scope !521, !noalias !520, !noundef !4 ; 2 uses
  %i.dr = icmp ult i8 %i.dq, %i.do
  %..i.i.i.i150 = select i1 %i.dr, ptr %.sroa.02.0.i.i149, ptr %i.dp
  %i.ds = tail call i8 @llvm.umax.i8(i8 %i.dq, i8 %i.do) ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dj, i64 %.sroa.04.0.i.i148
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 1 ; 2 uses
  %i.dv = load i8, ptr %i.du, align 1, !alias.scope !528, !noalias !529, !noundef !4 ; 2 uses
  %i.dw = icmp ult i8 %i.dv, %i.ds
  %..i.i.i.i150.1 = select i1 %i.dw, ptr %..i.i.i.i150, ptr %i.du
  %i.dx = tail call i8 @llvm.umax.i8(i8 %i.dv, i8 %i.ds) ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dj, i64 %.sroa.04.0.i.i148
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 2 ; 2 uses
  %i.ea = load i8, ptr %i.dz, align 1, !alias.scope !530, !noalias !531, !noundef !4 ; 2 uses
  %i.eb = icmp ult i8 %i.ea, %i.dx
  %..i.i.i.i150.2 = select i1 %i.eb, ptr %..i.i.i.i150.1, ptr %i.dz
  %i.ec = tail call i8 @llvm.umax.i8(i8 %i.ea, i8 %i.dx) ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dj, i64 %.sroa.04.0.i.i148
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 3 ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 1, !alias.scope !532, !noalias !533, !noundef !4 ; 2 uses
  %i.eg = icmp ult i8 %i.ef, %i.ec
  %..i.i.i.i150.3 = select i1 %i.eg, ptr %..i.i.i.i150.2, ptr %i.ee ; 3 uses
  %i.eh = add nuw i64 %.sroa.04.0.i.i148, 4       ; 2 uses
  %i.ei = tail call i8 @llvm.umax.i8(i8 %i.ef, i8 %i.ec) ; 2 uses
  %niter151.next.3 = add i64 %niter151, 4         ; 2 uses
  %niter151.ncmp.3 = icmp eq i64 %niter151.next.3, %unroll_iter150
  br i1 %niter151.ncmp.3, label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRhNtNtBa_3cmp3Ord3maxECskeugdADtBsi_12pingora_core.exit152.loopexit.unr-lcssa, label %bb.p

_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRhNtNtBa_3cmp3Ord3maxECskeugdADtBsi_12pingora_core.exit152.loopexit.unr-lcssa: ; preds = %bb.p
  %lcmp.mod147.not = icmp eq i64 %xtraiter143, 0
  br i1 %lcmp.mod147.not, label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRhNtNtBa_3cmp3Ord3maxECskeugdADtBsi_12pingora_core.exit152, label %.epil.preheader142

.epil.preheader142:                               ; preds = %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRhNtNtBa_3cmp3Ord3maxECskeugdADtBsi_12pingora_core.exit152.loopexit.unr-lcssa, %bb.o
  %.epil.init146 = phi i8 [ %.pre.i.i147, %bb.o ], [ %i.ei, %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRhNtNtBa_3cmp3Ord3maxECskeugdADtBsi_12pingora_core.exit152.loopexit.unr-lcssa ]
  %.sroa.04.0.i.i148.epil.init = phi i64 [ 0, %bb.o ], [ %i.eh, %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRhNtNtBa_3cmp3Ord3maxECskeugdADtBsi_12pingora_core.exit152.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i149.epil.init = phi ptr [ %i.df, %bb.o ], [ %..i.i.i.i150.3, %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRhNtNtBa_3cmp3Ord3maxECskeugdADtBsi_12pingora_core.exit152.loopexit.unr-lcssa ]
  %lcmp.mod149 = icmp ne i64 %xtraiter143, 0
  tail call void @llvm.assume(i1 %lcmp.mod149)
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.epil.preheader142
  %i.ej = phi i8 [ %.epil.init146, %.epil.preheader142 ], [ %i.eo, %bb.q ] ; 2 uses
  %.sroa.04.0.i.i148.epil = phi i64 [ %.sroa.04.0.i.i148.epil.init, %.epil.preheader142 ], [ %i.en, %bb.q ] ; 2 uses
  %.sroa.02.0.i.i149.epil = phi ptr [ %.sroa.02.0.i.i149.epil.init, %.epil.preheader142 ], [ %..i.i.i.i150.epil, %bb.q ]
  %epil.iter144 = phi i64 [ 0, %.epil.preheader142 ], [ %epil.iter144.next, %bb.q ]
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dj, i64 %.sroa.04.0.i.i148.epil ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !522)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !523)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !524)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !525)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !526)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !527)
  %i.el = load i8, ptr %i.ek, align 1, !alias.scope !521, !noalias !520, !noundef !4 ; 2 uses
  %i.em = icmp ult i8 %i.el, %i.ej
  %..i.i.i.i150.epil = select i1 %i.em, ptr %.sroa.02.0.i.i149.epil, ptr %i.ek ; 2 uses
  %i.en = add nuw i64 %.sroa.04.0.i.i148.epil, 1
  %i.eo = tail call i8 @llvm.umax.i8(i8 %i.el, i8 %i.ej)
  %epil.iter144.next = add i64 %epil.iter144, 1   ; 2 uses
  %epil.iter144.cmp.not = icmp eq i64 %epil.iter144.next, %xtraiter143
  br i1 %epil.iter144.cmp.not, label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRhNtNtBa_3cmp3Ord3maxECskeugdADtBsi_12pingora_core.exit152, label %bb.q, !llvm.loop !449

_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRhNtNtBa_3cmp3Ord3maxECskeugdADtBsi_12pingora_core.exit152: ; preds = %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRhNtNtBa_3cmp3Ord3maxECskeugdADtBsi_12pingora_core.exit152.loopexit.unr-lcssa, %bb.q, %bb.m, %bb.n
  %.sroa.0.0.i151 = phi ptr [ null, %bb.m ], [ %i.df, %bb.n ], [ %..i.i.i.i150.3, %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRhNtNtBa_3cmp3Ord3maxECskeugdADtBsi_12pingora_core.exit152.loopexit.unr-lcssa ], [ %..i.i.i.i150.epil, %bb.q ] ; 2 uses
  %.not106 = icmp eq ptr %.sroa.0.0.i151, null
  %.118 = select i1 %.not106, ptr @25, ptr %.sroa.0.0.i151
  %i.ep = load i8, ptr %.118, align 1, !noundef !4
  %i.eq = zext i8 %i.ep to i32
  %i.er = add nuw nsw i32 %i.eq, 1                ; 2 uses
  store i32 %i.er, ptr %i.s, align 4
  %i.es = getelementptr inbounds nuw i8, ptr %9, i64 128 ; 2 uses
  %i.et = load i32, ptr %i.es, align 8, !noundef !4
  %i.eu = icmp eq i32 %i.er, %i.et
  br i1 %i.eu, label %bb.s, label %bb.r, !prof !9

bb.r:                                             ; preds = %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRhNtNtBa_3cmp3Ord3maxECskeugdADtBsi_12pingora_core.exit152
  call void @_RINvNtCskKLDkoKarTP_4core9panicking13assert_failedmmECsG258MDvU3F_3std(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.s, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.es, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #22
  unreachable

bb.s:                                             ; preds = %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRhNtNtBa_3cmp3Ord3maxECskeugdADtBsi_12pingora_core.exit152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.ev = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.ew = load i64, ptr %i.ev, align 8, !noundef !4 ; 5 uses
  %i.ex = icmp ult i64 %i.ew, 16385
  br i1 %i.ex, label %bb.t, label %.loopexit73

.loopexit73:                                      ; preds = %.lr.ph.preheader, %middle.block, %bb.t, %bb.s
  %i.ey = getelementptr inbounds nuw i8, ptr %9, i64 144
  %i.ez = load i64, ptr %i.ey, align 8, !noundef !4 ; 4 uses
  %i.fa = icmp ult i64 %i.ez, 16385
  br i1 %i.fa, label %bb.x, label %.loopexit

bb.t:                                             ; preds = %bb.s
  %i.fb = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.fc = load ptr, ptr %i.fb, align 8, !nonnull !4, !align !19, !noundef !4 ; 6 uses
  %.idx = shl nuw nsw i64 %i.ew, 2                ; 3 uses
  %i.fd = getelementptr i8, ptr %i.fc, i64 %.idx  ; 2 uses
  %i.fe = icmp eq i64 %i.ew, 0
  br i1 %i.fe, label %.loopexit73, label %.lr.ph.preheader.preheader

.lr.ph.preheader.preheader:                       ; preds = %bb.t
  %i.ff = add nsw i64 %.idx, -4                   ; 2 uses
  %i.fg = lshr exact i64 %i.ff, 2
  %i.fh = add nuw nsw i64 %i.fg, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ff, 60
  br i1 %min.iters.check, label %.lr.ph.preheader.preheader127, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.preheader
  %12 = add nsw i64 %.idx, -4
  %i.fi = lshr exact i64 %12, 2
  %i.fj = getelementptr i8, ptr %i.w, i64 %i.fi
  %scevgep = getelementptr i8, ptr %i.fj, i64 1
  %bound0 = icmp ult ptr %i.w, %i.fd
  %bound1 = icmp ult ptr %i.fc, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader.preheader127, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fh, 9223372036854775800     ; 4 uses
  %i.fk = shl i64 %n.vec, 2
  %i.fl = getelementptr i8, ptr %i.fc, i64 %i.fk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fm = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.fc, i64 %i.fm ; 2 uses
  %i.fn = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !alias.scope !534
  %wide.load104 = load <4 x i32>, ptr %i.fn, align 4, !alias.scope !534
  %i.fo = getelementptr inbounds nuw i8, ptr %i.w, i64 %index ; 2 uses
  %i.fp = trunc <4 x i32> %wide.load to <4 x i8>
  %i.fq = trunc <4 x i32> %wide.load104 to <4 x i8>
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 4
  store <4 x i8> %i.fp, ptr %i.fo, align 1, !alias.scope !535, !noalias !534
  store <4 x i8> %i.fq, ptr %i.fr, align 1, !alias.scope !535, !noalias !534
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fs = icmp eq i64 %index.next, %n.vec
  br i1 %i.fs, label %middle.block, label %vector.body, !llvm.loop !453

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fh, %n.vec
  br i1 %cmp.n, label %.loopexit73, label %.lr.ph.preheader.preheader127

.lr.ph.preheader.preheader127:                    ; preds = %vector.memcheck, %.lr.ph.preheader.preheader, %middle.block
  %.sroa.0.076.ph = phi ptr [ %i.fc, %vector.memcheck ], [ %i.fc, %.lr.ph.preheader.preheader ], [ %i.fl, %middle.block ]
  %.sroa.7.075.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.preheader

.loopexit:                                        ; preds = %.lr.ph79.preheader, %middle.block122, %bb.x, %.loopexit73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %.not.i = icmp ugt i64 %i.ew, 16384
  br i1 %.not.i, label %bb.u, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh12split_at_mutCskeugdADtBsi_12pingora_core.exit, !prof !10

bb.u:                                             ; preds = %.loopexit
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @151, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #22, !noalias !536
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSh12split_at_mutCskeugdADtBsi_12pingora_core.exit: ; preds = %.loopexit
  %i.ft = add i64 %i.ez, 8208                     ; 5 uses
  %.not.i154 = icmp ugt i64 %i.ft, 24592
  br i1 %.not.i154, label %bb.v, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh12split_at_mutCskeugdADtBsi_12pingora_core.exit158, !prof !10

bb.v:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh12split_at_mutCskeugdADtBsi_12pingora_core.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @151, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #22, !noalias !537
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSh12split_at_mutCskeugdADtBsi_12pingora_core.exit158: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh12split_at_mutCskeugdADtBsi_12pingora_core.exit
  store ptr %i.w, ptr %i.r, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.ew, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 3 uses
  store ptr %i.v, ptr %i.fu, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 3 uses
  store i64 %i.ft, ptr %.sroa.428.0..sroa_idx, align 8
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store i64 0, ptr %.sroa.529.0..sroa_idx, align 8
  %i.fv = icmp samesign ugt i64 %i.ft, 8195
  br i1 %i.fv, label %_RNvMs1_NtNtCsiRgJJXJ4lb7_6brotli3enc9interfaceINtB5_24PredictionModeContextMapNtNtB7_10input_pair17InputReferenceMutE21get_mixing_values_mutCskeugdADtBsi_12pingora_core.exit, label %bb.w, !prof !9

bb.w:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh12split_at_mutCskeugdADtBsi_12pingora_core.exit158
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 4, i64 noundef 8196, i64 noundef %i.ft, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #22
  unreachable

_RNvMs1_NtNtCsiRgJJXJ4lb7_6brotli3enc9interfaceINtB5_24PredictionModeContextMapNtNtB7_10input_pair17InputReferenceMutE21get_mixing_values_mutCskeugdADtBsi_12pingora_core.exit: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh12split_at_mutCskeugdADtBsi_12pingora_core.exit158
  %i.fw = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8192) %i.fw, i8 4, i64 8192, i1 false)
  %i.fx = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.fy = load i64, ptr %i.fx, align 8
  call fastcc void @_RNvMs1_NtNtCsiRgJJXJ4lb7_6brotli3enc9interfaceINtB5_24PredictionModeContextMapNtNtB7_10input_pair17InputReferenceMutE24set_stride_context_speedCskeugdADtBsi_12pingora_core(ptr nonnull %i.v, i64 %i.ft, i64 noundef %i.fy) #26
  %i.fz = load i64, ptr %10, align 8              ; 2 uses
  %.val127 = load ptr, ptr %i.fu, align 8, !nonnull !4, !noundef !4
  %.val128 = load i64, ptr %.sroa.428.0..sroa_idx, align 8, !noundef !4
  call fastcc void @_RNvMs1_NtNtCsiRgJJXJ4lb7_6brotli3enc9interfaceINtB5_24PredictionModeContextMapNtNtB7_10input_pair17InputReferenceMutE21set_context_map_speedCskeugdADtBsi_12pingora_core(ptr nonnull %.val127, i64 %.val128, i64 noundef %i.fz) #26
  %.val131 = load ptr, ptr %i.fu, align 8, !nonnull !4, !noundef !4
  %.val132 = load i64, ptr %.sroa.428.0..sroa_idx, align 8, !noundef !4
  call fastcc void @_RNvMs1_NtNtCsiRgJJXJ4lb7_6brotli3enc9interfaceINtB5_24PredictionModeContextMapNtNtB7_10input_pair17InputReferenceMutE33set_combined_stride_context_speedCskeugdADtBsi_12pingora_core(ptr nonnull %.val131, i64 %.val132, i64 noundef %i.fz) #26
  %.not109 = icmp eq i8 %11, -1
  %.119 = select i1 %.not109, i8 0, i8 %11
  call void @_RNvMs1_NtNtCsiRgJJXJ4lb7_6brotli3enc9interfaceINtB5_24PredictionModeContextMapNtNtB7_10input_pair17InputReferenceMutE27set_literal_prediction_modeCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.r, i8 noundef %.119)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.ga = getelementptr inbounds nuw i8, ptr %10, i64 92
  %i.gb = load i8, ptr %i.ga, align 4, !noundef !4 ; 3 uses
  %.off = add i8 %i.gb, -1
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %bb.y, label %_RNvMs2_NtNtCsiRgJJXJ4lb7_6brotli3enc11find_strideINtB5_12EntropyTallyNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocE20disabled_placeholderCskeugdADtBsi_12pingora_core.exit

bb.x:                                             ; preds = %.loopexit73
  %i.gc = getelementptr inbounds nuw i8, ptr %9, i64 136
  %i.gd = load ptr, ptr %i.gc, align 8, !nonnull !4, !align !19, !noundef !4 ; 6 uses
  %.idx81 = shl nuw nsw i64 %i.ez, 2              ; 3 uses
  %i.ge = getelementptr i8, ptr %i.gd, i64 %.idx81 ; 2 uses
  %i.gf = icmp eq i64 %i.ez, 0
  br i1 %i.gf, label %.loopexit, label %.lr.ph79.preheader.preheader

.lr.ph79.preheader.preheader:                     ; preds = %bb.x
  %i.gg = add nsw i64 %.idx81, -4                 ; 2 uses
  %i.gh = lshr exact i64 %i.gg, 2
  %i.gi = add nuw nsw i64 %i.gh, 1                ; 2 uses
  %min.iters.check113 = icmp ult i64 %i.gg, 60
  br i1 %min.iters.check113, label %.lr.ph79.preheader.preheader126, label %vector.memcheck106

vector.memcheck106:                               ; preds = %.lr.ph79.preheader.preheader
  %scevgep107 = getelementptr inbounds nuw i8, ptr %i.v, i64 8208
  %13 = add nsw i64 %.idx81, -4
  %i.gj = lshr exact i64 %13, 2
  %i.gk = getelementptr i8, ptr %i.v, i64 %i.gj
  %scevgep108 = getelementptr i8, ptr %i.gk, i64 8209
  %bound0109 = icmp ult ptr %scevgep107, %i.ge
  %bound1110 = icmp ult ptr %i.gd, %scevgep108
  %found.conflict111 = and i1 %bound0109, %bound1110
  br i1 %found.conflict111, label %.lr.ph79.preheader.preheader126, label %vector.ph114

vector.ph114:                                     ; preds = %vector.memcheck106
  %n.vec115 = and i64 %i.gi, 9223372036854775800  ; 4 uses
  %i.gl = shl i64 %n.vec115, 2
  %i.gm = getelementptr i8, ptr %i.gd, i64 %i.gl
  br label %vector.body116

vector.body116:                                   ; preds = %vector.body116, %vector.ph114
  %index117 = phi i64 [ 0, %vector.ph114 ], [ %index.next121, %vector.body116 ] ; 3 uses
  %i.gn = shl i64 %index117, 2
  %next.gep118 = getelementptr i8, ptr %i.gd, i64 %i.gn ; 2 uses
  %i.go = getelementptr i8, ptr %next.gep118, i64 16
  %wide.load119 = load <4 x i32>, ptr %next.gep118, align 4, !alias.scope !538
  %wide.load120 = load <4 x i32>, ptr %i.go, align 4, !alias.scope !538
  %i.gp = getelementptr inbounds nuw i8, ptr %i.v, i64 %index117 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8208
  %i.gr = trunc <4 x i32> %wide.load119 to <4 x i8>
  %i.gs = trunc <4 x i32> %wide.load120 to <4 x i8>
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gp, i64 8212
  store <4 x i8> %i.gr, ptr %i.gq, align 1, !alias.scope !539, !noalias !538
  store <4 x i8> %i.gs, ptr %i.gt, align 1, !alias.scope !539, !noalias !538
  %index.next121 = add nuw i64 %index117, 8       ; 2 uses
  %i.gu = icmp eq i64 %index.next121, %n.vec115
  br i1 %i.gu, label %middle.block122, label %vector.body116, !llvm.loop !463

middle.block122:                                  ; preds = %vector.body116
  %cmp.n123 = icmp eq i64 %i.gi, %n.vec115
  br i1 %cmp.n123, label %.loopexit, label %.lr.ph79.preheader.preheader126

.lr.ph79.preheader.preheader126:                  ; preds = %vector.memcheck106, %.lr.ph79.preheader.preheader, %middle.block122
  %.sroa.01.078.ph = phi ptr [ %i.gd, %vector.memcheck106 ], [ %i.gd, %.lr.ph79.preheader.preheader ], [ %i.gm, %middle.block122 ]
  %.sroa.73.077.ph = phi i64 [ 0, %vector.memcheck106 ], [ 0, %.lr.ph79.preheader.preheader ], [ %n.vec115, %middle.block122 ]
  br label %.lr.ph79.preheader

bb.y:                                             ; preds = %_RNvMs1_NtNtCsiRgJJXJ4lb7_6brotli3enc9interfaceINtB5_24PredictionModeContextMapNtNtB7_10input_pair17InputReferenceMutE21get_mixing_values_mutCskeugdADtBsi_12pingora_core.exit
  call fastcc void @_RNvMs2_NtNtCsiRgJJXJ4lb7_6brotli3enc11find_strideINtB5_12EntropyTallyNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocE3newCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(192) %i.f, ptr noalias nofree noundef nonnull %0, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  invoke fastcc void @_RNvMs1_NtNtCsiRgJJXJ4lb7_6brotli3enc11find_strideINtB5_14EntropyPyramidNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocE3newCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(376) %i.p, ptr noalias nofree noundef nonnull %0)
          to label %bb.aa unwind label %.thread43.thread70

_RNvMs2_NtNtCsiRgJJXJ4lb7_6brotli3enc11find_strideINtB5_12EntropyTallyNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocE20disabled_placeholderCskeugdADtBsi_12pingora_core.exit: ; preds = %_RNvMs1_NtNtCsiRgJJXJ4lb7_6brotli3enc9interfaceINtB5_24PredictionModeContextMapNtNtB7_10input_pair17InputReferenceMutE21get_mixing_values_mutCskeugdADtBsi_12pingora_core.exit
  call fastcc void @_RNvMs2_NtNtCsiRgJJXJ4lb7_6brotli3enc11find_strideINtB5_12EntropyTallyNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocE3newCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(192) %i.f, ptr noalias nofree noundef nonnull %0, i1 noundef zeroext true)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  invoke fastcc void @_RNvMs1_NtNtCsiRgJJXJ4lb7_6brotli3enc11find_strideINtB5_14EntropyPyramidNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocE20disabled_placeholderCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(376) %i.o)
          to label %bb.ac unwind label %.thread43.thread70

bb.z:                                             ; preds = %bb.aa, %bb.ab
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.aa:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %i.q, ptr noundef nonnull align 8 dereferenceable(376) %i.p, i64 376, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  invoke fastcc void @_RNvMs1_NtNtCsiRgJJXJ4lb7_6brotli3enc11find_strideINtB5_14EntropyPyramidNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocE8populateCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(376) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %5, i64 noundef %6, ptr noalias nofree noundef align 8 dereferenceable(192) %i.f)
          to label %bb.ab unwind label %bb.z

bb.ab:                                            ; preds = %bb.aa, %bb.ac
  store ptr %3, ptr %i.d, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %4, ptr %.sroa.450.0..sroa_idx, align 8
  %.sroa.551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.551.0..sroa_idx, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %5, ptr %i.gv, align 8
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 %6, ptr %.sroa.453.0..sroa_idx, align 8
  %.sroa.554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %4, ptr %.sroa.554.0..sroa_idx, align 8
  %i.gw = invoke { ptr, i64 } @_RNvXs0_NtCsc389t4z7aPt_12alloc_stdlib10heap_allocINtB5_7WrapBoxhENtNtCskKLDkoKarTP_4core7default7Default7defaultCskeugdADtBsi_12pingora_core()
          to label %bb.ad unwind label %bb.z      ; 2 uses

bb.ac:                                            ; preds = %_RNvMs2_NtNtCsiRgJJXJ4lb7_6brotli3enc11find_strideINtB5_12EntropyTallyNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocE20disabled_placeholderCskeugdADtBsi_12pingora_core.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %i.q, ptr noundef nonnull align 8 dereferenceable(376) %i.o, i64 376, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ab

bb.ad:                                            ; preds = %bb.ab
  %i.gx = extractvalue { ptr, i64 } %i.gw, 0      ; 6 uses
  %i.gy = extractvalue { ptr, i64 } %i.gw, 1      ; 6 uses
  %i.gz = icmp ugt i8 %i.gb, 2
  br i1 %i.gz, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsiRgJJXJ4lb7_6brotli3enc11stride_eval10StrideEvalNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core.exit, %bb.ad
  %.sroa.9.0 = phi i64 [ %i.hi, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsiRgJJXJ4lb7_6brotli3enc11stride_eval10StrideEvalNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core.exit ], [ %i.gy, %bb.ad ] ; 6 uses
  %.sroa.010.0 = phi ptr [ %i.hh, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsiRgJJXJ4lb7_6brotli3enc11stride_eval10StrideEvalNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core.exit ], [ %i.gx, %bb.ad ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !540
  store i64 0, ptr %i.c, align 8, !noalias !540
  %i.ha = getelementptr inbounds nuw i8, ptr %i.q, i64 367 ; 2 uses
  invoke void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %i.c, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ha, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @167)
          to label %bb.as unwind label %bb.ag

bb.af:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke void @_RNvMs1_NtNtCsiRgJJXJ4lb7_6brotli3enc11stride_evalINtB5_10StrideEvalNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocE3newCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull sret([240 x i8]) align 8 captures(none) dereferenceable(240) %i.n, ptr noalias nofree noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %10)
          to label %bb.ah unwind label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.as, %bb.af
  %.sroa.9.2 = phi i64 [ %.sroa.9.0, %bb.as ], [ %.sroa.9.0, %bb.ae ], [ %i.gy, %bb.af ]
  %.sroa.010.2 = phi ptr [ %.sroa.010.0, %bb.as ], [ %.sroa.010.0, %bb.ae ], [ %i.gx, %bb.af ]
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.ah:                                            ; preds = %bb.af
  %i.hc = load i64, ptr %8, align 8, !noundef !4
  invoke fastcc void @_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc17brotli_bit_stream21process_command_queueINtNtB4_11stride_eval10StrideEvalNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(240) %i.n, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %i.d, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %7, i64 noundef %i.hc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %9, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %10, i8 noundef %11)
          to label %bb.aj unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.am, %bb.aj
  %.sroa.9.4 = phi i64 [ %i.hi, %bb.am ], [ %i.gy, %bb.aj ], [ %i.gy, %bb.ah ]
  %.sroa.010.4 = phi ptr [ %i.hh, %bb.am ], [ %i.gx, %bb.aj ], [ %i.gx, %bb.ah ]
  %i.hd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsiRgJJXJ4lb7_6brotli3enc11stride_eval10StrideEvalNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(240) %i.n) #21
          to label %bb.bx unwind label %bb.bv

bb.aj:                                            ; preds = %bb.ah
  %i.he = getelementptr inbounds nuw i8, ptr %i.n, i64 216
  %.val133 = load i64, ptr %i.he, align 8, !noundef !4
  %i.hf = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %.val134 = load ptr, ptr %i.hf, align 8, !nonnull !4, !noundef !4
  %i.hg = invoke { ptr, i64 } @_RNvXNtCsc389t4z7aPt_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsLfzX5BYWvK_15alloc_no_stdlib15stack_allocator9AllocatorhE10alloc_cellCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %.val134, i64 noundef %.val133)
          to label %bb.ak unwind label %bb.ai     ; 2 uses

bb.ak:                                            ; preds = %bb.aj
  %i.hh = extractvalue { ptr, i64 } %i.hg, 0      ; 6 uses
  %i.hi = extractvalue { ptr, i64 } %i.hg, 1      ; 5 uses
  %i.hj = icmp eq i64 %i.gy, 0
  br i1 %i.hj, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gx) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gx, i64 noundef range(i64 1, 0) %i.gy, i64 noundef 1) #25
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hh) ]
  invoke void @_RNvMs1_NtNtCsiRgJJXJ4lb7_6brotli3enc11stride_evalINtB5_10StrideEvalNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocE13choose_strideCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.n, ptr noalias nofree noundef nonnull %i.hh, i64 noundef %i.hi)
          to label %bb.an unwind label %bb.ai

bb.an:                                            ; preds = %bb.am
  invoke void @_RNvXs2_NtNtCsiRgJJXJ4lb7_6brotli3enc11stride_evalINtB5_10StrideEvalNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(240) %i.n)
          to label %bb.ap unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueAINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxtEj8_ECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(128) %i.hl) #21
  %i.hm = getelementptr inbounds nuw i8, ptr %i.n, i64 200
  %.val4.i = load i64, ptr %i.hm, align 8, !alias.scope !541, !noundef !4 ; 2 uses
  %i.hn = icmp eq i64 %.val4.i, 0
  br i1 %i.hn, label %bb.bx, label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.ho = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueAINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxtEj8_ECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(128) %i.ho)
  %i.hp = getelementptr inbounds nuw i8, ptr %i.n, i64 200
  %.val2.i = load i64, ptr %i.hp, align 8, !alias.scope !541, !noundef !4 ; 2 uses
  %i.hq = icmp eq i64 %.val2.i, 0
  br i1 %i.hq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsiRgJJXJ4lb7_6brotli3enc11stride_eval10StrideEvalNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core.exit, label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.hr = getelementptr inbounds nuw i8, ptr %i.n, i64 192
  %.val3.i = load ptr, ptr %i.hr, align 8, !alias.scope !541, !nonnull !4, !noundef !4
  %i.hs = shl nuw nsw i64 %.val4.i, 2
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef range(i64 1, 0) %i.hs, i64 noundef 4) #25
  br label %bb.bx

bb.ar:                                            ; preds = %bb.ap
  %i.ht = getelementptr inbounds nuw i8, ptr %i.n, i64 192
  %.val.i = load ptr, ptr %i.ht, align 8, !alias.scope !541, !nonnull !4, !noundef !4
  %i.hu = shl nuw nsw i64 %.val2.i, 2
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.hu, i64 noundef 4) #25
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsiRgJJXJ4lb7_6brotli3enc11stride_eval10StrideEvalNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsiRgJJXJ4lb7_6brotli3enc11stride_eval10StrideEvalNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core.exit: ; preds = %bb.ar, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ae

bb.as:                                            ; preds = %bb.ae
  %.sroa.0.0.copyload.i = load i64, ptr %i.c, align 8, !noalias !540
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !540
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull align 8 dereferenceable(48) %i.r, i64 48, i1 false)
  %i.hv = getelementptr inbounds nuw i8, ptr %10, i64 94
  %i.hw = load i8, ptr %i.hv, align 2, !noundef !4 ; 2 uses
  invoke void @_RNvMNtNtCsiRgJJXJ4lb7_6brotli3enc19context_map_entropyINtB2_17ContextMapEntropyNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocE3newCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull sret([920 x i8]) align 8 captures(none) dereferenceable(920) %i.m, ptr noalias nofree noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.d, i64 noundef %.sroa.0.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.l, i8 noundef %i.hw)
          to label %bb.at unwind label %bb.ag

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
end_hunk_0
begin_hunk_1_@_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc17brotli_bit_stream12LogMetaBlockNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocNCNvXs4_NtB4_6writerINtB25_24CompressorWriterCustomIoNtNtNtCskKLDkoKarTP_4core2io5error5ErrorINtNtCsfQhfhXbPrjn_19brotli_decompressor11io_wrappers12IntoIoWriterINtNtCsexYYUdYSQU6_5alloc3vec3VechEEINtNtB16_10heap_alloc7WrapBoxhEB12_EINtB3v_11CustomWriteB2O_E5write0ECskeugdADtBsi_12pingora_core:bb.a
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.sroa.04.0.i.i142
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 2 ; 2 uses
  %i.cj = load i8, ptr %i.ci, align 1, !alias.scope !720, !noalias !721, !noundef !4 ; 2 uses
  %i.ck = icmp ult i8 %i.cj, %i.cg
  %..i.i.i.i144.2 = select i1 %i.ck, ptr %..i.i.i.i144.1, ptr %i.ci
  %i.cl = tail call i8 @llvm.umax.i8(i8 %i.cj, i8 %i.cg) ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.sroa.04.0.i.i142
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 3 ; 2 uses
  %i.co = load i8, ptr %i.cn, align 1, !alias.scope !722, !noalias !723, !noundef !4 ; 2 uses
  %i.cp = icmp ult i8 %i.co, %i.cl
  %..i.i.i.i144.3 = select i1 %i.cp, ptr %..i.i.i.i144.2, ptr %i.cn ; 3 uses
  %i.cq = add nuw i64 %.sroa.04.0.i.i142, 4       ; 2 uses
  %i.cr = tail call i8 @llvm.umax.i8(i8 %i.co, i8 %i.cl) ; 2 uses
  %niter140.next.3 = add i64 %niter140, 4         ; 2 uses
  %niter140.ncmp.3 = icmp eq i64 %niter140.next.3, %unroll_iter139
  br i1 %niter140.ncmp.3, label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRhNtNtBa_3cmp3Ord3maxECskeugdADtBsi_12pingora_core.exit146.loopexit.unr-lcssa, label %bb.j

_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRhNtNtBa_3cmp3Ord3maxECskeugdADtBsi_12pingora_core.exit146.loopexit.unr-lcssa: ; preds = %bb.j
  %lcmp.mod136.not = icmp eq i64 %xtraiter132, 0
  br i1 %lcmp.mod136.not, label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRhNtNtBa_3cmp3Ord3maxECskeugdADtBsi_12pingora_core.exit146, label %.epil.preheader131

.epil.preheader131:                               ; preds = %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRhNtNtBa_3cmp3Ord3maxECskeugdADtBsi_12pingora_core.exit146.loopexit.unr-lcssa, %bb.i
  %.epil.init135 = phi i8 [ %.pre.i.i141, %bb.i ], [ %i.cr, %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRhNtNtBa_3cmp3Ord3maxECskeugdADtBsi_12pingora_core.exit146.loopexit.unr-lcssa ]
  %.sroa.04.0.i.i142.epil.init = phi i64 [ 0, %bb.i ], [ %i.cq, %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRhNtNtBa_3cmp3Ord3maxECskeugdADtBsi_12pingora_core.exit146.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i143.epil.init = phi ptr [ %i.bo, %bb.i ], [ %..i.i.i.i144.3, %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRhNtNtBa_3cmp3Ord3maxECskeugdADtBsi_12pingora_core.exit146.loopexit.unr-lcssa ]
  %lcmp.mod138 = icmp ne i64 %xtraiter132, 0
  tail call void @llvm.assume(i1 %lcmp.mod138)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader131
  %i.cs = phi i8 [ %.epil.init135, %.epil.preheader131 ], [ %i.cx, %bb.k ] ; 2 uses
  %.sroa.04.0.i.i142.epil = phi i64 [ %.sroa.04.0.i.i142.epil.init, %.epil.preheader131 ], [ %i.cw, %bb.k ] ; 2 uses
  %.sroa.02.0.i.i143.epil = phi ptr [ %.sroa.02.0.i.i143.epil.init, %.epil.preheader131 ], [ %..i.i.i.i144.epil, %bb.k ]
  %epil.iter133 = phi i64 [ 0, %.epil.preheader131 ], [ %epil.iter133.next, %bb.k ]
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.sroa.04.0.i.i142.epil ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !712)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !713)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !714)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !715)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !716)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !717)
  %i.cu = load i8, ptr %i.ct, align 1, !alias.scope !711, !noalias !710, !noundef !4 ; 2 uses
  %i.cv = icmp ult i8 %i.cu, %i.cs
  %..i.i.i.i144.epil = select i1 %i.cv, ptr %.sroa.02.0.i.i143.epil, ptr %i.ct ; 2 uses
  %i.cw = add nuw i64 %.sroa.04.0.i.i142.epil, 1
  %i.cx = tail call i8 @llvm.umax.i8(i8 %i.cu, i8 %i.cs)
  %epil.iter133.next = add i64 %epil.iter133, 1   ; 2 uses
  %epil.iter133.cmp.not = icmp eq i64 %epil.iter133.next, %xtraiter132
  br i1 %epil.iter133.cmp.not, label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRhNtNtBa_3cmp3Ord3maxECskeugdADtBsi_12pingora_core.exit146, label %bb.k, !llvm.loop !624

_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRhNtNtBa_3cmp3Ord3maxECskeugdADtBsi_12pingora_core.exit146: ; preds = %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRhNtNtBa_3cmp3Ord3maxECskeugdADtBsi_12pingora_core.exit146.loopexit.unr-lcssa, %bb.k, %bb.g, %bb.h
  %.sroa.0.0.i145 = phi ptr [ null, %bb.g ], [ %i.bo, %bb.h ], [ %..i.i.i.i144.3, %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRhNtNtBa_3cmp3Ord3maxECskeugdADtBsi_12pingora_core.exit146.loopexit.unr-lcssa ], [ %..i.i.i.i144.epil, %bb.k ] ; 2 uses
  %.not105 = icmp eq ptr %.sroa.0.0.i145, null
  %.117 = select i1 %.not105, ptr @25, ptr %.sroa.0.0.i145
  %i.cy = load i8, ptr %.117, align 1, !noundef !4
  %i.cz = zext i8 %i.cy to i32
  %i.da = add nuw nsw i32 %i.cz, 1                ; 2 uses
  store i32 %i.da, ptr %i.t, align 4
  %i.db = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 8, !noundef !4
  %i.dd = icmp eq i32 %i.da, %i.dc
  br i1 %i.dd, label %bb.m, label %bb.l, !prof !9

bb.l:                                             ; preds = %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRhNtNtBa_3cmp3Ord3maxECskeugdADtBsi_12pingora_core.exit146
  call void @_RINvNtCskKLDkoKarTP_4core9panicking13assert_failedmmECsG258MDvU3F_3std(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.t, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.db, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #22
  unreachable

bb.m:                                             ; preds = %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRhNtNtBa_3cmp3Ord3maxECskeugdADtBsi_12pingora_core.exit146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.de = getelementptr inbounds nuw i8, ptr %9, i64 96
  %i.df = load ptr, ptr %i.de, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %9, i64 104
  %i.dh = load i64, ptr %i.dg, align 8, !noundef !4 ; 4 uses
  %i.di = icmp samesign eq i64 %i.dh, 0
  br i1 %i.di, label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRhNtNtBa_3cmp3Ord3maxECskeugdADtBsi_12pingora_core.exit152, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 1 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !724)
  %i.dk = icmp samesign eq i64 %i.dh, 1
  br i1 %i.dk, label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRhNtNtBa_3cmp3Ord3maxECskeugdADtBsi_12pingora_core.exit152, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.pre.i.i147 = load i8, ptr %i.df, align 1, !alias.scope !725, !noalias !726 ; 2 uses
  %i.dl = add i64 %i.dh, -2
  %i.dm = add i64 %i.dh, -1                       ; 2 uses
  %xtraiter143 = and i64 %i.dm, 3                 ; 3 uses
  %i.dn = icmp ult i64 %i.dl, 3
  br i1 %i.dn, label %.epil.preheader142, label %.new141

.new141:                                          ; preds = %bb.o
  %unroll_iter150 = and i64 %i.dm, -4
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.new141
  %i.do = phi i8 [ %.pre.i.i147, %.new141 ], [ %i.ei, %bb.p ] ; 2 uses
  %.sroa.04.0.i.i148 = phi i64 [ 0, %.new141 ], [ %i.eh, %bb.p ] ; 5 uses
  %.sroa.02.0.i.i149 = phi ptr [ %i.df, %.new141 ], [ %..i.i.i.i150.3, %bb.p ]
  %niter151 = phi i64 [ 0, %.new141 ], [ %niter151.next.3, %bb.p ]
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dj, i64 %.sroa.04.0.i.i148 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !727)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !728)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !729)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !730)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !731)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !732)
  %i.dq = load i8, ptr %i.dp, align 1, !alias.scope !726, !noalias !725, !noundef !4 ; 2 uses
  %i.dr = icmp ult i8 %i.dq, %i.do
  %..i.i.i.i150 = select i1 %i.dr, ptr %.sroa.02.0.i.i149, ptr %i.dp
  %i.ds = tail call i8 @llvm.umax.i8(i8 %i.dq, i8 %i.do) ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dj, i64 %.sroa.04.0.i.i148
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 1 ; 2 uses
  %i.dv = load i8, ptr %i.du, align 1, !alias.scope !733, !noalias !734, !noundef !4 ; 2 uses
  %i.dw = icmp ult i8 %i.dv, %i.ds
  %..i.i.i.i150.1 = select i1 %i.dw, ptr %..i.i.i.i150, ptr %i.du
  %i.dx = tail call i8 @llvm.umax.i8(i8 %i.dv, i8 %i.ds) ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dj, i64 %.sroa.04.0.i.i148
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 2 ; 2 uses
  %i.ea = load i8, ptr %i.dz, align 1, !alias.scope !735, !noalias !736, !noundef !4 ; 2 uses
  %i.eb = icmp ult i8 %i.ea, %i.dx
  %..i.i.i.i150.2 = select i1 %i.eb, ptr %..i.i.i.i150.1, ptr %i.dz
  %i.ec = tail call i8 @llvm.umax.i8(i8 %i.ea, i8 %i.dx) ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dj, i64 %.sroa.04.0.i.i148
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 3 ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 1, !alias.scope !737, !noalias !738, !noundef !4 ; 2 uses
  %i.eg = icmp ult i8 %i.ef, %i.ec
  %..i.i.i.i150.3 = select i1 %i.eg, ptr %..i.i.i.i150.2, ptr %i.ee ; 3 uses
  %i.eh = add nuw i64 %.sroa.04.0.i.i148, 4       ; 2 uses
  %i.ei = tail call i8 @llvm.umax.i8(i8 %i.ef, i8 %i.ec) ; 2 uses
  %niter151.next.3 = add i64 %niter151, 4         ; 2 uses
  %niter151.ncmp.3 = icmp eq i64 %niter151.next.3, %unroll_iter150
  br i1 %niter151.ncmp.3, label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRhNtNtBa_3cmp3Ord3maxECskeugdADtBsi_12pingora_core.exit152.loopexit.unr-lcssa, label %bb.p

_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRhNtNtBa_3cmp3Ord3maxECskeugdADtBsi_12pingora_core.exit152.loopexit.unr-lcssa: ; preds = %bb.p
  %lcmp.mod147.not = icmp eq i64 %xtraiter143, 0
  br i1 %lcmp.mod147.not, label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRhNtNtBa_3cmp3Ord3maxECskeugdADtBsi_12pingora_core.exit152, label %.epil.preheader142

.epil.preheader142:                               ; preds = %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRhNtNtBa_3cmp3Ord3maxECskeugdADtBsi_12pingora_core.exit152.loopexit.unr-lcssa, %bb.o
  %.epil.init146 = phi i8 [ %.pre.i.i147, %bb.o ], [ %i.ei, %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRhNtNtBa_3cmp3Ord3maxECskeugdADtBsi_12pingora_core.exit152.loopexit.unr-lcssa ]
  %.sroa.04.0.i.i148.epil.init = phi i64 [ 0, %bb.o ], [ %i.eh, %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRhNtNtBa_3cmp3Ord3maxECskeugdADtBsi_12pingora_core.exit152.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i149.epil.init = phi ptr [ %i.df, %bb.o ], [ %..i.i.i.i150.3, %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRhNtNtBa_3cmp3Ord3maxECskeugdADtBsi_12pingora_core.exit152.loopexit.unr-lcssa ]
  %lcmp.mod149 = icmp ne i64 %xtraiter143, 0
  tail call void @llvm.assume(i1 %lcmp.mod149)
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.epil.preheader142
  %i.ej = phi i8 [ %.epil.init146, %.epil.preheader142 ], [ %i.eo, %bb.q ] ; 2 uses
  %.sroa.04.0.i.i148.epil = phi i64 [ %.sroa.04.0.i.i148.epil.init, %.epil.preheader142 ], [ %i.en, %bb.q ] ; 2 uses
  %.sroa.02.0.i.i149.epil = phi ptr [ %.sroa.02.0.i.i149.epil.init, %.epil.preheader142 ], [ %..i.i.i.i150.epil, %bb.q ]
  %epil.iter144 = phi i64 [ 0, %.epil.preheader142 ], [ %epil.iter144.next, %bb.q ]
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dj, i64 %.sroa.04.0.i.i148.epil ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !727)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !728)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !729)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !730)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !731)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !732)
  %i.el = load i8, ptr %i.ek, align 1, !alias.scope !726, !noalias !725, !noundef !4 ; 2 uses
  %i.em = icmp ult i8 %i.el, %i.ej
  %..i.i.i.i150.epil = select i1 %i.em, ptr %.sroa.02.0.i.i149.epil, ptr %i.ek ; 2 uses
  %i.en = add nuw i64 %.sroa.04.0.i.i148.epil, 1
  %i.eo = tail call i8 @llvm.umax.i8(i8 %i.el, i8 %i.ej)
  %epil.iter144.next = add i64 %epil.iter144, 1   ; 2 uses
  %epil.iter144.cmp.not = icmp eq i64 %epil.iter144.next, %xtraiter143
  br i1 %epil.iter144.cmp.not, label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRhNtNtBa_3cmp3Ord3maxECskeugdADtBsi_12pingora_core.exit152, label %bb.q, !llvm.loop !654

_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRhNtNtBa_3cmp3Ord3maxECskeugdADtBsi_12pingora_core.exit152: ; preds = %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRhNtNtBa_3cmp3Ord3maxECskeugdADtBsi_12pingora_core.exit152.loopexit.unr-lcssa, %bb.q, %bb.m, %bb.n
  %.sroa.0.0.i151 = phi ptr [ null, %bb.m ], [ %i.df, %bb.n ], [ %..i.i.i.i150.3, %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRhNtNtBa_3cmp3Ord3maxECskeugdADtBsi_12pingora_core.exit152.loopexit.unr-lcssa ], [ %..i.i.i.i150.epil, %bb.q ] ; 2 uses
  %.not106 = icmp eq ptr %.sroa.0.0.i151, null
  %.118 = select i1 %.not106, ptr @25, ptr %.sroa.0.0.i151
  %i.ep = load i8, ptr %.118, align 1, !noundef !4
  %i.eq = zext i8 %i.ep to i32
  %i.er = add nuw nsw i32 %i.eq, 1                ; 2 uses
  store i32 %i.er, ptr %i.s, align 4
  %i.es = getelementptr inbounds nuw i8, ptr %9, i64 128 ; 2 uses
  %i.et = load i32, ptr %i.es, align 8, !noundef !4
  %i.eu = icmp eq i32 %i.er, %i.et
  br i1 %i.eu, label %bb.s, label %bb.r, !prof !9

bb.r:                                             ; preds = %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRhNtNtBa_3cmp3Ord3maxECskeugdADtBsi_12pingora_core.exit152
  call void @_RINvNtCskKLDkoKarTP_4core9panicking13assert_failedmmECsG258MDvU3F_3std(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.s, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.es, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #22
  unreachable

bb.s:                                             ; preds = %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRhNtNtBa_3cmp3Ord3maxECskeugdADtBsi_12pingora_core.exit152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.ev = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.ew = load i64, ptr %i.ev, align 8, !noundef !4 ; 5 uses
  %i.ex = icmp ult i64 %i.ew, 16385
  br i1 %i.ex, label %bb.t, label %.loopexit73

.loopexit73:                                      ; preds = %.lr.ph.preheader, %middle.block, %bb.t, %bb.s
  %i.ey = getelementptr inbounds nuw i8, ptr %9, i64 144
  %i.ez = load i64, ptr %i.ey, align 8, !noundef !4 ; 4 uses
  %i.fa = icmp ult i64 %i.ez, 16385
  br i1 %i.fa, label %bb.x, label %.loopexit

bb.t:                                             ; preds = %bb.s
  %i.fb = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.fc = load ptr, ptr %i.fb, align 8, !nonnull !4, !align !19, !noundef !4 ; 6 uses
  %.idx = shl nuw nsw i64 %i.ew, 2                ; 3 uses
  %i.fd = getelementptr i8, ptr %i.fc, i64 %.idx  ; 2 uses
  %i.fe = icmp eq i64 %i.ew, 0
  br i1 %i.fe, label %.loopexit73, label %.lr.ph.preheader.preheader

.lr.ph.preheader.preheader:                       ; preds = %bb.t
  %i.ff = add nsw i64 %.idx, -4                   ; 2 uses
  %i.fg = lshr exact i64 %i.ff, 2
  %i.fh = add nuw nsw i64 %i.fg, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ff, 60
  br i1 %min.iters.check, label %.lr.ph.preheader.preheader127, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.preheader
  %12 = add nsw i64 %.idx, -4
  %i.fi = lshr exact i64 %12, 2
  %i.fj = getelementptr i8, ptr %i.w, i64 %i.fi
  %scevgep = getelementptr i8, ptr %i.fj, i64 1
  %bound0 = icmp ult ptr %i.w, %i.fd
  %bound1 = icmp ult ptr %i.fc, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader.preheader127, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fh, 9223372036854775800     ; 4 uses
  %i.fk = shl i64 %n.vec, 2
  %i.fl = getelementptr i8, ptr %i.fc, i64 %i.fk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fm = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.fc, i64 %i.fm ; 2 uses
  %i.fn = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !alias.scope !739
  %wide.load104 = load <4 x i32>, ptr %i.fn, align 4, !alias.scope !739
  %i.fo = getelementptr inbounds nuw i8, ptr %i.w, i64 %index ; 2 uses
  %i.fp = trunc <4 x i32> %wide.load to <4 x i8>
  %i.fq = trunc <4 x i32> %wide.load104 to <4 x i8>
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 4
  store <4 x i8> %i.fp, ptr %i.fo, align 1, !alias.scope !740, !noalias !739
  store <4 x i8> %i.fq, ptr %i.fr, align 1, !alias.scope !740, !noalias !739
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fs = icmp eq i64 %index.next, %n.vec
  br i1 %i.fs, label %middle.block, label %vector.body, !llvm.loop !658

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fh, %n.vec
  br i1 %cmp.n, label %.loopexit73, label %.lr.ph.preheader.preheader127

.lr.ph.preheader.preheader127:                    ; preds = %vector.memcheck, %.lr.ph.preheader.preheader, %middle.block
  %.sroa.0.076.ph = phi ptr [ %i.fc, %vector.memcheck ], [ %i.fc, %.lr.ph.preheader.preheader ], [ %i.fl, %middle.block ]
  %.sroa.7.075.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.preheader

.loopexit:                                        ; preds = %.lr.ph79.preheader, %middle.block122, %bb.x, %.loopexit73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %.not.i = icmp ugt i64 %i.ew, 16384
  br i1 %.not.i, label %bb.u, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh12split_at_mutCskeugdADtBsi_12pingora_core.exit, !prof !10

bb.u:                                             ; preds = %.loopexit
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @151, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #22, !noalias !741
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSh12split_at_mutCskeugdADtBsi_12pingora_core.exit: ; preds = %.loopexit
  %i.ft = add i64 %i.ez, 8208                     ; 5 uses
  %.not.i154 = icmp ugt i64 %i.ft, 24592
  br i1 %.not.i154, label %bb.v, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh12split_at_mutCskeugdADtBsi_12pingora_core.exit158, !prof !10

bb.v:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh12split_at_mutCskeugdADtBsi_12pingora_core.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @151, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #22, !noalias !742
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSh12split_at_mutCskeugdADtBsi_12pingora_core.exit158: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh12split_at_mutCskeugdADtBsi_12pingora_core.exit
  store ptr %i.w, ptr %i.r, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.ew, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 3 uses
  store ptr %i.v, ptr %i.fu, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 3 uses
  store i64 %i.ft, ptr %.sroa.428.0..sroa_idx, align 8
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store i64 0, ptr %.sroa.529.0..sroa_idx, align 8
  %i.fv = icmp samesign ugt i64 %i.ft, 8195
  br i1 %i.fv, label %_RNvMs1_NtNtCsiRgJJXJ4lb7_6brotli3enc9interfaceINtB5_24PredictionModeContextMapNtNtB7_10input_pair17InputReferenceMutE21get_mixing_values_mutCskeugdADtBsi_12pingora_core.exit, label %bb.w, !prof !9

bb.w:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh12split_at_mutCskeugdADtBsi_12pingora_core.exit158
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 4, i64 noundef 8196, i64 noundef %i.ft, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #22
  unreachable

_RNvMs1_NtNtCsiRgJJXJ4lb7_6brotli3enc9interfaceINtB5_24PredictionModeContextMapNtNtB7_10input_pair17InputReferenceMutE21get_mixing_values_mutCskeugdADtBsi_12pingora_core.exit: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh12split_at_mutCskeugdADtBsi_12pingora_core.exit158
  %i.fw = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8192) %i.fw, i8 4, i64 8192, i1 false)
  %i.fx = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.fy = load i64, ptr %i.fx, align 8
  call fastcc void @_RNvMs1_NtNtCsiRgJJXJ4lb7_6brotli3enc9interfaceINtB5_24PredictionModeContextMapNtNtB7_10input_pair17InputReferenceMutE24set_stride_context_speedCskeugdADtBsi_12pingora_core(ptr nonnull %i.v, i64 %i.ft, i64 noundef %i.fy) #26
  %i.fz = load i64, ptr %10, align 8              ; 2 uses
  %.val127 = load ptr, ptr %i.fu, align 8, !nonnull !4, !noundef !4
  %.val128 = load i64, ptr %.sroa.428.0..sroa_idx, align 8, !noundef !4
  call fastcc void @_RNvMs1_NtNtCsiRgJJXJ4lb7_6brotli3enc9interfaceINtB5_24PredictionModeContextMapNtNtB7_10input_pair17InputReferenceMutE21set_context_map_speedCskeugdADtBsi_12pingora_core(ptr nonnull %.val127, i64 %.val128, i64 noundef %i.fz) #26
  %.val131 = load ptr, ptr %i.fu, align 8, !nonnull !4, !noundef !4
  %.val132 = load i64, ptr %.sroa.428.0..sroa_idx, align 8, !noundef !4
  call fastcc void @_RNvMs1_NtNtCsiRgJJXJ4lb7_6brotli3enc9interfaceINtB5_24PredictionModeContextMapNtNtB7_10input_pair17InputReferenceMutE33set_combined_stride_context_speedCskeugdADtBsi_12pingora_core(ptr nonnull %.val131, i64 %.val132, i64 noundef %i.fz) #26
  %.not109 = icmp eq i8 %11, -1
  %.119 = select i1 %.not109, i8 0, i8 %11
  call void @_RNvMs1_NtNtCsiRgJJXJ4lb7_6brotli3enc9interfaceINtB5_24PredictionModeContextMapNtNtB7_10input_pair17InputReferenceMutE27set_literal_prediction_modeCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.r, i8 noundef %.119)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.ga = getelementptr inbounds nuw i8, ptr %10, i64 92
  %i.gb = load i8, ptr %i.ga, align 4, !noundef !4 ; 3 uses
  %.off = add i8 %i.gb, -1
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %bb.y, label %_RNvMs2_NtNtCsiRgJJXJ4lb7_6brotli3enc11find_strideINtB5_12EntropyTallyNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocE20disabled_placeholderCskeugdADtBsi_12pingora_core.exit

bb.x:                                             ; preds = %.loopexit73
  %i.gc = getelementptr inbounds nuw i8, ptr %9, i64 136
  %i.gd = load ptr, ptr %i.gc, align 8, !nonnull !4, !align !19, !noundef !4 ; 6 uses
  %.idx81 = shl nuw nsw i64 %i.ez, 2              ; 3 uses
  %i.ge = getelementptr i8, ptr %i.gd, i64 %.idx81 ; 2 uses
  %i.gf = icmp eq i64 %i.ez, 0
  br i1 %i.gf, label %.loopexit, label %.lr.ph79.preheader.preheader

.lr.ph79.preheader.preheader:                     ; preds = %bb.x
  %i.gg = add nsw i64 %.idx81, -4                 ; 2 uses
  %i.gh = lshr exact i64 %i.gg, 2
  %i.gi = add nuw nsw i64 %i.gh, 1                ; 2 uses
  %min.iters.check113 = icmp ult i64 %i.gg, 60
  br i1 %min.iters.check113, label %.lr.ph79.preheader.preheader126, label %vector.memcheck106

vector.memcheck106:                               ; preds = %.lr.ph79.preheader.preheader
  %scevgep107 = getelementptr inbounds nuw i8, ptr %i.v, i64 8208
  %13 = add nsw i64 %.idx81, -4
  %i.gj = lshr exact i64 %13, 2
  %i.gk = getelementptr i8, ptr %i.v, i64 %i.gj
  %scevgep108 = getelementptr i8, ptr %i.gk, i64 8209
  %bound0109 = icmp ult ptr %scevgep107, %i.ge
  %bound1110 = icmp ult ptr %i.gd, %scevgep108
  %found.conflict111 = and i1 %bound0109, %bound1110
  br i1 %found.conflict111, label %.lr.ph79.preheader.preheader126, label %vector.ph114

vector.ph114:                                     ; preds = %vector.memcheck106
  %n.vec115 = and i64 %i.gi, 9223372036854775800  ; 4 uses
  %i.gl = shl i64 %n.vec115, 2
  %i.gm = getelementptr i8, ptr %i.gd, i64 %i.gl
  br label %vector.body116

vector.body116:                                   ; preds = %vector.body116, %vector.ph114
  %index117 = phi i64 [ 0, %vector.ph114 ], [ %index.next121, %vector.body116 ] ; 3 uses
  %i.gn = shl i64 %index117, 2
  %next.gep118 = getelementptr i8, ptr %i.gd, i64 %i.gn ; 2 uses
  %i.go = getelementptr i8, ptr %next.gep118, i64 16
  %wide.load119 = load <4 x i32>, ptr %next.gep118, align 4, !alias.scope !743
  %wide.load120 = load <4 x i32>, ptr %i.go, align 4, !alias.scope !743
  %i.gp = getelementptr inbounds nuw i8, ptr %i.v, i64 %index117 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8208
  %i.gr = trunc <4 x i32> %wide.load119 to <4 x i8>
  %i.gs = trunc <4 x i32> %wide.load120 to <4 x i8>
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gp, i64 8212
  store <4 x i8> %i.gr, ptr %i.gq, align 1, !alias.scope !744, !noalias !743
  store <4 x i8> %i.gs, ptr %i.gt, align 1, !alias.scope !744, !noalias !743
  %index.next121 = add nuw i64 %index117, 8       ; 2 uses
  %i.gu = icmp eq i64 %index.next121, %n.vec115
  br i1 %i.gu, label %middle.block122, label %vector.body116, !llvm.loop !668

middle.block122:                                  ; preds = %vector.body116
  %cmp.n123 = icmp eq i64 %i.gi, %n.vec115
  br i1 %cmp.n123, label %.loopexit, label %.lr.ph79.preheader.preheader126

.lr.ph79.preheader.preheader126:                  ; preds = %vector.memcheck106, %.lr.ph79.preheader.preheader, %middle.block122
  %.sroa.01.078.ph = phi ptr [ %i.gd, %vector.memcheck106 ], [ %i.gd, %.lr.ph79.preheader.preheader ], [ %i.gm, %middle.block122 ]
  %.sroa.73.077.ph = phi i64 [ 0, %vector.memcheck106 ], [ 0, %.lr.ph79.preheader.preheader ], [ %n.vec115, %middle.block122 ]
  br label %.lr.ph79.preheader

bb.y:                                             ; preds = %_RNvMs1_NtNtCsiRgJJXJ4lb7_6brotli3enc9interfaceINtB5_24PredictionModeContextMapNtNtB7_10input_pair17InputReferenceMutE21get_mixing_values_mutCskeugdADtBsi_12pingora_core.exit
  call fastcc void @_RNvMs2_NtNtCsiRgJJXJ4lb7_6brotli3enc11find_strideINtB5_12EntropyTallyNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocE3newCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(192) %i.f, ptr noalias nofree noundef nonnull %0, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  invoke fastcc void @_RNvMs1_NtNtCsiRgJJXJ4lb7_6brotli3enc11find_strideINtB5_14EntropyPyramidNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocE3newCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(376) %i.p, ptr noalias nofree noundef nonnull %0)
          to label %bb.aa unwind label %.thread43.thread70

_RNvMs2_NtNtCsiRgJJXJ4lb7_6brotli3enc11find_strideINtB5_12EntropyTallyNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocE20disabled_placeholderCskeugdADtBsi_12pingora_core.exit: ; preds = %_RNvMs1_NtNtCsiRgJJXJ4lb7_6brotli3enc9interfaceINtB5_24PredictionModeContextMapNtNtB7_10input_pair17InputReferenceMutE21get_mixing_values_mutCskeugdADtBsi_12pingora_core.exit
  call fastcc void @_RNvMs2_NtNtCsiRgJJXJ4lb7_6brotli3enc11find_strideINtB5_12EntropyTallyNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocE3newCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(192) %i.f, ptr noalias nofree noundef nonnull %0, i1 noundef zeroext true)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  invoke fastcc void @_RNvMs1_NtNtCsiRgJJXJ4lb7_6brotli3enc11find_strideINtB5_14EntropyPyramidNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocE20disabled_placeholderCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(376) %i.o)
          to label %bb.ac unwind label %.thread43.thread70

bb.z:                                             ; preds = %bb.aa, %bb.ab
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.aa:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %i.q, ptr noundef nonnull align 8 dereferenceable(376) %i.p, i64 376, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  invoke fastcc void @_RNvMs1_NtNtCsiRgJJXJ4lb7_6brotli3enc11find_strideINtB5_14EntropyPyramidNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocE8populateCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(376) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %5, i64 noundef %6, ptr noalias nofree noundef align 8 dereferenceable(192) %i.f)
          to label %bb.ab unwind label %bb.z

bb.ab:                                            ; preds = %bb.aa, %bb.ac
  store ptr %3, ptr %i.d, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %4, ptr %.sroa.450.0..sroa_idx, align 8
  %.sroa.551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.551.0..sroa_idx, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %5, ptr %i.gv, align 8
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 %6, ptr %.sroa.453.0..sroa_idx, align 8
  %.sroa.554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %4, ptr %.sroa.554.0..sroa_idx, align 8
  %i.gw = invoke { ptr, i64 } @_RNvXs0_NtCsc389t4z7aPt_12alloc_stdlib10heap_allocINtB5_7WrapBoxhENtNtCskKLDkoKarTP_4core7default7Default7defaultCskeugdADtBsi_12pingora_core()
          to label %bb.ad unwind label %bb.z      ; 2 uses

bb.ac:                                            ; preds = %_RNvMs2_NtNtCsiRgJJXJ4lb7_6brotli3enc11find_strideINtB5_12EntropyTallyNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocE20disabled_placeholderCskeugdADtBsi_12pingora_core.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %i.q, ptr noundef nonnull align 8 dereferenceable(376) %i.o, i64 376, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ab

bb.ad:                                            ; preds = %bb.ab
  %i.gx = extractvalue { ptr, i64 } %i.gw, 0      ; 6 uses
  %i.gy = extractvalue { ptr, i64 } %i.gw, 1      ; 6 uses
  %i.gz = icmp ugt i8 %i.gb, 2
  br i1 %i.gz, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsiRgJJXJ4lb7_6brotli3enc11stride_eval10StrideEvalNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core.exit, %bb.ad
  %.sroa.9.0 = phi i64 [ %i.hi, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsiRgJJXJ4lb7_6brotli3enc11stride_eval10StrideEvalNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core.exit ], [ %i.gy, %bb.ad ] ; 6 uses
  %.sroa.010.0 = phi ptr [ %i.hh, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsiRgJJXJ4lb7_6brotli3enc11stride_eval10StrideEvalNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core.exit ], [ %i.gx, %bb.ad ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !745
  store i64 0, ptr %i.c, align 8, !noalias !745
  %i.ha = getelementptr inbounds nuw i8, ptr %i.q, i64 367 ; 2 uses
  invoke void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %i.c, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ha, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @167)
          to label %bb.as unwind label %bb.ag

bb.af:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke void @_RNvMs1_NtNtCsiRgJJXJ4lb7_6brotli3enc11stride_evalINtB5_10StrideEvalNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocE3newCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull sret([240 x i8]) align 8 captures(none) dereferenceable(240) %i.n, ptr noalias nofree noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %10)
          to label %bb.ah unwind label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.as, %bb.af
  %.sroa.9.2 = phi i64 [ %.sroa.9.0, %bb.as ], [ %.sroa.9.0, %bb.ae ], [ %i.gy, %bb.af ]
  %.sroa.010.2 = phi ptr [ %.sroa.010.0, %bb.as ], [ %.sroa.010.0, %bb.ae ], [ %i.gx, %bb.af ]
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.ah:                                            ; preds = %bb.af
  %i.hc = load i64, ptr %8, align 8, !noundef !4
  invoke fastcc void @_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc17brotli_bit_stream21process_command_queueINtNtB4_11stride_eval10StrideEvalNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(240) %i.n, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %i.d, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %7, i64 noundef %i.hc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %9, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %10, i8 noundef %11)
          to label %bb.aj unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.am, %bb.aj
  %.sroa.9.4 = phi i64 [ %i.hi, %bb.am ], [ %i.gy, %bb.aj ], [ %i.gy, %bb.ah ]
  %.sroa.010.4 = phi ptr [ %i.hh, %bb.am ], [ %i.gx, %bb.aj ], [ %i.gx, %bb.ah ]
  %i.hd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsiRgJJXJ4lb7_6brotli3enc11stride_eval10StrideEvalNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(240) %i.n) #21
          to label %bb.bx unwind label %bb.bv

bb.aj:                                            ; preds = %bb.ah
  %i.he = getelementptr inbounds nuw i8, ptr %i.n, i64 216
  %.val133 = load i64, ptr %i.he, align 8, !noundef !4
  %i.hf = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %.val134 = load ptr, ptr %i.hf, align 8, !nonnull !4, !noundef !4
  %i.hg = invoke { ptr, i64 } @_RNvXNtCsc389t4z7aPt_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsLfzX5BYWvK_15alloc_no_stdlib15stack_allocator9AllocatorhE10alloc_cellCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %.val134, i64 noundef %.val133)
          to label %bb.ak unwind label %bb.ai     ; 2 uses

bb.ak:                                            ; preds = %bb.aj
  %i.hh = extractvalue { ptr, i64 } %i.hg, 0      ; 6 uses
  %i.hi = extractvalue { ptr, i64 } %i.hg, 1      ; 5 uses
  %i.hj = icmp eq i64 %i.gy, 0
  br i1 %i.hj, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gx) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gx, i64 noundef range(i64 1, 0) %i.gy, i64 noundef 1) #25
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hh) ]
  invoke void @_RNvMs1_NtNtCsiRgJJXJ4lb7_6brotli3enc11stride_evalINtB5_10StrideEvalNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocE13choose_strideCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.n, ptr noalias nofree noundef nonnull %i.hh, i64 noundef %i.hi)
          to label %bb.an unwind label %bb.ai

bb.an:                                            ; preds = %bb.am
  invoke void @_RNvXs2_NtNtCsiRgJJXJ4lb7_6brotli3enc11stride_evalINtB5_10StrideEvalNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(240) %i.n)
          to label %bb.ap unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueAINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxtEj8_ECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(128) %i.hl) #21
  %i.hm = getelementptr inbounds nuw i8, ptr %i.n, i64 200
  %.val4.i = load i64, ptr %i.hm, align 8, !alias.scope !746, !noundef !4 ; 2 uses
  %i.hn = icmp eq i64 %.val4.i, 0
  br i1 %i.hn, label %bb.bx, label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.ho = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueAINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxtEj8_ECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(128) %i.ho)
  %i.hp = getelementptr inbounds nuw i8, ptr %i.n, i64 200
  %.val2.i = load i64, ptr %i.hp, align 8, !alias.scope !746, !noundef !4 ; 2 uses
  %i.hq = icmp eq i64 %.val2.i, 0
  br i1 %i.hq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsiRgJJXJ4lb7_6brotli3enc11stride_eval10StrideEvalNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core.exit, label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.hr = getelementptr inbounds nuw i8, ptr %i.n, i64 192
  %.val3.i = load ptr, ptr %i.hr, align 8, !alias.scope !746, !nonnull !4, !noundef !4
  %i.hs = shl nuw nsw i64 %.val4.i, 2
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef range(i64 1, 0) %i.hs, i64 noundef 4) #25
  br label %bb.bx

bb.ar:                                            ; preds = %bb.ap
  %i.ht = getelementptr inbounds nuw i8, ptr %i.n, i64 192
  %.val.i = load ptr, ptr %i.ht, align 8, !alias.scope !746, !nonnull !4, !noundef !4
  %i.hu = shl nuw nsw i64 %.val2.i, 2
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.hu, i64 noundef 4) #25
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsiRgJJXJ4lb7_6brotli3enc11stride_eval10StrideEvalNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsiRgJJXJ4lb7_6brotli3enc11stride_eval10StrideEvalNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocEECskeugdADtBsi_12pingora_core.exit: ; preds = %bb.ar, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ae

bb.as:                                            ; preds = %bb.ae
  %.sroa.0.0.copyload.i = load i64, ptr %i.c, align 8, !noalias !745
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !745
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull align 8 dereferenceable(48) %i.r, i64 48, i1 false)
  %i.hv = getelementptr inbounds nuw i8, ptr %10, i64 94
  %i.hw = load i8, ptr %i.hv, align 2, !noundef !4 ; 2 uses
  invoke void @_RNvMNtNtCsiRgJJXJ4lb7_6brotli3enc19context_map_entropyINtB2_17ContextMapEntropyNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocE3newCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull sret([920 x i8]) align 8 captures(none) dereferenceable(920) %i.m, ptr noalias nofree noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.d, i64 noundef %.sroa.0.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.l, i8 noundef %i.hw)
          to label %bb.at unwind label %bb.ag

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
end_hunk_1
