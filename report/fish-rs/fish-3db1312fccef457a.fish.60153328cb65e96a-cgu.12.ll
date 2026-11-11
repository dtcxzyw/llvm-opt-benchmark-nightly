Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.12?download=true
inline.NumInlined: 2410
inline.NumDeleted: 784
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 27
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNvNtNtCs8frGy5WneL6_4fish8builtins5block5block:bb.a
.outer159.loopexit:                               ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.lcssa164 = phi i1 [ %.sroa.0.0.i.ph161, %bb.c ], [ true, %bb.d ]
  br label %.outer159

.outer159:                                        ; preds = %.outer159.loopexit, %.outer
  %.sroa.3.0.i.ph160 = phi i1 [ %.sroa.3.0.i.ph, %.outer ], [ true, %.outer159.loopexit ] ; 2 uses
  %.sroa.0.0.i.ph161 = phi i1 [ %.sroa.0.0.i.ph, %.outer ], [ %.sroa.0.0.i.lcssa164, %.outer159.loopexit ] ; 4 uses
  %i.x = invoke noundef i32 @_RNvMCshMbxjpSxucW_12fish_wgetoptNtB2_9WGetopter8next_opt(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.a)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !3717

bb.c:                                             ; preds = %.outer159
  switch i32 %i.x, label %.loopexit [
    i32 -1, label %.loopexit187
    i32 104, label %.outer159.loopexit
    i32 103, label %.outer.backedge
    i32 108, label %.loopexit189
    i32 101, label %.outer159.peel.newph
    i32 58, label %.loopexit190
    i32 59, label %.loopexit191
    i32 63, label %.loopexit192
  ], !prof !3718

.outer159.peel.newph:                             ; preds = %bb.d, %bb.c
  %i.y = invoke noundef i32 @_RNvMCshMbxjpSxucW_12fish_wgetoptNtB2_9WGetopter8next_opt(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.a)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !3717

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp: ; preds = %.loopexit, %bb.i, %bb.n, %.invoke71.i, %bb.p, %.invoke.i, %.outer159.peel.newph, %.outer159
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCshMbxjpSxucW_12fish_wgetopt9WGetopterECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(136) %i.a) #36
          to label %common.resume unwind label %bb.q, !noalias !3719

bb.d:                                             ; preds = %.outer159.peel.newph
  switch i32 %i.y, label %.loopexit [
    i32 -1, label %.loopexit187
    i32 104, label %.outer159.loopexit
    i32 103, label %.outer.backedge
    i32 108, label %.loopexit189
    i32 101, label %.outer159.peel.newph
    i32 58, label %.loopexit190
    i32 59, label %.loopexit191
    i32 63, label %.loopexit192
  ], !prof !3718, !llvm.loop !3704

.loopexit187:                                     ; preds = %bb.c, %bb.d
  %.sroa.0.0.i.lcssa163 = phi i1 [ true, %bb.d ], [ %.sroa.0.0.i.ph161, %bb.c ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.a)
          to label %bb.t unwind label %bb.e, !noalias !3717

bb.e:                                             ; preds = %.loopexit187
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.a)
          to label %common.resume unwind label %bb.f, !noalias !3717

bb.f:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #33, !noalias !3717
  unreachable

common.resume:                                    ; preds = %bb.ar, %bb.af, %bb.an, %bb.aj, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, %bb.e, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.ck, %bb.af ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ], [ %i.cp, %bb.aj ], [ %i.ap, %bb.k ], [ %i.z, %bb.e ], [ %i.ct, %bb.an ], [ %i.cy, %bb.ar ]
  resume { ptr, i32 } %common.resume.op

.loopexit:                                        ; preds = %bb.c, %bb.d
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @213, ptr noundef nonnull inttoptr (i64 65 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @449) #35
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !3717

.outer.backedge:                                  ; preds = %bb.d, %bb.c, %.loopexit189
  %.sroa.0.0.i170 = phi i1 [ %.sroa.0.0.i.lcssa166, %.loopexit189 ], [ true, %bb.d ], [ %.sroa.0.0.i.ph161, %bb.c ]
  %.sroa.5.0.i.ph.be = phi i8 [ 2, %.loopexit189 ], [ 1, %bb.c ], [ 1, %bb.d ]
  br label %.outer

.loopexit189:                                     ; preds = %bb.c, %bb.d
  %.sroa.0.0.i.lcssa166 = phi i1 [ true, %bb.d ], [ %.sroa.0.0.i.ph161, %bb.c ]
  br label %.outer.backedge

