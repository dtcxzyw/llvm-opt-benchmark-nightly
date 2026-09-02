Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/dl_sparse_table?download=true
inline.NumInlined: 1391
inline.NumDeleted: 558
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN14core_hashtableI18default_hash_entryImEN7datalog13entry_storage16offset_hash_procENS3_14offset_eq_procEE6removeERKm:bb.a
  br i1 %.not32, label %.loopexit, label %bb.f, !llvm.loop !223

.loopexit34:                                      ; preds = %bb.d, %bb.h
  %.2 = phi ptr [ %.143, %bb.h ], [ %.02941, %bb.d ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.2, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.r
  %spec.select = select i1 %i.bb, ptr %i.n, ptr %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %spec.select, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !59
  %i.be = icmp eq i32 %i.bd, 0
  %i.bf = getelementptr inbounds nuw i8, ptr %.2, i64 4 ; 2 uses
  br i1 %i.be, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.loopexit34
  store i32 0, ptr %i.bf, align 4, !tbaa !59
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !64
  %i.bi = add i32 %i.bh, -1
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !64
  br label %.loopexit

bb.k:                                             ; preds = %.loopexit34
  store i32 1, ptr %i.bf, align 4, !tbaa !59
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !65
  %i.bl = add i32 %i.bk, 1                        ; 3 uses
  store i32 %i.bl, ptr %i.bj, align 8, !tbaa !65
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !64
  %i.bo = add i32 %i.bn, -1                       ; 2 uses
  store i32 %i.bo, ptr %i.bm, align 4, !tbaa !64
  %i.bp = icmp ugt i32 %i.bl, %i.bo
  %i.bq = icmp ugt i32 %i.bl, 64
  %or.cond = and i1 %i.bq, %i.bp
  br i1 %or.cond, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN14core_hashtableI18default_hash_entryImEN7datalog13entry_storage16offset_hash_procENS3_14offset_eq_procEE22remove_deleted_entriesEv(ptr noundef nonnull align 8 dereferenceable(52) %0)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.i, %bb.f, %.preheader, %bb.j, %bb.l, %bb.k
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7datalog13entry_storage11resize_dataEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !50
  %i.b = icmp ugt i64 %1, -9
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 40) #27 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.c, align 8, !tbaa !67
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !69
  %i.f = load ptr, ptr %2, align 8, !tbaa !71     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !72   ; 3 uses
  %i.k = icmp ult i64 %i.j, 16
  call void @llvm.assume(i1 %i.k)
  %i.l = add nuw nsw i64 %i.j, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.l, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  store ptr %i.f, ptr %i.d, align 8, !tbaa !71
  %i.m = load i64, ptr %i.g, align 8, !tbaa !73
  store i64 %i.m, ptr %i.e, align 8, !tbaa !73
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !72
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.n = phi i64 [ %i.j, %bb.d ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.n, ptr %i.p, align 8, !tbaa !72
  store ptr %i.g, ptr %2, align 8, !tbaa !71
  store i64 0, ptr %i.o, align 8, !tbaa !72
  store i8 0, ptr %i.g, align 8, !tbaa !73
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #28
          to label %bb.k unwind label %bb.e

bb.e:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %2, align 8, !tbaa !71     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.g
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %bb.e
  %i.t = load i64, ptr %i.g, align 8, !tbaa !73
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.j

bb.f:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @__cxa_free_exception(ptr %i.c) #27
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.w = add nuw i64 %1, 8                        ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !49   ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_ZNK6vectorIcLb0EmE4sizeEv.exit.i.preheader, label %_ZNK6vectorIcLb0EmE4sizeEv.exit.thread.i

_ZNK6vectorIcLb0EmE4sizeEv.exit.thread.i:         ; preds = %bb.g
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 -8 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !37 ; 2 uses
  %.not15.i = icmp ugt i64 %i.w, %i.ab
  br i1 %.not15.i, label %_ZNK6vectorIcLb0EmE4sizeEv.exit.i.preheader, label %bb.h

_ZNK6vectorIcLb0EmE4sizeEv.exit.i.preheader:      ; preds = %bb.g, %_ZNK6vectorIcLb0EmE4sizeEv.exit.thread.i
  %.ph = phi ptr [ %i.y, %_ZNK6vectorIcLb0EmE4sizeEv.exit.thread.i ], [ null, %bb.g ]
  %.0.i16.i.ph = phi i64 [ %i.ab, %_ZNK6vectorIcLb0EmE4sizeEv.exit.thread.i ], [ 0, %bb.g ] ; 3 uses
  br label %_ZNK6vectorIcLb0EmE4sizeEv.exit.i

bb.h:                                             ; preds = %_ZNK6vectorIcLb0EmE4sizeEv.exit.thread.i
  store i64 %i.w, ptr %i.aa, align 8, !tbaa !37
  br label %_ZN6vectorIcLb0EmE6resizeEm.exit

_ZNK6vectorIcLb0EmE4sizeEv.exit.i:                ; preds = %_ZNK6vectorIcLb0EmE4sizeEv.exit.i.preheader, %_ZNK6vectorIcLb0EmE8capacityEv.exit.thread.i
  %i.ac = phi ptr [ %.pr.pre.i, %_ZNK6vectorIcLb0EmE8capacityEv.exit.thread.i ], [ %.ph, %_ZNK6vectorIcLb0EmE4sizeEv.exit.i.preheader ] ; 4 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %_ZNK6vectorIcLb0EmE8capacityEv.exit.thread.i, label %_ZNK6vectorIcLb0EmE8capacityEv.exit.i

_ZNK6vectorIcLb0EmE8capacityEv.exit.i:            ; preds = %_ZNK6vectorIcLb0EmE4sizeEv.exit.i
  %i.ae = getelementptr inbounds i8, ptr %i.ac, i64 -16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !37
  %i.ag = icmp ugt i64 %i.w, %i.af
  br i1 %i.ag, label %_ZNK6vectorIcLb0EmE8capacityEv.exit.thread.i, label %bb.i

_ZNK6vectorIcLb0EmE8capacityEv.exit.thread.i:     ; preds = %_ZNK6vectorIcLb0EmE8capacityEv.exit.i, %_ZNK6vectorIcLb0EmE4sizeEv.exit.i
  tail call void @_ZN6vectorIcLb0EmE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.x)
  %.pr.pre.i = load ptr, ptr %i.x, align 8, !tbaa !49
  br label %_ZNK6vectorIcLb0EmE4sizeEv.exit.i, !llvm.loop !0

