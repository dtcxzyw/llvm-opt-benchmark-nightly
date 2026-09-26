Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.09?download=true
inline.NumInlined: 2082
inline.NumDeleted: 649
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_RNvNtNtCs8frGy5WneL6_4fish8builtins4jobs4jobs:bb.a
  br i1 %i.bh, label %bb.i, label %.invoke399

bb.i:                                             ; preds = %bb.h
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.au ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !nonnull !4, !align !24, !noundef !4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !noundef !4
  invoke void @_RNvNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc27builtin_unexpected_argument(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.w, i64 noundef %i.y, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.bj, i64 noundef %i.bl, i1 noundef zeroext true)
          to label %.loopexit163 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %.loopexit541
  %i.bm = icmp ult i64 %i.ax, %3
  br i1 %i.bm, label %bb.k, label %.invoke399

bb.k:                                             ; preds = %bb.j
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.ax ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !nonnull !4, !align !24, !noundef !4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !noundef !4
  invoke void @_RNvNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc22builtin_unknown_option(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.w, i64 noundef %i.y, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.bo, i64 noundef %i.bq, i1 noundef zeroext true)
          to label %.loopexit163 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit163:                                     ; preds = %.backedge, %.critedge, %bb.cc, %.loopexit187.thread, %bb.by, %bb.aw, %bb.ak, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE6filterNCNvNtNtB1h_8builtins4jobs4jobss_0EB1h_.exit.thread, %bb.bl, %bb.k, %bb.i, %bb.g, %.loopexit538
  %.sroa.161.1 = phi i64 [ 8589934593, %bb.k ], [ 4294967297, %.loopexit187.thread ], [ 4294967297, %bb.by ], [ 4294967297, %bb.bl ], [ 8589934592, %.loopexit538 ], [ 8589934593, %bb.i ], [ 8589934593, %bb.g ], [ %i.fu, %bb.aw ], [ 8589934593, %bb.ak ], [ 4294967297, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE6filterNCNvNtNtB1h_8builtins4jobs4jobss_0EB1h_.exit.thread ], [ 0, %bb.cc ], [ 4294967297, %.critedge ], [ 4294967297, %.backedge ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.v)
          to label %.sink.split unwind label %bb.l

bb.l:                                             ; preds = %.loopexit163
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.v)
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36
  unreachable

common.resume:                                    ; preds = %.body, %bb.bm, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.gz, %bb.bm ], [ %i.br, %bb.l ], [ %.pn103, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.n:                                             ; preds = %.loopexit533
  %i.bt = load i64, ptr %i.ai, align 8, !noundef !4 ; 5 uses
  %i.bu = icmp ult i64 %i.bt, %3
  br i1 %i.bu, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bv = load i64, ptr %i.aa, align 8, !noundef !4 ; 5 uses
  %i.bw = icmp ugt i64 %i.bt, %i.bv
  br i1 %i.bw, label %bb.v, label %bb.u, !prof !15

bb.p:                                             ; preds = %bb.n
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.ca, 3
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 %.idx
  %i.cc = icmp eq i64 %i.ca, 0
  br i1 %i.cc, label %.loopexit187.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.p
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 39
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph, %_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job10is_visible.exit.thread
  %.sroa.03.0264 = phi i8 [ 0, %.lr.ph ], [ %.sroa.03.1, %_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job10is_visible.exit.thread ] ; 4 uses
  %.sroa.045.0263 = phi ptr [ %i.by, %.lr.ph ], [ %i.ce, %_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job10is_visible.exit.thread ] ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.045.0263, i64 8 ; 2 uses
  %i.cf = load ptr, ptr %.sroa.045.0263, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 48
  %i.ch = load i64, ptr %i.cg, align 8, !noundef !4 ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %.invoke401, label %.lr.ph463, !prof !15

.lr.ph463:                                        ; preds = %bb.q
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 40
  %i.ck = load ptr, ptr %i.cj, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.idx470 = mul nuw nsw i64 %i.ch, 224
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.idx470
  br label %bb.s

bb.r:                                             ; preds = %.noexc114
  %i.cm = getelementptr inbounds nuw i8, ptr %i.co, i64 224 ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.cl
  br i1 %i.cn, label %_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job10is_visible.exit.thread, label %bb.s

bb.s:                                             ; preds = %.lr.ph463, %bb.r
  %i.co = phi ptr [ %i.ck, %.lr.ph463 ], [ %i.cm, %bb.r ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 215
  %i.cq = invoke noundef zeroext i1 @_RNvMNtCs8frGy5WneL6_4fish13global_safetyNtB2_17RelaxedAtomicBool4load(ptr noundef nonnull %i.cp)
          to label %.noexc114 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc114:                                        ; preds = %bb.s
  br i1 %i.cq, label %bb.r, label %_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job12is_completed.exit.i

.invoke401:                                       ; preds = %bb.q, %.lr.ph269
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @279, i64 noundef 46, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @280) #38
          to label %.cont402 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont402:                                         ; preds = %.invoke401
  unreachable

_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job12is_completed.exit.i: ; preds = %.noexc114
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cf, i64 72
  %i.cs = load i64, ptr %i.cr, align 8, !noundef !4
  %i.ct = icmp ult i64 %i.cs, 9223372036854775807
  br i1 %i.ct, label %_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job14is_constructed.exit.i, label %.invoke403, !prof !14

.invoke403:                                       ; preds = %_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job12is_completed.exit.i, %_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job12is_completed.exit.i136
  invoke void @_RNvNtCs3oUPovFnLWP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @283) #38
          to label %.cont404 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont404:                                         ; preds = %.invoke403
  unreachable

