inline.NumInlined: 851
inline.NumDeleted: 469
begin_hunk_0_@_ZN6duckdb16CSVBufferManager9GetBufferEm:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br i1 %.0, label %bb.j, label %bb.ah

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn25 = phi { ptr, i32 } [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.o) #20
  br label %bb.ah

bb.k:                                             ; preds = %bb.e
  store i8 0, ptr %i.d, align 8, !tbaa !165
  %i.u = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13CSVFileHandleESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.l unwind label %.loopexit.split-lp ; 3 uses

bb.l:                                             ; preds = %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.w = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10FileHandleESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.l
  invoke void @_ZN6duckdb10FileHandle5ResetEv(ptr noundef nonnull align 8 dereferenceable(80) %i.w)
          to label %bb.m unwind label %.loopexit.split-lp

bb.m:                                             ; preds = %.noexc
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 280
  store i8 0, ptr %i.x, align 8, !tbaa !89
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 272
  store i64 0, ptr %i.y, align 8, !tbaa !87
  invoke void @_ZN6duckdb16CSVBufferManager10InitializeEv(ptr noundef nonnull align 8 dereferenceable(257) %1)
          to label %bb.n unwind label %.loopexit.split-lp

.loopexit:                                        ; preds = %bb.q
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit.split-lp:                               ; preds = %bb.k, %bb.m, %bb.v, %bb.x, %bb.z, %bb.aa, %_ZN6duckdb9CSVBuffer5UnpinEv.exit, %bb.ad, %bb.ae, %bb.af, %bb.l, %.noexc, %bb.ab, %bb.ac
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.n:                                             ; preds = %bb.m, %bb.d, %bb.c, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !180
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !186
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = ashr exact i64 %i.af, 4
  %.not29 = icmp ult i64 %2, %i.ag
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %bb.t
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !165, !range !59, !noundef !60
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.ag

bb.q:                                             ; preds = %bb.o
  %i.ak = invoke noundef zeroext i1 @_ZN6duckdb16CSVBufferManager18ReadNextAndCacheItEv(ptr noundef nonnull align 8 dereferenceable(257) %1)
          to label %bb.r unwind label %.loopexit

bb.r:                                             ; preds = %bb.q
  br i1 %i.ak, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i8 1, ptr %i.ah, align 8, !tbaa !165
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.al = load ptr, ptr %i.aa, align 8, !tbaa !180
  %i.am = load ptr, ptr %i.z, align 8, !tbaa !186
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 4
  %.not = icmp ult i64 %2, %i.aq
  br i1 %.not, label %._crit_edge, label %bb.o, !llvm.loop !194

._crit_edge:                                      ; preds = %bb.t, %bb.n
  br i1 %i.c, label %_ZN6duckdb9CSVBuffer5UnpinEv.exit, label %bb.u

bb.u:                                             ; preds = %._crit_edge
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !161, !range !59, !noundef !60
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.au = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13CSVFileHandleESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.w unwind label %.loopexit.split-lp

bb.w:                                             ; preds = %bb.v
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 248
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !25, !range !59, !noundef !60
  %i.ax = trunc nuw i8 %i.aw to i1
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.az = load i8, ptr %i.ay, align 1, !range !59
  %i.ba = trunc nuw i8 %i.az to i1
  %or.cond = select i1 %i.ax, i1 true, i1 %i.ba
  br i1 %or.cond, label %bb.x, label %_ZN6duckdb9CSVBuffer5UnpinEv.exit

bb.x:                                             ; preds = %bb.w, %bb.u
  %i.bb = add i64 %2, -1                          ; 2 uses
  %i.bc = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_10shared_ptrINS_9CSVBufferELb1EEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 noundef %i.bb)
          to label %bb.y unwind label %.loopexit.split-lp

bb.y:                                             ; preds = %bb.x
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !101
  %.not26 = icmp eq ptr %i.bd, null
  br i1 %.not26, label %_ZN6duckdb9CSVBuffer5UnpinEv.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.be = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_10shared_ptrINS_9CSVBufferELb1EEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 noundef %i.bb)
          to label %bb.aa unwind label %.loopexit.split-lp

bb.aa:                                            ; preds = %bb.z
  %i.bf = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_9CSVBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.be)
          to label %bb.ab unwind label %.loopexit.split-lp

bb.ab:                                            ; preds = %bb.aa
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 72 ; 2 uses
  %i.bh = invoke noundef zeroext i1 @_ZNK6duckdb12BufferHandle7IsValidEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %.noexc20 unwind label %.loopexit.split-lp

.noexc20:                                         ; preds = %bb.ab
  br i1 %i.bh, label %bb.ac, label %_ZN6duckdb9CSVBuffer5UnpinEv.exit

bb.ac:                                            ; preds = %.noexc20
  invoke void @_ZN6duckdb12BufferHandle7DestroyEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %_ZN6duckdb9CSVBuffer5UnpinEv.exit unwind label %.loopexit.split-lp

_ZN6duckdb9CSVBuffer5UnpinEv.exit:                ; preds = %.noexc20, %bb.ac, %bb.w, %bb.y, %._crit_edge
  %i.bi = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_10shared_ptrINS_9CSVBufferELb1EEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 noundef %2)
          to label %bb.ad unwind label %.loopexit.split-lp

bb.ad:                                            ; preds = %_ZN6duckdb9CSVBuffer5UnpinEv.exit
  %i.bj = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_9CSVBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bi)
          to label %bb.ae unwind label %.loopexit.split-lp

bb.ae:                                            ; preds = %bb.ad
  %i.bk = invoke noundef nonnull align 8 dereferenceable(281) ptr @_ZNK6duckdb10unique_ptrINS_13CSVFileHandleESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.af unwind label %.loopexit.split-lp

