Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/codspeed_divan_compat_walltime-c1ac0e5cf225c93a.codspeed_divan_compat_walltime.34af78f07f3e25cc-cgu.09?download=true
inline.NumInlined: 224
inline.NumDeleted: 135
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvNtNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time9timestamp3tsc4arch9frequency:bb.a
  %i.cf = icmp ult i32 %i.ac, 16777216
  br i1 %i.cf, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvNtNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time9timestamp3tsc4arch17nominal_frequency0EB1S_.exit.thread.i, label %.lr.ph.i.28.i

.lr.ph.i.28.i:                                    ; preds = %.lr.ph.i.27.i
  %i.cg = and i32 %i.ad, 255
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvNtNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time9timestamp3tsc4arch17nominal_frequency0EB1S_.exit.thread.i, label %.lr.ph.i.29.i

.lr.ph.i.29.i:                                    ; preds = %.lr.ph.i.28.i
  %i.ci = and i32 %i.ad, 65280
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvNtNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time9timestamp3tsc4arch17nominal_frequency0EB1S_.exit.thread.i, label %.lr.ph.i.30.i

.lr.ph.i.30.i:                                    ; preds = %.lr.ph.i.29.i
  %i.ck = and i32 %i.ad, 16711680
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvNtNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time9timestamp3tsc4arch17nominal_frequency0EB1S_.exit.thread.i, label %.lr.ph.i.31.i

.lr.ph.i.31.i:                                    ; preds = %.lr.ph.i.30.i
  %i.cm = icmp ult i32 %i.ad, 16777216
  br i1 %i.cm, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvNtNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time9timestamp3tsc4arch17nominal_frequency0EB1S_.exit.thread.i, label %.lr.ph.i.32.i

.lr.ph.i.32.i:                                    ; preds = %.lr.ph.i.31.i
  %i.cn = and i32 %i.ag, 255
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvNtNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time9timestamp3tsc4arch17nominal_frequency0EB1S_.exit.thread.i, label %.lr.ph.i.33.i

.lr.ph.i.33.i:                                    ; preds = %.lr.ph.i.32.i
  %i.cp = and i32 %i.ag, 65280
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvNtNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time9timestamp3tsc4arch17nominal_frequency0EB1S_.exit.thread.i, label %.lr.ph.i.34.i

.lr.ph.i.34.i:                                    ; preds = %.lr.ph.i.33.i
  %i.cr = and i32 %i.ag, 16711680
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvNtNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time9timestamp3tsc4arch17nominal_frequency0EB1S_.exit.thread.i, label %.lr.ph.i.35.i

.lr.ph.i.35.i:                                    ; preds = %.lr.ph.i.34.i
  %i.ct = icmp ult i32 %i.ag, 16777216
  br i1 %i.ct, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvNtNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time9timestamp3tsc4arch17nominal_frequency0EB1S_.exit.thread.i, label %.lr.ph.i.36.i

.lr.ph.i.36.i:                                    ; preds = %.lr.ph.i.35.i
  %i.cu = and i32 %i.af, 255
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvNtNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time9timestamp3tsc4arch17nominal_frequency0EB1S_.exit.thread.i, label %.lr.ph.i.37.i

.lr.ph.i.37.i:                                    ; preds = %.lr.ph.i.36.i
  %i.cw = and i32 %i.af, 65280
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvNtNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time9timestamp3tsc4arch17nominal_frequency0EB1S_.exit.thread.i, label %.lr.ph.i.38.i

.lr.ph.i.38.i:                                    ; preds = %.lr.ph.i.37.i
  %i.cy = and i32 %i.af, 16711680
  %i.cz = icmp eq i32 %i.cy, 0
  br i1 %i.cz, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvNtNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time9timestamp3tsc4arch17nominal_frequency0EB1S_.exit.thread.i, label %.lr.ph.i.39.i

.lr.ph.i.39.i:                                    ; preds = %.lr.ph.i.38.i
  %i.da = icmp ult i32 %i.af, 16777216
  br i1 %i.da, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvNtNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time9timestamp3tsc4arch17nominal_frequency0EB1S_.exit.thread.i, label %.lr.ph.i.40.i

.lr.ph.i.40.i:                                    ; preds = %.lr.ph.i.39.i
  %i.db = and i32 %i.ah, 255
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvNtNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time9timestamp3tsc4arch17nominal_frequency0EB1S_.exit.thread.i, label %.lr.ph.i.41.i