_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job14is_constructed.exit.i: ; preds = %_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job12is_completed.exit.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cf, i64 80
  %i.cv = load i8, ptr %i.cu, align 8, !range !7, !noundef !4
  %i.cw = trunc nuw i8 %i.cv to i1
  br i1 %i.cw, label %_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job10is_visible.exit, label %_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job10is_visible.exit.thread

_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job10is_visible.exit: ; preds = %_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job14is_constructed.exit.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cf, i64 83
  %i.cy = load i8, ptr %i.cx, align 1, !range !7, !noundef !4
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job10is_visible.exit.thread, label %bb.t

bb.t:                                             ; preds = %_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job10is_visible.exit
  %i.da = load ptr, ptr %.sroa.045.0263, align 8, !nonnull !4, !noundef !4
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = trunc nuw i8 %.sroa.03.0264 to i1
  %i.dd = load i8, ptr %i.cd, align 1, !range !7
  %i.de = trunc nuw i8 %i.dd to i1
  %i.df = select i1 %i.dc, i1 true, i1 %i.de
  %.sroa.048.0 = xor i1 %i.df, true
  invoke fastcc void @_RNvNtNtCs8frGy5WneL6_4fish8builtins4jobs18builtin_jobs_print(ptr noundef nonnull align 8 %i.db, i8 noundef %.ph, i1 noundef zeroext %.sroa.048.0, ptr noalias nofree noundef align 8 dereferenceable(48) %1)
          to label %_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job10is_visible.exit.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job10is_visible.exit.thread: ; preds = %bb.r, %_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job14is_constructed.exit.i, %bb.t, %_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job10is_visible.exit
  %.sroa.03.1 = phi i8 [ %.sroa.03.0264, %_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job10is_visible.exit ], [ 1, %bb.t ], [ %.sroa.03.0264, %_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job14is_constructed.exit.i ], [ %.sroa.03.0264, %bb.r ] ; 2 uses
  %i.dg = icmp eq ptr %i.ce, %i.cb
  br i1 %i.dg, label %.loopexit187, label %bb.q

.loopexit187:                                     ; preds = %_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job10is_visible.exit.thread
  %i.dh = trunc nuw i8 %.sroa.03.1 to i1
  br i1 %i.dh, label %.loopexit187.thread347, label %.loopexit187.thread

bb.u:                                             ; preds = %bb.o
  %i.di = load ptr, ptr %i.z, align 8, !nonnull !4, !align !13, !noundef !4 ; 2 uses
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr %i.di, i64 %i.bv
  %i.dk = icmp samesign eq i64 %i.bt, %i.bv
  br i1 %i.dk, label %.loopexit187.thread, label %.lr.ph266.preheader

.lr.ph266.preheader:                              ; preds = %bb.u
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %i.di, i64 %i.bt
  br label %.lr.ph266

bb.v:                                             ; preds = %bb.o
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %i.bt, i64 noundef %i.bv, i64 noundef %i.bv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @571) #40
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph266:                                        ; preds = %.lr.ph266.preheader, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit124
  %.sroa.010.0265 = phi ptr [ %i.dm, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit124 ], [ %i.dl, %.lr.ph266.preheader ] ; 7 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.010.0265, i64 16 ; 2 uses
  %i.dn = load ptr, ptr %.sroa.010.0265, align 8, !nonnull !4, !align !24, !noundef !4
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.010.0265, i64 8 ; 5 uses
  %i.dp = load i64, ptr %i.do, align 8, !noundef !4
  %i.dq = invoke noundef i32 @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.dn, i64 noundef %i.dp, i64 noundef 0)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit

