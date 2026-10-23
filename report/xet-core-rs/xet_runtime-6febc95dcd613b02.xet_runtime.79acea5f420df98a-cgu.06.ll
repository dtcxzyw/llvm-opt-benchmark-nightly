Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_runtime-6febc95dcd613b02.xet_runtime.79acea5f420df98a-cgu.06?download=true
inline.NumInlined: 340
inline.NumDeleted: 151
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RNvXs0_NtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6format6prettyINtB7_6FormatNtB5_6PrettyEINtB7_11FormatEventNtNtNtBb_8registry7sharded8RegistryB1e_E12format_eventCsarFSTFZzLuM_11xet_runtime:bb.a
  %i.n = alloca [72 x i8], align 8                ; 15 uses
  %i.o = alloca [72 x i8], align 8                ; 17 uses
  %i.p = alloca [48 x i8], align 8                ; 9 uses
  %i.q = alloca [72 x i8], align 8                ; 15 uses
  %i.r = alloca [16 x i8], align 8                ; 6 uses
  %i.s = alloca [72 x i8], align 8                ; 17 uses
  %i.t = alloca [40 x i8], align 8                ; 5 uses
  %.sroa.9765 = alloca [32 x i8], align 8         ; 7 uses
  %i.u = alloca [96 x i8], align 8                ; 15 uses
  %.sroa.0410.sroa.5 = alloca [40 x i8], align 8  ; 5 uses
  %i.v = alloca [40 x i8], align 8                ; 5 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [8 x i8], align 8                 ; 4 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  %i.z = alloca [16 x i8], align 8                ; 6 uses
  %i.aa = alloca [8 x i8], align 8                ; 12 uses
  %i.ab = alloca [16 x i8], align 8               ; 5 uses
  %i.ac = alloca [72 x i8], align 8               ; 15 uses
  %i.ad = alloca [16 x i8], align 8               ; 5 uses
  %i.ae = alloca [4 x i8], align 4                ; 4 uses
  %i.af = alloca [32 x i8], align 8               ; 7 uses
  %i.ag = alloca [72 x i8], align 8               ; 15 uses
  %i.ah = alloca [16 x i8], align 8               ; 6 uses
  %i.ai = alloca [48 x i8], align 8               ; 4 uses
  %i.aj = alloca [48 x i8], align 8               ; 13 uses
  %i.ak = alloca [48 x i8], align 8               ; 9 uses
  %i.al = alloca [34 x i8], align 1               ; 9 uses
  %i.am = alloca [17 x i8], align 1               ; 6 uses
  %i.an = alloca [4 x i8], align 4                ; 4 uses
  %i.ao = alloca [48 x i8], align 8               ; 9 uses
  %i.ap = alloca [34 x i8], align 1               ; 10 uses
  %i.aq = alloca [16 x i8], align 8               ; 5 uses
  %i.ar = alloca [17 x i8], align 1               ; 7 uses
  %i.as = alloca [16 x i8], align 8               ; 5 uses
  %i.at = alloca [16 x i8], align 8               ; 5 uses
  %i.au = alloca [120 x i8], align 8              ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @_RNvXse_Cs2dUaLeREcod_11tracing_logNtNtCs94TQx44N27d_12tracing_core5event5EventNtB5_14NormalizeEvent19normalized_metadata(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.au, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %3)
  %i.av = load i64, ptr %i.au, align 8, !range !26, !noundef !4
  %.not474 = icmp eq i64 %i.av, -1                ; 7 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !4, !align !5 ; 7 uses
  %.sroa.010.0 = select i1 %.not474, ptr %i.ax, ptr %i.au ; 2 uses
  %i.ay = tail call noundef zeroext i1 @_RNvMs_NtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6formatNtB4_6Writer9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull @133, ptr noundef nonnull inttoptr (i64 5 to ptr))
  br i1 %i.ay, label %_RNvMs3_NtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6formatINtB5_6FormatNtNtB5_6pretty6PrettyE16format_timestampCsarFSTFZzLuM_11xet_runtime.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ba = load i8, ptr %i.az, align 1, !range !22, !noundef !4 ; 2 uses
  %.not475 = icmp eq i8 %i.ba, 2
  br i1 %.not475, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 %i.ba, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !802)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !803)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !range !12, !alias.scope !802, !noundef !4
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.e, label %_RNvMs3_NtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6formatINtB5_6FormatNtNtB5_6pretty6PrettyE16format_timestampCsarFSTFZzLuM_11xet_runtime.exit.thread770

bb.e:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bf = load i8, ptr %i.be, align 8, !range !12, !alias.scope !803, !noundef !4
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.bi = tail call noundef zeroext i1 @_RNvXs3_NtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt4timeNtB5_10SystemTimeNtB5_10FormatTime11format_time(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bh, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  br i1 %i.bi, label %bb.h, label %_RNvMs3_NtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6formatINtB5_6FormatNtNtB5_6pretty6PrettyE16format_timestampCsarFSTFZzLuM_11xet_runtime.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !804
  store i8 0, ptr %i.g, align 1, !noalias !804
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store i8 1, ptr %.sroa.5.0..sroa_idx.i, align 1, !noalias !804
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0..sroa_idx.i, i8 0, i64 7, i1 false), !noalias !804
  store i32 255, ptr %.sroa.13.0..sroa_idx.i, align 1, !noalias !804
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 13
  store i32 255, ptr %.sroa.14.0..sroa_idx.i, align 1, !noalias !804
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !804
  store ptr %i.g, ptr %i.f, align 8, !noalias !804
  %.sroa.434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs2_NtCs4LWqFwTCtYX_12nu_ansi_term4ansiNtB5_6PrefixNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.434.0..sroa_idx.i, align 8, !noalias !804
  %i.bj = call noundef zeroext i1 @_RNvMs_NtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6formatNtB4_6Writer9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull @14, ptr noundef nonnull %i.f), !noalias !802
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !804
  br i1 %i.bj, label %_RNvMs3_NtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6formatINtB5_6FormatNtNtB5_6pretty6PrettyE16format_timestampCsarFSTFZzLuM_11xet_runtime.exit.thread, label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.bk = load ptr, ptr %2, align 8, !alias.scope !803, !nonnull !4, !noundef !4
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !803, !nonnull !4, !align !5, !noundef !4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !invariant.load !4, !nonnull !4
  %i.bp = tail call noundef zeroext i1 %i.bo(ptr noundef nonnull %i.bk, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @131, i64 noundef 14) #24, !inline_history !723
  br i1 %i.bp, label %_RNvMs3_NtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6formatINtB5_6FormatNtNtB5_6pretty6PrettyE16format_timestampCsarFSTFZzLuM_11xet_runtime.exit.thread, label %_RNvMs3_NtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6formatINtB5_6FormatNtNtB5_6pretty6PrettyE16format_timestampCsarFSTFZzLuM_11xet_runtime.exit

bb.i:                                             ; preds = %bb.g
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.br = call noundef zeroext i1 @_RNvXs3_NtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt4timeNtB5_10SystemTimeNtB5_10FormatTime11format_time(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bq, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  br i1 %i.br, label %bb.j, label %.split

bb.j:                                             ; preds = %bb.i
  %i.bs = load ptr, ptr %2, align 8, !alias.scope !803, !nonnull !4, !noundef !4
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !alias.scope !803, !nonnull !4, !align !5, !noundef !4
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !invariant.load !4, !nonnull !4
  %i.bx = call noundef zeroext i1 %i.bw(ptr noundef nonnull %i.bs, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @131, i64 noundef 14) #24, !inline_history !723
  br i1 %i.bx, label %_RNvMs3_NtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6formatINtB5_6FormatNtNtB5_6pretty6PrettyE16format_timestampCsarFSTFZzLuM_11xet_runtime.exit.thread, label %.split

.split:                                           ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !804
  store i8 0, ptr %i.e, align 1, !noalias !804
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store i8 1, ptr %.sroa.5.0..sroa_idx3.i, align 1, !noalias !804
  %.sroa.6.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %.sroa.13.0..sroa_idx19.i = getelementptr inbounds nuw i8, ptr %i.e, i64 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0..sroa_idx5.i, i8 0, i64 7, i1 false), !noalias !804
  store i32 255, ptr %.sroa.13.0..sroa_idx19.i, align 1, !noalias !804
  %.sroa.14.0..sroa_idx21.i = getelementptr inbounds nuw i8, ptr %i.e, i64 13
  store i32 255, ptr %.sroa.14.0..sroa_idx21.i, align 1, !noalias !804
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !804
  store ptr %i.e, ptr %i.d, align 8, !noalias !804
  %.sroa.438.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs4_NtCs4LWqFwTCtYX_12nu_ansi_term4ansiNtB5_6SuffixNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.438.0..sroa_idx.i, align 8, !noalias !804
  %i.by = call noundef zeroext i1 @_RNvMs_NtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6formatNtB4_6Writer9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull @132, ptr noundef nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !804
  br i1 %i.by, label %_RNvMs3_NtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6formatINtB5_6FormatNtNtB5_6pretty6PrettyE16format_timestampCsarFSTFZzLuM_11xet_runtime.exit.thread, label %_RNvMs3_NtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6formatINtB5_6FormatNtNtB5_6pretty6PrettyE16format_timestampCsarFSTFZzLuM_11xet_runtime.exit.thread770

_RNvMs3_NtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6formatINtB5_6FormatNtNtB5_6pretty6PrettyE16format_timestampCsarFSTFZzLuM_11xet_runtime.exit: ; preds = %bb.f, %bb.h
  %i.bz = load ptr, ptr %2, align 8, !alias.scope !803, !nonnull !4, !noundef !4
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !alias.scope !803, !nonnull !4, !align !5, !noundef !4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8, !invariant.load !4, !nonnull !4
  %i.ce = tail call noundef zeroext i1 %i.cd(ptr noundef nonnull %i.bz, i32 noundef 32) #24, !inline_history !723
  br i1 %i.ce, label %_RNvMs3_NtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6formatINtB5_6FormatNtNtB5_6pretty6PrettyE16format_timestampCsarFSTFZzLuM_11xet_runtime.exit.thread, label %_RNvMs3_NtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6formatINtB5_6FormatNtNtB5_6pretty6PrettyE16format_timestampCsarFSTFZzLuM_11xet_runtime.exit.thread770

