inline.NumInlined: 1281
inline.NumDeleted: 547
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN4absl12lts_2026052613time_internal4cctz12TimeZoneInfo17GetTransitionTypeElbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPh:bb.a
bb.l:                                             ; preds = %.thread38, %._crit_edge, %.thread44
  %or.cond.not42 = phi i1 [ false, %.thread38 ], [ false, %._crit_edge ], [ true, %.thread44 ]
  ret i1 %or.cond.not42
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = icmp eq i8 %1, %2
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = zext i8 %1 to i64
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !18   ; 2 uses
  %i.e = getelementptr inbounds nuw [48 x i8], ptr %i.d, i64 %i.c ; 3 uses
  %i.f = zext i8 %2 to i64
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %i.d, i64 %i.f ; 3 uses
  %i.h = load i32, ptr %i.e, align 8, !tbaa !25
  %i.i = load i32, ptr %i.g, align 8, !tbaa !25
  %.not = icmp eq i32 %i.h, %i.i
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.k = load i8, ptr %i.j, align 8, !tbaa !26, !range !27, !noundef !28
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.m = load i8, ptr %i.l, align 8, !tbaa !26, !range !27, !noundef !28
  %.not11 = icmp eq i8 %i.k, %i.m
  br i1 %.not11, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 41
  %i.o = load i8, ptr %i.n, align 1, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 41
  %i.q = load i8, ptr %i.p, align 1, !tbaa !20
  %.not12 = icmp eq i8 %i.o, %i.q
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.a
  %.1 = phi i1 [ true, %bb.a ], [ false, %bb.c ], [ false, %bb.b ], [ %.not12, %bb.d ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4absl12lts_2026052613time_internal4cctz12TimeZoneInfo17ExtendTransitionsEv(ptr noundef nonnull align 8 dereferenceable(192) initializes((160, 161)) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.absl::lts_20260526::time_internal::cctz::PosixTimeZone", align 8 ; 26 uses
  %i.a = alloca i8, align 1                       ; 6 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %2 = alloca %"struct.absl::lts_20260526::time_internal::cctz::time_zone::absolute_lookup", align 8 ; 4 uses
  %3 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time", align 8 ; 6 uses
  %4 = alloca %"struct.absl::lts_20260526::time_internal::cctz::Transition", align 8 ; 14 uses
  %5 = alloca %"struct.absl::lts_20260526::time_internal::cctz::Transition", align 8 ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  store i8 0, ptr %i.c, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.e = load i64, ptr %i.d, align 8, !tbaa !9
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.aw, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.h, ptr %1, align 8, !tbaa !49
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.i, align 8, !tbaa !9
  store i8 0, ptr %i.h, align 8, !tbaa !35
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !49
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  store i64 0, ptr %i.l, align 8, !tbaa !9
  store i8 0, ptr %i.k, align 8, !tbaa !35
  %i.m = invoke noundef zeroext i1 @_ZN4absl12lts_2026052613time_internal4cctz14ParsePosixSpecERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS2_13PosixTimeZoneE(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull %1)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %i.m, label %bb.e, label %bb.au

bb.d:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !50
  %i.q = invoke noundef zeroext i1 @_ZN4absl12lts_2026052613time_internal4cctz12TimeZoneInfo17GetTransitionTypeElbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPh(ptr noundef nonnull align 8 dereferenceable(192) %0, i64 noundef %i.p, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.a)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  br i1 %i.q, label %bb.h, label %_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit

bb.g:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.h:                                             ; preds = %bb.f
  %i.s = load i64, ptr %i.l, align 8, !tbaa !9
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !56
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -40
  %i.x = load i8, ptr %i.w, align 8, !tbaa !57    ; 2 uses
  %i.y = load i8, ptr %i.a, align 1, !tbaa !35    ; 2 uses
  %i.z = icmp eq i8 %i.x, %i.y
  br i1 %i.z, label %_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = zext i8 %i.x to i64
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !18 ; 2 uses
  %i.ad = getelementptr inbounds nuw [48 x i8], ptr %i.ac, i64 %i.ab ; 3 uses
  %i.ae = zext i8 %i.y to i64
  %i.af = getelementptr inbounds nuw [48 x i8], ptr %i.ac, i64 %i.ae ; 3 uses
  %i.ag = load i32, ptr %i.ad, align 8, !tbaa !25
  %i.ah = load i32, ptr %i.af, align 8, !tbaa !25
  %.not.i = icmp eq i32 %i.ag, %i.ah
  br i1 %.not.i, label %bb.k, label %_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !26, !range !27, !noundef !28
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !26, !range !27, !noundef !28
  %.not11.i = icmp eq i8 %i.aj, %i.al
  br i1 %.not11.i, label %bb.l, label %_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit

bb.l:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 41
  %i.an = load i8, ptr %i.am, align 1, !tbaa !20
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 41
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !20
  %.not12.i = icmp eq i8 %i.an, %i.ap
  br label %_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit

bb.m:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !59
  %i.as = invoke noundef zeroext i1 @_ZN4absl12lts_2026052613time_internal4cctz12TimeZoneInfo17GetTransitionTypeElbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPh(ptr noundef nonnull align 8 dereferenceable(192) %0, i64 noundef %i.ar, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull %i.b)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  br i1 %i.as, label %bb.p, label %bb.ar

bb.o:                                             ; preds = %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_110AllYearDSTERKNS2_13PosixTimeZoneE.exit.thread, %bb.m
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.p:                                             ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !60
  %.not.i46 = icmp eq i32 %i.av, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 4 uses
  %i.ax = load i64, ptr %i.aw, align 8
  %.not9.i = icmp eq i64 %i.ax, 0
  %or.cond.i = select i1 %.not.i46, i1 %.not9.i, i1 false
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8
  %.not10.i = icmp eq i64 %i.az, 0
  %or.cond16.i = select i1 %or.cond.i, i1 %.not10.i, i1 false
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 8
  %.not11.i47 = icmp eq i32 %i.bb, 0
  %or.cond18.i = select i1 %or.cond16.i, i1 %.not11.i47, i1 false
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 4 uses
  %i.bd = load i64, ptr %i.bc, align 8
  %.not12.i48 = icmp eq i64 %i.bd, 365
  %or.cond20.i = select i1 %or.cond18.i, i1 %.not12.i48, i1 false
  br i1 %or.cond20.i, label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_110AllYearDSTERKNS2_13PosixTimeZoneE.exit, label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_110AllYearDSTERKNS2_13PosixTimeZoneE.exit.thread

_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_110AllYearDSTERKNS2_13PosixTimeZoneE.exit: ; preds = %bb.p
  %i.be = load i64, ptr %i.o, align 8, !tbaa !50
  %i.bf = load i64, ptr %i.aq, align 8, !tbaa !59
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !61
  %i.bj = add nsw i64 %i.bg, %i.bi
  %.not13.i = icmp eq i64 %i.bj, 86400
  br i1 %.not13.i, label %bb.q, label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_110AllYearDSTERKNS2_13PosixTimeZoneE.exit.thread

bb.q:                                             ; preds = %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_110AllYearDSTERKNS2_13PosixTimeZoneE.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !56
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -40
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !57
  %i.bo = load i8, ptr %i.b, align 1, !tbaa !35
  %6 = call noundef zeroext i1 @_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh(ptr noundef nonnull align 8 dereferenceable(192) %0, i8 noundef zeroext %i.bn, i8 noundef zeroext %i.bo)
  br label %bb.ar

_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_110AllYearDSTERKNS2_13PosixTimeZoneE.exit.thread: ; preds = %bb.p, %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_110AllYearDSTERKNS2_13PosixTimeZoneE.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !62
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !63
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = sdiv exact i64 %i.bv, 48
  %i.bx = add nsw i64 %i.bw, 804
  invoke void @_ZNSt6vectorIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, i64 noundef %i.bx)
          to label %bb.r unwind label %bb.o

bb.r:                                             ; preds = %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_110AllYearDSTERKNS2_13PosixTimeZoneE.exit.thread
  store i8 1, ptr %i.c, align 8, !tbaa !36
  %i.by = load ptr, ptr %i.bq, align 8, !tbaa !56 ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 -48
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !64 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cc = getelementptr inbounds i8, ptr %i.by, i64 -40
  %i.cd = load i8, ptr %i.cc, align 8, !tbaa !57
  %i.ce = zext i8 %i.cd to i64
  %i.cf = load ptr, ptr %i.cb, align 8, !tbaa !18
  %i.cg = getelementptr inbounds nuw [48 x i8], ptr %i.cf, i64 %i.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneInfo9LocalTimeElRKNS2_14TransitionTypeE(ptr dead_on_unwind nonnull writable sret(%"struct.absl::lts_20260526::time_internal::cctz::time_zone::absolute_lookup") align 8 %2, ptr noundef nonnull align 8 dereferenceable(192) %0, i64 noundef %i.ca, ptr noundef nonnull align 8 dereferenceable(42) %i.cg)
  %i.ch = load i64, ptr %2, align 8, !tbaa !65    ; 6 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.cj = and i64 %i.ch, 3
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %bb.s, label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit

bb.s:                                             ; preds = %bb.r
  %i.cl = srem i64 %i.ch, 100
  %.not.i50.a = icmp eq i64 %i.cl, 0
  br i1 %.not.i50.a, label %bb.t, label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit

bb.t:                                             ; preds = %bb.s
  %i.cm = srem i64 %i.ch, 400
  %i.cn = icmp eq i64 %i.cm, 0
  %i.co = zext i1 %i.cn to i8
  br label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit

_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit: ; preds = %bb.r, %bb.s, %bb.t
  %i.cp = phi i8 [ 0, %bb.r ], [ 1, %bb.s ], [ %i.co, %bb.t ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store i64 %i.ch, ptr %3, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i40 257, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.cq = call noundef i64 @_ZN4absl12lts_2026052613time_internal4cctz6detailmiENS3_10civil_timeINS3_10second_tagEEES6_(i64 %i.ch, i64 %.sroa.2.0.copyload, i64 1970, i64 257) #24
  %i.cr = call noundef i32 @_ZN4absl12lts_2026052613time_internal4cctz6detail11get_weekdayERKNS3_10civil_timeINS3_10second_tagEEE(ptr noundef nonnull align 8 dereferenceable(16) %3) #24 ; 2 uses
  %i.cs = icmp ult i32 %i.cr, 6
  %switch.offset.i = add nuw nsw i32 %i.cr, 1
  %.0.i = select i1 %i.cs, i32 %switch.offset.i, i32 0
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store i64 0, ptr %4, align 8, !tbaa !64
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cu = load i8, ptr %i.b, align 1, !tbaa !35
  store i8 %i.cu, ptr %i.ct, align 8, !tbaa !57
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 1970, ptr %i.cv, align 8, !tbaa !32
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 24
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.cw, align 8, !tbaa !35
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i8 0, ptr %i.cx, align 4, !tbaa !67
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 1970, ptr %i.cy, align 8, !tbaa !32
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 40
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.cz, align 8, !tbaa !35
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 44
  store i8 0, ptr %i.da, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dc = load i8, ptr %i.a, align 1, !tbaa !35
  store i8 %i.dc, ptr %i.db, align 8, !tbaa !57
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 1970, ptr %i.dd, align 8, !tbaa !32
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 24
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.de, align 8, !tbaa !35
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i8 0, ptr %i.df, align 4, !tbaa !67
  %i.dg = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 1970, ptr %i.dg, align 8, !tbaa !32
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 40
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.dh, align 8, !tbaa !35
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 44
  store i8 0, ptr %i.di, align 4, !tbaa !67
  %i.dj = load i64, ptr %i.ci, align 8, !tbaa !66
  %i.dk = add nsw i64 %i.dj, 401
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 89
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 90 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 113
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 114 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  br label %bb.u

bb.u:                                             ; preds = %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit82, %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit
  %.039 = phi i64 [ %i.cq, %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit ], [ %i.iu, %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit82 ] ; 3 uses
  %.037 = phi i32 [ %.0.i, %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit ], [ %i.iy, %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit82 ] ; 3 uses
  %.035 = phi i8 [ %i.cp, %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit ], [ %.136, %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit82 ] ; 4 uses
  %i.dr = trunc nuw i8 %.035 to i1                ; 3 uses
  %i.ds = load i32, ptr %i.au, align 8, !tbaa !68
  switch i32 %i.ds, label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS2_15PosixTransitionE.exit [
    i32 0, label %bb.v
    i32 1, label %bb.w
    i32 2, label %bb.x
  ]

bb.v:                                             ; preds = %bb.u
  %i.dt = load i64, ptr %i.aw, align 8, !tbaa !35 ; 2 uses
  %i.du = icmp slt i64 %i.dt, 60
  %not..i = xor i1 %i.dr, true
  %or.cond.not.i = select i1 %not..i, i1 true, i1 %i.du
  %i.dv = sext i1 %or.cond.not.i to i64
  %spec.select.i = add nsw i64 %i.dt, %i.dv
  br label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS2_15PosixTransitionE.exit

bb.w:                                             ; preds = %bb.u
  %i.dw = load i64, ptr %i.aw, align 8, !tbaa !35
  br label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS2_15PosixTransitionE.exit

bb.x:                                             ; preds = %bb.u
  %i.dx = load i8, ptr %i.dm, align 1, !tbaa !35  ; 2 uses
  %i.dy = icmp eq i8 %i.dx, 5                     ; 2 uses
  %i.dz = zext nneg i8 %.035 to i64
  %i.ea = getelementptr inbounds nuw [28 x i8], ptr @_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_113kMonthOffsetsE, i64 %i.dz
  %i.eb = load i8, ptr %i.aw, align 8, !tbaa !35
  %i.ec = sext i8 %i.eb to i64
  %i.ed = zext i1 %i.dy to i64
  %i.ee = getelementptr [2 x i8], ptr %i.ea, i64 %i.ec
  %i.ef = getelementptr [2 x i8], ptr %i.ee, i64 %i.ed
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !69 ; 2 uses
  %i.eh = sext i16 %i.eg to i64                   ; 2 uses
  %i.ei = sext i16 %i.eg to i32
  %.lhs.trunc.i = add nsw i32 %.037, %i.ei
  %i.ej = srem i32 %.lhs.trunc.i, 7               ; 2 uses
  br i1 %i.dy, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ek = trunc nsw i32 %i.ej to i16
  %i.el = add nsw i16 %i.ek, 6
  %i.em = load i8, ptr %i.dn, align 2, !tbaa !35
  %i.en = sext i8 %i.em to i16
  %.lhs.trunc24.i = sub nsw i16 %i.el, %i.en
  %i.eo = srem i16 %.lhs.trunc24.i, 7
  %i.ep = xor i16 %i.eo, -1
  %.neg.i = sext i16 %i.ep to i64
  %i.eq = add nsw i64 %.neg.i, %i.eh
  br label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS2_15PosixTransitionE.exit

bb.z:                                             ; preds = %bb.x
  %i.er = sext i8 %i.dx to i64
  %i.es = load i8, ptr %i.dn, align 2, !tbaa !35
  %i.et = sext i8 %i.es to i32
  %reass.sub.i = sub nsw i32 %i.et, %i.ej
  %i.eu = trunc nsw i32 %reass.sub.i to i16
  %.lhs.trunc26.i = add nsw i16 %i.eu, 7
  %i.ev = srem i16 %.lhs.trunc26.i, 7
  %.sext27.i = sext i16 %i.ev to i64
  %i.ew = mul nsw i64 %i.er, 7
  %i.ex = add nsw i64 %i.ew, -7
  %i.ey = add nsw i64 %i.ex, %i.eh
  %i.ez = add nsw i64 %i.ey, %.sext27.i
  br label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS2_15PosixTransitionE.exit

_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS2_15PosixTransitionE.exit: ; preds = %bb.u, %bb.v, %bb.w, %bb.y, %bb.z
  %.1.i51 = phi i64 [ 0, %bb.u ], [ %i.ez, %bb.z ], [ %spec.select.i, %bb.v ], [ %i.dw, %bb.w ], [ %i.eq, %bb.y ]
  %i.fa = mul nsw i64 %.1.i51, 86400
  %i.fb = load i64, ptr %i.ay, align 8, !tbaa !71
  %i.fc = load i32, ptr %i.ba, align 8, !tbaa !68
  switch i32 %i.fc, label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS2_15PosixTransitionE.exit62 [
    i32 0, label %bb.aa
    i32 1, label %bb.ab
    i32 2, label %bb.ac
  ]

bb.aa:                                            ; preds = %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS2_15PosixTransitionE.exit
  %i.fd = load i64, ptr %i.bc, align 8, !tbaa !35 ; 2 uses
  %i.fe = icmp slt i64 %i.fd, 60
  %not..i59 = xor i1 %i.dr, true
  %or.cond.not.i60 = select i1 %not..i59, i1 true, i1 %i.fe
  %i.ff = sext i1 %or.cond.not.i60 to i64
  %spec.select.i61 = add nsw i64 %i.fd, %i.ff
  br label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS2_15PosixTransitionE.exit62

bb.ab:                                            ; preds = %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS2_15PosixTransitionE.exit
  %i.fg = load i64, ptr %i.bc, align 8, !tbaa !35
  br label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS2_15PosixTransitionE.exit62

bb.ac:                                            ; preds = %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS2_15PosixTransitionE.exit
  %i.fh = load i8, ptr %i.do, align 1, !tbaa !35  ; 2 uses
  %i.fi = icmp eq i8 %i.fh, 5                     ; 2 uses
  %i.fj = zext nneg i8 %.035 to i64
  %i.fk = getelementptr inbounds nuw [28 x i8], ptr @_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_113kMonthOffsetsE, i64 %i.fj
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2026052613time_internal4cctz12TimeZoneInfo17ExtendTransitionsEv:bb.a
  br i1 %i.ha, label %bb.ag, label %_ZNSt6vectorIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE9push_backERKS4_.exit

bb.ag:                                            ; preds = %bb.af
  %.not.i63 = icmp eq ptr %.pre, %.pre92
  br i1 %.not.i63, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.pre, ptr noundef nonnull align 8 dereferenceable(48) %i.gv, i64 48, i1 false), !tbaa.struct !73
  %i.hb = load ptr, ptr %i.bq, align 8, !tbaa !62
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 48 ; 2 uses
  store ptr %i.hc, ptr %i.bq, align 8, !tbaa !62
  %.pre91 = load ptr, ptr %i.dq, align 8, !tbaa !72
  br label %_ZNSt6vectorIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE9push_backERKS4_.exit

bb.ai:                                            ; preds = %bb.ag
  %i.hd = load ptr, ptr %i.bp, align 8, !tbaa !63 ; 5 uses
  %i.he = ptrtoint ptr %.pre to i64
  %i.hf = ptrtoint ptr %i.hd to i64
  %i.hg = sub i64 %i.he, %i.hf                    ; 4 uses
  %i.hh = icmp eq i64 %i.hg, 9223372036854775776
  br i1 %i.hh, label %.invoke, label %_ZNKSt6vectorIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE12_M_check_lenEmPKc.exit.i.i

.invoke:                                          ; preds = %bb.ai, %bb.am
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #25
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ai
  %i.hi = sdiv exact i64 %i.hg, 48                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.hi, i64 1)
  %i.hj = add nsw i64 %.sroa.speculated.i.i.i, %i.hi ; 2 uses
  %i.hk = icmp ult i64 %i.hj, %i.hi
  %i.hl = call i64 @llvm.umin.i64(i64 %i.hj, i64 192153584101141162)
  %i.hm = select i1 %i.hk, i64 192153584101141162, i64 %i.hl ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.hm, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.hn = mul nuw nsw i64 %i.hm, 48
  %i.ho = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hn) #26
          to label %.noexc64 unwind label %.loopexit ; 5 uses

