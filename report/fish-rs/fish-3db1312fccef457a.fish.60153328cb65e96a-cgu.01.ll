Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.01?download=true
inline.NumInlined: 2770
inline.NumDeleted: 706
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_RNvMs5_NtNtCs8frGy5WneL6_4fish5input7bindingNtNtNtB9_6reader6reader6Reader9read_char:bb.a
  %lpad.loopexit42.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body21.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.i.i: ; preds = %bb.by, %bb.bx
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body21.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.i: ; preds = %bb.bv
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body21.i.i.i

bb.bw:                                            ; preds = %bb.bv
  unreachable

bb.bx:                                            ; preds = %_RNvMs5_NtNtCs8frGy5WneL6_4fish5input7bindingNtNtNtB9_6reader6reader6Reader17function_push_arg.exit.i.i.i, %.preheader41.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !1310
  invoke void @_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE5drainNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullEBL_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.x, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %bb.by unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.i.i, !noalias !1304

bb.by:                                            ; preds = %bb.bx
  invoke void @_RINvYNtNtNtCs8frGy5WneL6_4fish6reader6reader6ReaderNtNtNtB9_5input5input16InputEventQueuer12insert_frontINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtBP_9CharEventEEB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.x)
          to label %bb.bz unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.i.i, !noalias !1304

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1310
  %i.ku = load ptr, ptr %i.du, align 8, !noalias !1310, !nonnull !14, !noundef !14 ; 2 uses
  %i.kv = load i64, ptr %i.dt, align 8, !noalias !1310, !noundef !14 ; 4 uses
  store i64 0, ptr %i.dt, align 8, !noalias !1310
  %i.kw = icmp eq i64 %i.kv, 0
  br i1 %i.kw, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.bz, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBH_.exit.i.i
  %.sroa.0.0.i17.i66.i.i = phi i64 [ %i.ky, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBH_.exit.i.i ], [ 0, %bb.bz ] ; 2 uses
  %i.kx = getelementptr inbounds nuw [48 x i8], ptr %i.ku, i64 %.sroa.0.0.i17.i66.i.i ; 6 uses
  %i.ky = add nuw nsw i64 %.sroa.0.0.i17.i66.i.i, 1 ; 4 uses
  %i.kz = load i64, ptr %i.kx, align 8, !range !27, !alias.scope !1312, !noalias !1304, !noundef !14 ; 2 uses
  %i.la = icmp slt i64 %i.kz, 0
  %i.lb = add i64 %i.kz, -9223372036854775807
  %i.lc = select i1 %i.la, i64 %i.lb, i64 0
  switch i64 %i.lc, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBH_.exit.i.i [
    i64 0, label %bb.ca
    i64 1, label %bb.cd
    i64 2, label %bb.cg
  ]

.sink.split.i.i.i:                                ; preds = %bb.cg, %bb.cd, %bb.ca
  %.sink.i.i.i = phi ptr [ %i.lf, %bb.cd ], [ %i.kx, %bb.ca ], [ %i.li, %bb.cg ]
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sink.i.i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBH_.exit.i.i unwind label %bb.ck, !noalias !1304

bb.ca:                                            ; preds = %.lr.ph.i.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.kx)
          to label %.sink.split.i.i.i unwind label %bb.cb, !noalias !1304

bb.cb:                                            ; preds = %bb.ca
  %i.ld = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.kx)
          to label %.body30.i.i unwind label %bb.cc, !noalias !1304

bb.cc:                                            ; preds = %bb.cb
  %i.le = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !1304
  unreachable

bb.cd:                                            ; preds = %.lr.ph.i.i
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kx, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.lf)
          to label %.sink.split.i.i.i unwind label %bb.ce, !noalias !1304

bb.ce:                                            ; preds = %bb.cd
  %i.lg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.lf)
          to label %.body30.i.i unwind label %bb.cf, !noalias !1304

bb.cf:                                            ; preds = %bb.ce
  %i.lh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !1304
  unreachable

bb.cg:                                            ; preds = %.lr.ph.i.i
  %i.li = getelementptr inbounds nuw i8, ptr %i.kx, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.li)
          to label %.sink.split.i.i.i unwind label %bb.ch, !noalias !1304

bb.ch:                                            ; preds = %bb.cg
  %i.lj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.li)
          to label %.body30.i.i unwind label %bb.ci, !noalias !1304

bb.ci:                                            ; preds = %bb.ch
  %i.lk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !1304
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBH_.exit.i.i: ; preds = %.sink.split.i.i.i, %.lr.ph.i.i
  %i.ll = icmp eq i64 %i.ky, %i.kv
  br i1 %i.ll, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.cj:                                            ; preds = %.lr.ph602
  %i.lm = add i64 %.sroa.0.1.i.i.i.i601, 1        ; 2 uses
  %i.ln = icmp eq i64 %i.lm, %i.kv
  br i1 %i.ln, label %.body21.i.i.i, label %.lr.ph602

bb.ck:                                            ; preds = %.sink.split.i.i.i
  %i.lo = landingpad { ptr, i32 }
          cleanup
  br label %.body30.i.i

.body30.i.i:                                      ; preds = %bb.ck, %bb.ch, %bb.ce, %bb.cb
  %eh.lpad-body31.i.i = phi { ptr, i32 } [ %i.lo, %bb.ck ], [ %i.lg, %bb.ce ], [ %i.ld, %bb.cb ], [ %i.lj, %bb.ch ] ; 2 uses
  %i.lp = icmp eq i64 %i.ky, %i.kv
  br i1 %i.lp, label %.body21.i.i.i, label %.lr.ph602

.lr.ph602:                                        ; preds = %.body30.i.i, %bb.cj
  %.sroa.0.1.i.i.i.i601 = phi i64 [ %i.lm, %bb.cj ], [ %i.ky, %.body30.i.i ] ; 2 uses
  %i.lq = getelementptr inbounds nuw [48 x i8], ptr %i.ku, i64 %.sroa.0.1.i.i.i.i601
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.lq) #36
          to label %bb.cj unwind label %bb.cl, !noalias !1304

bb.cl:                                            ; preds = %.lr.ph602
  %i.lr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !1304
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEEB1l_.exit.i.i.i.i: ; preds = %bb.cp, %bb.cm
  %eh.lpad-body19.i.i.i = phi { ptr, i32 } [ %i.lv, %bb.cp ], [ %i.lt, %bb.cm ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ls, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false), !noalias !1304
  br label %.body37.i

._crit_edge.i.i:                                  ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBH_.exit.i.i, %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !noalias !1310
  %.val.i21.i.i = load ptr, ptr %1, align 8, !alias.scope !1311, !noalias !1304, !nonnull !14, !align !19, !noundef !14
  %i.ls = getelementptr inbounds nuw i8, ptr %.val.i21.i.i, i64 1472 ; 5 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ls)
          to label %bb.cn unwind label %bb.cm, !noalias !1304

bb.cm:                                            ; preds = %._crit_edge.i.i
  %i.lt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ls)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEEB1l_.exit.i.i.i.i unwind label %bb.co, !noalias !1304

bb.cn:                                            ; preds = %._crit_edge.i.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ls)
          to label %_RNvMs5_NtNtCs8frGy5WneL6_4fish5input7bindingNtNtNtB9_6reader6reader6Reader18function_push_args.exit.i.i unwind label %bb.cp, !noalias !1304

bb.co:                                            ; preds = %bb.cm
  %i.lu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !1304
  unreachable

bb.cp:                                            ; preds = %bb.cn
  %i.lv = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEEB1l_.exit.i.i.i.i

bb.cq:                                            ; preds = %bb.df
  %i.lw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body121

.body121:                                         ; preds = %bb.de, %bb.cq
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !1304
  unreachable

.preheader.lr.ph.i.i.i:                           ; preds = %.preheader41.i.i.i, %bb.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !1310
  invoke void @_RNvYNtNtNtCs8frGy5WneL6_4fish6reader6reader6ReaderNtNtNtB8_5input5input16InputEventQueuer6readchB8_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.z, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.cr unwind label %.loopexit.i.i.i, !noalias !1304

bb.cr:                                            ; preds = %.preheader.lr.ph.i.i.i
  %i.lx = load i64, ptr %i.z, align 8, !range !27, !alias.scope !1313, !noalias !1310, !noundef !14
  %i.ly = icmp slt i64 %i.lx, 0
  br i1 %i.ly, label %_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit.thread.i.i.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.lz = load i8, ptr %.sroa.gep.sroa.gep29.i.i.i, align 4, !range !20, !alias.scope !1314, !noalias !1310, !noundef !14 ; 2 uses
  %i.ma = load i8, ptr %.sroa.gep.sroa.gep27.i.i.i, align 1, !range !20, !alias.scope !1314, !noalias !1310, !noundef !14 ; 2 uses
  %i.mb = load i8, ptr %.sroa.gep.sroa.gep25.i.i.i, align 2, !range !20, !alias.scope !1314, !noalias !1310, !noundef !14 ; 2 uses
  %i.mc = trunc nuw i8 %i.mb to i1
  %i.md = load i8, ptr %.sroa.gep.sroa.gep23.i.i.i, align 1, !range !20, !alias.scope !1314, !noalias !1310, !noundef !14
  %i.me = trunc nuw i8 %i.md to i1
  %i.mf = load i32, ptr %.sroa.gep.sroa.gep.i.i.i, align 8, !range !31, !alias.scope !1314, !noalias !1310, !noundef !14 ; 2 uses
  %i.mg = icmp ne i32 %i.mf, 0
  %or.cond.i.i.i.i = and i1 %i.mg, %i.mc
  br i1 %or.cond.i.i.i.i, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.mh = load i32, ptr %.sroa.gep.i.i.i, align 8, !range !31, !alias.scope !1314, !noalias !1310, !noundef !14
  %i.mi = or i8 %i.ma, %i.lz
  %2 = or i8 %i.mi, %i.mb
  %or.cond18.not.not.i.i.i.i = icmp eq i8 %2, 0
  br i1 %or.cond18.not.not.i.i.i.i, label %bb.cv, label %_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit.thread.i.i.i