bb.w:                                             ; preds = %.lr.ph266
  %i.dr = icmp eq i32 %i.dq, 37
  br i1 %i.dr, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ds = load i64, ptr %i.do, align 8, !noundef !4 ; 2 uses
  %i.dt = icmp eq i64 %i.ds, 0
  br i1 %i.dt, label %bb.z, label %bb.aa, !prof !15

bb.y:                                             ; preds = %bb.w
  %i.du = load ptr, ptr %.sroa.010.0265, align 8, !nonnull !4, !align !24, !noundef !4
  %i.dv = load i64, ptr %i.do, align 8, !noundef !4
  %i.dw = invoke { i32, i32 } @_RNvNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc9parse_pid(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.w, i64 noundef %i.y, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.du, i64 noundef %i.dv)
          to label %bb.av unwind label %.loopexit.split-lp.loopexit ; 2 uses

bb.z:                                             ; preds = %bb.x
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @186, i64 noundef 19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @566) #40
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aa:                                            ; preds = %bb.x
  %i.dx = load ptr, ptr %.sroa.010.0265, align 8, !nonnull !4, !align !24, !noundef !4
  %i.dy = add i64 %i.ds, -1
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 4
  %i.ea = invoke i64 @_RNvNtNtCs8frGy5WneL6_4fish5wutil6wcstoi11fish_wcstoi(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.dz, i64 noundef %i.dy)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit ; 2 uses

bb.ab:                                            ; preds = %bb.aa
  %4 = trunc i64 %i.ea to i1                      ; 2 uses
  %.sroa.572.0.extract.shift = lshr i64 %i.ea, 32
  %.sroa.572.0.extract.trunc = trunc nuw i64 %.sroa.572.0.extract.shift to i32
  %.sroa.516.0 = select i1 %4, i32 undef, i32 %.sroa.572.0.extract.trunc ; 2 uses
  %5 = icmp slt i32 %.sroa.516.0, 0
  %narrow.i.not = select i1 %4, i1 true, i1 %5
  br i1 %narrow.i.not, label %bb.ac, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_3num7nonzero7NonZeromENtNtBM_5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_3num7nonzero7NonZeromENtNtBM_5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit: ; preds = %bb.ab
  %i.eb = invoke noundef ptr @_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser11job_with_id(ptr noundef nonnull align 8 %0, i32 noundef %.sroa.516.0)
          to label %bb.al unwind label %.loopexit.split-lp.loopexit

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store i64 0, ptr %i.t, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.459.0..sroa_idx, align 8
  %.sroa.560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 0, ptr %.sroa.560.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.ec = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @564, ptr %i.ec, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 26, ptr %i.ed, align 8
  store i64 -1, ptr %i.r, align 8
  %i.ee = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r)
          to label %bb.ad unwind label %.loopexit.split-lp176.a ; 2 uses

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit: ; preds = %bb.ae, %.loopexit175.a, %.loopexit.split-lp176.a
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp178.a, %.loopexit.split-lp176.a ], [ %lpad.loopexit177.a, %.loopexit175.a ], [ %i.ej, %bb.ae ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r) #35
          to label %bb.ah unwind label %.loopexit.split-lp165.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit175.a:                                   ; preds = %.noexc118.preheader
  %lpad.loopexit177.a = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit

.loopexit.split-lp176.a:                          ; preds = %bb.ac
  %lpad.loopexit.split-lp178.a = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit

bb.ad:                                            ; preds = %bb.ac
  %i.ef = extractvalue { ptr, i64 } %i.ee, 0
  %i.eg = extractvalue { ptr, i64 } %i.ee, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.eh = load ptr, ptr %.sroa.010.0265, align 8, !nonnull !4, !align !24, !noundef !4
  %i.ei = load i64, ptr %i.do, align 8, !noundef !4
  store i64 1, ptr %i.q, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.eh, ptr %.sroa.420.0..sroa_idx, align 8
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.ei, ptr %.sroa.521.0..sroa_idx, align 8
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtB12_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.ef, i64 noundef %i.eg, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @39, ptr noalias nofree noundef nonnull align 8 %i.q, i64 noundef 1)
          to label %bb.af unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ag, %bb.ad
  %i.ej = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit unwind label %.loopexit.split-lp165.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.af:                                            ; preds = %bb.ad
  call void @llvm.experimental.noalias.scope.decl(metadata !3822)
  %i.ek = load i8, ptr %i.s, align 8, !range !7, !alias.scope !3822, !noalias !3823, !noundef !4
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %bb.ag, label %.noexc118.preheader, !prof !15

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3824
  %i.em = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.en = load i8, ptr %i.em, align 1, !range !19, !alias.scope !3822, !noalias !3823, !noundef !4
  store i8 %i.en, ptr %i.c, align 1, !noalias !3824
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @77, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @84, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @565) #38
          to label %.noexc108 unwind label %bb.ae