.noexc64:                                         ; preds = %_ZNKSt6vectorIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 %i.hg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.hp, ptr noundef nonnull align 8 dereferenceable(48) %i.gv, i64 48, i1 false), !tbaa.struct !73
  %.not10.i.i.i.i.i = icmp eq ptr %i.hd, %.pre
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc64, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.hr, %.lr.ph.i.i.i.i.i ], [ %i.ho, %.noexc64 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.hq, %.lr.ph.i.i.i.i.i ], [ %i.hd, %.noexc64 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i.i.i, i64 48, i1 false), !tbaa.struct !73, !alias.scope !75
  %i.hq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 48 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.hq, %.pre
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !79

_ZNSt6vectorIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc64
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ho, %.noexc64 ], [ %i.hr, %.lr.ph.i.i.i.i.i ]
  %i.hs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.hd, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.hd, i64 noundef %i.hg) #27
  br label %_ZNSt6vectorIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.aj, %_ZNSt6vectorIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  store ptr %i.ho, ptr %i.bp, align 8, !tbaa !63
  store ptr %i.hs, ptr %i.bq, align 8, !tbaa !62
  %i.ht = getelementptr inbounds nuw [48 x i8], ptr %i.ho, i64 %i.hm ; 2 uses
  store ptr %i.ht, ptr %i.dq, align 8, !tbaa !72
  br label %_ZNSt6vectorIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE9push_backERKS4_.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE12_M_check_lenEmPKc.exit.i.i66
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ak:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.as