bb.cu:                                            ; preds = %bb.cs
  %i.mj = or i8 %i.ma, %i.lz
  %brmerge.not.i.i.i.i = icmp eq i8 %i.mj, 0
  br i1 %brmerge.not.i.i.i.i, label %bb.cv, label %_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit.thread.i.i.i

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %.sroa.06.0.i.i.i.i = phi i32 [ %i.mf, %bb.cu ], [ %i.mh, %bb.ct ] ; 4 uses
  br i1 %i.me, label %_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit.thread.i.i.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  switch i32 %.sroa.06.0.i.i.i.i, label %bb.cx [
    i32 62734, label %_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit.i.i.i.loopexit
    i32 62723, label %_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit.i.i.i.loopexit607
    i32 62733, label %_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit.i.i.i
  ]

bb.cx:                                            ; preds = %bb.cw
  %i.mk = add nsw i32 %.sroa.06.0.i.i.i.i, -57344
  %or.cond2.i.i.i.i = icmp ult i32 %i.mk, 6400
  %i.ml = icmp samesign ult i32 %.sroa.06.0.i.i.i.i, 28
  %or.cond19.i.i.i.i = select i1 %or.cond2.i.i.i.i, i1 true, i1 %i.ml
  br i1 %or.cond19.i.i.i.i, label %_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit.thread.i.i.i, label %_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit.i.i.i

_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit.i.i.i.loopexit: ; preds = %bb.cw
  br label %_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit.i.i.i

_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit.i.i.i.loopexit607: ; preds = %bb.cw
  br label %_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit.i.i.i

_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit.i.i.i: ; preds = %bb.cx, %bb.cw, %_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit.i.i.i.loopexit607, %_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit.i.i.i.loopexit
  %.sroa.0.0.i20.i.i.i = phi i32 [ 32, %_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit.i.i.i.loopexit ], [ 9, %bb.cw ], [ %.sroa.06.0.i.i.i.i, %bb.cx ], [ 10, %_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit.i.i.i.loopexit607 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.z)
          to label %bb.cy unwind label %.loopexit.split-lp.loopexit.i.i.i, !noalias !1304

bb.cy:                                            ; preds = %_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !1310
  %.val16.i.i.i = load ptr, ptr %1, align 8, !alias.scope !1311, !noalias !1304, !nonnull !14, !align !19, !noundef !14 ; 3 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %.val16.i.i.i, i64 1448 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %.val16.i.i.i, i64 1464 ; 2 uses
  %i.mo = load i64, ptr %i.mn, align 8, !alias.scope !1315, !noalias !1304, !noundef !14 ; 3 uses
  %i.mp = load i64, ptr %i.mm, align 8, !range !16, !alias.scope !1315, !noalias !1304, !noundef !14
  %i.mq = icmp eq i64 %i.mo, %i.mp
  br i1 %i.mq, label %bb.cz, label %_RNvMs5_NtNtCs8frGy5WneL6_4fish5input7bindingNtNtNtB9_6reader6reader6Reader17function_push_arg.exit.i.i.i

bb.cz:                                            ; preds = %bb.cy
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVeccE8grow_oneCsgK97iKBaXgT_12regex_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.mm) #38
          to label %_RNvMs5_NtNtCs8frGy5WneL6_4fish5input7bindingNtNtNtB9_6reader6reader6Reader17function_push_arg.exit.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i, !noalias !1304

_RNvMs5_NtNtCs8frGy5WneL6_4fish5input7bindingNtNtNtB9_6reader6reader6Reader17function_push_arg.exit.i.i.i: ; preds = %bb.cz, %bb.cy
  %i.mr = getelementptr inbounds nuw i8, ptr %.val16.i.i.i, i64 1456
  %i.ms = load ptr, ptr %i.mr, align 8, !alias.scope !1315, !noalias !1304, !nonnull !14, !noundef !14
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.ms, i64 %i.mo
  store i32 %.sroa.0.0.i20.i.i.i, ptr %i.mt, align 4, !noalias !1304
  %i.mu = add i64 %i.mo, 1
  store i64 %i.mu, ptr %i.mn, align 8, !alias.scope !1315, !noalias !1304
  br label %bb.bx

_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit.thread.i.i.i: ; preds = %bb.cx, %bb.cv, %bb.cu, %bb.ct, %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !1310
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.y, ptr noundef nonnull align 8 dereferenceable(48) %i.z, i64 48, i1 false), !noalias !1310
  %i.mv = load i64, ptr %i.dt, align 8, !alias.scope !1316, !noalias !1317, !noundef !14 ; 3 uses
  %i.mw = load i64, ptr %i.aa, align 8, !range !16, !alias.scope !1316, !noalias !1317, !noundef !14
  %i.mx = icmp eq i64 %i.mv, %i.mw
  br i1 %i.mx, label %bb.da, label %bb.dd

bb.da:                                            ; preds = %_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit.thread.i.i.i
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %bb.dd unwind label %bb.db, !noalias !1318

bb.db:                                            ; preds = %bb.da
  %i.my = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.y) #36
          to label %.body21.i.i.i unwind label %bb.dc, !noalias !1304

bb.dc:                                            ; preds = %bb.db
  %i.mz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !1304
  unreachable

bb.dd:                                            ; preds = %bb.da, %_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit.thread.i.i.i
  %i.na = load ptr, ptr %i.du, align 8, !alias.scope !1316, !noalias !1317, !nonnull !14, !noundef !14
  %i.nb = getelementptr inbounds nuw [48 x i8], ptr %i.na, i64 %i.mv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.nb, ptr noundef nonnull align 8 dereferenceable(48) %i.z, i64 48, i1 false), !noalias !1304
  %i.nc = add i64 %i.mv, 1
  store i64 %i.nc, ptr %i.dt, align 8, !alias.scope !1316, !noalias !1317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !1310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !1310
  br label %.preheader.lr.ph.i.i.i

.body21.i.i.i:                                    ; preds = %bb.cj, %.body30.i.i, %bb.db, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.i, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.i.i, %.loopexit.split-lp.loopexit.i.i.i, %.loopexit.i.i.i
  %.pn13.ph.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.i ], [ %i.my, %bb.db ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit42.i.i.i, %.loopexit.split-lp.loopexit.i.i.i ], [ %lpad.loopexit.i.i, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.i.i ], [ %eh.lpad-body31.i.i, %.body30.i.i ], [ %eh.lpad-body31.i.i, %bb.cj ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %bb.df unwind label %bb.de, !noalias !1304

bb.de:                                            ; preds = %.body21.i.i.i
  %i.nd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %.body121 unwind label %bb.dg, !noalias !1304

bb.df:                                            ; preds = %.body21.i.i.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %.body37.i unwind label %bb.cq

bb.dg:                                            ; preds = %bb.de
  %i.ne = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !1304
  unreachable

_RNvMs5_NtNtCs8frGy5WneL6_4fish5input7bindingNtNtNtB9_6reader6reader6Reader18function_push_args.exit.i.i: ; preds = %bb.cn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ls, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false), !noalias !1304
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !1310
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1319
  store i64 0, ptr %i.v, align 8, !noalias !1319
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4.0..sroa_idx.i22.i.i, align 8, !noalias !1319
  store i64 0, ptr %.sroa.5.0..sroa_idx.i23.i.i, align 8, !noalias !1319
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v, i64 noundef 0)
          to label %.noexc.i.i.i unwind label %bb.dh, !noalias !1320

.noexc.i.i.i:                                     ; preds = %_RNvMs5_NtNtCs8frGy5WneL6_4fish5input7bindingNtNtNtB9_6reader6reader6Reader18function_push_args.exit.i.i
  invoke void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtB8_6filter6FilterINtNtNtBc_5slice4iter4IterNtNtCs8frGy5WneL6_4fish3key3KeyENCNvMs5_NtNtB1N_5input7bindingNtNtNtB1N_6reader6reader6Reader15binding_executes_0ENCB2h_s0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3K_8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB4Y_11Utf32StringINtNtB3O_7collect6ExtendcE6extendBN_E0E0EB1N_(ptr noundef nonnull %i.kc, ptr noundef nonnull %i.ke, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvXs2f_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorcE9from_iterINtNtNtB18_8adapters3map3MapINtNtB2i_6filter6FilterINtNtNtB1a_5slice4iter4IterNtNtCs8frGy5WneL6_4fish3key3KeyENCNvMs5_NtNtB3x_5input7bindingNtNtNtB3x_6reader6reader6Reader15binding_executes_0ENCB41_s0_0EEB3x_.exit.i.i unwind label %bb.dh, !noalias !1320

bb.dh:                                            ; preds = %.noexc.i.i.i, %_RNvMs5_NtNtCs8frGy5WneL6_4fish5input7bindingNtNtNtB9_6reader6reader6Reader18function_push_args.exit.i.i
  %i.nf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.v) #36
          to label %.body37.i unwind label %bb.di, !noalias !1320

bb.di:                                            ; preds = %bb.dh
  %i.ng = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !1320
  unreachable

_RINvXs2f_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorcE9from_iterINtNtNtB18_8adapters3map3MapINtNtB2i_6filter6FilterINtNtNtB1a_5slice4iter4IterNtNtCs8frGy5WneL6_4fish3key3KeyENCNvMs5_NtNtB3x_5input7bindingNtNtNtB3x_6reader6reader6Reader15binding_executes_0ENCB41_s0_0EEB3x_.exit.i.i: ; preds = %.noexc.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !noalias !1308
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1319
  br label %.noexc47.i

bb.dj:                                            ; preds = %.noexc43.i
  invoke void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %.sroa.3.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kh)
          to label %.noexc47.i unwind label %.loopexit.i

