Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/glTF2Importer?download=true
inline.NumInlined: 10361
inline.NumDeleted: 3521
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 67
loop-unroll.NumUnrolled: 82
begin_hunk_0_@_ZN5glTF211AssetWriter12WriteObjectsINS_8AccessorEEEvRNS_8LazyDictIT_EE:bb.a
  %i.gp = icmp eq i32 %i.go, 0
  %i.gq = add i32 %i.go, 1
  %i.gr = lshr i32 %i.gq, 1
  %i.gs = add i32 %i.gr, %i.go
  %i.gt = select i1 %i.gp, i32 16, i32 %i.gs      ; 3 uses
  %i.gu = icmp ugt i32 %i.gt, %i.go
  %.pre92 = load ptr, ptr %i.ey, align 8          ; 2 uses
  br i1 %i.gu, label %.noexc73, label %bb.q

.noexc73:                                         ; preds = %bb.p
  %i.gv = ptrtoint ptr %.pre92 to i64
  %i.gw = and i64 %i.gv, 281474976710655
  %i.gx = inttoptr i64 %i.gw to ptr
  %i.gy = zext i32 %i.go to i64
  %i.gz = shl nuw nsw i64 %i.gy, 4
  %i.ha = zext i32 %i.gt to i64
  %i.hb = shl nuw nsw i64 %i.ha, 4
  %i.hc = call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.gm, ptr noundef %i.gx, i64 noundef %i.gz, i64 noundef %i.hb)
  %i.hd = load ptr, ptr %i.ey, align 8
  %i.he = ptrtoint ptr %i.hd to i64
  %i.hf = and i64 %i.he, -281474976710656
  %i.hg = ptrtoint ptr %i.hc to i64
  %i.hh = or i64 %i.hf, %i.hg
  %i.hi = inttoptr i64 %i.hh to ptr               ; 2 uses
  store ptr %i.hi, ptr %i.ey, align 8
  store i32 %i.gt, ptr %i.ex, align 4
  %.pre.i = load i32, ptr %.035, align 8
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %.noexc73, %bb.p
  %i.hj = phi ptr [ %i.hi, %.noexc73 ], [ %.pre92, %bb.p ], [ %.pre91, %._crit_edge ]
  %i.hk = phi i32 [ %.pre.i, %.noexc73 ], [ %i.gn, %bb.p ], [ %i.gn, %._crit_edge ] ; 2 uses
  %i.hl = ptrtoint ptr %i.hj to i64
  %i.hm = and i64 %i.hl, 281474976710655
  %i.hn = inttoptr i64 %i.hm to ptr
  %i.ho = add i32 %i.hk, 1
  store i32 %i.ho, ptr %.035, align 8
  %i.hp = zext i32 %i.hk to i64
  %i.hq = getelementptr inbounds nuw [16 x i8], ptr %i.hn, i64 %i.hp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hq, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br label %bb.r

bb.r:                                             ; preds = %bb.m, %bb.q
  %i.hr = add nuw i64 %.087, 1                    ; 2 uses
  %i.hs = load ptr, ptr %i.c, align 8
  %i.ht = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.hu = ptrtoint ptr %i.hs to i64
  %i.hv = ptrtoint ptr %i.ht to i64
  %i.hw = sub i64 %i.hu, %i.hv
  %i.hx = ashr exact i64 %i.hw, 3
  %i.hy = icmp ult i64 %i.hr, %i.hx
  br i1 %i.hy, label %bb.m, label %.loopexit, !llvm.loop !316

.loopexit:                                        ; preds = %bb.r, %bb.l, %bb.k, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_8AccessorERNS_11AssetWriterE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 8 dereferenceable(112) %2) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %._ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.thread_crit_edge, label %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit

._ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.thread_crit_edge: ; preds = %bb.a
  %.pre455 = load i32, ptr %0, align 8
  br label %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.thread

_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.d = load i32, ptr %i.c, align 8
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 3
  %i.m = icmp ugt i64 %i.l, %i.e
  %.pre456 = load i32, ptr %0, align 8            ; 4 uses
  br i1 %i.m, label %bb.b, label %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.thread

bb.b:                                             ; preds = %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.e
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i32, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !46, !align !49
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.u = load i32, ptr %i.t, align 4              ; 6 uses
  %.not.i.i.i.i = icmp ult i32 %.pre456, %i.u
  br i1 %.not.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberIiEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeENS_16GenericStringRefIcEESF_RS5_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not14.i.i.i.i = icmp eq i32 %i.u, 0
  %i.v = add i32 %i.u, 1
  %i.w = lshr i32 %i.v, 1
  %i.x = add i32 %i.w, %i.u
  %i.y = select i1 %.not14.i.i.i.i, i32 16, i32 %i.x ; 3 uses
  %i.z = icmp ugt i32 %i.y, %i.u
  br i1 %i.z, label %.noexc.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberIiEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeENS_16GenericStringRefIcEESF_RS5_.exit

.noexc.i.i:                                       ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = and i64 %i.ac, 281474976710655
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = zext i32 %i.u to i64
  %i.ag = zext i32 %i.y to i64
  %i.ah = shl nuw nsw i64 %i.af, 5
  %i.ai = shl nuw nsw i64 %i.ag, 5
  %i.aj = tail call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef %i.ae, i64 noundef %i.ah, i64 noundef %i.ai)
  %i.ak = load ptr, ptr %i.aa, align 8
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = and i64 %i.al, -281474976710656
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = or i64 %i.am, %i.an
  %i.ap = inttoptr i64 %i.ao to ptr
  store ptr %i.ap, ptr %i.aa, align 8
  store i32 %i.y, ptr %i.t, align 4
  %.pre.i.i.i.i = load i32, ptr %0, align 8
  br label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberIiEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeENS_16GenericStringRefIcEESF_RS5_.exit

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberIiEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeENS_16GenericStringRefIcEESF_RS5_.exit: ; preds = %bb.b, %bb.c, %.noexc.i.i
  %i.aq = phi i32 [ %.pre.i.i.i.i, %.noexc.i.i ], [ %.pre456, %bb.c ], [ %.pre456, %bb.b ]
  %i.ar = or i64 ptrtoint (ptr @.str.88 to i64), 289637751035265024
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = icmp sgt i32 %i.q, -1
  %.sroa.5.14.insert.ext.i.i = select i1 %i.at, i64 141300438308749312, i64 51228445761339392
  %i.au = sext i32 %i.q to i64
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = and i64 %i.ax, 281474976710655
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = zext i32 %i.aq to i64
  %i.bb = getelementptr inbounds nuw [32 x i8], ptr %i.az, i64 %i.ba ; 5 uses
  store i32 10, ptr %i.bb, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i, align 4
  %.sroa.65.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.as, ptr %.sroa.65.0..sroa_idx.i, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i64 %i.au, ptr %i.bc, align 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store i64 %.sroa.5.14.insert.ext.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8
  %i.bd = load i32, ptr %0, align 8
  %i.be = add i32 %i.bd, 1                        ; 4 uses
  store i32 %i.be, ptr %0, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.bg = load i64, ptr %i.bf, align 8            ; 2 uses
  %i.bh = load ptr, ptr %i.r, align 8, !nonnull !46, !align !49
  %i.bi = load i32, ptr %i.t, align 4             ; 6 uses
  %.not.i.i.i.i57 = icmp ult i32 %i.be, %i.bi
  br i1 %.not.i.i.i.i57, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberIiEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeENS_16GenericStringRefIcEESF_RS5_.exit._ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberIjEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeENS_16GenericStringRefIcEESF_RS5_.exit_crit_edge, label %bb.d

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberIiEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeENS_16GenericStringRefIcEESF_RS5_.exit._ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberIjEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeENS_16GenericStringRefIcEESF_RS5_.exit_crit_edge: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberIiEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeENS_16GenericStringRefIcEESF_RS5_.exit
  %.pre = load ptr, ptr %i.av, align 8
  br label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberIjEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeENS_16GenericStringRefIcEESF_RS5_.exit

bb.d:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberIiEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeENS_16GenericStringRefIcEESF_RS5_.exit
  %.not14.i.i.i.i58 = icmp eq i32 %i.bi, 0
  %i.bj = add i32 %i.bi, 1
  %i.bk = lshr i32 %i.bj, 1
  %i.bl = add i32 %i.bk, %i.bi
  %i.bm = select i1 %.not14.i.i.i.i58, i32 16, i32 %i.bl ; 3 uses
  %i.bn = icmp ugt i32 %i.bm, %i.bi
  %.pre454 = load ptr, ptr %i.av, align 8         ; 2 uses
  br i1 %i.bn, label %.noexc.i.i63, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberIjEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeENS_16GenericStringRefIcEESF_RS5_.exit

