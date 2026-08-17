inline.NumInlined: 604
inline.NumDeleted: 180
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN3re212TestInstance9RunSearchENS_6EngineERKNS_11StringPieceES4_NS_4Prog6AnchorEPNS0_6ResultE:bb.a
  br i1 %.not122, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  store i8 1, ptr %5, align 8, !tbaa !135
  br label %bb.bi

bb.aq:                                            ; preds = %bb.ao
  %i.ds = icmp eq i32 %4, 1
  %. = zext i1 %i.ds to i32
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !18
  %i.dv = icmp eq i32 %i.du, 2
  %.197 = select i1 %i.dv, i32 2, i32 %.
  %i.dw = ptrtoint ptr %.val135 to i64
  %i.dx = ptrtoint ptr %.val133 to i64            ; 2 uses
  %i.dy = sub i64 %i.dw, %i.dx
  %i.dz = ptrtoint ptr %i.dp to i64
  %i.ea = sub i64 %i.dz, %i.dx
  %i.eb = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ec = call noundef zeroext i1 @_ZNK3re23RE25MatchERKNS_11StringPieceEmmNS0_6AnchorEPS1_i(ptr noundef nonnull align 8 dereferenceable(212) %i.dn, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 noundef %i.dy, i64 noundef %i.ea, i32 noundef %.197, ptr noundef nonnull %i.eb, i32 noundef %spec.store.select)
  %i.ed = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.ee = zext i1 %i.ec to i8
  store i8 %i.ee, ptr %i.ed, align 1, !tbaa !137
  %i.ef = icmp sgt i32 %i.f, -1
  %i.eg = getelementptr inbounds nuw i8, ptr %5, i64 3
  %i.eh = zext i1 %i.ef to i8
  store i8 %i.eh, ptr %i.eg, align 1, !tbaa !138
  br label %bb.bi

bb.ar:                                            ; preds = %bb.c
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !113
  %.not110 = icmp eq ptr %i.ej, null
  br i1 %.not110, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %.val138 = load ptr, ptr %6, align 8, !tbaa !65 ; 2 uses
  %.val137 = load ptr, ptr %7, align 8, !tbaa !65 ; 2 uses
  %.not111 = icmp eq ptr %.val138, %.val137
  br i1 %.not111, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ek = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.val130 = load i64, ptr %i.ek, align 8, !tbaa !91
  %i.el = getelementptr inbounds nuw i8, ptr %.val138, i64 %.val130
  %i.em = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.val128 = load i64, ptr %i.em, align 8, !tbaa !91
  %i.en = getelementptr inbounds nuw i8, ptr %.val137, i64 %.val128
  %.not112 = icmp eq ptr %i.el, %i.en
  br i1 %.not112, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar
  store i8 1, ptr %5, align 8, !tbaa !135
  br label %bb.bi

bb.av:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  store ptr @.str.38, ptr %12, align 8, !tbaa !65
  %i.eo = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 2, ptr %i.eo, align 8, !tbaa !91
  %i.ep = call noundef i64 @_ZNK3re211StringPiece4findERKS0_m(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %12, i64 noundef 0)
  %.not113 = icmp eq i64 %i.ep, -1
  br i1 %.not113, label %.critedge, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.eq = call noundef i64 @_ZNK3re211StringPiece4findEcm(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 noundef signext 10, i64 noundef 0)
  %.not114 = icmp eq i64 %i.eq, -1
  br i1 %.not114, label %bb.ax, label %.critedge5

bb.ax:                                            ; preds = %bb.aw
  %i.er = call noundef i64 @_ZNK3re211StringPiece4findEcm(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 noundef signext 12, i64 noundef 0)
  %.not115 = icmp eq i64 %i.er, -1
  br i1 %.not115, label %bb.ay, label %.critedge5

bb.ay:                                            ; preds = %bb.ax
  %i.es = call noundef i64 @_ZNK3re211StringPiece4findEcm(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 noundef signext 13, i64 noundef 0)
  %.not116 = icmp eq i64 %i.es, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br i1 %.not116, label %bb.ba, label %bb.az

.critedge5:                                       ; preds = %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %bb.az

bb.az:                                            ; preds = %.critedge5, %bb.ay
  store i8 1, ptr %5, align 8, !tbaa !135
  br label %bb.bi

.critedge:                                        ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %bb.ba

bb.ba:                                            ; preds = %.critedge, %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  store ptr @.str.39, ptr %13, align 8, !tbaa !65
  %i.et = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 2, ptr %i.et, align 8, !tbaa !91
  %i.eu = call noundef i64 @_ZNK3re211StringPiece4findERKS0_m(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %13, i64 noundef 0)
  %.not117 = icmp eq i64 %i.eu, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  br i1 %.not117, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store ptr @.str.40, ptr %14, align 8, !tbaa !65
  %i.ev = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 2, ptr %i.ev, align 8, !tbaa !91
  %i.ew = call noundef i64 @_ZNK3re211StringPiece4findERKS0_m(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %14, i64 noundef 0)
  %.not118 = icmp eq i64 %i.ew, -1
  br i1 %.not118, label %.critedge7, label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.ex = call noundef i64 @_ZNK3re211StringPiece4findEcm(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 noundef signext 11, i64 noundef 0)
  %.not119 = icmp eq i64 %i.ex, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br i1 %.not119, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  store i8 1, ptr %5, align 8, !tbaa !135
  br label %bb.bi

.critedge7:                                       ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %bb.be

bb.be:                                            ; preds = %.critedge7, %bb.bc
  %i.ey = sext i32 %spec.store.select to i64      ; 3 uses
  %i.ez = icmp slt i32 %i.f, -1                   ; 2 uses
  %i.fa = shl nsw i64 %i.ey, 3
  %i.fb = select i1 %i.ez, i64 -1, i64 %i.fa
  %i.fc = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.fb) #27 ; 5 uses
  %i.fd = shl nsw i64 %i.ey, 4
  %i.fe = select i1 %i.ez, i64 -1, i64 %i.fd
  %i.ff = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.fe) #27 ; 6 uses
  %i.fg = icmp eq i32 %spec.store.select, 0
  br i1 %i.fg, label %.loopexit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fh = getelementptr inbounds [16 x i8], ptr %i.ff, i64 %i.ey
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bg, %bb.bf
  %i.fi = phi ptr [ %i.ff, %bb.bf ], [ %i.fk, %bb.bg ] ; 3 uses
  store ptr null, ptr %i.fi, align 8, !tbaa !142
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  store ptr @_ZN3re24PCRE3Arg10parse_nullEPKcmPv, ptr %i.fj, align 8, !tbaa !144
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 16 ; 2 uses
  %i.fl = icmp eq ptr %i.fk, %i.fh
  br i1 %i.fl, label %.loopexit, label %bb.bg

.loopexit:                                        ; preds = %bb.bg, %bb.be
  %.not120155 = icmp slt i32 %i.f, 0
  br i1 %.not120155, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit
  %i.fm = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %wide.trip.count = zext nneg i32 %spec.store.select to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.fn = icmp eq i32 %i.f, 0
  br i1 %i.fn, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 62
  br label %bb.bh

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.bh
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod174 = trunc i32 %spec.store.select to i1
  call void @llvm.assume(i1 %lcmp.mod174)
  %i.fo = getelementptr inbounds nuw [16 x i8], ptr %i.fm, i64 %indvars.iv.epil.init
  %i.fp = getelementptr inbounds nuw [16 x i8], ptr %i.ff, i64 %indvars.iv.epil.init ; 3 uses
  store ptr %i.fo, ptr %i.fp, align 8, !tbaa !145
  %.sroa.4.0..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  store ptr @_ZN3re24PCRE3Arg17parse_stringpieceEPKcmPv, ptr %.sroa.4.0..sroa_idx.epil, align 8, !tbaa !145
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %indvars.iv.epil.init
  store ptr %i.fp, ptr %i.fq, align 8, !tbaa !146
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.fr = icmp eq i32 %4, 1
  %.127 = zext i1 %i.fr to i32
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !18
  %i.fu = icmp eq i32 %i.ft, 2
  %.1 = select i1 %i.fu, i32 2, i32 %.127
  %i.fv = load ptr, ptr %i.ei, align 8, !tbaa !113
  call void @_ZN3re24PCRE13ClearHitLimitEv(ptr noundef nonnull align 8 dereferenceable(80) %i.fv)
  %i.fw = load ptr, ptr %i.ei, align 8, !tbaa !113
  %i.fx = call noundef zeroext i1 @_ZNK3re24PCRE7DoMatchERKNS_11StringPieceENS0_6AnchorEPmPKPKNS0_3ArgEi(ptr noundef nonnull align 8 dereferenceable(80) %i.fw, ptr noundef nonnull align 8 dereferenceable(16) %6, i32 noundef %.1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.fc, i32 noundef %spec.store.select)
  %i.fy = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.fz = zext i1 %i.fx to i8
  store i8 %i.fz, ptr %i.fy, align 1, !tbaa !137
  %i.ga = load ptr, ptr %i.ei, align 8, !tbaa !113
  %i.gb = call noundef zeroext i1 @_ZN3re24PCRE8HitLimitEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ga)
  br i1 %i.gb, label %15, label %17

