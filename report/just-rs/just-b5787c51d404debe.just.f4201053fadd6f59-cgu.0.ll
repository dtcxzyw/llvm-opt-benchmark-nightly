Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/just-b5787c51d404debe.just.f4201053fadd6f59-cgu.0?download=true
inline.NumInlined: 27272
inline.NumDeleted: 11238
loop-unroll.NumCompletelyUnrolled: 122
loop-unroll.NumRuntimeUnrolled: 664
loop-unroll.NumUnrolled: 789
begin_hunk_0_@_RINvNtNtCsdftwklc2oBO_7similar10algorithms4hunt16build_match_listINtNtB4_5utils12OffsetLookupjEECskXtk6F4WjxZ_4just:bb.a
  store i8 %i.bn, ptr %i.di, align 1, !noalias !15386
  %i.dl = getelementptr i8, ptr %.val.i.i, i64 %i.dk
  %i.dm = getelementptr i8, ptr %i.dl, i64 16
  store i8 %i.bn, ptr %i.dm, align 1, !noalias !15386
  %i.dn = sub nsw i64 0, %.sroa.0.0.i5.i.i.i
  %i.do = getelementptr inbounds [32 x i8], ptr %.val.i.i, i64 %i.dn ; 5 uses
  %i.dp = and i8 %i.dh, 1
  %i.dq = zext nneg i8 %i.dp to i64
  %i.dr = getelementptr inbounds i8, ptr %i.do, i64 -32
  store i64 %i.bk, ptr %i.dr, align 8, !noalias !15387
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.do, i64 -24
  store i64 0, ptr %.sroa.415.0..sroa_idx.i, align 8, !noalias !15387
  %.sroa.516.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.do, i64 -16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.516.0..sroa_idx.i, align 8, !noalias !15387
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.do, i64 -8
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !15387
  %i.ds = load <2 x i64>, ptr %i.u, align 8, !alias.scope !15383, !noalias !15384
  %i.dt = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.dq, i64 0
  %i.du = sub <2 x i64> %i.ds, %i.dt
  store <2 x i64> %i.du, ptr %i.u, align 8, !alias.scope !15383, !noalias !15384
  br label %bb.u

bb.t:                                             ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.u

bb.u:                                             ; preds = %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE14insert_no_growCskXtk6F4WjxZ_4just.exit.i, %bb.t
  %.pn.i = phi ptr [ %i.do, %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE14insert_no_growCskXtk6F4WjxZ_4just.exit.i ], [ %i.ca, %bb.t ] ; 3 uses
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.pn.i, i64 -24 ; 2 uses
  %i.dv = getelementptr inbounds i8, ptr %.pn.i, i64 -8 ; 2 uses
  %i.dw = load i64, ptr %i.dv, align 8, !alias.scope !15388, !noundef !28 ; 3 uses
  %i.dx = load i64, ptr %.sroa.0.0.i, align 8, !range !43, !alias.scope !15388, !noundef !28
  %i.dy = icmp eq i64 %i.dw, %i.dx
  br i1 %i.dy, label %bb.v, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecjE8push_mutCskXtk6F4WjxZ_4just.exit

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCs2FJGJNE9lTN_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i) #73
          to label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecjE8push_mutCskXtk6F4WjxZ_4just.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecjE8push_mutCskXtk6F4WjxZ_4just.exit: ; preds = %bb.v, %bb.u
  %i.dz = getelementptr inbounds i8, ptr %.pn.i, i64 -16
  %i.ea = load ptr, ptr %i.dz, align 8, !alias.scope !15388, !nonnull !28, !noundef !28
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.dw
  store i64 %.sroa.03.039, ptr %i.eb, align 8
  %i.ec = add i64 %i.dw, 1
  store i64 %i.ec, ptr %i.dv, align 8, !alias.scope !15388
  %exitcond.not = icmp eq i64 %i.w, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsdftwklc2oBO_7similar10algorithms4hunt20emit_anchored_scriptINtNtB4_7compact7CompactINtNtB4_5utils12OffsetLookupmEB1t_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %5, i64 noundef range(i64 0, 576460752303423488) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.not = icmp eq i64 %6, 0
  br i1 %.not, label %._crit_edge73, label %.lr.ph72

