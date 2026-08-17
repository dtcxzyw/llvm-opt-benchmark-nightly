inline.NumInlined: 1273
inline.NumDeleted: 541
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN4absl13time_internal4cctz12TimeZoneInfo17GetTransitionTypeElbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPh:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %bb.q
  %i.cn = phi ptr [ %i.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ], [ %.pre, %bb.q ]
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cf
  store i8 0, ptr %i.co, align 1
  store i64 %i.ch, ptr %i.c, align 8
  %i.cp = load ptr, ptr %i.b, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.ch
  store i8 0, ptr %i.cq, align 1
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit, %_ZNSt6vectorIN4absl13time_internal4cctz14TransitionTypeESaIS3_EE7emplaceIJEEEN9__gnu_cxx17__normal_iteratorIPS3_S5_EENS8_IPKS3_S5_EEDpOT_.exit
  %i.cr = trunc nuw i64 %.031.lcssa to i8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bk, i64 41
  store i8 %i.cr, ptr %i.cs, align 1
  br label %.thread46

.thread46:                                        ; preds = %.thread40, %bb.r
  %.03060 = phi i64 [ %.us-phi, %.thread40 ], [ %.030.lcssa, %bb.r ]
  %i.ct = trunc nuw i64 %.03060 to i8
  store i8 %i.ct, ptr %4, align 1
  br label %bb.s

