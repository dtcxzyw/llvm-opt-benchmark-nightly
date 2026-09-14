Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/markdown-fa269332a230e88d.markdown.200b78164f002d53-cgu.13?download=true
inline.NumInlined: 109
inline.NumDeleted: 47
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvNtNtCs2KzzoC5ewhj_8markdown9construct8document8flow_end:bb.a
  br i1 %.not118.i, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %.noexc69.i
  %i.fz = load ptr, ptr %i.dl, align 8, !alias.scope !126, !nonnull !4, !noundef !4
  %i.ga = getelementptr inbounds nuw [80 x i8], ptr %i.fz, i64 %i.fx
  %i.gb = mul nuw nsw i64 %i.fq, 80
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ga, ptr nonnull readonly align 8 %.pre126.i, i64 %i.gb, i1 false)
  %.pre.i68.i = load i64, ptr %i.dn, align 8, !alias.scope !126
  br label %bb.al

bb.ak:                                            ; preds = %._crit_edge114.i
  %i.gc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventEEB1b_(ptr noalias noundef align 8 dereferenceable(24) %i.e) #16
          to label %common.resume.i unwind label %bb.ap

bb.al:                                            ; preds = %bb.aj, %.noexc69.i
  %i.gd = phi i64 [ %.pre.i68.i, %bb.aj ], [ %i.fx, %.noexc69.i ]
  %i.ge = add i64 %i.gd, %i.fq
  store i64 %i.ge, ptr %i.dn, align 8, !alias.scope !126
  store i64 0, ptr %i.fp, align 8, !noalias !117
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventEEB1b_.exit.i unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2KzzoC5ewhj_8markdown5event5EventENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume.i unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventEEB1b_.exit.i: ; preds = %bb.al
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2KzzoC5ewhj_8markdown5event5EventENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !117
  br label %.noexc54

bb.ao:                                            ; preds = %bb.ao, %.lr.ph113.i.new
  %.sroa.037.0111.i = phi i64 [ 0, %.lr.ph113.i.new ], [ %i.gx, %bb.ao ] ; 9 uses
  %niter155 = phi i64 [ 0, %.lr.ph113.i.new ], [ %niter155.next.7, %bb.ao ]
  %i.gh = getelementptr inbounds nuw [80 x i8], ptr %.pre126.i, i64 %.sroa.037.0111.i
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 40
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gi, ptr noundef nonnull align 8 dereferenceable(32) %i.fs, i64 32, i1 false)
  %i.gj = getelementptr inbounds nuw [80 x i8], ptr %.pre126.i, i64 %.sroa.037.0111.i
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 120
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gk, ptr noundef nonnull align 8 dereferenceable(32) %i.fs, i64 32, i1 false)
  %i.gl = getelementptr inbounds nuw [80 x i8], ptr %.pre126.i, i64 %.sroa.037.0111.i
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 200
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gm, ptr noundef nonnull align 8 dereferenceable(32) %i.fs, i64 32, i1 false)
  %i.gn = getelementptr inbounds nuw [80 x i8], ptr %.pre126.i, i64 %.sroa.037.0111.i
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 280
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.go, ptr noundef nonnull align 8 dereferenceable(32) %i.fs, i64 32, i1 false)
  %i.gp = getelementptr inbounds nuw [80 x i8], ptr %.pre126.i, i64 %.sroa.037.0111.i
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 360
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gq, ptr noundef nonnull align 8 dereferenceable(32) %i.fs, i64 32, i1 false)
  %i.gr = getelementptr inbounds nuw [80 x i8], ptr %.pre126.i, i64 %.sroa.037.0111.i
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 440
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gs, ptr noundef nonnull align 8 dereferenceable(32) %i.fs, i64 32, i1 false)
  %i.gt = getelementptr inbounds nuw [80 x i8], ptr %.pre126.i, i64 %.sroa.037.0111.i
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 520
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gu, ptr noundef nonnull align 8 dereferenceable(32) %i.fs, i64 32, i1 false)
  %i.gv = getelementptr inbounds nuw [80 x i8], ptr %.pre126.i, i64 %.sroa.037.0111.i
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 600
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gw, ptr noundef nonnull align 8 dereferenceable(32) %i.fs, i64 32, i1 false)
  %i.gx = add nuw nsw i64 %.sroa.037.0111.i, 8    ; 2 uses
  %niter155.next.7 = add nuw nsw i64 %niter155, 8 ; 2 uses
  %niter155.ncmp.7 = icmp eq i64 %niter155.next.7, %unroll_iter154
  br i1 %niter155.ncmp.7, label %._crit_edge114.i.loopexit.unr-lcssa, label %bb.ao