.noexc47.i:                                       ; preds = %bb.dj, %_RINvXs2f_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorcE9from_iterINtNtNtB18_8adapters3map3MapINtNtB2i_6filter6FilterINtNtNtB1a_5slice4iter4IterNtNtCs8frGy5WneL6_4fish3key3KeyENCNvMs5_NtNtB3x_5input7bindingNtNtNtB3x_6reader6reader6Reader15binding_executes_0ENCB41_s0_0EEB3x_.exit.i.i
  %.sroa.034.0.i.i = phi i64 [ -9223372036854775808, %_RINvXs2f_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorcE9from_iterINtNtNtB18_8adapters3map3MapINtNtB2i_6filter6FilterINtNtNtB1a_5slice4iter4IterNtNtCs8frGy5WneL6_4fish3key3KeyENCNvMs5_NtNtB3x_5input7bindingNtNtNtB3x_6reader6reader6Reader15binding_executes_0ENCB41_s0_0EEB3x_.exit.i.i ], [ -9223372036854775807, %bb.dj ]
  %.sroa.535.1.i.i = phi i8 [ %i.km, %_RINvXs2f_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorcE9from_iterINtNtNtB18_8adapters3map3MapINtNtB2i_6filter6FilterINtNtNtB1a_5slice4iter4IterNtNtCs8frGy5WneL6_4fish3key3KeyENCNvMs5_NtNtB3x_5input7bindingNtNtNtB3x_6reader6reader6Reader15binding_executes_0ENCB41_s0_0EEB3x_.exit.i.i ], [ %.sroa.535.067.i.i, %bb.dj ] ; 2 uses
  %.val19.i.i = load ptr, ptr %1, align 8, !alias.scope !1305, !noalias !1304, !nonnull !14, !align !19, !noundef !14
  %i.nh = getelementptr inbounds nuw i8, ptr %.val19.i.i, i64 1416
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1321
  store i64 %.sroa.034.0.i.i, ptr %i.u, align 8, !noalias !1308
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.i.i, i64 24, i1 false), !noalias !1308
  store i8 %.sroa.535.1.i.i, ptr %.sroa.535.0..sroa_idx.i.i, align 8, !noalias !1308
  %i.ni = invoke noundef nonnull align 8 ptr @_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE14push_front_mutB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.nh, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.u)
          to label %.noexc48.i unwind label %.loopexit.i ; 0 uses

.noexc48.i:                                       ; preds = %.noexc47.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1321
  %i.nj = icmp eq ptr %i.ju, %i.kh
  br i1 %i.nj, label %._crit_edge70.i.i, label %bb.bu

bb.dk:                                            ; preds = %._crit_edge70.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !1308
  store i64 0, ptr %i.ah, align 8, !noalias !1308
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.412.0..sroa_idx.i.i, align 8, !noalias !1308
  store i64 0, ptr %.sroa.513.0..sroa_idx.i.i, align 8, !noalias !1308
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !1308
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !1308
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !1308
  store ptr @84, ptr %i.dy, align 8, !noalias !1308
  store i64 14, ptr %i.dz, align 8, !noalias !1308
  store i64 1, ptr %i.ae, align 8, !noalias !1308
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !1308
  %i.nk = load ptr, ptr %i.ea, align 8, !alias.scope !1304, !noalias !1305, !nonnull !14, !noundef !14
  %i.nl = load i64, ptr %i.eb, align 8, !alias.scope !1304, !noalias !1305, !noundef !14
  invoke void @_RNvCs5UXtnEuoeIl_11fish_common6escape(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ad, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.nk, i64 noundef %i.nl)
          to label %bb.dm unwind label %bb.dl, !noalias !1304

bb.dl:                                            ; preds = %bb.dk
  %i.nm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ae) #36
          to label %.body26.i.i unwind label %bb.ed, !noalias !1304

bb.dm:                                            ; preds = %bb.dk
  %i.nn = load ptr, ptr %i.ec, align 8, !noalias !1308, !nonnull !14, !noundef !14
  %i.no = load i64, ptr %i.ed, align 8, !noalias !1308, !noundef !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 32, i1 false), !noalias !1308
  store i64 1, ptr %i.ee, align 8, !noalias !1308
  store ptr %i.nn, ptr %.sroa.48.0..sroa_idx.i.i, align 8, !noalias !1308
  store i64 %i.no, ptr %.sroa.5.0..sroa_idx.i40.i, align 8, !noalias !1308
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !1308
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringReECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.ag, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 18, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @60, ptr noalias nofree noundef nonnull align 8 %i.af, i64 noundef 2)
          to label %bb.do unwind label %.loopexit160, !noalias !1304

end_hunk_0
begin_hunk_1_@_RNvMs5_NtNtCs8frGy5WneL6_4fish5input7bindingNtNtNtB9_6reader6reader6Reader9read_char:bb.a
bb.gi:                                            ; preds = %bb.gh
  %i.tq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d) #36
          to label %.thread.i91 unwind label %bb.gj, !noalias !1343

bb.gj:                                            ; preds = %bb.gi
  %i.tr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !1343
  unreachable

_RNCNvMs5_NtNtCs8frGy5WneL6_4fish5input7bindingNtNtNtBb_6reader6reader6Reader9read_char0Bb_.exit.thread.i: ; preds = %_RNCNvMs5_NtNtCs8frGy5WneL6_4fish5input7bindingNtNtNtBb_6reader6reader6Reader9read_char0Bb_.exit.i, %bb.gf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false), !noalias !1342
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1342
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1342
  invoke void @_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE5drainNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullEBL_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.gm unwind label %bb.gl, !noalias !1343

bb.gk:                                            ; preds = %bb.gh, %_RNCNvMs5_NtNtCs8frGy5WneL6_4fish5input7bindingNtNtNtBb_6reader6reader6Reader9read_char0Bb_.exit.thread21.i
  %i.ts = load ptr, ptr %i.ti, align 8, !alias.scope !1344, !noalias !1345, !nonnull !14, !noundef !14
  %i.tt = getelementptr inbounds nuw [48 x i8], ptr %i.ts, i64 %i.tn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.tt, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false), !noalias !1343
  %i.tu = add i64 %i.tn, 1
  store i64 %i.tu, ptr %i.td, align 8, !alias.scope !1344, !noalias !1345
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1342
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1342
  br label %bb.ge

.body12.i:                                        ; preds = %bb.gp, %bb.gq, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEEB1l_.exit.i.i, %bb.gl
  %.pn.pn.i = phi { ptr, i32 } [ %i.tv, %bb.gl ], [ %eh.lpad-body15.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEEB1l_.exit.i.i ], [ %i.ue, %bb.gq ], [ %i.ue, %bb.gp ] ; 2 uses
  %.sroa.02.1.i = phi i1 [ true, %bb.gl ], [ false, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEEB1l_.exit.i.i ], [ true, %bb.gq ], [ true, %bb.gp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.f) #36
          to label %bb.gc unwind label %bb.gw, !noalias !1343

bb.gl:                                            ; preds = %bb.gm, %_RNCNvMs5_NtNtCs8frGy5WneL6_4fish5input7bindingNtNtNtBb_6reader6reader6Reader9read_char0Bb_.exit.thread.i
  %i.tv = landingpad { ptr, i32 }
          cleanup
  br label %.body12.i

bb.gm:                                            ; preds = %_RNCNvMs5_NtNtCs8frGy5WneL6_4fish5input7bindingNtNtNtBb_6reader6reader6Reader9read_char0Bb_.exit.thread.i
  invoke void @_RINvYNtNtNtCs8frGy5WneL6_4fish6reader6reader6ReaderNtNtNtB9_5input5input16InputEventQueuer12insert_frontINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtBP_9CharEventEEB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.gn unwind label %bb.gl, !noalias !1343

bb.gn:                                            ; preds = %bb.gm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1342
  %i.tw = load ptr, ptr %i.ti, align 8, !noalias !1342, !nonnull !14, !noundef !14 ; 2 uses
  %i.tx = load i64, ptr %i.td, align 8, !noalias !1342, !noundef !14 ; 4 uses
  store i64 0, ptr %i.td, align 8, !noalias !1342
  %i.ty = icmp eq i64 %i.tx, 0
  br i1 %i.ty, label %._crit_edge, label %.lr.ph597

bb.go:                                            ; preds = %.lr.ph597
  %i.tz = icmp eq i64 %i.ub, %i.tx
  br i1 %i.tz, label %._crit_edge, label %.lr.ph597

.lr.ph597:                                        ; preds = %bb.gn, %bb.go
  %.sroa.0.0.i11.i596 = phi i64 [ %i.ub, %bb.go ], [ 0, %bb.gn ] ; 2 uses
  %i.ua = getelementptr inbounds nuw [48 x i8], ptr %i.tw, i64 %.sroa.0.0.i11.i596
  %i.ub = add nuw nsw i64 %.sroa.0.0.i11.i596, 1  ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ua)
          to label %bb.go unwind label %bb.gq, !noalias !1343

bb.gp:                                            ; preds = %.lr.ph600
  %i.uc = add i64 %.sroa.0.1.i.i598, 1            ; 2 uses
  %i.ud = icmp eq i64 %i.uc, %i.tx
  br i1 %i.ud, label %.body12.i, label %.lr.ph600

bb.gq:                                            ; preds = %.lr.ph597
  %i.ue = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.uf = icmp eq i64 %i.ub, %i.tx
  br i1 %i.uf, label %.body12.i, label %.lr.ph600

.lr.ph600:                                        ; preds = %bb.gq, %bb.gp
  %.sroa.0.1.i.i598 = phi i64 [ %i.uc, %bb.gp ], [ %i.ub, %bb.gq ] ; 2 uses
  %i.ug = getelementptr inbounds nuw [48 x i8], ptr %i.tw, i64 %.sroa.0.1.i.i598
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ug) #36
          to label %bb.gp unwind label %bb.gr, !noalias !1343

bb.gr:                                            ; preds = %.lr.ph600
  %i.uh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !1343
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEEB1l_.exit.i.i: ; preds = %bb.gv, %bb.gs
  %eh.lpad-body15.i = phi { ptr, i32 } [ %i.ul, %bb.gv ], [ %i.uj, %bb.gs ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ui, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !1343
  br label %.body12.i

._crit_edge:                                      ; preds = %bb.go, %bb.gn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !1342
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !1341, !noalias !1343, !nonnull !14, !align !19, !noundef !14
  %i.ui = getelementptr inbounds nuw i8, ptr %.val.i, i64 1472 ; 5 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ui)
          to label %bb.gt unwind label %bb.gs, !noalias !1343

bb.gs:                                            ; preds = %._crit_edge
  %i.uj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ui)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEEB1l_.exit.i.i unwind label %bb.gu, !noalias !1343

bb.gt:                                            ; preds = %._crit_edge
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ui)
          to label %bb.gy unwind label %bb.gv, !noalias !1343

bb.gu:                                            ; preds = %bb.gs
  %i.uk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !1343
  unreachable

bb.gv:                                            ; preds = %bb.gt
  %i.ul = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEEB1l_.exit.i.i

bb.gw:                                            ; preds = %.thread.i91, %.body12.i
  %i.um = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !1343
  unreachable

