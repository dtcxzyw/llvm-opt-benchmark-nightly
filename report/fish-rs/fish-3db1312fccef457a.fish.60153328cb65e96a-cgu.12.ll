Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.12?download=true
inline.NumInlined: 2412
inline.NumDeleted: 784
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_RNvNtNtCs8frGy5WneL6_4fish8builtins2cd14try_cd_to_dirs:bb.a
  br label %bb.aw

bb.aw:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

.thread:                                          ; preds = %.loopexit49, %.loopexit.split-lp50, %bb.aa, %bb.ad, %.thread.i
  %eh.lpad-body = phi { ptr, i32 } [ %.pn2976.i, %bb.aa ], [ %i.bm, %bb.ad ], [ %.pn3258.i, %.thread.i ], [ %lpad.loopexit51, %.loopexit49 ], [ %lpad.loopexit.split-lp52, %.loopexit.split-lp50 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #36
          to label %.body29 unwind label %bb.ax

bb.ax:                                            ; preds = %.thread, %.body29
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.ay:                                            ; preds = %.body29
  resume { ptr, i32 } %.pn24
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvNtNtCs8frGy5WneL6_4fish8builtins2cd19is_relative_cd_path(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1 ; 2 uses
  %i.b = tail call noundef zeroext i1 @_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator5eq_byNtNtNtB15_3str4iter5CharsNCINvYB3_BX_2eqB1Y_E0ECs8frGy5WneL6_4fish(ptr noundef nonnull readonly align 4 %0, ptr noundef nonnull readonly %i.a, ptr noundef nonnull @215, ptr noundef nonnull readonly getelementptr inbounds nuw (i8, ptr @215, i64 1))
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator5eq_byNtNtNtB15_3str4iter5CharsNCINvYB3_BX_2eqB1Y_E0ECs8frGy5WneL6_4fish(ptr noundef nonnull readonly align 4 %0, ptr noundef nonnull readonly %i.a, ptr noundef nonnull @216, ptr noundef nonnull readonly getelementptr inbounds nuw (i8, ptr @216, i64 2))
  br i1 %i.c, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt11starts_withReECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @351, i64 noundef 2)
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt11starts_withReECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @388, i64 noundef 3)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.sroa.0.0 = phi i1 [ %i.e, %bb.d ], [ true, %bb.c ], [ true, %bb.b ], [ true, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define range(i64 4294967296, 8589934594) i64 @_RNvNtNtCs8frGy5WneL6_4fish8builtins2cd2cd(ptr noalias nofree noundef align 8 dereferenceable(432) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = alloca [1 x i8], align 1                 ; 3 uses
  %i.e = alloca [1 x i8], align 1                 ; 3 uses
  %i.f = alloca [1 x i8], align 1                 ; 3 uses
  %i.g = alloca [1 x i8], align 1                 ; 3 uses
  %i.h = alloca [1 x i8], align 1                 ; 3 uses
  %.sroa.0365 = alloca [24 x i8], align 8         ; 7 uses
  %i.i = alloca [72 x i8], align 8                ; 9 uses
  %i.j = alloca [32 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 8 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [72 x i8], align 8                ; 9 uses
  %i.p = alloca [32 x i8], align 8                ; 8 uses
  %i.q = alloca [24 x i8], align 8                ; 8 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [24 x i8], align 8                ; 8 uses
  %i.t = alloca [32 x i8], align 8                ; 8 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [24 x i8], align 8                ; 8 uses
  %i.w = alloca [32 x i8], align 8                ; 8 uses
  %i.x = alloca [24 x i8], align 8                ; 8 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  %i.z = alloca [24 x i8], align 8                ; 8 uses
  %i.aa = alloca [64 x i8], align 8               ; 11 uses
  %i.ab = alloca [24 x i8], align 8               ; 8 uses
  %i.ac = alloca [16 x i8], align 8               ; 5 uses
  %i.ad = alloca [24 x i8], align 8               ; 8 uses
  %i.ae = alloca [32 x i8], align 8               ; 8 uses
  %i.af = alloca [24 x i8], align 8               ; 8 uses
  %i.ag = alloca [16 x i8], align 8               ; 5 uses
  %i.ah = alloca [24 x i8], align 8               ; 8 uses
  %i.ai = alloca [48 x i8], align 8               ; 10 uses
  %i.aj = alloca [56 x i8], align 8               ; 5 uses
  %i.ak = alloca [24 x i8], align 8               ; 9 uses
  %i.al = alloca [24 x i8], align 8               ; 13 uses
  %i.am = alloca [24 x i8], align 8               ; 6 uses
  %i.an = alloca [56 x i8], align 8               ; 7 uses
  %i.ao = alloca [56 x i8], align 8               ; 11 uses
  %i.ap = alloca [24 x i8], align 8               ; 9 uses
  %i.aq = alloca [24 x i8], align 8               ; 5 uses
  %i.ar = alloca [24 x i8], align 8               ; 10 uses
  %i.as = alloca [24 x i8], align 8               ; 5 uses
  %i.at = alloca [24 x i8], align 8               ; 14 uses
  %i.au = alloca [72 x i8], align 8               ; 9 uses
  %.sroa.0352 = alloca [24 x i8], align 8         ; 2 uses
  %i.av = alloca [32 x i8], align 8               ; 8 uses
  %i.aw = alloca [24 x i8], align 8               ; 8 uses
  %i.ax = alloca [16 x i8], align 8               ; 5 uses
  %i.ay = alloca [24 x i8], align 8               ; 8 uses
  %i.az = alloca [24 x i8], align 8               ; 8 uses
  %i.ba = alloca [72 x i8], align 8               ; 11 uses
  %i.bb = alloca [24 x i8], align 8               ; 4 uses
  %i.bc = alloca [24 x i8], align 8               ; 8 uses
  %i.bd = alloca [24 x i8], align 8               ; 6 uses
  %i.be = alloca [24 x i8], align 8               ; 9 uses
  %i.bf = alloca [64 x i8], align 8               ; 9 uses
  %i.bg = alloca [16 x i8], align 8               ; 5 uses
  %i.bh = alloca [24 x i8], align 8               ; 8 uses
  %i.bi = alloca [72 x i8], align 8               ; 9 uses
  %i.bj = alloca [16 x i8], align 8               ; 4 uses
  %i.bk = alloca [4 x i8], align 4                ; 5 uses
  %i.bl = alloca [136 x i8], align 8              ; 27 uses
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bm = load ptr, ptr %2, align 8, !nonnull !5, !align !28, !noundef !5 ; 7 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !5 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  store ptr %2, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  store i64 %3, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 88
  store ptr null, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  store ptr @389, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  store i64 3, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bl, i64 56
  store ptr @392, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bl, i64 64
  store i64 3, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bl, i64 72
  store ptr inttoptr (i64 4 to ptr), ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bl, i64 80
  store i64 0, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bl, i64 104 ; 4 uses
  store i64 0, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bl, i64 128
  store i32 63, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bl, i64 134
  store i8 1, ptr %i.ca, align 2
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bl, i64 112
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bl, i64 132
  store i8 0, ptr %i.cc, align 4
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bl, i64 133
  store i8 0, ptr %i.cd, align 1
  store i64 0, ptr %i.bl, align 8
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.470.0..sroa_idx, align 8
  %.sroa.571.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store i64 0, ptr %.sroa.571.0..sroa_idx, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.ew, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCshMbxjpSxucW_12fish_wgetopt9WGetopterECs8frGy5WneL6_4fish.exit
  %.sroa.141.0 = phi i64 [ %i.dd, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCshMbxjpSxucW_12fish_wgetopt9WGetopterECs8frGy5WneL6_4fish.exit ], [ 4294967297, %bb.ew ], [ 8589934593, %bb.a ]
  ret i64 %.sroa.141.0

bb.d:                                             ; preds = %bb.m, %bb.b
  %.sroa.03.0 = phi i1 [ false, %bb.b ], [ %.sroa.03.1, %bb.m ] ; 3 uses
  %i.ce = invoke noundef i32 @_RNvMCshMbxjpSxucW_12fish_wgetoptNtB2_9WGetopter8next_opt(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.bl)
          to label %bb.e unwind label %.loopexit326 ; 3 uses

.thread:                                          ; preds = %.loopexit326, %.loopexit.split-lp327, %bb.al, %bb.am, %bb.ah, %bb.fk, %bb.fj, %bb.ab
  %.pn159 = phi { ptr, i32 } [ %i.dx, %bb.al ], [ %.pn157, %bb.fk ], [ %.pn155, %bb.fj ], [ %.pn155, %bb.ab ], [ %i.dt, %bb.ah ], [ %i.dx, %bb.am ], [ %lpad.loopexit328, %.loopexit326 ], [ %lpad.loopexit.split-lp329, %.loopexit.split-lp327 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCshMbxjpSxucW_12fish_wgetopt9WGetopterECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(136) %i.bl) #36
          to label %common.resume unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit326:                                     ; preds = %bb.d
  %lpad.loopexit328 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.loopexit.split-lp327:                            ; preds = %.invoke389, %.invoke, %bb.h, %bb.j, %bb.q, %bb.s, %bb.ex, %bb.fi, %bb.fr
  %lpad.loopexit.split-lp329 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.e:                                             ; preds = %bb.d
  %.not109 = icmp eq i32 %i.ce, -1
  br i1 %.not109, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  store i32 %i.ce, ptr %i.bk, align 4
  switch i32 %i.ce, label %bb.h [
    i32 76, label %bb.m
    i32 80, label %bb.i
    i32 104, label %bb.j
    i32 59, label %bb.k
    i32 63, label %bb.l
  ], !prof !3541

bb.g:                                             ; preds = %bb.e
  %i.cf = load i64, ptr %i.by, align 8, !noundef !5 ; 3 uses
  %i.cg = sub nuw i64 %3, %i.cf                   ; 3 uses
  %i.ch = icmp ult i64 %3, %i.cf
  br i1 %i.ch, label %.invoke, label %bb.w

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  store ptr %i.bk, ptr %i.bj, align 8
  %.sroa.475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr @_RNvXsk_NtCs3oUPovFnLWP_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.475.0..sroa_idx, align 8
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @397, ptr noundef nonnull %i.bj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @398) #35
          to label %bb.p unwind label %.loopexit.split-lp327

bb.i:                                             ; preds = %bb.f
  br label %bb.m

bb.j:                                             ; preds = %bb.f
  invoke void @_RNvNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc18builtin_print_help(ptr noalias nofree noundef nonnull align 8 dereferenceable(432) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.bm, i64 noundef %i.bo)
          to label %bb.n unwind label %.loopexit.split-lp327

bb.k:                                             ; preds = %bb.f
  %i.ci = load i64, ptr %i.by, align 8, !noundef !5 ; 2 uses
  %i.cj = add i64 %i.ci, -1                       ; 3 uses
  %i.ck = icmp eq i64 %i.ci, 0
  br i1 %i.ck, label %.invoke, label %bb.o

bb.l:                                             ; preds = %bb.f
  %i.cl = load i64, ptr %i.by, align 8, !noundef !5 ; 2 uses
  %i.cm = add i64 %i.cl, -1                       ; 3 uses
  %i.cn = icmp eq i64 %i.cl, 0
  br i1 %i.cn, label %.invoke, label %bb.r

bb.m:                                             ; preds = %bb.f, %bb.i
  %.sroa.03.1 = phi i1 [ true, %bb.i ], [ false, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  br label %bb.d

bb.n:                                             ; preds = %bb.s, %bb.q, %bb.j
  %.sroa.0.1 = phi i64 [ 1, %bb.q ], [ 0, %bb.j ], [ 1, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  br label %bb.t

bb.o:                                             ; preds = %bb.k
  %i.co = icmp ult i64 %i.cj, %3
  br i1 %i.co, label %bb.q, label %.invoke389

.invoke:                                          ; preds = %bb.g, %bb.l, %bb.k
  %i.cp = phi ptr [ @395, %bb.l ], [ @393, %bb.k ], [ @399, %bb.g ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cp) #35
          to label %.cont unwind label %.loopexit.split-lp327

.cont:                                            ; preds = %.invoke
  unreachable

bb.p:                                             ; preds = %bb.h
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.cj ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !nonnull !5, !align !28, !noundef !5
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.ct = load i64, ptr %i.cs, align 8, !noundef !5
  invoke void @_RNvNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc27builtin_unexpected_argument(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.bm, i64 noundef %i.bo, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.cr, i64 noundef %i.ct, i1 noundef zeroext false)
          to label %bb.n unwind label %.loopexit.split-lp327

.invoke389:                                       ; preds = %bb.r, %bb.o
  %i.cu = phi i64 [ %i.cj, %bb.o ], [ %i.cm, %bb.r ]
  %i.cv = phi ptr [ @394, %bb.o ], [ @396, %bb.r ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.cu, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cv) #35
          to label %.cont390 unwind label %.loopexit.split-lp327

.cont390:                                         ; preds = %.invoke389
  unreachable

bb.r:                                             ; preds = %bb.l
  %i.cw = icmp ult i64 %i.cm, %3
  br i1 %i.cw, label %bb.s, label %.invoke389

bb.s:                                             ; preds = %bb.r
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.cm ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !nonnull !5, !align !28, !noundef !5
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.da = load i64, ptr %i.cz, align 8, !noundef !5
  invoke void @_RNvNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc22builtin_unknown_option(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.bm, i64 noundef %i.bo, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.cy, i64 noundef %i.da, i1 noundef zeroext false)
          to label %bb.n unwind label %.loopexit.split-lp327

bb.t:                                             ; preds = %bb.fh, %bb.fs, %bb.n
  %.sroa.141.2 = phi i64 [ 8589934592, %bb.n ], [ 8589934592, %bb.fs ], [ %.sroa.11.3271, %bb.fh ]
  %.sroa.0.2 = phi i64 [ %.sroa.0.1, %bb.n ], [ 1, %bb.fs ], [ %.sroa.0.3272, %bb.fh ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.bl)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCshMbxjpSxucW_12fish_wgetopt9WGetopterECs8frGy5WneL6_4fish.exit unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.db = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.bl)
          to label %common.resume unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #33
  unreachable

common.resume:                                    ; preds = %.thread, %bb.u
  %common.resume.op = phi { ptr, i32 } [ %i.db, %bb.u ], [ %.pn159, %.thread ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCshMbxjpSxucW_12fish_wgetopt9WGetopterECs8frGy5WneL6_4fish.exit: ; preds = %bb.t
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.bl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  %i.dd = or i64 %.sroa.0.2, %.sroa.141.2
  br label %bb.c

bb.w:                                             ; preds = %bb.g
  %i.de = icmp samesign ugt i64 %i.cg, 1
  br i1 %i.de, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  store i64 0, ptr %i.bh, align 8
  %.sroa.477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.477.0..sroa_idx, align 8
  %.sroa.578.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store i64 0, ptr %.sroa.578.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  %i.df = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @368)
          to label %bb.fm unwind label %bb.fl     ; 2 uses

bb.y:                                             ; preds = %bb.w
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  %i.dh = icmp eq i64 %i.cg, 1
  br i1 %i.dh, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  invoke void @_RNvYNtNtNtCs8frGy5WneL6_4fish3env11environment8EnvStackNtB4_11Environment16get_unless_emptyB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bd, ptr noundef nonnull align 8 %i.dg, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @333, i64 noundef 4)
          to label %bb.ae unwind label %bb.ac

bb.aa:                                            ; preds = %bb.y
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.cf ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !nonnull !5, !align !28, !noundef !5
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dl = load i64, ptr %i.dk, align 8, !noundef !5
  br label %bb.ad

bb.ab:                                            ; preds = %bb.fe, %bb.fc, %bb.au, %bb.ac
  %.sroa.062.0 = phi i8 [ %.sroa.062.2, %bb.au ], [ %.sroa.062.2, %bb.fe ], [ %.sroa.062.1, %bb.ac ], [ %.sroa.062.2, %bb.fc ]
  %.pn155 = phi { ptr, i32 } [ %.pn149, %bb.au ], [ %i.kg, %bb.fe ], [ %i.dn, %bb.ac ], [ %.pn153, %bb.fc ] ; 2 uses
  %i.dm = trunc nuw i8 %.sroa.062.0 to i1
  br i1 %i.dm, label %bb.fj, label %.thread

bb.ac:                                            ; preds = %bb.ao, %bb.eu, %bb.ch, %bb.ap, %bb.aj, %bb.z
  %.sroa.062.1 = phi i8 [ 0, %bb.aj ], [ 0, %bb.z ], [ %.sroa.062.2, %bb.eu ], [ %.sroa.062.2, %bb.ch ], [ %.sroa.062.2, %bb.ap ], [ 1, %bb.ao ]
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ad:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEBH_.exit178, %bb.aa
  %.sroa.062.2 = phi i8 [ 0, %bb.aa ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEBH_.exit178 ] ; 8 uses
  %.sroa.12.0 = phi i64 [ %i.dl, %bb.aa ], [ %i.ee, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEBH_.exit178 ] ; 9 uses
  %.sroa.012.0 = phi ptr [ %i.dj, %bb.aa ], [ %i.ec, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEBH_.exit178 ] ; 9 uses
  %i.do = icmp eq i64 %.sroa.12.0, 0
  br i1 %i.do, label %bb.aq, label %bb.ap

bb.ae:                                            ; preds = %bb.z
  %i.dp = load ptr, ptr %i.bd, align 8, !noundef !5
  %.not110 = icmp eq ptr %i.dp, null
  br i1 %.not110, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  invoke void @_RNvMs4_NtNtCs8frGy5WneL6_4fish3env3varNtB5_6EnvVar9as_string(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bc)
          to label %bb.an unwind label %bb.al

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  %i.dq = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr @400, ptr %i.dq, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i64 29, ptr %i.dr, align 8
  store i64 -1, ptr %i.az, align 8
  %i.ds = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.az)
          to label %bb.ai unwind label %bb.ah     ; 2 uses

bb.ah:                                            ; preds = %bb.ai, %bb.ag
  %i.dt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.az) #36
          to label %.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ai:                                            ; preds = %bb.ag
  %i.du = extractvalue { ptr, i64 } %i.ds, 0
  %i.dv = extractvalue { ptr, i64 } %i.ds, 1
  store i64 -1, ptr %i.ba, align 8, !alias.scope !3542, !noalias !3546
  %.sroa.0210.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.du, ptr %.sroa.0210.sroa.4.0..sroa_idx, align 8, !alias.scope !3542, !noalias !3546
  %.sroa.0210.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store i64 %i.dv, ptr %.sroa.0210.sroa.5.0..sroa_idx, align 8, !alias.scope !3542, !noalias !3546
  %.sroa.4211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  store ptr %i.bm, ptr %.sroa.4211.0..sroa_idx, align 8, !alias.scope !3542, !noalias !3546
  %.sroa.6212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  store i64 %i.bo, ptr %.sroa.6212.0..sroa_idx, align 8, !alias.scope !3542, !noalias !3546
  %.sroa.7213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  store ptr null, ptr %.sroa.7213.0..sroa_idx, align 8, !alias.scope !3542, !noalias !3546
  %.sroa.8215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  store ptr null, ptr %.sroa.8215.0..sroa_idx, align 8, !alias.scope !3542, !noalias !3546
  %.sroa.9216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 64
  store i8 0, ptr %.sroa.9216.0..sroa_idx, align 8, !alias.scope !3542, !noalias !3546
  invoke void @_RNvMNtNtNtCs8frGy5WneL6_4fish8builtins6shared5errorNtB2_5Error6finish(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.ba, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.aj unwind label %bb.ah

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.az)
          to label %.thread267 unwind label %bb.ac