bb.ap:                                            ; preds = %bb.av, %bb.aq, %bb.ak
  %i.gy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.aq:                                            ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs2KzzoC5ewhj_8markdown7resolve4NameE9split_offBH_.exit.i
  %i.gz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2KzzoC5ewhj_8markdown7resolve4NameEEB1b_(ptr noalias noundef align 8 dereferenceable(24) %i.d) #16
          to label %common.resume.i unwind label %bb.ap

bb.ar:                                            ; preds = %bb.af, %.noexc.i
  %i.ha = phi i64 [ %.pre.i.i, %bb.af ], [ %i.fi, %.noexc.i ]
  %i.hb = add i64 %i.ha, %i.es
  store i64 %i.hb, ptr %i.fh, align 8, !alias.scope !124
  store i64 0, ptr %i.fe, align 8, !noalias !117
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2KzzoC5ewhj_8markdown7resolve4NameENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2KzzoC5ewhj_8markdown7resolve4NameEEB1b_.exit.i unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2KzzoC5ewhj_8markdown7resolve4NameENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume.i unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2KzzoC5ewhj_8markdown7resolve4NameEEB1b_.exit.i: ; preds = %bb.ar
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2KzzoC5ewhj_8markdown7resolve4NameENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !117
  %i.he = load ptr, ptr %i.m, align 8, !alias.scope !117, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !127)
  call void @llvm.experimental.noalias.scope.decl(metadata !128)
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 152 ; 2 uses
  %i.hg = load i64, ptr %i.hf, align 8, !alias.scope !128, !noalias !127, !noundef !4 ; 8 uses
  %i.hh = icmp ult i64 %i.hg, 384307168202282326
  call void @llvm.assume(i1 %i.hh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !129
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 -576460752303423487, -9223372036854775808) %i.hg, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
  %i.hi = load i64, ptr %i.a, align 8, !range !12, !noalias !129, !noundef !4
  %i.hj = trunc nuw i64 %i.hi to i1
  %i.hk = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.hl = load i64, ptr %i.hk, align 8, !range !13, !noalias !129, !noundef !4 ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.hj, label %.noexc61, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtB6_6string6StringE9split_offCs2KzzoC5ewhj_8markdown.exit.i, !prof !11

.noexc61:                                         ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2KzzoC5ewhj_8markdown7resolve4NameEEB1b_.exit.i
  %i.hn = load i64, ptr %i.hm, align 8, !noalias !129
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.hl, i64 %i.hn) #18
  unreachable

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtB6_6string6StringE9split_offCs2KzzoC5ewhj_8markdown.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2KzzoC5ewhj_8markdown7resolve4NameEEB1b_.exit.i
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.hp = load ptr, ptr %i.hm, align 8, !noalias !129, !nonnull !4, !noundef !4 ; 3 uses
  %i.hq = icmp ule i64 %i.hg, %i.hl
  call void @llvm.assume(i1 %i.hq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !129
  store i64 %i.hl, ptr %i.c, align 8, !alias.scope !127, !noalias !130
  %i.hr = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.hp, ptr %i.hr, align 8, !alias.scope !127, !noalias !130
  %i.hs = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.hf, align 8, !alias.scope !128, !noalias !127
  store i64 %i.hg, ptr %i.hs, align 8, !alias.scope !127, !noalias !130
  %i.ht = getelementptr inbounds nuw i8, ptr %i.he, i64 144
  %i.hu = load ptr, ptr %i.ht, align 8, !alias.scope !128, !noalias !127, !nonnull !4, !noundef !4
  %i.hv = mul nuw nsw i64 %i.hg, 24               ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.hp, ptr nonnull align 8 %i.hu, i64 %i.hv, i1 false), !noalias !131
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ho, i64 noundef %i.hg)
          to label %.noexc72.i unwind label %bb.av