.noexc108:                                        ; preds = %bb.ag
  unreachable

.noexc118.preheader:                              ; preds = %bb.af
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit119 unwind label %.loopexit175.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit119: ; preds = %.noexc118.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r)
          to label %bb.aj unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ai, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit
  %.pn92 = phi { ptr, i32 } [ %i.eo, %bb.ai ], [ %.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.t) #35
          to label %.body unwind label %.loopexit.split-lp165.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ai:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit119
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.aj:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr %i.w, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !3825, !noalias !3826
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store i64 %i.y, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !3825, !noalias !3826
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !3825, !noalias !3826
  %.sroa.8146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  store ptr null, ptr %.sroa.8146.0..sroa_idx, align 8, !alias.scope !3825, !noalias !3826
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  store i8 0, ptr %.sroa.9.0..sroa_idx, align 8, !alias.scope !3825, !noalias !3826
  invoke void @_RNvMNtNtNtCs8frGy5WneL6_4fish8builtins6shared5errorNtB2_5Error6finish(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.u, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.ak unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %.loopexit163

.loopexit.split-lp165.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ae, %bb.bq, %bb.bf, %.body, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit, %bb.ah, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit126, %bb.bi, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit132, %bb.bt, %bb.bw, %bb.ba
  %lpad.loopexit.split-lp410 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.al:                                            ; preds = %bb.ax, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_3num7nonzero7NonZeromENtNtBM_5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit
  %.sroa.038.0 = phi ptr [ %i.eb, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_3num7nonzero7NonZeromENtNtBM_5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit ], [ %i.fv, %bb.ax ] ; 6 uses
  %.not.i = icmp eq ptr %.sroa.038.0, null
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE6filterNCNvNtNtB1h_8builtins4jobs4jobss_0EB1h_.exit.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.sroa.038.0, ptr %i.b, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.038.0, i64 48
  %i.eq = load i64, ptr %i.ep, align 8, !noundef !4 ; 2 uses
  %i.er = icmp eq i64 %i.eq, 0
  br i1 %i.er, label %bb.ap, label %.lr.ph464, !prof !15

.lr.ph464:                                        ; preds = %bb.am
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.038.0, i64 40
  %i.et = load ptr, ptr %i.es, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.idx471 = mul nuw nsw i64 %i.eq, 224
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 %.idx471
  br label %bb.ao

bb.an:                                            ; preds = %.noexc.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ex, i64 224 ; 2 uses
  %i.ew = icmp eq ptr %i.ev, %i.eu
  br i1 %i.ew, label %_RNCNvNtNtCs8frGy5WneL6_4fish8builtins4jobs4jobss_0B7_.exit.thread.loopexit.i, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph464, %bb.an
  %i.ex = phi ptr [ %i.et, %.lr.ph464 ], [ %i.ev, %bb.an ] ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 215
  %i.ez = invoke noundef zeroext i1 @_RNvMNtCs8frGy5WneL6_4fish13global_safetyNtB2_17RelaxedAtomicBool4load(ptr noundef nonnull %i.ey)
          to label %.noexc.i unwind label %.loopexit.i

.noexc.i:                                         ; preds = %bb.ao
  br i1 %i.ez, label %bb.an, label %_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job12is_completed.exit.i.i

bb.ap:                                            ; preds = %bb.am
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @279, i64 noundef 46, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @280) #38
          to label %.noexc4.i unwind label %.loopexit.split-lp.i

.noexc4.i:                                        ; preds = %bb.ap
  unreachable

_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job12is_completed.exit.i.i: ; preds = %.noexc.i
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.038.0, i64 72
  %i.fb = load i64, ptr %i.fa, align 8, !noundef !4
  %i.fc = icmp ult i64 %i.fb, 9223372036854775807
  br i1 %i.fc, label %_RNCNvNtNtCs8frGy5WneL6_4fish8builtins4jobs4jobss_0B7_.exit.i, label %bb.aq, !prof !14