.noexc.i.i63:                                     ; preds = %bb.d
  %i.bo = ptrtoint ptr %.pre454 to i64
  %i.bp = and i64 %i.bo, 281474976710655
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = zext i32 %i.bi to i64
  %i.bs = zext i32 %i.bm to i64
  %i.bt = shl nuw nsw i64 %i.br, 5
  %i.bu = shl nuw nsw i64 %i.bs, 5
  %i.bv = tail call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef %i.bq, i64 noundef %i.bt, i64 noundef %i.bu)
  %i.bw = load ptr, ptr %i.av, align 8
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = and i64 %i.bx, -281474976710656
  %i.bz = ptrtoint ptr %i.bv to i64
  %i.ca = or i64 %i.by, %i.bz
  %i.cb = inttoptr i64 %i.ca to ptr               ; 2 uses
  store ptr %i.cb, ptr %i.av, align 8
  store i32 %i.bm, ptr %i.t, align 4
  %.pre.i.i.i.i64 = load i32, ptr %0, align 8
  br label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberIjEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeENS_16GenericStringRefIcEESF_RS5_.exit

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberIjEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeENS_16GenericStringRefIcEESF_RS5_.exit: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberIiEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeENS_16GenericStringRefIcEESF_RS5_.exit._ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberIjEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeENS_16GenericStringRefIcEESF_RS5_.exit_crit_edge, %bb.d, %.noexc.i.i63
  %i.cc = phi ptr [ %i.cb, %.noexc.i.i63 ], [ %.pre454, %bb.d ], [ %.pre, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberIiEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeENS_16GenericStringRefIcEESF_RS5_.exit._ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberIjEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeENS_16GenericStringRefIcEESF_RS5_.exit_crit_edge ]
  %i.cd = phi i32 [ %.pre.i.i.i.i64, %.noexc.i.i63 ], [ %i.be, %bb.d ], [ %i.be, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberIiEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeENS_16GenericStringRefIcEESF_RS5_.exit._ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberIjEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeENS_16GenericStringRefIcEESF_RS5_.exit_crit_edge ]
  %i.ce = or i64 ptrtoint (ptr @.str.89 to i64), 289637751035265024
  %i.cf = inttoptr i64 %i.ce to ptr
  %3 = and i64 %i.bg, 2147483648
  %.not.i.i.i = icmp eq i64 %3, 0
  %.sroa.5.14.insert.ext.i.i59 = select i1 %.not.i.i.i, i64 141300438308749312, i64 132293239054008320
  %i.cg = and i64 %i.bg, 4294967295
  %i.ch = ptrtoint ptr %i.cc to i64
  %i.ci = and i64 %i.ch, 281474976710655
  %i.cj = inttoptr i64 %i.ci to ptr
  %i.ck = zext i32 %i.cd to i64
  %i.cl = getelementptr inbounds nuw [32 x i8], ptr %i.cj, i64 %i.ck ; 5 uses
  store i32 10, ptr %i.cl, align 8
  %.sroa.6.0..sroa_idx.i60 = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i60, align 4
  %.sroa.65.0..sroa_idx.i61 = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store ptr %i.cf, ptr %.sroa.65.0..sroa_idx.i61, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store i64 %i.cg, ptr %i.cm, align 8
  %.sroa.5.0..sroa_idx.i.i62 = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  store i64 %.sroa.5.14.insert.ext.i.i59, ptr %.sroa.5.0..sroa_idx.i.i62, align 8
  %i.cn = load i32, ptr %0, align 8
  %i.co = add i32 %i.cn, 1                        ; 2 uses
  store i32 %i.co, ptr %0, align 8
  br label %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.thread

_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.thread: ; preds = %._ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.thread_crit_edge, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberIjEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeENS_16GenericStringRefIcEESF_RS5_.exit, %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit
  %i.cp = phi i32 [ %.pre455, %._ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.thread_crit_edge ], [ %i.co, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberIjEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeENS_16GenericStringRefIcEESF_RS5_.exit ], [ %.pre456, %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit ] ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 8            ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 14 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !nonnull !46, !align !49
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 16 uses
  %i.cv = load i32, ptr %i.cu, align 4            ; 6 uses
  %.not.i.i.i.i65 = icmp ult i32 %i.cp, %i.cv
  br i1 %.not.i.i.i.i65, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberIiEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeENS_16GenericStringRefIcEESF_RS5_.exit73, label %bb.e

bb.e:                                             ; preds = %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.thread
  %.not14.i.i.i.i66 = icmp eq i32 %i.cv, 0
  %i.cw = add i32 %i.cv, 1
  %i.cx = lshr i32 %i.cw, 1
  %i.cy = add i32 %i.cx, %i.cv
  %i.cz = select i1 %.not14.i.i.i.i66, i32 16, i32 %i.cy ; 3 uses
  %i.da = icmp ugt i32 %i.cz, %i.cv
  br i1 %i.da, label %.noexc.i.i71, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberIiEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeENS_16GenericStringRefIcEESF_RS5_.exit73

.noexc.i.i71:                                     ; preds = %bb.e
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = and i64 %i.dd, 281474976710655
  %i.df = inttoptr i64 %i.de to ptr
  %i.dg = zext i32 %i.cv to i64
  %i.dh = zext i32 %i.cz to i64
  %i.di = shl nuw nsw i64 %i.dg, 5
  %i.dj = shl nuw nsw i64 %i.dh, 5
  %i.dk = tail call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.ct, ptr noundef %i.df, i64 noundef %i.di, i64 noundef %i.dj)
  %i.dl = load ptr, ptr %i.db, align 8
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = and i64 %i.dm, -281474976710656
  %i.do = ptrtoint ptr %i.dk to i64
  %i.dp = or i64 %i.dn, %i.do
  %i.dq = inttoptr i64 %i.dp to ptr
  store ptr %i.dq, ptr %i.db, align 8
  store i32 %i.cz, ptr %i.cu, align 4
  %.pre.i.i.i.i72 = load i32, ptr %0, align 8
  br label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberIiEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeENS_16GenericStringRefIcEESF_RS5_.exit73

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberIiEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeENS_16GenericStringRefIcEESF_RS5_.exit73: ; preds = %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.thread, %bb.e, %.noexc.i.i71
  %i.dr = phi i32 [ %.pre.i.i.i.i72, %.noexc.i.i71 ], [ %i.cp, %bb.e ], [ %i.cp, %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.thread ]
  %i.ds = or i64 ptrtoint (ptr @.str.90 to i64), 289637751035265024
  %i.dt = inttoptr i64 %i.ds to ptr               ; 2 uses
  %i.du = icmp sgt i32 %i.cr, -1
  %.sroa.5.14.insert.ext.i.i67 = select i1 %i.du, i64 141300438308749312, i64 51228445761339392
  %i.dv = sext i32 %i.cr to i64
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 29 uses
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = and i64 %i.dy, 281474976710655
  %i.ea = inttoptr i64 %i.dz to ptr
  %i.eb = zext i32 %i.dr to i64
  %i.ec = getelementptr inbounds nuw [32 x i8], ptr %i.ea, i64 %i.eb ; 5 uses
  store i32 13, ptr %i.ec, align 8
  %.sroa.6.0..sroa_idx.i68 = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i68, align 4
  %.sroa.65.0..sroa_idx.i69 = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store ptr %i.dt, ptr %.sroa.65.0..sroa_idx.i69, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store i64 %i.dv, ptr %i.ed, align 8
  %.sroa.5.0..sroa_idx.i.i70 = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  store i64 %.sroa.5.14.insert.ext.i.i67, ptr %.sroa.5.0..sroa_idx.i.i70, align 8
  %i.ee = load i32, ptr %0, align 8
  %i.ef = add i32 %i.ee, 1                        ; 4 uses
  store i32 %i.ef, ptr %0, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.eh = load i64, ptr %i.eg, align 8            ; 2 uses
  %i.ei = load ptr, ptr %i.cs, align 8, !nonnull !46, !align !49
  %i.ej = load i32, ptr %i.cu, align 4            ; 6 uses
  %.not.i.i.i.i74 = icmp ult i32 %i.ef, %i.ej
  br i1 %.not.i.i.i.i74, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberIiEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeENS_16GenericStringRefIcEESF_RS5_.exit73._ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberIjEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeENS_16GenericStringRefIcEESF_RS5_.exit83_crit_edge, label %bb.f

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberIiEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeENS_16GenericStringRefIcEESF_RS5_.exit73._ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberIjEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeENS_16GenericStringRefIcEESF_RS5_.exit83_crit_edge: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberIiEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeENS_16GenericStringRefIcEESF_RS5_.exit73
  %.pre457 = load ptr, ptr %i.dw, align 8
  br label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberIjEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeENS_16GenericStringRefIcEESF_RS5_.exit83

bb.f:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberIiEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeENS_16GenericStringRefIcEESF_RS5_.exit73
  %.not14.i.i.i.i75 = icmp eq i32 %i.ej, 0
  %i.ek = add i32 %i.ej, 1
  %i.el = lshr i32 %i.ek, 1
  %i.em = add i32 %i.el, %i.ej
  %i.en = select i1 %.not14.i.i.i.i75, i32 16, i32 %i.em ; 3 uses
  %i.eo = icmp ugt i32 %i.en, %i.ej
  %.pre458 = load ptr, ptr %i.dw, align 8         ; 2 uses
  br i1 %i.eo, label %.noexc.i.i81, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberIjEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeENS_16GenericStringRefIcEESF_RS5_.exit83