.lr.ph.i.41.i:                                    ; preds = %.lr.ph.i.40.i
  %i.dd = and i32 %i.ah, 65280
  %i.de = icmp eq i32 %i.dd, 0
  br i1 %i.de, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvNtNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time9timestamp3tsc4arch17nominal_frequency0EB1S_.exit.thread.i, label %.lr.ph.i.42.i

.lr.ph.i.42.i:                                    ; preds = %.lr.ph.i.41.i
  %i.df = and i32 %i.ah, 16711680
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvNtNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time9timestamp3tsc4arch17nominal_frequency0EB1S_.exit.thread.i, label %.lr.ph.i.43.i

.lr.ph.i.43.i:                                    ; preds = %.lr.ph.i.42.i
  %i.dh = icmp ult i32 %i.ah, 16777216
  br i1 %i.dh, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvNtNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time9timestamp3tsc4arch17nominal_frequency0EB1S_.exit.thread.i, label %.lr.ph.i.44.i

.lr.ph.i.44.i:                                    ; preds = %.lr.ph.i.43.i
  %i.di = and i32 %i.ai, 255
  %i.dj = icmp eq i32 %i.di, 0
  br i1 %i.dj, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvNtNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time9timestamp3tsc4arch17nominal_frequency0EB1S_.exit.thread.i, label %.lr.ph.i.45.i

.lr.ph.i.45.i:                                    ; preds = %.lr.ph.i.44.i
  %i.dk = and i32 %i.ai, 65280
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvNtNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time9timestamp3tsc4arch17nominal_frequency0EB1S_.exit.thread.i, label %.lr.ph.i.46.i

.lr.ph.i.46.i:                                    ; preds = %.lr.ph.i.45.i
  %i.dm = and i32 %i.ai, 16711680
  %i.dn = icmp eq i32 %i.dm, 0
  br i1 %i.dn, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvNtNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time9timestamp3tsc4arch17nominal_frequency0EB1S_.exit.thread.i, label %.lr.ph.i.47.i

