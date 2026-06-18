inline.NumInlined: 223
inline.NumDeleted: 118
begin_hunk_0_@_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneLibC8MakeTimeERKNS2_6detail10civil_timeINS4_10second_tagEEE:bb.a
  %i.fn = load i32, ptr %i.es, align 8, !tbaa !31
  %.not36.i48 = icmp eq i32 %i.fm, %i.fn
  br i1 %.not36.i48, label %bb.ar, label %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_19make_timeERKNS2_6detail10civil_timeINS4_10second_tagEEEiPlP2tm.exit51.thread84

bb.ar:                                            ; preds = %bb.aq
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fa, i64 4
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !32
  %i.fq = load i32, ptr %i.et, align 4, !tbaa !32
  %.not37.i49 = icmp eq i32 %i.fp, %i.fq
  br i1 %.not37.i49, label %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_19make_timeERKNS2_6detail10civil_timeINS4_10second_tagEEEiPlP2tm.exit51, label %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_19make_timeERKNS2_6detail10civil_timeINS4_10second_tagEEEiPlP2tm.exit51.thread84

_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_19make_timeERKNS2_6detail10civil_timeINS4_10second_tagEEEiPlP2tm.exit51.thread84: ; preds = %bb.an, %bb.am, %bb.ar, %bb.aq, %bb.ap, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %bb.be

_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_19make_timeERKNS2_6detail10civil_timeINS4_10second_tagEEEiPlP2tm.exit51: ; preds = %bb.ar
  %i.fr = load i32, ptr %i.fa, align 8, !tbaa !33
  %i.fs = load i32, ptr %7, align 16, !tbaa !33
  %.not38.i50 = icmp eq i32 %i.fr, %i.fs
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br i1 %.not38.i50, label %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_19make_timeERKNS2_6detail10civil_timeINS4_10second_tagEEEiPlP2tm.exit51.thread, label %bb.be

_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_19make_timeERKNS2_6detail10civil_timeINS4_10second_tagEEEiPlP2tm.exit51.thread: ; preds = %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_19make_timeERKNS2_6detail10civil_timeINS4_10second_tagEEEiPlP2tm.exit.thread, %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_19make_timeERKNS2_6detail10civil_timeINS4_10second_tagEEEiPlP2tm.exit51
  %i.ft = load i32, ptr %i.dn, align 16, !tbaa !36 ; 3 uses
  %i.fu = load i32, ptr %i.ex, align 16, !tbaa !36
  %i.fv = icmp eq i32 %i.ft, %i.fu
  %i.fw = load i64, ptr %i.c, align 8             ; 5 uses
  br i1 %i.fv, label %bb.as, label %bb.at

bb.as:                                            ; preds = %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_19make_timeERKNS2_6detail10civil_timeINS4_10second_tagEEEiPlP2tm.exit51.thread
  %.not40 = icmp eq i32 %i.ft, 0
  %i.fx = load i64, ptr %i.d, align 8
  %i.fy = select i1 %.not40, i64 %i.fw, i64 %i.fx ; 3 uses
  store i32 0, ptr %0, align 8, !tbaa !44
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.fy, ptr %i.fz, align 8, !tbaa !21
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.fy, ptr %i.ga, align 8, !tbaa !21
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.fy, ptr %i.gb, align 8, !tbaa !21
  br label %bb.bo