.noexc.i.i81:                                     ; preds = %bb.f
  %i.ep = ptrtoint ptr %.pre458 to i64
  %i.eq = and i64 %i.ep, 281474976710655
  %i.er = inttoptr i64 %i.eq to ptr
  %i.es = zext i32 %i.ej to i64
  %i.et = zext i32 %i.en to i64
  %i.eu = shl nuw nsw i64 %i.es, 5
  %i.ev = shl nuw nsw i64 %i.et, 5
  %i.ew = tail call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.ei, ptr noundef %i.er, i64 noundef %i.eu, i64 noundef %i.ev)
  %i.ex = load ptr, ptr %i.dw, align 8
  %i.ey = ptrtoint ptr %i.ex to i64
  %i.ez = and i64 %i.ey, -281474976710656
  %i.fa = ptrtoint ptr %i.ew to i64
  %i.fb = or i64 %i.ez, %i.fa
  %i.fc = inttoptr i64 %i.fb to ptr               ; 2 uses
  store ptr %i.fc, ptr %i.dw, align 8
  store i32 %i.en, ptr %i.cu, align 4
  %.pre.i.i.i.i82 = load i32, ptr %0, align 8
  br label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberIjEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeENS_16GenericStringRefIcEESF_RS5_.exit83

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberIjEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeENS_16GenericStringRefIcEESF_RS5_.exit83: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberIiEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeENS_16GenericStringRefIcEESF_RS5_.exit73._ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberIjEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeENS_16GenericStringRefIcEESF_RS5_.exit83_crit_edge, %bb.f, %.noexc.i.i81
  %i.fd = phi ptr [ %i.fc, %.noexc.i.i81 ], [ %.pre458, %bb.f ], [ %.pre457, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberIiEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeENS_16GenericStringRefIcEESF_RS5_.exit73._ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberIjEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeENS_16GenericStringRefIcEESF_RS5_.exit83_crit_edge ]
  %i.fe = phi i32 [ %.pre.i.i.i.i82, %.noexc.i.i81 ], [ %i.ef, %bb.f ], [ %i.ef, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberIiEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeENS_16GenericStringRefIcEESF_RS5_.exit73._ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberIjEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeENS_16GenericStringRefIcEESF_RS5_.exit83_crit_edge ]
  %i.ff = or i64 ptrtoint (ptr @.str.91 to i64), 289637751035265024
  %i.fg = inttoptr i64 %i.ff to ptr               ; 2 uses
  %4 = and i64 %i.eh, 2147483648
  %.not.i.i.i76 = icmp eq i64 %4, 0
  %.sroa.5.14.insert.ext.i.i77 = select i1 %.not.i.i.i76, i64 141300438308749312, i64 132293239054008320
  %i.fh = and i64 %i.eh, 4294967295
  %i.fi = ptrtoint ptr %i.fd to i64
  %i.fj = and i64 %i.fi, 281474976710655
  %i.fk = inttoptr i64 %i.fj to ptr
  %i.fl = zext i32 %i.fe to i64
  %i.fm = getelementptr inbounds nuw [32 x i8], ptr %i.fk, i64 %i.fl ; 5 uses
  store i32 5, ptr %i.fm, align 8
  %.sroa.6.0..sroa_idx.i78 = getelementptr inbounds nuw i8, ptr %i.fm, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i78, align 4
  %.sroa.65.0..sroa_idx.i79 = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  store ptr %i.fg, ptr %.sroa.65.0..sroa_idx.i79, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  store i64 %i.fh, ptr %i.fn, align 8
  %.sroa.5.0..sroa_idx.i.i80 = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  store i64 %.sroa.5.14.insert.ext.i.i77, ptr %.sroa.5.0..sroa_idx.i.i80, align 8
  %i.fo = load i32, ptr %0, align 8
  %i.fp = add i32 %i.fo, 1                        ; 4 uses
  store i32 %i.fp, ptr %0, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.fr = load i32, ptr %i.fq, align 8
  %i.fs = zext i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw [16 x i8], ptr @_ZN5glTF210AttribType4dataILi0EE5infosE, i64 %i.fs
  %i.fu = load ptr, ptr %i.ft, align 16           ; 2 uses
  %i.fv = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fu) #39, !noalias !324
  %i.fw = trunc i64 %i.fv to i32
  %i.fx = load ptr, ptr %i.cs, align 8, !nonnull !46, !align !49
  %i.fy = load i32, ptr %i.cu, align 4            ; 6 uses
  %.not.i.i.i.i84 = icmp ult i32 %i.fp, %i.fy
  br i1 %.not.i.i.i.i84, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberIjEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeENS_16GenericStringRefIcEESF_RS5_.exit83._ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit_crit_edge, label %bb.g

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberIjEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeENS_16GenericStringRefIcEESF_RS5_.exit83._ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit_crit_edge: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberIjEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeENS_16GenericStringRefIcEESF_RS5_.exit83
  %.pre459 = load ptr, ptr %i.dw, align 8
  br label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit

bb.g:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberIjEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeENS_16GenericStringRefIcEESF_RS5_.exit83
  %.not14.i.i.i.i85 = icmp eq i32 %i.fy, 0
  %i.fz = add i32 %i.fy, 1
  %i.ga = lshr i32 %i.fz, 1
  %i.gb = add i32 %i.ga, %i.fy
  %i.gc = select i1 %.not14.i.i.i.i85, i32 16, i32 %i.gb ; 3 uses
  %i.gd = icmp ugt i32 %i.gc, %i.fy
  %.pre460 = load ptr, ptr %i.dw, align 8         ; 2 uses
  br i1 %i.gd, label %.noexc.i.i87, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit

.noexc.i.i87:                                     ; preds = %bb.g
  %i.ge = ptrtoint ptr %.pre460 to i64
  %i.gf = and i64 %i.ge, 281474976710655
  %i.gg = inttoptr i64 %i.gf to ptr
  %i.gh = zext i32 %i.fy to i64
  %i.gi = zext i32 %i.gc to i64
  %i.gj = shl nuw nsw i64 %i.gh, 5
  %i.gk = shl nuw nsw i64 %i.gi, 5
  %i.gl = tail call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.fx, ptr noundef %i.gg, i64 noundef %i.gj, i64 noundef %i.gk)
  %i.gm = load ptr, ptr %i.dw, align 8
  %i.gn = ptrtoint ptr %i.gm to i64
  %i.go = and i64 %i.gn, -281474976710656
  %i.gp = ptrtoint ptr %i.gl to i64
  %i.gq = or i64 %i.go, %i.gp
  %i.gr = inttoptr i64 %i.gq to ptr               ; 2 uses
  store ptr %i.gr, ptr %i.dw, align 8
  store i32 %i.gc, ptr %i.cu, align 4
  %.pre.i.i.i.i88 = load i32, ptr %0, align 8
  br label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberIjEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeENS_16GenericStringRefIcEESF_RS5_.exit83._ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit_crit_edge, %bb.g, %.noexc.i.i87
  %i.gs = phi ptr [ %i.gr, %.noexc.i.i87 ], [ %.pre460, %bb.g ], [ %.pre459, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberIjEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeENS_16GenericStringRefIcEESF_RS5_.exit83._ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit_crit_edge ]
  %i.gt = phi i32 [ %.pre.i.i.i.i88, %.noexc.i.i87 ], [ %i.fp, %bb.g ], [ %i.fp, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberIjEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeENS_16GenericStringRefIcEESF_RS5_.exit83._ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit_crit_edge ]
  %i.gu = ptrtoint ptr %i.fu to i64
  %i.gv = or i64 %i.gu, 289637751035265024
  %i.gw = inttoptr i64 %i.gv to ptr
  %i.gx = or i64 ptrtoint (ptr @.str.92 to i64), 289637751035265024
  %i.gy = inttoptr i64 %i.gx to ptr
  %i.gz = ptrtoint ptr %i.gs to i64
  %i.ha = and i64 %i.gz, 281474976710655
  %i.hb = inttoptr i64 %i.ha to ptr
  %i.hc = zext i32 %i.gt to i64
  %i.hd = getelementptr inbounds nuw [32 x i8], ptr %i.hb, i64 %i.hc ; 6 uses
  store i32 4, ptr %i.hd, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.hd, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i.i, align 4
  %.sroa.65.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  store ptr %i.gy, ptr %.sroa.65.0..sroa_idx.i.i, align 8
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  store i32 %i.fw, ptr %i.he, align 8
  %.sroa.6.0..sroa_idx.i86 = getelementptr inbounds nuw i8, ptr %i.hd, i64 20
  store i32 0, ptr %.sroa.6.0..sroa_idx.i86, align 4
  %.sroa.66.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hd, i64 24
  store ptr %i.gw, ptr %.sroa.66.0..sroa_idx.i, align 8
  %i.hf = load i32, ptr %0, align 8
  %i.hg = add i32 %i.hf, 1
  store i32 %i.hg, ptr %0, align 8
  %i.hh = load i32, ptr %i.cq, align 8
  %i.hi = icmp eq i32 %i.hh, 5126
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 5 uses
  %i.hk = load ptr, ptr %i.cs, align 8, !nonnull !46, !align !49 ; 4 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 5 uses
  %i.hm = load ptr, ptr %i.hl, align 8            ; 3 uses
  %i.hn = load ptr, ptr %i.hj, align 8            ; 3 uses
  %i.ho = ptrtoint ptr %i.hm to i64
  %i.hp = ptrtoint ptr %i.hn to i64
  %i.hq = sub i64 %i.ho, %i.hp                    ; 3 uses
  %i.hr = lshr exact i64 %i.hq, 3
  %i.hs = trunc i64 %i.hr to i32                  ; 5 uses
  %.not21.i = icmp eq i32 %i.hs, 0                ; 2 uses
  br i1 %i.hi, label %bb.h, label %bb.n

bb.h:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit
  br i1 %.not21.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE7ReserveEjRS5_.exit.i, label %.noexc