_RNvMs3_NtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6formatINtB5_6FormatNtNtB5_6pretty6PrettyE16format_timestampCsarFSTFZzLuM_11xet_runtime.exit.thread770: ; preds = %bb.d, %.split, %_RNvMs3_NtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6formatINtB5_6FormatNtNtB5_6pretty6PrettyE16format_timestampCsarFSTFZzLuM_11xet_runtime.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.cg = load i8, ptr %i.cf, align 1, !range !12, !noundef !4
  %i.ch = trunc nuw i8 %i.cg to i1                ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.cj = load i8, ptr %i.ci, align 8, !range !12 ; 2 uses
  %i.ck = trunc nuw i8 %i.cj to i1
  %or.cond = select i1 %i.ch, i1 %i.ck, i1 false
  br i1 %or.cond, label %switch.lookup, label %_RNvMs_NtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6format6prettyNtB4_6Pretty9style_for.exit

switch.lookup:                                    ; preds = %_RNvMs3_NtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6formatINtB5_6FormatNtNtB5_6pretty6PrettyE16format_timestampCsarFSTFZzLuM_11xet_runtime.exit.thread770
  %.sroa.010.0.val = load i64, ptr %.sroa.010.0, align 8, !range !21, !noundef !4
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs0_NtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6format6prettyINtB7_6FormatNtB5_6PrettyEINtB7_11FormatEventNtNtNtBb_8registry7sharded8RegistryB1e_E12format_eventCsarFSTFZzLuM_11xet_runtime, i64 %.sroa.010.0.val
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %_RNvMs_NtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6format6prettyNtB4_6Pretty9style_for.exit.thread

_RNvMs_NtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6format6prettyNtB4_6Pretty9style_for.exit: ; preds = %_RNvMs3_NtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6formatINtB5_6FormatNtNtB5_6pretty6PrettyE16format_timestampCsarFSTFZzLuM_11xet_runtime.exit.thread770
  br i1 %i.ch, label %_RNvMs_NtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6format6prettyNtB4_6Pretty9style_for.exit.thread, label %bb.k

bb.k:                                             ; preds = %_RNvMs_NtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6format6prettyNtB4_6Pretty9style_for.exit.thread, %_RNvMs_NtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6format6prettyNtB4_6Pretty9style_for.exit
  %.sroa.32.sroa.0.0774.a = phi i32 [ 255, %_RNvMs_NtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6format6prettyNtB4_6Pretty9style_for.exit ], [ %.sroa.32.sroa.0.0775, %_RNvMs_NtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6format6prettyNtB4_6Pretty9style_for.exit.thread ] ; 7 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.cm = load i8, ptr %i.cl, align 1, !range !12, !noundef !4
  %i.cn = trunc nuw i8 %i.cm to i1                ; 2 uses
  br i1 %i.cn, label %bb.m, label %bb.l

_RNvMs_NtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6format6prettyNtB4_6Pretty9style_for.exit.thread: ; preds = %switch.lookup, %_RNvMs_NtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6format6prettyNtB4_6Pretty9style_for.exit
  %.sroa.32.sroa.0.0775 = phi i32 [ 255, %_RNvMs_NtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6format6prettyNtB4_6Pretty9style_for.exit ], [ %switch.ext, %switch.lookup ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  store ptr %.sroa.010.0, ptr %i.at, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i8 %i.cj, ptr %i.co, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  store ptr %i.at, ptr %i.as, align 8
  %.sroa.4302.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr @_RNvXsm_NtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6formatNtB5_8FmtLevelNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.4302.0..sroa_idx, align 8
  %i.cp = call noundef zeroext i1 @_RNvMs_NtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6formatNtB4_6Writer9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull @132, ptr noundef nonnull %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  br i1 %i.cp, label %_RNvMs3_NtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6formatINtB5_6FormatNtNtB5_6pretty6PrettyE16format_timestampCsarFSTFZzLuM_11xet_runtime.exit.thread, label %bb.k

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.cr = load i8, ptr %i.cq, align 1, !range !12, !noundef !4
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %bb.n, label %.thread

.thread:                                          ; preds = %bb.l
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.cu = load i8, ptr %i.ct, align 1, !range !12, !noundef !4
  %i.cv = load i8, ptr %0, align 1, !range !12, !noundef !4
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.cw = load i8, ptr %i.ci, align 8, !range !12, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  store i8 %i.cw, ptr %i.ar, align 1
  %.sroa.465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %.sroa.1273.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 9
  store i64 0, ptr %.sroa.465.0..sroa_idx, align 1
  store i32 %.sroa.32.sroa.0.0774.a, ptr %.sroa.1273.0..sroa_idx, align 1
  %.sroa.1374.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 13
  store i32 255, ptr %.sroa.1374.0..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  %.sroa.010.0.sroa.sel531.v.sroa.sel.v.sroa.sel.v = select i1 %.not474, ptr %i.ax, ptr %i.au
  %.sroa.010.0.sroa.sel531.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.010.0.sroa.sel531.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.cx = load ptr, ptr %.sroa.010.0.sroa.sel531.v.sroa.sel.v.sroa.sel, align 8, !nonnull !4, !noundef !4
  %.sroa.010.0.sroa.sel522.v.sroa.sel.v.sroa.sel.v = select i1 %.not474, ptr %i.ax, ptr %i.au
  %.sroa.010.0.sroa.sel522.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.010.0.sroa.sel522.v.sroa.sel.v.sroa.sel.v, i64 40
  %i.cy = load i64, ptr %.sroa.010.0.sroa.sel522.v.sroa.sel.v.sroa.sel, align 8, !noundef !4
  store ptr %i.cx, ptr %i.aq, align 8, !captures !24
  %i.cz = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i64 %i.cy, ptr %i.cz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  store i8 %i.cw, ptr %i.ap, align 1
  %.sroa.420.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  %.sroa.12.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %i.ap, i64 9
  store i64 0, ptr %.sroa.420.0..sroa_idx23, align 1
  store i32 %.sroa.32.sroa.0.0774.a, ptr %.sroa.12.0..sroa_idx58, align 1
  %.sroa.13.0..sroa_idx62 = getelementptr inbounds nuw i8, ptr %i.ap, i64 13
  store i32 255, ptr %.sroa.13.0..sroa_idx62, align 1
  %i.da = getelementptr inbounds nuw i8, ptr %i.ap, i64 17
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.da, i8 0, i64 9, i1 false)
  store i32 %.sroa.32.sroa.0.0774.a, ptr %.sroa.12.0..sroa_idx, align 1
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 30
  store i32 255, ptr %.sroa.13.0..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  store ptr %i.ar, ptr %i.ao, align 8
  %.sroa.4306.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr @_RNvXs2_NtCs4LWqFwTCtYX_12nu_ansi_term4ansiNtB5_6PrefixNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.4306.0..sroa_idx, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store ptr %i.aq, ptr %i.db, align 8
  %.sroa.4310.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsarFSTFZzLuM_11xet_runtime, ptr %.sroa.4310.0..sroa_idx, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  store ptr %i.ap, ptr %i.dc, align 8
  %.sroa.4314.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  store ptr @_RNvXs3_NtCs4LWqFwTCtYX_12nu_ansi_term4ansiNtB5_5InfixNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.4314.0..sroa_idx, align 8
  %i.dd = call noundef zeroext i1 @_RNvMs_NtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6formatNtB4_6Writer9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull @134, ptr noundef nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  br i1 %i.dd, label %_RNvMs3_NtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6formatINtB5_6FormatNtNtB5_6pretty6PrettyE16format_timestampCsarFSTFZzLuM_11xet_runtime.exit.thread, label %bb.l