_ZNSt6vectorIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE9push_backERKS4_.exit: ; preds = %_ZNSt6vectorIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %bb.ah, %bb.af
  %i.hu = phi ptr [ %i.ht, %_ZNSt6vectorIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %.pre91, %bb.ah ], [ %.pre92, %bb.af ] ; 4 uses
  %i.hv = phi ptr [ %i.hs, %_ZNSt6vectorIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %i.hc, %bb.ah ], [ %.pre, %bb.af ] ; 2 uses
  %.not.i65 = icmp eq ptr %i.hv, %i.hu
  br i1 %.not.i65, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE9push_backERKS4_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.hv, ptr noundef nonnull align 8 dereferenceable(48) %i.gw, i64 48, i1 false), !tbaa.struct !73
  %i.hw = load ptr, ptr %i.bq, align 8, !tbaa !62
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 48
  store ptr %i.hx, ptr %i.bq, align 8, !tbaa !62
  br label %_ZNSt6vectorIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE9push_backERKS4_.exit80

bb.am:                                            ; preds = %_ZNSt6vectorIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE9push_backERKS4_.exit
  %i.hy = load ptr, ptr %i.bp, align 8, !tbaa !63 ; 5 uses
  %i.hz = ptrtoint ptr %i.hu to i64
  %i.ia = ptrtoint ptr %i.hy to i64
  %i.ib = sub i64 %i.hz, %i.ia                    ; 4 uses
  %i.ic = icmp eq i64 %i.ib, 9223372036854775776
  br i1 %i.ic, label %.invoke, label %_ZNKSt6vectorIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE12_M_check_lenEmPKc.exit.i.i66