.noexc:                                           ; preds = %bb.h
  %i.ht = shl i64 %i.hq, 1
  %i.hu = and i64 %i.ht, 68719476720
  %i.hv = tail call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.hk, ptr noundef null, i64 noundef 0, i64 noundef %i.hu)
  %i.hw = ptrtoint ptr %i.hv to i64
  %i.hx = or i64 %i.hw, 1125899906842624
  %i.hy = inttoptr i64 %i.hx to ptr
  %.pre.i = load ptr, ptr %i.hl, align 8
  %.pre13.i = load ptr, ptr %i.hj, align 8
  br label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE7ReserveEjRS5_.exit.i

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE7ReserveEjRS5_.exit.i: ; preds = %.noexc, %bb.h
  %.sroa.20411.0 = phi ptr [ inttoptr (i64 1125899906842624 to ptr), %bb.h ], [ %i.hy, %.noexc ] ; 2 uses
  %i.hz = phi ptr [ %i.hn, %bb.h ], [ %.pre13.i, %.noexc ] ; 2 uses
  %i.ia = phi ptr [ %i.hm, %bb.h ], [ %.pre.i, %.noexc ]
  %.not.i89 = icmp eq ptr %i.ia, %i.hz
  br i1 %.not.i89, label %_ZN5glTF212_GLOBAL__N_19MakeValueIdEERN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEESA_RKSt6vectorIT_SaISC_EERS8_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE7ReserveEjRS5_.exit.i, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE8PushBackIdEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeESF_RS5_.exit.i
  %.sroa.20411.1 = phi ptr [ %.sroa.20411.2, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE8PushBackIdEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeESF_RS5_.exit.i ], [ %.sroa.20411.0, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE7ReserveEjRS5_.exit.i ] ; 3 uses
  %.sroa.14407.1 = phi i32 [ %.sroa.14407.2, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE8PushBackIdEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeESF_RS5_.exit.i ], [ %i.hs, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE7ReserveEjRS5_.exit.i ] ; 8 uses
  %.sroa.0404.0 = phi i32 [ %i.ja, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE8PushBackIdEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeESF_RS5_.exit.i ], [ 0, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE7ReserveEjRS5_.exit.i ] ; 3 uses
  %i.ib = phi ptr [ %i.jf, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE8PushBackIdEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeESF_RS5_.exit.i ], [ %i.hz, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE7ReserveEjRS5_.exit.i ]
  %i.ic = phi i64 [ %i.jd, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE8PushBackIdEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeESF_RS5_.exit.i ], [ 0, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE7ReserveEjRS5_.exit.i ]
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %i.ic
  %i.ie = load double, ptr %i.id, align 8
  %.not.i.i.i90 = icmp ult i32 %.sroa.0404.0, %.sroa.14407.1
  br i1 %.not.i.i.i90, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE8PushBackIdEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeESF_RS5_.exit.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.if = icmp eq i32 %.sroa.14407.1, 0
  %i.ig = add i32 %.sroa.14407.1, 1
  %i.ih = lshr i32 %i.ig, 1
  %i.ii = add i32 %i.ih, %.sroa.14407.1
  %i.ij = select i1 %i.if, i32 16, i32 %i.ii      ; 3 uses
  %i.ik = icmp ugt i32 %i.ij, %.sroa.14407.1
  br i1 %i.ik, label %.noexc.i.i92, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE8PushBackIdEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeESF_RS5_.exit.i

.noexc.i.i92:                                     ; preds = %bb.i
  %i.il = ptrtoint ptr %.sroa.20411.1 to i64      ; 2 uses
  %i.im = and i64 %i.il, 281474976710655
  %i.in = inttoptr i64 %i.im to ptr
  %i.io = zext i32 %.sroa.14407.1 to i64
  %i.ip = shl nuw nsw i64 %i.io, 4
  %i.iq = zext i32 %i.ij to i64
  %i.ir = shl nuw nsw i64 %i.iq, 4
  %i.is = tail call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.hk, ptr noundef %i.in, i64 noundef %i.ip, i64 noundef %i.ir)
  %i.it = and i64 %i.il, -281474976710656
  %i.iu = ptrtoint ptr %i.is to i64
  %i.iv = or i64 %i.it, %i.iu
  %i.iw = inttoptr i64 %i.iv to ptr
  br label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE8PushBackIdEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeESF_RS5_.exit.i

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE8PushBackIdEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeESF_RS5_.exit.i: ; preds = %.lr.ph.i, %.noexc.i.i92, %bb.i
  %.sroa.20411.2 = phi ptr [ %.sroa.20411.1, %bb.i ], [ %i.iw, %.noexc.i.i92 ], [ %.sroa.20411.1, %.lr.ph.i ] ; 3 uses
  %.sroa.14407.2 = phi i32 [ %.sroa.14407.1, %bb.i ], [ %i.ij, %.noexc.i.i92 ], [ %.sroa.14407.1, %.lr.ph.i ] ; 2 uses
  %i.ix = ptrtoint ptr %.sroa.20411.2 to i64
  %i.iy = and i64 %i.ix, 281474976710655
  %i.iz = inttoptr i64 %i.iy to ptr
  %i.ja = add i32 %.sroa.0404.0, 1                ; 3 uses
  %i.jb = zext i32 %.sroa.0404.0 to i64
  %i.jc = getelementptr inbounds nuw [16 x i8], ptr %i.iz, i64 %i.jb ; 2 uses
  store double %i.ie, ptr %i.jc, align 8
  %.sroa.5.0..sroa_idx.i.i91 = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  store i64 150307637563490304, ptr %.sroa.5.0..sroa_idx.i.i91, align 8
  %i.jd = zext i32 %i.ja to i64                   ; 2 uses
  %i.je = load ptr, ptr %i.hl, align 8
  %i.jf = load ptr, ptr %i.hj, align 8            ; 2 uses
  %i.jg = ptrtoint ptr %i.je to i64
  %i.jh = ptrtoint ptr %i.jf to i64
  %i.ji = sub i64 %i.jg, %i.jh
  %i.jj = ashr exact i64 %i.ji, 3
  %i.jk = icmp ugt i64 %i.jj, %i.jd
  br i1 %i.jk, label %.lr.ph.i, label %_ZN5glTF212_GLOBAL__N_19MakeValueIdEERN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEESA_RKSt6vectorIT_SaISC_EERS8_.exit, !llvm.loop !322

_ZN5glTF212_GLOBAL__N_19MakeValueIdEERN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEESA_RKSt6vectorIT_SaISC_EERS8_.exit: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE8PushBackIdEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeESF_RS5_.exit.i, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE7ReserveEjRS5_.exit.i
  %.sroa.20411.3 = phi ptr [ %.sroa.20411.0, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE7ReserveEjRS5_.exit.i ], [ %.sroa.20411.2, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE8PushBackIdEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeESF_RS5_.exit.i ]
  %.sroa.14407.3 = phi i32 [ %i.hs, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE7ReserveEjRS5_.exit.i ], [ %.sroa.14407.2, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE8PushBackIdEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeESF_RS5_.exit.i ]
  %.sroa.0404.1 = phi i32 [ 0, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE7ReserveEjRS5_.exit.i ], [ %i.ja, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE8PushBackIdEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeESF_RS5_.exit.i ]
  %i.jl = load ptr, ptr %i.cs, align 8, !nonnull !46, !align !49
  %i.jm = load i32, ptr %0, align 8               ; 3 uses
  %i.jn = load i32, ptr %i.cu, align 4            ; 6 uses
  %.not.i.i.i94 = icmp ult i32 %i.jm, %i.jn
  br i1 %.not.i.i.i94, label %_ZN5glTF212_GLOBAL__N_19MakeValueIdEERN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEESA_RKSt6vectorIT_SaISC_EERS8_.exit._crit_edge, label %bb.j

_ZN5glTF212_GLOBAL__N_19MakeValueIdEERN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEESA_RKSt6vectorIT_SaISC_EERS8_.exit._crit_edge: ; preds = %_ZN5glTF212_GLOBAL__N_19MakeValueIdEERN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEESA_RKSt6vectorIT_SaISC_EERS8_.exit
  %.pre465 = load ptr, ptr %i.dw, align 8
  br label %bb.k

bb.j:                                             ; preds = %_ZN5glTF212_GLOBAL__N_19MakeValueIdEERN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEESA_RKSt6vectorIT_SaISC_EERS8_.exit
  %.not14.i.i.i = icmp eq i32 %i.jn, 0
end_hunk_0
begin_hunk_1_@_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_8AccessorERNS_11AssetWriterE:bb.a
  %.sroa.65.0..sroa_idx.i142 = getelementptr inbounds nuw i8, ptr %i.qu, i64 8
  store ptr %i.qp, ptr %.sroa.65.0..sroa_idx.i142, align 8
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 16
  store i32 %.sroa.0404.3, ptr %i.qv, align 8
  %.sroa.14407.0..sroa_idx408 = getelementptr inbounds nuw i8, ptr %i.qu, i64 20
  store i32 %.sroa.14407.7, ptr %.sroa.14407.0..sroa_idx408, align 4
  %.sroa.20411.0..sroa_idx412 = getelementptr inbounds nuw i8, ptr %i.qu, i64 24
  store ptr %.sroa.20411.7, ptr %.sroa.20411.0..sroa_idx412, align 8
  %i.qw = load i32, ptr %0, align 8
  %i.qx = add i32 %i.qw, 1
  store i32 %i.qx, ptr %0, align 8
  %i.qy = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 3 uses
  %i.qz = load ptr, ptr %i.cs, align 8, !nonnull !46, !align !49 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 3 uses
  %i.rb = load ptr, ptr %i.ra, align 8            ; 2 uses
  %i.rc = load ptr, ptr %i.qy, align 8            ; 2 uses
  %i.rd = ptrtoint ptr %i.rb to i64
  %i.re = ptrtoint ptr %i.rc to i64
  %i.rf = sub i64 %i.rd, %i.re                    ; 2 uses
  %i.rg = lshr exact i64 %i.rf, 3
  %i.rh = trunc i64 %i.rg to i32                  ; 3 uses
  %.not23.i147 = icmp eq i32 %i.rh, 0
  br i1 %.not23.i147, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE7ReserveEjRS5_.exit.i150, label %.noexc165