bb.bh:                                            ; preds = %bb.bh, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.bh ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.bh ]
  %i.gc = getelementptr inbounds nuw [16 x i8], ptr %i.fm, i64 %indvars.iv
  %i.gd = getelementptr inbounds nuw [16 x i8], ptr %i.ff, i64 %indvars.iv ; 3 uses
  store ptr %i.gc, ptr %i.gd, align 8, !tbaa !145
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  store ptr @_ZN3re24PCRE3Arg17parse_stringpieceEPKcmPv, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !145
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %indvars.iv
  store ptr %i.gd, ptr %i.ge, align 8, !tbaa !146
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.gf = getelementptr inbounds nuw [16 x i8], ptr %i.fm, i64 %indvars.iv.next
  %i.gg = getelementptr inbounds nuw [16 x i8], ptr %i.ff, i64 %indvars.iv.next ; 3 uses
  store ptr %i.gf, ptr %i.gg, align 8, !tbaa !145
  %.sroa.4.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  store ptr @_ZN3re24PCRE3Arg17parse_stringpieceEPKcmPv, ptr %.sroa.4.0..sroa_idx.1, align 8, !tbaa !145
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %indvars.iv.next
  store ptr %i.gg, ptr %i.gh, align 8, !tbaa !146
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.bh, !llvm.loop !148

15:                                               ; preds = %._crit_edge
  %16 = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i8 1, ptr %16, align 2, !tbaa !149
  br label %19

17:                                               ; preds = %._crit_edge
  %18 = getelementptr inbounds nuw i8, ptr %5, i64 3
  store i8 1, ptr %18, align 1, !tbaa !138
  br label %19

19:                                               ; preds = %17, %15
  call void @_ZdaPv(ptr noundef nonnull %i.fc) #23
  call void @_ZdaPv(ptr noundef nonnull %i.ff) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.bi

bb.bi:                                            ; preds = %19, %bb.bd, %bb.az, %bb.au, %bb.aq, %bb.ap, %bb.am, %bb.al, %bb.ai, %bb.ah, %bb.ae, %bb.r, %bb.o, %bb.n, %bb.l, %bb.k, %bb.i, %bb.h
  %i.gi = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !137, !range !52, !noundef !53
  %i.gk = trunc nuw i8 %i.gj to i1
  br i1 %i.gk, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gl = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.gl, i8 0, i64 272, i1 false)
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.b
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noreturn nounwind uwtable
define linkonce_odr void @_ZN15LogMessageFatalD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(384) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #25
  unreachable
}

declare noundef zeroext i1 @_ZN3re24Prog21UnsafeSearchBacktrackERKNS_11StringPieceES3_NS0_6AnchorENS0_9MatchKindEPS1_i(ptr noundef nonnull align 8 dereferenceable(432), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN3re24Prog9SearchNFAERKNS_11StringPieceES3_NS0_6AnchorENS0_9MatchKindEPS1_i(ptr noundef nonnull align 8 dereferenceable(432), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN3re24Prog9SearchDFAERKNS_11StringPieceES3_NS0_6AnchorENS0_9MatchKindEPS1_PbPNS_10SparseSetTIvEE(ptr noundef nonnull align 8 dereferenceable(432), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN3re24Prog9IsOnePassEv(ptr noundef nonnull align 8 dereferenceable(432)) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN3re24Prog13SearchOnePassERKNS_11StringPieceES3_NS0_6AnchorENS0_9MatchKindEPS1_i(ptr noundef nonnull align 8 dereferenceable(432), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN3re24Prog14SearchBitStateERKNS_11StringPieceES3_NS0_6AnchorENS0_9MatchKindEPS1_i(ptr noundef nonnull align 8 dereferenceable(432), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZNK3re23RE25MatchERKNS_11StringPieceEmmNS0_6AnchorEPS1_i(ptr noundef nonnull align 8 dereferenceable(212), ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare noundef i64 @_ZNK3re211StringPiece4findERKS0_m(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), i64 noundef) local_unnamed_addr #5

declare noundef i64 @_ZNK3re211StringPiece4findEcm(ptr noundef nonnull align 8 dereferenceable(16), i8 noundef signext, i64 noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #7

declare void @_ZN3re24PCRE13ClearHitLimitEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #5

declare noundef zeroext i1 @_ZNK3re24PCRE7DoMatchERKNS_11StringPieceENS0_6AnchorEPmPKPKNS0_3ArgEi(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN3re24PCRE8HitLimitEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN3re212TestInstance7RunCaseERKNS_11StringPieceES3_NS_4Prog6AnchorE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.re2::StringPiece", align 8  ; 4 uses
  %5 = alloca %"class.re2::StringPiece", align 8  ; 4 uses
  %6 = alloca %"struct.re2::TestInstance::Result", align 8 ; 43 uses
  %7 = alloca %class.LogMessage, align 8          ; 13 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %10 = alloca %"struct.re2::TestInstance::Result", align 8 ; 44 uses
  %11 = alloca %class.LogMessage, align 8         ; 13 uses
  %12 = alloca %class.LogMessage, align 8         ; 13 uses
  %13 = alloca %class.LogMessage, align 8         ; 20 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %17 = alloca %class.LogMessage, align 8         ; 13 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %20 = alloca %class.LogMessageFatal, align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %scevgep.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %6, i8 0, i64 5, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %scevgep.i, i8 0, i64 272, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.thread261, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i32, ptr %i.e, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull readonly align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !15
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !56   ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  store i8 1, ptr %6, align 8, !tbaa !135
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = tail call i32 @llvm.smin.i32(i32 %i.f, i32 16)
  %spec.store.select.i = add nsw i32 %i.j, 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !18
  %i.m = call noundef zeroext i1 @_ZN3re24Prog21UnsafeSearchBacktrackERKNS_11StringPieceES3_NS0_6AnchorENS0_9MatchKindEPS1_i(ptr noundef nonnull align 8 dereferenceable(432) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 noundef %3, i32 noundef %i.l, ptr noundef nonnull %scevgep.i, i32 noundef %spec.store.select.i) ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 1
  %i.o = zext i1 %i.m to i8
  store i8 %i.o, ptr %i.n, align 1, !tbaa !137
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 3
  store i8 1, ptr %i.p, align 1, !tbaa !138
  br i1 %i.m, label %_ZN3re212TestInstance9RunSearchENS_6EngineERKNS_11StringPieceES4_NS_4Prog6AnchorEPNS0_6ResultE.exit, label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %scevgep.i, i8 0, i64 272, i1 false)
  br label %_ZN3re212TestInstance9RunSearchENS_6EngineERKNS_11StringPieceES4_NS_4Prog6AnchorEPNS0_6ResultE.exit

_ZN3re212TestInstance9RunSearchENS_6EngineERKNS_11StringPieceES4_NS_4Prog6AnchorEPNS0_6ResultE.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %.pre = load i8, ptr %6, align 8, !tbaa !135, !range !52
  %i.q = trunc nuw i8 %.pre to i1
  br i1 %i.q, label %bb.e, label %.preheader

.preheader:                                       ; preds = %_ZN3re212TestInstance9RunSearchENS_6EngineERKNS_11StringPieceES4_NS_4Prog6AnchorEPNS0_6ResultE.exit
  %scevgep.i93 = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 1 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 1 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 3
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 88
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 104
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 104
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 112
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 120
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 120
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 128
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 128
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 136
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 136
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 144
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 144
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 152
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 152
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 160
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 160
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 168
  %i.bi = getelementptr inbounds nuw i8, ptr %10, i64 168
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 176
  %i.bk = getelementptr inbounds nuw i8, ptr %10, i64 176
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 184
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 184
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 192
  %i.bo = getelementptr inbounds nuw i8, ptr %10, i64 192
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 200
  %i.bq = getelementptr inbounds nuw i8, ptr %10, i64 200
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 208
  %i.bs = getelementptr inbounds nuw i8, ptr %10, i64 208
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 216
  %i.bu = getelementptr inbounds nuw i8, ptr %10, i64 216
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 224
  %i.bw = getelementptr inbounds nuw i8, ptr %10, i64 224
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 232
  %i.by = getelementptr inbounds nuw i8, ptr %10, i64 232
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 240
  %i.ca = getelementptr inbounds nuw i8, ptr %10, i64 240
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 248
  %i.cc = getelementptr inbounds nuw i8, ptr %10, i64 248
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 256
  %i.ce = getelementptr inbounds nuw i8, ptr %10, i64 256
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 264
  %i.cg = getelementptr inbounds nuw i8, ptr %10, i64 264
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 272
  %i.ci = getelementptr inbounds nuw i8, ptr %10, i64 272
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %10, i64 2
  %i.cl = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.cm = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 5 uses
  %i.cn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 4 uses
  %i.co = getelementptr i8, ptr %i.cm, i64 -24    ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %12, i64 88
  %i.cr = getelementptr inbounds nuw i8, ptr %12, i64 104 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %12, i64 72
  %i.ct = getelementptr inbounds nuw i8, ptr %12, i64 120
  %i.cu = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %11, i64 88
  %i.cx = getelementptr inbounds nuw i8, ptr %11, i64 104 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %11, i64 72
  %i.cz = getelementptr inbounds nuw i8, ptr %11, i64 120
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 14 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %13, i64 120 ; 5 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %13, i64 336
  %i.de = getelementptr inbounds nuw i8, ptr %13, i64 344
  %i.df = getelementptr inbounds nuw i8, ptr %13, i64 345
  %i.dg = getelementptr inbounds nuw i8, ptr %13, i64 352
  %i.dh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  %i.di = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8
  %i.dj = getelementptr i8, ptr %i.dh, i64 -24
  %i.dk = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.dm = getelementptr inbounds nuw i8, ptr %13, i64 72 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %13, i64 80
  %i.do = getelementptr inbounds nuw i8, ptr %13, i64 88 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %13, i64 104 ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %13, i64 96
  %i.dr = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 7 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.dt = getelementptr inbounds nuw i8, ptr %15, i64 21
  %i.du = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 7 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %16, i64 21
  %i.dx = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 7 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.ec = getelementptr inbounds nuw i8, ptr %19, i64 21
  %i.ed = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %17, i64 88
  %i.eh = getelementptr inbounds nuw i8, ptr %17, i64 104 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %17, i64 72
  %i.ej = getelementptr inbounds nuw i8, ptr %17, i64 120
  br label %bb.ab

bb.e:                                             ; preds = %_ZN3re212TestInstance9RunSearchENS_6EngineERKNS_11StringPieceES4_NS_4Prog6AnchorEPNS0_6ResultE.exit
  %.pr = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.ek = icmp eq ptr %.pr, null
  br i1 %i.ek, label %.thread261, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @_ZN10LogMessageC2EPKci(ptr noundef nonnull align 8 dereferenceable(384) %7, ptr noundef nonnull @.str.18, i32 noundef 524)
  %i.el = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.em = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.el, ptr noundef nonnull @.str.41, i64 noundef 22)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.t ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  invoke void @_ZN3re27CEscapeB5cxx11ERKNS_11StringPieceE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.g unwind label %bb.u

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.en = load ptr, ptr %8, align 8, !tbaa !8
  %i.eo = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !36
  %i.eq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.el, ptr noundef %i.en, i64 noundef %i.ep)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.v ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.g
  %i.er = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.eq, ptr noundef nonnull @.str.42, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit80 unwind label %bb.v ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit80: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.et = load i32, ptr %i.es, align 4, !tbaa !28 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !150)
  %i.eu = load i32, ptr @_ZN3re2L11parse_modesE, align 16, !tbaa !40, !noalias !150
  %i.ev = icmp eq i32 %i.eu, %i.et
  br i1 %i.ev, label %bb.m, label %bb.h

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit80
  %i.ew = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN3re2L11parse_modesE, i64 40), align 8, !tbaa !40, !noalias !150
  %i.ex = icmp eq i32 %i.ew, %i.et
  br i1 %i.ex, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ey = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN3re2L11parse_modesE, i64 80), align 16, !tbaa !40, !noalias !150
  %i.ez = icmp eq i32 %i.ey, %i.et
  br i1 %i.ez, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.fa = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN3re2L11parse_modesE, i64 120), align 8, !tbaa !40, !noalias !150
  %i.fb = icmp eq i32 %i.fa, %i.et
  br i1 %i.fb, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.fc = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN3re2L11parse_modesE, i64 160), align 16, !tbaa !40, !noalias !150
  %i.fd = icmp eq i32 %i.fc, %i.et
  br i1 %i.fd, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void (ptr, ptr, ...) @_ZN3re212StringPrintfB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull @.str.57, i32 noundef %i.et)
          to label %_ZN3re2L10FormatModeB5cxx11ENS_6Regexp10ParseFlagsE.exit unwind label %bb.w

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit80
  %.lcssa.i = phi ptr [ @_ZN3re2L11parse_modesE, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit80 ], [ getelementptr inbounds nuw (i8, ptr @_ZN3re2L11parse_modesE, i64 40), %bb.h ], [ getelementptr inbounds nuw (i8, ptr @_ZN3re2L11parse_modesE, i64 80), %bb.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN3re2L11parse_modesE, i64 120), %bb.j ], [ getelementptr inbounds nuw (i8, ptr @_ZN3re2L11parse_modesE, i64 160), %bb.k ] ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 8
  %i.ff = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store ptr %i.ff, ptr %9, align 8, !tbaa !42, !alias.scope !150
  %i.fg = load ptr, ptr %i.fe, align 8, !tbaa !8, !noalias !150 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 16
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !36, !noalias !150 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !150
  store i64 %i.fi, ptr %i.a, align 8, !tbaa !17, !noalias !150
  %i.fj = icmp ugt i64 %i.fi, 15
  br i1 %i.fj, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.m
  %i.fk = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc81 unwind label %bb.w   ; 2 uses