.lr.ph72:                                         ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  br label %bb.h

._crit_edge73:                                    ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit37, %bb.a
  %.sroa.08.0.lcssa = phi i64 [ %3, %bb.a ], [ %i.bc, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit37 ] ; 4 uses
  %.sroa.0.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.bb, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit37 ] ; 4 uses
  %i.d = icmp ult i64 %.sroa.0.0.lcssa, %2
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %._crit_edge73
  %i.e = sub nuw i64 %2, %.sroa.0.0.lcssa
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !15404, !noundef !28 ; 3 uses
  %i.i = load i64, ptr %i.f, align 8, !range !43, !alias.scope !15404, !noundef !28
  %i.j = icmp eq i64 %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #73, !noalias !15405
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit: ; preds = %bb.b, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !15404, !nonnull !28, !noundef !28
  %i.m = getelementptr inbounds nuw [40 x i8], ptr %i.l, i64 %i.h ; 4 uses
  store i64 1, ptr %i.m, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %.sroa.0.0.lcssa, ptr %.sroa.444.0..sroa_idx, align 8
  %.sroa.545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %i.e, ptr %.sroa.545.0..sroa_idx, align 8
  %.sroa.646.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 %.sroa.08.0.lcssa, ptr %.sroa.646.0..sroa_idx, align 8
  %i.n = add i64 %i.h, 1
  store i64 %i.n, ptr %i.g, align 8, !alias.scope !15404
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge73, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit
  %.sroa.0.1 = phi i64 [ %2, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit ], [ %.sroa.0.0.lcssa, %._crit_edge73 ]
  %i.o = icmp ult i64 %.sroa.08.0.lcssa, %4
  br i1 %i.o, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.p = sub nuw i64 %4, %.sroa.08.0.lcssa
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !15406, !noundef !28 ; 3 uses
  %i.t = load i64, ptr %i.q, align 8, !range !43, !alias.scope !15406, !noundef !28
  %i.u = icmp eq i64 %i.s, %i.t
  br i1 %i.u, label %bb.f, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit34

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q) #73, !noalias !15407
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit34

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit34: ; preds = %bb.e, %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !15406, !nonnull !28, !noundef !28
  %i.x = getelementptr inbounds nuw [40 x i8], ptr %i.w, i64 %i.s ; 4 uses
  store i64 2, ptr %i.x, align 8
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %.sroa.0.1, ptr %.sroa.454.0..sroa_idx, align 8
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %.sroa.08.0.lcssa, ptr %.sroa.555.0..sroa_idx, align 8
  %.sroa.656.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i64 %i.p, ptr %.sroa.656.0..sroa_idx, align 8
  %i.y = add i64 %i.s, 1
  store i64 %i.y, ptr %i.r, align 8, !alias.scope !15406
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit34
  ret void