.thread.i91:                                      ; preds = %bb.gi, %.loopexit.split-lp.i, %.loopexit.i92, %bb.gc
  %.pn.pn.pn19.i = phi { ptr, i32 } [ %.pn.pn.i, %bb.gc ], [ %i.tq, %bb.gi ], [ %lpad.loopexit.i93, %.loopexit.i92 ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #36
          to label %.thread133 unwind label %bb.gw, !noalias !1343

.body110:                                         ; preds = %bb.hw, %bb.gx, %bb.ia
  %.pn27 = phi { ptr, i32 } [ %.pn25, %bb.ia ], [ %i.up, %bb.gx ], [ %i.wh, %bb.hw ] ; 2 uses
  %i.un = load i64, ptr %i.bz, align 8, !range !27, !noundef !14
  %i.uo = icmp sgt i64 %i.un, -1
  br i1 %i.uo, label %.thread133, label %bb.ic

bb.gx:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  %i.up = landingpad { ptr, i32 }
          cleanup
  br label %.body110

bb.gy:                                            ; preds = %bb.gt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ui, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !1343
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bz, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false), !noalias !1341
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1342
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1342
  %.val43 = load i8, ptr %i.cb, align 8, !range !39, !noundef !14 ; 2 uses
  %i.uq = icmp eq i8 %.val43, 98
  %i.ur = load i64, ptr %i.bz, align 8, !range !27
  %i.us = icmp sgt i64 %i.ur, -1                  ; 2 uses
  %or.cond = select i1 %i.uq, i1 %i.us, i1 false
  br i1 %or.cond, label %.thread146, label %bb.gz

.thread146:                                       ; preds = %bb.gy
  %i.ut = getelementptr inbounds nuw i8, ptr %i.bz, i64 44
  store i8 1, ptr %i.ut, align 4
  br label %bb.ha

bb.gz:                                            ; preds = %bb.gy
  %i.uu = icmp eq i8 %.val43, 57
  %or.cond36 = select i1 %i.uu, i1 %i.us, i1 false
  br i1 %or.cond36, label %bb.hb, label %bb.ha

bb.ha:                                            ; preds = %.thread146, %bb.gz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.bz, i64 48, i1 false)
  br label %bb.hy

bb.hb:                                            ; preds = %bb.gz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.by, ptr noundef nonnull align 8 dereferenceable(48) %i.bz, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx)
  store i64 0, ptr %i.bx, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store i64 0, ptr %.sroa.57.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  %i.uv = getelementptr inbounds nuw i8, ptr %i.by, i64 28
  %i.uw = load i8, ptr %i.uv, align 4, !range !20, !alias.scope !1347, !noundef !14 ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %i.by, i64 29
  %i.uy = load i8, ptr %i.ux, align 1, !range !20, !alias.scope !1347, !noundef !14 ; 2 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %i.by, i64 30
  %i.va = load i8, ptr %i.uz, align 2, !range !20, !alias.scope !1347, !noundef !14 ; 2 uses
  %i.vb = trunc nuw i8 %i.va to i1
  %i.vc = getelementptr inbounds nuw i8, ptr %i.by, i64 31
  %i.vd = load i8, ptr %i.vc, align 1, !range !20, !alias.scope !1347, !noundef !14
  %i.ve = trunc nuw i8 %i.vd to i1
  %i.vf = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.vg = load i32, ptr %i.vf, align 8, !range !31, !alias.scope !1347, !noundef !14 ; 2 uses
  %i.vh = icmp ne i32 %i.vg, 0
  %or.cond.i = and i1 %i.vh, %i.vb
  br i1 %or.cond.i, label %bb.hd, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.vi = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.vj = load i32, ptr %i.vi, align 8, !range !31, !alias.scope !1347, !noundef !14
  %i.vk = or i8 %i.uy, %i.uw
  %3 = or i8 %i.vk, %i.va
  %or.cond18.not.not.i = icmp eq i8 %3, 0
  br i1 %or.cond18.not.not.i, label %bb.he, label %select.unfold

bb.hd:                                            ; preds = %bb.hb
  %i.vl = or i8 %i.uy, %i.uw
  %brmerge.not.i = icmp eq i8 %i.vl, 0
  br i1 %brmerge.not.i, label %bb.he, label %select.unfold

bb.he:                                            ; preds = %bb.hd, %bb.hc
  %.sroa.06.0.i = phi i32 [ %i.vg, %bb.hd ], [ %i.vj, %bb.hc ] ; 4 uses
  br i1 %i.ve, label %select.unfold, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  switch i32 %.sroa.06.0.i, label %bb.hi [
    i32 62734, label %_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit
    i32 62723, label %bb.hg
    i32 62733, label %bb.hh
  ]

bb.hg:                                            ; preds = %bb.hf
  br label %_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit

bb.hh:                                            ; preds = %bb.hf
  br label %_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit

bb.hi:                                            ; preds = %bb.hf
  %i.vm = add nsw i32 %.sroa.06.0.i, -57344
  %or.cond2.i = icmp ult i32 %i.vm, 6400
  %i.vn = icmp samesign ult i32 %.sroa.06.0.i, 28
  %or.cond19.i = select i1 %or.cond2.i, i1 true, i1 %i.vn
  br i1 %or.cond19.i, label %select.unfold, label %_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit

.body106:                                         ; preds = %bb.hu, %bb.hj, %.body101
  %.pn25 = phi { ptr, i32 } [ %.pn23, %.body101 ], [ %i.vo, %bb.hj ], [ %i.we, %bb.hu ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bx) #36
          to label %bb.ia unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.hj:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i105, %bb.hk
  %i.vo = landingpad { ptr, i32 }
          cleanup
  br label %.body106

_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit: ; preds = %bb.hf, %bb.hg, %bb.hh, %bb.hi
  %.sroa.0.0.i = phi i32 [ 32, %bb.hf ], [ %.sroa.06.0.i, %bb.hi ], [ 10, %bb.hg ], [ 9, %bb.hh ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !1348
  %i.vp = call noundef align 4 dereferenceable_or_null(4) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2305) 4, i64 noundef range(i64 1, 9) 4) #39, !noalias !1348 ; 3 uses
  %i.vq = icmp eq ptr %i.vp, null
  br i1 %i.vq, label %bb.hk, label %bb.hl, !prof !34

bb.hk:                                            ; preds = %_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 4, i64 noundef 4) #41
          to label %.noexc97 unwind label %bb.hj

.noexc97:                                         ; preds = %bb.hk
  unreachable

select.unfold:                                    ; preds = %bb.hc, %bb.hd, %bb.he, %bb.hi, %bb.hl
  %.sink496 = phi i64 [ 1, %bb.hl ], [ 0, %bb.hi ], [ 0, %bb.he ], [ 0, %bb.hd ], [ 0, %bb.hc ] ; 3 uses
  %.sink495 = phi ptr [ %i.vp, %bb.hl ], [ inttoptr (i64 4 to ptr), %bb.hi ], [ inttoptr (i64 4 to ptr), %bb.he ], [ inttoptr (i64 4 to ptr), %bb.hd ], [ inttoptr (i64 4 to ptr), %bb.hc ] ; 2 uses
  store i64 %.sink496, ptr %i.bt, align 8
  %.sroa.4127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store ptr %.sink495, ptr %.sroa.4127.0..sroa_idx, align 8
  %.sroa.5128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store i64 %.sink496, ptr %.sroa.5128.0..sroa_idx, align 8
  invoke void @_RNvCs5UXtnEuoeIl_11fish_common6escape(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bu, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sink495, i64 noundef %.sink496)
          to label %bb.hn unwind label %bb.hm

bb.hl:                                            ; preds = %_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit
  store i32 %.sroa.0.0.i, ptr %i.vp, align 4, !noalias !1348
  br label %select.unfold

.body101:                                         ; preds = %bb.hs, %bb.hm, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit
  %.pn23 = phi { ptr, i32 } [ %.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit ], [ %i.vr, %bb.hm ], [ %i.wc, %bb.hs ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bt) #36
          to label %.body106 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.hm:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i, %select.unfold
  %i.vr = landingpad { ptr, i32 }
          cleanup
  br label %.body101

bb.hn:                                            ; preds = %select.unfold
  %i.vs = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.vt = load ptr, ptr %i.vs, align 8, !nonnull !14, !noundef !14
  %i.vu = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.vv = load i64, ptr %i.vu, align 8, !noundef !14
  store i64 1, ptr %i.bv, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr %i.vt, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store i64 %i.vv, ptr %.sroa.5.0..sroa_idx, align 8
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringReECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.bw, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @95, i64 noundef 18, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @60, ptr noalias nofree noundef nonnull align 8 %i.bv, i64 noundef 1)
          to label %bb.hp unwind label %bb.ho

bb.ho:                                            ; preds = %bb.hq, %bb.hn
  %i.vw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bv)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.hp:                                            ; preds = %bb.hn
  call void @llvm.experimental.noalias.scope.decl(metadata !1349)
  %i.vx = load i8, ptr %i.bw, align 8, !range !20, !alias.scope !1349, !noalias !1350, !noundef !14
  %i.vy = trunc nuw i8 %i.vx to i1
  br i1 %i.vy, label %bb.hq, label %.noexc99.preheader, !prof !22

bb.hq:                                            ; preds = %bb.hp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !1351
  %i.vz = getelementptr inbounds nuw i8, ptr %i.bw, i64 1
  %i.wa = load i8, ptr %i.vz, align 1, !range !35, !alias.scope !1349, !noalias !1350, !noundef !14
  store i8 %i.wa, ptr %i.bf, align 1, !noalias !1351
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 43, ptr noundef nonnull %i.bf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @41, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #40
          to label %.noexc unwind label %bb.ho

.noexc:                                           ; preds = %bb.hq
  unreachable

.noexc99.preheader:                               ; preds = %bb.hp
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bv)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit100 unwind label %bb.hr

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit: ; preds = %bb.ho, %bb.hr
  %.pn = phi { ptr, i32 } [ %i.wb, %bb.hr ], [ %i.vw, %bb.ho ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bu) #36
          to label %.body101 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.hr:                                            ; preds = %.noexc99.preheader
  %i.wb = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit100: ; preds = %.noexc99.preheader
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bu)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i unwind label %bb.hs

bb.hs:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit100
  %i.wc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bu)
          to label %.body101 unwind label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.wd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit100
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bu)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %bb.hm

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bt)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i105 unwind label %bb.hu

bb.hu:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  %i.we = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bt)
          to label %.body106 unwind label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.wf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i105: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bt)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit109 unwind label %bb.hj

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit109: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  %i.wg = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.wg, ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  store i64 -9223372036854775807, ptr %0, align 8
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.by)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i unwind label %bb.hw