.noexc165:                                        ; preds = %bb.s
  %i.ri = shl i64 %i.rf, 1
  %i.rj = and i64 %i.ri, 68719476720
  %i.rk = tail call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.qz, ptr noundef null, i64 noundef 0, i64 noundef %i.rj)
  %i.rl = ptrtoint ptr %i.rk to i64
  %i.rm = or i64 %i.rl, 1125899906842624
  %i.rn = inttoptr i64 %i.rm to ptr
  %.pre.i148 = load ptr, ptr %i.ra, align 8
  %.pre13.i149 = load ptr, ptr %i.qy, align 8
  br label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE7ReserveEjRS5_.exit.i150

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE7ReserveEjRS5_.exit.i150: ; preds = %.noexc165, %bb.s
  %.sroa.20.4 = phi ptr [ inttoptr (i64 1125899906842624 to ptr), %bb.s ], [ %i.rn, %.noexc165 ] ; 2 uses
  %i.ro = phi ptr [ %i.rc, %bb.s ], [ %.pre13.i149, %.noexc165 ] ; 2 uses
  %i.rp = phi ptr [ %i.rb, %bb.s ], [ %.pre.i148, %.noexc165 ]
  %.not.i151 = icmp eq ptr %i.rp, %i.ro
  br i1 %.not.i151, label %_ZN5glTF212_GLOBAL__N_113MakeValueCastIldEERN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEESA_RKSt6vectorIT0_SaISC_EERS8_.exit167, label %.lr.ph.i152

.lr.ph.i152:                                      ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE7ReserveEjRS5_.exit.i150, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE8PushBackIlEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeESF_RS5_.exit.i159
  %.sroa.20.5 = phi ptr [ %.sroa.20.6, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE8PushBackIlEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeESF_RS5_.exit.i159 ], [ %.sroa.20.4, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE7ReserveEjRS5_.exit.i150 ] ; 3 uses
  %.sroa.14376.5 = phi i32 [ %.sroa.14376.6, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE8PushBackIlEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeESF_RS5_.exit.i159 ], [ %i.rh, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE7ReserveEjRS5_.exit.i150 ] ; 8 uses
  %.sroa.0373.2 = phi i32 [ %i.sw, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE8PushBackIlEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeESF_RS5_.exit.i159 ], [ 0, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE7ReserveEjRS5_.exit.i150 ] ; 3 uses
  %i.rq = phi ptr [ %i.tb, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE8PushBackIlEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeESF_RS5_.exit.i159 ], [ %i.ro, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE7ReserveEjRS5_.exit.i150 ]
  %i.rr = phi i64 [ %i.sz, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE8PushBackIlEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeESF_RS5_.exit.i159 ], [ 0, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE7ReserveEjRS5_.exit.i150 ]
  %i.rs = getelementptr inbounds nuw [8 x i8], ptr %i.rq, i64 %i.rr
  %i.rt = load double, ptr %i.rs, align 8
  %i.ru = fptosi double %i.rt to i64              ; 5 uses
  %i.rv = icmp sgt i64 %i.ru, -1
  br i1 %i.rv, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.i152
  %i.rw = icmp samesign ugt i64 %i.ru, 4294967295
  %i.rx = icmp samesign ugt i64 %i.ru, 2147483647
  %i.ry = select i1 %i.rw, i64 114278840544526336, i64 132293239054008320
  %i.rz = select i1 %i.rx, i64 %i.ry, i64 141300438308749312
  br label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEC2El.exit.i.i155

bb.u:                                             ; preds = %.lr.ph.i152
  %i.sa = icmp samesign ugt i64 %i.ru, -2147483649
  %spec.select.i.i154 = select i1 %i.sa, i64 51228445761339392, i64 42221246506598400
  br label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEC2El.exit.i.i155

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEC2El.exit.i.i155: ; preds = %bb.u, %bb.t
  %.sroa.5.0.i.i156 = phi i64 [ %spec.select.i.i154, %bb.u ], [ %i.rz, %bb.t ]
  %.not.i.i.i157 = icmp ult i32 %.sroa.0373.2, %.sroa.14376.5
  br i1 %.not.i.i.i157, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE8PushBackIlEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeESF_RS5_.exit.i159, label %bb.v

bb.v:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEC2El.exit.i.i155
  %i.sb = icmp eq i32 %.sroa.14376.5, 0
  %i.sc = add i32 %.sroa.14376.5, 1
  %i.sd = lshr i32 %i.sc, 1
  %i.se = add i32 %i.sd, %.sroa.14376.5
  %i.sf = select i1 %i.sb, i32 16, i32 %i.se      ; 3 uses
  %i.sg = icmp ugt i32 %i.sf, %.sroa.14376.5
  br i1 %i.sg, label %.noexc.i.i161, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE8PushBackIlEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeESF_RS5_.exit.i159

.noexc.i.i161:                                    ; preds = %bb.v
  %i.sh = ptrtoint ptr %.sroa.20.5 to i64         ; 2 uses
  %i.si = and i64 %i.sh, 281474976710655
  %i.sj = inttoptr i64 %i.si to ptr
  %i.sk = zext i32 %.sroa.14376.5 to i64
  %i.sl = shl nuw nsw i64 %i.sk, 4
  %i.sm = zext i32 %i.sf to i64
  %i.sn = shl nuw nsw i64 %i.sm, 4
  %i.so = tail call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.qz, ptr noundef %i.sj, i64 noundef %i.sl, i64 noundef %i.sn)
  %i.sp = and i64 %i.sh, -281474976710656
  %i.sq = ptrtoint ptr %i.so to i64
  %i.sr = or i64 %i.sp, %i.sq
  %i.ss = inttoptr i64 %i.sr to ptr
  br label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE8PushBackIlEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeESF_RS5_.exit.i159

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE8PushBackIlEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeESF_RS5_.exit.i159: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEC2El.exit.i.i155, %.noexc.i.i161, %bb.v
  %.sroa.20.6 = phi ptr [ %.sroa.20.5, %bb.v ], [ %i.ss, %.noexc.i.i161 ], [ %.sroa.20.5, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEC2El.exit.i.i155 ] ; 3 uses
  %.sroa.14376.6 = phi i32 [ %.sroa.14376.5, %bb.v ], [ %i.sf, %.noexc.i.i161 ], [ %.sroa.14376.5, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEC2El.exit.i.i155 ] ; 2 uses
  %i.st = ptrtoint ptr %.sroa.20.6 to i64
  %i.su = and i64 %i.st, 281474976710655
  %i.sv = inttoptr i64 %i.su to ptr
  %i.sw = add i32 %.sroa.0373.2, 1                ; 3 uses
  %i.sx = zext i32 %.sroa.0373.2 to i64
  %i.sy = getelementptr inbounds nuw [16 x i8], ptr %i.sv, i64 %i.sx ; 2 uses
  store i64 %i.ru, ptr %i.sy, align 8
  %.sroa.5.0..sroa_idx.i.i160 = getelementptr inbounds nuw i8, ptr %i.sy, i64 8
  store i64 %.sroa.5.0.i.i156, ptr %.sroa.5.0..sroa_idx.i.i160, align 8
  %i.sz = zext i32 %i.sw to i64                   ; 2 uses
  %i.ta = load ptr, ptr %i.ra, align 8
  %i.tb = load ptr, ptr %i.qy, align 8            ; 2 uses
  %i.tc = ptrtoint ptr %i.ta to i64
  %i.td = ptrtoint ptr %i.tb to i64
  %i.te = sub i64 %i.tc, %i.td
  %i.tf = ashr exact i64 %i.te, 3
  %i.tg = icmp ugt i64 %i.tf, %i.sz
  br i1 %i.tg, label %.lr.ph.i152, label %_ZN5glTF212_GLOBAL__N_113MakeValueCastIldEERN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEESA_RKSt6vectorIT0_SaISC_EERS8_.exit167, !llvm.loop !323

_ZN5glTF212_GLOBAL__N_113MakeValueCastIldEERN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEESA_RKSt6vectorIT0_SaISC_EERS8_.exit167: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE8PushBackIlEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeESF_RS5_.exit.i159, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE7ReserveEjRS5_.exit.i150
  %.sroa.20.7 = phi ptr [ %.sroa.20.4, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE7ReserveEjRS5_.exit.i150 ], [ %.sroa.20.6, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE8PushBackIlEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeESF_RS5_.exit.i159 ] ; 3 uses
  %.sroa.14376.7 = phi i32 [ %i.rh, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE7ReserveEjRS5_.exit.i150 ], [ %.sroa.14376.6, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE8PushBackIlEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeESF_RS5_.exit.i159 ] ; 3 uses
  %.sroa.0373.3 = phi i32 [ 0, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE7ReserveEjRS5_.exit.i150 ], [ %i.sw, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE8PushBackIlEENS_8internal9DisableIfINS8_15RemoveSfinaeTagIPFRNS8_9SfinaeTagENS8_6OrExprINS8_9IsPointerIT_EENS8_14IsGenericValueISF_EEEEEE4TypeERS6_E4TypeESF_RS5_.exit.i159 ] ; 3 uses
  %i.th = load ptr, ptr %i.cs, align 8, !nonnull !46, !align !49
  %i.ti = load i32, ptr %0, align 8               ; 3 uses
  %i.tj = load i32, ptr %i.cu, align 4            ; 6 uses
  %.not.i.i.i168 = icmp ult i32 %i.ti, %i.tj
  br i1 %.not.i.i.i168, label %_ZN5glTF212_GLOBAL__N_113MakeValueCastIldEERN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEESA_RKSt6vectorIT0_SaISC_EERS8_.exit167._ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEERS6_RS5_.exit175_crit_edge, label %bb.w

_ZN5glTF212_GLOBAL__N_113MakeValueCastIldEERN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEESA_RKSt6vectorIT0_SaISC_EERS8_.exit167._ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEERS6_RS5_.exit175_crit_edge: ; preds = %_ZN5glTF212_GLOBAL__N_113MakeValueCastIldEERN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEESA_RKSt6vectorIT0_SaISC_EERS8_.exit167
  %.pre463 = load ptr, ptr %i.dw, align 8
  br label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEERS6_RS5_.exit124

