Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpLimMemQuasiNewtonUpdater?download=true
inline.NumInlined: 2195
inline.NumDeleted: 654
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN5Ipopt14IpoptExceptionD0Ev:bb.a
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #21, !inline_history !220
  br label %_ZN5Ipopt14IpoptExceptionD2Ev.exit

_ZN5Ipopt14IpoptExceptionD2Ev.exit:               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 112) #21
  ret void
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #14

declare void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5Ipopt13CachedResultsIdE19GetCachedResult2DepERdPKNS_12TaggedObjectES5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.142", align 8   ; 9 uses
  %5 = alloca %"class.std::vector.137", align 8   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #23 ; 4 uses
  store ptr %i.a, ptr %5, align 8, !tbaa !212
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !213
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.b, ptr %i.e, align 8, !tbaa !214
  store ptr %2, ptr %i.a, align 8, !tbaa !216
  store ptr %3, ptr %i.d, align 8, !tbaa !216
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.f = invoke noundef zeroext i1 @_ZNK5Ipopt13CachedResultsIdE15GetCachedResultERdRKSt6vectorIPKNS_12TaggedObjectESaIS6_EERKS3_IdSaIdEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %4, align 8, !tbaa !218    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !219
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #21
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %4, align 8, !tbaa !218    ; 3 uses
  %.not.i.i.i4.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i4.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit5.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !219
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #21
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit5.i

_ZNSt6vectorIdSaIdEED2Ev.exit5.i:                 ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.t = load ptr, ptr %5, align 8, !tbaa !212    ; 3 uses
  %.not.i.i.i7 = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorIPKN5Ipopt12TaggedObjectESaIS3_EED2Ev.exit8, label %bb.h

bb.f:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.u = load ptr, ptr %5, align 8, !tbaa !212    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN5Ipopt12TaggedObjectESaIS3_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !213
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = sub i64 %i.w, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.y) #21
  br label %_ZNSt6vectorIPKN5Ipopt12TaggedObjectESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN5Ipopt12TaggedObjectESaIS3_EED2Ev.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret i1 %i.f

bb.h:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit5.i
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !213
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.t to i64
  %i.ac = sub i64 %i.aa, %i.ab
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.ac) #21
  br label %_ZNSt6vectorIPKN5Ipopt12TaggedObjectESaIS3_EED2Ev.exit8

_ZNSt6vectorIPKN5Ipopt12TaggedObjectESaIS3_EED2Ev.exit8: ; preds = %bb.h, %_ZNSt6vectorIdSaIdEED2Ev.exit5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  resume { ptr, i32 } %i.m
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Ipopt13CachedResultsIdE19AddCachedResult2DepERKdPKNS_12TaggedObjectES6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.142", align 8   ; 9 uses
  %5 = alloca %"class.std::vector.137", align 8   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #23 ; 4 uses
  store ptr %i.a, ptr %5, align 8, !tbaa !212
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !213
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.b, ptr %i.e, align 8, !tbaa !214
  store ptr %2, ptr %i.a, align 8, !tbaa !216
  store ptr %3, ptr %i.d, align 8, !tbaa !216
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  invoke void @_ZN5Ipopt13CachedResultsIdE15AddCachedResultERKdRKSt6vectorIPKNS_12TaggedObjectESaIS7_EERKS4_IdSaIdEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %4, align 8, !tbaa !218    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !219
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #21
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !218    ; 3 uses
  %.not.i.i.i4.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i4.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit5.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !219
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #21
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit5.i

_ZNSt6vectorIdSaIdEED2Ev.exit5.i:                 ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.s = load ptr, ptr %5, align 8, !tbaa !212    ; 3 uses
  %.not.i.i.i7 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorIPKN5Ipopt12TaggedObjectESaIS3_EED2Ev.exit8, label %bb.h

bb.f:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.t = load ptr, ptr %5, align 8, !tbaa !212    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN5Ipopt12TaggedObjectESaIS3_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !213
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.t to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.x) #21
  br label %_ZNSt6vectorIPKN5Ipopt12TaggedObjectESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN5Ipopt12TaggedObjectESaIS3_EED2Ev.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret void

bb.h:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit5.i
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !213
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.s to i64
  %i.ab = sub i64 %i.z, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.ab) #21
  br label %_ZNSt6vectorIPKN5Ipopt12TaggedObjectESaIS3_EED2Ev.exit8