_ZNKSt6vectorIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE12_M_check_lenEmPKc.exit.i.i66: ; preds = %bb.am
  %i.id = sdiv exact i64 %i.ib, 48                ; 3 uses
  %.sroa.speculated.i.i.i67 = call i64 @llvm.umax.i64(i64 %i.id, i64 1)
  %i.ie = add nsw i64 %.sroa.speculated.i.i.i67, %i.id ; 2 uses
  %i.if = icmp ult i64 %i.ie, %i.id
  %i.ig = call i64 @llvm.umin.i64(i64 %i.ie, i64 192153584101141162)
  %i.ih = select i1 %i.if, i64 192153584101141162, i64 %i.ig ; 3 uses
  %.not.i.i.i68 = icmp ne i64 %i.ih, 0
  call void @llvm.assume(i1 %.not.i.i.i68)
  %i.ii = mul nuw nsw i64 %i.ih, 48
  %i.ij = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ii) #26
          to label %.noexc79 unwind label %.loopexit ; 5 uses

.noexc79:                                         ; preds = %_ZNKSt6vectorIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE12_M_check_lenEmPKc.exit.i.i66
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.ib
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ik, ptr noundef nonnull align 8 dereferenceable(48) %i.gw, i64 48, i1 false), !tbaa.struct !73
  %.not10.i.i.i.i.i69 = icmp eq ptr %i.hy, %i.hu
  br i1 %.not10.i.i.i.i.i69, label %_ZNSt6vectorIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i74, label %.lr.ph.i.i.i.i.i70