.noexc81:                                         ; preds = %.noexc.i.i
  store ptr %i.fk, ptr %9, align 8, !tbaa !8, !alias.scope !150
  %i.fl = load i64, ptr %i.a, align 8, !tbaa !17, !noalias !150
  store i64 %i.fl, ptr %i.ff, align 8, !tbaa !14, !alias.scope !150
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc81, %bb.m
  %i.fm = phi ptr [ %i.fk, %.noexc81 ], [ %i.ff, %bb.m ] ; 2 uses
  switch i64 %i.fi, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %bb.p
  ]

bb.n:                                             ; preds = %._crit_edge.i.i.i
  %i.fn = load i8, ptr %i.fg, align 1, !tbaa !14
  store i8 %i.fn, ptr %i.fm, align 1, !tbaa !14
  br label %bb.p

bb.o:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fm, ptr align 1 %i.fg, i64 %i.fi, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %._crit_edge.i.i.i
  %i.fo = load i64, ptr %i.a, align 8, !tbaa !17, !noalias !150 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.fo, ptr %i.fp, align 8, !tbaa !36, !alias.scope !150
  %i.fq = load ptr, ptr %9, align 8, !tbaa !8, !alias.scope !150
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fo
  store i8 0, ptr %i.fr, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !150
  br label %_ZN3re2L10FormatModeB5cxx11ENS_6Regexp10ParseFlagsE.exit

_ZN3re2L10FormatModeB5cxx11ENS_6Regexp10ParseFlagsE.exit: ; preds = %bb.p, %bb.l
  %i.fs = load ptr, ptr %9, align 8, !tbaa !8
  %i.ft = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !36
  %i.fv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.eq, ptr noundef %i.fs, i64 noundef %i.fu)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit83 unwind label %bb.x ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit83: ; preds = %_ZN3re2L10FormatModeB5cxx11ENS_6Regexp10ParseFlagsE.exit
  %i.fw = load ptr, ptr %9, align 8, !tbaa !8     ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.fy = icmp eq ptr %i.fw, %i.fx
  br i1 %i.fy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit83
  %i.fz = load i64, ptr %i.fx, align 8, !tbaa !14
  %i.ga = add i64 %i.fz, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.ga) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit83, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %i.gb = load ptr, ptr %8, align 8, !tbaa !8     ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.gd = icmp eq ptr %i.gb, %i.gc
  br i1 %i.gd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ge = load i64, ptr %i.gc, align 8, !tbaa !14
  %i.gf = add i64 %i.ge, 1
  call void @_ZdlPvm(ptr noundef %i.gb, i64 noundef %i.gf) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.gg = load i8, ptr %7, align 8, !tbaa !43, !range !52, !noundef !53
  %i.gh = trunc nuw i8 %i.gg to i1
  br i1 %i.gh, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86
  invoke void @_ZN10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(384) %7)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86
  %i.gi = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.gi, ptr %i.el, align 8, !tbaa !54
  %i.gj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.gk = getelementptr i8, ptr %i.gi, i64 -24
  %i.gl = load i64, ptr %i.gk, align 8
  %i.gm = getelementptr inbounds i8, ptr %i.el, i64 %i.gl
  store ptr %i.gj, ptr %i.gm, align 8, !tbaa !54
  %i.gn = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.gn, align 8, !tbaa !54
  %i.go = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !8  ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %7, i64 104 ; 2 uses
  %i.gr = icmp eq ptr %i.gp, %i.gq
  br i1 %i.gr, label %_ZN10LogMessageD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.r
  %i.gs = load i64, ptr %i.gq, align 8, !tbaa !14
  %i.gt = add i64 %i.gs, 1
  call void @_ZdlPvm(ptr noundef %i.gp, i64 noundef %i.gt) #23
  br label %_ZN10LogMessageD2Ev.exit

bb.s:                                             ; preds = %bb.q
  %i.gu = landingpad { ptr, i32 }
          catch ptr null
  %i.gv = extractvalue { ptr, i32 } %i.gu, 0
  call void @__clang_call_terminate(ptr %i.gv) #25
  unreachable

_ZN10LogMessageD2Ev.exit:                         ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.gn, align 8, !tbaa !54
  %i.gw = getelementptr inbounds nuw i8, ptr %7, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.gw) #24
  %i.gx = getelementptr inbounds nuw i8, ptr %7, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.gx) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %.thread261

bb.t:                                             ; preds = %bb.f
  %i.gy = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.u:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.gz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92

bb.v:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.g
  %i.ha = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.w:                                             ; preds = %.noexc.i.i, %bb.l
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

