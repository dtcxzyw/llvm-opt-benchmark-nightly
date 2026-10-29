Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.14?download=true
inline.NumInlined: 1814
inline.NumDeleted: 645
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RNvNtNtCs8frGy5WneL6_4fish8builtins4abbr4abbr:bb.a
  store i64 0, ptr %.sroa.5190.0..sroa_idx, align 8
  %.sroa.4192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %.sroa.5193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.gi = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %.sroa.4170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %.sroa.5171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %.sroa.0476.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %.sroa.0476.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  %.sroa.0476.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 40
  %.sroa.4477.0..sroa_idx478 = getelementptr inbounds nuw i8, ptr %i.dd, i64 56
  %.sroa.5480.0..sroa_idx481 = getelementptr inbounds nuw i8, ptr %i.dd, i64 64
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ea, i64 123 ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ea, i64 122 ; 4 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ea, i64 125 ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ea, i64 124 ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.ea, i64 121 ; 4 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.gq = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 2 uses
  %.sroa.6162.0..sroa_idx164 = getelementptr inbounds nuw i8, ptr %i.ea, i64 56 ; 3 uses
  %.sroa.6162.sroa.5.0..sroa.6162.0..sroa_idx164.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ea, i64 64 ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.cs, i64 16 ; 2 uses
  %.sroa.5470.0..sroa_idx471 = getelementptr inbounds nuw i8, ptr %i.ea, i64 104 ; 2 uses
  %.sroa.6473.0..sroa_idx474 = getelementptr inbounds nuw i8, ptr %i.ea, i64 112 ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16 ; 2 uses
  %.sroa.6144.0..sroa_idx146 = getelementptr inbounds nuw i8, ptr %i.ea, i64 80 ; 3 uses
  %.sroa.6144.sroa.5.0..sroa.6144.0..sroa_idx146.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ea, i64 88 ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 2 uses
  %.sroa.4534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %.sroa.5535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.gx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  %.sroa.4202.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %.sroa.6203.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  br label %bb.i

bb.i:                                             ; preds = %.backedge, %bb.h
  %i.gz = invoke noundef i32 @_RNvMCshMbxjpSxucW_12fish_wgetoptNtB2_9WGetopter8next_opt(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.dz)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i423, %bb.om, %bb.oq, %.body.i406, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs8n0tpEuULLm_5pcre210regex_impl5RegexNtNtB12_3ffi15CodeUnitWidth32ENtNtB12_5error5ErrorEECs8frGy5WneL6_4fish.exit165.i, %bb.mi, %.thread.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit177.i, %bb.mz, %bb.nd, %bb.ih, %bb.ew, %bb.ga, %bb.hf, %bb.at, %bb.aj, %.body.i, %.body348, %.body338, %bb.dd, %bb.cn, %.body331, %bb.bx, %bb.bw, %bb.bs, %bb.bh
  %.pn302 = phi { ptr, i32 } [ %.pn.pn, %.body348 ], [ %i.lq, %bb.bx ], [ %i.ln, %bb.bs ], [ %.pn295, %bb.bw ], [ %.pn291, %bb.bh ], [ %i.mk, %bb.cn ], [ %eh.lpad-body332, %.body331 ], [ %i.ne, %bb.dd ], [ %eh.lpad-body339, %.body338 ], [ %.pn9.i, %.body.i406 ], [ %i.il, %bb.aj ], [ %eh.lpad-body.i, %.body.i ], [ %i.jh, %bb.at ], [ %.pn112.pn.i, %bb.ew ], [ %i.xf, %bb.ih ], [ %.pn122.pn.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs8n0tpEuULLm_5pcre210regex_impl5RegexNtNtB12_3ffi15CodeUnitWidth32ENtNtB12_5error5ErrorEECs8frGy5WneL6_4fish.exit165.i ], [ %i.akx, %bb.oq ], [ %i.us, %bb.hf ], [ %i.sy, %bb.ga ], [ %i.aeb, %bb.mi ], [ %i.agn, %bb.nd ], [ %i.agc, %bb.mz ], [ %.pn127.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit177.i ], [ %.pn125194.i, %.thread.i ], [ %i.akm, %bb.om ], [ %.pn.i424, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i423 ], [ %lpad.loopexit.split-lp996, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCshMbxjpSxucW_12fish_wgetopt9WGetopterECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(136) %i.dz) #29
          to label %.body351 unwind label %.loopexit.split-lp569.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.et, %bb.ao, %bb.ek, %bb.ec, %bb.dh, %bb.cr, %bb.cd, %bb.ac, %bb.i, %.invoke838, %.invoke836, %.invoke834, %.invoke832, %.invoke, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit179.i.invoke, %.split.i.i.i.i.invoke, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit22.i.invoke, %bb.ov, %bb.ou, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i419, %_RNvNtNtCs8frGy5WneL6_4fish8builtins4abbr19contains_whitespace.exit.i, %bb.ny, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit.i409, %bb.nk, %bb.ng, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i181.i, %.thread209.i, %bb.ku, %.noexc393, %bb.jf, %bb.iu, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit.i, %bb.in, %bb.es, %bb.ej, %bb.eh, %bb.ef, %bb.df, %bb.cp, %bb.bz, %bb.bu, %bb.bj, %bb.x
  %lpad.loopexit.split-lp996 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %bb.i
  switch i32 %i.gz, label %.invoke832 [
    i32 -1, label %bb.an
    i32 1, label %bb.k
    i32 97, label %bb.l
    i32 99, label %bb.m
    i32 112, label %bb.n
    i32 114, label %bb.o
    i32 2, label %bb.p
    i32 102, label %bb.q
    i32 3, label %bb.r
    i32 101, label %bb.s
    i32 113, label %bb.t
    i32 115, label %bb.u
    i32 108, label %bb.v
    i32 103, label %.backedge
    i32 85, label %bb.w
    i32 104, label %bb.x
    i32 58, label %bb.y
    i32 59, label %bb.z
    i32 63, label %bb.aa
    i32 16, label %bb.ab
  ], !prof !2048