.noexc72.i:                                       ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtB6_6string6StringE9split_offCs2KzzoC5ewhj_8markdown.exit.i
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 3 uses
  %i.hx = load i64, ptr %i.hw, align 8, !alias.scope !132, !noundef !4 ; 3 uses
  %i.hy = icmp ult i64 %i.hx, 384307168202282326
  call void @llvm.assume(i1 %i.hy)
  %.not.i70.i = icmp eq i64 %i.hg, 0
  br i1 %.not.i70.i, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %.noexc72.i
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ia = load ptr, ptr %i.hz, align 8, !alias.scope !132, !nonnull !4, !noundef !4
  %i.ib = getelementptr inbounds nuw [24 x i8], ptr %i.ia, i64 %i.hx
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ib, ptr nonnull readonly align 8 %i.hp, i64 %i.hv, i1 false)
  %.pre.i71.i = load i64, ptr %i.hw, align 8, !alias.scope !132
  br label %bb.aw

bb.av:                                            ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtB6_6string6StringE9split_offCs2KzzoC5ewhj_8markdown.exit.i
  %i.ic = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2KzzoC5ewhj_8markdown(ptr noalias noundef align 8 dereferenceable(24) %i.c) #16
          to label %common.resume.i unwind label %bb.ap

bb.aw:                                            ; preds = %bb.au, %.noexc72.i
  %i.id = phi i64 [ %.pre.i71.i, %bb.au ], [ %i.hx, %.noexc72.i ]
  %i.ie = add i64 %i.id, %i.hg
  store i64 %i.ie, ptr %i.hw, align 8, !alias.scope !132
  store i64 0, ptr %i.hs, align 8, !noalias !117
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2KzzoC5ewhj_8markdown.exit.i unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.if = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume.i unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ig = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2KzzoC5ewhj_8markdown.exit.i: ; preds = %bb.aw
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !117
  br label %bb.y

bb.az:                                            ; preds = %bb.bi, %.lr.ph99.i
  %.pre127.i = phi ptr [ %i.de, %.lr.ph99.i ], [ %.pre128.i, %bb.bi ] ; 3 uses
  %i.ih = phi ptr [ %i.de, %.lr.ph99.i ], [ %i.km, %bb.bi ] ; 3 uses
  %i.ii = phi i64 [ %i.dg, %.lr.ph99.i ], [ %i.kp, %bb.bi ] ; 8 uses
  %.sroa.01.098.i = phi i64 [ 0, %.lr.ph99.i ], [ %i.kn, %bb.bi ] ; 8 uses
  %.sroa.011.097.i = phi i64 [ 0, %.lr.ph99.i ], [ %.sroa.011.1.i, %bb.bi ] ; 5 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ih, i64 480
  %i.ik = load ptr, ptr %i.ij, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.il = getelementptr inbounds nuw [80 x i8], ptr %i.ik, i64 %.sroa.01.098.i ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 72
  %i.in = load i8, ptr %i.im, align 8, !range !7, !noundef !4
  %i.io = trunc nuw i8 %i.in to i1
  br i1 %i.io, label %bb.ba, label %bb.bi

bb.ba:                                            ; preds = %bb.az
  %i.ip = getelementptr inbounds nuw i8, ptr %i.il, i64 73
  %i.iq = load i8, ptr %i.ip, align 1, !range !8, !noundef !4
  switch i8 %i.iq, label %bb.bi [
    i8 5, label %bb.bb
    i8 105, label %bb.bb
  ]