bb.n:                                             ; preds = %bb.l
  %.sroa.010.0.sroa.sel528.v.sroa.sel.v.sroa.sel.v = select i1 %.not474, ptr %i.ax, ptr %i.au
  %.sroa.010.0.sroa.sel528.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.010.0.sroa.sel528.v.sroa.sel.v.sroa.sel.v, i64 8
  %i.de = load i32, ptr %.sroa.010.0.sroa.sel528.v.sroa.sel.v.sroa.sel, align 8, !range !27, !noundef !4
  %.sroa.010.0.sroa.sel519.v.sroa.sel.v.sroa.sel.v = select i1 %.not474, ptr %i.ax, ptr %i.au
  %.sroa.010.0.sroa.sel519.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.010.0.sroa.sel519.v.sroa.sel.v.sroa.sel.v, i64 12
  %i.df = load i32, ptr %.sroa.010.0.sroa.sel519.v.sroa.sel.v.sroa.sel, align 4 ; 3 uses
  %i.dg = trunc nuw i32 %i.de to i1               ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.di = load i8, ptr %i.dh, align 1, !range !12, !noundef !4 ; 2 uses
  %i.dj = trunc nuw i8 %i.di to i1
  %i.dk = load i8, ptr %0, align 1, !range !12, !noundef !4 ; 2 uses
  %4 = trunc nuw i8 %i.dk to i1
  %.not = xor i1 %i.dg, true
  %brmerge = or i1 %.not, %i.dj
  %.not3 = xor i1 %4, true
  %brmerge4 = select i1 %brmerge, i1 true, i1 %.not3
  br i1 %brmerge4, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.p, %.thread, %bb.n
  %5 = phi i8 [ %i.cv, %.thread ], [ %i.dk, %bb.n ], [ 1, %bb.p ]
  %i.dl = phi i8 [ %i.cu, %.thread ], [ %i.di, %bb.n ], [ 0, %bb.p ]
  %.sroa.075.0785 = phi i1 [ false, %.thread ], [ %i.dg, %bb.n ], [ true, %bb.p ]
  %.sroa.777.0784 = phi i32 [ undef, %.thread ], [ %i.df, %bb.n ], [ %i.df, %bb.p ]
  %i.dm = load ptr, ptr %2, align 8, !nonnull !4, !noundef !4
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.do = load ptr, ptr %i.dn, align 8, !nonnull !4, !align !5, !noundef !4
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 32
  %i.dq = load ptr, ptr %i.dp, align 8, !invariant.load !4, !nonnull !4
  %i.dr = call noundef zeroext i1 %i.dq(ptr noundef nonnull %i.dm, i32 noundef 32) #24
  br i1 %i.dr, label %_RNvMs3_NtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6formatINtB5_6FormatNtNtB5_6pretty6PrettyE16format_timestampCsarFSTFZzLuM_11xet_runtime.exit.thread, label %bb.q

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  store i32 %i.df, ptr %i.an, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  %.sroa.12739.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.am, i8 0, i64 9, i1 false)
  store i32 %.sroa.32.sroa.0.0774.a, ptr %.sroa.12739.0..sroa_idx, align 1
  %.sroa.13740.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 13
  store i32 255, ptr %.sroa.13740.0..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %.sroa.12750.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.al, i8 0, i64 9, i1 false)
  store i32 %.sroa.32.sroa.0.0774.a, ptr %.sroa.12750.0..sroa_idx, align 1
  %.sroa.13751.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 13
  store i32 255, ptr %.sroa.13751.0..sroa_idx, align 1
  %i.ds = getelementptr inbounds nuw i8, ptr %i.al, i64 17
  %.sroa.12761.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.ds, i8 0, i64 9, i1 false)
  store i32 %.sroa.32.sroa.0.0774.a, ptr %.sroa.12761.0..sroa_idx, align 1
  %.sroa.13762.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 30
  store i32 255, ptr %.sroa.13762.0..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  store ptr %i.am, ptr %i.ak, align 8
  %.sroa.4318.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr @_RNvXs2_NtCs4LWqFwTCtYX_12nu_ansi_term4ansiNtB5_6PrefixNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.4318.0..sroa_idx, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store ptr %i.an, ptr %i.dt, align 8
  %.sroa.4322.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.4322.0..sroa_idx, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  store ptr %i.al, ptr %i.du, align 8
  %.sroa.4326.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  store ptr @_RNvXs3_NtCs4LWqFwTCtYX_12nu_ansi_term4ansiNtB5_5InfixNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.4326.0..sroa_idx, align 8
  %i.dv = call noundef zeroext i1 @_RNvMs_NtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6formatNtB4_6Writer9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull @134, ptr noundef nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  br i1 %i.dv, label %_RNvMs3_NtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6formatINtB5_6FormatNtNtB5_6pretty6PrettyE16format_timestampCsarFSTFZzLuM_11xet_runtime.exit.thread, label %bb.o

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  %i.dw = load i8, ptr %i.ci, align 8, !range !12, !noundef !4
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 17
  %i.dy = load i8, ptr %i.dx, align 1, !range !12, !noundef !4
  store ptr %2, ptr %i.aj, align 8
  %.sroa.283.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr @17, ptr %.sroa.283.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i8 %i.dw, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 17
  store i8 %i.dy, ptr %.sroa.484.0..sroa_idx, align 1
  %i.dz = getelementptr inbounds nuw i8, ptr %i.aj, i64 41
  store i8 1, ptr %i.dz, align 1
  %i.ea = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %.sroa.32.0..sroa_idx611 = getelementptr inbounds nuw i8, ptr %i.aj, i64 33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ea, i8 0, i64 9, i1 false)
  store i32 %.sroa.32.sroa.0.0774.a, ptr %.sroa.32.0..sroa_idx611, align 1
  %.sroa.36.0..sroa_idx619 = getelementptr inbounds nuw i8, ptr %i.aj, i64 37
  store i32 255, ptr %.sroa.36.0..sroa_idx619, align 1
  %i.eb = getelementptr inbounds nuw i8, ptr %i.aj, i64 42
  store i8 0, ptr %i.eb, align 2
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !nonnull !4, !align !5, !noundef !4
  call void @_RNvMsR_NtCs94TQx44N27d_12tracing_core5fieldNtB5_8ValueSet6record(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ed, ptr noundef nonnull %i.aj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) @135)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ai, ptr noundef nonnull align 8 dereferenceable(48) %i.aj, i64 48, i1 false)
  %i.ee = call noundef zeroext i1 @_RNvXs7_NtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6format6prettyNtB5_13PrettyVisitorINtNtBb_5field11VisitOutputINtNtCskKLDkoKarTP_4core6result6ResultuNtNtB1R_3fmt5ErrorEE6finish(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br i1 %i.ee, label %_RNvMs3_NtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6formatINtB5_6FormatNtNtB5_6pretty6PrettyE16format_timestampCsarFSTFZzLuM_11xet_runtime.exit.thread.sink.split, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ef = load ptr, ptr %2, align 8, !nonnull !4, !noundef !4
  %i.eg = load ptr, ptr %i.dn, align 8, !nonnull !4, !align !5, !noundef !4
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 32
  %i.ei = load ptr, ptr %i.eh, align 8, !invariant.load !4, !nonnull !4
  %i.ej = call noundef zeroext i1 %i.ei(ptr noundef nonnull %i.ef, i32 noundef 10) #24
  br i1 %i.ej, label %_RNvMs3_NtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6formatINtB5_6FormatNtNtB5_6pretty6PrettyE16format_timestampCsarFSTFZzLuM_11xet_runtime.exit.thread.sink.split, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ek = load i8, ptr %i.ci, align 8, !range !12, !noundef !4 ; 10 uses
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.em = load i8, ptr %i.el, align 1, !range !12, !noundef !4
  %i.en = trunc nuw i8 %i.em to i1                ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ep = load i8, ptr %i.eo, align 1, !range !12
  %i.eq = trunc nuw i8 %i.ep to i1                ; 3 uses
  %.sroa.0175.0 = select i1 %i.en, i1 true, i1 %i.eq ; 3 uses
  %.sroa.010.0.sroa.sel525.v.sroa.sel.v.sroa.sel.v = select i1 %.not474, ptr %i.ax, ptr %i.au
  %.sroa.010.0.sroa.sel525.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.010.0.sroa.sel525.v.sroa.sel.v.sroa.sel.v, i64 96
  %i.er = load ptr, ptr %.sroa.010.0.sroa.sel525.v.sroa.sel.v.sroa.sel, align 8, !noundef !4 ; 2 uses
  %.not476 = icmp ne ptr %i.er, null
  %6 = and i8 %i.dl, %5
  %7 = icmp ne i8 %6, 0
  %brmerge9.not = and i1 %7, %.not476
  br i1 %brmerge9.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  br i1 %.sroa.0175.0, label %bb.ad, label %.critedge

bb.u:                                             ; preds = %bb.s
  %.sroa.010.0.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not474, ptr %i.ax, ptr %i.au
  %.sroa.010.0.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.010.0.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 104
  %i.es = load i64, ptr %.sroa.010.0.sroa.sel.v.sroa.sel.v.sroa.sel, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store ptr %i.er, ptr %i.ah, align 8, !captures !24
  %i.et = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 %i.es, ptr %i.et, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  store i8 0, ptr %i.eu, align 8
  %.sroa.4183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 49
  store i8 %i.ek, ptr %.sroa.4183.0..sroa_idx, align 1
  %.sroa.5184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 50
  store i8 %i.ek, ptr %.sroa.5184.0..sroa_idx, align 2
  %.sroa.6185.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 51
  %.sroa.12191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 57
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.sroa.6185.0..sroa_idx, i8 0, i64 6, i1 false)
  store i32 255, ptr %.sroa.12191.0..sroa_idx, align 1
  %.sroa.13192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 61
  store i32 255, ptr %.sroa.13192.0..sroa_idx, align 1
  store i64 -1, ptr %i.ag, align 8
  %.sroa.4348.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr @136, ptr %.sroa.4348.0..sroa_idx, align 8
  %.sroa.5349.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 2, ptr %.sroa.5349.0..sroa_idx, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store i64 -3, ptr %i.ev, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store ptr %i.ag, ptr %i.af, align 8
  %.sroa.4355.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr @_RNvXs4_NtCs4LWqFwTCtYX_12nu_ansi_term7displayINtB5_17AnsiGenericStringeENtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.4355.0..sroa_idx, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store ptr %i.ah, ptr %i.ew, align 8
  %.sroa.4359.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsarFSTFZzLuM_11xet_runtime, ptr %.sroa.4359.0..sroa_idx, align 8
  %i.ex = invoke noundef zeroext i1 @_RNvMs_NtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6formatNtB4_6Writer9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull @137, ptr noundef nonnull %i.af)
          to label %bb.w unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ey = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs4LWqFwTCtYX_12nu_ansi_term7display17AnsiGenericStringeEECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(72) %i.ag) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsarFSTFZzLuM_11xet_runtime.exit unwind label %bb.ac

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs4LWqFwTCtYX_12nu_ansi_term7display17AnsiGenericStringeEECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(72) %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br i1 %i.ex, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  br i1 %.sroa.075.0785, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store i32 %.sroa.777.0784, ptr %i.ae, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store ptr %i.ae, ptr %i.ad, align 8
  %.sroa.4363.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.4363.0..sroa_idx, align 8
  %i.ez = call noundef zeroext i1 @_RNvMs_NtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6formatNtB4_6Writer9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull @138, ptr noundef nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br i1 %i.ez, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.491 = select i1 %.sroa.0175.0, i32 32, i32 10
  %i.fa = load ptr, ptr %2, align 8, !nonnull !4, !noundef !4
  %i.fb = load ptr, ptr %i.dn, align 8, !nonnull !4, !align !5, !noundef !4
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 32
  %i.fd = load ptr, ptr %i.fc, align 8, !invariant.load !4, !nonnull !4
  %i.fe = call noundef zeroext i1 %i.fd(ptr noundef nonnull %i.fa, i32 noundef %.491) #24
  br i1 %i.fe, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.y, %bb.w, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %_RNvMs3_NtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6formatINtB5_6FormatNtNtB5_6pretty6PrettyE16format_timestampCsarFSTFZzLuM_11xet_runtime.exit.thread.sink.split

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br i1 %.sroa.0175.0, label %.thread786, label %.critedge