bb.s:                                             ; preds = %.thread40, %._crit_edge, %.thread46
  %or.cond.not44 = phi i1 [ false, %.thread40 ], [ false, %._crit_edge ], [ true, %.thread46 ]
  ret i1 %or.cond.not44
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4absl13time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = icmp eq i8 %1, %2
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = zext i8 %1 to i64
  %i.d = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw [48 x i8], ptr %i.d, i64 %i.c ; 3 uses
  %i.f = zext i8 %2 to i64
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %i.d, i64 %i.f ; 3 uses
  %i.h = load i32, ptr %i.e, align 8
  %i.i = load i32, ptr %i.g, align 8
  %.not = icmp eq i32 %i.h, %i.i
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.k = load i8, ptr %i.j, align 8, !range !5, !noundef !6
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.m = load i8, ptr %i.l, align 8, !range !5, !noundef !6
  %.not11 = icmp eq i8 %i.k, %i.m
  br i1 %.not11, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 41
  %i.o = load i8, ptr %i.n, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 41
  %i.q = load i8, ptr %i.p, align 1
  %.not12 = icmp eq i8 %i.o, %i.q
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.a
  %.1 = phi i1 [ true, %bb.a ], [ false, %bb.c ], [ false, %bb.b ], [ %.not12, %bb.d ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4absl13time_internal4cctz12TimeZoneInfo17ExtendTransitionsEv(ptr noundef nonnull align 8 dereferenceable(192) initializes((160, 161)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"struct.absl::time_internal::cctz::PosixTimeZone", align 8 ; 24 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %2 = alloca %"struct.absl::time_internal::cctz::time_zone::absolute_lookup", align 8 ; 4 uses
  %3 = alloca %"class.absl::time_internal::cctz::detail::civil_time", align 8 ; 5 uses
  %4 = alloca %"struct.absl::time_internal::cctz::Transition", align 8 ; 13 uses
  %5 = alloca %"struct.absl::time_internal::cctz::Transition", align 8 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  store i8 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.an, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.h, ptr %1, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.i, align 8
  store i8 0, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  store ptr %i.k, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  store i64 0, ptr %i.l, align 8
  store i8 0, ptr %i.k, align 8
  %i.m = call noundef zeroext i1 @_ZN4absl13time_internal4cctz14ParsePosixSpecERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS1_13PosixTimeZoneE(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull %1) #24
  br i1 %i.m, label %bb.c, label %bb.am

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.o = load i64, ptr %i.n, align 8
  %i.p = call noundef zeroext i1 @_ZN4absl13time_internal4cctz12TimeZoneInfo17GetTransitionTypeElbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPh(ptr noundef nonnull align 8 dereferenceable(192) %0, i64 noundef %i.o, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.a)
  br i1 %i.p, label %bb.d, label %_ZNK4absl13time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit

bb.d:                                             ; preds = %bb.c
  %i.q = load i64, ptr %i.l, align 8
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -40
  %i.v = load i8, ptr %i.u, align 8               ; 2 uses
  %i.w = load i8, ptr %i.a, align 1               ; 2 uses
  %i.x = icmp eq i8 %i.v, %i.w
  br i1 %i.x, label %_ZNK4absl13time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = zext i8 %i.v to i64
  %i.aa = load ptr, ptr %i.y, align 8             ; 2 uses
  %i.ab = getelementptr inbounds nuw [48 x i8], ptr %i.aa, i64 %i.z ; 3 uses
  %i.ac = zext i8 %i.w to i64
  %i.ad = getelementptr inbounds nuw [48 x i8], ptr %i.aa, i64 %i.ac ; 3 uses
  %i.ae = load i32, ptr %i.ab, align 8
  %i.af = load i32, ptr %i.ad, align 8
  %.not.i = icmp eq i32 %i.ae, %i.af
  br i1 %.not.i, label %bb.g, label %_ZNK4absl13time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ah = load i8, ptr %i.ag, align 8, !range !5, !noundef !6
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.aj = load i8, ptr %i.ai, align 8, !range !5, !noundef !6
  %.not11.i = icmp eq i8 %i.ah, %i.aj
  br i1 %.not11.i, label %bb.h, label %_ZNK4absl13time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 41
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 41
  %i.an = load i8, ptr %i.am, align 1
  %.not12.i = icmp eq i8 %i.al, %i.an
  br label %_ZNK4absl13time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit

bb.i:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = call noundef zeroext i1 @_ZN4absl13time_internal4cctz12TimeZoneInfo17GetTransitionTypeElbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPh(ptr noundef nonnull align 8 dereferenceable(192) %0, i64 noundef %i.ap, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull %i.b)
  br i1 %i.aq, label %bb.j, label %bb.al

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8
  %.not.i35 = icmp eq i32 %i.as, 1
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 4 uses
  %i.au = load i64, ptr %i.at, align 8
  %.not9.i = icmp eq i64 %i.au, 0
  %or.cond.i = select i1 %.not.i35, i1 %.not9.i, i1 false
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8
  %.not10.i = icmp eq i64 %i.aw, 0
  %or.cond16.i = select i1 %or.cond.i, i1 %.not10.i, i1 false
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8
  %.not11.i36 = icmp eq i32 %i.ay, 0
  %or.cond18.i = select i1 %or.cond16.i, i1 %.not11.i36, i1 false
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 4 uses
  %i.ba = load i64, ptr %i.az, align 8
  %.not12.i37 = icmp eq i64 %i.ba, 365
  %or.cond20.i = select i1 %or.cond18.i, i1 %.not12.i37, i1 false
  br i1 %or.cond20.i, label %_ZN4absl13time_internal4cctz12_GLOBAL__N_110AllYearDSTERKNS1_13PosixTimeZoneE.exit, label %_ZN4absl13time_internal4cctz12_GLOBAL__N_110AllYearDSTERKNS1_13PosixTimeZoneE.exit.thread

_ZN4absl13time_internal4cctz12_GLOBAL__N_110AllYearDSTERKNS1_13PosixTimeZoneE.exit: ; preds = %bb.j
  %i.bb = load i64, ptr %i.n, align 8
  %i.bc = load i64, ptr %i.ao, align 8
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = add nsw i64 %i.bd, %i.bf
  %.not13.i = icmp eq i64 %i.bg, 86400
  br i1 %.not13.i, label %bb.k, label %_ZN4absl13time_internal4cctz12_GLOBAL__N_110AllYearDSTERKNS1_13PosixTimeZoneE.exit.thread

bb.k:                                             ; preds = %_ZN4absl13time_internal4cctz12_GLOBAL__N_110AllYearDSTERKNS1_13PosixTimeZoneE.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -40
  %i.bk = load i8, ptr %i.bj, align 8
  %i.bl = load i8, ptr %i.b, align 1
  %6 = call noundef zeroext i1 @_ZNK4absl13time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh(ptr noundef nonnull align 8 dereferenceable(192) %0, i8 noundef zeroext %i.bk, i8 noundef zeroext %i.bl)
  br label %bb.al

_ZN4absl13time_internal4cctz12_GLOBAL__N_110AllYearDSTERKNS1_13PosixTimeZoneE.exit.thread: ; preds = %bb.j, %_ZN4absl13time_internal4cctz12_GLOBAL__N_110AllYearDSTERKNS1_13PosixTimeZoneE.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = load ptr, ptr %i.bm, align 8
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = sdiv exact i64 %i.bs, 48
  %i.bu = add nsw i64 %i.bt, 804
  call void @_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i64 noundef %i.bu)
  store i8 1, ptr %i.c, align 8
  %i.bv = load ptr, ptr %i.bn, align 8            ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -48
  %i.bx = load i64, ptr %i.bw, align 8            ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bz = getelementptr inbounds i8, ptr %i.bv, i64 -40
  %i.ca = load i8, ptr %i.bz, align 8
  %i.cb = zext i8 %i.ca to i64
  %i.cc = load ptr, ptr %i.by, align 8
  %i.cd = getelementptr inbounds nuw [48 x i8], ptr %i.cc, i64 %i.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @_ZNK4absl13time_internal4cctz12TimeZoneInfo9LocalTimeElRKNS1_14TransitionTypeE(ptr dead_on_unwind nonnull writable sret(%"struct.absl::time_internal::cctz::time_zone::absolute_lookup") align 8 %2, ptr noundef nonnull align 8 dereferenceable(192) %0, i64 noundef %i.bx, ptr noundef nonnull align 8 dereferenceable(42) %i.cd)
  %i.ce = load i64, ptr %2, align 8               ; 6 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  store i64 %i.ce, ptr %i.cf, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.cg = and i64 %i.ce, 3
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %bb.l, label %_ZN4absl13time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit

bb.l:                                             ; preds = %_ZN4absl13time_internal4cctz12_GLOBAL__N_110AllYearDSTERKNS1_13PosixTimeZoneE.exit.thread
  %i.ci = srem i64 %i.ce, 100
  %.not.i39.a = icmp eq i64 %i.ci, 0
  br i1 %.not.i39.a, label %bb.m, label %_ZN4absl13time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit

bb.m:                                             ; preds = %bb.l
  %i.cj = srem i64 %i.ce, 400
  %i.ck = icmp eq i64 %i.cj, 0
  %i.cl = zext i1 %i.ck to i8
  br label %_ZN4absl13time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit

_ZN4absl13time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit: ; preds = %_ZN4absl13time_internal4cctz12_GLOBAL__N_110AllYearDSTERKNS1_13PosixTimeZoneE.exit.thread, %bb.l, %bb.m
  %i.cm = phi i8 [ 0, %_ZN4absl13time_internal4cctz12_GLOBAL__N_110AllYearDSTERKNS1_13PosixTimeZoneE.exit.thread ], [ 1, %bb.l ], [ %i.cl, %bb.m ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store i64 %i.ce, ptr %3, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i40 257, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.cn = call noundef i64 @_ZN4absl13time_internal4cctz6detailmiENS2_10civil_timeINS2_10second_tagEEES5_(i64 %i.ce, i64 %.sroa.2.0.copyload, i64 1970, i64 257) #24
  %i.co = call noundef i32 @_ZN4absl13time_internal4cctz6detail11get_weekdayERKNS2_10civil_timeINS2_10second_tagEEE(ptr noundef nonnull align 8 dereferenceable(16) %3) #24 ; 2 uses
  %i.cp = icmp ult i32 %i.co, 6
  %switch.offset.i = add nuw nsw i32 %i.co, 1
  %.0.i = select i1 %i.cp, i32 %switch.offset.i, i32 0
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store i64 0, ptr %4, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cr = load i8, ptr %i.b, align 1
  store i8 %i.cr, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 1970, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 24
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i8 0, ptr %i.cu, align 4
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 1970, ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 40
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 44
  store i8 0, ptr %i.cx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cz = load i8, ptr %i.a, align 1
  store i8 %i.cz, ptr %i.cy, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 1970, ptr %i.da, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 24
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i8 0, ptr %i.dc, align 4
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 1970, ptr %i.dd, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 40
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.de, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 44
  store i8 0, ptr %i.df, align 4
  %i.dg = load i64, ptr %i.cf, align 8
  %i.dh = add nsw i64 %i.dg, 401
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 89
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 90 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 113
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 114 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  br label %bb.n

bb.n:                                             ; preds = %_ZN4absl13time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit68, %_ZN4absl13time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit
  %.031 = phi i32 [ %.0.i, %_ZN4absl13time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit ], [ %i.iu, %_ZN4absl13time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit68 ] ; 3 uses
  %.029 = phi i64 [ %i.cn, %_ZN4absl13time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit ], [ %i.iq, %_ZN4absl13time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit68 ] ; 3 uses
  %.027 = phi i8 [ %i.cm, %_ZN4absl13time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit ], [ %.128, %_ZN4absl13time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit68 ] ; 4 uses
  %i.do = trunc nuw i8 %.027 to i1                ; 3 uses
  %i.dp = load i32, ptr %i.ar, align 8
  switch i32 %i.dp, label %_ZN4absl13time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS1_15PosixTransitionE.exit [
    i32 0, label %bb.o
    i32 1, label %bb.p
    i32 2, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  %i.dq = load i64, ptr %i.at, align 8            ; 2 uses
  %i.dr = icmp slt i64 %i.dq, 60
  %not..i = xor i1 %i.do, true
  %or.cond.not.i = select i1 %not..i, i1 true, i1 %i.dr
  %i.ds = sext i1 %or.cond.not.i to i64
  %spec.select.i = add nsw i64 %i.dq, %i.ds
  br label %_ZN4absl13time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS1_15PosixTransitionE.exit

bb.p:                                             ; preds = %bb.n
  %i.dt = load i64, ptr %i.at, align 8
  br label %_ZN4absl13time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS1_15PosixTransitionE.exit

bb.q:                                             ; preds = %bb.n
  %i.du = load i8, ptr %i.dj, align 1             ; 2 uses
  %i.dv = icmp eq i8 %i.du, 5                     ; 2 uses
  %i.dw = zext nneg i8 %.027 to i64
  %i.dx = getelementptr inbounds nuw [28 x i8], ptr @_ZN4absl13time_internal4cctz12_GLOBAL__N_113kMonthOffsetsE, i64 %i.dw
  %i.dy = load i8, ptr %i.at, align 8
  %i.dz = sext i8 %i.dy to i64
  %i.ea = zext i1 %i.dv to i64
  %i.eb = getelementptr [2 x i8], ptr %i.dx, i64 %i.dz
  %i.ec = getelementptr [2 x i8], ptr %i.eb, i64 %i.ea
  %i.ed = load i16, ptr %i.ec, align 2            ; 2 uses
  %i.ee = sext i16 %i.ed to i64                   ; 2 uses
  %i.ef = sext i16 %i.ed to i32
  %.lhs.trunc.i = add nsw i32 %.031, %i.ef
  %i.eg = srem i32 %.lhs.trunc.i, 7               ; 2 uses
  br i1 %i.dv, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.eh = trunc nsw i32 %i.eg to i16
  %i.ei = add nsw i16 %i.eh, 6
  %i.ej = load i8, ptr %i.dk, align 2
  %i.ek = sext i8 %i.ej to i16
  %.lhs.trunc24.i = sub nsw i16 %i.ei, %i.ek
  %i.el = srem i16 %.lhs.trunc24.i, 7
  %i.em = xor i16 %i.el, -1
  %.neg.i = sext i16 %i.em to i64
  %i.en = add nsw i64 %.neg.i, %i.ee
  br label %_ZN4absl13time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS1_15PosixTransitionE.exit

bb.s:                                             ; preds = %bb.q
  %i.eo = sext i8 %i.du to i64
  %i.ep = load i8, ptr %i.dk, align 2
  %i.eq = sext i8 %i.ep to i32
  %reass.sub.i = sub nsw i32 %i.eq, %i.eg
  %i.er = trunc nsw i32 %reass.sub.i to i16
  %.lhs.trunc26.i = add nsw i16 %i.er, 7
  %i.es = srem i16 %.lhs.trunc26.i, 7
  %.sext27.i = sext i16 %i.es to i64
  %i.et = mul nsw i64 %i.eo, 7
  %i.eu = add nsw i64 %i.et, -7
  %i.ev = add nsw i64 %i.eu, %i.ee
  %i.ew = add nsw i64 %i.ev, %.sext27.i
  br label %_ZN4absl13time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS1_15PosixTransitionE.exit

_ZN4absl13time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS1_15PosixTransitionE.exit: ; preds = %bb.n, %bb.o, %bb.p, %bb.r, %bb.s
  %.1.i40 = phi i64 [ 0, %bb.n ], [ %i.ew, %bb.s ], [ %spec.select.i, %bb.o ], [ %i.dt, %bb.p ], [ %i.en, %bb.r ]
  %i.ex = mul nsw i64 %.1.i40, 86400
  %i.ey = load i64, ptr %i.av, align 8
  %i.ez = load i32, ptr %i.ax, align 8
  switch i32 %i.ez, label %_ZN4absl13time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS1_15PosixTransitionE.exit51 [
    i32 0, label %bb.t
    i32 1, label %bb.u
    i32 2, label %bb.v
  ]

bb.t:                                             ; preds = %_ZN4absl13time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS1_15PosixTransitionE.exit
  %i.fa = load i64, ptr %i.az, align 8            ; 2 uses
  %i.fb = icmp slt i64 %i.fa, 60
  %not..i48 = xor i1 %i.do, true
  %or.cond.not.i49 = select i1 %not..i48, i1 true, i1 %i.fb
  %i.fc = sext i1 %or.cond.not.i49 to i64
  %spec.select.i50 = add nsw i64 %i.fa, %i.fc
  br label %_ZN4absl13time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS1_15PosixTransitionE.exit51

bb.u:                                             ; preds = %_ZN4absl13time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS1_15PosixTransitionE.exit
  %i.fd = load i64, ptr %i.az, align 8
  br label %_ZN4absl13time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS1_15PosixTransitionE.exit51

bb.v:                                             ; preds = %_ZN4absl13time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS1_15PosixTransitionE.exit
  %i.fe = load i8, ptr %i.dl, align 1             ; 2 uses
  %i.ff = icmp eq i8 %i.fe, 5                     ; 2 uses
  %i.fg = zext nneg i8 %.027 to i64
  %i.fh = getelementptr inbounds nuw [28 x i8], ptr @_ZN4absl13time_internal4cctz12_GLOBAL__N_113kMonthOffsetsE, i64 %i.fg
  %i.fi = load i8, ptr %i.az, align 8
  %i.fj = sext i8 %i.fi to i64
  %i.fk = zext i1 %i.ff to i64
end_hunk_0
begin_hunk_1_@_ZN4absl13time_internal4cctz12TimeZoneInfo17ExtendTransitionsEv:bb.a
  %i.gj = load i64, ptr %i.n, align 8
  %i.gk = add i64 %i.ey, %.029
  %i.gl = add i64 %i.gk, %i.ex
  %i.gm = sub i64 %i.gl, %i.gj                    ; 4 uses
  store i64 %i.gm, ptr %4, align 8
  %i.gn = load i64, ptr %i.ao, align 8
  %i.go = add i64 %i.gi, %.029
  %i.gp = add i64 %i.go, %i.gh
  %i.gq = sub i64 %i.gp, %i.gn                    ; 4 uses
  store i64 %i.gq, ptr %5, align 8
  %i.gr = icmp slt i64 %i.gm, %i.gq               ; 2 uses
  %. = select i1 %i.gr, ptr %4, ptr %5            ; 2 uses
  %i.gs = select i1 %i.gr, ptr %5, ptr %4         ; 2 uses
  %i.gt = call i64 @llvm.smax.i64(i64 %i.gm, i64 %i.gq)
  %i.gu = icmp slt i64 %i.bx, %i.gt
  br i1 %i.gu, label %bb.y, label %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE9push_backERKS3_.exit66

bb.y:                                             ; preds = %_ZN4absl13time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS1_15PosixTransitionE.exit51
  %i.gv = call i64 @llvm.smin.i64(i64 %i.gm, i64 %i.gq)
  %i.gw = icmp slt i64 %i.bx, %i.gv
  %.pre = load ptr, ptr %i.bn, align 8            ; 6 uses
  %.pre78 = load ptr, ptr %i.dn, align 8          ; 2 uses
  br i1 %i.gw, label %bb.z, label %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE9push_backERKS3_.exit

bb.z:                                             ; preds = %bb.y
  %.not.i52 = icmp eq ptr %.pre, %.pre78
  br i1 %.not.i52, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.pre, ptr noundef nonnull align 8 dereferenceable(48) %., i64 48, i1 false)
  %i.gx = load ptr, ptr %i.bn, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 48 ; 2 uses
  store ptr %i.gy, ptr %i.bn, align 8
  %.pre77 = load ptr, ptr %i.dn, align 8
  br label %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE9push_backERKS3_.exit

bb.ab:                                            ; preds = %bb.z
  %i.gz = load ptr, ptr %i.bm, align 8            ; 5 uses
  %i.ha = ptrtoint ptr %.pre to i64
  %i.hb = ptrtoint ptr %i.gz to i64
  %i.hc = sub i64 %i.ha, %i.hb                    ; 4 uses
  %i.hd = icmp eq i64 %i.hc, 9223372036854775776
  br i1 %i.hd, label %bb.ac, label %_ZNKSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.ac:                                            ; preds = %bb.ab
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #25
  unreachable

_ZNKSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ab
  %i.he = sdiv exact i64 %i.hc, 48                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.he, i64 1)
  %i.hf = add nsw i64 %.sroa.speculated.i.i.i, %i.he ; 2 uses
  %i.hg = icmp ult i64 %i.hf, %i.he
  %i.hh = call i64 @llvm.umin.i64(i64 %i.hf, i64 192153584101141162)
  %i.hi = select i1 %i.hg, i64 192153584101141162, i64 %i.hh ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.hi, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.hj = mul nuw nsw i64 %i.hi, 48
  %i.hk = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hj) #26 ; 5 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 %i.hc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.hl, ptr noundef nonnull align 8 dereferenceable(48) %., i64 48, i1 false)
  %.not10.i.i.i.i.i = icmp eq ptr %i.gz, %.pre
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.hn, %.lr.ph.i.i.i.i.i ], [ %i.hk, %_ZNKSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.hm, %.lr.ph.i.i.i.i.i ], [ %i.gz, %_ZNKSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i.i.i, i64 48, i1 false), !alias.scope !9
  %i.hm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 48 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.hm, %.pre
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !13