bb.w:                                             ; preds = %_ZN5glTF212_GLOBAL__N_113MakeValueCastIldEERN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEESA_RKSt6vectorIT0_SaISC_EERS8_.exit167
  %.not14.i.i.i169 = icmp eq i32 %i.tj, 0
  %i.tk = add i32 %i.tj, 1
  %i.tl = lshr i32 %i.tk, 1
  %i.tm = add i32 %i.tl, %i.tj
  %i.tn = select i1 %.not14.i.i.i169, i32 16, i32 %i.tm ; 3 uses
  %i.to = icmp ugt i32 %i.tn, %i.tj
  %.pre464 = load ptr, ptr %i.dw, align 8         ; 2 uses
  br i1 %i.to, label %.noexc.i172, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEERS6_RS5_.exit124

.noexc.i172:                                      ; preds = %bb.w
  %i.tp = ptrtoint ptr %.pre464 to i64
  %i.tq = and i64 %i.tp, 281474976710655
  %i.tr = inttoptr i64 %i.tq to ptr
  %i.ts = zext i32 %i.tj to i64
  %i.tt = zext i32 %i.tn to i64
  %i.tu = shl nuw nsw i64 %i.ts, 5
  %i.tv = shl nuw nsw i64 %i.tt, 5
  %i.tw = tail call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.th, ptr noundef %i.tr, i64 noundef %i.tu, i64 noundef %i.tv)
  %i.tx = load ptr, ptr %i.dw, align 8
  %i.ty = ptrtoint ptr %i.tx to i64
  %i.tz = and i64 %i.ty, -281474976710656
  %i.ua = ptrtoint ptr %i.tw to i64
  %i.ub = or i64 %i.tz, %i.ua
  %i.uc = inttoptr i64 %i.ub to ptr               ; 2 uses
  store ptr %i.uc, ptr %i.dw, align 8
  store i32 %i.tn, ptr %i.cu, align 4
  %.pre.i.i.i173 = load i32, ptr %0, align 8
  br label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEERS6_RS5_.exit124

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEERS6_RS5_.exit124: ; preds = %.noexc.i172, %bb.w, %_ZN5glTF212_GLOBAL__N_113MakeValueCastIldEERN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEESA_RKSt6vectorIT0_SaISC_EERS8_.exit167._ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEERS6_RS5_.exit175_crit_edge, %.noexc.i121, %bb.m, %_ZN5glTF212_GLOBAL__N_19MakeValueIdEERN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEESA_RKSt6vectorIT_SaISC_EERS8_.exit116._ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEERS6_RS5_.exit124_crit_edge
  %.sink540 = phi ptr [ %.pre467, %_ZN5glTF212_GLOBAL__N_19MakeValueIdEERN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEESA_RKSt6vectorIT_SaISC_EERS8_.exit116._ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEERS6_RS5_.exit124_crit_edge ], [ %i.nq, %.noexc.i121 ], [ %.pre468, %bb.m ], [ %i.uc, %.noexc.i172 ], [ %.pre464, %bb.w ], [ %.pre463, %_ZN5glTF212_GLOBAL__N_113MakeValueCastIldEERN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEESA_RKSt6vectorIT0_SaISC_EERS8_.exit167._ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEERS6_RS5_.exit175_crit_edge ]
  %.sink = phi i32 [ %i.mw, %_ZN5glTF212_GLOBAL__N_19MakeValueIdEERN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEESA_RKSt6vectorIT_SaISC_EERS8_.exit116._ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEERS6_RS5_.exit124_crit_edge ], [ %.pre.i.i.i122, %.noexc.i121 ], [ %i.mw, %bb.m ], [ %.pre.i.i.i173, %.noexc.i172 ], [ %i.ti, %bb.w ], [ %i.ti, %_ZN5glTF212_GLOBAL__N_113MakeValueCastIldEERN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEESA_RKSt6vectorIT0_SaISC_EERS8_.exit167._ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEERS6_RS5_.exit175_crit_edge ]
  %.sroa.0373.3.sink = phi i32 [ %.sroa.0373.1, %_ZN5glTF212_GLOBAL__N_19MakeValueIdEERN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEESA_RKSt6vectorIT_SaISC_EERS8_.exit116._ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEERS6_RS5_.exit124_crit_edge ], [ %.sroa.0373.1, %.noexc.i121 ], [ %.sroa.0373.1, %bb.m ], [ %.sroa.0373.3, %.noexc.i172 ], [ %.sroa.0373.3, %bb.w ], [ %.sroa.0373.3, %_ZN5glTF212_GLOBAL__N_113MakeValueCastIldEERN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEESA_RKSt6vectorIT0_SaISC_EERS8_.exit167._ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEERS6_RS5_.exit175_crit_edge ]
  %.sroa.14376.7.sink = phi i32 [ %.sroa.14376.3, %_ZN5glTF212_GLOBAL__N_19MakeValueIdEERN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEESA_RKSt6vectorIT_SaISC_EERS8_.exit116._ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEERS6_RS5_.exit124_crit_edge ], [ %.sroa.14376.3, %.noexc.i121 ], [ %.sroa.14376.3, %bb.m ], [ %.sroa.14376.7, %.noexc.i172 ], [ %.sroa.14376.7, %bb.w ], [ %.sroa.14376.7, %_ZN5glTF212_GLOBAL__N_113MakeValueCastIldEERN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEESA_RKSt6vectorIT0_SaISC_EERS8_.exit167._ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEERS6_RS5_.exit175_crit_edge ]
  %.sroa.20.7.sink = phi ptr [ %.sroa.20.3, %_ZN5glTF212_GLOBAL__N_19MakeValueIdEERN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEESA_RKSt6vectorIT_SaISC_EERS8_.exit116._ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEERS6_RS5_.exit124_crit_edge ], [ %.sroa.20.3, %.noexc.i121 ], [ %.sroa.20.3, %bb.m ], [ %.sroa.20.7, %.noexc.i172 ], [ %.sroa.20.7, %bb.w ], [ %.sroa.20.7, %_ZN5glTF212_GLOBAL__N_113MakeValueCastIldEERN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEESA_RKSt6vectorIT0_SaISC_EERS8_.exit167._ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEERS6_RS5_.exit175_crit_edge ]
  %i.ud = or i64 ptrtoint (ptr @.str.94 to i64), 289637751035265024
  %i.ue = inttoptr i64 %i.ud to ptr
  %i.uf = ptrtoint ptr %.sink540 to i64
  %i.ug = and i64 %i.uf, 281474976710655
  %i.uh = inttoptr i64 %i.ug to ptr
  %i.ui = zext i32 %.sink to i64
  %i.uj = getelementptr inbounds nuw [32 x i8], ptr %i.uh, i64 %i.ui ; 6 uses
  store i32 3, ptr %i.uj, align 8
  %.sroa.6.0..sroa_idx.i170 = getelementptr inbounds nuw i8, ptr %i.uj, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i170, align 4
  %.sroa.65.0..sroa_idx.i171 = getelementptr inbounds nuw i8, ptr %i.uj, i64 8
  store ptr %i.ue, ptr %.sroa.65.0..sroa_idx.i171, align 8
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 16
  store i32 %.sroa.0373.3.sink, ptr %i.uk, align 8
  %.sroa.14376.0..sroa_idx377 = getelementptr inbounds nuw i8, ptr %i.uj, i64 20
  store i32 %.sroa.14376.7.sink, ptr %.sroa.14376.0..sroa_idx377, align 4
  %.sroa.20.0..sroa_idx380 = getelementptr inbounds nuw i8, ptr %i.uj, i64 24
  store ptr %.sroa.20.7.sink, ptr %.sroa.20.0..sroa_idx380, align 8
  %storemerge.in = load i32, ptr %0, align 8
  %storemerge = add i32 %storemerge.in, 1
  store i32 %storemerge, ptr %0, align 8
  %i.ul = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 6 uses
  %i.um = load ptr, ptr %i.ul, align 8            ; 2 uses
  %.not = icmp eq ptr %i.um, null
  br i1 %.not, label %bb.z, label %.noexc.i.i183