bb.ac:                                            ; preds = %bb.cl, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry10extensions10ExtensionsECsarFSTFZzLuM_11xet_runtime.exit, %bb.bn, %bb.ak, %bb.cs, %bb.ch, %bb.cd, %bb.bx, %bb.bt, %bb.ae, %bb.v
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsarFSTFZzLuM_11xet_runtime.exit: ; preds = %.body, %bb.bn, %bb.aj, %bb.ak, %bb.ae, %bb.v
  %.pn488.pn = phi { ptr, i32 } [ %i.fq, %bb.aj ], [ %i.ey, %bb.v ], [ %i.fn, %bb.ae ], [ %i.fq, %bb.ak ], [ %.pn488, %bb.bn ], [ %.pn488, %.body ]
  resume { ptr, i32 } %.pn488.pn

bb.ad:                                            ; preds = %bb.t
  %i.fg = call noundef zeroext i1 @_RNvMs_NtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6formatNtB4_6Writer9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull @139, ptr noundef nonnull inttoptr (i64 9 to ptr))
  br i1 %i.fg, label %_RNvMs3_NtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6formatINtB5_6FormatNtNtB5_6pretty6PrettyE16format_timestampCsarFSTFZzLuM_11xet_runtime.exit.thread.sink.split, label %.thread786

.critedge:                                        ; preds = %bb.t, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsarFSTFZzLuM_11xet_runtime.exit497, %bb.ab
  %i.fh = load i8, ptr %i.ci, align 8, !range !12, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.fi = load i64, ptr %3, align 8, !range !6, !noundef !4
  %i.fj = icmp eq i64 %i.fi, 2
  br i1 %i.fj, label %bb.bb, label %bb.bc

.thread786:                                       ; preds = %bb.ad, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  store i8 0, ptr %i.fk, align 8
  %.sroa.4195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 49
  store i8 %i.ek, ptr %.sroa.4195.0..sroa_idx, align 1
  %.sroa.5196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 50
  store i8 %i.ek, ptr %.sroa.5196.0..sroa_idx, align 2
  %.sroa.6197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 51
  %.sroa.12203.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 57
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.sroa.6197.0..sroa_idx, i8 0, i64 6, i1 false)
  store i32 255, ptr %.sroa.12203.0..sroa_idx, align 1
  %.sroa.13204.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 61
  store i32 255, ptr %.sroa.13204.0..sroa_idx, align 1
  store i64 -1, ptr %i.ac, align 8
  %.sroa.4365.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr @140, ptr %.sroa.4365.0..sroa_idx, align 8
  %.sroa.5366.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 2, ptr %.sroa.5366.0..sroa_idx, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store i64 -3, ptr %i.fl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store ptr %i.ac, ptr %i.ab, align 8
  %.sroa.4372.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr @_RNvXs4_NtCs4LWqFwTCtYX_12nu_ansi_term7displayINtB5_17AnsiGenericStringeENtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.4372.0..sroa_idx, align 8
  %i.fm = invoke noundef zeroext i1 @_RNvMs_NtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6formatNtB4_6Writer9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull @132, ptr noundef nonnull %i.ab)
          to label %bb.af unwind label %bb.ae

bb.ae:                                            ; preds = %.thread786
  %i.fn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs4LWqFwTCtYX_12nu_ansi_term7display17AnsiGenericStringeEECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(72) %i.ac) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsarFSTFZzLuM_11xet_runtime.exit unwind label %bb.ac

bb.af:                                            ; preds = %.thread786
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs4LWqFwTCtYX_12nu_ansi_term7display17AnsiGenericStringeEECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(72) %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br i1 %i.fm, label %_RNvMs3_NtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6formatINtB5_6FormatNtNtB5_6pretty6PrettyE16format_timestampCsarFSTFZzLuM_11xet_runtime.exit.thread.sink.split, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.fo = call noundef nonnull ptr @_RNvNtNtCsG258MDvU3F_3std6thread7current7current()
  store ptr %i.fo, ptr %i.aa, align 8
  br i1 %i.en, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.al, %bb.ap, %bb.ag
  br i1 %i.eq, label %bb.aw, label %bb.av

bb.ai:                                            ; preds = %bb.ag
  %i.fp = invoke { ptr, i64 } @_RNvMs_NtNtCsG258MDvU3F_3std6thread6threadNtB4_6Thread4name(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aa)
          to label %bb.al unwind label %bb.aj     ; 2 uses

bb.aj:                                            ; preds = %bb.aw, %bb.av, %bb.aq, %bb.am, %bb.ai
  %i.fq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !805)
  call void @llvm.experimental.noalias.scope.decl(metadata !806)
  call void @llvm.experimental.noalias.scope.decl(metadata !807)
  call void @llvm.experimental.noalias.scope.decl(metadata !808)
  %i.fr = load ptr, ptr %i.aa, align 8, !alias.scope !809, !nonnull !4, !noundef !4
  %i.fs = atomicrmw add ptr %i.fr, i64 -1 release, align 8, !noalias !809
  %i.ft = icmp eq i64 %i.fs, 1
  br i1 %i.ft, label %bb.ak, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsarFSTFZzLuM_11xet_runtime.exit

bb.ak:                                            ; preds = %bb.aj
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aa) #19
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsarFSTFZzLuM_11xet_runtime.exit unwind label %bb.ac

bb.al:                                            ; preds = %bb.ai
  %i.fu = extractvalue { ptr, i64 } %i.fp, 0      ; 2 uses
  %.not478 = icmp eq ptr %i.fu, null
  br i1 %.not478, label %bb.ah, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fv = extractvalue { ptr, i64 } %i.fp, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store ptr %i.fu, ptr %i.z, align 8, !captures !24
  %i.fw = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %i.fv, ptr %i.fw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store ptr %i.z, ptr %i.y, align 8
  %.sroa.4376.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsarFSTFZzLuM_11xet_runtime, ptr %.sroa.4376.0..sroa_idx, align 8
  %i.fx = invoke noundef zeroext i1 @_RNvMs_NtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6formatNtB4_6Writer9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull @14, ptr noundef nonnull %i.y)
          to label %bb.an unwind label %bb.aj

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br i1 %i.fx, label %bb.as, label %bb.ao

end_hunk_0
begin_hunk_1_@_RNvXs0_NtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6format6prettyINtB7_6FormatNtB5_6PrettyEINtB7_11FormatEventNtNtNtBb_8registry7sharded8RegistryB1e_E12format_eventCsarFSTFZzLuM_11xet_runtime:bb.a
          to label %bb.cl unwind label %bb.ac

bb.ct:                                            ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br i1 %i.jn, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs4LWqFwTCtYX_12nu_ansi_term7display17AnsiGenericStringeEECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(72) %i.i)
          to label %bb.cx unwind label %.loopexit.split-lp815.loopexit.split-lp.loopexit.split-lp

bb.cv:                                            ; preds = %bb.ct
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs4LWqFwTCtYX_12nu_ansi_term7display17AnsiGenericStringeEECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(72) %i.i)
          to label %bb.cw unwind label %.loopexit.split-lp815.loopexit.split-lp.loopexit.split-lp

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.cr

bb.cx:                                            ; preds = %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %.loopexit819

.loopexit819:                                     ; preds = %bb.cy, %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke void @_RNvXsh_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_15RwLockReadGuardNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry10extensions15ExtensionsInnerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry10extensions10ExtensionsECsarFSTFZzLuM_11xet_runtime.exit507 unwind label %.loopexit.split-lp805.loopexit.split-lp.loopexit.split-lp

bb.cy:                                            ; preds = %bb.cr
  br i1 %i.js, label %.loopexit819, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke void @_RNvXsh_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_15RwLockReadGuardNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry10extensions15ExtensionsInnerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry10extensions10ExtensionsECsarFSTFZzLuM_11xet_runtime.exit509 unwind label %.loopexit.split-lp805.loopexit.split-lp.loopexit.split-lp

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry10extensions10ExtensionsECsarFSTFZzLuM_11xet_runtime.exit509: ; preds = %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  invoke void @_RNvXs6_NtCskeoOuuhwsQF_12sharded_slab4poolINtB5_3RefNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7sharded9DataInnerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.9765.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsarFSTFZzLuM_11xet_runtime.exit511 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsarFSTFZzLuM_11xet_runtime.exit511: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry10extensions10ExtensionsECsarFSTFZzLuM_11xet_runtime.exit509
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9765)
  %.pre.i.pre = load ptr, ptr %.sroa.5411.0..sroa_idx, align 8, !alias.scope !836
  br label %.peel.begin

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry10extensions10ExtensionsECsarFSTFZzLuM_11xet_runtime.exit507: ; preds = %.loopexit819
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.da

bb.da:                                            ; preds = %bb.cc, %bb.dc, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry10extensions10ExtensionsECsarFSTFZzLuM_11xet_runtime.exit507
  invoke void @_RNvXs6_NtCskeoOuuhwsQF_12sharded_slab4poolINtB5_3RefNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7sharded9DataInnerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.9765.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsarFSTFZzLuM_11xet_runtime.exit513 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.db:                                            ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs4LWqFwTCtYX_12nu_ansi_term7display17AnsiGenericStringeEECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(72) %i.s)
          to label %bb.dc unwind label %.loopexit.split-lp805.loopexit.split-lp.loopexit.split-lp