bb.hw:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit109
  %i.wh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.by)
          to label %.body110 unwind label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %i.wi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit109
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.by)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input13KeyInputEventEBH_.exit unwind label %bb.gx

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input13KeyInputEventEBH_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  %i.wj = load i64, ptr %i.bz, align 8, !range !27, !noundef !14
end_hunk_1
begin_hunk_2_@_RNvMs8_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader17handle_char_event:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ai, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1573)
  call void @llvm.experimental.noalias.scope.decl(metadata !1574)
  call void @llvm.experimental.noalias.scope.decl(metadata !1575)
  %i.bw = load i64, ptr %i.ai, align 8, !range !40, !alias.scope !1574, !noalias !1576, !noundef !14
  %.not.i147 = icmp eq i64 %i.bw, -1
  br i1 %.not.i147, label %.lr.ph.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aj, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  br label %bb.bz

.lr.ph.i.i:                                       ; preds = %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !1577)
  call void @llvm.experimental.noalias.scope.decl(metadata !1578)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1579
  store i64 -1, ptr %i.g, align 8, !noalias !1579
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 7 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.by = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.bz = getelementptr inbounds nuw i8, ptr %i.e, i64 29
  %i.ca = getelementptr inbounds nuw i8, ptr %i.e, i64 30
  %i.cb = getelementptr inbounds nuw i8, ptr %i.e, i64 31
  %i.cc = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.cd = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ce = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 6 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.49.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.510.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.44.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %bb.o

.thread54.i.i.i:                                  ; preds = %bb.q
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i.i

bb.o:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEEB13_.exit7.i.i, %.lr.ph.i.i
  %.val15.i19.i.i = phi ptr [ %.val107, %.lr.ph.i.i ], [ %.val.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEEB13_.exit7.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1580)
  %i.cn = getelementptr inbounds nuw i8, ptr %.val15.i19.i.i, i64 2248
  %i.co = load i64, ptr %i.cn, align 8, !noalias !1581, !noundef !14 ; 4 uses
  %.not.i21.i.i.i = icmp eq i64 %i.co, 0
  br i1 %.not.i21.i.i.i, label %.thread78.i.i.i, label %bb.p

.thread78.i.i.i:                                  ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1582
  store i64 0, ptr %i.f, align 8, !noalias !1582
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !1582
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !1582
  br label %.lr.ph.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.cp = getelementptr inbounds nuw i8, ptr %.val15.i19.i.i, i64 48
  %i.cq = load i64, ptr %i.cp, align 8, !noalias !1581, !noundef !14 ; 4 uses
  %i.cr = icmp ult i64 %i.cq, 2305843009213693952
  call void @llvm.assume(i1 %i.cr)
  %i.cs = icmp ult i64 %i.co, %i.cq
  br i1 %i.cs, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #40
          to label %.noexc22.i.i.i unwind label %.thread54.i.i.i, !noalias !1581

.noexc22.i.i.i:                                   ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.ct = sub nuw i64 %i.co, %i.cq
  %i.cu = call i64 @llvm.umin.i64(i64 %i.ct, i64 256)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1582
  store i64 0, ptr %i.f, align 8, !noalias !1582
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !1582
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !1582
  %.not73.i.i.i = icmp eq i64 %i.co, %i.cq
  br i1 %.not73.i.i.i, label %.loopexit.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.r, %.thread78.i.i.i
  %.sroa.02.0.i83.i.i.i = phi i64 [ 256, %.thread78.i.i.i ], [ %i.cu, %bb.r ]
  br label %bb.s

bb.s:                                             ; preds = %.backedge.i.i.i, %.lr.ph.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1582
  invoke void @_RNvMs5_NtNtCs8frGy5WneL6_4fish5input7bindingNtNtNtB9_6reader6reader6Reader9read_char(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.t unwind label %.loopexit68.i.i.i, !noalias !1581

.loopexit.i.i.i:                                  ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEEB13_.exit.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEEB13_.exit25.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1582
  %.pr.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !1582 ; 3 uses
  %i.cv = icmp ult i64 %.pr.i.i.i, 2305843009213693952
  call void @llvm.assume(i1 %i.cv)
  %i.cw = icmp eq i64 %.pr.i.i.i, 0
  br i1 %i.cw, label %.loopexit.thread.i.i.i, label %.loopexit.thread88.i.i.i

.thread58.i.i.i:                                  ; preds = %bb.bp, %bb.bb, %bb.ax, %bb.au, %bb.ar, %bb.aa, %.loopexit.split-lp.i.loopexit.split-lp.i.i, %.loopexit.split-lp.i.loopexit.i.i, %.loopexit68.i.i.i
  %.pn7.i.i.i = phi { ptr, i32 } [ %i.dg, %bb.aa ], [ %i.gh, %bb.bp ], [ %i.fb, %bb.bb ], [ %i.eq, %bb.ax ], [ %lpad.loopexit.i.i.i, %.loopexit68.i.i.i ], [ %i.eo, %bb.au ], [ %i.em, %bb.ar ], [ %lpad.loopexit.i.i, %.loopexit.split-lp.i.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.loopexit.split-lp.i.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #36
          to label %.thread.i.i.i unwind label %bb.bq, !noalias !1581

.loopexit68.i.i.i:                                ; preds = %.sink.split.i.i.i, %bb.s
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread58.i.i.i

.loopexit.split-lp.i.loopexit.i.i:                ; preds = %bb.bl, %bb.bi, %.thread64.i.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread58.i.i.i

.loopexit.split-lp.i.loopexit.split-lp.i.i:       ; preds = %bb.bn, %bb.bh
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread58.i.i.i

bb.t:                                             ; preds = %bb.s
  %i.cx = load i64, ptr %i.e, align 8, !range !27, !noalias !1582, !noundef !14
  %i.cy = icmp sgt i64 %i.cx, -1
  br i1 %i.cy, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false), !noalias !1582
  %i.cz = load i64, ptr %i.g, align 8, !range !40, !alias.scope !1583, !noalias !1582, !noundef !14
  %i.da = icmp eq i64 %i.cz, -1
  br i1 %i.da, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEEB13_.exit.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEEB13_.exit.i.i.i unwind label %bb.bb, !noalias !1581

bb.w:                                             ; preds = %bb.t
  %.val14.i.i.i = load ptr, ptr %0, align 8, !alias.scope !1584, !noalias !1581, !nonnull !14, !align !19, !noundef !14
  %i.db = getelementptr inbounds nuw i8, ptr %.val14.i.i.i, i64 1608
  %i.dc = load i32, ptr %i.db, align 8, !noalias !1581, !noundef !14
  %i.dd = invoke noundef zeroext i1 @_RNvNtCs8frGy5WneL6_4fish15fd_readable_set16poll_fd_readable(i32 noundef %i.dc)
          to label %bb.x unwind label %bb.bp, !noalias !1581

bb.x:                                             ; preds = %bb.w
  br i1 %i.dd, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false), !noalias !1582
  %i.de = load i64, ptr %i.g, align 8, !range !40, !alias.scope !1585, !noalias !1582, !noundef !14
  %i.df = icmp eq i64 %i.de, -1
  br i1 %i.df, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEEB13_.exit25.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEEB13_.exit25.i.i.i unwind label %bb.aa, !noalias !1581

bb.aa:                                            ; preds = %bb.z
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false), !noalias !1582
  br label %.thread58.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEEB13_.exit25.i.i.i: ; preds = %bb.z, %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false), !noalias !1582
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.loopexit.i.i.i

bb.ab:                                            ; preds = %bb.x
  %.val17.i.i.i = load i8, ptr %i.bx, align 4, !range !20, !noalias !1582, !noundef !14
  %.not.i.i.i = icmp eq i8 %.val17.i.i.i, 0
  br i1 %.not.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dh = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !1582, !noundef !14 ; 2 uses
  %i.di = icmp ult i64 %i.dh, 2305843009213693952
  call void @llvm.assume(i1 %i.di)
  %i.dj = icmp eq i64 %i.dh, 0
  br i1 %i.dj, label %bb.al, label %bb.ad

bb.ad:                                            ; preds = %bb.ap, %bb.ac, %bb.ab
  %i.dk = load i8, ptr %i.by, align 4, !range !20, !alias.scope !1586, !noalias !1582, !noundef !14 ; 2 uses
  %i.dl = load i8, ptr %i.bz, align 1, !range !20, !alias.scope !1586, !noalias !1582, !noundef !14 ; 2 uses
  %i.dm = load i8, ptr %i.ca, align 2, !range !20, !alias.scope !1586, !noalias !1582, !noundef !14 ; 2 uses
  %i.dn = trunc nuw i8 %i.dm to i1
  %i.do = load i8, ptr %i.cb, align 1, !range !20, !alias.scope !1586, !noalias !1582, !noundef !14
  %i.dp = trunc nuw i8 %i.do to i1
  %i.dq = load i32, ptr %i.cc, align 8, !range !31, !alias.scope !1586, !noalias !1582, !noundef !14 ; 2 uses
  %i.dr = icmp ne i32 %i.dq, 0
  %or.cond.i.i.i.i = and i1 %i.dr, %i.dn
  br i1 %or.cond.i.i.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ds = load i32, ptr %i.cd, align 8, !range !31, !alias.scope !1586, !noalias !1582, !noundef !14
  %i.dt = or i8 %i.dl, %i.dk
  %2 = or i8 %i.dt, %i.dm
  %or.cond18.not.not.i.i.i.i = icmp eq i8 %2, 0
  br i1 %or.cond18.not.not.i.i.i.i, label %bb.ag, label %_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit.thread.invoke.i.i.i

bb.af:                                            ; preds = %bb.ad
  %i.du = or i8 %i.dl, %i.dk
  %brmerge.not.i.i.i.i = icmp eq i8 %i.du, 0
  br i1 %brmerge.not.i.i.i.i, label %bb.ag, label %_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit.thread.invoke.i.i.i

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.sroa.06.0.i.i.i.i = phi i32 [ %i.dq, %bb.af ], [ %i.ds, %bb.ae ] ; 4 uses
  br i1 %i.dp, label %_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit.thread.invoke.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  switch i32 %.sroa.06.0.i.i.i.i, label %bb.ak [
    i32 62734, label %_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit.i.i.i
    i32 62723, label %bb.ai
    i32 62733, label %bb.aj
  ]

bb.ai:                                            ; preds = %bb.ah
  br label %_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit.i.i.i

bb.aj:                                            ; preds = %bb.ah
  br label %_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit.i.i.i