_ZNSt6vectorIPKN5Ipopt12TaggedObjectESaIS3_EED2Ev.exit8: ; preds = %bb.h, %_ZNSt6vectorIdSaIdEED2Ev.exit5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  resume { ptr, i32 } %i.l
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5Ipopt13CachedResultsIdE15GetCachedResultERdRKSt6vectorIPKNS_12TaggedObjectESaIS6_EERKS3_IdSaIdEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !221  ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.loopexit17, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !224  ; 2 uses
  %.not910.i = icmp eq ptr %i.c, %i.b
  br i1 %.not910.i, label %.loopexit17, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.d
  %i.d = phi ptr [ %i.q, %bb.d ], [ %i.b, %bb.b ] ; 2 uses
  %.sroa.06.011.i = phi ptr [ %i.j, %bb.d ], [ %i.c, %bb.b ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.06.011.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !226  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i8, ptr %i.g, align 8, !tbaa !241, !range !102, !noundef !103
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = load ptr, ptr %.sroa.06.011.i, align 8, !tbaa !224 ; 5 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !245
  %i.m = add i64 %i.l, -1
  store i64 %i.m, ptr %i.k, align 8, !tbaa !245
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.011.i) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.06.011.i, i64 noundef 24) #21
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !44
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(96) %i.f) #20, !inline_history !30
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !221
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %i.q = phi ptr [ %.pre.i, %bb.c ], [ %i.d, %.lr.ph.i ] ; 3 uses
  %.not9.i = icmp eq ptr %i.j, %i.q
  br i1 %.not9.i, label %_ZNK5Ipopt13CachedResultsIdE25CleanupInvalidatedResultsEv.exit, label %.lr.ph.i, !llvm.loop !31

_ZNK5Ipopt13CachedResultsIdE25CleanupInvalidatedResultsEv.exit: ; preds = %bb.d
  %.sroa.010.020.pre = load ptr, ptr %i.q, align 8, !tbaa !224 ; 3 uses
  %.not1521 = icmp eq ptr %.sroa.010.020.pre, %i.j
  br i1 %.not1521, label %.loopexit17, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK5Ipopt13CachedResultsIdE25CleanupInvalidatedResultsEv.exit
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !214
  %i.t = load ptr, ptr %2, align 8, !tbaa !212    ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %.fr25 = freeze i64 %i.w
  %i.x = ashr i64 %.fr25, 3                       ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.z = trunc i64 %i.x to i32
  %i.aa = icmp sgt i32 %i.z, 0
  %wide.trip.count.i = and i64 %i.x, 2147483647
  br i1 %i.aa, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.loopexit.us
  %.sroa.010.022.us = phi ptr [ %.sroa.010.0.us, %.loopexit.us ], [ %.sroa.010.020.pre, %.lr.ph ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.010.022.us, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !226 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !246
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !247 ; 3 uses
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = ashr exact i64 %i.aj, 2
  %.not.i6.us = icmp eq i64 %i.x, %i.ak
  br i1 %.not.i6.us, label %bb.e, label %.loopexit.us

bb.e:                                             ; preds = %.lr.ph.split.us
  %i.al = load ptr, ptr %i.y, align 8, !tbaa !248
  %i.am = load ptr, ptr %3, align 8, !tbaa !218   ; 2 uses
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao                    ; 2 uses
  %i.aq = lshr exact i64 %i.ap, 3                 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !248
  %i.au = load ptr, ptr %i.ar, align 8, !tbaa !218 ; 2 uses
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  %.not23.i.us = icmp eq i64 %i.ap, %i.ax
  br i1 %.not23.i.us, label %.lr.ph.i7.us, label %.loopexit.us

.lr.ph.i7.us:                                     ; preds = %bb.e, %bb.h
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %bb.h ], [ 0, %bb.e ] ; 4 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.us
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !216 ; 2 uses
  %.not24.i.us = icmp eq ptr %i.az, null
  br i1 %.not24.i.us, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i7.us
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !122
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.i.us
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !88
  %.not25.i.us = icmp eq i32 %i.bb, %i.bd
  br i1 %.not25.i.us, label %bb.h, label %.loopexit.us

bb.g:                                             ; preds = %.lr.ph.i7.us
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.i.us
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !88
  %.not27.i.us = icmp eq i32 %i.bf, 0
  br i1 %.not27.i.us, label %bb.h, label %.loopexit.us