bb.dc:                                            ; preds = %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.da

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsarFSTFZzLuM_11xet_runtime.exit513: ; preds = %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9765)
  %i.ju = load i64, ptr %i.u, align 8, !range !18, !alias.scope !850, !noundef !4
  %i.jv = icmp eq i64 %i.ju, 0
  %i.jw = load ptr, ptr %.sroa.0410.sroa.5.0..sroa_idx, align 8, !alias.scope !850
  %i.jx = icmp eq ptr %i.jw, null
  %or.cond.i.i.i.i514 = select i1 %i.jv, i1 true, i1 %i.jx
  br i1 %or.cond.i.i.i.i514, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtB4_6option8IntoIterINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtB1I_7sharded8RegistryEEINtB1I_5ScopeB2z_ENCNvXs0_NtNtNtB1K_3fmt6format6prettyINtB3s_6FormatNtB3q_6PrettyEINtB3s_11FormatEventB2z_B46_E12format_events1_0EECsarFSTFZzLuM_11xet_runtime.exit515, label %bb.dd

bb.dd:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsarFSTFZzLuM_11xet_runtime.exit513
  call void @_RNvXs6_NtCskeoOuuhwsQF_12sharded_slab4poolINtB5_3RefNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7sharded9DataInnerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2.i.i.i)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtB4_6option8IntoIterINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtB1I_7sharded8RegistryEEINtB1I_5ScopeB2z_ENCNvXs0_NtNtNtB1K_3fmt6format6prettyINtB3s_6FormatNtB3q_6PrettyEINtB3s_11FormatEventB2z_B46_E12format_events1_0EECsarFSTFZzLuM_11xet_runtime.exit515

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtB4_6option8IntoIterINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtB1I_7sharded8RegistryEEINtB1I_5ScopeB2z_ENCNvXs0_NtNtNtB1K_3fmt6format6prettyINtB3s_6FormatNtB3q_6PrettyEINtB3s_11FormatEventB2z_B46_E12format_events1_0EECsarFSTFZzLuM_11xet_runtime.exit515: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsarFSTFZzLuM_11xet_runtime.exit513, %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0410.sroa.5)
  br label %_RNvMs3_NtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6formatINtB5_6FormatNtNtB5_6pretty6PrettyE16format_timestampCsarFSTFZzLuM_11xet_runtime.exit.thread.sink.split
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6format4jsonINtB7_6FormatNtB5_4JsonEINtB7_11FormatEventNtNtNtBb_8registry7sharded8RegistryNtB5_10JsonFieldsE12format_eventCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(11) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [40 x i8], align 8                ; 5 uses
  %i.e = alloca [40 x i8], align 8                ; 7 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 8 uses
  %i.o = alloca [8 x i8], align 8                 ; 12 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [4 x i8], align 4                 ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 9 uses
  %i.u = alloca [40 x i8], align 8                ; 8 uses
  %i.v = alloca [40 x i8], align 8                ; 20 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [16 x i8], align 8                ; 19 uses
  %i.y = alloca [16 x i8], align 8                ; 7 uses
  %i.z = alloca [120 x i8], align 8               ; 12 uses
  %i.aa = alloca [24 x i8], align 8               ; 7 uses
  %i.ab = alloca [24 x i8], align 8               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store i64 0, ptr %i.ab, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr %i.ab, ptr %i.aa, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr @147, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i8 0, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 17
  store i8 1, ptr %i.af, align 1
  %i.ag = invoke noundef zeroext i1 @_RNvXs3_NtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt4timeNtB5_10SystemTimeNtB5_10FormatTime11format_time(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ac, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.cj, %bb.ap, %bb.w, %.noexc3.i.i, %.noexc2.i.i, %.noexc.i.i, %bb.q, %bb.n, %bb.i, %bb.g, %bb.f, %bb.e, %bb.cm, %bb.cn, %bb.d, %bb.a
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs8QAzUGy1spU_13tracing_serde15SerdeMapVisitorINtNtCsiWcPrHiWZDL_10serde_json3ser8CompoundNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorNtB1r_16CompactFormatterEEECsarFSTFZzLuM_11xet_runtime.exit.i, %bb.aa, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.ah, %bb.b ], [ %.pn81.i, %bb.aa ], [ %.pn81.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs8QAzUGy1spU_13tracing_serde15SerdeMapVisitorINtNtCsiWcPrHiWZDL_10serde_json3ser8CompoundNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorNtB1r_16CompactFormatterEEECsarFSTFZzLuM_11xet_runtime.exit.i ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab) #21
          to label %common.resume unwind label %bb.cv

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br i1 %i.ag, label %bb.cs, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  invoke void @_RNvXse_Cs2dUaLeREcod_11tracing_logNtNtCs94TQx44N27d_12tracing_core5event5EventNtB5_14NormalizeEvent19normalized_metadata(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %3)
          to label %bb.e unwind label %bb.b

bb.e:                                             ; preds = %bb.d
  %i.ai = load i64, ptr %i.z, align 8, !range !26, !noundef !4
  %.not = icmp eq i64 %i.ai, -1                   ; 7 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !4, !align !5 ; 7 uses
  %storemerge = select i1 %.not, ptr %i.ak, ptr %i.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !914
  store ptr %2, ptr %i.y, align 8, !noalias !914
  %i.al = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr @17, ptr %i.al, align 8, !noalias !914
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !914
  %i.am = invoke noundef ptr @_RNvYNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 1)
          to label %.noexc unwind label %bb.b     ; 2 uses

.noexc:                                           ; preds = %bb.e
  %.not.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i, label %_RNvXs1_NtCsiWcPrHiWZDL_10serde_json3serQINtB5_10SerializerNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorENtNtCs6SYjS1KFWza_10serde_core3ser10Serializer13serialize_mapCsarFSTFZzLuM_11xet_runtime.exit.i, label %bb.f, !prof !13

bb.f:                                             ; preds = %.noexc
  %i.an = invoke noundef nonnull align 8 ptr @_RNvMs0_NtCsiWcPrHiWZDL_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.am)
          to label %.thread unwind label %bb.b

_RNvXs1_NtCsiWcPrHiWZDL_10serde_json3serQINtB5_10SerializerNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorENtNtCs6SYjS1KFWza_10serde_core3ser10Serializer13serialize_mapCsarFSTFZzLuM_11xet_runtime.exit.i: ; preds = %.noexc
  store ptr %i.y, ptr %i.x, align 8, !noalias !914
  %i.ao = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 4 uses
  store i8 1, ptr %i.ao, align 8, !noalias !914
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.aq = load i8, ptr %i.ap, align 1, !range !12, !noalias !914, !noundef !4
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.g, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.noexc9, %_RNvXs1_NtCsiWcPrHiWZDL_10serde_json3serQINtB5_10SerializerNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorENtNtCs6SYjS1KFWza_10serde_core3ser10Serializer13serialize_mapCsarFSTFZzLuM_11xet_runtime.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.at = load i8, ptr %i.as, align 1, !range !12, !noalias !914, !noundef !4
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.i, label %bb.h

bb.g:                                             ; preds = %_RNvXs1_NtCsiWcPrHiWZDL_10serde_json3serQINtB5_10SerializerNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorENtNtCs6SYjS1KFWza_10serde_core3ser10Serializer13serialize_mapCsarFSTFZzLuM_11xet_runtime.exit.i
  %i.av = invoke noundef align 8 ptr @_RINvYINtNtCsiWcPrHiWZDL_10serde_json3ser8CompoundNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorNtB6_16CompactFormatterENtNtCs6SYjS1KFWza_10serde_core3ser12SerializeMap15serialize_entryeNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 9, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab)
          to label %.noexc9 unwind label %bb.b    ; 2 uses

.noexc9:                                          ; preds = %bb.g
  %.not.i = icmp eq ptr %i.av, null
  br i1 %.not.i, label %._crit_edge.i, label %.thread

bb.h:                                             ; preds = %.noexc10, %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !914
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !range !12, !noalias !914, !noundef !4
  %i.ay = trunc nuw i8 %i.ax to i1                ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ba = load i8, ptr %i.az, align 1, !range !12
  %i.bb = trunc nuw i8 %i.ba to i1                ; 2 uses
  %or.cond = select i1 %i.ay, i1 true, i1 %i.bb
  br i1 %or.cond, label %bb.j, label %bb.k

bb.i:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !914
  store ptr %storemerge, ptr %i.w, align 8, !noalias !914
  %i.bc = invoke noundef align 8 ptr @_RINvYINtNtCsiWcPrHiWZDL_10serde_json3ser8CompoundNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorNtB6_16CompactFormatterENtNtCs6SYjS1KFWza_10serde_core3ser12SerializeMap15serialize_entryeNtCs8QAzUGy1spU_13tracing_serde14SerializeLevelECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.w)
          to label %.noexc10 unwind label %bb.b   ; 2 uses

.noexc10:                                         ; preds = %bb.i
  %.not65.i = icmp eq ptr %i.bc, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !914
  br i1 %.not65.i, label %bb.h, label %.thread

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !914
  %i.bd = load i64, ptr %3, align 8, !range !6, !noalias !914, !noundef !4
  %i.be = icmp eq i64 %i.bd, 2
  br i1 %i.be, label %bb.m, label %.thread.i

bb.k:                                             ; preds = %bb.h
  store ptr null, ptr %i.v, align 8, !noalias !914
  br label %bb.l

bb.l:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEE7or_elseNCNCNvXs1_NtNtNtBN_3fmt6format4jsonINtB2m_6FormatNtB2k_4JsonEINtB2m_11FormatEventB1C_NtB2k_10JsonFieldsE12format_events_0s_0ECsarFSTFZzLuM_11xet_runtime.exit.i, %bb.k
  %i.bf = load i8, ptr %0, align 1, !range !12, !noalias !914, !noundef !4
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.z, label %bb.y

bb.m:                                             ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val90.i = load ptr, ptr %i.bh, align 8, !noalias !914, !align !5, !noundef !4 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val91.i = load i64, ptr %i.bi, align 8, !noalias !914
  call void @llvm.experimental.noalias.scope.decl(metadata !915)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !914
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !916
  %.not.i93.i = icmp eq ptr %.val90.i, null
  br i1 %.not.i93.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 8
  invoke void @_RNvYNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7sharded8RegistryNtB6_10LookupSpan4spanCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.e, ptr noundef nonnull align 8 %.val90.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bj)
          to label %.noexc11 unwind label %bb.b