bb.x:                                             ; preds = %_ZN3re2L10FormatModeB5cxx11ENS_6Regexp10ParseFlagsE.exit
  %i.hc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hd = load ptr, ptr %9, align 8, !tbaa !8     ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.hf = icmp eq ptr %i.hd, %i.he
  br i1 %i.hf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87: ; preds = %bb.x
  %i.hg = load i64, ptr %i.he, align 8, !tbaa !14
  %i.hh = add i64 %i.hg, 1
  call void @_ZdlPvm(ptr noundef %i.hd, i64 noundef %i.hh) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87, %bb.w
  %.pn64 = phi { ptr, i32 } [ %i.hb, %bb.w ], [ %i.hc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87 ], [ %i.hc, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.y

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, %bb.v
  %.pn64.pn = phi { ptr, i32 } [ %.pn64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89 ], [ %i.ha, %bb.v ] ; 2 uses
  %i.hi = load ptr, ptr %8, align 8, !tbaa !8     ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.hk = icmp eq ptr %i.hi, %i.hj
  br i1 %i.hk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90: ; preds = %bb.y
  %i.hl = load i64, ptr %i.hj, align 8, !tbaa !14
  %i.hm = add i64 %i.hl, 1
  call void @_ZdlPvm(ptr noundef %i.hi, i64 noundef %i.hm) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90, %bb.u
  %.pn64.pn.pn = phi { ptr, i32 } [ %i.gz, %bb.u ], [ %.pn64.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90 ], [ %.pn64.pn, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.z

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, %bb.t
  %.pn64.pn.pn.pn = phi { ptr, i32 } [ %.pn64.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92 ], [ %i.gy, %bb.t ]
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.cw

bb.aa:                                            ; preds = %bb.cm
  br i1 %.3, label %.thread261, label %bb.co

bb.ab:                                            ; preds = %.preheader, %bb.cm
  %.032213 = phi i1 [ true, %.preheader ], [ %.3, %bb.cm ] ; 5 uses
  %.0160211 = phi i32 [ 1, %.preheader ], [ %i.rb, %bb.cm ] ; 6 uses
  %i.hn = call fastcc noundef i32 @_ZN3re2L7EnginesEv()
  %i.ho = shl nuw nsw i32 1, %.0160211
  %i.hp = and i32 %i.hn, %i.ho
  %.not51 = icmp eq i32 %i.hp, 0
  br i1 %.not51, label %bb.cm, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %10, i8 0, i64 5, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %scevgep.i93, i8 0, i64 272, i1 false)
  call void @_ZN3re212TestInstance9RunSearchENS_6EngineERKNS_11StringPieceES4_NS_4Prog6AnchorEPNS0_6ResultE(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %.0160211, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3, ptr noundef nonnull %10)
  %i.hq = load i8, ptr %10, align 8, !tbaa !135, !range !52, !noundef !53
  %i.hr = trunc nuw i8 %i.hq to i1                ; 2 uses
  br i1 %i.hr, label %_ZN3re2L10ResultOkayERKNS_12TestInstance6ResultES3_.exit.thread163, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hs = load i8, ptr %i.r, align 1, !tbaa !137, !range !52, !noundef !53
  %i.ht = load i8, ptr %i.s, align 1, !tbaa !137, !range !52, !noundef !53
  %.not.i = icmp eq i8 %i.hs, %i.ht
  br i1 %.not.i, label %bb.ae, label %_ZN3re2L10ResultOkayERKNS_12TestInstance6ResultES3_.exit.thread

bb.ae:                                            ; preds = %bb.ad
  %i.hu = load i8, ptr %i.t, align 1, !tbaa !138, !range !52, !noundef !53
  %i.hv = trunc nuw i8 %i.hu to i1                ; 2 uses
  %i.hw = load i8, ptr %i.u, align 4, !range !52
  %i.hx = trunc nuw i8 %i.hw to i1
  %or.cond.i = select i1 %i.hv, i1 true, i1 %i.hx
  br i1 %or.cond.i, label %.preheader.i, label %_ZN3re2L10ResultOkayERKNS_12TestInstance6ResultES3_.exit.thread163

.preheader.i:                                     ; preds = %bb.ae
  %i.hy = load ptr, ptr %scevgep.i, align 8, !tbaa !65
  %i.hz = load ptr, ptr %scevgep.i93, align 8, !tbaa !65
  %.not19.i = icmp eq ptr %i.hy, %i.hz            ; 2 uses
  br i1 %i.hv, label %.preheader.split.preheader.i, label %.preheader.split.us.i

.preheader.split.preheader.i:                     ; preds = %.preheader.i
  br i1 %.not19.i, label %bb.au, label %_ZN3re2L10ResultOkayERKNS_12TestInstance6ResultES3_.exit.thread

.preheader.split.us.i:                            ; preds = %.preheader.i
  br i1 %.not19.i, label %.split, label %_ZN3re2L10ResultOkayERKNS_12TestInstance6ResultES3_.exit.thread

.split:                                           ; preds = %.preheader.split.us.i
  %i.ia = load i64, ptr %i.v, align 8, !tbaa !91
  %i.ib = load i64, ptr %i.w, align 8, !tbaa !91
  %.not20.us.i = icmp eq i64 %i.ia, %i.ib
  br i1 %.not20.us.i, label %_ZN3re2L10ResultOkayERKNS_12TestInstance6ResultES3_.exit.thread163, label %_ZN3re2L10ResultOkayERKNS_12TestInstance6ResultES3_.exit.thread

.preheader.split.1.i:                             ; preds = %bb.au
  %i.ic = load ptr, ptr %i.x, align 8, !tbaa !65
end_hunk_0
begin_hunk_1_@_ZN3re212TestInstance7RunCaseERKNS_11StringPieceES3_NS_4Prog6AnchorE:bb.a
  %.not20.2.i = icmp eq i64 %i.ii, %i.ij
  br i1 %.not20.2.i, label %.preheader.split.3.i, label %_ZN3re2L10ResultOkayERKNS_12TestInstance6ResultES3_.exit.thread

.preheader.split.3.i:                             ; preds = %bb.ag
  %i.ik = load ptr, ptr %i.af, align 8, !tbaa !65
  %i.il = load ptr, ptr %i.ag, align 8, !tbaa !65
  %.not19.3.i = icmp eq ptr %i.ik, %i.il
  br i1 %.not19.3.i, label %bb.ah, label %_ZN3re2L10ResultOkayERKNS_12TestInstance6ResultES3_.exit.thread

bb.ah:                                            ; preds = %.preheader.split.3.i
  %i.im = load i64, ptr %i.ah, align 8, !tbaa !91
  %i.in = load i64, ptr %i.ai, align 8, !tbaa !91
  %.not20.3.i = icmp eq i64 %i.im, %i.in
  br i1 %.not20.3.i, label %.preheader.split.4.i, label %_ZN3re2L10ResultOkayERKNS_12TestInstance6ResultES3_.exit.thread

.preheader.split.4.i:                             ; preds = %bb.ah
  %i.io = load ptr, ptr %i.aj, align 8, !tbaa !65
  %i.ip = load ptr, ptr %i.ak, align 8, !tbaa !65
  %.not19.4.i = icmp eq ptr %i.io, %i.ip
  br i1 %.not19.4.i, label %bb.ai, label %_ZN3re2L10ResultOkayERKNS_12TestInstance6ResultES3_.exit.thread

bb.ai:                                            ; preds = %.preheader.split.4.i
  %i.iq = load i64, ptr %i.al, align 8, !tbaa !91
  %i.ir = load i64, ptr %i.am, align 8, !tbaa !91
  %.not20.4.i = icmp eq i64 %i.iq, %i.ir
  br i1 %.not20.4.i, label %.preheader.split.5.i, label %_ZN3re2L10ResultOkayERKNS_12TestInstance6ResultES3_.exit.thread

.preheader.split.5.i:                             ; preds = %bb.ai
  %i.is = load ptr, ptr %i.an, align 8, !tbaa !65
  %i.it = load ptr, ptr %i.ao, align 8, !tbaa !65
  %.not19.5.i = icmp eq ptr %i.is, %i.it
  br i1 %.not19.5.i, label %bb.aj, label %_ZN3re2L10ResultOkayERKNS_12TestInstance6ResultES3_.exit.thread

bb.aj:                                            ; preds = %.preheader.split.5.i
  %i.iu = load i64, ptr %i.ap, align 8, !tbaa !91
  %i.iv = load i64, ptr %i.aq, align 8, !tbaa !91
  %.not20.5.i = icmp eq i64 %i.iu, %i.iv
  br i1 %.not20.5.i, label %.preheader.split.6.i, label %_ZN3re2L10ResultOkayERKNS_12TestInstance6ResultES3_.exit.thread

.preheader.split.6.i:                             ; preds = %bb.aj
  %i.iw = load ptr, ptr %i.ar, align 8, !tbaa !65
  %i.ix = load ptr, ptr %i.as, align 8, !tbaa !65
  %.not19.6.i = icmp eq ptr %i.iw, %i.ix
  br i1 %.not19.6.i, label %bb.ak, label %_ZN3re2L10ResultOkayERKNS_12TestInstance6ResultES3_.exit.thread

bb.ak:                                            ; preds = %.preheader.split.6.i
  %i.iy = load i64, ptr %i.at, align 8, !tbaa !91
  %i.iz = load i64, ptr %i.au, align 8, !tbaa !91
  %.not20.6.i = icmp eq i64 %i.iy, %i.iz
  br i1 %.not20.6.i, label %.preheader.split.7.i, label %_ZN3re2L10ResultOkayERKNS_12TestInstance6ResultES3_.exit.thread

.preheader.split.7.i:                             ; preds = %bb.ak
  %i.ja = load ptr, ptr %i.av, align 8, !tbaa !65
  %i.jb = load ptr, ptr %i.aw, align 8, !tbaa !65
  %.not19.7.i = icmp eq ptr %i.ja, %i.jb
  br i1 %.not19.7.i, label %bb.al, label %_ZN3re2L10ResultOkayERKNS_12TestInstance6ResultES3_.exit.thread

bb.al:                                            ; preds = %.preheader.split.7.i
  %i.jc = load i64, ptr %i.ax, align 8, !tbaa !91
  %i.jd = load i64, ptr %i.ay, align 8, !tbaa !91
  %.not20.7.i = icmp eq i64 %i.jc, %i.jd
  br i1 %.not20.7.i, label %.preheader.split.8.i, label %_ZN3re2L10ResultOkayERKNS_12TestInstance6ResultES3_.exit.thread

.preheader.split.8.i:                             ; preds = %bb.al
  %i.je = load ptr, ptr %i.az, align 8, !tbaa !65
  %i.jf = load ptr, ptr %i.ba, align 8, !tbaa !65
  %.not19.8.i = icmp eq ptr %i.je, %i.jf
  br i1 %.not19.8.i, label %bb.am, label %_ZN3re2L10ResultOkayERKNS_12TestInstance6ResultES3_.exit.thread

bb.am:                                            ; preds = %.preheader.split.8.i
  %i.jg = load i64, ptr %i.bb, align 8, !tbaa !91
  %i.jh = load i64, ptr %i.bc, align 8, !tbaa !91
  %.not20.8.i = icmp eq i64 %i.jg, %i.jh
  br i1 %.not20.8.i, label %.preheader.split.9.i, label %_ZN3re2L10ResultOkayERKNS_12TestInstance6ResultES3_.exit.thread

.preheader.split.9.i:                             ; preds = %bb.am
  %i.ji = load ptr, ptr %i.bd, align 8, !tbaa !65
  %i.jj = load ptr, ptr %i.be, align 8, !tbaa !65
  %.not19.9.i = icmp eq ptr %i.ji, %i.jj
  br i1 %.not19.9.i, label %bb.an, label %_ZN3re2L10ResultOkayERKNS_12TestInstance6ResultES3_.exit.thread

bb.an:                                            ; preds = %.preheader.split.9.i
  %i.jk = load i64, ptr %i.bf, align 8, !tbaa !91
  %i.jl = load i64, ptr %i.bg, align 8, !tbaa !91
  %.not20.9.i = icmp eq i64 %i.jk, %i.jl
  br i1 %.not20.9.i, label %.preheader.split.10.i, label %_ZN3re2L10ResultOkayERKNS_12TestInstance6ResultES3_.exit.thread

.preheader.split.10.i:                            ; preds = %bb.an
  %i.jm = load ptr, ptr %i.bh, align 8, !tbaa !65
  %i.jn = load ptr, ptr %i.bi, align 8, !tbaa !65
  %.not19.10.i = icmp eq ptr %i.jm, %i.jn
  br i1 %.not19.10.i, label %bb.ao, label %_ZN3re2L10ResultOkayERKNS_12TestInstance6ResultES3_.exit.thread

bb.ao:                                            ; preds = %.preheader.split.10.i
  %i.jo = load i64, ptr %i.bj, align 8, !tbaa !91
  %i.jp = load i64, ptr %i.bk, align 8, !tbaa !91
  %.not20.10.i = icmp eq i64 %i.jo, %i.jp
  br i1 %.not20.10.i, label %.preheader.split.11.i, label %_ZN3re2L10ResultOkayERKNS_12TestInstance6ResultES3_.exit.thread

.preheader.split.11.i:                            ; preds = %bb.ao
  %i.jq = load ptr, ptr %i.bl, align 8, !tbaa !65
  %i.jr = load ptr, ptr %i.bm, align 8, !tbaa !65
  %.not19.11.i = icmp eq ptr %i.jq, %i.jr
  br i1 %.not19.11.i, label %bb.ap, label %_ZN3re2L10ResultOkayERKNS_12TestInstance6ResultES3_.exit.thread

bb.ap:                                            ; preds = %.preheader.split.11.i
  %i.js = load i64, ptr %i.bn, align 8, !tbaa !91
  %i.jt = load i64, ptr %i.bo, align 8, !tbaa !91
  %.not20.11.i = icmp eq i64 %i.js, %i.jt
  br i1 %.not20.11.i, label %.preheader.split.12.i, label %_ZN3re2L10ResultOkayERKNS_12TestInstance6ResultES3_.exit.thread

.preheader.split.12.i:                            ; preds = %bb.ap
  %i.ju = load ptr, ptr %i.bp, align 8, !tbaa !65
  %i.jv = load ptr, ptr %i.bq, align 8, !tbaa !65
  %.not19.12.i = icmp eq ptr %i.ju, %i.jv
  br i1 %.not19.12.i, label %bb.aq, label %_ZN3re2L10ResultOkayERKNS_12TestInstance6ResultES3_.exit.thread

bb.aq:                                            ; preds = %.preheader.split.12.i
  %i.jw = load i64, ptr %i.br, align 8, !tbaa !91
  %i.jx = load i64, ptr %i.bs, align 8, !tbaa !91
  %.not20.12.i = icmp eq i64 %i.jw, %i.jx
  br i1 %.not20.12.i, label %.preheader.split.13.i, label %_ZN3re2L10ResultOkayERKNS_12TestInstance6ResultES3_.exit.thread

.preheader.split.13.i:                            ; preds = %bb.aq
  %i.jy = load ptr, ptr %i.bt, align 8, !tbaa !65
  %i.jz = load ptr, ptr %i.bu, align 8, !tbaa !65
  %.not19.13.i = icmp eq ptr %i.jy, %i.jz
  br i1 %.not19.13.i, label %bb.ar, label %_ZN3re2L10ResultOkayERKNS_12TestInstance6ResultES3_.exit.thread

bb.ar:                                            ; preds = %.preheader.split.13.i
  %i.ka = load i64, ptr %i.bv, align 8, !tbaa !91
  %i.kb = load i64, ptr %i.bw, align 8, !tbaa !91
  %.not20.13.i = icmp eq i64 %i.ka, %i.kb
  br i1 %.not20.13.i, label %.preheader.split.14.i, label %_ZN3re2L10ResultOkayERKNS_12TestInstance6ResultES3_.exit.thread

.preheader.split.14.i:                            ; preds = %bb.ar
  %i.kc = load ptr, ptr %i.bx, align 8, !tbaa !65
  %i.kd = load ptr, ptr %i.by, align 8, !tbaa !65
  %.not19.14.i = icmp eq ptr %i.kc, %i.kd
  br i1 %.not19.14.i, label %bb.as, label %_ZN3re2L10ResultOkayERKNS_12TestInstance6ResultES3_.exit.thread

bb.as:                                            ; preds = %.preheader.split.14.i
  %i.ke = load i64, ptr %i.bz, align 8, !tbaa !91
  %i.kf = load i64, ptr %i.ca, align 8, !tbaa !91
  %.not20.14.i = icmp eq i64 %i.ke, %i.kf
  br i1 %.not20.14.i, label %.preheader.split.15.i, label %_ZN3re2L10ResultOkayERKNS_12TestInstance6ResultES3_.exit.thread

.preheader.split.15.i:                            ; preds = %bb.as
  %i.kg = load ptr, ptr %i.cb, align 8, !tbaa !65
  %i.kh = load ptr, ptr %i.cc, align 8, !tbaa !65
  %.not19.15.i = icmp eq ptr %i.kg, %i.kh
  br i1 %.not19.15.i, label %bb.at, label %_ZN3re2L10ResultOkayERKNS_12TestInstance6ResultES3_.exit.thread

bb.at:                                            ; preds = %.preheader.split.15.i
  %i.ki = load i64, ptr %i.cd, align 8, !tbaa !91
  %i.kj = load i64, ptr %i.ce, align 8, !tbaa !91
  %.not20.15.i = icmp eq i64 %i.ki, %i.kj
  br i1 %.not20.15.i, label %.preheader.split.16.i, label %_ZN3re2L10ResultOkayERKNS_12TestInstance6ResultES3_.exit.thread

.preheader.split.16.i:                            ; preds = %bb.at
  %i.kk = load ptr, ptr %i.cf, align 8, !tbaa !65
  %i.kl = load ptr, ptr %i.cg, align 8, !tbaa !65
  %.not19.16.i = icmp eq ptr %i.kk, %i.kl
  br i1 %.not19.16.i, label %_ZN3re2L10ResultOkayERKNS_12TestInstance6ResultES3_.exit, label %_ZN3re2L10ResultOkayERKNS_12TestInstance6ResultES3_.exit.thread

bb.au:                                            ; preds = %.preheader.split.preheader.i
  %i.km = load i64, ptr %i.v, align 8, !tbaa !91
  %i.kn = load i64, ptr %i.w, align 8, !tbaa !91
  %.not20.i = icmp eq i64 %i.km, %i.kn
  br i1 %.not20.i, label %.preheader.split.1.i, label %_ZN3re2L10ResultOkayERKNS_12TestInstance6ResultES3_.exit.thread

_ZN3re2L10ResultOkayERKNS_12TestInstance6ResultES3_.exit: ; preds = %.preheader.split.16.i
  %i.ko = load i64, ptr %i.ch, align 8, !tbaa !91
  %i.kp = load i64, ptr %i.ci, align 8, !tbaa !91
  %.not20.16.i = icmp eq i64 %i.ko, %i.kp
  br i1 %.not20.16.i, label %_ZN3re2L10ResultOkayERKNS_12TestInstance6ResultES3_.exit.thread163, label %_ZN3re2L10ResultOkayERKNS_12TestInstance6ResultES3_.exit.thread

_ZN3re2L10ResultOkayERKNS_12TestInstance6ResultES3_.exit.thread163: ; preds = %bb.ae, %bb.ac, %.split, %_ZN3re2L10ResultOkayERKNS_12TestInstance6ResultES3_.exit
  %i.kq = load i8, ptr @_ZN3re214FLAGS_log_okayE, align 1, !tbaa !57, !range !52, !noundef !53
  %i.kr = trunc nuw i8 %i.kq to i1
  br i1 %i.kr, label %bb.av, label %_ZN3re2L8NonASCIIERKNS_11StringPieceE.exit

bb.av:                                            ; preds = %_ZN3re2L10ResultOkayERKNS_12TestInstance6ResultES3_.exit.thread163
  %i.ks = select i1 %i.hr, ptr @.str.43, ptr @.str.44
  call void @_ZN3re212TestInstance8LogMatchEPKcNS_6EngineERKNS_11StringPieceES6_NS_4Prog6AnchorE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.ks, i32 noundef %.0160211, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3)
  br label %_ZN3re2L8NonASCIIERKNS_11StringPieceE.exit