.backedge:                                        ; preds = %bb.j, %bb.ba, %bb.bc, %bb.ad, %bb.en, %bb.ed, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit341, %bb.dc, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit, %bb.av, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.l
  br label %bb.i

bb.k:                                             ; preds = %bb.j
  %i.ha = load ptr, ptr %i.fu, align 8, !align !23, !noundef !8 ; 2 uses
  %.not298 = icmp eq ptr %i.ha, null
  br i1 %.not298, label %._crit_edge749, label %bb.ac

._crit_edge749:                                   ; preds = %bb.k
  %.pre = load i64, ptr %.sroa.58.0..sroa_idx.i, align 8
  br label %bb.ad

bb.l:                                             ; preds = %bb.j
  store i8 1, ptr %i.fl, align 8
  br label %.backedge

bb.m:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dx)
  %i.hb = load ptr, ptr %i.fu, align 8, !align !23, !noundef !8 ; 2 uses
  %.not297 = icmp eq ptr %i.hb, null
  br i1 %.not297, label %.invoke834, label %bb.ao, !prof !9

bb.n:                                             ; preds = %bb.j
  %i.hc = load i8, ptr %i.fo, align 2, !range !29, !noundef !8
  %.not284 = icmp eq i8 %i.hc, 2
  br i1 %.not284, label %bb.aw, label %bb.ax

bb.o:                                             ; preds = %bb.j
  %i.hd = load i64, ptr %i.fn, align 8, !range !14, !noundef !8
  %.not281 = icmp eq i64 %i.hd, -1
  br i1 %.not281, label %bb.cb, label %bb.cc

bb.p:                                             ; preds = %bb.j
  %i.he = load i64, ptr %i.fp, align 8, !range !14, !noundef !8
  %.not278 = icmp eq i64 %i.he, -1
  br i1 %.not278, label %bb.cr, label %bb.cs

bb.q:                                             ; preds = %bb.j
  %i.hf = load ptr, ptr %i.fu, align 8, !align !23, !noundef !8 ; 2 uses
  %i.hg = load i64, ptr %i.fv, align 8            ; 5 uses
  %.not276 = icmp eq ptr %i.hf, null
  br i1 %.not276, label %bb.di, label %bb.dh

bb.r:                                             ; preds = %bb.j
  store i8 1, ptr %i.go, align 1
  br label %.backedge

bb.s:                                             ; preds = %bb.j
  store i8 1, ptr %i.gn, align 4
  br label %.backedge

bb.t:                                             ; preds = %bb.j
  store i8 1, ptr %i.gm, align 1
  br label %.backedge

bb.u:                                             ; preds = %bb.j
  store i8 1, ptr %i.gl, align 2
  br label %.backedge

bb.v:                                             ; preds = %bb.j
  store i8 1, ptr %i.gk, align 1
  br label %.backedge