.noexc11:                                         ; preds = %bb.n
  %i.bk = load ptr, ptr %i.e, align 8, !noalias !916, !noundef !4
  %.not2.i.i = icmp eq ptr %i.bk, null
  br i1 %.not2.i.i, label %bb.p, label %bb.q

bb.o:                                             ; preds = %bb.m
  store ptr null, ptr %i.u, align 8, !alias.scope !915, !noalias !914
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !916
  br label %.thread122.i

bb.p:                                             ; preds = %.noexc11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !916
  store ptr null, ptr %i.u, align 8, !alias.scope !915, !noalias !914
  br label %.thread122.i

.thread.i:                                        ; preds = %bb.j
  store ptr null, ptr %i.u, align 8, !noalias !914
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !917, !noalias !918
  br label %bb.s

.thread122.i:                                     ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !914
  br label %bb.s

bb.q:                                             ; preds = %.noexc11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false), !noalias !916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !916
  invoke void @_RNvMs_NtCs8C3ZpOVqhBL_18tracing_subscriber8registryINtB4_7SpanRefNtNtB4_7sharded8RegistryE15try_with_filterCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.u, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.d, i64 noundef %.val91.i)
          to label %.noexc12 unwind label %bb.b

.noexc12:                                         ; preds = %bb.q
  %.pr.pr.i = load ptr, ptr %i.u, align 8, !alias.scope !919, !noalias !914
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !914
  call void @llvm.experimental.noalias.scope.decl(metadata !920)
  call void @llvm.experimental.noalias.scope.decl(metadata !919)
  %.not.i94.i = icmp eq ptr %.pr.pr.i, null
  br i1 %.not.i94.i, label %.thread81, label %bb.r

.thread81:                                        ; preds = %.noexc12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !921
  br label %.noexc.i.i

bb.r:                                             ; preds = %.noexc12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.v, ptr noundef nonnull align 8 dereferenceable(40) %i.u, i64 40, i1 false), !alias.scope !922, !noalias !914
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEE7or_elseNCNCNvXs1_NtNtNtBN_3fmt6format4jsonINtB2m_6FormatNtB2k_4JsonEINtB2m_11FormatEventB1C_NtB2k_10JsonFieldsE12format_events_0s_0ECsarFSTFZzLuM_11xet_runtime.exit.i

bb.s:                                             ; preds = %.thread122.i, %.thread.i
  %i.bl = phi ptr [ %.pre, %.thread.i ], [ %.val90.i, %.thread122.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !923)
  call void @llvm.experimental.noalias.scope.decl(metadata !924)
  call void @llvm.experimental.noalias.scope.decl(metadata !917)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !918
  %.not.i.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i, label %bb.t, label %.noexc.i.i

.noexc.i.i:                                       ; preds = %.thread81, %bb.s
  %i.bm = phi ptr [ %.val90.i, %.thread81 ], [ %i.bl, %bb.s ] ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !925
  invoke void @_RNvXs0_NtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCs94TQx44N27d_12tracing_core10subscriber10Subscriber12current_span(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %i.bm)
          to label %.noexc13 unwind label %bb.b

.noexc13:                                         ; preds = %.noexc.i.i
  %i.bo = load i64, ptr %i.c, align 8, !range !6, !noalias !925, !noundef !4
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %.noexc2.i.i, label %bb.u

bb.t:                                             ; preds = %bb.s
  store ptr null, ptr %i.v, align 8, !alias.scope !926, !noalias !914
  br label %bb.x

.noexc2.i.i:                                      ; preds = %.noexc13
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !925
  invoke void @_RNvYNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7sharded8RegistryNtB6_10LookupSpan4spanCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noundef nonnull align 8 %i.bm, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bq)
          to label %.noexc14 unwind label %bb.b

.noexc14:                                         ; preds = %.noexc2.i.i
  %i.br = load ptr, ptr %i.b, align 8, !noalias !925, !noundef !4
  %.not4.i.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not4.i.i.i.i, label %bb.v, label %.noexc3.i.i

bb.u:                                             ; preds = %.noexc13
  store ptr null, ptr %i.v, align 8, !alias.scope !926, !noalias !914
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !925
  br label %bb.x

.noexc3.i.i:                                      ; preds = %.noexc14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false), !noalias !925
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !917, !noalias !918, !noundef !4
  invoke void @_RNvMs_NtCs8C3ZpOVqhBL_18tracing_subscriber8registryINtB4_7SpanRefNtNtB4_7sharded8RegistryE15try_with_filterCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.v, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a, i64 noundef %i.bt)
          to label %.noexc15 unwind label %bb.b

.noexc15:                                         ; preds = %.noexc3.i.i
  %i.bu = load ptr, ptr %i.v, align 8, !alias.scope !926, !noalias !914, !noundef !4
  %.not5.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not5.i.i.i.i, label %bb.w, label %.noexc4.i.i

bb.v:                                             ; preds = %.noexc14
  store ptr null, ptr %i.v, align 8, !alias.scope !926, !noalias !914
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !925
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !925
  br label %bb.x

bb.w:                                             ; preds = %.noexc15
  invoke void @_RNvMNtNtCs8C3ZpOVqhBL_18tracing_subscriber5layer7contextINtB2_7ContextNtNtNtB6_8registry7sharded8RegistryE23lookup_current_filteredB6_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bn, ptr noundef nonnull align 8 %i.bm) #19
          to label %.noexc4.i.i unwind label %bb.b

.noexc4.i.i:                                      ; preds = %bb.w, %.noexc15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !925
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !925
  br label %bb.x

bb.x:                                             ; preds = %.noexc4.i.i, %bb.v, %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !918
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEE7or_elseNCNCNvXs1_NtNtNtBN_3fmt6format4jsonINtB2m_6FormatNtB2k_4JsonEINtB2m_11FormatEventB1C_NtB2k_10JsonFieldsE12format_events_0s_0ECsarFSTFZzLuM_11xet_runtime.exit.i

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEE7or_elseNCNCNvXs1_NtNtNtBN_3fmt6format4jsonINtB2m_6FormatNtB2k_4JsonEINtB2m_11FormatEventB1C_NtB2k_10JsonFieldsE12format_events_0s_0ECsarFSTFZzLuM_11xet_runtime.exit.i: ; preds = %bb.x, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !914
  br label %bb.l

bb.y:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !914
  store ptr %3, ptr %i.s, align 8, !noalias !914
  %i.bv = invoke noundef align 8 ptr @_RINvYINtNtCsiWcPrHiWZDL_10serde_json3ser8CompoundNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorNtB6_16CompactFormatterENtNtCs6SYjS1KFWza_10serde_core3ser12SerializeMap15serialize_entryeINtNtCs8QAzUGy1spU_13tracing_serde6fields17SerializeFieldMapNtNtCs94TQx44N27d_12tracing_core5event5EventEECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s)
          to label %bb.ac unwind label %bb.ab, !noalias !914 ; 2 uses

bb.z:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !914
  %i.bw = load ptr, ptr %i.x, align 8, !noalias !914, !nonnull !4, !align !5, !noundef !4
  %i.bx = load i8, ptr %i.ao, align 8, !range !22, !noalias !914, !noundef !4
  %i.by = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  store ptr %i.bw, ptr %i.by, align 8, !noalias !914
  %i.bz = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  store i8 %i.bx, ptr %i.bz, align 8, !noalias !914
  store ptr null, ptr %i.t, align 8, !noalias !914
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !noalias !914, !nonnull !4, !align !5, !noundef !4
  invoke void @_RNvMsR_NtCs94TQx44N27d_12tracing_core5fieldNtB5_8ValueSet6record(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cb, ptr noundef nonnull %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) @16)
          to label %bb.ag unwind label %bb.ae, !noalias !914

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs8QAzUGy1spU_13tracing_serde15SerdeMapVisitorINtNtCsiWcPrHiWZDL_10serde_json3ser8CompoundNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorNtB1r_16CompactFormatterEEECsarFSTFZzLuM_11xet_runtime.exit.i: ; preds = %bb.cd, %bb.cb, %bb.ca, %bb.bf, %bb.be, %bb.af, %bb.ae, %bb.ab
  %.pn81.i = phi { ptr, i32 } [ %i.cf, %bb.ab ], [ %i.fc, %bb.cd ], [ %.pn.i, %bb.be ], [ %i.cj, %bb.ae ], [ %i.cj, %bb.af ], [ %.pn.i, %bb.bf ], [ %i.ew, %bb.cb ], [ %i.ew, %bb.ca ] ; 2 uses
  %i.cc = load ptr, ptr %i.v, align 8, !alias.scope !927, !noalias !914, !noundef !4
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %.body, label %bb.aa

bb.aa:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs8QAzUGy1spU_13tracing_serde15SerdeMapVisitorINtNtCsiWcPrHiWZDL_10serde_json3ser8CompoundNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorNtB1r_16CompactFormatterEEECsarFSTFZzLuM_11xet_runtime.exit.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  invoke void @_RNvXs6_NtCskeoOuuhwsQF_12sharded_slab4poolINtB5_3RefNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7sharded9DataInnerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ce)
          to label %.body unwind label %bb.bv, !noalias !914

bb.ab:                                            ; preds = %bb.cg, %bb.cf, %bb.cc, %bb.by, %bb.bx, %bb.bu, %bb.br, %bb.bc, %bb.az, %bb.ax, %bb.av, %bb.as, %bb.am, %bb.aj, %bb.y
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs8QAzUGy1spU_13tracing_serde15SerdeMapVisitorINtNtCsiWcPrHiWZDL_10serde_json3ser8CompoundNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorNtB1r_16CompactFormatterEEECsarFSTFZzLuM_11xet_runtime.exit.i

bb.ac:                                            ; preds = %bb.y
  %.not66.i = icmp eq ptr %i.bv, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !914
  br i1 %.not66.i, label %bb.ad, label %bb.ao

bb.ad:                                            ; preds = %bb.ai, %bb.ac
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ch = load i8, ptr %i.cg, align 1, !range !12, !noalias !914, !noundef !4
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.aj, label %._crit_edge127.i