bb.bb:                                            ; preds = %bb.ba, %bb.ba
  %i.ir = add nsw i64 %.sroa.01.098.i, -1         ; 6 uses
  %i.is = icmp ult i64 %i.ir, %i.ii
  br i1 %i.is, label %.preheader.i, label %.noexc63

.preheader.i:                                     ; preds = %bb.bb
  %i.it = add nuw nsw i64 %.sroa.01.098.i, 1      ; 3 uses
  %i.iu = icmp ult i64 %i.it, %i.ii
  br i1 %i.iu, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.iv = add nsw i64 %i.ii, -1                   ; 4 uses
  %i.iw = getelementptr inbounds nuw [80 x i8], ptr %i.ik, i64 %i.it
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 72
  %i.iy = load i8, ptr %i.ix, align 8, !range !7, !noundef !4
  %i.iz = trunc nuw i8 %i.iy to i1
  br i1 %i.iz, label %.lr.ph84.preheader, label %._crit_edge.i

.lr.ph84.preheader:                               ; preds = %.lr.ph.preheader.i
  %i.ja = add nsw i64 %.sroa.01.098.i, 2          ; 2 uses
  %exitcond.not.i139 = icmp eq i64 %i.ja, %i.ii
  br i1 %exitcond.not.i139, label %._crit_edge.i, label %.lr.ph.i

.noexc63:                                         ; preds = %bb.bb
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ir, i64 noundef %i.ii, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #18
  unreachable

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.lr.ph84, %.lr.ph84.preheader, %.lr.ph.preheader.i, %.preheader.i
  %.lcssa84.i = phi i64 [ %i.ir, %.preheader.i ], [ %i.ir, %.lr.ph.preheader.i ], [ %i.iv, %.lr.ph84.preheader ], [ %i.iv, %.lr.ph84 ], [ %.sroa.01.186.i83140, %.lr.ph.i ]
  %.sroa.018.0.lcssa.i = phi i64 [ %i.ir, %.preheader.i ], [ %i.ir, %.lr.ph.preheader.i ], [ %i.ii, %.lr.ph84.preheader ], [ %i.ii, %.lr.ph84 ], [ %i.jf, %.lr.ph.i ]
  %.sroa.01.1.lcssa.i = phi i64 [ %.sroa.01.098.i, %.preheader.i ], [ %.sroa.01.098.i, %.lr.ph.preheader.i ], [ %i.iv, %.lr.ph84.preheader ], [ %i.iv, %.lr.ph84 ], [ %.sroa.01.186.i83140, %.lr.ph.i ]
  %i.jb = getelementptr inbounds nuw [80 x i8], ptr %i.ik, i64 %.lcssa84.i
  %.sroa.020.0.le.i = getelementptr inbounds nuw i8, ptr %i.jb, i64 40 ; 9 uses
  %i.jc = load i64, ptr %i.r, align 8, !alias.scope !117, !noundef !4 ; 2 uses
  %i.jd = icmp ult i64 %i.jc, 384307168202282326
  call void @llvm.assume(i1 %i.jd)
  %i.je = icmp ult i64 %.sroa.011.097.i, %i.jc
  br i1 %i.je, label %bb.bd, label %bb.bc

.lr.ph.i:                                         ; preds = %.lr.ph84.preheader, %.lr.ph84
  %i.jf = phi i64 [ %i.jk, %.lr.ph84 ], [ %i.ja, %.lr.ph84.preheader ] ; 4 uses
  %.sroa.01.186.i83140 = phi i64 [ %i.jf, %.lr.ph84 ], [ %i.it, %.lr.ph84.preheader ] ; 2 uses
  %i.jg = getelementptr inbounds nuw [80 x i8], ptr %i.ik, i64 %i.jf
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 72
  %i.ji = load i8, ptr %i.jh, align 8, !range !7, !noundef !4
  %i.jj = trunc nuw i8 %i.ji to i1
  br i1 %i.jj, label %.lr.ph84, label %._crit_edge.i