_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.hk, %_ZNKSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.hn, %.lr.ph.i.i.i.i.i ]
  %i.ho = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.gz, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gz, i64 noundef %i.hc) #27
  br label %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.ad, %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.hk, ptr %i.bm, align 8
  store ptr %i.ho, ptr %i.bn, align 8
  %i.hp = getelementptr inbounds nuw [48 x i8], ptr %i.hk, i64 %i.hi ; 2 uses
  store ptr %i.hp, ptr %i.dn, align 8
  br label %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.aa, %bb.y
  %i.hq = phi ptr [ %i.hp, %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.pre77, %bb.aa ], [ %.pre78, %bb.y ] ; 4 uses
  %i.hr = phi ptr [ %i.ho, %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.gy, %bb.aa ], [ %.pre, %bb.y ] ; 2 uses
  %.not.i53 = icmp eq ptr %i.hr, %i.hq
  br i1 %.not.i53, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE9push_backERKS3_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.hr, ptr noundef nonnull align 8 dereferenceable(48) %i.gs, i64 48, i1 false)
  %i.hs = load ptr, ptr %i.bn, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 48
  store ptr %i.ht, ptr %i.bn, align 8
  br label %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE9push_backERKS3_.exit66

bb.af:                                            ; preds = %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE9push_backERKS3_.exit
  %i.hu = load ptr, ptr %i.bm, align 8            ; 5 uses
  %i.hv = ptrtoint ptr %i.hq to i64
  %i.hw = ptrtoint ptr %i.hu to i64
  %i.hx = sub i64 %i.hv, %i.hw                    ; 4 uses
  %i.hy = icmp eq i64 %i.hx, 9223372036854775776
  br i1 %i.hy, label %bb.ag, label %_ZNKSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE12_M_check_lenEmPKc.exit.i.i54