.noexc.i.i183:                                    ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEERS6_RS5_.exit124
  %i.un = load i64, ptr %i.um, align 8            ; 2 uses
  %i.uo = load ptr, ptr %i.cs, align 8, !nonnull !46, !align !49
  %i.up = tail call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.uo, ptr noundef null, i64 noundef 0, i64 noundef 512)
  %i.uq = ptrtoint ptr %i.up to i64               ; 2 uses
  %i.ur = or i64 %i.uq, 844424930131968
  %i.us = inttoptr i64 %i.ur to ptr
  %5 = and i64 %i.un, 2147483648
  %.not.i.i.i178 = icmp eq i64 %5, 0
  %.sroa.5.14.insert.ext.i.i179 = select i1 %.not.i.i.i178, i64 141300438308749312, i64 132293239054008320
  %i.ut = and i64 %i.un, 4294967295
  %i.uu = and i64 %i.uq, 281474976710655
  %i.uv = inttoptr i64 %i.uu to ptr               ; 17 uses
  store i32 5, ptr %i.uv, align 8
  %.sroa.6.0..sroa_idx.i180 = getelementptr inbounds nuw i8, ptr %i.uv, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i180, align 4
  %.sroa.65.0..sroa_idx.i181 = getelementptr inbounds nuw i8, ptr %i.uv, i64 8
  store ptr %i.fg, ptr %.sroa.65.0..sroa_idx.i181, align 8
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 16
  store i64 %i.ut, ptr %i.uw, align 8
  %.sroa.5.0..sroa_idx.i.i182 = getelementptr inbounds nuw i8, ptr %i.uv, i64 24
  store i64 %.sroa.5.14.insert.ext.i.i179, ptr %.sroa.5.0..sroa_idx.i.i182, align 8
  %i.ux = load ptr, ptr %i.ul, align 8            ; 2 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 16
  %i.uz = load ptr, ptr %i.uy, align 8
  %i.va = getelementptr inbounds nuw i8, ptr %i.ux, i64 24
  %i.vb = load i32, ptr %i.va, align 8
  %i.vc = zext i32 %i.vb to i64
  %i.vd = load ptr, ptr %i.uz, align 8
  %i.ve = getelementptr inbounds nuw [8 x i8], ptr %i.vd, i64 %i.vc
  %i.vf = load ptr, ptr %i.ve, align 8
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 8
  %i.vh = load i32, ptr %i.vg, align 8            ; 2 uses
  %i.vi = load ptr, ptr %i.cs, align 8, !nonnull !46, !align !49
  %i.vj = tail call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.vi, ptr noundef null, i64 noundef 0, i64 noundef 512)
  %i.vk = ptrtoint ptr %i.vj to i64               ; 2 uses
  %i.vl = or i64 %i.vk, 844424930131968
  %i.vm = inttoptr i64 %i.vl to ptr
  %i.vn = or i64 ptrtoint (ptr @.str.88 to i64), 289637751035265024
  %i.vo = inttoptr i64 %i.vn to ptr               ; 2 uses
  %i.vp = icmp sgt i32 %i.vh, -1
  %.sroa.5.14.insert.ext.i.i189 = select i1 %i.vp, i64 141300438308749312, i64 51228445761339392
  %i.vq = sext i32 %i.vh to i64
  %i.vr = and i64 %i.vk, 281474976710655
  %i.vs = inttoptr i64 %i.vr to ptr               ; 15 uses
  store i32 10, ptr %i.vs, align 8
  %.sroa.6.0..sroa_idx.i190 = getelementptr inbounds nuw i8, ptr %i.vs, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i190, align 4
  %.sroa.65.0..sroa_idx.i191 = getelementptr inbounds nuw i8, ptr %i.vs, i64 8
  store ptr %i.vo, ptr %.sroa.65.0..sroa_idx.i191, align 8
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 16
  store i64 %i.vq, ptr %i.vt, align 8
  %.sroa.5.0..sroa_idx.i.i192 = getelementptr inbounds nuw i8, ptr %i.vs, i64 24
  store i64 %.sroa.5.14.insert.ext.i.i189, ptr %.sroa.5.0..sroa_idx.i.i192, align 8
  %i.vu = load ptr, ptr %i.ul, align 8
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 32
  %i.vw = load i64, ptr %i.vv, align 8            ; 2 uses
  %i.vx = or i64 ptrtoint (ptr @.str.89 to i64), 289637751035265024
  %i.vy = inttoptr i64 %i.vx to ptr               ; 2 uses
  %6 = and i64 %i.vw, 2147483648
  %.not.i.i.i199 = icmp eq i64 %6, 0
  %.sroa.5.14.insert.ext.i.i200 = select i1 %.not.i.i.i199, i64 141300438308749312, i64 132293239054008320
  %i.vz = and i64 %i.vw, 4294967295
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vs, i64 32
  store i32 10, ptr %i.wa, align 8
  %.sroa.6.0..sroa_idx.i201 = getelementptr inbounds nuw i8, ptr %i.vs, i64 36
  store i32 0, ptr %.sroa.6.0..sroa_idx.i201, align 4
  %.sroa.65.0..sroa_idx.i202 = getelementptr inbounds nuw i8, ptr %i.vs, i64 40
  store ptr %i.vy, ptr %.sroa.65.0..sroa_idx.i202, align 8
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vs, i64 48
  store i64 %i.vz, ptr %i.wb, align 8
  %.sroa.5.0..sroa_idx.i.i203 = getelementptr inbounds nuw i8, ptr %i.vs, i64 56
  store i64 %.sroa.5.14.insert.ext.i.i200, ptr %.sroa.5.0..sroa_idx.i.i203, align 8
  %i.wc = load ptr, ptr %i.ul, align 8
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 8
  %i.we = load i32, ptr %i.wd, align 8            ; 2 uses
  %i.wf = icmp sgt i32 %i.we, -1
  %.sroa.5.14.insert.ext.i.i210 = select i1 %i.wf, i64 141300438308749312, i64 51228445761339392
  %i.wg = sext i32 %i.we to i64
  %i.wh = getelementptr inbounds nuw i8, ptr %i.vs, i64 64
  store i32 13, ptr %i.wh, align 8
  %.sroa.6.0..sroa_idx.i211 = getelementptr inbounds nuw i8, ptr %i.vs, i64 68
  store i32 0, ptr %.sroa.6.0..sroa_idx.i211, align 4
  %.sroa.65.0..sroa_idx.i212 = getelementptr inbounds nuw i8, ptr %i.vs, i64 72
  store ptr %i.dt, ptr %.sroa.65.0..sroa_idx.i212, align 8
  %i.wi = getelementptr inbounds nuw i8, ptr %i.vs, i64 80
  store i64 %i.wg, ptr %i.wi, align 8
  %.sroa.5.0..sroa_idx.i.i213 = getelementptr inbounds nuw i8, ptr %i.vs, i64 88
  store i64 %.sroa.5.14.insert.ext.i.i210, ptr %.sroa.5.0..sroa_idx.i.i213, align 8
  %i.wj = or i64 ptrtoint (ptr @.str.95 to i64), 289637751035265024
  %i.wk = inttoptr i64 %i.wj to ptr
  %i.wl = getelementptr inbounds nuw i8, ptr %i.uv, i64 32
  store i32 7, ptr %i.wl, align 8
  %.sroa.6.0..sroa_idx.i220 = getelementptr inbounds nuw i8, ptr %i.uv, i64 36
  store i32 0, ptr %.sroa.6.0..sroa_idx.i220, align 4
  %.sroa.65.0..sroa_idx.i221 = getelementptr inbounds nuw i8, ptr %i.uv, i64 40
  store ptr %i.wk, ptr %.sroa.65.0..sroa_idx.i221, align 8
  %i.wm = getelementptr inbounds nuw i8, ptr %i.uv, i64 48
  store i32 3, ptr %i.wm, align 8
  %.sroa.18304.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.uv, i64 52
  store i32 16, ptr %.sroa.18304.0..sroa_idx, align 4
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.uv, i64 56
  store ptr %i.vm, ptr %.sroa.24.0..sroa_idx, align 8
  %i.wn = load ptr, ptr %i.ul, align 8            ; 2 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 40
  %i.wp = load ptr, ptr %i.wo, align 8
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wn, i64 48
  %i.wr = load i32, ptr %i.wq, align 8
  %i.ws = zext i32 %i.wr to i64
  %i.wt = load ptr, ptr %i.wp, align 8
  %i.wu = getelementptr inbounds nuw [8 x i8], ptr %i.wt, i64 %i.ws
  %i.wv = load ptr, ptr %i.wu, align 8
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 8
  %i.wx = load i32, ptr %i.ww, align 8            ; 2 uses
  %i.wy = load ptr, ptr %i.cs, align 8, !nonnull !46, !align !49
  %i.wz = tail call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.wy, ptr noundef null, i64 noundef 0, i64 noundef 512)
  %i.xa = ptrtoint ptr %i.wz to i64               ; 2 uses
  %i.xb = or i64 %i.xa, 844424930131968
  %i.xc = inttoptr i64 %i.xb to ptr
  %i.xd = icmp sgt i32 %i.wx, -1
  %.sroa.5.14.insert.ext.i.i228 = select i1 %i.xd, i64 141300438308749312, i64 51228445761339392
  %i.xe = sext i32 %i.wx to i64
  %i.xf = and i64 %i.xa, 281474976710655
  %i.xg = inttoptr i64 %i.xf to ptr               ; 10 uses
  store i32 10, ptr %i.xg, align 8
  %.sroa.6.0..sroa_idx.i229 = getelementptr inbounds nuw i8, ptr %i.xg, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i229, align 4
  %.sroa.65.0..sroa_idx.i230 = getelementptr inbounds nuw i8, ptr %i.xg, i64 8
  store ptr %i.vo, ptr %.sroa.65.0..sroa_idx.i230, align 8
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xg, i64 16
  store i64 %i.xe, ptr %i.xh, align 8
  %.sroa.5.0..sroa_idx.i.i231 = getelementptr inbounds nuw i8, ptr %i.xg, i64 24
  store i64 %.sroa.5.14.insert.ext.i.i228, ptr %.sroa.5.0..sroa_idx.i.i231, align 8
  %i.xi = load ptr, ptr %i.ul, align 8
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xi, i64 56
  %i.xk = load i64, ptr %i.xj, align 8            ; 2 uses
  %7 = and i64 %i.xk, 2147483648
  %.not.i.i.i238 = icmp eq i64 %7, 0
  %.sroa.5.14.insert.ext.i.i239 = select i1 %.not.i.i.i238, i64 141300438308749312, i64 132293239054008320
  %i.xl = and i64 %i.xk, 4294967295
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xg, i64 32
  store i32 10, ptr %i.xm, align 8
  %.sroa.6.0..sroa_idx.i240 = getelementptr inbounds nuw i8, ptr %i.xg, i64 36
  store i32 0, ptr %.sroa.6.0..sroa_idx.i240, align 4
  %.sroa.65.0..sroa_idx.i241 = getelementptr inbounds nuw i8, ptr %i.xg, i64 40
  store ptr %i.vy, ptr %.sroa.65.0..sroa_idx.i241, align 8
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xg, i64 48
  store i64 %i.xl, ptr %i.xn, align 8
  %.sroa.5.0..sroa_idx.i.i242 = getelementptr inbounds nuw i8, ptr %i.xg, i64 56
  store i64 %.sroa.5.14.insert.ext.i.i239, ptr %.sroa.5.0..sroa_idx.i.i242, align 8
  %i.xo = or i64 ptrtoint (ptr @.str.96 to i64), 289637751035265024
  %i.xp = inttoptr i64 %i.xo to ptr
  %i.xq = getelementptr inbounds nuw i8, ptr %i.uv, i64 64
  store i32 6, ptr %i.xq, align 8
  %.sroa.6.0..sroa_idx.i249 = getelementptr inbounds nuw i8, ptr %i.uv, i64 68
  store i32 0, ptr %.sroa.6.0..sroa_idx.i249, align 4
  %.sroa.65.0..sroa_idx.i250 = getelementptr inbounds nuw i8, ptr %i.uv, i64 72
  store ptr %i.xp, ptr %.sroa.65.0..sroa_idx.i250, align 8
  %i.xr = getelementptr inbounds nuw i8, ptr %i.uv, i64 80
  store i32 2, ptr %i.xr, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.uv, i64 84
  store i32 16, ptr %.sroa.14.0..sroa_idx, align 4
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.uv, i64 88
  store ptr %i.xc, ptr %.sroa.18.0..sroa_idx, align 8
  %i.xs = load ptr, ptr %i.cs, align 8, !nonnull !46, !align !49
  %i.xt = load i32, ptr %0, align 8               ; 3 uses
  %i.xu = load i32, ptr %i.cu, align 4            ; 6 uses
  %.not.i.i.i255 = icmp ult i32 %i.xt, %i.xu
  br i1 %.not.i.i.i255, label %.noexc.i.i183._crit_edge, label %bb.x