bb.h:                                             ; preds = %.lr.ph72, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit37
  %.sroa.0.070 = phi i64 [ %1, %.lr.ph72 ], [ %i.bb, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit37 ] ; 4 uses
  %.sroa.08.069 = phi i64 [ %3, %.lr.ph72 ], [ %i.bc, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit37 ] ; 4 uses
  %.sroa.016.068 = phi i64 [ 0, %.lr.ph72 ], [ %.sroa.016.1.lcssa, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit37 ] ; 3 uses
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %.sroa.016.068 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !noundef !28 ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !28 ; 5 uses
  %i.ad = icmp ult i64 %.sroa.0.070, %i.aa
  br i1 %i.ad, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ae = sub nuw i64 %i.aa, %.sroa.0.070
  %i.af = load i64, ptr %i.b, align 8, !alias.scope !15408, !noundef !28 ; 3 uses
  %i.ag = load i64, ptr %i.a, align 8, !range !43, !alias.scope !15408, !noundef !28
  %i.ah = icmp eq i64 %i.af, %i.ag
  br i1 %i.ah, label %bb.j, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit35

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #73, !noalias !15409
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit35

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit35: ; preds = %bb.i, %bb.j
  %i.ai = load ptr, ptr %i.c, align 8, !alias.scope !15408, !nonnull !28, !noundef !28
  %i.aj = getelementptr inbounds nuw [40 x i8], ptr %i.ai, i64 %i.af ; 4 uses
  store i64 1, ptr %i.aj, align 8
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 %.sroa.0.070, ptr %.sroa.439.0..sroa_idx, align 8
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i64 %i.ae, ptr %.sroa.540.0..sroa_idx, align 8
  %.sroa.641.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store i64 %.sroa.08.069, ptr %.sroa.641.0..sroa_idx, align 8
  %i.ak = add i64 %i.af, 1
  store i64 %i.ak, ptr %i.b, align 8, !alias.scope !15408
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit35
  %.sroa.0.2 = phi i64 [ %i.aa, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit35 ], [ %.sroa.0.070, %bb.h ]
  %i.al = icmp ult i64 %.sroa.08.069, %i.ac
  br i1 %i.al, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.am = sub nuw i64 %i.ac, %.sroa.08.069
  %i.an = load i64, ptr %i.b, align 8, !alias.scope !15410, !noundef !28 ; 3 uses
  %i.ao = load i64, ptr %i.a, align 8, !range !43, !alias.scope !15410, !noundef !28
  %i.ap = icmp eq i64 %i.an, %i.ao
  br i1 %i.ap, label %bb.m, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit36

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #73, !noalias !15411
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit36

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit36: ; preds = %bb.l, %bb.m
  %i.aq = load ptr, ptr %i.c, align 8, !alias.scope !15410, !nonnull !28, !noundef !28
  %i.ar = getelementptr inbounds nuw [40 x i8], ptr %i.aq, i64 %i.an ; 4 uses
  store i64 2, ptr %i.ar, align 8
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 %.sroa.0.2, ptr %.sroa.449.0..sroa_idx, align 8
  %.sroa.550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i64 %.sroa.08.069, ptr %.sroa.550.0..sroa_idx, align 8
  %.sroa.651.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store i64 %i.am, ptr %.sroa.651.0..sroa_idx, align 8
  %i.as = add i64 %i.an, 1
  store i64 %i.as, ptr %i.b, align 8, !alias.scope !15410
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit36
  %.sroa.016.158 = add nuw nsw i64 %.sroa.016.068, 1 ; 3 uses
  %i.at = icmp ult i64 %.sroa.016.158, %6
  br i1 %i.at, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.n
  %i.au = sub nsw i64 %6, %.sroa.016.068
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.q, %.lr.ph, %bb.p, %bb.n
  %.sroa.024.0.lcssa = phi i64 [ 1, %bb.n ], [ %.sroa.024.059, %bb.p ], [ %.sroa.024.059, %.lr.ph ], [ %i.au, %bb.q ] ; 3 uses
  %.sroa.016.1.lcssa = phi i64 [ %.sroa.016.158, %bb.n ], [ %.sroa.016.160, %bb.p ], [ %.sroa.016.160, %.lr.ph ], [ %6, %bb.q ] ; 2 uses
  %i.av = load i64, ptr %i.b, align 8, !alias.scope !15412, !noundef !28 ; 3 uses
  %i.aw = load i64, ptr %i.a, align 8, !range !43, !alias.scope !15412, !noundef !28
  %i.ax = icmp eq i64 %i.av, %i.aw
  br i1 %i.ax, label %bb.o, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit37