bb.ag:                                            ; preds = %bb.af
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #25
  unreachable

_ZNKSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE12_M_check_lenEmPKc.exit.i.i54: ; preds = %bb.af
  %i.hz = sdiv exact i64 %i.hx, 48                ; 3 uses
  %.sroa.speculated.i.i.i55 = call i64 @llvm.umax.i64(i64 %i.hz, i64 1)
  %i.ia = add nsw i64 %.sroa.speculated.i.i.i55, %i.hz ; 2 uses
  %i.ib = icmp ult i64 %i.ia, %i.hz
  %i.ic = call i64 @llvm.umin.i64(i64 %i.ia, i64 192153584101141162)
  %i.id = select i1 %i.ib, i64 192153584101141162, i64 %i.ic ; 3 uses
  %.not.i.i.i56 = icmp ne i64 %i.id, 0
  call void @llvm.assume(i1 %.not.i.i.i56)
  %i.ie = mul nuw nsw i64 %i.id, 48
  %i.if = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ie) #26 ; 5 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 %i.hx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ig, ptr noundef nonnull align 8 dereferenceable(48) %i.gs, i64 48, i1 false)
  %.not10.i.i.i.i.i57 = icmp eq ptr %i.hu, %i.hq
  br i1 %.not10.i.i.i.i.i57, label %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i62, label %.lr.ph.i.i.i.i.i58

