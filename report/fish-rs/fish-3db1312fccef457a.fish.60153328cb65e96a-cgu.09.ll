Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.09?download=true
inline.NumInlined: 2079
inline.NumDeleted: 649
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 36
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNvNtNtCs8frGy5WneL6_4fish8builtins4jobs4jobs:bb.a
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.au ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !nonnull !4, !align !24, !noundef !4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !4
  invoke void @_RNvNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc27builtin_unexpected_argument(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.w, i64 noundef %i.y, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.bg, i64 noundef %i.bi, i1 noundef zeroext true)
          to label %.loopexit163 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.j:                                             ; preds = %.loopexit551
  %i.bj = icmp ult i64 %i.ax, %3
  br i1 %i.bj, label %bb.k, label %.invoke390

.invoke392:                                       ; preds = %.loopexit551, %.loopexit550, %.loopexit549
  %i.bk = phi ptr [ @559, %.loopexit550 ], [ @557, %.loopexit549 ], [ @561, %.loopexit551 ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bk) #39
          to label %.cont393 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.cont393:                                         ; preds = %.invoke392
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.ax ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !nonnull !4, !align !24, !noundef !4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !4
  invoke void @_RNvNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc22builtin_unknown_option(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.w, i64 noundef %i.y, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.bm, i64 noundef %i.bo, i1 noundef zeroext true)
          to label %.loopexit163 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.invoke390:                                       ; preds = %bb.j, %bb.h, %bb.e
  %i.bp = phi i64 [ %i.au, %bb.h ], [ %i.ar, %bb.e ], [ %i.ax, %bb.j ]
  %i.bq = phi ptr [ @560, %bb.h ], [ @558, %bb.e ], [ @562, %bb.j ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.bp, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bq) #39
          to label %.cont391 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.cont391:                                         ; preds = %.invoke390
  unreachable

.loopexit163:                                     ; preds = %.backedge, %.critedge, %bb.ci, %.loopexit167.thread, %bb.ce, %bb.ay, %bb.am, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE6filterNCNvNtNtB1h_8builtins4jobs4jobss_0EB1h_.exit.thread, %bb.bp, %bb.k, %bb.i, %bb.g, %.loopexit548
  %.sroa.161.1 = phi i64 [ 8589934593, %bb.k ], [ 4294967297, %.loopexit167.thread ], [ 4294967297, %bb.ce ], [ 4294967297, %bb.bp ], [ 8589934592, %.loopexit548 ], [ 8589934593, %bb.i ], [ 8589934593, %bb.g ], [ %i.fw, %bb.ay ], [ 8589934593, %bb.am ], [ 4294967297, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE6filterNCNvNtNtB1h_8builtins4jobs4jobss_0EB1h_.exit.thread ], [ 0, %bb.ci ], [ 4294967297, %.critedge ], [ 4294967297, %.backedge ]
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
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