bb.ak:                                            ; preds = %bb.ah
  %i.dv = add nsw i32 %.sroa.06.0.i.i.i.i, -57344
  %or.cond2.i.i.i.i = icmp ult i32 %i.dv, 6400
  %i.dw = icmp samesign ult i32 %.sroa.06.0.i.i.i.i, 28
  %or.cond19.i.i.i.i = select i1 %or.cond2.i.i.i.i, i1 true, i1 %i.dw
  br i1 %or.cond19.i.i.i.i, label %_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit.thread.invoke.i.i.i, label %_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit.i.i.i

bb.al:                                            ; preds = %bb.ac
  %.val13.i.i.i = load ptr, ptr %0, align 8, !alias.scope !1584, !noalias !1581, !nonnull !14, !align !19, !noundef !14 ; 7 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.val13.i.i.i, i64 416
  %i.dy = load i64, ptr %i.dx, align 8, !range !28, !alias.scope !1587, !noalias !1581, !noundef !14
  %.not.i26.i.i.i = icmp eq i64 %i.dy, 0
  br i1 %.not.i26.i.i.i, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.dz = getelementptr inbounds nuw i8, ptr %.val13.i.i.i, i64 1248
  %i.ea = load i64, ptr %i.dz, align 8, !range !28, !alias.scope !1587, !noalias !1581, !noundef !14
  %i.eb = icmp ne i64 %i.ea, 0
  %i.ec = getelementptr inbounds nuw i8, ptr %.val13.i.i.i, i64 689
  %i.ed = load i8, ptr %i.ec, align 1, !range !20, !alias.scope !1587, !noalias !1581
  %i.ee = trunc nuw i8 %i.ed to i1
  %or.cond.i28.i.i.i = select i1 %i.eb, i1 %i.ee, i1 false
  br i1 %or.cond.i28.i.i.i, label %bb.ao, label %bb.ap

bb.an:                                            ; preds = %bb.al
  %.old1.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val13.i.i.i, i64 689
  %.old2.i.i.i.i = load i8, ptr %.old1.i.i.i.i, align 1, !range !20, !alias.scope !1587, !noalias !1581, !noundef !14
  %.old3.i.i.i.i = trunc nuw i8 %.old2.i.i.i.i to i1
  br i1 %.old3.i.i.i.i, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.ef = getelementptr inbounds nuw i8, ptr %.val13.i.i.i, i64 432
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.am
  %.sroa.04.0.i.i.i.i = phi ptr [ %i.ef, %bb.ao ], [ %.val13.i.i.i, %bb.an ], [ %.val13.i.i.i, %bb.am ]
  %i.eg = getelementptr i8, ptr %.sroa.04.0.i.i.i.i, i64 120
  %.val18.i.i.i = load i64, ptr %i.eg, align 8, !noalias !1581, !noundef !14
  %i.eh = icmp eq i64 %.val18.i.i.i, 0
  br i1 %i.eh, label %_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit.thread.invoke.i.i.i, label %bb.ad

_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit.thread.invoke.i.i.i: ; preds = %bb.ba, %bb.ap, %bb.ak, %bb.ag, %bb.af, %bb.ae
  %i.ei = load i64, ptr %i.e, align 8, !range !27, !alias.scope !1588, !noalias !1589, !noundef !14 ; 2 uses
  %i.ej = icmp slt i64 %i.ei, 0
  %i.ek = add i64 %i.ei, -9223372036854775807
  %i.el = select i1 %i.ej, i64 %i.ek, i64 0
  switch i64 %i.el, label %.backedge.i.i.i [
    i64 0, label %bb.aq
    i64 1, label %bb.at
    i64 2, label %bb.aw
  ]

.sink.split.i.i.i:                                ; preds = %bb.aw, %bb.at, %bb.aq
  %.sink.i.i.i = phi ptr [ %i.ce, %bb.at ], [ %i.e, %bb.aq ], [ %i.ce, %bb.aw ]
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sink.i.i.i)
          to label %.backedge.i.i.i unwind label %.loopexit68.i.i.i, !noalias !1590

bb.aq:                                            ; preds = %_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit.thread.invoke.i.i.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %.sink.split.i.i.i unwind label %bb.ar, !noalias !1581

bb.ar:                                            ; preds = %bb.aq
  %i.em = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %.thread58.i.i.i unwind label %bb.as, !noalias !1581

bb.as:                                            ; preds = %bb.ar
  %i.en = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !1581
  unreachable

bb.at:                                            ; preds = %_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit.thread.invoke.i.i.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ce)
          to label %.sink.split.i.i.i unwind label %bb.au, !noalias !1581

bb.au:                                            ; preds = %bb.at
  %i.eo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ce)
          to label %.thread58.i.i.i unwind label %bb.av, !noalias !1581

bb.av:                                            ; preds = %bb.au
  %i.ep = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !1581
  unreachable

bb.aw:                                            ; preds = %_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit.thread.invoke.i.i.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ce)
          to label %.sink.split.i.i.i unwind label %bb.ax, !noalias !1581

bb.ax:                                            ; preds = %bb.aw
  %i.eq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ce)
          to label %.thread58.i.i.i unwind label %bb.ay, !noalias !1581

bb.ay:                                            ; preds = %bb.ax
  %i.er = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !1581
  unreachable

_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit.i.i.i: ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ah
  %.sroa.0.0.i.i.i.i = phi i32 [ 32, %bb.ah ], [ %.sroa.06.0.i.i.i.i, %bb.ak ], [ 10, %bb.ai ], [ 9, %bb.aj ]
  %i.es = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !1591, !noalias !1582, !noundef !14 ; 3 uses
  %i.et = load i64, ptr %i.f, align 8, !range !16, !alias.scope !1591, !noalias !1582, !noundef !14
  %i.eu = icmp eq i64 %i.es, %i.et
  br i1 %i.eu, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit.i.i.i
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #38
          to label %bb.ba unwind label %bb.bp, !noalias !1581

bb.ba:                                            ; preds = %bb.az, %_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit.i.i.i
  %i.ev = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !1591, !noalias !1582, !nonnull !14, !noundef !14
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.es
  store i32 %.sroa.0.0.i.i.i.i, ptr %i.ew, align 4, !noalias !1581
  %i.ex = add i64 %i.es, 1
  store i64 %i.ex, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !1591, !noalias !1582
  br label %_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit.thread.invoke.i.i.i

.backedge.i.i.i:                                  ; preds = %.sink.split.i.i.i, %_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit.thread.invoke.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1582
  %i.ey = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !1582, !noundef !14 ; 3 uses
  %i.ez = icmp ult i64 %i.ey, 2305843009213693952
  call void @llvm.assume(i1 %i.ez)
  %i.fa = icmp samesign ult i64 %i.ey, %.sroa.02.0.i83.i.i.i
  br i1 %i.fa, label %bb.s, label %.loopexit.thread88.i.i.i

bb.bb:                                            ; preds = %bb.v
  %i.fb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false), !noalias !1582
  br label %.thread58.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEEB13_.exit.i.i.i: ; preds = %bb.v, %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false), !noalias !1582
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.loopexit.i.i.i

.loopexit.thread.i.i.i:                           ; preds = %bb.bo, %.loopexit.i.i.i, %bb.r
  %.sroa.0.0.copyload.i = load i64, ptr %i.g, align 8, !noalias !1592 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx.i, i64 40, i1 false), !noalias !1592
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RNvMs8_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader17read_normal_chars.exit.i.i unwind label %bb.bc, !noalias !1581

bb.bc:                                            ; preds = %.loopexit.thread.i.i.i
  %i.fc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.i unwind label %bb.bd, !noalias !1581

bb.bd:                                            ; preds = %bb.bc
  %i.fd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !1581
  unreachable

.loopexit.thread88.i.i.i:                         ; preds = %.backedge.i.i.i, %.loopexit.i.i.i
  %i.fe = phi i64 [ %.pr.i.i.i, %.loopexit.i.i.i ], [ %i.ey, %.backedge.i.i.i ] ; 4 uses
  %.val12.i.i.i = load ptr, ptr %0, align 8, !alias.scope !1584, !noalias !1581, !nonnull !14, !align !19, !noundef !14 ; 9 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.val12.i.i.i, i64 416
  %i.fg = load i64, ptr %i.ff, align 8, !range !28, !alias.scope !1593, !noalias !1581, !noundef !14
  %.not.i31.i.i.i = icmp eq i64 %i.fg, 0
  br i1 %.not.i31.i.i.i, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %.loopexit.thread88.i.i.i
  %i.fh = getelementptr inbounds nuw i8, ptr %.val12.i.i.i, i64 1248
  %i.fi = load i64, ptr %i.fh, align 8, !range !28, !alias.scope !1593, !noalias !1581, !noundef !14
  %i.fj = icmp ne i64 %i.fi, 0
  %i.fk = getelementptr inbounds nuw i8, ptr %.val12.i.i.i, i64 689
  %i.fl = load i8, ptr %i.fk, align 1, !range !20, !alias.scope !1593, !noalias !1581
  %i.fm = trunc nuw i8 %i.fl to i1
  %or.cond.i37.i.i.i = select i1 %i.fj, i1 %i.fm, i1 false
end_hunk_2
begin_hunk_3_@_RNvMs8_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader17handle_char_event:bb.a

.body.i:                                          ; preds = %.loopexit.split-lp.i, %.loopexit.i, %bb.br, %.thread.i.i.i, %bb.bc
  %eh.lpad-body.i = phi { ptr, i32 } [ %.pn7.pn50.i.i.i, %.thread.i.i.i ], [ %.pn7.pn50.i.i.i, %bb.br ], [ %i.fc, %bb.bc ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %i.gs = load i64, ptr %i.ai, align 8, !range !40, !alias.scope !1607, !noalias !1576, !noundef !14
  %i.gt = icmp eq i64 %i.gs, -1
  br i1 %i.gt, label %.thread, label %bb.bw

bb.bw:                                            ; preds = %.body.i
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ai)
          to label %.thread unwind label %bb.bx, !noalias !1573

._crit_edge:                                      ; preds = %bb.bs, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEEB13_.exit8.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  %.val94.pre = load ptr, ptr %0, align 8
  br label %bb.bz

bb.bx:                                            ; preds = %bb.bw
  %i.gu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !1573
  unreachable