.lr.ph84:                                         ; preds = %.lr.ph.i
  %i.jk = add nsw i64 %i.jf, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.jk, %i.ii
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.bc:                                            ; preds = %bb.bf, %._crit_edge.i
  %.pre.i = phi ptr [ %.pre127.i, %._crit_edge.i ], [ %.pre.pre.i, %bb.bf ] ; 2 uses
  %i.jl = add i64 %.sroa.011.097.i, 1
  br label %bb.bi

bb.bd:                                            ; preds = %._crit_edge.i
  %i.jm = load ptr, ptr %i.x, align 8, !alias.scope !117, !nonnull !4, !noundef !4
  %i.jn = getelementptr inbounds nuw [24 x i8], ptr %i.jm, i64 %.sroa.011.097.i ; 4 uses
  %.sroa.021.0.copyload.i = load i64, ptr %i.jn, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  %.sroa.5.sroa.0.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8 ; 11 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jn, i64 16
  %.sroa.5.sroa.4.0.copyload.i = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8 ; 6 uses
  store i64 -1, ptr %i.jn, align 8
  %.not58.i = icmp eq i64 %.sroa.021.0.copyload.i, -1
  br i1 %.not58.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.jo = icmp ult i64 %.sroa.5.sroa.4.0.copyload.i, 115292150460684698
  call void @llvm.assume(i1 %i.jo)
  %.not117.i = icmp eq i64 %.sroa.5.sroa.4.0.copyload.i, 0
  br i1 %.not117.i, label %._crit_edge96.i, label %.lr.ph95.i

.lr.ph95.i:                                       ; preds = %bb.be
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload.i) ]
  %xtraiter = and i64 %.sroa.5.sroa.4.0.copyload.i, 7 ; 3 uses
  %i.jp = icmp samesign ult i64 %.sroa.5.sroa.4.0.copyload.i, 8
  br i1 %i.jp, label %.epil.preheader, label %.lr.ph95.i.new

.lr.ph95.i.new:                                   ; preds = %.lr.ph95.i
  %unroll_iter = and i64 %.sroa.5.sroa.4.0.copyload.i, 144115188075855864
  br label %bb.bh

bb.bf:                                            ; preds = %._crit_edge96.i, %bb.bd
  %.pre.pre.i = load ptr, ptr %i.m, align 8, !alias.scope !117
  br label %bb.bc

._crit_edge96.i.loopexit.unr-lcssa:               ; preds = %bb.bh
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge96.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge96.i.loopexit.unr-lcssa, %.lr.ph95.i
  %.sroa.024.093.i.epil.init = phi i64 [ 0, %.lr.ph95.i ], [ %i.kl, %._crit_edge96.i.loopexit.unr-lcssa ]
  %lcmp.mod148 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod148)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bg, %.epil.preheader
  %.sroa.024.093.i.epil = phi i64 [ %.sroa.024.093.i.epil.init, %.epil.preheader ], [ %i.js, %bb.bg ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.bg ]
  %i.jq = getelementptr inbounds nuw [80 x i8], ptr %.sroa.5.sroa.0.0.copyload.i, i64 %.sroa.024.093.i.epil
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 40
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jr, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.020.0.le.i, i64 32, i1 false)
  %i.js = add nuw nsw i64 %.sroa.024.093.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge96.i, label %bb.bg, !llvm.loop !112

