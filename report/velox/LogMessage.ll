inline.NumInlined: 137
inline.NumDeleted: 58
begin_hunk_0_@_ZN5folly10LogMessage15sanitizeMessageEv:bb.a
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 noundef %i.cp, i64 noundef 0, ptr noundef nonnull %2, i64 noundef 4)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit43: ; preds = %bb.ag, %bb.ah
  store i64 %i.cs, ptr %i.aa, align 8, !tbaa !50
  %i.cz = load ptr, ptr %i.v, align 8, !tbaa !49
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cs
  store i8 0, ptr %i.da, align 1, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %bb.al

bb.ai:                                            ; preds = %bb.ac
  %i.db = load i64, ptr %i.aa, align 8, !tbaa !50 ; 4 uses
  %i.dc = add i64 %i.db, 1                        ; 3 uses
  %i.dd = load ptr, ptr %i.v, align 8, !tbaa !49  ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.ab                ; 2 uses
  br i1 %i.de, label %bb.aj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i44

bb.aj:                                            ; preds = %bb.ai
  %i.df = icmp ult i64 %i.db, 16
  call void @llvm.assume(i1 %i.df)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i44: ; preds = %bb.aj, %bb.ai
  %i.dg = load i64, ptr %i.ab, align 8
  %i.dh = select i1 %i.de, i64 15, i64 %i.dg
  %i.di = icmp ugt i64 %i.dc, %i.dh
  br i1 %i.di, label %bb.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit46

bb.ak:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i44
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 noundef %i.db, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i45 = load ptr, ptr %i.v, align 8, !tbaa !49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit46: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i44, %bb.ak
  %i.dj = phi ptr [ %.pre.i45, %bb.ak ], [ %i.dd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i44 ]
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.db
  store i8 %i.ac, ptr %i.dk, align 1, !tbaa !51
  store i64 %i.dc, ptr %i.aa, align 8, !tbaa !50
  %i.dl = load ptr, ptr %i.v, align 8, !tbaa !49
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dc
  store i8 0, ptr %i.dm, align 1, !tbaa !51
  br label %bb.al

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit39, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit43, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit36
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.047.058, i64 1 ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.y
  br i1 %i.do, label %.loopexit, label %bb.m

.loopexit:                                        ; preds = %bb.al, %bb.l, %._crit_edge
  ret void
}

declare i32 @__gxx_personality_v0(...)

declare void @_ZNK5folly8LoggerDB16getContextStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(232)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN5folly10LogMessageC2EPKNS_11LogCategoryENS_8LogLevelENSt6chrono10time_pointINS5_3_V212system_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEENS_5RangeIPKcEEjSH_ONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(176) initializes((0, 12), (16, 52), (56, 80)) %0, ptr noundef %1, i32 noundef %2, i64 %3, ptr %4, ptr %5, i32 noundef %6, ptr nofree noundef readonly byval(%"class.folly::Range") align 8 captures(none) %7, ptr noundef nonnull align 8 dereferenceable(32) %8) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %i.a, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = tail call noundef i64 @_ZN5folly13getOSThreadIDEv()
  store i64 %i.c, ptr %i.b, align 8, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %3, ptr %i.d, align 8, !tbaa !52
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %4, ptr %i.e, align 8, !tbaa !25
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %5, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %6, ptr %i.f, align 8, !tbaa !26
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !27
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %i.h, align 8, !tbaa !28
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !11
  %i.k = getelementptr i8, ptr %i.j, i64 88
  %.val = load ptr, ptr %i.k, align 8, !tbaa !29
  tail call void @_ZNK5folly8LoggerDB16getContextStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %i.i, ptr noundef nonnull align 8 dereferenceable(232) %.val)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 5 uses
  store ptr %i.m, ptr %i.l, align 8, !tbaa !48
  %i.n = load ptr, ptr %8, align 8, !tbaa !49     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !50   ; 2 uses
  %i.s = icmp ult i64 %i.r, 16
  tail call void @llvm.assume(i1 %i.s)
  %i.t = add nuw nsw i64 %i.r, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.m, ptr noundef nonnull align 8 dereferenceable(1) %i.o, i64 %i.t, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.n, ptr %i.l, align 8, !tbaa !49
  %i.u = load i64, ptr %i.o, align 8, !tbaa !51
  store i64 %i.u, ptr %i.m, align 8, !tbaa !51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !50
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.w, ptr %i.x, align 8, !tbaa !50
  store ptr %i.o, ptr %8, align 8, !tbaa !49
  store i64 0, ptr %i.v, align 8, !tbaa !50
  store i8 0, ptr %i.o, align 8, !tbaa !51
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  store ptr %i.z, ptr %i.y, align 8, !tbaa !48
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 0, ptr %i.aa, align 8, !tbaa !50
  store i8 0, ptr %i.z, align 8, !tbaa !51
  invoke void @_ZN5folly10LogMessage15sanitizeMessageEv(ptr noundef nonnull align 8 dereferenceable(176) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  ret void

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !49  ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.z
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.ae = load i64, ptr %i.z, align 8, !tbaa !51
  %i.af = add i64 %i.ae, 1
  tail call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ag = load ptr, ptr %i.l, align 8, !tbaa !49  ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.m
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ai = load i64, ptr %i.m, align 8, !tbaa !51
  %i.aj = add i64 %i.ai, 1
  tail call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  %i.ak = load ptr, ptr %i.i, align 8, !tbaa !49  ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9
  %i.an = load i64, ptr %i.al, align 8, !tbaa !51
  %i.ao = add i64 %i.an, 1
  tail call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  resume { ptr, i32 } %i.ab
}