.lr.ph.i.i.i.i.i70:                               ; preds = %.noexc79, %.lr.ph.i.i.i.i.i70
  %.012.i.i.i.i.i71 = phi ptr [ %i.im, %.lr.ph.i.i.i.i.i70 ], [ %i.ij, %.noexc79 ] ; 2 uses
  %.0911.i.i.i.i.i72 = phi ptr [ %i.il, %.lr.ph.i.i.i.i.i70 ], [ %i.hy, %.noexc79 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i.i.i71, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i.i.i72, i64 48, i1 false), !tbaa.struct !73, !alias.scope !80
  %i.il = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i72, i64 48 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i71, i64 48 ; 2 uses
  %.not.i.i.i.i.i73 = icmp eq ptr %i.il, %i.hu
  br i1 %.not.i.i.i.i.i73, label %_ZNSt6vectorIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i74, label %.lr.ph.i.i.i.i.i70, !llvm.loop !79

_ZNSt6vectorIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i74: ; preds = %.lr.ph.i.i.i.i.i70, %.noexc79
  %.0.lcssa.i.i.i.i.i75 = phi ptr [ %i.ij, %.noexc79 ], [ %i.im, %.lr.ph.i.i.i.i.i70 ]
  %i.in = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i75, i64 48
  %.not.i23.i.i76 = icmp eq ptr %i.hy, null
  br i1 %.not.i23.i.i76, label %_ZNSt6vectorIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i77, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i74
  call void @_ZdlPvm(ptr noundef nonnull %i.hy, i64 noundef %i.ib) #27
  br label %_ZNSt6vectorIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i77