.thread267:                                       ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  br label %bb.fh

bb.ak:                                            ; preds = %bb.fg, %bb.ci
  %.sroa.11.3 = phi i64 [ 4294967296, %bb.fg ], [ %i.gt, %bb.ci ] ; 2 uses
  %.sroa.0.3 = phi i64 [ 1, %bb.fg ], [ 0, %bb.ci ] ; 2 uses
  %i.dw = trunc nuw i8 %.sroa.062.2 to i1
  br i1 %i.dw, label %bb.fi, label %bb.fh

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.du, %bb.dm, %bb.ez, %bb.cp, %bb.ek, %bb.ea, %bb.am, %bb.fn, %bb.fk, %bb.fj, %bb.fc, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit205, %.thread277, %bb.en, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit201, %bb.ed, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit197, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit193, %bb.dp, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit189, %bb.dh, %bb.dc, %bb.cz, %bb.cu, %bb.cs, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit, %bb.ca, %bb.br, %.thread281, %bb.be, %bb.au, %bb.ah, %.thread
  %lpad.loopexit.split-lp401 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.al:                                            ; preds = %bb.af
  %i.dx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3548)
  call void @llvm.experimental.noalias.scope.decl(metadata !3551)
  call void @llvm.experimental.noalias.scope.decl(metadata !3554)
  %i.dy = load ptr, ptr %i.bc, align 8, !alias.scope !3557, !nonnull !5, !noundef !5
  %i.dz = atomicrmw sub ptr %i.dy, i64 1 release, align 8, !noalias !3557
  %i.ea = icmp eq i64 %i.dz, 1
  br i1 %i.ea, label %bb.am, label %.thread