._crit_edge96.i:                                  ; preds = %._crit_edge96.i.loopexit.unr-lcssa, %bb.bg, %bb.be
  %i.jt = load ptr, ptr %i.m, align 8, !alias.scope !117, !nonnull !4, !noundef !4
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 520
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !117
  store i64 %.sroa.021.0.copyload.i, ptr %i.f, align 8, !noalias !117
  store ptr %.sroa.5.sroa.0.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !117
  store i64 %.sroa.5.sroa.4.0.copyload.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !117
  call void @_RNvMNtNtCs2KzzoC5ewhj_8markdown4util8edit_mapNtB2_7EditMap3add(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ju, i64 noundef %.sroa.018.0.lcssa.i, i64 noundef 0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !117
  br label %bb.bf

bb.bh:                                            ; preds = %bb.bh, %.lr.ph95.i.new
  %.sroa.024.093.i = phi i64 [ 0, %.lr.ph95.i.new ], [ %i.kl, %bb.bh ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph95.i.new ], [ %niter.next.7, %bb.bh ]
  %i.jv = getelementptr inbounds nuw [80 x i8], ptr %.sroa.5.sroa.0.0.copyload.i, i64 %.sroa.024.093.i
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 40
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jw, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.020.0.le.i, i64 32, i1 false)
  %i.jx = getelementptr inbounds nuw [80 x i8], ptr %.sroa.5.sroa.0.0.copyload.i, i64 %.sroa.024.093.i
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 120
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jy, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.020.0.le.i, i64 32, i1 false)
  %i.jz = getelementptr inbounds nuw [80 x i8], ptr %.sroa.5.sroa.0.0.copyload.i, i64 %.sroa.024.093.i
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 200
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ka, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.020.0.le.i, i64 32, i1 false)
  %i.kb = getelementptr inbounds nuw [80 x i8], ptr %.sroa.5.sroa.0.0.copyload.i, i64 %.sroa.024.093.i
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 280
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.kc, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.020.0.le.i, i64 32, i1 false)
  %i.kd = getelementptr inbounds nuw [80 x i8], ptr %.sroa.5.sroa.0.0.copyload.i, i64 %.sroa.024.093.i
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 360
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ke, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.020.0.le.i, i64 32, i1 false)
  %i.kf = getelementptr inbounds nuw [80 x i8], ptr %.sroa.5.sroa.0.0.copyload.i, i64 %.sroa.024.093.i
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 440
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.kg, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.020.0.le.i, i64 32, i1 false)
  %i.kh = getelementptr inbounds nuw [80 x i8], ptr %.sroa.5.sroa.0.0.copyload.i, i64 %.sroa.024.093.i
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 520
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ki, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.020.0.le.i, i64 32, i1 false)
  %i.kj = getelementptr inbounds nuw [80 x i8], ptr %.sroa.5.sroa.0.0.copyload.i, i64 %.sroa.024.093.i
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 600
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.kk, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.020.0.le.i, i64 32, i1 false)
  %i.kl = add nuw nsw i64 %.sroa.024.093.i, 8     ; 2 uses
  %niter.next.7 = add nuw nsw i64 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge96.i.loopexit.unr-lcssa, label %bb.bh

bb.bi:                                            ; preds = %bb.bc, %bb.ba, %bb.az
  %.pre128.i = phi ptr [ %.pre127.i, %bb.ba ], [ %.pre.i, %bb.bc ], [ %.pre127.i, %bb.az ]
  %i.km = phi ptr [ %i.ih, %bb.ba ], [ %.pre.i, %bb.bc ], [ %i.ih, %bb.az ] ; 3 uses
  %.sroa.011.1.i = phi i64 [ %.sroa.011.097.i, %bb.ba ], [ %i.jl, %bb.bc ], [ %.sroa.011.097.i, %bb.az ] ; 2 uses
  %.sroa.01.2.i = phi i64 [ %.sroa.01.098.i, %bb.ba ], [ %.sroa.01.1.lcssa.i, %bb.bc ], [ %.sroa.01.098.i, %bb.az ]
  %i.kn = add nsw i64 %.sroa.01.2.i, 1            ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.km, i64 488
  %i.kp = load i64, ptr %i.ko, align 8, !noundef !4 ; 3 uses
  %i.kq = icmp ult i64 %i.kp, 115292150460684698
  call void @llvm.assume(i1 %i.kq)
  %i.kr = icmp ult i64 %i.kn, %i.kp
  br i1 %i.kr, label %bb.az, label %._crit_edge100.i

bb.bj:                                            ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  ret void