bb.o:                                             ; preds = %._crit_edge
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #73, !noalias !15413
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit37

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit37: ; preds = %._crit_edge, %bb.o
  %i.ay = load ptr, ptr %i.c, align 8, !alias.scope !15412, !nonnull !28, !noundef !28
  %i.az = getelementptr inbounds nuw [40 x i8], ptr %i.ay, i64 %i.av ; 4 uses
  store i64 0, ptr %i.az, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i64 %i.aa, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i64 %i.ac, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  store i64 %.sroa.024.0.lcssa, ptr %.sroa.6.0..sroa_idx, align 8
  %i.ba = add i64 %i.av, 1
  store i64 %i.ba, ptr %i.b, align 8, !alias.scope !15412
  %i.bb = add i64 %.sroa.024.0.lcssa, %i.aa       ; 2 uses
  %i.bc = add i64 %.sroa.024.0.lcssa, %i.ac       ; 2 uses
  %i.bd = icmp ult i64 %.sroa.016.1.lcssa, %6
  br i1 %i.bd, label %bb.h, label %._crit_edge73

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.q
  %.sroa.016.160 = phi i64 [ %.sroa.016.1, %bb.q ], [ %.sroa.016.158, %.lr.ph.preheader ] ; 4 uses
  %.sroa.024.059 = phi i64 [ %i.bm, %bb.q ], [ 1, %.lr.ph.preheader ] ; 5 uses
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %.sroa.016.160 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !noundef !28
  %i.bg = add i64 %.sroa.024.059, %i.aa
  %i.bh = icmp eq i64 %i.bf, %i.bg
  br i1 %i.bh, label %bb.p, label %._crit_edge

bb.p:                                             ; preds = %.lr.ph
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !28
  %i.bk = add i64 %.sroa.024.059, %i.ac
  %i.bl = icmp eq i64 %i.bj, %i.bk
  br i1 %i.bl, label %bb.q, label %._crit_edge

bb.q:                                             ; preds = %bb.p
  %i.bm = add nuw nsw i64 %.sroa.024.059, 1
  %.sroa.016.1 = add i64 %.sroa.016.160, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.016.1, %6
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsdftwklc2oBO_7similar10algorithms4hunt20emit_anchored_scriptINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB1t_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %5, i64 noundef range(i64 0, 576460752303423488) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.not = icmp eq i64 %6, 0
  br i1 %.not, label %._crit_edge73, label %.lr.ph72

.lr.ph72:                                         ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  br label %bb.h

._crit_edge73:                                    ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit37, %bb.a
  %.sroa.08.0.lcssa = phi i64 [ %3, %bb.a ], [ %i.bc, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit37 ] ; 4 uses
  %.sroa.0.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.bb, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit37 ] ; 4 uses
  %i.d = icmp ult i64 %.sroa.0.0.lcssa, %2
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %._crit_edge73
  %i.e = sub nuw i64 %2, %.sroa.0.0.lcssa
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !15429, !noundef !28 ; 3 uses
  %i.i = load i64, ptr %i.f, align 8, !range !43, !alias.scope !15429, !noundef !28
  %i.j = icmp eq i64 %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #73, !noalias !15430
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit: ; preds = %bb.b, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !15429, !nonnull !28, !noundef !28
  %i.m = getelementptr inbounds nuw [40 x i8], ptr %i.l, i64 %i.h ; 4 uses
  store i64 1, ptr %i.m, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %.sroa.0.0.lcssa, ptr %.sroa.444.0..sroa_idx, align 8
  %.sroa.545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %i.e, ptr %.sroa.545.0..sroa_idx, align 8
  %.sroa.646.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 %.sroa.08.0.lcssa, ptr %.sroa.646.0..sroa_idx, align 8
  %i.n = add i64 %i.h, 1
  store i64 %i.n, ptr %i.g, align 8, !alias.scope !15429
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge73, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit
  %.sroa.0.1 = phi i64 [ %2, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit ], [ %.sroa.0.0.lcssa, %._crit_edge73 ]
  %i.o = icmp ult i64 %.sroa.08.0.lcssa, %4
  br i1 %i.o, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.p = sub nuw i64 %4, %.sroa.08.0.lcssa
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !15431, !noundef !28 ; 3 uses
  %i.t = load i64, ptr %i.q, align 8, !range !43, !alias.scope !15431, !noundef !28
  %i.u = icmp eq i64 %i.s, %i.t
  br i1 %i.u, label %bb.f, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit34

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q) #73, !noalias !15432
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit34

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit34: ; preds = %bb.e, %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !15431, !nonnull !28, !noundef !28
  %i.x = getelementptr inbounds nuw [40 x i8], ptr %i.w, i64 %i.s ; 4 uses
  store i64 2, ptr %i.x, align 8
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %.sroa.0.1, ptr %.sroa.454.0..sroa_idx, align 8
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %.sroa.08.0.lcssa, ptr %.sroa.555.0..sroa_idx, align 8
  %.sroa.656.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i64 %i.p, ptr %.sroa.656.0..sroa_idx, align 8
  %i.y = add i64 %i.s, 1
  store i64 %i.y, ptr %i.r, align 8, !alias.scope !15431
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit34
  ret void