_ZN3re2L10ResultOkayERKNS_12TestInstance6ResultES3_.exit.thread: ; preds = %.preheader.split.11.i, %bb.ar, %bb.ao, %.preheader.split.10.i, %bb.aq, %bb.an, %.preheader.split.9.i, %.preheader.split.14.i, %bb.am, %.preheader.split.8.i, %bb.as, %bb.al, %.preheader.split.7.i, %.preheader.split.12.i, %bb.ak, %.preheader.split.6.i, %.preheader.split.15.i, %bb.aj, %.preheader.split.5.i, %bb.at, %bb.ai, %.preheader.split.4.i, %.preheader.split.13.i, %bb.ah, %.preheader.split.3.i, %.preheader.split.16.i, %bb.ag, %.preheader.split.2.i, %bb.af, %.preheader.split.1.i, %bb.ap, %.preheader.split.preheader.i, %bb.au, %.preheader.split.us.i, %bb.ad, %.split, %_ZN3re2L10ResultOkayERKNS_12TestInstance6ResultES3_.exit
  %i.kt = icmp eq i32 %.0160211, 9
  br i1 %i.kt, label %bb.aw, label %_ZN3re2L8NonASCIIERKNS_11StringPieceE.exit.thread

bb.aw:                                            ; preds = %_ZN3re2L10ResultOkayERKNS_12TestInstance6ResultES3_.exit.thread
  %.val = load ptr, ptr %1, align 8
  %.val70 = load i64, ptr %i.cj, align 8          ; 2 uses
  %.not.i94 = icmp eq i64 %.val70, 0
  br i1 %.not.i94, label %_ZN3re2L8NonASCIIERKNS_11StringPieceE.exit.thread, label %.lr.ph.i