.lr.ph.i.i.i.i.i58:                               ; preds = %_ZNKSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE12_M_check_lenEmPKc.exit.i.i54, %.lr.ph.i.i.i.i.i58
  %.012.i.i.i.i.i59 = phi ptr [ %i.ii, %.lr.ph.i.i.i.i.i58 ], [ %i.if, %_ZNKSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE12_M_check_lenEmPKc.exit.i.i54 ] ; 2 uses
  %.0911.i.i.i.i.i60 = phi ptr [ %i.ih, %.lr.ph.i.i.i.i.i58 ], [ %i.hu, %_ZNKSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE12_M_check_lenEmPKc.exit.i.i54 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i.i.i59, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i.i.i60, i64 48, i1 false), !alias.scope !14
  %i.ih = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i60, i64 48 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i59, i64 48 ; 2 uses
  %.not.i.i.i.i.i61 = icmp eq ptr %i.ih, %i.hq
  br i1 %.not.i.i.i.i.i61, label %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i62, label %.lr.ph.i.i.i.i.i58, !llvm.loop !13

_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i62: ; preds = %.lr.ph.i.i.i.i.i58, %_ZNKSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE12_M_check_lenEmPKc.exit.i.i54
  %.0.lcssa.i.i.i.i.i63 = phi ptr [ %i.if, %_ZNKSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE12_M_check_lenEmPKc.exit.i.i54 ], [ %i.ii, %.lr.ph.i.i.i.i.i58 ]
  %i.ij = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i63, i64 48
  %.not.i23.i.i64 = icmp eq ptr %i.hu, null
  br i1 %.not.i23.i.i64, label %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i65, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i62
  call void @_ZdlPvm(ptr noundef nonnull %i.hu, i64 noundef %i.hx) #27
  br label %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i65