common.resume:                                    ; preds = %.body, %bb.bq, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.hc, %bb.bq ], [ %i.br, %bb.l ], [ %.pn103, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.n:                                             ; preds = %.loopexit543
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
  br i1 %i.cc, label %.loopexit167.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.p
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 39
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph, %_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job10is_visible.exit.thread
  %.sroa.03.0244 = phi i8 [ 0, %.lr.ph ], [ %.sroa.03.1, %_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job10is_visible.exit.thread ] ; 4 uses
  %.sroa.045.0243 = phi ptr [ %i.by, %.lr.ph ], [ %i.ce, %_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job10is_visible.exit.thread ] ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.045.0243, i64 8 ; 2 uses
  %i.cf = load ptr, ptr %.sroa.045.0243, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 48
  %i.ch = load i64, ptr %i.cg, align 8, !noundef !4 ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %.invoke388, label %.lr.ph460, !prof !15

.lr.ph460:                                        ; preds = %bb.q
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 40
  %i.ck = load ptr, ptr %i.cj, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.idx467 = mul nuw nsw i64 %i.ch, 224
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.idx467
  br label %bb.s

bb.r:                                             ; preds = %.noexc114
  %i.cm = getelementptr inbounds nuw i8, ptr %i.co, i64 224 ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.cl
  br i1 %i.cn, label %_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job10is_visible.exit.thread, label %bb.s

bb.s:                                             ; preds = %.lr.ph460, %bb.r
  %i.co = phi ptr [ %i.ck, %.lr.ph460 ], [ %i.cm, %bb.r ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 215
  %i.cq = invoke noundef zeroext i1 @_RNvMNtCs8frGy5WneL6_4fish13global_safetyNtB2_17RelaxedAtomicBool4load(ptr noundef nonnull %i.cp)
          to label %.noexc114 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.noexc114:                                        ; preds = %bb.s
  br i1 %i.cq, label %bb.r, label %_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job12is_completed.exit.i

_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job12is_completed.exit.i: ; preds = %.noexc114
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cf, i64 72
  %i.cs = load i64, ptr %i.cr, align 8, !noundef !4
  %i.ct = icmp ult i64 %i.cs, 9223372036854775807
  br i1 %i.ct, label %_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job14is_constructed.exit.i, label %.invoke, !prof !14

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
  %i.da = load ptr, ptr %.sroa.045.0243, align 8, !nonnull !4, !noundef !4
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = trunc nuw i8 %.sroa.03.0244 to i1
  %i.dd = load i8, ptr %i.cd, align 1, !range !7
  %i.de = trunc nuw i8 %i.dd to i1
  %i.df = select i1 %i.dc, i1 true, i1 %i.de
  %.sroa.048.0 = xor i1 %i.df, true
  invoke fastcc void @_RNvNtNtCs8frGy5WneL6_4fish8builtins4jobs18builtin_jobs_print(ptr noundef nonnull align 8 %i.db, i8 noundef %.ph, i1 noundef zeroext %.sroa.048.0, ptr noalias nofree noundef align 8 dereferenceable(48) %1)
          to label %_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job10is_visible.exit.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job10is_visible.exit.thread: ; preds = %bb.r, %_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job14is_constructed.exit.i, %bb.t, %_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job10is_visible.exit
  %.sroa.03.1 = phi i8 [ %.sroa.03.0244, %_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job10is_visible.exit ], [ 1, %bb.t ], [ %.sroa.03.0244, %_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job14is_constructed.exit.i ], [ %.sroa.03.0244, %bb.r ] ; 2 uses
  %i.dg = icmp eq ptr %i.ce, %i.cb
  br i1 %i.dg, label %.loopexit167, label %bb.q

.loopexit167:                                     ; preds = %_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job10is_visible.exit.thread
  %i.dh = trunc nuw i8 %.sroa.03.1 to i1
  br i1 %i.dh, label %.loopexit167.thread336, label %.loopexit167.thread

bb.u:                                             ; preds = %bb.o
  %i.di = load ptr, ptr %i.z, align 8, !nonnull !4, !align !13, !noundef !4 ; 2 uses
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr %i.di, i64 %i.bv
  %i.dk = icmp samesign eq i64 %i.bt, %i.bv
  br i1 %i.dk, label %.loopexit167.thread, label %.lr.ph246.preheader

.lr.ph246.preheader:                              ; preds = %bb.u
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %i.di, i64 %i.bt
  br label %.lr.ph246

bb.v:                                             ; preds = %bb.o
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %i.bt, i64 noundef %i.bv, i64 noundef %i.bv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @571) #39
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.lr.ph246:                                        ; preds = %.lr.ph246.preheader, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit124
  %.sroa.010.0245 = phi ptr [ %i.dm, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit124 ], [ %i.dl, %.lr.ph246.preheader ] ; 7 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.010.0245, i64 16 ; 2 uses
  %i.dn = load ptr, ptr %.sroa.010.0245, align 8, !nonnull !4, !align !24, !noundef !4
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.010.0245, i64 8 ; 5 uses
  %i.dp = load i64, ptr %i.do, align 8, !noundef !4
  %i.dq = invoke noundef i32 @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.dn, i64 noundef %i.dp, i64 noundef 0)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.w:                                             ; preds = %.lr.ph246
  %i.dr = icmp eq i32 %i.dq, 37
  br i1 %i.dr, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ds = load i64, ptr %i.do, align 8, !noundef !4 ; 2 uses
  %i.dt = icmp eq i64 %i.ds, 0
  br i1 %i.dt, label %bb.z, label %bb.aa, !prof !15

bb.y:                                             ; preds = %bb.w
  %i.du = load ptr, ptr %.sroa.010.0245, align 8, !nonnull !4, !align !24, !noundef !4
  %i.dv = load i64, ptr %i.do, align 8, !noundef !4
  %i.dw = invoke { i32, i32 } @_RNvNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc9parse_pid(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.w, i64 noundef %i.y, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.du, i64 noundef %i.dv)
          to label %bb.ax unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ; 2 uses