bb.h:                                             ; preds = %.lr.ph72, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit37
  %.sroa.0.070 = phi i64 [ %1, %.lr.ph72 ], [ %i.bb, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit37 ] ; 4 uses
  %.sroa.08.069 = phi i64 [ %3, %.lr.ph72 ], [ %i.bc, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit37 ] ; 4 uses
  %.sroa.016.068 = phi i64 [ 0, %.lr.ph72 ], [ %.sroa.016.1.lcssa, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit37 ] ; 3 uses
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %.sroa.016.068 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !noundef !28 ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !28 ; 5 uses
  %i.ad = icmp ult i64 %.sroa.0.070, %i.aa
  br i1 %i.ad, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ae = sub nuw i64 %i.aa, %.sroa.0.070
  %i.af = load i64, ptr %i.b, align 8, !alias.scope !15433, !noundef !28 ; 3 uses
  %i.ag = load i64, ptr %i.a, align 8, !range !43, !alias.scope !15433, !noundef !28
  %i.ah = icmp eq i64 %i.af, %i.ag
  br i1 %i.ah, label %bb.j, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit35

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #73, !noalias !15434
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit35

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit35: ; preds = %bb.i, %bb.j
  %i.ai = load ptr, ptr %i.c, align 8, !alias.scope !15433, !nonnull !28, !noundef !28
  %i.aj = getelementptr inbounds nuw [40 x i8], ptr %i.ai, i64 %i.af ; 4 uses
  store i64 1, ptr %i.aj, align 8
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 %.sroa.0.070, ptr %.sroa.439.0..sroa_idx, align 8
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i64 %i.ae, ptr %.sroa.540.0..sroa_idx, align 8
  %.sroa.641.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store i64 %.sroa.08.069, ptr %.sroa.641.0..sroa_idx, align 8
  %i.ak = add i64 %i.af, 1
  store i64 %i.ak, ptr %i.b, align 8, !alias.scope !15433
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit35
  %.sroa.0.2 = phi i64 [ %i.aa, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit35 ], [ %.sroa.0.070, %bb.h ]
  %i.al = icmp ult i64 %.sroa.08.069, %i.ac
  br i1 %i.al, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.am = sub nuw i64 %i.ac, %.sroa.08.069
  %i.an = load i64, ptr %i.b, align 8, !alias.scope !15435, !noundef !28 ; 3 uses
  %i.ao = load i64, ptr %i.a, align 8, !range !43, !alias.scope !15435, !noundef !28
  %i.ap = icmp eq i64 %i.an, %i.ao
  br i1 %i.ap, label %bb.m, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit36

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #73, !noalias !15436
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit36

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit36: ; preds = %bb.l, %bb.m
  %i.aq = load ptr, ptr %i.c, align 8, !alias.scope !15435, !nonnull !28, !noundef !28
  %i.ar = getelementptr inbounds nuw [40 x i8], ptr %i.aq, i64 %i.an ; 4 uses
  store i64 2, ptr %i.ar, align 8
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 %.sroa.0.2, ptr %.sroa.449.0..sroa_idx, align 8
  %.sroa.550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i64 %.sroa.08.069, ptr %.sroa.550.0..sroa_idx, align 8
  %.sroa.651.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store i64 %i.am, ptr %.sroa.651.0..sroa_idx, align 8
  %i.as = add i64 %i.an, 1
  store i64 %i.as, ptr %i.b, align 8, !alias.scope !15435
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit36
  %.sroa.016.158 = add nuw nsw i64 %.sroa.016.068, 1 ; 3 uses
  %i.at = icmp ult i64 %.sroa.016.158, %6
  br i1 %i.at, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.n
  %i.au = sub nsw i64 %6, %.sroa.016.068
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.q, %.lr.ph, %bb.p, %bb.n
  %.sroa.024.0.lcssa = phi i64 [ 1, %bb.n ], [ %.sroa.024.059, %bb.p ], [ %.sroa.024.059, %.lr.ph ], [ %i.au, %bb.q ] ; 3 uses
  %.sroa.016.1.lcssa = phi i64 [ %.sroa.016.158, %bb.n ], [ %.sroa.016.160, %bb.p ], [ %.sroa.016.160, %.lr.ph ], [ %6, %bb.q ] ; 2 uses
  %i.av = load i64, ptr %i.b, align 8, !alias.scope !15437, !noundef !28 ; 3 uses
  %i.aw = load i64, ptr %i.a, align 8, !range !43, !alias.scope !15437, !noundef !28
  %i.ax = icmp eq i64 %i.av, %i.aw
  br i1 %i.ax, label %bb.o, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit37