bb.w:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dc)
  store i64 0, ptr %i.dc, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4192.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.5193.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.db)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da)
  store ptr @635, ptr %i.gi, align 8
  store i64 51, ptr %i.gj, align 8
  store i64 -1, ptr %i.da, align 8
  %i.hh = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.da)
          to label %bb.dr unwind label %.loopexit.split-lp587.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.x:                                             ; preds = %bb.j
  invoke void @_RNvNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc18builtin_print_help(ptr noalias nofree noundef nonnull align 8 dereferenceable(432) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.eu, i64 noundef %i.ew)
          to label %bb.eo unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %bb.j
  %i.hi = load i64, ptr %i.gc, align 8, !noundef !8 ; 2 uses
  %i.hj = add i64 %i.hi, -1                       ; 3 uses
  %i.hk = icmp eq i64 %i.hi, 0
  br i1 %i.hk, label %.invoke838, label %bb.ee

bb.z:                                             ; preds = %bb.j
  %i.hl = load i64, ptr %i.gc, align 8, !noundef !8 ; 2 uses
  %i.hm = add i64 %i.hl, -1                       ; 3 uses
  %i.hn = icmp eq i64 %i.hl, 0
  br i1 %i.hn, label %.invoke838, label %bb.eg

bb.aa:                                            ; preds = %bb.j
  %i.ho = load i64, ptr %i.gc, align 8, !noundef !8 ; 2 uses
  %i.hp = add i64 %i.ho, -1                       ; 3 uses
  %i.hq = icmp eq i64 %i.ho, 0
  br i1 %i.hq, label %.invoke838, label %bb.ei

bb.ab:                                            ; preds = %bb.j
  %i.hr = load ptr, ptr %i.fu, align 8, !align !23, !noundef !8 ; 2 uses
  %.not273 = icmp eq ptr %i.hr, null
  br i1 %.not273, label %.invoke834, label %bb.ek, !prof !9

bb.ac:                                            ; preds = %bb.k
  %i.hs = load i64, ptr %i.fv, align 8, !noundef !8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dy)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu)
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cu, i64 noundef %i.hs, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ad:                                            ; preds = %._crit_edge749, %bb.am
  %i.ht = phi i64 [ %.pre, %._crit_edge749 ], [ %i.iq, %bb.am ] ; 2 uses
  %i.hu = icmp ult i64 %i.ht, 384307168202282326
  call void @llvm.assume(i1 %i.hu)
  %i.hv = icmp samesign ult i64 %i.ht, 2
  %i.hw = load <4 x i8>, ptr %i.go, align 1
  %.fr = freeze <4 x i8> %i.hw
  %i.hx = trunc <4 x i8> %.fr to <4 x i1>
  %i.hy = load i8, ptr %i.gm, align 1, !range !11
  %i.hz = trunc nuw i8 %i.hy to i1
  %i.ia = bitcast <4 x i1> %i.hx to i4
  %i.ib = icmp ne i4 %i.ia, 0
  %op.rdx = select i1 %i.ib, i1 true, i1 %i.hv
  %op.rdx971 = select i1 %op.rdx, i1 true, i1 %i.hz
  br i1 %op.rdx971, label %.backedge, label %bb.an

bb.ae:                                            ; preds = %bb.ac
  %i.ic = load i64, ptr %i.cu, align 8, !range !10, !noundef !8
  %i.id = trunc nuw i64 %i.ic to i1
  %i.ie = load i64, ptr %i.gx, align 8, !range !30, !noundef !8 ; 3 uses
  br i1 %i.id, label %bb.af, label %bb.ag, !prof !9

bb.af:                                            ; preds = %bb.ae
  %i.if = load i64, ptr %i.gy, align 8
  br label %.invoke

bb.ag:                                            ; preds = %bb.ae
  %i.ig = load ptr, ptr %i.gy, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.ih = icmp ule i64 %i.hs, %i.ie
  call void @llvm.assume(i1 %i.ih)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu)
  %.not299 = icmp eq i64 %i.hs, 0
  br i1 %.not299, label %bb.ah, label %bb.al

