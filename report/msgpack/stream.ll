Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msgpack/original/stream?download=true
inline.NumInlined: 1021
inline.NumDeleted: 491
begin_hunk_0_@_ZN7msgpack2v113object_handleD2Ev:bb.a
.noexc.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.i
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !126  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.g, %i.k
  br i1 %.not.i.i.i.i.i, label %_ZN7msgpack2v14zone15finalizer_arrayD2Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #29
  unreachable

_ZN7msgpack2v14zone15finalizer_arrayD2Ev.exit.i.i.i: ; preds = %.noexc.i.i.i.i, %bb.b
  %i.n = phi ptr [ %i.f, %bb.b ], [ %i.k, %.noexc.i.i.i.i ]
  tail call void @free(ptr noundef %i.n) #26
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !116  ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not5.i.i.i.i, label %_ZNKSt14default_deleteIN7msgpack2v14zoneEEclEPS2_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN7msgpack2v14zone15finalizer_arrayD2Ev.exit.i.i.i, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i ], [ %i.p, %_ZN7msgpack2v14zone15finalizer_arrayD2Ev.exit.i.i.i ] ; 2 uses
  %i.q = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !120 ; 2 uses
  tail call void @free(ptr noundef nonnull %.06.i.i.i.i) #26
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZNKSt14default_deleteIN7msgpack2v14zoneEEclEPS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZNKSt14default_deleteIN7msgpack2v14zoneEEclEPS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZN7msgpack2v14zone15finalizer_arrayD2Ev.exit.i.i.i
  tail call void @free(ptr noundef nonnull %i.b) #26
  br label %_ZNSt10unique_ptrIN7msgpack2v14zoneESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN7msgpack2v14zoneESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN7msgpack2v14zoneEEclEPS2_.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v26parserINS0_8unpackerENS0_19zone_push_finalizerEE13expand_bufferEm(ptr noundef nonnull align 8 dereferenceable(112) %0, i64 noundef %1) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !95   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !97   ; 2 uses
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !94
  %i.h = load atomic i32, ptr %i.g seq_cst, align 4
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.c, label %thread-pre-split

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.k = load i8, ptr %i.j, align 8, !tbaa !124, !range !142, !noundef !59
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %thread-pre-split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.a, align 8, !tbaa !95
  %i.n = add i64 %i.m, -4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !96
  %i.q = add i64 %i.n, %i.p                       ; 2 uses
  store i64 %i.q, ptr %i.o, align 8, !tbaa !96
  store i64 4, ptr %i.a, align 8, !tbaa !95
  store i64 4, ptr %i.c, align 8, !tbaa !97
  %.not = icmp ult i64 %i.q, %1
  br i1 %.not, label %.thread, label %bb.ad

thread-pre-split:                                 ; preds = %bb.b, %bb.c
  %.pr = load i64, ptr %i.c, align 8, !tbaa !97
  %.pre.pre = load i64, ptr %i.a, align 8, !tbaa !95
  br label %bb.e

bb.e:                                             ; preds = %thread-pre-split, %bb.a
  %.pre = phi i64 [ %.pre.pre, %thread-pre-split ], [ %i.b, %bb.a ] ; 2 uses
  %i.r = phi i64 [ %.pr, %thread-pre-split ], [ %i.d, %bb.a ] ; 3 uses
  %i.s = icmp eq i64 %i.r, 4
  br i1 %i.s, label %.thread, label %bb.m