_ZNSt6vectorIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i77: ; preds = %bb.an, %_ZNSt6vectorIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i74
  store ptr %i.ij, ptr %i.bp, align 8, !tbaa !63
  store ptr %i.in, ptr %i.bq, align 8, !tbaa !62
  %i.io = getelementptr inbounds nuw [48 x i8], ptr %i.ij, i64 %i.ih
  store ptr %i.io, ptr %i.dq, align 8, !tbaa !72
  br label %_ZNSt6vectorIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE9push_backERKS4_.exit80

_ZNSt6vectorIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE9push_backERKS4_.exit80: ; preds = %_ZNSt6vectorIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i77, %bb.al, %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS2_15PosixTransitionE.exit62
  %i.ip = load i64, ptr %i.ci, align 8, !tbaa !66 ; 2 uses
  %.not = icmp eq i64 %i.ip, %i.dk
  br i1 %.not, label %.critedge, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE9push_backERKS4_.exit80
  %i.iq = zext nneg i8 %.035 to i64               ; 2 uses
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr @_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_112kSecsPerYearE, i64 %i.iq
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !84
  %i.it = sext i32 %i.is to i64
  %i.iu = add nsw i64 %.039, %i.it
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr @_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_112kDaysPerYearE, i64 %i.iq
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !84
  %i.ix = add nsw i32 %i.iw, %.037
  %i.iy = srem i32 %i.ix, 7
  %.pre93 = add nsw i64 %i.ip, 1                  ; 4 uses
  %i.iz = and i64 %.pre93, 3
  %i.ja = icmp ne i64 %i.iz, 0
  %or.cond.not = select i1 %i.dr, i1 true, i1 %i.ja
  br i1 %or.cond.not, label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit82, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.jb = srem i64 %.pre93, 100
  %.not.i81 = icmp eq i64 %i.jb, 0
  br i1 %.not.i81, label %bb.aq, label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit82

bb.aq:                                            ; preds = %bb.ap
  %i.jc = srem i64 %.pre93, 400
  %i.jd = icmp eq i64 %i.jc, 0
  %i.je = zext i1 %i.jd to i8
  br label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit82

_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit82: ; preds = %bb.ao, %bb.aq, %bb.ap
  %.136 = phi i8 [ 0, %bb.ao ], [ %i.je, %bb.aq ], [ 1, %bb.ap ]
  store i64 %.pre93, ptr %i.ci, align 8, !tbaa !66
  br label %bb.u, !llvm.loop !85