bb.aq:                                            ; preds = %_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job12is_completed.exit.i.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @283) #38
          to label %.noexc5.i unwind label %.loopexit.split-lp.i

.noexc5.i:                                        ; preds = %bb.aq
  unreachable

.loopexit.i:                                      ; preds = %bb.ao
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

.loopexit.split-lp.i:                             ; preds = %bb.aq, %bb.ap
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ar:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3827)
  call void @llvm.experimental.noalias.scope.decl(metadata !3828)
  %i.fd = load ptr, ptr %i.b, align 8, !alias.scope !3829, !nonnull !4, !noundef !4 ; 2 uses
  %i.fe = load i64, ptr %i.fd, align 8, !noalias !3829, !noundef !4
  %i.ff = add i64 %i.fe, -1                       ; 2 uses
  store i64 %i.ff, ptr %i.fd, align 8, !noalias !3829
  %i.fg = icmp eq i64 %i.ff, 0
  br i1 %i.fg, label %bb.as, label %.body

bb.as:                                            ; preds = %bb.ar
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtCs8frGy5WneL6_4fish4proc3JobE9drop_slowBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #37
          to label %.body unwind label %bb.au

_RNCNvNtNtCs8frGy5WneL6_4fish8builtins4jobs4jobss_0B7_.exit.i: ; preds = %_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job12is_completed.exit.i.i
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.038.0, i64 80
  %i.fi = load i8, ptr %i.fh, align 8, !range !7, !noundef !4
  %i.fj = trunc nuw i8 %i.fi to i1
  %.pre9.i = load ptr, ptr %i.b, align 8          ; 4 uses
  br i1 %i.fj, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE6filterNCNvNtNtB1h_8builtins4jobs4jobss_0EB1h_.exit, label %_RNCNvNtNtCs8frGy5WneL6_4fish8builtins4jobs4jobss_0B7_.exit.thread.i

_RNCNvNtNtCs8frGy5WneL6_4fish8builtins4jobs4jobss_0B7_.exit.thread.loopexit.i: ; preds = %bb.an
  %.pre.i = load ptr, ptr %i.b, align 8, !alias.scope !3830
  br label %_RNCNvNtNtCs8frGy5WneL6_4fish8builtins4jobs4jobss_0B7_.exit.thread.i

_RNCNvNtNtCs8frGy5WneL6_4fish8builtins4jobs4jobss_0B7_.exit.thread.i: ; preds = %_RNCNvNtNtCs8frGy5WneL6_4fish8builtins4jobs4jobss_0B7_.exit.i, %_RNCNvNtNtCs8frGy5WneL6_4fish8builtins4jobs4jobss_0B7_.exit.thread.loopexit.i
  %i.fk = phi ptr [ %.pre.i, %_RNCNvNtNtCs8frGy5WneL6_4fish8builtins4jobs4jobss_0B7_.exit.thread.loopexit.i ], [ %.pre9.i, %_RNCNvNtNtCs8frGy5WneL6_4fish8builtins4jobs4jobss_0B7_.exit.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3831)
  call void @llvm.experimental.noalias.scope.decl(metadata !3832)
  %i.fl = load i64, ptr %i.fk, align 8, !noalias !3830, !noundef !4
  %i.fm = add i64 %i.fl, -1                       ; 2 uses
  store i64 %i.fm, ptr %i.fk, align 8, !noalias !3830
  %i.fn = icmp eq i64 %i.fm, 0
  br i1 %i.fn, label %bb.at, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE6filterNCNvNtNtB1h_8builtins4jobs4jobss_0EB1h_.exit.thread159

bb.at:                                            ; preds = %_RNCNvNtNtCs8frGy5WneL6_4fish8builtins4jobs4jobss_0B7_.exit.thread.i
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtCs8frGy5WneL6_4fish4proc3JobE9drop_slowBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #37
          to label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE6filterNCNvNtNtB1h_8builtins4jobs4jobss_0EB1h_.exit.thread159 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.au:                                            ; preds = %bb.as
  %i.fo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.av:                                            ; preds = %bb.y
  %i.fp = extractvalue { i32, i32 } %i.dw, 0
  %i.fq = extractvalue { i32, i32 } %i.dw, 1      ; 2 uses
  %i.fr = trunc i32 %i.fp to i1
  br i1 %i.fr, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.fs = zext i32 %i.fq to i64
  %i.ft = shl nuw i64 %i.fs, 32
  %i.fu = or disjoint i64 %i.ft, 1
  br label %.loopexit163