.loopexit190:                                     ; preds = %bb.c, %bb.d
  %i.ab = load i64, ptr %i.r, align 8, !noalias !3716, !noundef !9 ; 2 uses
  %i.ac = add i64 %i.ab, -1                       ; 3 uses
  %i.ad = icmp eq i64 %i.ab, 0
  br i1 %i.ad, label %.invoke71.i, label %bb.g

.loopexit191:                                     ; preds = %bb.c, %bb.d
  %i.ae = load i64, ptr %i.r, align 8, !noalias !3716, !noundef !9 ; 2 uses
  %i.af = add i64 %i.ae, -1                       ; 3 uses
  %i.ag = icmp eq i64 %i.ae, 0
  br i1 %i.ag, label %.invoke71.i, label %bb.m

.loopexit192:                                     ; preds = %bb.c, %bb.d
  %i.ah = load i64, ptr %i.r, align 8, !noalias !3716, !noundef !9 ; 2 uses
  %i.ai = add i64 %i.ah, -1                       ; 3 uses
  %i.aj = icmp eq i64 %i.ah, 0
  br i1 %i.aj, label %.invoke71.i, label %bb.o

bb.g:                                             ; preds = %.loopexit190
  %i.ak = icmp ult i64 %i.ac, %3
  br i1 %i.ak, label %bb.i, label %.invoke.i

bb.h:                                             ; preds = %.loopexit
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.ac ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !3715, !nonnull !9, !align !16, !noundef !9
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !3715, !noundef !9
  invoke void @_RNvNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc24builtin_missing_argument(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.f, i64 noundef %i.h, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) null, i64 undef, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.am, i64 noundef %i.ao, i1 noundef zeroext false)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !3719

bb.j:                                             ; preds = %bb.p, %bb.n, %bb.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.a)
          to label %bb.s unwind label %bb.k, !noalias !3719

bb.k:                                             ; preds = %bb.j
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.a)
          to label %common.resume unwind label %bb.l, !noalias !3719

bb.l:                                             ; preds = %bb.k
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #33, !noalias !3719
  unreachable

bb.m:                                             ; preds = %.loopexit191
  %i.ar = icmp ult i64 %i.af, %3
  br i1 %i.ar, label %bb.n, label %.invoke.i

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.af ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !3715, !nonnull !9, !align !16, !noundef !9
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !3715, !noundef !9
  invoke void @_RNvNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc27builtin_unexpected_argument(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.f, i64 noundef %i.h, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.at, i64 noundef %i.av, i1 noundef zeroext false)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !3719

bb.o:                                             ; preds = %.loopexit192
  %i.aw = icmp ult i64 %i.ai, %3
  br i1 %i.aw, label %bb.p, label %.invoke.i

.invoke71.i:                                      ; preds = %.loopexit192, %.loopexit191, %.loopexit190
  %i.ax = phi ptr [ @445, %.loopexit191 ], [ @443, %.loopexit190 ], [ @447, %.loopexit192 ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ax) #35
          to label %.cont72.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !3717

.cont72.i:                                        ; preds = %.invoke71.i
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.ai ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !3715, !nonnull !9, !align !16, !noundef !9
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !alias.scope !3715, !noundef !9
  invoke void @_RNvNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc22builtin_unknown_option(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.f, i64 noundef %i.h, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.az, i64 noundef %i.bb, i1 noundef zeroext false)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !3719

.invoke.i:                                        ; preds = %bb.o, %bb.m, %bb.g
  %i.bc = phi i64 [ %i.af, %bb.m ], [ %i.ac, %bb.g ], [ %i.ai, %bb.o ]
  %i.bd = phi ptr [ @446, %bb.m ], [ @444, %bb.g ], [ @448, %bb.o ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.bc, i64 noundef range(i64 1, 576460752303423488) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bd) #35
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !3717

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.q:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #33, !noalias !3719
  unreachable

bb.r:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @450) #34
  unreachable

bb.s:                                             ; preds = %bb.j
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.a), !noalias !3719
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3716
  br label %bb.ab

bb.t:                                             ; preds = %.loopexit187
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.a), !noalias !3719
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3716
  br i1 %.sroa.3.0.i.ph160, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  br i1 %.sroa.0.0.i.lcssa163, label %bb.w, label %_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser14block_at_index.exit

bb.v:                                             ; preds = %bb.t
  call void @_RNvNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc18builtin_print_help(ptr noalias nofree noundef nonnull align 8 dereferenceable(432) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.f, i64 noundef %i.h)
  br label %bb.ab

_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser14block_at_index.exit: ; preds = %bb.u
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bg = load i64, ptr %i.bf, align 8, !noundef !9 ; 6 uses
  %i.bh = icmp ult i64 %i.bg, 230584300921369396
  call void @llvm.assume(i1 %i.bh)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !nonnull !9
  %i.bk = getelementptr [40 x i8], ptr %i.bj, i64 %i.bg ; 3 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 -40    ; 3 uses
  switch i8 %.sroa.5.0.i.ph, label %default.unreachable [
    i8 0, label %.preheader
    i8 1, label %.thread
    i8 2, label %bb.x
  ]