.noexc.i.i183._crit_edge:                         ; preds = %.noexc.i.i183
  %.pre469 = load ptr, ptr %i.dw, align 8
  br label %bb.y

bb.x:                                             ; preds = %.noexc.i.i183
  %.not14.i.i.i256 = icmp eq i32 %i.xu, 0
  %i.xv = add i32 %i.xu, 1
  %i.xw = lshr i32 %i.xv, 1
  %i.xx = add i32 %i.xw, %i.xu
  %i.xy = select i1 %.not14.i.i.i256, i32 16, i32 %i.xx ; 3 uses
  %i.xz = icmp ugt i32 %i.xy, %i.xu
  %.pre470 = load ptr, ptr %i.dw, align 8         ; 2 uses
  br i1 %i.xz, label %.noexc.i259, label %bb.y

.noexc.i259:                                      ; preds = %bb.x
  %i.ya = ptrtoint ptr %.pre470 to i64
  %i.yb = and i64 %i.ya, 281474976710655
  %i.yc = inttoptr i64 %i.yb to ptr
  %i.yd = zext i32 %i.xu to i64
  %i.ye = zext i32 %i.xy to i64
  %i.yf = shl nuw nsw i64 %i.yd, 5
  %i.yg = shl nuw nsw i64 %i.ye, 5
  %i.yh = tail call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.xs, ptr noundef %i.yc, i64 noundef %i.yf, i64 noundef %i.yg)
  %i.yi = load ptr, ptr %i.dw, align 8
  %i.yj = ptrtoint ptr %i.yi to i64
  %i.yk = and i64 %i.yj, -281474976710656
  %i.yl = ptrtoint ptr %i.yh to i64
  %i.ym = or i64 %i.yk, %i.yl
  %i.yn = inttoptr i64 %i.ym to ptr               ; 2 uses
  store ptr %i.yn, ptr %i.dw, align 8
  store i32 %i.xy, ptr %i.cu, align 4
  %.pre.i.i.i260 = load i32, ptr %0, align 8
  br label %bb.y

bb.y:                                             ; preds = %.noexc.i.i183._crit_edge, %.noexc.i259, %bb.x
  %i.yo = phi ptr [ %i.yn, %.noexc.i259 ], [ %.pre470, %bb.x ], [ %.pre469, %.noexc.i.i183._crit_edge ]
  %i.yp = phi i32 [ %.pre.i.i.i260, %.noexc.i259 ], [ %i.xt, %bb.x ], [ %i.xt, %.noexc.i.i183._crit_edge ]
  %i.yq = or i64 ptrtoint (ptr @.str.97 to i64), 289637751035265024
  %i.yr = inttoptr i64 %i.yq to ptr
  %i.ys = ptrtoint ptr %i.yo to i64
  %i.yt = and i64 %i.ys, 281474976710655
  %i.yu = inttoptr i64 %i.yt to ptr
  %i.yv = zext i32 %i.yp to i64
  %i.yw = getelementptr inbounds nuw [32 x i8], ptr %i.yu, i64 %i.yv ; 6 uses
  store i32 6, ptr %i.yw, align 8
  %.sroa.6.0..sroa_idx.i257 = getelementptr inbounds nuw i8, ptr %i.yw, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i257, align 4
  %.sroa.65.0..sroa_idx.i258 = getelementptr inbounds nuw i8, ptr %i.yw, i64 8
  store ptr %i.yr, ptr %.sroa.65.0..sroa_idx.i258, align 8
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 16
  store i32 3, ptr %i.yx, align 8
  %.sroa.18338.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yw, i64 20
  store i32 16, ptr %.sroa.18338.0..sroa_idx, align 4
  %.sroa.24341.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yw, i64 24
  store ptr %i.us, ptr %.sroa.24341.0..sroa_idx, align 8
  %i.yy = load i32, ptr %0, align 8
  %i.yz = add i32 %i.yy, 1
  store i32 %i.yz, ptr %0, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEERS6_RS5_.exit124
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  %.not.i = icmp eq i64 %3, 0                     ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE6MallocEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = add i64 %3, 7
  %i.c = and i64 %i.b, -8                         ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = add i64 %i.h, %i.c                       ; 2 uses
  %i.j = load i64, ptr %i.f, align 8
  %i.k = icmp ugt i64 %i.i, %i.j
  br i1 %i.k, label %bb.d, label %bb.e, !prof !43

bb.d:                                             ; preds = %bb.c
  %i.l = load i64, ptr %0, align 8
  %..i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %i.c)
  %i.m = tail call noundef zeroext i1 @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE8AddChunkEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %..i)
  br i1 %i.m, label %._crit_edge.i, label %_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE6MallocEm.exit

._crit_edge.i:                                    ; preds = %bb.d
  %.pre.i = load ptr, ptr %i.d, align 8
  %.pre11.i = load ptr, ptr %.pre.i, align 8      ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre11.i, i64 8
  %.pre12.i = load i64, ptr %.phi.trans.insert.i, align 8 ; 2 uses
  %.pre13.i = add i64 %.pre12.i, %i.c
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i, %bb.c
  %.pre-phi.i = phi i64 [ %.pre13.i, %._crit_edge.i ], [ %i.i, %bb.c ]
  %i.n = phi i64 [ %.pre12.i, %._crit_edge.i ], [ %i.h, %bb.c ]
  %i.o = phi ptr [ %.pre11.i, %._crit_edge.i ], [ %i.f, %bb.c ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i64 %.pre-phi.i, ptr %i.q, align 8
  br label %_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE6MallocEm.exit

bb.f:                                             ; preds = %bb.a
  br i1 %.not.i, label %_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE6MallocEm.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = add i64 %2, 7
  %i.t = and i64 %i.s, -8                         ; 5 uses
  %i.u = add i64 %3, 7
  %i.v = and i64 %i.u, -8                         ; 5 uses
  %.not = icmp ult i64 %i.t, %i.v
  br i1 %.not, label %bb.h, label %_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE6MallocEm.exit

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = load ptr, ptr %i.x, align 8              ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8            ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ab
  %i.ad = sub i64 0, %i.t
  %i.ae = getelementptr inbounds i8, ptr %i.ac, i64 %i.ad
  %i.af = icmp eq ptr %1, %i.ae
  %.pre = load i64, ptr %i.y, align 8             ; 2 uses
  br i1 %i.af, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.ag = sub nuw i64 %i.v, %i.t
  %i.ah = add i64 %i.ab, %i.ag                    ; 2 uses
  %.not31.not = icmp ugt i64 %i.ah, %.pre
  br i1 %.not31.not, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i64 %i.ah, ptr %i.aa, align 8
  br label %_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE6MallocEm.exit

.thread:                                          ; preds = %bb.i, %bb.h
  %i.ai = add i64 %i.ab, %i.v                     ; 2 uses
  %i.aj = icmp ugt i64 %i.ai, %.pre
  br i1 %i.aj, label %bb.k, label %bb.l, !prof !43

bb.k:                                             ; preds = %.thread
  %i.ak = load i64, ptr %0, align 8
  %..i37 = tail call i64 @llvm.umax.i64(i64 %i.ak, i64 %i.v)
  %i.al = tail call noundef zeroext i1 @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE8AddChunkEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %..i37)
  br i1 %i.al, label %._crit_edge.i38, label %_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE6MallocEm.exit

._crit_edge.i38:                                  ; preds = %bb.k
  %.pre.i39 = load ptr, ptr %i.w, align 8
  %.pre11.i40 = load ptr, ptr %.pre.i39, align 8  ; 2 uses
  %.phi.trans.insert.i41 = getelementptr inbounds nuw i8, ptr %.pre11.i40, i64 8
  %.pre12.i42 = load i64, ptr %.phi.trans.insert.i41, align 8 ; 2 uses
  %.pre13.i43 = add i64 %.pre12.i42, %i.v
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge.i38, %.thread
  %.pre-phi.i35 = phi i64 [ %.pre13.i43, %._crit_edge.i38 ], [ %i.ai, %.thread ]
  %i.am = phi i64 [ %.pre12.i42, %._crit_edge.i38 ], [ %i.ab, %.thread ]
  %i.an = phi ptr [ %.pre11.i40, %._crit_edge.i38 ], [ %i.y, %.thread ] ; 2 uses
end_hunk_1