.lr.ph.i.47.i:                                    ; preds = %.lr.ph.i.46.i
  %i.do = icmp ult i32 %i.ai, 16777216
  %spec.select.i = select i1 %i.do, i64 47, i64 48
  br label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvNtNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time9timestamp3tsc4arch17nominal_frequency0EB1S_.exit.thread.i

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvNtNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time9timestamp3tsc4arch17nominal_frequency0EB1S_.exit.thread.i: ; preds = %.lr.ph.i.47.i, %.lr.ph.i.46.i, %.lr.ph.i.45.i, %.lr.ph.i.44.i, %.lr.ph.i.43.i, %.lr.ph.i.42.i, %.lr.ph.i.41.i, %.lr.ph.i.40.i, %.lr.ph.i.39.i, %.lr.ph.i.38.i, %.lr.ph.i.37.i, %.lr.ph.i.36.i, %.lr.ph.i.35.i, %.lr.ph.i.34.i, %.lr.ph.i.33.i, %.lr.ph.i.32.i, %.lr.ph.i.31.i, %.lr.ph.i.30.i, %.lr.ph.i.29.i, %.lr.ph.i.28.i, %.lr.ph.i.27.i, %.lr.ph.i.26.i, %.lr.ph.i.25.i, %.lr.ph.i.24.i, %.lr.ph.i.23.i, %.lr.ph.i.22.i, %.lr.ph.i.21.i, %.lr.ph.i.20.i, %.lr.ph.i.19.i, %.lr.ph.i.18.i, %.lr.ph.i.17.i, %.lr.ph.i.16.i, %.lr.ph.i.15.i, %.lr.ph.i.14.i, %.lr.ph.i.13.i, %.lr.ph.i.12.i, %.lr.ph.i.11.i, %.lr.ph.i.10.i, %.lr.ph.i.9.i, %.lr.ph.i.8.i, %.lr.ph.i.7.i, %.lr.ph.i.6.i, %.lr.ph.i.5.i, %.lr.ph.i.4.i, %.lr.ph.i.3.i, %.lr.ph.i.2.i, %.lr.ph.i.1.i, %.lr.ph.preheader.i.i
  %.sroa.05.0175.i = phi i64 [ %spec.select.i, %.lr.ph.i.47.i ], [ 0, %.lr.ph.preheader.i.i ], [ 1, %.lr.ph.i.1.i ], [ 2, %.lr.ph.i.2.i ], [ 3, %.lr.ph.i.3.i ], [ 4, %.lr.ph.i.4.i ], [ 5, %.lr.ph.i.5.i ], [ 6, %.lr.ph.i.6.i ], [ 7, %.lr.ph.i.7.i ], [ 8, %.lr.ph.i.8.i ], [ 9, %.lr.ph.i.9.i ], [ 10, %.lr.ph.i.10.i ], [ 11, %.lr.ph.i.11.i ], [ 12, %.lr.ph.i.12.i ], [ 13, %.lr.ph.i.13.i ], [ 14, %.lr.ph.i.14.i ], [ 15, %.lr.ph.i.15.i ], [ 16, %.lr.ph.i.16.i ], [ 17, %.lr.ph.i.17.i ], [ 18, %.lr.ph.i.18.i ], [ 19, %.lr.ph.i.19.i ], [ 20, %.lr.ph.i.20.i ], [ 21, %.lr.ph.i.21.i ], [ 22, %.lr.ph.i.22.i ], [ 23, %.lr.ph.i.23.i ], [ 24, %.lr.ph.i.24.i ], [ 25, %.lr.ph.i.25.i ], [ 26, %.lr.ph.i.26.i ], [ 27, %.lr.ph.i.27.i ], [ 28, %.lr.ph.i.28.i ], [ 29, %.lr.ph.i.29.i ], [ 30, %.lr.ph.i.30.i ], [ 31, %.lr.ph.i.31.i ], [ 32, %.lr.ph.i.32.i ], [ 33, %.lr.ph.i.33.i ], [ 34, %.lr.ph.i.34.i ], [ 35, %.lr.ph.i.35.i ], [ 36, %.lr.ph.i.36.i ], [ 37, %.lr.ph.i.37.i ], [ 38, %.lr.ph.i.38.i ], [ 39, %.lr.ph.i.39.i ], [ 40, %.lr.ph.i.40.i ], [ 41, %.lr.ph.i.41.i ], [ 42, %.lr.ph.i.42.i ], [ 43, %.lr.ph.i.43.i ], [ 44, %.lr.ph.i.44.i ], [ 45, %.lr.ph.i.45.i ], [ 46, %.lr.ph.i.46.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef %.sroa.05.0175.i)
  %i.dp = load i64, ptr %i.d, align 8, !range !70, !noundef !12
  %i.dq = trunc nuw i64 %i.dp to i1
  br i1 %i.dq, label %bb.h, label %.noexc.i

bb.h:                                             ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvNtNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time9timestamp3tsc4arch17nominal_frequency0EB1S_.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RNvNtNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time9timestamp3tsc4arch17nominal_frequency.exit.thread

.noexc.i:                                         ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvNtNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time9timestamp3tsc4arch17nominal_frequency0EB1S_.exit.thread.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !nonnull !12, !noundef !12 ; 22 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.du = load i64, ptr %i.dt, align 8, !noundef !12 ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !209
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !209
  call void @_RNvMsu_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ds, i64 noundef %i.du, ptr noalias noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 3)
  call fastcc void @_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef align 8 dereferenceable(104) %i.a)
  %i.dw = load i64, ptr %i.b, align 8, !range !70, !noalias !209, !noundef !12
  %i.dx = trunc nuw i64 %i.dw to i1               ; 2 uses
  %i.dy = load i64, ptr %i.dv, align 8, !noalias !209 ; 8 uses
  %.sroa.3.0.i163.i = select i1 %i.dx, i64 %i.dy, i64 undef ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !209
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !209
  br i1 %i.dx, label %bb.i, label %.noexc.1.i

bb.i:                                             ; preds = %.noexc.i
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %.noexc167.i.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not.i165.i = icmp ult i64 %i.dy, %i.du
  br i1 %.not.i165.i, label %bb.k, label %.split.i.i

.split.i.i:                                       ; preds = %bb.j
  %i.ea = icmp eq i64 %i.dy, %i.du
  br i1 %i.ea, label %.noexc167.i.preheader, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dy
  %i.ec = load i8, ptr %i.eb, align 1, !alias.scope !213, !noundef !12
  %i.ed = icmp sgt i8 %i.ec, -65
  br i1 %i.ed, label %.noexc167.i.preheader, label %bb.o