bb.h:                                             ; preds = %bb.g, %bb.f
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us, label %.preheader.i.loopexit.us, label %.lr.ph.i7.us, !llvm.loop !604

.lr.ph34.preheader.i.us:                          ; preds = %.preheader.i.loopexit.us
  %wide.trip.count42.i.us = and i64 %i.aq, 2147483647
  br label %.lr.ph34.i.us

.lr.ph34.i.us:                                    ; preds = %bb.i, %.lr.ph34.preheader.i.us
  %indvars.iv39.i.us = phi i64 [ 0, %.lr.ph34.preheader.i.us ], [ %indvars.iv.next40.i.us, %bb.i ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv39.i.us
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !147
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv39.i.us
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !147
  %i.bk = fcmp oeq double %i.bh, %i.bj
  br i1 %i.bk, label %bb.i, label %.loopexit.us

bb.i:                                             ; preds = %.lr.ph34.i.us
  %indvars.iv.next40.i.us = add nuw nsw i64 %indvars.iv39.i.us, 1 ; 2 uses
  %exitcond43.not.i.us = icmp eq i64 %indvars.iv.next40.i.us, %wide.trip.count42.i.us
  br i1 %exitcond43.not.i.us, label %_ZNK5Ipopt15DependentResultIdE19DependentsIdenticalERKSt6vectorIPKNS_12TaggedObjectESaIS5_EERKS2_IdSaIdEE.exit, label %.lr.ph34.i.us, !llvm.loop !605

.loopexit.us:                                     ; preds = %bb.f, %bb.g, %.lr.ph34.i.us, %bb.e, %.lr.ph.split.us
  %.sroa.010.0.us = load ptr, ptr %.sroa.010.022.us, align 8, !tbaa !224 ; 2 uses
  %.not15.us = icmp eq ptr %.sroa.010.0.us, %i.j
  br i1 %.not15.us, label %.loopexit17, label %.lr.ph.split.us, !llvm.loop !606

.preheader.i.loopexit.us:                         ; preds = %bb.h
  %i.bl = trunc i64 %i.aq to i32
  %i.bm = icmp sgt i32 %i.bl, 0
  br i1 %i.bm, label %.lr.ph34.preheader.i.us, label %_ZNK5Ipopt15DependentResultIdE19DependentsIdenticalERKSt6vectorIPKNS_12TaggedObjectESaIS5_EERKS2_IdSaIdEE.exit

.lr.ph.split:                                     ; preds = %.lr.ph, %.loopexit
  %.sroa.010.022 = phi ptr [ %.sroa.010.0, %.loopexit ], [ %.sroa.010.020.pre, %.lr.ph ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.010.022, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !226 ; 6 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 56
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !246
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !247
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = ashr exact i64 %i.bv, 2
  %.not.i6 = icmp eq i64 %i.x, %i.bw
  br i1 %.not.i6, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %.lr.ph.split
  %i.bx = load ptr, ptr %i.y, align 8, !tbaa !248
  %i.by = load ptr, ptr %3, align 8, !tbaa !218   ; 2 uses
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bz, %i.ca                    ; 2 uses
  %i.cc = lshr exact i64 %i.cb, 3                 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bo, i64 72
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bo, i64 80
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !248
  %i.cg = load ptr, ptr %i.cd, align 8, !tbaa !218 ; 2 uses
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %.not23.i = icmp eq i64 %i.cb, %i.cj
  br i1 %.not23.i, label %.preheader30.i, label %.loopexit

.preheader30.i:                                   ; preds = %bb.j
  %i.ck = trunc i64 %i.cc to i32
  %i.cl = icmp sgt i32 %i.ck, 0
  br i1 %i.cl, label %.lr.ph34.preheader.i, label %_ZNK5Ipopt15DependentResultIdE19DependentsIdenticalERKSt6vectorIPKNS_12TaggedObjectESaIS5_EERKS2_IdSaIdEE.exit

.lr.ph34.preheader.i:                             ; preds = %.preheader30.i
  %wide.trip.count42.i = and i64 %i.cc, 2147483647
  br label %.lr.ph34.i

bb.k:                                             ; preds = %.lr.ph34.i
  %indvars.iv.next40.i = add nuw nsw i64 %indvars.iv39.i, 1 ; 2 uses
  %exitcond43.not.i = icmp eq i64 %indvars.iv.next40.i, %wide.trip.count42.i
  br i1 %exitcond43.not.i, label %_ZNK5Ipopt15DependentResultIdE19DependentsIdenticalERKSt6vectorIPKNS_12TaggedObjectESaIS5_EERKS2_IdSaIdEE.exit, label %.lr.ph34.i, !llvm.loop !605

.lr.ph34.i:                                       ; preds = %bb.k, %.lr.ph34.preheader.i
  %indvars.iv39.i = phi i64 [ 0, %.lr.ph34.preheader.i ], [ %indvars.iv.next40.i, %bb.k ] ; 3 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv39.i
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !147
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv39.i
  %i.cp = load double, ptr %i.co, align 8, !tbaa !147
  %i.cq = fcmp oeq double %i.cn, %i.cp
  br i1 %i.cq, label %bb.k, label %.loopexit

_ZNK5Ipopt15DependentResultIdE19DependentsIdenticalERKSt6vectorIPKNS_12TaggedObjectESaIS5_EERKS2_IdSaIdEE.exit: ; preds = %.preheader30.i, %bb.k, %.preheader.i.loopexit.us, %bb.i
  %i.cr = phi ptr [ %i.ac, %bb.i ], [ %i.ac, %.preheader.i.loopexit.us ], [ %i.bo, %bb.k ], [ %i.bo, %.preheader30.i ]
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 40
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !147
  store double %i.ct, ptr %1, align 8, !tbaa !147
  br label %.loopexit17

.loopexit:                                        ; preds = %.lr.ph34.i, %.lr.ph.split, %bb.j
  %.sroa.010.0 = load ptr, ptr %.sroa.010.022, align 8, !tbaa !224 ; 2 uses
  %.not15 = icmp eq ptr %.sroa.010.0, %i.j
  br i1 %.not15, label %.loopexit17, label %.lr.ph.split, !llvm.loop !606

.loopexit17:                                      ; preds = %.loopexit, %.loopexit.us, %bb.b, %_ZNK5Ipopt13CachedResultsIdE25CleanupInvalidatedResultsEv.exit, %_ZNK5Ipopt15DependentResultIdE19DependentsIdenticalERKSt6vectorIPKNS_12TaggedObjectESaIS5_EERKS2_IdSaIdEE.exit, %bb.a
  %.05 = phi i1 [ false, %bb.a ], [ true, %_ZNK5Ipopt15DependentResultIdE19DependentsIdenticalERKSt6vectorIPKNS_12TaggedObjectESaIS5_EERKS2_IdSaIdEE.exit ], [ false, %_ZNK5Ipopt13CachedResultsIdE25CleanupInvalidatedResultsEv.exit ], [ false, %.loopexit.us ], [ false, %bb.b ], [ false, %.loopexit ]
  ret i1 %.05
}

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Ipopt13CachedResultsIdE15AddCachedResultERKdRKSt6vectorIPKNS_12TaggedObjectESaIS7_EERKS4_IdSaIdEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !221  ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNK5Ipopt13CachedResultsIdE25CleanupInvalidatedResultsEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !224  ; 2 uses
  %.not910.i = icmp eq ptr %i.c, %i.b
  br i1 %.not910.i, label %_ZNK5Ipopt13CachedResultsIdE25CleanupInvalidatedResultsEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.d
  %i.d = phi ptr [ %i.q, %bb.d ], [ %i.b, %bb.b ] ; 2 uses
  %.sroa.06.011.i = phi ptr [ %i.j, %bb.d ], [ %i.c, %bb.b ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.06.011.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !226  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i8, ptr %i.g, align 8, !tbaa !241, !range !102, !noundef !103
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = load ptr, ptr %.sroa.06.011.i, align 8, !tbaa !224 ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !245
  %i.m = add i64 %i.l, -1
  store i64 %i.m, ptr %i.k, align 8, !tbaa !245
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.011.i) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.06.011.i, i64 noundef 24) #21
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !44
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(96) %i.f) #20, !inline_history !30
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !221
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %i.q = phi ptr [ %.pre.i, %bb.c ], [ %i.d, %.lr.ph.i ] ; 2 uses
  %.not9.i = icmp eq ptr %i.j, %i.q
  br i1 %.not9.i, label %_ZNK5Ipopt13CachedResultsIdE25CleanupInvalidatedResultsEv.exit, label %.lr.ph.i, !llvm.loop !31