bb.z:                                             ; preds = %bb.x
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @186, i64 noundef 19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @566) #39
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.aa:                                            ; preds = %bb.x
  %i.dx = load ptr, ptr %.sroa.010.0245, align 8, !nonnull !4, !align !24, !noundef !4
  %i.dy = add i64 %i.ds, -1
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 4
  %i.ea = invoke i64 @_RNvNtNtCs8frGy5WneL6_4fish5wutil6wcstoi11fish_wcstoi(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.dz, i64 noundef %i.dy)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ; 2 uses

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
          to label %bb.ao unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

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
          to label %bb.ae unwind label %bb.ad     ; 2 uses

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit: ; preds = %bb.af, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.ef, %bb.ad ], [ %i.ek, %bb.af ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r) #34
          to label %bb.aj unwind label %bb.an

bb.ad:                                            ; preds = %bb.ai, %bb.ac
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit

bb.ae:                                            ; preds = %bb.ac
  %i.eg = extractvalue { ptr, i64 } %i.ee, 0
  %i.eh = extractvalue { ptr, i64 } %i.ee, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.ei = load ptr, ptr %.sroa.010.0245, align 8, !nonnull !4, !align !24, !noundef !4
  %i.ej = load i64, ptr %i.do, align 8, !noundef !4
  store i64 1, ptr %i.q, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.ei, ptr %.sroa.420.0..sroa_idx, align 8
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.ej, ptr %.sroa.521.0..sroa_idx, align 8
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtB12_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.eg, i64 noundef %i.eh, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @39, ptr noalias nofree noundef nonnull align 8 %i.q, i64 noundef 1)
          to label %bb.ag unwind label %bb.af

bb.af:                                            ; preds = %bb.ah, %bb.ae
  %i.ek = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit unwind label %bb.an

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.experimental.noalias.scope.decl(metadata !3639)
  %i.el = load i8, ptr %i.s, align 8, !range !7, !alias.scope !3639, !noundef !4
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %bb.ah, label %bb.ai, !prof !15

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3640
  %i.en = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.eo = load i8, ptr %i.en, align 1, !range !19, !alias.scope !3639, !noundef !4
  store i8 %i.eo, ptr %i.c, align 1, !noalias !3640
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @77, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @84, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @565) #37
          to label %.noexc108 unwind label %bb.af

.noexc108:                                        ; preds = %bb.ah
  unreachable

bb.ai:                                            ; preds = %bb.ag
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit119 unwind label %bb.ad

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit119: ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r)
          to label %bb.al unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ak, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit
  %.pn92 = phi { ptr, i32 } [ %i.ep, %bb.ak ], [ %.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.t) #34
          to label %.body unwind label %bb.an

bb.ak:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit119
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.al:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr %i.w, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !3641
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store i64 %i.y, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !3641
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !3641
  %.sroa.8146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  store ptr null, ptr %.sroa.8146.0..sroa_idx, align 8, !alias.scope !3641
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  store i8 0, ptr %.sroa.9.0..sroa_idx, align 8, !alias.scope !3641
  invoke void @_RNvMNtNtNtCs8frGy5WneL6_4fish8builtins6shared5errorNtB2_5Error6finish(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.u, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.am unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %.loopexit163

bb.an:                                            ; preds = %bb.bv, %bb.bi, %bb.bc, %bb.af, %bb.cc, %bb.bz, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit132, %bb.bm, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit126, %bb.aj, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit, %.body
  %i.eq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

bb.ao:                                            ; preds = %bb.az, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_3num7nonzero7NonZeromENtNtBM_5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit
  %.sroa.038.0 = phi ptr [ %i.eb, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_3num7nonzero7NonZeromENtNtBM_5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit ], [ %i.fx, %bb.az ] ; 6 uses
  %.not.i = icmp eq ptr %.sroa.038.0, null
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE6filterNCNvNtNtB1h_8builtins4jobs4jobss_0EB1h_.exit.thread, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.sroa.038.0, ptr %i.b, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.038.0, i64 48
  %i.es = load i64, ptr %i.er, align 8, !noundef !4 ; 2 uses
  %i.et = icmp eq i64 %i.es, 0
  br i1 %i.et, label %bb.as, label %.lr.ph461, !prof !15

.lr.ph461:                                        ; preds = %bb.ap
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.038.0, i64 40
  %i.ev = load ptr, ptr %i.eu, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.idx468 = mul nuw nsw i64 %i.es, 224
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 %.idx468
  br label %bb.ar

bb.aq:                                            ; preds = %.noexc.i
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ez, i64 224 ; 2 uses
  %i.ey = icmp eq ptr %i.ex, %i.ew
  br i1 %i.ey, label %_RNCNvNtNtCs8frGy5WneL6_4fish8builtins4jobs4jobss_0B7_.exit.thread.loopexit.i, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph461, %bb.aq
  %i.ez = phi ptr [ %i.ev, %.lr.ph461 ], [ %i.ex, %bb.aq ] ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 215
  %i.fb = invoke noundef zeroext i1 @_RNvMNtCs8frGy5WneL6_4fish13global_safetyNtB2_17RelaxedAtomicBool4load(ptr noundef nonnull %i.fa)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i:                                         ; preds = %bb.ar
  br i1 %i.fb, label %bb.aq, label %_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job12is_completed.exit.i.i

bb.as:                                            ; preds = %bb.ap
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @279, i64 noundef 46, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @280) #37
          to label %.noexc4.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc4.i:                                        ; preds = %bb.as
  unreachable