bb.ah:                                            ; preds = %bb.al, %bb.ag
  store i64 %i.ie, ptr %i.dy, align 8
  store ptr %i.ig, ptr %.sroa.4202.0..sroa_idx, align 8
  store i64 %i.hs, ptr %.sroa.6203.0..sroa_idx, align 8
  %i.ii = load i64, ptr %.sroa.58.0..sroa_idx.i, align 8, !alias.scope !2049, !noundef !8 ; 3 uses
  %i.ij = load i64, ptr %i.fq, align 8, !range !15, !alias.scope !2049, !noundef !8
  %i.ik = icmp eq i64 %i.ii, %i.ij
  br i1 %i.ik, label %bb.ai, label %bb.am

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8grow_oneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fq)
          to label %bb.am unwind label %bb.aj, !noalias !2050

bb.aj:                                            ; preds = %bb.ai
  %i.il = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dy) #29
          to label %.body unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.im = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.al:                                            ; preds = %bb.ag
  %i.in = shl nuw nsw i64 %i.hs, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ig, ptr nonnull align 4 %i.ha, i64 %i.in, i1 false)
  br label %bb.ah

bb.am:                                            ; preds = %bb.ai, %bb.ah
  %i.io = load ptr, ptr %.sroa.47.0..sroa_idx.i, align 8, !alias.scope !2049, !nonnull !8, !noundef !8
  %i.ip = getelementptr inbounds nuw [24 x i8], ptr %i.io, i64 %i.ii
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ip, ptr noundef nonnull align 8 dereferenceable(24) %i.dy, i64 24, i1 false)
  %i.iq = add i64 %i.ii, 1                        ; 2 uses
  store i64 %i.iq, ptr %.sroa.58.0..sroa_idx.i, align 8, !alias.scope !2049
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy)
  br label %bb.ad

bb.an:                                            ; preds = %bb.ad, %bb.j
  %i.ir = load i64, ptr %i.gc, align 8, !noundef !8 ; 4 uses
  %i.is = load i64, ptr %i.em, align 8, !noundef !8 ; 5 uses
  %i.it = icmp ugt i64 %i.ir, %i.is
  br i1 %i.it, label %bb.es, label %bb.er, !prof !9

bb.ao:                                            ; preds = %bb.m
  %i.iu = load i64, ptr %i.fv, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn), !noalias !2051
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cn, i64 noundef %i.iu, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc319 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc319:                                        ; preds = %bb.ao
  %i.iv = load i64, ptr %i.cn, align 8, !range !10, !noalias !2051, !noundef !8
  %i.iw = trunc nuw i64 %i.iv to i1
  %i.ix = load i64, ptr %i.gv, align 8, !range !30, !noalias !2051, !noundef !8 ; 3 uses
  br i1 %i.iw, label %bb.ap, label %bb.aq, !prof !9

bb.ap:                                            ; preds = %.noexc319
  %i.iy = load i64, ptr %i.gw, align 8, !noalias !2051
  br label %.invoke

.invoke:                                          ; preds = %bb.af, %bb.cj, %bb.cu, %bb.dn, %bb.id, %bb.ap
  %i.iz = phi i64 [ %i.ix, %bb.ap ], [ %i.wy, %bb.id ], [ %i.nn, %bb.dn ], [ %i.mu, %bb.cu ], [ %i.me, %bb.cj ], [ %i.ie, %bb.af ]
  %i.ja = phi i64 [ %i.iy, %bb.ap ], [ %i.wz, %bb.id ], [ %i.no, %bb.dn ], [ %i.mv, %bb.cu ], [ %i.mf, %bb.cj ], [ %i.if, %bb.af ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.iz, i64 %i.ja) #34
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.aq:                                            ; preds = %.noexc319
  %i.jb = load ptr, ptr %i.gw, align 8, !noalias !2051, !nonnull !8, !noundef !8 ; 2 uses
  %i.jc = icmp ule i64 %i.iu, %i.ix
  call void @llvm.assume(i1 %i.jc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !noalias !2051
  %.not.i317 = icmp eq i64 %i.iu, 0
  br i1 %.not.i317, label %_RNCNvNtNtCs8frGy5WneL6_4fish8builtins4abbr4abbr0B7_.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.jd = shl nuw nsw i64 %i.iu, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.jb, ptr nonnull readonly align 4 %i.hb, i64 %i.jd, i1 false), !noalias !2052
  br label %_RNCNvNtNtCs8frGy5WneL6_4fish8builtins4abbr4abbr0B7_.exit