_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i65: ; preds = %bb.ah, %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i62
  store ptr %i.if, ptr %i.bm, align 8
  store ptr %i.ij, ptr %i.bn, align 8
  %i.ik = getelementptr inbounds nuw [48 x i8], ptr %i.if, i64 %i.id
  store ptr %i.ik, ptr %i.dn, align 8
  br label %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE9push_backERKS3_.exit66

_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE9push_backERKS3_.exit66: ; preds = %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i65, %bb.ae, %_ZN4absl13time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS1_15PosixTransitionE.exit51
  %i.il = load i64, ptr %i.cf, align 8            ; 2 uses
  %.not = icmp eq i64 %i.il, %i.dh
  br i1 %.not, label %.critedge, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE9push_backERKS3_.exit66
  %i.im = zext nneg i8 %.027 to i64               ; 2 uses
  %i.in = getelementptr inbounds nuw [4 x i8], ptr @_ZN4absl13time_internal4cctz12_GLOBAL__N_112kSecsPerYearE, i64 %i.im
  %i.io = load i32, ptr %i.in, align 4
  %i.ip = sext i32 %i.io to i64
  %i.iq = add nsw i64 %.029, %i.ip
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr @_ZN4absl13time_internal4cctz12_GLOBAL__N_112kDaysPerYearE, i64 %i.im
  %i.is = load i32, ptr %i.ir, align 4
  %i.it = add nsw i32 %i.is, %.031
  %i.iu = srem i32 %i.it, 7
  %.pre79 = add nsw i64 %i.il, 1                  ; 4 uses
  %i.iv = and i64 %.pre79, 3
  %i.iw = icmp ne i64 %i.iv, 0
  %or.cond.not = select i1 %i.do, i1 true, i1 %i.iw
  br i1 %or.cond.not, label %_ZN4absl13time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit68, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ix = srem i64 %.pre79, 100
  %.not.i67 = icmp eq i64 %i.ix, 0
  br i1 %.not.i67, label %bb.ak, label %_ZN4absl13time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit68