_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job12is_completed.exit.i.i: ; preds = %.noexc.i
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.038.0, i64 72
  %i.fd = load i64, ptr %i.fc, align 8, !noundef !4
  %i.fe = icmp ult i64 %i.fd, 9223372036854775807
  br i1 %i.fe, label %_RNCNvNtNtCs8frGy5WneL6_4fish8builtins4jobs4jobss_0B7_.exit.i, label %bb.at, !prof !14

bb.at:                                            ; preds = %_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job12is_completed.exit.i.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @283) #37
          to label %.noexc5.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc5.i:                                        ; preds = %bb.at
  unreachable

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ar, %bb.at, %bb.as
  %lpad.loopexit.split-lp475 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3642)
  call void @llvm.experimental.noalias.scope.decl(metadata !3643)
  %i.ff = load ptr, ptr %i.b, align 8, !alias.scope !3644, !nonnull !4, !noundef !4 ; 2 uses
  %i.fg = load i64, ptr %i.ff, align 8, !noalias !3644, !noundef !4
  %i.fh = add i64 %i.fg, -1                       ; 2 uses
  store i64 %i.fh, ptr %i.ff, align 8, !noalias !3644
  %i.fi = icmp eq i64 %i.fh, 0
  br i1 %i.fi, label %bb.au, label %.body

bb.au:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtCs8frGy5WneL6_4fish4proc3JobE9drop_slowBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #36
          to label %.body unwind label %bb.aw

_RNCNvNtNtCs8frGy5WneL6_4fish8builtins4jobs4jobss_0B7_.exit.i: ; preds = %_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job12is_completed.exit.i.i
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.038.0, i64 80
  %i.fk = load i8, ptr %i.fj, align 8, !range !7, !noundef !4
  %i.fl = trunc nuw i8 %i.fk to i1
  %.pre10.i = load ptr, ptr %i.b, align 8         ; 4 uses
  br i1 %i.fl, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE6filterNCNvNtNtB1h_8builtins4jobs4jobss_0EB1h_.exit, label %_RNCNvNtNtCs8frGy5WneL6_4fish8builtins4jobs4jobss_0B7_.exit.thread.i

_RNCNvNtNtCs8frGy5WneL6_4fish8builtins4jobs4jobss_0B7_.exit.thread.loopexit.i: ; preds = %bb.aq
  %.pre.i = load ptr, ptr %i.b, align 8, !alias.scope !3645
  br label %_RNCNvNtNtCs8frGy5WneL6_4fish8builtins4jobs4jobss_0B7_.exit.thread.i

_RNCNvNtNtCs8frGy5WneL6_4fish8builtins4jobs4jobss_0B7_.exit.thread.i: ; preds = %_RNCNvNtNtCs8frGy5WneL6_4fish8builtins4jobs4jobss_0B7_.exit.i, %_RNCNvNtNtCs8frGy5WneL6_4fish8builtins4jobs4jobss_0B7_.exit.thread.loopexit.i
  %i.fm = phi ptr [ %.pre.i, %_RNCNvNtNtCs8frGy5WneL6_4fish8builtins4jobs4jobss_0B7_.exit.thread.loopexit.i ], [ %.pre10.i, %_RNCNvNtNtCs8frGy5WneL6_4fish8builtins4jobs4jobss_0B7_.exit.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3646)
  call void @llvm.experimental.noalias.scope.decl(metadata !3647)
  %i.fn = load i64, ptr %i.fm, align 8, !noalias !3645, !noundef !4
end_hunk_0