bb.af:                                            ; preds = %bb.ae
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 192
  invoke void @_ZN6duckdb9CSVBuffer3PinERNS_13CSVFileHandleERb(ptr dead_on_unwind writable sret(%"class.duckdb::shared_ptr.94") align 8 %0, ptr noundef nonnull align 8 dereferenceable(96) %i.bj, ptr noundef nonnull align 8 dereferenceable(281) %i.bk, ptr noundef nonnull align 1 dereferenceable(1) %i.bl)
          to label %bb.ag unwind label %.loopexit.split-lp

bb.ag:                                            ; preds = %bb.af, %bb.p
  %i.bm = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #20 ; 0 uses
  ret void

bb.ah:                                            ; preds = %.loopexit, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %.pn25, %bb.j ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.bn = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #20 ; 0 uses
  resume { ptr, i32 } %.pn.pn

bb.ai:                                            ; preds = %bb.h
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0 align 2

declare void @_ZN6duckdb21InvalidInputExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #8

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13CSVFileHandle5ResetEv(ptr noundef nonnull align 8 dereferenceable(281) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_10FileHandleESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  tail call void @_ZN6duckdb10FileHandle5ResetEv(ptr noundef nonnull align 8 dereferenceable(80) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i8 0, ptr %i.c, align 8, !tbaa !89
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i64 0, ptr %i.d, align 8, !tbaa !87
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb16CSVBufferManager11ResetBufferEm(ptr noundef nonnull align 8 dereferenceable(257) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !72
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.e = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #20 ; 2 uses
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.e) #23
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !180
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !186
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 4                   ; 2 uses
  %.not = icmp ult i64 %1, %i.m
  br i1 %.not, label %bb.c, label %bb.bh

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.n = icmp eq i64 %1, 0
  br i1 %i.n, label %bb.d, label %bb.aa

bb.d:                                             ; preds = %bb.c
  %i.o = icmp ugt i64 %i.m, 1
  br i1 %i.o, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.p = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_10shared_ptrINS_9CSVBufferELb1EEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef 0)
          to label %bb.f unwind label %bb.y       ; 2 uses

bb.f:                                             ; preds = %bb.e
  store ptr null, ptr %i.p, align 8, !tbaa !191
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !77   ; 8 uses
  store ptr null, ptr %i.q, align 8, !tbaa !77
  %.not.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_9CSVBufferELb1EE5resetEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  %i.t = load atomic i64, ptr %i.s acquire, align 8 ; 2 uses
  %i.u = icmp eq i64 %i.t, 4294967297
  %i.v = trunc i64 %i.t to i32                    ; 2 uses
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.s, align 8, !tbaa !80
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 0, ptr %i.w, align 4, !tbaa !82
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !75
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #20, !inline_history !195
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !75
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #20, !inline_history !195
  br label %_ZN6duckdb10shared_ptrINS_9CSVBufferELb1EE5resetEv.exit

bb.i:                                             ; preds = %bb.g
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = add nsw i32 %i.v, -1
  store i32 %i.ae, ptr %i.s, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.af = atomicrmw volatile add ptr %i.s, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i.i = phi i32 [ %i.v, %bb.j ], [ %i.af, %bb.k ]
  %i.ag = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ag, label %bb.l, label %_ZN6duckdb10shared_ptrINS_9CSVBufferELb1EE5resetEv.exit, !prof !84

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #20
  br label %_ZN6duckdb10shared_ptrINS_9CSVBufferELb1EE5resetEv.exit

_ZN6duckdb10shared_ptrINS_9CSVBufferELb1EE5resetEv.exit: ; preds = %bb.f, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 216
  br label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE5eraseERKm.exit

_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE5eraseERKm.exit: ; preds = %_ZN6duckdb10shared_ptrINS_9CSVBufferELb1EE5resetEv.exit18, %_ZN6duckdb10shared_ptrINS_9CSVBufferELb1EE5resetEv.exit
  %storemerge8.in.in = phi ptr [ %i.a, %_ZN6duckdb10shared_ptrINS_9CSVBufferELb1EE5resetEv.exit ], [ %i.b, %_ZN6duckdb10shared_ptrINS_9CSVBufferELb1EE5resetEv.exit18 ]
  %storemerge8.in = load i64, ptr %storemerge8.in.in, align 8, !tbaa !72
  %storemerge8 = add i64 %storemerge8.in, 1       ; 6 uses
  store i64 %storemerge8, ptr %i.b, align 8, !tbaa !72
  %i.al = load i64, ptr %i.ai, align 8, !tbaa !196
  %.not.not.i.i = icmp eq i64 %i.al, 0
  br i1 %.not.not.i.i, label %.preheader, label %bb.n

.preheader:                                       ; preds = %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE5eraseERKm.exit, %bb.m
  %.sroa.06.0.in.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.m ], [ %i.ak, %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE5eraseERKm.exit ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !184 ; 3 uses
  %.not.i.i13 = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i13, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %.preheader
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !72
  %i.ao = icmp eq i64 %storemerge8, %i.an
  br i1 %i.ao, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit, label %.preheader, !llvm.loop !197

bb.n:                                             ; preds = %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE5eraseERKm.exit
  %i.ap = load i64, ptr %i.aj, align 8, !tbaa !167 ; 2 uses
  %i.aq = urem i64 %storemerge8, %i.ap            ; 2 uses
  %i.ar = load ptr, ptr %i.ah, align 8, !tbaa !166
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.aq
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !198 ; 2 uses
  %.not.i.i.i.i12 = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i12, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !184 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !72
  %i.ax = icmp eq i64 %storemerge8, %i.aw
  br i1 %i.ax, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit, label %.lr.ph.i.i.i.i

bb.p:                                             ; preds = %bb.q
  %i.ay = icmp eq i64 %storemerge8, %i.bb
  br i1 %i.ay, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit, label %.lr.ph.i.i.i.i, !llvm.loop !199

.lr.ph.i.i.i.i:                                   ; preds = %bb.o, %bb.p
  %.020.i.i.i.i = phi ptr [ %i.az, %bb.p ], [ %i.au, %bb.o ]
  %i.az = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !184 ; 3 uses
  %.not18.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not18.i.i.i.i, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !72 ; 2 uses
  %i.bc = urem i64 %i.bb, %i.ap
  %.not19.i.i.i.i = icmp eq i64 %i.bc, %i.aq
  br i1 %.not19.i.i.i.i, label %bb.p, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !199

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.q
  br label %.loopexit, !llvm.loop !199

_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit: ; preds = %bb.p, %bb.m, %bb.o
  %i.bd = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_10shared_ptrINS_9CSVBufferELb1EEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %storemerge8)
          to label %bb.r unwind label %bb.z       ; 2 uses

