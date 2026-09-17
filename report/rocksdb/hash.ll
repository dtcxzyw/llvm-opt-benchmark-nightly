Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/hash?download=true
inline.NumInlined: 250
inline.NumDeleted: 58
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN7rocksdb21GetSlicePartsNPHash64ERKNS_10SlicePartsEm:bb.a

._crit_edge.thread57:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit
  %i.aw = call noundef i64 @_ZN7rocksdb6Hash64EPKcmm(ptr noundef nonnull %i.am, i64 noundef %i.ba, i64 noundef %1)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.02033 = phi i64 [ %i.ba, %vec.epilog.scalar.ph ], [ %.02033.ph, %vec.epilog.scalar.ph.preheader ]
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %indvars.iv
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !16
  %i.ba = add i64 %i.az, %.02033                  ; 6 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, label %vec.epilog.scalar.ph, !llvm.loop !28

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, %bb.e, %bb.c
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.lr.ph36:                                         ; preds = %.lr.ph36.preheader, %bb.o
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %bb.o ], [ 0, %.lr.ph36.preheader ] ; 2 uses
  %i.bc = load ptr, ptr %0, align 8, !tbaa !34
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %indvars.iv38 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !15 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !16 ; 6 uses
  %i.bh = load i64, ptr %i.ai, align 8, !tbaa !21 ; 5 uses
  %i.bi = sub i64 9223372036854775807, %i.bh
  %i.bj = icmp ult i64 %i.bi, %i.bg
  br i1 %i.bj, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.i:                                             ; preds = %.lr.ph36
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #18
          to label %.noexc24 unwind label %.loopexit.split-lp

.noexc24:                                         ; preds = %bb.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %.lr.ph36
  %i.bk = add i64 %i.bh, %i.bg                    ; 3 uses
  %i.bl = load ptr, ptr %2, align 8, !tbaa !23    ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.ah
  br i1 %i.bm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.bn = icmp ult i64 %i.bh, 16
  call void @llvm.assume(i1 %i.bn)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.bo = load i64, ptr %i.ah, align 8, !tbaa !18
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.bp = phi i64 [ %i.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %.not.i.i = icmp ugt i64 %i.bk, %i.bp
  br i1 %.not.i.i, label %bb.n, label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %.not8.i.i = icmp eq i64 %i.bg, 0
  br i1 %.not8.i.i, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bh ; 2 uses
  %cond.i.i = icmp eq i64 %i.bg, 1
  br i1 %cond.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.br = load i8, ptr %i.be, align 1, !tbaa !18
  store i8 %i.br, ptr %i.bq, align 1, !tbaa !18
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bq, ptr align 1 %i.be, i64 %i.bg, i1 false)
  br label %bb.o

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.bh, i64 noundef 0, ptr noundef %i.be, i64 noundef %i.bg)
          to label %bb.o unwind label %.loopexit

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.j, %bb.n
  store i64 %i.bk, ptr %i.ai, align 8, !tbaa !21
  %i.bs = load ptr, ptr %2, align 8, !tbaa !23
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bk
  store i8 0, ptr %i.bt, align 1, !tbaa !18
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1 ; 2 uses
  %i.bu = load i32, ptr %i.a, align 8, !tbaa !32
  %i.bv = sext i32 %i.bu to i64
  %i.bw = icmp slt i64 %indvars.iv.next39, %i.bv
  br i1 %i.bw, label %.lr.ph36, label %._crit_edge, !llvm.loop !29

.loopexit:                                        ; preds = %bb.n
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp:                               ; preds = %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