bb.i:                                             ; preds = %_ZNK6vectorIcLb0EmE8capacityEv.exit.i
  %i.ah = getelementptr inbounds i8, ptr %i.ac, i64 -8
  store i64 %i.w, ptr %i.ah, align 8, !tbaa !37
  %.not1218.i = icmp samesign eq i64 %.0.i16.i.ph, %i.w
  br i1 %.not1218.i, label %_ZN6vectorIcLb0EmE6resizeEm.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.i
  %i.ai = getelementptr i8, ptr %i.ac, i64 %.0.i16.i.ph
  %i.aj = sub i64 %i.w, %.0.i16.i.ph
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ai, i8 0, i64 %i.aj, i1 false), !tbaa !73
  br label %_ZN6vectorIcLb0EmE6resizeEm.exit

_ZN6vectorIcLb0EmE6resizeEm.exit:                 ; preds = %bb.h, %bb.i, %.lr.ph.preheader.i
  ret void

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.f
  %.pn14 = phi { ptr, i32 } [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.v, %bb.f ]
  resume { ptr, i32 } %.pn14

bb.k:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZNK7datalog13entry_storage23get_size_estimate_bytesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNK6vectorIcLb0EmE8capacityEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !37
  br label %_ZNK6vectorIcLb0EmE8capacityEv.exit