; Function Attrs: mustprogress uwtable
define { ptr, ptr } @_ZNK5folly10LogMessage15getFileBaseNameEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8, !tbaa !25 ; 4 uses
  %.sroa.2.0..0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..0..sroa_idx.i.i, align 8, !tbaa !25 ; 3 uses
  %i.b = icmp eq ptr %.sroa.0.0.copyload.i.i, %.sroa.2.0.copyload.i.i
  br i1 %i.b, label %_ZNK5folly5RangeIPKcE5rfindERS1_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %.sroa.2.0.copyload.i.i to i64
  %i.d = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64 ; 2 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = tail call noundef ptr @_ZN5folly7memrchrEPKvim(ptr noundef %.sroa.0.0.copyload.i.i, i32 noundef 47, i64 noundef %i.e) #12 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %._ZNK5folly5RangeIPKcE5rfindERS1_.exit.thread_crit_edge, label %_ZNK5folly5RangeIPKcE5rfindERS1_.exit

._ZNK5folly5RangeIPKcE5rfindERS1_.exit.thread_crit_edge: ; preds = %bb.b
  %.sroa.0.0.copyload.pre = load ptr, ptr %i.a, align 8, !tbaa !25
  %.sroa.3.0.copyload.pre = load ptr, ptr %.sroa.2.0..0..sroa_idx.i.i, align 8, !tbaa !25
  br label %_ZNK5folly5RangeIPKcE5rfindERS1_.exit.thread

_ZNK5folly5RangeIPKcE5rfindERS1_.exit:            ; preds = %bb.b
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.h, %i.d                       ; 2 uses
  %i.j = icmp eq i64 %i.i, -1
  %.sroa.0.0.copyload.pre4 = load ptr, ptr %i.a, align 8, !tbaa !25 ; 4 uses
  %.sroa.3.0.copyload.pre6 = load ptr, ptr %.sroa.2.0..0..sroa_idx.i.i, align 8, !tbaa !25 ; 2 uses
  br i1 %i.j, label %_ZNK5folly5RangeIPKcE5rfindERS1_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK5folly5RangeIPKcE5rfindERS1_.exit
  %1 = add nuw i64 %i.i, 1                        ; 2 uses
  %i.k = ptrtoint ptr %.sroa.3.0.copyload.pre6 to i64
  %i.l = ptrtoint ptr %.sroa.0.0.copyload.pre4 to i64
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %2 = icmp ugt i64 %1, %i.m
  br i1 %2, label %bb.d, label %_ZNK5folly5RangeIPKcE8subpieceEmm.exit, !prof !53

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5folly6detail16throw_exception_ISt12out_of_rangeJPKcEEEvDpT0_(ptr noundef nonnull @.str) #7
  unreachable

_ZNK5folly5RangeIPKcE8subpieceEmm.exit:           ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.pre4, i64 %1
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.pre4, i64 %i.m
  br label %_ZNK5folly5RangeIPKcE5rfindERS1_.exit.thread