_RNCNvNtNtCs8frGy5WneL6_4fish8builtins4abbr4abbr0B7_.exit: ; preds = %bb.ar, %bb.aq
  store i64 %i.ix, ptr %i.dx, align 8
  store ptr %i.jb, ptr %.sroa.4534.0..sroa_idx, align 8
  store i64 %i.iu, ptr %.sroa.5535.0..sroa_idx, align 8
  %i.je = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !2053, !noundef !8 ; 3 uses
  %i.jf = load i64, ptr %i.ea, align 8, !range !15, !alias.scope !2053, !noundef !8
  %i.jg = icmp eq i64 %i.je, %i.jf
  br i1 %i.jg, label %bb.as, label %bb.av

bb.as:                                            ; preds = %_RNCNvNtNtCs8frGy5WneL6_4fish8builtins4abbr4abbr0B7_.exit
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8grow_oneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ea)
          to label %bb.av unwind label %bb.at, !noalias !2054

bb.at:                                            ; preds = %bb.as
  %i.jh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dx) #29
          to label %.body unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ji = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.av:                                            ; preds = %bb.as, %_RNCNvNtNtCs8frGy5WneL6_4fish8builtins4abbr4abbr0B7_.exit
  %i.jj = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !2053, !nonnull !8, !noundef !8
  %i.jk = getelementptr inbounds nuw [24 x i8], ptr %i.jj, i64 %i.je
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jk, ptr noundef nonnull align 8 dereferenceable(24) %i.dx, i64 24, i1 false)
  %i.jl = add i64 %i.je, 1
  store i64 %i.jl, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !2053
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx)
  br label %.backedge

bb.aw:                                            ; preds = %bb.n
  %i.jm = load ptr, ptr %i.fu, align 8, !align !23, !noundef !8 ; 5 uses
  %.not285 = icmp ne ptr %i.jm, null              ; 2 uses
  %i.jn = load i64, ptr %i.fv, align 8            ; 2 uses
  %i.jo = icmp eq i64 %i.jn, 7
  %or.cond307 = select i1 %.not285, i1 %i.jo, i1 false
  br i1 %or.cond307, label %bb.ay, label %bb.az

bb.ax:                                            ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dv)
  %i.jp = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store ptr @631, ptr %i.jp, align 8
  %i.jq = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  store i64 33, ptr %i.jq, align 8
  store i64 -1, ptr %i.dv, align 8
  %i.jr = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dv)
          to label %bb.by unwind label %bb.bx     ; 2 uses

bb.ay:                                            ; preds = %bb.aw
  %i.js = load i128, ptr %i.jm, align 4
  %i.jt = xor i128 %i.js, 8635869716065507902207373082723
  %i.ju = getelementptr i8, ptr %i.jm, i64 12
  %i.jv = load i128, ptr %i.ju, align 4
  %i.jw = xor i128 %i.jv, 7922816253455575607879057539181
  %i.jx = or i128 %i.jt, %i.jw
  %i.jy = icmp ne i128 %i.jx, 0
  %i.jz = zext i1 %i.jy to i32
  %i.ka = icmp eq i32 %i.jz, 0
  br i1 %i.ka, label %bb.ba, label %.thread536

bb.az:                                            ; preds = %bb.aw
  %i.kb = icmp eq i64 %i.jn, 8
  %or.cond309 = select i1 %.not285, i1 %i.kb, i1 false
  br i1 %or.cond309, label %bb.bb, label %.thread536

bb.ba:                                            ; preds = %bb.ay
  store i8 0, ptr %i.fo, align 2
  br label %.backedge

bb.bb:                                            ; preds = %bb.az
  %i.kc = load i128, ptr %i.jm, align 4
  %i.kd = xor i128 %i.kc, 9428151341429512207023032238177
  %i.ke = getelementptr i8, ptr %i.jm, i64 16
  %i.kf = load i128, ptr %i.ke, align 4
  %i.kg = xor i128 %i.kf, 8002044416043626921784619565160
  %i.kh = or i128 %i.kd, %i.kg
  %i.ki = icmp ne i128 %i.kh, 0
  %i.kj = zext i1 %i.ki to i32
  %i.kk = icmp eq i32 %i.kj, 0
  br i1 %i.kk, label %bb.bc, label %.thread536

.thread536:                                       ; preds = %bb.ay, %bb.az, %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.du)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dt)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dr)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dq)
  store i64 0, ptr %i.dq, align 8
  %.sroa.3206.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.3206.0..sroa_idx, align 8
  %.sroa.4209.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  store i64 0, ptr %.sroa.4209.0..sroa_idx, align 8
end_hunk_0