_ZNK5Ipopt13CachedResultsIdE25CleanupInvalidatedResultsEv.exit: ; preds = %bb.d, %bb.a, %bb.b
  %i.r = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #23 ; 3 uses
  invoke void @_ZN5Ipopt15DependentResultIdEC2ERKdRKSt6vectorIPKNS_12TaggedObjectESaIS7_EERKS4_IdSaIdEE(ptr noundef nonnull align 8 dereferenceable(96) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %_ZNK5Ipopt13CachedResultsIdE25CleanupInvalidatedResultsEv.exit
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !221  ; 3 uses
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %bb.f, label %._crit_edge

._crit_edge:                                      ; preds = %bb.e
  %.pre = load ptr, ptr %i.s, align 8, !tbaa !224
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.t = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23 ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.t, ptr %i.u, align 8, !tbaa !607
  store ptr %i.t, ptr %i.t, align 8, !tbaa !224
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 0, ptr %i.v, align 8, !tbaa !608
  store ptr %i.t, ptr %i.a, align 8, !tbaa !221
  br label %bb.h

bb.g:                                             ; preds = %_ZNK5Ipopt13CachedResultsIdE25CleanupInvalidatedResultsEv.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 96) #21
  resume { ptr, i32 } %i.w

bb.h:                                             ; preds = %._crit_edge, %bb.f
  %i.x = phi ptr [ %i.t, %bb.f ], [ %.pre, %._crit_edge ]
  %i.y = phi ptr [ %i.t, %bb.f ], [ %i.s, %._crit_edge ]
  %i.z = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr %i.r, ptr %i.aa, align 8, !tbaa !226
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef %i.x) #20
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !245
  %i.ad = add i64 %i.ac, 1
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !245
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !609 ; 2 uses
  %i.ag = icmp sgt i32 %i.af, -1
  br i1 %i.ag, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !221 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !245 ; 2 uses
  %i.ak = zext nneg i32 %i.af to i64
  %i.al = icmp ugt i64 %i.aj, %i.ak
  br i1 %i.al, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !607 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !226 ; 3 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !44
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(96) %i.ap) #20
  %.pre5 = load ptr, ptr %i.a, align 8, !tbaa !221 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre5, i64 8
  %.pre6 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !607
  %.phi.trans.insert7 = getelementptr inbounds nuw i8, ptr %.pre5, i64 16
  %.pre8 = load i64, ptr %.phi.trans.insert7, align 8, !tbaa !245
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.au = phi i64 [ %.pre8, %bb.k ], [ %i.aj, %bb.j ]
  %i.av = phi ptr [ %.pre6, %bb.k ], [ %i.an, %bb.j ] ; 2 uses
  %i.aw = phi ptr [ %.pre5, %bb.k ], [ %i.ah, %bb.j ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = add i64 %i.au, -1
  store i64 %i.ay, ptr %i.ax, align 8, !tbaa !245
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef 24) #21
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.l, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Ipopt15DependentResultIdEC2ERKdRKSt6vectorIPKNS_12TaggedObjectESaIS7_EERKS4_IdSaIdEE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Ipopt15DependentResultIdEE, i64 16), ptr %0, align 8, !tbaa !44
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.b, align 8, !tbaa !241
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load double, ptr %1, align 8, !tbaa !147
  store double %i.d, ptr %i.c, align 8, !tbaa !611
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !214  ; 2 uses
  %i.h = load ptr, ptr %2, align 8, !tbaa !212    ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %i.l = ashr exact i64 %i.k, 3                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, 2305843009213693951
  br i1 %i.m, label %bb.b, label %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.65) #22
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.g, %i.h
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i
  %i.n = ashr exact i64 %i.k, 1
  %i.o = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #23
          to label %.noexc21 unwind label %bb.h   ; 4 uses

.noexc21:                                         ; preds = %bb.c
  store ptr %i.o, ptr %i.e, align 8, !tbaa !247
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.l
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.p, ptr %i.q, align 8, !tbaa !249
  store i32 0, ptr %i.o, align 4, !tbaa !88
  %i.r = getelementptr i8, ptr %i.o, i64 4        ; 3 uses
  %i.s = add nsw i64 %i.l, -1                     ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc21
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.s, 2   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.r, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !88
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i

_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc21
  %.0.i.i.i.i.i = phi ptr [ %i.u, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.r, %.noexc21 ], [ null, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.0.i.i.i.i.i, ptr %i.v, align 8, !tbaa !246
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
end_hunk_0