_ZNK5folly5RangeIPKcE5rfindERS1_.exit.thread:     ; preds = %_ZNK5folly5RangeIPKcE5rfindERS1_.exit, %bb.a, %._ZNK5folly5RangeIPKcE5rfindERS1_.exit.thread_crit_edge, %_ZNK5folly5RangeIPKcE8subpieceEmm.exit
  %.sroa.0.0.copyload.pn = phi ptr [ %i.n, %_ZNK5folly5RangeIPKcE8subpieceEmm.exit ], [ %.sroa.0.0.copyload.pre, %._ZNK5folly5RangeIPKcE5rfindERS1_.exit.thread_crit_edge ], [ %.sroa.0.0.copyload.i.i, %bb.a ], [ %.sroa.0.0.copyload.pre4, %_ZNK5folly5RangeIPKcE5rfindERS1_.exit ]
  %.sroa.3.0.copyload.pn = phi ptr [ %i.o, %_ZNK5folly5RangeIPKcE8subpieceEmm.exit ], [ %.sroa.3.0.copyload.pre, %._ZNK5folly5RangeIPKcE5rfindERS1_.exit.thread_crit_edge ], [ %.sroa.2.0.copyload.i.i, %bb.a ], [ %.sroa.3.0.copyload.pre6, %_ZNK5folly5RangeIPKcE5rfindERS1_.exit ]
  %.pn = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.copyload.pn, 0
  %.fca.1.insert.merged = insertvalue { ptr, ptr } %.pn, ptr %.sroa.3.0.copyload.pn, 1
  ret { ptr, ptr } %.fca.1.insert.merged
}

; Function Attrs: nounwind
declare noundef ptr @_ZN5folly7memrchrEPKvim(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_ISt12out_of_rangeJPKcEEEvDpT0_(ptr noundef %0) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::out_of_range", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  call void @_ZNSt12out_of_rangeC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %0)
  invoke void @_ZN5folly15throw_exceptionISt12out_of_rangeEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %1) #7
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12out_of_rangeD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %1) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionISt12out_of_rangeEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #12 ; 2 uses
  tail call void @_ZNSt12out_of_rangeC2EOS_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %0) #12
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt12out_of_range, ptr nonnull @_ZNSt12out_of_rangeD1Ev) #14
  unreachable
}

declare void @_ZNSt12out_of_rangeC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt12out_of_rangeD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12out_of_rangeC2EOS_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZNSt11logic_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #12
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12out_of_range, i64 16), ptr %0, align 8, !tbaa !54
  ret void
}

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZNSt11logic_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit:
  %i.a = load ptr, ptr %0, align 8, !tbaa !49     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = icmp eq ptr %i.a, %i.b                   ; 2 uses
  %i.d = load i64, ptr %i.b, align 8              ; 2 uses
  %i.e = select i1 %i.c, i64 15, i64 %i.d         ; 2 uses
  %.not = icmp ugt i64 %1, %i.e
  br i1 %.not, label %bb.a, label %bb.g