bb.ax:                                            ; preds = %.lr.ph.i
  %i.ku = add nuw i64 %.062.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ku, %.val70
  br i1 %exitcond.not.i, label %_ZN3re2L8NonASCIIERKNS_11StringPieceE.exit.thread, label %.lr.ph.i, !llvm.loop !153

.lr.ph.i:                                         ; preds = %bb.aw, %bb.ax
  %.062.i = phi i64 [ %i.ku, %bb.ax ], [ 0, %bb.aw ] ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %.val, i64 %.062.i
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !14
  %i.kx = icmp slt i8 %i.kw, 0
  br i1 %i.kx, label %_ZN3re2L8NonASCIIERKNS_11StringPieceE.exit, label %bb.ax

_ZN3re2L8NonASCIIERKNS_11StringPieceE.exit.thread: ; preds = %bb.ax, %bb.aw, %_ZN3re2L10ResultOkayERKNS_12TestInstance6ResultES3_.exit.thread
  %i.ky = load i8, ptr %i.ck, align 2, !tbaa !149, !range !52, !noundef !53
  %i.kz = trunc nuw i8 %i.ky to i1                ; 2 uses
  %spec.select = select i1 %i.kz, i1 %.032213, i1 false ; 3 uses
  %i.la = select i1 %i.kz, ptr @.str.45, ptr @.str.46
  call void @_ZN3re212TestInstance8LogMatchEPKcNS_6EngineERKNS_11StringPieceES6_NS_4Prog6AnchorE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.la, i32 noundef %.0160211, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3)
  %i.lb = load i8, ptr %i.r, align 1, !tbaa !137, !range !52, !noundef !53 ; 2 uses
  %i.lc = load i8, ptr %i.s, align 1, !tbaa !137, !range !52, !noundef !53
  %.not52 = icmp eq i8 %i.lb, %i.lc
  br i1 %.not52, label %bb.bj, label %bb.ay

bb.ay:                                            ; preds = %_ZN3re2L8NonASCIIERKNS_11StringPieceE.exit.thread
  %i.ld = trunc nuw i8 %i.lb to i1
  br i1 %i.ld, label %bb.az, label %bb.be

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @_ZN10LogMessageC2EPKci(ptr noundef nonnull align 8 dereferenceable(384) %11, ptr noundef nonnull @.str.18, i32 noundef 564)
  %i.le = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cu, ptr noundef nonnull @.str.47, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit97 unwind label %bb.bd ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit97: ; preds = %bb.az
  %i.lf = load i8, ptr %11, align 8, !tbaa !43, !range !52, !noundef !53
  %i.lg = trunc nuw i8 %i.lf to i1
  br i1 %i.lg, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit97
  invoke void @_ZN10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(384) %11)
          to label %bb.bb unwind label %bb.bc

bb.bb:                                            ; preds = %bb.ba, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit97
  store ptr %i.cm, ptr %i.cu, align 8, !tbaa !54
  %i.lh = load i64, ptr %i.co, align 8
  %i.li = getelementptr inbounds i8, ptr %i.cu, i64 %i.lh
  store ptr %i.cn, ptr %i.li, align 8, !tbaa !54
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.cv, align 8, !tbaa !54
  %i.lj = load ptr, ptr %i.cw, align 8, !tbaa !8  ; 2 uses
  %i.lk = icmp eq ptr %i.lj, %i.cx
  br i1 %i.lk, label %_ZN10LogMessageD2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i98: ; preds = %bb.bb
  %i.ll = load i64, ptr %i.cx, align 8, !tbaa !14
  %i.lm = add i64 %i.ll, 1
  call void @_ZdlPvm(ptr noundef %i.lj, i64 noundef %i.lm) #23
  br label %_ZN10LogMessageD2Ev.exit100

bb.bc:                                            ; preds = %bb.ba
  %i.ln = landingpad { ptr, i32 }
          catch ptr null
  %i.lo = extractvalue { ptr, i32 } %i.ln, 0
  call void @__clang_call_terminate(ptr %i.lo) #25
  unreachable

_ZN10LogMessageD2Ev.exit100:                      ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i98
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.cv, align 8, !tbaa !54
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cy) #24
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.cz) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %bb.bj

bb.bd:                                            ; preds = %bb.az
  %i.lp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %bb.cn

bb.be:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  call void @_ZN10LogMessageC2EPKci(ptr noundef nonnull align 8 dereferenceable(384) %12, ptr noundef nonnull @.str.18, i32 noundef 566)
  %i.lq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, ptr noundef nonnull @.str.48, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit102 unwind label %bb.bi ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit102: ; preds = %bb.be
  %i.lr = load i8, ptr %12, align 8, !tbaa !43, !range !52, !noundef !53
  %i.ls = trunc nuw i8 %i.lr to i1
  br i1 %i.ls, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit102
  invoke void @_ZN10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(384) %12)
          to label %bb.bg unwind label %bb.bh

bb.bg:                                            ; preds = %bb.bf, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit102
  store ptr %i.cm, ptr %i.cl, align 8, !tbaa !54
  %i.lt = load i64, ptr %i.co, align 8
  %i.lu = getelementptr inbounds i8, ptr %i.cl, i64 %i.lt
  store ptr %i.cn, ptr %i.lu, align 8, !tbaa !54
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.cp, align 8, !tbaa !54
  %i.lv = load ptr, ptr %i.cq, align 8, !tbaa !8  ; 2 uses
  %i.lw = icmp eq ptr %i.lv, %i.cr
  br i1 %i.lw, label %_ZN10LogMessageD2Ev.exit105, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i103: ; preds = %bb.bg
  %i.lx = load i64, ptr %i.cr, align 8, !tbaa !14
  %i.ly = add i64 %i.lx, 1
  call void @_ZdlPvm(ptr noundef %i.lv, i64 noundef %i.ly) #23
  br label %_ZN10LogMessageD2Ev.exit105