bb.ak:                                            ; preds = %bb.aj
  %i.iy = srem i64 %.pre79, 400
  %i.iz = icmp eq i64 %i.iy, 0
  %i.ja = zext i1 %i.iz to i8
  br label %_ZN4absl13time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit68

_ZN4absl13time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit68: ; preds = %bb.ai, %bb.ak, %bb.aj
  %.128 = phi i8 [ 0, %bb.ai ], [ %i.ja, %bb.ak ], [ 1, %bb.aj ]
  store i64 %.pre79, ptr %i.cf, align 8
  br label %bb.n, !llvm.loop !18

.critedge:                                        ; preds = %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE9push_backERKS3_.exit66
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.al

bb.al:                                            ; preds = %bb.i, %.critedge, %bb.k
  %.0 = phi i1 [ %6, %bb.k ], [ true, %.critedge ], [ false, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %_ZNK4absl13time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit

_ZNK4absl13time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit: ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.c, %bb.al
  %.1 = phi i1 [ false, %bb.c ], [ %.0, %bb.al ], [ true, %bb.e ], [ false, %bb.g ], [ false, %bb.f ], [ %.not12.i, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.am

bb.am:                                            ; preds = %bb.b, %_ZNK4absl13time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit
  %.2 = phi i1 [ %.1, %_ZNK4absl13time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit ], [ false, %bb.b ]
  %i.jb = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.jc = icmp eq ptr %i.jb, %i.k
  br i1 %i.jc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.am
  %i.jd = load i64, ptr %i.k, align 8
  %i.je = add i64 %i.jd, 1
  call void @_ZdlPvm(ptr noundef %i.jb, i64 noundef %i.je) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.jf = load ptr, ptr %1, align 8               ; 2 uses
  %i.jg = icmp eq ptr %i.jf, %i.h
  br i1 %i.jg, label %_ZN4absl13time_internal4cctz13PosixTimeZoneD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.jh = load i64, ptr %i.h, align 8
  %i.ji = add i64 %i.jh, 1
  call void @_ZdlPvm(ptr noundef %i.jf, i64 noundef %i.ji) #27
  br label %_ZN4absl13time_internal4cctz13PosixTimeZoneD2Ev.exit

_ZN4absl13time_internal4cctz13PosixTimeZoneD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %bb.an

bb.an:                                            ; preds = %bb.a, %_ZN4absl13time_internal4cctz13PosixTimeZoneD2Ev.exit
  %.3 = phi i1 [ %.2, %_ZN4absl13time_internal4cctz13PosixTimeZoneD2Ev.exit ], [ true, %bb.a ]
  ret i1 %.3
}

declare noundef zeroext i1 @_ZN4absl13time_internal4cctz14ParsePosixSpecERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS1_13PosixTimeZoneE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ugt i64 %1, 192153584101141162
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %0, align 8                ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = sdiv exact i64 %i.g, 48
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %_ZNSt12_Vector_baseIN4absl13time_internal4cctz10TransitionESaIS3_EE11_M_allocateEm.exit, label %bb.e

_ZNSt12_Vector_baseIN4absl13time_internal4cctz10TransitionESaIS3_EE11_M_allocateEm.exit: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
  %i.n = mul nuw nsw i64 %1, 48
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #26 ; 4 uses
  %.not10.i.i.i = icmp eq ptr %i.d, %i.k
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12_Vector_baseIN4absl13time_internal4cctz10TransitionESaIS3_EE11_M_allocateEm.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %i.o, %_ZNSt12_Vector_baseIN4absl13time_internal4cctz10TransitionESaIS3_EE11_M_allocateEm.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %i.d, %_ZNSt12_Vector_baseIN4absl13time_internal4cctz10TransitionESaIS3_EE11_M_allocateEm.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i, i64 48, i1 false), !alias.scope !19
  %i.p = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %.not.i.i.i = icmp eq ptr %i.p, %i.k
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !13