_ZNK6vectorIcLb0EmE8capacityEv.exit:              ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.e, %bb.b ], [ 0, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load i32, ptr %i.f, align 8, !tbaa !55
  %1 = zext i32 %i.g to i64
  %2 = shl nuw nsw i64 %1, 4
  %3 = add i64 %2, %.0.i
  %4 = trunc i64 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef range(i32 1, 65) i32 @_ZN7datalog17get_domain_lengthEm(i64 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ugt i64 %0, 4294967295
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %0, 32                          ; 2 uses
  %i.c = trunc nuw i64 %i.b to i32                ; 2 uses
  %i.d = and i64 %0, 4294967295
  %i.e = icmp ne i64 %i.d, 0
  %i.f = icmp ne i64 %i.b, 4294967295
  %or.cond = and i1 %i.e, %i.f
  %i.g = add nuw i32 %i.c, 1
  br i1 %or.cond, label %.thread, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = trunc nuw i64 %0 to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.015 = phi i32 [ 0, %bb.c ], [ 32, %bb.b ]     ; 2 uses
  %.0 = phi i32 [ %i.h, %bb.c ], [ %i.c, %bb.b ]  ; 2 uses
  %i.i = icmp eq i32 %.0, 1
  br i1 %i.i, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.j = or disjoint i32 %.015, 1
  br label %bb.h

.thread:                                          ; preds = %bb.b, %bb.d
  %.022 = phi i32 [ %.0, %bb.d ], [ %i.g, %bb.b ] ; 2 uses
  %.01521 = phi i32 [ %.015, %bb.d ], [ 32, %bb.b ] ; 2 uses
  %i.k = icmp ugt i32 %.022, -2147483648
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.thread
  %i.l = add nuw nsw i32 %.01521, 32
  br label %bb.h

bb.g:                                             ; preds = %.thread
  %i.m = add i32 %.022, -1                        ; 2 uses
  %i.n = lshr i32 %i.m, 1
  %i.o = or i32 %i.n, %i.m                        ; 2 uses
  %i.p = lshr i32 %i.o, 2
  %i.q = or i32 %i.p, %i.o                        ; 2 uses
  %i.r = lshr i32 %i.q, 4
  %i.s = or i32 %i.r, %i.q                        ; 2 uses
  %i.t = lshr i32 %i.s, 8
  %i.u = or i32 %i.t, %i.s                        ; 2 uses
  %i.v = lshr i32 %i.u, 16
  %i.w = or i32 %i.v, %i.u
  %i.x = tail call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.w)
  %i.y = add nuw nsw i32 %i.x, %.01521
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %.1 = phi i32 [ %i.j, %bb.e ], [ %i.l, %bb.f ], [ %i.y, %bb.g ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7datalog12sparse_table13column_layoutC2ERKNS_15table_signatureE(ptr noundef nonnull align 8 dereferenceable(20) initializes((0, 8), (16, 20)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNK6vectorImLb0EjE4sizeEv.exit:
  store ptr null, ptr %0, align 8, !tbaa !76
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !82   ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !85
  %i.d = load ptr, ptr %1, align 8, !tbaa !86, !nonnull !52, !noundef !52
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !87   ; 3 uses
  %i.g = sub i32 %i.f, %i.c                       ; 2 uses
  %.not57 = icmp ne i32 %i.f, 0
  tail call void @llvm.assume(i1 %.not57)
  %i.h = zext i32 %i.g to i64
  %wide.trip.count = zext i32 %i.f to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %._crit_edge60
  %i.i = getelementptr inbounds i8, ptr %i.dr, i64 -4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !87   ; 2 uses
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.dr, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !89
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 28
  %i.q = load i32, ptr %i.p, align 4, !tbaa !90
  %i.r = add i32 %i.q, %i.o                       ; 3 uses
  %.biased.i = add i32 %i.r, 7
  %i.s = and i32 %.biased.i, -8                   ; 2 uses
  %.not.i = icmp eq i32 %i.s, %i.r
  br i1 %.not.i, label %.loopexit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge
  %i.t = sub i32 %i.s, %i.r
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.preheader.i
  %.02338.i = phi i32 [ %i.u, %bb.b ], [ %i.j, %.lr.ph.preheader.i ]
  %.03537.i = phi i32 [ %.1.i, %bb.b ], [ %i.t, %.lr.ph.preheader.i ] ; 3 uses
  %i.u = add i32 %.02338.i, -1                    ; 2 uses
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.dr, i64 %i.v ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 28 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !90   ; 4 uses
  %i.z = icmp ult i32 %i.y, 64
  br i1 %i.z, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph.i
  %i.aa = sub nuw nsw i32 64, %i.y
  %.sroa.speculated.i = tail call i32 @llvm.smin.i32(i32 %.03537.i, i32 %i.aa) ; 2 uses
  %i.ab = sub i32 %.03537.i, %.sroa.speculated.i
  %i.ac = add nsw i32 %.sroa.speculated.i, %i.y
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.lr.ph.i
  %.1.i = phi i32 [ %i.ab, %bb.a ], [ %.03537.i, %.lr.ph.i ] ; 3 uses
  %.0.i28 = phi i32 [ %i.ac, %bb.a ], [ %i.y, %.lr.ph.i ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !89
  %i.af = add i32 %i.ae, %.1.i                    ; 3 uses
  %i.ag = lshr i32 %i.af, 3
  %i.ah = and i32 %i.af, 7                        ; 2 uses
  %i.ai = icmp ugt i32 %.0.i28, 63
  %i.aj = zext nneg i32 %.0.i28 to i64
  %notmask.i.i = shl nsw i64 -1, %i.aj
  %i.ak = xor i64 %notmask.i.i, -1
  %i.al = select i1 %i.ai, i64 -1, i64 %i.ak      ; 2 uses
  %i.am = zext nneg i32 %i.ah to i64
  %i.an = shl i64 %i.al, %i.am
  %i.ao = xor i64 %i.an, -1
  store i32 %i.ag, ptr %i.w, align 8, !tbaa !87
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store i32 %i.ah, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !87
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %i.al, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !37
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 %i.ao, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !37
  store i32 %i.af, ptr %i.ad, align 8, !tbaa !87
  store i32 %.0.i28, ptr %i.x, align 4, !tbaa !87
  %.not28.i = icmp eq i32 %.1.i, 0
  br i1 %.not28.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !1

.lr.ph:                                           ; preds = %_ZNK6vectorImLb0EjE4sizeEv.exit, %._crit_edge60
  %i.ap = phi ptr [ null, %_ZNK6vectorImLb0EjE4sizeEv.exit ], [ %i.dr, %._crit_edge60 ] ; 7 uses
  %indvars.iv = phi i64 [ 0, %_ZNK6vectorImLb0EjE4sizeEv.exit ], [ %indvars.iv.next, %._crit_edge60 ] ; 3 uses
  %.01955 = phi i32 [ 0, %_ZNK6vectorImLb0EjE4sizeEv.exit ], [ %i.dw, %._crit_edge60 ] ; 3 uses
  %i.aq = load ptr, ptr %1, align 8, !tbaa !86
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !37 ; 4 uses
  %i.at = icmp ugt i64 %i.as, 4294967295
  br i1 %i.at, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.au = lshr i64 %i.as, 32                      ; 2 uses
  %i.av = trunc nuw i64 %i.au to i32              ; 2 uses
  %i.aw = and i64 %i.as, 4294967295
  %i.ax = icmp ne i64 %i.aw, 0
  %i.ay = icmp ne i64 %i.au, 4294967295
  %or.cond.i = and i1 %i.ax, %i.ay
  %i.az = add nuw i32 %i.av, 1
  br i1 %or.cond.i, label %.thread.i, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.ba = trunc nuw i64 %i.as to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.015.i = phi i32 [ 0, %bb.d ], [ 32, %bb.c ]   ; 2 uses
  %.0.i29 = phi i32 [ %i.ba, %bb.d ], [ %i.av, %bb.c ] ; 2 uses
  %i.bb = icmp eq i32 %.0.i29, 1
  br i1 %i.bb, label %bb.f, label %.thread.i

bb.f:                                             ; preds = %bb.e
  %i.bc = or disjoint i32 %.015.i, 1
  br label %_ZN7datalog17get_domain_lengthEm.exit

.thread.i:                                        ; preds = %bb.e, %bb.c
  %.022.i = phi i32 [ %.0.i29, %bb.e ], [ %i.az, %bb.c ] ; 2 uses
  %.01521.i = phi i32 [ %.015.i, %bb.e ], [ 32, %bb.c ] ; 2 uses
  %i.bd = icmp ugt i32 %.022.i, -2147483648
  br i1 %i.bd, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.thread.i
  %i.be = add nuw nsw i32 %.01521.i, 32
  br label %_ZN7datalog17get_domain_lengthEm.exit

bb.h:                                             ; preds = %.thread.i
  %i.bf = add i32 %.022.i, -1                     ; 2 uses
  %i.bg = lshr i32 %i.bf, 1
  %i.bh = or i32 %i.bg, %i.bf                     ; 2 uses
  %i.bi = lshr i32 %i.bh, 2
  %i.bj = or i32 %i.bi, %i.bh                     ; 2 uses
  %i.bk = lshr i32 %i.bj, 4
  %i.bl = or i32 %i.bk, %i.bj                     ; 2 uses
  %i.bm = lshr i32 %i.bl, 8
end_hunk_0
begin_hunk_1_@_ZN7datalog19sparse_table_plugin15negated_join_fnC2ERKNS_10table_baseERK7svectorIjjES8_S8_S8_:bb.a
  %i.bg = icmp eq ptr %i.ay, null
  br i1 %i.bg, label %_ZN6vectorIjLb0EjE6appendERKS0_.exit, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i, !llvm.loop !273

bb.i:                                             ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i.i
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.j:                                             ; preds = %bb.h
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.k:                                             ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit
  %i.bj = load ptr, ptr %3, align 8, !tbaa !123   ; 3 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !87
  %i.bm = icmp ult i32 %i.bl, %.0.i
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv ; 2 uses
  br i1 %i.bm, label %bb.l, label %bb.s

bb.l:                                             ; preds = %bb.k
  %i.bo = load ptr, ptr %i.a, align 8, !tbaa !123 ; 4 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bq = getelementptr inbounds i8, ptr %i.bo, i64 -4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !87 ; 2 uses
  %i.bs = getelementptr inbounds i8, ptr %i.bo, i64 -8
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !87
  %i.bu = icmp eq i32 %i.br, %i.bt
  br i1 %i.bu, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  invoke void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc27 unwind label %bb.r

.noexc27:                                         ; preds = %bb.n
  %.pre.i26 = load ptr, ptr %i.a, align 8, !tbaa !123 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i26, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !87
  %.pre45 = load ptr, ptr %3, align 8, !tbaa !123
  br label %bb.o

bb.o:                                             ; preds = %.noexc27, %bb.m
  %i.bv = phi ptr [ %.pre45, %.noexc27 ], [ %i.bj, %bb.m ]
  %i.bw = phi i32 [ %.pre2.i, %.noexc27 ], [ %i.br, %bb.m ] ; 2 uses
  %i.bx = phi ptr [ %.pre.i26, %.noexc27 ], [ %i.bo, %bb.m ] ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -4
  %i.bz = zext i32 %i.bw to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.bz
  %i.cb = load i32, ptr %i.bn, align 4, !tbaa !87
  store i32 %i.cb, ptr %i.ca, align 4, !tbaa !87
  %i.cc = add i32 %i.bw, 1
  store i32 %i.cc, ptr %i.by, align 4, !tbaa !87
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv
  %i.ce = load ptr, ptr %i.b, align 8, !tbaa !123 ; 4 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cg = getelementptr inbounds i8, ptr %i.ce, i64 -4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !87 ; 2 uses
  %i.ci = getelementptr inbounds i8, ptr %i.ce, i64 -8
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !87
  %i.ck = icmp eq i32 %i.ch, %i.cj
  br i1 %i.ck, label %bb.q, label %_ZN6vectorIjLb0EjE9push_backERKj.exit32

bb.q:                                             ; preds = %bb.p, %bb.o
  invoke void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %.noexc31 unwind label %bb.r

.noexc31:                                         ; preds = %bb.q
  %.pre.i28 = load ptr, ptr %i.b, align 8, !tbaa !123 ; 2 uses
  %.phi.trans.insert.i29 = getelementptr inbounds i8, ptr %.pre.i28, i64 -4
  %.pre2.i30 = load i32, ptr %.phi.trans.insert.i29, align 4, !tbaa !87
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit32

_ZN6vectorIjLb0EjE9push_backERKj.exit32:          ; preds = %bb.p, %.noexc31
  %i.cl = phi i32 [ %.pre2.i30, %.noexc31 ], [ %i.ch, %bb.p ] ; 2 uses
  %i.cm = phi ptr [ %.pre.i28, %.noexc31 ], [ %i.ce, %bb.p ] ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 -4
  %i.co = zext i32 %i.cl to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.co
  %i.cq = load i32, ptr %i.cd, align 4, !tbaa !87
  store i32 %i.cq, ptr %i.cp, align 4, !tbaa !87
  %i.cr = add i32 %i.cl, 1
  store i32 %i.cr, ptr %i.cn, align 4, !tbaa !87
  br label %bb.y

bb.r:                                             ; preds = %bb.x, %bb.u, %bb.q, %bb.n
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.s:                                             ; preds = %bb.k
  %i.ct = load ptr, ptr %i.c, align 8, !tbaa !123 ; 4 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cv = getelementptr inbounds i8, ptr %i.ct, i64 -4
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !87 ; 2 uses
  %i.cx = getelementptr inbounds i8, ptr %i.ct, i64 -8
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !87
  %i.cz = icmp eq i32 %i.cw, %i.cy
  br i1 %i.cz, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t, %bb.s
  invoke void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.noexc36 unwind label %bb.r

.noexc36:                                         ; preds = %bb.u
  %.pre.i33 = load ptr, ptr %i.c, align 8, !tbaa !123 ; 2 uses
  %.phi.trans.insert.i34 = getelementptr inbounds i8, ptr %.pre.i33, i64 -4
  %.pre2.i35 = load i32, ptr %.phi.trans.insert.i34, align 4, !tbaa !87
  %.pre = load ptr, ptr %3, align 8, !tbaa !123
  br label %bb.v

bb.v:                                             ; preds = %.noexc36, %bb.t
  %i.da = phi ptr [ %.pre, %.noexc36 ], [ %i.bj, %bb.t ]
  %i.db = phi i32 [ %.pre2.i35, %.noexc36 ], [ %i.cw, %bb.t ] ; 2 uses
  %i.dc = phi ptr [ %.pre.i33, %.noexc36 ], [ %i.ct, %bb.t ] ; 2 uses
  %i.dd = getelementptr inbounds i8, ptr %i.dc, i64 -4
  %i.de = zext i32 %i.db to i64
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.de
  %i.dg = load i32, ptr %i.bn, align 4, !tbaa !87
  store i32 %i.dg, ptr %i.df, align 4, !tbaa !87
  %i.dh = add i32 %i.db, 1
  store i32 %i.dh, ptr %i.dd, align 4, !tbaa !87
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv
  %i.dj = load ptr, ptr %i.d, align 8, !tbaa !123 ; 4 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dl = getelementptr inbounds i8, ptr %i.dj, i64 -4
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !87 ; 2 uses
  %i.dn = getelementptr inbounds i8, ptr %i.dj, i64 -8
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !87
  %i.dp = icmp eq i32 %i.dm, %i.do
  br i1 %i.dp, label %bb.x, label %_ZN6vectorIjLb0EjE9push_backERKj.exit42

bb.x:                                             ; preds = %bb.w, %bb.v
  invoke void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.noexc41 unwind label %bb.r

.noexc41:                                         ; preds = %bb.x
  %.pre.i38 = load ptr, ptr %i.d, align 8, !tbaa !123 ; 2 uses
  %.phi.trans.insert.i39 = getelementptr inbounds i8, ptr %.pre.i38, i64 -4
  %.pre2.i40 = load i32, ptr %.phi.trans.insert.i39, align 4, !tbaa !87
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit42

_ZN6vectorIjLb0EjE9push_backERKj.exit42:          ; preds = %bb.w, %.noexc41
  %i.dq = phi i32 [ %.pre2.i40, %.noexc41 ], [ %i.dm, %bb.w ] ; 2 uses
  %i.dr = phi ptr [ %.pre.i38, %.noexc41 ], [ %i.dj, %bb.w ] ; 2 uses
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 -4
  %i.dt = zext i32 %i.dq to i64
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.dt
  %i.dv = load i32, ptr %i.di, align 4, !tbaa !87
  store i32 %i.dv, ptr %i.du, align 4, !tbaa !87
  %i.dw = add i32 %i.dq, 1
  store i32 %i.dw, ptr %i.ds, align 4, !tbaa !87
  br label %bb.y

bb.y:                                             ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit42, %_ZN6vectorIjLb0EjE9push_backERKj.exit32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.dx = load ptr, ptr %2, align 8, !tbaa !123   ; 2 uses
  %i.dy = icmp eq ptr %i.dx, null
  br i1 %i.dy, label %.critedge, label %_ZNK6vectorIjLb0EjE4sizeEv.exit, !llvm.loop !274

_ZN6vectorIjLb0EjE6appendERKS0_.exit:             ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i, %.critedge
  ret void

bb.z:                                             ; preds = %bb.r, %bb.j
  %.pn = phi { ptr, i32 } [ %i.cs, %bb.r ], [ %i.bi, %bb.j ]
  tail call void @_ZN6vectorIjLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.e) #27
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.z ], [ %i.bh, %bb.i ]
  tail call void @_ZN6vectorIjLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.d) #27
  tail call void @_ZN6vectorIjLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.c) #27
  tail call void @_ZN6vectorIjLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #27
  tail call void @_ZN6vectorIjLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #27
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZNK7datalog12sparse_table23get_size_estimate_bytesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(184) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNK7datalog13entry_storage23get_size_estimate_bytesEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !37
  br label %_ZNK7datalog13entry_storage23get_size_estimate_bytesEv.exit

_ZNK7datalog13entry_storage23get_size_estimate_bytesEv.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi i64 [ %i.e, %bb.b ], [ 0, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.g = load i32, ptr %i.f, align 8, !tbaa !55
  %1 = zext i32 %i.g to i64
  %2 = shl nuw nsw i64 %1, 4
  %3 = add i64 %2, %.0.i.i
  %4 = trunc i64 %3 to i32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.i = load i32, ptr %i.h, align 8, !tbaa !107
  %i.j = shl i32 %i.i, 3
  %i.k = add i32 %i.j, %4
  ret i32 %i.k
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7datalog12sparse_table10deallocateEv(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !114, !nonnull !52, !align !53
  tail call void @_ZN7datalog19sparse_table_plugin7recycleEPNS_12sparse_tableE(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK7datalog12sparse_table5emptyEv(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.b = load i32, ptr %i.a, align 4, !tbaa !64
  %i.c = icmp eq i32 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK7datalog17tr_infrastructureINS_12table_traitsEE13base_ancestor10fast_emptyEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !67
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(36) %0)
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7datalog17tr_infrastructureINS_12table_traitsEE13base_ancestor12add_new_factERK7svectorImjE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !67
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK7datalog17tr_infrastructureINS_12table_traitsEE13base_ancestor8can_swapERKNS_10table_baseE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #6 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7datalog17tr_infrastructureINS_12table_traitsEE13base_ancestor4swapERNS_10table_baseE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.c = load i32, ptr %i.a, align 8, !tbaa !87
  %i.d = load i32, ptr %i.b, align 8, !tbaa !87
  store i32 %i.d, ptr %i.a, align 8, !tbaa !87
  store i32 %i.c, ptr %i.b, align 8, !tbaa !87
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZNK7datalog12sparse_table22get_size_estimate_rowsEv(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.b = load i32, ptr %i.a, align 4, !tbaa !64
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK7datalog12sparse_table16knows_exact_sizeEv(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret i1 true
}

declare void @_ZNK7datalog10table_base7displayERSo(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #10

declare noundef ptr @_ZNK7datalog10table_base10complementEP9func_declPKm(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef) unnamed_addr #10

declare noundef zeroext i1 @_ZN7datalog10table_base12suggest_factER7svectorImjE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7datalog10table_base11remove_factERK7svectorImjE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !86
  %i.b = load ptr, ptr %0, align 8, !tbaa !67
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %i.a)
  ret void
}

declare void @_ZN7datalog10table_base12remove_factsEjPK7svectorImjE(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef) unnamed_addr #10

declare void @_ZN7datalog10table_base12remove_factsEjPKm(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef) unnamed_addr #10

declare void @_ZNK7datalog10table_base10to_formulaERKNS_18relation_signatureER7obj_refI4expr11ast_managerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7datalog17tr_infrastructureINS_12table_traitsEE13plugin_object10initializeEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.a, align 8, !tbaa !97
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN7datalog19sparse_table_plugin20can_handle_signatureERKNS_15table_signatureE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !86     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZNK6vectorImLb0EjE5emptyEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 -4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !87
  %i.e = icmp ne i32 %i.d, 0
  br label %_ZNK6vectorImLb0EjE5emptyEv.exit

_ZNK6vectorImLb0EjE5emptyEv.exit:                 ; preds = %bb.a, %bb.b
  %i.f = phi i1 [ false, %bb.a ], [ %i.e, %bb.b ]
  ret i1 %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN7datalog17tr_infrastructureINS_12table_traitsEE13plugin_object20can_handle_signatureERKNS_15table_signatureEi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !67
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(12) %1)
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7datalog17tr_infrastructureINS_12table_traitsEE13plugin_object8mk_emptyERKNS_15table_signatureEi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !67
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(12) %1)
  ret ptr %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7datalog17tr_infrastructureINS_12table_traitsEE13plugin_object8mk_emptyERKNS_10table_baseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load i32, ptr %i.b, align 8, !tbaa !99
  %i.d = load ptr, ptr %0, align 8, !tbaa !67
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef ptr %i.f(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(12) %i.a, i32 noundef %i.c)
  ret ptr %i.g
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7datalog17tr_infrastructureINS_12table_traitsEE13plugin_object7mk_fullEP9func_declRKNS_15table_signatureE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(12) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !67
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(12) %2) ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !67
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(36) %i.d, ptr noundef %1, ptr noundef null)
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !67
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(36) %i.d)
  ret ptr %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7datalog17tr_infrastructureINS_12table_traitsEE13plugin_object7mk_fullEP9func_declRKNS_15table_signatureEi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(12) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !97
  %i.c = icmp eq i32 %3, %i.b
  %i.d = icmp eq i32 %3, -1
  %or.cond = or i1 %i.d, %i.c
  %i.e = load ptr, ptr %0, align 8, !tbaa !67     ; 2 uses
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(12) %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef ptr %i.j(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(12) %2, i32 noundef %3) ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !67
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef ptr %i.n(ptr noundef nonnull align 8 dereferenceable(36) %i.k, ptr noundef %1, ptr noundef null)
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !67
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
end_hunk_1