bb.r:                                             ; preds = %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit
  store ptr null, ptr %i.bd, align 8, !tbaa !191
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !77 ; 8 uses
  store ptr null, ptr %i.be, align 8, !tbaa !77
  %.not.i.i.i.i14 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i14, label %_ZN6duckdb10shared_ptrINS_9CSVBufferELb1EE5resetEv.exit18, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 4 uses
  %i.bh = load atomic i64, ptr %i.bg acquire, align 8 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 4294967297
  %i.bj = trunc i64 %i.bh to i32                  ; 2 uses
  br i1 %i.bi, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.bg, align 8, !tbaa !80
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  store i32 0, ptr %i.bk, align 4, !tbaa !82
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !75
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #20, !inline_history !195
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !75
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #20, !inline_history !195
  br label %_ZN6duckdb10shared_ptrINS_9CSVBufferELb1EE5resetEv.exit18

bb.u:                                             ; preds = %bb.s
  %i.br = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i.i15 = icmp eq i8 %i.br, 0
  br i1 %.not.i.i.i.i.i15, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bs = add nsw i32 %i.bj, -1
  store i32 %i.bs, ptr %i.bg, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i16

bb.w:                                             ; preds = %bb.u
  %i.bt = atomicrmw volatile add ptr %i.bg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i16

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i16: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i17 = phi i32 [ %i.bj, %bb.v ], [ %i.bt, %bb.w ]
  %i.bu = icmp eq i32 %.0.i.i.i.i.i.i17, 1
  br i1 %i.bu, label %bb.x, label %_ZN6duckdb10shared_ptrINS_9CSVBufferELb1EE5resetEv.exit18, !prof !84

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i16
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #20
  br label %_ZN6duckdb10shared_ptrINS_9CSVBufferELb1EE5resetEv.exit18

_ZN6duckdb10shared_ptrINS_9CSVBufferELb1EE5resetEv.exit18: ; preds = %bb.r, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i16, %bb.x
  %i.bv = invoke noundef i64 @_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKm(ptr noundef nonnull align 8 dereferenceable(56) %i.ah, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE5eraseERKm.exit unwind label %bb.z ; 0 uses

bb.y:                                             ; preds = %.thread, %bb.am, %bb.ad, %bb.ac, %bb.aa, %bb.e
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.z:                                             ; preds = %_ZN6duckdb10shared_ptrINS_9CSVBufferELb1EE5resetEv.exit18, %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %bb.bi

.loopexit:                                        ; preds = %bb.n, %.lr.ph.i.i.i.i, %.preheader, %..loopexit_crit_edge21.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %bb.bh

bb.aa:                                            ; preds = %bb.c
  %i.by = add i64 %1, -1
  %i.bz = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_10shared_ptrINS_9CSVBufferELb1EEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.by)
          to label %bb.ab unwind label %bb.y

bb.ab:                                            ; preds = %bb.aa
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !101
  %.not51 = icmp eq ptr %i.ca, null
  br i1 %.not51, label %bb.ac, label %.thread

bb.ac:                                            ; preds = %bb.ab
  %i.cb = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_10shared_ptrINS_9CSVBufferELb1EEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %1)
          to label %bb.ad unwind label %bb.y

bb.ad:                                            ; preds = %bb.ac
  %i.cc = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_9CSVBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cb)
          to label %bb.ae unwind label %bb.y

bb.ae:                                            ; preds = %bb.ad
  %i.cd = load i8, ptr %i.cc, align 8, !tbaa !7, !range !59, !noundef !60
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %bb.af, label %bb.am

bb.af:                                            ; preds = %bb.ae
  %i.cf = load ptr, ptr %i.f, align 8, !tbaa !186 ; 3 uses
  %i.cg = load ptr, ptr %i.g, align 8, !tbaa !180 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cg, %i.cf
  br i1 %.not.i.i.i, label %_ZN6duckdb6vectorINS_10shared_ptrINS_9CSVBufferELb1EEELb1ESaIS3_EE5clearEv.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.af, %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_9CSVBufferELb1EEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.cy, %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_9CSVBufferELb1EEEEvPT_.exit.i.i.i.i.i ], [ %i.cf, %bb.af ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !77 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_9CSVBufferELb1EEEEvPT_.exit.i.i.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 4 uses
  %i.ck = load atomic i64, ptr %i.cj acquire, align 8 ; 2 uses
  %i.cl = icmp eq i64 %i.ck, 4294967297
  %i.cm = trunc i64 %i.ck to i32                  ; 2 uses
  br i1 %i.cl, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 0, ptr %i.cj, align 8, !tbaa !80
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 12
  store i32 0, ptr %i.cn, align 4, !tbaa !82
  %i.co = load ptr, ptr %i.ci, align 8, !tbaa !75
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8
  tail call void %i.cq(ptr noundef nonnull align 8 dereferenceable(16) %i.ci) #20, !inline_history !200
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !75
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8
  tail call void %i.ct(ptr noundef nonnull align 8 dereferenceable(16) %i.ci) #20, !inline_history !200
  br label %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_9CSVBufferELb1EEEEvPT_.exit.i.i.i.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.cu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.cu, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cv = add nsw i32 %i.cm, -1
  store i32 %i.cv, ptr %i.cj, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.cw = atomicrmw volatile add ptr %i.cj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ak, %bb.aj
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.cm, %bb.aj ], [ %i.cw, %bb.ak ]
  %i.cx = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.cx, label %bb.al, label %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_9CSVBufferELb1EEEEvPT_.exit.i.i.i.i.i, !prof !84