bb.at:                                            ; preds = %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_19make_timeERKNS2_6detail10civil_timeINS4_10second_tagEEEiPlP2tm.exit51.thread
  %i.gc = getelementptr inbounds nuw i8, ptr %6, i64 40
  %.val41 = load i64, ptr %i.gc, align 8, !tbaa !34
  %i.gd = load i64, ptr %i.d, align 8, !tbaa !21  ; 4 uses
  %i.ge = icmp slt i64 %i.fw, %i.gd
  br i1 %i.ge, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store i64 %i.gd, ptr %i.c, align 8, !tbaa !21
  store i64 %i.fw, ptr %i.d, align 8, !tbaa !21
  %i.gf = getelementptr inbounds nuw i8, ptr %7, i64 40
  %.val = load i64, ptr %i.gf, align 8, !tbaa !34
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.gg = phi i64 [ %i.gd, %bb.au ], [ %i.fw, %bb.at ]
  %i.gh = phi i64 [ %i.fw, %bb.au ], [ %i.gd, %bb.at ]
  %.035 = phi i64 [ %.val, %bb.au ], [ %.val41, %bb.at ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.gh, ptr %i.a, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  br label %bb.aw

bb.aw:                                            ; preds = %._crit_edge.i, %bb.av
  %.012.i = phi i64 [ %i.gg, %bb.av ], [ %.214.i, %._crit_edge.i ] ; 10 uses
  %.011.i = phi i64 [ undef, %bb.av ], [ %.1.i53, %._crit_edge.i ] ; 2 uses
  %i.gi = load i64, ptr %i.a, align 8, !tbaa !21  ; 3 uses
  %i.gj = add nsw i64 %i.gi, 1
  %.not.i52 = icmp eq i64 %i.gj, %.012.i
  br i1 %.not.i52, label %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_110find_transElll.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.gk = sub nsw i64 %.012.i, %i.gi
  %i.gl = sdiv i64 %i.gk, 2
  %i.gm = add nsw i64 %i.gl, %i.gi
  store i64 %i.gm, ptr %i.b, align 8, !tbaa !21
  %i.gn = call noundef ptr @localtime_r(ptr noundef nonnull %i.b, ptr noundef nonnull %3) #15 ; 2 uses
  %.not17.not.i = icmp eq ptr %i.gn, null         ; 2 uses
  br i1 %.not17.not.i, label %.preheader.i, label %bb.ay

.preheader.i:                                     ; preds = %bb.ax
  %i.go = load i64, ptr %i.a, align 8, !tbaa !21
  %i.gp = add nsw i64 %i.go, 1                    ; 2 uses
  store i64 %i.gp, ptr %i.a, align 8, !tbaa !21
  %.not1821.i = icmp eq i64 %i.gp, %.012.i
  br i1 %.not1821.i, label %._crit_edge.thread.i, label %.lr.ph.i

._crit_edge.thread.i:                             ; preds = %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_110find_transElll.exit

bb.ay:                                            ; preds = %bb.ax
  %i.gq = getelementptr i8, ptr %i.gn, i64 40
  %.val20.i = load i64, ptr %i.gq, align 8, !tbaa !34
  %i.gr = icmp eq i64 %.val20.i, %.035
  %i.gs = load i64, ptr %i.b, align 8, !tbaa !21  ; 2 uses
  br i1 %i.gr, label %._crit_edge.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  store i64 %i.gs, ptr %i.a, align 8, !tbaa !21
  br label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.bb
  %i.gt = call noundef ptr @localtime_r(ptr noundef nonnull %i.a, ptr noundef nonnull %3) #15 ; 2 uses
  %.not19.i = icmp eq ptr %i.gt, null
  br i1 %.not19.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph.i
  %i.gu = getelementptr i8, ptr %i.gt, i64 40
  %.val.i = load i64, ptr %i.gu, align 8, !tbaa !34
  %i.gv = icmp eq i64 %.val.i, %.035
  br i1 %i.gv, label %.._crit_edge.loopexit_crit_edge.i, label %bb.bb

.._crit_edge.loopexit_crit_edge.i:                ; preds = %bb.ba
  %.pre.pre.i = load i64, ptr %i.a, align 8, !tbaa !21
  br label %._crit_edge.i

bb.bb:                                            ; preds = %bb.ba, %.lr.ph.i
  %i.gw = load i64, ptr %i.a, align 8, !tbaa !21
  %i.gx = add nsw i64 %i.gw, 1                    ; 2 uses
  store i64 %i.gx, ptr %i.a, align 8, !tbaa !21
  %.not18.i = icmp eq i64 %i.gx, %.012.i
  br i1 %.not18.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !50

._crit_edge.i:                                    ; preds = %bb.bb, %.._crit_edge.loopexit_crit_edge.i, %bb.az, %bb.ay
  %.214.i = phi i64 [ %.012.i, %bb.az ], [ %i.gs, %bb.ay ], [ %.012.i, %.._crit_edge.loopexit_crit_edge.i ], [ %.012.i, %bb.bb ]
  %.1.i53 = phi i64 [ %.011.i, %bb.az ], [ %.011.i, %bb.ay ], [ %.pre.pre.i, %.._crit_edge.loopexit_crit_edge.i ], [ %.012.i, %bb.bb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br i1 %.not17.not.i, label %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_110find_transElll.exit, label %bb.aw, !llvm.loop !52

_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_110find_transElll.exit: ; preds = %bb.aw, %._crit_edge.i, %._crit_edge.thread.i
  %.2.i = phi i64 [ %.012.i, %._crit_edge.thread.i ], [ %.1.i53, %._crit_edge.i ], [ %.012.i, %bb.aw ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not39 = icmp eq i32 %i.ft, 0
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %.not39, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_110find_transElll.exit
  %i.hb = load i64, ptr %i.c, align 8, !tbaa !21
  %i.hc = load i64, ptr %i.d, align 8, !tbaa !21
  store i32 1, ptr %0, align 8, !tbaa !44
  store i64 %i.hb, ptr %i.gy, align 8, !tbaa !21
  store i64 %.2.i, ptr %i.gz, align 8, !tbaa !21
  store i64 %i.hc, ptr %i.ha, align 8, !tbaa !21
  br label %bb.bo

bb.bd:                                            ; preds = %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_110find_transElll.exit
  %i.hd = load i64, ptr %i.d, align 8, !tbaa !21
  %i.he = load i64, ptr %i.c, align 8, !tbaa !21
  store i32 2, ptr %0, align 8, !tbaa !44
  store i64 %i.hd, ptr %i.gy, align 8, !tbaa !21
  store i64 %.2.i, ptr %i.gz, align 8, !tbaa !21
  store i64 %i.he, ptr %i.ha, align 8, !tbaa !21
  br label %bb.bo

bb.be:                                            ; preds = %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_19make_timeERKNS2_6detail10civil_timeINS4_10second_tagEEEiPlP2tm.exit51.thread84, %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_19make_timeERKNS2_6detail10civil_timeINS4_10second_tagEEEiPlP2tm.exit.thread81, %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_19make_timeERKNS2_6detail10civil_timeINS4_10second_tagEEEiPlP2tm.exit51, %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_19make_timeERKNS2_6detail10civil_timeINS4_10second_tagEEEiPlP2tm.exit
  %i.hf = load i64, ptr %2, align 8, !tbaa !38    ; 2 uses
  %i.hg = icmp slt i64 %i.hf, 1970
  br i1 %i.hg, label %_ZN4absl12lts_2025051213time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit54.thread, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hh = icmp eq i64 %i.hf, 1970
  br i1 %i.hh, label %bb.bg, label %_ZN4absl12lts_2025051213time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit54.thread87

bb.bg:                                            ; preds = %bb.bf
  %i.hi = load i8, ptr %i.cy, align 8, !tbaa !39  ; 2 uses
  %i.hj = icmp slt i8 %i.hi, 1
  br i1 %i.hj, label %_ZN4absl12lts_2025051213time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit54.thread, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hk = icmp eq i8 %i.hi, 1
  br i1 %i.hk, label %bb.bi, label %_ZN4absl12lts_2025051213time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit54.thread87

bb.bi:                                            ; preds = %bb.bh
  %i.hl = load i8, ptr %i.dd, align 1, !tbaa !40  ; 2 uses
  %i.hm = icmp slt i8 %i.hl, 1
  br i1 %i.hm, label %_ZN4absl12lts_2025051213time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit54.thread, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.hn = icmp eq i8 %i.hl, 1
  br i1 %i.hn, label %bb.bk, label %_ZN4absl12lts_2025051213time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit54.thread87

bb.bk:                                            ; preds = %bb.bj
  %i.ho = load i8, ptr %i.df, align 2, !tbaa !41  ; 2 uses
  %i.hp = icmp slt i8 %i.ho, 0
  br i1 %i.hp, label %_ZN4absl12lts_2025051213time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit54.thread, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hq = icmp eq i8 %i.ho, 0
  br i1 %i.hq, label %bb.bm, label %_ZN4absl12lts_2025051213time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit54.thread87

bb.bm:                                            ; preds = %bb.bl
  %i.hr = load i8, ptr %i.dh, align 1, !tbaa !42  ; 2 uses
  %i.hs = icmp slt i8 %i.hr, 0
  br i1 %i.hs, label %_ZN4absl12lts_2025051213time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit54.thread, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %8 = icmp eq i8 %i.hr, 0
  %i.ht = load i8, ptr %i.dj, align 4
  %i.hu = icmp slt i8 %i.ht, 0
  %or.cond = select i1 %8, i1 %i.hu, i1 false
  br i1 %or.cond, label %_ZN4absl12lts_2025051213time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit54.thread, label %_ZN4absl12lts_2025051213time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit54.thread87

_ZN4absl12lts_2025051213time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit54.thread87: ; preds = %bb.bj, %bb.bh, %bb.bl, %bb.bf, %bb.bn
  br label %_ZN4absl12lts_2025051213time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit54.thread

_ZN4absl12lts_2025051213time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit54.thread: ; preds = %bb.bn, %bb.bm, %bb.bk, %bb.bi, %bb.bg, %bb.be, %_ZN4absl12lts_2025051213time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit54.thread87
  %.sroa.0.0 = phi i64 [ 9223372036854775807, %_ZN4absl12lts_2025051213time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit54.thread87 ], [ -9223372036854775808, %bb.bn ], [ -9223372036854775808, %bb.be ], [ -9223372036854775808, %bb.bg ], [ -9223372036854775808, %bb.bi ], [ -9223372036854775808, %bb.bk ], [ -9223372036854775808, %bb.bm ] ; 3 uses
  store i32 0, ptr %0, align 8, !tbaa !44
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0, ptr %i.hv, align 8, !tbaa !21
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.0, ptr %i.hw, align 8, !tbaa !21
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.0.0, ptr %i.hx, align 8, !tbaa !21
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bc, %bb.bd, %_ZN4absl12lts_2025051213time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit54.thread, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.ae, %bb.ac, %_ZN4absl12lts_2025051213time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { i64, i64 } @_ZN4absl12lts_2025051213time_internal4cctz6detailplENS3_10civil_timeINS3_10second_tagEEEl(i64 %0, i64 %1, i64 noundef %2) local_unnamed_addr #3 comdat {
bb.a:
  %sext.i = shl i64 %1, 56
  %i.a = ashr exact i64 %sext.i, 56
  %i.b = shl i64 %1, 48
  %i.c = ashr i64 %i.b, 56
  %i.d = shl i64 %1, 40
  %i.e = ashr i64 %i.d, 56
  %i.f = shl i64 %1, 32
  %i.g = ashr i64 %i.f, 56
  %i.h = sdiv i64 %2, 60
  %i.i = add nsw i64 %i.g, %i.h
  %i.j = shl i64 %1, 24
  %i.k = ashr i64 %i.j, 56
  %i.l = srem i64 %2, 60
  %i.m = add nsw i64 %i.k, %i.l
  %i.n = tail call { i64, i64 } @_ZN4absl12lts_2025051213time_internal4cctz6detail4impl5n_secEllllll(i64 noundef %0, i64 noundef %i.a, i64 noundef %i.c, i64 noundef %i.e, i64 noundef %i.i, i64 noundef %i.m) #15 ; 2 uses
  %.fca.1.extract.i = extractvalue { i64, i64 } %i.n, 1
  %.sroa.2.8.insert.ext = and i64 %.fca.1.extract.i, 1099511627775
  %.fca.1.insert = insertvalue { i64, i64 } %i.n, i64 %.sroa.2.8.insert.ext, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #4

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneLibC14NextTransitionERKNSt6chrono10time_pointINS4_3_V212system_clockENS4_8durationIlSt5ratioILl1ELl1EEEEEEPNS2_9time_zone16civil_transitionE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree readnone captures(none) %2) unnamed_addr #6 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneLibC14PrevTransitionERKNSt6chrono10time_pointINS4_3_V212system_clockENS4_8durationIlSt5ratioILl1ELl1EEEEEEPNS2_9time_zone16civil_transitionE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree readnone captures(none) %2) unnamed_addr #6 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneLibC7VersionB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !53
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !55
  store i8 0, ptr %i.a, align 8, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneLibC11DescriptionB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(9) %1) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !22, !range !25, !noundef !26
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = select i1 %i.c, ptr @.str.2, ptr @.str.1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !53
  %i.f = select i1 %i.c, i64 9, i64 3             ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.e, ptr noundef nonnull align 1 dereferenceable(3) %i.d, i64 %i.f, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.f, ptr %i.g, align 8, !tbaa !55
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  store i8 0, ptr %i.h, align 1, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN4absl12lts_2025051213time_internal4cctz12TimeZoneLibCC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(9) initializes((0, 9)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4absl12lts_2025051213time_internal4cctz12TimeZoneLibCE, i64 16), ptr %0, align 8, !tbaa !57
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !55
  %i.c = icmp eq i64 %i.b, 9
  br i1 %i.c, label %bb.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !59     ; 2 uses
  %i.e = load i64, ptr %i.d, align 1
  %i.f = xor i64 %i.e, 7883960631527960428
  %i.g = getelementptr i8, ptr %i.d, i64 8
  %i.h = load i8, ptr %i.g, align 1
  %i.i = zext i8 %i.h to i64
  %i.j = xor i64 %i.i, 101
  %i.k = or i64 %i.f, %i.j
  %i.l = icmp ne i64 %i.k, 0
  %i.m = zext i1 %i.l to i32
  %i.n = icmp eq i32 %i.m, 0
  %i.o = zext i1 %i.n to i8
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.b, %bb.a
  %i.p = phi i8 [ 0, %bb.a ], [ %i.o, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.p, ptr %i.q, align 8, !tbaa !22
  ret void
}

; Function Attrs: nounwind
declare void @_ZN4absl12lts_2025051213time_internal4cctz10TimeZoneIfD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #10

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4absl12lts_2025051213time_internal4cctz12TimeZoneLibCD0Ev(ptr noundef nonnull align 8 dereferenceable(9) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZN4absl12lts_2025051213time_internal4cctz10TimeZoneIfD2Ev(ptr noundef nonnull align 8 dereferenceable(9) %0) #15
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #14
  ret void
}

; Function Attrs: nounwind
declare ptr @localtime_r(ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare ptr @gmtime_r(ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { i64, i64 } @_ZN4absl12lts_2025051213time_internal4cctz6detail4impl5n_secEllllll(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %or.cond = icmp ult i64 %5, 60
  br i1 %or.cond, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.a = trunc nuw nsw i64 %5 to i8               ; 3 uses
  %or.cond3 = icmp ult i64 %4, 60
  br i1 %or.cond3, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.b = trunc nuw nsw i64 %4 to i8               ; 2 uses
  %or.cond5 = icmp ult i64 %3, 24
  br i1 %or.cond5, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.c = trunc nuw nsw i64 %3 to i8
  %i.d = add i64 %2, -1
  %or.cond7 = icmp ult i64 %i.d, 28
  %i.e = add i64 %1, -1
  %i.f = icmp ult i64 %i.e, 12
  %or.cond11 = and i1 %i.f, %or.cond7
  br i1 %or.cond11, label %bb.q, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i = icmp eq i64 %1, 12
  br i1 %.not.i, label %_ZN4absl12lts_2025051213time_internal4cctz6detail4impl5n_monEllllaaa.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = sdiv i64 %1, 12
  %i.h = add nsw i64 %i.g, %0                     ; 2 uses
  %i.i = srem i64 %1, 12                          ; 3 uses
  %i.j = icmp slt i64 %i.i, 1
  br i1 %i.j, label %bb.g, label %_ZN4absl12lts_2025051213time_internal4cctz6detail4impl5n_monEllllaaa.exit

bb.g:                                             ; preds = %bb.f
  %i.k = add nsw i64 %i.h, -1
  %i.l = add nsw i64 %i.i, 12
  br label %_ZN4absl12lts_2025051213time_internal4cctz6detail4impl5n_monEllllaaa.exit

_ZN4absl12lts_2025051213time_internal4cctz6detail4impl5n_monEllllaaa.exit: ; preds = %bb.e, %bb.f, %bb.g
  %.016.i = phi i64 [ %i.l, %bb.g ], [ %i.i, %bb.f ], [ 12, %bb.e ]
  %.0.i = phi i64 [ %i.k, %bb.g ], [ %i.h, %bb.f ], [ %0, %bb.e ]
  %i.m = trunc nuw nsw i64 %.016.i to i8
  %i.n = tail call { i64, i64 } @_ZN4absl12lts_2025051213time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef %.0.i, i8 noundef signext %i.m, i64 noundef %2, i64 noundef 0, i8 noundef signext %i.c, i8 noundef signext %i.b, i8 noundef signext %i.a) #15 ; 2 uses
  %.fca.1.extract.i = extractvalue { i64, i64 } %i.n, 1 ; 5 uses
  %.fca.0.extract22 = extractvalue { i64, i64 } %i.n, 0
  %.sroa.6.sroa.6.0.extract.shift112146 = lshr i64 %.fca.1.extract.i, 8
  %.sroa.6.sroa.7.0.extract.shift118147 = lshr i64 %.fca.1.extract.i, 16
  %.sroa.6.sroa.8.0.extract.shift124148 = lshr i64 %.fca.1.extract.i, 24
  %.sroa.6.sroa.9.0.extract.shift130149 = lshr i64 %.fca.1.extract.i, 32
  br label %bb.q

bb.h:                                             ; preds = %bb.c
  %i.o = sdiv i64 %3, 24
  %i.p = srem i64 %3, 24                          ; 4 uses
end_hunk_0