bb.am:                                            ; preds = %bb.al
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE9drop_slowCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bc) #37
          to label %.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.an:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  %i.eb = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !nonnull !5, !noundef !5
  %i.ed = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.ee = load i64, ptr %i.ed, align 8, !noundef !5
  call void @llvm.experimental.noalias.scope.decl(metadata !3558)
  call void @llvm.experimental.noalias.scope.decl(metadata !3561)
  call void @llvm.experimental.noalias.scope.decl(metadata !3564)
  %i.ef = load ptr, ptr %i.bc, align 8, !alias.scope !3567, !nonnull !5, !noundef !5
  %i.eg = atomicrmw sub ptr %i.ef, i64 1 release, align 8, !noalias !3567
  %i.eh = icmp eq i64 %i.eg, 1
  br i1 %i.eh, label %bb.ao, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEBH_.exit178

bb.ao:                                            ; preds = %bb.an
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE9drop_slowCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bc) #37
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEBH_.exit178 unwind label %bb.ac

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEBH_.exit178: ; preds = %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  br label %bb.ad

bb.ap:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  invoke void @_RNvXs7_NtNtCs8frGy5WneL6_4fish3env11environmentNtB5_8EnvStackNtB5_11Environment13get_pwd_slash(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.at, ptr noundef nonnull align 8 %i.dg)
          to label %bb.ar unwind label %bb.ac

bb.aq:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  store i64 0, ptr %i.ay, align 8
  %.sroa.480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.480.0..sroa_idx, align 8
  %.sroa.581.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store i64 0, ptr %.sroa.581.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  %i.ei = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr @414, ptr %i.ei, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i64 35, ptr %i.ej, align 8
  store i64 -1, ptr %i.aw, align 8
  %i.ek = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aw)
          to label %bb.ey unwind label %.loopexit.split-lp289 ; 2 uses

bb.ar:                                            ; preds = %bb.ap
  br i1 %.sroa.03.0, label %bb.at, label %bb.as

.sink.split:                                      ; preds = %bb.aw, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  br label %bb.as

bb.as:                                            ; preds = %.sink.split, %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  %i.el = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !nonnull !5, !noundef !5
  %i.en = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %i.eo = load i64, ptr %i.en, align 8, !noundef !5
  invoke void @_RNvNtCs8frGy5WneL6_4fish4path17path_apply_cdpath(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ap, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.012.0, i64 noundef %.sroa.12.0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.em, i64 noundef %i.eo, ptr noundef nonnull %i.dg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) @52)
end_hunk_0