.preheader:                                       ; preds = %_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser14block_at_index.exit
  %.not.i.not = icmp eq i64 %i.bg, 0
  %.not2693.a = icmp eq ptr %i.bl, null
  %.not2693 = select i1 %.not.i.not, i1 true, i1 %.not2693.a
  br i1 %.not2693, label %.thread, label %.lr.ph

bb.w:                                             ; preds = %bb.u
  %i.bm = icmp eq i8 %.sroa.5.0.i.ph, 0
  br i1 %i.bm, label %bb.ac, label %bb.ad

default.unreachable:                              ; preds = %_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser14block_at_index.exit
  unreachable

.lr.ph:                                           ; preds = %.preheader, %_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser14block_at_index.exit35
  %.sroa.06.095 = phi i64 [ %i.bq, %_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser14block_at_index.exit35 ], [ 0, %.preheader ] ; 3 uses
  %.sroa.0.02194 = phi ptr [ %i.bs, %_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser14block_at_index.exit35 ], [ %i.bl, %.preheader ]
  %i.bn = getelementptr i8, ptr %.sroa.0.02194, i64 32
  %.sroa.0.021.val = load i8, ptr %i.bn, align 8, !range !33, !noundef !9 ; 2 uses
  %i.bo = icmp ne i8 %.sroa.0.021.val, 5
  call void @llvm.assume(i1 %i.bo)
  %i.bp = icmp samesign ult i8 %.sroa.0.021.val, 2
  br i1 %i.bp, label %_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser14block_at_index.exit35, label %.thread69

_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser14block_at_index.exit35: ; preds = %.lr.ph
  %i.bq = add nuw nsw i64 %.sroa.06.095, 1        ; 2 uses
  %.not.i33 = icmp samesign uge i64 %i.bq, %i.bg
  %i.br = sub nuw nsw i64 -2, %.sroa.06.095
  %i.bs = getelementptr [40 x i8], ptr %i.bk, i64 %i.br ; 2 uses
  %.not2696 = icmp eq ptr %i.bs, null
  %.not26 = select i1 %.not.i33, i1 true, i1 %.not2696
  br i1 %.not26, label %.thread, label %.lr.ph

bb.x:                                             ; preds = %_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser14block_at_index.exit
  %i.bt = icmp samesign ult i64 %i.bg, 2
  %.not27 = icmp eq ptr %i.bl, null
  %or.cond = select i1 %i.bt, i1 true, i1 %.not27
  br i1 %or.cond, label %.thread, label %.thread69

.thread:                                          ; preds = %_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser14block_at_index.exit35, %.preheader, %bb.x, %_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser14block_at_index.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !noundef !9 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, -1
  br i1 %i.bw, label %bb.z, label %bb.y

.thread69:                                        ; preds = %.lr.ph, %bb.x
  %.sroa.06.173 = phi i64 [ 0, %bb.x ], [ %.sroa.06.095, %.lr.ph ] ; 2 uses
  %.not.i36 = icmp samesign ult i64 %.sroa.06.173, %i.bg
  br i1 %.not.i36, label %_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser18block_at_index_mut.exit, label %_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser18block_at_index_mut.exit.thread

_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser18block_at_index_mut.exit: ; preds = %.thread69
  %i.bx = xor i64 %.sroa.06.173, -1
  %i.by = getelementptr [40 x i8], ptr %i.bk, i64 %i.bx ; 2 uses
  %.not28 = icmp eq ptr %i.by, null
  br i1 %.not28, label %_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser18block_at_index_mut.exit.thread, label %bb.aa, !prof !3720

bb.y:                                             ; preds = %.thread
  %i.bz = add nuw i64 %i.bv, 1
  store i64 %i.bz, ptr %i.bu, align 8
  br label %bb.ab

bb.z:                                             ; preds = %.thread
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @451) #34
  unreachable

bb.aa:                                            ; preds = %_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser18block_at_index_mut.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 33
  store i8 1, ptr %i.ca, align 1
  br label %bb.ab

_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser18block_at_index_mut.exit.thread: ; preds = %.thread69, %_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser18block_at_index_mut.exit
  call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @452) #34
  unreachable

bb.ab:                                            ; preds = %bb.v, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit40, %bb.am, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit, %bb.y, %bb.aa, %bb.s
  %.sroa.101.0 = phi i64 [ 8589934593, %bb.s ], [ 0, %bb.y ], [ 0, %bb.aa ], [ 0, %bb.v ], [ 8589934593, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit40 ], [ 4294967297, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit ], [ 0, %bb.am ]
  ret i64 %.sroa.101.0