bb.ae:                                            ; preds = %bb.z
  %i.cj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i = load ptr, ptr %i.t, align 8, !alias.scope !928, !noalias !914, !align !5, !noundef !4 ; 2 uses
  %i.ck = icmp eq ptr %.val.i.i, null
  br i1 %i.ck, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs8QAzUGy1spU_13tracing_serde15SerdeMapVisitorINtNtCsiWcPrHiWZDL_10serde_json3ser8CompoundNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorNtB1r_16CompactFormatterEEECsarFSTFZzLuM_11xet_runtime.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorECsarFSTFZzLuM_11xet_runtime(ptr nonnull %.val.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs8QAzUGy1spU_13tracing_serde15SerdeMapVisitorINtNtCsiWcPrHiWZDL_10serde_json3ser8CompoundNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorNtB1r_16CompactFormatterEEECsarFSTFZzLuM_11xet_runtime.exit.i unwind label %bb.bv, !noalias !914

bb.ag:                                            ; preds = %bb.z
  %i.cl = load ptr, ptr %i.t, align 8, !noalias !914, !align !5, !noundef !4 ; 2 uses
  %.not67.i = icmp eq ptr %i.cl, null
  br i1 %.not67.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !914
  br label %bb.ao

bb.ai:                                            ; preds = %bb.ag
  %i.cm = load i8, ptr %i.bz, align 8, !range !22, !noalias !914, !noundef !4
  %i.cn = load ptr, ptr %i.by, align 8, !noalias !914, !nonnull !4, !align !5, !noundef !4
  store ptr %i.cn, ptr %i.x, align 8, !noalias !914
  store i8 %i.cm, ptr %i.ao, align 8, !noalias !914
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !914
  br label %bb.ad

._crit_edge127.i:                                 ; preds = %bb.ak, %bb.ad
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cp = load i8, ptr %i.co, align 1, !range !12, !noalias !914, !noundef !4
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %bb.al, label %._crit_edge129.i

bb.aj:                                            ; preds = %bb.ad
  %storemerge.sroa.sel64.v.sroa.sel.v = select i1 %.not, ptr %i.ak, ptr %i.z
  %storemerge.sroa.sel64.v.sroa.sel = getelementptr inbounds nuw i8, ptr %storemerge.sroa.sel64.v.sroa.sel.v, i64 32
  %i.cr = load ptr, ptr %storemerge.sroa.sel64.v.sroa.sel, align 8, !noalias !914, !nonnull !4, !noundef !4
  %storemerge.sroa.sel61.v.sroa.sel.v = select i1 %.not, ptr %i.ak, ptr %i.z
  %storemerge.sroa.sel61.v.sroa.sel = getelementptr inbounds nuw i8, ptr %storemerge.sroa.sel61.v.sroa.sel.v, i64 40
  %i.cs = load i64, ptr %storemerge.sroa.sel61.v.sroa.sel, align 8, !noalias !914, !noundef !4
  %i.ct = invoke noundef align 8 ptr @_RINvYINtNtCsiWcPrHiWZDL_10serde_json3ser8CompoundNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorNtB6_16CompactFormatterENtNtCs6SYjS1KFWza_10serde_core3ser12SerializeMap15serialize_entryeeECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cr, i64 noundef %i.cs)
          to label %bb.ak unwind label %bb.ab, !noalias !914 ; 2 uses

bb.ak:                                            ; preds = %bb.aj
  %.not68.i = icmp eq ptr %i.ct, null
  br i1 %.not68.i, label %._crit_edge127.i, label %bb.ao

._crit_edge129.i:                                 ; preds = %bb.an, %bb.al, %._crit_edge127.i
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.cv = load i8, ptr %i.cu, align 1, !range !12, !noalias !914, !noundef !4
  %i.cw = trunc nuw i8 %i.cv to i1
  br i1 %i.cw, label %bb.ar, label %bb.aq

bb.al:                                            ; preds = %._crit_edge127.i
  %storemerge.sroa.sel58.v.sroa.sel.v = select i1 %.not, ptr %i.ak, ptr %i.z
  %storemerge.sroa.sel58.v.sroa.sel = getelementptr inbounds nuw i8, ptr %storemerge.sroa.sel58.v.sroa.sel.v, i64 96
  %i.cx = load ptr, ptr %storemerge.sroa.sel58.v.sroa.sel, align 8, !noalias !914, !noundef !4 ; 2 uses
  %.not69.i = icmp eq ptr %i.cx, null
  br i1 %.not69.i, label %._crit_edge129.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %storemerge.sroa.sel55.v.sroa.sel.v = select i1 %.not, ptr %i.ak, ptr %i.z
  %storemerge.sroa.sel55.v.sroa.sel = getelementptr inbounds nuw i8, ptr %storemerge.sroa.sel55.v.sroa.sel.v, i64 104
  %i.cy = load i64, ptr %storemerge.sroa.sel55.v.sroa.sel, align 8, !noalias !914
  %i.cz = invoke noundef align 8 ptr @_RINvYINtNtCsiWcPrHiWZDL_10serde_json3ser8CompoundNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorNtB6_16CompactFormatterENtNtCs6SYjS1KFWza_10serde_core3ser12SerializeMap15serialize_entryeeECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cx, i64 noundef %i.cy)
          to label %bb.an unwind label %bb.ab, !noalias !914 ; 2 uses

bb.an:                                            ; preds = %bb.am
  %.not70.i = icmp eq ptr %i.cz, null
  br i1 %.not70.i, label %._crit_edge129.i, label %bb.ao

bb.ao:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsarFSTFZzLuM_11xet_runtime.exit103.i, %bb.ck, %bb.ba, %bb.at, %bb.an, %bb.ak, %bb.ah, %bb.ac
  %.sroa.0.0.i = phi ptr [ %i.cl, %bb.ah ], [ %i.cz, %bb.an ], [ %i.ct, %bb.ak ], [ %i.bv, %bb.ac ], [ %i.dh, %bb.at ], [ %.sroa.0.1.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsarFSTFZzLuM_11xet_runtime.exit103.i ], [ %i.fb, %bb.ck ], [ %i.do, %bb.ba ]
  %i.da = load ptr, ptr %i.v, align 8, !alias.scope !929, !noalias !914, !noundef !4
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtB10_7sharded8RegistryEEECsarFSTFZzLuM_11xet_runtime.exit96.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dc = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  invoke void @_RNvXs6_NtCskeoOuuhwsQF_12sharded_slab4poolINtB5_3RefNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7sharded9DataInnerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dc)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtB10_7sharded8RegistryEEECsarFSTFZzLuM_11xet_runtime.exit96.i unwind label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtB10_7sharded8RegistryEEECsarFSTFZzLuM_11xet_runtime.exit96.i: ; preds = %bb.ap, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !914
  br label %.thread

bb.aq:                                            ; preds = %bb.at, %bb.ar, %._crit_edge129.i
  %i.dd = load ptr, ptr %i.v, align 8, !noalias !914 ; 2 uses
  %.not72.i = icmp ne ptr %i.dd, null
  %or.cond.not.i = select i1 %i.ay, i1 %.not72.i, i1 false
  br i1 %or.cond.not.i, label %bb.av, label %bb.au

bb.ar:                                            ; preds = %._crit_edge129.i
  %storemerge.sroa.sel52.v.sroa.sel.v = select i1 %.not, ptr %i.ak, ptr %i.z
  %storemerge.sroa.sel52.v.sroa.sel = getelementptr inbounds nuw i8, ptr %storemerge.sroa.sel52.v.sroa.sel.v, i64 8
  %i.de = load i32, ptr %storemerge.sroa.sel52.v.sroa.sel, align 8, !range !27, !noalias !914, !noundef !4
  %i.df = trunc nuw i32 %i.de to i1
  br i1 %i.df, label %bb.as, label %bb.aq

bb.as:                                            ; preds = %bb.ar
  %storemerge.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %i.ak, ptr %i.z
  %storemerge.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %storemerge.sroa.sel.v.sroa.sel.v, i64 12
  %i.dg = load i32, ptr %storemerge.sroa.sel.v.sroa.sel, align 4, !noalias !914
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !914
  store i32 %i.dg, ptr %i.r, align 4, !noalias !914
  %i.dh = invoke noundef align 8 ptr @_RINvYINtNtCsiWcPrHiWZDL_10serde_json3ser8CompoundNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorNtB6_16CompactFormatterENtNtCs6SYjS1KFWza_10serde_core3ser12SerializeMap15serialize_entryemECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 11, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.r)
          to label %bb.at unwind label %bb.ab, !noalias !914 ; 2 uses

bb.at:                                            ; preds = %bb.as
  %.not71.i = icmp eq ptr %i.dh, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !914
  br i1 %.not71.i, label %bb.aq, label %bb.ao

bb.au:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorEECsarFSTFZzLuM_11xet_runtime.exit.i, %bb.aq
  %i.di = phi ptr [ %.pre133.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorEECsarFSTFZzLuM_11xet_runtime.exit.i ], [ %i.dd, %bb.aq ]
  %.not74.i = icmp ne ptr %i.di, null
  %or.cond85.not.i = select i1 %i.bb, i1 %.not74.i, i1 false
  br i1 %or.cond85.not.i, label %bb.az, label %bb.ay

bb.av:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !914
  store ptr %i.v, ptr %i.q, align 8, !noalias !914
  %i.dj = invoke noundef align 8 ptr @_RINvYINtNtCsiWcPrHiWZDL_10serde_json3ser8CompoundNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorNtB6_16CompactFormatterENtNtCs6SYjS1KFWza_10serde_core3ser12SerializeMap15serialize_entryeINtNtNtBP_6format4json16SerializableSpanNtNtNtBR_8registry7sharded8RegistryNtB3j_10JsonFieldsEECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.q)
          to label %bb.aw unwind label %bb.ab, !noalias !914 ; 2 uses