bb.al:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ci) #20
  br label %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_9CSVBufferELb1EEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN6duckdb10shared_ptrINS0_9CSVBufferELb1EEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.al, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i, %bb.ah, %.lr.ph.i.i.i.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i19 = icmp eq ptr %i.cy, %i.cg
  br i1 %.not.i.i.i.i.i19, label %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_9CSVBufferELb1EEES3_EvT_S5_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !188

_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_9CSVBufferELb1EEES3_EvT_S5_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_9CSVBufferELb1EEEEvPT_.exit.i.i.i.i.i
  store ptr %i.cf, ptr %i.g, align 8, !tbaa !180
  br label %_ZN6duckdb6vectorINS_10shared_ptrINS_9CSVBufferELb1EEELb1ESaIS3_EE5clearEv.exit

_ZN6duckdb6vectorINS_10shared_ptrINS_9CSVBufferELb1EEELb1ESaIS3_EE5clearEv.exit: ; preds = %bb.af, %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_9CSVBufferELb1EEES3_EvT_S5_RSaIT0_E.exit.i.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !183 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.db, null
  br i1 %.not5.i.i.i, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE5clearEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN6duckdb6vectorINS_10shared_ptrINS_9CSVBufferELb1EEELb1ESaIS3_EE5clearEv.exit, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.dc, %.lr.ph.i.i.i ], [ %i.db, %_ZN6duckdb6vectorINS_10shared_ptrINS_9CSVBufferELb1EEELb1ESaIS3_EE5clearEv.exit ] ; 2 uses
  %i.dc = load ptr, ptr %.06.i.i.i, align 8, !tbaa !184 ; 2 uses
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i) #22
  %.not.i.i.i20 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i20, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE5clearEv.exit, label %.lr.ph.i.i.i, !llvm.loop !185

_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE5clearEv.exit: ; preds = %.lr.ph.i.i.i, %_ZN6duckdb6vectorINS_10shared_ptrINS_9CSVBufferELb1EEELb1ESaIS3_EE5clearEv.exit
  %i.dd = load ptr, ptr %i.cz, align 8, !tbaa !166
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.df = load i64, ptr %i.de, align 8, !tbaa !167
  %i.dg = shl i64 %i.df, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.dd, i8 0, i64 %i.dg, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.da, i8 0, i64 16, i1 false)
  br label %bb.bh

bb.am:                                            ; preds = %bb.ae
  %i.dh = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_10shared_ptrINS_9CSVBufferELb1EEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %1)
          to label %bb.an unwind label %bb.y      ; 2 uses

bb.an:                                            ; preds = %bb.am
  store ptr null, ptr %i.dh, align 8, !tbaa !191
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !77 ; 8 uses
  store ptr null, ptr %i.di, align 8, !tbaa !77
  %.not.i.i.i.i21 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i.i21, label %_ZN6duckdb10shared_ptrINS_9CSVBufferELb1EE5resetEv.exit25, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 4 uses
  %i.dl = load atomic i64, ptr %i.dk acquire, align 8 ; 2 uses
  %i.dm = icmp eq i64 %i.dl, 4294967297
  %i.dn = trunc i64 %i.dl to i32                  ; 2 uses
  br i1 %i.dm, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store i32 0, ptr %i.dk, align 8, !tbaa !80
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 12
  store i32 0, ptr %i.do, align 4, !tbaa !82
  %i.dp = load ptr, ptr %i.dj, align 8, !tbaa !75
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8
  tail call void %i.dr(ptr noundef nonnull align 8 dereferenceable(16) %i.dj) #20, !inline_history !195
  %i.ds = load ptr, ptr %i.dj, align 8, !tbaa !75
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.du = load ptr, ptr %i.dt, align 8
  tail call void %i.du(ptr noundef nonnull align 8 dereferenceable(16) %i.dj) #20, !inline_history !195
  br label %_ZN6duckdb10shared_ptrINS_9CSVBufferELb1EE5resetEv.exit25

bb.aq:                                            ; preds = %bb.ao
  %i.dv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i.i22 = icmp eq i8 %i.dv, 0
  br i1 %.not.i.i.i.i.i22, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dw = add nsw i32 %i.dn, -1
  store i32 %i.dw, ptr %i.dk, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i23

bb.as:                                            ; preds = %bb.aq
  %i.dx = atomicrmw volatile add ptr %i.dk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i23

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i23: ; preds = %bb.as, %bb.ar
  %.0.i.i.i.i.i.i24 = phi i32 [ %i.dn, %bb.ar ], [ %i.dx, %bb.as ]
  %i.dy = icmp eq i32 %.0.i.i.i.i.i.i24, 1
  br i1 %i.dy, label %bb.at, label %_ZN6duckdb10shared_ptrINS_9CSVBufferELb1EE5resetEv.exit25, !prof !84