common.resume.i:                                  ; preds = %bb.bk, %bb.bl, %bb.ak, %bb.am, %bb.aq, %bb.as, %bb.av, %bb.ax, %.thread
  %.pn69 = phi { ptr, i32 } [ %i.am, %.thread ], [ %i.gc, %bb.ak ], [ %i.v, %bb.bk ], [ %i.hc, %bb.as ], [ %i.gf, %bb.am ], [ %i.ic, %bb.av ], [ %i.gz, %bb.aq ], [ %i.if, %bb.ax ], [ %i.v, %bb.bl ]
  resume { ptr, i32 } %.pn69

bb.bk:                                            ; preds = %bb.g
  %i.ks = icmp sgt i64 %i.p, -1
  br i1 %i.ks, label %bb.bl, label %common.resume.i

bb.bl:                                            ; preds = %bb.bk
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2KzzoC5ewhj_8markdown7message7MessageEBF_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.l)
          to label %common.resume.i unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.kt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionIBv_NtNtCs2KzzoC5ewhj_8markdown5event5EventEEENtNtNtBJ_3ops4drop4Drop4dropB1o_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2KzzoC5ewhj_8markdown5event4NameENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2KzzoC5ewhj_8markdown7resolve4NameENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2KzzoC5ewhj_8markdown9tokenizer10LabelStartENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2KzzoC5ewhj_8markdown9tokenizer14ContainerStateENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2KzzoC5ewhj_8markdown9tokenizer5LabelENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2KzzoC5ewhj_8markdown9tokenizer7AttemptENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTjjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTjjIBv_NtNtCs2KzzoC5ewhj_8markdown5event5EventEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtB7_3vec3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventEEENtNtNtBQ_3ops4drop4Drop4dropB1H_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2KzzoC5ewhj_8markdown5event4NameENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2KzzoC5ewhj_8markdown5event5EventENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2KzzoC5ewhj_8markdown7resolve4NameENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2KzzoC5ewhj_8markdown9tokenizer10LabelStartENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2KzzoC5ewhj_8markdown9tokenizer14ContainerStateENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2KzzoC5ewhj_8markdown9tokenizer5LabelENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2KzzoC5ewhj_8markdown9tokenizer7AttemptENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTjjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTjjINtNtB7_3vec3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB18_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #2

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2KzzoC5ewhj_8markdown(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #8

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtB7_3vec3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventEEE8grow_oneB1H_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #9

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringE8grow_oneCs2AWtUsOyxgP_3std(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #9

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2KzzoC5ewhj_8markdown5event5EventE8grow_oneBP_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #9

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2KzzoC5ewhj_8markdown9tokenizer14ContainerStateE8grow_oneBP_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs2KzzoC5ewhj_8markdown(ptr noalias noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNvMs_NtCscdodAO9FK5_5alloc3vecINtB6_3VecppE9split_off13assert_failed(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventE7reserveBH_(ptr noalias noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs2KzzoC5ewhj_8markdown7resolve4NameE7reserveBH_(ptr noalias noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNvMs_NtCscdodAO9FK5_5alloc3vecINtB6_3VecppE11swap_remove13assert_failed(i64 noundef, i64 noundef) unnamed_addr #7

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCs2KzzoC5ewhj_8markdown5event4NameNtB5_13SliceContains14slice_containsBG_(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer5enter(ptr noalias noundef align 8 dereferenceable(664), i8 noundef range(i8 0, -85)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer7attempt(ptr noalias noundef align 8 dereferenceable(664), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer4exit(ptr noalias noundef align 8 dereferenceable(664), i8 noundef range(i8 0, -85)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer7consume(ptr noalias noundef align 8 dereferenceable(664)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer5check(ptr noalias noundef align 8 dereferenceable(664), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtNtCs2KzzoC5ewhj_8markdown4util5sliceNtB4_5Slice13from_position(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMs_NtNtCs2KzzoC5ewhj_8markdown4util5sliceNtB4_5Slice6as_str(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtCs2KzzoC5ewhj_8markdown4util20normalize_identifier20normalize_identifier(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer10enter_link(ptr noalias noundef align 8 dereferenceable(664), i8 noundef range(i8 0, -85), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40)) unnamed_addr #0
end_hunk_0