.noexc167.i.preheader:                            ; preds = %bb.k, %.split.i.i, %bb.i
  br label %.noexc167.i

.noexc167.i:                                      ; preds = %.noexc167.i.preheader, %bb.l
  %i.ee = phi i64 [ %i.ei, %bb.l ], [ %i.dy, %.noexc167.i.preheader ]
  %i.ef = call { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr7memrchr(i8 noundef 32, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ds, i64 noundef %i.ee) ; 2 uses
  %i.eg = extractvalue { i64, i64 } %i.ef, 0
  %i.eh = trunc nuw i64 %i.eg to i1
  br i1 %i.eh, label %bb.m, label %.loopexit239.i

bb.l:                                             ; preds = %bb.n, %bb.m
  %.not.i.i.i = icmp ugt i64 %i.ei, %.sroa.3.0.i163.i
  br i1 %.not.i.i.i, label %.loopexit239.i, label %.noexc167.i

bb.m:                                             ; preds = %.noexc167.i
  %i.ei = extractvalue { i64, i64 } %i.ef, 1      ; 5 uses
  %or.cond17.i.not.i.i = icmp ult i64 %i.ei, %.sroa.3.0.i163.i
  br i1 %or.cond17.i.not.i.i, label %bb.n, label %bb.l

bb.n:                                             ; preds = %bb.m
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.ei
  %lhsc.i.i = load i8, ptr %i.ej, align 1, !alias.scope !216, !noalias !219
  %i.ek = icmp eq i8 %lhsc.i.i, 32
  br i1 %i.ek, label %bb.p, label %bb.l

bb.o:                                             ; preds = %bb.ab, %.split.i.2.i, %bb.t, %.split.i.1.i, %bb.k, %.split.i.i
  %.lcssa190.i = phi i64 [ %i.dy, %bb.k ], [ %i.dy, %.split.i.i ], [ %i.eu, %.split.i.1.i ], [ %i.eu, %bb.t ], [ %i.fq, %.split.i.2.i ], [ %i.fq, %bb.ab ]
  call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ds, i64 noundef %i.du, i64 noundef 0, i64 noundef %.lcssa190.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #15
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.el = add nuw i64 %i.ei, 1                    ; 2 uses
  %i.em = sub nuw i64 %.sroa.3.0.i163.i, %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.el
  br label %.loopexit239.i

.loopexit239.i:                                   ; preds = %bb.l, %.noexc167.i, %bb.p
  %i.eo = phi i64 [ %i.em, %bb.p ], [ %.sroa.3.0.i163.i, %.noexc167.i ], [ %.sroa.3.0.i163.i, %bb.l ]
  %i.ep = phi ptr [ %i.en, %bb.p ], [ %i.ds, %.noexc167.i ], [ %i.ds, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvXs2_NtNtCs4NRVxsYgnAr_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ep, i64 noundef %i.eo)
  %i.eq = load i8, ptr %i.c, align 8, !range !221, !noundef !12
  %i.er = trunc nuw i8 %i.eq to i1
  br i1 %i.er, label %bb.q, label %bb.ah

bb.q:                                             ; preds = %.loopexit239.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.noexc.1.i

.noexc.1.i:                                       ; preds = %bb.q, %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !209
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !209
  call void @_RNvMsu_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ds, i64 noundef %i.du, ptr noalias noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 3)
  call fastcc void @_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef align 8 dereferenceable(104) %i.a)
  %i.es = load i64, ptr %i.b, align 8, !range !70, !noalias !209, !noundef !12
  %i.et = trunc nuw i64 %i.es to i1               ; 2 uses
  %i.eu = load i64, ptr %i.dv, align 8, !noalias !209 ; 8 uses
  %.sroa.3.0.i163.1.i = select i1 %i.et, i64 %i.eu, i64 undef ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !209
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !209
  br i1 %i.et, label %bb.r, label %.noexc.2.i

bb.r:                                             ; preds = %.noexc.1.i
  %i.ev = icmp eq i64 %i.eu, 0
  br i1 %i.ev, label %.noexc167.1.i.preheader, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not.i165.1.i = icmp ult i64 %i.eu, %i.du
  br i1 %.not.i165.1.i, label %bb.t, label %.split.i.1.i

.split.i.1.i:                                     ; preds = %bb.s
  %i.ew = icmp eq i64 %i.eu, %i.du
  br i1 %i.ew, label %.noexc167.1.i.preheader, label %bb.o