bb.at:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i23
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dj) #20
  br label %_ZN6duckdb10shared_ptrINS_9CSVBufferELb1EE5resetEv.exit25

_ZN6duckdb10shared_ptrINS_9CSVBufferELb1EE5resetEv.exit25: ; preds = %bb.an, %bb.ap, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i23, %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 216
  br label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE5eraseERKm.exit43

_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE5eraseERKm.exit43: ; preds = %_ZN6duckdb10shared_ptrINS_9CSVBufferELb1EE5resetEv.exit42, %_ZN6duckdb10shared_ptrINS_9CSVBufferELb1EE5resetEv.exit25
  %storemerge.in.in = phi ptr [ %i.a, %_ZN6duckdb10shared_ptrINS_9CSVBufferELb1EE5resetEv.exit25 ], [ %i.c, %_ZN6duckdb10shared_ptrINS_9CSVBufferELb1EE5resetEv.exit42 ]
  %storemerge.in = load i64, ptr %storemerge.in.in, align 8, !tbaa !72
  %storemerge = add i64 %storemerge.in, 1         ; 6 uses
  store i64 %storemerge, ptr %i.c, align 8, !tbaa !72
  %i.ed = load i64, ptr %i.ea, align 8, !tbaa !196
  %.not.not.i.i26 = icmp eq i64 %i.ed, 0
  br i1 %.not.not.i.i26, label %.preheader62, label %bb.av

.preheader62:                                     ; preds = %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE5eraseERKm.exit43, %bb.au
  %.sroa.06.0.in.i.i34 = phi ptr [ %.sroa.06.0.i.i35, %bb.au ], [ %i.ec, %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE5eraseERKm.exit43 ]
  %.sroa.06.0.i.i35 = load ptr, ptr %.sroa.06.0.in.i.i34, align 8, !tbaa !184 ; 3 uses
  %.not.i.i36 = icmp eq ptr %.sroa.06.0.i.i35, null
  br i1 %.not.i.i36, label %.loopexit55, label %bb.au

bb.au:                                            ; preds = %.preheader62
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i35, i64 8
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !72
  %i.eg = icmp eq i64 %storemerge, %i.ef
  br i1 %i.eg, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit37, label %.preheader62, !llvm.loop !197

bb.av:                                            ; preds = %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE5eraseERKm.exit43
  %i.eh = load i64, ptr %i.eb, align 8, !tbaa !167 ; 2 uses
  %i.ei = urem i64 %storemerge, %i.eh             ; 2 uses
  %i.ej = load ptr, ptr %i.dz, align 8, !tbaa !166
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.ei
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !198 ; 2 uses
  %.not.i.i.i.i27 = icmp eq ptr %i.el, null
  br i1 %.not.i.i.i.i27, label %.loopexit55, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !184 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !72
  %i.ep = icmp eq i64 %storemerge, %i.eo
  br i1 %i.ep, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit37, label %.lr.ph.i.i.i.i28

bb.ax:                                            ; preds = %bb.ay
  %i.eq = icmp eq i64 %storemerge, %i.et
  br i1 %i.eq, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit37, label %.lr.ph.i.i.i.i28, !llvm.loop !199

.lr.ph.i.i.i.i28:                                 ; preds = %bb.aw, %bb.ax
  %.020.i.i.i.i29 = phi ptr [ %i.er, %bb.ax ], [ %i.em, %bb.aw ]
  %i.er = load ptr, ptr %.020.i.i.i.i29, align 8, !tbaa !184 ; 3 uses
  %.not18.i.i.i.i30 = icmp eq ptr %i.er, null
  br i1 %.not18.i.i.i.i30, label %.loopexit55, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph.i.i.i.i28
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = load i64, ptr %i.es, align 8, !tbaa !72 ; 2 uses
  %i.eu = urem i64 %i.et, %i.eh
  %.not19.i.i.i.i31 = icmp eq i64 %i.eu, %i.ei
  br i1 %.not19.i.i.i.i31, label %bb.ax, label %..loopexit_crit_edge21.i.i.i.i32, !llvm.loop !199

..loopexit_crit_edge21.i.i.i.i32:                 ; preds = %bb.ay
  br label %.loopexit55, !llvm.loop !199

_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit37: ; preds = %bb.ax, %bb.au, %bb.aw
  %i.ev = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_10shared_ptrINS_9CSVBufferELb1EEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %storemerge)
          to label %bb.az unwind label %bb.bg     ; 2 uses

bb.az:                                            ; preds = %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit37
  store ptr null, ptr %i.ev, align 8, !tbaa !191
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8 ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !77 ; 8 uses
  store ptr null, ptr %i.ew, align 8, !tbaa !77
  %.not.i.i.i.i38 = icmp eq ptr %i.ex, null
  br i1 %.not.i.i.i.i38, label %_ZN6duckdb10shared_ptrINS_9CSVBufferELb1EE5resetEv.exit42, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8 ; 4 uses
  %i.ez = load atomic i64, ptr %i.ey acquire, align 8 ; 2 uses
  %i.fa = icmp eq i64 %i.ez, 4294967297
  %i.fb = trunc i64 %i.ez to i32                  ; 2 uses
  br i1 %i.fa, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store i32 0, ptr %i.ey, align 8, !tbaa !80
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 12
  store i32 0, ptr %i.fc, align 4, !tbaa !82
  %i.fd = load ptr, ptr %i.ex, align 8, !tbaa !75
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8
  call void %i.ff(ptr noundef nonnull align 8 dereferenceable(16) %i.ex) #20, !inline_history !195
  %i.fg = load ptr, ptr %i.ex, align 8, !tbaa !75
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %i.fi = load ptr, ptr %i.fh, align 8
  call void %i.fi(ptr noundef nonnull align 8 dereferenceable(16) %i.ex) #20, !inline_history !195
  br label %_ZN6duckdb10shared_ptrINS_9CSVBufferELb1EE5resetEv.exit42