bb.a:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.f = icmp slt i64 %1, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = shl nuw i64 %i.e, 1                      ; 2 uses
  %i.h = icmp ult i64 %1, %i.g
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 9223372036854775807)
  %.0 = select i1 %i.h, i64 %spec.store.select.i, i64 %1 ; 2 uses
  %i.i = add nuw i64 %.0, 1                       ; 2 uses
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !53

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #14
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.c
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #15 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !50   ; 2 uses
  %i.n = add i64 %i.m, 1                          ; 2 uses
  switch i64 %i.n, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  ]

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.o = load i8, ptr %i.a, align 1, !tbaa !51
  store i8 %i.o, ptr %i.k, align 1, !tbaa !51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr align 1 %i.a, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %bb.e, %bb.f
  br i1 %i.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.p = icmp ult i64 %i.m, 16
  tail call void @llvm.assume(i1 %i.p)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.q = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.q) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.k, ptr %0, align 8, !tbaa !49
  store i64 %.0, ptr %i.b, align 8, !tbaa !51
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !50   ; 5 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !49     ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 3 uses
  br i1 %i.i, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.a, %bb.b
  %i.k = load i64, ptr %i.h, align 8              ; 2 uses
  %i.l = select i1 %i.i, i64 15, i64 %i.k         ; 2 uses
  %i.m = icmp slt i64 %i.f, 0
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #14
  unreachable

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.n = icmp ugt i64 %i.f, %i.l
  br i1 %i.n, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.o = shl nuw i64 %i.l, 1                      ; 2 uses
  %i.p = icmp ult i64 %i.f, %i.o
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 9223372036854775807)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.0 = phi i64 [ %spec.store.select.i, %bb.f ], [ %i.f, %bb.e ], [ %i.f, %bb.d ] ; 2 uses
  %i.q = add nuw i64 %.0, 1                       ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !53

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt17__throw_bad_allocv() #14
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.g
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #15 ; 5 uses
  switch i64 %1, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.t = load i8, ptr %i.g, align 1, !tbaa !51
  store i8 %i.t, ptr %i.s, align 1, !tbaa !51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.g, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %bb.j, %bb.i
  %i.u = icmp ne ptr %3, null
  %i.v = icmp ne i64 %4, 0
  %or.cond = and i1 %i.u, %i.v
  br i1 %or.cond, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %1 ; 2 uses
  %cond = icmp eq i64 %4, 1
  br i1 %cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.x = load i8, ptr %3, align 1, !tbaa !51
  store i8 %i.x, ptr %i.w, align 1, !tbaa !51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26: ; preds = %bb.m, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %1
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 %1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %2 ; 2 uses
  %cond29 = icmp eq i64 %i.d, 1
  br i1 %cond29, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !51
  store i8 %i.ac, ptr %i.z, align 1, !tbaa !51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.ab, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.p, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ad = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.ad)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ae = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.ae) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.s, ptr %0, align 8, !tbaa !49
  store i64 %.0, ptr %i.h, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #0 align 2

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #0 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { cold noreturn }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { builtin nounwind }
attributes #14 = { noreturn }
attributes #15 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 7, !"openmp", i32 51}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!12, !13, i64 0}
!12 = !{!"_ZTSN5folly10LogMessageE", !13, i64 0, !15, i64 8, !16, i64 16, !17, i64 24, !19, i64 32, !8, i64 48, !19, i64 56, !16, i64 72, !21, i64 80, !21, i64 112, !21, i64 144}
!13 = !{!"p1 _ZTSN5folly11LogCategoryE", !14, i64 0}
!14 = !{!"any pointer", !9, i64 0}
!15 = !{!"_ZTSN5folly8LogLevelE", !9, i64 0}
!16 = !{!"long", !9, i64 0}
!17 = !{!"_ZTSNSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEE", !18, i64 0}
!18 = !{!"_ZTSNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEE", !16, i64 0}
!19 = !{!"_ZTSN5folly5RangeIPKcEE", !20, i64 0, !20, i64 8}
!20 = !{!"p1 omnipotent char", !14, i64 0}
!21 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !22, i64 0, !16, i64 8, !9, i64 16}
!22 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !20, i64 0}
!23 = !{!12, !15, i64 8}
!24 = !{!12, !16, i64 16}
!25 = !{!20, !20, i64 0}
!26 = !{!12, !8, i64 48}
!27 = !{i64 0, i64 8, !25, i64 8, i64 8, !25}
!28 = !{!12, !16, i64 72}
!29 = !{!30, !41, i64 88}
!30 = !{!"_ZTSN5folly11LogCategoryE", !31, i64 0, !31, i64 4, !32, i64 8, !13, i64 16, !21, i64 24, !34, i64 56, !41, i64 88, !13, i64 96, !13, i64 104, !42, i64 112}
!31 = !{!"_ZTSSt6atomicIN5folly8LogLevelEE", !15, i64 0}
!32 = !{!"_ZTSSt6atomicIjE", !33, i64 0}
!33 = !{!"_ZTSSt13__atomic_baseIjE", !8, i64 0}
!34 = !{!"_ZTSN5folly12SynchronizedISt6vectorISt10shared_ptrINS_10LogHandlerEESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEE", !35, i64 0, !40, i64 24}
!35 = !{!"_ZTSSt6vectorISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE", !36, i64 0}
!36 = !{!"_ZTSSt12_Vector_baseISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE", !37, i64 0}
!37 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE12_Vector_implE", !38, i64 0}
!38 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5folly10LogHandlerEESaIS3_EE17_Vector_impl_dataE", !39, i64 0, !39, i64 8, !39, i64 16}
!39 = !{!"p1 _ZTSSt10shared_ptrIN5folly10LogHandlerEE", !14, i64 0}
!40 = !{!"_ZTSN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEE", !32, i64 0}
!41 = !{!"p1 _ZTSN5folly8LoggerDBE", !14, i64 0}
!42 = !{!"_ZTSSt6vectorIPSt6atomicIN5folly8LogLevelEESaIS4_EE", !43, i64 0}
!43 = !{!"_ZTSSt12_Vector_baseIPSt6atomicIN5folly8LogLevelEESaIS4_EE", !44, i64 0}
!44 = !{!"_ZTSNSt12_Vector_baseIPSt6atomicIN5folly8LogLevelEESaIS4_EE12_Vector_implE", !45, i64 0}
!45 = !{!"_ZTSNSt12_Vector_baseIPSt6atomicIN5folly8LogLevelEESaIS4_EE17_Vector_impl_dataE", !46, i64 0, !46, i64 8, !46, i64 16}
!46 = !{!"p2 _ZTSSt6atomicIN5folly8LogLevelEE", !47, i64 0}
!47 = !{!"any p2 pointer", !14, i64 0}
!48 = !{!22, !20, i64 0}
!49 = !{!21, !20, i64 0}
!50 = !{!21, !16, i64 8}
!51 = !{!9, !9, i64 0}
!52 = !{!16, !16, i64 0}
!53 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!54 = !{!55, !55, i64 0}
!55 = !{!"vtable pointer", !10, i64 0}
end_hunk_0