bb.o:                                             ; preds = %._crit_edge
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #73, !noalias !15438
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit37

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit37: ; preds = %._crit_edge, %bb.o
  %i.ay = load ptr, ptr %i.c, align 8, !alias.scope !15437, !nonnull !28, !noundef !28
  %i.az = getelementptr inbounds nuw [40 x i8], ptr %i.ay, i64 %i.av ; 4 uses
  store i64 0, ptr %i.az, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i64 %i.aa, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i64 %i.ac, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  store i64 %.sroa.024.0.lcssa, ptr %.sroa.6.0..sroa_idx, align 8
  %i.ba = add i64 %i.av, 1
  store i64 %i.ba, ptr %i.b, align 8, !alias.scope !15437
  %i.bb = add i64 %.sroa.024.0.lcssa, %i.aa       ; 2 uses
  %i.bc = add i64 %.sroa.024.0.lcssa, %i.ac       ; 2 uses
  %i.bd = icmp ult i64 %.sroa.016.1.lcssa, %6
  br i1 %i.bd, label %bb.h, label %._crit_edge73

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.q
  %.sroa.016.160 = phi i64 [ %.sroa.016.1, %bb.q ], [ %.sroa.016.158, %.lr.ph.preheader ] ; 4 uses
  %.sroa.024.059 = phi i64 [ %i.bm, %bb.q ], [ 1, %.lr.ph.preheader ] ; 5 uses
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %.sroa.016.160 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !noundef !28
  %i.bg = add i64 %.sroa.024.059, %i.aa
  %i.bh = icmp eq i64 %i.bf, %i.bg
  br i1 %i.bh, label %bb.p, label %._crit_edge

bb.p:                                             ; preds = %.lr.ph
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !28
  %i.bk = add i64 %.sroa.024.059, %i.ac
  %i.bl = icmp eq i64 %i.bj, %i.bk
  br i1 %i.bl, label %bb.q, label %._crit_edge

bb.q:                                             ; preds = %bb.p
  %i.bm = add nuw nsw i64 %.sroa.024.059, 1
  %.sroa.016.1 = add i64 %.sroa.016.160, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.016.1, %6
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers13diff_deadlineINtNtB4_5utils12OffsetLookupjEBZ_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB10_mEB2m_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef range(i32 -1, 1000000000) %8) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %.val6 = load ptr, ptr %0, align 8              ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15478)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15479)
  %i.c = tail call noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %7, i32 noundef range(i32 -1, 1000000000) %8), !noalias !15480
  %.pre = tail call i64 @llvm.usub.sat.i64(i64 %3, i64 %2) ; 4 uses
  %.pre12 = tail call i64 @llvm.usub.sat.i64(i64 %6, i64 %5) ; 4 uses
  br i1 %i.c, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %.pre, 512
  %i.e = icmp ult i64 %.pre12, 512
  %or.cond.i = or i1 %i.d, %i.e
  br i1 %or.cond.i, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.pre, i64 %.pre12) ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 0
  %i.h = extractvalue { i64, i1 } %i.f, 1
  %i.i = icmp ugt i64 %i.g, 131071
  %or.cond10.not.i = or i1 %i.h, %i.i
  br i1 %or.cond10.not.i, label %.thread.i, label %._crit_edge, !prof !42