bb.aw:                                            ; preds = %bb.av
  %.not73.i = icmp eq ptr %i.dj, null
  br i1 %.not73.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorEECsarFSTFZzLuM_11xet_runtime.exit.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorECsarFSTFZzLuM_11xet_runtime(ptr nonnull %i.dj)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorEECsarFSTFZzLuM_11xet_runtime.exit.i unwind label %bb.ab, !noalias !914

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorEECsarFSTFZzLuM_11xet_runtime.exit.i: ; preds = %bb.ax, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !914
  %.pre133.i = load ptr, ptr %i.v, align 8, !noalias !914
  br label %bb.au

bb.ay:                                            ; preds = %bb.ba, %bb.au
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.dl = load i8, ptr %i.dk, align 1, !range !12, !noalias !914, !noundef !4
  %i.dm = trunc nuw i8 %i.dl to i1
  br i1 %i.dm, label %bb.bc, label %bb.bb

bb.az:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !914
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.dn, ptr %i.p, align 8, !noalias !914
  %i.do = invoke noundef align 8 ptr @_RINvYINtNtCsiWcPrHiWZDL_10serde_json3ser8CompoundNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorNtB6_16CompactFormatterENtNtCs6SYjS1KFWza_10serde_core3ser12SerializeMap15serialize_entryeINtNtNtBP_6format4json19SerializableContextNtNtNtBR_8registry7sharded8RegistryNtB3j_10JsonFieldsEECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p)
          to label %bb.ba unwind label %bb.ab, !noalias !914 ; 2 uses

bb.ba:                                            ; preds = %bb.az
  %.not75.i = icmp eq ptr %i.do, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !914
  br i1 %.not75.i, label %bb.ay, label %bb.ao

bb.bb:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsarFSTFZzLuM_11xet_runtime.exit101.i, %bb.ay
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.dq = load i8, ptr %i.dp, align 1, !range !12, !noalias !914, !noundef !4
  %i.dr = trunc nuw i8 %i.dq to i1
  br i1 %i.dr, label %bb.by, label %bb.bx

bb.bc:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !914
  %i.ds = invoke noundef nonnull ptr @_RNvNtNtCsG258MDvU3F_3std6thread7current7current()
          to label %bb.bd unwind label %bb.ab, !noalias !914

bb.bd:                                            ; preds = %bb.bc
  store ptr %i.ds, ptr %i.o, align 8, !noalias !914
  %i.dt = invoke { ptr, i64 } @_RNvMs_NtNtCsG258MDvU3F_3std6thread6threadNtB4_6Thread4name(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o)
          to label %bb.bh unwind label %bb.bg, !noalias !914 ; 2 uses

bb.be:                                            ; preds = %bb.bl, %bb.bg
  %.pn.i = phi { ptr, i32 } [ %i.dx, %bb.bg ], [ %i.ei, %bb.bl ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !930)
  call void @llvm.experimental.noalias.scope.decl(metadata !931)
  call void @llvm.experimental.noalias.scope.decl(metadata !932)
  call void @llvm.experimental.noalias.scope.decl(metadata !933)
  %i.du = load ptr, ptr %i.o, align 8, !alias.scope !934, !noalias !914, !nonnull !4, !noundef !4
  %i.dv = atomicrmw add ptr %i.du, i64 -1 release, align 8, !noalias !935
  %i.dw = icmp eq i64 %i.dv, 1
  br i1 %i.dw, label %bb.bf, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs8QAzUGy1spU_13tracing_serde15SerdeMapVisitorINtNtCsiWcPrHiWZDL_10serde_json3ser8CompoundNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorNtB1r_16CompactFormatterEEECsarFSTFZzLuM_11xet_runtime.exit.i

bb.bf:                                            ; preds = %bb.be
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #19
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs8QAzUGy1spU_13tracing_serde15SerdeMapVisitorINtNtCsiWcPrHiWZDL_10serde_json3ser8CompoundNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorNtB1r_16CompactFormatterEEECsarFSTFZzLuM_11xet_runtime.exit.i unwind label %bb.bv, !noalias !914

bb.bg:                                            ; preds = %bb.bo, %bb.bn, %bb.bk, %bb.bi, %bb.bd
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.bh:                                            ; preds = %bb.bd
  %i.dy = extractvalue { ptr, i64 } %i.dt, 0      ; 2 uses
  %.not76.i = icmp eq ptr %i.dy, null
  br i1 %.not76.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.dz = extractvalue { ptr, i64 } %i.dt, 1
  %i.ea = invoke noundef align 8 ptr @_RINvYINtNtCsiWcPrHiWZDL_10serde_json3ser8CompoundNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorNtB6_16CompactFormatterENtNtCs6SYjS1KFWza_10serde_core3ser12SerializeMap15serialize_entryeeECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dy, i64 noundef %i.dz)
          to label %bb.bw unwind label %bb.bg, !noalias !914 ; 2 uses

bb.bj:                                            ; preds = %bb.bh
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ec = load i8, ptr %i.eb, align 1, !range !12, !noalias !914, !noundef !4
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %bb.bq, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !914
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !914
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !914
  %i.ee = load ptr, ptr %i.o, align 8, !noalias !914, !nonnull !4, !noundef !4
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eg = load i64, ptr %i.ef, align 8, !range !28, !noalias !914, !noundef !4
  store i64 %i.eg, ptr %i.l, align 8, !noalias !914
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !914
  store ptr %i.l, ptr %i.k, align 8, !noalias !914
  %.sroa.453.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs6_NtNtCsG258MDvU3F_3std6thread2idNtB5_8ThreadIdNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.453.0..sroa_idx.i, align 8, !noalias !914
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noundef nonnull @14, ptr noundef nonnull %i.k)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsarFSTFZzLuM_11xet_runtime.exit.i unwind label %bb.bg, !noalias !914

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsarFSTFZzLuM_11xet_runtime.exit.i: ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !914
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !914
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !914
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !914
  %i.eh = invoke noundef align 8 ptr @_RINvYINtNtCsiWcPrHiWZDL_10serde_json3ser8CompoundNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorNtB6_16CompactFormatterENtNtCs6SYjS1KFWza_10serde_core3ser12SerializeMap15serialize_entryeNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 10, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n)
          to label %bb.bm unwind label %bb.bl, !noalias !914 ; 2 uses

bb.bl:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsarFSTFZzLuM_11xet_runtime.exit.i
  %i.ei = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #21
          to label %bb.be unwind label %bb.bv, !noalias !914

bb.bm:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsarFSTFZzLuM_11xet_runtime.exit.i
  %.not77.i = icmp eq ptr %i.eh, null
  br i1 %.not77.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.bs unwind label %bb.bg, !noalias !914

bb.bo:                                            ; preds = %bb.bm
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.bp unwind label %bb.bg, !noalias !914

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !914
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bw, %bb.bp, %bb.bj
  call void @llvm.experimental.noalias.scope.decl(metadata !936)
  call void @llvm.experimental.noalias.scope.decl(metadata !937)
  call void @llvm.experimental.noalias.scope.decl(metadata !938)
  call void @llvm.experimental.noalias.scope.decl(metadata !939)
  %i.ej = load ptr, ptr %i.o, align 8, !alias.scope !940, !noalias !914, !nonnull !4, !noundef !4
  %i.ek = atomicrmw add ptr %i.ej, i64 -1 release, align 8, !noalias !941
  %i.el = icmp eq i64 %i.ek, 1
  br i1 %i.el, label %bb.br, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsarFSTFZzLuM_11xet_runtime.exit101.i

bb.br:                                            ; preds = %bb.bq
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #19
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsarFSTFZzLuM_11xet_runtime.exit101.i unwind label %bb.ab, !noalias !914

bb.bs:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !914
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bw, %bb.bs
  %.sroa.0.1.i = phi ptr [ %i.eh, %bb.bs ], [ %i.ea, %bb.bw ]
  call void @llvm.experimental.noalias.scope.decl(metadata !942)
  call void @llvm.experimental.noalias.scope.decl(metadata !943)
  call void @llvm.experimental.noalias.scope.decl(metadata !944)
  call void @llvm.experimental.noalias.scope.decl(metadata !945)
  %i.em = load ptr, ptr %i.o, align 8, !alias.scope !946, !noalias !914, !nonnull !4, !noundef !4
  %i.en = atomicrmw add ptr %i.em, i64 -1 release, align 8, !noalias !947
  %i.eo = icmp eq i64 %i.en, 1
  br i1 %i.eo, label %bb.bu, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsarFSTFZzLuM_11xet_runtime.exit103.i

bb.bu:                                            ; preds = %bb.bt
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #19
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsarFSTFZzLuM_11xet_runtime.exit103.i unwind label %bb.ab, !noalias !914

bb.bv:                                            ; preds = %bb.cd, %bb.cb, %bb.bl, %bb.bf, %bb.af, %bb.aa
  %i.ep = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !914
  unreachable

bb.bw:                                            ; preds = %bb.bi
  %.not79.i = icmp eq ptr %i.ea, null
  br i1 %.not79.i, label %bb.bq, label %bb.bt

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsarFSTFZzLuM_11xet_runtime.exit101.i: ; preds = %bb.br, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !914
  br label %bb.bb

bb.bx:                                            ; preds = %bb.ch, %bb.bb
  %i.eq = load ptr, ptr %i.x, align 8, !noalias !914, !nonnull !4, !align !5, !noundef !4
  %i.er = load i8, ptr %i.ao, align 8, !range !22, !noalias !914, !noundef !4
  %i.es = invoke fastcc noundef align 8 ptr @_RNvXs6_NtCsiWcPrHiWZDL_10serde_json3serINtB5_8CompoundNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorNtB5_16CompactFormatterENtNtCs6SYjS1KFWza_10serde_core3ser12SerializeMap3endCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(16) %i.eq, i8 noundef %i.er)
          to label %bb.ci unwind label %bb.ab, !noalias !914 ; 2 uses

bb.by:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !914
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !914
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !914
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !914
  %i.et = invoke noundef nonnull ptr @_RNvNtNtCsG258MDvU3F_3std6thread7current7current()
          to label %bb.bz unwind label %bb.ab, !noalias !914 ; 4 uses

bb.bz:                                            ; preds = %bb.by
end_hunk_1