._crit_edge:                                      ; preds = %bb.o
  %.pre41 = load ptr, ptr %2, align 8, !tbaa !23  ; 3 uses
  %i.bx = call noundef i64 @_ZN7rocksdb6Hash64EPKcmm(ptr noundef %.pre41, i64 noundef %i.ba, i64 noundef %1) ; 2 uses
  %i.by = icmp eq ptr %.pre41, %i.ah
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %._crit_edge.thread57, %._crit_edge
  %i.bz = phi i64 [ %i.aw, %._crit_edge.thread57 ], [ %i.bx, %._crit_edge ]
  %i.ca = phi ptr [ %i.am, %._crit_edge.thread57 ], [ %.pre41, %._crit_edge ]
  %i.cb = load i64, ptr %i.ah, align 8, !tbaa !18
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cc) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge, %._crit_edge.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  %i.cd = phi i64 [ %i.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26 ], [ %i.f, %._crit_edge.thread ], [ %i.bx, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret i64 %i.cd

bb.p:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.h
  %.pn = phi { ptr, i32 } [ %i.bb, %bb.h ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ce = load ptr, ptr %2, align 8, !tbaa !23    ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.ah
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.p
  %i.cg = load i64, ptr %i.ah, align 8, !tbaa !18
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ch) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  resume { ptr, i32 } %.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define { i64, i64 } @_ZN7rocksdb7Hash128EPKcmm(ptr nofree noundef readonly captures(address) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call { i64, i64 } @ROCKSDB_XXH3_128bits_withSeed(ptr noundef captures(address) %0, i64 noundef %1, i64 noundef %2) #21
  ret { i64, i64 } %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare { i64, i64 } @ROCKSDB_XXH3_128bits_withSeed(ptr noundef captures(address), i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define { i64, i64 } @_ZN7rocksdb7Hash128EPKcm(ptr nofree noundef readonly captures(address) %0, i64 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call { i64, i64 } @ROCKSDB_XXH3_128bits(ptr noundef captures(address) %0, i64 noundef %1) #21
  ret { i64, i64 } %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare { i64, i64 } @ROCKSDB_XXH3_128bits(ptr noundef captures(address), i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, argmem: readwrite) uwtable
define void @_ZN7rocksdb8Hash2x64EPKcmPmS2_(ptr nofree noundef readonly captures(address) %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call { i64, i64 } @ROCKSDB_XXH3_128bits(ptr noundef captures(address) %0, i64 noundef %1) #21 ; 2 uses
  %i.b = extractvalue { i64, i64 } %i.a, 0
  %i.c = extractvalue { i64, i64 } %i.a, 1
  store i64 %i.c, ptr %2, align 8, !tbaa !24
  store i64 %i.b, ptr %3, align 8, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, argmem: readwrite) uwtable
define void @_ZN7rocksdb8Hash2x64EPKcmmPmS2_(ptr nofree noundef readonly captures(address) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %4) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call { i64, i64 } @ROCKSDB_XXH3_128bits_withSeed(ptr noundef captures(address) %0, i64 noundef %1, i64 noundef %2) #21 ; 2 uses
  %i.b = extractvalue { i64, i64 } %i.a, 0
  %i.c = extractvalue { i64, i64 } %i.a, 1
  store i64 %i.c, ptr %3, align 8, !tbaa !24
  store i64 %i.b, ptr %4, align 8, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN7rocksdb17BijectiveHash2x64EmmmPmS0_(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %4) local_unnamed_addr #8 {
bb.a:
  %i.a = sub i64 6455697860950631241, %2
  %i.b = add i64 %2, -4466874330221494952
  %i.c = xor i64 %1, %i.a
  %i.d = xor i64 %i.c, %0                         ; 4 uses
  %i.e = and i64 %i.d, 4294967295
  %i.f = mul nuw i64 %i.e, 2246822535             ; 2 uses
  %i.g = and i64 %i.f, 4294967295
  %i.h = lshr i64 %i.d, 32
  %i.i = mul nuw i64 %i.h, 2246822535
  %i.j = mul i64 %i.d, 2654435761
  %i.k = add i64 %i.i, %i.j
  %i.l = shl i64 %i.k, 32
  %i.m = add i64 %i.f, %i.l
  %i.n = and i64 %i.m, -4294967296
  %5 = zext i64 %i.d to i128
  %6 = mul nuw i128 %5, 11400714785074694791
  %7 = lshr i128 %6, 64
  %8 = trunc nuw i128 %7 to i64
  %i.o = or disjoint i64 %i.g, 270215977642229760
  %i.p = add i64 %i.o, %i.n
  %i.q = xor i64 %i.b, %0                         ; 2 uses
  %i.r = and i64 %i.q, 4294967295
  %i.s = mul nuw i64 %i.r, 2246822518
  %i.t = add i64 %i.s, %i.q
  %i.u = add i64 %i.t, %8                         ; 2 uses
  %i.v = tail call noundef i64 @llvm.bswap.i64(i64 %i.u)
  %i.w = xor i64 %i.p, %i.v                       ; 4 uses
  %i.x = and i64 %i.w, 4294967295
  %i.y = mul nuw nsw i64 %i.x, 668265295
  %i.z = lshr i64 %i.w, 32
  %i.aa = mul nuw nsw i64 %i.z, 668265295
  %i.ab = mul i64 %i.w, 3266489917
  %i.ac = add i64 %i.aa, %i.ab
  %i.ad = shl i64 %i.ac, 32
  %i.ae = add i64 %i.y, %i.ad                     ; 2 uses
  %9 = zext i64 %i.w to i128
  %10 = mul nuw i128 %9, 14029467366897019727
  %11 = lshr i128 %10, 64
  %12 = trunc nuw i128 %11 to i64
  %i.af = mul i64 %i.u, -4417276706812531889
  %i.ag = add i64 %i.af, %12                      ; 2 uses
  %i.ah = lshr i64 %i.ae, 37
  %i.ai = xor i64 %i.ah, %i.ae
  %i.aj = mul i64 %i.ai, 1609587791953885689      ; 2 uses
  %i.ak = lshr i64 %i.aj, 32
  %i.al = xor i64 %i.ak, %i.aj
  store i64 %i.al, ptr %4, align 8, !tbaa !24
  %i.am = lshr i64 %i.ag, 37
  %i.an = xor i64 %i.am, %i.ag
  %i.ao = mul i64 %i.an, 1609587791953885689      ; 2 uses
  %i.ap = lshr i64 %i.ao, 32
  %i.aq = xor i64 %i.ap, %i.ao
  store i64 %i.aq, ptr %3, align 8, !tbaa !24
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN7rocksdb19BijectiveUnhash2x64EmmmPmS0_(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %4) local_unnamed_addr #8 {
bb.a:
  %i.a = sub i64 6455697860950631241, %2
  %i.b = add i64 %2, -4466874330221494952
  %i.c = lshr i64 %1, 32
  %i.d = xor i64 %i.c, %1
  %i.e = mul i64 %i.d, 637979407623780425         ; 2 uses
  %i.f = lshr i64 %i.e, 37
  %i.g = xor i64 %i.f, %i.e
  %i.h = lshr i64 %0, 32
  %i.i = xor i64 %i.h, %0
  %i.j = mul i64 %i.i, 637979407623780425         ; 2 uses
  %i.k = lshr i64 %i.j, 37
  %i.l = xor i64 %i.k, %i.j
  %i.m = mul i64 %i.g, 839798700976720815         ; 2 uses
  %5 = zext i64 %i.m to i128
  %6 = mul nuw i128 %5, 14029467366897019727
  %7 = lshr i128 %6, 64
  %8 = trunc nuw i128 %7 to i64
  %i.n = sub i64 %i.l, %8
  %i.o = mul i64 %i.n, 839798700976720815         ; 2 uses
  %i.p = tail call noundef i64 @llvm.bswap.i64(i64 %i.o)
  %i.q = xor i64 %i.p, %i.m
  %i.r = mul i64 %i.q, 614540362697595703
  %i.s = add i64 %i.r, -1026820715040473088       ; 2 uses
  %9 = zext i64 %i.s to i128
  %10 = mul nuw i128 %9, 11400714785074694791
  %11 = lshr i128 %10, 64
  %12 = trunc nuw i128 %11 to i64
  %i.t = sub i64 %i.o, %12                        ; 2 uses
  %i.u = mul i64 %i.t, 3066638151
  %i.v = and i64 %i.u, 4294967295                 ; 3 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = and i64 %i.w, -4294967296
  %i.y = mul nuw i64 %i.v, 2246822518
  %i.z = and i64 %i.y, -4294967296
  %i.aa = sub i64 %i.x, %i.z
  %i.ab = or disjoint i64 %i.aa, %i.v
  %i.ac = xor i64 %i.ab, %i.b                     ; 2 uses
  %i.ad = xor i64 %i.s, %i.a
  %i.ae = xor i64 %i.ad, %i.ac
  store i64 %i.ac, ptr %3, align 8, !tbaa !24
  store i64 %i.ae, ptr %4, align 8, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN7rocksdb17BijectiveHash2x64EmmPmS0_(i64 noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3) local_unnamed_addr #8 {
bb.a:
  %i.a = xor i64 %0, %1
  %i.b = xor i64 %i.a, 6455697860950631241        ; 4 uses
  %i.c = and i64 %i.b, 4294967295
  %i.d = mul nuw i64 %i.c, 2246822535             ; 2 uses
  %i.e = and i64 %i.d, 4294967295
  %i.f = lshr i64 %i.b, 32
  %i.g = mul nuw i64 %i.f, 2246822535
  %i.h = mul i64 %i.b, 2654435761
  %i.i = add i64 %i.g, %i.h
  %i.j = shl i64 %i.i, 32
  %i.k = add i64 %i.j, %i.d
  %i.l = and i64 %i.k, -4294967296
  %4 = zext i64 %i.b to i128
  %5 = mul nuw i128 %4, 11400714785074694791
  %6 = lshr i128 %5, 64
  %7 = trunc nuw i128 %6 to i64
  %i.m = or disjoint i64 %i.e, 270215977642229760
  %i.n = add i64 %i.m, %i.l
  %i.o = xor i64 %0, -4466874330221494952         ; 2 uses
  %i.p = and i64 %i.o, 4294967295
  %i.q = mul nuw i64 %i.p, 2246822518
  %i.r = add i64 %i.q, %i.o
  %i.s = add i64 %i.r, %7                         ; 2 uses
  %i.t = tail call noundef i64 @llvm.bswap.i64(i64 %i.s)
  %i.u = xor i64 %i.n, %i.t                       ; 4 uses
  %i.v = and i64 %i.u, 4294967295
  %i.w = mul nuw nsw i64 %i.v, 668265295
  %i.x = lshr i64 %i.u, 32
  %i.y = mul nuw nsw i64 %i.x, 668265295
  %i.z = mul i64 %i.u, 3266489917
  %i.aa = add i64 %i.y, %i.z
  %i.ab = shl i64 %i.aa, 32
  %i.ac = add i64 %i.ab, %i.w                     ; 2 uses
  %8 = zext i64 %i.u to i128
  %9 = mul nuw i128 %8, 14029467366897019727
  %10 = lshr i128 %9, 64
  %11 = trunc nuw i128 %10 to i64
  %i.ad = mul i64 %i.s, -4417276706812531889
  %i.ae = add i64 %i.ad, %11                      ; 2 uses
  %i.af = lshr i64 %i.ac, 37
  %i.ag = xor i64 %i.af, %i.ac
  %i.ah = mul i64 %i.ag, 1609587791953885689      ; 2 uses
  %i.ai = lshr i64 %i.ah, 32
  %i.aj = xor i64 %i.ai, %i.ah
  store i64 %i.aj, ptr %3, align 8, !tbaa !24
  %i.ak = lshr i64 %i.ae, 37
  %i.al = xor i64 %i.ak, %i.ae
  %i.am = mul i64 %i.al, 1609587791953885689      ; 2 uses
  %i.an = lshr i64 %i.am, 32
  %i.ao = xor i64 %i.an, %i.am
  store i64 %i.ao, ptr %2, align 8, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN7rocksdb19BijectiveUnhash2x64EmmPmS0_(i64 noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3) local_unnamed_addr #8 {
bb.a:
  %i.a = lshr i64 %1, 32
  %i.b = xor i64 %i.a, %1
  %i.c = mul i64 %i.b, 637979407623780425         ; 2 uses
  %i.d = lshr i64 %i.c, 37
  %i.e = xor i64 %i.d, %i.c
  %i.f = lshr i64 %0, 32
  %i.g = xor i64 %i.f, %0
  %i.h = mul i64 %i.g, 637979407623780425         ; 2 uses
  %i.i = lshr i64 %i.h, 37
  %i.j = xor i64 %i.i, %i.h
  %i.k = mul i64 %i.e, 839798700976720815         ; 2 uses
  %4 = zext i64 %i.k to i128
  %5 = mul nuw i128 %4, 14029467366897019727
  %6 = lshr i128 %5, 64
  %7 = trunc nuw i128 %6 to i64
  %i.l = sub i64 %i.j, %7
  %i.m = mul i64 %i.l, 839798700976720815         ; 2 uses
  %i.n = tail call noundef i64 @llvm.bswap.i64(i64 %i.m)
  %i.o = xor i64 %i.n, %i.k
  %i.p = mul i64 %i.o, 614540362697595703
  %i.q = add i64 %i.p, -1026820715040473088       ; 2 uses
  %8 = zext i64 %i.q to i128
  %9 = mul nuw i128 %8, 11400714785074694791
  %10 = lshr i128 %9, 64
  %11 = trunc nuw i128 %10 to i64
  %i.r = sub i64 %i.m, %11                        ; 2 uses
  %i.s = mul i64 %i.r, 3066638151
  %i.t = and i64 %i.s, 4294967295                 ; 3 uses
  %i.u = sub i64 %i.r, %i.t
  %i.v = and i64 %i.u, -4294967296
  %i.w = mul nuw i64 %i.t, 2246822518
  %i.x = and i64 %i.w, -4294967296
  %i.y = sub i64 %i.v, %i.x
  %i.z = or disjoint i64 %i.y, %i.t
  %i.aa = xor i64 %i.z, -4466874330221494952      ; 2 uses
  %i.ab = xor i64 %i.q, %i.aa
  %i.ac = xor i64 %i.ab, 6455697860950631241
  store i64 %i.aa, ptr %2, align 8, !tbaa !24
  store i64 %i.ac, ptr %3, align 8, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef i64 @_ZL22XXPH3_len_129to240_64bPKhmS0_mm(ptr nofree noundef readonly captures(none) %0, i64 noundef range(i64 129, 241) %1, i64 noundef %2) unnamed_addr #9 {
bb.a:
  %i.a = mul i64 %1, -7046029288634856825
  %i.b = insertelement <8 x i64> poison, i64 %2, i64 0
  %i.c = shufflevector <8 x i64> %i.b, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.d = add <8 x i64> %i.c, <i64 -4734510112055689544, i64 -2623469361688619810, i64 8711581037947681227, i64 -8204357891075471176, i64 -3818837453329782724, i64 5690594596133299313, i64 4554437623014685352, i64 3556072174620004746>
  %i.e = sub <8 x i64> <i64 2066345149520216444, i64 2262974939099578482, i64 2410270004345854594, i64 5487137525590930912, i64 -6688317018830679928, i64 -2833645246901970632, i64 2111919702937427193, i64 7238261902898274248>, %i.c
  %i.f = load <16 x i64>, ptr %0, align 1         ; 2 uses
  %i.g = shufflevector <16 x i64> %i.f, <16 x i64> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.h = xor <8 x i64> %i.d, %i.g
  %i.i = shufflevector <16 x i64> %i.f, <16 x i64> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.j = xor <8 x i64> %i.e, %i.i
  %i.k = zext <8 x i64> %i.h to <8 x i128>
  %i.l = zext <8 x i64> %i.j to <8 x i128>
  %i.m = mul nuw <8 x i128> %i.l, %i.k            ; 2 uses
  %i.n = lshr <8 x i128> %i.m, splat (i128 64)
  %i.o = xor <8 x i128> %i.n, %i.m
  %i.p = trunc <8 x i128> %i.o to <8 x i64>
  %i.q = tail call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %i.p)
  %op.rdx = add i64 %i.q, %i.a                    ; 2 uses
  %i.r = trunc nuw nsw i64 %1 to i32
  %i.s = lshr i32 %i.r, 4                         ; 7 uses
  %i.t = lshr i64 %op.rdx, 37
  %i.u = xor i64 %i.t, %op.rdx
  %i.v = mul i64 %i.u, 1609587929392839161        ; 2 uses
  %i.w = lshr i64 %i.v, 32
  %i.x = xor i64 %i.w, %i.v                       ; 2 uses
  %.not = icmp eq i32 %i.s, 8
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.val33 = load i64, ptr %i.y, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.val32 = load i64, ptr %i.z, align 1
  %i.aa = add i64 %2, -9150895811085458631
  %i.ab = xor i64 %i.aa, %.val33
  %i.ac = sub i64 7914194659941938988, %2
  %i.ad = xor i64 %i.ac, %.val32
  %i.ae = zext i64 %i.ab to i128
  %i.af = zext i64 %i.ad to i128
  %i.ag = mul nuw i128 %i.af, %i.ae               ; 2 uses
  %i.ah = lshr i128 %i.ag, 64
  %i.ai = xor i128 %i.ah, %i.ag
  %i.aj = trunc i128 %i.ai to i64
  %i.ak = add i64 %i.x, %i.aj                     ; 2 uses
  %exitcond.not = icmp eq i32 %i.s, 9
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.val33.1 = load i64, ptr %i.al, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.val32.1 = load i64, ptr %i.am, align 1
  %i.an = add i64 %2, -6611157965513653271
  %i.ao = xor i64 %i.an, %.val33.1
  %i.ap = sub i64 -1839215637059881052, %2
  %i.aq = xor i64 %i.ap, %.val32.1
  %i.ar = zext i64 %i.ao to i128
  %i.as = zext i64 %i.aq to i128
  %i.at = mul nuw i128 %i.as, %i.ar               ; 2 uses
  %i.au = lshr i128 %i.at, 64
  %i.av = xor i128 %i.au, %i.at
  %i.aw = trunc i128 %i.av to i64
  %i.ax = add i64 %i.ak, %i.aw                    ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.s, 10
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.val33.2 = load i64, ptr %i.ay, align 1
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.val32.2 = load i64, ptr %i.az, align 1
  %i.ba = add i64 %2, -3433288310154277810
  %i.bb = xor i64 %i.ba, %.val33.2
  %i.bc = sub i64 5046485836271438973, %2
  %i.bd = xor i64 %i.bc, %.val32.2
  %i.be = zext i64 %i.bb to i128
  %i.bf = zext i64 %i.bd to i128
  %i.bg = mul nuw i128 %i.bf, %i.be               ; 2 uses
  %i.bh = lshr i128 %i.bg, 64
  %i.bi = xor i128 %i.bh, %i.bg
  %i.bj = trunc i128 %i.bi to i64
  %i.bk = add i64 %i.ax, %i.bj                    ; 2 uses
  %exitcond.not.2 = icmp eq i32 %i.s, 11
  br i1 %exitcond.not.2, label %._crit_edge, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.val33.3 = load i64, ptr %i.bl, align 1
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.val32.3 = load i64, ptr %i.bm, align 1
  %i.bn = add i64 %2, -8055285457383852172
  %i.bo = xor i64 %i.bn, %.val33.3
  %i.bp = sub i64 5920048007935066598, %2
  %i.bq = xor i64 %i.bp, %.val32.3
  %i.br = zext i64 %i.bo to i128
  %i.bs = zext i64 %i.bq to i128
  %i.bt = mul nuw i128 %i.bs, %i.br               ; 2 uses
  %i.bu = lshr i128 %i.bt, 64
  %i.bv = xor i128 %i.bu, %i.bt
  %i.bw = trunc i128 %i.bv to i64
  %i.bx = add i64 %i.bk, %i.bw                    ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.s, 12
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %.lr.ph.3
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.val33.4 = load i64, ptr %i.by, align 1
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.val32.4 = load i64, ptr %i.bz, align 1
  %i.ca = add i64 %2, 7336514198459093435
  %i.cb = xor i64 %i.ca, %.val33.4
  %i.cc = sub i64 5216419214072683403, %2
  %i.cd = xor i64 %i.cc, %.val32.4
  %i.ce = zext i64 %i.cb to i128
  %i.cf = zext i64 %i.cd to i128
  %i.cg = mul nuw i128 %i.cf, %i.ce               ; 2 uses
  %i.ch = lshr i128 %i.cg, 64
  %i.ci = xor i128 %i.ch, %i.cg
  %i.cj = trunc i128 %i.ci to i64
  %i.ck = add i64 %i.bx, %i.cj                    ; 2 uses
  %exitcond.not.4 = icmp eq i32 %i.s, 13
  br i1 %exitcond.not.4, label %._crit_edge, label %.lr.ph.5

.lr.ph.5:                                         ; preds = %.lr.ph.4
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 208
  %.val33.5 = load i64, ptr %i.cl, align 1
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 216
  %.val32.5 = load i64, ptr %i.cm, align 1
  %i.cn = add i64 %2, -1217880312389983593
  %i.co = xor i64 %i.cn, %.val33.5
  %i.cp = sub i64 8573350489219836230, %2
  %i.cq = xor i64 %i.cp, %.val32.5
  %i.cr = zext i64 %i.co to i128
  %i.cs = zext i64 %i.cq to i128
  %i.ct = mul nuw i128 %i.cs, %i.cr               ; 2 uses
  %i.cu = lshr i128 %i.ct, 64
  %i.cv = xor i128 %i.cu, %i.ct
  %i.cw = trunc i128 %i.cv to i64
  %i.cx = add i64 %i.ck, %i.cw                    ; 2 uses
  %exitcond.not.5 = icmp eq i32 %i.s, 14
  br i1 %exitcond.not.5, label %._crit_edge, label %.lr.ph.6

.lr.ph.6:                                         ; preds = %.lr.ph.5
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 224
  %.val33.6 = load i64, ptr %i.cy, align 1
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.val32.6 = load i64, ptr %i.cz, align 1
  %i.da = add i64 %2, -4909775443879730369
  %i.db = xor i64 %i.da, %.val33.6
  %i.dc = sub i64 -2282891677615274041, %2
  %i.dd = xor i64 %i.dc, %.val32.6
  %i.de = zext i64 %i.db to i128
  %i.df = zext i64 %i.dd to i128
  %i.dg = mul nuw i128 %i.df, %i.de               ; 2 uses
  %i.dh = lshr i128 %i.dg, 64
  %i.di = xor i128 %i.dh, %i.dg
  %i.dj = trunc i128 %i.di to i64
  %i.dk = add i64 %i.cx, %i.dj
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %.lr.ph.4, %.lr.ph.5, %.lr.ph.6, %bb.a
  %.126.lcssa = phi i64 [ %i.x, %bb.a ], [ %i.ak, %.lr.ph ], [ %i.ax, %.lr.ph.1 ], [ %i.bk, %.lr.ph.2 ], [ %i.bx, %.lr.ph.3 ], [ %i.ck, %.lr.ph.4 ], [ %i.cx, %.lr.ph.5 ], [ %i.dk, %.lr.ph.6 ]
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 -16
  %.val37 = load i64, ptr %i.dm, align 1
  %i.dn = getelementptr inbounds i8, ptr %i.dl, i64 -8
  %.val36 = load i64, ptr %i.dn, align 1
  %i.do = add i64 %2, 8320639771003045937
  %i.dp = xor i64 %.val37, %i.do
  %i.dq = sub i64 -1453760514566526364, %2
  %i.dr = xor i64 %.val36, %i.dq
  %i.ds = zext i64 %i.dp to i128
  %i.dt = zext i64 %i.dr to i128
  %i.du = mul nuw i128 %i.dt, %i.ds               ; 2 uses
  %i.dv = lshr i128 %i.du, 64
  %i.dw = xor i128 %i.dv, %i.du
  %i.dx = trunc i128 %i.dw to i64
  %i.dy = add i64 %.126.lcssa, %i.dx              ; 2 uses
  %i.dz = lshr i64 %i.dy, 37
  %i.ea = xor i64 %i.dz, %i.dy
  %i.eb = mul i64 %i.ea, 1609587929392839161      ; 2 uses
end_hunk_0
begin_hunk_1_@_ZL32XXPH3_hashLong_64b_defaultSecretPKhm:bb.a
  %i.fv = mul nuw <4 x i64> %i.fs, %i.fu
  %i.fw = add <4 x i64> %.sroa.0.4, %i.fp
  %i.fx = add <4 x i64> %i.fw, %i.fv
  %i.fy = getelementptr inbounds i8, ptr %i.fn, i64 -32
  %i.fz = load <4 x i64>, ptr %i.fy, align 1, !tbaa !18 ; 2 uses
  %i.ga = xor <4 x i64> %i.fz, <i64 3143064850383918358, i64 -8071399103737053674, i64 5030012605302946040, i64 -5825401622958753077> ; 2 uses
  %i.gb = bitcast <4 x i64> %i.ga to <8 x i32>
  %i.gc = and <4 x i64> %i.ga, splat (i64 4294967295)
  %i.gd = and <8 x i32> %i.gb, <i32 0, i32 -1, i32 poison, i32 -1, i32 0, i32 -1, i32 poison, i32 -1>
  %.inner46 = shufflevector <8 x i32> %i.gd, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %i.ge = bitcast <8 x i32> %.inner46 to <4 x i64>
  %i.gf = mul nuw <4 x i64> %i.gc, %i.ge
  %i.gg = add <4 x i64> %.sroa.15.4, %i.fz
  %i.gh = add <4 x i64> %i.gg, %i.gf
  br label %_ZL28XXPH3_hashLong_internal_loopPmPKhmS1_m16XXPH3_accWidth_e.exit

_ZL28XXPH3_hashLong_internal_loopPmPKhmS1_m16XXPH3_accWidth_e.exit: ; preds = %_ZL28XXPH3_hashLong_internal_loopPmPKhmS1_m16XXPH3_accWidth_e.exit.loopexit, %_ZL16XXPH3_accumulatePmPKhS1_m16XXPH3_accWidth_e.exit3
  %.sroa.15.5 = phi <4 x i64> [ %.sroa.15.4, %_ZL16XXPH3_accumulatePmPKhS1_m16XXPH3_accWidth_e.exit3 ], [ %i.gh, %_ZL28XXPH3_hashLong_internal_loopPmPKhmS1_m16XXPH3_accWidth_e.exit.loopexit ] ; 2 uses
  %.sroa.0.5 = phi <4 x i64> [ %.sroa.0.4, %_ZL16XXPH3_accumulatePmPKhS1_m16XXPH3_accWidth_e.exit3 ], [ %i.fx, %_ZL28XXPH3_hashLong_internal_loopPmPKhmS1_m16XXPH3_accWidth_e.exit.loopexit ] ; 2 uses
  %i.gi = mul i64 %1, -7046029288634856825
  %i.gj = shufflevector <4 x i64> %.sroa.0.5, <4 x i64> %.sroa.15.5, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.gk = xor <4 x i64> %i.gj, <i64 7914194659941938988, i64 -1839215637059881052, i64 5046485836271438973, i64 5920048007935066598>
  %i.gl = shufflevector <4 x i64> %.sroa.0.5, <4 x i64> %.sroa.15.5, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.gm = xor <4 x i64> %i.gl, <i64 -6611157965513653271, i64 -3433288310154277810, i64 -8055285457383852172, i64 7336514198459093435>
  %i.gn = zext <4 x i64> %i.gk to <4 x i128>
  %i.go = zext <4 x i64> %i.gm to <4 x i128>
  %i.gp = mul nuw <4 x i128> %i.go, %i.gn         ; 2 uses
  %i.gq = lshr <4 x i128> %i.gp, splat (i128 64)
  %i.gr = xor <4 x i128> %i.gq, %i.gp
  %i.gs = trunc <4 x i128> %i.gr to <4 x i64>
  %i.gt = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.gs)
  %op.rdx = add i64 %i.gt, %i.gi                  ; 2 uses
  %i.gu = lshr i64 %op.rdx, 37
  %i.gv = xor i64 %i.gu, %op.rdx
  %i.gw = mul i64 %i.gv, 1609587929392839161      ; 2 uses
  %i.gx = lshr i64 %i.gw, 32
  %i.gy = xor i64 %i.gx, %i.gw
  ret i64 %i.gy
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #11

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #12

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !21   ; 4 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !23
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.h, align 8, !tbaa !18
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ] ; 2 uses
  %i.m = icmp slt i64 %i.f, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #18
  unreachable

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.n = icmp ugt i64 %i.f, %i.l
  br i1 %i.n, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = shl nuw i64 %i.l, 1                      ; 2 uses
  %i.p = icmp ult i64 %i.f, %i.o
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 9223372036854775807)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0 = phi i64 [ %spec.store.select.i, %bb.e ], [ %i.f, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  %i.q = add nuw i64 %.0, 1                       ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !22

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #18
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.f
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #19 ; 5 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !23     ; 2 uses
  %cond32 = icmp eq i64 %1, 1
  br i1 %cond32, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = load i8, ptr %i.t, align 1, !tbaa !18
  store i8 %i.u, ptr %i.s, align 1, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.t, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.j, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.v = icmp ne ptr %3, null
  %i.w = icmp ne i64 %4, 0
  %or.cond = and i1 %i.v, %i.w
  br i1 %or.cond, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 %1 ; 2 uses
  %cond = icmp eq i64 %4, 1
  br i1 %cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.y = load i8, ptr %3, align 1, !tbaa !18
  store i8 %i.y, ptr %i.x, align 1, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.x, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26: ; preds = %bb.m, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  %.pre = load ptr, ptr %0, align 8, !tbaa !23    ; 3 uses
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 %1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.pre, i64 %1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %2 ; 2 uses
  %cond31 = icmp eq i64 %i.d, 1
  br i1 %cond31, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !18
  store i8 %i.ad, ptr %i.aa, align 1, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr align 1 %i.ac, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.p, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.ae = icmp eq ptr %.pre, %i.h
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.af = load i64, ptr %i.h, align 8, !tbaa !18
  %i.ag = add i64 %i.af, 1
  tail call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.ag) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28
  store ptr %i.s, ptr %0, align 8, !tbaa !23
  store i64 %.0, ptr %i.h, align 8, !tbaa !18
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v4i64(<4 x i64>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v8i64(<8 x i64>) #15

attributes #0 = { inlinehint mustprogress uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(read) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(read, argmem: readwrite) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #12 = { noreturn "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { nobuiltin allocsize(0) "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { nobuiltin nounwind "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind }
attributes #18 = { noreturn }
attributes #19 = { builtin allocsize(0) }
attributes #20 = { builtin nounwind }
attributes #21 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !17}
!1 = distinct !{!1, !17}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 4}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"long", !7, i64 0}
!14 = !{!"_ZTSN7rocksdb5SliceE", !12, i64 0, !13, i64 8}
!15 = !{!14, !12, i64 0}
!16 = !{!14, !13, i64 8}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!7, !7, i64 0}
!19 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !12, i64 0}
!20 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !19, i64 0, !13, i64 8, !7, i64 16}
!21 = !{!20, !13, i64 8}
!22 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!23 = !{!20, !12, i64 0}
!24 = !{!13, !13, i64 0}
!25 = distinct !{!25, !17}
!26 = distinct !{!26, !17, !35, !36}
!27 = distinct !{!27, !17, !35, !36}
!28 = distinct !{!28, !17, !36, !35}
!29 = distinct !{!29, !17}
!30 = !{!"p1 _ZTSN7rocksdb5SliceE", !11, i64 0}
!31 = !{!"_ZTSN7rocksdb10SlicePartsE", !30, i64 0, !8, i64 8}
!32 = !{!31, !8, i64 8}
!33 = !{!19, !12, i64 0}
!34 = !{!31, !30, i64 0}
!35 = !{!"llvm.loop.isvectorized", i32 1}
!36 = !{!"llvm.loop.unroll.runtime.disable"}
!37 = !{!"branch_weights", i32 4, i32 12}
end_hunk_1