bb.by:                                            ; preds = %bb.l
  %i.gv = getelementptr inbounds nuw i8, ptr %.val107, i64 48
  %i.gw = load i64, ptr %i.gv, align 8, !noundef !14 ; 2 uses
  %i.gx = icmp ult i64 %i.gw, 2305843009213693952
  call void @llvm.assume(i1 %i.gx)
  %.not276 = icmp ugt i64 %i.bv, %i.gw
  br i1 %.not276, label %bb.m, label %bb.gq

bb.bz:                                            ; preds = %._crit_edge, %bb.n
  %.val94 = phi ptr [ %.val94.pre, %._crit_edge ], [ %.val107, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  %i.gy = load ptr, ptr %i.an, align 8, !nonnull !14, !align !19, !noundef !14
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 144
  %i.ha = load i8, ptr %i.gz, align 8, !range !20, !noundef !14
  %i.hb = getelementptr inbounds nuw i8, ptr %.val94, i64 2291 ; 2 uses
  %i.hc = load i8, ptr %i.hb, align 1, !range !20, !noundef !14
  %i.hd = or i8 %i.hc, %i.ha
  store i8 %i.hd, ptr %i.hb, align 1
  %i.he = load ptr, ptr %i.an, align 8, !nonnull !14, !align !19, !noundef !14
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 144
  store i8 0, ptr %i.hf, align 8
  %.val106 = load ptr, ptr %0, align 8, !nonnull !14, !align !19, !noundef !14 ; 35 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.val106, i64 2291
  %i.hh = load i8, ptr %i.hg, align 1, !range !20, !noundef !14
  %i.hi = trunc nuw i8 %i.hh to i1
  %.pr = load i64, ptr %i.aj, align 8             ; 4 uses
  %.not74 = icmp eq i64 %.pr, -1                  ; 2 uses
  br i1 %i.hi, label %bb.go, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  br i1 %.not74, label %.thread271, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.6.sroa.0.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 7 uses
  %.sroa.6.sroa.9.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.6.sroa.9.0.copyload = load i64, ptr %.sroa.6.sroa.9.0..sroa.6.0..sroa_idx.sroa_idx, align 8 ; 8 uses
  %.sroa.6.sroa.10.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %.sroa.6.sroa.10.0.copyload = load i64, ptr %.sroa.6.sroa.10.0..sroa.6.0..sroa_idx.sroa_idx, align 8 ; 12 uses
  %.sroa.6.sroa.11.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %.sroa.6.sroa.11.0.copyload = load i64, ptr %.sroa.6.sroa.11.0..sroa.6.0..sroa_idx.sroa_idx, align 8 ; 4 uses
  %i.hj = icmp slt i64 %.pr, 0
  %i.hk = add i64 %.pr, -9223372036854775807
  %i.hl = select i1 %i.hj, i64 %i.hk, i64 0
  switch i64 %i.hl, label %bb.cc [
    i64 0, label %bb.cg
    i64 1, label %bb.dh
    i64 2, label %bb.cd
    i64 3, label %bb.ce
    i64 4, label %bb.fx
  ]

bb.cc:                                            ; preds = %bb.ce, %bb.cb
  unreachable

bb.cd:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store i64 %.sroa.6.sroa.0.0.copyload, ptr %i.ag, align 8
  %.sroa.6.sroa.9.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 %.sroa.6.sroa.9.0.copyload, ptr %.sroa.6.sroa.9.0..sroa_idx24, align 8
  %.sroa.6.sroa.10.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 %.sroa.6.sroa.10.0.copyload, ptr %.sroa.6.sroa.10.0..sroa_idx30, align 8
  %.cast = inttoptr i64 %.sroa.6.sroa.9.0.copyload to ptr
  %.val124 = load ptr, ptr %i.an, align 8, !nonnull !14, !align !19, !noundef !14
  invoke fastcc void @_RNvMs8_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader13eval_bind_cmd(ptr nonnull %.val124, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.cast, i64 noundef %.sroa.6.sroa.10.0.copyload)
          to label %.noexc153 unwind label %bb.ed

.noexc153:                                        ; preds = %bb.cd
  %i.hm = invoke noundef zeroext i1 @_RNvNtNtCs8frGy5WneL6_4fish6reader6reader15set_shell_modes(i32 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @138, i64 noundef 12)
          to label %bb.ee unwind label %bb.ed     ; 0 uses

bb.ce:                                            ; preds = %bb.cb
  switch i64 %.sroa.6.sroa.0.0.copyload, label %bb.cc [
    i64 0, label %bb.eh
    i64 1, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData17save_screen_state.exit
    i64 2, label %bb.ei
    i64 3, label %bb.ej
    i64 4, label %bb.eo
    i64 5, label %bb.fh
    i64 6, label %bb.fi
  ]

bb.cf:                                            ; preds = %bb.db, %bb.da, %bb.cz, %bb.cx
  %i.hn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input13KeyInputEventEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.af) #36
          to label %.thread unwind label %bb.df

bb.cg:                                            ; preds = %bb.cb
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %.sroa.10.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store i64 %.pr, ptr %i.af, align 8
  %.sroa.6.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 %.sroa.6.sroa.0.0.copyload, ptr %.sroa.6.0..sroa_idx12, align 8
  %.sroa.6.sroa.9.0..sroa.6.0..sroa_idx12.sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 %.sroa.6.sroa.9.0.copyload, ptr %.sroa.6.sroa.9.0..sroa.6.0..sroa_idx12.sroa_idx, align 8
  %.sroa.6.sroa.10.0..sroa.6.0..sroa_idx12.sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store i64 %.sroa.6.sroa.10.0.copyload, ptr %.sroa.6.sroa.10.0..sroa.6.0..sroa_idx12.sroa_idx, align 8
  %.sroa.6.sroa.11.0..sroa.6.0..sroa_idx12.sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store i64 %.sroa.6.sroa.11.0.copyload, ptr %.sroa.6.sroa.11.0..sroa.6.0..sroa_idx12.sroa_idx, align 8
  %.sroa.10.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  store i64 %.sroa.10.0.copyload, ptr %.sroa.10.0..sroa_idx13, align 8
  %i.ho = and i64 %.sroa.10.0.copyload, 1095216660480
  %.not280 = icmp eq i64 %i.ho, 0
  %i.hp = lshr i64 %.sroa.6.sroa.10.0.copyload, 32 ; 2 uses
  %i.hq = lshr i64 %.sroa.6.sroa.10.0.copyload, 40 ; 2 uses
  %i.hr = lshr i64 %.sroa.6.sroa.10.0.copyload, 48 ; 2 uses
  %i.hs = trunc i64 %.sroa.6.sroa.11.0.copyload to i32 ; 2 uses
  %i.ht = trunc i64 %.sroa.6.sroa.10.0.copyload to i32
  %.phi.trans.insert307 = getelementptr inbounds nuw i8, ptr %.val106, i64 416
  %.pre = load i64, ptr %.phi.trans.insert307, align 8, !range !28 ; 2 uses
  br i1 %.not280, label %._crit_edge306, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %.not.i155 = icmp eq i64 %.pre, 0
  br i1 %.not.i155, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.hu = getelementptr inbounds nuw i8, ptr %.val106, i64 1248
  %i.hv = load i64, ptr %i.hu, align 8, !range !28, !alias.scope !1608, !noundef !14
  %i.hw = icmp ne i64 %i.hv, 0
  %i.hx = getelementptr inbounds nuw i8, ptr %.val106, i64 689
  %i.hy = load i8, ptr %i.hx, align 1, !range !20, !alias.scope !1608
  %i.hz = trunc nuw i8 %i.hy to i1
  %or.cond.i = select i1 %i.hw, i1 %i.hz, i1 false
  br i1 %or.cond.i, label %bb.ck, label %bb.cl

bb.cj:                                            ; preds = %bb.ch
  %.old1.i = getelementptr inbounds nuw i8, ptr %.val106, i64 689
  %.old2.i = load i8, ptr %.old1.i, align 1, !range !20, !alias.scope !1608, !noundef !14
  %.old3.i = trunc nuw i8 %.old2.i to i1
  br i1 %.old3.i, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.ia = getelementptr inbounds nuw i8, ptr %.val106, i64 432
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ci, %bb.cj, %bb.ck
  %.sroa.04.0.i = phi ptr [ %i.ia, %bb.ck ], [ %.val106, %bb.cj ], [ %.val106, %bb.ci ]
  %i.ib = getelementptr i8, ptr %.sroa.04.0.i, i64 120
  %.val119 = load i64, ptr %i.ib, align 8, !noundef !14
  %i.ic = icmp eq i64 %.val119, 0
  br i1 %i.ic, label %_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit.thread, label %._crit_edge306

._crit_edge306:                                   ; preds = %bb.cg, %bb.cl
  %.not.i156 = icmp eq i64 %.pre, 0
  br i1 %.not.i156, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %._crit_edge306
  %i.id = getelementptr inbounds nuw i8, ptr %.val106, i64 1248
  %i.ie = load i64, ptr %i.id, align 8, !range !28, !alias.scope !1609, !noundef !14
  %i.if = icmp ne i64 %i.ie, 0
  %i.ig = getelementptr inbounds nuw i8, ptr %.val106, i64 689
  %i.ih = load i8, ptr %i.ig, align 1, !range !20, !alias.scope !1609
  %i.ii = trunc nuw i8 %i.ih to i1
  %or.cond.i162 = select i1 %i.if, i1 %i.ii, i1 false
  br i1 %or.cond.i162, label %bb.co, label %bb.cp

bb.cn:                                            ; preds = %._crit_edge306
  %.old1.i157 = getelementptr inbounds nuw i8, ptr %.val106, i64 689
  %.old2.i158 = load i8, ptr %.old1.i157, align 1, !range !20, !alias.scope !1609, !noundef !14
  %.old3.i159 = trunc nuw i8 %.old2.i158 to i1
  br i1 %.old3.i159, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn, %bb.cm
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn, %bb.cm
  %.sroa.0.0.i161 = phi i1 [ true, %bb.co ], [ false, %bb.cn ], [ false, %bb.cm ] ; 2 uses
  %i.ij = trunc i64 %i.hr to i1
  %i.ik = and i64 %.sroa.6.sroa.10.0.copyload, 72057594037927936
  %.not321 = icmp eq i64 %i.ik, 0
  %i.il = icmp ne i32 %i.hs, 0
  %or.cond.i164 = and i1 %i.il, %i.ij
  br i1 %or.cond.i164, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %3 = or i64 %i.hp, %i.hr
  %i.im = or i64 %3, %i.hq
  %i.in = and i64 %i.im, 255
  %or.cond18.not.not.i = icmp eq i64 %i.in, 0
  br i1 %or.cond18.not.not.i, label %bb.cs, label %_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit.thread