bb.bh:                                            ; preds = %bb.bf
  %i.lz = landingpad { ptr, i32 }
          catch ptr null
  %i.ma = extractvalue { ptr, i32 } %i.lz, 0
  call void @__clang_call_terminate(ptr %i.ma) #25
  unreachable

_ZN10LogMessageD2Ev.exit105:                      ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i103
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.cp, align 8, !tbaa !54
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cs) #24
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ct) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %_ZN3re2L8NonASCIIERKNS_11StringPieceE.exit

bb.bi:                                            ; preds = %bb.be
  %i.mb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %12) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %bb.cn

bb.bj:                                            ; preds = %_ZN10LogMessageD2Ev.exit100, %_ZN3re2L8NonASCIIERKNS_11StringPieceE.exit.thread
  %i.mc = load i32, ptr %i.da, align 8, !tbaa !31
  %.not53209 = icmp slt i32 %i.mc, 0
  br i1 %.not53209, label %_ZN3re2L8NonASCIIERKNS_11StringPieceE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bj, %bb.cl
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.cl ], [ 0, %bb.bj ] ; 6 uses
  %i.md = getelementptr inbounds nuw [16 x i8], ptr %scevgep.i93, i64 %indvars.iv ; 5 uses
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !65
  %i.mf = getelementptr inbounds nuw [16 x i8], ptr %scevgep.i, i64 %indvars.iv ; 4 uses
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !65
  %.not54 = icmp eq ptr %i.me, %i.mg
  br i1 %.not54, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %.lr.ph
  %i.mh = getelementptr inbounds nuw i8, ptr %i.md, i64 8 ; 2 uses
  %i.mi = load i64, ptr %i.mh, align 8, !tbaa !91
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  %i.mk = load i64, ptr %i.mj, align 8, !tbaa !91
  %.not55 = icmp eq i64 %i.mi, %i.mk
  br i1 %.not55, label %bb.cc, label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  store i8 0, ptr %13, align 8, !tbaa !43
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.dc) #24
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.dc, align 8, !tbaa !54
  store ptr null, ptr %i.dd, align 8, !tbaa !154
  store i8 0, ptr %i.de, align 8, !tbaa !161
  store i8 0, ptr %i.df, align 1, !tbaa !162
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dg, i8 0, i64 32, i1 false)
  store ptr %i.dh, ptr %i.db, align 8, !tbaa !54
  %i.ml = load i64, ptr %i.dj, align 8
  %i.mm = getelementptr inbounds i8, ptr %i.db, i64 %i.ml
  store ptr %i.di, ptr %i.mm, align 8, !tbaa !54
  %i.mn = load ptr, ptr %i.db, align 8, !tbaa !54
  %i.mo = getelementptr i8, ptr %i.mn, i64 -24
  %i.mp = load i64, ptr %i.mo, align 8
  %i.mq = getelementptr inbounds i8, ptr %i.db, i64 %i.mp
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.mq, ptr noundef null)
          to label %bb.bm unwind label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.dc, align 8, !tbaa !54
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16)>, ptr %i.db, align 8, !tbaa !54
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dl, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.dm) #24
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.dk, align 8, !tbaa !54
  store i32 16, ptr %i.dn, align 8, !tbaa !163
  store ptr %i.dp, ptr %i.do, align 8, !tbaa !42
  store i64 0, ptr %i.dq, align 8, !tbaa !36
  store i8 0, ptr %i.dp, align 8, !tbaa !14
  %i.mr = load ptr, ptr %i.db, align 8, !tbaa !54
  %i.ms = getelementptr i8, ptr %i.mr, i64 -24
  %i.mt = load i64, ptr %i.ms, align 8
  %i.mu = getelementptr inbounds i8, ptr %i.db, i64 %i.mt
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.mu, ptr noundef nonnull %i.dk)
          to label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev.exit unwind label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  %i.mv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bm
  %i.mw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.dk) #24
  br label %bb.bp

common.resume:                                    ; preds = %bb.cw, %bb.br, %bb.bp
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.i, %bb.bp ], [ %i.nb, %bb.br ], [ %.pn64.pn.pn.pn.pn, %bb.cw ]
  resume { ptr, i32 } %common.resume.op

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.pn.pn.i = phi { ptr, i32 } [ %i.mv, %bb.bn ], [ %i.mw, %bb.bo ]
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.dc) #24
  br label %common.resume

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev.exit: ; preds = %bb.bm
  %i.mx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.db, ptr noundef nonnull @.str.18, i64 noundef 63)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.br ; 0 uses