bb.bc:                                            ; preds = %bb.ba
  %i.fj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i.i39 = icmp eq i8 %i.fj, 0
  br i1 %.not.i.i.i.i.i39, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fk = add nsw i32 %i.fb, -1
  store i32 %i.fk, ptr %i.ey, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i40

bb.be:                                            ; preds = %bb.bc
  %i.fl = atomicrmw volatile add ptr %i.ey, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i40

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i40: ; preds = %bb.be, %bb.bd
  %.0.i.i.i.i.i.i41 = phi i32 [ %i.fb, %bb.bd ], [ %i.fl, %bb.be ]
  %i.fm = icmp eq i32 %.0.i.i.i.i.i.i41, 1
  br i1 %i.fm, label %bb.bf, label %_ZN6duckdb10shared_ptrINS_9CSVBufferELb1EE5resetEv.exit42, !prof !84

bb.bf:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i40
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ex) #20
  br label %_ZN6duckdb10shared_ptrINS_9CSVBufferELb1EE5resetEv.exit42

_ZN6duckdb10shared_ptrINS_9CSVBufferELb1EE5resetEv.exit42: ; preds = %bb.az, %bb.bb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i40, %bb.bf
  %i.fn = invoke noundef i64 @_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKm(ptr noundef nonnull align 8 dereferenceable(56) %i.dz, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE5eraseERKm.exit43 unwind label %bb.bg ; 0 uses

bb.bg:                                            ; preds = %_ZN6duckdb10shared_ptrINS_9CSVBufferELb1EE5resetEv.exit42, %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit37
  %i.fo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %bb.bi

.loopexit55:                                      ; preds = %bb.av, %.lr.ph.i.i.i.i28, %.preheader62, %..loopexit_crit_edge21.i.i.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %bb.bh

.thread:                                          ; preds = %bb.d, %bb.ab
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store ptr %i.fp, ptr %2, align 8, !tbaa !201
  %i.fq = invoke { ptr, i8 } @_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKmSF_NS1_10_AllocNodeISaINS1_10_Hash_nodeImLb0EEEEEEEESt4pairINS1_14_Node_iteratorImLb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %i.fp, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE6insertERKm.exit unwind label %bb.y ; 0 uses

_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE6insertERKm.exit: ; preds = %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.bh

end_hunk_0
begin_hunk_1_@_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKm:bb.a
bb.d:                                             ; preds = %bb.a
  %i.q = load i64, ptr %1, align 8, !tbaa !72     ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !167  ; 4 uses
  %i.t = urem i64 %i.q, %i.s                      ; 5 uses
  %i.u = load ptr, ptr %0, align 8, !tbaa !166    ; 4 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.t
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !198  ; 7 uses
  %.not.i24 = icmp eq ptr %i.w, null
  br i1 %.not.i24, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeERKm.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !184  ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !72
  %i.aa = icmp eq i64 %i.q, %i.z
  br i1 %i.aa, label %.loopexit.thread, label %.lr.ph.i

.loopexit.thread:                                 ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.t ; 2 uses
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !184 ; 2 uses
  %.not18.i2660 = icmp eq ptr %i.ac, null
  br i1 %.not18.i2660, label %._crit_edge.i.i, label %bb.i

bb.f:                                             ; preds = %bb.g
  %i.ad = icmp eq i64 %i.q, %i.ag
  br i1 %i.ad, label %.loopexit, label %.lr.ph.i, !llvm.loop !199

.lr.ph.i:                                         ; preds = %bb.e, %bb.f
  %.020.i = phi ptr [ %i.ae, %bb.f ], [ %i.x, %bb.e ] ; 2 uses
  %i.ae = load ptr, ptr %.020.i, align 8, !tbaa !184 ; 4 uses
  %.not18.i = icmp eq ptr %i.ae, null
  br i1 %.not18.i, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeERKm.exit.thread, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !72 ; 2 uses
  %i.ah = urem i64 %i.ag, %i.s
  %.not19.i = icmp eq i64 %i.ah, %i.t
  br i1 %.not19.i, label %bb.f, label %..loopexit_crit_edge21.i, !llvm.loop !199

..loopexit_crit_edge21.i:                         ; preds = %bb.g
  br label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeERKm.exit.thread, !llvm.loop !199

.loopexit:                                        ; preds = %bb.f, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeERKm.exit
  %i.ai = phi i64 [ %i.o, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeERKm.exit ], [ %i.s, %bb.f ] ; 2 uses
  %i.aj = phi ptr [ %.pre45, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeERKm.exit ], [ %i.w, %bb.f ] ; 3 uses
  %i.ak = phi ptr [ %.pre, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeERKm.exit ], [ %i.u, %bb.f ] ; 3 uses
  %.120 = phi ptr [ %i.m, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeERKm.exit ], [ %i.ae, %bb.f ] ; 6 uses
  %.018 = phi i64 [ %i.p, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeERKm.exit ], [ %i.t, %bb.f ] ; 3 uses
  %.016 = phi ptr [ %.01115.i.lcssa, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeERKm.exit ], [ %.020.i, %bb.f ] ; 7 uses
  %i.al = icmp eq ptr %.016, %i.aj
  %i.am = load ptr, ptr %.120, align 8, !tbaa !184 ; 3 uses
  %.not18.i26 = icmp eq ptr %i.am, null           ; 2 uses
  br i1 %i.al, label %bb.h, label %bb.m

bb.h:                                             ; preds = %.loopexit
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.018 ; 2 uses
  br i1 %.not18.i26, label %._crit_edge.i.i, label %bb.i

bb.i:                                             ; preds = %.loopexit.thread, %bb.h
  %i.ao = phi i64 [ %i.s, %.loopexit.thread ], [ %i.ai, %bb.h ]
  %i.ap = phi ptr [ %i.w, %.loopexit.thread ], [ %i.aj, %bb.h ] ; 2 uses
  %i.aq = phi ptr [ %i.u, %.loopexit.thread ], [ %i.ak, %bb.h ]
  %.1206270 = phi ptr [ %i.x, %.loopexit.thread ], [ %.120, %bb.h ] ; 2 uses
  %.0186369 = phi i64 [ %i.t, %.loopexit.thread ], [ %.018, %bb.h ]
  %.0166567 = phi ptr [ %i.w, %.loopexit.thread ], [ %.016, %bb.h ] ; 2 uses
  %i.ar = phi ptr [ %i.ab, %.loopexit.thread ], [ %i.an, %bb.h ]
  %i.as = phi ptr [ %i.ac, %.loopexit.thread ], [ %i.am, %bb.h ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !72
  %i.av = urem i64 %i.au, %i.ao                   ; 2 uses
  %.not9.i.i = icmp eq i64 %i.av, %.0186369
  br i1 %.not9.i.i, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseEmPNS1_15_Hash_node_baseEPNS1_10_Hash_nodeImLb0EEE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.av
  store ptr %i.ap, ptr %i.aw, align 8, !tbaa !198
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.loopexit.thread, %bb.j, %bb.h
  %i.ax = phi ptr [ %i.w, %.loopexit.thread ], [ %i.ap, %bb.j ], [ %i.aj, %bb.h ]
  %.1206271 = phi ptr [ %i.x, %.loopexit.thread ], [ %.1206270, %bb.j ], [ %.120, %bb.h ]
  %.0166568 = phi ptr [ %i.w, %.loopexit.thread ], [ %.0166567, %bb.j ], [ %.016, %bb.h ]
  %i.ay = phi ptr [ %i.ab, %.loopexit.thread ], [ %i.ar, %bb.j ], [ %i.an, %bb.h ]
  %i.az = phi ptr [ null, %.loopexit.thread ], [ %i.as, %bb.j ], [ null, %bb.h ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.ax
  br i1 %i.bb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !183
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i
  store ptr null, ptr %i.ay, align 8, !tbaa !198
  br label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseEmPNS1_15_Hash_node_baseEPNS1_10_Hash_nodeImLb0EEE.exit

bb.m:                                             ; preds = %.loopexit
  br i1 %.not18.i26, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseEmPNS1_15_Hash_node_baseEPNS1_10_Hash_nodeImLb0EEE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !72
  %i.be = urem i64 %i.bd, %i.ai                   ; 2 uses
  %.not17.i = icmp eq i64 %i.be, %.018
  br i1 %.not17.i, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseEmPNS1_15_Hash_node_baseEPNS1_10_Hash_nodeImLb0EEE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.be
  store ptr %.016, ptr %i.bf, align 8, !tbaa !198
  br label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseEmPNS1_15_Hash_node_baseEPNS1_10_Hash_nodeImLb0EEE.exit

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseEmPNS1_15_Hash_node_baseEPNS1_10_Hash_nodeImLb0EEE.exit: ; preds = %bb.i, %bb.l, %bb.m, %bb.n, %bb.o
  %.01664 = phi ptr [ %.0166567, %bb.i ], [ %.0166568, %bb.l ], [ %.016, %bb.m ], [ %.016, %bb.n ], [ %.016, %bb.o ]
  %.12061 = phi ptr [ %.1206270, %bb.i ], [ %.1206271, %bb.l ], [ %.120, %bb.m ], [ %.120, %bb.n ], [ %.120, %bb.o ] ; 2 uses
  %i.bg = load ptr, ptr %.12061, align 8, !tbaa !184
  store ptr %i.bg, ptr %.01664, align 8, !tbaa !184
  tail call void @_ZdlPv(ptr noundef nonnull %.12061) #22
  %i.bh = load i64, ptr %i.a, align 8, !tbaa !196
  %i.bi = add i64 %i.bh, -1
  store i64 %i.bi, ptr %i.a, align 8, !tbaa !196
  br label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeERKm.exit.thread

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeERKm.exit.thread: ; preds = %.lr.ph.i, %.lr.ph, %bb.d, %..loopexit_crit_edge21.i, %bb.b, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseEmPNS1_15_Hash_node_baseEPNS1_10_Hash_nodeImLb0EEE.exit
  %.1 = phi i64 [ 1, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseEmPNS1_15_Hash_node_baseEPNS1_10_Hash_nodeImLb0EEE.exit ], [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %.lr.ph ], [ 0, %..loopexit_crit_edge21.i ], [ 0, %.lr.ph.i ]
  ret i64 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKmSF_NS1_10_AllocNodeISaINS1_10_Hash_nodeImLb0EEEEEEEESt4pairINS1_14_Node_iteratorImLb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !196
  %.not.not = icmp eq i64 %i.b, 0
  br i1 %.not.not, label %bb.b, label %.thread34

.thread34:                                        ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8, !tbaa !72     ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !167  ; 2 uses
  %i.f = urem i64 %i.c, %i.e                      ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !166
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !198  ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %.critedge, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i64, ptr %1, align 8                ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.028.0.in = phi ptr [ %i.j, %bb.b ], [ %.sroa.028.0, %bb.d ]
  %.sroa.028.0 = load ptr, ptr %.sroa.028.0.in, align 8, !tbaa !184 ; 4 uses
  %.not = icmp eq ptr %.sroa.028.0, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.028.0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !72
  %i.n = icmp eq i64 %i.k, %i.m
  br i1 %i.n, label %_ZNKSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trImEEPNS1_10_Hash_nodeImLb0EEEmRKT_m.exit, label %bb.c, !llvm.loop !322

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !167
  %i.q = urem i64 %i.k, %i.p
  br label %.critedge

bb.f:                                             ; preds = %.thread34
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !184  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !72
  %i.u = icmp eq i64 %i.c, %i.t
  br i1 %i.u, label %_ZNKSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trImEEPNS1_10_Hash_nodeImLb0EEEmRKT_m.exit, label %.lr.ph.i.i

bb.g:                                             ; preds = %bb.h
  %i.v = icmp eq i64 %i.c, %i.y
  br i1 %i.v, label %_ZNKSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trImEEPNS1_10_Hash_nodeImLb0EEEmRKT_m.exit, label %.lr.ph.i.i, !llvm.loop !323

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.g
  %.020.i.i = phi ptr [ %i.w, %bb.g ], [ %i.r, %bb.f ]
  %i.w = load ptr, ptr %.020.i.i, align 8, !tbaa !184 ; 4 uses
  %.not18.i.i = icmp eq ptr %i.w, null
  br i1 %.not18.i.i, label %.critedge, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !72   ; 2 uses
  %i.z = urem i64 %i.y, %i.e
  %.not19.i.i = icmp eq i64 %i.z, %i.f
  br i1 %.not19.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i, !llvm.loop !323

..loopexit_crit_edge21.i.i:                       ; preds = %bb.h
  br label %.critedge, !llvm.loop !323

.critedge:                                        ; preds = %.lr.ph.i.i, %bb.e, %..loopexit_crit_edge21.i.i, %.thread34
  %i.aa = phi i64 [ %i.q, %bb.e ], [ %i.f, %.thread34 ], [ %i.f, %..loopexit_crit_edge21.i.i ], [ %i.f, %.lr.ph.i.i ]
  %i.ab = phi i64 [ %i.k, %bb.e ], [ %i.c, %.thread34 ], [ %i.c, %..loopexit_crit_edge21.i.i ], [ %i.c, %.lr.ph.i.i ] ; 2 uses
  %i.ac = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #21 ; 4 uses
  store ptr null, ptr %i.ac, align 8, !tbaa !184
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 %i.ab, ptr %i.ad, align 8, !tbaa !72
  %i.ae = invoke ptr @_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS1_10_Hash_nodeImLb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.aa, i64 noundef %i.ab, ptr noundef nonnull %i.ac, i64 noundef 1)
          to label %_ZNKSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trImEEPNS1_10_Hash_nodeImLb0EEEmRKT_m.exit unwind label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20: ; preds = %.critedge
  %i.af = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.ac) #22
  resume { ptr, i32 } %i.af

_ZNKSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trImEEPNS1_10_Hash_nodeImLb0EEEmRKT_m.exit: ; preds = %bb.g, %bb.d, %.critedge, %bb.f
  %.sroa.031.1 = phi ptr [ %.sroa.028.0, %bb.d ], [ %i.ae, %.critedge ], [ %i.r, %bb.f ], [ %i.w, %bb.g ]
  %.sroa.432.1 = phi i8 [ 0, %bb.d ], [ 1, %.critedge ], [ 0, %bb.f ], [ 0, %bb.g ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.031.1, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.432.1, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS1_10_Hash_nodeImLb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !324
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !167
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !196
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #20 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !324
  invoke void @__cxa_rethrow() #23
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #24
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !167
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !166    ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !198  ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !184
  store ptr %i.w, ptr %3, align 8, !tbaa !184
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !198
  store ptr %3, ptr %i.x, align 8, !tbaa !184
  br label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS1_10_Hash_nodeImLb0EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !183
  store ptr %i.z, ptr %3, align 8, !tbaa !184
  store ptr %3, ptr %i.y, align 8, !tbaa !183
  %i.aa = load ptr, ptr %3, align 8, !tbaa !184   ; 2 uses
  %.not11.i = icmp eq ptr %i.aa, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !167
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !72
  %i.ae = urem i64 %i.ad, %i.ac
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.ae
  store ptr %3, ptr %i.af, align 8, !tbaa !198
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.y, ptr %i.u, align 8, !tbaa !198
  br label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS1_10_Hash_nodeImLb0EEE.exit

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS1_10_Hash_nodeImLb0EEE.exit: ; preds = %bb.i, %bb.l
  %i.ag = load i64, ptr %i.f, align 8, !tbaa !196
  %i.ah = add i64 %i.ag, 1
  store i64 %i.ah, ptr %i.f, align 8, !tbaa !196
  ret ptr %3
}

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !84

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !325
  br label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeImLb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !84

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeImLb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #21 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeImLb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeImLb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !183  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !183
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %.02530 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %i.i = load ptr, ptr %.031, align 8, !tbaa !184 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.031, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !72
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !198  ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !183
  store ptr %i.o, ptr %.031, align 8, !tbaa !184
  store ptr %.031, ptr %i.g, align 8, !tbaa !183
  store ptr %i.g, ptr %i.m, align 8, !tbaa !198
  %i.p = load ptr, ptr %.031, align 8, !tbaa !184
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.02530
  store ptr %.031, ptr %i.q, align 8, !tbaa !198
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !184
  store ptr %i.r, ptr %.031, align 8, !tbaa !184
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !198
  store ptr %.031, ptr %i.s, align 8, !tbaa !184
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.02530, %bb.g ], [ %i.l, %bb.f ], [ %i.l, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !326

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !166    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i
end_hunk_1