bb.ax:                                            ; preds = %bb.av
  %i.fv = invoke noundef ptr @_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser16job_get_from_pid(ptr noundef nonnull align 8 %0, i32 noundef %i.fq)
          to label %bb.al unwind label %.loopexit.split-lp.loopexit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE6filterNCNvNtNtB1h_8builtins4jobs4jobss_0EB1h_.exit.thread159: ; preds = %_RNCNvNtNtCs8frGy5WneL6_4fish8builtins4jobs4jobss_0B7_.exit.thread.i, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE6filterNCNvNtNtB1h_8builtins4jobs4jobss_0EB1h_.exit.thread

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE6filterNCNvNtNtB1h_8builtins4jobs4jobss_0EB1h_.exit: ; preds = %_RNCNvNtNtCs8frGy5WneL6_4fish8builtins4jobs4jobss_0B7_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not94 = icmp eq ptr %.pre9.i, null
  br i1 %.not94, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE6filterNCNvNtNtB1h_8builtins4jobs4jobss_0EB1h_.exit.thread, label %bb.ay

bb.ay:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE6filterNCNvNtNtB1h_8builtins4jobs4jobss_0EB1h_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %.pre9.i, ptr %i.p, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %.pre9.i, i64 16
  invoke fastcc void @_RNvNtNtCs8frGy5WneL6_4fish8builtins4jobs18builtin_jobs_print(ptr noundef nonnull align 8 %i.fw, i8 noundef %.ph, i1 noundef zeroext false, ptr noalias nofree noundef align 8 dereferenceable(48) %1)
          to label %bb.bb unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3833)
  call void @llvm.experimental.noalias.scope.decl(metadata !3834)
  %i.fy = load ptr, ptr %i.p, align 8, !alias.scope !3835, !nonnull !4, !noundef !4 ; 2 uses
  %i.fz = load i64, ptr %i.fy, align 8, !noalias !3835, !noundef !4
  %i.ga = add i64 %i.fz, -1                       ; 2 uses
  store i64 %i.ga, ptr %i.fy, align 8, !noalias !3835
  %i.gb = icmp eq i64 %i.ga, 0
  br i1 %i.gb, label %bb.ba, label %.body

bb.ba:                                            ; preds = %bb.az
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtCs8frGy5WneL6_4fish4proc3JobE9drop_slowBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p) #37
          to label %.body unwind label %.loopexit.split-lp165.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bb:                                            ; preds = %bb.ay
  call void @llvm.experimental.noalias.scope.decl(metadata !3836)
  call void @llvm.experimental.noalias.scope.decl(metadata !3837)
  %i.gc = load ptr, ptr %i.p, align 8, !alias.scope !3838, !nonnull !4, !noundef !4 ; 2 uses
  %i.gd = load i64, ptr %i.gc, align 8, !noalias !3838, !noundef !4
  %i.ge = add i64 %i.gd, -1                       ; 2 uses
  store i64 %i.ge, ptr %i.gc, align 8, !noalias !3838
  %i.gf = icmp eq i64 %i.ge, 0
  br i1 %i.gf, label %bb.bc, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit124

bb.bc:                                            ; preds = %bb.bb
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtCs8frGy5WneL6_4fish4proc3JobE9drop_slowBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p) #37
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit124 unwind label %.loopexit.split-lp.loopexit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit124: ; preds = %bb.bb, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.gg = icmp eq ptr %i.dm, %i.dj
  br i1 %i.gg, label %.loopexit187.thread347, label %.lr.ph266

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE6filterNCNvNtNtB1h_8builtins4jobs4jobss_0EB1h_.exit.thread: ; preds = %bb.al, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE6filterNCNvNtNtB1h_8builtins4jobs4jobss_0EB1h_.exit, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE6filterNCNvNtNtB1h_8builtins4jobs4jobss_0EB1h_.exit.thread159
  %i.gh = icmp eq i8 %.ph, 4
  br i1 %i.gh, label %.loopexit163, label %bb.bd

bb.bd:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE6filterNCNvNtNtB1h_8builtins4jobs4jobss_0EB1h_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 0, ptr %i.n, align 8
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.464.0..sroa_idx, align 8
  %.sroa.565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 0, ptr %.sroa.565.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.gi = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @567, ptr %i.gi, align 8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 19, ptr %i.gj, align 8
end_hunk_0