.thread.i:                                        ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15481)
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !15482, !noundef !28 ; 2 uses
  %i.l = sub i64 %5, %i.k                         ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !15482, !noundef !28 ; 4 uses
  %i.o = icmp ult i64 %i.l, %i.n
  br i1 %i.o, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit25.i, label %bb.d

bb.d:                                             ; preds = %.thread.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.l, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @359) #74, !noalias !15483
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit25.i: ; preds = %.thread.i
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !15482, !nonnull !28, !noundef !28 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15484)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !15485, !noundef !28 ; 2 uses
  %i.t = sub i64 %2, %i.s                         ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !15485, !noundef !28 ; 4 uses
  %i.w = icmp ult i64 %i.t, %i.v
  br i1 %i.w, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit24.i, label %bb.e

bb.e:                                             ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit25.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.t, i64 noundef %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @360) #74, !noalias !15486
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit24.i: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit25.i
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.l
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !15485, !nonnull !28, !noundef !28 ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.t
  %.val31.i = load i64, ptr %i.x, align 8, !noalias !15480, !noundef !28
  %.val32.i = load i64, ptr %i.aa, align 8, !noalias !15480, !noundef !28
  %i.ab = icmp eq i64 %.val31.i, %.val32.i
  br i1 %i.ab, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit24.i
  %i.ac = xor i64 %i.k, -1
  %i.ad = add i64 %6, %i.ac                       ; 3 uses
  %i.ae = icmp ult i64 %i.ad, %i.n
  br i1 %i.ae, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit23.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ad, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @361) #74, !noalias !15487
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit23.i: ; preds = %bb.f
  %i.af = xor i64 %i.s, -1
  %i.ag = add i64 %3, %i.af                       ; 3 uses
  %i.ah = icmp ult i64 %i.ag, %i.v
  br i1 %i.ah, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i, label %bb.h

bb.h:                                             ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit23.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ag, i64 noundef %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @362) #74, !noalias !15488
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit23.i
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ad
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ag
  %.val29.i = load i64, ptr %i.ai, align 8, !noalias !15480, !noundef !28
  %.val30.i = load i64, ptr %i.aj, align 8, !noalias !15480, !noundef !28
  %i.ak = icmp eq i64 %.val29.i, %.val30.i
  br i1 %i.ak, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i
  %i.al = tail call fastcc noundef i8 @_RINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtB4_5utils12OffsetLookupjEB15_ECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef range(i32 -1, 1000000000) %8)
  %cond.i = icmp eq i8 %i.al, 0
  br i1 %cond.i, label %bb.j, label %._crit_edge

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6) ]
  %i.am = getelementptr inbounds nuw i8, ptr %.val6, i64 120 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.val6, i64 136 ; 3 uses
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !15489, !noalias !15490, !noundef !28 ; 4 uses
  %i.ap = load i64, ptr %i.am, align 8, !range !43, !alias.scope !15489, !noalias !15490, !noundef !28
  %i.aq = icmp eq i64 %i.ao, %i.ap
  br i1 %i.aq, label %bb.k, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit.i

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am) #73, !noalias !15491
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit.i

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.k, %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %.val6, i64 128 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !15489, !noalias !15490, !nonnull !28, !noundef !28
  %i.at = getelementptr inbounds nuw [40 x i8], ptr %i.as, i64 %i.ao ; 4 uses
  store i64 1, ptr %i.at, align 8, !noalias !15490
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !15490
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i64 %.pre, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !15490
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store i64 %5, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !15490
  %i.au = add i64 %i.ao, 1                        ; 3 uses
  store i64 %i.au, ptr %i.an, align 8, !alias.scope !15489, !noalias !15490
  %i.av = load i64, ptr %i.am, align 8, !range !43, !alias.scope !15492, !noalias !15493, !noundef !28
  %i.aw = icmp eq i64 %i.au, %i.av
  br i1 %i.aw, label %bb.l, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtB4_5utils12OffsetLookupjEB1j_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB1k_mEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit

bb.l:                                             ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit.i
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am) #73, !noalias !15494
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtB4_5utils12OffsetLookupjEB1j_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB1k_mEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit

_RINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtB4_5utils12OffsetLookupjEB1j_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB1k_mEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit: ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit.i, %bb.l
  %i.ax = load ptr, ptr %i.ar, align 8, !alias.scope !15492, !noalias !15493, !nonnull !28, !noundef !28
  %i.ay = getelementptr inbounds nuw [40 x i8], ptr %i.ax, i64 %i.au ; 4 uses
  store i64 2, ptr %i.ay, align 8, !noalias !15493
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i64 %2, ptr %.sroa.45.0..sroa_idx.i, align 8, !noalias !15493
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store i64 %5, ptr %.sroa.56.0..sroa_idx.i, align 8, !noalias !15493
  %.sroa.67.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  store i64 %.pre12, ptr %.sroa.67.0..sroa_idx.i, align 8, !noalias !15493
  %i.az = add i64 %i.ao, 2
  store i64 %i.az, ptr %i.an, align 8, !alias.scope !15492, !noalias !15493
  br label %bb.u

._crit_edge:                                      ; preds = %bb.a, %bb.b, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit24.i, %bb.i, %bb.c, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i
  %i.ba = add i64 %.pre12, %.pre                  ; 2 uses
  %i.bb = lshr i64 %i.ba, 1
  %.sroa.011.0.i8 = sub nuw i64 %i.ba, %i.bb
  %i.bc = add nuw i64 %.sroa.011.0.i8, 1          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15495
  call void @_RNvMNtNtCsdftwklc2oBO_7similar10algorithms5myersNtB2_1V3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, i64 noundef %i.bc), !noalias !15495
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15495
  invoke void @_RNvMNtNtCsdftwklc2oBO_7similar10algorithms5myersNtB2_1V3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, i64 noundef %i.bc)
          to label %bb.o unwind label %bb.n, !noalias !15495

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit24.i: ; preds = %bb.q, %bb.p, %bb.n
  %.pn.i = phi { ptr, i32 } [ %i.bg, %bb.n ], [ %i.bh, %bb.p ], [ %i.bh, %bb.q ]
  %.val22.i = load i64, ptr %i.b, align 8, !alias.scope !15496, !noalias !15495 ; 2 uses
  %i.bd = icmp eq i64 %.val22.i, 0
  br i1 %i.bd, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit.i, label %bb.m

bb.m:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit24.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val23.i = load ptr, ptr %i.be, align 8, !noalias !15495, !nonnull !28, !noundef !28
  %i.bf = shl nuw i64 %.val22.i, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val23.i, i64 noundef %i.bf, i64 noundef range(i64 1, -9223372036854775807) 8) #69, !noalias !15497
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit.i

bb.n:                                             ; preds = %._crit_edge
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit24.i

bb.o:                                             ; preds = %._crit_edge
  invoke fastcc void @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupjEBS_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIBT_mEB2f_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias nofree noundef align 8 dereferenceable(32) %i.a, ptr noalias nofree noundef align 8 dereferenceable(32) %i.b, i64 %7, i32 noundef range(i32 -1, 1000000000) %8)
          to label %bb.r unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val20.i = load i64, ptr %i.a, align 8, !alias.scope !15496, !noalias !15495 ; 2 uses
  %i.bi = icmp eq i64 %.val20.i, 0
  br i1 %i.bi, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit24.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val21.i = load ptr, ptr %i.bj, align 8, !noalias !15495, !nonnull !28, !noundef !28
  %i.bk = shl nuw i64 %.val20.i, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val21.i, i64 noundef %i.bk, i64 noundef range(i64 1, -9223372036854775807) 8) #69, !noalias !15498
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit24.i

bb.r:                                             ; preds = %bb.o
end_hunk_0