bb.ac:                                            ; preds = %bb.w
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !noundef !9 ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %bb.ae, label %bb.am

bb.ad:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @454, ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 41, ptr %i.cf, align 8
  store i64 -1, ptr %i.d, align 8
  %i.cg = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d)
          to label %bb.ao unwind label %bb.an     ; 2 uses

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @453, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 17, ptr %i.ci, align 8
  store i64 -1, ptr %i.b, align 8
  %i.cj = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b)
          to label %bb.ag unwind label %bb.af     ; 2 uses

bb.af:                                            ; preds = %bb.ag, %bb.ae
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #36
          to label %common.resume unwind label %bb.al

bb.ag:                                            ; preds = %bb.ae
  %i.cl = extractvalue { ptr, i64 } %i.cj, 0
  %i.cm = extractvalue { ptr, i64 } %i.cj, 1
  store i64 -1, ptr %i.c, align 8, !alias.scope !3721
  %.sroa.052.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.cl, ptr %.sroa.052.sroa.4.0..sroa_idx, align 8, !alias.scope !3721
  %.sroa.052.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.cm, ptr %.sroa.052.sroa.5.0..sroa_idx, align 8, !alias.scope !3721
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.f, ptr %.sroa.453.0..sroa_idx, align 8, !alias.scope !3721
  %.sroa.654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %i.h, ptr %.sroa.654.0..sroa_idx, align 8, !alias.scope !3721
  %.sroa.755.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr null, ptr %.sroa.755.0..sroa_idx, align 8, !alias.scope !3721
  %.sroa.857.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr null, ptr %.sroa.857.0..sroa_idx, align 8, !alias.scope !3721
  %.sroa.958.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i8 0, ptr %.sroa.958.0..sroa_idx, align 8, !alias.scope !3721
  invoke void @_RNvMNtNtNtCs8frGy5WneL6_4fish8builtins6shared5errorNtB2_5Error6finish(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.ah unwind label %bb.af

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.cn = load i64, ptr %i.b, align 8, !range !8, !alias.scope !3722, !noundef !9
  %i.co = icmp eq i64 %i.cn, -1
  br i1 %i.co, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.ai
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit: ; preds = %bb.ah, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ab

bb.al:                                            ; preds = %bb.an, %bb.af
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.am:                                            ; preds = %bb.ac
  %i.cs = add i64 %i.cc, -1
  store i64 %i.cs, ptr %i.cb, align 8
  br label %bb.ab

bb.an:                                            ; preds = %bb.ao, %bb.ad
  %i.ct = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #36
          to label %common.resume unwind label %bb.al

bb.ao:                                            ; preds = %bb.ad
  %i.cu = extractvalue { ptr, i64 } %i.cg, 0
  %i.cv = extractvalue { ptr, i64 } %i.cg, 1
  store i64 -1, ptr %i.e, align 8, !alias.scope !3723
  %.sroa.043.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.cu, ptr %.sroa.043.sroa.4.0..sroa_idx, align 8, !alias.scope !3723
  %.sroa.043.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.cv, ptr %.sroa.043.sroa.5.0..sroa_idx, align 8, !alias.scope !3723
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.f, ptr %.sroa.444.0..sroa_idx, align 8, !alias.scope !3723
  %.sroa.645.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 %i.h, ptr %.sroa.645.0..sroa_idx, align 8, !alias.scope !3723
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !3723
  %.sroa.847.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr null, ptr %.sroa.847.0..sroa_idx, align 8, !alias.scope !3723
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store i8 0, ptr %.sroa.9.0..sroa_idx, align 8, !alias.scope !3723
  invoke void @_RNvMNtNtNtCs8frGy5WneL6_4fish8builtins6shared5errorNtB2_5Error6finish(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.ap unwind label %bb.an

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.cw = load i64, ptr %i.d, align 8, !range !8, !alias.scope !3724, !noundef !9
  %i.cx = icmp eq i64 %i.cw, -1
  br i1 %i.cx, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit40, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i39 unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i39: ; preds = %bb.aq
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit40

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit40: ; preds = %bb.ap, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.ab
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvNtNtCs8frGy5WneL6_4fish8builtins5false5false(ptr noalias nofree readnone align 8 captures(none) %0, ptr noalias nofree readnone align 8 captures(none) %1, ptr noalias nofree nonnull readnone align 8 captures(none) %2, i64 range(i64 0, 576460752303423488) %3) unnamed_addr #8 {
bb.a:
  ret i64 4294967297
end_hunk_0