bb.t:                                             ; preds = %bb.s
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.eu
  %i.ey = load i8, ptr %i.ex, align 1, !alias.scope !213, !noundef !12
  %i.ez = icmp sgt i8 %i.ey, -65
  br i1 %i.ez, label %.noexc167.1.i.preheader, label %bb.o

.noexc167.1.i.preheader:                          ; preds = %bb.t, %.split.i.1.i, %bb.r
  br label %.noexc167.1.i

.noexc167.1.i:                                    ; preds = %.noexc167.1.i.preheader, %bb.w
  %i.fa = phi i64 [ %i.fe, %bb.w ], [ %i.eu, %.noexc167.1.i.preheader ]
  %i.fb = call { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr7memrchr(i8 noundef 32, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ds, i64 noundef %i.fa) ; 2 uses
  %i.fc = extractvalue { i64, i64 } %i.fb, 0
  %i.fd = trunc nuw i64 %i.fc to i1
  br i1 %i.fd, label %bb.u, label %.loopexit238.i

bb.u:                                             ; preds = %.noexc167.1.i
  %i.fe = extractvalue { i64, i64 } %i.fb, 1      ; 5 uses
  %or.cond17.i.not.i.1.i = icmp ult i64 %i.fe, %.sroa.3.0.i163.1.i
  br i1 %or.cond17.i.not.i.1.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.fe
  %lhsc.i.1.i = load i8, ptr %i.ff, align 1, !alias.scope !216, !noalias !219
  %i.fg = icmp eq i8 %lhsc.i.1.i, 32
  br i1 %i.fg, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.not.i.i.1.i = icmp ugt i64 %i.fe, %.sroa.3.0.i163.1.i
  br i1 %.not.i.i.1.i, label %.loopexit238.i, label %.noexc167.1.i

bb.x:                                             ; preds = %bb.v
  %i.fh = add nuw i64 %i.fe, 1                    ; 2 uses
  %i.fi = sub nuw i64 %.sroa.3.0.i163.1.i, %i.fh
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.fh
  br label %.loopexit238.i

.loopexit238.i:                                   ; preds = %bb.w, %.noexc167.1.i, %bb.x
  %i.fk = phi i64 [ %i.fi, %bb.x ], [ %.sroa.3.0.i163.1.i, %.noexc167.1.i ], [ %.sroa.3.0.i163.1.i, %bb.w ]
  %i.fl = phi ptr [ %i.fj, %bb.x ], [ %i.ds, %.noexc167.1.i ], [ %i.ds, %bb.w ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvXs2_NtNtCs4NRVxsYgnAr_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.fl, i64 noundef %i.fk)
  %i.fm = load i8, ptr %i.c, align 8, !range !221, !noundef !12
  %i.fn = trunc nuw i8 %i.fm to i1
  br i1 %i.fn, label %bb.y, label %bb.ah

bb.y:                                             ; preds = %.loopexit238.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.noexc.2.i

.noexc.2.i:                                       ; preds = %bb.y, %.noexc.1.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !209
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !209
  call void @_RNvMsu_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ds, i64 noundef %i.du, ptr noalias noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 3)
  call fastcc void @_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef align 8 dereferenceable(104) %i.a)
  %i.fo = load i64, ptr %i.b, align 8, !range !70, !noalias !209, !noundef !12
  %i.fp = trunc nuw i64 %i.fo to i1               ; 2 uses
  %i.fq = load i64, ptr %i.dv, align 8, !noalias !209 ; 8 uses
  %.sroa.3.0.i163.2.i = select i1 %i.fp, i64 %i.fq, i64 undef ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !209
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !209
  br i1 %i.fp, label %bb.z, label %_RNvNtNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time9timestamp3tsc4arch17nominal_frequency.exit.thread

bb.z:                                             ; preds = %.noexc.2.i
  %i.fr = icmp eq i64 %i.fq, 0
  br i1 %i.fr, label %.noexc167.2.i.preheader, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.not.i165.2.i = icmp ult i64 %i.fq, %i.du
  br i1 %.not.i165.2.i, label %bb.ab, label %.split.i.2.i

.split.i.2.i:                                     ; preds = %bb.aa
  %i.fs = icmp eq i64 %i.fq, %i.du
  br i1 %i.fs, label %.noexc167.2.i.preheader, label %bb.o