_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZNSt12_Vector_baseIN4absl13time_internal4cctz10TransitionESaIS3_EE11_M_allocateEm.exit
  %.not.i8 = icmp eq ptr %i.d, null
  br i1 %.not.i8, label %_ZNSt12_Vector_baseIN4absl13time_internal4cctz10TransitionESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.g) #27
  br label %_ZNSt12_Vector_baseIN4absl13time_internal4cctz10TransitionESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN4absl13time_internal4cctz10TransitionESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %bb.d
  store ptr %i.o, ptr %0, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.r, ptr %i.j, align 8
  %i.s = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %1
  store ptr %i.s, ptr %i.b, align 8
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIN4absl13time_internal4cctz10TransitionESaIS3_EE13_M_deallocateEPS3_m.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4absl13time_internal4cctz12TimeZoneInfo9LocalTimeElRKNS1_14TransitionTypeE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.absl::time_internal::cctz::time_zone::absolute_lookup") align 8 captures(none) initializes((0, 21), (24, 32)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %1, i64 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(42) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = sdiv i64 %2, 60
  %i.b = srem i64 %2, 60
  %i.c = tail call { i64, i64 } @_ZN4absl13time_internal4cctz6detail4impl5n_secEllllll(i64 noundef 1970, i64 noundef 1, i64 noundef 1, i64 noundef 0, i64 noundef %i.a, i64 noundef %i.b) #24 ; 2 uses
  %.fca.1.extract.i.i = extractvalue { i64, i64 } %i.c, 1 ; 5 uses
  %i.d = extractvalue { i64, i64 } %i.c, 0
  %i.e = load i32, ptr %3, align 8                ; 2 uses
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
  %i.r = tail call { i64, i64 } @_ZN4absl13time_internal4cctz6detail4impl5n_secEllllll(i64 noundef %i.d, i64 noundef %i.f, i64 noundef %i.h, i64 noundef %i.j, i64 noundef %i.n, i64 noundef %i.q) #24 ; 2 uses
  %.fca.1.extract.i.i6 = extractvalue { i64, i64 } %i.r, 1
  %.sroa.2.8.insert.ext.i7 = and i64 %.fca.1.extract.i.i6, 1099511627775
  %i.s = extractvalue { i64, i64 } %i.r, 0
  store i64 %i.s, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.2.8.insert.ext.i7, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load i32, ptr %3, align 8
  store i32 %i.v, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.y = load i8, ptr %i.x, align 8, !range !5, !noundef !6
  store i8 %i.y, ptr %i.w, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 41
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = zext i8 %i.ac to i64
  %i.ae = load ptr, ptr %i.aa, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ad
  store ptr %i.af, ptr %i.z, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZN4absl13time_internal4cctz6detailmiENS2_10civil_timeINS2_10second_tagEEES5_(i64 %0, i64 %1, i64 %2, i64 %3) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.22.8.extract.trunc.i.i.i.i = trunc i64 %1 to i8
  %.sroa.43.8.extract.shift.i.i.i.i = lshr i64 %1, 8
  %.sroa.43.8.extract.trunc.i.i.i.i = trunc i64 %.sroa.43.8.extract.shift.i.i.i.i to i8
  %.sroa.2.8.extract.trunc.i.i.i.i = trunc i64 %3 to i8
  %.sroa.4.8.extract.shift.i.i.i.i = lshr i64 %3, 8
  %.sroa.4.8.extract.trunc.i.i.i.i = trunc i64 %.sroa.4.8.extract.shift.i.i.i.i to i8
  %i.a = tail call noundef i64 @_ZN4absl13time_internal4cctz6detail4impl14day_differenceElaalaa(i64 noundef %0, i8 noundef signext %.sroa.22.8.extract.trunc.i.i.i.i, i8 noundef signext %.sroa.43.8.extract.trunc.i.i.i.i, i64 noundef %2, i8 noundef signext %.sroa.2.8.extract.trunc.i.i.i.i, i8 noundef signext %.sroa.4.8.extract.trunc.i.i.i.i) #24
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
  %i.s = add i64 %i.r, %.pn.i
  ret i64 %i.s
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN4absl13time_internal4cctz6detail11get_weekdayERKNS2_10civil_timeINS2_10second_tagEEE(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = srem i64 %i.a, 400
  %i.c = add nsw i64 %i.b, 2400
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i8, ptr %i.d, align 8               ; 2 uses
  %i.f = icmp slt i8 %i.e, 3
  %.neg = sext i1 %i.f to i64
  %i.g = add nsw i64 %i.c, %.neg                  ; 3 uses
end_hunk_1