.critedge:                                        ; preds = %_ZNSt6vectorIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE9push_backERKS4_.exit80
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.ar

bb.ar:                                            ; preds = %bb.n, %.critedge, %bb.q
  %.0 = phi i1 [ %6, %bb.q ], [ true, %.critedge ], [ false, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit

bb.as:                                            ; preds = %bb.ak, %bb.o
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.ak ], [ %i.at, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %bb.at

_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit: ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.f, %bb.ar
  %.1 = phi i1 [ false, %bb.f ], [ %.0, %bb.ar ], [ true, %bb.i ], [ false, %bb.k ], [ false, %bb.j ], [ %.not12.i, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.au

bb.at:                                            ; preds = %bb.as, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.as ], [ %i.r, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.av

bb.au:                                            ; preds = %bb.c, %_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit
  %.2 = phi i1 [ %.1, %_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit ], [ false, %bb.c ]
  %i.jf = load ptr, ptr %i.j, align 8, !tbaa !19  ; 2 uses
  %i.jg = icmp eq ptr %i.jf, %i.k
  br i1 %i.jg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.au
  %i.jh = load i64, ptr %i.k, align 8, !tbaa !35
  %i.ji = add i64 %i.jh, 1
  call void @_ZdlPvm(ptr noundef %i.jf, i64 noundef %i.ji) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.jj = load ptr, ptr %1, align 8, !tbaa !19    ; 2 uses
  %i.jk = icmp eq ptr %i.jj, %i.h
  br i1 %i.jk, label %_ZN4absl12lts_2026052613time_internal4cctz13PosixTimeZoneD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.jl = load i64, ptr %i.h, align 8, !tbaa !35
  %i.jm = add i64 %i.jl, 1
  call void @_ZdlPvm(ptr noundef %i.jj, i64 noundef %i.jm) #27
  br label %_ZN4absl12lts_2026052613time_internal4cctz13PosixTimeZoneD2Ev.exit

_ZN4absl12lts_2026052613time_internal4cctz13PosixTimeZoneD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %bb.aw

bb.av:                                            ; preds = %bb.at, %bb.d
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.at ], [ %i.n, %bb.d ]
  call void @_ZN4absl12lts_2026052613time_internal4cctz13PosixTimeZoneD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  resume { ptr, i32 } %.pn.pn.pn

bb.aw:                                            ; preds = %bb.a, %_ZN4absl12lts_2026052613time_internal4cctz13PosixTimeZoneD2Ev.exit
  %.3 = phi i1 [ %.2, %_ZN4absl12lts_2026052613time_internal4cctz13PosixTimeZoneD2Ev.exit ], [ true, %bb.a ]
  ret i1 %.3
}

declare noundef zeroext i1 @_ZN4absl12lts_2026052613time_internal4cctz14ParsePosixSpecERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS2_13PosixTimeZoneE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ugt i64 %1, 192153584101141162
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !72
  %i.d = load ptr, ptr %0, align 8, !tbaa !63     ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = sdiv exact i64 %i.g, 48
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %_ZNSt12_Vector_baseIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE11_M_allocateEm.exit, label %bb.e

_ZNSt12_Vector_baseIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE11_M_allocateEm.exit: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !62   ; 3 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
  %i.n = mul nuw nsw i64 %1, 48
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #26 ; 4 uses
  %.not10.i.i.i = icmp eq ptr %i.d, %i.k
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12_Vector_baseIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE11_M_allocateEm.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %i.o, %_ZNSt12_Vector_baseIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE11_M_allocateEm.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %i.d, %_ZNSt12_Vector_baseIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE11_M_allocateEm.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i, i64 48, i1 false), !tbaa.struct !73, !alias.scope !86
  %i.p = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %.not.i.i.i = icmp eq ptr %i.p, %i.k
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !79