bb.ab:                                            ; preds = %bb.aa
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.fq
  %i.fu = load i8, ptr %i.ft, align 1, !alias.scope !213, !noundef !12
  %i.fv = icmp sgt i8 %i.fu, -65
  br i1 %i.fv, label %.noexc167.2.i.preheader, label %bb.o

.noexc167.2.i.preheader:                          ; preds = %bb.ab, %.split.i.2.i, %bb.z
  br label %.noexc167.2.i

.noexc167.2.i:                                    ; preds = %.noexc167.2.i.preheader, %bb.ae
  %i.fw = phi i64 [ %i.ga, %bb.ae ], [ %i.fq, %.noexc167.2.i.preheader ]
  %i.fx = call { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr7memrchr(i8 noundef 32, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ds, i64 noundef %i.fw) ; 2 uses
  %i.fy = extractvalue { i64, i64 } %i.fx, 0
  %i.fz = trunc nuw i64 %i.fy to i1
  br i1 %i.fz, label %bb.ac, label %.loopexit.i

bb.ac:                                            ; preds = %.noexc167.2.i
  %i.ga = extractvalue { i64, i64 } %i.fx, 1      ; 5 uses
  %or.cond17.i.not.i.2.i = icmp ult i64 %i.ga, %.sroa.3.0.i163.2.i
  br i1 %or.cond17.i.not.i.2.i, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.ga
  %lhsc.i.2.i = load i8, ptr %i.gb, align 1, !alias.scope !216, !noalias !219
  %i.gc = icmp eq i8 %lhsc.i.2.i, 32
  br i1 %i.gc, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.not.i.i.2.i = icmp ugt i64 %i.ga, %.sroa.3.0.i163.2.i
  br i1 %.not.i.i.2.i, label %.loopexit.i, label %.noexc167.2.i

bb.af:                                            ; preds = %bb.ad
  %i.gd = add nuw i64 %i.ga, 1                    ; 2 uses
  %i.ge = sub nuw i64 %.sroa.3.0.i163.2.i, %i.gd
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.gd
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.ae, %.noexc167.2.i, %bb.af
  %i.gg = phi i64 [ %i.ge, %bb.af ], [ %.sroa.3.0.i163.2.i, %.noexc167.2.i ], [ %.sroa.3.0.i163.2.i, %bb.ae ]
  %i.gh = phi ptr [ %i.gf, %bb.af ], [ %i.ds, %.noexc167.2.i ], [ %i.ds, %bb.ae ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvXs2_NtNtCs4NRVxsYgnAr_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.gh, i64 noundef %i.gg)
  %i.gi = load i8, ptr %i.c, align 8, !range !221, !noundef !12
  %i.gj = trunc nuw i8 %i.gi to i1
  br i1 %i.gj, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNvNtNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time9timestamp3tsc4arch17nominal_frequency.exit.thread

_RNvNtNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time9timestamp3tsc4arch17nominal_frequency.exit.thread: ; preds = %.noexc.2.i, %bb.ag, %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.gk = call noundef double @_RNvNtNtNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time9timestamp3tsc4arch7measure17measure_frequency()
  br label %bb.ai

bb.ah:                                            ; preds = %.loopexit.i, %.loopexit238.i, %.loopexit239.i
  %i.gl = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.gm = load double, ptr %i.gl, align 8, !noundef !12
  %i.gn = fmul double %i.gm, 1.000000e+06         ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.go = call noundef double @_RNvNtNtNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time9timestamp3tsc4arch7measure17measure_frequency() ; 3 uses
  %i.gp = fmul double %i.go, f0x3FEFF7CED916872B
  %i.gq = fcmp olt double %i.gp, %i.gn
  %i.gr = fmul double %i.go, 1.001000e+00
  %i.gs = fcmp olt double %i.gn, %i.gr
  %or.cond = and i1 %i.gq, %i.gs
  br i1 %or.cond, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %_RNvNtNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time9timestamp3tsc4arch17nominal_frequency.exit.thread, %bb.ah
  %i.gt = phi double [ %i.gk, %_RNvNtNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time9timestamp3tsc4arch17nominal_frequency.exit.thread ], [ %i.go, %bb.ah ]
  %i.gu = call double @llvm.round.f64(double %i.gt)
  %i.gv = call i64 @llvm.fptoui.sat.i64.f64(double %i.gu)
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.gv, ptr %i.gw, align 8
  br label %bb.d

bb.aj:                                            ; preds = %bb.ah
  %i.gx = call double @llvm.round.f64(double %i.gn)
  %i.gy = call i64 @llvm.fptoui.sat.i64.f64(double %i.gx)
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.gy, ptr %i.gz, align 8
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4util3fmtNtB2_17DisplayThroughputNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs_NtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4util3fmtNtB4_17DisplayThroughputNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCs4NRVxsYgnAr_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @64, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write10write_char(ptr noalias noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !222, !noundef !12 ; 4 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048           ; 2 uses
  %i.f = icmp samesign ult i32 %1, 65536          ; 2 uses
  %..i = select i1 %i.f, i64 3, i64 4
  %.sroa.0.0.ph.i = select i1 %i.e, i64 2, i64 %..i
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.ph.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !222, !nonnull !12, !noundef !12
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.b ; 9 uses
  %i.j = trunc i32 %1 to i8
  %i.k = and i8 %i.j, 63
  %i.l = or disjoint i8 %i.k, -128                ; 3 uses
  %i.m = lshr i32 %1, 6
  %i.n = trunc i32 %i.m to i8                     ; 2 uses
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128                ; 2 uses
  %i.q = lshr i32 %1, 12
  %i.r = trunc i32 %i.q to i8                     ; 2 uses
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128
  %i.u = lshr i32 %1, 18
  %i.v = trunc nuw nsw i32 %i.u to i8
  %i.w = or disjoint i8 %i.v, -16
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !222, !nonnull !12, !noundef !12
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.b
  %i.aa = trunc nuw nsw i32 %1 to i8
  store i8 %i.aa, ptr %i.z, align 1
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit

bb.d:                                             ; preds = %bb.b
  %i.ab = or disjoint i8 %i.n, -64
  store i8 %i.ab, ptr %i.i, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.l, ptr %i.ac, align 1
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit

bb.e:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = or disjoint i8 %i.r, -32
  store i8 %i.ad, ptr %i.i, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.p, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.l, ptr %i.af, align 1
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.w, ptr %i.i, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.t, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.p, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  store i8 %i.l, ptr %i.ai, align 1
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit

_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.03.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.aj = add nuw i64 %.sroa.0.03.i, %i.b
  store i64 %i.aj, ptr %i.a, align 8, !alias.scope !222
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !noalias !225
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !228, !noalias !225, !noundef !12 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !228, !noalias !225, !nonnull !12, !noundef !12
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !228, !noalias !225
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ]
  %i.h = add i64 %i.g, %2
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !228, !noalias !225
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4util3fmtNtB4_17DisplayThroughputNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 14 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !12, !align !40, !noundef !12 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !12 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load double, ptr %i.e, align 8
  %i.g = uitofp i64 %i.c to double
  %i.h = fdiv double 1.000000e+12, %i.f
  %i.i = fmul double %i.h, %i.g
  %.sroa.01.0 = select i1 %i.d, double 0.000000e+00, double %i.i ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i8, ptr %i.j, align 8, !range !232, !noundef !12
  switch i8 %i.k, label %default.unreachable22 [
    i8 0, label %bb.b
    i8 1, label %bb.e
    i8 2, label %bb.c
    i8 3, label %bb.d
  ]

default.unreachable22:                            ; preds = %bb.n, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i8, ptr %i.l, align 8, !range !221, !noundef !12
  %i.n = zext nneg i8 %i.m to i64
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a, %bb.b
  %.sroa.05.0 = phi i64 [ %i.n, %bb.b ], [ 0, %bb.a ], [ 0, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %.sroa.02.0 = phi i8 [ 1, %bb.b ], [ 2, %bb.a ], [ 4, %bb.d ], [ 3, %bb.c ]
  %i.o = getelementptr inbounds nuw [48 x i8], ptr @57, i64 %.sroa.05.0 ; 6 uses
  %i.p = tail call double @llvm.fabs.f64(double %.sroa.01.0)
  %i.q = fcmp oeq double %i.p, +inf
  br i1 %i.q, label %_RNvNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4util3fmt11scale_value.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.s = load double, ptr %i.r, align 8, !noundef !12
  %i.t = fcmp olt double %.sroa.01.0, %i.s
  br i1 %i.t, label %_RNvNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4util3fmt11scale_value.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.v = load double, ptr %i.u, align 8, !noundef !12
end_hunk_0