bb.cr:                                            ; preds = %bb.cp
  %i.io = or i64 %i.hq, %i.hp
  %i.ip = and i64 %i.io, 255
  %brmerge.not.i = icmp eq i64 %i.ip, 0
  br i1 %brmerge.not.i, label %bb.cs, label %_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit.thread

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %.sroa.06.0.i = phi i32 [ %i.hs, %bb.cr ], [ %i.ht, %bb.cq ] ; 4 uses
  br i1 %.not321, label %bb.ct, label %_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit.thread

bb.ct:                                            ; preds = %bb.cs
  switch i32 %.sroa.06.0.i, label %bb.cw [
    i32 62734, label %bb.cx
    i32 62723, label %bb.cu
    i32 62733, label %bb.cv
  ]

bb.cu:                                            ; preds = %bb.ct
  br label %bb.cx

bb.cv:                                            ; preds = %bb.ct
  br label %bb.cx

bb.cw:                                            ; preds = %bb.ct
  %i.iq = add nsw i32 %.sroa.06.0.i, -57344
  %or.cond2.i = icmp ult i32 %i.iq, 6400
  %i.ir = icmp samesign ult i32 %.sroa.06.0.i, 28
  %or.cond19.i = select i1 %or.cond2.i, i1 true, i1 %i.ir
  br i1 %or.cond19.i, label %_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit.thread, label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv, %bb.cu, %bb.ct
  %.sroa.0.0.i165 = phi i32 [ 32, %bb.ct ], [ %.sroa.06.0.i, %bb.cw ], [ 10, %bb.cu ], [ 9, %bb.cv ]
  invoke fastcc void @_RNvMs5_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData11insert_char(ptr noalias nofree noundef align 8 dereferenceable(2304) %.val106, i1 noundef zeroext %.sroa.0.0.i161, i32 noundef %.sroa.0.0.i165)
          to label %bb.cy unwind label %bb.cf

bb.cy:                                            ; preds = %bb.cx
  %.val93.pre308 = load ptr, ptr %0, align 8      ; 2 uses
  br i1 %.sroa.0.0.i161, label %_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit.thread, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  invoke fastcc void @_RNvMsb_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData11clear_pager(ptr noalias nofree noundef align 8 dereferenceable(2304) %.val93.pre308)
          to label %bb.da unwind label %bb.cf

bb.da:                                            ; preds = %bb.cz
  %.val90 = load ptr, ptr %0, align 8, !nonnull !14, !align !19, !noundef !14
  %i.is = getelementptr inbounds nuw i8, ptr %.val90, i64 1624
  invoke void @_RNvMs_NtNtCs8frGy5WneL6_4fish6reader14history_searchNtB4_19ReaderHistorySearch5reset(ptr noalias nofree noundef nonnull align 8 dereferenceable(304) %i.is)
          to label %._RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit.thread_crit_edge unwind label %bb.cf

._RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit.thread_crit_edge: ; preds = %bb.da
  %.val93.pre = load ptr, ptr %0, align 8
  br label %_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit.thread

_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit.thread: ; preds = %._RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit.thread_crit_edge, %bb.cw, %bb.cq, %bb.cr, %bb.cs, %bb.cl, %bb.cy
  %.val93 = phi ptr [ %.val93.pre, %._RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit.thread_crit_edge ], [ %.val106, %bb.cw ], [ %.val106, %bb.cq ], [ %.val106, %bb.cr ], [ %.val106, %bb.cs ], [ %.val106, %bb.cl ], [ %.val93.pre308, %bb.cy ] ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.val93, i64 2258
  %i.iu = load i8, ptr %i.it, align 2, !range !13, !alias.scope !1610, !noundef !14
  %.not.i166 = icmp eq i8 %i.iu, 2
  br i1 %.not.i166, label %bb.db, label %bb.dc, !prof !22

bb.db:                                            ; preds = %_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit.thread
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #40
          to label %.noexc167 unwind label %bb.cf

.noexc167:                                        ; preds = %bb.db
  unreachable

bb.dc:                                            ; preds = %_RNvMs0_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_8KeyEvent14codepoint_text.exit.thread
  %i.iv = getelementptr inbounds nuw i8, ptr %.val93, i64 2256
  store i8 -1, ptr %i.iv, align 8
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.af)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i unwind label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.iw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.af)
          to label %.thread unwind label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.ix = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.dc
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData17save_screen_state.exit

_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData17save_screen_state.exit: ; preds = %bb.el, %bb.en, %bb.eh, %bb.gm, %bb.ce, %bb.fg, %bb.fh, %bb.fw, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i189, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEEB13_.exit

bb.df:                                            ; preds = %bb.gt, %bb.fk, %bb.eq, %bb.ed, %bb.dg, %bb.cf
  %i.iy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.dg:                                            ; preds = %.invoke328, %bb.dx, %bb.dw, %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit.thread, %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit.thread268, %bb.dm
  %i.iz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input16ReadlineCmdEventEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ah) #36
          to label %.thread unwind label %bb.df

bb.dh:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store i64 %.sroa.6.sroa.0.0.copyload, ptr %i.ah, align 8
  %.sroa.6.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 %.sroa.6.sroa.9.0.copyload, ptr %.sroa.6.sroa.9.0..sroa_idx, align 8
  %.sroa.6.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 %.sroa.6.sroa.10.0.copyload, ptr %.sroa.6.sroa.10.0..sroa_idx, align 8
  %.sroa.6.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store i64 %.sroa.6.sroa.11.0.copyload, ptr %.sroa.6.sroa.11.0..sroa_idx, align 8
  %i.ja = getelementptr inbounds nuw i8, ptr %.val106, i64 2258
  %i.jb = load i8, ptr %i.ja, align 2, !range !13, !alias.scope !1611, !noundef !14
  %.not.i172 = icmp eq i8 %i.jb, 2
  %i.jc = trunc i64 %.sroa.6.sroa.11.0.copyload to i8 ; 6 uses
  br i1 %.not.i172, label %.invoke328, label %bb.di, !prof !22

bb.di:                                            ; preds = %bb.dh
  %i.jd = getelementptr inbounds nuw i8, ptr %.val106, i64 2256
  %i.je = load i8, ptr %i.jd, align 8, !range !44, !noundef !14
  %.off = add nsw i8 %i.je, -109
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.jf = getelementptr inbounds nuw i8, ptr %.val106, i64 2240
  store i64 0, ptr %i.jf, align 8
  %.val101.pre301.pre = load ptr, ptr %0, align 8
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %.val101.pre301 = phi ptr [ %.val101.pre301.pre, %bb.dj ], [ %.val106, %bb.di ] ; 5 uses
  %i.jg = icmp eq i8 %i.jc, 23                    ; 2 uses
  br i1 %i.jg, label %bb.dl, label %bb.dn

bb.dl:                                            ; preds = %bb.dk
  %i.jh = getelementptr i8, ptr %.val101.pre301, i64 416
  %.val125 = load i64, ptr %i.jh, align 8, !range !28, !noundef !14
  %i.ji = getelementptr i8, ptr %.val101.pre301, i64 1248
  %.val126 = load i64, ptr %i.ji, align 8
  %.not.i178 = icmp ne i64 %.val125, 0
  %i.jj = trunc nuw i64 %.val126 to i1
  %.sroa.0.0.i179 = select i1 %.not.i178, i1 true, i1 %i.jj
  br i1 %.sroa.0.0.i179, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  invoke fastcc void @_RNvMs6_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData20clear_transient_edit(ptr noalias nofree noundef align 8 dereferenceable(2304) %.val101.pre301)
          to label %._crit_edge300 unwind label %bb.dg

._crit_edge300:                                   ; preds = %bb.dm
  %.val101.pre = load ptr, ptr %0, align 8
  br label %bb.dn

bb.dn:                                            ; preds = %._crit_edge300, %bb.dk, %bb.dl
  %.val101 = phi ptr [ %.val101.pre, %._crit_edge300 ], [ %.val101.pre301, %bb.dk ], [ %.val101.pre301, %bb.dl ] ; 6 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.val101, i64 416
  %i.jl = load i64, ptr %i.jk, align 8, !range !28, !alias.scope !1612, !noundef !14
  %.not.i180 = icmp eq i64 %i.jl, 0
  br i1 %.not.i180, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.jm = getelementptr inbounds nuw i8, ptr %.val101, i64 1248
  %i.jn = load i64, ptr %i.jm, align 8, !range !28, !alias.scope !1612, !noundef !14
  %i.jo = icmp ne i64 %i.jn, 0
  %i.jp = getelementptr inbounds nuw i8, ptr %.val101, i64 689
  %i.jq = load i8, ptr %i.jp, align 1, !range !20, !alias.scope !1612
  %i.jr = trunc nuw i8 %i.jq to i1
  %or.cond.i185 = select i1 %i.jo, i1 %i.jr, i1 false
  br i1 %or.cond.i185, label %bb.dq, label %bb.dr

bb.dp:                                            ; preds = %bb.dn
  %.old1.i181 = getelementptr inbounds nuw i8, ptr %.val101, i64 689
  %.old2.i182 = load i8, ptr %.old1.i181, align 1, !range !20, !alias.scope !1612, !noundef !14
  %.old3.i183 = trunc nuw i8 %.old2.i182 to i1
  br i1 %.old3.i183, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp, %bb.do
  br label %bb.dr

bb.dr:                                            ; preds = %bb.do, %bb.dp, %bb.dq
  %i.js = phi i1 [ false, %bb.dq ], [ true, %bb.dp ], [ true, %bb.do ]
  %i.jt = getelementptr i8, ptr %.val101, i64 1920
  %.val128 = load i8, ptr %i.jt, align 8, !range !41, !noundef !14
  %.not278 = icmp eq i8 %.val128, 0
  br i1 %.not278, label %bb.ds, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit.thread268

bb.ds:                                            ; preds = %bb.dr
  switch i8 %i.jc, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit.thread268 [
    i8 0, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit.thread
    i8 2, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit
    i8 110, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit
    i8 109, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit
    i8 6, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit
    i8 9, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit
    i8 10, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader19command_ends_paging.exit
end_hunk_3