end_hunk_1
begin_hunk_2_@llvm.assume
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #23 = { builtin nounwind }
attributes #24 = { nounwind }
attributes #25 = { noreturn nounwind }
attributes #26 = { noreturn }
attributes #27 = { builtin allocsize(0) }
attributes #28 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !11, i64 0}
!9 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0, !13, i64 8, !6, i64 16}
!10 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !11, i64 0}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!6, !6, i64 0}
!15 = !{i64 0, i64 8, !16, i64 8, i64 8, !17}
!16 = !{!11, !11, i64 0}
!17 = !{!13, !13, i64 0}
!18 = !{!19, !21, i64 16}
!19 = !{!"_ZTSN3re212TestInstanceE", !20, i64 0, !21, i64 16, !22, i64 20, !23, i64 24, !24, i64 32, !5, i64 40, !25, i64 48, !25, i64 56, !26, i64 64, !27, i64 72}
!20 = !{!"_ZTSN3re211StringPieceE", !11, i64 0, !13, i64 8}
!21 = !{!"_ZTSN3re24Prog9MatchKindE", !6, i64 0}
!22 = !{!"_ZTSN3re26Regexp10ParseFlagsE", !6, i64 0}
!23 = !{!"bool", !6, i64 0}
!24 = !{!"p1 _ZTSN3re26RegexpE", !12, i64 0}
!25 = !{!"p1 _ZTSN3re24ProgE", !12, i64 0}
!26 = !{!"p1 _ZTSN3re24PCREE", !12, i64 0}
!27 = !{!"p1 _ZTSN3re23RE2E", !12, i64 0}
!28 = !{!19, !22, i64 20}
!29 = !{!19, !23, i64 24}
!30 = !{!19, !24, i64 32}
!31 = !{!19, !5, i64 40}
!32 = !{!33, !34, i64 0}
!33 = !{!"_ZTSN3re212RegexpStatusE", !34, i64 0, !20, i64 8, !35, i64 24}
!34 = !{!"_ZTSN3re216RegexpStatusCodeE", !6, i64 0}
!35 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !12, i64 0}
!36 = !{!9, !13, i64 8}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_ZN3re2L10FormatModeB5cxx11ENS_6Regexp10ParseFlagsE: argument 0"}
!39 = distinct !{!39, !"_ZN3re2L10FormatModeB5cxx11ENS_6Regexp10ParseFlagsE"}
!40 = !{!41, !22, i64 0}
!41 = !{!"_ZTSN3re29ParseModeE", !22, i64 0, !9, i64 8}
!42 = !{!10, !11, i64 0}
!43 = !{!44, !23, i64 0}
!44 = !{!"_ZTS10LogMessage", !23, i64 0, !45, i64 8}
!45 = !{!"_ZTSNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE", !46, i64 0, !47, i64 8}
!46 = !{!"_ZTSSo"}
!47 = !{!"_ZTSNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE", !48, i64 0, !51, i64 64, !9, i64 72}
!48 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !49, i64 56}
!49 = !{!"_ZTSSt6locale", !50, i64 0}
!50 = !{!"p1 _ZTSNSt6locale5_ImplE", !12, i64 0}
!51 = !{!"_ZTSSt13_Ios_Openmode", !6, i64 0}
!52 = !{i8 0, i8 2}
!53 = !{}
!54 = !{!55, !55, i64 0}
!55 = !{!"vtable pointer", !7, i64 0}
!56 = !{!19, !25, i64 48}
!57 = !{!23, !23, i64 0}
!58 = !{!59}
!59 = distinct !{!59, !60, !"_ZN3re2L10FormatKindB5cxx11ENS_4Prog9MatchKindE: argument 0"}
!60 = distinct !{!60, !"_ZN3re2L10FormatKindB5cxx11ENS_4Prog9MatchKindE"}
!61 = !{!62}
!62 = distinct !{!62, !63, !"_ZN3re2L10FormatModeB5cxx11ENS_6Regexp10ParseFlagsE: argument 0"}
!63 = distinct !{!63, !"_ZN3re2L10FormatModeB5cxx11ENS_6Regexp10ParseFlagsE"}
!64 = !{!19, !25, i64 56}
!65 = !{!20, !11, i64 0}
!66 = !{!67}
!67 = distinct !{!67, !68, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!68 = distinct !{!68, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!69 = !{!70, !67}
!70 = distinct !{!70, !71, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!71 = distinct !{!71, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!72 = !{!73}
!73 = distinct !{!73, !74, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!74 = distinct !{!74, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!75 = !{!76, !73}
!76 = distinct !{!76, !77, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!77 = distinct !{!77, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!78 = !{!79}
!79 = distinct !{!79, !80, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!80 = distinct !{!80, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!81 = !{!82, !79}
!82 = distinct !{!82, !83, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!83 = distinct !{!83, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!84 = !{!85, !86, i64 0}
!85 = !{!"_ZTSN3re23RE27OptionsE", !86, i64 0, !23, i64 4, !23, i64 5, !23, i64 6, !13, i64 8, !23, i64 16, !23, i64 17, !23, i64 18, !23, i64 19, !23, i64 20, !23, i64 21, !23, i64 22, !23, i64 23}
!86 = !{!"_ZTSN3re23RE27Options8EncodingE", !6, i64 0}
!87 = !{!85, !23, i64 4}
!88 = !{!85, !23, i64 5}
!89 = !{!85, !23, i64 6}
!90 = !{!85, !13, i64 8}
!91 = !{!20, !13, i64 8}
!92 = !{!19, !27, i64 72}
!93 = !{!94, !35, i64 64}
!94 = !{!"_ZTSN3re23RE2E", !9, i64 0, !85, i64 32, !24, i64 56, !35, i64 64, !95, i64 72, !9, i64 80, !9, i64 112, !23, i64 144, !24, i64 152, !25, i64 160, !5, i64 168, !23, i64 172, !25, i64 176, !96, i64 184, !97, i64 192, !98, i64 200, !98, i64 204, !98, i64 208}
!95 = !{!"_ZTSN3re23RE29ErrorCodeE", !6, i64 0}
!96 = !{!"p1 _ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE", !12, i64 0}
!97 = !{!"p1 _ZTSSt3mapIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS5_EEE", !12, i64 0}
!98 = !{!"_ZTSSt9once_flag", !5, i64 0}
!99 = !{!100, !5, i64 4}
!100 = !{!"_ZTSN3re212PCRE_OptionsE", !101, i64 0, !5, i64 4, !5, i64 8, !23, i64 12}
!101 = !{!"_ZTSN3re24PCRE6OptionE", !6, i64 0}
!102 = !{!100, !5, i64 8}
!103 = !{!100, !23, i64 12}
!104 = !{!105}
!105 = distinct !{!105, !106, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!106 = distinct !{!106, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!107 = !{!108, !105}
!108 = distinct !{!108, !109, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!109 = distinct !{!109, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!110 = !{!111}
!111 = distinct !{!111, !112, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!112 = distinct !{!112, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!113 = !{!19, !26, i64 64}
!114 = !{!115, !35, i64 56}
!115 = !{!"_ZTSN3re24PCREE", !9, i64 0, !101, i64 32, !116, i64 40, !116, i64 48, !35, i64 56, !23, i64 64, !5, i64 68, !5, i64 72, !5, i64 76}
!116 = !{!"p1 _ZTS4pcre", !12, i64 0}
!117 = !{!33, !35, i64 24}
!118 = !{!119, !121, i64 32}
!119 = !{!"_ZTSSt8ios_base", !13, i64 8, !13, i64 16, !120, i64 24, !121, i64 28, !121, i64 32, !122, i64 40, !123, i64 48, !6, i64 64, !5, i64 192, !124, i64 200, !49, i64 208}
!120 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!121 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!122 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !12, i64 0}
!123 = !{!"_ZTSNSt8ios_base6_WordsE", !12, i64 0, !13, i64 8}
!124 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !12, i64 0}
!125 = !{!5, !5, i64 0}
!126 = !{!127}
!127 = distinct !{!127, !128, !"_ZN3re27GetFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_: argument 0"}
!128 = distinct !{!128, !"_ZN3re27GetFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_"}
!129 = !{!130}
!130 = distinct !{!130, !131, !"_ZN3re27GetFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_: argument 0"}
!131 = distinct !{!131, !"_ZN3re27GetFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_"}
!132 = distinct !{!132, !133}
!133 = !{!"llvm.loop.mustprogress"}
!134 = distinct !{!134, !133}
!135 = !{!136, !23, i64 0}
!136 = !{!"_ZTSN3re212TestInstance6ResultE", !23, i64 0, !23, i64 1, !23, i64 2, !23, i64 3, !23, i64 4, !6, i64 8}
!137 = !{!136, !23, i64 1}
!138 = !{!136, !23, i64 3}
!139 = !{!136, !23, i64 4}
!140 = !{!141, !141, i64 0}
!141 = !{!"p1 short", !12, i64 0}
!142 = !{!143, !12, i64 0}
!143 = !{!"_ZTSN3re24PCRE3ArgE", !12, i64 0, !12, i64 8}
!144 = !{!143, !12, i64 8}
!145 = !{!12, !12, i64 0}
!146 = !{!147, !147, i64 0}
!147 = !{!"p1 _ZTSN3re24PCRE3ArgE", !12, i64 0}
!148 = distinct !{!148, !133}
!149 = !{!136, !23, i64 2}
!150 = !{!151}
!151 = distinct !{!151, !152, !"_ZN3re2L10FormatModeB5cxx11ENS_6Regexp10ParseFlagsE: argument 0"}
!152 = distinct !{!152, !"_ZN3re2L10FormatModeB5cxx11ENS_6Regexp10ParseFlagsE"}
!153 = distinct !{!153, !133}
!154 = !{!155, !156, i64 216}
!155 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !119, i64 0, !156, i64 216, !6, i64 224, !23, i64 225, !157, i64 232, !158, i64 240, !159, i64 248, !160, i64 256}
!156 = !{!"p1 _ZTSSo", !12, i64 0}
!157 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !12, i64 0}
!158 = !{!"p1 _ZTSSt5ctypeIcE", !12, i64 0}
!159 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !12, i64 0}
!160 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !12, i64 0}
!161 = !{!155, !6, i64 224}
!162 = !{!155, !23, i64 225}
!163 = !{!47, !51, i64 64}
!164 = !{!165}
!165 = distinct !{!165, !166, !"_ZN3re2L13FormatCaptureB5cxx11ERKNS_11StringPieceES2_: argument 0"}
!166 = distinct !{!166, !"_ZN3re2L13FormatCaptureB5cxx11ERKNS_11StringPieceES2_"}
!167 = !{!168}
!168 = distinct !{!168, !169, !"_ZN3re2L13FormatCaptureB5cxx11ERKNS_11StringPieceES2_: argument 0"}
!169 = distinct !{!169, !"_ZN3re2L13FormatCaptureB5cxx11ERKNS_11StringPieceES2_"}
!170 = !{!171}
!171 = distinct !{!171, !172, !"_ZN3re2L13FormatCaptureB5cxx11ERKNS_11StringPieceES2_: argument 0"}
!172 = distinct !{!172, !"_ZN3re2L13FormatCaptureB5cxx11ERKNS_11StringPieceES2_"}
!173 = distinct !{!173, !133}
!174 = distinct !{!174, !133}
!175 = !{!"branch_weights", i32 1, i32 1048575}
!176 = !{!177}
!177 = distinct !{!177, !178, !"_ZN3re2L10FormatKindB5cxx11ENS_4Prog9MatchKindE: argument 0"}
!178 = distinct !{!178, !"_ZN3re2L10FormatKindB5cxx11ENS_4Prog9MatchKindE"}
!179 = !{!180}
!180 = distinct !{!180, !181, !"_ZN3re2L12FormatAnchorB5cxx11ENS_4Prog6AnchorE: argument 0"}
!181 = distinct !{!181, !"_ZN3re2L12FormatAnchorB5cxx11ENS_4Prog6AnchorE"}
!182 = !{!183}
!183 = distinct !{!183, !184, !"_ZN3re2L10FormatModeB5cxx11ENS_6Regexp10ParseFlagsE: argument 0"}
!184 = distinct !{!184, !"_ZN3re2L10FormatModeB5cxx11ENS_6Regexp10ParseFlagsE"}
!185 = !{!186, !23, i64 0}
!186 = !{!"_ZTSN3re26TesterE", !23, i64 0, !187, i64 8}
!187 = !{!"_ZTSSt6vectorIPN3re212TestInstanceESaIS2_EE", !188, i64 0}
!188 = !{!"_ZTSSt12_Vector_baseIPN3re212TestInstanceESaIS2_EE", !189, i64 0}
!189 = !{!"_ZTSNSt12_Vector_baseIPN3re212TestInstanceESaIS2_EE12_Vector_implE", !190, i64 0}
!190 = !{!"_ZTSNSt12_Vector_baseIPN3re212TestInstanceESaIS2_EE17_Vector_impl_dataE", !191, i64 0, !191, i64 8, !191, i64 16}
!191 = !{!"p2 _ZTSN3re212TestInstanceE", !192, i64 0}
!192 = !{!"any p2 pointer", !12, i64 0}
!193 = !{!21, !21, i64 0}
!194 = !{!190, !191, i64 8}
!195 = !{!190, !191, i64 16}
!196 = !{!197, !197, i64 0}
!197 = !{!"p1 _ZTSN3re212TestInstanceE", !12, i64 0}
!198 = !{!190, !191, i64 0}
!199 = distinct !{!199, !133}
!200 = distinct !{!200, !133}
!201 = distinct !{!201, !133}
!202 = !{!203}
!203 = distinct !{!203, !204, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!204 = distinct !{!204, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!205 = !{!206}
!206 = distinct !{!206, !207, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!207 = distinct !{!207, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!208 = !{!206, !203}
!209 = !{!48, !11, i64 40}
!210 = !{!48, !11, i64 32}
!211 = !{!212, !212, i64 0}
!212 = !{!"p1 _ZTS8_IO_FILE", !12, i64 0}
!213 = !{!22, !22, i64 0}
end_hunk_2