.thread:                                          ; preds = %bb.d, %bb.e
  %i.t = phi i64 [ 4, %bb.d ], [ %.pre, %bb.e ]   ; 3 uses
  %i.u = xor i64 %i.t, -1
  %i.v = icmp ugt i64 %1, %i.u
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.thread
  %i.w = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.w, align 8, !tbaa !66
  tail call void @__cxa_throw(ptr nonnull %i.w, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
  unreachable

bb.g:                                             ; preds = %.thread
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !96
  %i.z = add i64 %i.y, %i.t
  %i.aa = add i64 %i.t, %1                        ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %.040.in = phi i64 [ %i.z, %bb.g ], [ %.040, %bb.i ]
  %.040 = shl i64 %.040.in, 1                     ; 4 uses
  %i.ab = icmp ult i64 %.040, %i.aa
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.not53 = icmp sgt i64 %.040, 0
  br i1 %.not53, label %bb.h, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.242 = phi i64 [ %i.aa, %bb.i ], [ %.040, %bb.h ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !94
  %i.ae = tail call ptr @realloc(ptr noundef %i.ad, i64 noundef %.242) #33 ; 2 uses
  %.not54 = icmp eq ptr %i.ae, null
  br i1 %.not54, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.af = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.af, align 8, !tbaa !66
  tail call void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
  unreachable

bb.l:                                             ; preds = %bb.j
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !94
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !95
  %i.ah = sub i64 %.242, %i.ag
  store i64 %i.ah, ptr %i.x, align 8, !tbaa !96
  br label %bb.ad

bb.m:                                             ; preds = %bb.e
  %i.ai = sub i64 %.pre, %i.r                     ; 4 uses
  %i.aj = sub i64 -5, %i.ai
  %i.ak = icmp ugt i64 %1, %i.aj
  br i1 %i.ak, label %bb.n, label %.preheader

.preheader:                                       ; preds = %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.am = load i64, ptr %i.al, align 8, !tbaa !99
  %i.an = add i64 %1, 4
  %i.ao = add i64 %i.an, %i.ai                    ; 2 uses
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ap = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ap, align 8, !tbaa !66
  tail call void @__cxa_throw(ptr nonnull %i.ap, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
  unreachable

bb.o:                                             ; preds = %.preheader, %bb.p
  %.0 = phi i64 [ %i.ar, %bb.p ], [ %i.am, %.preheader ] ; 4 uses
  %i.aq = icmp ult i64 %.0, %i.ao
  br i1 %i.aq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.not51 = icmp sgt i64 %.0, 0
  %i.ar = shl nuw i64 %.0, 1
  br i1 %.not51, label %bb.o, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.2 = phi i64 [ %i.ao, %bb.p ], [ %.0, %bb.o ]  ; 2 uses
  %i.as = tail call noalias ptr @malloc(i64 noundef %.2) #31 ; 5 uses
  %.not52 = icmp eq ptr %i.as, null
  br i1 %.not52, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.at = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.at, align 8, !tbaa !66
  tail call void @__cxa_throw(ptr nonnull %i.at, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
  unreachable

bb.s:                                             ; preds = %bb.q
  store i32 1, ptr %i.as, align 4, !tbaa !101
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !94 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.au, ptr align 1 %i.ax, i64 %i.ai, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !124, !range !142, !noundef !59
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.t, label %bb.ab

bb.t:                                             ; preds = %bb.s
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !93
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !122 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !125 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 40 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !143
  %i.bi = icmp eq ptr %i.bf, %i.bh
  br i1 %i.bi, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 48 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !126 ; 3 uses
  %i.bl = ptrtoint ptr %i.bf to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm                    ; 2 uses
  %i.bo = icmp eq ptr %i.bf, %i.bk
  %2 = ashr exact i64 %i.bn, 3
  %.0.i.i.i.i = select i1 %i.bo, i64 4, i64 %2    ; 2 uses
  %3 = shl i64 %.0.i.i.i.i, 4
  %i.bp = tail call ptr @realloc(ptr noundef %i.bk, i64 noundef %3) #33 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i, label %bb.v, label %_ZN7msgpack2v14zone15finalizer_array11push_expandEPFvPvES3_.exit.i.i.i

bb.v:                                             ; preds = %bb.u
  %i.bq = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bq, align 8, !tbaa !66
  invoke void @__cxa_throw(ptr nonnull %i.bq, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
          to label %.noexc unwind label %bb.x

.noexc:                                           ; preds = %bb.v
  unreachable

_ZN7msgpack2v14zone15finalizer_array11push_expandEPFvPvES3_.exit.i.i.i: ; preds = %bb.u
  store ptr %i.bp, ptr %i.bj, align 8, !tbaa !126
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %.0.i.i.i.i
  store ptr %i.br, ptr %i.bg, align 8, !tbaa !143
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bn ; 2 uses
  store ptr @_ZN7msgpack2v16detail10decr_countEPv, ptr %i.bs, align 8, !tbaa !128
  br label %bb.aa

bb.w:                                             ; preds = %bb.t
  store ptr @_ZN7msgpack2v16detail10decr_countEPv, ptr %i.bf, align 8, !tbaa !128
  br label %bb.aa

bb.x:                                             ; preds = %bb.v
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  %i.bv = tail call ptr @__cxa_begin_catch(ptr %i.bu) #26 ; 0 uses
  tail call void @free(ptr noundef nonnull %i.as) #26
  invoke void @__cxa_rethrow() #28
          to label %bb.af unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.z unwind label %bb.ae

bb.z:                                             ; preds = %bb.y
  resume { ptr, i32 } %i.bw

bb.aa:                                            ; preds = %bb.w, %_ZN7msgpack2v14zone15finalizer_array11push_expandEPFvPvES3_.exit.i.i.i
  %.sink9.i.i.i = phi ptr [ %i.bf, %bb.w ], [ %i.bs, %_ZN7msgpack2v14zone15finalizer_array11push_expandEPFvPvES3_.exit.i.i.i ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sink9.i.i.i, i64 8
  store ptr %i.aw, ptr %i.bx, align 8, !tbaa !129
  %storemerge.i.i.i = getelementptr inbounds nuw i8, ptr %.sink9.i.i.i, i64 16
  store ptr %storemerge.i.i.i, ptr %i.be, align 8, !tbaa !125
  store i8 0, ptr %i.ay, align 8, !tbaa !124
  br label %_ZN7msgpack2v16detail10decr_countEPv.exit

bb.ab:                                            ; preds = %bb.s
  %i.by = atomicrmw add ptr %i.aw, i32 -1 seq_cst, align 4
  %i.bz = icmp eq i32 %i.by, 1
  br i1 %i.bz, label %bb.ac, label %_ZN7msgpack2v16detail10decr_countEPv.exit

bb.ac:                                            ; preds = %bb.ab
  tail call void @free(ptr noundef %i.aw) #26
  br label %_ZN7msgpack2v16detail10decr_countEPv.exit

_ZN7msgpack2v16detail10decr_countEPv.exit:        ; preds = %bb.ac, %bb.ab, %bb.aa
  store ptr %i.as, ptr %i.av, align 8, !tbaa !94
  %i.ca = add i64 %i.ai, 4                        ; 2 uses
  store i64 %i.ca, ptr %i.a, align 8, !tbaa !95
  %i.cb = sub i64 %.2, %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !96
  store i64 4, ptr %i.c, align 8, !tbaa !97
  br label %bb.ad

bb.ad:                                            ; preds = %bb.d, %_ZN7msgpack2v16detail10decr_countEPv.exit, %bb.l
  ret void

bb.ae:                                            ; preds = %bb.y
  %i.cd = landingpad { ptr, i32 }
          catch ptr null
  %i.ce = extractvalue { ptr, i32 } %i.cd, 0
  tail call void @__clang_call_terminate(ptr %i.ce) #29
  unreachable

bb.af:                                            ; preds = %bb.x
  unreachable
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #19

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #20

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7msgpack2v28unpacker4nextERNS_2v113object_handleERb(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !97   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !94
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load i64, ptr %i.e, align 8, !tbaa !95
  %i.g = tail call noundef i32 @_ZN7msgpack2v26detail7contextINS0_8unpackerEE7executeEPKcmRm(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.d, i64 noundef %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.h = load i64, ptr %i.a, align 8, !tbaa !97   ; 2 uses
  %i.i = icmp ugt i64 %i.h, %i.b
  br i1 %i.i, label %bb.b, label %_ZN7msgpack2v26parserINS0_8unpackerENS0_19zone_push_finalizerEE4nextEv.exit

bb.b:                                             ; preds = %bb.a
  %i.j = sub nuw i64 %i.h, %i.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !98
  %i.m = add i64 %i.j, %i.l
  store i64 %i.m, ptr %i.k, align 8, !tbaa !98
  br label %_ZN7msgpack2v26parserINS0_8unpackerENS0_19zone_push_finalizerEE4nextEv.exit

_ZN7msgpack2v26parserINS0_8unpackerENS0_19zone_push_finalizerEE4nextEv.exit: ; preds = %bb.a, %bb.b
  %i.n = icmp eq i32 %i.g, 2                      ; 2 uses
  br i1 %i.n, label %bb.c, label %bb.i

bb.c:                                             ; preds = %_ZN7msgpack2v26parserINS0_8unpackerENS0_19zone_push_finalizerEE4nextEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.p = load i8, ptr %i.o, align 8, !tbaa !124, !range !142, !noundef !59
  store i8 %i.p, ptr %2, align 1, !tbaa !144
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.r = tail call noundef ptr @_ZN7msgpack2v28unpacker12release_zoneEv(ptr noundef nonnull align 8 dereferenceable(256) %0)
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !121  ; 5 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !121
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN7msgpack2v14zoneESt14default_deleteIS2_EE5resetEPS2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !125  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 48 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !126  ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.u, %i.w
  br i1 %.not4.i.i.i.i.i.i, label %_ZN7msgpack2v14zone15finalizer_arrayD2Ev.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.d, %.noexc.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.x, %.noexc.i.i.i.i.i ], [ %i.u, %bb.d ] ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %.05.i.i.i.i.i.i, i64 -16 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !128
  %i.z = getelementptr inbounds i8, ptr %.05.i.i.i.i.i.i, i64 -8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !129
  invoke void %i.y(ptr noundef %i.aa)
          to label %.noexc.i.i.i.i.i unwind label %bb.e, !inline_history !0

.noexc.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !126 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.x, %i.ab
  br i1 %.not.i.i.i.i.i.i, label %_ZN7msgpack2v14zone15finalizer_arrayD2Ev.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #29
  unreachable

_ZN7msgpack2v14zone15finalizer_arrayD2Ev.exit.i.i.i.i: ; preds = %.noexc.i.i.i.i.i, %bb.d
  %i.ae = phi ptr [ %i.w, %bb.d ], [ %i.ab, %.noexc.i.i.i.i.i ]
  tail call void @free(ptr noundef %i.ae) #26
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !116 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not5.i.i.i.i.i, label %_ZNKSt14default_deleteIN7msgpack2v14zoneEEclEPS2_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN7msgpack2v14zone15finalizer_arrayD2Ev.exit.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %i.ag, %_ZN7msgpack2v14zone15finalizer_arrayD2Ev.exit.i.i.i.i ] ; 2 uses
  %i.ah = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !120 ; 2 uses
  tail call void @free(ptr noundef nonnull %.06.i.i.i.i.i) #26
  %.not.i.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt14default_deleteIN7msgpack2v14zoneEEclEPS2_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2

_ZNKSt14default_deleteIN7msgpack2v14zoneEEclEPS2_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZN7msgpack2v14zone15finalizer_arrayD2Ev.exit.i.i.i.i
  tail call void @free(ptr noundef nonnull %i.s) #26
  br label %_ZNSt10unique_ptrIN7msgpack2v14zoneESt14default_deleteIS2_EE5resetEPS2_.exit

_ZNSt10unique_ptrIN7msgpack2v14zoneESt14default_deleteIS2_EE5resetEPS2_.exit: ; preds = %bb.c, %_ZNKSt14default_deleteIN7msgpack2v14zoneEEclEPS2_.exit.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.aj, align 8, !tbaa !89
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ak, align 8, !tbaa !88
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !90 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !91
  %.not.i.i.i.i.i7 = icmp eq ptr %i.ao, %i.am
  br i1 %.not.i.i.i.i.i7, label %_ZN7msgpack2v26detail7contextINS0_8unpackerEE12unpack_stack5clearEv.exit.i.i, label %_ZSt8_DestroyIPN7msgpack2v26detail7contextINS1_8unpackerEE12unpack_stack10stack_elemES7_EvT_S9_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPN7msgpack2v26detail7contextINS1_8unpackerEE12unpack_stack10stack_elemES7_EvT_S9_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN7msgpack2v14zoneESt14default_deleteIS2_EE5resetEPS2_.exit
  store ptr %i.am, ptr %i.an, align 8, !tbaa !91
  br label %_ZN7msgpack2v26detail7contextINS0_8unpackerEE12unpack_stack5clearEv.exit.i.i

_ZN7msgpack2v26detail7contextINS0_8unpackerEE12unpack_stack5clearEv.exit.i.i: ; preds = %_ZSt8_DestroyIPN7msgpack2v26detail7contextINS1_8unpackerEE12unpack_stack10stack_elemES7_EvT_S9_RSaIT0_E.exit.i.i.i.i.i, %_ZNSt10unique_ptrIN7msgpack2v14zoneESt14default_deleteIS2_EE5resetEPS2_.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !109 ; 3 uses
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !105 ; 6 uses
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = ashr exact i64 %i.av, 3                 ; 2 uses
  %i.ax = icmp eq ptr %i.ar, %i.as
  br i1 %i.ax, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN7msgpack2v26detail7contextINS0_8unpackerEE12unpack_stack5clearEv.exit.i.i
  %i.ay = sub nuw nsw i64 1, %i.aw
  tail call void @_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 noundef %i.ay)
  %.pre.i.i.i = load ptr, ptr %i.ap, align 8, !tbaa !105
  br label %_ZN7msgpack2v26parserINS0_8unpackerENS0_19zone_push_finalizerEE5resetEv.exit

bb.g:                                             ; preds = %_ZN7msgpack2v26detail7contextINS0_8unpackerEE12unpack_stack5clearEv.exit.i.i
  %i.az = icmp ugt i64 %i.aw, 1
  br i1 %i.az, label %bb.h, label %_ZN7msgpack2v26parserINS0_8unpackerENS0_19zone_push_finalizerEE5resetEv.exit

bb.h:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.ar, %i.ba
  br i1 %.not.i.i.i1.i.i, label %_ZN7msgpack2v26parserINS0_8unpackerENS0_19zone_push_finalizerEE5resetEv.exit, label %_ZSt8_DestroyIPPN7msgpack2v26objectES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPPN7msgpack2v26objectES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i: ; preds = %bb.h
  store ptr %i.ba, ptr %i.aq, align 8, !tbaa !109
  br label %_ZN7msgpack2v26parserINS0_8unpackerENS0_19zone_push_finalizerEE5resetEv.exit

_ZN7msgpack2v26parserINS0_8unpackerENS0_19zone_push_finalizerEE5resetEv.exit: ; preds = %bb.f, %bb.g, %bb.h, %_ZSt8_DestroyIPPN7msgpack2v26objectES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i
  %i.bb = phi ptr [ %.pre.i.i.i, %bb.f ], [ %i.as, %bb.g ], [ %i.as, %bb.h ], [ %i.as, %_ZSt8_DestroyIPPN7msgpack2v26objectES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i ]
  store i32 0, ptr %i.ai, align 8
  store ptr %i.ai, ptr %i.bb, align 8, !tbaa !108
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %i.bc, align 8, !tbaa !98
  br label %bb.l

bb.i:                                             ; preds = %_ZN7msgpack2v26parserINS0_8unpackerENS0_19zone_push_finalizerEE4nextEv.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !121 ; 5 uses
  store ptr null, ptr %i.bd, align 8, !tbaa !121
  %.not.i.i8 = icmp eq ptr %i.be, null
  br i1 %.not.i.i8, label %_ZNSt10unique_ptrIN7msgpack2v14zoneESt14default_deleteIS2_EE5resetEPS2_.exit20, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !125 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 48 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !126 ; 2 uses
  %.not4.i.i.i.i.i.i9 = icmp eq ptr %i.bg, %i.bi
  br i1 %.not4.i.i.i.i.i.i9, label %_ZN7msgpack2v14zone15finalizer_arrayD2Ev.exit.i.i.i.i14, label %.lr.ph.i.i.i.i.i.i10

.lr.ph.i.i.i.i.i.i10:                             ; preds = %bb.j, %.noexc.i.i.i.i.i12
  %.05.i.i.i.i.i.i11 = phi ptr [ %i.bj, %.noexc.i.i.i.i.i12 ], [ %i.bg, %bb.j ] ; 2 uses
  %i.bj = getelementptr inbounds i8, ptr %.05.i.i.i.i.i.i11, i64 -16 ; 3 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !128
  %i.bl = getelementptr inbounds i8, ptr %.05.i.i.i.i.i.i11, i64 -8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !129
  invoke void %i.bk(ptr noundef %i.bm)
          to label %.noexc.i.i.i.i.i12 unwind label %bb.k, !inline_history !0

.noexc.i.i.i.i.i12:                               ; preds = %.lr.ph.i.i.i.i.i.i10
  %i.bn = load ptr, ptr %i.bh, align 8, !tbaa !126 ; 2 uses
  %.not.i.i.i.i.i.i13 = icmp eq ptr %i.bj, %i.bn
  br i1 %.not.i.i.i.i.i.i13, label %_ZN7msgpack2v14zone15finalizer_arrayD2Ev.exit.i.i.i.i14, label %.lr.ph.i.i.i.i.i.i10, !llvm.loop !1

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i10
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  tail call void @__clang_call_terminate(ptr %i.bp) #29
  unreachable

_ZN7msgpack2v14zone15finalizer_arrayD2Ev.exit.i.i.i.i14: ; preds = %.noexc.i.i.i.i.i12, %bb.j
  %i.bq = phi ptr [ %i.bi, %bb.j ], [ %i.bn, %.noexc.i.i.i.i.i12 ]
  tail call void @free(ptr noundef %i.bq) #26
  %i.br = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !116 ; 2 uses
  %.not5.i.i.i.i.i15 = icmp eq ptr %i.bs, null
  br i1 %.not5.i.i.i.i.i15, label %_ZNKSt14default_deleteIN7msgpack2v14zoneEEclEPS2_.exit.i.i19, label %.lr.ph.i.i.i.i.i16

.lr.ph.i.i.i.i.i16:                               ; preds = %_ZN7msgpack2v14zone15finalizer_arrayD2Ev.exit.i.i.i.i14, %.lr.ph.i.i.i.i.i16
  %.06.i.i.i.i.i17 = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i16 ], [ %i.bs, %_ZN7msgpack2v14zone15finalizer_arrayD2Ev.exit.i.i.i.i14 ] ; 2 uses
  %i.bt = load ptr, ptr %.06.i.i.i.i.i17, align 8, !tbaa !120 ; 2 uses
  tail call void @free(ptr noundef nonnull %.06.i.i.i.i.i17) #26
  %.not.i.i.i.i.i18 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i.i.i18, label %_ZNKSt14default_deleteIN7msgpack2v14zoneEEclEPS2_.exit.i.i19, label %.lr.ph.i.i.i.i.i16, !llvm.loop !2

_ZNKSt14default_deleteIN7msgpack2v14zoneEEclEPS2_.exit.i.i19: ; preds = %.lr.ph.i.i.i.i.i16, %_ZN7msgpack2v14zone15finalizer_arrayD2Ev.exit.i.i.i.i14
  tail call void @free(ptr noundef nonnull %i.be) #26
  br label %_ZNSt10unique_ptrIN7msgpack2v14zoneESt14default_deleteIS2_EE5resetEPS2_.exit20

_ZNSt10unique_ptrIN7msgpack2v14zoneESt14default_deleteIS2_EE5resetEPS2_.exit20: ; preds = %bb.i, %_ZNKSt14default_deleteIN7msgpack2v14zoneEEclEPS2_.exit.i.i19
  store i32 0, ptr %1, align 8
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt10unique_ptrIN7msgpack2v14zoneESt14default_deleteIS2_EE5resetEPS2_.exit20, %_ZN7msgpack2v26parserINS0_8unpackerENS0_19zone_push_finalizerEE5resetEv.exit
  ret i1 %i.n
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7msgpack2v28unpacker12release_zoneEv(ptr noundef nonnull align 8 dereferenceable(256) %0) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !124, !range !142, !noundef !59
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !121  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !94   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !125  ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !143
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !126  ; 3 uses
  %i.o = ptrtoint ptr %i.i to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p                       ; 2 uses
  %i.r = icmp eq ptr %i.i, %i.n
  %1 = ashr exact i64 %i.q, 3
  %.0.i.i.i.i = select i1 %i.r, i64 4, i64 %1     ; 2 uses
  %2 = shl i64 %.0.i.i.i.i, 4
  %i.s = tail call ptr @realloc(ptr noundef %i.n, i64 noundef %2) #33 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN7msgpack2v14zone15finalizer_array11push_expandEPFvPvES3_.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.t = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.t, align 8, !tbaa !66
  invoke void @__cxa_throw(ptr nonnull %i.t, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
          to label %.noexc.i unwind label %_ZN7msgpack2v28unpacker10flush_zoneEv.exit

.noexc.i:                                         ; preds = %bb.d
  unreachable

_ZN7msgpack2v14zone15finalizer_array11push_expandEPFvPvES3_.exit.i.i.i: ; preds = %bb.c
  store ptr %i.s, ptr %i.m, align 8, !tbaa !126
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %.0.i.i.i.i
  store ptr %i.u, ptr %i.j, align 8, !tbaa !143
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q ; 2 uses
  store ptr @_ZN7msgpack2v16detail10decr_countEPv, ptr %i.v, align 8, !tbaa !128
  %.pre.i = load ptr, ptr %i.f, align 8, !tbaa !94
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  store ptr @_ZN7msgpack2v16detail10decr_countEPv, ptr %i.i, align 8, !tbaa !128
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN7msgpack2v14zone15finalizer_array11push_expandEPFvPvES3_.exit.i.i.i
  %i.w = phi ptr [ %i.g, %bb.e ], [ %.pre.i, %_ZN7msgpack2v14zone15finalizer_array11push_expandEPFvPvES3_.exit.i.i.i ]
  %.sink9.i.i.i = phi ptr [ %i.i, %bb.e ], [ %i.v, %_ZN7msgpack2v14zone15finalizer_array11push_expandEPFvPvES3_.exit.i.i.i ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sink9.i.i.i, i64 8
  store ptr %i.g, ptr %i.x, align 8, !tbaa !129
  %storemerge.i.i.i = getelementptr inbounds nuw i8, ptr %.sink9.i.i.i, i64 16
  store ptr %storemerge.i.i.i, ptr %i.h, align 8, !tbaa !125
  store i8 0, ptr %i.a, align 8, !tbaa !124
  %i.y = atomicrmw add ptr %i.w, i32 1 seq_cst, align 4 ; 0 uses
  br label %bb.g

_ZN7msgpack2v28unpacker10flush_zoneEv.exit:       ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  %i.ab = tail call ptr @__cxa_begin_catch(ptr %i.aa) #26 ; 0 uses
  tail call void @__cxa_end_catch()
  br label %bb.k

bb.g:                                             ; preds = %bb.f, %bb.a
  %i.ac = tail call noalias dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #31 ; 10 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %bb.h, label %_ZN7msgpack2v14zonenwEm.exit

bb.h:                                             ; preds = %bb.g
  %i.ad = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ad, align 8, !tbaa !66
  tail call void @__cxa_throw(ptr nonnull %i.ad, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
  unreachable

_ZN7msgpack2v14zonenwEm.exit:                     ; preds = %bb.g
  store i64 8192, ptr %i.ac, align 8, !tbaa !115
  %i.ae = tail call noalias dereferenceable_or_null(8200) ptr @malloc(i64 noundef 8200) #31 ; 4 uses
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %bb.i, label %_ZNSt10unique_ptrIN7msgpack2v14zoneESt14default_deleteIS2_EE5resetEPS2_.exit

bb.i:                                             ; preds = %_ZN7msgpack2v14zonenwEm.exit
  %i.af = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.af, align 8, !tbaa !66
  invoke void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.i
  unreachable

_ZNSt10unique_ptrIN7msgpack2v14zoneESt14default_deleteIS2_EE5resetEPS2_.exit: ; preds = %_ZN7msgpack2v14zonenwEm.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store ptr %i.ae, ptr %i.ah, align 8, !tbaa !116
  store i64 8192, ptr %i.ag, align 8, !tbaa !117
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !118
  store ptr null, ptr %i.ae, align 8, !tbaa !120
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i8 0, i64 24, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !121
  store ptr %i.ac, ptr %i.al, align 8, !tbaa !121
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %i.ac, ptr %i.an, align 8, !tbaa !123
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr %i.ac, ptr %i.ao, align 8, !tbaa !122
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  tail call void @free(ptr noundef nonnull %i.ac) #26
  resume { ptr, i32 } %i.ap

bb.k:                                             ; preds = %_ZN7msgpack2v28unpacker10flush_zoneEv.exit, %_ZNSt10unique_ptrIN7msgpack2v14zoneESt14default_deleteIS2_EE5resetEPS2_.exit
  %.0 = phi ptr [ %i.am, %_ZNSt10unique_ptrIN7msgpack2v14zoneESt14default_deleteIS2_EE5resetEPS2_.exit ], [ null, %_ZN7msgpack2v28unpacker10flush_zoneEv.exit ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN7msgpack2v26detail7contextINS0_8unpackerEE7executeEPKcmRm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.msgpack::v2::detail::context<msgpack::v2::unpacker>::array_sv", align 8 ; 4 uses
  %5 = alloca %"struct.msgpack::v2::detail::context<msgpack::v2::unpacker>::array_ev", align 8 ; 4 uses
  %6 = alloca %"struct.msgpack::v2::detail::context<msgpack::v2::unpacker>::map_sv", align 8 ; 4 uses
  %7 = alloca %"struct.msgpack::v2::detail::context<msgpack::v2::unpacker>::map_ev", align 8 ; 4 uses
  %8 = alloca %"struct.msgpack::v2::detail::context<msgpack::v2::unpacker>::array_sv", align 8 ; 4 uses
  %9 = alloca %"struct.msgpack::v2::detail::context<msgpack::v2::unpacker>::array_ev", align 8 ; 4 uses
  %10 = alloca %"struct.msgpack::v2::detail::context<msgpack::v2::unpacker>::array_sv", align 8 ; 4 uses
  %11 = alloca %"struct.msgpack::v2::detail::context<msgpack::v2::unpacker>::array_ev", align 8 ; 4 uses
  %12 = alloca %"struct.msgpack::v2::detail::context<msgpack::v2::unpacker>::map_sv", align 8 ; 4 uses
  %13 = alloca %"struct.msgpack::v2::detail::context<msgpack::v2::unpacker>::map_ev", align 8 ; 4 uses
  %14 = alloca %"struct.msgpack::v2::detail::context<msgpack::v2::unpacker>::map_sv", align 8 ; 4 uses
  %15 = alloca %"struct.msgpack::v2::detail::context<msgpack::v2::unpacker>::map_ev", align 8 ; 4 uses
  store ptr %1, ptr %0, align 8, !tbaa !145
  %i.a = load i64, ptr %3, align 8, !tbaa !49     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %i.a ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 59 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !146
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 2 uses
  %i.e = icmp samesign eq i64 %i.a, %2
  br i1 %i.e, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 32 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 123 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 17 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 27 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 54 uses
  %i.l = ptrtoint ptr %i.d to i64                 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.hf
  %i.m = phi ptr [ %i.auf, %bb.hf ], [ %i.b, %.preheader ] ; 6 uses
  %.0363 = phi ptr [ %.1364, %bb.hf ], [ null, %.preheader ] ; 2 uses
  %.0 = phi i1 [ %.23, %bb.hf ], [ false, %.preheader ]
  %i.n = load i32, ptr %i.f, align 8, !tbaa !89
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.c, label %bb.ak

bb.c:                                             ; preds = %bb.b
  %i.p = load i8, ptr %i.m, align 1, !tbaa !56    ; 10 uses
  %i.q = zext i8 %i.p to i64                      ; 2 uses
  %i.r = icmp sgt i8 %i.p, -1
  br i1 %i.r, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !147
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !108  ; 2 uses
  store i32 2, ptr %i.u, align 8, !tbaa !104
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 %i.q, ptr %i.v, align 8, !tbaa !56
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !146  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  store ptr %i.x, ptr %i.c, align 8, !tbaa !146
  %i.y = load ptr, ptr %i.j, align 8, !tbaa !148  ; 2 uses
  %i.z = load ptr, ptr %i.k, align 8, !tbaa !148  ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZN7msgpack2v26detail7contextINS0_8unpackerEE16after_visit_procEbRm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %bb.i
  %i.ab = phi ptr [ %i.ay, %bb.i ], [ %i.z, %bb.d ] ; 4 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -8 ; 5 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !151
  switch i32 %i.ad, label %bb.i [
    i32 0, label %bb.e
    i32 1, label %bb.f
    i32 2, label %bb.g
  ]

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.ae = load ptr, ptr %i.g, align 8, !tbaa !147
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -8 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !108
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !108
  %i.ai = getelementptr inbounds i8, ptr %i.ab, i64 -4 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !152
  %i.ak = add i32 %i.aj, -1                       ; 2 uses
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !152
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %.sink.split.i.i, label %.sink.split

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.am = load ptr, ptr %i.g, align 8, !tbaa !147
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !108
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store ptr %i.ap, ptr %i.an, align 8, !tbaa !108
  store i32 2, ptr %i.ac, align 4, !tbaa !151
  br label %.sink.split

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.aq = load ptr, ptr %i.g, align 8, !tbaa !147
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -8 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !108
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !108
  %i.au = getelementptr inbounds i8, ptr %i.ab, i64 -4 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !152
  %i.aw = add i32 %i.av, -1                       ; 2 uses
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !152
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %.sink.split.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 1, ptr %i.ac, align 4, !tbaa !151
  br label %.sink.split

.sink.split.i.i:                                  ; preds = %bb.g, %bb.e
  %.sink.i.i = phi ptr [ %i.af, %bb.e ], [ %i.ar, %bb.g ]
end_hunk_0