_ZNSt6vectorIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %.lr.ph.i.i.i, %_ZNSt12_Vector_baseIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE11_M_allocateEm.exit
  %.not.i8 = icmp eq ptr %i.d, null
  br i1 %.not.i8, label %_ZNSt12_Vector_baseIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.g) #27
  br label %_ZNSt12_Vector_baseIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %bb.d
  store ptr %i.o, ptr %0, align 8, !tbaa !63
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.r, ptr %i.j, align 8, !tbaa !62
  %i.s = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %1
  store ptr %i.s, ptr %i.b, align 8, !tbaa !72
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE13_M_deallocateEPS4_m.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneInfo9LocalTimeElRKNS2_14TransitionTypeE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.absl::lts_20260526::time_internal::cctz::time_zone::absolute_lookup") align 8 captures(none) initializes((0, 21), (24, 32)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %1, i64 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(42) %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sdiv i64 %2, 60
  %i.b = srem i64 %2, 60
  %i.c = tail call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_secEllllll(i64 noundef 1970, i64 noundef 1, i64 noundef 1, i64 noundef 0, i64 noundef %i.a, i64 noundef %i.b) #24 ; 2 uses
  %.fca.1.extract.i.i = extractvalue { i64, i64 } %i.c, 1 ; 5 uses
  %i.d = extractvalue { i64, i64 } %i.c, 0
  %i.e = load i32, ptr %3, align 8, !tbaa !25     ; 2 uses
  %sext.i.i5 = shl i64 %.fca.1.extract.i.i, 56
  %i.f = ashr exact i64 %sext.i.i5, 56
  %i.g = shl i64 %.fca.1.extract.i.i, 48
  %i.h = ashr i64 %i.g, 56
  %i.i = shl i64 %.fca.1.extract.i.i, 40
  %i.j = ashr i64 %i.i, 56
  %i.k = shl i64 %.fca.1.extract.i.i, 32
  %i.l = ashr i64 %i.k, 56
  %i.m = sdiv i32 %i.e, 60
  %.sext = sext i32 %i.m to i64
  %i.n = add nsw i64 %i.l, %.sext
  %.sroa.2.8.insert.ext.i = shl i64 %.fca.1.extract.i.i, 24
  %i.o = ashr i64 %.sroa.2.8.insert.ext.i, 56
  %i.p = srem i32 %i.e, 60
  %.sext10 = sext i32 %i.p to i64
  %i.q = add nsw i64 %i.o, %.sext10
  %i.r = tail call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_secEllllll(i64 noundef %i.d, i64 noundef %i.f, i64 noundef %i.h, i64 noundef %i.j, i64 noundef %i.n, i64 noundef %i.q) #24 ; 2 uses
  %.fca.1.extract.i.i6 = extractvalue { i64, i64 } %i.r, 1
  %.sroa.2.8.insert.ext.i7 = and i64 %.fca.1.extract.i.i6, 1099511627775
  %i.s = extractvalue { i64, i64 } %i.r, 0
  store i64 %i.s, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.2.8.insert.ext.i7, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load i32, ptr %3, align 8, !tbaa !25
  store i32 %i.v, ptr %i.u, align 8, !tbaa !90
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.y = load i8, ptr %i.x, align 8, !tbaa !26, !range !27, !noundef !28
  store i8 %i.y, ptr %i.w, align 4, !tbaa !92
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 41
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !20
  %i.ad = zext i8 %i.ac to i64
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !19
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ad
  store ptr %i.af, ptr %i.z, align 8, !tbaa !93
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZN4absl12lts_2026052613time_internal4cctz6detailmiENS3_10civil_timeINS3_10second_tagEEES6_(i64 %0, i64 %1, i64 %2, i64 %3) local_unnamed_addr #4 comdat {
bb.a:
  %.sroa.22.8.extract.trunc.i.i.i.i = trunc i64 %1 to i8
  %.sroa.43.8.extract.shift.i.i.i.i = lshr i64 %1, 8
  %.sroa.43.8.extract.trunc.i.i.i.i = trunc i64 %.sroa.43.8.extract.shift.i.i.i.i to i8
  %.sroa.2.8.extract.trunc.i.i.i.i = trunc i64 %3 to i8
  %.sroa.4.8.extract.shift.i.i.i.i = lshr i64 %3, 8
  %.sroa.4.8.extract.trunc.i.i.i.i = trunc i64 %.sroa.4.8.extract.shift.i.i.i.i to i8
  %i.a = tail call noundef i64 @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl14day_differenceElaalaa(i64 noundef %0, i8 noundef signext %.sroa.22.8.extract.trunc.i.i.i.i, i8 noundef signext %.sroa.43.8.extract.trunc.i.i.i.i, i64 noundef %2, i8 noundef signext %.sroa.2.8.extract.trunc.i.i.i.i, i8 noundef signext %.sroa.4.8.extract.trunc.i.i.i.i) #24
  %i.b = shl i64 %1, 40
  %i.c = ashr i64 %i.b, 56
  %i.d = shl i64 %3, 40
  %i.e = ashr i64 %i.d, 56
  %i.f = sub nsw i64 %i.c, %i.e
  %.pn.i.i.i = mul i64 %i.a, 24
  %i.g = add i64 %i.f, %.pn.i.i.i
  %i.h = shl i64 %1, 32
  %i.i = ashr i64 %i.h, 56
  %i.j = shl i64 %3, 32
  %i.k = ashr i64 %i.j, 56
  %i.l = sub nsw i64 %i.i, %i.k
  %.pn.i.i = mul i64 %i.g, 60
  %i.m = add i64 %i.l, %.pn.i.i
  %i.n = shl i64 %1, 24
  %i.o = ashr i64 %i.n, 56
  %i.p = shl i64 %3, 24
  %i.q = ashr i64 %i.p, 56
  %i.r = sub nsw i64 %i.o, %i.q
  %.pn.i = mul i64 %i.m, 60
end_hunk_1
